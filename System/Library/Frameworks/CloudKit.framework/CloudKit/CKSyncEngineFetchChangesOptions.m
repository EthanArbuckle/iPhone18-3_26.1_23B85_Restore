@interface CKSyncEngineFetchChangesOptions
- (CKOperationGroup)operationGroup;
- (CKSyncEngineFetchChangesOptions)init;
- (CKSyncEngineFetchChangesOptions)initWithScope:(CKSyncEngineFetchChangesScope *)scope;
- (CKSyncEngineFetchChangesOptions)initWithZoneIDs:(id)a3;
- (CKSyncEngineFetchChangesScope)scope;
- (id)copyWithZone:(_NSZone *)a3;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)setOperationGroup:(id)a3 updateName:(BOOL)a4;
- (void)setScope:(CKSyncEngineFetchChangesScope *)scope;
- (void)updateOperationGroupName;
@end

@implementation CKSyncEngineFetchChangesOptions

- (void)updateOperationGroupName
{
  v2 = self;
  sub_1883F58E8(sub_1883F63D4, sub_1883F6734);
}

- (CKOperationGroup)operationGroup
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_operationGroup;
  objc_sync_exit(v2);

  return v3;
}

- (CKSyncEngineFetchChangesScope)scope
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_scope;
  objc_sync_exit(v2);

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CKSyncEngineFetchChangesOptions alloc];
  v8 = objc_msgSend_scope(self, v6, v7);
  v11 = objc_msgSend_copy(v8, v9, v10);
  v13 = objc_msgSend_initWithScope_(v5, v12, v11);

  v15 = objc_msgSend_copyWithZone_(self->_prioritizedZoneIDs, v14, a3);
  objc_msgSend_setPrioritizedZoneIDs_(v13, v16, v15);

  v18 = objc_msgSend_copyWithZone_(self->_zoneConfigurations, v17, a3);
  objc_msgSend_setZoneConfigurations_(v13, v19, v18);

  v21 = objc_msgSend_copyWithZone_(self->_defaultZoneConfiguration, v20, a3);
  objc_msgSend_setDefaultZoneConfiguration_(v13, v22, v21);

  v25 = objc_msgSend_operationGroup(v13, v23, v24);
  objc_msgSend_setOperationGroup_updateName_(v13, v26, v25, 0);

  return v13;
}

- (CKSyncEngineFetchChangesOptions)initWithZoneIDs:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [CKSyncEngineFetchChangesScope alloc];
    v7 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v6, v4);
    v9 = objc_msgSend_initWithZoneIDs_(v5, v8, v7);
  }

  else
  {
    v9 = objc_opt_new();
  }

  v11 = objc_msgSend_initWithScope_(self, v10, v9);

  return v11;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v36 = a3;
  v6 = objc_msgSend_scope(self, v4, v5);
  objc_msgSend_addProperty_value_shouldRedact_(v36, v7, @"scope", v6, 0);

  v10 = objc_msgSend_operationGroup(self, v8, v9);
  v13 = objc_msgSend_name(v10, v11, v12);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v36, v14, @"group", v13, 0);

  if (objc_msgSend_forceFetchChanges(self, v15, v16))
  {
    v19 = MEMORY[0x1E696AD98];
    Changes = objc_msgSend_forceFetchChanges(self, v17, v18);
    v22 = objc_msgSend_numberWithBool_(v19, v21, Changes);
    objc_msgSend_addProperty_value_shouldRedact_(v36, v23, @"forceFetchChanges", v22, 0);
  }

  v24 = objc_msgSend_defaultZoneConfiguration(self, v17, v18);
  objc_msgSend_addProperty_value_shouldRedact_(v36, v25, @"defaultZoneConfiguration", v24, 0);

  v28 = objc_msgSend_zoneConfigurations(self, v26, v27);
  v31 = objc_msgSend_count(v28, v29, v30);

  if (v31)
  {
    v34 = objc_msgSend_zoneConfigurations(self, v32, v33);
    objc_msgSend_addProperty_value_shouldRedact_(v36, v35, @"zoneConfigurations", v34, 0);
  }
}

- (void)setScope:(CKSyncEngineFetchChangesScope *)scope
{
  v11 = scope;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_copy(v11, v5, v6);
  v8 = v4->_scope;
  v4->_scope = v7;

  objc_msgSend_updateOperationGroupName(v4, v9, v10);
  objc_sync_exit(v4);
}

- (void)setOperationGroup:(id)a3 updateName:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v7 = self;
  objc_sync_enter(v7);
  objc_storeStrong(&v7->_operationGroup, a3);
  if (v4)
  {
    objc_msgSend_updateOperationGroupName(v7, v8, v9);
  }

  objc_sync_exit(v7);
}

@end