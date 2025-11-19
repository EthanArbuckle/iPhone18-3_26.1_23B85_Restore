@interface MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct
- (MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct

- (MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct;
  v2 = [(MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    endpointID = v2->_endpointID;
    v2->_endpointID = &unk_284C3E588;

    nodeID = v3->_nodeID;
    v3->_nodeID = &unk_284C3E588;

    friendlyName = v3->_friendlyName;
    v3->_friendlyName = &stru_284BD0DD8;

    v7 = objc_opt_new();
    statusEntry = v3->_statusEntry;
    v3->_statusEntry = v7;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct);
  v5 = [(MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct *)self endpointID];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct *)v4 setEndpointID:v5];

  v6 = [(MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct *)self nodeID];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct *)v4 setNodeID:v6];

  v7 = [(MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct *)self friendlyName];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct *)v4 setFriendlyName:v7];

  v8 = [(MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct *)self statusEntry];
  [(MTRJointFabricDatastoreClusterDatastoreEndpointEntryStruct *)v4 setStatusEntry:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: endpointID:%@ nodeID:%@; friendlyName:%@; statusEntry:%@; >", v5, self->_endpointID, self->_nodeID, self->_friendlyName, self->_statusEntry];;

  return v6;
}

@end