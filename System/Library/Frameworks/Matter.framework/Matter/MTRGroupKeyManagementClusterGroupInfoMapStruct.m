@interface MTRGroupKeyManagementClusterGroupInfoMapStruct
- (MTRGroupKeyManagementClusterGroupInfoMapStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGroupKeyManagementClusterGroupInfoMapStruct

- (MTRGroupKeyManagementClusterGroupInfoMapStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRGroupKeyManagementClusterGroupInfoMapStruct;
  v2 = [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    groupId = v2->_groupId;
    v2->_groupId = &unk_284C3E588;

    v5 = [MEMORY[0x277CBEA60] array];
    endpoints = v3->_endpoints;
    v3->_endpoints = v5;

    groupName = v3->_groupName;
    v3->_groupName = 0;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGroupKeyManagementClusterGroupInfoMapStruct);
  v5 = [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)self groupId];
  [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)v4 setGroupId:v5];

  v6 = [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)self endpoints];
  [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)v4 setEndpoints:v6];

  v7 = [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)self groupName];
  [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)v4 setGroupName:v7];

  v8 = [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)self fabricIndex];
  [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)v4 setFabricIndex:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: groupId:%@ endpoints:%@; groupName:%@; fabricIndex:%@; >", v5, self->_groupId, self->_endpoints, self->_groupName, self->_fabricIndex];;

  return v6;
}

@end