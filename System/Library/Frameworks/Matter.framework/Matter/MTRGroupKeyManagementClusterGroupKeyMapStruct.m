@interface MTRGroupKeyManagementClusterGroupKeyMapStruct
- (MTRGroupKeyManagementClusterGroupKeyMapStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGroupKeyManagementClusterGroupKeyMapStruct

- (MTRGroupKeyManagementClusterGroupKeyMapStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRGroupKeyManagementClusterGroupKeyMapStruct;
  v2 = [(MTRGroupKeyManagementClusterGroupKeyMapStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    groupId = v2->_groupId;
    v2->_groupId = &unk_284C3E588;

    groupKeySetID = v3->_groupKeySetID;
    v3->_groupKeySetID = &unk_284C3E588;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGroupKeyManagementClusterGroupKeyMapStruct);
  v5 = [(MTRGroupKeyManagementClusterGroupKeyMapStruct *)self groupId];
  [(MTRGroupKeyManagementClusterGroupKeyMapStruct *)v4 setGroupId:v5];

  v6 = [(MTRGroupKeyManagementClusterGroupKeyMapStruct *)self groupKeySetID];
  [(MTRGroupKeyManagementClusterGroupKeyMapStruct *)v4 setGroupKeySetID:v6];

  v7 = [(MTRGroupKeyManagementClusterGroupKeyMapStruct *)self fabricIndex];
  [(MTRGroupKeyManagementClusterGroupKeyMapStruct *)v4 setFabricIndex:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: groupId:%@ groupKeySetID:%@; fabricIndex:%@; >", v5, self->_groupId, self->_groupKeySetID, self->_fabricIndex];;

  return v6;
}

@end