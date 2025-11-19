@interface CKSyncEngineFetchedDatabaseChangesEvent
- (CKSyncEngineFetchedDatabaseChangesEvent)initWithModifications:(id)a3 deletions:(id)a4;
- (void)CKDescribePropertiesUsing:(id)a3;
@end

@implementation CKSyncEngineFetchedDatabaseChangesEvent

- (CKSyncEngineFetchedDatabaseChangesEvent)initWithModifications:(id)a3 deletions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34 = 0;
  v8 = _CKCheckArgument("modifications", v6, 0, 0, 0, &v34);
  v9 = v34;
  if ((v8 & 1) == 0 || (v9, v33 = 0, v10 = _CKCheckArgument("deletions", v7, 0, 0, 0, &v33), v9 = v33, (v10 & 1) == 0))
  {
    v21 = v9;
    v22 = [CKException alloc];
    v25 = objc_msgSend_code(v21, v23, v24);
    v28 = objc_msgSend_localizedDescription(v21, v26, v27);
    v30 = objc_msgSend_initWithCode_format_(v22, v29, v25, @"%@", v28);
    v31 = v30;

    objc_exception_throw(v30);
  }

  v32.receiver = self;
  v32.super_class = CKSyncEngineFetchedDatabaseChangesEvent;
  v13 = [(CKSyncEngineEvent *)&v32 initInternal];
  if (v13)
  {
    v14 = objc_msgSend_copy(v6, v11, v12);
    modifications = v13->_modifications;
    v13->_modifications = v14;

    v18 = objc_msgSend_copy(v7, v16, v17);
    deletions = v13->_deletions;
    v13->_deletions = v18;
  }

  return v13;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v13.receiver = self;
  v13.super_class = CKSyncEngineFetchedDatabaseChangesEvent;
  v4 = a3;
  [(CKSyncEngineEvent *)&v13 CKDescribePropertiesUsing:v4];
  v7 = objc_msgSend_modifications(self, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"modifications", v7, 0);

  v11 = objc_msgSend_deletions(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v12, @"deletions", v11, 0);
}

@end