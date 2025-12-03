@interface MTRBindingClusterTargetStruct
- (MTRBindingClusterTargetStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRBindingClusterTargetStruct

- (MTRBindingClusterTargetStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRBindingClusterTargetStruct;
  v2 = [(MTRBindingClusterTargetStruct *)&v10 init];
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

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRBindingClusterTargetStruct);
  node = [(MTRBindingClusterTargetStruct *)self node];
  [(MTRBindingClusterTargetStruct *)v4 setNode:node];

  group = [(MTRBindingClusterTargetStruct *)self group];
  [(MTRBindingClusterTargetStruct *)v4 setGroup:group];

  endpoint = [(MTRBindingClusterTargetStruct *)self endpoint];
  [(MTRBindingClusterTargetStruct *)v4 setEndpoint:endpoint];

  cluster = [(MTRBindingClusterTargetStruct *)self cluster];
  [(MTRBindingClusterTargetStruct *)v4 setCluster:cluster];

  fabricIndex = [(MTRBindingClusterTargetStruct *)self fabricIndex];
  [(MTRBindingClusterTargetStruct *)v4 setFabricIndex:fabricIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: node:%@ group:%@; endpoint:%@; cluster:%@; fabricIndex:%@; >", v5, self->_node, self->_group, self->_endpoint, self->_cluster, self->_fabricIndex];;

  return v6;
}

@end