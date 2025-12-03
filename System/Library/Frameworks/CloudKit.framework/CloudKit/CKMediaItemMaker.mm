@interface CKMediaItemMaker
- (CKMediaItemMaker)initWithAssetStreamHandle:(id)handle;
- (CKMediaItemMaker)initWithCloudAssetsAssetStreamHandle:(id)handle;
- (CKMediaItemMaker)initWithData:(id)data error:(id *)error;
- (id)dataRepresentationWithError:(id *)error;
- (id)makeAVAssetExportSession:(id)session options:(id)options presetName:(id)name;
- (id)makeAVPlayerItemWithURL:(id)l;
- (id)makeAVPlayerItemWithURL:(id)l options:(id)options;
@end

@implementation CKMediaItemMaker

- (CKMediaItemMaker)initWithAssetStreamHandle:(id)handle
{
  handleCopy = handle;
  v10.receiver = self;
  v10.super_class = CKMediaItemMaker;
  v6 = [(CKMediaItemMaker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetStreamHandle, handle);
    cloudAssetsAssetStreamHandle = v7->_cloudAssetsAssetStreamHandle;
    v7->_cloudAssetsAssetStreamHandle = 0;
  }

  return v7;
}

- (CKMediaItemMaker)initWithCloudAssetsAssetStreamHandle:(id)handle
{
  handleCopy = handle;
  v10.receiver = self;
  v10.super_class = CKMediaItemMaker;
  v6 = [(CKMediaItemMaker *)&v10 init];
  v7 = v6;
  if (v6)
  {
    assetStreamHandle = v6->_assetStreamHandle;
    v6->_assetStreamHandle = 0;

    objc_storeStrong(&v7->_cloudAssetsAssetStreamHandle, handle);
  }

  return v7;
}

- (id)makeAVPlayerItemWithURL:(id)l options:(id)options
{
  optionsCopy = options;
  lCopy = l;
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
  v15 = objc_msgSend_makeAVPlayerItemWith_options_(v13, v14, lCopy, optionsCopy);

  return v15;
}

- (id)makeAVPlayerItemWithURL:(id)l
{
  lCopy = l;
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
  v12 = objc_msgSend_makeAVPlayerItemWith_options_(v10, v11, lCopy, 0);

  return v12;
}

- (id)makeAVAssetExportSession:(id)session options:(id)options presetName:(id)name
{
  nameCopy = name;
  optionsCopy = options;
  sessionCopy = session;
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
  v18 = objc_msgSend_makeAVAssetExportSessionWith_options_presetName_(v16, v17, sessionCopy, optionsCopy, nameCopy);

  return v18;
}

- (CKMediaItemMaker)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = CKMediaItemMaker;
  v7 = [(CKMediaItemMaker *)&v17 init];
  if (v7)
  {
    v8 = [CKAssetStreamHandle alloc];
    v10 = objc_msgSend_initWithSerializedData_error_(v8, v9, dataCopy, error);
    assetStreamHandle = v7->_assetStreamHandle;
    v7->_assetStreamHandle = v10;

    if (v7->_assetStreamHandle)
    {
      v12 = 0;
    }

    else
    {
      v13 = [_TtC8CloudKit28CloudAssetsAssetStreamHandle alloc];
      v12 = objc_msgSend_initFrom_error_(v13, v14, dataCopy, error);
    }

    cloudAssetsAssetStreamHandle = v7->_cloudAssetsAssetStreamHandle;
    v7->_cloudAssetsAssetStreamHandle = v12;
  }

  return v7;
}

- (id)dataRepresentationWithError:(id *)error
{
  v5 = objc_msgSend_assetStreamHandle(self, a2, error);

  if (v5)
  {
    v8 = objc_msgSend_assetStreamHandle(self, v6, v7);
    objc_msgSend_serializedData_(v8, v9, error);
  }

  else
  {
    v8 = objc_msgSend_cloudAssetsAssetStreamHandle(self, v6, v7);
    objc_msgSend_serializedDataAndReturnError_(v8, v10, error);
  }
  v11 = ;

  return v11;
}

@end