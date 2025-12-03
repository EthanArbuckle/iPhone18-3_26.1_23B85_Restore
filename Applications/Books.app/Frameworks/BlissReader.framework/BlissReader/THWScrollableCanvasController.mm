@interface THWScrollableCanvasController
- (BOOL)allowCopy;
- (BOOL)allowSelectionPopover;
- (BOOL)canvasViewControllerShouldShowScaleFeedback:(id)feedback;
- (BOOL)createLayerHostIfNeededWithFrame:(CGRect)frame viewScale:(double)scale;
- (BOOL)createViewIfNeededWithFrame:(CGRect)frame viewScale:(double)scale;
- (BOOL)interactiveCanvasController:(id)controller allowsEditMenuForRep:(id)rep;
- (BOOL)interactiveCanvasController:(id)controller allowsHyperlinkWithGesture:(id)gesture forRep:(id)rep;
- (BOOL)interactiveCanvasController:(id)controller shouldBeginEditingTHWPRep:(id)rep withGesture:(id)gesture;
- (BOOL)interactiveCanvasControllerIsRelatedCanvasScrolling:(id)scrolling;
- (BOOL)p_shouldUseOverlayScrollerOnly;
- (BOOL)userInteractionEnabled;
- (CGPoint)clampedUnscaledContentOffset:(CGPoint)offset anchor:(CGPoint)anchor viewScale:(double)scale scrollViewBoundsSize:(CGSize)size;
- (CGPoint)contentOffsetForAnchor:(CGPoint)anchor;
- (CGPoint)interactiveCanvasController:(id)controller clampContentOffset:(CGPoint)offset forViewScale:(double)scale scrollViewBoundsSize:(CGSize)size;
- (CGRect)frame;
- (CGRect)insetFrame:(CGRect)frame;
- (CGRect)interactiveCanvasController:(id)controller expandBoundsForHitTesting:(CGRect)testing;
- (CGRect)targetVisibleRect;
- (CGSize)p_scrollViewContentSize;
- (CGSize)unscaledContentSizeForFillScreen;
- (THWScrollableCanvasController)initWithDocumentRoot:(id)root;
- (id)actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture;
- (id)activityItemProviderWithCachedAnnotation:(id)annotation;
- (id)bookNavigatorForInteractiveCanvasController:(id)controller;
- (id)canvasViewController;
- (id)documentNavigatorForInteractiveCanvasController:(id)controller;
- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep;
- (id)interactiveCanvasController:(id)controller layoutGeometryProviderForLayout:(id)layout;
- (id)interactiveCanvasController:(id)controller maskLayerForBounds:(CGRect)bounds;
- (id)interactiveCanvasController:(id)controller primaryTargetForGesture:(id)gesture;
- (void)addAlternateLayersToArray:(id)array;
- (void)dealloc;
- (void)didAddView;
- (void)disableCanvasInteraction;
- (void)displayModeDidChange:(int)change;
- (void)interactiveCanvasController:(id)controller willAnimateScrollToVisibleUnscaledRect:(CGRect)rect;
- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)animation stillAnimating:(BOOL)animating;
- (void)interactiveCanvasControllerDidLayout:(id)layout;
- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)thread;
- (void)interactiveCanvasControllerDidScroll:(id)scroll;
- (void)interactiveCanvasControllerWasTapped:(id)tapped;
- (void)invalidateLayoutsAndFrames;
- (void)invalidateViews;
- (void)p_addStrokeLayer;
- (void)p_rebuildUpdateInfos:(BOOL)infos;
- (void)p_scaleToFitWidth;
- (void)p_updateContentsScale;
- (void)p_updateInfosToDisplay;
- (void)p_updateRasterizeOnLayer;
- (void)p_updateWithDelegate;
- (void)presentSearchResultsForString:(id)string;
- (void)selectionDidChange;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame scale:(double)scale;
- (void)setRasterize:(BOOL)rasterize;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setViewScale:(double)scale contentOffset:(CGPoint)offset anchor:(CGPoint)anchor;
- (void)setupImmediatePressGestureWithSimultaneousGestures:(id)gestures;
- (void)teardownController;
- (void)teardownView;
@end

@implementation THWScrollableCanvasController

- (THWScrollableCanvasController)initWithDocumentRoot:(id)root
{
  v6.receiver = self;
  v6.super_class = THWScrollableCanvasController;
  v3 = [(THWScrollableCanvasController *)&v6 init];
  if (v3)
  {
    objc_opt_class();
    v3->_documentRoot = TSUDynamicCast();
    size = CGRectNull.size;
    v3->_targetVisibleRect.origin = CGRectNull.origin;
    v3->_targetVisibleRect.size = size;
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWScrollableCanvasController;
  [(THWScrollableCanvasController *)&v3 dealloc];
}

- (void)invalidateViews
{
  if (+[NSThread isMainThread]&& ![(THWScrollableCanvasController *)self scrollView])
  {
    interactiveCanvasController = self->_interactiveCanvasController;

    [(THInteractiveCanvasController *)interactiveCanvasController invalidateRepsIfSynced];
  }
}

- (BOOL)createViewIfNeededWithFrame:(CGRect)frame viewScale:(double)scale
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegate = [(THWScrollableCanvasController *)self delegate];
  if ([(THWScrollableCanvasController *)self mainView]|| [(THWScrollableCanvasController *)self scrollView]|| [(THWScrollableCanvasController *)self layerHost]|| ([(THWScrollableCanvasControllerDelegate *)delegate deferViewCreationForScrollableCanvasController:self]& 1) != 0)
  {
    return 0;
  }

  TSDRoundedRectForMainScreen();
  v16 = [[UIView alloc] initWithFrame:{v12, v13, v14, v15}];
  [(THWScrollableCanvasController *)self setStrokeLayer:0];
  [(THWScrollableCanvasControllerDelegate *)delegate contentInsetsForScrollableCanvasController:self];
  TSDRoundedRectForMainScreen();
  v21 = [[THScrollView alloc] initWithFrame:v17, v18, v19, v20];
  [(THScrollView *)v21 setMayPassScrollEventsToNextResponder:1];
  if (objc_opt_respondsToSelector())
  {
    [(THWScrollableCanvasControllerDelegate *)delegate scrollViewContentInsetForScrollableCanvasController:self];
    [(THScrollView *)v21 setContentInset:?];
  }

  [(THScrollView *)v21 setClipsToBounds:0];
  [(THScrollView *)v21 setHandleNaturally:1];
  [(THScrollView *)v21 setBounces:1];
  [(THScrollView *)v21 setAlwaysBounceVertical:0];
  [(THScrollView *)v21 setAlwaysBounceHorizontal:0];
  [(THWScrollableCanvasController *)self setScrollView:v21];
  [(THWScrollableCanvasController *)self setStrokeView:v16];
  [(UIView *)[(THWScrollableCanvasController *)self strokeView] addSubview:[(THWScrollableCanvasController *)self scrollView]];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  THCanvasCreateWithClass(self, &self->_interactiveCanvasController, &self->_layerHost, v22, v23);
  clippingLayerHost = self->_clippingLayerHost;
  if (clippingLayerHost)
  {
    [(THWClippingLayerHost *)clippingLayerHost setInteractiveCanvasController:0];
    [(THWClippingLayerHost *)self->_clippingLayerHost teardownAndTransferCanvasLayersToHost:[(THWScrollableCanvasController *)self layerHost]];

    self->_clippingLayerHost = 0;
  }

  interactiveCanvasController = [(THWScrollableCanvasController *)self interactiveCanvasController];
  [(THInteractiveCanvasController *)interactiveCanvasController disableNormalGestures];
  [(THInteractiveCanvasController *)interactiveCanvasController enableGestureKinds:[NSArray arrayWithObject:TSWPImmediateSingleTap]];
  v26 = [-[THInteractiveCanvasController layerHost](interactiveCanvasController "layerHost")];
  [v26 setAllowsPinchZoom:0];
  [(TSKScrollView *)[(THWScrollableCanvasController *)self scrollView] addSubview:[(TSDCanvasLayerHosting *)[(THWScrollableCanvasController *)self layerHost] canvasView]];
  [(TSKScrollView *)[(THWScrollableCanvasController *)self scrollView] setDelegate:interactiveCanvasController];
  [(THInteractiveCanvasController *)interactiveCanvasController setNestedCanvasAllowLayoutAndRenderOnThread:0];
  [(THInteractiveCanvasController *)interactiveCanvasController setAllowLayoutAndRenderOnThread:1];
  [(THInteractiveCanvasController *)interactiveCanvasController setCreateRepsForOffscreenLayouts:1];
  objc_opt_class();
  [TSUDynamicCast() setDelegate:self];
  [(THWScrollableCanvasController *)self setFrame:x scale:y, width, height, scale];
  if (objc_opt_respondsToSelector())
  {
    if ([(THWScrollableCanvasControllerDelegate *)delegate centeredInScrollViewForScrollableCanvasController:self])
    {
      [v26 setCenteredInScrollView:1];
    }
  }

  [(THWScrollableCanvasController *)self p_updateWithDelegate];
  [(THWScrollableCanvasController *)self p_updateRasterizeOnLayer];
  return 1;
}

- (id)canvasViewController
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (void)p_updateWithDelegate
{
  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [(THWScrollableCanvasControllerDelegate *)self->_delegate scrollableCanvasController:self customizeLayerHost:[(THInteractiveCanvasController *)self->_interactiveCanvasController layerHost]];
    }

    [(THWScrollableCanvasController *)self p_updateContentsScale];
    [(THWScrollableCanvasController *)self p_rebuild];
    [(THInteractiveCanvasController *)self->_interactiveCanvasController layoutIfNeeded];
    [(THWScrollableCanvasController *)self frame];
    [(THWScrollableCanvasController *)self insetFrame:?];
    v4 = v3;
    v6 = v5;
    [(THWScrollableCanvasController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] scrollableCanvasController:self allowsPinchZoomForFrameSize:v4, v6];
      if (v7 != 0.0)
      {
        [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] scrollableCanvasController:self minViewScaleForFrameSize:v4, v6];
        v9 = v8;
        [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] scrollableCanvasController:self maxViewScaleForFrameSize:v4, v6];
        v11 = v10;
        [-[TSDCanvasLayerHosting canvasLayer](-[THWScrollableCanvasController layerHost](self "layerHost")];
        [-[TSDCanvasLayerHosting canvasLayer](-[THWScrollableCanvasController layerHost](self "layerHost")];
        canvasLayer = [(TSDCanvasLayerHosting *)[(THWScrollableCanvasController *)self layerHost] canvasLayer];

        [canvasLayer setMaximumPinchViewScale:v11];
      }
    }
  }
}

- (void)p_updateContentsScale
{
  if (self->_clippingLayerHost)
  {
    canvas = [(THInteractiveCanvasController *)self->_interactiveCanvasController canvas];
    [(THWScrollableCanvasControllerDelegate *)self->_delegate contentsScaleForScrollableCanvasController:self];

    [canvas i_setContentsScale:?];
  }
}

- (BOOL)createLayerHostIfNeededWithFrame:(CGRect)frame viewScale:(double)scale
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(THWScrollableCanvasController *)self scrollView]|| [(THWScrollableCanvasController *)self layerHost]|| [(THWScrollableCanvasController *)self interactiveCanvasController]|| [(THWScrollableCanvasController *)self clippingLayerHost])
  {
    return 0;
  }

  v12 = objc_opt_class();
  THCanvasAndClippingLayerHostCreateWithClass(self, &self->_interactiveCanvasController, &self->_clippingLayerHost, v12);
  v10 = 1;
  [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] setNestedCanvasAllowLayoutAndRenderOnThread:1];
  [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] setCreateRepsForOffscreenLayouts:1];
  [(THWScrollableCanvasController *)self setFrame:x scale:y, width, height, scale];
  [(THWScrollableCanvasController *)self p_updateWithDelegate];
  [(THWScrollableCanvasController *)self p_updateRasterizeOnLayer];
  return v10;
}

- (BOOL)p_shouldUseOverlayScrollerOnly
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(THWScrollableCanvasControllerDelegate *)delegate scrollableCanvasControllerUseOverlayScrollerOnly:self];
}

- (void)setupImmediatePressGestureWithSimultaneousGestures:(id)gestures
{
  if ([(THInteractiveCanvasController *)self->_interactiveCanvasController canvasView])
  {
    v5 = TSWPImmediatePress;
    [(THInteractiveCanvasController *)self->_interactiveCanvasController enableGestureKinds:[NSArray arrayWithObject:TSWPImmediatePress]];
    v6 = [(THInteractiveCanvasController *)self->_interactiveCanvasController gestureRecognizerWithKind:v5];
    [-[THInteractiveCanvasController gestureDispatcher](self->_interactiveCanvasController "gestureDispatcher")];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [gestures countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(gestures);
          }

          [-[THInteractiveCanvasController gestureDispatcher](self->_interactiveCanvasController "gestureDispatcher")];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [gestures countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [-[THInteractiveCanvasController canvasView](self->_interactiveCanvasController "canvasView")];
  [(TSKScrollView *)self->_scrollView setUserInteractionEnabled:enabledCopy];
  [(TSKScrollView *)self->_scrollView setScrollEnabled:enabledCopy];
  mainView = [(THWScrollableCanvasController *)self mainView];

  [(UIView *)mainView setUserInteractionEnabled:enabledCopy];
}

- (BOOL)userInteractionEnabled
{
  canvasView = [(THInteractiveCanvasController *)self->_interactiveCanvasController canvasView];

  return [canvasView isUserInteractionEnabled];
}

- (CGSize)p_scrollViewContentSize
{
  [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] viewScale];
  [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] sizeOfCanvasForScrollableCanvasController:self];
  TSDMultiplySizeScalar();

  TSDRoundedSize();
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)insetFrame:(CGRect)frame
{
  [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] contentInsetsForScrollableCanvasController:self];

  TSDRoundedRectForMainScreen();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setFrame:(CGRect)frame scale:(double)scale
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  TSDRoundedRectForMainScreen();
  v53 = v11;
  v54 = v10;
  v51 = v13;
  v52 = v12;
  [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] contentInsetsForScrollableCanvasController:self];
  [(THWScrollableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(THWScrollableCanvasController *)self delegate];
    [(THWScrollableCanvasController *)self insetFrame:x, y, width, height];
    [(THWScrollableCanvasControllerDelegate *)delegate scrollableCanvasController:self viewScaleForFrameSize:v15 withScale:v16, scale];
    scaleCopy = v17;
  }

  else
  {
    scaleCopy = scale;
  }

  if ([(THWScrollableCanvasController *)self clippingLayerHost])
  {
    TSDRoundedRectForMainScreen();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(CALayer *)[(THWClippingLayerHost *)[(THWScrollableCanvasController *)self clippingLayerHost] clippingLayer] bounds];
    v27 = v26;
    v29 = v28;
    [(THWClippingLayerHost *)[(THWScrollableCanvasController *)self clippingLayerHost] setFrame:v19, v21, v23, v25];
    [(CALayer *)[(THWClippingLayerHost *)[(THWScrollableCanvasController *)self clippingLayerHost] clippingLayer] bounds];
    if (v27 != v31 || v29 != v30)
    {
      [(THInteractiveCanvasController *)self->_interactiveCanvasController setViewScale:1 andScrollViewFrame:0 maintainPosition:scaleCopy animated:v19, v21, v23, v25];

      [(THWScrollableCanvasController *)self p_rebuild];
    }
  }

  else if ([(THWScrollableCanvasController *)self mainView]&& [(THWScrollableCanvasController *)self scrollView]&& +[NSThread isMainThread])
  {
    if (([(UIView *)[(THWScrollableCanvasController *)self mainView] frame], v58.origin.x = v32, v58.origin.y = v33, v58.size.width = v34, v58.size.height = v35, v57.origin.y = v53, v57.origin.x = v54, v57.size.height = v51, v57.size.width = v52, !CGRectEqualToRect(v57, v58)) || ([(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] viewScale], v36 != scaleCopy) && vabdd_f64(v36, scaleCopy) >= fabs(scaleCopy * 0.000000999999997) || ([(TSKScrollView *)[(THWScrollableCanvasController *)self scrollView] contentSize], [(THWScrollableCanvasController *)self p_scrollViewContentSize], (TSDNearlyEqualSizes() & 1) == 0))
    {
      [(THWScrollableCanvasController *)self delegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] maintainScrollOffsetInFrameChangeForScrollableCanvasController:self])
      {
        v39 = 0;
        v47 = 0;
        v49 = 0;
      }

      else
      {
        [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] contentOffset];
        v47 = v38;
        v49 = v37;
        v39 = 1;
      }

      [(UIView *)[(THWScrollableCanvasController *)self mainView:v47] setFrame:v54, v53, v52, v51];
      [(THWScrollableCanvasController *)self mainView];
      TSDRoundedRectForView();
      v41 = v40;
      v43 = v42;
      [(THWScrollableCanvasController *)self mainView];
      TSDRoundedPointForView();
      [(THInteractiveCanvasController *)self->_interactiveCanvasController setViewScale:1 andScrollViewFrame:0 maintainPosition:scaleCopy animated:v44, v45, v41, v43];
      [(THWScrollableCanvasController *)self p_rebuild];
      if (v39)
      {
        interactiveCanvasController = [(THWScrollableCanvasController *)self interactiveCanvasController];

        [(THInteractiveCanvasController *)interactiveCanvasController setContentOffset:0 animated:v50, v48];
      }
    }
  }
}

- (CGRect)frame
{
  clippingLayerHost = self->_clippingLayerHost;
  if (!clippingLayerHost)
  {
    clippingLayerHost = [(THWScrollableCanvasController *)self mainView];
  }

  [(UIView *)clippingLayerHost frame];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setDelegate:(id)delegate
{
  self->_delegate = delegate;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_1A2100;
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
    v3[2] = sub_1A2108;
    v3[3] = &unk_45B8B0;
    v3[4] = v4;
    dispatch_async(&_dispatch_main_q, v3);
  }
}

- (void)teardownController
{
  [(THInteractiveCanvasController *)self->_interactiveCanvasController teardown];
  clippingLayerHost = self->_clippingLayerHost;

  [(THWClippingLayerHost *)clippingLayerHost teardown];
}

- (void)teardownView
{
  [(TSKScrollView *)self->_scrollView setDelegate:0];
  layerHost = self->_layerHost;

  [(TSDCanvasLayerHosting *)layerHost teardown];
}

- (void)invalidateLayoutsAndFrames
{
  v2 = [-[THInteractiveCanvasController layoutController](self->_interactiveCanvasController "layoutController")];
  v3 = objc_alloc_init(NSMutableArray);
  [v2 addLayoutsToArray:v3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v8 = TSUDynamicCast();
        if (v8)
        {
          v9 = v8;
          [v8 invalidateFrame];
          [v9 invalidateChildren];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)p_updateInfosToDisplay
{
  delegate = [(THWScrollableCanvasController *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    v5 = [(THWScrollableCanvasControllerDelegate *)delegate infosChangeForViewportChangeInScrollableCanvasController:self];
    interactiveCanvasController = [(THWScrollableCanvasController *)self interactiveCanvasController];
    if (![-[THInteractiveCanvasController infosToDisplay](interactiveCanvasController "infosToDisplay")] || v5)
    {
      [(THWScrollableCanvasController *)self targetVisibleRect];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(THInteractiveCanvasController *)interactiveCanvasController visibleBoundsRect];
      v24.origin.x = v15;
      v24.origin.y = v16;
      v24.size.width = v17;
      v24.size.height = v18;
      v22.origin.x = v8;
      v22.origin.y = v10;
      v22.size.width = v12;
      v22.size.height = v14;
      v23 = CGRectUnion(v22, v24);
      v19 = [(THWScrollableCanvasControllerDelegate *)v4 scrollableCanvasController:self infosToDisplayForViewport:v23.origin.x, v23.origin.y, v23.size.width, v23.size.height];
      if (([v19 isEqualToArray:{-[THInteractiveCanvasController infosToDisplay](-[THWScrollableCanvasController interactiveCanvasController](self, "interactiveCanvasController"), "infosToDisplay")}] & 1) == 0)
      {
        interactiveCanvasController2 = [(THWScrollableCanvasController *)self interactiveCanvasController];

        [(THInteractiveCanvasController *)interactiveCanvasController2 setInfosToDisplay:v19];
      }
    }
  }
}

- (void)addAlternateLayersToArray:(id)array
{
  layer = [(THWClippingLayerHost *)[(THWScrollableCanvasController *)self clippingLayerHost] layer];
  if (layer)
  {
    [array addObject:layer];
    strokeLayer = [(THWScrollableCanvasController *)self strokeLayer];
    if (strokeLayer)
    {

      [array addObject:strokeLayer];
    }
  }
}

- (void)p_addStrokeLayer
{
  v3 = [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] strokeLayerForScrollableCanvasController:self];
  [(CALayer *)[(THWScrollableCanvasController *)self strokeLayer] removeFromSuperlayer];
  [(THWScrollableCanvasController *)self setStrokeLayer:v3];
  if ([(THWScrollableCanvasController *)self strokeView])
  {
    if (v3)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [(CALayer *)[(UIView *)[(THWScrollableCanvasController *)self strokeView] layer] setMasksToBounds:0];
      [(CALayer *)[(UIView *)[(THWScrollableCanvasController *)self strokeView] layer] addSublayer:v3];

      +[CATransaction commit];
    }
  }

  else
  {
    layer = [(THWClippingLayerHost *)[(THWScrollableCanvasController *)self clippingLayerHost] layer];
    if (layer)
    {
      [(CALayer *)layer position];

      [v3 setPosition:?];
    }
  }
}

- (void)p_rebuildUpdateInfos:(BOOL)infos
{
  infosCopy = infos;
  interactiveCanvasController = [(THWScrollableCanvasController *)self interactiveCanvasController];
  if ([(THWScrollableCanvasController *)self delegate]&& interactiveCanvasController)
  {
    [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] sizeOfCanvasForScrollableCanvasController:self];
    [objc_msgSend(-[THInteractiveCanvasController layerHost](interactiveCanvasController "layerHost")];
    if ([(THWScrollableCanvasController *)self scrollView])
    {
      [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] contentInsetsForScrollableCanvasController:self];
      [(TSKScrollView *)[(THWScrollableCanvasController *)self scrollView] setScrollIndicatorInsets:4.0, 0.0, 0.0, 2.0 - v8];
    }

    if (infosCopy)
    {
      [(THWScrollableCanvasController *)self p_updateInfosToDisplay];
    }

    [(THWScrollableCanvasController *)self p_addStrokeLayer];
    [objc_msgSend(-[THInteractiveCanvasController layerHost](interactiveCanvasController "layerHost")];
    [(THWScrollableCanvasController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(THWScrollableCanvasController *)self delegate];
      layerHost = [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] layerHost];

      [(THWScrollableCanvasControllerDelegate *)delegate scrollableCanvasController:self customizeLayerHost:layerHost];
    }
  }
}

- (BOOL)allowCopy
{
  scrollableCanvasHost = [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] scrollableCanvasHost];

  return [scrollableCanvasHost scrollableCanvasAllowCopy];
}

- (id)activityItemProviderWithCachedAnnotation:(id)annotation
{
  scrollableCanvasHost = [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] scrollableCanvasHost];

  return [scrollableCanvasHost scrollableCanvasActivityItemProviderWithCachedAnnotation:annotation];
}

- (void)presentSearchResultsForString:(id)string
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THWScrollableCanvasController presentSearchResultsForString:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWScrollableCanvasController.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:818 description:@"not yet implemented"];
}

- (void)interactiveCanvasControllerWasTapped:(id)tapped
{
  scrollableCanvasHost = [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] scrollableCanvasHost];

  [scrollableCanvasHost scrollableCanvasViewControllerDidReceiveBackgroundTap:self];
}

- (id)actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture
{
  delegate = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)delegate scrollableCanvasController:self actionForHyperlink:hyperlink inRep:rep gesture:gesture];
}

- (void)interactiveCanvasController:(id)controller willAnimateScrollToVisibleUnscaledRect:(CGRect)rect
{
  [(THWScrollableCanvasController *)self setTargetVisibleRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if (([controller currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0 && -[THWScrollableCanvasController updateInfosOnScroll](self, "updateInfosOnScroll"))
  {

    [(THWScrollableCanvasController *)self p_updateInfosToDisplay];
  }
}

- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)animation stillAnimating:(BOOL)animating
{
  if (!animating)
  {
    [(THWScrollableCanvasController *)self setTargetVisibleRect:animation, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  }
}

- (void)interactiveCanvasControllerDidScroll:(id)scroll
{
  if (([scroll currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0 && -[THWScrollableCanvasController updateInfosOnScroll](self, "updateInfosOnScroll"))
  {

    [(THWScrollableCanvasController *)self p_updateInfosToDisplay];
  }
}

- (id)interactiveCanvasController:(id)controller layoutGeometryProviderForLayout:(id)layout
{
  delegate = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)delegate scrollableCanvasController:self geometryProviderForLayout:layout];
}

- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep
{
  v6 = [(THWScrollableCanvasController *)self delegate:controller];
  if ([(THWScrollableCanvasControllerDelegate *)v6 conformsToProtocol:protocol])
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)interactiveCanvasControllerDidLayout:(id)layout
{
  if (self->_updateCanvasSizeOnLayout)
  {
    [(THWScrollableCanvasController *)self p_rebuildUpdateInfos:0];
  }
}

- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)thread
{
  if (([thread currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0)
  {

    [(THWScrollableCanvasController *)self p_updateInfosToDisplay];
  }
}

- (CGRect)interactiveCanvasController:(id)controller expandBoundsForHitTesting:(CGRect)testing
{
  height = testing.size.height;
  width = testing.size.width;
  y = testing.origin.y;
  x = testing.origin.x;
  delegate = [(THWScrollableCanvasController *)self delegate];

  [(THWScrollableCanvasControllerDelegate *)delegate scrollableCanvasController:self expandBoundsForHitTesting:x, y, width, height];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)interactiveCanvasController:(id)controller primaryTargetForGesture:(id)gesture
{
  delegate = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)delegate scrollableCanvasController:self primaryTargetForGesture:gesture];
}

- (CGPoint)interactiveCanvasController:(id)controller clampContentOffset:(CGPoint)offset forViewScale:(double)scale scrollViewBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = offset.y;
  x = offset.x;
  [-[TSDCanvasLayerHosting canvasLayer](-[THWScrollableCanvasController layerHost](self layerHost];
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

- (id)interactiveCanvasController:(id)controller maskLayerForBounds:(CGRect)bounds
{
  v5 = [(THWScrollableCanvasController *)self delegate:controller];

  return [(THWScrollableCanvasControllerDelegate *)v5 maskLayerForScrollableCanvasController:self];
}

- (BOOL)interactiveCanvasController:(id)controller allowsEditMenuForRep:(id)rep
{
  delegate = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)delegate scrollableCanvasController:self allowsEditMenuForRep:rep];
}

- (BOOL)interactiveCanvasController:(id)controller shouldBeginEditingTHWPRep:(id)rep withGesture:(id)gesture
{
  delegate = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)delegate scrollableCanvasController:self shouldBeginEditingTHWPRep:rep withGesture:gesture];
}

- (BOOL)interactiveCanvasController:(id)controller allowsHyperlinkWithGesture:(id)gesture forRep:(id)rep
{
  delegate = [(THWScrollableCanvasController *)self delegate];
  objc_opt_class();
  v8 = TSUDynamicCast();

  return [(THWScrollableCanvasControllerDelegate *)delegate scrollableCanvasController:self allowsHyperlinkWithGesture:gesture forRep:v8];
}

- (BOOL)allowSelectionPopover
{
  delegate = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)delegate allowSelectionPopover];
}

- (BOOL)interactiveCanvasControllerIsRelatedCanvasScrolling:(id)scrolling
{
  delegate = [(THWScrollableCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWScrollableCanvasControllerDelegate *)delegate isRelatedCanvasScrollingForScrollableCanvasController:self];
}

- (void)selectionDidChange
{
  if ([objc_msgSend(-[THInteractiveCanvasController editorController](-[THWScrollableCanvasController interactiveCanvasController](self "interactiveCanvasController")])
  {
    interactiveCanvasController = [(THWScrollableCanvasController *)self interactiveCanvasController];

    [(THInteractiveCanvasController *)interactiveCanvasController resumeEditing];
  }
}

- (id)bookNavigatorForInteractiveCanvasController:(id)controller
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(THWScrollableCanvasControllerDelegate *)delegate bookNavigatorForScrollableCanvasController:self];
}

- (id)documentNavigatorForInteractiveCanvasController:(id)controller
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(THWScrollableCanvasControllerDelegate *)delegate documentNavigatorForScrollableCanvasController:self];
}

- (CGPoint)contentOffsetForAnchor:(CGPoint)anchor
{
  y = anchor.y;
  x = anchor.x;
  [(THInteractiveCanvasController *)self->_interactiveCanvasController contentOffset];
  v7 = v6;
  v9 = v8;
  [(THInteractiveCanvasController *)self->_interactiveCanvasController viewScale];
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
  [(THInteractiveCanvasController *)self->_interactiveCanvasController clampedUnscaledContentOffset:offset.x - v6 forViewScale:offset.y - v7 scrollViewBoundsSize:scale, size.width, size.height];
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
  [(TSKScrollView *)self->_scrollView bounds];
  [(THInteractiveCanvasController *)self->_interactiveCanvasController setViewScale:1 contentOffset:0 clampOffset:scale animated:v8 - x * v11 / scale, v7 - y * v12 / scale];

  [(THWScrollableCanvasController *)self p_rebuild];
}

- (void)didAddView
{
  [(THWScrollableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(THWScrollableCanvasController *)self delegate];
    layerHost = [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] layerHost];

    [(THWScrollableCanvasControllerDelegate *)delegate scrollableCanvasController:self customizeLayerHost:layerHost];
  }
}

- (void)p_scaleToFitWidth
{
  [(TSKScrollView *)[(THWScrollableCanvasController *)self scrollView] frame];
  v4 = v3;
  [-[THInteractiveCanvasController canvas](-[THWScrollableCanvasController interactiveCanvasController](self "interactiveCanvasController")];
  v6 = v4 / v5;
  if (v6 < 1.0 || ([(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] viewScale], vabdd_f64(v6, v7) >= 0.00999999978))
  {
    interactiveCanvasController = [(THWScrollableCanvasController *)self interactiveCanvasController];

    [(THInteractiveCanvasController *)interactiveCanvasController setViewScale:v6];
  }
}

- (void)displayModeDidChange:(int)change
{
  if (change == 1)
  {

    [(THWScrollableCanvasController *)self p_scaleToFitWidth];
  }

  else if (!change)
  {
    interactiveCanvasController = [(THWScrollableCanvasController *)self interactiveCanvasController];

    [(THInteractiveCanvasController *)interactiveCanvasController setViewScale:1.0];
  }
}

- (CGSize)unscaledContentSizeForFillScreen
{
  canvas = [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] canvas];

  [canvas unscaledSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)disableCanvasInteraction
{
  canvasView = [(TSDCanvasLayerHosting *)[(THWScrollableCanvasController *)self layerHost] canvasView];

  [canvasView setUserInteractionEnabled:0];
}

- (void)p_updateRasterizeOnLayer
{
  clippingLayerHost = self->_clippingLayerHost;
  if (!clippingLayerHost)
  {
    clippingLayerHost = self->_strokeView;
  }

  layer = [clippingLayerHost layer];
  [-[THInteractiveCanvasController canvas](self->_interactiveCanvasController "canvas")];
  [layer setRasterizationScale:?];
  [layer setShouldRasterize:self->_rasterize];
  rasterize = self->_rasterize;

  [layer spi_setPreloadsCache:rasterize];
}

- (void)setRasterize:(BOOL)rasterize
{
  if (self->_rasterize != rasterize)
  {
    self->_rasterize = rasterize;
    [(THWScrollableCanvasController *)self p_updateRasterizeOnLayer];
  }
}

- (BOOL)canvasViewControllerShouldShowScaleFeedback:(id)feedback
{
  [(THWScrollableCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  delegate = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)delegate scrollableCanvasControllerShouldShowScaleFeedback:self];
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