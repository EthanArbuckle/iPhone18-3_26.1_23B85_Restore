@interface CRLBitmapImageProvider
+ (CGImage)CGImageForImageData:(id)data;
+ (CGSize)naturalSizeForImageData:(id)data;
+ (id)CRLImageForImageData:(id)data;
+ (void)drawImage:(CGImage *)image inContext:(CGContext *)context rect:(CGRect)rect orientation:(int64_t)orientation;
- (BOOL)i_hasFlushableContent;
- (BOOL)isOpaque;
- (BOOL)isValid;
- (CGImage)CGImageForNaturalSize;
- (CGImage)CGImageForSize:(CGSize)size inContext:(CGContext *)context orContentsScaleProvider:(id)provider;
- (CGImage)CGImageOfAnySize;
- (CGImage)CGImageOfLargestSafeSize;
- (CGImage)CGImageResampledToSize:(CGSize)size lowQuality:(BOOL)quality assetOwner:(id)owner;
- (CGImage)cachedCGImageOfNearestSizeOrNULLPreferringSize:(CGSize)size withContentsScaleProvider:(id)provider;
- (CGImage)p_createResampledImageWithReciprocalScale:(unint64_t)scale;
- (CGImage)p_newImageFromSource:(CGImageSource *)source;
- (CGImage)p_newImageOfSize:(CGSize)size fromSource:(CGImageSource *)source;
- (CGImage)p_resampledImageOfReciprocalScale:(unint64_t)scale;
- (CGImageSource)CGImageSource;
- (CGImageSource)p_newCGImageSource;
- (CGImageSource)p_newCGImageSourceForTemporaryUse;
- (CGImageSource)p_newImageOfSize:(CGSize)size;
- (CGSize)dpiAdjustedNaturalSize;
- (CGSize)naturalSize;
- (int64_t)orientation;
- (int64_t)p_reciprocalScaleForImageSize:(CGSize)size;
- (unint64_t)imageDPI;
- (unint64_t)imageGamut;
- (void)dealloc;
- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect;
- (void)flush;
- (void)i_commonInit;
- (void)p_configureOrientationAndSizeFromImageSource:(CGImageSource *)source andImage:(CGImage *)image;
- (void)p_loadFullSizedImageIfNecessary;
- (void)p_loadLargestSafeImageIfNecessary;
- (void)p_loadSourceRefIfNecessary;
- (void)p_updateEstimatedSize;
@end

@implementation CRLBitmapImageProvider

+ (CGImage)CGImageForImageData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_class();
  v5 = +[CRLImageProviderPool sharedPool];
  v6 = [v5 temporaryProviderForAsset:dataCopy shouldValidate:1];

  v7 = sub_100014370(v4, v6);

  cGImageForNaturalSize = [v7 CGImageForNaturalSize];
  return cGImageForNaturalSize;
}

+ (id)CRLImageForImageData:(id)data
{
  v3 = [self CGImageForImageData:data];
  if (v3)
  {
    v3 = [CRLImage imageWithCGImage:v3];
  }

  return v3;
}

+ (CGSize)naturalSizeForImageData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_class();
  v5 = +[CRLImageProviderPool sharedPool];
  v6 = [v5 temporaryProviderForAsset:dataCopy shouldValidate:1];

  v7 = sub_100014370(v4, v6);

  if (v7)
  {
    [v7 naturalSize];
    width = v8;
    height = v10;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)i_commonInit
{
  v12.receiver = self;
  v12.super_class = CRLBitmapImageProvider;
  [(CRLImageProvider *)&v12 i_commonInit];
  if (self->mImageQueue)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101313128();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101313150();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013131D8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLBitmapImageProvider i_commonInit]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBitmapImageProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:101 isFatal:0 description:"called i_common init twice on same object!"];
  }

  v6 = dispatch_queue_create("com.apple.freeform.CRLBitmapImageProvider", 0);
  mImageQueue = self->mImageQueue;
  self->mImageQueue = v6;

  v8 = dispatch_semaphore_create(1);
  mFlushableContentLock = self->mFlushableContentLock;
  self->mFlushableContentLock = v8;

  v10 = objc_alloc_init(CRLOnce);
  mCheckIfValidOnce = self->mCheckIfValidOnce;
  self->mCheckIfValidOnce = v10;
}

- (void)dealloc
{
  CGImageRelease(self->mImage);
  CGImageRelease(self->mLargestSafeImage);
  mImageSource = self->mImageSource;
  if (mImageSource)
  {
    CFRelease(mImageSource);
  }

  v4.receiver = self;
  v4.super_class = CRLBitmapImageProvider;
  [(CRLImageProvider *)&v4 dealloc];
}

- (CGSize)naturalSize
{
  [(CRLBitmapImageProvider *)self p_loadImageMetadata];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v13 = 0;
  v14 = 0;
  v12 = &unk_1016A8115;
  mImageQueue = self->mImageQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000FC0BC;
  v8[3] = &unk_101839FF8;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(mImageQueue, v8);
  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (BOOL)isValid
{
  [(CRLBitmapImageProvider *)self p_loadSourceRefIfNecessary];
  mCheckIfValidOnce = self->mCheckIfValidOnce;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FC16C;
  v5[3] = &unk_10183AB38;
  v5[4] = self;
  [(CRLOnce *)mCheckIfValidOnce performBlockOnce:v5];
  return self->mIsValid;
}

- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (![(CRLBitmapImageProvider *)self isValid])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101313324();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101313338();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013133C0();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLBitmapImageProvider drawImageInContext:rect:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBitmapImageProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:186 isFatal:0 description:"shouldn't be drawing an invalid image provider"];
  }

  if ([(CRLBitmapImageProvider *)self isValid])
  {
    [objc_opt_class() drawImage:-[CRLBitmapImageProvider CGImageForSize:inContext:orContentsScaleProvider:](self inContext:"CGImageForSize:inContext:orContentsScaleProvider:" rect:context orientation:{0, width, height), context, -[CRLBitmapImageProvider orientation](self, "orientation"), x, y, width, height}];
  }
}

+ (void)drawImage:(CGImage *)image inContext:(CGContext *)context rect:(CGRect)rect orientation:(int64_t)orientation
{
  if (image)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    CGContextSaveGState(context);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    MinY = CGRectGetMinY(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MaxY = CGRectGetMaxY(v17);
    CGContextTranslateCTM(context, 0.0, MinY + MaxY);
    CGContextScaleCTM(context, 1.0, -1.0);
    sub_1004F3D84(orientation, 1, &v15, x, y, width, height);
    CGContextConcatCTM(context, &v15);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    CGContextDrawImage(context, v18, image);
    CGContextRestoreGState(context);
  }
}

- (CGImage)cachedCGImageOfNearestSizeOrNULLPreferringSize:(CGSize)size withContentsScaleProvider:(id)provider
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  if ([(CRLBitmapImageProvider *)self isValid])
  {
    if (providerCopy)
    {
      [providerCopy contentsScale];
      width = sub_10011F340(width, height, v8);
      height = v9;
      if (qword_101AD59E8 != -1)
      {
        sub_101313554();
      }

      v10 = off_1019EC778;
      if (os_log_type_enabled(off_1019EC778, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        [providerCopy contentsScale];
        *buf = 134218240;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%p scaling image for contentsScaleProvider by %f", buf, 0x16u);
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101313568();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131357C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101313624();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131364C(v17);
      }

      v18 = [NSString stringWithUTF8String:"[CRLBitmapImageProvider cachedCGImageOfNearestSizeOrNULLPreferringSize:withContentsScaleProvider:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBitmapImageProvider.m"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:231 isFatal:0 description:"invalid nil value for '%{public}s'", "contentsScaleProvider"];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v26 = 0;
    if (width == 0.0)
    {
      height = 0;
    }

    else
    {
      height = [(CRLBitmapImageProvider *)self p_reciprocalScaleForImageSize:width, height];
    }

    mImageQueue = self->mImageQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FCF80;
    block[3] = &unk_10183B670;
    block[5] = buf;
    block[6] = height;
    block[4] = self;
    dispatch_sync(mImageQueue, block);
    v22 = *(*&buf[8] + 24);
    if (v22)
    {
      CFAutorelease(v22);
      v16 = *(*&buf[8] + 24);
    }

    else
    {
      v16 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013133E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013133FC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101313484();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013134AC(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLBitmapImageProvider cachedCGImageOfNearestSizeOrNULLPreferringSize:withContentsScaleProvider:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBitmapImageProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:227 isFatal:0 description:"Invalid image provider trying to render an image at natural size"];

    v16 = 0;
  }

  return v16;
}

- (CGImage)CGImageOfAnySize
{
  v3 = +[CALayer layer];
  [v3 setContentsScale:1.0];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = [(CRLBitmapImageProvider *)self cachedCGImageOfNearestSizeOrNULLPreferringSize:v3 withContentsScaleProvider:CGSizeZero.width, CGSizeZero.height];
  v4 = v12[3];
  if (!v4)
  {
    [(CRLBitmapImageProvider *)self naturalSize];
    if (v6 > 100.0 || v5 > 100.0)
    {
      v4 = [(CRLBitmapImageProvider *)self p_resampledImageOfReciprocalScale:[(CRLBitmapImageProvider *)self p_reciprocalScaleForImageSize:100.0, 100.0]];
      v12[3] = v4;
    }

    else
    {
      [(CRLBitmapImageProvider *)self p_loadFullSizedImageIfNecessary];
      mImageQueue = self->mImageQueue;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000FD388;
      v10[3] = &unk_101839FF8;
      v10[4] = self;
      v10[5] = &v11;
      dispatch_sync(mImageQueue, v10);
      v8 = v12[3];
      if (v8)
      {
        CFAutorelease(v8);
      }

      v4 = v12[3];
    }
  }

  _Block_object_dispose(&v11, 8);

  return v4;
}

- (CGImage)CGImageOfLargestSafeSize
{
  if ([(CRLBitmapImageProvider *)self isValid])
  {
    v3 = CRLWPShapeLayout.columnsAreLeftToRight.getter();
    [(CRLBitmapImageProvider *)self naturalSize];
    if (v3 && v4 * v5 > sub_10050CF30())
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      [(CRLBitmapImageProvider *)self p_loadLargestSafeImageIfNecessary];
      mImageQueue = self->mImageQueue;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000FD714;
      v15[3] = &unk_101839FF8;
      v15[4] = self;
      v15[5] = &v17;
      dispatch_sync(mImageQueue, v15);
      v7 = v18[3];
      if (v7)
      {
        CFAutorelease(v7);
      }
    }

    else
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      [(CRLBitmapImageProvider *)self p_loadFullSizedImageIfNecessary];
      v12 = self->mImageQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FD6EC;
      block[3] = &unk_101839FF8;
      block[4] = self;
      block[5] = &v17;
      dispatch_sync(v12, block);
      v13 = v18[3];
      if (v13)
      {
        CFAutorelease(v13);
      }
    }

    v11 = v18[3];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013136F4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101313708();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101313790();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013137B8(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLBitmapImageProvider CGImageOfLargestSafeSize]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBitmapImageProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:321 isFatal:0 description:"Trying to get an image out of an invalid image provider."];

    return 0;
  }

  return v11;
}

- (CGImage)CGImageForNaturalSize
{
  if ([(CRLBitmapImageProvider *)self isValid])
  {
    [(CRLBitmapImageProvider *)self p_loadFullSizedImageIfNecessary];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    mImageQueue = self->mImageQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000FD9BC;
    v10[3] = &unk_101839FF8;
    v10[4] = self;
    v10[5] = &v11;
    dispatch_sync(mImageQueue, v10);
    v4 = v12[3];
    if (v4)
    {
      CFAutorelease(v4);
      v5 = v12[3];
    }

    else
    {
      v5 = 0;
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101313860();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101313874();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013138FC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101313924(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLBitmapImageProvider CGImageForNaturalSize]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBitmapImageProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:361 isFatal:0 description:"Invalid image provider trying to render an image at natural size"];

    return 0;
  }

  return v5;
}

- (CGImage)CGImageForSize:(CGSize)size inContext:(CGContext *)context orContentsScaleProvider:(id)provider
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  if ([(CRLBitmapImageProvider *)self isValid])
  {
    [(CRLBitmapImageProvider *)self p_loadImageMetadata];
    if (context)
    {
      if (providerCopy)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101313B38();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101313B4C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101313BD4();
        }

        v10 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101313BFC(v10);
        }

        v11 = [NSString stringWithUTF8String:"[CRLBitmapImageProvider CGImageForSize:inContext:orContentsScaleProvider:]"];
        v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBitmapImageProvider.m"];
        [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:391 isFatal:0 description:"using context to determine requested image size. contents scale provider should be nil"];
      }

      if ((sub_10051058C(context) & 1) != 0 || sub_100510804(context))
      {
        cGImageOfLargestSafeSize = [(CRLBitmapImageProvider *)self CGImageOfLargestSafeSize];
        goto LABEL_50;
      }

      v22 = sub_100510A7C(context);
      v23 = sub_10011F340(width, height, v22);
      v25 = v24;
      CGContextGetCTM(buf, context);
      v26 = sub_100139A00(buf);
      width = sub_10011F340(v23, v25, v26);
      height = v27;
      if (qword_101AD59E8 != -1)
      {
        sub_101313CA4();
      }

      v28 = off_1019EC778;
      if (os_log_type_enabled(off_1019EC778, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        v30 = sub_100510A7C(context);
        CGContextGetCTM(buf, context);
        v31 = sub_100139A00(buf);
        v32 = sub_100510A7C(context);
        CGContextGetCTM(buf, context);
        v33 = sub_100139A00(buf);
        *buf = 134218752;
        selfCopy4 = self;
        v55 = 2048;
        v56 = v30 * v31;
        v57 = 2048;
        v58 = v32;
        v59 = 2048;
        v60 = v33;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%p scaling image for context by %f = %f * %f", buf, 0x2Au);
      }
    }

    else if (providerCopy)
    {
      [providerCopy contentsScale];
      width = sub_10011F340(width, height, v17);
      height = v18;
      if (qword_101AD59E8 != -1)
      {
        sub_101313CCC();
      }

      v19 = off_1019EC778;
      if (os_log_type_enabled(off_1019EC778, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        [providerCopy contentsScale];
        *buf = 134218240;
        selfCopy4 = self;
        v55 = 2048;
        v56 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%p scaling image for contentsScaleProvider by %f", buf, 0x16u);
      }
    }

    *&v34 = COERCE_DOUBLE([(CRLBitmapImageProvider *)self p_reciprocalScaleForImageSize:width, height]);
    if (qword_101AD59E8 != -1)
    {
      sub_101313CE0();
    }

    v35 = off_1019EC778;
    if (os_log_type_enabled(off_1019EC778, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v35;
      v63.width = width;
      v63.height = height;
      NSStringFromCGSize(v63);
      v37 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [(CRLBitmapImageProvider *)self naturalSize];
      v38 = NSStringFromCGSize(v64);
      *buf = 134218754;
      selfCopy4 = self;
      v55 = 2112;
      v56 = v37;
      v57 = 2112;
      v58 = *&v38;
      v59 = 2048;
      v60 = *&v34;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%p requesting image of size: %@. Full: %@ scale %zi", buf, 0x2Au);
    }

    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    if (v34 < 2)
    {
      [(CRLBitmapImageProvider *)self p_loadFullSizedImageIfNecessary];
      mImageQueue = self->mImageQueue;
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1000FE2FC;
      v48[3] = &unk_101839FF8;
      v48[4] = self;
      v48[5] = &v49;
      dispatch_sync(mImageQueue, v48);
      v41 = v50[3];
      if (v41)
      {
        CFAutorelease(v41);
      }
    }

    else
    {
      v39 = [(CRLBitmapImageProvider *)self p_resampledImageOfReciprocalScale:v34];
      v50[3] = v39;
    }

    if (qword_101AD59F0 != -1)
    {
      sub_101313D08();
    }

    v42 = off_1019EC780;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v65.width = width;
      v65.height = height;
      v43 = NSStringFromCGSize(v65);
      [(CRLBitmapImageProvider *)self naturalSize];
      NSStringFromCGSize(v66);
      v44 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (self->mImage)
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      v46 = v45;
      *buf = 134219010;
      selfCopy4 = self;
      v55 = 2048;
      v56 = *&v34;
      v57 = 2112;
      v58 = *&v43;
      v59 = 2112;
      v60 = v44;
      v61 = 2112;
      v62 = v46;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "provider:%p renderScale:%zu requestedSize:%@ naturalSize:%@ mImageExists:%@", buf, 0x34u);
    }

    cGImageOfLargestSafeSize = v50[3];
    _Block_object_dispose(&v49, 8);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013139CC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013139E0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101313A68();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101313A90(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLBitmapImageProvider CGImageForSize:inContext:orContentsScaleProvider:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBitmapImageProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:382 isFatal:0 description:"Invalid image provider trying to render an image at natural size"];

    cGImageOfLargestSafeSize = 0;
  }

LABEL_50:

  return cGImageOfLargestSafeSize;
}

- (int64_t)p_reciprocalScaleForImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CRLBitmapImageProvider *)self naturalSize];
  v6 = v5;
  v8 = v7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3010000000;
  v35 = &unk_1016A8115;
  v36 = v5;
  v37 = v7;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3010000000;
  v29 = &unk_1016A8115;
  v30 = sub_10011F340(v5, v7, 0.5);
  v31 = v9;
  if (CRLWPShapeLayout.columnsAreLeftToRight.getter())
  {
    v10 = sub_10050CF30();
    v11 = sub_100121ED4(v6, v8, v10);
    v6 = sub_100120068(v11);
    v8 = v12;
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000FE604;
  v25[3] = &unk_10183C6F0;
  *&v25[5] = width;
  *&v25[6] = height;
  v25[4] = &v26;
  v13 = objc_retainBlock(v25);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000FE638;
  v24[3] = &unk_10183C718;
  v24[4] = &v26;
  v14 = objc_retainBlock(v24);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000FE668;
  v23[3] = &unk_10183C6F0;
  v23[4] = &v32;
  *&v23[5] = v6;
  *&v23[6] = v8;
  v15 = objc_retainBlock(v23);
  v16 = 1;
  v17 = 2;
  while (1)
  {
    v18 = v17;
    if (((v13[2])(v13) & 1) == 0 && !(v15[2])(v15))
    {
      break;
    }

    if (!(v14[2])(v14))
    {
      break;
    }

    v19 = v33;
    v20 = v27;
    *(v33 + 2) = *(v27 + 2);
    v20[4] = sub_10011F340(v19[4], v19[5], 0.5);
    *(v20 + 5) = v21;
    v17 = 2 * v18;
    v16 = v18;
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  return v16;
}

- (CGImage)CGImageResampledToSize:(CGSize)size lowQuality:(BOOL)quality assetOwner:(id)owner
{
  qualityCopy = quality;
  height = size.height;
  width = size.width;
  ownerCopy = owner;
  [(CRLBitmapImageProvider *)self naturalSize];
  v12 = v11;
  if (width >= v10)
  {
    if (height >= v11)
    {
      width = v10;
      if (![(CRLBitmapImageProvider *)self isOpaque])
      {
        cGImageForNaturalSize = [(CRLBitmapImageProvider *)self CGImageForNaturalSize];
        goto LABEL_11;
      }
    }

    else
    {
      width = v10;
    }
  }

  v13 = width;
  v14 = ceilf(v13);
  if (height >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = height;
  }

  v16 = v15;
  v17 = ceilf(v16);
  imageData = [(CRLImageProvider *)self imageData];
  filename = [imageData filename];
  lastPathComponent = [filename lastPathComponent];
  v21 = sub_10050D02C(self, lastPathComponent, qualityCopy | 0x14, ownerCopy, v14, v17);

  v22 = imageData;
  synchronouslyCreateReadonlyAsset = v22;
  if (v21)
  {
    synchronouslyCreateReadonlyAsset = [v21 synchronouslyCreateReadonlyAsset];
  }

  cGImageForNaturalSize = [CRLBitmapImageProvider CGImageForImageData:synchronouslyCreateReadonlyAsset];

LABEL_11:
  return cGImageForNaturalSize;
}

- (CGImage)p_createResampledImageWithReciprocalScale:(unint64_t)scale
{
  [(CRLBitmapImageProvider *)self naturalSize];
  v7 = sub_10011F340(v5, v6, 1.0 / scale);
  v9 = v8;
  if (qword_101AD59E8 != -1)
  {
    sub_101313D30();
  }

  v10 = off_1019EC778;
  if (os_log_type_enabled(off_1019EC778, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v23.width = v7;
    v23.height = v9;
    v12 = NSStringFromCGSize(v23);
    v17 = 134218498;
    selfCopy = self;
    v19 = 2112;
    v20 = v12;
    v21 = 2048;
    scaleCopy = scale;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%p making image of size %@ for scale %zi", &v17, 0x20u);
  }

  v13 = [(CRLBitmapImageProvider *)self p_newImageOfSize:v7, v9];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = [(CRLBitmapImageProvider *)self p_newImageFromSource:v13];
  CFRelease(v14);
  if (v15)
  {
    CFAutorelease(v15);
  }

  return v15;
}

- (CGImage)p_resampledImageOfReciprocalScale:(unint64_t)scale
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v5 = +[CRLImageProviderPool sharedPool];
  [v5 flushProvidersToFreeMemoryIfNecessaryExcludingProvider:self];

  mImageQueue = self->mImageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FEB80;
  block[3] = &unk_10183B748;
  block[4] = self;
  block[5] = &v22;
  block[6] = scale;
  dispatch_sync(mImageQueue, block);
  v7 = v23[3];
  if (!v7 || (CFAutorelease(v7), (v8 = v23[3]) == 0))
  {
    v9 = [(CRLBitmapImageProvider *)self p_createResampledImageWithReciprocalScale:scale];
    v23[3] = v9;
    if (!v9 || ([CRLImage imageWithCGImage:v9], v10 = objc_claimAutoreleasedReturnValue(), v11 = self->mImageQueue, v14 = _NSConcreteStackBlock, v15 = 3221225472, v16 = sub_1000FED30, v17 = &unk_10183C780, v19 = v10, v20 = scale, v18 = self, v12 = v10, dispatch_async(v11, &v14), v19, v12, (v8 = v23[3]) == 0))
    {
      v8 = [(CRLBitmapImageProvider *)self CGImageOfLargestSafeSize:v9];
      v23[3] = v8;
    }
  }

  _Block_object_dispose(&v22, 8);
  return v8;
}

- (int64_t)orientation
{
  [(CRLBitmapImageProvider *)self p_loadImageMetadata];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mImageQueue = self->mImageQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000FEF18;
  v6[3] = &unk_101839FF8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(mImageQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isOpaque
{
  selfCopy = self;
  [(CRLBitmapImageProvider *)self p_loadImageMetadata];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mImageQueue = selfCopy->mImageQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FEFEC;
  v5[3] = &unk_101839FF8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(mImageQueue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (unint64_t)imageGamut
{
  [(CRLBitmapImageProvider *)self p_loadImageMetadata];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  mImageQueue = self->mImageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FF15C;
  block[3] = &unk_101839FF8;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(mImageQueue, block);
  v4 = v11[3];
  if (!v4)
  {
    ColorSpace = CGImageGetColorSpace([(CRLBitmapImageProvider *)self CGImageOfAnySize]);
    v6 = self->mImageQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000FF178;
    v8[3] = &unk_10183B748;
    v8[4] = self;
    v8[5] = &v10;
    v8[6] = ColorSpace;
    dispatch_sync(v6, v8);
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (unint64_t)imageDPI
{
  if (self->mDPI)
  {
    return self->mDPI;
  }

  p_newCGImageSourceForTemporaryUse = [(CRLBitmapImageProvider *)self p_newCGImageSourceForTemporaryUse];
  if (!p_newCGImageSourceForTemporaryUse)
  {
    return self->mDPI;
  }

  v4 = p_newCGImageSourceForTemporaryUse;
  v13 = kCGImageSourceSkipMetadata;
  v14 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v6 = CGImageSourceCopyPropertiesAtIndex(v4, 0, v5);
  CFRelease(v4);
  v7 = [(__CFDictionary *)v6 objectForKey:kCGImagePropertyDPIHeight];
  v8 = v7;
  if (!v7)
  {
    v10 = 0.0;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [v7 doubleValue];
  v10 = v9;
  if (v6)
  {
LABEL_5:
    CFRelease(v6);
  }

LABEL_6:
  v11 = 72.0;
  if (v10 != 0.0)
  {
    v11 = v10;
  }

  self->mDPI = llround(v11);

  return self->mDPI;
}

- (CGSize)dpiAdjustedNaturalSize
{
  if ([(CRLBitmapImageProvider *)self p_shouldScaleRetinaImages])
  {
    imageData = [(CRLImageProvider *)self imageData];
    filename = [imageData filename];

    imageDPI = [(CRLBitmapImageProvider *)self imageDPI];
    v6 = 0.5;
    if (imageDPI != 144.0 && vabdd_f64(imageDPI, 144.0) >= fabs(144.0 * 0.000000999999997) && ([filename crl_containsSubstring:@"@2x"] & 1) == 0)
    {
      imageDPI2 = [(CRLBitmapImageProvider *)self imageDPI];
      if (imageDPI2 == 216.0 || vabdd_f64(imageDPI2, 216.0) < fabs(216.0 * 0.000000999999997) || (v6 = 1.0, [filename crl_containsSubstring:@"@3x"]))
      {
        v6 = 0.333333333;
      }
    }

    [(CRLBitmapImageProvider *)self naturalSize];
    if (v6 != 1.0 && fabs(v6 + -1.0) >= 0.000000999999997)
    {
      v10 = sub_10011F340(v8, v9, v6);

      v8 = sub_10012211C(v10);
    }
  }

  else
  {

    [(CRLBitmapImageProvider *)self naturalSize];
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)flush
{
  mImageQueue = self->mImageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FF52C;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(mImageQueue, block);
}

- (BOOL)i_hasFlushableContent
{
  dispatch_semaphore_wait(self->mFlushableContentLock, 0xFFFFFFFFFFFFFFFFLL);
  mHasFlushableContent = self->mHasFlushableContent;
  dispatch_semaphore_signal(self->mFlushableContentLock);
  return mHasFlushableContent;
}

- (void)p_updateEstimatedSize
{
  mImage = self->mImage;
  if (mImage)
  {
    BytesPerRow = CGImageGetBytesPerRow(mImage);
    v5 = CGImageGetHeight(self->mImage) * BytesPerRow;
  }

  else
  {
    v5 = 0;
  }

  mLargestSafeImage = self->mLargestSafeImage;
  if (mLargestSafeImage)
  {
    v7 = CGImageGetBytesPerRow(mLargestSafeImage);
    v5 += CGImageGetHeight(self->mLargestSafeImage) * v7;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->mResampledImages allValues];
  v9 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        cGImage = [*(*(&v15 + 1) + 8 * v12) CGImage];
        v14 = CGImageGetBytesPerRow(cGImage);
        v5 += CGImageGetHeight(cGImage) * v14;
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  self->mEstimatedSize = v5;
}

- (void)p_loadFullSizedImageIfNecessary
{
  if (qword_101AD59F0 != -1)
  {
    sub_101313D6C();
  }

  v3 = off_1019EC780;
  if (os_log_type_enabled(off_1019EC780, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    [(CRLBitmapImageProvider *)self naturalSize];
    v5 = NSStringFromCGSize(v13);
    *buf = 134218242;
    selfCopy = self;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "provider:%p loading full-sized image if necessary naturalSize:%@ ", buf, 0x16u);
  }

  v6 = +[CRLImageProviderPool sharedPool];
  [v6 flushProvidersToFreeMemoryIfNecessaryExcludingProvider:self];

  mImageQueue = self->mImageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FFA9C;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(mImageQueue, block);
}

- (void)p_loadLargestSafeImageIfNecessary
{
  [(CRLBitmapImageProvider *)self naturalSize];
  v4 = v3;
  v6 = v5;
  if (qword_101AD59F0 != -1)
  {
    sub_101313E44();
  }

  v7 = off_1019EC780;
  if (os_log_type_enabled(off_1019EC780, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v21.width = v4;
    v21.height = v6;
    v9 = NSStringFromCGSize(v21);
    *buf = 134218242;
    selfCopy = self;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "provider:%p loading largest safe image if necessary naturalSize:%@ ", buf, 0x16u);
  }

  v10 = +[CRLImageProviderPool sharedPool];
  [v10 flushProvidersToFreeMemoryIfNecessaryExcludingProvider:self];

  v11 = sub_10050CF30();
  v12 = sub_100121ED4(v4, v6, v11);
  v13 = sub_100120068(v12);
  mImageQueue = self->mImageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FFF20;
  block[3] = &unk_10183C8A8;
  block[4] = self;
  *&block[5] = v13;
  block[6] = v15;
  dispatch_async(mImageQueue, block);
}

- (void)p_loadSourceRefIfNecessary
{
  mImageQueue = self->mImageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010034C;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(mImageQueue, block);
}

- (CGImageSource)p_newCGImageSource
{
  imageData = [(CRLImageProvider *)self imageData];
  newCGImageSource = [imageData newCGImageSource];

  return newCGImageSource;
}

- (CGImage)p_newImageFromSource:(CGImageSource *)source
{
  ImageAtIndex = source;
  if (source)
  {
    v6[0] = kCGImageSourceSkipMetadata;
    v6[1] = kCGImageSourceShouldCache;
    v7[0] = &__kCFBooleanTrue;
    v7[1] = &__kCFBooleanFalse;
    v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
    ImageAtIndex = CGImageSourceCreateImageAtIndex(ImageAtIndex, 0, v4);
  }

  return ImageAtIndex;
}

- (void)p_configureOrientationAndSizeFromImageSource:(CGImageSource *)source andImage:(CGImage *)image
{
  if (CRLWPShapeLayout.columnsAreLeftToRight.getter())
  {
    imageData = [(CRLImageProvider *)self imageData];
    v8 = sub_10050EB64(imageData, source);

    if (!v8)
    {
      return;
    }
  }

  v30 = kCGImageSourceSkipMetadata;
  v31 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v10 = CGImageSourceCopyPropertiesAtIndex(source, 0, v9);
  if (v10)
  {
    v11 = v10;
    v12 = [(__CFDictionary *)v10 objectForKey:kCGImagePropertyOrientation];
    intValue = [v12 intValue];

    Value = CFDictionaryGetValue(v11, kCGImagePropertyPixelWidth);
    Height = 0.0;
    v16 = 0.0;
    if (Value)
    {
      [Value crl_CGFloatValue];
      v16 = v17;
    }

    v18 = CFDictionaryGetValue(v11, kCGImagePropertyPixelHeight);
    if (v18)
    {
      [v18 crl_CGFloatValue];
      Height = v19;
    }

    v20 = CFDictionaryGetValue(v11, kCGImagePropertyHasAlpha);
    if (v20)
    {
      v21 = CFEqual(v20, kCFBooleanFalse) != 0;
    }

    else
    {
      v21 = 1;
    }

    self->mIsOpaque = v21;
    CFRelease(v11);
    if (v16 != 0.0 && Height != 0.0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    intValue = 0;
  }

  if (!image)
  {
    image = [(CRLBitmapImageProvider *)self p_newImageFromSource:source];
    if (CRLWPShapeLayout.columnsAreLeftToRight.getter() && (Width = CGImageGetWidth(image), v23 = CGImageGetHeight(image) * Width, v23 > sub_10050CF30()))
    {
      if (image)
      {
        CFAutorelease(image);
      }
    }

    else
    {
      mImageQueue = self->mImageQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100100870;
      block[3] = &unk_10183B720;
      block[4] = self;
      block[5] = image;
      dispatch_async(mImageQueue, block);
    }
  }

  v16 = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
LABEL_21:
  if (intValue - 1 > 7)
  {
    v25 = 0;
  }

  else
  {
    v25 = qword_101462800[intValue - 1];
  }

  self->mOrientation = v25;
  v26 = sub_1004F40B8(v25);
  if (v26)
  {
    v27 = Height;
  }

  else
  {
    v27 = v16;
  }

  if (v26)
  {
    v28 = v16;
  }

  else
  {
    v28 = Height;
  }

  self->mNaturalSize.width = v27;
  self->mNaturalSize.height = v28;
}

- (CGImageSource)p_newCGImageSourceForTemporaryUse
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  mImageQueue = self->mImageQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001009E8;
  v6[3] = &unk_10183A0A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(mImageQueue, v6);
  p_newCGImageSource = v8[3];
  if (!p_newCGImageSource)
  {
    p_newCGImageSource = [(CRLBitmapImageProvider *)self p_newCGImageSource];
    v8[3] = p_newCGImageSource;
  }

  _Block_object_dispose(&v7, 8);
  return p_newCGImageSource;
}

- (CGImage)p_newImageOfSize:(CGSize)size fromSource:(CGImageSource *)source
{
  if (source)
  {
    v11[0] = kCGImageSourceCreateThumbnailFromImageAlways;
    v11[1] = kCGImageSourceCreateThumbnailWithTransform;
    v12[0] = &__kCFBooleanTrue;
    v12[1] = &__kCFBooleanFalse;
    v11[2] = kCGImageSourceThumbnailMaxPixelSize;
    if (size.width < size.height)
    {
      size.width = size.height;
    }

    v5 = [NSNumber numberWithDouble:size.width];
    v11[3] = kCGImageSourceSkipMetadata;
    v12[2] = v5;
    v12[3] = &__kCFBooleanTrue;
    v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(source, 0, v6);
  }

  else
  {
    [CRLAssertionHandler _atomicIncrementAssertCount:size.width];
    if (qword_101AD5A10 != -1)
    {
      sub_101313F44();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101313F58();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101314000();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v6 = [NSString stringWithUTF8String:"[CRLBitmapImageProvider p_newImageOfSize:fromSource:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBitmapImageProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v9 lineNumber:1002 isFatal:0 description:"invalid nil value for '%{public}s'", "sourceRef"];

    ThumbnailAtIndex = 0;
  }

  return ThumbnailAtIndex;
}

- (CGImageSource)p_newImageOfSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  p_newCGImageSourceForTemporaryUse = [(CRLBitmapImageProvider *)self p_newCGImageSourceForTemporaryUse];
  if (!p_newCGImageSourceForTemporaryUse)
  {
    return 0;
  }

  v7 = p_newCGImageSourceForTemporaryUse;
  height = [(CRLBitmapImageProvider *)self p_newImageOfSize:p_newCGImageSourceForTemporaryUse fromSource:width, height];
  CFRelease(v7);
  if (!height)
  {
    return 0;
  }

  v9 = objc_alloc_init(NSMutableData);
  identifier = [UTTypePNG identifier];

  v11 = CGImageDestinationCreateWithData(v9, identifier, 1uLL, 0);
  v12 = v11;
  if (v11)
  {
    CGImageDestinationAddImage(v11, height, 0);
    v13 = CGImageDestinationFinalize(v12);
    CFRelease(v12);
    if (v13)
    {
      v12 = CGImageSourceCreateWithData(v9, 0);
    }

    else
    {
      v12 = 0;
    }
  }

  CGImageRelease(height);
  return v12;
}

- (CGImageSource)CGImageSource
{
  [(CRLBitmapImageProvider *)self p_loadSourceRefIfNecessary];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  mImageQueue = self->mImageQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100100EB0;
  v7[3] = &unk_101839FF8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(mImageQueue, v7);
  v4 = v9[3];
  if (v4)
  {
    CFAutorelease(v4);
    v5 = v9[3];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

@end