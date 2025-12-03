@interface THWOverlayableZoomableCanvasController
- (BOOL)allowsPinchZoom;
- (BOOL)createLayerHostIfNeededWithFrame:(CGRect)frame;
- (BOOL)createViewIfNeededWithFrame:(CGRect)frame;
- (BOOL)interactiveCanvasController:(id)controller allowsEditMenuForRep:(id)rep;
- (BOOL)interactiveCanvasController:(id)controller canvasViewShouldBecomeFirstResponder:(id)responder;
- (BOOL)interactiveCanvasControllerShouldResampleImages:(id)images;
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
- (CGPoint)p_clampContentOffset:(CGPoint)offset forViewScale:(double)scale;
- (CGPoint)scaledContainerPointFromUnscaledContentPoint:(CGPoint)point;
- (CGPoint)unscaledContainerPointFromUnscaledContentPoint:(CGPoint)point;
- (CGRect)contentViewFrame;
- (CGRect)frame;
- (CGRect)interactiveCanvasController:(id)controller expandBoundsForHitTesting:(CGRect)testing;
- (CGRect)scaledContentRectFromUnscaledContainerRect:(CGRect)rect;
- (CGRect)targetVisibleRect;
- (CGRect)unscaledContentRectFromUnscaledContainerRect:(CGRect)rect;
- (THWOverlayableZoomableCanvasController)initWithFrame:(CGRect)frame documentRoot:(id)root delegate:(id)delegate;
- (UIEdgeInsets)contentInset;
- (id)additionalGestureTargetsForInteractiveCanvasController:(id)controller gesture:(id)gesture;
- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep;
- (id)interactiveCanvasController:(id)controller layoutGeometryProviderForLayout:(id)layout;
- (id)interactiveCanvasController:(id)controller primaryTargetForGesture:(id)gesture;
- (void)dealloc;
- (void)interactiveCanvasController:(id)controller layoutRegistered:(id)registered;
- (void)interactiveCanvasController:(id)controller layoutUnregistered:(id)unregistered;
- (void)interactiveCanvasController:(id)controller willAnimateScrollToVisibleUnscaledRect:(CGRect)rect;
- (void)interactiveCanvasController:(id)controller willLayoutRep:(id)rep;
- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)animation stillAnimating:(BOOL)animating;
- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)thread;
- (void)interactiveCanvasControllerDidScroll:(id)scroll;
- (void)interactiveCanvasControllerDidZoom:(id)zoom;
- (void)interactiveCanvasControllerWillZoom:(id)zoom;
- (void)invalidateLayers;
- (void)p_rebuild;
- (void)p_setViewScale:(double)scale contentOffset:(CGPoint)offset completion:(id)completion;
- (void)p_updateContainerInfosToDisplay;
- (void)p_updateContentInfosToDisplay;
- (void)p_updateInfosToDisplay:(id)display forICC:(id)c;
- (void)p_updateRasterizeOnLayer;
- (void)p_updateScrollViewWithDelegate;
- (void)p_updateSubviewsOrLayers;
- (void)p_updateWithDelegate;
- (void)screenScaleDidChange;
- (void)setAllowsPinchZoom:(BOOL)zoom;
- (void)setBackgroundLayer:(id)layer;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setDelegate:(id)delegate;
- (void)setNaturalFrame:(CGRect)frame scale:(double)scale;
- (void)setRasterize:(BOOL)rasterize;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setViewScale:(double)scale contentOffset:(CGPoint)offset animationDuration:(double)duration completion:(id)completion;
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
  scrollView = [(THWOverlayableZoomableCanvasController *)self scrollView];

  [(TSKScrollView *)scrollView contentInset];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  scrollView = [(THWOverlayableZoomableCanvasController *)self scrollView];

  [(TSKScrollView *)scrollView setContentInset:top, left, bottom, right];
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
  canvasView = [(TSDCanvasLayerHosting *)self->mScrollContentLayerHost canvasView];

  [canvasView frame];
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
  scrollView = [(THWOverlayableZoomableCanvasController *)self scrollView];

  return [(TSKScrollView *)scrollView isScrollEnabled];
}

- (void)setScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  scrollView = [(THWOverlayableZoomableCanvasController *)self scrollView];

  [(TSKScrollView *)scrollView setScrollEnabled:enabledCopy];
}

- (THWOverlayableZoomableCanvasController)initWithFrame:(CGRect)frame documentRoot:(id)root delegate:(id)delegate
{
  v15.receiver = self;
  v15.super_class = THWOverlayableZoomableCanvasController;
  v7 = [(THWOverlayableZoomableCanvasController *)&v15 init:frame.origin.x];
  v8 = v7;
  if (v7)
  {
    [(THWOverlayableZoomableCanvasController *)v7 setTargetVisibleRect:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
    __asm { FMOV            V0.2D, #1.0 }

    *&v8->mUniformScale = _Q0;
    v8->_documentRoot = root;
    v8->_delegate = delegate;
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

- (BOOL)createLayerHostIfNeededWithFrame:(CGRect)frame
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

  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  canvas = [(TSDInteractiveCanvasController *)self->mScrollContainerICC canvas];
  [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasControllerContentsScale:self];
  [canvas i_setContentsScale:?];
  canvas2 = [(TSDInteractiveCanvasController *)self->mScrollContentICC canvas];
  [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasControllerContentsScale:self];
  [canvas2 i_setContentsScale:?];
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

      viewController = [(TSDCanvasLayerHosting *)self->mScrollContentLayerHost viewController];
      if (viewController)
      {
        v17 = viewController;
        [(UIViewController *)self->_containerViewController addChildViewController:viewController];
        [(NSMutableArray *)self->mChildViewControllers addObject:v17];
      }

      viewController2 = [(TSDCanvasLayerHosting *)self->mScrollContainerLayerHost viewController];
      if (viewController2)
      {
        v19 = viewController2;
        [(UIViewController *)self->_containerViewController addChildViewController:viewController2];
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
  canvas = [(TSDInteractiveCanvasController *)self->mScrollContainerICC canvas];
  [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasControllerContentsScale:self];
  [canvas i_setContentsScale:?];
  canvas2 = [(TSDInteractiveCanvasController *)self->mScrollContentICC canvas];
  [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasControllerContentsScale:self];
  [canvas2 i_setContentsScale:?];
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
    clippingLayer = [(THWClippingLayerHost *)mContainerClippingLayerHost clippingLayer];
  }

  else
  {
    clippingLayer = [(UIView *)[(THWOverlayableZoomableCanvasController *)self view] layer];
  }

  v5 = clippingLayer;
  [-[TSDInteractiveCanvasController canvas](self->mScrollContainerICC "canvas")];
  [(CALayer *)v5 setRasterizationScale:?];
  [(CALayer *)v5 setShouldRasterize:self->_rasterize];
  rasterize = self->_rasterize;

  [(CALayer *)v5 spi_setPreloadsCache:rasterize];
}

- (void)setRasterize:(BOOL)rasterize
{
  if (self->_rasterize != rasterize)
  {
    self->_rasterize = rasterize;
    [(THWOverlayableZoomableCanvasController *)self p_updateRasterizeOnLayer];
  }
}

- (BOOL)createViewIfNeededWithFrame:(CGRect)frame
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

  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setNaturalFrame:(CGRect)frame scale:(double)scale
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (self->_containerView)
  {
    memset(&v52, 0, sizeof(v52));
    CGAffineTransformMakeScale(&v52, scale, scale);
    v51 = v52;
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    CGRectApplyAffineTransform(v53, &v51);
    scaleCopy = scale;
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
    if (!CGRectEqualToRect(self->mNaturalFrame, v56) || (mUniformScale = self->mUniformScale, mUniformScale != scaleCopy) && vabdd_f64(mUniformScale, scaleCopy) >= fabs(scaleCopy * 0.000000999999997) || (([(UIView *)self->_containerView frame], v50 == v20) ? (v21 = v13 == v19) : (v21 = 0), !v21))
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
      self->mUniformScale = scaleCopy;
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
    if (!CGRectEqualToRect(self->mNaturalFrame, frame) || (v34 = self->mUniformScale, v34 != scale) && vabdd_f64(v34, scale) >= fabs(scale * 0.000000999999997))
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
      self->mUniformScale = scale;
      memset(&v52, 0, sizeof(v52));
      CGAffineTransformMakeScale(&v52, scale, scale);
      v51 = v52;
      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      v55 = CGRectApplyAffineTransform(v54, &v51);
      v35 = width;
      [(CALayer *)self->_containerLayer setFrame:v55.origin.x, v55.origin.y];
      [(TSDCanvasLayer *)[(THWClippingLayerHost *)self->mContainerClippingLayerHost canvasLayer] setUnscaledSize:width, height];
      [(TSDCanvasLayer *)[(THWClippingLayerHost *)self->mContainerClippingLayerHost canvasLayer] setViewScale:scale];
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

- (void)p_setViewScale:(double)scale contentOffset:(CGPoint)offset completion:(id)completion
{
  y = offset.y;
  x = offset.x;
  contentClippingLayerHost = [(THWOverlayableZoomableCanvasController *)self contentClippingLayerHost];
  [(CALayer *)[(THWClippingLayerHost *)contentClippingLayerHost clippingLayer] bounds];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] setViewScale:scale];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] convertUnscaledToBoundsPoint:x, y];
  TSDRectWithOriginAndSize();
  [(CALayer *)[(THWClippingLayerHost *)contentClippingLayerHost clippingLayer] setBounds:v11, v12, v13, v14];
  if (completion)
  {
    v15 = *(completion + 2);

    v15(completion, 1);
  }
}

- (CGPoint)p_clampContentOffset:(CGPoint)offset forViewScale:(double)scale
{
  [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THWOverlayableZoomableCanvasController scrollContentICC](self "scrollContentICC")];
  TSDMultiplySizeScalar();
  delegate = [(THWOverlayableZoomableCanvasController *)self delegate];
  TSDRectWithOriginAndSize();
  [(THWOverlayableZoomableCanvasControllerDelegate *)delegate overlayableZoomableCanvasController:self contentInsetsForViewScale:scale viewportBounds:v7, v8, v9, v10];
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

- (void)setViewScale:(double)scale contentOffset:(CGPoint)offset animationDuration:(double)duration completion:(id)completion
{
  self->mContentScale = scale;
  v9 = self->mUniformScale * scale;
  [(THWOverlayableZoomableCanvasController *)self p_clampContentOffset:offset.x forViewScale:offset.y, scale];
  TSDMultiplyPointScalar();
  if (self->mScrollView)
  {
    [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] setViewScale:0 contentOffset:duration > 0.0 clampOffset:completion animationDuration:v9 forceAnimation:v10 completion:v11, duration];
  }

  else
  {
    [(THWOverlayableZoomableCanvasController *)self p_setViewScale:completion contentOffset:v9 completion:v10, v11];
  }

  self->mAnimatingToViewScale = v9;
  TSDMultiplyPointScalar();
  self->mAnimatingToContentOffset.x = v12;
  self->mAnimatingToContentOffset.y = v13;
}

- (CGRect)frame
{
  view = [(THWOverlayableZoomableCanvasController *)self view];

  [(UIView *)view frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setDelegate:(id)delegate
{
  self->_delegate = delegate;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_18D088;
  v6 = &unk_45AE00;
  selfCopy = self;
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
  scrollContentICC = [(THWOverlayableZoomableCanvasController *)self scrollContentICC];

  [(TSDInteractiveCanvasController *)scrollContentICC invalidateLayers];
}

- (void)p_updateInfosToDisplay:(id)display forICC:(id)c
{
  infosToDisplay = [c infosToDisplay];
  v7 = [display count];
  if (v7 == [infosToDisplay count])
  {
    v8 = [display count];
    if (!v8)
    {
      return;
    }

    v9 = v8;
    v10 = 0;
    while (1)
    {
      v11 = [display objectAtIndexedSubscript:v10];
      if (v11 != [infosToDisplay objectAtIndexedSubscript:v10])
      {
        break;
      }

      if (v9 == ++v10)
      {
        return;
      }
    }
  }

  [c setInfosToDisplay:display];
}

- (void)p_updateContentInfosToDisplay
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  delegate = [(THWOverlayableZoomableCanvasController *)self delegate];
  if (delegate)
  {
    scrollView = [(THWOverlayableZoomableCanvasController *)self scrollView];
    if (scrollView)
    {
      [(TSKScrollView *)scrollView tsk_bounds];
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

  height = [(THWOverlayableZoomableCanvasControllerDelegate *)delegate overlayableZoomableCanvasController:self infosToDisplayForContentViewport:x, y, width, height];
  scrollContentICC = [(THWOverlayableZoomableCanvasController *)self scrollContentICC];

  [(THWOverlayableZoomableCanvasController *)self p_updateInfosToDisplay:height forICC:scrollContentICC];
}

- (void)p_updateContainerInfosToDisplay
{
  v3 = [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] infosToDisplayForContainerInOverlayableZoomableCanvasController:self];
  scrollContainerICC = [(THWOverlayableZoomableCanvasController *)self scrollContainerICC];

  [(THWOverlayableZoomableCanvasController *)self p_updateInfosToDisplay:v3 forICC:scrollContainerICC];
}

- (void)p_rebuild
{
  if (self->_delegate)
  {
    scrollContentICC = [(THWOverlayableZoomableCanvasController *)self scrollContentICC];
    delegate = [(THWOverlayableZoomableCanvasController *)self delegate];
    if (delegate)
    {
      [(THWOverlayableZoomableCanvasControllerDelegate *)delegate sizeOfContentCanvasForOverlayableZoomableCanvasController:self];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      [(THWOverlayableZoomableCanvasController *)self frame];
      v6 = v9;
      v8 = v10;
    }

    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](scrollContentICC "layerHost")];
    [(THWOverlayableZoomableCanvasController *)self p_updateContentInfosToDisplay];

    [(THWOverlayableZoomableCanvasController *)self p_updateContainerInfosToDisplay];
  }
}

- (void)setAllowsPinchZoom:(BOOL)zoom
{
  zoomCopy = zoom;
  canvasLayer = [(TSDCanvasLayerHosting *)self->mScrollContentLayerHost canvasLayer];

  [canvasLayer setAllowsPinchZoom:zoomCopy];
}

- (BOOL)allowsPinchZoom
{
  canvasLayer = [(TSDCanvasLayerHosting *)self->mScrollContentLayerHost canvasLayer];

  return [canvasLayer allowsPinchZoom];
}

- (void)interactiveCanvasController:(id)controller willAnimateScrollToVisibleUnscaledRect:(CGRect)rect
{
  [(THWOverlayableZoomableCanvasController *)self setTargetVisibleRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if (([controller currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0 && -[THWOverlayableZoomableCanvasController scrollContentICC](self, "scrollContentICC") == controller)
  {

    [(THWOverlayableZoomableCanvasController *)self p_updateContentInfosToDisplay];
  }
}

- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)animation stillAnimating:(BOOL)animating
{
  if (!animating)
  {
    [(THWOverlayableZoomableCanvasController *)self setTargetVisibleRect:animation, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  }
}

- (void)interactiveCanvasControllerDidScroll:(id)scroll
{
  [(THWOverlayableZoomableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasController:self interactiveCanvasControllerDidScroll:scroll];
  }

  if (([scroll currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0 && -[THWOverlayableZoomableCanvasController scrollContentICC](self, "scrollContentICC") == scroll)
  {

    [(THWOverlayableZoomableCanvasController *)self p_updateContentInfosToDisplay];
  }
}

- (id)interactiveCanvasController:(id)controller layoutGeometryProviderForLayout:(id)layout
{
  delegate = [(THWOverlayableZoomableCanvasController *)self delegate];

  return [(THWOverlayableZoomableCanvasControllerDelegate *)delegate overlayableZoomableCanvasController:self geometryProviderForLayout:layout];
}

- (void)interactiveCanvasController:(id)controller layoutRegistered:(id)registered
{
  if ([(THWOverlayableZoomableCanvasController *)self scrollContainerICC]== controller)
  {
    [(THWOverlayableZoomableCanvasController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(THWOverlayableZoomableCanvasController *)self delegate];

      [(THWOverlayableZoomableCanvasControllerDelegate *)delegate overlayableZoomableCanvasController:self registeredLayoutInContainerICC:registered];
    }
  }
}

- (void)interactiveCanvasController:(id)controller layoutUnregistered:(id)unregistered
{
  if ([(THWOverlayableZoomableCanvasController *)self scrollContainerICC]== controller)
  {
    [(THWOverlayableZoomableCanvasController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(THWOverlayableZoomableCanvasController *)self delegate];

      [(THWOverlayableZoomableCanvasControllerDelegate *)delegate overlayableZoomableCanvasController:self unregisteredLayoutInContainerICC:unregistered];
    }
  }
}

- (void)interactiveCanvasController:(id)controller willLayoutRep:(id)rep
{
  [(THWOverlayableZoomableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(THWOverlayableZoomableCanvasController *)self delegate];

    [(THWOverlayableZoomableCanvasControllerDelegate *)delegate overlayableZoomableCanvasController:self willLayoutRep:rep];
  }
}

- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep
{
  v6 = [(THWOverlayableZoomableCanvasController *)self delegate:controller];
  if ([(THWOverlayableZoomableCanvasControllerDelegate *)v6 conformsToProtocol:protocol])
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)thread
{
  if (([thread currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0)
  {
    if ([(THWOverlayableZoomableCanvasController *)self scrollContentICC]== thread)
    {

      [(THWOverlayableZoomableCanvasController *)self p_updateContentInfosToDisplay];
    }

    else
    {

      [(THWOverlayableZoomableCanvasController *)self p_updateContainerInfosToDisplay];
    }
  }
}

- (CGRect)interactiveCanvasController:(id)controller expandBoundsForHitTesting:(CGRect)testing
{
  if (self->mScrollContainerICC == controller)
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasController:self expandBoundsForHitTesting:testing.origin.x, testing.origin.y, testing.size.width, testing.size.height];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)interactiveCanvasController:(id)controller primaryTargetForGesture:(id)gesture
{
  delegate = [(THWOverlayableZoomableCanvasController *)self delegate];

  return [(THWOverlayableZoomableCanvasControllerDelegate *)delegate overlayableZoomableCanvasController:self primaryTargetForGesture:gesture];
}

- (void)interactiveCanvasControllerWillZoom:(id)zoom
{
  [(THWOverlayableZoomableCanvasController *)self setZooming:1];
  delegate = [(THWOverlayableZoomableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [zoom viewScale];

    [(THWOverlayableZoomableCanvasControllerDelegate *)delegate overlayableZoomableCanvasController:self willZoomAtScale:?];
  }
}

- (void)interactiveCanvasControllerDidZoom:(id)zoom
{
  delegate = [(THWOverlayableZoomableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [zoom viewScale];
    [(THWOverlayableZoomableCanvasControllerDelegate *)delegate overlayableZoomableCanvasController:self didEndZoomingAtScale:?];
  }

  [(THWOverlayableZoomableCanvasController *)self setZooming:0];
}

- (BOOL)interactiveCanvasControllerShouldResampleImages:(id)images
{
  delegate = [(THWOverlayableZoomableCanvasController *)self delegate];

  return [(THWOverlayableZoomableCanvasControllerDelegate *)delegate overlayableZoomableCanvasControllerShouldResampleImages:self];
}

- (BOOL)interactiveCanvasController:(id)controller allowsEditMenuForRep:(id)rep
{
  delegate = [(THWOverlayableZoomableCanvasController *)self delegate];

  return [(THWOverlayableZoomableCanvasControllerDelegate *)delegate overlayableZoomableCanvasController:self allowsEditMenuForRep:rep];
}

- (BOOL)interactiveCanvasController:(id)controller canvasViewShouldBecomeFirstResponder:(id)responder
{
  [(THWOverlayableZoomableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THWOverlayableZoomableCanvasControllerDelegate *)[(THWOverlayableZoomableCanvasController *)self delegate] overlayableZoomableCanvasController:self canvasViewShouldBecomeFirstResponder:responder];
  }

  return 0;
}

- (id)additionalGestureTargetsForInteractiveCanvasController:(id)controller gesture:(id)gesture
{
  [(THWOverlayableZoomableCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = [(THWOverlayableZoomableCanvasController *)self delegate];

  return [(THWOverlayableZoomableCanvasControllerDelegate *)delegate additionalGestureTargetsForZoomableCanvasController:self gesture:gesture];
}

- (void)setupImmediatePressGesture
{
  scrollContentICC = [(THWOverlayableZoomableCanvasController *)self scrollContentICC];
  v4 = TSWPImmediatePress;
  v6 = TSWPImmediatePress;
  [(TSDInteractiveCanvasController *)scrollContentICC enableGestureKinds:[NSArray arrayWithObjects:&v6 count:1]];
  gestureDispatcher = [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] gestureDispatcher];
  objc_opt_class();
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] gestureWithKind:v4];
  [gestureDispatcher allowSimultaneousRecognitionByRecognizers:{TSUDynamicCast(), -[TSKScrollView panGestureRecognizer](-[THWOverlayableZoomableCanvasController scrollView](self, "scrollView"), "panGestureRecognizer"), 0}];
}

- (BOOL)isDragging
{
  scrollView = [(THWOverlayableZoomableCanvasController *)self scrollView];

  return [(TSKScrollView *)scrollView isDragging];
}

- (BOOL)isZoomedOut
{
  v3 = [-[TSDInteractiveCanvasController canvasView](-[THWOverlayableZoomableCanvasController scrollContentICC](self "scrollContentICC")];
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContentICC] viewScale];
  v5 = v4;
  [v3 minimumPinchViewScale];
  return vabdd_f64(v5, v6) < 0.00999999978;
}

- (void)setBackgroundLayer:(id)layer
{
  backgroundLayer = self->_backgroundLayer;
  if (backgroundLayer != layer)
  {
    if (backgroundLayer)
    {
      [(THLayerContainingView *)self->_backgroundView removeSublayer:?];

      self->_backgroundLayer = 0;
    }

    if (layer)
    {
      layerCopy = layer;
      self->_backgroundLayer = layerCopy;
      [(THLayerContainingView *)self->_backgroundView addSublayer:layerCopy];
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

- (CGPoint)unscaledContainerPointFromUnscaledContentPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (CGPoint)scaledContainerPointFromUnscaledContentPoint:(CGPoint)point
{
  [(THWOverlayableZoomableCanvasController *)self unscaledContainerPointFromUnscaledContentPoint:point.x, point.y];
  v5 = v4;
  v7 = v6;
  scrollContainerICC = [(THWOverlayableZoomableCanvasController *)self scrollContainerICC];

  [(TSDInteractiveCanvasController *)scrollContainerICC convertUnscaledToBoundsPoint:v5, v7];
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGRect)unscaledContentRectFromUnscaledContainerRect:(CGRect)rect
{
  [(TSDInteractiveCanvasController *)[(THWOverlayableZoomableCanvasController *)self scrollContainerICC] convertUnscaledToBoundsRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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

- (CGRect)scaledContentRectFromUnscaledContainerRect:(CGRect)rect
{
  [(THWOverlayableZoomableCanvasController *)self unscaledContentRectFromUnscaledContainerRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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