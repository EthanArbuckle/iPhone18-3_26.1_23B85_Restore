@interface MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct
- (MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct

- (MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct;
  v2 = [(MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    nodeID = v2->_nodeID;
    v2->_nodeID = &unk_284C3E588;

    groupKeySetID = v3->_groupKeySetID;
    v3->_groupKeySetID = &unk_284C3E588;

    v6 = objc_opt_new();
    statusEntry = v3->_statusEntry;
    v3->_statusEntry = v6;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct);
  v5 = [(MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct *)self nodeID];
  [(MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct *)v4 setNodeID:v5];

  v6 = [(MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct *)self groupKeySetID];
  [(MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct *)v4 setGroupKeySetID:v6];

  v7 = [(MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct *)self statusEntry];
  [(MTRJointFabricDatastoreClusterDatastoreNodeKeySetEntryStruct *)v4 setStatusEntry:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nodeID:%@ groupKeySetID:%@; statusEntry:%@; >", v5, self->_nodeID, self->_groupKeySetID, self->_statusEntry];;

  return v6;
}

@end