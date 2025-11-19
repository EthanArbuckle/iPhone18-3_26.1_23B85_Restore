@interface MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct
- (MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct

- (MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct;
  v2 = [(MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    nodeID = v2->_nodeID;
    v2->_nodeID = &unk_284C3E588;

    friendlyName = v3->_friendlyName;
    v3->_friendlyName = &stru_284BD0DD8;

    v6 = objc_opt_new();
    commissioningStatusEntry = v3->_commissioningStatusEntry;
    v3->_commissioningStatusEntry = v6;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct);
  v5 = [(MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct *)self nodeID];
  [(MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct *)v4 setNodeID:v5];

  v6 = [(MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct *)self friendlyName];
  [(MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct *)v4 setFriendlyName:v6];

  v7 = [(MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct *)self commissioningStatusEntry];
  [(MTRJointFabricDatastoreClusterDatastoreNodeInformationEntryStruct *)v4 setCommissioningStatusEntry:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nodeID:%@ friendlyName:%@; commissioningStatusEntry:%@; >", v5, self->_nodeID, self->_friendlyName, self->_commissioningStatusEntry];;

  return v6;
}

@end