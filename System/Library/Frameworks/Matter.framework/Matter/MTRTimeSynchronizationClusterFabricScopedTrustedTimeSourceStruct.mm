@interface MTRTimeSynchronizationClusterFabricScopedTrustedTimeSourceStruct
- (MTRTimeSynchronizationClusterFabricScopedTrustedTimeSourceStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTimeSynchronizationClusterFabricScopedTrustedTimeSourceStruct

- (MTRTimeSynchronizationClusterFabricScopedTrustedTimeSourceStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRTimeSynchronizationClusterFabricScopedTrustedTimeSourceStruct;
  v2 = [(MTRTimeSynchronizationClusterFabricScopedTrustedTimeSourceStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    nodeID = v2->_nodeID;
    v2->_nodeID = &unk_284C3E588;

    endpoint = v3->_endpoint;
    v3->_endpoint = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTimeSynchronizationClusterFabricScopedTrustedTimeSourceStruct);
  nodeID = [(MTRTimeSynchronizationClusterFabricScopedTrustedTimeSourceStruct *)self nodeID];
  [(MTRTimeSynchronizationClusterFabricScopedTrustedTimeSourceStruct *)v4 setNodeID:nodeID];

  endpoint = [(MTRTimeSynchronizationClusterFabricScopedTrustedTimeSourceStruct *)self endpoint];
  [(MTRTimeSynchronizationClusterFabricScopedTrustedTimeSourceStruct *)v4 setEndpoint:endpoint];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: nodeID:%@ endpoint:%@; >", v5, self->_nodeID, self->_endpoint];;

  return v6;
}

@end