@interface CKSyncEngineDidFetchRecordZoneChangesEvent
- (CKSyncEngineDidFetchRecordZoneChangesEvent)initWithZoneID:(id)d error:(id)error;
- (void)CKDescribePropertiesUsing:(id)using;
@end

@implementation CKSyncEngineDidFetchRecordZoneChangesEvent

- (CKSyncEngineDidFetchRecordZoneChangesEvent)initWithZoneID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  v26 = 0;
  v9 = _CKCheckArgument("zoneID", dCopy, 0, 0, 0, &v26);
  v10 = v26;
  if ((v9 & 1) == 0)
  {
    v14 = v10;
    v15 = [CKException alloc];
    v18 = objc_msgSend_code(v14, v16, v17);
    v21 = objc_msgSend_localizedDescription(v14, v19, v20);
    v23 = objc_msgSend_initWithCode_format_(v15, v22, v18, @"%@", v21);
    v24 = v23;

    objc_exception_throw(v23);
  }

  v25.receiver = self;
  v25.super_class = CKSyncEngineDidFetchRecordZoneChangesEvent;
  initInternal = [(CKSyncEngineEvent *)&v25 initInternal];
  v12 = initInternal;
  if (initInternal)
  {
    objc_storeStrong(initInternal + 1, d);
    objc_storeStrong(&v12->_error, error);
  }

  return v12;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  v13.receiver = self;
  v13.super_class = CKSyncEngineDidFetchRecordZoneChangesEvent;
  usingCopy = using;
  [(CKSyncEngineEvent *)&v13 CKDescribePropertiesUsing:usingCopy];
  v7 = objc_msgSend_zoneID(self, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"zoneID", v7, 0);

  v11 = objc_msgSend_error(self, v9, v10);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v12, @"error", v11, 0);
}

@end