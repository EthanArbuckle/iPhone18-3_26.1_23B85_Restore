@interface CKSyncEngineFetchedRecordZoneChangesEvent
- (CKSyncEngineFetchedRecordZoneChangesEvent)initWithModifications:(id)modifications deletions:(id)deletions zoneAttributesModifications:(id)attributesModifications;
- (void)CKDescribePropertiesUsing:(id)using;
@end

@implementation CKSyncEngineFetchedRecordZoneChangesEvent

- (CKSyncEngineFetchedRecordZoneChangesEvent)initWithModifications:(id)modifications deletions:(id)deletions zoneAttributesModifications:(id)attributesModifications
{
  modificationsCopy = modifications;
  deletionsCopy = deletions;
  attributesModificationsCopy = attributesModifications;
  v43 = 0;
  v11 = _CKCheckArgument("modifications", modificationsCopy, 0, 0, 0, &v43);
  v12 = v43;
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

  v42 = 0;
  v13 = _CKCheckArgument("deletions", deletionsCopy, 0, 0, 0, &v42);
  v12 = v42;
  if ((v13 & 1) == 0 || (v12, v41 = 0, v14 = _CKCheckArgument("zoneAttributesModifications", attributesModificationsCopy, 0, 0, 0, &v41), v12 = v41, (v14 & 1) == 0))
  {
LABEL_7:
    v29 = v12;
    v30 = [CKException alloc];
    v33 = objc_msgSend_code(v29, v31, v32);
    v36 = objc_msgSend_localizedDescription(v29, v34, v35);
    v38 = objc_msgSend_initWithCode_format_(v30, v37, v33, @"%@", v36);
    v39 = v38;

    objc_exception_throw(v38);
  }

  v40.receiver = self;
  v40.super_class = CKSyncEngineFetchedRecordZoneChangesEvent;
  initInternal = [(CKSyncEngineEvent *)&v40 initInternal];
  if (initInternal)
  {
    v18 = objc_msgSend_copy(modificationsCopy, v15, v16);
    modifications = initInternal->_modifications;
    initInternal->_modifications = v18;

    v22 = objc_msgSend_copy(deletionsCopy, v20, v21);
    deletions = initInternal->_deletions;
    initInternal->_deletions = v22;

    v26 = objc_msgSend_copy(attributesModificationsCopy, v24, v25);
    zoneAttributesModifications = initInternal->_zoneAttributesModifications;
    initInternal->_zoneAttributesModifications = v26;
  }

  return initInternal;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  v19.receiver = self;
  v19.super_class = CKSyncEngineFetchedRecordZoneChangesEvent;
  usingCopy = using;
  [(CKSyncEngineEvent *)&v19 CKDescribePropertiesUsing:usingCopy];
  v7 = objc_msgSend_modifications(self, v5, v6, v19.receiver, v19.super_class);
  v9 = objc_msgSend_CKMap_(v7, v8, &unk_1EFA2FCE8);

  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v10, @"modifications", v9, 0);
  v13 = objc_msgSend_deletions(self, v11, v12);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v14, @"deletions", v13, 0);

  v17 = objc_msgSend_zoneAttributesModifications(self, v15, v16);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v18, @"zoneAttributesModifications", v17, 0);
}

@end