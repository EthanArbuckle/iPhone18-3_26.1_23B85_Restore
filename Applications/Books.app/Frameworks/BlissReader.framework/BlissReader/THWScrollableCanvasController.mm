@interface THWScrollableCanvasController
- (BOOL)allowCopy;
- (BOOL)allowSelectionPopover;
- (BOOL)canvasViewControllerShouldShowScaleFeedback:(id)a3;
- (BOOL)createLayerHostIfNeededWithFrame:(CGRect)a3 viewScale:(double)a4;
- (BOOL)createViewIfNeededWithFrame:(CGRect)a3 viewScale:(double)a4;
- (BOOL)interactiveCanvasController:(id)a3 allowsEditMenuForRep:(id)a4;
- (BOOL)interactiveCanvasController:(id)a3 allowsHyperlinkWithGesture:(id)a4 forRep:(id)a5;
- (BOOL)interactiveCanvasController:(id)a3 shouldBeginEditingTHWPRep:(id)a4 withGesture:(id)a5;
- (BOOL)interactiveCanvasControllerIsRelatedCanvasScrolling:(id)a3;
- (BOOL)p_shouldUseOverlayScrollerOnly;
- (BOOL)userInteractionEnabled;
- (CGPoint)clampedUnscaledContentOffset:(CGPoint)a3 anchor:(CGPoint)a4 viewScale:(double)a5 scrollViewBoundsSize:(CGSize)a6;
- (CGPoint)contentOffsetForAnchor:(CGPoint)a3;
- (CGPoint)interactiveCanvasController:(id)a3 clampContentOffset:(CGPoint)a4 forViewScale:(double)a5 scrollViewBoundsSize:(CGSize)a6;
- (CGRect)frame;
- (CGRect)insetFrame:(CGRect)a3;
- (CGRect)interactiveCanvasController:(id)a3 expandBoundsForHitTesting:(CGRect)a4;
- (CGRect)targetVisibleRect;
- (CGSize)p_scrollViewContentSize;
- (CGSize)unscaledContentSizeForFillScreen;
- (THWScrollableCanvasController)initWithDocumentRoot:(id)a3;
- (id)actionForHyperlink:(id)a3 inRep:(id)a4 gesture:(id)a5;
- (id)activityItemProviderWithCachedAnnotation:(id)a3;
- (id)bookNavigatorForInteractiveCanvasController:(id)a3;
- (id)canvasViewController;
- (id)documentNavigatorForInteractiveCanvasController:(id)a3;
- (id)interactiveCanvasController:(id)a3 delegateConformingToProtocol:(id)a4 forRep:(id)a5;
- (id)interactiveCanvasController:(id)a3 layoutGeometryProviderForLayout:(id)a4;
- (id)interactiveCanvasController:(id)a3 maskLayerForBounds:(CGRect)a4;
- (id)interactiveCanvasController:(id)a3 primaryTargetForGesture:(id)a4;
- (void)addAlternateLayersToArray:(id)a3;
- (void)dealloc;
- (void)didAddView;
- (void)disableCanvasInteraction;
- (void)displayModeDidChange:(int)a3;
- (void)interactiveCanvasController:(id)a3 willAnimateScrollToVisibleUnscaledRect:(CGRect)a4;
- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)a3 stillAnimating:(BOOL)a4;
- (void)interactiveCanvasControllerDidLayout:(id)a3;
- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)a3;
- (void)interactiveCanvasControllerDidScroll:(id)a3;
- (void)interactiveCanvasControllerWasTapped:(id)a3;
- (void)invalidateLayoutsAndFrames;
- (void)invalidateViews;
- (void)p_addStrokeLayer;
- (void)p_rebuildUpdateInfos:(BOOL)a3;
- (void)p_scaleToFitWidth;
- (void)p_updateContentsScale;
- (void)p_updateInfosToDisplay;
- (void)p_updateRasterizeOnLayer;
- (void)p_updateWithDelegate;
- (void)presentSearchResultsForString:(id)a3;
- (void)selectionDidChange;
- (void)setDelegate:(id)a3;
- (void)setFrame:(CGRect)a3 scale:(double)a4;
- (void)setRasterize:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 anchor:(CGPoint)a5;
- (void)setupImmediatePressGestureWithSimultaneousGestures:(id)a3;
- (void)teardownController;
- (void)teardownView;
@end

@implementation THWScrollableCanvasController

- (THWScrollableCanvasController)initWithDocumentRoot:(id)a3
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

- (BOOL)createViewIfNeededWithFrame:(CGRect)a3 viewScale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(THWScrollableCanvasController *)self delegate];
  if ([(THWScrollableCanvasController *)self mainView]|| [(THWScrollableCanvasController *)self scrollView]|| [(THWScrollableCanvasController *)self layerHost]|| ([(THWScrollableCanvasControllerDelegate *)v10 deferViewCreationForScrollableCanvasController:self]& 1) != 0)
  {
    return 0;
  }

  TSDRoundedRectForMainScreen();
  v16 = [[UIView alloc] initWithFrame:{v12, v13, v14, v15}];
  [(THWScrollableCanvasController *)self setStrokeLayer:0];
  [(THWScrollableCanvasControllerDelegate *)v10 contentInsetsForScrollableCanvasController:self];
  TSDRoundedRectForMainScreen();
  v21 = [[THScrollView alloc] initWithFrame:v17, v18, v19, v20];
  [(THScrollView *)v21 setMayPassScrollEventsToNextResponder:1];
  if (objc_opt_respondsToSelector())
  {
    [(THWScrollableCanvasControllerDelegate *)v10 scrollViewContentInsetForScrollableCanvasController:self];
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

  v25 = [(THWScrollableCanvasController *)self interactiveCanvasController];
  [(THInteractiveCanvasController *)v25 disableNormalGestures];
  [(THInteractiveCanvasController *)v25 enableGestureKinds:[NSArray arrayWithObject:TSWPImmediateSingleTap]];
  v26 = [-[THInteractiveCanvasController layerHost](v25 "layerHost")];
  [v26 setAllowsPinchZoom:0];
  [(TSKScrollView *)[(THWScrollableCanvasController *)self scrollView] addSubview:[(TSDCanvasLayerHosting *)[(THWScrollableCanvasController *)self layerHost] canvasView]];
  [(TSKScrollView *)[(THWScrollableCanvasController *)self scrollView] setDelegate:v25];
  [(THInteractiveCanvasController *)v25 setNestedCanvasAllowLayoutAndRenderOnThread:0];
  [(THInteractiveCanvasController *)v25 setAllowLayoutAndRenderOnThread:1];
  [(THInteractiveCanvasController *)v25 setCreateRepsForOffscreenLayouts:1];
  objc_opt_class();
  [TSUDynamicCast() setDelegate:self];
  [(THWScrollableCanvasController *)self setFrame:x scale:y, width, height, a4];
  if (objc_opt_respondsToSelector())
  {
    if ([(THWScrollableCanvasControllerDelegate *)v10 centeredInScrollViewForScrollableCanvasController:self])
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
        v12 = [(TSDCanvasLayerHosting *)[(THWScrollableCanvasController *)self layerHost] canvasLayer];

        [v12 setMaximumPinchViewScale:v11];
      }
    }
  }
}

- (void)p_updateContentsScale
{
  if (self->_clippingLayerHost)
  {
    v3 = [(THInteractiveCanvasController *)self->_interactiveCanvasController canvas];
    [(THWScrollableCanvasControllerDelegate *)self->_delegate contentsScaleForScrollableCanvasController:self];

    [v3 i_setContentsScale:?];
  }
}

- (BOOL)createLayerHostIfNeededWithFrame:(CGRect)a3 viewScale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(THWScrollableCanvasController *)self scrollView]|| [(THWScrollableCanvasController *)self layerHost]|| [(THWScrollableCanvasController *)self interactiveCanvasController]|| [(THWScrollableCanvasController *)self clippingLayerHost])
  {
    return 0;
  }

  v12 = objc_opt_class();
  THCanvasAndClippingLayerHostCreateWithClass(self, &self->_interactiveCanvasController, &self->_clippingLayerHost, v12);
  v10 = 1;
  [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] setNestedCanvasAllowLayoutAndRenderOnThread:1];
  [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] setCreateRepsForOffscreenLayouts:1];
  [(THWScrollableCanvasController *)self setFrame:x scale:y, width, height, a4];
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

- (void)setupImmediatePressGestureWithSimultaneousGestures:(id)a3
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
    v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(a3);
          }

          [-[THInteractiveCanvasController gestureDispatcher](self->_interactiveCanvasController "gestureDispatcher")];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  [-[THInteractiveCanvasController canvasView](self->_interactiveCanvasController "canvasView")];
  [(TSKScrollView *)self->_scrollView setUserInteractionEnabled:v3];
  [(TSKScrollView *)self->_scrollView setScrollEnabled:v3];
  v5 = [(THWScrollableCanvasController *)self mainView];

  [(UIView *)v5 setUserInteractionEnabled:v3];
}

- (BOOL)userInteractionEnabled
{
  v2 = [(THInteractiveCanvasController *)self->_interactiveCanvasController canvasView];

  return [v2 isUserInteractionEnabled];
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

- (CGRect)insetFrame:(CGRect)a3
{
  [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] contentInsetsForScrollableCanvasController:self];

  TSDRoundedRectForMainScreen();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setFrame:(CGRect)a3 scale:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  TSDRoundedRectForMainScreen();
  v53 = v11;
  v54 = v10;
  v51 = v13;
  v52 = v12;
  [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] contentInsetsForScrollableCanvasController:self];
  [(THWScrollableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [(THWScrollableCanvasController *)self delegate];
    [(THWScrollableCanvasController *)self insetFrame:x, y, width, height];
    [(THWScrollableCanvasControllerDelegate *)v14 scrollableCanvasController:self viewScaleForFrameSize:v15 withScale:v16, a4];
    v55 = v17;
  }

  else
  {
    v55 = a4;
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
      [(THInteractiveCanvasController *)self->_interactiveCanvasController setViewScale:1 andScrollViewFrame:0 maintainPosition:v55 animated:v19, v21, v23, v25];

      [(THWScrollableCanvasController *)self p_rebuild];
    }
  }

  else if ([(THWScrollableCanvasController *)self mainView]&& [(THWScrollableCanvasController *)self scrollView]&& +[NSThread isMainThread])
  {
    if (([(UIView *)[(THWScrollableCanvasController *)self mainView] frame], v58.origin.x = v32, v58.origin.y = v33, v58.size.width = v34, v58.size.height = v35, v57.origin.y = v53, v57.origin.x = v54, v57.size.height = v51, v57.size.width = v52, !CGRectEqualToRect(v57, v58)) || ([(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] viewScale], v36 != v55) && vabdd_f64(v36, v55) >= fabs(v55 * 0.000000999999997) || ([(TSKScrollView *)[(THWScrollableCanvasController *)self scrollView] contentSize], [(THWScrollableCanvasController *)self p_scrollViewContentSize], (TSDNearlyEqualSizes() & 1) == 0))
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
      [(THInteractiveCanvasController *)self->_interactiveCanvasController setViewScale:1 andScrollViewFrame:0 maintainPosition:v55 animated:v44, v45, v41, v43];
      [(THWScrollableCanvasController *)self p_rebuild];
      if (v39)
      {
        v46 = [(THWScrollableCanvasController *)self interactiveCanvasController];

        [(THInteractiveCanvasController *)v46 setContentOffset:0 animated:v50, v48];
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

- (void)setDelegate:(id)a3
{
  self->_delegate = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_1A2100;
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
  v3 = [(THWScrollableCanvasController *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(THWScrollableCanvasControllerDelegate *)v3 infosChangeForViewportChangeInScrollableCanvasController:self];
    v6 = [(THWScrollableCanvasController *)self interactiveCanvasController];
    if (![-[THInteractiveCanvasController infosToDisplay](v6 "infosToDisplay")] || v5)
    {
      [(THWScrollableCanvasController *)self targetVisibleRect];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(THInteractiveCanvasController *)v6 visibleBoundsRect];
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
        v20 = [(THWScrollableCanvasController *)self interactiveCanvasController];

        [(THInteractiveCanvasController *)v20 setInfosToDisplay:v19];
      }
    }
  }
}

- (void)addAlternateLayersToArray:(id)a3
{
  v5 = [(THWClippingLayerHost *)[(THWScrollableCanvasController *)self clippingLayerHost] layer];
  if (v5)
  {
    [a3 addObject:v5];
    v6 = [(THWScrollableCanvasController *)self strokeLayer];
    if (v6)
    {

      [a3 addObject:v6];
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
    v4 = [(THWClippingLayerHost *)[(THWScrollableCanvasController *)self clippingLayerHost] layer];
    if (v4)
    {
      [(CALayer *)v4 position];

      [v3 setPosition:?];
    }
  }
}

- (void)p_rebuildUpdateInfos:(BOOL)a3
{
  v3 = a3;
  v5 = [(THWScrollableCanvasController *)self interactiveCanvasController];
  if ([(THWScrollableCanvasController *)self delegate]&& v5)
  {
    [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] sizeOfCanvasForScrollableCanvasController:self];
    [objc_msgSend(-[THInteractiveCanvasController layerHost](v5 "layerHost")];
    if ([(THWScrollableCanvasController *)self scrollView])
    {
      [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] contentInsetsForScrollableCanvasController:self];
      [(TSKScrollView *)[(THWScrollableCanvasController *)self scrollView] setScrollIndicatorInsets:4.0, 0.0, 0.0, 2.0 - v8];
    }

    if (v3)
    {
      [(THWScrollableCanvasController *)self p_updateInfosToDisplay];
    }

    [(THWScrollableCanvasController *)self p_addStrokeLayer];
    [objc_msgSend(-[THInteractiveCanvasController layerHost](v5 "layerHost")];
    [(THWScrollableCanvasController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [(THWScrollableCanvasController *)self delegate];
      v10 = [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] layerHost];

      [(THWScrollableCanvasControllerDelegate *)v9 scrollableCanvasController:self customizeLayerHost:v10];
    }
  }
}

- (BOOL)allowCopy
{
  v2 = [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] scrollableCanvasHost];

  return [v2 scrollableCanvasAllowCopy];
}

- (id)activityItemProviderWithCachedAnnotation:(id)a3
{
  v4 = [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] scrollableCanvasHost];

  return [v4 scrollableCanvasActivityItemProviderWithCachedAnnotation:a3];
}

- (void)presentSearchResultsForString:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THWScrollableCanvasController presentSearchResultsForString:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWScrollableCanvasController.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:818 description:@"not yet implemented"];
}

- (void)interactiveCanvasControllerWasTapped:(id)a3
{
  v4 = [(THWScrollableCanvasControllerDelegate *)[(THWScrollableCanvasController *)self delegate] scrollableCanvasHost];

  [v4 scrollableCanvasViewControllerDidReceiveBackgroundTap:self];
}

- (id)actionForHyperlink:(id)a3 inRep:(id)a4 gesture:(id)a5
{
  v9 = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)v9 scrollableCanvasController:self actionForHyperlink:a3 inRep:a4 gesture:a5];
}

- (void)interactiveCanvasController:(id)a3 willAnimateScrollToVisibleUnscaledRect:(CGRect)a4
{
  [(THWScrollableCanvasController *)self setTargetVisibleRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  if (([a3 currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0 && -[THWScrollableCanvasController updateInfosOnScroll](self, "updateInfosOnScroll"))
  {

    [(THWScrollableCanvasController *)self p_updateInfosToDisplay];
  }
}

- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)a3 stillAnimating:(BOOL)a4
{
  if (!a4)
  {
    [(THWScrollableCanvasController *)self setTargetVisibleRect:a3, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  }
}

- (void)interactiveCanvasControllerDidScroll:(id)a3
{
  if (([a3 currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0 && -[THWScrollableCanvasController updateInfosOnScroll](self, "updateInfosOnScroll"))
  {

    [(THWScrollableCanvasController *)self p_updateInfosToDisplay];
  }
}

- (id)interactiveCanvasController:(id)a3 layoutGeometryProviderForLayout:(id)a4
{
  v6 = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)v6 scrollableCanvasController:self geometryProviderForLayout:a4];
}

- (id)interactiveCanvasController:(id)a3 delegateConformingToProtocol:(id)a4 forRep:(id)a5
{
  v6 = [(THWScrollableCanvasController *)self delegate:a3];
  if ([(THWScrollableCanvasControllerDelegate *)v6 conformsToProtocol:a4])
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)interactiveCanvasControllerDidLayout:(id)a3
{
  if (self->_updateCanvasSizeOnLayout)
  {
    [(THWScrollableCanvasController *)self p_rebuildUpdateInfos:0];
  }
}

- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)a3
{
  if (([a3 currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0)
  {

    [(THWScrollableCanvasController *)self p_updateInfosToDisplay];
  }
}

- (CGRect)interactiveCanvasController:(id)a3 expandBoundsForHitTesting:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(THWScrollableCanvasController *)self delegate];

  [(THWScrollableCanvasControllerDelegate *)v9 scrollableCanvasController:self expandBoundsForHitTesting:x, y, width, height];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)interactiveCanvasController:(id)a3 primaryTargetForGesture:(id)a4
{
  v6 = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)v6 scrollableCanvasController:self primaryTargetForGesture:a4];
}

- (CGPoint)interactiveCanvasController:(id)a3 clampContentOffset:(CGPoint)a4 forViewScale:(double)a5 scrollViewBoundsSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  y = a4.y;
  x = a4.x;
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

- (id)interactiveCanvasController:(id)a3 maskLayerForBounds:(CGRect)a4
{
  v5 = [(THWScrollableCanvasController *)self delegate:a3];

  return [(THWScrollableCanvasControllerDelegate *)v5 maskLayerForScrollableCanvasController:self];
}

- (BOOL)interactiveCanvasController:(id)a3 allowsEditMenuForRep:(id)a4
{
  v6 = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)v6 scrollableCanvasController:self allowsEditMenuForRep:a4];
}

- (BOOL)interactiveCanvasController:(id)a3 shouldBeginEditingTHWPRep:(id)a4 withGesture:(id)a5
{
  v8 = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)v8 scrollableCanvasController:self shouldBeginEditingTHWPRep:a4 withGesture:a5];
}

- (BOOL)interactiveCanvasController:(id)a3 allowsHyperlinkWithGesture:(id)a4 forRep:(id)a5
{
  v7 = [(THWScrollableCanvasController *)self delegate];
  objc_opt_class();
  v8 = TSUDynamicCast();

  return [(THWScrollableCanvasControllerDelegate *)v7 scrollableCanvasController:self allowsHyperlinkWithGesture:a4 forRep:v8];
}

- (BOOL)allowSelectionPopover
{
  v2 = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)v2 allowSelectionPopover];
}

- (BOOL)interactiveCanvasControllerIsRelatedCanvasScrolling:(id)a3
{
  v4 = [(THWScrollableCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWScrollableCanvasControllerDelegate *)v4 isRelatedCanvasScrollingForScrollableCanvasController:self];
}

- (void)selectionDidChange
{
  if ([objc_msgSend(-[THInteractiveCanvasController editorController](-[THWScrollableCanvasController interactiveCanvasController](self "interactiveCanvasController")])
  {
    v3 = [(THWScrollableCanvasController *)self interactiveCanvasController];

    [(THInteractiveCanvasController *)v3 resumeEditing];
  }
}

- (id)bookNavigatorForInteractiveCanvasController:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(THWScrollableCanvasControllerDelegate *)delegate bookNavigatorForScrollableCanvasController:self];
}

- (id)documentNavigatorForInteractiveCanvasController:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(THWScrollableCanvasControllerDelegate *)delegate documentNavigatorForScrollableCanvasController:self];
}

- (CGPoint)contentOffsetForAnchor:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (CGPoint)clampedUnscaledContentOffset:(CGPoint)a3 anchor:(CGPoint)a4 viewScale:(double)a5 scrollViewBoundsSize:(CGSize)a6
{
  v6 = a4.x * a6.width / a5;
  v7 = a4.y * a6.height / a5;
  [(THInteractiveCanvasController *)self->_interactiveCanvasController clampedUnscaledContentOffset:a3.x - v6 forViewScale:a3.y - v7 scrollViewBoundsSize:a5, a6.width, a6.height];
  v9 = v6 + v8;
  v11 = v7 + v10;
  result.y = v11;
  result.x = v9;
  return result;
}

- (void)setViewScale:(double)a3 contentOffset:(CGPoint)a4 anchor:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  [(TSKScrollView *)self->_scrollView bounds];
  [(THInteractiveCanvasController *)self->_interactiveCanvasController setViewScale:1 contentOffset:0 clampOffset:a3 animated:v8 - x * v11 / a3, v7 - y * v12 / a3];

  [(THWScrollableCanvasController *)self p_rebuild];
}

- (void)didAddView
{
  [(THWScrollableCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(THWScrollableCanvasController *)self delegate];
    v4 = [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] layerHost];

    [(THWScrollableCanvasControllerDelegate *)v3 scrollableCanvasController:self customizeLayerHost:v4];
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
    v8 = [(THWScrollableCanvasController *)self interactiveCanvasController];

    [(THInteractiveCanvasController *)v8 setViewScale:v6];
  }
}

- (void)displayModeDidChange:(int)a3
{
  if (a3 == 1)
  {

    [(THWScrollableCanvasController *)self p_scaleToFitWidth];
  }

  else if (!a3)
  {
    v5 = [(THWScrollableCanvasController *)self interactiveCanvasController];

    [(THInteractiveCanvasController *)v5 setViewScale:1.0];
  }
}

- (CGSize)unscaledContentSizeForFillScreen
{
  v2 = [(THInteractiveCanvasController *)[(THWScrollableCanvasController *)self interactiveCanvasController] canvas];

  [v2 unscaledSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)disableCanvasInteraction
{
  v2 = [(TSDCanvasLayerHosting *)[(THWScrollableCanvasController *)self layerHost] canvasView];

  [v2 setUserInteractionEnabled:0];
}

- (void)p_updateRasterizeOnLayer
{
  clippingLayerHost = self->_clippingLayerHost;
  if (!clippingLayerHost)
  {
    clippingLayerHost = self->_strokeView;
  }

  v4 = [clippingLayerHost layer];
  [-[THInteractiveCanvasController canvas](self->_interactiveCanvasController "canvas")];
  [v4 setRasterizationScale:?];
  [v4 setShouldRasterize:self->_rasterize];
  rasterize = self->_rasterize;

  [v4 spi_setPreloadsCache:rasterize];
}

- (void)setRasterize:(BOOL)a3
{
  if (self->_rasterize != a3)
  {
    self->_rasterize = a3;
    [(THWScrollableCanvasController *)self p_updateRasterizeOnLayer];
  }
}

- (BOOL)canvasViewControllerShouldShowScaleFeedback:(id)a3
{
  [(THWScrollableCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v4 = [(THWScrollableCanvasController *)self delegate];

  return [(THWScrollableCanvasControllerDelegate *)v4 scrollableCanvasControllerShouldShowScaleFeedback:self];
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