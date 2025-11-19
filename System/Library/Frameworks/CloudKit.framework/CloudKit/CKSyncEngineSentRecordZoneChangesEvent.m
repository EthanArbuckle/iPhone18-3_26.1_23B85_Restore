@interface CKSyncEngineSentRecordZoneChangesEvent
- (CKSyncEngineSentRecordZoneChangesEvent)initWithSavedRecords:(id)a3 failedRecordSaves:(id)a4 deletedRecordIDs:(id)a5 failedRecordDeletes:(id)a6;
- (void)CKDescribePropertiesUsing:(id)a3;
@end

@implementation CKSyncEngineSentRecordZoneChangesEvent

- (CKSyncEngineSentRecordZoneChangesEvent)initWithSavedRecords:(id)a3 failedRecordSaves:(id)a4 deletedRecordIDs:(id)a5 failedRecordDeletes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v52 = 0;
  v14 = _CKCheckArgument("savedRecords", v10, 0, 0, 0, &v52);
  v15 = v52;
  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

  v51 = 0;
  v16 = _CKCheckArgument("failedRecordSaves", v11, 0, 0, 0, &v51);
  v15 = v51;
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

  v50 = 0;
  v17 = _CKCheckArgument("deletedRecordIDs", v12, 0, 0, 0, &v50);
  v15 = v50;
  if ((v17 & 1) == 0 || (v15, v49 = 0, v18 = _CKCheckArgument("failedRecordDeletes", v13, 0, 0, 0, &v49), v15 = v49, (v18 & 1) == 0))
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
  v21 = [(CKSyncEngineEvent *)&v48 initInternal];
  if (v21)
  {
    v22 = objc_msgSend_copy(v10, v19, v20);
    savedRecords = v21->_savedRecords;
    v21->_savedRecords = v22;

    v26 = objc_msgSend_copy(v11, v24, v25);
    failedRecordSaves = v21->_failedRecordSaves;
    v21->_failedRecordSaves = v26;

    v30 = objc_msgSend_copy(v12, v28, v29);
    deletedRecordIDs = v21->_deletedRecordIDs;
    v21->_deletedRecordIDs = v30;

    v34 = objc_msgSend_copy(v13, v32, v33);
    failedRecordDeletes = v21->_failedRecordDeletes;
    v21->_failedRecordDeletes = v34;
  }

  return v21;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v23.receiver = self;
  v23.super_class = CKSyncEngineSentRecordZoneChangesEvent;
  v4 = a3;
  [(CKSyncEngineEvent *)&v23 CKDescribePropertiesUsing:v4];
  v7 = objc_msgSend_savedRecords(self, v5, v6, v23.receiver, v23.super_class);
  v9 = objc_msgSend_CKMap_(v7, v8, &unk_1EFA2FD08);

  objc_msgSend_addProperty_value_shouldRedact_(v4, v10, @"savedRecords", v9, 0);
  v13 = objc_msgSend_failedRecordSaves(self, v11, v12);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v14, @"failedRecordSaves", v13, 0);

  v17 = objc_msgSend_deletedRecordIDs(self, v15, v16);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v18, @"deletedRecordIDs", v17, 0);

  v21 = objc_msgSend_failedRecordDeletes(self, v19, v20);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v22, @"failedRecordDeletes", v21, 0);
}

@end