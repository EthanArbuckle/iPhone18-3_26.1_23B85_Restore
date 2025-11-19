@interface CRLImageRepDrawingHelper
- (BOOL)canRenderDirectlyManagedForRenderable:(id)a3;
- (BOOL)drawsBitmap;
- (BOOL)drawsError;
- (BOOL)imagePrefersDrawing;
- (BOOL)isDesiredImageSizePerceptuallyMuchBiggerThanGeneratedImageSize;
- (BOOL)isGeneratingSizedImageWithBakedMask;
- (BOOL)p_canDrawThumbnailAsSizedImage;
- (BOOL)p_generateSizedImage:(id)a3;
- (BOOL)shouldShowLoadingUI;
- (CGImage)sizedImage;
- (CGRect)imageRectInContext:(CGContext *)a3;
- (CGRect)p_antialiasingDefeatedRectForRect:(CGRect)a3 inContext:(CGContext *)a4;
- (CGSize)p_desiredSizedImageSize;
- (CGSize)p_imagePixelSize;
- (CRLImageRepDrawingDataSource)rep;
- (CRLImageRepDrawingHelper)initWithRep:(id)a3;
- (_TtC8Freeform8CRLAsset)imageDataForDrawing;
- (id)p_contentsRecipeForDirectlyManagedRenderable:(id)a3 requiringProperlySizedImage:(BOOL)a4;
- (id)p_desiredSizedImageDescription;
- (id)p_imageProvider;
- (id)p_validatedBitmapImageProvider;
- (id)p_validatedImageProvider;
- (id)p_validatedThumbnailImageProvider;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3 forLayer:(BOOL)a4 forShadowOrHitTest:(BOOL)a5;
- (void)generateSizedImageIfNeeded;
- (void)invalidateSizedImage;
- (void)invalidateSizedImageIfItHasBakedMask;
- (void)invalidateSizedImageIfNeededForBakedMaskPathFromBlock:(id)a3;
- (void)p_invalidateSizedImageOnAccessQueue;
- (void)p_prepareToGenerateSizedImageWithDescription:(id)a3;
- (void)p_retryGeneratingSizedImageIfPossible;
- (void)p_startGeneratingSizedImage;
- (void)p_takeSizedImageFromStateIfReady;
- (void)retryGeneratingSizedImageIfNeeded;
- (void)teardown;
@end

@implementation CRLImageRepDrawingHelper

- (CRLImageRepDrawingHelper)initWithRep:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRLImageRepDrawingHelper;
  v5 = [(CRLImageRepDrawingHelper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_rep, v4);
    v7 = dispatch_queue_create("com.apple.freeform.CRLImageRepDrawingHelper.sizedImage", 0);
    sizedImageAccessQueue = v6->_sizedImageAccessQueue;
    v6->_sizedImageAccessQueue = v7;
  }

  return v6;
}

- (void)dealloc
{
  CGImageRelease(self->_sizedImage);
  CGPathRelease(self->_sizedImageMaskPath);
  v3.receiver = self;
  v3.super_class = CRLImageRepDrawingHelper;
  [(CRLImageRepDrawingHelper *)&v3 dealloc];
}

- (void)teardown
{
  sizedImageAccessQueue = self->_sizedImageAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100511BAC;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_sync(sizedImageAccessQueue, block);
}

- (CGRect)imageRectInContext:(CGContext *)a3
{
  v5 = [(CRLImageRepDrawingHelper *)self rep];
  v6 = v5;
  if (v5)
  {
    [v5 imageDrawingHelperImageRect:self];
    x = v7;
    y = v9;
    width = v11;
    height = v13;
    v15 = [(CRLImageRepDrawingHelper *)self rep];
    v16 = [v15 canvas];
    if ([v16 isDrawingIntoPDF])
    {
    }

    else
    {
      v20 = [(CRLImageRepDrawingHelper *)self rep];
      v21 = [v20 canvas];
      v22 = [v21 isPrinting];

      if ((v22 & 1) == 0)
      {
        [(CRLImageRepDrawingHelper *)self p_antialiasingDefeatedRectForRect:a3 inContext:x, y, width, height];
        x = v23;
        y = v24;
        width = v25;
        height = v26;
      }
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138A0A8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138A0BC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138A150();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper imageRectInContext:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:83 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];

    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)drawInContext:(CGContext *)a3 forLayer:(BOOL)a4 forShadowOrHitTest:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(CRLImageRepDrawingHelper *)self rep];
  if (v9)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    sizedImageAccessQueue = self->_sizedImageAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100512560;
    block[3] = &unk_101855BC0;
    block[4] = self;
    block[5] = &v51;
    block[6] = &v47;
    dispatch_sync(sizedImageAccessQueue, block);
    [(CRLImageRepDrawingHelper *)self imageRectInContext:a3];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    if (!v5 || ([v9 imageDrawingHelperImageHasAlpha:self] & 1) != 0)
    {
      if (v52[3] && ![(CRLImageRepDrawingHelper *)self imagePrefersDrawing])
      {
        v56.origin.x = v12;
        v56.origin.y = v14;
        v56.size.width = v16;
        v56.size.height = v18;
        MinY = CGRectGetMinY(v56);
        v57.origin.x = v12;
        v57.origin.y = v14;
        v57.size.width = v16;
        v57.size.height = v18;
        MaxY = CGRectGetMaxY(v57);
        CGContextTranslateCTM(a3, 0.0, MinY + MaxY);
        CGContextScaleCTM(a3, 1.0, -1.0);
        sub_1004F3D84(v48[3], 1, &transform, v12, v14, v16, v18);
        CGContextConcatCTM(a3, &transform);
        v58.origin.x = v12;
        v58.origin.y = v14;
        v58.size.width = v16;
        v58.size.height = v18;
        CGContextDrawImage(a3, v58, v52[3]);
        goto LABEL_34;
      }

      if (![(CRLImageRepDrawingHelper *)self shouldShowLoadingUI])
      {
        v41 = 0;
        v42 = &v41;
        v43 = 0x2020000000;
        v44 = 0;
        v22 = self->_sizedImageAccessQueue;
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1005125B0;
        v40[3] = &unk_101839FF8;
        v40[4] = self;
        v40[5] = &v41;
        dispatch_sync(v22, v40);
        if ([(CRLImageRepDrawingHelper *)self p_canDrawThumbnailAsSizedImage]|| v6 && *(v42 + 24) == 1)
        {
          v23 = [(CRLImageRepDrawingHelper *)self p_validatedThumbnailImageProvider];
          if (v23 && ![(CRLImageRepDrawingHelper *)self imagePrefersDrawing])
          {
            v37 = [v23 CGImageForSize:a3 inContext:0 orContentsScaleProvider:{v16, v18}];
            v59.origin.x = v12;
            v59.origin.y = v14;
            v59.size.width = v16;
            v59.size.height = v18;
            v38 = CGRectGetMinY(v59);
            v60.origin.x = v12;
            v60.origin.y = v14;
            v60.size.width = v16;
            v60.size.height = v18;
            v39 = CGRectGetMaxY(v60);
            CGContextTranslateCTM(a3, 0.0, v38 + v39);
            CGContextScaleCTM(a3, 1.0, -1.0);
            sub_1004F3D84(v48[3], 1, &transform, v12, v14, v16, v18);
            CGContextConcatCTM(a3, &transform);
            v61.origin.x = v12;
            v61.origin.y = v14;
            v61.size.width = v16;
            v61.size.height = v18;
            CGContextDrawImage(a3, v61, v37);
          }

          else
          {
            v24 = [(CRLImageRepDrawingHelper *)self p_validatedImageProvider];
            [v24 drawImageInContext:a3 rect:{v12, v14, v16, v18}];
          }
        }

        else
        {
          v23 = [(CRLImageRepDrawingHelper *)self p_validatedImageProvider];
          if ([v23 isError])
          {
            v34 = [(CRLImageRepDrawingHelper *)self p_validatedThumbnailImageProvider];
            v35 = v34;
            if (v34)
            {
              v36 = v34;

              v23 = v36;
            }
          }

          [v23 drawImageInContext:a3 rect:{v12, v14, v16, v18}];
        }

        _Block_object_dispose(&v41, 8);
        goto LABEL_34;
      }

      if (!v5)
      {
        v28 = objc_opt_class();
        v29 = [(CRLImageRepDrawingHelper *)self rep];
        v30 = sub_100014370(v28, v29);

        v31 = [_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper alloc];
        v32 = [(CRLImageRepDrawingHelper *)self imageDataForDrawing];
        v33 = [(CRLImageUndownloadedAssetDrawingHelper *)v31 initWithImageRep:v30 asset:v32];

        [(CRLImageUndownloadedAssetDrawingHelper *)v33 drawInConext:a3 withOriginalImageRect:v12, v14, v16, v18];
        goto LABEL_34;
      }
    }

    v25 = +[CRLColor blackColor];
    CGContextSetFillColorWithColor(a3, [v25 CGColor]);

    v55.origin.x = v12;
    v55.origin.y = v14;
    v55.size.width = v16;
    v55.size.height = v18;
    CGContextFillRect(a3, v55);
LABEL_34:
    CGImageRelease(v52[3]);
    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v51, 8);
    goto LABEL_35;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10138A178();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10138A18C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10138A220();
  }

  v19 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10138A248(v19);
  }

  v20 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper drawInContext:forLayer:forShadowOrHitTest:]"];
  v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
  [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:101 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];

LABEL_35:
}

- (CGRect)p_antialiasingDefeatedRectForRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(CRLImageRepDrawingHelper *)self rep];
  v11 = v10;
  if (v10)
  {
    memset(&v36, 0, sizeof(v36));
    [v10 imageDrawingHelperImageTransformInRootForAntialiasingDefeat:self];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138A2F0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138A304();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138A398();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper p_antialiasingDefeatedRectForRect:inContext:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:184 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];

    memset(&v36, 0, sizeof(v36));
  }

  v35 = v36;
  if (sub_100139B5C(&v35.a))
  {
    v35 = v36;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v38 = CGRectApplyAffineTransform(v37, &v35);
    v15 = v38.origin.x;
    v16 = v38.origin.y;
    v17 = v38.size.width;
    v18 = v38.size.height;
    v19 = sub_100510A7C(a4);
    v20 = [v11 canvas];
    [v20 viewScale];
    v22 = v21;

    v23 = sub_1001221E8(v15, v16, v17, v18, v19 * v22);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v34 = v36;
    CGAffineTransformInvert(&v35, &v34);
    v39.origin.x = v23;
    v39.origin.y = v25;
    v39.size.width = v27;
    v39.size.height = v29;
    v40 = CGRectApplyAffineTransform(v39, &v35);
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (BOOL)p_canDrawThumbnailAsSizedImage
{
  v3 = [(CRLImageRepDrawingHelper *)self rep];
  v4 = v3;
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138A3C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138A3D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138A468();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v5 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper p_canDrawThumbnailAsSizedImage]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:207 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
    v7 = 0;
    goto LABEL_16;
  }

  v5 = [v3 canvas];
  if ([v5 isCanvasInteractive])
  {
    v6 = [(CRLImageRepDrawingHelper *)self p_validatedBitmapImageProvider];
    if ([v6 isError])
    {
      v7 = 1;
    }

    else
    {
      [v6 naturalSize];
      v10 = v9;
      v12 = v11;
      v13 = sub_10050CFD8();
      v15 = sub_10011F340(v13, v14, 0.5);
      v7 = v10 * v12 >= v15 * v16;
    }

LABEL_16:

    goto LABEL_17;
  }

  v7 = 0;
LABEL_17:

  return v7;
}

- (BOOL)canRenderDirectlyManagedForRenderable:(id)a3
{
  v3 = [(CRLImageRepDrawingHelper *)self p_contentsRecipeForDirectlyManagedRenderable:a3 requiringProperlySizedImage:0];
  v4 = v3 != 0;

  return v4;
}

- (id)p_contentsRecipeForDirectlyManagedRenderable:(id)a3 requiringProperlySizedImage:(BOOL)a4
{
  v6 = a3;
  v7 = [(CRLImageRepDrawingHelper *)self rep];
  if (v7)
  {
    [(CRLImageRepDrawingHelper *)self p_takeSizedImageFromStateIfReady];
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 1;
    sizedImageAccessQueue = self->_sizedImageAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100512F04;
    block[3] = &unk_10186B990;
    block[4] = self;
    v17 = &v32;
    v18 = &v28;
    v19 = &v24;
    v21 = a4;
    v16 = v6;
    v20 = v22;
    dispatch_sync(sizedImageAccessQueue, block);
    if (v33[3])
    {
      v9 = [CRLImageRepLayerContentsRecipe alloc];
      v10 = [(CRLImageRepLayerContentsRecipe *)v9 initWithImage:v33[3] orientation:v29[3] hasBakedMask:*(v25 + 24)];
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138A490();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138A4A4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138A538();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138A560(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper p_contentsRecipeForDirectlyManagedRenderable:requiringProperlySizedImage:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:245 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];

    v10 = 0;
  }

  return v10;
}

- (_TtC8Freeform8CRLAsset)imageDataForDrawing
{
  v3 = [(CRLImageRepDrawingHelper *)self rep];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138A608();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138A61C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138A6B0();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper imageDataForDrawing]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:300 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }

  v7 = [v3 imageDrawingHelperImageData:self];
  if (([v7 needsDownload] & 1) != 0 || (+[CRLAsset null](_TtC8Freeform8CRLAsset, "null"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7 == v8))
  {
    v9 = [v3 imageDrawingHelperThumbnailImageData:self];
    v10 = v9;
    if (v9)
    {
      v11 = v9;

      v7 = v11;
    }
  }

  return v7;
}

- (BOOL)drawsError
{
  v2 = [(CRLImageRepDrawingHelper *)self p_validatedImageProvider];
  v3 = [v2 isError];

  return v3;
}

- (BOOL)drawsBitmap
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  sizedImageAccessQueue = self->_sizedImageAccessQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100513424;
  v9[3] = &unk_101839FF8;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(sizedImageAccessQueue, v9);
  if ((v11[3] & 1) == 0)
  {
    v5 = [(CRLImageRepDrawingHelper *)self p_canDrawThumbnailAsSizedImage];
    if (v5 && ([(CRLImageRepDrawingHelper *)self p_validatedThumbnailImageProvider], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = 1;
    }

    else
    {
      v7 = [(CRLImageRepDrawingHelper *)self p_validatedBitmapImageProvider];
      v4 = v7 != 0;

      if (!v5)
      {
        goto LABEL_9;
      }

      v6 = 0;
    }

    goto LABEL_9;
  }

  v4 = 1;
LABEL_9:
  _Block_object_dispose(&v10, 8);
  return v4;
}

- (BOOL)imagePrefersDrawing
{
  v3 = [(CRLImageRepDrawingHelper *)self rep];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138A6D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138A6EC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138A780();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper imagePrefersDrawing]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:330 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }

  [(CRLImageRepDrawingHelper *)self p_imagePixelSize];
  v8 = v7;
  v10 = v9;
  v11 = [(CRLImageRepDrawingHelper *)self p_validatedImageProvider];
  [v11 naturalSize];
  v13 = v12;
  v15 = v14;

  v16 = v8 <= v13 && v10 <= v15;
  v20 = 0;
  if (!v16)
  {
    v17 = [(CRLImageRepDrawingHelper *)self p_imageProvider];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (v8 > sub_10050CFD8() || (sub_10050CFD8(), v10 > v19))
      {
        v20 = 1;
      }
    }
  }

  return v20;
}

- (BOOL)shouldShowLoadingUI
{
  v2 = [(CRLImageRepDrawingHelper *)self imageDataForDrawing];
  v3 = [v2 needsDownload];

  return v3;
}

- (CGSize)p_imagePixelSize
{
  v3 = [(CRLImageRepDrawingHelper *)self rep];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138A7A8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138A7BC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138A850();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper p_imagePixelSize]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:358 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }

  v7 = [v3 canvas];
  [v3 imageDrawingHelperImageRect:self];
  v9 = v8;
  v11 = v10;
  [v7 viewScale];
  v13 = v12;
  [v7 contentsScale];
  v15 = sub_10011F340(v9, v11, v13 * v14);
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (id)p_imageProvider
{
  v3 = +[CRLImageProviderPool sharedPool];
  v4 = [(CRLImageRepDrawingHelper *)self imageDataForDrawing];
  v5 = [v3 providerForAsset:v4 shouldValidate:0];

  return v5;
}

- (id)p_validatedImageProvider
{
  v3 = +[CRLImageProviderPool sharedPool];
  v4 = [(CRLImageRepDrawingHelper *)self imageDataForDrawing];
  v5 = [v3 providerForAsset:v4 shouldValidate:1];

  return v5;
}

- (id)p_validatedBitmapImageProvider
{
  v3 = objc_opt_class();
  v4 = [(CRLImageRepDrawingHelper *)self p_validatedImageProvider];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (id)p_validatedThumbnailImageProvider
{
  v3 = [(CRLImageRepDrawingHelper *)self rep];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138A878();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138A88C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138A920();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper p_validatedThumbnailImageProvider]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:393 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }

  v7 = [v3 imageDrawingHelperThumbnailImageData:self];
  v8 = +[CRLImageProviderPool sharedPool];
  v9 = [v8 providerForAsset:v7 shouldValidate:1];

  v10 = objc_opt_class();
  v11 = sub_100014370(v10, v9);

  return v11;
}

- (BOOL)isDesiredImageSizePerceptuallyMuchBiggerThanGeneratedImageSize
{
  v2 = self;
  [(CRLImageRepDrawingHelper *)self p_desiredSizedImageSize];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  sizedImageAccessQueue = v2->_sizedImageAccessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100513DAC;
  v7[3] = &unk_10186BAB8;
  v7[4] = v2;
  v7[5] = &v8;
  v7[6] = v4;
  v7[7] = v5;
  dispatch_sync(sizedImageAccessQueue, v7);
  LOBYTE(v2) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v2;
}

- (void)generateSizedImageIfNeeded
{
  v3 = [(CRLImageRepDrawingHelper *)self p_imageProvider];
  if ([v3 isValid] && (objc_msgSend(v3, "isError") & 1) == 0)
  {
    v4 = [(CRLImageRepDrawingHelper *)self p_desiredSizedImageDescription];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    sizedImageAccessQueue = self->_sizedImageAccessQueue;
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100513F84;
    v10 = &unk_101842C40;
    v11 = self;
    v6 = v4;
    v12 = v6;
    v13 = v3;
    v14 = &v15;
    dispatch_sync(sizedImageAccessQueue, &v7);
    if (*(v16 + 24) == 1)
    {
      [(CRLImageRepDrawingHelper *)self p_startGeneratingSizedImage:v7];
    }

    _Block_object_dispose(&v15, 8);
  }
}

- (id)p_desiredSizedImageDescription
{
  v3 = [(CRLImageRepDrawingHelper *)self rep];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138A948();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138A95C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138A9F0();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper p_desiredSizedImageDescription]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:459 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }

  [(CRLImageRepDrawingHelper *)self p_desiredSizedImageSize];
  v8 = v7;
  v10 = v9;
  v11 = [v3 canvas];
  v12 = [v11 canvasIsWideGamut];

  v13 = -[TSDSizedImageDescription initWithSize:isWideGamut:hasBakedMask:]([TSDSizedImageDescription alloc], "initWithSize:isWideGamut:hasBakedMask:", v12, [v3 imageDrawingHelperShouldBakeMaskIntoSizedImage:self], v8, v10);

  return v13;
}

- (CGSize)p_desiredSizedImageSize
{
  v3 = [(CRLImageRepDrawingHelper *)self rep];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138AA18();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138AA2C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138AAC0();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper p_desiredSizedImageSize]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:470 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }

  v7 = [(CRLImageRepDrawingHelper *)self p_validatedImageProvider];
  [v7 naturalSize];
  v9 = v8;
  v11 = v10;

  [(CRLImageRepDrawingHelper *)self p_imagePixelSize];
  v13 = v12;
  v15 = v14;
  v16 = v11;
  v17 = v9;
  if (CRLWPShapeLayout.columnsAreLeftToRight.getter())
  {
    v16 = v11;
    v17 = v9;
    if (v9 * v11 > sub_10050CF30())
    {
      v18 = sub_10050CF30();
      v19 = sub_100121ED4(v9, v11, v18);
      v17 = sub_100120068(v19);
      v16 = v20;
    }
  }

  v21 = [(CRLImageRepDrawingHelper *)self p_imageProvider];
  v22 = [v21 isError];

  if ((v22 & 1) != 0 || v13 <= v17 && v15 <= v16)
  {
    v9 = v13;
  }

  else
  {
    v28 = [(CRLImageRepDrawingHelper *)self p_imageProvider];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v30 = sub_10050CFD8();
      v9 = sub_100121E8C(v13, v15, v30, v31);
    }
  }

  v23 = sub_10012211C(v9);
  v25 = v24;

  v26 = v23;
  v27 = v25;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)p_prepareToGenerateSizedImageWithDescription:(id)a3
{
  v4 = a3;
  v5 = self->_sizedImageAccessQueue;
  if (v5 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v5);
  }

  v6 = [(CRLImageRepDrawingHelper *)self rep];
  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138AAE8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138AAFC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138AB90();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper p_prepareToGenerateSizedImageWithDescription:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:517 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }

  if (self->_sizingState)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138ABB8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138ABE0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138AC74();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper p_prepareToGenerateSizedImageWithDescription:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:519 isFatal:0 description:"expected nil value for '%{public}s'", "_sizingState"];
  }

  [v4 size];
  v14 = v13;
  v16 = v15;
  if ([v4 hasBakedMask])
  {
    if (self->_sizedImage)
    {
      sizedImageOrientation = self->_sizedImageOrientation;
    }

    else
    {
      v19 = [(CRLImageRepDrawingHelper *)self p_validatedBitmapImageProvider];
      sizedImageOrientation = [v19 orientation];
    }

    v18 = [v6 imageDrawingHelper:self newMaskPathForSizedImageWithSize:sizedImageOrientation orientation:{v14, v16}];
  }

  else
  {
    v18 = 0;
  }

  v20 = [CRLImageRepSizingState alloc];
  v21 = [(CRLImageRepDrawingHelper *)self p_imageProvider];
  v22 = -[CRLImageRepSizingState initWithDesiredSize:provider:maskPath:wideGamutCanvas:](v20, "initWithDesiredSize:provider:maskPath:wideGamutCanvas:", v21, v18, [v4 isWideGamut], v14, v16);
  sizingState = self->_sizingState;
  self->_sizingState = v22;

  if (v18)
  {
    CGPathRelease(self->_sizedImageMaskPath);
    self->_sizedImageMaskPath = v18;
  }
}

- (void)p_startGeneratingSizedImage
{
  dispatch_assert_queue_not_V2(self->_sizedImageAccessQueue);
  v3 = [(CRLImageRepDrawingHelper *)self rep];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138AC9C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138ACB0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138AD44();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper p_startGeneratingSizedImage]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:540 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }

  v7 = [v3 imageDrawingHelperShouldGenerateSizedImageSynchronously:self];
  sizingState = self->_sizingState;
  if (v7)
  {
    if ([(CRLImageRepDrawingHelper *)self p_generateSizedImage:sizingState])
    {
      [v3 imageDrawingHelper:self didGenerateSizedImageSynchronously:1];
    }
  }

  else
  {
    v9 = sizingState;
    v10 = dispatch_get_global_queue(-2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100514D58;
    block[3] = &unk_10183AE00;
    v13 = v3;
    v14 = self;
    v15 = v9;
    v11 = v9;
    dispatch_async(v10, block);
  }
}

- (BOOL)p_generateSizedImage:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_sizedImageAccessQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  [v4 generateSizedImage];
  sizedImageAccessQueue = self->_sizedImageAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100514F40;
  block[3] = &unk_101860668;
  v9 = v4;
  v10 = self;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(sizedImageAccessQueue, block);
  LOBYTE(v4) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v4;
}

- (void)p_takeSizedImageFromStateIfReady
{
  dispatch_assert_queue_not_V2(self->_sizedImageAccessQueue);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  sizedImageAccessQueue = self->_sizedImageAccessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100515044;
  v4[3] = &unk_10183A0A8;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(sizedImageAccessQueue, v4);
  if (*(v6 + 24) == 1)
  {
    [(CRLImageRepDrawingHelper *)self p_retryGeneratingSizedImageIfPossible];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)p_retryGeneratingSizedImageIfPossible
{
  v3 = [(CRLImageRepDrawingHelper *)self p_imageProvider];
  if ([v3 isValid])
  {
    sizedImageAccessQueue = self->_sizedImageAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10051541C;
    block[3] = &unk_10183AB38;
    block[4] = self;
    dispatch_sync(sizedImageAccessQueue, block);
    [(CRLImageRepDrawingHelper *)self p_startGeneratingSizedImage];
  }
}

- (CGImage)sizedImage
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [(CRLImageRepDrawingHelper *)self p_takeSizedImageFromStateIfReady];
  sizedImageAccessQueue = self->_sizedImageAccessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100515554;
  v7[3] = &unk_101839FF8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(sizedImageAccessQueue, v7);
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

- (void)invalidateSizedImage
{
  sizedImageAccessQueue = self->_sizedImageAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100515600;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_sync(sizedImageAccessQueue, block);
}

- (void)invalidateSizedImageIfItHasBakedMask
{
  sizedImageAccessQueue = self->_sizedImageAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10051567C;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_sync(sizedImageAccessQueue, block);
}

- (void)invalidateSizedImageIfNeededForBakedMaskPathFromBlock:(id)a3
{
  v4 = a3;
  v5 = [(CRLImageRepDrawingHelper *)self rep];
  if (v5)
  {
    sizedImageAccessQueue = self->_sizedImageAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100515938;
    block[3] = &unk_10183FC10;
    block[4] = self;
    v11 = v4;
    dispatch_sync(sizedImageAccessQueue, block);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138AE3C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138AE50();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138AEE4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLImageRepDrawingHelper invalidateSizedImageIfNeededForBakedMaskPathFromBlock:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageRepDrawingHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:691 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }
}

- (void)p_invalidateSizedImageOnAccessQueue
{
  v3 = self->_sizedImageAccessQueue;
  if (v3 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v3);
  }

  sizingState = self->_sizingState;
  self->_sizingState = 0;

  CGImageRelease(self->_sizedImage);
  sizedImageDescription = self->_sizedImageDescription;
  self->_sizedImage = 0;
  self->_sizedImageDescription = 0;

  CGPathRelease(self->_sizedImageMaskPath);
  self->_sizedImageMaskPath = 0;
}

- (BOOL)isGeneratingSizedImageWithBakedMask
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sizedImageAccessQueue = self->_sizedImageAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100515D34;
  v5[3] = &unk_101839FF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sizedImageAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)retryGeneratingSizedImageIfNeeded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  sizedImageAccessQueue = self->_sizedImageAccessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100515E50;
  v4[3] = &unk_10183A0A8;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(sizedImageAccessQueue, v4);
  if (*(v6 + 24) == 1)
  {
    [(CRLImageRepDrawingHelper *)self generateSizedImageIfNeeded];
  }

  _Block_object_dispose(&v5, 8);
}

- (CRLImageRepDrawingDataSource)rep
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);

  return WeakRetained;
}

@end