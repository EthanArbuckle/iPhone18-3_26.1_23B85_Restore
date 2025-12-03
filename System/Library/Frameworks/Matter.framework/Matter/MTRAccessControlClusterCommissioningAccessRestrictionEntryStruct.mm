@interface MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct
- (MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct

- (MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct;
  v2 = [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    endpoint = v2->_endpoint;
    v2->_endpoint = &unk_284C3E588;

    cluster = v3->_cluster;
    v3->_cluster = &unk_284C3E588;

    array = [MEMORY[0x277CBEA60] array];
    restrictions = v3->_restrictions;
    v3->_restrictions = array;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct);
  endpoint = [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)self endpoint];
  [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)v4 setEndpoint:endpoint];

  cluster = [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)self cluster];
  [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)v4 setCluster:cluster];

  restrictions = [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)self restrictions];
  [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)v4 setRestrictions:restrictions];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: endpoint:%@ cluster:%@; restrictions:%@; >", v5, self->_endpoint, self->_cluster, self->_restrictions];;

  return v6;
}

@end