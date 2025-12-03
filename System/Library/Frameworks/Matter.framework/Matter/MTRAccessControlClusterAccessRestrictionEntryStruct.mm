@interface MTRAccessControlClusterAccessRestrictionEntryStruct
- (MTRAccessControlClusterAccessRestrictionEntryStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
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

    array = [MEMORY[0x277CBEA60] array];
    restrictions = v3->_restrictions;
    v3->_restrictions = array;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRAccessControlClusterAccessRestrictionEntryStruct);
  endpoint = [(MTRAccessControlClusterAccessRestrictionEntryStruct *)self endpoint];
  [(MTRAccessControlClusterAccessRestrictionEntryStruct *)v4 setEndpoint:endpoint];

  cluster = [(MTRAccessControlClusterAccessRestrictionEntryStruct *)self cluster];
  [(MTRAccessControlClusterAccessRestrictionEntryStruct *)v4 setCluster:cluster];

  restrictions = [(MTRAccessControlClusterAccessRestrictionEntryStruct *)self restrictions];
  [(MTRAccessControlClusterAccessRestrictionEntryStruct *)v4 setRestrictions:restrictions];

  fabricIndex = [(MTRAccessControlClusterAccessRestrictionEntryStruct *)self fabricIndex];
  [(MTRAccessControlClusterAccessRestrictionEntryStruct *)v4 setFabricIndex:fabricIndex];

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