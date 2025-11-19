@interface MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct
- (MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct);
  v5 = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)self groupID];
  [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)v4 setGroupID:v5];

  v6 = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)self friendlyName];
  [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)v4 setFriendlyName:v6];

  v7 = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)self groupKeySetID];
  [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)v4 setGroupKeySetID:v7];

  v8 = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)self groupCAT];
  [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)v4 setGroupCAT:v8];

  v9 = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)self groupCATVersion];
  [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)v4 setGroupCATVersion:v9];

  v10 = [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)self groupPermission];
  [(MTRJointFabricDatastoreClusterDatastoreGroupInformationEntryStruct *)v4 setGroupPermission:v10];

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