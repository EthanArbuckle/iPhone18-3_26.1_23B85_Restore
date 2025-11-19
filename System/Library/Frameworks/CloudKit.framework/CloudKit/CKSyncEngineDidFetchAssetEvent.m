@interface CKSyncEngineDidFetchAssetEvent
- (CKSyncEngineDidFetchAssetEvent)initWithAsset:(id)a3 error:(id)a4;
- (void)CKDescribePropertiesUsing:(id)a3;
@end

@implementation CKSyncEngineDidFetchAssetEvent

- (CKSyncEngineDidFetchAssetEvent)initWithAsset:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26 = 0;
  v9 = _CKCheckArgument("asset", v7, 0, 0, 0, &v26);
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
  v25.super_class = CKSyncEngineDidFetchAssetEvent;
  v11 = [(CKSyncEngineEvent *)&v25 initInternal];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 1, a3);
    objc_storeStrong(&v12->_error, a4);
  }

  return v12;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v13.receiver = self;
  v13.super_class = CKSyncEngineDidFetchAssetEvent;
  v4 = a3;
  [(CKSyncEngineEvent *)&v13 CKDescribePropertiesUsing:v4];
  v7 = objc_msgSend_asset(self, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"asset", v7, 0);

  v11 = objc_msgSend_error(self, v9, v10);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v12, @"error", v11, 0);
}

@end