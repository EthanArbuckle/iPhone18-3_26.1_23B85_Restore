@interface CRLImageItemImporter
+ (BOOL)p_canAnimate:(CGImageSource *)a3;
+ (BOOL)p_canImportImageSource:(CGImageSource *)a3;
+ (BOOL)protected_canImportFileAtURL:(id)a3 type:(id)a4;
+ (BOOL)protected_canImportFileWithPreinsertionAsset:(id)a3 type:(id)a4;
- (CRLImageItemImporter)initWithData:(id)a3 boardItemFactory:(id)a4;
- (CRLImageItemImporter)initWithURL:(id)a3 boardItemFactory:(id)a4;
- (unint64_t)embeddedDataLength;
- (unint64_t)p_embeddedDataLengthForInfo:(id)a3;
- (unint64_t)p_uploadDataLengthForInfo:(id)a3;
- (unint64_t)uploadDataLength;
- (void)cancel;
- (void)importBoardItemWithCompletionHandler:(id)a3;
- (void)p_createAssetDataAndThenContinueImportWithCompletionHandler:(id)a3;
- (void)p_doAsyncImportWorkWithCompletionHandler:(id)a3;
- (void)p_finishImportingWithInfo:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)p_importImageFromDataConvertingIfNeededToRequiredCompatibilityLevel:(int64_t)a3 fromCompatibilityLevel:(int64_t)a4 completionHandler:(id)a5;
- (void)p_importInfoFromDataWithCompletionHandler:(id)a3;
- (void)p_tellDelegateToIgnoreCompatibilityLevelIfNeeded;
@end

@implementation CRLImageItemImporter

+ (BOOL)protected_canImportFileAtURL:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [UTTypePDF identifier];
  v9 = [v7 crl_conformsToUTI:v8];

  if (v9)
  {
    goto LABEL_2;
  }

  if (![a1 isSupportedAnimatedImageFileType:v7])
  {
    v14.receiver = a1;
    v14.super_class = &OBJC_METACLASS___CRLImageItemImporter;
    v10 = objc_msgSendSuper2(&v14, "protected_canImportFileAtURL:type:", v6, v7);
    goto LABEL_10;
  }

  v11 = CGImageSourceCreateWithURL(v6, 0);
  if (!v11)
  {
LABEL_2:
    v10 = 0;
  }

  else
  {
    v12 = v11;
    if ([a1 p_canImportImageSource:v11])
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

+ (BOOL)protected_canImportFileWithPreinsertionAsset:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 type];
  v9 = [v8 isEqual:UTTypePDF];

  if (v9)
  {
    goto LABEL_2;
  }

  if (![a1 isSupportedAnimatedImageFileType:v7])
  {
    v14.receiver = a1;
    v14.super_class = &OBJC_METACLASS___CRLImageItemImporter;
    v10 = objc_msgSendSuper2(&v14, "protected_canImportFileWithPreinsertionAsset:type:", v6, v7);
    goto LABEL_10;
  }

  v11 = [v6 newCGImageSource];
  if (!v11)
  {
LABEL_2:
    v10 = 0;
  }

  else
  {
    v12 = v11;
    if ([a1 p_canImportImageSource:v11])
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

+ (BOOL)p_canImportImageSource:(CGImageSource *)a3
{
  Count = CGImageSourceGetCount(a3);
  if (Count != 1)
  {
    LOBYTE(Count) = [a1 p_canAnimate:a3] ^ 1;
  }

  return Count;
}

+ (BOOL)p_canAnimate:(CGImageSource *)a3
{
  if (!a3)
  {
    return 1;
  }

  v3 = CGImageSourceCopyProperties(a3, 0);
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

- (CRLImageItemImporter)initWithURL:(id)a3 boardItemFactory:(id)a4
{
  v7.receiver = self;
  v7.super_class = CRLImageItemImporter;
  v4 = [(CRLBoardItemImporter *)&v7 initWithURL:a3 boardItemFactory:a4];
  v5 = v4;
  if (v4)
  {
    sub_1004C51F4(v4);
  }

  return v5;
}

- (CRLImageItemImporter)initWithData:(id)a3 boardItemFactory:(id)a4
{
  v7.receiver = self;
  v7.super_class = CRLImageItemImporter;
  v4 = [(CRLBoardItemImporter *)&v7 initWithData:a3 boardItemFactory:a4];
  v5 = v4;
  if (v4)
  {
    sub_1004C51F4(v4);
  }

  return v5;
}

- (void)importBoardItemWithCompletionHandler:(id)a3
{
  v4 = a3;
  importQueue = self->_importQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004C5380;
  v7[3] = &unk_10183FC10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(importQueue, v7);
}

- (void)p_createAssetDataAndThenContinueImportWithCompletionHandler:(id)a3
{
  v4 = a3;
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
      v10 = [(CRLBoardItemImporter *)self boardItemFactory];
      v11 = [v10 assetOwner];
      v12 = [(CRLPreinsertionAssetWrapper *)v8 initWithUrl:v9 owner:v11];

      if (!v12)
      {
LABEL_11:
        [(CRLImageItemImporter *)self p_doAsyncImportWorkWithCompletionHandler:v4];
        goto LABEL_12;
      }
    }

    else
    {
      v13 = [(CRLBoardItemImporter *)self preinsertionAsset];

      if (!v13)
      {
        goto LABEL_11;
      }

      v12 = [(CRLBoardItemImporter *)self preinsertionAsset];
      if (!v12)
      {
        goto LABEL_11;
      }
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1004C554C;
    v14[3] = &unk_10183FCB8;
    v14[4] = self;
    v15 = v4;
    [(CRLPreinsertionAssetWrapper *)v12 createAssetWithCompletionHandler:v14];

LABEL_12:
  }
}

- (void)p_doAsyncImportWorkWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = self->_importQueue;
  if (v5 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v5);
  }

  [(CRLBasicProgress *)self->_progress maxValue];
  if (atomic_load(&self->_isCancelled))
  {
    [(CRLImageItemImporter *)self p_finishImportingWithInfo:0 error:0 completionHandler:v4];
  }

  else
  {
    v8 = v6;
    [(CRLBasicProgress *)self->_progress setValue:v6 * 0.1];
    imageData = self->_imageData;
    if (imageData)
    {
      objc_storeStrong(&self->_originalImageData, imageData);
      v10 = [(CRLBoardItemImporter *)self delegate];
      if (v10)
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
      v20 = self;
      v21 = v10;
      v23 = v11;
      v22 = v4;
      v15 = v10;
      [(CRLImageCompatibilityChecker *)v14 checkCompatibilityUpToLevel:v11 completionHandler:&v16];
    }

    else
    {
      [(CRLImageItemImporter *)self p_finishImportingWithInfo:0 error:0 completionHandler:v4];
    }

    [(CRLBasicProgress *)self->_progress setValue:v8 * 0.5, v16, v17, v18, v19, v20];
  }
}

- (void)p_importImageFromDataConvertingIfNeededToRequiredCompatibilityLevel:(int64_t)a3 fromCompatibilityLevel:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = self->_importQueue;
  if (v9 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v9);
  }

  if (a4 >= a3)
  {
    [(CRLImageItemImporter *)self p_importInfoFromDataWithCompletionHandler:v8];
  }

  else if (a4 < 2)
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

    [(CRLImageItemImporter *)self p_finishImportingWithInfo:0 error:v22 completionHandler:v8];
  }

  else
  {
    v10 = [CRLImageCompatibilityConverter alloc];
    imageData = self->_imageData;
    v12 = [(CRLBoardItemImporter *)self boardItemFactory];
    v13 = [v12 assetOwner];
    v14 = [(CRLImageCompatibilityConverter *)v10 initWithImageData:imageData desiredCompatibilityLevel:a3 assetOwner:v13];
    compatibilityConverter = self->_compatibilityConverter;
    self->_compatibilityConverter = v14;

    v16 = self->_compatibilityConverter;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1004C6134;
    v28[3] = &unk_10183FC10;
    v28[4] = self;
    v29 = v8;
    [(CRLImageCompatibilityConverter *)v16 convertMediaWithCompletionHandler:v28];
  }
}

- (void)p_importInfoFromDataWithCompletionHandler:(id)a3
{
  v4 = a3;
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
      [(CRLImageItemImporter *)self p_finishImportingWithInfo:v11 error:v10 completionHandler:v4];

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
          v31 = [(CRLBoardItemImporter *)self boardItemFactory];
          v11 = [v31 makeImageItemWithGeometry:v30 imageData:self->_imageData thumbnailData:self->_thumbnailData];

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
      v23 = [v15[62] mainBundle];
      v24 = [v23 localizedStringForKey:@"This image is of an unsupported type." value:0 table:0];
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

- (void)p_finishImportingWithInfo:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(CRLImageItemImporter *)self p_tellDelegateToIgnoreCompatibilityLevelIfNeeded];
  if (!atomic_load(&self->_isCancelled))
  {
    if (!v9)
    {
      v13 = [(CRLBoardItemImporter *)self URL];
      v14 = v13;
      if (v13)
      {
        v27 = 0;
        [v13 getResourceValue:&v27 forKey:NSURLLocalizedNameKey error:0];
        v15 = v27;
        if (!v15)
        {
          v15 = [v14 lastPathComponent];
        }

        v16 = +[NSBundle mainBundle];
        v17 = [v16 localizedStringForKey:@"The image “%@” couldn’t be inserted." value:0 table:0];
        v18 = [NSString stringWithFormat:v17, v15];
      }

      else
      {
        v15 = +[NSBundle mainBundle];
        v18 = [v15 localizedStringForKey:@"The image couldn’t be inserted." value:0 table:0];
      }

      if (v10)
      {
        v19 = [v10 userInfo];
        v20 = [v19 mutableCopy];

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
        v23 = [v10 domain];
        v24 = [v22 initWithDomain:v23 code:objc_msgSend(v10 userInfo:{"code"), v20}];
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
        v23 = self->_error;
        self->_error = v26;
      }

      if (v11)
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    }

    objc_storeStrong(&self->_boardItem, a3);
  }

  if (v11)
  {
LABEL_5:
    v11[2](v11);
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
    v4 = [(CRLBoardItemImporter *)self delegate];
    if (v4)
    {
      v5 = v4;
      v4 = objc_opt_respondsToSelector();
      if (v4)
      {
        v4 = [v5 boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:self];
      }
    }

    _objc_release_x2(v4);
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

- (unint64_t)p_uploadDataLengthForInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 imageAssetPayload];

  if (v4)
  {
    v5 = [v3 imageAssetPayload];
    v4 = [v5 length];
  }

  return v4;
}

- (unint64_t)p_embeddedDataLengthForInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 thumbnailAssetPayload];

  if (v4)
  {
    v5 = [v3 thumbnailAssetPayload];
    v4 = [v5 length];
  }

  v6 = [v3 imageAssetPayload];

  if (v6)
  {
    v7 = [v3 imageAssetPayload];
    v4 = &v4[[v7 length]];
  }

  return v4;
}

@end