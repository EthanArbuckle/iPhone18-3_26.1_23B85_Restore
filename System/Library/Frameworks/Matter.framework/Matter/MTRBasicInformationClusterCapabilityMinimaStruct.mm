@interface MTRBasicInformationClusterCapabilityMinimaStruct
- (MTRBasicInformationClusterCapabilityMinimaStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRBasicInformationClusterCapabilityMinimaStruct

- (MTRBasicInformationClusterCapabilityMinimaStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRBasicInformationClusterCapabilityMinimaStruct;
  v2 = [(MTRBasicInformationClusterCapabilityMinimaStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    caseSessionsPerFabric = v2->_caseSessionsPerFabric;
    v2->_caseSessionsPerFabric = &unk_284C3E588;

    subscriptionsPerFabric = v3->_subscriptionsPerFabric;
    v3->_subscriptionsPerFabric = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRBasicInformationClusterCapabilityMinimaStruct);
  v5 = [(MTRBasicInformationClusterCapabilityMinimaStruct *)self caseSessionsPerFabric];
  [(MTRBasicInformationClusterCapabilityMinimaStruct *)v4 setCaseSessionsPerFabric:v5];

  v6 = [(MTRBasicInformationClusterCapabilityMinimaStruct *)self subscriptionsPerFabric];
  [(MTRBasicInformationClusterCapabilityMinimaStruct *)v4 setSubscriptionsPerFabric:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: caseSessionsPerFabric:%@ subscriptionsPerFabric:%@; >", v5, self->_caseSessionsPerFabric, self->_subscriptionsPerFabric];;

  return v6;
}

@end