@interface CKMediaItemMaker
- (CKMediaItemMaker)initWithAssetStreamHandle:(id)a3;
- (CKMediaItemMaker)initWithCloudAssetsAssetStreamHandle:(id)a3;
- (CKMediaItemMaker)initWithData:(id)a3 error:(id *)a4;
- (id)dataRepresentationWithError:(id *)a3;
- (id)makeAVAssetExportSession:(id)a3 options:(id)a4 presetName:(id)a5;
- (id)makeAVPlayerItemWithURL:(id)a3;
- (id)makeAVPlayerItemWithURL:(id)a3 options:(id)a4;
@end

@implementation CKMediaItemMaker

- (CKMediaItemMaker)initWithAssetStreamHandle:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CKMediaItemMaker;
  v6 = [(CKMediaItemMaker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetStreamHandle, a3);
    cloudAssetsAssetStreamHandle = v7->_cloudAssetsAssetStreamHandle;
    v7->_cloudAssetsAssetStreamHandle = 0;
  }

  return v7;
}

- (CKMediaItemMaker)initWithCloudAssetsAssetStreamHandle:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CKMediaItemMaker;
  v6 = [(CKMediaItemMaker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    assetStreamHandle = v6->_assetStreamHandle;
    v6->_assetStreamHandle = 0;

    objc_storeStrong(&v7->_cloudAssetsAssetStreamHandle, a3);
  }

  return v7;
}

- (id)makeAVPlayerItemWithURL:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_assetStreamHandle(self, v8, v9);

  if (v10)
  {
    objc_msgSend_assetStreamHandle(self, v11, v12);
  }

  else
  {
    objc_msgSend_cloudAssetsAssetStreamHandle(self, v11, v12);
  }
  v13 = ;
  v15 = objc_msgSend_makeAVPlayerItemWith_options_(v13, v14, v7, v6);

  return v15;
}

- (id)makeAVPlayerItemWithURL:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_assetStreamHandle(self, v5, v6);

  if (v7)
  {
    objc_msgSend_assetStreamHandle(self, v8, v9);
  }

  else
  {
    objc_msgSend_cloudAssetsAssetStreamHandle(self, v8, v9);
  }
  v10 = ;
  v12 = objc_msgSend_makeAVPlayerItemWith_options_(v10, v11, v4, 0);

  return v12;
}

- (id)makeAVAssetExportSession:(id)a3 options:(id)a4 presetName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = objc_msgSend_assetStreamHandle(self, v11, v12);

  if (v13)
  {
    objc_msgSend_assetStreamHandle(self, v14, v15);
  }

  else
  {
    objc_msgSend_cloudAssetsAssetStreamHandle(self, v14, v15);
  }
  v16 = ;
  v18 = objc_msgSend_makeAVAssetExportSessionWith_options_presetName_(v16, v17, v10, v9, v8);

  return v18;
}

- (CKMediaItemMaker)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = CKMediaItemMaker;
  v7 = [(CKMediaItemMaker *)&v17 init];
  if (v7)
  {
    v8 = [CKAssetStreamHandle alloc];
    v10 = objc_msgSend_initWithSerializedData_error_(v8, v9, v6, a4);
    assetStreamHandle = v7->_assetStreamHandle;
    v7->_assetStreamHandle = v10;

    if (v7->_assetStreamHandle)
    {
      v12 = 0;
    }

    else
    {
      v13 = [_TtC8CloudKit28CloudAssetsAssetStreamHandle alloc];
      v12 = objc_msgSend_initFrom_error_(v13, v14, v6, a4);
    }

    cloudAssetsAssetStreamHandle = v7->_cloudAssetsAssetStreamHandle;
    v7->_cloudAssetsAssetStreamHandle = v12;
  }

  return v7;
}

- (id)dataRepresentationWithError:(id *)a3
{
  v5 = objc_msgSend_assetStreamHandle(self, a2, a3);

  if (v5)
  {
    v8 = objc_msgSend_assetStreamHandle(self, v6, v7);
    objc_msgSend_serializedData_(v8, v9, a3);
  }

  else
  {
    v8 = objc_msgSend_cloudAssetsAssetStreamHandle(self, v6, v7);
    objc_msgSend_serializedDataAndReturnError_(v8, v10, a3);
  }
  v11 = ;

  return v11;
}

@end