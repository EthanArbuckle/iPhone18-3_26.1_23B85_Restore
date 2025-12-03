@interface CKSyncEngineFetchedDatabaseChangesEvent
- (CKSyncEngineFetchedDatabaseChangesEvent)initWithModifications:(id)modifications deletions:(id)deletions;
- (void)CKDescribePropertiesUsing:(id)using;
@end

@implementation CKSyncEngineFetchedDatabaseChangesEvent

- (CKSyncEngineFetchedDatabaseChangesEvent)initWithModifications:(id)modifications deletions:(id)deletions
{
  modificationsCopy = modifications;
  deletionsCopy = deletions;
  v34 = 0;
  v8 = _CKCheckArgument("modifications", modificationsCopy, 0, 0, 0, &v34);
  v9 = v34;
  if ((v8 & 1) == 0 || (v9, v33 = 0, v10 = _CKCheckArgument("deletions", deletionsCopy, 0, 0, 0, &v33), v9 = v33, (v10 & 1) == 0))
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
  initInternal = [(CKSyncEngineEvent *)&v32 initInternal];
  if (initInternal)
  {
    v14 = objc_msgSend_copy(modificationsCopy, v11, v12);
    modifications = initInternal->_modifications;
    initInternal->_modifications = v14;

    v18 = objc_msgSend_copy(deletionsCopy, v16, v17);
    deletions = initInternal->_deletions;
    initInternal->_deletions = v18;
  }

  return initInternal;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  v13.receiver = self;
  v13.super_class = CKSyncEngineFetchedDatabaseChangesEvent;
  usingCopy = using;
  [(CKSyncEngineEvent *)&v13 CKDescribePropertiesUsing:usingCopy];
  v7 = objc_msgSend_modifications(self, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"modifications", v7, 0);

  v11 = objc_msgSend_deletions(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v12, @"deletions", v11, 0);
}

@end