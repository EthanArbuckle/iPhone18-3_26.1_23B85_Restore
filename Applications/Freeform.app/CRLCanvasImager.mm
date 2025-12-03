@interface CRLCanvasImager
- (BOOL)drawPageInContext:(CGContext *)context createPage:(BOOL)page includeMargin:(BOOL)margin;
- (BOOL)isCanvasDrawingIntoPDF:(id)f;
- (BOOL)p_configureCanvas;
- (CGImage)newImage;
- (CGImage)p_newImageInReusableContext;
- (CGRect)actualScaledClipRect;
- (CGRect)unscaledClipRect;
- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)canvas;
- (CGSize)maximumImagePixelSize;
- (CGSize)p_evenDimensionsWithSize:(CGSize)size;
- (CGSize)scaledImageSize;
- (CRLCanvasImager)initWithBoard:(id)board renderForWideGamut:(BOOL)gamut;
- (NSString)boardTitle;
- (double)contentsScale;
- (double)viewScale;
- (id)boardItemOwnerForCanvas:(id)canvas;
- (id)generateImage;
- (id)getBoardItemForUUID:(id)d;
- (id)i_board;
- (id)pdfData;
- (id)pngData;
- (void)dealloc;
- (void)p_drawPageInContext:(CGContext *)context createPage:(BOOL)page includeMargin:(BOOL)margin;
- (void)setContentsScale:(double)scale;
- (void)setInfos:(id)infos allowLayoutIfNeeded:(BOOL)needed;
- (void)setMaximumImagePixelSize:(CGSize)size;
- (void)setPostRenderAction:(id)action;
- (void)setScaledImageSize:(CGSize)size;
- (void)setViewScale:(double)scale;
@end

@implementation CRLCanvasImager

- (CRLCanvasImager)initWithBoard:(id)board renderForWideGamut:(BOOL)gamut
{
  gamutCopy = gamut;
  boardCopy = board;
  if (!boardCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131B1B4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131B1C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131B278();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLCanvasImager initWithBoard:renderForWideGamut:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:83 isFatal:0 description:"invalid nil value for '%{public}s'", "board"];
  }

  v21.receiver = self;
  v21.super_class = CRLCanvasImager;
  v10 = [(CRLCanvasImager *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->mBoard, boardCopy);
    size = CGRectInfinite.size;
    v11->mUnscaledClipRect.origin = CGRectInfinite.origin;
    v11->mUnscaledClipRect.size = size;
    __asm { FMOV            V0.2D, #1.0 }

    *&v11->mViewScale = _Q0;
    v18 = objc_alloc_init(CRLCanvas);
    mCanvas = v11->mCanvas;
    v11->mCanvas = v18;

    [(CRLCanvas *)v11->mCanvas i_setCanvasIsWideGamut:gamutCopy];
    [(CRLCanvas *)v11->mCanvas setDelegate:v11];
  }

  return v11;
}

- (void)dealloc
{
  [(CRLCanvas *)self->mCanvas teardown];
  sub_10050D814(self->mReusableBitmapContext);
  CGContextRelease(self->mReusableBitmapContext);
  v3.receiver = self;
  v3.super_class = CRLCanvasImager;
  [(CRLCanvasImager *)&v3 dealloc];
}

- (NSString)boardTitle
{
  WeakRetained = objc_loadWeakRetained(&self->mBoard);
  title = [WeakRetained title];

  return title;
}

- (id)i_board
{
  WeakRetained = objc_loadWeakRetained(&self->mBoard);

  return WeakRetained;
}

- (void)setPostRenderAction:(id)action
{
  v4 = [action copy];
  mPostRenderAction = self->mPostRenderAction;
  self->mPostRenderAction = v4;
}

- (void)setInfos:(id)infos allowLayoutIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  infosCopy = infos;
  v8 = infosCopy;
  if (self->mInfos != infosCopy)
  {
    v30 = neededCopy;
    selfCopy = self;
    if (infosCopy && [(NSArray *)infosCopy count]&& self->mHasBeenUsed && !self->mMayBeReused)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131B2A0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131B2B4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131B33C();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLCanvasImager setInfos:allowLayoutIfNeeded:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:127 isFatal:0 description:"Should not reuse an imager unless it has been explicitly marked as safe to reuse"];
    }

    objc_storeStrong(&self->mInfos, infos);
    v12 = +[NSMutableDictionary dictionary];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v32 = v8;
    obj = v8;
    v13 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v34 = *v40;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v39 + 1) + 8 * i);
          v17 = objc_opt_class();
          v18 = sub_100014370(v17, v16);
          v19 = v18;
          if (v18)
          {
            v20 = [v18 id];
            [v12 setObject:v19 forKeyedSubscript:v20];

            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            additionalBoardItemsForUUIDBookkeepingForTemporaryCanvases = [v19 additionalBoardItemsForUUIDBookkeepingForTemporaryCanvases];
            v22 = [additionalBoardItemsForUUIDBookkeepingForTemporaryCanvases countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v36;
              do
              {
                for (j = 0; j != v23; j = j + 1)
                {
                  if (*v36 != v24)
                  {
                    objc_enumerationMutation(additionalBoardItemsForUUIDBookkeepingForTemporaryCanvases);
                  }

                  v26 = *(*(&v35 + 1) + 8 * j);
                  v27 = [v26 id];
                  [v12 setObject:v26 forKeyedSubscript:v27];
                }

                v23 = [additionalBoardItemsForUUIDBookkeepingForTemporaryCanvases countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v23);
            }
          }
        }

        v14 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v14);
    }

    v28 = [v12 copy];
    mItemsByUUID = selfCopy->mItemsByUUID;
    selfCopy->mItemsByUUID = v28;

    if (![(NSArray *)selfCopy->mInfos count])
    {
      [(CRLCanvas *)selfCopy->mCanvas setInfosToDisplay:selfCopy->mInfos];
      if (v30)
      {
        [(CRLCanvas *)selfCopy->mCanvas nonInteractiveLayoutIfNeeded];
      }
    }

    v8 = v32;
  }
}

- (double)viewScale
{
  if (self->mUseScaledImageSize)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131B364();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131B378();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131B400();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasImager viewScale]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:157 isFatal:0 description:"Cannot call viewScale if scaledImageSize has been set."];
  }

  return self->mViewScale;
}

- (void)setViewScale:(double)scale
{
  if (scale <= 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131B428();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131B43C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131B4C4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasImager setViewScale:]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:163 isFatal:0 description:"viewScale must be > 0.0"];
  }

  else
  {
    self->mViewScale = scale;
    self->mScaledImageSize = CGSizeZero;
    self->mUseScaledImageSize = 0;
  }
}

- (double)contentsScale
{
  if (self->mUseScaledImageSize)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131B4EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131B500();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131B588();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasImager contentsScale]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:173 isFatal:0 description:"Cannot call contentsScale if scaledImageSize has been set."];
  }

  return self->mContentsScale;
}

- (void)setContentsScale:(double)scale
{
  if (scale <= 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131B5B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131B5C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131B64C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasImager setContentsScale:]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:179 isFatal:0 description:"contentsScale must be > 0.0"];
  }

  else
  {
    self->mContentsScale = scale;
    self->mScaledImageSize = CGSizeZero;
    self->mUseScaledImageSize = 0;
  }
}

- (CGSize)scaledImageSize
{
  if (!self->mUseScaledImageSize)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131B674();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131B688();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131B710();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasImager scaledImageSize]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:189 isFatal:0 description:"Cannot call scaledImageSize if viewScale or contentsScale has been set."];
  }

  width = self->mScaledImageSize.width;
  height = self->mScaledImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setScaledImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width <= 0.0 || size.height <= 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131B738();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131B74C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131B7D4();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvasImager setScaledImageSize:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:194 isFatal:0 description:"can't make an image with 0 width or height"];
  }

  v10 = sub_10012211C(width);
  v11 = v9;
  if (width != v10 || height != v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131B7FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131B824();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131B8AC();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLCanvasImager setScaledImageSize:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:196 isFatal:0 description:"given a non-integral scaled image size"];
  }

  self->mScaledImageSize.width = v10;
  self->mScaledImageSize.height = v11;
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->mViewScale = _Q0;
  self->mUseScaledImageSize = 1;
}

- (CGSize)maximumImagePixelSize
{
  width = self->mMaximumImagePixelSize.width;
  height = self->mMaximumImagePixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setMaximumImagePixelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = sub_10012211C(size.width);
  v8 = v6;
  if (width != v7 || height != v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131B8D4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131B8E8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131B970();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLCanvasImager setMaximumImagePixelSize:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:209 isFatal:0 description:"given a non-integral maximum image size"];
  }

  self->mMaximumImagePixelSize.width = v7;
  self->mMaximumImagePixelSize.height = v8;
}

- (CGImage)newImage
{
  WeakRetained = objc_loadWeakRetained(&self->mBoard);
  if (!WeakRetained)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131B998();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131B9AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131BA5C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvasImager newImage]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:225 isFatal:0 description:"invalid nil value for '%{public}s'", "board"];

    goto LABEL_15;
  }

  if (![(CRLCanvasImager *)self p_configureCanvas])
  {
LABEL_15:
    p_newImageInReusableContext = 0;
    goto LABEL_21;
  }

  if (self->mUseScaledImageSize)
  {
    if ([(CRLCanvasImager *)self shouldReuseBitmapContext])
    {
      p_newImageInReusableContext = [(CRLCanvasImager *)self p_newImageInReusableContext];
      goto LABEL_19;
    }

    v8 = [(CRLCanvas *)self->mCanvas i_imageInScaledRect:self->mDistortedToMatch withTargetIntegralSize:self->mInfoToDrawBeneathFilter distortedToMatch:self->mActualScaledClipRect.origin.x keepingChildrenPassingTest:self->mActualScaledClipRect.origin.y, self->mActualScaledClipRect.size.width, self->mActualScaledClipRect.size.height, self->mScaledImageSize.width, self->mScaledImageSize.height];
  }

  else
  {
    v8 = [(CRLCanvas *)self->mCanvas i_imageInScaledRect:self->mInfoToDrawBeneathFilter keepingChildrenPassingTest:self->mActualScaledClipRect.origin.x, self->mActualScaledClipRect.origin.y, self->mActualScaledClipRect.size.width, self->mActualScaledClipRect.size.height];
  }

  p_newImageInReusableContext = v8;
  i_previousRenderDatasNeedingDownload = [(CRLCanvas *)self->mCanvas i_previousRenderDatasNeedingDownload];
  [(CRLCanvasImager *)self setPreviousRenderDatasNeedingDownload:i_previousRenderDatasNeedingDownload];

LABEL_19:
  mPostRenderAction = self->mPostRenderAction;
  if (mPostRenderAction)
  {
    mPostRenderAction[2](mPostRenderAction, 0, self->mCanvas);
  }

LABEL_21:
  self->mHasBeenUsed = 1;

  return p_newImageInReusableContext;
}

- (id)generateImage
{
  newImage = [(CRLCanvasImager *)self newImage];
  if (newImage)
  {
    v3 = newImage;
    v4 = [CRLImage imageWithCGImage:newImage];
    CGImageRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pngData
{
  newImage = [(CRLCanvasImager *)self newImage];
  if (newImage)
  {
    v3 = newImage;
    v4 = sub_1005357BC(newImage);
    CGImageRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pdfData
{
  if ([(CRLCanvasImager *)self p_configureCanvas])
  {
    v3 = objc_alloc_init(NSMutableData);
    v4 = v3;
    if (v3 && (v5 = CGDataConsumerCreateWithCFData(v3)) != 0)
    {
      v6 = v5;
      v13.origin.x = sub_10011ECB4();
      v13.origin.y = v7;
      v13.size.width = v8;
      v13.size.height = v9;
      v10 = CGPDFContextCreate(v6, &v13, 0);
      [(CRLCanvasImager *)self p_drawPageInContext:v10 createPage:1 includeMargin:0];
      CGPDFContextClose(v10);
      CGContextRelease(v10);
      v11 = v4;
      CGDataConsumerRelease(v6);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  self->mHasBeenUsed = 1;

  return v11;
}

- (BOOL)drawPageInContext:(CGContext *)context createPage:(BOOL)page includeMargin:(BOOL)margin
{
  marginCopy = margin;
  pageCopy = page;
  p_configureCanvas = [(CRLCanvasImager *)self p_configureCanvas];
  if (p_configureCanvas)
  {
    [(CRLCanvasImager *)self p_drawPageInContext:context createPage:pageCopy includeMargin:marginCopy];
  }

  return p_configureCanvas;
}

- (id)boardItemOwnerForCanvas:(id)canvas
{
  if (self->mCanvas != canvas)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131BA84();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131BA98();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131BB20();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLCanvasImager boardItemOwnerForCanvas:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:350 isFatal:0 description:"wrong canvas"];
  }

  return self;
}

- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)canvas
{
  mCanvas = self->mCanvas;
  if (mCanvas != canvas)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131BB48();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131BB5C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131BBE4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvasImager visibleScaledBoundsForClippingRepsOnCanvas:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:356 isFatal:0 description:"wrong canvas"];

    mCanvas = self->mCanvas;
  }

  [(CRLCanvas *)mCanvas viewScale];
  v9 = sub_10011FFD8(self->mUnscaledClipRect.origin.x, self->mUnscaledClipRect.origin.y, self->mUnscaledClipRect.size.width, self->mUnscaledClipRect.size.height, v8);
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (BOOL)isCanvasDrawingIntoPDF:(id)f
{
  if (self->mCanvas != f)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131BC0C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131BC20();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131BCA8();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLCanvasImager isCanvasDrawingIntoPDF:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:362 isFatal:0 description:"wrong canvas"];
  }

  return self->mDrawingIntoPDF;
}

- (id)getBoardItemForUUID:(id)d
{
  dCopy = d;
  v5 = [(NSDictionary *)self->mItemsByUUID objectForKeyedSubscript:dCopy];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->mBoard);
    v5 = [WeakRetained getBoardItemForUUID:dCopy];
  }

  return v5;
}

- (CGRect)actualScaledClipRect
{
  [(CRLCanvasImager *)self p_configureCanvas];
  x = self->mActualScaledClipRect.origin.x;
  y = self->mActualScaledClipRect.origin.y;
  width = self->mActualScaledClipRect.size.width;
  height = self->mActualScaledClipRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)p_configureCanvas
{
  [(CRLCanvas *)self->mCanvas setBackgroundColor:self->mBackgroundColor];
  [(CRLCanvas *)self->mCanvas setInfosToDisplay:self->mInfos];
  [(CRLCanvas *)self->mCanvas setEnableInstructionalText:[(CRLCanvasImager *)self shouldShowInstructionalText]];
  if ([(CRLCanvasImager *)self mayBeReused])
  {
    [(CRLCanvas *)self->mCanvas recreateAllLayoutsAndReps];
  }

  [(CRLCanvas *)self->mCanvas nonInteractiveLayoutIfNeeded];
  x = self->mUnscaledClipRect.origin.x;
  y = self->mUnscaledClipRect.origin.y;
  width = self->mUnscaledClipRect.size.width;
  height = self->mUnscaledClipRect.size.height;
  v77.origin.x = CGRectInfinite.origin.x;
  v77.origin.y = CGRectInfinite.origin.y;
  v77.size.width = CGRectInfinite.size.width;
  v77.size.height = CGRectInfinite.size.height;
  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  if (CGRectEqualToRect(v72, v77))
  {
    [(CRLCanvas *)self->mCanvas unscaledRectOfLayouts];
    x = v7;
    y = v8;
    width = v9;
    height = v10;
  }

  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  MinX = CGRectGetMinX(v73);
  v12 = fminf(MinX, 0.0);
  v74.origin.x = x;
  v74.origin.y = y;
  v74.size.width = width;
  v74.size.height = height;
  MinY = CGRectGetMinY(v74);
  v14 = fminf(MinY, 0.0);
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  MaxX = CGRectGetMaxX(v75);
  v16 = fmaxf(MaxX, 0.0);
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  MaxY = CGRectGetMaxY(v76);
  v18 = v16 - v12;
  v19 = fmaxf(MaxY, 0.0) - v14;
  v20 = v19 > 0.0 && v18 > 0.0;
  if (v20)
  {
    [(CRLCanvas *)self->mCanvas unscaledSize];
    if (v22 != v18 || v21 != v19)
    {
      [(CRLCanvas *)self->mCanvas setUnscaledSize:v18, v19];
      [(CRLCanvas *)self->mCanvas nonInteractiveLayoutIfNeeded];
    }

    if (self->mUseScaledImageSize)
    {
      v24 = self->mScaledImageSize.width / width;
      v25 = self->mScaledImageSize.height / height;
      mViewScale = fminf(v24, v25);
      mContentsScale = 1.0;
    }

    else
    {
      mViewScale = self->mViewScale;
      mContentsScale = self->mContentsScale;
    }

    v28 = self->mMaximumImagePixelSize.width;
    if (v28 != 0.0 || self->mMaximumImagePixelSize.height != 0.0)
    {
      if (self->mUseScaledImageSize)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10131BCD0();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10131BCE4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10131BD6C();
        }

        v29 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v29);
        }

        v30 = [NSString stringWithUTF8String:"[CRLCanvasImager p_configureCanvas]"];
        v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
        [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:448 isFatal:0 description:"Using a specific scaled image size and max image size at the same time is unsupported."];

        v28 = self->mMaximumImagePixelSize.width;
      }

      v32 = sub_10011F340(width, height, mViewScale);
      v34 = sub_10011F340(v32, v33, mContentsScale);
      v36 = self->mMaximumImagePixelSize.height;
      if (v34 > v28 || v35 > v36)
      {
        v37 = v34 / v28;
        if (v28 == 0.0)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = v37;
        }

        if (v36 == 0.0)
        {
          v39 = 0.0;
        }

        else
        {
          v39 = v35 / v36;
        }

        if (v38 == 0.0 && v39 == 0.0)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10131BD94();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10131BDBC();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10131BE44();
          }

          v40 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v40);
          }

          v41 = [NSString stringWithUTF8String:"[CRLCanvasImager p_configureCanvas]"];
          v42 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
          [CRLAssertionHandler handleFailureInFunction:v41 file:v42 lineNumber:455 isFatal:0 description:"both ratios in imager are zero!"];
        }

        if (v38 <= v39)
        {
          v43 = v39;
        }

        else
        {
          v43 = v38;
        }

        mViewScale = mViewScale * (1.0 / v43);
      }
    }

    [(CRLCanvas *)self->mCanvas setViewScale:mViewScale];
    [(CRLCanvas *)self->mCanvas i_setContentsScale:mContentsScale];
    [(CRLCanvas *)self->mCanvas viewScale];
    self->mActualScaledClipRect.origin.x = sub_10011FFD8(x, y, width, height, v44);
    self->mActualScaledClipRect.origin.y = v45;
    self->mActualScaledClipRect.size.width = v46;
    self->mActualScaledClipRect.size.height = v47;
    if (self->mUseScaledImageSize && self->mImageMustHaveEvenDimensions)
    {
      [(CRLCanvasImager *)self p_evenDimensionsWithSize:v46, v47];
      self->mActualScaledClipRect.size.width = v48;
      self->mActualScaledClipRect.size.height = v49;
      [(CRLCanvasImager *)self p_evenDimensionsWithSize:self->mScaledImageSize.width, self->mScaledImageSize.height];
      self->mScaledImageSize.width = v50;
      self->mScaledImageSize.height = v51;
    }

    if (self->mInfoToDrawBeneath)
    {
      v52 = objc_alloc_init(NSMutableSet);
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      allRepsOrdered = [(CRLCanvas *)self->mCanvas allRepsOrdered];
      v54 = [allRepsOrdered countByEnumeratingWithState:&v67 objects:v71 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v68;
LABEL_58:
        v57 = 0;
        while (1)
        {
          if (*v68 != v56)
          {
            objc_enumerationMutation(allRepsOrdered);
          }

          v58 = *(*(&v67 + 1) + 8 * v57);
          info = [v58 info];
          mInfoToDrawBeneath = self->mInfoToDrawBeneath;

          if (info == mInfoToDrawBeneath)
          {
            break;
          }

          [v52 addObject:v58];
          if (v55 == ++v57)
          {
            v55 = [allRepsOrdered countByEnumeratingWithState:&v67 objects:v71 count:16];
            if (v55)
            {
              goto LABEL_58;
            }

            break;
          }
        }
      }

      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_100139048;
      v65[3] = &unk_10183F5F8;
      v66 = v52;
      v61 = v52;
      v62 = [v65 copy];
      mInfoToDrawBeneathFilter = self->mInfoToDrawBeneathFilter;
      self->mInfoToDrawBeneathFilter = v62;
    }

    else
    {
      v61 = self->mInfoToDrawBeneathFilter;
      self->mInfoToDrawBeneathFilter = 0;
    }
  }

  return v20;
}

- (CGSize)p_evenDimensionsWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  *v5.i64 = sub_100122154(size.width, size.height);
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 0.5) * 2.0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  *v10.i64 = *v5.i64 - trunc(*v5.i64 * 0.5) * 2.0;
  *&v11 = vbslq_s8(v9, v10, v5).u64[0];
  if (*vbslq_s8(v9, v7, v6).i64 == 0.0)
  {
    v12 = *v6.i64;
    if (v11 == 0.0)
    {
      v12 = height;
      goto LABEL_22;
    }
  }

  else
  {
    v12 = *v6.i64 + -1.0;
  }

  if (v11 == 0.0)
  {
    width = *v5.i64;
  }

  else
  {
    width = *v5.i64 + -1.0;
  }

  if (width > *v5.i64 || v12 > *v6.i64)
  {
    v21 = v6.i64[0];
    v22 = v5.i64[0];
    v14 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131BE6C();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110914;
      v24 = v14;
      v25 = 2082;
      v26 = "[CRLCanvasImager p_evenDimensionsWithSize:]";
      v27 = 2082;
      v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m";
      v29 = 1024;
      v30 = 509;
      v31 = 2048;
      v32 = width;
      v33 = 2048;
      v34 = v12;
      v35 = 2048;
      v36 = v22;
      v37 = 2048;
      v38 = v21;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d New image dimensions (%f, %f) not calculated as expected from original size (%f, %f)! Image may be the wrong size.", buf, 0x4Au);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131BE80();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v16);
    }

    v17 = [NSString stringWithUTF8String:"[CRLCanvasImager p_evenDimensionsWithSize:]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:509 isFatal:0 description:"New image dimensions (%f, %f) not calculated as expected from original size (%f, %f)! Image may be the wrong size.", *&width, *&v12, v22, v21];
  }

LABEL_22:
  v19 = width;
  v20 = v12;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)p_drawPageInContext:(CGContext *)context createPage:(BOOL)page includeMargin:(BOOL)margin
{
  marginCopy = margin;
  pageCopy = page;
  self->mDrawingIntoPDF = 1;
  sub_10050DE7C(context, [(CRLCanvasImager *)self isPrinting], self->mDrawingIntoPDF, 0, [(CRLCanvas *)self->mCanvas shouldSuppressBackgrounds], 1.0);
  v9 = 36.0;
  if (!marginCopy)
  {
    v9 = 0.0;
  }

  v10 = self->mActualScaledClipRect.origin.x - v9;
  v11 = self->mActualScaledClipRect.origin.y - v9;
  v12 = self->mActualScaledClipRect.size.width + v9 * 2.0;
  v13 = self->mActualScaledClipRect.size.height + v9 * 2.0;
  if (pageCopy)
  {
    v19.origin.x = sub_10011ECB4();
    v19.origin.y = v14;
    v19.size.width = v15;
    v19.size.height = v16;
    CGContextBeginPage(context, &v19);
  }

  CGContextTranslateCTM(context, 0.0, v13);
  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextTranslateCTM(context, -v10, -v11);
  v20.origin.x = v10;
  v20.origin.y = v11;
  v20.size.width = v12;
  v20.size.height = v13;
  CGContextClipToRect(context, v20);
  sub_100510D7C(context);
  [(CRLCanvas *)self->mCanvas i_drawBackgroundInContext:context];
  [(CRLCanvas *)self->mCanvas i_drawRepsInContext:context passingTest:self->mInfoToDrawBeneathFilter];
  v17 = sub_1005113C0(context);
  [(CRLCanvasImager *)self setPreviousRenderDatasNeedingDownload:v17];

  mPostRenderAction = self->mPostRenderAction;
  if (mPostRenderAction)
  {
    mPostRenderAction[2](mPostRenderAction, context, self->mCanvas);
  }

  if (pageCopy)
  {
    CGContextEndPage(context);
  }

  sub_10050D814(context);
  self->mDrawingIntoPDF = 0;
}

- (CGImage)p_newImageInReusableContext
{
  if (![(CRLCanvasImager *)self shouldReuseBitmapContext])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131BEA8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131BEBC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131BF44();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasImager p_newImageInReusableContext]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasImager.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:567 isFatal:0 description:"shouldn't be reusing context"];
  }

  if (!self->mReusableBitmapContext)
  {
    goto LABEL_19;
  }

  if (!CGRectEqualToRect(self->mReusableActualScaledClipRect, self->mActualScaledClipRect) || (self->mReusableScaledImageSize.width == self->mScaledImageSize.width ? (v6 = self->mReusableScaledImageSize.height == self->mScaledImageSize.height) : (v6 = 0), !v6))
  {
    mReusableBitmapContext = self->mReusableBitmapContext;
    if (mReusableBitmapContext)
    {
      sub_10050D814(mReusableBitmapContext);
      CGContextRelease(self->mReusableBitmapContext);
      self->mReusableBitmapContext = 0;
    }

LABEL_19:
    v8 = [(CRLCanvas *)self->mCanvas i_createContextToDrawImageInScaledRect:self->mDistortedToMatch withTargetIntegralSize:&self->mReusableBounds distortedToMatch:&self->mReusableIntegralBounds returningBounds:self->mActualScaledClipRect.origin.x integralBounds:self->mActualScaledClipRect.origin.y, self->mActualScaledClipRect.size.width, self->mActualScaledClipRect.size.height, self->mScaledImageSize.width, self->mScaledImageSize.height];
    self->mReusableBitmapContext = v8;
    sub_10050DE7C(v8, [(CRLCanvasImager *)self isPrinting], self->mDrawingIntoPDF, 0, [(CRLCanvas *)self->mCanvas shouldSuppressBackgrounds], 1.0);
    size = self->mActualScaledClipRect.size;
    self->mReusableActualScaledClipRect.origin = self->mActualScaledClipRect.origin;
    self->mReusableActualScaledClipRect.size = size;
    self->mReusableScaledImageSize = self->mScaledImageSize;
    goto LABEL_20;
  }

  mBackgroundColor = self->mBackgroundColor;
  if (!mBackgroundColor || ([(CRLColor *)mBackgroundColor alphaComponent], v14 < 1.0))
  {
    v15.origin.x = CGRectInfinite.origin.x;
    v15.origin.y = CGRectInfinite.origin.y;
    v15.size.width = CGRectInfinite.size.width;
    v15.size.height = CGRectInfinite.size.height;
    CGContextClearRect(self->mReusableBitmapContext, v15);
  }

LABEL_20:
  sub_100510D7C(self->mReusableBitmapContext);
  v10 = [(CRLCanvas *)self->mCanvas i_newImageInContext:self->mReusableBitmapContext bounds:self->mDistortedToMatch integralBounds:self->mInfoToDrawBeneathFilter distortedToMatch:self->mReusableBounds.origin.x keepingChildrenPassingTest:self->mReusableBounds.origin.y, self->mReusableBounds.size.width, self->mReusableBounds.size.height, self->mReusableIntegralBounds.origin.x, self->mReusableIntegralBounds.origin.y, self->mReusableIntegralBounds.size.width, self->mReusableIntegralBounds.size.height];
  v11 = sub_1005113C0(self->mReusableBitmapContext);
  [(CRLCanvasImager *)self setPreviousRenderDatasNeedingDownload:v11];

  return v10;
}

- (CGRect)unscaledClipRect
{
  x = self->mUnscaledClipRect.origin.x;
  y = self->mUnscaledClipRect.origin.y;
  width = self->mUnscaledClipRect.size.width;
  height = self->mUnscaledClipRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end