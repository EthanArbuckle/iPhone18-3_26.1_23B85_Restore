@interface CRLInteractiveCanvasRepContentSubviewReuser
- (BOOL)canReuseUnmodifiedForRepContentPile:(id)a3;
- (CRLInteractiveCanvasRepContentSubviewReuser)initWithSubview:(id)a3 originalRepContentPile:(id)a4;
- (void)removeRepContentPlatformViews;
- (void)reuseForRepContentLayers:(id)a3;
@end

@implementation CRLInteractiveCanvasRepContentSubviewReuser

- (CRLInteractiveCanvasRepContentSubviewReuser)initWithSubview:(id)a3 originalRepContentPile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CRLInteractiveCanvasRepContentSubviewReuser;
  v8 = [(CRLInteractiveCanvasRepContentSubviewReuser *)&v16 init];
  if (v8)
  {
    if ([v7 conformsToProtocol:&OBJC_PROTOCOL___CRLInteractiveCanvasRepLayerPile])
    {
      v9 = [v6 layer];
      reusableSubviewLayer = v8->_reusableSubviewLayer;
      v8->_reusableSubviewLayer = v9;
    }

    else if ([v7 conformsToProtocol:&OBJC_PROTOCOL___CRLInteractiveCanvasRepContentPlatformViewPile])
    {
      objc_storeStrong(&v8->_originalRepContentPile, a4);
      reusableSubviewLayer = [v6 subviews];
      v11 = [reusableSubviewLayer copy];
      repContentPlatformViews = v8->_repContentPlatformViews;
      v8->_repContentPlatformViews = v11;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134CCD8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134CD00();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134CD94();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      reusableSubviewLayer = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentSubviewReuser initWithSubview:originalRepContentPile:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m"];
      [CRLAssertionHandler handleFailureInFunction:reusableSubviewLayer file:v14 lineNumber:455 isFatal:0 description:"Rep content pile did not implement either CRLInteractiveCanvasRepLayerPile or CRLInteractiveCanvasRepContentPlatformViewPile: %@", v7];
    }
  }

  return v8;
}

- (void)reuseForRepContentLayers:(id)a3
{
  v4 = a3;
  if (![(CRLInteractiveCanvasRepContentSubviewReuser *)self canReuseForRepContentLayersDuringBackgroundUpdate])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134CDBC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134CDD0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134CE58();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentSubviewReuser reuseForRepContentLayers:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:469 isFatal:0 description:"Reusing the subview for rep content layers must be allowed."];
  }

  v8 = [(CALayer *)self->_reusableSubviewLayer sublayers];
  v9 = [v4 isEqualToArray:v8];

  if ((v9 & 1) == 0)
  {
    [(CALayer *)self->_reusableSubviewLayer setSublayers:v4];
  }
}

- (BOOL)canReuseUnmodifiedForRepContentPile:(id)a3
{
  originalRepContentPile = self->_originalRepContentPile;
  if (originalRepContentPile)
  {
    LOBYTE(originalRepContentPile) = [(CRLInteractiveCanvasRepContentPile *)originalRepContentPile isContentEqualToContentOfRepContentPile:a3];
  }

  return originalRepContentPile;
}

- (void)removeRepContentPlatformViews
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134CE80();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134CE94();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134CF1C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentSubviewReuser removeRepContentPlatformViews]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:484 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_repContentPlatformViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) removeFromSuperview];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end