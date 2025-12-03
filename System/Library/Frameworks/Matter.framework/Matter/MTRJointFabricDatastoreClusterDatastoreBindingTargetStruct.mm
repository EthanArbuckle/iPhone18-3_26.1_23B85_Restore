@interface MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct
- (MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct

- (MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct;
  v2 = [(MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    node = v2->_node;
    v2->_node = 0;

    group = v3->_group;
    v3->_group = 0;

    endpoint = v3->_endpoint;
    v3->_endpoint = 0;

    cluster = v3->_cluster;
    v3->_cluster = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct);
  node = [(MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct *)self node];
  [(MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct *)v4 setNode:node];

  group = [(MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct *)self group];
  [(MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct *)v4 setGroup:group];

  endpoint = [(MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct *)self endpoint];
  [(MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct *)v4 setEndpoint:endpoint];

  cluster = [(MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct *)self cluster];
  [(MTRJointFabricDatastoreClusterDatastoreBindingTargetStruct *)v4 setCluster:cluster];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: node:%@ group:%@; endpoint:%@; cluster:%@; >", v5, self->_node, self->_group, self->_endpoint, self->_cluster];;

  return v6;
}

@end