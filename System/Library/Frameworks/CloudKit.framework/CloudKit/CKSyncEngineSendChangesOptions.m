@interface CKSyncEngineSendChangesOptions
+ (id)defaultOperationGroup;
- (CKOperationGroup)operationGroup;
- (CKSyncEngineSendChangesOptions)init;
- (CKSyncEngineSendChangesOptions)initWithScope:(CKSyncEngineSendChangesScope *)scope;
- (CKSyncEngineSendChangesOptions)initWithZoneIDs:(id)a3;
- (CKSyncEngineSendChangesScope)scope;
- (id)copyWithZone:(_NSZone *)a3;
- (id)zoneIDs;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)setOperationGroup:(id)a3 updateName:(BOOL)a4;
- (void)setScope:(CKSyncEngineSendChangesScope *)scope;
- (void)updateOperationGroupName;
@end

@implementation CKSyncEngineSendChangesOptions

+ (id)defaultOperationGroup
{
  v0 = sub_1883F5874();

  return v0;
}

- (void)updateOperationGroupName
{
  v2 = self;
  sub_1883F58E8(sub_18841332C, sub_188413094);
}

- (CKSyncEngineSendChangesScope)scope
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_scope;
  objc_sync_exit(v2);

  return v3;
}

- (CKOperationGroup)operationGroup
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_operationGroup;
  objc_sync_exit(v2);

  return v3;
}

- (CKSyncEngineSendChangesOptions)init
{
  v3 = objc_opt_new();
  v5 = objc_msgSend_initWithScope_(self, v4, v3);

  return v5;
}

- (CKSyncEngineSendChangesOptions)initWithScope:(CKSyncEngineSendChangesScope *)scope
{
  v4 = scope;
  v20.receiver = self;
  v20.super_class = CKSyncEngineSendChangesOptions;
  v7 = [(CKSyncEngineSendChangesOptions *)&v20 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v7->_scope;
    v7->_scope = v10;

    v12 = objc_opt_class();
    v15 = objc_msgSend_defaultOperationGroup(v12, v13, v14);
    operationGroup = v7->_operationGroup;
    v7->_operationGroup = v15;

    objc_msgSend_updateOperationGroupName(v7, v17, v18);
  }

  return v7;
}

- (CKSyncEngineSendChangesOptions)initWithZoneIDs:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [CKSyncEngineSendChangesScope alloc];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKSyncEngineSendChangesOptions alloc];
  v7 = objc_msgSend_scope(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  v12 = objc_msgSend_initWithScope_(v4, v11, v10);

  v15 = objc_msgSend_operationGroup(v12, v13, v14);
  objc_msgSend_setOperationGroup_updateName_(v12, v16, v15, 0);

  return v12;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_scope(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"scope", v7, 0);

  v15 = objc_msgSend_operationGroup(self, v9, v10);
  v13 = objc_msgSend_name(v15, v11, v12);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v14, @"group", v13, 0);
}

- (void)setScope:(CKSyncEngineSendChangesScope *)scope
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

- (id)zoneIDs
{
  v3 = objc_msgSend_scope(self, a2, v2);
  v6 = objc_msgSend_zoneIDs(v3, v4, v5);
  v9 = objc_msgSend_allObjects(v6, v7, v8);

  return v9;
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