@interface MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct
- (MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct

- (MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct;
  v2 = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)&v11 init];
  v3 = v2;
  if (v2)
  {
    groupID = v2->_groupID;
    v2->_groupID = &unk_284C3E588;

    friendlyName = v3->_friendlyName;
    v3->_friendlyName = &stru_284BD0DD8;

    groupKeySetID = v3->_groupKeySetID;
    v3->_groupKeySetID = 0;

    groupCAT = v3->_groupCAT;
    v3->_groupCAT = 0;

    groupCATVersion = v3->_groupCATVersion;
    v3->_groupCATVersion = 0;

    groupPermission = v3->_groupPermission;
    v3->_groupPermission = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct);
  groupID = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)self groupID];
  [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)v4 setGroupID:groupID];

  friendlyName = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)self friendlyName];
  [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)v4 setFriendlyName:friendlyName];

  groupKeySetID = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)self groupKeySetID];
  [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)v4 setGroupKeySetID:groupKeySetID];

  groupCAT = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)self groupCAT];
  [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)v4 setGroupCAT:groupCAT];

  groupCATVersion = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)self groupCATVersion];
  [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)v4 setGroupCATVersion:groupCATVersion];

  groupPermission = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)self groupPermission];
  [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)v4 setGroupPermission:groupPermission];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: groupID:%@ friendlyName:%@; groupKeySetID:%@; groupCAT:%@; groupCATVersion:%@; groupPermission:%@; >", v5, self->_groupID, self->_friendlyName, self->_groupKeySetID, self->_groupCAT, self->_groupCATVersion, self->_groupPermission];;

  return v6;
}

@end