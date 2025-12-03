@interface CKSyncEngineFailedZoneSave
- (CKSyncEngineFailedZoneSave)initWithZone:(id)zone error:(id)error;
- (void)CKDescribePropertiesUsing:(id)using;
@end

@implementation CKSyncEngineFailedZoneSave

- (CKSyncEngineFailedZoneSave)initWithZone:(id)zone error:(id)error
{
  zoneCopy = zone;
  errorCopy = error;
  v28 = 0;
  v9 = _CKCheckArgument("zone", zoneCopy, 0, 0, 0, &v28);
  v10 = v28;
  if ((v9 & 1) == 0 || (v10, v27 = 0, v11 = _CKCheckArgument("error", errorCopy, 0, 0, 0, &v27), v10 = v27, (v11 & 1) == 0))
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
  v26.super_class = CKSyncEngineFailedZoneSave;
  v12 = [(CKSyncEngineFailedZoneSave *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_recordZone, zone);
    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v7 = objc_msgSend_recordZone(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"zone", v7, 0);

  v12 = objc_msgSend_error(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v11, @"error", v12, 0);
}

@end