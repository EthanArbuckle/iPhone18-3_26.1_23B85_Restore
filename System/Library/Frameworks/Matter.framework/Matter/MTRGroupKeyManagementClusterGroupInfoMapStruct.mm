@interface MTRGroupKeyManagementClusterGroupInfoMapStruct
- (MTRGroupKeyManagementClusterGroupInfoMapStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
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

    array = [MEMORY[0x277CBEA60] array];
    endpoints = v3->_endpoints;
    v3->_endpoints = array;

    groupName = v3->_groupName;
    v3->_groupName = 0;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRGroupKeyManagementClusterGroupInfoMapStruct);
  groupId = [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)self groupId];
  [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)v4 setGroupId:groupId];

  endpoints = [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)self endpoints];
  [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)v4 setEndpoints:endpoints];

  groupName = [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)self groupName];
  [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)v4 setGroupName:groupName];

  fabricIndex = [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)self fabricIndex];
  [(MTRGroupKeyManagementClusterGroupInfoMapStruct *)v4 setFabricIndex:fabricIndex];

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