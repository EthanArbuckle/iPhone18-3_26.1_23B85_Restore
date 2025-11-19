@interface THWOverlayableZoomableCanvasController
- (BOOL)allowsPinchZoom;
- (BOOL)createLayerHostIfNeededWithFrame:(CGRect)a3;
- (BOOL)createViewIfNeededWithFrame:(CGRect)a3;
- (BOOL)interactiveCanvasController:(id)a3 allowsEditMenuForRep:(id)a4;
- (BOOL)interactiveCanvasController:(id)a3 canvasViewShouldBecomeFirstResponder:(id)a4;
- (BOOL)interactiveCanvasControllerShouldResampleImages:(id)a3;
- (BOOL)isDragging;
- (BOOL)isScrollEnabled;
- (BOOL)isZoomedOut;
- (CALayer)alternateLayerForView;
- (CALayer)layer;
- (CGAffineTransform)contentViewTransform;
- (CGAffineTransform)p_containerBoundsToContentBoundsTransform;
- (CGAffineTransform)p_contentBoundsToContainerBoundsTransform;
- (CGAffineTransform)p_contentBoundsToUnscaledTransform;
- (CGAffineTransform)p_contentUnscaledToBoundsTransform;
- (CGPoint)contentOffset;
- (CGPoint)p_clampContentOffset:(CGPoint)a3 forViewScale:(double)a4;
- (CGPoint)scaledContainerPointFromUnscaledContentPoint:(CGPoint)a3;
- (CGPoint)unscaledContainerPointFromUnscaledContentPoint:(CGPoint)a3;
- (CGRect)contentViewFrame;
- (CGRect)frame;
- (CGRect)interactiveCanvasController:(id)a3 expandBoundsForHitTesting:(CGRect)a4;
- (CGRect)scaledContentRectFromUnscaledContainerRect:(CGRect)a3;
- (CGRect)targetVisibleRect;
- (CGRect)unscaledContentRectFromUnscaledContainerRect:(CGRect)a3;
- (THWOverlayableZoomableCanvasController)initWithFrame:(CGRect)a3 documentRoot:(id)a4 delegate:(id)a5;
- (UIEdgeInsets)contentInset;
- (id)additionalGestureTargetsForInteractiveCanvasController:(id)a3 gesture:(id)a4;
- (id)interactiveCanvasController:(id)a3 delegateConformingToProtocol:(id)a4 forRep:(id)a5;
- (id)interactiveCanvasController:(id)a3 layoutGeometryProviderForLayout:(id)a4;
- (id)interactiveCanvasController:(id)a3 primaryTargetForGesture:(id)a4;
- (void)dealloc;
- (void)interactiveCanvasController:(id)a3 layoutRegistered:(id)a4;
- (void)interactiveCanvasController:(id)a3 layoutUnregistered:(id)a4;
- (void)interactiveCanvasController:(id)a3 willAnimateScrollToVisibleUnscaledRect:(CGRect)a4;
- (void)interactiveCanvasController:(id)a3 willLayoutRep:(id)a4;
- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)a3 stillAnimating:(BOOL)a4;
- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)a3;
- (void)interactiveCanvasControllerDidScroll:(id)a3;
- (void)interactiveCanvasControllerDidZoom:(id)a3;
- (void)interactiveCanvasControllerWillZoom:(id)a3;
- (void)invalidateLayers;
- (void)p_rebuild;
- (void)p_setViewScale:(double)a3 contentOffset:(CGPoint)a4 completion:(id)a5;
- (void)p_updateContainerInfosToDisplay;
- (void)p_updateContentInfosToDisplay;
- (void)p_updateInfosToDisplay:(id)a3 forICC:(id)a4;
- (void)p_updateRasterizeOnLayer;
- (void)p_updateScrollViewWithDelegate;
- (void)p_updateSubviewsOrLayers;
- (void)p_updateWithDelegate;
- (void)screenScaleDidChange;
- (void)setAllowsPinchZoom:(BOOL)a3;
- (void)setBackgroundLayer:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setDelegate:(id)a3;
- (void)setNaturalFrame:(CGRect)a3 scale:(double)a4;
- (void)setRasterize:(BOOL)a3;
- (void)setScrollEnabled:(BOOL)a3;
- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 animationDuration:(double)a5 completion:(id)a6;
- (void)setupImmediatePressGesture;
- (void)teardownController;
- (void)teardownView;
@end

@implementation THWOverlayableZoomableCanvasController

- (CALayer)alternateLayerForView
{
  if (self->_containerView)
  {
    return 0;
  }

  else
  {
    return self->_containerLayer;
  }
}

- (CALayer)layer
{
  containerView = self->_containerView;
  if (containerView)
  {
    return [(UIView *)containerView layer];
  }

  else
  {
    return self->_containerLayer;
  }
}

- (UIEdgeInsets)contentInset
{
  v2 = [(THWOverlayableZoomableCanvasController *)self scrollView];

  [(TSKScrollView *)v2 contentInset];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(THWOverlayableZoomableCanvasController *)self scrollView];

  [(TSKScrollView *)v7 setContentInset:top, left, bottom, right];
}

- (CGPoint)contentOffset
{
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] contentOffset];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] viewScale];

  TSDMultiplyPointScalar();
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)contentViewFrame
{
  v2 = [(TSDCanvasLayerHosting *)self->mScrollContentLayerHost canvasView];

  [v2 frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGAffineTransform)contentViewTransform
{
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] viewScale];

  return CGAffineTransformMakeScale(retstr, v4, v4);
}

- (BOOL)isScrollEnabled
{
  v2 = [(THWOverlayableZoomableCanvasController *)self scrollView];

  return [(TSKScrollView *)v2 isScrollEnabled];
}

- (void)setScrollEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(THWOverlayableZoomableCanvasController *)self scrollView];

  [(TSKScrollView *)v4 setScrollEnabled:v3];
}

- (THWOverlayableZoomableCanvasController)initWithFrame:(CGRect)a3 documentRoot:(id)a4 delegate:(id)a5
{
  v15.receiver = self;
  v15.super_class = THWOverlayableZoomableCanvasController;
  v7 = [(THWOverlayableZoomableCanvasController *)&v15 init:a3.origin.x];
  v8 = v7;
  if (v7)
  {
    [(THWOverlayableZoomableCanvasController *)v7 setTargetVisibleRect:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
    __asm { FMOV            V0.2D, #1.0 }

    *&v8->mUniformScale = _Q0;
    v8->_documentRoot = a4;
    v8->_delegate = a5;
  }

  return v8;
}

- (void)dealloc
{
  self->mScrollContainerLayerHost = 0;
  [(TSDInteractiveCanvasController *)self->mScrollContainerICC setDelegate:0];

  self->mScrollContainerICC = 0;
  self->mScrollContentLayerHost = 0;
  [(TSDInteractiveCanvasController *)self->mScrollContentICC setDelegate:0];

  self->mScrollContentICC = 0;
  self->mScrollView = 0;

  self->_documentRoot = 0;
  self->mContainerClippingLayerHost = 0;

  self->mContentClippingLayerHost = 0;
  self->_backgroundView = 0;

  self->_backgroundLayer = 0;
  self->_containerView = 0;

  self->_containerViewController = 0;
  self->_containerLayer = 0;

  self->mChildViewControllers = 0;
  v3.receiver = self;
  v3.super_class = THWOverlayableZoomableCanvasController;
  [(THWOverlayableZoomableCanvasController *)&v3 dealloc];
}

- (BOOL)createLayerHostIfNeededWithFrame:(CGRect)a3
{
  p_mScrollContainerICC = &self->mScrollContainerICC;
  if (self->mScrollContainerICC)
  {
    return 0;
  }

  p_mContainerClippingLayerHost = &self->mContainerClippingLayerHost;
  if (self->mContainerClippingLayerHost || self->mScrollContentICC || self->mContentClippingLayerHost || self->_containerLayer)
  {
    return 0;
  }

  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
  self->_containerLayer = v12;
  [(CALayer *)v12 setFrame:x, y, width, height];
  v6 = 1;
  [(CALayer *)self->_containerLayer setMasksToBounds:1];
  THCanvasAndClippingLayerHostCreateWithClass(self, p_mScrollContainerICC, p_mContainerClippingLayerHost, 0);
  [(TSDInteractiveCanvasController *)self->mScrollContainerICC setNestedCanvasAllowLayoutAndRenderOnThread:1];
  [(TSDInteractiveCanvasController *)self->mScrollContainerICC setCreateRepsForOffscreenLayouts:1];
  mContainerClippingLayerHost = self->mContainerClippingLayerHost;
  TSDRectWithSize();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(THWClippingLayerHost *)mContainerClippingLayerHost setFrame:?];
  THCanvasAndClippingLayerHostCreateWithClass(self, &self->mScrollContentICC, &self->mContentClippingLayerHost, 0);
  [(TSDInteractiveCanvasController *)self->mScrollContentICC setNestedCanvasAllowLayoutAndRenderOnThread:1];
  [(TSDInteractiveCanvasController *)self->mScrollContentICC setCreateRepsForOffscreenLayouts:1];
  [(THWClippingLayerHost *)self->mContentClippingLayerHost setFrame:v15, v17, v19, v21];
  [(CALayer *)[(THWClippingLayerHost *)self->mContentClippingLayerHost clippingLayer] setMasksToBounds:0];
  v22 = [(TSDInteractiveCanvasController *)self->mScrollContainerICC canvas];
  [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasControllerContentsScale:self];
  [v22 i_setContentsScale:?];
  v23 = [(TSDInteractiveCanvasController *)self->mScrollContentICC canvas];
  [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasControllerContentsScale:self];
  [v23 i_setContentsScale:?];
  [(THWOverlayableZoomableCanvasController *)self setNaturalFrame:x scale:y, width, height, 1.0];
  [(THWOverlayableZoomableCanvasController *)self p_updateRasterizeOnLayer];
  [(THWOverlayableZoomableCanvasController *)self p_updateSubviewsOrLayers];
  return v6;
}

- (void)p_updateSubviewsOrLayers
{
  if (self->_containerView)
  {
    mScrollView = self->mScrollView;
    v32[0] = self->_backgroundView;
    v32[1] = mScrollView;
    v32[2] = [(TSDInteractiveCanvasController *)self->mScrollContainerICC canvasView];
    v4 = [NSArray arrayWithObjects:v32 count:3];
    v5 = [(NSArray *)[(UIView *)self->_containerView subviews] copy];
    if (![(NSArray *)v4 isEqualToArray:v5])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v25;
        do
        {
          v9 = 0;
          do
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v24 + 1) + 8 * v9) removeFromSuperview];
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v24 objects:v31 count:16];
        }

        while (v7);
      }

      mChildViewControllers = self->mChildViewControllers;
      if (mChildViewControllers)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [(NSMutableArray *)mChildViewControllers countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            v14 = 0;
            do
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(mChildViewControllers);
              }

              [*(*(&v20 + 1) + 8 * v14) removeFromParentViewController];
              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [(NSMutableArray *)mChildViewControllers countByEnumeratingWithState:&v20 objects:v30 count:16];
          }

          while (v12);
        }

        [(NSMutableArray *)self->mChildViewControllers removeAllObjects];
      }

      else
      {
        self->mChildViewControllers = objc_alloc_init(NSMutableArray);
      }

      v16 = [(TSDCanvasLayerHosting *)self->mScrollContentLayerHost viewController];
      if (v16)
      {
        v17 = v16;
        [(UIViewController *)self->_containerViewController addChildViewController:v16];
        [(NSMutableArray *)self->mChildViewControllers addObject:v17];
      }

      v18 = [(TSDCanvasLayerHosting *)self->mScrollContainerLayerHost viewController];
      if (v18)
      {
        v19 = v18;
        [(UIViewController *)self->_containerViewController addChildViewController:v18];
        [(NSMutableArray *)self->mChildViewControllers addObject:v19];
      }

      [(UIView *)self->_containerView addSubview:self->_backgroundView];
      [(UIView *)self->_containerView addSubview:self->mScrollView];
      [(UIView *)self->_containerView addSubview:[(TSDInteractiveCanvasController *)self->mScrollContainerICC canvasView]];
    }
  }

  else if (self->_containerLayer && self->_backgroundLayer)
  {
    v29[0] = [(THWClippingLayerHost *)self->mContentClippingLayerHost layer];
    v29[1] = [(THWClippingLayerHost *)self->mContainerClippingLayerHost layer];
    v15 = [NSArray arrayWithObjects:v29 count:2];
    if (self->_backgroundLayer)
    {
      backgroundLayer = self->_backgroundLayer;
      v15 = [[NSArray arrayWithObjects:1 count:?], "arrayByAddingObjectsFromArray:", v15];
    }

    if (![(NSArray *)v15 isEqualToArray:[(CALayer *)self->_containerLayer sublayers]])
    {
      [(CALayer *)self->_containerLayer setSublayers:v15];
    }
  }
}

- (void)screenScaleDidChange
{
  v3 = [(TSDInteractiveCanvasController *)self->mScrollContainerICC canvas];
  [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasControllerContentsScale:self];
  [v3 i_setContentsScale:?];
  v4 = [(TSDInteractiveCanvasController *)self->mScrollContentICC canvas];
  [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasControllerContentsScale:self];
  [v4 i_setContentsScale:?];
  height = self->mNaturalFrame.size.height;
  mUniformScale = self->mUniformScale;
  x = self->mNaturalFrame.origin.x;
  y = self->mNaturalFrame.origin.y;
  width = self->mNaturalFrame.size.width;

  [(THWOverlayableZoomableCanvasController *)self setNaturalFrame:x scale:y, width, height, mUniformScale];
}

- (void)p_updateRasterizeOnLayer
{
  mContainerClippingLayerHost = self->mContainerClippingLayerHost;
  if (mContainerClippingLayerHost)
  {
    v4 = [(THWClippingLayerHost *)mContainerClippingLayerHost clippingLayer];
  }

  else
  {
    v4 = [(UIView *)[(THWOverlayableZoomableCanvasController *)self view] layer];
  }

  v5 = v4;
  [-[TSDInteractiveCanvasController canvas](self->mScrollContainerICC "canvas")];
  [(CALayer *)v5 setRasterizationScale:?];
  [(CALayer *)v5 setShouldRasterize:self->_rasterize];
  rasterize = self->_rasterize;

  [(CALayer *)v5 spi_setPreloadsCache:rasterize];
}

- (void)setRasterize:(BOOL)a3
{
  if (self->_rasterize != a3)
  {
    self->_rasterize = a3;
    [(THWOverlayableZoomableCanvasController *)self p_updateRasterizeOnLayer];
  }
}

- (BOOL)createViewIfNeededWithFrame:(CGRect)a3
{
  p_mScrollContainerLayerHost = &self->mScrollContainerLayerHost;
  if (self->mScrollContainerLayerHost)
  {
    return 0;
  }

  p_mScrollContentLayerHost = &self->mScrollContentLayerHost;
  if (self->mScrollContentLayerHost)
  {
    return 0;
  }

  if (self->_containerView)
  {
    return 0;
  }

  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (([(THWOverlayableZoomableCanvasControllerDelegate *)self->_delegate overlayableZoomableCanvasControllerDeferViewCreation:self]& 1) != 0)
  {
    return 0;
  }

  v11 = [[UIView alloc] initWithFrame:{x, y, width, height}];
  self->_containerView = v11;
  [(UIView *)v11 setClipsToBounds:1];
  v12 = objc_alloc_init(UIViewController);
  self->_containerViewController = v12;
  [(UIViewController *)v12 setView:self->_containerView];
  v13 = objc_opt_class();
  THCanvasCreateWithClass(self, &self->mScrollContainerICC, p_mScrollContainerLayerHost, v13, 0);
  [(TSDInteractiveCanvasController *)self->mScrollContainerICC disableAllGestures];
  [-[TSDCanvasLayerHosting canvasLayer](self->mScrollContainerLayerHost "canvasLayer")];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContainerICC] setNestedCanvasAllowLayoutAndRenderOnThread:0];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContainerICC] setAllowLayoutAndRenderOnThread:1];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContainerICC] setCreateRepsForOffscreenLayouts:1];
  mContainerClippingLayerHost = self->mContainerClippingLayerHost;
  if (mContainerClippingLayerHost)
  {
    [(THWClippingLayerHost *)mContainerClippingLayerHost setInteractiveCanvasController:0];
    [(THWClippingLayerHost *)self->mContainerClippingLayerHost teardownAndTransferCanvasLayersToHost:self->mScrollContainerLayerHost];

    self->mContainerClippingLayerHost = 0;
  }

  v15 = objc_opt_class();
  v16 = objc_opt_class();
  THCanvasAndScrollViewCreateWithClass(self, &self->mScrollContentICC, p_mScrollContentLayerHost, &self->mScrollView, v15, 0, v16);
  [(TSDInteractiveCanvasController *)self->mScrollContentICC disableAllGestures];
  [objc_msgSend(-[TSDCanvasLayerHosting canvasView](self->mScrollContentLayerHost "canvasView")];
  [objc_msgSend(-[TSDInteractiveCanvasController canvasView](self->mScrollContentICC "canvasView")];
  [(THWOverlayableZoomableCanvasController *)self p_updateScrollViewWithDelegate];
  [(TSKScrollView *)[(THWOverlayableZoomableCanvasController *)self scrollView] hideScrollIndicators];
  [-[TSKScrollView layer](-[THWOverlayableZoomableCanvasController scrollView](self "scrollView")];
  [(TSKScrollView *)[(THWOverlayableZoomableCanvasController *)self scrollView] setBackgroundColor:+[UIColor clearColor]];
  [(TSKScrollView *)[(THWOverlayableZoomableCanvasController *)self scrollView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  [(TSKScrollView *)[(THWOverlayableZoomableCanvasController *)self scrollView] setClipsToBounds:0];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] setNestedCanvasAllowLayoutAndRenderOnThread:0];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] setAllowLayoutAndRenderOnThread:1];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] setCreateRepsForOffscreenLayouts:1];
  mContentClippingLayerHost = self->mContentClippingLayerHost;
  if (mContentClippingLayerHost)
  {
    [(THWClippingLayerHost *)mContentClippingLayerHost setInteractiveCanvasController:0];
    [(THWClippingLayerHost *)self->mContentClippingLayerHost teardownAndTransferCanvasLayersToHost:self->mScrollContentLayerHost];

    self->mContentClippingLayerHost = 0;
  }

  self->_containerLayer = 0;
  size = CGRectNull.size;
  self->mNaturalFrame.origin = CGRectNull.origin;
  self->mNaturalFrame.size = size;
  [(THWOverlayableZoomableCanvasController *)self setNaturalFrame:x scale:y, width, height, 1.0];
  [(THWOverlayableZoomableCanvasController *)self p_updateRasterizeOnLayer];
  v19 = [THWOverlayableZoomableBackgroundView alloc];
  TSDRectWithSize();
  v20 = [(THWOverlayableZoomableBackgroundView *)v19 initWithFrame:?];
  self->_backgroundView = v20;
  [(THLayerContainingView *)v20 setAllowLayerDelegate:1];
  if (self->_backgroundLayer)
  {
    [(THLayerContainingView *)self->_backgroundView addSublayer:?];
  }

  [(THWOverlayableZoomableCanvasController *)self p_updateSubviewsOrLayers];
  return 1;
}

- (void)setNaturalFrame:(CGRect)a3 scale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_containerView)
  {
    memset(&v52, 0, sizeof(v52));
    CGAffineTransformMakeScale(&v52, a4, a4);
    v51 = v52;
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    CGRectApplyAffineTransform(v53, &v51);
    v49 = a4;
    v10 = width;
    [-[TSDInteractiveCanvasController canvas](self->mScrollContainerICC "canvas")];
    TSDRoundedRectForScale();
    v50 = v11;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = v10;
    v56.size.height = height;
    if (!CGRectEqualToRect(self->mNaturalFrame, v56) || (mUniformScale = self->mUniformScale, mUniformScale != v49) && vabdd_f64(mUniformScale, v49) >= fabs(v49 * 0.000000999999997) || (([(UIView *)self->_containerView frame], v50 == v20) ? (v21 = v13 == v19) : (v21 = 0), !v21))
    {
      if ([(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] animatingViewScale])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      +[CATransaction begin];
      self->mNaturalFrame.origin.x = x;
      self->mNaturalFrame.origin.y = y;
      self->mNaturalFrame.size.width = v10;
      self->mNaturalFrame.size.height = height;
      self->mUniformScale = v49;
      [(UIView *)self->_containerView setFrame:v50, v13, v15, v17];
      TSDRectWithSize();
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      [(THWOverlayableZoomableBackgroundView *)self->_backgroundView setFrame:?];
      [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWOverlayableZoomableCanvasController scrollContainerICC](self "scrollContainerICC")];
      [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWOverlayableZoomableCanvasController scrollContainerICC](self "scrollContainerICC")];
      [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] contentOffset];
      v31 = v30;
      v33 = v32;
      [(TSKScrollView *)[(THWOverlayableZoomableCanvasController *)self scrollView] setFrame:v23, v25, v27, v29];
      [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWOverlayableZoomableCanvasController scrollContentICC](self "scrollContentICC")];
      [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] setContentOffset:0 animated:v31, v33];
      [(THWOverlayableZoomableCanvasController *)self p_rebuild];
LABEL_19:
      +[CATransaction commit];
    }
  }

  else if (self->mContainerClippingLayerHost)
  {
    if (!CGRectEqualToRect(self->mNaturalFrame, a3) || (v34 = self->mUniformScale, v34 != a4) && vabdd_f64(v34, a4) >= fabs(a4 * 0.000000999999997))
    {
      if ([(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] animatingViewScale])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      +[CATransaction begin];
      self->mNaturalFrame.origin.x = x;
      self->mNaturalFrame.origin.y = y;
      self->mNaturalFrame.size.width = width;
      self->mNaturalFrame.size.height = height;
      self->mUniformScale = a4;
      memset(&v52, 0, sizeof(v52));
      CGAffineTransformMakeScale(&v52, a4, a4);
      v51 = v52;
      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      v55 = CGRectApplyAffineTransform(v54, &v51);
      v35 = width;
      [(CALayer *)self->_containerLayer setFrame:v55.origin.x, v55.origin.y];
      [(TSDCanvasLayer *)[(THWClippingLayerHost *)self->mContainerClippingLayerHost canvasLayer] setUnscaledSize:width, height];
      [(TSDCanvasLayer *)[(THWClippingLayerHost *)self->mContainerClippingLayerHost canvasLayer] setViewScale:a4];
      TSDRectWithSize();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      [(CALayer *)[(THWClippingLayerHost *)self->mContainerClippingLayerHost clippingLayer] setFrame:v36, v38, v40, v42];
      mScrollContentICC = self->mScrollContentICC;
      [(THWClippingLayerHost *)self->mContentClippingLayerHost contentOffset];
      [(TSDInteractiveCanvasController *)mScrollContentICC convertBoundsToUnscaledPoint:?];
      v46 = v45;
      v48 = v47;
      [(TSDCanvasLayer *)[(THWClippingLayerHost *)self->mContentClippingLayerHost canvasLayer] setUnscaledSize:v35, height];
      [(TSDCanvasLayer *)[(THWClippingLayerHost *)self->mContentClippingLayerHost canvasLayer] setViewScale:self->mUniformScale * self->mContentScale];
      [(CALayer *)[(THWClippingLayerHost *)self->mContentClippingLayerHost clippingLayer] setFrame:v37, v39, v41, v43];
      [(TSDInteractiveCanvasController *)self->mScrollContentICC convertUnscaledToBoundsPoint:v46, v48];
      [(THWClippingLayerHost *)self->mContentClippingLayerHost setContentOffset:?];
      [(THWOverlayableZoomableCanvasController *)self p_rebuild];
      goto LABEL_19;
    }
  }
}

- (void)p_setViewScale:(double)a3 contentOffset:(CGPoint)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  v10 = [(THWOverlayableZoomableCanvasController *)self contentClippingLayerHost];
  [(CALayer *)[(THWClippingLayerHost *)v10 clippingLayer] bounds];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] setViewScale:a3];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] convertUnscaledToBoundsPoint:x, y];
  TSDRectWithOriginAndSize();
  [(CALayer *)[(THWClippingLayerHost *)v10 clippingLayer] setBounds:v11, v12, v13, v14];
  if (a5)
  {
    v15 = *(a5 + 2);

    v15(a5, 1);
  }
}

- (CGPoint)p_clampContentOffset:(CGPoint)a3 forViewScale:(double)a4
{
  [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWOverlayableZoomableCanvasController scrollContentICC](self "scrollContentICC")];
  TSDMultiplySizeScalar();
  v6 = [(THWOverlayableZoomableCanvasController *)self delegate];
  TSDRectWithOriginAndSize();
  [(THWOverlayableZoomableCanvasControllerDelegate *)v6 overlayableZoomableCanvasController:self contentInsetsForViewScale:a4 viewportBounds:v7, v8, v9, v10];
  [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWOverlayableZoomableCanvasController scrollContentICC](self "scrollContentICC")];
  TSDMultiplySizeScalar();
  TSUClamp();
  v12 = v11;
  TSUClamp();
  v14 = v13;
  v15 = v12;
  result.y = v14;
  result.x = v15;
  return result;
}

- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 animationDuration:(double)a5 completion:(id)a6
{
  self->mContentScale = a3;
  v9 = self->mUniformScale * a3;
  [(THWOverlayableZoomableCanvasController *)self p_clampContentOffset:a4.x forViewScale:a4.y, a3];
  TSDMultiplyPointScalar();
  if (self->mScrollView)
  {
    [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] setViewScale:0 contentOffset:a5 > 0.0 clampOffset:a6 animationDuration:v9 forceAnimation:v10 completion:v11, a5];
  }

  else
  {
    [(THWOverlayableZoomableCanvasController *)self p_setViewScale:a6 contentOffset:v9 completion:v10, v11];
  }

  self->mAnimatingToViewScale = v9;
  TSDMultiplyPointScalar();
  self->mAnimatingToContentOffset.x = v12;
  self->mAnimatingToContentOffset.y = v13;
}

- (CGRect)frame
{
  v2 = [(THWOverlayableZoomableCanvasController *)self view];

  [(UIView *)v2 frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setDelegate:(id)a3
{
  self->_delegate = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_18D088;
  v6 = &unk_45AE00;
  v7 = self;
  if (+[NSThread isMainThread])
  {
    v5(v4);
  }

  else
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_18D090;
    v3[3] = &unk_45B8B0;
    v3[4] = v4;
    dispatch_async(&_dispatch_main_q, v3);
  }
}

- (void)p_updateScrollViewWithDelegate
{
  if (self->_delegate && self->mScrollView)
  {
    if (objc_opt_respondsToSelector())
    {
      [(THScrollView *)self->mScrollView setMayPassScrollEventsToNextResponder:[(THWOverlayableZoomableCanvasControllerDelegate *)self->_delegate overlayableZoomableCanvasController:self shouldDisableScrollingAtContentEdgesForScrollView:self->mScrollView]];
    }

    if (objc_opt_respondsToSelector())
    {
      v3 = [(THWOverlayableZoomableCanvasControllerDelegate *)self->_delegate overlayableZoomableCanvasController:self shouldDisableScrollingWhenCursorIsHiddenForScrollView:self->mScrollView];
      mScrollView = self->mScrollView;

      [(THScrollView *)mScrollView setShouldDisableScrollingWhenCursorIsHidden:v3];
    }
  }
}

- (void)p_updateWithDelegate
{
  if (self->_delegate)
  {
    [(THWOverlayableZoomableCanvasController *)self p_updateScrollViewWithDelegate];

    [(THWOverlayableZoomableCanvasController *)self p_rebuild];
  }
}

- (void)teardownController
{
  [(TSDInteractiveCanvasController *)self->mScrollContainerICC teardown];
  [(TSDInteractiveCanvasController *)self->mScrollContentICC teardown];
  [(THWClippingLayerHost *)self->mContainerClippingLayerHost teardown];
  mContentClippingLayerHost = self->mContentClippingLayerHost;

  [(THWClippingLayerHost *)mContentClippingLayerHost teardown];
}

- (void)teardownView
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mChildViewControllers = self->mChildViewControllers;
  v4 = [(NSMutableArray *)mChildViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(mChildViewControllers);
        }

        [*(*(&v8 + 1) + 8 * i) removeFromParentViewController];
      }

      v5 = [(NSMutableArray *)mChildViewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->mChildViewControllers = 0;
  [(TSKScrollView *)[(THWOverlayableZoomableCanvasController *)self scrollView] setDelegate:0];
  [(TSDCanvasLayerHosting *)self->mScrollContentLayerHost teardown];
  [(TSDCanvasLayerHosting *)self->mScrollContainerLayerHost teardown];

  self->_documentRoot = 0;
}

- (void)invalidateLayers
{
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContainerICC] invalidateLayers];
  v3 = [(THWOverlayableZoomableCanvasController *)self scrollContentICC];

  [(TSDInteractiveCanvasController *)v3 invalidateLayers];
}

- (void)p_updateInfosToDisplay:(id)a3 forICC:(id)a4
{
  v6 = [a4 infosToDisplay];
  v7 = [a3 count];
  if (v7 == [v6 count])
  {
    v8 = [a3 count];
    if (!v8)
    {
      return;
    }

    v9 = v8;
    v10 = 0;
    while (1)
    {
      v11 = [a3 objectAtIndexedSubscript:v10];
      if (v11 != [v6 objectAtIndexedSubscript:v10])
      {
        break;
      }

      if (v9 == ++v10)
      {
        return;
      }
    }
  }

  [a4 setInfosToDisplay:a3];
}

- (void)p_updateContentInfosToDisplay
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(THWOverlayableZoomableCanvasController *)self delegate];
  if (v7)
  {
    v8 = [(THWOverlayableZoomableCanvasController *)self scrollView];
    if (v8)
    {
      [(TSKScrollView *)v8 tsk_bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [(THWOverlayableZoomableCanvasController *)self targetVisibleRect];
      v26.origin.x = v17;
      v26.origin.y = v18;
      v26.size.width = v19;
      v26.size.height = v20;
      v24.origin.x = v10;
      v24.origin.y = v12;
      v24.size.width = v14;
      v24.size.height = v16;
      v25 = CGRectUnion(v24, v26);
      x = v25.origin.x;
      y = v25.origin.y;
      width = v25.size.width;
      height = v25.size.height;
    }
  }

  v21 = [(THWOverlayableZoomableCanvasControllerDelegate *)v7 overlayableZoomableCanvasController:self infosToDisplayForContentViewport:x, y, width, height];
  v22 = [(THWOverlayableZoomableCanvasController *)self scrollContentICC];

  [(THWOverlayableZoomableCanvasController *)self p_updateInfosToDisplay:v21 forICC:v22];
}

- (void)p_updateContainerInfosToDisplay
{
  v3 = [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] infosToDisplayForContainerInOverlayableZoomableCanvasController:self];
  v4 = [(THWOverlayableZoomableCanvasController *)self scrollContainerICC];

  [(THWOverlayableZoomableCanvasController *)self p_updateInfosToDisplay:v3 forICC:v4];
}

- (void)p_rebuild
{
  if (self->_delegate)
  {
    v3 = [(THWOverlayableZoomableCanvasController *)self scrollContentICC];
    v4 = [(THWOverlayableZoomableCanvasController *)self delegate];
    if (v4)
    {
      [(THWOverlayableZoomableCanvasControllerDelegate *)v4 sizeOfContentCanvasForOverlayableZoomableCanvasController:self];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      [(THWOverlayableZoomableCanvasController *)self frame];
      v6 = v9;
      v8 = v10;
    }

    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](v3 "layerHost")];
    [(THWOverlayableZoomableCanvasController *)self p_updateContentInfosToDisplay];

    [(THWOverlayableZoomableCanvasController *)self p_updateContainerInfosToDisplay];
  }
}

- (void)setAllowsPinchZoom:(BOOL)a3
{
  v3 = a3;
  v4 = [(TSDCanvasLayerHosting *)self->mScrollContentLayerHost canvasLayer];

  [v4 setAllowsPinchZoom:v3];
}

- (BOOL)allowsPinchZoom
{
  v2 = [(TSDCanvasLayerHosting *)self->mScrollContentLayerHost canvasLayer];

  return [v2 allowsPinchZoom];
}

- (void)interactiveCanvasController:(id)a3 willAnimateScrollToVisibleUnscaledRect:(CGRect)a4
{
  [(THWOverlayableZoomableCanvasController *)self setTargetVisibleRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  if (([a3 currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0 && -[THWOverlayableZoomableCanvasController scrollContentICC](self, "scrollContentICC") == a3)
  {

    [(THWOverlayableZoomableCanvasController *)self p_updateContentInfosToDisplay];
  }
}

- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)a3 stillAnimating:(BOOL)a4
{
  if (!a4)
  {
    [(THWOverlayableZoomableCanvasController *)self setTargetVisibleRect:a3, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  }
}

- (void)interactiveCanvasControllerDidScroll:(id)a3
{
  [(THWOverlayableZoomableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasController:self interactiveCanvasControllerDidScroll:a3];
  }

  if (([a3 currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0 && -[THWOverlayableZoomableCanvasController scrollContentICC](self, "scrollContentICC") == a3)
  {

    [(THWOverlayableZoomableCanvasController *)self p_updateContentInfosToDisplay];
  }
}

- (id)interactiveCanvasController:(id)a3 layoutGeometryProviderForLayout:(id)a4
{
  v6 = [(THWOverlayableZoomableCanvasController *)self delegate];

  return [(THWOverlayableZoomableCanvasControllerDelegate *)v6 overlayableZoomableCanvasController:self geometryProviderForLayout:a4];
}

- (void)interactiveCanvasController:(id)a3 layoutRegistered:(id)a4
{
  if ([(THWOverlayableZoomableCanvasController *)self scrollContainerICC]== a3)
  {
    [(THWOverlayableZoomableCanvasController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(THWOverlayableZoomableCanvasController *)self delegate];

      [(THWOverlayableZoomableCanvasControllerDelegate *)v6 overlayableZoomableCanvasController:self registeredLayoutInContainerICC:a4];
    }
  }
}

- (void)interactiveCanvasController:(id)a3 layoutUnregistered:(id)a4
{
  if ([(THWOverlayableZoomableCanvasController *)self scrollContainerICC]== a3)
  {
    [(THWOverlayableZoomableCanvasController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(THWOverlayableZoomableCanvasController *)self delegate];

      [(THWOverlayableZoomableCanvasControllerDelegate *)v6 overlayableZoomableCanvasController:self unregisteredLayoutInContainerICC:a4];
    }
  }
}

- (void)interactiveCanvasController:(id)a3 willLayoutRep:(id)a4
{
  [(THWOverlayableZoomableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(THWOverlayableZoomableCanvasController *)self delegate];

    [(THWOverlayableZoomableCanvasControllerDelegate *)v6 overlayableZoomableCanvasController:self willLayoutRep:a4];
  }
}

- (id)interactiveCanvasController:(id)a3 delegateConformingToProtocol:(id)a4 forRep:(id)a5
{
  v6 = [(THWOverlayableZoomableCanvasController *)self delegate:a3];
  if ([(THWOverlayableZoomableCanvasControllerDelegate *)v6 conformsToProtocol:a4])
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)a3
{
  if (([a3 currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0)
  {
    if ([(THWOverlayableZoomableCanvasController *)self scrollContentICC]== a3)
    {

      [(THWOverlayableZoomableCanvasController *)self p_updateContentInfosToDisplay];
    }

    else
    {

      [(THWOverlayableZoomableCanvasController *)self p_updateContainerInfosToDisplay];
    }
  }
}

- (CGRect)interactiveCanvasController:(id)a3 expandBoundsForHitTesting:(CGRect)a4
{
  if (self->mScrollContainerICC == a3)
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasController:self expandBoundsForHitTesting:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)interactiveCanvasController:(id)a3 primaryTargetForGesture:(id)a4
{
  v6 = [(THWOverlayableZoomableCanvasController *)self delegate];

  return [(THWOverlayableZoomableCanvasControllerDelegate *)v6 overlayableZoomableCanvasController:self primaryTargetForGesture:a4];
}

- (void)interactiveCanvasControllerWillZoom:(id)a3
{
  [(THWOverlayableZoomableCanvasController *)self setZooming:1];
  v5 = [(THWOverlayableZoomableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [a3 viewScale];

    [(THWOverlayableZoomableCanvasControllerDelegate *)v5 overlayableZoomableCanvasController:self willZoomAtScale:?];
  }
}

- (void)interactiveCanvasControllerDidZoom:(id)a3
{
  v5 = [(THWOverlayableZoomableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [a3 viewScale];
    [(THWOverlayableZoomableCanvasControllerDelegate *)v5 overlayableZoomableCanvasController:self didEndZoomingAtScale:?];
  }

  [(THWOverlayableZoomableCanvasController *)self setZooming:0];
}

- (BOOL)interactiveCanvasControllerShouldResampleImages:(id)a3
{
  v4 = [(THWOverlayableZoomableCanvasController *)self delegate];

  return [(THWOverlayableZoomableCanvasControllerDelegate *)v4 overlayableZoomableCanvasControllerShouldResampleImages:self];
}

- (BOOL)interactiveCanvasController:(id)a3 allowsEditMenuForRep:(id)a4
{
  v6 = [(THWOverlayableZoomableCanvasController *)self delegate];

  return [(THWOverlayableZoomableCanvasControllerDelegate *)v6 overlayableZoomableCanvasController:self allowsEditMenuForRep:a4];
}

- (BOOL)interactiveCanvasController:(id)a3 canvasViewShouldBecomeFirstResponder:(id)a4
{
  [(THWOverlayableZoomableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasController:self canvasViewShouldBecomeFirstResponder:a4];
  }

  return 0;
}

- (id)additionalGestureTargetsForInteractiveCanvasController:(id)a3 gesture:(id)a4
{
  [(THWOverlayableZoomableCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = [(THWOverlayableZoomableCanvasController *)self delegate];

  return [(THWOverlayableZoomableCanvasControllerDelegate *)v6 additionalGestureTargetsForZoomableCanvasController:self gesture:a4];
}

- (void)setupImmediatePressGesture
{
  v3 = [(THWOverlayableZoomableCanvasController *)self scrollContentICC];
  v4 = TSWPImmediatePress;
  v6 = TSWPImmediatePress;
  [(TSDInteractiveCanvasController *)v3 enableGestureKinds:[NSArray arrayWithObjects:&v6 count:1]];
  v5 = [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] gestureDispatcher];
  objc_opt_class();
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] gestureWithKind:v4];
  [v5 allowSimultaneousRecognitionByRecognizers:{TSUDynamicCast(), -[TSKScrollView panGestureRecognizer](-[THWOverlayableZoomableCanvasController scrollView](self, "scrollView"), "panGestureRecognizer"), 0}];
}

- (BOOL)isDragging
{
  v2 = [(THWOverlayableZoomableCanvasController *)self scrollView];

  return [(TSKScrollView *)v2 isDragging];
}

- (BOOL)isZoomedOut
{
  v3 = [-[TSDInteractiveCanvasController canvasView](-[THWOverlayableZoomableCanvasController scrollContentICC](self "scrollContentICC")];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] viewScale];
  v5 = v4;
  [v3 minimumPinchViewScale];
  return vabdd_f64(v5, v6) < 0.00999999978;
}

- (void)setBackgroundLayer:(id)a3
{
  backgroundLayer = self->_backgroundLayer;
  if (backgroundLayer != a3)
  {
    if (backgroundLayer)
    {
      [(THLayerContainingView *)self->_backgroundView removeSublayer:?];

      self->_backgroundLayer = 0;
    }

    if (a3)
    {
      v6 = a3;
      self->_backgroundLayer = v6;
      [(THLayerContainingView *)self->_backgroundView addSublayer:v6];
    }

    [(THWOverlayableZoomableCanvasController *)self p_updateSubviewsOrLayers];
  }
}

- (CGAffineTransform)p_contentBoundsToUnscaledTransform
{
  if ([(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] animatingViewScale])
  {
    mAnimatingToViewScale = self->mAnimatingToViewScale;
  }

  else
  {
    [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] viewScale];
  }

  v6 = 1.0 / mAnimatingToViewScale;

  return CGAffineTransformMakeScale(retstr, v6, v6);
}

- (CGAffineTransform)p_contentUnscaledToBoundsTransform
{
  if (self)
  {
    [(THWOverlayableZoomableCanvasController *)self p_contentBoundsToUnscaledTransform];
  }

  else
  {
    memset(&v5, 0, sizeof(v5));
  }

  return CGAffineTransformInvert(retstr, &v5);
}

- (CGAffineTransform)p_contentBoundsToContainerBoundsTransform
{
  if ([(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] animatingViewScale])
  {
    x = self->mAnimatingToContentOffset.x;
    y = self->mAnimatingToContentOffset.y;
  }

  else if ([(THWOverlayableZoomableCanvasController *)self scrollView])
  {
    [(TSKScrollView *)[(THWOverlayableZoomableCanvasController *)self scrollView] contentOffset];
  }

  else
  {
    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWOverlayableZoomableCanvasController scrollContentICC](self "scrollContentICC")];
  }

  v7 = -x;
  v8 = -y;

  return CGAffineTransformMakeTranslation(retstr, v7, v8);
}

- (CGAffineTransform)p_containerBoundsToContentBoundsTransform
{
  if (self)
  {
    [(THWOverlayableZoomableCanvasController *)self p_contentBoundsToContainerBoundsTransform];
  }

  else
  {
    memset(&v5, 0, sizeof(v5));
  }

  return CGAffineTransformInvert(retstr, &v5);
}

- (CGPoint)unscaledContainerPointFromUnscaledContentPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self)
  {
    [(THWOverlayableZoomableCanvasController *)self p_contentUnscaledToBoundsTransform];
    v7 = v20.f64[1];
    v6 = v20.f64[0];
    v9 = v21.f64[1];
    v8 = v21.f64[0];
    v11 = v22.f64[1];
    v10 = v22.f64[0];
    [(THWOverlayableZoomableCanvasController *)self p_contentBoundsToContainerBoundsTransform];
    v12 = v20;
    v13 = v21;
    v14 = v22;
  }

  else
  {
    v14 = 0uLL;
    v6 = 0.0;
    v8 = 0.0;
    v10 = 0.0;
    v7 = 0.0;
    v9 = 0.0;
    v11 = 0.0;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  v15 = [(THWOverlayableZoomableCanvasController *)self scrollContainerICC:vaddq_f64(v14];
  [(TSDInteractiveCanvasController *)v15 convertBoundsToUnscaledPoint:v18, v19];
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)scaledContainerPointFromUnscaledContentPoint:(CGPoint)a3
{
  [(THWOverlayableZoomableCanvasController *)self unscaledContainerPointFromUnscaledContentPoint:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  v8 = [(THWOverlayableZoomableCanvasController *)self scrollContainerICC];

  [(TSDInteractiveCanvasController *)v8 convertUnscaledToBoundsPoint:v5, v7];
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGRect)unscaledContentRectFromUnscaledContainerRect:(CGRect)a3
{
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContainerICC] convertUnscaledToBoundsRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (self)
  {
    [(THWOverlayableZoomableCanvasController *)self p_containerBoundsToContentBoundsTransform];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  v18 = CGRectApplyAffineTransform(v17, &v16);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  if (self)
  {
    [(THWOverlayableZoomableCanvasController *)self p_contentBoundsToUnscaledTransform];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  return CGRectApplyAffineTransform(v19, &v16);
}

- (CGRect)scaledContentRectFromUnscaledContainerRect:(CGRect)a3
{
  [(THWOverlayableZoomableCanvasController *)self unscaledContentRectFromUnscaledContainerRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (self)
  {
    [(THWOverlayableZoomableCanvasController *)self p_contentUnscaledToBoundsTransform];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  v13.origin.x = v5;
  v13.origin.y = v7;
  v13.size.width = v9;
  v13.size.height = v11;
  return CGRectApplyAffineTransform(v13, &v12);
}

- (CGRect)targetVisibleRect
{
  x = self->mTargetVisibleRect.origin.x;
  y = self->mTargetVisibleRect.origin.y;
  width = self->mTargetVisibleRect.size.width;
  height = self->mTargetVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end