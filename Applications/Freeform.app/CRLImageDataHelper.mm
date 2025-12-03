@interface CRLImageDataHelper
- (CGSize)naturalSize;
- (CRLImageDataHelper)initWithImageData:(id)data assetOwner:(id)owner;
- (void)generateThumbnailImageDataWithCompletionHandler:(id)handler;
@end

@implementation CRLImageDataHelper

- (CRLImageDataHelper)initWithImageData:(id)data assetOwner:(id)owner
{
  dataCopy = data;
  ownerCopy = owner;
  v12.receiver = self;
  v12.super_class = CRLImageDataHelper;
  v9 = [(CRLImageDataHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageData, data);
    objc_storeStrong(&v10->_assetOwner, owner);
  }

  return v10;
}

- (CGSize)naturalSize
{
  imageData = [(CRLImageDataHelper *)self imageData];
  v3 = +[CRLImageProviderPool sharedPool];
  v4 = [v3 providerForAsset:imageData shouldValidate:1];

  [v4 naturalSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)generateThumbnailImageDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  imageData = [(CRLImageDataHelper *)self imageData];
  if ([imageData needsDownload])
  {
    v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013231A4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013231B8(v6, v7);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101323264();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v8, v6);
    }

    v9 = [NSString stringWithUTF8String:"[CRLImageDataHelper generateThumbnailImageDataWithCompletionHandler:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageDataHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:52 isFatal:0 description:"Needs to implement download-handling thumbnail creation!"];

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v11 = sub_10050D2D4(imageData, 3, self->_assetOwner, 256.0, 256.0);
    if (v11)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10017671C;
      v12[3] = &unk_10183FCB8;
      v13 = imageData;
      v14 = handlerCopy;
      [v11 createAssetWithCompletionHandler:v12];
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

@end