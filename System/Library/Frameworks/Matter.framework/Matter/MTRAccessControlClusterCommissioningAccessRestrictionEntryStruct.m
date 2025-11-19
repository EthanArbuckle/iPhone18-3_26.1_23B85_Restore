@interface MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct
- (MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
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

    v6 = [MEMORY[0x277CBEA60] array];
    restrictions = v3->_restrictions;
    v3->_restrictions = v6;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct);
  v5 = [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)self endpoint];
  [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)v4 setEndpoint:v5];

  v6 = [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)self cluster];
  [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)v4 setCluster:v6];

  v7 = [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)self restrictions];
  [(MTRAccessControlClusterCommissioningAccessRestrictionEntryStruct *)v4 setRestrictions:v7];

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