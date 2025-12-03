@interface MTRJointFabricDatastoreClusterDatastoreACLEntryStruct
- (MTRJointFabricDatastoreClusterDatastoreACLEntryStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterDatastoreACLEntryStruct

- (MTRJointFabricDatastoreClusterDatastoreACLEntryStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRJointFabricDatastoreClusterDatastoreACLEntryStruct;
  v2 = [(MTRJointFabricDatastoreClusterDatastoreACLEntryStruct *)&v11 init];
  v3 = v2;
  if (v2)
  {
    nodeID = v2->_nodeID;
    v2->_nodeID = &unk_284C3E588;

    listID = v3->_listID;
    v3->_listID = &unk_284C3E588;

    v6 = objc_opt_new();
    aclEntry = v3->_aclEntry;
    v3->_aclEntry = v6;

    v8 = objc_opt_new();
    statusEntry = v3->_statusEntry;
    v3->_statusEntry = v8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreACLEntryStruct);
  nodeID = [(MTRJointFabricDatastoreClusterDatastoreACLEntryStruct *)self nodeID];
  [(MTRJointFabricDatastoreClusterDatastoreACLEntryStruct *)v4 setNodeID:nodeID];

  listID = [(MTRJointFabricDatastoreClusterDatastoreACLEntryStruct *)self listID];
  [(MTRJointFabricDatastoreClusterDatastoreACLEntryStruct *)v4 setListID:listID];

  aclEntry = [(MTRJointFabricDatastoreClusterDatastoreACLEntryStruct *)self aclEntry];
  [(MTRJointFabricDatastoreClusterDatastoreACLEntryStruct *)v4 setAclEntry:aclEntry];

  statusEntry = [(MTRJointFabricDatastoreClusterDatastoreACLEntryStruct *)self statusEntry];
  [(MTRJointFabricDatastoreClusterDatastoreACLEntryStruct *)v4 setStatusEntry:statusEntry];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nodeID:%@ listID:%@; aclEntry:%@; statusEntry:%@; >", v5, self->_nodeID, self->_listID, self->_aclEntry, self->_statusEntry];;

  return v6;
}

@end