@interface CRLImageItemImporter
+ (BOOL)p_canAnimate:(CGImageSource *)animate;
+ (BOOL)p_canImportImageSource:(CGImageSource *)source;
+ (BOOL)protected_canImportFileAtURL:(id)l type:(id)type;
+ (BOOL)protected_canImportFileWithPreinsertionAsset:(id)asset type:(id)type;
- (CRLImageItemImporter)initWithData:(id)data boardItemFactory:(id)factory;
- (CRLImageItemImporter)initWithURL:(id)l boardItemFactory:(id)factory;
- (unint64_t)embeddedDataLength;
- (unint64_t)p_embeddedDataLengthForInfo:(id)info;
- (unint64_t)p_uploadDataLengthForInfo:(id)info;
- (unint64_t)uploadDataLength;
- (void)cancel;
- (void)importBoardItemWithCompletionHandler:(id)handler;
- (void)p_createAssetDataAndThenContinueImportWithCompletionHandler:(id)handler;
- (void)p_doAsyncImportWorkWithCompletionHandler:(id)handler;
- (void)p_finishImportingWithInfo:(id)info error:(id)error completionHandler:(id)handler;
- (void)p_importImageFromDataConvertingIfNeededToRequiredCompatibilityLevel:(int64_t)level fromCompatibilityLevel:(int64_t)compatibilityLevel completionHandler:(id)handler;
- (void)p_importInfoFromDataWithCompletionHandler:(id)handler;
- (void)p_tellDelegateToIgnoreCompatibilityLevelIfNeeded;
@end

@implementation CRLImageItemImporter

+ (BOOL)protected_canImportFileAtURL:(id)l type:(id)type
{
  lCopy = l;
  typeCopy = type;
  identifier = [UTTypePDF identifier];
  v9 = [typeCopy crl_conformsToUTI:identifier];

  if (v9)
  {
    goto LABEL_2;
  }

  if (![self isSupportedAnimatedImageFileType:typeCopy])
  {
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS___CRLImageItemImporter;
    v10 = objc_msgSendSuper2(&v14, "protected_canImportFileAtURL:type:", lCopy, typeCopy);
    goto LABEL_10;
  }

  v11 = CGImageSourceCreateWithURL(lCopy, 0);
  if (!v11)
  {
LABEL_2:
    v10 = 0;
  }

  else
  {
    v12 = v11;
    if ([self p_canImportImageSource:v11])
    {
      v10 = 1;
    }

    else
    {
      v10 = [PFImageMetadata imageSourceIsSpatial:v12];
    }

    CFRelease(v12);
  }

LABEL_10:

  return v10;
}

+ (BOOL)protected_canImportFileWithPreinsertionAsset:(id)asset type:(id)type
{
  assetCopy = asset;
  typeCopy = type;
  type = [assetCopy type];
  v9 = [type isEqual:UTTypePDF];

  if (v9)
  {
    goto LABEL_2;
  }

  if (![self isSupportedAnimatedImageFileType:typeCopy])
  {
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS___CRLImageItemImporter;
    v10 = objc_msgSendSuper2(&v14, "protected_canImportFileWithPreinsertionAsset:type:", assetCopy, typeCopy);
    goto LABEL_10;
  }

  newCGImageSource = [assetCopy newCGImageSource];
  if (!newCGImageSource)
  {
LABEL_2:
    v10 = 0;
  }

  else
  {
    v12 = newCGImageSource;
    if ([self p_canImportImageSource:newCGImageSource])
    {
      v10 = 1;
    }

    else
    {
      v10 = [PFImageMetadata imageSourceIsSpatial:v12];
    }

    CFRelease(v12);
  }

LABEL_10:

  return v10;
}

+ (BOOL)p_canImportImageSource:(CGImageSource *)source
{
  Count = CGImageSourceGetCount(source);
  if (Count != 1)
  {
    LOBYTE(Count) = [self p_canAnimate:source] ^ 1;
  }

  return Count;
}

+ (BOOL)p_canAnimate:(CGImageSource *)animate
{
  if (!animate)
  {
    return 1;
  }

  v3 = CGImageSourceCopyProperties(animate, 0);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"CanAnimate"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue] != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (CRLImageItemImporter)initWithURL:(id)l boardItemFactory:(id)factory
{
  v7.receiver = self;
  v7.super_class = CRLImageItemImporter;
  v4 = [(CRLBoardItemImporter *)&v7 initWithURL:l boardItemFactory:factory];
  v5 = v4;
  if (v4)
  {
    sub_1004C51F4(v4);
  }

  return v5;
}

- (CRLImageItemImporter)initWithData:(id)data boardItemFactory:(id)factory
{
  v7.receiver = self;
  v7.super_class = CRLImageItemImporter;
  v4 = [(CRLBoardItemImporter *)&v7 initWithData:data boardItemFactory:factory];
  v5 = v4;
  if (v4)
  {
    sub_1004C51F4(v4);
  }

  return v5;
}

- (void)importBoardItemWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  importQueue = self->_importQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004C5380;
  v7[3] = &unk_10183FC10;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(importQueue, v7);
}

- (void)p_createAssetDataAndThenContinueImportWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_importQueue;
  if (v5 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v5);
  }

  if (!atomic_load(&self->_isCancelled))
  {
    v7 = [(CRLBoardItemImporter *)self URL];
    if (v7)
    {
      v8 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
      v9 = [(CRLBoardItemImporter *)self URL];
      boardItemFactory = [(CRLBoardItemImporter *)self boardItemFactory];
      assetOwner = [boardItemFactory assetOwner];
      preinsertionAsset2 = [(CRLPreinsertionAssetWrapper *)v8 initWithUrl:v9 owner:assetOwner];

      if (!preinsertionAsset2)
      {
LABEL_11:
        [(CRLImageItemImporter *)self p_doAsyncImportWorkWithCompletionHandler:handlerCopy];
        goto LABEL_12;
      }
    }

    else
    {
      preinsertionAsset = [(CRLBoardItemImporter *)self preinsertionAsset];

      if (!preinsertionAsset)
      {
        goto LABEL_11;
      }

      preinsertionAsset2 = [(CRLBoardItemImporter *)self preinsertionAsset];
      if (!preinsertionAsset2)
      {
        goto LABEL_11;
      }
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1004C554C;
    v14[3] = &unk_10183FCB8;
    v14[4] = self;
    v15 = handlerCopy;
    [(CRLPreinsertionAssetWrapper *)preinsertionAsset2 createAssetWithCompletionHandler:v14];

LABEL_12:
  }
}

- (void)p_doAsyncImportWorkWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_importQueue;
  if (v5 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v5);
  }

  [(CRLBasicProgress *)self->_progress maxValue];
  if (atomic_load(&self->_isCancelled))
  {
    [(CRLImageItemImporter *)self p_finishImportingWithInfo:0 error:0 completionHandler:handlerCopy];
  }

  else
  {
    v8 = v6;
    [(CRLBasicProgress *)self->_progress setValue:v6 * 0.1];
    imageData = self->_imageData;
    if (imageData)
    {
      objc_storeStrong(&self->_originalImageData, imageData);
      delegate = [(CRLBoardItemImporter *)self delegate];
      if (delegate)
      {
        v11 = 4;
      }

      else
      {
        v11 = 3;
      }

      v12 = [[CRLImageCompatibilityChecker alloc] initWithImageData:self->_imageData];
      compatibilityChecker = self->_compatibilityChecker;
      self->_compatibilityChecker = v12;

      v14 = self->_compatibilityChecker;
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_1004C5A48;
      v19 = &unk_10185CC98;
      selfCopy = self;
      v21 = delegate;
      v23 = v11;
      v22 = handlerCopy;
      v15 = delegate;
      [(CRLImageCompatibilityChecker *)v14 checkCompatibilityUpToLevel:v11 completionHandler:&v16];
    }

    else
    {
      [(CRLImageItemImporter *)self p_finishImportingWithInfo:0 error:0 completionHandler:handlerCopy];
    }

    [(CRLBasicProgress *)self->_progress setValue:v8 * 0.5, v16, v17, v18, v19, selfCopy];
  }
}

- (void)p_importImageFromDataConvertingIfNeededToRequiredCompatibilityLevel:(int64_t)level fromCompatibilityLevel:(int64_t)compatibilityLevel completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = self->_importQueue;
  if (v9 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v9);
  }

  if (compatibilityLevel >= level)
  {
    [(CRLImageItemImporter *)self p_importInfoFromDataWithCompletionHandler:handlerCopy];
  }

  else if (compatibilityLevel < 2)
  {
    v32[0] = NSLocalizedDescriptionKey;
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"The image type is not supported on this device." value:0 table:0];
    v32[1] = @"CRLBoardItemImporterErrorMediaTypeKey";
    v33[0] = v18;
    v33[1] = &off_1018E2E20;
    v19 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

    v20 = [v19 mutableCopy];
    v21 = [(CRLBoardItemImporter *)self URL];
    if (v21)
    {
      [v20 setObject:v21 forKeyedSubscript:NSURLErrorKey];
    }

    v22 = [NSError errorWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:103 userInfo:v20];
    if ((sub_10050D1C8(self->_imageData) & 1) == 0)
    {
      v27 = [NSError alloc];
      v30[0] = NSLocalizedFailureReasonErrorKey;
      v23 = +[NSBundle mainBundle];
      v24 = [v23 localizedStringForKey:@"This image is too large to insert." value:0 table:0];
      v30[1] = @"CRLBoardItemImporterErrorMediaTypeKey";
      v31[0] = v24;
      v31[1] = &off_1018E2E20;
      v25 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
      v26 = [v27 initWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:102 userInfo:v25];

      v22 = v26;
    }

    [(CRLImageItemImporter *)self p_finishImportingWithInfo:0 error:v22 completionHandler:handlerCopy];
  }

  else
  {
    v10 = [CRLImageCompatibilityConverter alloc];
    imageData = self->_imageData;
    boardItemFactory = [(CRLBoardItemImporter *)self boardItemFactory];
    assetOwner = [boardItemFactory assetOwner];
    v14 = [(CRLImageCompatibilityConverter *)v10 initWithImageData:imageData desiredCompatibilityLevel:level assetOwner:assetOwner];
    compatibilityConverter = self->_compatibilityConverter;
    self->_compatibilityConverter = v14;

    v16 = self->_compatibilityConverter;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1004C6134;
    v28[3] = &unk_10183FC10;
    v28[4] = self;
    v29 = handlerCopy;
    [(CRLImageCompatibilityConverter *)v16 convertMediaWithCompletionHandler:v28];
  }
}

- (void)p_importInfoFromDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_importQueue;
  if (v5 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v5);
  }

  v6 = objc_autoreleasePoolPush();
  if (!atomic_load(&self->_isCancelled))
  {
    [(CRLBasicProgress *)self->_progress maxValue];
    if (!self->_imageData || (v9 = atomic_load(&self->_isCancelled)) != 0)
    {
      v10 = 0;
      v11 = 0;
LABEL_17:
      [(CRLImageItemImporter *)self p_finishImportingWithInfo:v11 error:v10 completionHandler:handlerCopy];

      goto LABEL_18;
    }

    v12 = v8;
    v13 = sub_10050D1C8(self->_imageData);
    v14 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    v15 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    if ((v13 & 1) != 0 || (v16 = [NSError alloc], v34[0] = NSLocalizedFailureReasonErrorKey, +[NSBundle mainBundle](NSBundle, "mainBundle"), v17 = objc_claimAutoreleasedReturnValue(), [v17 localizedStringForKey:@"This image is too large to insert." value:0 table:0], v18 = objc_claimAutoreleasedReturnValue(), v34[1] = @"CRLBoardItemImporterErrorMediaTypeKey", v35[0] = v18, v35[1] = &off_1018E2E20, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v35, v34, 2), v19 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v16, "initWithDomain:code:userInfo:", @"com.apple.freeform.CRLErrorDomainInfoImporter", 102, v19), v19, v18, v17, v14 = &_s10Foundation9IndexPathVSHAAMc_ptr, v15 = &_s10Foundation9IndexPathVSHAAMc_ptr, !v10))
    {
      if (self->_imageData)
      {
        v20 = +[CRLImageProviderPool sharedPool];
        v21 = [v20 providerForAsset:self->_imageData shouldValidate:1];

        if (v21 && ![v21 isError])
        {
          [v21 dpiAdjustedNaturalSize];
          v28 = sub_100121E8C(v26, v27, 250.0, 250.0);
          v30 = [[CRLCanvasInfoGeometry alloc] initWithSize:v28, v29];
          boardItemFactory = [(CRLBoardItemImporter *)self boardItemFactory];
          v11 = [boardItemFactory makeImageItemWithGeometry:v30 imageData:self->_imageData thumbnailData:self->_thumbnailData];

          v15 = &_s10Foundation9IndexPathVSHAAMc_ptr;
          v14 = &_s10Foundation9IndexPathVSHAAMc_ptr;
          if (v11)
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        else
        {

          v14 = &_s10Foundation9IndexPathVSHAAMc_ptr;
        }
      }

      v22 = objc_alloc(v14[67]);
      v32[0] = NSLocalizedFailureReasonErrorKey;
      mainBundle = [v15[62] mainBundle];
      v24 = [mainBundle localizedStringForKey:@"This image is of an unsupported type." value:0 table:0];
      v32[1] = @"CRLBoardItemImporterErrorMediaTypeKey";
      v33[0] = v24;
      v33[1] = &off_1018E2E20;
      v25 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
      v10 = [v22 initWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:103 userInfo:v25];
    }

    v11 = 0;
LABEL_16:
    [(CRLBasicProgress *)self->_progress setValue:v12];
    goto LABEL_17;
  }

LABEL_18:
  objc_autoreleasePoolPop(v6);
}

- (void)p_finishImportingWithInfo:(id)info error:(id)error completionHandler:(id)handler
{
  infoCopy = info;
  errorCopy = error;
  handlerCopy = handler;
  [(CRLImageItemImporter *)self p_tellDelegateToIgnoreCompatibilityLevelIfNeeded];
  if (!atomic_load(&self->_isCancelled))
  {
    if (!infoCopy)
    {
      v13 = [(CRLBoardItemImporter *)self URL];
      v14 = v13;
      if (v13)
      {
        v27 = 0;
        [v13 getResourceValue:&v27 forKey:NSURLLocalizedNameKey error:0];
        lastPathComponent = v27;
        if (!lastPathComponent)
        {
          lastPathComponent = [v14 lastPathComponent];
        }

        v16 = +[NSBundle mainBundle];
        v17 = [v16 localizedStringForKey:@"The image “%@” couldn’t be inserted." value:0 table:0];
        v18 = [NSString stringWithFormat:v17, lastPathComponent];
      }

      else
      {
        lastPathComponent = +[NSBundle mainBundle];
        v18 = [lastPathComponent localizedStringForKey:@"The image couldn’t be inserted." value:0 table:0];
      }

      if (errorCopy)
      {
        userInfo = [errorCopy userInfo];
        v20 = [userInfo mutableCopy];

        v21 = [v20 objectForKeyedSubscript:NSLocalizedDescriptionKey];

        if (!v21)
        {
          [v20 setObject:v18 forKeyedSubscript:NSLocalizedDescriptionKey];
        }

        if (v14)
        {
          [v20 setObject:v14 forKeyedSubscript:NSURLErrorKey];
        }

        v22 = [NSError alloc];
        domain = [errorCopy domain];
        v24 = [v22 initWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), v20}];
        error = self->_error;
        self->_error = v24;
      }

      else
      {
        v20 = [[NSMutableDictionary alloc] initWithCapacity:3];
        [v20 setObject:v18 forKeyedSubscript:NSLocalizedDescriptionKey];
        [v20 setObject:&off_1018E2E20 forKeyedSubscript:@"CRLBoardItemImporterErrorMediaTypeKey"];
        if (v14)
        {
          [v20 setObject:v14 forKeyedSubscript:NSURLErrorKey];
        }

        v26 = [[NSError alloc] initWithDomain:@"com.apple.freeform.CRLErrorDomainInfoImporter" code:100 userInfo:v20];
        domain = self->_error;
        self->_error = v26;
      }

      if (handlerCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    }

    objc_storeStrong(&self->_boardItem, info);
  }

  if (handlerCopy)
  {
LABEL_5:
    handlerCopy[2](handlerCopy);
  }

LABEL_6:
}

- (void)p_tellDelegateToIgnoreCompatibilityLevelIfNeeded
{
  v3 = self->_importQueue;
  if (v3 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v3);
  }

  if (!self->_didMessageDelegateAboutMediaCompatibility)
  {
    self->_didMessageDelegateAboutMediaCompatibility = 1;
    delegate = [(CRLBoardItemImporter *)self delegate];
    if (delegate)
    {
      v5 = delegate;
      delegate = objc_opt_respondsToSelector();
      if (delegate)
      {
        delegate = [v5 boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:self];
      }
    }

    _objc_release_x2(delegate);
  }
}

- (void)cancel
{
  importQueue = self->_importQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004C6B08;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(importQueue, block);
}

- (unint64_t)uploadDataLength
{
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, self->_boardItem);
  v5 = [(CRLImageItemImporter *)self p_uploadDataLengthForInfo:v4];

  return v5;
}

- (unint64_t)embeddedDataLength
{
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, self->_boardItem);
  v5 = [(CRLImageItemImporter *)self p_embeddedDataLengthForInfo:v4];

  return v5;
}

- (unint64_t)p_uploadDataLengthForInfo:(id)info
{
  infoCopy = info;
  imageAssetPayload = [infoCopy imageAssetPayload];

  if (imageAssetPayload)
  {
    imageAssetPayload2 = [infoCopy imageAssetPayload];
    imageAssetPayload = [imageAssetPayload2 length];
  }

  return imageAssetPayload;
}

- (unint64_t)p_embeddedDataLengthForInfo:(id)info
{
  infoCopy = info;
  thumbnailAssetPayload = [infoCopy thumbnailAssetPayload];

  if (thumbnailAssetPayload)
  {
    thumbnailAssetPayload2 = [infoCopy thumbnailAssetPayload];
    thumbnailAssetPayload = [thumbnailAssetPayload2 length];
  }

  imageAssetPayload = [infoCopy imageAssetPayload];

  if (imageAssetPayload)
  {
    imageAssetPayload2 = [infoCopy imageAssetPayload];
    thumbnailAssetPayload = &thumbnailAssetPayload[[imageAssetPayload2 length]];
  }

  return thumbnailAssetPayload;
}

@end