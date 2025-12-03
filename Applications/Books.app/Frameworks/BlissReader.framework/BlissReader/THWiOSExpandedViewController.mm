@interface THWiOSExpandedViewController
- (BOOL)allowTouchOutsideCanvasView:(id)view forGesture:(id)gesture;
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)inFlowMode;
- (BOOL)isZoomed;
- (BOOL)p_alwaysVisible;
- (BOOL)p_hasSourceRepForInfo:(id)info;
- (BOOL)p_hasTargetRepForInfo:(id)info;
- (BOOL)p_startsVisible;
- (BOOL)prefersStatusBarHidden;
- (CGAffineTransform)bookViewWillAnimateRotationToSize:(SEL)size withContext:(CGSize)context;
- (CGPoint)interactiveCanvasController:(id)controller clampContentOffset:(CGPoint)offset forViewScale:(double)scale;
- (CGRect)interactiveCanvasController:(id)controller expandBoundsForHitTesting:(CGRect)testing;
- (CGRect)interactiveCanvasController:(id)controller expandVisibleBoundsForTiling:(CGRect)tiling;
- (CGRect)pFrameInUnscaledCanvasSizeForExpandedRep:(id)rep;
- (CGRect)preRotateViewFrame;
- (CGRect)rectForCompletionAnimationWithRep:(id)rep;
- (CGRect)widgetLayoutBounds;
- (CGSize)widgetHostExpandedSize;
- (THWExpandedRep)expandedRep;
- (THWiOSExpandedViewController)initWithDocumentRoot:(id)root expandableRep:(id)rep delegate:(id)delegate;
- (UIEdgeInsets)_safeAreaInsets;
- (double)expandedHeightForPanel:(int)panel allowDefault:(BOOL)default;
- (id)actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture;
- (id)additionalGestureTargetsForInteractiveCanvasController:(id)controller gesture:(id)gesture;
- (id)expandedRepSourceRep;
- (id)hostCanvasLayer;
- (id)p_sourceICC;
- (id)p_sourceRepForInfo:(id)info;
- (id)p_targetICC;
- (id)p_targetRepForInfo:(id)info;
- (id)p_targetViewBackgroundColor;
- (int64_t)overrideUserInterfaceStyle;
- (void)_dismissReplaceContent;
- (void)_dismissWillReplaceContentWithFlush:(BOOL)flush;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)animationControllerDidPresent:(id)present;
- (void)animationControllerDidPresentPostCommit:(id)commit;
- (void)animationControllerSetupTarget:(id)target;
- (void)animationControllerTeardownTarget:(id)target;
- (void)animationControllerWillPresent:(id)present;
- (void)bookViewDidAnimateRotationToSize:(CGSize)size withContext:(id)context transform:(CGAffineTransform *)transform;
- (void)bookViewDidRotateTransitionToSize:(CGSize)size withContext:(id)context;
- (void)bookViewDidTransitionToSize:(CGSize)size withContext:(id)context;
- (void)bookViewWillRotateTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)bookViewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)dismissExpandedAnimatedWithCompletionBlock:(id)block;
- (void)dismissExpandedImmediate;
- (void)exitAVPresentation:(id)presentation;
- (void)expandedRepControllerInvalidateChildrenInPanel:(int)panel invalidateWPAuto:(BOOL)auto;
- (void)freeTransformDidBeginWithRep:(id)rep expandableRep:(id)expandableRep;
- (void)freeTransformDidCancelWithRep:(id)rep expandableRep:(id)expandableRep;
- (void)freeTransformDidEndWithRep:(id)rep expandableRep:(id)expandableRep completionBlock:(id)block;
- (void)freeTransformWillFadeOutCurtain:(id)curtain expandableRep:(id)rep;
- (void)gestureSequenceDidEnd;
- (void)handleHyperlinkWithURL:(id)l;
- (void)handleSingleTap;
- (void)hideAdornments;
- (void)interactiveCanvasController:(id)controller layoutRegistered:(id)registered;
- (void)interactiveCanvasController:(id)controller willLayoutRep:(id)rep;
- (void)invalidate;
- (void)loadView;
- (void)p_addKeyCommands;
- (void)p_cleanup;
- (void)p_dismissExpandedAnimatedWithCompletionBlock:(id)block freeTransformDidEnd:(BOOL)end;
- (void)p_handleDoubleTap:(id)tap;
- (void)p_handleMediaTransportKey:(id)key;
- (void)p_handleNavigationKey:(id)key;
- (void)p_handleNumber:(id)number;
- (void)p_setOnCanvasRepShadowLayerHidden:(BOOL)hidden;
- (void)p_toggleCanvasZoomAnimated:(BOOL)animated;
- (void)p_updateBackgroundColor;
- (void)p_updateCanvasToSize:(CGSize)size;
- (void)p_updateContentOffsetFromCurrentViewScale:(double)scale toNewViewScale:(double)viewScale animated:(BOOL)animated duration:(double)duration completion:(id)completion;
- (void)p_updateScrollViewLayout;
- (void)p_viewSizeDidChange;
- (void)presentExpandedAnimatedWithCompletionBlock:(id)block;
- (void)presentPopoverForPopUpInfo:(id)info withFrame:(CGRect)frame inLayer:(id)layer;
- (void)presentRepExpanded:(id)expanded;
- (void)progressDidChangeForRep:(id)rep percent:(id)percent;
- (void)resetAttemptForRep:(id)rep;
- (void)scoreDidChangeForRep:(id)rep score:(id)score total:(id)total;
- (void)setAllowPinchZoom:(BOOL)zoom withMinimumScale:(double)scale maximumScale:(double)maximumScale;
- (void)showAdornments;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)zoomInOrOut:(BOOL)out;
@end

@implementation THWiOSExpandedViewController

- (THWExpandedRep)expandedRep
{
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] repForInfo:[(THWiOSExpandedViewController *)self drawableToPresent] createIfNeeded:1];
  objc_opt_class();
  return TSUClassAndProtocolCast();
}

- (THWiOSExpandedViewController)initWithDocumentRoot:(id)root expandableRep:(id)rep delegate:(id)delegate
{
  v12.receiver = self;
  v12.super_class = THWiOSExpandedViewController;
  v8 = [(THWiOSExpandedViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v8->mDocumentRoot = root;
    v8->_wantsStatusBarVisible = [delegate isFreeTransformInProgress];
    [rep expandedContentDrawableToPresent];
    objc_opt_class();
    v11 = &OBJC_PROTOCOL___TSDInfo;
    v9 = TSUClassAndProtocolCast();
    if (!v9)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    }

    [(THWiOSExpandedViewController *)v8 setDrawableToPresent:v9, v11];
    [(THWiOSExpandedViewController *)v8 setDelegate:delegate];
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
    if ((objc_opt_respondsToSelector() & 1) != 0 && [rep expandableShouldPreloadExpanded])
    {
      [-[THWiOSExpandedViewController view](v8 "view")];
    }

    [(THWiOSExpandedViewController *)v8 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v8;
}

- (BOOL)p_startsVisible
{
  expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [(THWExpandedRep *)expandedRep expandedPanelStartsVisible];
}

- (BOOL)p_alwaysVisible
{
  expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWExpandedRep *)expandedRep expandedPanelAlwaysVisible];
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
  expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setScrollEnabled:[(THWExpandedRep *)expandedRep expandedContentScrollEnabled]];
  }

  [-[THWiOSExpandedViewController view](self "view")];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] addSubview:[(TSDiOSCanvasViewController *)[(THWiOSExpandedViewController *)self cvc] view]];
  if (objc_opt_respondsToSelector())
  {
    if ([(THWExpandedRep *)expandedRep expandedContentAllowDoubleTapZoom])
    {
      [(TSDInteractiveCanvasController *)self->_icc enableGestureKinds:[NSArray arrayWithObject:TSWPTapAndTouch]];
      [(THWiOSExpandedViewController *)self setAllowZoom:1];
      if (objc_opt_respondsToSelector())
      {
        [(THWiOSExpandedViewController *)self setAllowZoom:[(THWExpandedRep *)expandedRep expandedContentHandlesDoubleTapZoomDirectly]^ 1];
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(TSDInteractiveCanvasController *)self->_icc enableGestureKinds:[(THWExpandedRep *)expandedRep expandedSupportedGestureKinds]];
  }

  v11 = [THWFreeTransformGestureRecognizer alloc];
  gestureDispatcher = [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] gestureDispatcher];
  [(THWiOSExpandedViewController *)self setTransformGR:[(THWFreeTransformGestureRecognizer *)v11 initWithGestureDispatcher:gestureDispatcher gestureKind:TSDFreeTransform]];
  [-[TSDiOSCanvasViewController viewForGestureRecognizer:](-[THWiOSExpandedViewController cvc](self "cvc")];
  [(THWFreeTransformGestureRecognizer *)[(THWiOSExpandedViewController *)self transformGR] setUnmovingParentView:[(TSDiOSCanvasViewController *)[(THWiOSExpandedViewController *)self cvc] view]];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (zoomGestureRecognizer = [objc_msgSend(objc_msgSend(-[THWExpandedRep expandedZoomableInteractiveCanvasController](expandedRep "expandedZoomableInteractiveCanvasController")]) == 0)
  {
    zoomGestureRecognizer = [(TSDiOSCanvasViewController *)[(THWiOSExpandedViewController *)self cvc] zoomGestureRecognizer];
  }

  [zoomGestureRecognizer requireGestureRecognizerToFail:{-[THWiOSExpandedViewController transformGR](self, "transformGR")}];
  [(THWiOSExpandedViewController *)self p_updateBackgroundColor];
  [(THWiOSExpandedViewController *)self setAdornmentController:[[THWAdornmentController alloc] initWithExpandedRep:expandedRep documentRoot:[(THWiOSExpandedViewController *)self documentRoot]]];
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
    platformColor = +[UIColor clearColor];
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

    platformColor = [v5 platformColor];
  }

  v3 = platformColor;
LABEL_11:
  [-[THWiOSExpandedViewController view](self "view")];
  if (v3)
  {
    scrollView = [(THWiOSExpandedViewController *)self scrollView];

    [(UIScrollView *)scrollView setBackgroundColor:v3];
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

- (CGRect)pFrameInUnscaledCanvasSizeForExpandedRep:(id)rep
{
  if (objc_opt_respondsToSelector())
  {
    [rep expandedFrameInUnscaledCanvasSize];
  }

  else
  {
    [rep frameInUnscaledCanvas];
  }

  return CGRectIntegral(*&v4);
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THWiOSExpandedViewController;
  [(THWiOSExpandedViewController *)&v4 viewWillAppear:appear];
  [(THWiOSExpandedViewController *)self p_viewSizeDidChange];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = THWiOSExpandedViewController;
  [(THWiOSExpandedViewController *)&v4 viewWillDisappear:disappear];
  if ([(THWiOSExpandedViewController *)self isFirstResponder])
  {
    [(THWiOSExpandedViewController *)self resignFirstResponder];
  }
}

- (void)p_viewSizeDidChange
{
  expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
  layout = [(THWExpandedRep *)expandedRep layout];
  v5 = layout;
  if (layout)
  {
    [layout invalidateFrame];
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
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(THWExpandedRep *)expandedRep expandedContentAllowPinchZoom])
  {
    [(THWiOSExpandedViewController *)self setAllowPinchZoom:1 withMinimumScale:1.0 maximumScale:2.0];
  }

  if (v5)
  {
    [-[THWExpandedRep interactiveCanvasController](expandedRep "interactiveCanvasController")];
  }

  adornmentController = [(THWiOSExpandedViewController *)self adornmentController];

  [(THWAdornmentController *)adornmentController layoutInFrame:v9 + v15, v7 + v17, v19, v21];
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
    backgroundColor = [(THThemeProvider *)[(THDocumentRoot *)[(THWiOSExpandedViewController *)self documentRoot] themeProvider] backgroundColor];

    return [TSUColor colorWithCGColor:backgroundColor];
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

- (void)setAllowPinchZoom:(BOOL)zoom withMinimumScale:(double)scale maximumScale:(double)maximumScale
{
  zoomCopy = zoom;
  [-[TSDiOSCanvasViewController canvasLayer](-[THWiOSExpandedViewController cvc](self "cvc")];
  [-[TSDiOSCanvasViewController canvasLayer](-[THWiOSExpandedViewController cvc](self "cvc")];
  [-[TSDiOSCanvasViewController canvasLayer](-[THWiOSExpandedViewController cvc](self "cvc")];

  [(THWiOSExpandedViewController *)self setAllowZoom:zoomCopy];
}

- (BOOL)canHandleGesture:(id)gesture
{
  expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    expandedContentAllowDoubleTapZoom = [(THWExpandedRep *)expandedRep expandedContentAllowDoubleTapZoom];
  }

  else
  {
    expandedContentAllowDoubleTapZoom = 0;
  }

  objc_opt_class();
  v6 = TSUDynamicCast();
  result = 0;
  if (!v6 || (v7 = v6, objc_opt_class(), [objc_msgSend(v7 "scrollableCanvasController")], (v8 = TSUDynamicCast()) == 0) || (objc_msgSend(v8, "gestureHitLink:", gesture) & 1) == 0)
  {
    if (expandedContentAllowDoubleTapZoom)
    {
      gestureKind = [gesture gestureKind];
      if (gestureKind == TSWPTapAndTouch)
      {
        return 1;
      }
    }

    gestureKind2 = [gesture gestureKind];
    if (gestureKind2 == TSWPImmediateSingleTap)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)handleGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind == TSWPImmediateSingleTap)
  {
    gestureState = [gesture gestureState];
    result = 1;
    if (gestureState == 3)
    {
      self->mSingleTapPossible = 1;
    }
  }

  else
  {
    gestureKind2 = [gesture gestureKind];
    if (gestureKind2 == TSWPTapAndTouch)
    {
      if ([gesture gestureState] == 3)
      {
        self->mSingleTapPossible = 0;
        [(THWiOSExpandedViewController *)self p_handleDoubleTap:gesture];
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
      expandedRep = [(THWiOSExpandedViewController *)self expandedRep];

      [(THWExpandedRep *)expandedRep userInteractionDidTakePlace];
    }
  }
}

- (void)p_handleDoubleTap:(id)tap
{
  expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(THWExpandedRep *)expandedRep expandedContentHandlesDoubleTapZoomDirectly])
  {
    [tap unscaledLocationForICC:{-[THWiOSExpandedViewController icc](self, "icc")}];
    [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] convertBoundsToUnscaledPoint:v6, v7];
    [(THWExpandedRep *)expandedRep convertNaturalPointFromUnscaledCanvas:?];

    [(THWExpandedRep *)expandedRep expandedContentHandleDoubleTapZoomDirectlyAtPoint:?];
  }

  else
  {

    [(THWiOSExpandedViewController *)self p_toggleCanvasZoomAnimated:1];
  }
}

- (void)p_toggleCanvasZoomAnimated:(BOOL)animated
{
  animatedCopy = animated;
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

    [(TSDInteractiveCanvasController *)v16 setViewScale:1 contentOffset:animatedCopy clampOffset:v11 animated:v13, v15];
  }
}

- (BOOL)isZoomed
{
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] viewScale];
  v4 = v3;
  [(THWiOSExpandedViewController *)self originalViewScale];
  return vabdd_f64(v4, v5) >= 0.00999999978;
}

- (void)presentExpandedAnimatedWithCompletionBlock:(id)block
{
  [(THWiOSExpandedViewController *)self setExpandedRepControllerState:1];
  v5 = [-[THWiOSExpandedViewController expandedRepSourceRep](self "expandedRepSourceRep")];
  [v5 addObserver:self];
  [(THWiOSExpandedViewController *)self p_setWantsStatusBarVisible:0];

  [v5 presentAnimationWithCompletionBlock:block overshoot:0];
}

- (void)dismissExpandedAnimatedWithCompletionBlock:(id)block
{
  [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedViewController *)self delegate] expandedViewControllerWillBeginDismissing:self];

  [(THWiOSExpandedViewController *)self p_dismissExpandedAnimatedWithCompletionBlock:block freeTransformDidEnd:0];
}

- (void)p_dismissExpandedAnimatedWithCompletionBlock:(id)block freeTransformDidEnd:(BOOL)end
{
  endCopy = end;
  if (![(THWiOSExpandedViewController *)self isDismissing])
  {
    [(THWiOSExpandedViewController *)self setIsDismissing:1];
    [(THWiOSExpandedViewController *)self setExpandedRepControllerState:3];
    [(THWiOSExpandedViewController *)self p_setWantsStatusBarVisible:[(THWiOSExpandedViewController *)self im_isCompactHeight]^ 1];
    expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
    if (objc_opt_respondsToSelector())
    {
      [(THWExpandedRep *)expandedRep willExitExpandedFreeTransformDidEnd:endCopy];
    }

    if (endCopy)
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
    animationController = [TSUClassAndProtocolCast() animationController];
    if (!animationController)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v15 = sub_146094;
    v16 = &unk_45AEA8;
    expandedRepSourceRep = [(THWiOSExpandedViewController *)self expandedRepSourceRep];
    blockCopy = block;
    v11 = TSUProtocolCast();
    [(THWiOSExpandedViewController *)self expandedRepSourceRep];
    v12 = TSUProtocolCast();
    if (v11 && (v13 = v12) != 0)
    {
      [animationController setSource:v11];
      [animationController setDestination:v13];
      [animationController setHostLayer:{objc_msgSend(-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedViewController delegate](self, "delegate"), "rootSuperview"), "layer")}];
      [animationController setForegroundLayer:v9];
      [animationController setBackgroundLayer:v8];
      [animationController addObserver:self];
      [animationController presentAnimationWithCompletionBlock:v14 overshoot:endCopy];
    }

    else
    {
      [(THWiOSExpandedViewController *)self dismissExpandedImmediate];
      v15(v14);
    }
  }
}

- (void)handleHyperlinkWithURL:(id)l
{
  delegate = [(THWiOSExpandedViewController *)self delegate];

  [(THWExpandedViewControllerDelegate *)delegate expandedViewController:self handleHyperlinkWithURL:l];
}

- (void)dismissExpandedImmediate
{
  [(THWiOSExpandedViewController *)self setIsDismissing:1];
  selfCopy = self;
  [(THWiOSExpandedViewController *)self _dismissWillReplaceContentWithFlush:0];
  [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedViewController *)self delegate] expandedViewControllerWillDismiss:self];
  [(THWiOSExpandedViewController *)self removeFromParentViewController];
  [-[THWiOSExpandedViewController view](self "view")];
  [(THWiOSExpandedViewController *)self _dismissReplaceContent];
  expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    [(THWExpandedRep *)expandedRep didExitExpanded];
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
    view = [(THWiOSExpandedViewController *)self view];

    [view safeAreaInsets];
  }

  else
  {
    delegate = [(THWiOSExpandedViewController *)self delegate];

    [(THWExpandedViewControllerDelegate *)delegate expandedViewControllerSafeAreaInsets:self];
  }

  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)p_updateCanvasToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  canvasLayer = [(TSDiOSCanvasViewController *)[(THWiOSExpandedViewController *)self cvc] canvasLayer];

  [canvasLayer setUnscaledSize:{width, height}];
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
  scrollView = [(THWiOSExpandedViewController *)self scrollView];

  [(UIScrollView *)scrollView setContentInset:v6, v8, v10, v12];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  if (!self->_wasTornDown)
  {
    height = size.height;
    width = size.width;
    v22.receiver = self;
    v22.super_class = THWiOSExpandedViewController;
    [THWiOSExpandedViewController viewWillTransitionToSize:"viewWillTransitionToSize:withTransitionCoordinator:" withTransitionCoordinator:?];
    if (coordinator)
    {
      [coordinator targetTransform];
      if (CGAffineTransformIsIdentity(&v15))
      {
        [(THWiOSExpandedViewController *)self bookViewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
        v8 = 0;
      }

      else
      {
        [(THWiOSExpandedViewController *)self bookViewWillRotateTransitionToSize:coordinator withTransitionCoordinator:width, height];
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
      v10 = [coordinator animateAlongsideTransition:v13 completion:v11];
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

- (void)bookViewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] controllerWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    expandedRotationAnimationController = [(THWExpandedRep *)expandedRep expandedRotationAnimationController];
  }

  else
  {
    expandedRotationAnimationController = 0;
  }

  [(THWiOSExpandedViewController *)self setExpandedRotationAnimationController:expandedRotationAnimationController];
  expandedRotationAnimationController = self->_expandedRotationAnimationController;
  [-[THWiOSExpandedViewController view](self "view")];

  [(THWExpandedTransitionRotationAnimationController *)expandedRotationAnimationController expandedWillTransitionFromSize:v10 toSize:v11, width, height];
}

- (void)bookViewWillRotateTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] controllerWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
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
  expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    expandedRotationAnimationController = [(THWExpandedRep *)expandedRep expandedRotationAnimationController];
  }

  else
  {
    expandedRotationAnimationController = 0;
  }

  [(THWiOSExpandedViewController *)self setExpandedRotationAnimationController:expandedRotationAnimationController];
  [(THWExpandedTransitionRotationAnimationController *)self->_expandedRotationAnimationController expandedWillRotateTransitionFromSize:self->_preRotateViewFrame.size.width toSize:self->_preRotateViewFrame.size.height, width, height];
  [(UIScrollView *)[(THWiOSExpandedViewController *)self scrollView] setClipsToBounds:0];
  canvasView = [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] canvasView];

  [canvasView setClipsToBounds:0];
}

- (CGAffineTransform)bookViewWillAnimateRotationToSize:(SEL)size withContext:(CGSize)context
{
  height = context.height;
  width = context.width;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  canvasView = [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] canvasView];
  if (canvasView)
  {
    [canvasView transform];
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
  adornmentController = [(THWiOSExpandedViewController *)self adornmentController];
  [a5 transitionDuration];
  [(THWAdornmentController *)adornmentController controllerWillAnimateToSize:width duration:height inFrame:v28, v20, v22, v24, v26];
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
  autoRotationMode = [(THWExpandedTransitionRotationAnimationController *)self->_expandedRotationAnimationController autoRotationMode];
  if (autoRotationMode)
  {
    v38 = autoRotationMode;
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
    canvasView2 = [(TSDInteractiveCanvasController *)v39 canvasView];
    v53 = v51;
    [canvasView2 setTransform:&v53];
  }

  return +[CATransaction commit];
}

- (void)bookViewDidAnimateRotationToSize:(CGSize)size withContext:(id)context transform:(CGAffineTransform *)transform
{
  height = size.height;
  width = size.width;
  [(THWAdornmentController *)[(THWiOSExpandedViewController *)self adornmentController] controllerDidTransitionToSize:size.width, size.height];
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

- (void)bookViewDidRotateTransitionToSize:(CGSize)size withContext:(id)context
{
  [(THWExpandedTransitionRotationAnimationController *)self->_expandedRotationAnimationController expandedDidRotateTransitionToSize:context, size.width, size.height];
  [(THWiOSExpandedViewController *)self setExpandedRotationAnimationController:0];
  adornmentController = self->_adornmentController;

  [(THWAdornmentController *)adornmentController updateVisibility];
}

- (void)bookViewDidTransitionToSize:(CGSize)size withContext:(id)context
{
  height = size.height;
  width = size.width;
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

- (BOOL)p_hasSourceRepForInfo:(id)info
{
  p_sourceICC = [(THWiOSExpandedViewController *)self p_sourceICC];

  return [(THWiOSExpandedViewController *)self p_hasRepForICC:p_sourceICC forInfo:info];
}

- (id)p_sourceRepForInfo:(id)info
{
  v3 = [-[THWiOSExpandedViewController p_sourceICC](self "p_sourceICC")];
  if (!v3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return v3;
}

- (BOOL)p_hasTargetRepForInfo:(id)info
{
  p_targetICC = [(THWiOSExpandedViewController *)self p_targetICC];

  return [(THWiOSExpandedViewController *)self p_hasRepForICC:p_targetICC forInfo:info];
}

- (id)p_targetRepForInfo:(id)info
{
  p_targetICC = [(THWiOSExpandedViewController *)self p_targetICC];

  return [p_targetICC repForInfo:info createIfNeeded:0];
}

- (void)_dismissWillReplaceContentWithFlush:(BOOL)flush
{
  flushCopy = flush;
  expandedRepSourceRep = [(THWiOSExpandedViewController *)self expandedRepSourceRep];
  if (-[THWiOSExpandedViewController p_hasSourceRepForInfo:](self, "p_hasSourceRepForInfo:", [expandedRepSourceRep info]))
  {
    v6 = -[THWiOSExpandedViewController p_sourceRepForInfo:](self, "p_sourceRepForInfo:", [expandedRepSourceRep info]);
    if (v6)
    {
      v7 = v6;
      if (flushCopy)
      {
        +[CATransaction flush];
      }

      [expandedRepSourceRep willReplaceContentsFromRep:v7];
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

- (void)animationControllerWillPresent:(id)present
{
  if ([(THWiOSExpandedViewController *)self isDismissing])
  {
    [(THWiOSExpandedViewController *)self _dismissWillReplaceContentWithFlush:1];
    delegate = [(THWiOSExpandedViewController *)self delegate];

    [(THWExpandedViewControllerDelegate *)delegate expandedViewControllerWillDismiss:self];
  }

  else
  {
    delegate2 = [(THWiOSExpandedViewController *)self delegate];

    [(THWExpandedViewControllerDelegate *)delegate2 expandedViewControllerWillPresent:self];
  }
}

- (void)animationControllerTeardownTarget:(id)target
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

    info = [(TSDRep *)mContentsRep info];
    if (self->mContentsRep == v4)
    {
      v7 = info;
      if ([(THWiOSExpandedViewController *)self p_hasSourceRepForInfo:info])
      {
        v8 = [(THWiOSExpandedViewController *)self p_sourceRepForInfo:v7];
        v9 = self->mContentsRep;

        [(TSDRep *)v9 replaceContentsFromRep:v8];
      }
    }
  }
}

- (void)animationControllerDidPresent:(id)present
{
  parentViewController = [(THWiOSExpandedViewController *)self parentViewController];
  if ([(THWiOSExpandedViewController *)self isDismissing])
  {
    selfCopy = self;
    [(THWiOSExpandedViewController *)self p_setOnCanvasRepShadowLayerHidden:0];
    [(THWiOSExpandedViewController *)self removeFromParentViewController];
    [-[THWiOSExpandedViewController view](self "view")];
    expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
    if (objc_opt_respondsToSelector())
    {
      [(THWExpandedRep *)expandedRep didExitExpanded];
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

    expandedRep2 = [(THWiOSExpandedViewController *)self expandedRep];
    if (objc_opt_respondsToSelector())
    {
      [(THWExpandedRep *)expandedRep2 didPresentExpanded];
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

  [parentViewController setNeedsWhitePointAdaptivityStyleUpdate];

  self->mContentsRep = 0;
}

- (void)animationControllerDidPresentPostCommit:(id)commit
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

  [commit removeObserver:self];
}

- (void)animationControllerSetupTarget:(id)target
{
  if (![(THWiOSExpandedViewController *)self isDismissing])
  {
    [(THWAdornmentController *)self->_adornmentController setDisablePanelFrameAnimation:1];
    view = [(THWiOSExpandedViewController *)self view];
    v6 = *&CGAffineTransformIdentity.c;
    v13[0] = *&CGAffineTransformIdentity.a;
    v13[1] = v6;
    v13[2] = *&CGAffineTransformIdentity.tx;
    [view setTransform:v13];
    [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedViewController delegate](self "delegate")];
    [view setFrame:?];
    [-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedViewController delegate](self "delegate")];
    expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
    expandedRepSourceRep = [(THWiOSExpandedViewController *)self expandedRepSourceRep];
    if (objc_opt_respondsToSelector())
    {
      [expandedRepSourceRep expandableWillPresentExpanded];
    }

    if ([(THWiOSExpandedViewController *)self isDismissing])
    {
      layer = [objc_msgSend(objc_msgSend(expandedRepSourceRep "hostICC")];
    }

    else
    {
      layer = [view layer];
    }

    v10 = layer;
    if ([(THWiOSExpandedViewController *)self isDismissing])
    {
      layer2 = [view layer];
    }

    else
    {
      layer2 = [objc_msgSend(objc_msgSend(expandedRepSourceRep "hostICC")];
    }

    v12 = layer2;
    [target setSource:expandedRepSourceRep];
    [target setDestination:expandedRep];
    [target setHostLayer:{objc_msgSend(-[THWExpandedViewControllerDelegate rootSuperview](-[THWiOSExpandedViewController delegate](self, "delegate"), "rootSuperview"), "layer")}];
    [target setForegroundLayer:v10];
    [target setBackgroundLayer:v12];
    [view layoutIfNeeded];
    [(THWAdornmentController *)self->_adornmentController setDisablePanelFrameAnimation:0];
    if (objc_opt_respondsToSelector())
    {
      [(THWExpandedRep *)expandedRep expandedDidAppearPreAnimation];
    }
  }
}

- (void)hideAdornments
{
  if (![(THWiOSExpandedViewController *)self p_alwaysVisible])
  {
    adornmentController = [(THWiOSExpandedViewController *)self adornmentController];

    [(THWAdornmentController *)adornmentController setAdornmentsVisible:0 animated:1 completionBlock:0];
  }
}

- (void)showAdornments
{
  if (![(THWiOSExpandedViewController *)self p_alwaysVisible])
  {
    adornmentController = [(THWiOSExpandedViewController *)self adornmentController];

    [(THWAdornmentController *)adornmentController setAdornmentsVisible:1 animated:1 completionBlock:0];
  }
}

- (BOOL)allowTouchOutsideCanvasView:(id)view forGesture:(id)gesture
{
  v5 = TSUProtocolCast();
  gestureKind = [v5 gestureKind];
  if (gestureKind == TSWPImmediateSingleTap)
  {
    v8 = 1;
  }

  else
  {
    gestureKind2 = [v5 gestureKind];
    v8 = gestureKind2 == TSWPTapAndTouch;
  }

  gestureKind3 = [v5 gestureKind];
  if (gestureKind3 != TSDFreeTransform)
  {
    return v8;
  }

  expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [(THWExpandedRep *)expandedRep expandedAllowFreeTransform];
}

- (id)p_sourceICC
{
  if ([(THWiOSExpandedViewController *)self isDismissing])
  {

    return [(THWiOSExpandedViewController *)self icc];
  }

  else
  {
    expandedRepSourceRep = [(THWiOSExpandedViewController *)self expandedRepSourceRep];

    return [expandedRepSourceRep hostICC];
  }
}

- (id)p_targetICC
{
  if ([(THWiOSExpandedViewController *)self isDismissing])
  {
    expandedRepSourceRep = [(THWiOSExpandedViewController *)self expandedRepSourceRep];

    return [expandedRepSourceRep hostICC];
  }

  else
  {

    return [(THWiOSExpandedViewController *)self icc];
  }
}

- (void)interactiveCanvasController:(id)controller willLayoutRep:(id)rep
{
  if ([(THWiOSExpandedViewController *)self p_targetICC]== controller)
  {
    drawableToPresent = [(THWiOSExpandedViewController *)self drawableToPresent];
    if ([rep info] == drawableToPresent)
    {

      self->mContentsRep = 0;
      self->mContentsRep = rep;
      v7 = TSUProtocolCast();
      if (objc_opt_respondsToSelector())
      {
        [v7 expandedWillPresentWithController:self];
      }
    }

    if (-[THWiOSExpandedViewController p_hasSourceRepForInfo:](self, "p_hasSourceRepForInfo:", [rep info]))
    {
      v8 = -[THWiOSExpandedViewController p_sourceRepForInfo:](self, "p_sourceRepForInfo:", [rep info]);

      [rep willReplaceContentsFromRep:v8];
    }
  }
}

- (CGPoint)interactiveCanvasController:(id)controller clampContentOffset:(CGPoint)offset forViewScale:(double)scale
{
  scrollView = [(THWiOSExpandedViewController *)self scrollView];
  window = [(UIScrollView *)scrollView window];
  if (!window)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [window bounds];
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
  [(UIScrollView *)scrollView bounds];
  [(UIScrollView *)scrollView bounds];
  [(UIScrollView *)scrollView bounds];
  TSUClamp();
  v13 = v12;
  [(UIScrollView *)scrollView bounds];
  TSUClamp();
  v15 = v14;
  v16 = v13;
  result.y = v15;
  result.x = v16;
  return result;
}

- (void)interactiveCanvasController:(id)controller layoutRegistered:(id)registered
{
  v5 = TSUProtocolCast();
  if (v5)
  {

    [v5 setDelegate:self];
  }
}

- (CGRect)interactiveCanvasController:(id)controller expandBoundsForHitTesting:(CGRect)testing
{
  [-[THWiOSExpandedViewController view](self view];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view = [(THWiOSExpandedViewController *)self view];
  canvasView = [controller canvasView];

  [view convertRect:canvasView toView:{v7, v9, v11, v13}];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)interactiveCanvasController:(id)controller expandVisibleBoundsForTiling:(CGRect)tiling
{
  view = [(TSDiOSCanvasViewController *)[(THWiOSExpandedViewController *)self cvc:controller] view];

  [view bounds];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)additionalGestureTargetsForInteractiveCanvasController:(id)controller gesture:(id)gesture
{
  v6 = +[NSMutableArray array];
  [(THWiOSExpandedViewController *)self expandedRep];
  v7 = TSUProtocolCast();
  gestureKind = [gesture gestureKind];
  if (gestureKind == TSDFreeTransform && v7 != 0)
  {
    [v6 addObject:v7];
  }

  [v6 addObject:self];
  return v6;
}

- (void)exitAVPresentation:(id)presentation
{
  [(THWiOSExpandedViewController *)self dismissExpandedAnimatedWithCompletionBlock:&stru_45DF40];

  [presentation setDelegate:0];
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

- (void)expandedRepControllerInvalidateChildrenInPanel:(int)panel invalidateWPAuto:(BOOL)auto
{
  autoCopy = auto;
  v5 = *&panel;
  [(THWAdornmentController *)self->_adornmentController invalidateChildrenInPanel:?];
  if (autoCopy)
  {
    adornmentController = self->_adornmentController;

    [(THWAdornmentController *)adornmentController invalidateWPAutoInPanel:v5];
  }
}

- (id)expandedRepSourceRep
{
  delegate = [(THWiOSExpandedViewController *)self delegate];
  drawableToPresent = [(THWiOSExpandedViewController *)self drawableToPresent];

  return [(THWExpandedViewControllerDelegate *)delegate expandableRepForInfo:drawableToPresent];
}

- (double)expandedHeightForPanel:(int)panel allowDefault:(BOOL)default
{
  adornmentController = self->_adornmentController;
  if (adornmentController)
  {
    [(THWAdornmentController *)adornmentController heightForPanel:*&panel allowDefault:default];
  }

  else
  {
    result = 44.0;
    if (panel >= 3 || !default)
    {
      return 0.0;
    }
  }

  return result;
}

- (void)presentRepExpanded:(id)expanded
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THWiOSExpandedViewController presentRepExpanded:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Drawables/THWiOSExpandedViewController.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:1635 description:@"Main canvas widget host should handle this."];
}

- (void)presentPopoverForPopUpInfo:(id)info withFrame:(CGRect)frame inLayer:(id)layer
{
  if (![NSThread isMainThread:info])
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THWiOSExpandedViewController presentPopoverForPopUpInfo:withFrame:inLayer:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Drawables/THWiOSExpandedViewController.m"];

    [v5 handleFailureInFunction:v6 file:v7 lineNumber:1647 description:@"This operation must only be performed on the main thread."];
  }
}

- (BOOL)inFlowMode
{
  delegate = [(THWiOSExpandedViewController *)self delegate];

  return [(THWExpandedViewControllerDelegate *)delegate inFlowMode];
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
  layerHost = [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] layerHost];

  return [layerHost canvasLayer];
}

- (void)p_setOnCanvasRepShadowLayerHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  [(THWiOSExpandedViewController *)self expandedRepSourceRep];
  v4 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {
    styledRep = [v4 styledRep];
    [objc_msgSend(styledRep "shadowLayer")];
    reflectionLayer = [styledRep reflectionLayer];

    [reflectionLayer setHidden:hiddenCopy];
  }
}

- (CGRect)rectForCompletionAnimationWithRep:(id)rep
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

- (void)freeTransformDidBeginWithRep:(id)rep expandableRep:(id)expandableRep
{
  if (![NSThread isMainThread:rep])
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

- (void)freeTransformDidEndWithRep:(id)rep expandableRep:(id)expandableRep completionBlock:(id)block
{
  [(THWiOSExpandedViewController *)self p_setOnCanvasRepShadowLayerHidden:0, expandableRep];

  [(THWiOSExpandedViewController *)self p_dismissExpandedAnimatedWithCompletionBlock:block freeTransformDidEnd:1];
}

- (void)freeTransformDidCancelWithRep:(id)rep expandableRep:(id)expandableRep
{
  [(THWExpandedViewControllerDelegate *)[(THWiOSExpandedViewController *)self delegate:rep] expandedViewControllerDidCancelDismiss:self];
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

- (void)freeTransformWillFadeOutCurtain:(id)curtain expandableRep:(id)rep
{
  if (self->_freeTransformWasCancelled)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(THWiOSExpandedViewController *)self im_isCompactHeight:curtain]^ 1;
  }

  [(THWiOSExpandedViewController *)self p_setWantsStatusBarVisible:v5, rep];
  [(THWiOSExpandedViewController *)self expandedRep];
  if (objc_opt_respondsToSelector())
  {
    v6 = +[UIColor clearColor];
    scrollView = [(THWiOSExpandedViewController *)self scrollView];

    [(UIScrollView *)scrollView setBackgroundColor:v6];
  }
}

- (void)progressDidChangeForRep:(id)rep percent:(id)percent
{
  [(THWiOSExpandedViewController *)self delegate];
  v6 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {

    [v6 interactiveCanvasController:0 progressDidChangeForRep:rep percent:percent];
  }
}

- (void)scoreDidChangeForRep:(id)rep score:(id)score total:(id)total
{
  [(THWiOSExpandedViewController *)self delegate];
  v8 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {

    [v8 interactiveCanvasController:0 scoreDidChangeForRep:rep score:score total:total];
  }
}

- (void)resetAttemptForRep:(id)rep
{
  [(THWiOSExpandedViewController *)self delegate];
  v4 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {

    [v4 interactiveCanvasController:0 resetAttemptForRep:rep];
  }
}

- (id)actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture
{
  [(THWiOSExpandedViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = [(THWiOSExpandedViewController *)self delegate];

  return [(THWExpandedViewControllerDelegate *)delegate expandedViewController:self actionForHyperlink:hyperlink inRep:rep gesture:gesture];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
  if (collection)
  {
    v7 = expandedRep;
    if (objc_opt_respondsToSelector())
    {
      if ([(THWExpandedRep *)v7 expandedShouldDismissOnChangeFromSizeClassPairWithController:self flowMode:[(THWiOSExpandedViewController *)self inFlowMode]])
      {

        [(THWiOSExpandedViewController *)self dismissExpandedImmediate];
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THWiOSExpandedViewController;
  [(THWiOSExpandedViewController *)&v4 viewDidAppear:appear];
  [(THWiOSExpandedViewController *)self becomeFirstResponder];
}

- (void)p_addKeyCommands
{
  expandedRep = [(THWiOSExpandedViewController *)self expandedRep];
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

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(THWExpandedRep *)expandedRep expandedContentAllowPinchZoom])
  {
    [(THWiOSExpandedViewController *)self addKeyCommand:[UIKeyCommand keyCommandWithInput:@"+" modifierFlags:0 action:"p_handleZoomInKey:"]];
    v6 = @"-";
    v7 = &selRef_p_handleZoomOutKey_;
LABEL_9:
    v8 = [UIKeyCommand keyCommandWithInput:v6 modifierFlags:0 action:*v7];

    [(THWiOSExpandedViewController *)self addKeyCommand:v8];
  }
}

- (void)p_handleNavigationKey:(id)key
{
  [(THWiOSExpandedViewController *)self expandedRep];
  v4 = TSUProtocolCast();
  v6[0] = UIKeyInputRightArrow;
  v6[1] = @"\r";
  v6[2] = @"\n";
  if (-[NSArray containsObject:](+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v6, 3), "containsObject:", [key input]))
  {
    goto LABEL_2;
  }

  v5 = UIKeyInputLeftArrow;
  if (-[NSArray containsObject:](+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v5, 1), "containsObject:", [key input]))
  {
    goto LABEL_4;
  }

  if ([&off_49DA58 containsObject:{objc_msgSend(key, "input")}])
  {
    if (([key modifierFlags] & 0x20000) == 0)
    {
LABEL_2:
      [v4 handleNavigateNextCommand];
      return;
    }

LABEL_4:
    [v4 handleNavigatePreviousCommand];
  }
}

- (void)p_handleNumber:(id)number
{
  [(THWiOSExpandedViewController *)self expandedRep];
  v4 = TSUProtocolCast();
  if (objc_opt_respondsToSelector())
  {
    v5 = [objc_msgSend(number "input")];

    [v4 handleNavigateCommandWithNumber:v5];
  }
}

- (void)p_handleMediaTransportKey:(id)key
{
  [(THWiOSExpandedViewController *)self expandedRep];
  v4 = TSUProtocolCast();
  if ([objc_msgSend(key "input")])
  {

    [v4 handleTransportPlayPauseCommand];
  }

  else if ([objc_msgSend(key "input")])
  {
    if ([key modifierFlags] == &loc_100000)
    {

      [v4 handleTransportFastforwardCommand];
    }

    else
    {

      [v4 handleTransportNextFrameCommand];
    }
  }

  else if ([objc_msgSend(key "input")])
  {
    if ([key modifierFlags] == &loc_100000)
    {

      [v4 handleTransportRewindCommand];
    }

    else
    {

      [v4 handleTransportPreviousFrameCommand];
    }
  }

  else if ([objc_msgSend(key "input")])
  {

    [v4 handleTransportIncreaseVolumeCommand];
  }

  else if ([objc_msgSend(key "input")])
  {

    [v4 handleTransportDecreaseVolumeCommand];
  }
}

- (void)zoomInOrOut:(BOOL)out
{
  outCopy = out;
  [(TSDInteractiveCanvasController *)[(THWiOSExpandedViewController *)self icc] viewScale];
  v6 = v5;
  if (outCopy)
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

- (void)p_updateContentOffsetFromCurrentViewScale:(double)scale toNewViewScale:(double)viewScale animated:(BOOL)animated duration:(double)duration completion:(id)completion
{
  animatedCopy = animated;
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
  if (animatedCopy)
  {
    if (duration == 0.0)
    {
      durationCopy = 0.3;
    }

    else
    {
      durationCopy = duration;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1495B0;
    v19[3] = &unk_45BD40;
    v19[4] = completion;
    [(TSDInteractiveCanvasController *)v16 setViewScale:1 contentOffset:v19 clampOffset:viewScale animationDuration:v13 completion:v15, durationCopy];
  }

  else
  {
    [(TSDInteractiveCanvasController *)v16 setViewScale:0 contentOffset:0 clampOffset:viewScale animated:v13, v15];
    if (completion)
    {
      v18 = *(completion + 2);

      v18(completion);
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