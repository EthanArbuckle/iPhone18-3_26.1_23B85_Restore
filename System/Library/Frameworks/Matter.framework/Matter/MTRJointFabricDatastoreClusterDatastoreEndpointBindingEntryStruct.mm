@interface MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct
- (MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct

- (MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct)init
{
  v12.receiver = self;
  v12.super_class = MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct;
  v2 = [(MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct *)&v12 init];
  v3 = v2;
  if (v2)
  {
    nodeID = v2->_nodeID;
    v2->_nodeID = &unk_284C3E588;

    endpointID = v3->_endpointID;
    v3->_endpointID = &unk_284C3E588;

    listID = v3->_listID;
    v3->_listID = &unk_284C3E588;

    v7 = objc_opt_new();
    binding = v3->_binding;
    v3->_binding = v7;

    v9 = objc_opt_new();
    statusEntry = v3->_statusEntry;
    v3->_statusEntry = v9;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct);
  nodeID = [(MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct *)self nodeID];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct *)v4 setNodeID:nodeID];

  endpointID = [(MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct *)self endpointID];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct *)v4 setEndpointID:endpointID];

  listID = [(MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct *)self listID];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct *)v4 setListID:listID];

  binding = [(MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct *)self binding];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct *)v4 setBinding:binding];

  statusEntry = [(MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct *)self statusEntry];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointBindingEntryStruct *)v4 setStatusEntry:statusEntry];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nodeID:%@ endpointID:%@; listID:%@; binding:%@; statusEntry:%@; >", v5, self->_nodeID, self->_endpointID, self->_listID, self->_binding, self->_statusEntry];;

  return v6;
}

@end