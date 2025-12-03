@interface THWZoomableCanvasController
- (BOOL)createLayerHostIfNeededWithUnscaledFrame:(CGRect)frame viewScale:(double)scale;
- (BOOL)createViewIfNeededWithUnscaledFrame:(CGRect)frame viewScale:(double)scale;
- (BOOL)interactiveCanvasController:(id)controller allowsEditMenuForRep:(id)rep;
- (BOOL)interactiveCanvasControllerIsRelatedCanvasScrolling:(id)scrolling;
- (BOOL)isZoomedOut;
- (CGPoint)clampedUnscaledContentOffset:(CGPoint)offset anchor:(CGPoint)anchor viewScale:(double)scale scrollViewBoundsSize:(CGSize)size;
- (CGPoint)contentOffsetForAnchor:(CGPoint)anchor;
- (CGPoint)interactiveCanvasController:(id)controller clampContentOffset:(CGPoint)offset forViewScale:(double)scale scrollViewBoundsSize:(CGSize)size;
- (CGRect)interactiveCanvasController:(id)controller expandBoundsForHitTesting:(CGRect)testing;
- (CGRect)targetVisibleRect;
- (THWZoomableCanvasController)initWithDocumentRoot:(id)root;
- (_NSRange)loadedPageRange;
- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep;
- (id)interactiveCanvasController:(id)controller layoutGeometryProviderForLayout:(id)layout;
- (id)interactiveCanvasController:(id)controller primaryTargetForGesture:(id)gesture;
- (void)dealloc;
- (void)interactiveCanvasController:(id)controller willAnimateScrollToVisibleUnscaledRect:(CGRect)rect;
- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)animation stillAnimating:(BOOL)animating;
- (void)interactiveCanvasControllerDidZoom:(id)zoom;
- (void)p_rebuildContentSize;
- (void)p_rebuildInfos;
- (void)p_updateContentsScale;
- (void)p_updateInfosToDisplay;
- (void)p_updateWithDelegate;
- (void)setDelegate:(id)delegate;
- (void)setUnscaledFrame:(CGRect)frame viewScale:(double)scale;
- (void)setViewScale:(double)scale contentOffset:(CGPoint)offset anchor:(CGPoint)anchor;
- (void)setupImmediatePressGesture;
- (void)teardownController;
@end

@implementation THWZoomableCanvasController

- (THWZoomableCanvasController)initWithDocumentRoot:(id)root
{
  v7.receiver = self;
  v7.super_class = THWZoomableCanvasController;
  v3 = [(THWZoomableCanvasController *)&v7 init];
  if (v3)
  {
    objc_opt_class();
    v3->_documentRoot = TSUDynamicCast();
    origin = CGRectNull.origin;
    size = CGRectNull.size;
    v3->_loadedPageRange = xmmword_34A730;
    v3->_targetVisibleRect.origin = origin;
    v3->_targetVisibleRect.size = size;
  }

  return v3;
}

- (void)dealloc
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setDelegate:0];

  v3.receiver = self;
  v3.super_class = THWZoomableCanvasController;
  [(THWZoomableCanvasController *)&v3 dealloc];
}

- (BOOL)createViewIfNeededWithUnscaledFrame:(CGRect)frame viewScale:(double)scale
{
  p_scrollView = &self->_scrollView;
  scrollView = self->_scrollView;
  if (!scrollView)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    THCanvasAndScrollViewCreateWithClass(self, &self->_interactiveCanvasController, &self->_layerHost, p_scrollView, v12, 0, v13);
    clippingLayerHost = self->_clippingLayerHost;
    if (clippingLayerHost)
    {
      [(THWClippingLayerHost *)clippingLayerHost setInteractiveCanvasController:0];
      [(THWClippingLayerHost *)self->_clippingLayerHost teardownAndTransferCanvasLayersToHost:[(THWZoomableCanvasController *)self layerHost]];

      self->_clippingLayerHost = 0;
    }

    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController disableAllGestures];
    [(THWZoomableCanvasController *)self setUnscaledFrame:x viewScale:y, width, height, scale];
    [(TSKScrollView *)self->_scrollView hideScrollIndicators];
    [(TSKScrollView *)self->_scrollView setMayPassScrollEventsToNextResponder:1];
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setNestedCanvasAllowLayoutAndRenderOnThread:0];
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setAllowLayoutAndRenderOnThread:1];
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setCreateRepsForOffscreenLayouts:1];
    [-[TSDCanvasLayerHosting canvasLayer](self->_layerHost "canvasLayer")];
    [(THWZoomableCanvasController *)self p_updateWithDelegate];
  }

  return scrollView == 0;
}

- (BOOL)createLayerHostIfNeededWithUnscaledFrame:(CGRect)frame viewScale:(double)scale
{
  if (self->_scrollView || self->_layerHost || self->_interactiveCanvasController || self->_clippingLayerHost)
  {
    return 0;
  }

  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  THCanvasAndClippingLayerHostCreateWithClass(self, &self->_interactiveCanvasController, &self->_clippingLayerHost, 0);
  v5 = 1;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setNestedCanvasAllowLayoutAndRenderOnThread:1];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setCreateRepsForOffscreenLayouts:1];
  [(TSDCanvasLayer *)[(THWClippingLayerHost *)self->_clippingLayerHost canvasLayer] setCenteredInScrollView:1];
  [(THWZoomableCanvasController *)self setUnscaledFrame:x viewScale:y, width, height, scale];
  [(THWZoomableCanvasController *)self p_updateWithDelegate];
  return v5;
}

- (void)p_updateWithDelegate
{
  if (self->_delegate)
  {
    [(THWZoomableCanvasController *)self p_rebuildContentSize];
    [(THWZoomableCanvasController *)self p_updateContentsScale];
    if (objc_opt_respondsToSelector())
    {
      [(THWZoomableCanvasControllerDelegate *)self->_delegate zoomableCanvasControllerCustomizeLayerHost:self];
    }

    [(THWZoomableCanvasController *)self p_rebuildInfos];
  }
}

- (void)p_updateContentsScale
{
  if (self->_clippingLayerHost)
  {
    canvas = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController canvas];
    [(THWZoomableCanvasControllerDelegate *)self->_delegate zoomableCanvasControllerContentsScale:self];

    [canvas i_setContentsScale:?];
  }
}

- (void)setUnscaledFrame:(CGRect)frame viewScale:(double)scale
{
  TSDMultiplyRectScalar();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  scrollView = self->_scrollView;
  if (scrollView)
  {
    [(TSKScrollView *)scrollView frame];
    v15 = v14;
    v17 = v16;
    clippingLayer = self->_scrollView;
  }

  else
  {
    clippingLayerHost = self->_clippingLayerHost;
    if (!clippingLayerHost)
    {
      return;
    }

    [(CALayer *)[(THWClippingLayerHost *)clippingLayerHost clippingLayer] frame];
    v15 = v20;
    v17 = v21;
    clippingLayer = [(THWClippingLayerHost *)self->_clippingLayerHost clippingLayer];
  }

  [(CALayer *)clippingLayer setFrame:v6, v8, v10, v12];
  if (v15 != v10 || v17 != v12)
  {
    [(THWZoomableCanvasController *)self p_rebuildContentSize];

    [(THWZoomableCanvasController *)self p_rebuildInfos];
  }
}

- (void)setDelegate:(id)delegate
{
  self->_delegate = delegate;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_17D1FC;
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
    v3[2] = sub_17D204;
    v3[3] = &unk_45B8B0;
    v3[4] = v4;
    dispatch_async(&_dispatch_main_q, v3);
  }
}

- (void)teardownController
{
  [(TSKScrollView *)self->_scrollView setDelegate:0];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController teardown];
  clippingLayerHost = self->_clippingLayerHost;

  [(THWClippingLayerHost *)clippingLayerHost teardown];
}

- (void)p_updateInfosToDisplay
{
  delegate = [(THWZoomableCanvasController *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    [(TSDInteractiveCanvasController *)[(THWZoomableCanvasController *)self interactiveCanvasController] visibleBoundsRect];
    v9 = CGRectUnion(v8, self->_targetVisibleRect);
    v5 = [(THWZoomableCanvasControllerDelegate *)v4 zoomableCanvasController:self infosToDisplayForViewport:v9.origin.x, v9.origin.y, v9.size.width, v9.size.height];
    interactiveCanvasController = [(THWZoomableCanvasController *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)interactiveCanvasController setInfosToDisplay:v5];
  }
}

- (void)p_rebuildContentSize
{
  interactiveCanvasController = [(THWZoomableCanvasController *)self interactiveCanvasController];
  if (self->_delegate)
  {
    v4 = interactiveCanvasController;
    if ([(TSDInteractiveCanvasController *)interactiveCanvasController layerHost])
    {
      [(THWZoomableCanvasControllerDelegate *)[(THWZoomableCanvasController *)self delegate] sizeOfCanvasForZoomableCanvasController:self];
      [objc_msgSend(-[TSDInteractiveCanvasController layerHost](v4 "layerHost")];
      v7 = [-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")];

      [v7 fixFrameAndScrollView];
    }
  }
}

- (void)p_rebuildInfos
{
  interactiveCanvasController = [(THWZoomableCanvasController *)self interactiveCanvasController];
  if (self->_delegate && [(TSDInteractiveCanvasController *)interactiveCanvasController layerHost])
  {

    [(THWZoomableCanvasController *)self p_updateInfosToDisplay];
  }
}

- (void)interactiveCanvasController:(id)controller willAnimateScrollToVisibleUnscaledRect:(CGRect)rect
{
  [(THWZoomableCanvasController *)self setTargetVisibleRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];

  [controller currentlyWaitingOnThreadedLayoutAndRender];
}

- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)animation stillAnimating:(BOOL)animating
{
  if (!animating)
  {
    [(THWZoomableCanvasController *)self setTargetVisibleRect:animation, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  }
}

- (id)interactiveCanvasController:(id)controller layoutGeometryProviderForLayout:(id)layout
{
  delegate = [(THWZoomableCanvasController *)self delegate];

  return [(THWZoomableCanvasControllerDelegate *)delegate zoomableCanvasController:self geometryProviderForLayout:layout];
}

- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep
{
  v6 = [(THWZoomableCanvasController *)self delegate:controller];
  if ([(THWZoomableCanvasControllerDelegate *)v6 conformsToProtocol:protocol])
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (CGRect)interactiveCanvasController:(id)controller expandBoundsForHitTesting:(CGRect)testing
{
  height = testing.size.height;
  width = testing.size.width;
  y = testing.origin.y;
  x = testing.origin.x;
  delegate = [(THWZoomableCanvasController *)self delegate];

  [(THWZoomableCanvasControllerDelegate *)delegate zoomableCanvasController:self expandBoundsForHitTesting:x, y, width, height];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)interactiveCanvasController:(id)controller primaryTargetForGesture:(id)gesture
{
  delegate = [(THWZoomableCanvasController *)self delegate];

  return [(THWZoomableCanvasControllerDelegate *)delegate zoomableCanvasController:self primaryTargetForGesture:gesture];
}

- (void)interactiveCanvasControllerDidZoom:(id)zoom
{
  delegate = [(THWZoomableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [zoom viewScale];

    [(THWZoomableCanvasControllerDelegate *)delegate zoomableCanvasController:self didEndZoomingAtScale:?];
  }
}

- (BOOL)interactiveCanvasControllerIsRelatedCanvasScrolling:(id)scrolling
{
  delegate = [(THWZoomableCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWZoomableCanvasControllerDelegate *)delegate zoomableCanvasControllerIsRelatedCanvasScrolling:self];
}

- (CGPoint)interactiveCanvasController:(id)controller clampContentOffset:(CGPoint)offset forViewScale:(double)scale scrollViewBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = offset.y;
  x = offset.x;
  [objc_msgSend(-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController layerHost];
  TSDMultiplySizeScalar();
  if (width <= v10)
  {
    v12 = x;
  }

  else
  {
    v12 = (width - v10) * -0.5;
  }

  if (height <= v11)
  {
    v13 = y;
  }

  else
  {
    v13 = (height - v11) * -0.5;
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)interactiveCanvasController:(id)controller allowsEditMenuForRep:(id)rep
{
  delegate = [(THWZoomableCanvasController *)self delegate];

  return [(THWZoomableCanvasControllerDelegate *)delegate zoomableCanvasController:self allowsEditMenuForRep:rep];
}

- (void)setupImmediatePressGesture
{
  if (!self->_immediatePressGesture)
  {
    v3 = [TSWPLongPressGestureRecognizer alloc];
    gestureDispatcher = [(TSDInteractiveCanvasController *)[(THWZoomableCanvasController *)self interactiveCanvasController] gestureDispatcher];
    v5 = [v3 initWithGestureDispatcher:gestureDispatcher gestureKind:TSWPImmediatePress];
    [(THWZoomableCanvasController *)self setImmediatePressGesture:v5];

    [(TSWPLongPressGestureRecognizer *)[(THWZoomableCanvasController *)self immediatePressGesture] setNumberOfTapsRequired:0];
    [(TSWPLongPressGestureRecognizer *)[(THWZoomableCanvasController *)self immediatePressGesture] setNumberOfTouchesRequired:1];
    [(TSWPLongPressGestureRecognizer *)[(THWZoomableCanvasController *)self immediatePressGesture] setMinimumPressDuration:0.0];
    [objc_msgSend(-[TSDCanvasLayerHosting asiOSCVC](-[THWZoomableCanvasController layerHost](self "layerHost")];
    [-[TSDInteractiveCanvasController gestureDispatcher](-[THWZoomableCanvasController interactiveCanvasController](self "interactiveCanvasController")];
  }
}

- (BOOL)isZoomedOut
{
  v3 = [-[TSDInteractiveCanvasController canvasView](self->_interactiveCanvasController "canvasView")];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController viewScale];
  v5 = v4;
  [v3 minimumPinchViewScale];
  return vabdd_f64(v5, v6) < 0.00999999978;
}

- (CGPoint)contentOffsetForAnchor:(CGPoint)anchor
{
  y = anchor.y;
  x = anchor.x;
  if (!self->_scrollView)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController contentOffset];
  v7 = v6;
  v9 = v8;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController viewScale];
  v11 = v10;
  [(TSKScrollView *)self->_scrollView bounds];
  v13 = v7 + x * v12 / v11;
  v15 = v9 + y * v14 / v11;
  result.y = v15;
  result.x = v13;
  return result;
}

- (CGPoint)clampedUnscaledContentOffset:(CGPoint)offset anchor:(CGPoint)anchor viewScale:(double)scale scrollViewBoundsSize:(CGSize)size
{
  v6 = anchor.x * size.width / scale;
  v7 = anchor.y * size.height / scale;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController clampedUnscaledContentOffset:offset.x - v6 forViewScale:offset.y - v7 scrollViewBoundsSize:scale, size.width, size.height];
  v9 = v6 + v8;
  v11 = v7 + v10;
  result.y = v11;
  result.x = v9;
  return result;
}

- (void)setViewScale:(double)scale contentOffset:(CGPoint)offset anchor:(CGPoint)anchor
{
  y = anchor.y;
  x = anchor.x;
  v7 = offset.y;
  v8 = offset.x;
  layerHost = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController layerHost];
  [objc_msgSend(layerHost "clippingLayer")];
  v13 = v8 - x * v12 / scale;
  v15 = v7 - y * v14 / scale;
  if (self->_clippingLayerHost)
  {
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController clampedUnscaledContentOffset:v13 forViewScale:v15, scale];
    canvasLayer = [layerHost canvasLayer];
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setViewScale:scale];
    [canvasLayer fixFrameAndScrollView];
    [canvasLayer bounds];
    TSDRectWithSize();
    [canvasLayer setFrame:?];
    TSDMultiplyPointScalar();
    clippingLayerHost = self->_clippingLayerHost;

    [(THWClippingLayerHost *)clippingLayerHost setContentOffset:?];
  }

  else if (self->_scrollView)
  {
    interactiveCanvasController = self->_interactiveCanvasController;

    [(TSDInteractiveCanvasController *)interactiveCanvasController setViewScale:1 contentOffset:0 clampOffset:scale animated:v13, v15];
  }
}

- (_NSRange)loadedPageRange
{
  length = self->_loadedPageRange.length;
  location = self->_loadedPageRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)targetVisibleRect
{
  x = self->_targetVisibleRect.origin.x;
  y = self->_targetVisibleRect.origin.y;
  width = self->_targetVisibleRect.size.width;
  height = self->_targetVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end