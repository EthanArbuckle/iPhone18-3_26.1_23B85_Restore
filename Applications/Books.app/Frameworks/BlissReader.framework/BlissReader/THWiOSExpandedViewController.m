@interface THWiOSExpandedViewController
- (BOOL)allowTouchOutsideCanvasView:(id)a3 forGesture:(id)a4;
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)handleGesture:(id)a3;
- (BOOL)inFlowMode;
- (BOOL)isZoomed;
- (BOOL)p_alwaysVisible;
- (BOOL)p_hasSourceRepForInfo:(id)a3;
- (BOOL)p_hasTargetRepForInfo:(id)a3;
- (BOOL)p_startsVisible;
- (BOOL)prefersStatusBarHidden;
- (CGAffineTransform)bookViewWillAnimateRotationToSize:(SEL)a3 withContext:(CGSize)a4;
- (CGPoint)interactiveCanvasController:(id)a3 clampContentOffset:(CGPoint)a4 forViewScale:(double)a5;
- (CGRect)interactiveCanvasController:(id)a3 expandBoundsForHitTesting:(CGRect)a4;
- (CGRect)interactiveCanvasController:(id)a3 expandVisibleBoundsForTiling:(CGRect)a4;
- (CGRect)pFrameInUnscaledCanvasSizeForExpandedRep:(id)a3;
- (CGRect)preRotateViewFrame;
- (CGRect)rectForCompletionAnimationWithRep:(id)a3;
- (CGRect)widgetLayoutBounds;
- (CGSize)widgetHostExpandedSize;
- (THWExpandedRep)expandedRep;
- (THWiOSExpandedViewController)initWithDocumentRoot:(id)a3 expandableRep:(id)a4 delegate:(id)a5;
- (UIEdgeInsets)_safeAreaInsets;
- (double)expandedHeightForPanel:(int)a3 allowDefault:(BOOL)a4;
- (id)actionForHyperlink:(id)a3 inRep:(id)a4 gesture:(id)a5;
- (id)additionalGestureTargetsForInteractiveCanvasController:(id)a3 gesture:(id)a4;
- (id)expandedRepSourceRep;
- (id)hostCanvasLayer;
- (id)p_sourceICC;
- (id)p_sourceRepForInfo:(id)a3;
- (id)p_targetICC;
- (id)p_targetRepForInfo:(id)a3;
- (id)p_targetViewBackgroundColor;
- (int64_t)overrideUserInterfaceStyle;
- (void)_dismissReplaceContent;
- (void)_dismissWillReplaceContentWithFlush:(BOOL)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)animationControllerDidPresent:(id)a3;
- (void)animationControllerDidPresentPostCommit:(id)a3;
- (void)animationControllerSetupTarget:(id)a3;
- (void)animationControllerTeardownTarget:(id)a3;
- (void)animationControllerWillPresent:(id)a3;
- (void)bookViewDidAnimateRotationToSize:(CGSize)a3 withContext:(id)a4 transform:(CGAffineTransform *)a5;
- (void)bookViewDidRotateTransitionToSize:(CGSize)a3 withContext:(id)a4;
- (void)bookViewDidTransitionToSize:(CGSize)a3 withContext:(id)a4;
- (void)bookViewWillRotateTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)bookViewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)dismissExpandedAnimatedWithCompletionBlock:(id)a3;
- (void)dismissExpandedImmediate;
- (void)exitAVPresentation:(id)a3;
- (void)expandedRepControllerInvalidateChildrenInPanel:(int)a3 invalidateWPAuto:(BOOL)a4;
- (void)freeTransformDidBeginWithRep:(id)a3 expandableRep:(id)a4;
- (void)freeTransformDidCancelWithRep:(id)a3 expandableRep:(id)a4;
- (void)freeTransformDidEndWithRep:(id)a3 expandableRep:(id)a4 completionBlock:(id)a5;
- (void)freeTransformWillFadeOutCurtain:(id)a3 expandableRep:(id)a4;
- (void)gestureSequenceDidEnd;
- (void)handleHyperlinkWithURL:(id)a3;
- (void)handleSingleTap;
- (void)hideAdornments;
- (void)interactiveCanvasController:(id)a3 layoutRegistered:(id)a4;
- (void)interactiveCanvasController:(id)a3 willLayoutRep:(id)a4;
- (void)invalidate;
- (void)loadView;
- (void)p_addKeyCommands;
- (void)p_cleanup;
- (void)p_dismissExpandedAnimatedWithCompletionBlock:(id)a3 freeTransformDidEnd:(BOOL)a4;
- (void)p_handleDoubleTap:(id)a3;
- (void)p_handleMediaTransportKey:(id)a3;
- (void)p_handleNavigationKey:(id)a3;
- (void)p_handleNumber:(id)a3;
- (void)p_setOnCanvasRepShadowLayerHidden:(BOOL)a3;
- (void)p_toggleCanvasZoomAnimated:(BOOL)a3;
- (void)p_updateBackgroundColor;
- (void)p_updateCanvasToSize:(CGSize)a3;
- (void)p_updateContentOffsetFromCurrentViewScale:(double)a3 toNewViewScale:(double)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7;
- (void)p_updateScrollViewLayout;
- (void)p_viewSizeDidChange;
- (void)presentExpandedAnimatedWithCompletionBlock:(id)a3;
- (void)presentPopoverForPopUpInfo:(id)a3 withFrame:(CGRect)a4 inLayer:(id)a5;
- (void)presentRepExpanded:(id)a3;
- (void)progressDidChangeForRep:(id)a3 percent:(id)a4;
- (void)resetAttemptForRep:(id)a3;
- (void)scoreDidChangeForRep:(id)a3 score:(id)a4 total:(id)a5;
- (void)setAllowPinchZoom:(BOOL)a3 withMinimumScale:(double)a4 maximumScale:(double)a5;
- (void)showAdornments;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)zoomInOrOut:(BOOL)a3;
@end

@implementation THWiOSExpandedViewController

- (THWExpandedRep)expandedRep
{
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] repForInfo:[(THWiOSExpandedViewController *)self drawableToPresent] createIfNeeded:1];
  objc_opt_class();
  return TSUClassAndProtocolCast();
}

- (THWiOSExpandedViewController)initWithDocumentRoot:(id)a3 expandableRep:(id)a4 delegate:(id)a5
{
  v12.receiver = self;
  v12.super_class = THWiOSExpandedViewController;
  v8 = [(THWiOSExpandedViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v8->mDocumentRoot = a3;
    v8->_wantsStatusBarVisible = [a5 isFreeTransformInProgress];
    [a4 expandedContentDrawableToPresent];
    objc_opt_class();
    v11 = &OBJC_PROTOCOL___TSDInfo;
    v9 = TSUClassAndProtocolCast();
    if (!v9)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    }

    [(THWiOSExpandedViewController *)v8 setDrawableToPresent:v9, v11];
    [(THWiOSExpandedViewController *)v8 setDelegate:a5];
    THCanvasCreate(v8, &v8->_icc, &v8->_cvc);
    [-[THWExpandedViewControllerDelegate rootSuperviewController](-[THWiOSExpandedViewController delegate](v8 "delegate")];
    [(THWiOSExpandedViewController *)v8 addChildViewController:[(THWiOSExpandedViewController *)v8 cvc]];
    [(TSDInteractiveCanvasController *)v8->_icc disableAllGestures];
    [(TSDInteractiveCanvasController *)v8->_icc enableGestureKinds:[NSArray arrayWithObject:TSWPImmediateSingleTap]];
    [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)v8 icc] setCreateRepsForOffscreenLayouts:1];
    [(THWiOSExpandedViewController *)v8 setFreeTransformInFlight:0];
    [-[TSDiOSCanvasViewController view](-[THWiOSExpandedViewController cvc](v8 "cvc")];
    [-[TSDiOSCanvasViewController view](-[THWiOSExpandedViewController cvc](v8 "cvc")];
    [(TSDiOSCanvasViewController *)[(THWiOSExpandedViewController *)v8 cvc] setDelegate:v8];
    [(THWiOSExpandedViewController *)v8 setOriginalViewScale:1.0];
    [(THWiOSExpandedViewController *)v8 setExpandedRepControllerState:0];
    [+[THWAVController sharedController](THWAVController "sharedController")];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [a4 expandableShouldPreloadExpanded])
    {
      [-[THWiOSExpandedViewController view](v8 "view")];
    }

    [(THWiOSExpandedViewController *)v8 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v8;
}

- (BOOL)p_startsVisible
{
  v2 = [(THWiOSExpandedViewController *)self expandedRep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [(THWExpandedRep *)v2 expandedPanelStartsVisible];
}

- (BOOL)p_alwaysVisible
{
  v2 = [(THWiOSExpandedViewController *)self expandedRep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWExpandedRep *)v2 expandedPanelAlwaysVisible];
}

- (void)loadView
{
  v3 = [[THWiOSExpandedView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  [(THWiOSExpandedViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = THWiOSExpandedViewController;
  [(THWiOSExpandedViewController *)&v14 viewDidLoad];
  [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedViewController delegate](self "delegate")];
  [-[THWiOSExpandedViewController view](self "view")];
  [-[THWiOSExpandedViewController view](self "view")];
  [-[THWiOSExpandedViewController view](self "view")];
  v7 = [TSKScrollView alloc];
  [-[THWiOSExpandedViewController view](self "view")];
  -[THWiOSExpandedViewController setScrollView:](self, "setScrollView:", [v7 initWithFrame:?]);
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setDelegate:[(THWiOSExpandedViewController *)self icc]];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setClipsToBounds:0];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setScrollEnabled:1];
  [-[TSDiOSCanvasViewController canvasLayer](-[THWiOSExpandedViewController cvc](self "cvc")];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setContentSize:v8, v9];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setAutoresizingMask:18];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setContentInsetAdjustmentBehavior:2];
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] setInfosToDisplay:[NSArray arrayWithObject:[(THWiOSExpandedViewController *)self drawableToPresent]]];
  v10 = [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setScrollEnabled:[(THWExpandedRep *)v10 expandedContentScrollEnabled]];
  }

  [-[THWiOSExpandedViewController view](self "view")];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] addSubview:[(TSDiOSCanvasViewController *)[(THWiOSExpandedViewController *)self cvc] view]];
  if (objc_opt_respondsToSelector())
  {
    if ([(THWExpandedRep *)v10 expandedContentAllowDoubleTapZoom])
    {
      [(TSDInteractiveCanvasController *)self->_icc enableGestureKinds:[NSArray arrayWithObject:TSWPTapAndTouch]];
      [(THWiOSExpandedViewController *)self setAllowZoom:1];
      if (objc_opt_respondsToSelector())
      {
        [(THWiOSExpandedViewController *)self setAllowZoom:[(THWExpandedRep *)v10 expandedContentHandlesDoubleTapZoomDirectly]^ 1];
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasController *)self->_icc enableGestureKinds:[(THWExpandedRep *)v10 expandedSupportedGestureKinds]];
  }

  v11 = [THWFreeTransformGestureRecognizer alloc];
  v12 = [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] gestureDispatcher];
  [(THWiOSExpandedViewController *)self setTransformGR:[(THWFreeTransformGestureRecognizer *)v11 initWithGestureDispatcher:v12 gestureKind:TSDFreeTransform]];
  [-[TSDiOSCanvasViewController viewForGestureRecognizer:](-[THWiOSExpandedViewController cvc](self "cvc")];
  [(THWFreeTransformGestureRecognizer *)[(THWiOSExpandedViewController *)self transformGR] setUnmovingParentView:[(TSDiOSCanvasViewController *)[(THWiOSExpandedViewController *)self cvc] view]];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v13 = [objc_msgSend(objc_msgSend(-[THWExpandedRep expandedZoomableInteractiveCanvasController](v10 "expandedZoomableInteractiveCanvasController")]) == 0)
  {
    v13 = [(TSDiOSCanvasViewController *)[(THWiOSExpandedViewController *)self cvc] zoomGestureRecognizer];
  }

  [v13 requireGestureRecognizerToFail:{-[THWiOSExpandedViewController transformGR](self, "transformGR")}];
  [(THWiOSExpandedViewController *)self p_updateBackgroundColor];
  [(THWiOSExpandedViewController *)self setAdornmentController:[[THWAdornmentController alloc] initWithExpandedRep:v10 documentRoot:[(THWiOSExpandedViewController *)self documentRoot]]];
  [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] setDelegate:self];
  [(THWiOSExpandedViewController *)self setFtc:objc_alloc_init(THWFreeTransformController)];
  [(THWFreeTransformController *)[(THWiOSExpandedViewController *)self ftc] setGestureRecognizerDelegate:[(THWExpandedRep *)[(THWiOSExpandedViewController *)self expandedRep] freeTransformableHandler]];
  [(THWiOSExpandedViewController *)self p_addKeyCommands];
}

- (void)p_updateBackgroundColor
{
  if ([(THDocumentRoot *)[(THWiOSExpandedViewController *)self documentRoot] themeProvider]&& [(THThemeProvider *)[(THDocumentRoot *)[(THWiOSExpandedViewController *)self documentRoot] themeProvider] forceThemeColors])
  {
    if ([(THWiOSExpandedViewController *)self freeTransformInFlight])
    {
      v3 = +[UIColor clearColor];
      v4 = v3;
      goto LABEL_11;
    }

    v4 = [-[THWiOSExpandedViewController p_targetViewBackgroundColor](self "p_targetViewBackgroundColor")];
    v6 = +[UIColor clearColor];
  }

  else
  {
    v4 = [-[THWiOSExpandedViewController p_targetViewBackgroundColor](self "p_targetViewBackgroundColor")];
    [(THWiOSExpandedViewController *)self expandedRep];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v5 = [(THWExpandedRep *)[(THWiOSExpandedViewController *)self expandedRep] expandedBackgroundColor]) == 0)
    {
      v3 = 0;
      goto LABEL_11;
    }

    v6 = [v5 platformColor];
  }

  v3 = v6;
LABEL_11:
  [-[THWiOSExpandedViewController view](self "view")];
  if (v3)
  {
    v7 = [(THWiOSExpandedViewController *)self scrollView];

    [(UIScrollView *)v7 setBackgroundColor:v3];
  }
}

- (void)invalidate
{
  objc_opt_class();
  [(THWiOSExpandedViewController *)self expandedRep];
  v3 = TSUDynamicCast();
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    [objc_msgSend(v4 "scrollableCanvasController")];
    v5 = TSUDynamicCast();
    if (v5)
    {
      v6 = v5;
      [v5 pushThreadedLayoutAndRenderDisabled];
      [v6 recreateAllLayoutsAndReps];
      [v6 layoutIfNeeded];
      [v6 popThreadedLayoutAndRenderDisabled];
      if ([(THDocumentRoot *)[(THWiOSExpandedViewController *)self documentRoot] themeProvider])
      {
        [objc_msgSend(v6 "canvasView")];
      }
    }
  }

  [(THWiOSExpandedViewController *)self p_updateBackgroundColor];
}

- (BOOL)prefersStatusBarHidden
{
  if (([(THWiOSExpandedViewController *)self im_isCompactHeight]& 1) != 0)
  {
    return 1;
  }

  else
  {
    return ![(THWiOSExpandedViewController *)self wantsStatusBarVisible];
  }
}

- (int64_t)overrideUserInterfaceStyle
{
  v4.receiver = self;
  v4.super_class = THWiOSExpandedViewController;
  result = [(THWiOSExpandedViewController *)&v4 overrideUserInterfaceStyle];
  if (!result)
  {
    objc_opt_class();
    [(THDocumentRoot *)[(THWiOSExpandedViewController *)self documentRoot] themeProvider];
    result = TSUDynamicCast();
    if (result)
    {
      return [result userInterfaceStyle];
    }
  }

  return result;
}

- (CGRect)pFrameInUnscaledCanvasSizeForExpandedRep:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [a3 expandedFrameInUnscaledCanvasSize];
  }

  else
  {
    [a3 frameInUnscaledCanvas];
  }

  return CGRectIntegral(*&v4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THWiOSExpandedViewController;
  [(THWiOSExpandedViewController *)&v4 viewWillAppear:a3];
  [(THWiOSExpandedViewController *)self p_viewSizeDidChange];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THWiOSExpandedViewController;
  [(THWiOSExpandedViewController *)&v4 viewWillDisappear:a3];
  if ([(THWiOSExpandedViewController *)self isFirstResponder])
  {
    [(THWiOSExpandedViewController *)self resignFirstResponder];
  }
}

- (void)p_viewSizeDidChange
{
  v3 = [(THWiOSExpandedViewController *)self expandedRep];
  v4 = [(THWExpandedRep *)v3 layout];
  v5 = v4;
  if (v4)
  {
    [v4 invalidateFrame];
    [v5 invalidateChildren];
  }

  [(THWiOSExpandedViewController *)self _safeAreaInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [-[THWiOSExpandedViewController view](self "view")];
  v15 = v14;
  v17 = v16;
  v19 = v18 - (v9 + v13);
  v21 = v20 - (v7 + v11);
  [(THWiOSExpandedViewController *)self p_updateCanvasToSize:v19, v21];
  [(THWiOSExpandedViewController *)self p_updateScrollViewLayout];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(THWExpandedRep *)v3 expandedContentAllowPinchZoom])
  {
    [(THWiOSExpandedViewController *)self setAllowPinchZoom:1 withMinimumScale:1.0 maximumScale:2.0];
  }

  if (v5)
  {
    [-[THWExpandedRep interactiveCanvasController](v3 "interactiveCanvasController")];
  }

  v22 = [(THWiOSExpandedViewController *)self adornmentController];

  [(THWAdornmentController *)v22 layoutInFrame:v9 + v15, v7 + v17, v19, v21];
}

- (id)p_targetViewBackgroundColor
{
  v3 = +[TSUColor whiteColor];
  [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    if ([(THWExpandedRep *)[(THWiOSExpandedViewController *)self expandedRep] expandedAppearance]== 1)
    {

      return +[TSUColor whiteColor];
    }

    else
    {

      return +[TSUColor blackColor];
    }
  }

  else if ([(THDocumentRoot *)[(THWiOSExpandedViewController *)self documentRoot] themeProvider])
  {
    v5 = [(THThemeProvider *)[(THDocumentRoot *)[(THWiOSExpandedViewController *)self documentRoot] themeProvider] backgroundColor];

    return [TSUColor colorWithCGColor:v5];
  }

  else
  {
    return v3;
  }
}

- (void)p_cleanup
{
  [-[THWFreeTransformGestureRecognizer view](-[THWiOSExpandedViewController transformGR](self "transformGR")];
  [(THWiOSExpandedViewController *)self setTransformGR:0];
  [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] teardown];
  [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] setDelegate:0];
  [(THWiOSExpandedViewController *)self setAdornmentController:0];
  [(THWFreeTransformController *)[(THWiOSExpandedViewController *)self ftc] setGestureRecognizerDelegate:0];
  [(THWiOSExpandedViewController *)self setFtc:0];
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] teardown];
  [(TSDiOSCanvasViewController *)[(THWiOSExpandedViewController *)self cvc] teardown];
  [(THWiOSExpandedViewController *)self setIcc:0];
  [(THWiOSExpandedViewController *)self setCvc:0];
  [(THWiOSExpandedViewController *)self setDrawableToPresent:0];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setDelegate:0];
  [(THWiOSExpandedViewController *)self setScrollView:0];

  self->mContentsRep = 0;
  self->mDocumentRoot = 0;

  self->_expandedRotationAnimationController = 0;
}

- (void)dealloc
{
  if (!self->_wasTornDown)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWiOSExpandedViewController *)self p_cleanup];
  v3.receiver = self;
  v3.super_class = THWiOSExpandedViewController;
  [(THWiOSExpandedViewController *)&v3 dealloc];
}

- (void)setAllowPinchZoom:(BOOL)a3 withMinimumScale:(double)a4 maximumScale:(double)a5
{
  v7 = a3;
  [-[TSDiOSCanvasViewController canvasLayer](-[THWiOSExpandedViewController cvc](self "cvc")];
  [-[TSDiOSCanvasViewController canvasLayer](-[THWiOSExpandedViewController cvc](self "cvc")];
  [-[TSDiOSCanvasViewController canvasLayer](-[THWiOSExpandedViewController cvc](self "cvc")];

  [(THWiOSExpandedViewController *)self setAllowZoom:v7];
}

- (BOOL)canHandleGesture:(id)a3
{
  v4 = [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(THWExpandedRep *)v4 expandedContentAllowDoubleTapZoom];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  v6 = TSUDynamicCast();
  result = 0;
  if (!v6 || (v7 = v6, objc_opt_class(), [objc_msgSend(v7 "scrollableCanvasController")], (v8 = TSUDynamicCast()) == 0) || (objc_msgSend(v8, "gestureHitLink:", a3) & 1) == 0)
  {
    if (v5)
    {
      v9 = [a3 gestureKind];
      if (v9 == TSWPTapAndTouch)
      {
        return 1;
      }
    }

    v10 = [a3 gestureKind];
    if (v10 == TSWPImmediateSingleTap)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)handleGesture:(id)a3
{
  v5 = [a3 gestureKind];
  if (v5 == TSWPImmediateSingleTap)
  {
    v8 = [a3 gestureState];
    result = 1;
    if (v8 == 3)
    {
      self->mSingleTapPossible = 1;
    }
  }

  else
  {
    v6 = [a3 gestureKind];
    if (v6 == TSWPTapAndTouch)
    {
      if ([a3 gestureState] == 3)
      {
        self->mSingleTapPossible = 0;
        [(THWiOSExpandedViewController *)self p_handleDoubleTap:a3];
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)gestureSequenceDidEnd
{
  if (self->mSingleTapPossible)
  {
    [(THWiOSExpandedViewController *)self handleSingleTap];
  }
}

- (void)handleSingleTap
{
  if (![(THWiOSExpandedViewController *)self p_alwaysVisible])
  {
    [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] toggleVisibility];
    [(THWiOSExpandedViewController *)self expandedRep];
    if (objc_opt_respondsToSelector())
    {
      v3 = [(THWiOSExpandedViewController *)self expandedRep];

      [(THWExpandedRep *)v3 userInteractionDidTakePlace];
    }
  }
}

- (void)p_handleDoubleTap:(id)a3
{
  v5 = [(THWiOSExpandedViewController *)self expandedRep];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(THWExpandedRep *)v5 expandedContentHandlesDoubleTapZoomDirectly])
  {
    [a3 unscaledLocationForICC:{-[THWiOSExpandedViewController icc](self, "icc")}];
    [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] convertBoundsToUnscaledPoint:v6, v7];
    [(THWExpandedRep *)v5 convertNaturalPointFromUnscaledCanvas:?];

    [(THWExpandedRep *)v5 expandedContentHandleDoubleTapZoomDirectlyAtPoint:?];
  }

  else
  {

    [(THWiOSExpandedViewController *)self p_toggleCanvasZoomAnimated:1];
  }
}

- (void)p_toggleCanvasZoomAnimated:(BOOL)a3
{
  v3 = a3;
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] viewScale];
  v6 = v5;
  [(THWiOSExpandedViewController *)self originalViewScale];
  v8 = v7;
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] viewScale];
  if (v8 != v9)
  {
    [(THWiOSExpandedViewController *)self originalViewScale];
LABEL_5:
    v11 = v10;
    goto LABEL_6;
  }

  [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    [(THWExpandedRep *)[(THWiOSExpandedViewController *)self expandedRep] expandedContentMaximumZoomScale];
    goto LABEL_5;
  }

  v11 = v6 + v6;
LABEL_6:
  if (vabdd_f64(v6, v11) >= 0.00999999978)
  {
    [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] contentOffset];
    [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] bounds];
    CGRectGetWidth(v18);
    [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] bounds];
    CGRectGetHeight(v19);
    TSDMultiplyPointScalar();
    TSDAddPoints();
    TSDMultiplyPointScalar();
    TSDSubtractPoints();
    TSDMultiplyPointScalar();
    v13 = v12;
    v15 = v14;
    v16 = [(THWiOSExpandedViewController *)self icc];

    [(TSDInteractiveCanvasController *)v16 setViewScale:1 contentOffset:v3 clampOffset:v11 animated:v13, v15];
  }
}

- (BOOL)isZoomed
{
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] viewScale];
  v4 = v3;
  [(THWiOSExpandedViewController *)self originalViewScale];
  return vabdd_f64(v4, v5) >= 0.00999999978;
}

- (void)presentExpandedAnimatedWithCompletionBlock:(id)a3
{
  [(THWiOSExpandedViewController *)self setExpandedRepControllerState:1];
  v5 = [-[THWiOSExpandedViewController expandedRepSourceRep](self "expandedRepSourceRep")];
  [v5 addObserver:self];
  [(THWiOSExpandedViewController *)self p_setWantsStatusBarVisible:0];

  [v5 presentAnimationWithCompletionBlock:a3 overshoot:0];
}

- (void)dismissExpandedAnimatedWithCompletionBlock:(id)a3
{
  [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedViewController *)self delegate] expandedViewControllerWillBeginDismissing:self];

  [(THWiOSExpandedViewController *)self p_dismissExpandedAnimatedWithCompletionBlock:a3 freeTransformDidEnd:0];
}

- (void)p_dismissExpandedAnimatedWithCompletionBlock:(id)a3 freeTransformDidEnd:(BOOL)a4
{
  v4 = a4;
  if (![(THWiOSExpandedViewController *)self isDismissing])
  {
    [(THWiOSExpandedViewController *)self setIsDismissing:1];
    [(THWiOSExpandedViewController *)self setExpandedRepControllerState:3];
    [(THWiOSExpandedViewController *)self p_setWantsStatusBarVisible:[(THWiOSExpandedViewController *)self im_isCompactHeight]^ 1];
    v7 = [(THWiOSExpandedViewController *)self expandedRep];
    if (objc_opt_respondsToSelector())
    {
      [(THWExpandedRep *)v7 willExitExpandedFreeTransformDidEnd:v4];
    }

    if (v4)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v9 = [objc_msgSend(objc_msgSend(-[THWiOSExpandedViewController expandedRepSourceRep](self "expandedRepSourceRep")];
      v8 = [-[THWiOSExpandedViewController view](self "view")];
    }

    objc_opt_class();
    v10 = [TSUClassAndProtocolCast() animationController];
    if (!v10)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v15 = sub_146094;
    v16 = &unk_45AEA8;
    v17 = [(THWiOSExpandedViewController *)self expandedRepSourceRep];
    v18 = a3;
    v11 = TSUProtocolCast();
    [(THWiOSExpandedViewController *)self expandedRepSourceRep];
    v12 = TSUProtocolCast();
    if (v11 && (v13 = v12) != 0)
    {
      [v10 setSource:v11];
      [v10 setDestination:v13];
      [v10 setHostLayer:{objc_msgSend(-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedViewController delegate](self, "delegate"), "rootSuperview"), "layer")}];
      [v10 setForegroundLayer:v9];
      [v10 setBackgroundLayer:v8];
      [v10 addObserver:self];
      [v10 presentAnimationWithCompletionBlock:v14 overshoot:v4];
    }

    else
    {
      [(THWiOSExpandedViewController *)self dismissExpandedImmediate];
      v15(v14);
    }
  }
}

- (void)handleHyperlinkWithURL:(id)a3
{
  v5 = [(THWiOSExpandedViewController *)self delegate];

  [(THWExpandedViewControllerDelegate *)v5 expandedViewController:self handleHyperlinkWithURL:a3];
}

- (void)dismissExpandedImmediate
{
  [(THWiOSExpandedViewController *)self setIsDismissing:1];
  v3 = self;
  [(THWiOSExpandedViewController *)self _dismissWillReplaceContentWithFlush:0];
  [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedViewController *)self delegate] expandedViewControllerWillDismiss:self];
  [(THWiOSExpandedViewController *)self removeFromParentViewController];
  [-[THWiOSExpandedViewController view](self "view")];
  [(THWiOSExpandedViewController *)self _dismissReplaceContent];
  v4 = [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    [(THWExpandedRep *)v4 didExitExpanded];
  }

  [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedViewController *)self delegate] expandedViewControllerDidDismiss:self];
  [(THWiOSExpandedViewController *)self setExpandedRepControllerState:4];
  [(THWiOSExpandedViewController *)self setIsDismissing:0];

  [(THWiOSExpandedViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = THWiOSExpandedViewController;
  [(THWiOSExpandedViewController *)&v2 didReceiveMemoryWarning];
}

- (UIEdgeInsets)_safeAreaInsets
{
  if ([-[THWiOSExpandedViewController view](self "view")] || (-[THWiOSExpandedViewController delegate](self, "delegate"), (objc_opt_respondsToSelector() & 1) == 0))
  {
    v4 = [(THWiOSExpandedViewController *)self view];

    [v4 safeAreaInsets];
  }

  else
  {
    v3 = [(THWiOSExpandedViewController *)self delegate];

    [(THWExpandedViewControllerDelegate *)v3 expandedViewControllerSafeAreaInsets:self];
  }

  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)p_updateCanvasToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(TSDiOSCanvasViewController *)[(THWiOSExpandedViewController *)self cvc] canvasLayer];

  [v5 setUnscaledSize:{width, height}];
}

- (void)p_updateScrollViewLayout
{
  [-[TSDiOSCanvasViewController canvasLayer](-[THWiOSExpandedViewController cvc](self "cvc")];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setContentSize:v3, v4];
  [(THWiOSExpandedViewController *)self _safeAreaInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(THWiOSExpandedViewController *)self scrollView];

  [(UIScrollView *)v13 setContentInset:v6, v8, v10, v12];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  if (!self->_wasTornDown)
  {
    height = a3.height;
    width = a3.width;
    v22.receiver = self;
    v22.super_class = THWiOSExpandedViewController;
    [THWiOSExpandedViewController viewWillTransitionToSize:"viewWillTransitionToSize:withTransitionCoordinator:" withTransitionCoordinator:?];
    if (a4)
    {
      [a4 targetTransform];
      if (CGAffineTransformIsIdentity(&v15))
      {
        [(THWiOSExpandedViewController *)self bookViewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
        v8 = 0;
      }

      else
      {
        [(THWiOSExpandedViewController *)self bookViewWillRotateTransitionToSize:a4 withTransitionCoordinator:width, height];
        v8 = 1;
      }

      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v15.a = 0.0;
      *&v15.b = &v15;
      *&v15.c = 0x5010000000;
      *&v15.d = "";
      v9 = *&CGAffineTransformIdentity.c;
      *&v15.tx = *&CGAffineTransformIdentity.a;
      v16 = v9;
      v17 = *&CGAffineTransformIdentity.tx;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1465F0;
      v13[3] = &unk_45DEF8;
      v14 = v8;
      v13[5] = &v18;
      v13[6] = &v15;
      v13[4] = self;
      *&v13[7] = width;
      *&v13[8] = height;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_14666C;
      v11[3] = &unk_45DF20;
      v12 = v8;
      v11[4] = self;
      v11[5] = &v18;
      *&v11[7] = width;
      *&v11[8] = height;
      v11[6] = &v15;
      v10 = [a4 animateAlongsideTransition:v13 completion:v11];
      *(v19 + 24) = v10;
      _Block_object_dispose(&v15, 8);
      _Block_object_dispose(&v18, 8);
    }

    else
    {
      [(THWiOSExpandedViewController *)self bookViewWillTransitionToSize:0 withTransitionCoordinator:width, height];
      [(THWiOSExpandedViewController *)self bookViewDidTransitionToSize:0 withContext:width, height];
    }
  }
}

- (void)bookViewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] controllerWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v7 = [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(THWExpandedRep *)v7 expandedRotationAnimationController];
  }

  else
  {
    v8 = 0;
  }

  [(THWiOSExpandedViewController *)self setExpandedRotationAnimationController:v8];
  expandedRotationAnimationController = self->_expandedRotationAnimationController;
  [-[THWiOSExpandedViewController view](self "view")];

  [(THWExpandedTransitionRotationAnimationController *)expandedRotationAnimationController expandedWillTransitionFromSize:v10 toSize:v11, width, height];
}

- (void)bookViewWillRotateTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] controllerWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(THWiOSExpandedViewController *)self setRotationScrim:+[CALayer layer]];
  -[CALayer setBackgroundColor:](-[THWiOSExpandedViewController rotationScrim](self, "rotationScrim"), "setBackgroundColor:", [-[THWiOSExpandedViewController p_targetViewBackgroundColor](self "p_targetViewBackgroundColor")]);
  [-[THWiOSExpandedViewController view](self "view")];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [-[THWiOSExpandedViewController view](self "view")];
  v16 = v15 * -0.707;
  [-[THWiOSExpandedViewController view](self "view")];
  v18 = v17 * -0.707;
  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  v28 = CGRectInset(v27, v16, v18);
  [(CALayer *)[(THWiOSExpandedViewController *)self rotationScrim] setFrame:v28.origin.x, v28.origin.y, v28.size.width, v28.size.height];
  [(CALayer *)[(THWiOSExpandedViewController *)self rotationScrim] setZPosition:-32000.0];
  [objc_msgSend(-[THWiOSExpandedViewController view](self "view")];
  [-[THWiOSExpandedViewController view](self "view")];
  self->_preRotateViewFrame.origin.x = v19;
  self->_preRotateViewFrame.origin.y = v20;
  self->_preRotateViewFrame.size.width = v21;
  self->_preRotateViewFrame.size.height = v22;
  [(THWAdornmentController *)self->_adornmentController setDisablePanelFrameAnimation:1];
  v23 = [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    v24 = [(THWExpandedRep *)v23 expandedRotationAnimationController];
  }

  else
  {
    v24 = 0;
  }

  [(THWiOSExpandedViewController *)self setExpandedRotationAnimationController:v24];
  [(THWExpandedTransitionRotationAnimationController *)self->_expandedRotationAnimationController expandedWillRotateTransitionFromSize:self->_preRotateViewFrame.size.width toSize:self->_preRotateViewFrame.size.height, width, height];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setClipsToBounds:0];
  v25 = [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] canvasView];

  [v25 setClipsToBounds:0];
}

- (CGAffineTransform)bookViewWillAnimateRotationToSize:(SEL)a3 withContext:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v10 = [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] canvasView];
  if (v10)
  {
    [v10 transform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  +[CATransaction begin];
  [(THWiOSExpandedViewController *)self _safeAreaInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [-[THWiOSExpandedViewController view](self "view")];
  v20 = v14 + v19;
  v22 = v12 + v21;
  v24 = v23 - (v14 + v18);
  v26 = v25 - (v12 + v16);
  v27 = [(THWiOSExpandedViewController *)self adornmentController];
  [a5 transitionDuration];
  [(THWAdornmentController *)v27 controllerWillAnimateToSize:width duration:height inFrame:v28, v20, v22, v24, v26];
  [(THWiOSExpandedViewController *)self p_updateCanvasToSize:v24, v26];
  [(THWiOSExpandedViewController *)self p_updateScrollViewLayout];
  v30 = self->_preRotateViewFrame.size.width;
  v29 = self->_preRotateViewFrame.size.height;
  [-[THWiOSExpandedViewController view](self "view")];
  v32 = v31;
  v34 = v33;
  expandedRotationAnimationController = self->_expandedRotationAnimationController;
  [a5 transitionDuration];
  [(THWExpandedTransitionRotationAnimationController *)expandedRotationAnimationController expandedWillAnimateRotationFromSize:v30 toSize:v29 duration:v32, v34, v36];
  v37 = [(THWExpandedTransitionRotationAnimationController *)self->_expandedRotationAnimationController autoRotationMode];
  if (v37)
  {
    v38 = v37;
    v39 = [(THWiOSExpandedViewController *)self icc];
    v40 = *&retstr->c;
    *&v54.a = *&retstr->a;
    *&v54.c = v40;
    *&v54.tx = *&retstr->tx;
    x = CGPointZero.x;
    y = CGPointZero.y;
    if (v38 == 1)
    {
      v43 = v32 / v30;
    }

    else if (v38 == 2)
    {
      v43 = v34 / v29;
    }

    else
    {
      v43 = 1.0;
      if (v38 == 3)
      {
        [(THWExpandedTransitionRotationAnimationController *)self->_expandedRotationAnimationController scaleForCenteredAutoRotateFromSize:v30 toSize:v29, v32, v34];
        v43 = v44;
        [(THWExpandedTransitionRotationAnimationController *)self->_expandedRotationAnimationController translateForCenteredAutoRotateFromSize:v30 toSize:v29, v32, v34];
        x = v45;
        y = v46;
      }
    }

    v53 = v54;
    CGAffineTransformScale(&v54, &v53, v43, v43);
    if (v38 == 4)
    {
      v52 = v54;
      v47 = x;
      v48 = y;
    }

    else
    {
      v47 = x - (v30 - v32) * 0.5;
      v48 = y - (v29 - v34) * 0.5;
      v52 = v54;
    }

    CGAffineTransformTranslate(&v53, &v52, v47, v48);
    v54 = v53;
    v51 = v53;
    v49 = [(TSDInteractiveCanvasController *)v39 canvasView];
    v53 = v51;
    [v49 setTransform:&v53];
  }

  return +[CATransaction commit];
}

- (void)bookViewDidAnimateRotationToSize:(CGSize)a3 withContext:(id)a4 transform:(CGAffineTransform *)a5
{
  height = a3.height;
  width = a3.width;
  [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] controllerDidTransitionToSize:a3.width, a3.height];
  [(CALayer *)[(THWiOSExpandedViewController *)self rotationScrim] removeFromSuperlayer];
  [(THWiOSExpandedViewController *)self setRotationScrim:0];
  [(THWExpandedTransitionRotationAnimationController *)self->_expandedRotationAnimationController expandedDidAnimateRotationToSize:width, height];
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] viewScale];
  if (fabs(v9 + -1.0) >= 0.00999999978)
  {
    [(THWiOSExpandedViewController *)self expandedRep];
    if (objc_opt_respondsToSelector())
    {
      if ([(THWExpandedRep *)[(THWiOSExpandedViewController *)self expandedRep] expandedContentNonContiguousZoomScale])
      {
        [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] setViewScale:1.0];
        [(THWiOSExpandedViewController *)self p_toggleCanvasZoomAnimated:0];
      }
    }
  }

  [-[TSDInteractiveCanvasController canvasView](-[THWiOSExpandedViewController icc](self icc];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setClipsToBounds:1];
  [-[TSDInteractiveCanvasController canvasView](-[THWiOSExpandedViewController icc](self "icc")];
  [(THWAdornmentController *)self->_adornmentController setDisablePanelFrameAnimation:0];
}

- (void)bookViewDidRotateTransitionToSize:(CGSize)a3 withContext:(id)a4
{
  [(THWExpandedTransitionRotationAnimationController *)self->_expandedRotationAnimationController expandedDidRotateTransitionToSize:a4, a3.width, a3.height];
  [(THWiOSExpandedViewController *)self setExpandedRotationAnimationController:0];
  adornmentController = self->_adornmentController;

  [(THWAdornmentController *)adornmentController updateVisibility];
}

- (void)bookViewDidTransitionToSize:(CGSize)a3 withContext:(id)a4
{
  height = a3.height;
  width = a3.width;
  [(THWiOSExpandedViewController *)self p_viewSizeDidChange];
  [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] controllerDidTransitionToSize:width, height];
  [(THWExpandedTransitionRotationAnimationController *)self->_expandedRotationAnimationController expandedDidTransitionToSize:width, height];
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] viewScale];
  if (fabs(v7 + -1.0) >= 0.00999999978)
  {
    [(THWiOSExpandedViewController *)self expandedRep];
    if (objc_opt_respondsToSelector())
    {
      if ([(THWExpandedRep *)[(THWiOSExpandedViewController *)self expandedRep] expandedContentNonContiguousZoomScale])
      {
        [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] setViewScale:1.0];
        [(THWiOSExpandedViewController *)self p_toggleCanvasZoomAnimated:0];
      }
    }
  }

  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setClipsToBounds:1];
  [-[TSDInteractiveCanvasController canvasView](-[THWiOSExpandedViewController icc](self "icc")];
  [(THWiOSExpandedViewController *)self setExpandedRotationAnimationController:0];
  [(THWAdornmentController *)self->_adornmentController setDisablePanelFrameAnimation:0];
  adornmentController = self->_adornmentController;

  [(THWAdornmentController *)adornmentController updateVisibility];
}

- (BOOL)p_hasSourceRepForInfo:(id)a3
{
  v5 = [(THWiOSExpandedViewController *)self p_sourceICC];

  return [(THWiOSExpandedViewController *)self p_hasRepForICC:v5 forInfo:a3];
}

- (id)p_sourceRepForInfo:(id)a3
{
  v3 = [-[THWiOSExpandedViewController p_sourceICC](self "p_sourceICC")];
  if (!v3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v3;
}

- (BOOL)p_hasTargetRepForInfo:(id)a3
{
  v5 = [(THWiOSExpandedViewController *)self p_targetICC];

  return [(THWiOSExpandedViewController *)self p_hasRepForICC:v5 forInfo:a3];
}

- (id)p_targetRepForInfo:(id)a3
{
  v4 = [(THWiOSExpandedViewController *)self p_targetICC];

  return [v4 repForInfo:a3 createIfNeeded:0];
}

- (void)_dismissWillReplaceContentWithFlush:(BOOL)a3
{
  v3 = a3;
  v5 = [(THWiOSExpandedViewController *)self expandedRepSourceRep];
  if (-[THWiOSExpandedViewController p_hasSourceRepForInfo:](self, "p_hasSourceRepForInfo:", [v5 info]))
  {
    v6 = -[THWiOSExpandedViewController p_sourceRepForInfo:](self, "p_sourceRepForInfo:", [v5 info]);
    if (v6)
    {
      v7 = v6;
      if (v3)
      {
        +[CATransaction flush];
      }

      [v5 willReplaceContentsFromRep:v7];
    }
  }
}

- (void)_dismissReplaceContent
{
  mContentsRep = self->mContentsRep;
  if (mContentsRep)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    mContentsRep = self->mContentsRep;
  }

  self->mContentsRep = 0;
  if ([(THWiOSExpandedViewController *)self p_hasTargetRepForInfo:[(THWiOSExpandedViewController *)self drawableToPresent]])
  {
    v4 = [(THWiOSExpandedViewController *)self p_targetRepForInfo:[(THWiOSExpandedViewController *)self drawableToPresent]];
    if (!v4)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v5 = -[THWiOSExpandedViewController p_sourceRepForInfo:](self, "p_sourceRepForInfo:", [v4 info]);

    [v4 replaceContentsFromRep:v5];
  }
}

- (void)animationControllerWillPresent:(id)a3
{
  if ([(THWiOSExpandedViewController *)self isDismissing])
  {
    [(THWiOSExpandedViewController *)self _dismissWillReplaceContentWithFlush:1];
    v4 = [(THWiOSExpandedViewController *)self delegate];

    [(THWExpandedViewControllerDelegate *)v4 expandedViewControllerWillDismiss:self];
  }

  else
  {
    v5 = [(THWiOSExpandedViewController *)self delegate];

    [(THWExpandedViewControllerDelegate *)v5 expandedViewControllerWillPresent:self];
  }
}

- (void)animationControllerTeardownTarget:(id)a3
{
  if ([(THWiOSExpandedViewController *)self isDismissing])
  {

    [(THWiOSExpandedViewController *)self _dismissReplaceContent];
  }

  else if (self->mContentsRep)
  {
    v4 = [(THWiOSExpandedViewController *)self p_targetRepForInfo:[(THWiOSExpandedViewController *)self drawableToPresent]];
    mContentsRep = self->mContentsRep;
    if (mContentsRep != v4)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      mContentsRep = self->mContentsRep;
    }

    v6 = [(TSDRep *)mContentsRep info];
    if (self->mContentsRep == v4)
    {
      v7 = v6;
      if ([(THWiOSExpandedViewController *)self p_hasSourceRepForInfo:v6])
      {
        v8 = [(THWiOSExpandedViewController *)self p_sourceRepForInfo:v7];
        v9 = self->mContentsRep;

        [(TSDRep *)v9 replaceContentsFromRep:v8];
      }
    }
  }
}

- (void)animationControllerDidPresent:(id)a3
{
  v4 = [(THWiOSExpandedViewController *)self parentViewController];
  if ([(THWiOSExpandedViewController *)self isDismissing])
  {
    v5 = self;
    [(THWiOSExpandedViewController *)self p_setOnCanvasRepShadowLayerHidden:0];
    [(THWiOSExpandedViewController *)self removeFromParentViewController];
    [-[THWiOSExpandedViewController view](self "view")];
    v6 = [(THWiOSExpandedViewController *)self expandedRep];
    if (objc_opt_respondsToSelector())
    {
      [(THWExpandedRep *)v6 didExitExpanded];
    }

    [(THWiOSExpandedViewController *)self expandedRep];
    objc_opt_class();
    v12 = &OBJC_PROTOCOL___BCProgressTracking;
    v7 = TSUClassAndProtocolCast();
    if (v7)
    {
      v8 = v7;
      [(THWiOSExpandedViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedViewController *)self delegate] expandedViewController:self deactivateProgressForRep:v8];
      }
    }

    [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedViewController *)self delegate] expandedViewControllerDidDismiss:self];
  }

  else
  {
    [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] addAdornmentViewsToView:[(THWiOSExpandedViewController *)self view]];
    if ([(THWiOSExpandedViewController *)self p_startsVisible]|| [(THWiOSExpandedViewController *)self p_alwaysVisible])
    {
      [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] setAdornmentsVisible:1 animated:1 completionBlock:0];
    }

    v9 = [(THWiOSExpandedViewController *)self expandedRep];
    if (objc_opt_respondsToSelector())
    {
      [(THWExpandedRep *)v9 didPresentExpanded];
    }

    [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedViewController *)self delegate] expandedViewControllerDidPresent:self];
    [(THWiOSExpandedViewController *)self expandedRep];
    objc_opt_class();
    v13 = &OBJC_PROTOCOL___BCProgressTracking;
    v10 = TSUClassAndProtocolCast();
    if (v10)
    {
      v11 = v10;
      [(THWiOSExpandedViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedViewController *)self delegate] expandedViewController:self activateProgressForRep:v11];
      }
    }

    [(THWiOSExpandedViewController *)self p_setOnCanvasRepShadowLayerHidden:0, v13];
  }

  [v4 setNeedsWhitePointAdaptivityStyleUpdate];

  self->mContentsRep = 0;
}

- (void)animationControllerDidPresentPostCommit:(id)a3
{
  if ([(THWiOSExpandedViewController *)self expandedRepControllerState]== 1)
  {
    v5 = 2;
LABEL_5:
    [(THWiOSExpandedViewController *)self setExpandedRepControllerState:v5];
    goto LABEL_6;
  }

  if ([(THWiOSExpandedViewController *)self expandedRepControllerState]== 3)
  {
    v5 = 4;
    goto LABEL_5;
  }

LABEL_6:
  if (![(THWiOSExpandedViewController *)self isDismissing])
  {
    [(THWiOSExpandedViewController *)self expandedRep];
    if (objc_opt_respondsToSelector())
    {
      [(THWExpandedRep *)[(THWiOSExpandedViewController *)self expandedRep] didPresentExpandedPostCommit];
    }
  }

  [(THWiOSExpandedViewController *)self setIsDismissing:0];

  [a3 removeObserver:self];
}

- (void)animationControllerSetupTarget:(id)a3
{
  if (![(THWiOSExpandedViewController *)self isDismissing])
  {
    [(THWAdornmentController *)self->_adornmentController setDisablePanelFrameAnimation:1];
    v5 = [(THWiOSExpandedViewController *)self view];
    v6 = *&CGAffineTransformIdentity.c;
    v13[0] = *&CGAffineTransformIdentity.a;
    v13[1] = v6;
    v13[2] = *&CGAffineTransformIdentity.tx;
    [v5 setTransform:v13];
    [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedViewController delegate](self "delegate")];
    [v5 setFrame:?];
    [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedViewController delegate](self "delegate")];
    v7 = [(THWiOSExpandedViewController *)self expandedRep];
    v8 = [(THWiOSExpandedViewController *)self expandedRepSourceRep];
    if (objc_opt_respondsToSelector())
    {
      [v8 expandableWillPresentExpanded];
    }

    if ([(THWiOSExpandedViewController *)self isDismissing])
    {
      v9 = [objc_msgSend(objc_msgSend(v8 "hostICC")];
    }

    else
    {
      v9 = [v5 layer];
    }

    v10 = v9;
    if ([(THWiOSExpandedViewController *)self isDismissing])
    {
      v11 = [v5 layer];
    }

    else
    {
      v11 = [objc_msgSend(objc_msgSend(v8 "hostICC")];
    }

    v12 = v11;
    [a3 setSource:v8];
    [a3 setDestination:v7];
    [a3 setHostLayer:{objc_msgSend(-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedViewController delegate](self, "delegate"), "rootSuperview"), "layer")}];
    [a3 setForegroundLayer:v10];
    [a3 setBackgroundLayer:v12];
    [v5 layoutIfNeeded];
    [(THWAdornmentController *)self->_adornmentController setDisablePanelFrameAnimation:0];
    if (objc_opt_respondsToSelector())
    {
      [(THWExpandedRep *)v7 expandedDidAppearPreAnimation];
    }
  }
}

- (void)hideAdornments
{
  if (![(THWiOSExpandedViewController *)self p_alwaysVisible])
  {
    v3 = [(THWiOSExpandedViewController *)self adornmentController];

    [(THWAdornmentController *)v3 setAdornmentsVisible:0 animated:1 completionBlock:0];
  }
}

- (void)showAdornments
{
  if (![(THWiOSExpandedViewController *)self p_alwaysVisible])
  {
    v3 = [(THWiOSExpandedViewController *)self adornmentController];

    [(THWAdornmentController *)v3 setAdornmentsVisible:1 animated:1 completionBlock:0];
  }
}

- (BOOL)allowTouchOutsideCanvasView:(id)a3 forGesture:(id)a4
{
  v5 = TSUProtocolCast();
  v6 = [v5 gestureKind];
  if (v6 == TSWPImmediateSingleTap)
  {
    v8 = 1;
  }

  else
  {
    v7 = [v5 gestureKind];
    v8 = v7 == TSWPTapAndTouch;
  }

  v9 = [v5 gestureKind];
  if (v9 != TSDFreeTransform)
  {
    return v8;
  }

  v10 = [(THWiOSExpandedViewController *)self expandedRep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [(THWExpandedRep *)v10 expandedAllowFreeTransform];
}

- (id)p_sourceICC
{
  if ([(THWiOSExpandedViewController *)self isDismissing])
  {

    return [(THWiOSExpandedViewController *)self icc];
  }

  else
  {
    v4 = [(THWiOSExpandedViewController *)self expandedRepSourceRep];

    return [v4 hostICC];
  }
}

- (id)p_targetICC
{
  if ([(THWiOSExpandedViewController *)self isDismissing])
  {
    v3 = [(THWiOSExpandedViewController *)self expandedRepSourceRep];

    return [v3 hostICC];
  }

  else
  {

    return [(THWiOSExpandedViewController *)self icc];
  }
}

- (void)interactiveCanvasController:(id)a3 willLayoutRep:(id)a4
{
  if ([(THWiOSExpandedViewController *)self p_targetICC]== a3)
  {
    v6 = [(THWiOSExpandedViewController *)self drawableToPresent];
    if ([a4 info] == v6)
    {

      self->mContentsRep = 0;
      self->mContentsRep = a4;
      v7 = TSUProtocolCast();
      if (objc_opt_respondsToSelector())
      {
        [v7 expandedWillPresentWithController:self];
      }
    }

    if (-[THWiOSExpandedViewController p_hasSourceRepForInfo:](self, "p_hasSourceRepForInfo:", [a4 info]))
    {
      v8 = -[THWiOSExpandedViewController p_sourceRepForInfo:](self, "p_sourceRepForInfo:", [a4 info]);

      [a4 willReplaceContentsFromRep:v8];
    }
  }
}

- (CGPoint)interactiveCanvasController:(id)a3 clampContentOffset:(CGPoint)a4 forViewScale:(double)a5
{
  v6 = [(THWiOSExpandedViewController *)self scrollView];
  v7 = [(UIScrollView *)v6 window];
  if (!v7)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [v7 bounds];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGRectGetHeight(v19);
  [-[THWiOSExpandedViewController view](self "view")];
  [-[TSDiOSCanvasViewController canvasLayer](-[THWiOSExpandedViewController cvc](self "cvc")];
  TSDMultiplySizeScalar();
  [(UIScrollView *)v6 bounds];
  [(UIScrollView *)v6 bounds];
  [(UIScrollView *)v6 bounds];
  TSUClamp();
  v13 = v12;
  [(UIScrollView *)v6 bounds];
  TSUClamp();
  v15 = v14;
  v16 = v13;
  result.y = v15;
  result.x = v16;
  return result;
}

- (void)interactiveCanvasController:(id)a3 layoutRegistered:(id)a4
{
  v5 = TSUProtocolCast();
  if (v5)
  {

    [v5 setDelegate:self];
  }
}

- (CGRect)interactiveCanvasController:(id)a3 expandBoundsForHitTesting:(CGRect)a4
{
  [-[THWiOSExpandedViewController view](self view];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(THWiOSExpandedViewController *)self view];
  v15 = [a3 canvasView];

  [v14 convertRect:v15 toView:{v7, v9, v11, v13}];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)interactiveCanvasController:(id)a3 expandVisibleBoundsForTiling:(CGRect)a4
{
  v4 = [(TSDiOSCanvasViewController *)[(THWiOSExpandedViewController *)self cvc:a3] view];

  [v4 bounds];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)additionalGestureTargetsForInteractiveCanvasController:(id)a3 gesture:(id)a4
{
  v6 = +[NSMutableArray array];
  [(THWiOSExpandedViewController *)self expandedRep];
  v7 = TSUProtocolCast();
  v8 = [a4 gestureKind];
  if (v8 == TSDFreeTransform && v7 != 0)
  {
    [v6 addObject:v7];
  }

  [v6 addObject:self];
  return v6;
}

- (void)exitAVPresentation:(id)a3
{
  [(THWiOSExpandedViewController *)self dismissExpandedAnimatedWithCompletionBlock:&stru_45DF40];

  [a3 setDelegate:0];
}

- (CGRect)widgetLayoutBounds
{
  [-[THWiOSExpandedViewController view](self "view")];
  [(THWiOSExpandedViewController *)self _safeAreaInsets];

  TSDRectWithSize();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)expandedRepControllerInvalidateChildrenInPanel:(int)a3 invalidateWPAuto:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  [(THWAdornmentController *)self->_adornmentController invalidateChildrenInPanel:?];
  if (v4)
  {
    adornmentController = self->_adornmentController;

    [(THWAdornmentController *)adornmentController invalidateWPAutoInPanel:v5];
  }
}

- (id)expandedRepSourceRep
{
  v3 = [(THWiOSExpandedViewController *)self delegate];
  v4 = [(THWiOSExpandedViewController *)self drawableToPresent];

  return [(THWExpandedViewControllerDelegate *)v3 expandableRepForInfo:v4];
}

- (double)expandedHeightForPanel:(int)a3 allowDefault:(BOOL)a4
{
  adornmentController = self->_adornmentController;
  if (adornmentController)
  {
    [(THWAdornmentController *)adornmentController heightForPanel:*&a3 allowDefault:a4];
  }

  else
  {
    result = 44.0;
    if (a3 >= 3 || !a4)
    {
      return 0.0;
    }
  }

  return result;
}

- (void)presentRepExpanded:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THWiOSExpandedViewController presentRepExpanded:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Drawables/THWiOSExpandedViewController.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:1635 description:@"Main canvas widget host should handle this."];
}

- (void)presentPopoverForPopUpInfo:(id)a3 withFrame:(CGRect)a4 inLayer:(id)a5
{
  if (![NSThread isMainThread:a3])
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THWiOSExpandedViewController presentPopoverForPopUpInfo:withFrame:inLayer:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Drawables/THWiOSExpandedViewController.m"];

    [v5 handleFailureInFunction:v6 file:v7 lineNumber:1647 description:@"This operation must only be performed on the main thread."];
  }
}

- (BOOL)inFlowMode
{
  v2 = [(THWiOSExpandedViewController *)self delegate];

  return [(THWExpandedViewControllerDelegate *)v2 inFlowMode];
}

- (CGSize)widgetHostExpandedSize
{
  [-[THWiOSExpandedViewController view](self "view")];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)hostCanvasLayer
{
  v2 = [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] layerHost];

  return [v2 canvasLayer];
}

- (void)p_setOnCanvasRepShadowLayerHidden:(BOOL)a3
{
  v3 = a3;
  [(THWiOSExpandedViewController *)self expandedRepSourceRep];
  v4 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 styledRep];
    [objc_msgSend(v5 "shadowLayer")];
    v6 = [v5 reflectionLayer];

    [v6 setHidden:v3];
  }
}

- (CGRect)rectForCompletionAnimationWithRep:(id)a3
{
  [(THWiOSExpandedViewController *)self expandedRepSourceRep];
  v4 = TSUProtocolCast();
  if (v4)
  {
    [v4 rectForCompletion];
  }

  else
  {
    [objc_msgSend(-[THWiOSExpandedViewController expandedRepSourceRep](self "expandedRepSourceRep")];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)freeTransformDidBeginWithRep:(id)a3 expandableRep:(id)a4
{
  if (![NSThread isMainThread:a3])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mControlsVisibleBeforeTransform = [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] adornmentsVisible];
  self->_freeTransformWasCancelled = 0;
  [(THWiOSExpandedViewController *)self setFreeTransformInFlight:1];
  [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] setAdornmentsVisible:0 buttonVisible:0 controlsVisible:0 forceVisibility:1 animated:1 completionBlock:0];
  [objc_msgSend(-[THWiOSExpandedViewController expandedRepSourceRep](self "expandedRepSourceRep")];
  [-[THWiOSExpandedViewController view](self "view")];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1486C4;
  v5[3] = &unk_45AE00;
  v5[4] = self;
  [UIView animateWithDuration:v5 animations:0.5];
  [(THWiOSExpandedViewController *)self p_setOnCanvasRepShadowLayerHidden:1];
  [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedViewController *)self delegate] expandedViewControllerWillBeginDismissing:self];
}

- (void)freeTransformDidEndWithRep:(id)a3 expandableRep:(id)a4 completionBlock:(id)a5
{
  [(THWiOSExpandedViewController *)self p_setOnCanvasRepShadowLayerHidden:0, a4];

  [(THWiOSExpandedViewController *)self p_dismissExpandedAnimatedWithCompletionBlock:a5 freeTransformDidEnd:1];
}

- (void)freeTransformDidCancelWithRep:(id)a3 expandableRep:(id)a4
{
  [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedViewController *)self delegate:a3] expandedViewControllerDidCancelDismiss:self];
  self->_freeTransformWasCancelled = 1;
  [(THWiOSExpandedViewController *)self p_updateBackgroundColor];
  if (self->mControlsVisibleBeforeTransform)
  {
    [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] setAdornmentsVisible:1 animated:1 completionBlock:0];
  }

  [objc_msgSend(-[THWiOSExpandedViewController expandedRepSourceRep](self "expandedRepSourceRep")];
  [(THWiOSExpandedViewController *)self p_setWantsStatusBarVisible:0];

  [(THWiOSExpandedViewController *)self p_setOnCanvasRepShadowLayerHidden:0];
}

- (void)freeTransformWillFadeOutCurtain:(id)a3 expandableRep:(id)a4
{
  if (self->_freeTransformWasCancelled)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(THWiOSExpandedViewController *)self im_isCompactHeight:a3]^ 1;
  }

  [(THWiOSExpandedViewController *)self p_setWantsStatusBarVisible:v5, a4];
  [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    v6 = +[UIColor clearColor];
    v7 = [(THWiOSExpandedViewController *)self scrollView];

    [(UIScrollView *)v7 setBackgroundColor:v6];
  }
}

- (void)progressDidChangeForRep:(id)a3 percent:(id)a4
{
  [(THWiOSExpandedViewController *)self delegate];
  v6 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {

    [v6 interactiveCanvasController:0 progressDidChangeForRep:a3 percent:a4];
  }
}

- (void)scoreDidChangeForRep:(id)a3 score:(id)a4 total:(id)a5
{
  [(THWiOSExpandedViewController *)self delegate];
  v8 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {

    [v8 interactiveCanvasController:0 scoreDidChangeForRep:a3 score:a4 total:a5];
  }
}

- (void)resetAttemptForRep:(id)a3
{
  [(THWiOSExpandedViewController *)self delegate];
  v4 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {

    [v4 interactiveCanvasController:0 resetAttemptForRep:a3];
  }
}

- (id)actionForHyperlink:(id)a3 inRep:(id)a4 gesture:(id)a5
{
  [(THWiOSExpandedViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v9 = [(THWiOSExpandedViewController *)self delegate];

  return [(THWExpandedViewControllerDelegate *)v9 expandedViewController:self actionForHyperlink:a3 inRep:a4 gesture:a5];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v6 = [(THWiOSExpandedViewController *)self expandedRep];
  if (a4)
  {
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      if ([(THWExpandedRep *)v7 expandedShouldDismissOnChangeFromSizeClassPairWithController:self flowMode:[(THWiOSExpandedViewController *)self inFlowMode]])
      {

        [(THWiOSExpandedViewController *)self dismissExpandedImmediate];
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THWiOSExpandedViewController;
  [(THWiOSExpandedViewController *)&v4 viewDidAppear:a3];
  [(THWiOSExpandedViewController *)self becomeFirstResponder];
}

- (void)p_addKeyCommands
{
  v3 = [(THWiOSExpandedViewController *)self expandedRep];
  v4 = TSUProtocolCast();
  v5 = TSUProtocolCast();
  [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"p_handleEscapeKey:"]];
  if (!v4)
  {
    if (!v5)
    {
      return;
    }

    v6 = @" ";
    v7 = &selRef_p_handleMediaTransportKey_;
    goto LABEL_9;
  }

  [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@" " modifierFlags:0 action:"p_handleNavigationKey:"]];
  [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@" " modifierFlags:0x20000 action:"p_handleNavigationKey:"]];
  [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0 action:"p_handleNavigationKey:"]];
  [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0 action:"p_handleNavigationKey:"]];
  [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:"p_handleNavigationKey:"]];
  [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"\n" modifierFlags:0 action:"p_handleNavigationKey:"]];
  [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"\t" modifierFlags:0 action:"p_handleNavigationKey:"]];
  [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"\t" modifierFlags:0x20000 action:"p_handleNavigationKey:"]];
  if (objc_opt_respondsToSelector())
  {
    [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"0" modifierFlags:0 action:"p_handleNumber:"]];
    [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"1" modifierFlags:0 action:"p_handleNumber:"]];
    [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"2" modifierFlags:0 action:"p_handleNumber:"]];
    [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"3" modifierFlags:0 action:"p_handleNumber:"]];
    [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"4" modifierFlags:0 action:"p_handleNumber:"]];
    [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"5" modifierFlags:0 action:"p_handleNumber:"]];
    [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"6" modifierFlags:0 action:"p_handleNumber:"]];
    [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"7" modifierFlags:0 action:"p_handleNumber:"]];
    [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"8" modifierFlags:0 action:"p_handleNumber:"]];
    [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"9" modifierFlags:0 action:"p_handleNumber:"]];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(THWExpandedRep *)v3 expandedContentAllowPinchZoom])
  {
    [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"+" modifierFlags:0 action:"p_handleZoomInKey:"]];
    v6 = @"-";
    v7 = &selRef_p_handleZoomOutKey_;
LABEL_9:
    v8 = [UIKeyCommand keyCommandWithInput:v6 modifierFlags:0 action:*v7];

    [(THWiOSExpandedViewController *)self addKeyCommand:v8];
  }
}

- (void)p_handleNavigationKey:(id)a3
{
  [(THWiOSExpandedViewController *)self expandedRep];
  v4 = TSUProtocolCast();
  v6[0] = UIKeyInputRightArrow;
  v6[1] = @"\r";
  v6[2] = @"\n";
  if (-[NSArray containsObject:](+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v6, 3), "containsObject:", [a3 input]))
  {
    goto LABEL_2;
  }

  v5 = UIKeyInputLeftArrow;
  if (-[NSArray containsObject:](+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v5, 1), "containsObject:", [a3 input]))
  {
    goto LABEL_4;
  }

  if ([&off_49DA58 containsObject:{objc_msgSend(a3, "input")}])
  {
    if (([a3 modifierFlags] & 0x20000) == 0)
    {
LABEL_2:
      [v4 handleNavigateNextCommand];
      return;
    }

LABEL_4:
    [v4 handleNavigatePreviousCommand];
  }
}

- (void)p_handleNumber:(id)a3
{
  [(THWiOSExpandedViewController *)self expandedRep];
  v4 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {
    v5 = [objc_msgSend(a3 "input")];

    [v4 handleNavigateCommandWithNumber:v5];
  }
}

- (void)p_handleMediaTransportKey:(id)a3
{
  [(THWiOSExpandedViewController *)self expandedRep];
  v4 = TSUProtocolCast();
  if ([objc_msgSend(a3 "input")])
  {

    [v4 handleTransportPlayPauseCommand];
  }

  else if ([objc_msgSend(a3 "input")])
  {
    if ([a3 modifierFlags] == &loc_100000)
    {

      [v4 handleTransportFastforwardCommand];
    }

    else
    {

      [v4 handleTransportNextFrameCommand];
    }
  }

  else if ([objc_msgSend(a3 "input")])
  {
    if ([a3 modifierFlags] == &loc_100000)
    {

      [v4 handleTransportRewindCommand];
    }

    else
    {

      [v4 handleTransportPreviousFrameCommand];
    }
  }

  else if ([objc_msgSend(a3 "input")])
  {

    [v4 handleTransportIncreaseVolumeCommand];
  }

  else if ([objc_msgSend(a3 "input")])
  {

    [v4 handleTransportDecreaseVolumeCommand];
  }
}

- (void)zoomInOrOut:(BOOL)a3
{
  v3 = a3;
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] viewScale];
  v6 = v5;
  if (v3)
  {
    [(THWiOSExpandedViewController *)self expandedRep];
    v7 = objc_opt_respondsToSelector();
    v8 = 8.0;
    if (v7)
    {
      [(THWExpandedRep *)[(THWiOSExpandedViewController *)self expandedRep] expandedContentMaximumZoomScale];
    }

    v9 = v6 * 1.5;
    if (v6 * 1.5 > v8)
    {
      v9 = v8;
    }
  }

  else
  {
    [(THWiOSExpandedViewController *)self originalViewScale];
    v11 = v10;
    [(THWiOSExpandedViewController *)self expandedRep];
    if (objc_opt_respondsToSelector())
    {
      [(THWExpandedRep *)[(THWiOSExpandedViewController *)self expandedRep] expandedContentMinimumZoomScale];
      v11 = v12;
    }

    if (v6 / 1.5 >= v11)
    {
      v9 = v6 / 1.5;
    }

    else
    {
      v9 = v11;
    }
  }

  if (vabdd_f64(v6, v9) >= 0.00999999978)
  {

    [THWiOSExpandedViewController p_updateContentOffsetFromCurrentViewScale:"p_updateContentOffsetFromCurrentViewScale:toNewViewScale:animated:duration:completion:" toNewViewScale:1 animated:0 duration:v6 completion:?];
  }
}

- (void)p_updateContentOffsetFromCurrentViewScale:(double)a3 toNewViewScale:(double)a4 animated:(BOOL)a5 duration:(double)a6 completion:(id)a7
{
  v9 = a5;
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] contentOffset];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] bounds];
  CGRectGetWidth(v21);
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] bounds];
  CGRectGetHeight(v22);
  TSDMultiplyPointScalar();
  TSDAddPoints();
  TSDMultiplyPointScalar();
  TSDSubtractPoints();
  TSDMultiplyPointScalar();
  v13 = v12;
  v15 = v14;
  v16 = [(THWiOSExpandedViewController *)self icc];
  if (v9)
  {
    if (a6 == 0.0)
    {
      v17 = 0.3;
    }

    else
    {
      v17 = a6;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1495B0;
    v19[3] = &unk_45BD40;
    v19[4] = a7;
    [(TSDInteractiveCanvasController *)v16 setViewScale:1 contentOffset:v19 clampOffset:a4 animationDuration:v13 completion:v15, v17];
  }

  else
  {
    [(TSDInteractiveCanvasController *)v16 setViewScale:0 contentOffset:0 clampOffset:a4 animated:v13, v15];
    if (a7)
    {
      v18 = *(a7 + 2);

      v18(a7);
    }
  }
}

- (CGRect)preRotateViewFrame
{
  x = self->_preRotateViewFrame.origin.x;
  y = self->_preRotateViewFrame.origin.y;
  width = self->_preRotateViewFrame.size.width;
  height = self->_preRotateViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end