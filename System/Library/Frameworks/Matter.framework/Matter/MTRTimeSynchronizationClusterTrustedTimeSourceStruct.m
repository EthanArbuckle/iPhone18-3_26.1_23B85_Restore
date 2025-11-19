@interface MTRTimeSynchronizationClusterTrustedTimeSourceStruct
- (MTRTimeSynchronizationClusterTrustedTimeSourceStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRTimeSynchronizationClusterTrustedTimeSourceStruct

- (MTRTimeSynchronizationClusterTrustedTimeSourceStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRTimeSynchronizationClusterTrustedTimeSourceStruct;
  v2 = [(MTRTimeSynchronizationClusterTrustedTimeSourceStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    fabricIndex = v2->_fabricIndex;
    v2->_fabricIndex = &unk_284C3E588;

    nodeID = v3->_nodeID;
    v3->_nodeID = &unk_284C3E588;

    endpoint = v3->_endpoint;
    v3->_endpoint = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRTimeSynchronizationClusterTrustedTimeSourceStruct);
  v5 = [(MTRTimeSynchronizationClusterTrustedTimeSourceStruct *)self fabricIndex];
  [(MTRTimeSynchronizationClusterTrustedTimeSourceStruct *)v4 setFabricIndex:v5];

  v6 = [(MTRTimeSynchronizationClusterTrustedTimeSourceStruct *)self nodeID];
  [(MTRTimeSynchronizationClusterTrustedTimeSourceStruct *)v4 setNodeID:v6];

  v7 = [(MTRTimeSynchronizationClusterTrustedTimeSourceStruct *)self endpoint];
  [(MTRTimeSynchronizationClusterTrustedTimeSourceStruct *)v4 setEndpoint:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: fabricIndex:%@ nodeID:%@; endpoint:%@; >", v5, self->_fabricIndex, self->_nodeID, self->_endpoint];;

  return v6;
}

@end