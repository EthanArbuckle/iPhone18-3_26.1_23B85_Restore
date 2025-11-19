@interface CRLImageFill
- (BOOL)canApplyToRenderable;
- (BOOL)canApplyToRenderableByAddingSubrenderables;
- (BOOL)canCopyData;
- (BOOL)drawsInOneStep;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOpaque;
- (BOOL)p_shouldApplyTintedImage;
- (BOOL)shouldBeReappliedToRenderable:(id)a3;
- (CGRect)p_drawnRectForImageSize:(CGSize)a3 destRect:(CGRect)a4 inContext:(CGContext *)a5;
- (CGSize)fillSize;
- (CGSize)p_fillSize;
- (CGSize)p_imageDataNaturalSize;
- (CGSize)p_sizeOfFillImageForDestRect:(CGRect)a3 inContext:(CGContext *)a4;
- (CGSize)renderedImageSizeForObjectSize:(CGSize)a3;
- (CRLImageFill)initWithImageData:(id)a3 technique:(unint64_t)a4 tintColor:(id)a5 size:(CGSize)a6 referenceColor:(id)a7;
- (double)scale;
- (id)copyWithNewImageData:(id)a3;
- (id)initForUnarchiving;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)p_cachedImageForSize:(CGSize)a3 inContext:(CGContext *)a4 orContentsScaleProvider:(id)a5;
- (id)p_calculateReferenceColor;
- (id)p_halfSizeCachedImage;
- (id)p_quarterSizeCachedImage;
- (id)p_standardSizeCachedImage;
- (id)p_tintedImageWithScale:(double)a3;
- (id)p_validatedImageProvider;
- (id)referenceColor;
- (void)applyToRenderable:(id)a3 withScale:(double)a4;
- (void)dealloc;
- (void)drawFillInContext:(CGContext *)a3 rect:(CGRect)a4 clippingToPath:(CGPath *)a5;
- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)i_commonInit;
- (void)i_commonSetup;
- (void)i_setStoredReferenceColor:(id)a3;
- (void)i_updateStoredReferenceColorIfNeeded;
- (void)p_clearTintedImageCache;
- (void)p_drawBitmapImage:(CGImage *)a3 withOrientation:(int64_t)a4 inContext:(CGContext *)a5 bounds:(CGRect)a6;
- (void)p_drawPDFWithProvider:(id)a3 inContext:(CGContext *)a4 bounds:(CGRect)a5;
- (void)p_paintPath:(CGPath *)a3 inContext:(CGContext *)a4 rectForFill:(CGRect)a5;
- (void)p_setTechnique:(unint64_t)a3;
- (void)p_updateCachedReferenceColorIfNeeded;
- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6;
@end

@implementation CRLImageFill

- (CRLImageFill)initWithImageData:(id)a3 technique:(unint64_t)a4 tintColor:(id)a5 size:(CGSize)a6 referenceColor:(id)a7
{
  height = a6.height;
  width = a6.width;
  v14 = a3;
  v15 = a5;
  v16 = a7;
  if (a4 >= 5)
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
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:132 isFatal:0 description:"Invalid image fill technique: %zu Defaulting to natural size.", a4];

    a4 = 0;
  }

  v29.receiver = self;
  v29.super_class = CRLImageFill;
  v20 = [(CRLImageFill *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->mImageData, a3);
    v21->mTechnique = a4;
    v22 = [v15 copy];
    mTintColor = v21->mTintColor;
    v21->mTintColor = v22;

    v24 = [v16 copy];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRLMutableImageFill allocWithZone:a3];
  mImageData = self->mImageData;
  mTechnique = self->mTechnique;
  mTintColor = self->mTintColor;
  [(CRLImageFill *)self fillSize];
  mReferenceColor = self->mReferenceColor;

  return [(CRLImageFill *)v4 initWithImageData:mImageData technique:mTechnique tintColor:mTintColor size:mReferenceColor referenceColor:?];
}

- (void)p_setTechnique:(unint64_t)a3
{
  v3 = a3;
  if (a3 >= 5)
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
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:230 isFatal:0 description:"Invalid image fill technique: %zu Defaulting to natural size.", v3];

    v3 = 0;
  }

  self->mTechnique = v3;
}

- (CGSize)p_fillSize
{
  width = self->mFillSize.width;
  height = self->mFillSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithNewImageData:(id)a3
{
  v4 = a3;
  if ([(CRLImageFill *)self technique]== 2)
  {
    [(CRLImageFill *)self fillSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = +[CRLImageProviderPool sharedPool];
    v10 = [v9 providerForAsset:v4 shouldValidate:1];

    [v10 naturalSize];
    v6 = v11;
    v8 = v12;
  }

  v13 = [CRLImageFill alloc];
  v14 = [(CRLImageFill *)self technique];
  v15 = [(CRLImageFill *)self tintColor];
  v16 = [(CRLImageFill *)v13 initWithImageData:v4 technique:v14 tintColor:v15 size:v6, v8];

  return v16;
}

- (BOOL)canCopyData
{
  v2 = [(CRLImageFill *)self imageData];
  v3 = [v2 needsDownload];

  return v3 ^ 1;
}

- (CGSize)p_imageDataNaturalSize
{
  v2 = [(CRLImageFill *)self p_validatedImageProvider];
  [v2 naturalSize];
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
    v5 = [(CRLImageFill *)self p_validatedImageProvider];
    [v5 dpiAdjustedNaturalSize];
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
  v3 = [(CRLImageFill *)self p_validatedImageProvider];
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);
  v6 = [(CRLImageFill *)self tintColor];
  if (v6)
  {
    v7 = [(CRLImageFill *)self tintColor];
    [v7 alphaComponent];
    v9 = v8 == 1.0;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 isOpaque] | v9;
  return v10 & 1;
}

- (void)i_setStoredReferenceColor:(id)a3
{
  v4 = [a3 copy];
  mReferenceColor = self->mReferenceColor;
  self->mReferenceColor = v4;
}

- (id)referenceColor
{
  v3 = [(CRLImageFill *)self storedReferenceColor];
  if (!v3)
  {
    [(CRLImageFill *)self p_updateCachedReferenceColorIfNeeded];
    v3 = self->mCachedReferenceColor;
  }

  return v3;
}

- (id)p_calculateReferenceColor
{
  if (self->mShouldSkipFurtherAttemptsToCalculateReferenceColor)
  {
    v2 = 0;
    goto LABEL_50;
  }

  v4 = [(CRLImageFill *)self p_validatedImageProvider];
  if ([v4 isError])
  {
    v5 = [(CRLImageFill *)self p_imageData];
    v6 = [v5 fallbackColor];

    v7 = [(CRLImageFill *)self p_imageData];
    v8 = v7;
    if (!v6)
    {
      if (v7)
      {
        v26 = [(CRLImageFill *)self p_imageData];
        self->mShouldSkipFurtherAttemptsToCalculateReferenceColor = [v26 needsDownload] ^ 1;
      }

      else
      {
        self->mShouldSkipFurtherAttemptsToCalculateReferenceColor = 0;
      }

      v2 = 0;
      goto LABEL_49;
    }

    v9 = [v7 fallbackColor];

    v10 = [(CRLImageFill *)self tintColor];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 colorByCompositingSourceOverDestinationColor:v9];
    }

    else
    {
      v12 = v9;
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

    v9 = [NSString stringWithUTF8String:"[CRLImageFill p_calculateReferenceColor]"];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v28 lineNumber:344 isFatal:0 description:"invalid nil value for '%{public}s'", "smallContext"];
  }

LABEL_49:
LABEL_50:

  return v2;
}

- (void)i_updateStoredReferenceColorIfNeeded
{
  if (!self->mReferenceColor)
  {
    v3 = [(CRLImageFill *)self p_calculateReferenceColor];
    mReferenceColor = self->mReferenceColor;
    self->mReferenceColor = v3;
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
      v3 = [(CRLImageFill *)obj p_calculateReferenceColor];
      mCachedReferenceColor = self->mCachedReferenceColor;
      self->mCachedReferenceColor = v3;
    }

    objc_sync_exit(obj);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v19 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = sub_100014370(v5, v4);
    if (v6)
    {
      v7 = v6;
      v8 = [(CRLImageFill *)self imageData];
      v9 = [v7 imageData];
      if ((!(v8 | v9) || [v8 isEqual:v9]) && (v10 = -[CRLImageFill technique](self, "technique"), v10 == objc_msgSend(v7, "technique")))
      {
        v11 = [(CRLImageFill *)self tintColor];
        v12 = [v7 tintColor];
        if (v11 | v12 && ![v11 isEqual:v12])
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
    v4 = [(CRLImageFill *)self p_validatedImageProvider];
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
  v6 = [(CRLImageFill *)self p_validatedImageProvider];
  v7 = sub_100014370(v5, v6);

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
  v6 = [(CRLImageFill *)self p_validatedImageProvider];
  v7 = sub_100014370(v5, v6);

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
  v3 = [(CRLImageFill *)self p_standardSizeCachedImage];
  if (v3)
  {
    v4 = [(CRLImageFill *)self tintColor];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldBeReappliedToRenderable:(id)a3
{
  v4 = a3;
  if (self->mTechnique)
  {
    if ([(CRLImageFill *)self p_shouldApplyTintedImage])
    {
      v5 = 0;
    }

    else
    {
      v6 = objc_opt_class();
      v7 = [(CRLImageFill *)self p_validatedImageProvider];
      v8 = sub_100014370(v6, v7);

      [v4 bounds];
      v11 = [v8 CGImageForSize:0 inContext:v4 orContentsScaleProvider:{v9, v10}];
      v12 = [v4 contents];
      v5 = v12 != v11;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)p_cachedImageForSize:(CGSize)a3 inContext:(CGContext *)a4 orContentsScaleProvider:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = v9;
  if (a4)
  {
    if (v9)
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

    if ((sub_10051058C(a4) & 1) != 0 || sub_100510804(a4))
    {
LABEL_26:
      v27 = [(CRLImageFill *)self p_standardSizeCachedImage];
      goto LABEL_28;
    }

    v14 = sub_100510A7C(a4);
    width = sub_10011F340(width, height, v14);
    height = v15;
    CGContextGetCTM(&v30, a4);
    v16 = sub_100139A00(&v30.a);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    [v9 contentsScale];
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
    v27 = [(CRLImageFill *)self p_quarterSizeCachedImage];
    goto LABEL_28;
  }

  if (width > sub_10011F340(v19, v21, 0.5))
  {
    goto LABEL_26;
  }

  v27 = [(CRLImageFill *)self p_halfSizeCachedImage];
LABEL_28:
  v28 = v27;

  return v28;
}

- (void)applyToRenderable:(id)a3 withScale:(double)a4
{
  v6 = a3;
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
  v11 = [(CRLImageFill *)self p_validatedImageProvider];
  v12 = sub_100014370(v10, v11);

  LODWORD(v11) = [(CRLImageFill *)self p_shouldApplyTintedImage];
  [v6 bounds];
  if (v11)
  {
    v15 = [(CRLImageFill *)self p_cachedImageForSize:0 inContext:v6 orContentsScaleProvider:v13, v14];
    v16 = [v15 image];
    v17 = [v16 CGImage];
  }

  else
  {
    v17 = [v12 CGImageForSize:0 inContext:v6 orContentsScaleProvider:{v13, v14}];
  }

  v18 = v17;
  v19 = [v6 subrenderables];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [v6 subrenderables];
    v22 = [v21 indexOfObjectPassingTest:&stru_101841688];
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
        v32 = +[CRLCanvasRenderable renderable];
        [v31 addSubrenderable:v32];
      }

      else
      {
        v53 = [v6 subrenderables];
        v31 = [v53 objectAtIndex:v22];

        v54 = [v31 subrenderables];
        v32 = [v54 lastObject];
      }

      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [v6 bounds];
      [v31 setPosition:{sub_100120414(v55, v56, v57, v58)}];
      [v6 bounds];
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
      [v6 contentsScale];
      v75 = sub_1001221E8(v67, v69, v71, v73, v74 * a4);
      v77 = v76;
      v79 = v78;
      v81 = v80;
      [v32 setContents:v18];
      [v32 setPosition:{sub_100120414(v75, v77, v79, v81)}];
      [v32 setBounds:sub_10011ECB4()];
      [v6 contentsScale];
      [v32 setContentsScale:?];
      CGAffineTransformMakeScale(&v88, a4, a4);
      v87 = v88;
      [v32 setAffineTransform:&v87];
      v82 = [v6 delegate];
      [v32 setDelegate:v82];

      [v32 setEdgeAntialiasingMask:0];
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
    [v6 bounds];
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
  v83 = [v6 contents];

  if (v83 != v18)
  {
    [v6 setContents:v18];
  }

  v84 = [v6 contentsGravity];

  if (v84 != v30)
  {
    [v6 setContentsGravity:v30];
  }

  [v6 contentsRect];
  v93.origin.x = x;
  v93.origin.y = y;
  v93.size.width = width;
  v93.size.height = height;
  if (!CGRectEqualToRect(v91, v93))
  {
    [v6 setContentsRect:{x, y, width, height}];
  }

  if ([v6 backgroundColor])
  {
    [v6 setBackgroundColor:0];
  }

  if (v31 && v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v31 setName:@"CRLImageFillSublayer"];
    [v6 addSubrenderable:v31];
  }

  else if (!v31 && v22 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v85 = [v6 subrenderables];
    v86 = [v85 objectAtIndex:v22];
    [v86 removeFromSuperlayer];
  }
}

- (CGSize)renderedImageSizeForObjectSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CRLImageFill *)self technique];
  v7 = 0.0;
  if (v6 > 2)
  {
    v8 = 0.0;
    if ((v6 - 3) < 2)
    {
      [(CRLImageFill *)self fillSize:0.0];
      v8 = sub_100121EF4([(CRLImageFill *)self technique]== 3, v9, v10, width, height);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    if (v6 == 1)
    {
      v7 = height;
      v8 = width;
      goto LABEL_9;
    }

    v8 = 0.0;
    if (v6 == 2)
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

- (void)drawSwatchInRect:(CGRect)a3 inContext:(CGContext *)a4
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    Mutable = CGPathCreateMutable();
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    CGPathAddRect(Mutable, 0, v15);
    [(CRLImageFill *)self paintPath:Mutable inContext:a4];

    CGPathRelease(Mutable);
  }

  else
  {
    [CRLAssertionHandler _atomicIncrementAssertCount:a3.origin.x];
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

- (CGSize)p_sizeOfFillImageForDestRect:(CGRect)a3 inContext:(CGContext *)a4
{
  v6 = [(CRLImageFill *)self technique];
  [(CRLImageFill *)self fillSize];
  if (v6 != 2)
  {
    [CRLImageFill p_drawnRectForImageSize:"p_drawnRectForImageSize:destRect:inContext:" destRect:a4 inContext:?];
    v7 = v9;
    v8 = v10;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)p_paintPath:(CGPath *)a3 inContext:(CGContext *)a4 rectForFill:(CGRect)a5
{
  if (a3)
  {
    if (a4)
    {
      height = a5.size.height;
      width = a5.size.width;
      y = a5.origin.y;
      x = a5.origin.x;
      v12 = [(CRLImageFill *)self p_validatedImageProvider];
      if (!v12)
      {
LABEL_51:

        return;
      }

      CGContextSaveGState(a4);
      CGContextBeginPath(a4);
      CGContextAddPath(a4, a3);
      CGContextClip(a4);
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      if (CGRectIsNull(v46))
      {
        PathBoundingBox = CGPathGetPathBoundingBox(a3);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;
      }

      v13 = [(CRLImageFill *)self tintColor];
      if (v13)
      {
        v14 = v13;
        v15 = [v12 isError];

        if ((v15 & 1) == 0)
        {
          [(CRLImageFill *)self p_sizeOfFillImageForDestRect:a4 inContext:x, y, width, height];
          v24 = [(CRLImageFill *)self p_cachedImageForSize:a4 inContext:0 orContentsScaleProvider:?];
          v25 = [v24 image];
          v26 = [v25 CGImage];

          [(CRLImageFill *)self p_drawBitmapImage:v26 withOrientation:0 inContext:a4 bounds:x, y, width, height];
LABEL_50:
          CGContextRestoreGState(a4);
          goto LABEL_51;
        }
      }

      CGContextSaveGState(a4);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v12;
        [(CRLImageFill *)self p_sizeOfFillImageForDestRect:a4 inContext:x, y, width, height];
        v17 = [v16 CGImageForSize:a4 inContext:0 orContentsScaleProvider:?];
        v18 = [v16 orientation];

        [(CRLImageFill *)self p_drawBitmapImage:v17 withOrientation:v18 inContext:a4 bounds:x, y, width, height];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = [(CRLImageFill *)self imageData];
          v28 = [v27 needsDownload];

          if (v28)
          {
            v29 = [(CRLImageFill *)self imageData];
            sub_100510F80(a4, v29);

            v30 = [(CRLAsset *)self->mImageData fallbackColor];
            v31 = v30;
            if (v30)
            {
              [v30 paintPath:a3 inContext:a4];
              v32 = [(CRLImageFill *)self tintColor];
              v33 = v32;
              if (v32)
              {
                [v32 paintPath:a3 inContext:a4];
              }
            }

            else
            {
              CGContextSaveGState(a4);
              v33 = [CRLImage imageNamed:@"sf_streaming_large_bg_pattern"];
              [v33 size];
              v38 = sub_10011ECB4();
              v40 = v39;
              v42 = v41;
              v44 = v43;
              v45 = [v33 CGImageForContentsScale:sub_100510A7C(a4)];
              v48.origin.x = v38;
              v48.origin.y = v40;
              v48.size.width = v42;
              v48.size.height = v44;
              CGContextDrawTiledImage(a4, v48, v45);
              CGContextRestoreGState(a4);
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(CRLImageFill *)self p_drawnRectForImageSize:a4 destRect:width inContext:height, x, y, width, height];
              [v12 drawImageInContext:a4 rect:?];
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
            v37 = [(CRLImageFill *)self imageData];
            [CRLAssertionHandler handleFailureInFunction:v31 file:v36 lineNumber:734 isFatal:0 description:"can't draw CRLAsset with unknown image type: %@", v37];
          }

          goto LABEL_49;
        }

        [(CRLImageFill *)self p_drawPDFWithProvider:v12 inContext:a4 bounds:x, y, width, height];
      }

LABEL_49:
      CGContextRestoreGState(a4);
      goto LABEL_50;
    }

LABEL_19:
    [CRLAssertionHandler _atomicIncrementAssertCount:a5.origin.x];
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

    v12 = [NSString stringWithUTF8String:"[CRLImageFill p_paintPath:inContext:rectForFill:]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLImageFill.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v23 lineNumber:684 isFatal:0 description:"invalid nil value for '%{public}s'", "ctx"];

    goto LABEL_51;
  }

  [CRLAssertionHandler _atomicIncrementAssertCount:a5.origin.x];
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

  if (!a4)
  {
    goto LABEL_19;
  }
}

- (void)drawFillInContext:(CGContext *)a3 rect:(CGRect)a4 clippingToPath:(CGPath *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (!a5)
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
    PathBoundingBox = CGPathGetPathBoundingBox(a5);
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

  [(CRLImageFill *)self p_paintPath:a5 inContext:a3 rectForFill:x, y, width, height];
}

- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (!a3)
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

  [(CRLImageFill *)self p_paintPath:a3 inContext:a5 rectForFill:a6, x, y, width, height];
}

- (id)p_tintedImageWithScale:(double)a3
{
  v5 = [(CRLImageFill *)self p_validatedImageProvider];
  v6 = [(CRLImageFill *)self tintColor];
  v7 = v6;
  if (!v6 || !v5)
  {

LABEL_9:
    v28 = [(CRLImageFill *)self tintColor];

    if (v28)
    {
      if (v5)
      {
LABEL_30:
        if ([v5 isError])
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

      if (v5)
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

  v8 = [v5 isError];

  if (v8)
  {
    goto LABEL_9;
  }

  [v5 naturalSize];
  v10 = v9;
  v12 = v11;
  if (CRLWPShapeLayout.columnsAreLeftToRight.getter())
  {
    v13 = sub_10050CF30();
    v14 = sub_100121ED4(v10, v12, v13);
    v10 = sub_100120068(v14);
    v12 = v15;
  }

  v16 = sub_10011F340(v10, v12, a3);
  v18 = sub_100122154(v16, v17);
  v20 = sub_10011FBF0(v18, v19, 1.0);
  v22 = v21;
  v23 = [(CRLImageFill *)self tintColor];
  v24 = [v23 colorRGBSpace];

  v25 = [(CRLImageFill *)self tintColor];
  ColorSpace = CGColorGetColorSpace([v25 CGColor]);

  if (ColorSpace)
  {
    v27 = CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelMonochrome;
  }

  else
  {
    v27 = 1;
  }

  v40 = objc_opt_class();
  v41 = sub_100014370(v40, v5);
  v42 = v41;
  if (!v41)
  {
    goto LABEL_52;
  }

  v43 = CGImageGetColorSpace([v41 CGImageOfAnySize]);
  if (v43)
  {
    v44 = (CGColorSpaceGetModel(v43) - 4) < 0xFFFFFFFD;
    if (v24)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v44 = 1;
    if (v24)
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
  [v5 drawImageInContext:v46 rect:{v47, v49, v51, v53}];
  CGContextRestoreGState(v46);
  v54 = [(CRLImageFill *)self tintColor];
  CGContextSetFillColorWithColor(v46, [v54 CGColor]);

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
  v3 = [(CRLImageFill *)self tintColor];

  if (v3)
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
  v3 = [(CRLImageFill *)self tintColor];

  if (v3)
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
  v3 = [(CRLImageFill *)self tintColor];

  if (v3)
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

- (CGRect)p_drawnRectForImageSize:(CGSize)a3 destRect:(CGRect)a4 inContext:(CGContext *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.height;
  v11 = a3.width;
  v13 = [(CRLImageFill *)self technique];
  if (v13 - 3 < 2)
  {
    v14 = sub_100121F30([(CRLImageFill *)self technique]== 3, v11, v10, x, y, width, height);
LABEL_3:
    x = v14;
    y = v15;
    width = v16;
    height = v17;
    goto LABEL_7;
  }

  if (!v13)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v35, a5);
    v18 = sub_100139B5C(&v35.a);
    v19 = sub_100120414(x, y, width, height);
    v21 = sub_10011EC70(v19, v20, v11);
    x = v21;
    y = v22;
    width = v23;
    height = v24;
    if (v18)
    {
      v36 = CGContextConvertRectToDeviceSpace(a5, *&v21);
      v25 = v36.size.width;
      v26 = v36.size.height;
      v27 = sub_100122154(v36.origin.x, v36.origin.y);
      v29 = v28;
      v37.size.width = sub_100122154(v25, v26);
      v37.size.height = v30;
      v37.origin.x = v27;
      v37.origin.y = v29;
      *&v14 = CGContextConvertRectToUserSpace(a5, v37);
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

- (void)p_drawBitmapImage:(CGImage *)a3 withOrientation:(int64_t)a4 inContext:(CGContext *)a5 bounds:(CGRect)a6
{
  if (a3)
  {
    height = a6.size.height;
    width = a6.size.width;
    y = a6.origin.y;
    x = a6.origin.x;
    [(CRLImageFill *)self fillSize];
    v15 = v14;
    v17 = v16;
    [CRLImageFill p_drawnRectForImageSize:"p_drawnRectForImageSize:destRect:inContext:" destRect:a5 inContext:?];
    v43 = v18;
    v44 = v19;
    v21 = v20;
    v23 = v22;
    v24 = [(CRLImageFill *)self technique];
    if (v24 > 4 || v24 == 2)
    {
      if (width > v15 || height > v17)
      {
        CGContextTranslateCTM(a5, v43, v44);
        CGContextScaleCTM(a5, 1.0, -1.0);
        v33 = sub_10011ECB4();
        v35 = v34;
        v37 = v36;
        v39 = v38;
        memset(&v47, 0, sizeof(v47));
        sub_1004F3D84(a4, 1, &v47, v33, v34, v36, v38);
        transform = v47;
        CGContextConcatCTM(a5, &transform);
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
        block[6] = a3;
        block[4] = self;
        dispatch_sync(mTempRenderLock, block);
        v50.origin.x = v33;
        v50.origin.y = v35;
        v50.size.width = v37;
        v50.size.height = v39;
        CGContextDrawTiledImage(a5, v50, *(*&transform.b + 24));
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
      CGContextTranslateCTM(a5, 0.0, MinY + MaxY);
      CGContextScaleCTM(a5, 1.0, -1.0);
      memset(&v47, 0, sizeof(v47));
      sub_1004F3D84(a4, 1, &v47, v43, v44, v15, v17);
      transform = v47;
      CGContextConcatCTM(a5, &transform);
      v27 = a5;
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
      CGContextTranslateCTM(a5, 0.0, v25 + v26);
      CGContextScaleCTM(a5, 1.0, -1.0);
      memset(&v47, 0, sizeof(v47));
      sub_1004F3D84(a4, 1, &v47, v43, v44, v21, v23);
      transform = v47;
      CGContextConcatCTM(a5, &transform);
      v27 = a5;
      v28 = v43;
      v29 = v44;
      v30 = v21;
      v31 = v23;
    }

    CGContextDrawImage(v27, *&v28, a3);
  }
}

- (void)p_drawPDFWithProvider:(id)a3 inContext:(CGContext *)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = [a3 CGPDFDocument];
  if (v11)
  {
    Page = CGPDFDocumentGetPage(v11, 1uLL);
    if (Page)
    {
      v13 = Page;
      CGContextSaveGState(a4);
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
      [CRLImageFill p_drawnRectForImageSize:"p_drawnRectForImageSize:destRect:inContext:" destRect:a4 inContext:?];
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
      CGContextTranslateCTM(a4, 0.0, MinY + MaxY);
      CGContextScaleCTM(a4, 1.0, -1.0);
      v28 = [(CRLImageFill *)self technique];
      if (v28 > 4 || v28 == 2)
      {
        v53.width = 1.0;
        v53.height = 1.0;
        v29 = CGContextConvertSizeToDeviceSpace(a4, v53);
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
            CGContextTranslateCTM(a4, MinX, v41);
            v58.origin.x = sub_10011ECB4();
            CGContextDrawTiledImage(a4, v58, Image);
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
        CGContextConcatCTM(a4, &transform);
        CGContextClipToRect(a4, v45);
        CGContextDrawPDFPage(a4, v13);
      }

      CGContextRestoreGState(a4);
    }
  }
}

@end