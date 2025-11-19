@interface CKSyncEngineFailedRecordSave
- (CKSyncEngineFailedRecordSave)initWithRecord:(id)a3 error:(id)a4;
- (void)CKDescribePropertiesUsing:(id)a3;
@end

@implementation CKSyncEngineFailedRecordSave

- (CKSyncEngineFailedRecordSave)initWithRecord:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28 = 0;
  v9 = _CKCheckArgument("record", v7, 0, 0, 0, &v28);
  v10 = v28;
  if ((v9 & 1) == 0 || (v10, v27 = 0, v11 = _CKCheckArgument("error", v8, 0, 0, 0, &v27), v10 = v27, (v11 & 1) == 0))
  {
    v15 = v10;
    v16 = [CKException alloc];
    v19 = objc_msgSend_code(v15, v17, v18);
    v22 = objc_msgSend_localizedDescription(v15, v20, v21);
    v24 = objc_msgSend_initWithCode_format_(v16, v23, v19, @"%@", v22);
    v25 = v24;

    objc_exception_throw(v24);
  }

  v26.receiver = self;
  v26.super_class = CKSyncEngineFailedRecordSave;
  v12 = [(CKSyncEngineFailedRecordSave *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_record, a3);
    objc_storeStrong(&v13->_error, a4);
  }

  return v13;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_record(self, v5, v6);
  v10 = objc_msgSend_conciseDescription(v7, v8, v9);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v11, @"record", v10, 0);

  v15 = objc_msgSend_error(self, v12, v13);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v14, @"error", v15, 0);
}

@end