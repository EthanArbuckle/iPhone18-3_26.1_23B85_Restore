@interface CKSyncEngineSentRecordZoneChangesEvent
- (CKSyncEngineSentRecordZoneChangesEvent)initWithSavedRecords:(id)records failedRecordSaves:(id)saves deletedRecordIDs:(id)ds failedRecordDeletes:(id)deletes;
- (void)CKDescribePropertiesUsing:(id)using;
@end

@implementation CKSyncEngineSentRecordZoneChangesEvent

- (CKSyncEngineSentRecordZoneChangesEvent)initWithSavedRecords:(id)records failedRecordSaves:(id)saves deletedRecordIDs:(id)ds failedRecordDeletes:(id)deletes
{
  recordsCopy = records;
  savesCopy = saves;
  dsCopy = ds;
  deletesCopy = deletes;
  v52 = 0;
  v14 = _CKCheckArgument("savedRecords", recordsCopy, 0, 0, 0, &v52);
  v15 = v52;
  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

  v51 = 0;
  v16 = _CKCheckArgument("failedRecordSaves", savesCopy, 0, 0, 0, &v51);
  v15 = v51;
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

  v50 = 0;
  v17 = _CKCheckArgument("deletedRecordIDs", dsCopy, 0, 0, 0, &v50);
  v15 = v50;
  if ((v17 & 1) == 0 || (v15, v49 = 0, v18 = _CKCheckArgument("failedRecordDeletes", deletesCopy, 0, 0, 0, &v49), v15 = v49, (v18 & 1) == 0))
  {
LABEL_8:
    v37 = v15;
    v38 = [CKException alloc];
    v41 = objc_msgSend_code(v37, v39, v40);
    v44 = objc_msgSend_localizedDescription(v37, v42, v43);
    v46 = objc_msgSend_initWithCode_format_(v38, v45, v41, @"%@", v44);
    v47 = v46;

    objc_exception_throw(v46);
  }

  v48.receiver = self;
  v48.super_class = CKSyncEngineSentRecordZoneChangesEvent;
  initInternal = [(CKSyncEngineEvent *)&v48 initInternal];
  if (initInternal)
  {
    v22 = objc_msgSend_copy(recordsCopy, v19, v20);
    savedRecords = initInternal->_savedRecords;
    initInternal->_savedRecords = v22;

    v26 = objc_msgSend_copy(savesCopy, v24, v25);
    failedRecordSaves = initInternal->_failedRecordSaves;
    initInternal->_failedRecordSaves = v26;

    v30 = objc_msgSend_copy(dsCopy, v28, v29);
    deletedRecordIDs = initInternal->_deletedRecordIDs;
    initInternal->_deletedRecordIDs = v30;

    v34 = objc_msgSend_copy(deletesCopy, v32, v33);
    failedRecordDeletes = initInternal->_failedRecordDeletes;
    initInternal->_failedRecordDeletes = v34;
  }

  return initInternal;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  v23.receiver = self;
  v23.super_class = CKSyncEngineSentRecordZoneChangesEvent;
  usingCopy = using;
  [(CKSyncEngineEvent *)&v23 CKDescribePropertiesUsing:usingCopy];
  v7 = objc_msgSend_savedRecords(self, v5, v6, v23.receiver, v23.super_class);
  v9 = objc_msgSend_CKMap_(v7, v8, &unk_1EFA2FD08);

  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v10, @"savedRecords", v9, 0);
  v13 = objc_msgSend_failedRecordSaves(self, v11, v12);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v14, @"failedRecordSaves", v13, 0);

  v17 = objc_msgSend_deletedRecordIDs(self, v15, v16);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v18, @"deletedRecordIDs", v17, 0);

  v21 = objc_msgSend_failedRecordDeletes(self, v19, v20);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v22, @"failedRecordDeletes", v21, 0);
}

@end