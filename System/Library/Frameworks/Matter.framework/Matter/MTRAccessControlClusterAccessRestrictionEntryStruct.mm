@interface MTRAccessControlClusterAccessRestrictionEntryStruct
- (MTRAccessControlClusterAccessRestrictionEntryStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRAccessControlClusterAccessRestrictionEntryStruct

- (MTRAccessControlClusterAccessRestrictionEntryStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRAccessControlClusterAccessRestrictionEntryStruct;
  v2 = [(MTRAccessControlClusterAccessRestrictionEntryStruct *)&v10 init];
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

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRAccessControlClusterAccessRestrictionEntryStruct);
  v5 = [(MTRAccessControlClusterAccessRestrictionEntryStruct *)self endpoint];
  [(MTRAccessControlClusterAccessRestrictionEntryStruct *)v4 setEndpoint:v5];

  v6 = [(MTRAccessControlClusterAccessRestrictionEntryStruct *)self cluster];
  [(MTRAccessControlClusterAccessRestrictionEntryStruct *)v4 setCluster:v6];

  v7 = [(MTRAccessControlClusterAccessRestrictionEntryStruct *)self restrictions];
  [(MTRAccessControlClusterAccessRestrictionEntryStruct *)v4 setRestrictions:v7];

  v8 = [(MTRAccessControlClusterAccessRestrictionEntryStruct *)self fabricIndex];
  [(MTRAccessControlClusterAccessRestrictionEntryStruct *)v4 setFabricIndex:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: endpoint:%@ cluster:%@; restrictions:%@; fabricIndex:%@; >", v5, self->_endpoint, self->_cluster, self->_restrictions, self->_fabricIndex];;

  return v6;
}

@end