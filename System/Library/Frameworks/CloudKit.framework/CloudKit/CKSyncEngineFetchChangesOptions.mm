@interface CKSyncEngineFetchChangesOptions
- (CKOperationGroup)operationGroup;
- (CKSyncEngineFetchChangesOptions)init;
- (CKSyncEngineFetchChangesOptions)initWithScope:(CKSyncEngineFetchChangesScope *)scope;
- (CKSyncEngineFetchChangesOptions)initWithZoneIDs:(id)ds;
- (CKSyncEngineFetchChangesScope)scope;
- (id)copyWithZone:(_NSZone *)zone;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)setOperationGroup:(id)group updateName:(BOOL)name;
- (void)setScope:(CKSyncEngineFetchChangesScope *)scope;
- (void)updateOperationGroupName;
@end

@implementation CKSyncEngineFetchChangesOptions

- (void)updateOperationGroupName
{
  selfCopy = self;
  sub_1883F58E8(sub_1883F63D4, sub_1883F6734);
}

- (CKOperationGroup)operationGroup
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_operationGroup;
  objc_sync_exit(selfCopy);

  return v3;
}

- (CKSyncEngineFetchChangesScope)scope
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_scope;
  objc_sync_exit(selfCopy);

  return v3;
}

- (CKSyncEngineFetchChangesOptions)init
{
  v3 = objc_opt_new();
  v5 = objc_msgSend_initWithScope_(self, v4, v3);

  return v5;
}

- (CKSyncEngineFetchChangesOptions)initWithScope:(CKSyncEngineFetchChangesScope *)scope
{
  v4 = scope;
  v24.receiver = self;
  v24.super_class = CKSyncEngineFetchChangesOptions;
  v5 = [(CKSyncEngineFetchChangesOptions *)&v24 init];
  v8 = v5;
  if (v5)
  {
    v5->_forceFetchChanges = 0;
    v9 = objc_msgSend_copy(v4, v6, v7);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_opt_new();
    }

    v12 = v8->_scope;
    v8->_scope = v11;

    v13 = objc_opt_class();
    v16 = objc_msgSend_defaultOperationGroup(v13, v14, v15);
    operationGroup = v8->_operationGroup;
    v8->_operationGroup = v16;

    zoneConfigurations = v8->_zoneConfigurations;
    v8->_zoneConfigurations = MEMORY[0x1E695E0F8];

    v19 = objc_alloc_init(CKSyncEngineFetchChangesZoneConfiguration);
    defaultZoneConfiguration = v8->_defaultZoneConfiguration;
    v8->_defaultZoneConfiguration = v19;

    objc_msgSend_updateOperationGroupName(v8, v21, v22);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CKSyncEngineFetchChangesOptions alloc];
  v8 = objc_msgSend_scope(self, v6, v7);
  v11 = objc_msgSend_copy(v8, v9, v10);
  v13 = objc_msgSend_initWithScope_(v5, v12, v11);

  v15 = objc_msgSend_copyWithZone_(self->_prioritizedZoneIDs, v14, zone);
  objc_msgSend_setPrioritizedZoneIDs_(v13, v16, v15);

  v18 = objc_msgSend_copyWithZone_(self->_zoneConfigurations, v17, zone);
  objc_msgSend_setZoneConfigurations_(v13, v19, v18);

  v21 = objc_msgSend_copyWithZone_(self->_defaultZoneConfiguration, v20, zone);
  objc_msgSend_setDefaultZoneConfiguration_(v13, v22, v21);

  v25 = objc_msgSend_operationGroup(v13, v23, v24);
  objc_msgSend_setOperationGroup_updateName_(v13, v26, v25, 0);

  return v13;
}

- (CKSyncEngineFetchChangesOptions)initWithZoneIDs:(id)ds
{
  dsCopy = ds;
  if (dsCopy)
  {
    v5 = [CKSyncEngineFetchChangesScope alloc];
    v7 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v6, dsCopy);
    v9 = objc_msgSend_initWithZoneIDs_(v5, v8, v7);
  }

  else
  {
    v9 = objc_opt_new();
  }

  v11 = objc_msgSend_initWithScope_(self, v10, v9);

  return v11;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v6 = objc_msgSend_scope(self, v4, v5);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v7, @"scope", v6, 0);

  v10 = objc_msgSend_operationGroup(self, v8, v9);
  v13 = objc_msgSend_name(v10, v11, v12);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v14, @"group", v13, 0);

  if (objc_msgSend_forceFetchChanges(self, v15, v16))
  {
    v19 = MEMORY[0x1E696AD98];
    Changes = objc_msgSend_forceFetchChanges(self, v17, v18);
    v22 = objc_msgSend_numberWithBool_(v19, v21, Changes);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v23, @"forceFetchChanges", v22, 0);
  }

  v24 = objc_msgSend_defaultZoneConfiguration(self, v17, v18);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v25, @"defaultZoneConfiguration", v24, 0);

  v28 = objc_msgSend_zoneConfigurations(self, v26, v27);
  v31 = objc_msgSend_count(v28, v29, v30);

  if (v31)
  {
    v34 = objc_msgSend_zoneConfigurations(self, v32, v33);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v35, @"zoneConfigurations", v34, 0);
  }
}

- (void)setScope:(CKSyncEngineFetchChangesScope *)scope
{
  v11 = scope;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_copy(v11, v5, v6);
  v8 = selfCopy->_scope;
  selfCopy->_scope = v7;

  objc_msgSend_updateOperationGroupName(selfCopy, v9, v10);
  objc_sync_exit(selfCopy);
}

- (void)setOperationGroup:(id)group updateName:(BOOL)name
{
  nameCopy = name;
  groupCopy = group;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_operationGroup, group);
  if (nameCopy)
  {
    objc_msgSend_updateOperationGroupName(selfCopy, v8, v9);
  }

  objc_sync_exit(selfCopy);
}

@end