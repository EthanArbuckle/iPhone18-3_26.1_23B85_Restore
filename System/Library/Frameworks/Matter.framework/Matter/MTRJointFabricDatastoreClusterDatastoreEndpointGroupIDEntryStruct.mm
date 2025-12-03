@interface MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct
- (MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct

- (MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct;
  v2 = [(MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    nodeID = v2->_nodeID;
    v2->_nodeID = &unk_284C3E588;

    endpointID = v3->_endpointID;
    v3->_endpointID = &unk_284C3E588;

    groupID = v3->_groupID;
    v3->_groupID = &unk_284C3E588;

    v7 = objc_opt_new();
    statusEntry = v3->_statusEntry;
    v3->_statusEntry = v7;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct);
  nodeID = [(MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct *)self nodeID];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct *)v4 setNodeID:nodeID];

  endpointID = [(MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct *)self endpointID];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct *)v4 setEndpointID:endpointID];

  groupID = [(MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct *)self groupID];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct *)v4 setGroupID:groupID];

  statusEntry = [(MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct *)self statusEntry];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointGroupIDEntryStruct *)v4 setStatusEntry:statusEntry];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nodeID:%@ endpointID:%@; groupID:%@; statusEntry:%@; >", v5, self->_nodeID, self->_endpointID, self->_groupID, self->_statusEntry];;

  return v6;
}

@end