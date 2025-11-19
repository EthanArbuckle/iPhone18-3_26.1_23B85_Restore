@interface CKSyncEngineWillFetchRecordZoneChangesEvent
- (CKSyncEngineWillFetchRecordZoneChangesEvent)initWithZoneID:(id)a3;
- (void)CKDescribePropertiesUsing:(id)a3;
@end

@implementation CKSyncEngineWillFetchRecordZoneChangesEvent

- (CKSyncEngineWillFetchRecordZoneChangesEvent)initWithZoneID:(id)a3
{
  v5 = a3;
  v23 = 0;
  v6 = _CKCheckArgument("zoneID", v5, 0, 0, 0, &v23);
  v7 = v23;
  if ((v6 & 1) == 0)
  {
    v11 = v7;
    v12 = [CKException alloc];
    v15 = objc_msgSend_code(v11, v13, v14);
    v18 = objc_msgSend_localizedDescription(v11, v16, v17);
    v20 = objc_msgSend_initWithCode_format_(v12, v19, v15, @"%@", v18);
    v21 = v20;

    objc_exception_throw(v20);
  }

  v22.receiver = self;
  v22.super_class = CKSyncEngineWillFetchRecordZoneChangesEvent;
  v8 = [(CKSyncEngineEvent *)&v22 initInternal];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 1, a3);
  }

  return v9;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v9.receiver = self;
  v9.super_class = CKSyncEngineWillFetchRecordZoneChangesEvent;
  v4 = a3;
  [(CKSyncEngineEvent *)&v9 CKDescribePropertiesUsing:v4];
  v7 = objc_msgSend_zoneID(self, v5, v6, v9.receiver, v9.super_class);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"zoneID", v7, 0);
}

@end