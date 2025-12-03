@interface CRLImageFill
- (BOOL)canApplyToRenderable;
- (BOOL)canApplyToRenderableByAddingSubrenderables;
- (BOOL)canCopyData;
- (BOOL)drawsInOneStep;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOpaque;
- (BOOL)p_shouldApplyTintedImage;
- (BOOL)shouldBeReappliedToRenderable:(id)renderable;
- (CGRect)p_drawnRectForImageSize:(CGSize)size destRect:(CGRect)rect inContext:(CGContext *)context;
- (CGSize)fillSize;
- (CGSize)p_fillSize;
- (CGSize)p_imageDataNaturalSize;
- (CGSize)p_sizeOfFillImageForDestRect:(CGRect)rect inContext:(CGContext *)context;
- (CGSize)renderedImageSizeForObjectSize:(CGSize)size;
- (CRLImageFill)initWithImageData:(id)data technique:(unint64_t)technique tintColor:(id)color size:(CGSize)size referenceColor:(id)referenceColor;
- (double)scale;
- (id)copyWithNewImageData:(id)data;
- (id)initForUnarchiving;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)p_cachedImageForSize:(CGSize)size inContext:(CGContext *)context orContentsScaleProvider:(id)provider;
- (id)p_calculateReferenceColor;
- (id)p_halfSizeCachedImage;
- (id)p_quarterSizeCachedImage;
- (id)p_standardSizeCachedImage;
- (id)p_tintedImageWithScale:(double)scale;
- (id)p_validatedImageProvider;
- (id)referenceColor;
- (void)applyToRenderable:(id)renderable withScale:(double)scale;
- (void)dealloc;
- (void)drawFillInContext:(CGContext *)context rect:(CGRect)rect clippingToPath:(CGPath *)path;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)i_commonInit;
- (void)i_commonSetup;
- (void)i_setStoredReferenceColor:(id)color;
- (void)i_updateStoredReferenceColorIfNeeded;
- (void)p_clearTintedImageCache;
- (void)p_drawBitmapImage:(CGImage *)image withOrientation:(int64_t)orientation inContext:(CGContext *)context bounds:(CGRect)bounds;
- (void)p_drawPDFWithProvider:(id)provider inContext:(CGContext *)context bounds:(CGRect)bounds;
- (void)p_paintPath:(CGPath *)path inContext:(CGContext *)context rectForFill:(CGRect)fill;
- (void)p_setTechnique:(unint64_t)technique;
- (void)p_updateCachedReferenceColorIfNeeded;
- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f;
@end

@implementation CRLImageFill

- (CRLImageFill)initWithImageData:(id)data technique:(unint64_t)technique tintColor:(id)color size:(CGSize)size referenceColor:(id)referenceColor
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  colorCopy = color;
  referenceColorCopy = referenceColor;
  if (technique >= 5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101321058();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132106C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013210F8();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLImageFill initWithImageData:technique:tintColor:size:referenceColor:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:132 isFatal:0 description:"Invalid image fill technique: %zu Defaulting to natural size.", technique];

    technique = 0;
  }

  v29.receiver = self;
  v29.super_class = CRLImageFill;
  v20 = [(CRLImageFill *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->mImageData, data);
    v21->mTechnique = technique;
    v22 = [colorCopy copy];
    mTintColor = v21->mTintColor;
    v21->mTintColor = v22;

    v24 = [referenceColorCopy copy];
    mReferenceColor = v21->mReferenceColor;
    v21->mReferenceColor = v24;

    v21->mFillSize.width = width;
    v21->mFillSize.height = height;
    [(CRLImageFill *)v21 fillSize];
    v21->mFillSize.width = v26;
    v21->mFillSize.height = v27;
    [(CRLImageFill *)v21 i_commonInit];
  }

  return v21;
}

- (id)initForUnarchiving
{
  v3.receiver = self;
  v3.super_class = CRLImageFill;
  return [(CRLImageFill *)&v3 init];
}

- (void)i_commonSetup
{
  v3 = dispatch_queue_create("com.apple.freeform.drawing.fills.image", 0);
  mTempRenderLock = self->mTempRenderLock;
  self->mTempRenderLock = v3;

  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10016C974;
  v15[3] = &unk_1018414C8;
  objc_copyWeak(&v16, &location);
  v5 = [CRLImageFillCachedImage cachedImageWithHandler:v15];
  mStandardSizeTintedImage = self->mStandardSizeTintedImage;
  self->mStandardSizeTintedImage = v5;

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016C9C4;
  v13[3] = &unk_1018414C8;
  objc_copyWeak(&v14, &location);
  v7 = [CRLImageFillCachedImage cachedImageWithHandler:v13];
  mHalfSizeTintedImage = self->mHalfSizeTintedImage;
  self->mHalfSizeTintedImage = v7;

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10016CA14;
  v11[3] = &unk_1018414C8;
  objc_copyWeak(&v12, &location);
  v9 = [CRLImageFillCachedImage cachedImageWithHandler:v11];
  mQuarterSizeTintedImage = self->mQuarterSizeTintedImage;
  self->mQuarterSizeTintedImage = v9;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)i_commonInit
{
  [(CRLImageFill *)self i_commonSetup];

  [(CRLImageFill *)self i_updateStoredReferenceColorIfNeeded];
}

- (void)dealloc
{
  if (self->mImageData && self->mHasIndicatedInterestInProvider)
  {
    v3 = +[CRLImageProviderPool sharedPool];
    [v3 removeInterestInProviderForAsset:self->mImageData];
  }

  CGImageRelease(self->mTempRenderCopy);
  v4.receiver = self;
  v4.super_class = CRLImageFill;
  [(CRLImageFill *)&v4 dealloc];
}

- (void)p_clearTintedImageCache
{
  [(CRLImageFillCachedImage *)self->mStandardSizeTintedImage flush];
  [(CRLImageFillCachedImage *)self->mHalfSizeTintedImage flush];
  mQuarterSizeTintedImage = self->mQuarterSizeTintedImage;

  [(CRLImageFillCachedImage *)mQuarterSizeTintedImage flush];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLMutableImageFill allocWithZone:zone];
  mImageData = self->mImageData;
  mTechnique = self->mTechnique;
  mTintColor = self->mTintColor;
  [(CRLImageFill *)self fillSize];
  mReferenceColor = self->mReferenceColor;

  return [(CRLImageFill *)v4 initWithImageData:mImageData technique:mTechnique tintColor:mTintColor size:mReferenceColor referenceColor:?];
}

- (void)p_setTechnique:(unint64_t)technique
{
  techniqueCopy = technique;
  if (technique >= 5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101321120();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101321134();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013211C0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLImageFill p_setTechnique:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:230 isFatal:0 description:"Invalid image fill technique: %zu Defaulting to natural size.", techniqueCopy];

    techniqueCopy = 0;
  }

  self->mTechnique = techniqueCopy;
}

- (CGSize)p_fillSize
{
  width = self->mFillSize.width;
  height = self->mFillSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithNewImageData:(id)data
{
  dataCopy = data;
  if ([(CRLImageFill *)self technique]== 2)
  {
    [(CRLImageFill *)self fillSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = +[CRLImageProviderPool sharedPool];
    v10 = [v9 providerForAsset:dataCopy shouldValidate:1];

    [v10 naturalSize];
    v6 = v11;
    v8 = v12;
  }

  v13 = [CRLImageFill alloc];
  technique = [(CRLImageFill *)self technique];
  tintColor = [(CRLImageFill *)self tintColor];
  v16 = [(CRLImageFill *)v13 initWithImageData:dataCopy technique:technique tintColor:tintColor size:v6, v8];

  return v16;
}

- (BOOL)canCopyData
{
  imageData = [(CRLImageFill *)self imageData];
  needsDownload = [imageData needsDownload];

  return needsDownload ^ 1;
}

- (CGSize)p_imageDataNaturalSize
{
  p_validatedImageProvider = [(CRLImageFill *)self p_validatedImageProvider];
  [p_validatedImageProvider naturalSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)scale
{
  [(CRLImageFill *)self p_imageDataNaturalSize];
  if (v4 == 0.0)
  {
    return 1.0;
  }

  v5 = v3;
  if (v3 == 0.0)
  {
    return 1.0;
  }

  v6 = v4;
  [(CRLImageFill *)self fillSize];
  v8 = v7 / v5;
  [(CRLImageFill *)self fillSize];
  return fmin(v8, v9 / v6);
}

- (CGSize)fillSize
{
  width = self->mFillSize.width;
  height = self->mFillSize.height;
  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    p_validatedImageProvider = [(CRLImageFill *)self p_validatedImageProvider];
    [p_validatedImageProvider dpiAdjustedNaturalSize];
    width = v6;
    height = v7;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)isOpaque
{
  p_validatedImageProvider = [(CRLImageFill *)self p_validatedImageProvider];
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, p_validatedImageProvider);
  tintColor = [(CRLImageFill *)self tintColor];
  if (tintColor)
  {
    tintColor2 = [(CRLImageFill *)self tintColor];
    [tintColor2 alphaComponent];
    v9 = v8 == 1.0;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 isOpaque] | v9;
  return v10 & 1;
}

- (void)i_setStoredReferenceColor:(id)color
{
  v4 = [color copy];
  mReferenceColor = self->mReferenceColor;
  self->mReferenceColor = v4;
}

- (id)referenceColor
{
  storedReferenceColor = [(CRLImageFill *)self storedReferenceColor];
  if (!storedReferenceColor)
  {
    [(CRLImageFill *)self p_updateCachedReferenceColorIfNeeded];
    storedReferenceColor = self->mCachedReferenceColor;
  }

  return storedReferenceColor;
}

- (id)p_calculateReferenceColor
{
  if (self->mShouldSkipFurtherAttemptsToCalculateReferenceColor)
  {
    v2 = 0;
    goto LABEL_50;
  }

  p_validatedImageProvider = [(CRLImageFill *)self p_validatedImageProvider];
  if ([p_validatedImageProvider isError])
  {
    p_imageData = [(CRLImageFill *)self p_imageData];
    fallbackColor = [p_imageData fallbackColor];

    p_imageData2 = [(CRLImageFill *)self p_imageData];
    v8 = p_imageData2;
    if (!fallbackColor)
    {
      if (p_imageData2)
      {
        p_imageData3 = [(CRLImageFill *)self p_imageData];
        self->mShouldSkipFurtherAttemptsToCalculateReferenceColor = [p_imageData3 needsDownload] ^ 1;
      }

      else
      {
        self->mShouldSkipFurtherAttemptsToCalculateReferenceColor = 0;
      }

      v2 = 0;
      goto LABEL_49;
    }

    fallbackColor2 = [p_imageData2 fallbackColor];

    tintColor = [(CRLImageFill *)self tintColor];
    v11 = tintColor;
    if (tintColor)
    {
      v12 = [tintColor colorByCompositingSourceOverDestinationColor:fallbackColor2];
    }

    else
    {
      v12 = fallbackColor2;
    }

    v2 = v12;
  }

  else
  {
    [(CRLImageFill *)self fillSize];
    v14 = v13;
    v16 = v15;
    v17 = sub_10011FBD0(v13, v15);
    v18 = v17;
    if (v17)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013211E8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013211FC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132128C();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v19);
      }

      v20 = [NSString stringWithUTF8String:"[CRLImageFill p_calculateReferenceColor]"];
      v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
      [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:338 isFatal:0 description:"Non-error provider has zero size."];
    }

    v2 = +[CRLColor clearColor];
    if (v18)
    {
      goto LABEL_49;
    }

    v22 = sub_10050DF80(3, 1.0, 1.0);
    if (v22)
    {
      v23 = v22;
      Mutable = CGPathCreateMutable();
      if (Mutable)
      {
        v25 = Mutable;
        v36.origin.x = sub_10011ECB4();
        CGPathAddRect(v25, 0, v36);
        CGContextScaleCTM(v23, 1.0 / v14, 1.0 / v16);
        [(CRLImageFill *)self paintPath:v25 inContext:v23];
        CGPathRelease(v25);
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013212B4();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013212DC();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101321378();
        }

        v29 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130F3A8(v29);
        }

        v30 = [NSString stringWithUTF8String:"[CRLImageFill p_calculateReferenceColor]"];
        v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
        [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:347 isFatal:0 description:"invalid nil value for '%{public}s'", "path"];
      }

      Data = CGBitmapContextGetData(v23);
      if (Data)
      {
        v33 = [CRLColor colorWithRed:BYTE2(*Data) / 255.0 green:BYTE1(*Data) / 255.0 blue:*Data / 255.0 alpha:1.0];

        v2 = v33;
      }

      CGContextRelease(v23);
      goto LABEL_49;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013213A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013213C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101321464();
    }

    v27 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v27);
    }

    fallbackColor2 = [NSString stringWithUTF8String:"[CRLImageFill p_calculateReferenceColor]"];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:fallbackColor2 file:v28 lineNumber:344 isFatal:0 description:"invalid nil value for '%{public}s'", "smallContext"];
  }

LABEL_49:
LABEL_50:

  return v2;
}

- (void)i_updateStoredReferenceColorIfNeeded
{
  if (!self->mReferenceColor)
  {
    p_calculateReferenceColor = [(CRLImageFill *)self p_calculateReferenceColor];
    mReferenceColor = self->mReferenceColor;
    self->mReferenceColor = p_calculateReferenceColor;
  }
}

- (void)p_updateCachedReferenceColorIfNeeded
{
  if (!self->mCachedReferenceColor)
  {
    obj = self;
    objc_sync_enter(obj);
    if (!self->mCachedReferenceColor)
    {
      p_calculateReferenceColor = [(CRLImageFill *)obj p_calculateReferenceColor];
      mCachedReferenceColor = self->mCachedReferenceColor;
      self->mCachedReferenceColor = p_calculateReferenceColor;
    }

    objc_sync_exit(obj);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v19 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, equalCopy);
    if (v6)
    {
      v7 = v6;
      imageData = [(CRLImageFill *)self imageData];
      imageData2 = [v7 imageData];
      if ((!(imageData | imageData2) || [imageData isEqual:imageData2]) && (v10 = -[CRLImageFill technique](self, "technique"), v10 == objc_msgSend(v7, "technique")))
      {
        tintColor = [(CRLImageFill *)self tintColor];
        tintColor2 = [v7 tintColor];
        if (tintColor | tintColor2 && ![tintColor isEqual:tintColor2])
        {
          v19 = 0;
        }

        else
        {
          [(CRLImageFill *)self fillSize];
          v14 = v13;
          v16 = v15;
          [v7 fillSize];
          v19 = sub_10011ECC8(v14, v16, v17, v18);
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (BOOL)drawsInOneStep
{
  if (self->mTintColor)
  {
    isKindOfClass = 1;
  }

  else
  {
    p_validatedImageProvider = [(CRLImageFill *)self p_validatedImageProvider];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & (self->mTechnique != 2);
}

- (BOOL)canApplyToRenderable
{
  if (self->mTintColor || (self->mTechnique | 2) == 2)
  {
    return 0;
  }

  v5 = objc_opt_class();
  p_validatedImageProvider = [(CRLImageFill *)self p_validatedImageProvider];
  v7 = sub_100014370(v5, p_validatedImageProvider);

  if (v7)
  {
    v3 = [v7 orientation] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)canApplyToRenderableByAddingSubrenderables
{
  if (self->mTintColor || self->mTechnique == 2)
  {
    return 0;
  }

  v5 = objc_opt_class();
  p_validatedImageProvider = [(CRLImageFill *)self p_validatedImageProvider];
  v7 = sub_100014370(v5, p_validatedImageProvider);

  if (v7)
  {
    v3 = [v7 orientation] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)p_shouldApplyTintedImage
{
  p_standardSizeCachedImage = [(CRLImageFill *)self p_standardSizeCachedImage];
  if (p_standardSizeCachedImage)
  {
    tintColor = [(CRLImageFill *)self tintColor];
    v5 = tintColor != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldBeReappliedToRenderable:(id)renderable
{
  renderableCopy = renderable;
  if (self->mTechnique)
  {
    if ([(CRLImageFill *)self p_shouldApplyTintedImage])
    {
      v5 = 0;
    }

    else
    {
      v6 = objc_opt_class();
      p_validatedImageProvider = [(CRLImageFill *)self p_validatedImageProvider];
      v8 = sub_100014370(v6, p_validatedImageProvider);

      [renderableCopy bounds];
      v11 = [v8 CGImageForSize:0 inContext:renderableCopy orContentsScaleProvider:{v9, v10}];
      contents = [renderableCopy contents];
      v5 = contents != v11;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)p_cachedImageForSize:(CGSize)size inContext:(CGContext *)context orContentsScaleProvider:(id)provider
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  v10 = providerCopy;
  if (context)
  {
    if (providerCopy)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132148C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013214A0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101321530();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLImageFill p_cachedImageForSize:inContext:orContentsScaleProvider:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:483 isFatal:0 description:"using context to determine requested image size. contentsScaleProvider should be nil"];
    }

    if ((sub_10051058C(context) & 1) != 0 || sub_100510804(context))
    {
LABEL_26:
      p_standardSizeCachedImage = [(CRLImageFill *)self p_standardSizeCachedImage];
      goto LABEL_28;
    }

    v14 = sub_100510A7C(context);
    width = sub_10011F340(width, height, v14);
    height = v15;
    CGContextGetCTM(&v30, context);
    v16 = sub_100139A00(&v30.a);
  }

  else
  {
    if (!providerCopy)
    {
      goto LABEL_18;
    }

    [providerCopy contentsScale];
  }

  width = sub_10011F340(width, height, v16);
  height = v17;
LABEL_18:
  [(CRLImageFill *)self fillSize];
  v19 = v18;
  v21 = v20;
  if (CRLWPShapeLayout.columnsAreLeftToRight.getter())
  {
    v22 = sub_10050CF30();
    v23 = sub_100121ED4(v19, v21, v22);
    v19 = sub_100120068(v23);
    v21 = v24;
  }

  if (width <= sub_10011F340(v19, v21, 0.25) && height <= v25)
  {
    p_standardSizeCachedImage = [(CRLImageFill *)self p_quarterSizeCachedImage];
    goto LABEL_28;
  }

  if (width > sub_10011F340(v19, v21, 0.5))
  {
    goto LABEL_26;
  }

  p_standardSizeCachedImage = [(CRLImageFill *)self p_halfSizeCachedImage];
LABEL_28:
  v28 = p_standardSizeCachedImage;

  return v28;
}

- (void)applyToRenderable:(id)renderable withScale:(double)scale
{
  renderableCopy = renderable;
  if (![(CRLImageFill *)self canApplyToRenderable]&& ![(CRLImageFill *)self canApplyToRenderableByAddingSubrenderables])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101321558();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132156C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013215FC();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLImageFill applyToRenderable:withScale:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:517 isFatal:0 description:"Applying image fill with unsupported properties to CRLCanvasRenderable"];
  }

  v10 = objc_opt_class();
  p_validatedImageProvider = [(CRLImageFill *)self p_validatedImageProvider];
  v12 = sub_100014370(v10, p_validatedImageProvider);

  LODWORD(p_validatedImageProvider) = [(CRLImageFill *)self p_shouldApplyTintedImage];
  [renderableCopy bounds];
  if (p_validatedImageProvider)
  {
    v15 = [(CRLImageFill *)self p_cachedImageForSize:0 inContext:renderableCopy orContentsScaleProvider:v13, v14];
    image = [v15 image];
    cGImage = [image CGImage];
  }

  else
  {
    cGImage = [v12 CGImageForSize:0 inContext:renderableCopy orContentsScaleProvider:{v13, v14}];
  }

  v18 = cGImage;
  subrenderables = [renderableCopy subrenderables];
  v20 = [subrenderables count];

  if (v20)
  {
    subrenderables2 = [renderableCopy subrenderables];
    v22 = [subrenderables2 indexOfObjectPassingTest:&stru_101841688];
  }

  else
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  x = CGPointZero.x;
  y = CGPointZero.y;
  mTechnique = self->mTechnique;
  if (mTechnique <= 2)
  {
    if (!mTechnique)
    {
      v30 = kCAGravityResize;
      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = +[CRLCanvasRenderable renderable];
        lastObject = +[CRLCanvasRenderable renderable];
        [v31 addSubrenderable:lastObject];
      }

      else
      {
        subrenderables3 = [renderableCopy subrenderables];
        v31 = [subrenderables3 objectAtIndex:v22];

        subrenderables4 = [v31 subrenderables];
        lastObject = [subrenderables4 lastObject];
      }

      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [renderableCopy bounds];
      [v31 setPosition:{sub_100120414(v55, v56, v57, v58)}];
      [renderableCopy bounds];
      [v31 setBounds:?];
      [v31 setMasksToBounds:1];
      [v31 setEdgeAntialiasingMask:1];
      [v31 bounds];
      v63 = sub_100120414(v59, v60, v61, v62);
      v65 = v64;
      [(CRLImageFill *)self fillSize];
      v67 = sub_10011EC70(v63, v65, v66);
      v69 = v68;
      v71 = v70;
      v73 = v72;
      [renderableCopy contentsScale];
      v75 = sub_1001221E8(v67, v69, v71, v73, v74 * scale);
      v77 = v76;
      v79 = v78;
      v81 = v80;
      [lastObject setContents:v18];
      [lastObject setPosition:{sub_100120414(v75, v77, v79, v81)}];
      [lastObject setBounds:sub_10011ECB4()];
      [renderableCopy contentsScale];
      [lastObject setContentsScale:?];
      CGAffineTransformMakeScale(&v88, scale, scale);
      v87 = v88;
      [lastObject setAffineTransform:&v87];
      delegate = [renderableCopy delegate];
      [lastObject setDelegate:delegate];

      [lastObject setEdgeAntialiasingMask:0];
      +[CATransaction commit];

      v18 = 0;
      goto LABEL_41;
    }

    if (mTechnique == 1)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  if (mTechnique == 3)
  {
    v30 = kCAGravityResizeAspectFill;
    [(CRLImageFill *)self fillSize];
    v34 = v33;
    v36 = v35;
    [renderableCopy bounds];
    v38 = v37;
    v40 = v39;
    v41 = sub_10011ECB4();
    v45 = sub_100121F30(1, v34, v36, v41, v42, v43, v44);
    v47 = 1.0 / v46;
    v49 = 1.0 / v48;
    v92.origin.x = -(v45 * v47);
    v92.origin.y = -(v50 * v49);
    v92.size.width = v38 * v47;
    v92.size.height = v40 * v49;
    v89.size.width = 1.0;
    v89.size.height = 1.0;
    v89.origin.x = CGPointZero.x;
    v89.origin.y = y;
    v90 = CGRectIntersection(v89, v92);
    x = v90.origin.x;
    y = v90.origin.y;
    width = v90.size.width;
    height = v90.size.height;
    v31 = 0;
    goto LABEL_42;
  }

  if (mTechnique != 4)
  {
LABEL_25:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101321624();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132164C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013216DC();
    }

    v27 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v27);
    }

    v28 = [NSString stringWithUTF8String:"[CRLImageFill applyToRenderable:withScale:]"];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:608 isFatal:0 description:"bogus fill technique to apply to renderable"];

LABEL_34:
    v26 = &kCAGravityResize;
    goto LABEL_35;
  }

  v26 = &kCAGravityResizeAspect;
LABEL_35:
  v30 = *v26;
  v31 = 0;
LABEL_41:
  height = 1.0;
  width = 1.0;
LABEL_42:
  contents = [renderableCopy contents];

  if (contents != v18)
  {
    [renderableCopy setContents:v18];
  }

  contentsGravity = [renderableCopy contentsGravity];

  if (contentsGravity != v30)
  {
    [renderableCopy setContentsGravity:v30];
  }

  [renderableCopy contentsRect];
  v93.origin.x = x;
  v93.origin.y = y;
  v93.size.width = width;
  v93.size.height = height;
  if (!CGRectEqualToRect(v91, v93))
  {
    [renderableCopy setContentsRect:{x, y, width, height}];
  }

  if ([renderableCopy backgroundColor])
  {
    [renderableCopy setBackgroundColor:0];
  }

  if (v31 && v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v31 setName:@"CRLImageFillSublayer"];
    [renderableCopy addSubrenderable:v31];
  }

  else if (!v31 && v22 != 0x7FFFFFFFFFFFFFFFLL)
  {
    subrenderables5 = [renderableCopy subrenderables];
    v86 = [subrenderables5 objectAtIndex:v22];
    [v86 removeFromSuperlayer];
  }
}

- (CGSize)renderedImageSizeForObjectSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  technique = [(CRLImageFill *)self technique];
  v7 = 0.0;
  if (technique > 2)
  {
    v8 = 0.0;
    if ((technique - 3) < 2)
    {
      [(CRLImageFill *)self fillSize:0.0];
      v8 = sub_100121EF4([(CRLImageFill *)self technique]== 3, v9, v10, width, height);
    }
  }

  else
  {
    if (!technique)
    {
      goto LABEL_5;
    }

    if (technique == 1)
    {
      v7 = height;
      v8 = width;
      goto LABEL_9;
    }

    v8 = 0.0;
    if (technique == 2)
    {
LABEL_5:
      [(CRLImageFill *)self fillSize];
    }
  }

LABEL_9:
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  if (context)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    Mutable = CGPathCreateMutable();
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    CGPathAddRect(Mutable, 0, v15);
    [(CRLImageFill *)self paintPath:Mutable inContext:context];

    CGPathRelease(Mutable);
  }

  else
  {
    [CRLAssertionHandler _atomicIncrementAssertCount:rect.origin.x];
    if (qword_101AD5A10 != -1)
    {
      sub_101321704();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101321718();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013217B4();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLImageFill drawSwatchInRect:inContext:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:658 isFatal:0 description:"invalid nil value for '%{public}s'", "ctx"];
  }
}

- (CGSize)p_sizeOfFillImageForDestRect:(CGRect)rect inContext:(CGContext *)context
{
  technique = [(CRLImageFill *)self technique];
  [(CRLImageFill *)self fillSize];
  if (technique != 2)
  {
    [CRLImageFill p_drawnRectForImageSize:"p_drawnRectForImageSize:destRect:inContext:" destRect:context inContext:?];
    v7 = v9;
    v8 = v10;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)p_paintPath:(CGPath *)path inContext:(CGContext *)context rectForFill:(CGRect)fill
{
  if (path)
  {
    if (context)
    {
      height = fill.size.height;
      width = fill.size.width;
      y = fill.origin.y;
      x = fill.origin.x;
      p_validatedImageProvider = [(CRLImageFill *)self p_validatedImageProvider];
      if (!p_validatedImageProvider)
      {
LABEL_51:

        return;
      }

      CGContextSaveGState(context);
      CGContextBeginPath(context);
      CGContextAddPath(context, path);
      CGContextClip(context);
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      if (CGRectIsNull(v46))
      {
        PathBoundingBox = CGPathGetPathBoundingBox(path);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;
      }

      tintColor = [(CRLImageFill *)self tintColor];
      if (tintColor)
      {
        v14 = tintColor;
        isError = [p_validatedImageProvider isError];

        if ((isError & 1) == 0)
        {
          [(CRLImageFill *)self p_sizeOfFillImageForDestRect:context inContext:x, y, width, height];
          v24 = [(CRLImageFill *)self p_cachedImageForSize:context inContext:0 orContentsScaleProvider:?];
          image = [v24 image];
          cGImage = [image CGImage];

          [(CRLImageFill *)self p_drawBitmapImage:cGImage withOrientation:0 inContext:context bounds:x, y, width, height];
LABEL_50:
          CGContextRestoreGState(context);
          goto LABEL_51;
        }
      }

      CGContextSaveGState(context);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = p_validatedImageProvider;
        [(CRLImageFill *)self p_sizeOfFillImageForDestRect:context inContext:x, y, width, height];
        v17 = [v16 CGImageForSize:context inContext:0 orContentsScaleProvider:?];
        orientation = [v16 orientation];

        [(CRLImageFill *)self p_drawBitmapImage:v17 withOrientation:orientation inContext:context bounds:x, y, width, height];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          imageData = [(CRLImageFill *)self imageData];
          needsDownload = [imageData needsDownload];

          if (needsDownload)
          {
            imageData2 = [(CRLImageFill *)self imageData];
            sub_100510F80(context, imageData2);

            fallbackColor = [(CRLAsset *)self->mImageData fallbackColor];
            v31 = fallbackColor;
            if (fallbackColor)
            {
              [fallbackColor paintPath:path inContext:context];
              tintColor2 = [(CRLImageFill *)self tintColor];
              v33 = tintColor2;
              if (tintColor2)
              {
                [tintColor2 paintPath:path inContext:context];
              }
            }

            else
            {
              CGContextSaveGState(context);
              v33 = [CRLImage imageNamed:@"sf_streaming_large_bg_pattern"];
              [v33 size];
              v38 = sub_10011ECB4();
              v40 = v39;
              v42 = v41;
              v44 = v43;
              v45 = [v33 CGImageForContentsScale:sub_100510A7C(context)];
              v48.origin.x = v38;
              v48.origin.y = v40;
              v48.size.width = v42;
              v48.size.height = v44;
              CGContextDrawTiledImage(context, v48, v45);
              CGContextRestoreGState(context);
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(CRLImageFill *)self p_drawnRectForImageSize:context destRect:width inContext:height, x, y, width, height];
              [p_validatedImageProvider drawImageInContext:context rect:?];
              goto LABEL_49;
            }

            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_1013217DC();
            }

            v34 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_1013217F0(v34);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013218D0();
            }

            v35 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10130F3A8(v35);
            }

            v31 = [NSString stringWithUTF8String:"[CRLImageFill p_paintPath:inContext:rectForFill:]"];
            v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
            imageData3 = [(CRLImageFill *)self imageData];
            [CRLAssertionHandler handleFailureInFunction:v31 file:v36 lineNumber:734 isFatal:0 description:"can't draw CRLAsset with unknown image type: %@", imageData3];
          }

          goto LABEL_49;
        }

        [(CRLImageFill *)self p_drawPDFWithProvider:p_validatedImageProvider inContext:context bounds:x, y, width, height];
      }

LABEL_49:
      CGContextRestoreGState(context);
      goto LABEL_50;
    }

LABEL_19:
    [CRLAssertionHandler _atomicIncrementAssertCount:fill.origin.x];
    if (qword_101AD5A10 != -1)
    {
      sub_1013219D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013219F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101321A94();
    }

    v22 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v22);
    }

    p_validatedImageProvider = [NSString stringWithUTF8String:"[CRLImageFill p_paintPath:inContext:rectForFill:]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:p_validatedImageProvider file:v23 lineNumber:684 isFatal:0 description:"invalid nil value for '%{public}s'", "ctx"];

    goto LABEL_51;
  }

  [CRLAssertionHandler _atomicIncrementAssertCount:fill.origin.x];
  if (qword_101AD5A10 != -1)
  {
    sub_1013218F8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10132190C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013219A8();
  }

  v19 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130F3A8(v19);
  }

  v20 = [NSString stringWithUTF8String:"[CRLImageFill p_paintPath:inContext:rectForFill:]"];
  v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
  [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:683 isFatal:0 description:"invalid nil value for '%{public}s'", "path"];

  if (!context)
  {
    goto LABEL_19;
  }
}

- (void)drawFillInContext:(CGContext *)context rect:(CGRect)rect clippingToPath:(CGPath *)path
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!path)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101321ABC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101321AD0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101321B6C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLImageFill drawFillInContext:rect:clippingToPath:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:750 isFatal:0 description:"invalid nil value for '%{public}s'", "clippingPath"];
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (!CGRectIsNull(v18))
  {
    PathBoundingBox = CGPathGetPathBoundingBox(path);
    if (!sub_10011EF14(x, y, width, height, PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101321B94();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101321BBC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101321C4C();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLImageFill drawFillInContext:rect:clippingToPath:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:752 isFatal:0 description:"rectForFill must equal or contain the path bounds"];
    }
  }

  [(CRLImageFill *)self p_paintPath:path inContext:context rectForFill:x, y, width, height];
}

- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!path)
  {
    [CRLAssertionHandler _atomicIncrementAssertCount:0];
    if (qword_101AD5A10 != -1)
    {
      sub_101321C74();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101321C88();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101321D24();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLImageFill paintPath:naturalBounds:inContext:isPDF:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:757 isFatal:0 description:"invalid nil value for '%{public}s'", "path"];
  }

  [(CRLImageFill *)self p_paintPath:path inContext:context rectForFill:f, x, y, width, height];
}

- (id)p_tintedImageWithScale:(double)scale
{
  p_validatedImageProvider = [(CRLImageFill *)self p_validatedImageProvider];
  tintColor = [(CRLImageFill *)self tintColor];
  v7 = tintColor;
  if (!tintColor || !p_validatedImageProvider)
  {

LABEL_9:
    tintColor2 = [(CRLImageFill *)self tintColor];

    if (tintColor2)
    {
      if (p_validatedImageProvider)
      {
LABEL_30:
        if ([p_validatedImageProvider isError])
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101321EF8();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101321F20();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101321FB0();
          }

          v35 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130F3A8(v35);
          }

          v36 = [NSString stringWithUTF8String:"[CRLImageFill p_tintedImageWithScale:]"];
          v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
          [CRLAssertionHandler handleFailureInFunction:v36 file:v37 lineNumber:824 isFatal:0 description:"Image provider has error for image fill."];
        }

        goto LABEL_40;
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101321D4C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101321D60();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101321DF0();
      }

      v29 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130F3A8(v29);
      }

      v30 = [NSString stringWithUTF8String:"[CRLImageFill p_tintedImageWithScale:]"];
      v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
      [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:822 isFatal:0 description:"Image fill has a null tint color."];

      if (p_validatedImageProvider)
      {
        goto LABEL_30;
      }
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101321E18();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101321E40();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101321ED0();
    }

    v32 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v32);
    }

    v33 = [NSString stringWithUTF8String:"[CRLImageFill p_tintedImageWithScale:]"];
    v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:823 isFatal:0 description:"Image provider for image fill could not be validated and is nil."];

    goto LABEL_30;
  }

  isError = [p_validatedImageProvider isError];

  if (isError)
  {
    goto LABEL_9;
  }

  [p_validatedImageProvider naturalSize];
  v10 = v9;
  v12 = v11;
  if (CRLWPShapeLayout.columnsAreLeftToRight.getter())
  {
    v13 = sub_10050CF30();
    v14 = sub_100121ED4(v10, v12, v13);
    v10 = sub_100120068(v14);
    v12 = v15;
  }

  v16 = sub_10011F340(v10, v12, scale);
  v18 = sub_100122154(v16, v17);
  v20 = sub_10011FBF0(v18, v19, 1.0);
  v22 = v21;
  tintColor3 = [(CRLImageFill *)self tintColor];
  colorRGBSpace = [tintColor3 colorRGBSpace];

  tintColor4 = [(CRLImageFill *)self tintColor];
  ColorSpace = CGColorGetColorSpace([tintColor4 CGColor]);

  if (ColorSpace)
  {
    v27 = CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelMonochrome;
  }

  else
  {
    v27 = 1;
  }

  v40 = objc_opt_class();
  v41 = sub_100014370(v40, p_validatedImageProvider);
  v42 = v41;
  if (!v41)
  {
    goto LABEL_52;
  }

  v43 = CGImageGetColorSpace([v41 CGImageOfAnySize]);
  if (v43)
  {
    v44 = (CGColorSpaceGetModel(v43) - 4) < 0xFFFFFFFD;
    if (colorRGBSpace)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v44 = 1;
    if (colorRGBSpace)
    {
      goto LABEL_52;
    }
  }

  if (!v27 || !v44)
  {
    v45 = sub_10050E434([v42 CGImageOfAnySize], 11, v20, v22);
    goto LABEL_53;
  }

LABEL_52:
  v45 = sub_10050DF80(43, v20, v22);
LABEL_53:
  v46 = v45;
  v47 = sub_10011ECB4();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  CGContextSaveGState(v46);
  [p_validatedImageProvider drawImageInContext:v46 rect:{v47, v49, v51, v53}];
  CGContextRestoreGState(v46);
  tintColor5 = [(CRLImageFill *)self tintColor];
  CGContextSetFillColorWithColor(v46, [tintColor5 CGColor]);

  v57.origin.x = v47;
  v57.origin.y = v49;
  v57.size.width = v51;
  v57.size.height = v53;
  CGContextFillRect(v46, v57);
  Image = CGBitmapContextCreateImage(v46);
  CGContextRelease(v46);

  if (!Image)
  {
LABEL_40:
    v38 = 0;
    goto LABEL_41;
  }

  v38 = [CRLImage imageWithCGImage:Image];
  CGImageRelease(Image);
LABEL_41:

  return v38;
}

- (id)p_standardSizeCachedImage
{
  tintColor = [(CRLImageFill *)self tintColor];

  if (tintColor)
  {
    v4 = self->mStandardSizeTintedImage;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)p_halfSizeCachedImage
{
  tintColor = [(CRLImageFill *)self tintColor];

  if (tintColor)
  {
    v4 = self->mHalfSizeTintedImage;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)p_quarterSizeCachedImage
{
  tintColor = [(CRLImageFill *)self tintColor];

  if (tintColor)
  {
    v4 = self->mQuarterSizeTintedImage;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)p_validatedImageProvider
{
  if (!self->mHasIndicatedInterestInProvider && self->mImageData)
  {
    self->mHasIndicatedInterestInProvider = 1;
    v3 = +[CRLImageProviderPool sharedPool];
    [v3 addInterestInProviderForAsset:self->mImageData];
  }

  v4 = +[CRLImageProviderPool sharedPool];
  v5 = v4;
  mImageData = self->mImageData;
  if (mImageData)
  {
    v7 = [v4 providerForAsset:mImageData shouldValidate:1];
  }

  else
  {
    v8 = +[_TtC8Freeform8CRLAsset null];
    v7 = [v5 providerForAsset:v8 shouldValidate:1];
  }

  return v7;
}

- (CGRect)p_drawnRectForImageSize:(CGSize)size destRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = size.height;
  v11 = size.width;
  technique = [(CRLImageFill *)self technique];
  if (technique - 3 < 2)
  {
    v14 = sub_100121F30([(CRLImageFill *)self technique]== 3, v11, v10, x, y, width, height);
LABEL_3:
    x = v14;
    y = v15;
    width = v16;
    height = v17;
    goto LABEL_7;
  }

  if (!technique)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v35, context);
    v18 = sub_100139B5C(&v35.a);
    v19 = sub_100120414(x, y, width, height);
    v21 = sub_10011EC70(v19, v20, v11);
    x = v21;
    y = v22;
    width = v23;
    height = v24;
    if (v18)
    {
      v36 = CGContextConvertRectToDeviceSpace(context, *&v21);
      v25 = v36.size.width;
      v26 = v36.size.height;
      v27 = sub_100122154(v36.origin.x, v36.origin.y);
      v29 = v28;
      v37.size.width = sub_100122154(v25, v26);
      v37.size.height = v30;
      v37.origin.x = v27;
      v37.origin.y = v29;
      *&v14 = CGContextConvertRectToUserSpace(context, v37);
      goto LABEL_3;
    }
  }

LABEL_7:
  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)p_drawBitmapImage:(CGImage *)image withOrientation:(int64_t)orientation inContext:(CGContext *)context bounds:(CGRect)bounds
{
  if (image)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    [(CRLImageFill *)self fillSize];
    v15 = v14;
    v17 = v16;
    [CRLImageFill p_drawnRectForImageSize:"p_drawnRectForImageSize:destRect:inContext:" destRect:context inContext:?];
    v43 = v18;
    v44 = v19;
    v21 = v20;
    v23 = v22;
    technique = [(CRLImageFill *)self technique];
    if (technique > 4 || technique == 2)
    {
      if (width > v15 || height > v17)
      {
        CGContextTranslateCTM(context, v43, v44);
        CGContextScaleCTM(context, 1.0, -1.0);
        v33 = sub_10011ECB4();
        v35 = v34;
        v37 = v36;
        v39 = v38;
        memset(&v47, 0, sizeof(v47));
        sub_1004F3D84(orientation, 1, &v47, v33, v34, v36, v38);
        transform = v47;
        CGContextConcatCTM(context, &transform);
        transform.a = 0.0;
        *&transform.b = &transform;
        *&transform.c = 0x2020000000;
        mTempRenderLock = self->mTempRenderLock;
        transform.d = 0.0;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100170ADC;
        block[3] = &unk_10183B748;
        block[5] = &transform;
        block[6] = image;
        block[4] = self;
        dispatch_sync(mTempRenderLock, block);
        v50.origin.x = v33;
        v50.origin.y = v35;
        v50.size.width = v37;
        v50.size.height = v39;
        CGContextDrawTiledImage(context, v50, *(*&transform.b + 24));
        CGImageRelease(*(*&transform.b + 24));
        _Block_object_dispose(&transform, 8);
        return;
      }

      v51.origin.x = v43;
      v51.origin.y = v44;
      v51.size.width = v15;
      v51.size.height = v17;
      MinY = CGRectGetMinY(v51);
      v52.origin.x = v43;
      v52.origin.y = v44;
      v52.size.width = v15;
      v52.size.height = v17;
      MaxY = CGRectGetMaxY(v52);
      CGContextTranslateCTM(context, 0.0, MinY + MaxY);
      CGContextScaleCTM(context, 1.0, -1.0);
      memset(&v47, 0, sizeof(v47));
      sub_1004F3D84(orientation, 1, &v47, v43, v44, v15, v17);
      transform = v47;
      CGContextConcatCTM(context, &transform);
      contextCopy2 = context;
      v28 = v43;
      v29 = v44;
      v30 = v15;
      v31 = v17;
    }

    else
    {
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v25 = CGRectGetMinY(v48);
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v26 = CGRectGetMaxY(v49);
      CGContextTranslateCTM(context, 0.0, v25 + v26);
      CGContextScaleCTM(context, 1.0, -1.0);
      memset(&v47, 0, sizeof(v47));
      sub_1004F3D84(orientation, 1, &v47, v43, v44, v21, v23);
      transform = v47;
      CGContextConcatCTM(context, &transform);
      contextCopy2 = context;
      v28 = v43;
      v29 = v44;
      v30 = v21;
      v31 = v23;
    }

    CGContextDrawImage(contextCopy2, *&v28, image);
  }
}

- (void)p_drawPDFWithProvider:(id)provider inContext:(CGContext *)context bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  cGPDFDocument = [provider CGPDFDocument];
  if (cGPDFDocument)
  {
    Page = CGPDFDocumentGetPage(cGPDFDocument, 1uLL);
    if (Page)
    {
      v13 = Page;
      CGContextSaveGState(context);
      memset(&v52, 0, sizeof(v52));
      v50 = 0.0;
      v51 = 0.0;
      v45.origin.x = sub_10050EBF0(v13, &v52, &v50);
      v45.origin.y = v14;
      v45.size.width = v15;
      v45.size.height = v16;
      [(CRLImageFill *)self fillSize];
      v42 = v18;
      v43 = v17;
      [CRLImageFill p_drawnRectForImageSize:"p_drawnRectForImageSize:destRect:inContext:" destRect:context inContext:?];
      v20 = v19;
      v22 = v21;
      v44 = v23;
      v25 = v24;
      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      MinY = CGRectGetMinY(v54);
      v55.origin.x = x;
      v55.origin.y = y;
      v55.size.width = width;
      v55.size.height = height;
      MaxY = CGRectGetMaxY(v55);
      CGContextTranslateCTM(context, 0.0, MinY + MaxY);
      CGContextScaleCTM(context, 1.0, -1.0);
      technique = [(CRLImageFill *)self technique];
      if (technique > 4 || technique == 2)
      {
        v53.width = 1.0;
        v53.height = 1.0;
        v29 = CGContextConvertSizeToDeviceSpace(context, v53);
        v30 = sub_10011F340(v43, v42, fmax(fabs(v29.width), fabs(v29.height)));
        v31 = sub_10012211C(v30);
        v33 = sub_10050DF80(3, v31, v32);
        if (v33)
        {
          v34 = v33;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          v35 = sub_10011ECB4();
          transform = v52;
          sub_10050EFD0(&transform, &v47, v50, v51, v35, v36, v37, v38);
          *&transform.a = v47;
          *&transform.c = v48;
          *&transform.tx = v49;
          CGContextConcatCTM(v34, &transform);
          CGContextClipToRect(v34, v45);
          CGContextDrawPDFPage(v34, v13);
          Image = CGBitmapContextCreateImage(v34);
          CGContextRelease(v34);
          if (Image)
          {
            v56.origin.x = x;
            v56.origin.y = y;
            v56.size.width = width;
            v56.size.height = height;
            MinX = CGRectGetMinX(v56);
            v57.origin.x = x;
            v57.origin.y = y;
            v57.size.width = width;
            v57.size.height = height;
            v41 = CGRectGetMaxY(v57);
            CGContextTranslateCTM(context, MinX, v41);
            v58.origin.x = sub_10011ECB4();
            CGContextDrawTiledImage(context, v58, Image);
            CGImageRelease(Image);
          }
        }
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
        transform = v52;
        v47 = 0u;
        sub_10050EFD0(&transform, &v47, v50, v51, v20, v22, v44, v25);
        *&transform.a = v47;
        *&transform.c = v48;
        *&transform.tx = v49;
        CGContextConcatCTM(context, &transform);
        CGContextClipToRect(context, v45);
        CGContextDrawPDFPage(context, v13);
      }

      CGContextRestoreGState(context);
    }
  }
}

@end