@interface CKSyncEngineFetchedRecordZoneChangesEvent
- (CKSyncEngineFetchedRecordZoneChangesEvent)initWithModifications:(id)a3 deletions:(id)a4 zoneAttributesModifications:(id)a5;
- (void)CKDescribePropertiesUsing:(id)a3;
@end

@implementation CKSyncEngineFetchedRecordZoneChangesEvent

- (CKSyncEngineFetchedRecordZoneChangesEvent)initWithModifications:(id)a3 deletions:(id)a4 zoneAttributesModifications:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v43 = 0;
  v11 = _CKCheckArgument("modifications", v8, 0, 0, 0, &v43);
  v12 = v43;
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

  v42 = 0;
  v13 = _CKCheckArgument("deletions", v9, 0, 0, 0, &v42);
  v12 = v42;
  if ((v13 & 1) == 0 || (v12, v41 = 0, v14 = _CKCheckArgument("zoneAttributesModifications", v10, 0, 0, 0, &v41), v12 = v41, (v14 & 1) == 0))
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
  v17 = [(CKSyncEngineEvent *)&v40 initInternal];
  if (v17)
  {
    v18 = objc_msgSend_copy(v8, v15, v16);
    modifications = v17->_modifications;
    v17->_modifications = v18;

    v22 = objc_msgSend_copy(v9, v20, v21);
    deletions = v17->_deletions;
    v17->_deletions = v22;

    v26 = objc_msgSend_copy(v10, v24, v25);
    zoneAttributesModifications = v17->_zoneAttributesModifications;
    v17->_zoneAttributesModifications = v26;
  }

  return v17;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v19.receiver = self;
  v19.super_class = CKSyncEngineFetchedRecordZoneChangesEvent;
  v4 = a3;
  [(CKSyncEngineEvent *)&v19 CKDescribePropertiesUsing:v4];
  v7 = objc_msgSend_modifications(self, v5, v6, v19.receiver, v19.super_class);
  v9 = objc_msgSend_CKMap_(v7, v8, &unk_1EFA2FCE8);

  objc_msgSend_addProperty_value_shouldRedact_(v4, v10, @"modifications", v9, 0);
  v13 = objc_msgSend_deletions(self, v11, v12);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v14, @"deletions", v13, 0);

  v17 = objc_msgSend_zoneAttributesModifications(self, v15, v16);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v18, @"zoneAttributesModifications", v17, 0);
}

@end