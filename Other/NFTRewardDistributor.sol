// SPDX-License-Identifier: UNLICENSE
//This contract uses ERC721 tokens to verify the ownership of rewards before transfer
//Created by SoteriaSC for ShibaClassic/ClassicDawgs but is open-source
pragma solidity >=0.7.0 <0.9.0;

contract NFTRewardDistributor{
    //Variable Declarations
    uint256 TotalTokens;
    address NFTcontract;
    RewardInstance[] RewardInstances;

    //Mapping, structs, enums and other declarations
    mapping(uint256 => uint256) LatestClaim;

    struct RewardInstance{
        uint256 InstanceIdentifier;
        uint256 TotalEtherReceived;
        uint256 EtherReward;
        mapping(uint256 => bool) ClaimedIDs;
    }

    //On Deploy code to run (Constructor)
    constructor(address _NFTcontract){
        NFTcontract = _NFTcontract;
    }

    
}

interface ERC721{
    function walletOfOwner(address owner) external view returns(uint256[])
}