@interface THWWebRep
+ (void)enumerateSubdomainsOfHost:(id)a3 usingBlock:(id)a4;
- (BOOL)autoplayAllowed;
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)expandedHasContentForPanel:(int)a3;
- (BOOL)expandedHasRoomForPanelsWithHeight:(double)a3 inFrame:(CGRect)a4;
- (BOOL)handleGesture:(id)a3;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)meetsStageDimensionRequirementForExpanded;
- (BOOL)p_pointIsInRedZone:(CGPoint)a3 onView:(id)a4;
- (BOOL)p_stageAlmostCoversPage;
- (BOOL)shouldAnimateTargetLayer:(id)a3;
- (BOOL)shouldFadeOutAnimationLayer:(id)a3;
- (BOOL)shouldRecognizePressOnRep:(id)a3;
- (BOOL)wantsPressAction;
- (BOOL)wantsPressAnimation;
- (BOOL)webView:(id)a3 handleURL:(id)a4;
- (BOOL)webView:(id)a3 shouldAcceptHitAtPoint:(CGPoint)a4 onView:(id)a5 withEvent:(id)a6;
- (BOOL)webView:(id)a3 shouldStartLoadWithURL:(id)a4 navigationType:(int)a5 deferredResponseHandler:(id)a6;
- (CALayer)canvasPosterLayer;
- (CALayer)webViewPosterLayer;
- (CGAffineTransform)freeTransform;
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (CGRect)deferredStageViewFrame;
- (CGRect)ftcTargetFrame;
- (CGRect)rectForCompletion;
- (PFDURLRequestScope)requestScope;
- (THAnimationController)animationController;
- (THWAutoplayConfig)autoplayConfig;
- (THWWebRep)initWithLayout:(id)a3 canvas:(id)a4;
- (TSWPassThroughView)stageView;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (id)animationLayer;
- (id)expandedChildInfosForPanel:(int)a3;
- (id)expandedPanel:(int)a3 primaryTargetForGesture:(id)a4;
- (id)p_cachedLoadExternalContentApproval;
- (id)p_filteredOutURLSchemes;
- (id)shadowAnimationLayer;
- (id)targetLayer;
- (id)webThreadWebView:(id)a3 resource:(id)a4 willSendRequest:(id)a5 redirectResponse:(id)a6 fromDataSource:(id)a7;
- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5;
- (void)addAdditionalChildLayersToArray:(id)a3;
- (void)addChildViewsToArray:(id)a3;
- (void)autoplayPause;
- (void)autoplayStart;
- (void)autoplayStop;
- (void)buttonControl:(id)a3 didUpdateLayer:(id)a4;
- (void)buttonControlWasPressed:(id)a3;
- (void)contentIsReady;
- (void)dealloc;
- (void)didAddChildView:(id)a3;
- (void)didExitExpanded;
- (void)didPresentExpanded;
- (void)expandableExpandedPresentationDidEnd;
- (void)expandedDidPresentWithController:(id)a3;
- (void)expandedDidRotateTransitionToSize:(CGSize)a3;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4;
- (void)expandedWillPresentWithController:(id)a3;
- (void)handleNotificationVantageDidChange:(id)a3;
- (void)p_autoplayIfDesired;
- (void)p_cacheLoadExternalContentApproval:(BOOL)a3;
- (void)p_exposeWebView;
- (void)p_loadSourceURL;
- (void)p_pauseOnCanvas;
- (void)p_play;
- (void)p_startAutoplay;
- (void)p_startAutoplayOnCanvas;
- (void)p_togglePanelDescriptionExpanded;
- (void)p_updateLayerContents:(id)a3 withImage:(id)a4;
- (void)p_updateStageViewFrame:(CGRect)a3;
- (void)p_webView:(id)a3 shouldStartLoadWithURL:(id)a4 navigationType:(int)a5 syncResponseHandler:(id)a6 asyncResponseHandler:(id)a7;
- (void)reparentAnimationLayerIfBackedByView:(id)a3;
- (void)reparentTargetLayerIfBackedByView:(id)a3;
- (void)replaceContentsFromRep:(id)a3;
- (void)screenScaleDidChange;
- (void)viewScaleDidChange;
- (void)webViewDidFinishLoad:(id)a3;
- (void)willBeRemoved;
- (void)willBeginHandlingGesture:(id)a3;
- (void)willRemoveChildView:(id)a3;
- (void)willReplaceContentsFromRep:(id)a3;
@end

@implementation THWWebRep

- (THWWebRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v20.receiver = self;
  v20.super_class = THWWebRep;
  v4 = [(THWWebRep *)&v20 initWithLayout:a3 canvas:a4];
  v5 = v4;
  if (v4)
  {
    v4->_ownsWebView = 1;
    objc_opt_class();
    v6 = [(THWWebRep *)v5 interactiveCanvasController];
    v7 = TSUDynamicCast();

    v8 = [v7 pressHandlerForPressableReps];
    if (v8)
    {
      v9 = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:v5 pressHandler:v8];
      [(THWWebRep *)v5 setPressableHandler:v9];

      v10 = [(THWWebRep *)v5 pressableHandler];
      [v10 setEnabledOnlyIfWidgetInteractionDisabledOnPage:1];
    }

    v11 = [THWFreeTransformableRepGestureTargetHandler alloc];
    v12 = [(THWWebRep *)v5 hostICC];
    v13 = [v12 widgetHost];
    v14 = [v13 freeTransformRepHandler];
    v15 = [(THWFreeTransformableRepGestureTargetHandler *)v11 initWithFreeTransformableRep:v5 handler:v14];
    freeTransformableHandler = v5->_freeTransformableHandler;
    v5->_freeTransformableHandler = v15;

    v5->_stageAlmostCoversPage = [(THWWebRep *)v5 p_stageAlmostCoversPage];
    size = CGRectNull.size;
    v5->_deferredStageViewFrame.origin = CGRectNull.origin;
    v5->_deferredStageViewFrame.size = size;
    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v5 selector:"handleNotificationVantageDidChange:" name:@"THVantageDidChangeNotification" object:0];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_ownsWebView)
  {
    [(THWPlatformWebViewProtocol *)self->_webView setWebViewDelegate:0];
  }

  webView = self->_webView;
  self->_webView = 0;

  bridgeController = self->_bridgeController;
  self->_bridgeController = 0;

  stageView = self->_stageView;
  self->_stageView = 0;

  animationController = self->_animationController;
  self->_animationController = 0;

  freeTransformableHandler = self->_freeTransformableHandler;
  self->_freeTransformableHandler = 0;

  pressableHandler = self->_pressableHandler;
  self->_pressableHandler = 0;

  webViewPosterLayer = self->_webViewPosterLayer;
  self->_webViewPosterLayer = 0;

  canvasPosterLayer = self->_canvasPosterLayer;
  self->_canvasPosterLayer = 0;

  requestScope = self->_requestScope;
  self->_requestScope = 0;

  v12.receiver = self;
  v12.super_class = THWWebRep;
  [(THWWebRep *)&v12 dealloc];
}

+ (void)enumerateSubdomainsOfHost:(id)a3 usingBlock:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [@"autoplay." stringByAppendingString:v7];
    (*(a4 + 2))(v6, v8);

    v9 = [@"manual." stringByAppendingString:v7];

    (*(a4 + 2))(v6, v9);
  }
}

- (PFDURLRequestScope)requestScope
{
  if (!self->_requestScope)
  {
    v3 = [(THWWebRep *)self info];

    if (v3)
    {
      v4 = [(THWWebRep *)self info];
      v5 = [v4 drmContext];
      v6 = [v4 bookBundleURL];
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = sub_1AA740;
      v20 = sub_1AA750;
      v7 = [v4 bookID];
      v22 = v7;
      v8 = [NSArray arrayWithObjects:&v22 count:1];
      v21 = [v8 mutableCopy];

      v9 = objc_opt_class();
      v10 = [v4 bookID];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1AA758;
      v15[3] = &unk_45E860;
      v15[4] = &v16;
      [v9 enumerateSubdomainsOfHost:v10 usingBlock:v15];

      v11 = [PFDURLRequestScope requestScopeWithHosts:v17[5] bookRootURL:v6 context:v5];
      requestScope = self->_requestScope;
      self->_requestScope = v11;

      _Block_object_dispose(&v16, 8);
    }
  }

  v13 = self->_requestScope;

  return v13;
}

- (void)willBeRemoved
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"THVantageDidChangeNotification" object:0];

  [(CALayer *)self->_webViewPosterLayer setDelegate:0];
  [(CALayer *)self->_canvasPosterLayer setDelegate:0];
  if ([(THWWebRep *)self ownsWebView])
  {
    webView = self->_webView;

    [(THWPlatformWebViewProtocol *)webView setWebViewDelegate:0];
  }
}

- (void)willReplaceContentsFromRep:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v14 = TSUDynamicCast();

  v5 = v14;
  if (v14)
  {
    if (([v14 ownsWebView] & 1) == 0)
    {
      v6 = +[TSUAssertionHandler currentHandler];
      v7 = [NSString stringWithUTF8String:"[THWWebRep willReplaceContentsFromRep:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebRep.m"];
      [v6 handleFailureInFunction:v7 file:v8 lineNumber:224 description:@"unexpected webView ownership before replacing contents"];
    }

    -[THWWebRep setIsWebContentLoaded:](self, "setIsWebContentLoaded:", [v14 isWebContentLoaded]);
    v9 = [v14 bridgeController];
    [(THWWebRep *)self setBridgeController:v9];

    v10 = [(THWWebRep *)self bridgeController];
    [v10 setJavascriptHandler:self];

    v11 = [v14 webView];
    [(THWWebRep *)self setWebView:v11];

    v12 = [(TSWPassThroughView *)self->_stageView layer];
    v13 = [(THWWebRep *)self webViewPosterLayer];
    [v12 addSublayer:v13];

    [(THWWebRep *)self setOwnsWebView:0];
    v5 = v14;
  }
}

- (void)replaceContentsFromRep:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v43 = TSUDynamicCast();

  v6 = v43;
  if (v43)
  {
    if (![v43 ownsWebView] || -[THWWebRep ownsWebView](self, "ownsWebView"))
    {
      v7 = +[TSUAssertionHandler currentHandler];
      v8 = [NSString stringWithUTF8String:"[THWWebRep replaceContentsFromRep:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebRep.m"];
      [v7 handleFailureInFunction:v8 file:v9 lineNumber:243 description:@"unexpected webView ownership while replacing contents"];
    }

    [v43 setOwnsWebView:0];
    [(THWWebRep *)self setOwnsWebView:1];
    v10 = [(THWWebRep *)self stageView];
    v11 = [(THWWebRep *)self webView];
    [v10 addSubview:v11];

    v12 = OBJC_IVAR___TSDRep_mCanvas;
    v13 = *&self->super.TSDContainerRep_opaque[OBJC_IVAR___TSDRep_mCanvas];
    v14 = [(THWWebRep *)self layout];
    [v14 webFrameInRoot];
    [v13 convertUnscaledToBoundsRect:?];
    [*&self->super.TSDContainerRep_opaque[v12] contentsScale];
    TSDRoundedRectForScale();
    [(THWWebRep *)self p_updateStageViewFrame:?];

    [(THWPlatformWebViewProtocol *)self->_webView setWebViewDelegate:self];
    if (-[THWWebRep createdWebView](self, "createdWebView") && -[THWWebRep isExpanded](self, "isExpanded") || ![v43 isWebContentLoaded] || -[THWWebRep deferExposeWebView](self, "deferExposeWebView"))
    {
      v15 = [(THWWebRep *)self webView];
      [v15 setAlpha:0.0];

      v16 = [(THWWebRep *)self webView];
      v17 = [(THWWebRep *)self stageView];
      [v17 bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [(THWWebRep *)self info];
      [v26 idealWebSize];
      [v16 setFrame:v19 naturalSize:{v21, v23, v25, v27, v28}];
    }

    else
    {
      v30 = [(THWWebRep *)self webView];
      v31 = [(THWWebRep *)self stageView];
      [v31 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v40 = [(THWWebRep *)self info];
      [v40 idealWebSize];
      [v30 setFrame:v33 naturalSize:{v35, v37, v39, v41, v42}];

      [(CALayer *)self->_webViewPosterLayer removeFromSuperlayer];
    }

    v5 = [(THWWebRep *)self isExpanded];
    v6 = v43;
    if (!v5)
    {
      v29 = [(THWWebRep *)self interactiveCanvasController];
      [v29 layoutInvalidated];

      v6 = v43;
    }
  }

  _objc_release_x1(v5, v6);
}

- (void)viewScaleDidChange
{
  v3 = [(THWWebRep *)self pressableHandler];
  v4 = [v3 widgetInteractionDisabledOnPage];

  if (v4)
  {

    [(THWWebRep *)self p_pauseOnCanvas];
  }
}

- (void)addAdditionalChildLayersToArray:(id)a3
{
  v4 = a3;
  if (!self->_stageView)
  {
    v34 = v4;
    v5 = [(THWWebRep *)self info];
    v6 = [v5 autoplayConfig];
    if (([v6 enabled] & 1) != 0 || -[THWWebRep isExpanded](self, "isExpanded"))
    {
    }

    else
    {
      playButtonPressed = self->_playButtonPressed;

      if (!playButtonPressed)
      {
        v22 = OBJC_IVAR___TSDRep_mCanvas;
        v23 = *&self->super.TSDContainerRep_opaque[OBJC_IVAR___TSDRep_mCanvas];
        v24 = [(THWWebRep *)self layout];
        [v24 stageFrame];
        [v23 convertUnscaledToBoundsRect:?];
        [*&self->super.TSDContainerRep_opaque[v22] contentsScale];
        TSDRoundedRectForScale();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v33 = [(THWWebRep *)self canvasPosterLayer];
        [v33 setFrame:{v26, v28, v30, v32}];

        v19 = [(THWWebRep *)self canvasPosterLayer];
        goto LABEL_6;
      }
    }

    v7 = OBJC_IVAR___TSDRep_mCanvas;
    v8 = *&self->super.TSDContainerRep_opaque[OBJC_IVAR___TSDRep_mCanvas];
    v9 = [(THWWebRep *)self layout];
    [v9 webFrame];
    [v8 convertUnscaledToBoundsRect:?];
    [*&self->super.TSDContainerRep_opaque[v7] contentsScale];
    TSDRoundedRectForScale();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [(THWWebRep *)self webViewPosterLayer];
    [v18 setFrame:{v11, v13, v15, v17}];

    v19 = [(THWWebRep *)self webViewPosterLayer];
LABEL_6:
    v20 = v19;
    [v34 addObject:v19];

    v4 = v34;
  }
}

- (CALayer)webViewPosterLayer
{
  webViewPosterLayer = self->_webViewPosterLayer;
  if (!webViewPosterLayer)
  {
    v4 = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    v5 = self->_webViewPosterLayer;
    self->_webViewPosterLayer = v4;

    v6 = [(THWWebRep *)self interactiveCanvasController];
    [(CALayer *)self->_webViewPosterLayer setDelegate:v6];

    [(CALayer *)self->_webViewPosterLayer setContentsGravity:kCAGravityResize];
    webViewPosterLayer = self->_webViewPosterLayer;
  }

  v7 = [(CALayer *)webViewPosterLayer contents];
  if (!v7 && self->_ownsWebView)
  {
    if (self->_suspendPosterRendering)
    {
      goto LABEL_8;
    }

    v8 = self->_webViewPosterLayer;
    v7 = [(THWWebRep *)self info];
    v9 = [v7 defaultImage];
    [(THWWebRep *)self p_updateLayerContents:v8 withImage:v9];
  }

LABEL_8:
  v10 = self->_webViewPosterLayer;

  return v10;
}

- (CALayer)canvasPosterLayer
{
  canvasPosterLayer = self->_canvasPosterLayer;
  if (!canvasPosterLayer)
  {
    v4 = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    v5 = self->_canvasPosterLayer;
    self->_canvasPosterLayer = v4;

    v6 = [(THWWebRep *)self interactiveCanvasController];
    [(CALayer *)self->_canvasPosterLayer setDelegate:v6];

    [(CALayer *)self->_canvasPosterLayer setContentsGravity:kCAGravityResize];
    canvasPosterLayer = self->_canvasPosterLayer;
  }

  v7 = [(CALayer *)canvasPosterLayer contents];
  if (!v7 && self->_ownsWebView)
  {
    if (self->_suspendPosterRendering)
    {
      goto LABEL_8;
    }

    v8 = self->_canvasPosterLayer;
    v7 = [(THWWebRep *)self info];
    v9 = [v7 placeholderImage];
    [(THWWebRep *)self p_updateLayerContents:v8 withImage:v9];
  }

LABEL_8:
  v10 = self->_canvasPosterLayer;

  return v10;
}

- (void)p_updateLayerContents:(id)a3 withImage:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v11 = a3;
    v7 = [(THWWebRep *)self canvas];
    [v7 contentsScale];
    v9 = v8;

    v10 = [v6 CGImageForContentsScale:v9];
    [v11 setContents:v10];
    [v11 setContentsScale:v9];
  }
}

- (void)screenScaleDidChange
{
  v9.receiver = self;
  v9.super_class = THWWebRep;
  [(THWWebRep *)&v9 screenScaleDidChange];
  webViewPosterLayer = self->_webViewPosterLayer;
  v4 = [(THWWebRep *)self info];
  v5 = [v4 defaultImage];
  [(THWWebRep *)self p_updateLayerContents:webViewPosterLayer withImage:v5];

  canvasPosterLayer = self->_canvasPosterLayer;
  v7 = [(THWWebRep *)self info];
  v8 = [v7 placeholderImage];
  [(THWWebRep *)self p_updateLayerContents:canvasPosterLayer withImage:v8];
}

- (void)p_updateStageViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(THWWebRep *)self isExpanding])
  {
    v8 = [(THWWebRep *)self stageView];
    [v8 setFrame:{x, y, width, height}];

    v9 = [(THWWebRep *)self stageView];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(THWWebRep *)self webViewPosterLayer];
    [v18 setFrame:{v11, v13, v15, v17}];

    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  [(THWWebRep *)self setDeferredStageViewFrame:x, y, width, height];
}

- (void)addChildViewsToArray:(id)a3
{
  v4 = a3;
  if (![(THWWebRep *)self isExpanded])
  {
    v5 = [(THWWebRep *)self info];
    v6 = [v5 autoplayConfig];
    if (([v6 enabled] & 1) != 0 || self->_playButtonPressed || self->_isWebContentLoaded)
    {
    }

    else
    {
      v24 = [(THWWebRep *)self deferExposeWebView];

      if (!v24)
      {
        goto LABEL_10;
      }
    }
  }

  v7 = OBJC_IVAR___TSDRep_mCanvas;
  v8 = *&self->super.TSDContainerRep_opaque[OBJC_IVAR___TSDRep_mCanvas];
  v9 = [(THWWebRep *)self layout];
  [v9 webFrameInRoot];
  [v8 convertUnscaledToBoundsRect:?];
  [*&self->super.TSDContainerRep_opaque[v7] contentsScale];
  TSDRoundedRectForScale();
  [(THWWebRep *)self p_updateStageViewFrame:?];

  if (self->_ownsWebView)
  {
    webView = self->_webView;
    v11 = [(THWWebRep *)self stageView];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(THWWebRep *)self info];
    [v20 idealWebSize];
    [(THWPlatformWebViewProtocol *)webView setFrame:v13 naturalSize:v15, v17, v19, v21, v22];

    if ([(THWWebRep *)self deferExposeWebView])
    {
      v23 = dispatch_time(0, 100000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1AB670;
      block[3] = &unk_45AD60;
      block[4] = self;
      dispatch_after(v23, &_dispatch_main_q, block);
    }
  }

  [v4 addObject:self->_stageView];
LABEL_10:
}

- (TSWPassThroughView)stageView
{
  if (!self->_stageView)
  {
    v3 = [[TSWPassThroughView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    stageView = self->_stageView;
    self->_stageView = v3;

    [(TSWPassThroughView *)self->_stageView setAcceptsHits:0];
    v5 = [(TSWPassThroughView *)self->_stageView layer];
    v6 = [(THWWebRep *)self webViewPosterLayer];
    [v5 addSublayer:v6];

    if (!self->_webView)
    {
      [(THWWebRep *)self setCreatedWebView:1];
      v7 = [(THWWebRep *)self requestScope];
      v8 = [THWWebView alloc];
      v9 = [(THWWebRep *)self p_filteredOutURLSchemes];
      v10 = [(THWWebView *)v8 initWithfilteredOutURLSchemes:v9 requestScope:v7];
      webView = self->_webView;
      self->_webView = v10;

      [(THWPlatformWebViewProtocol *)self->_webView disableScrolling];
      [(THWPlatformWebViewProtocol *)self->_webView hide];
      [(TSWPassThroughView *)self->_stageView addSubview:self->_webView];
    }

    if (!self->_bridgeController)
    {
      v12 = [[THWWebBridgeController alloc] initWithView:self->_webView];
      bridgeController = self->_bridgeController;
      self->_bridgeController = v12;

      [(THWWebBridgeController *)self->_bridgeController setJavascriptHandler:self];
    }
  }

  v14 = self->_stageView;

  return v14;
}

- (void)didAddChildView:(id)a3
{
  v7 = a3;
  if (self->_ownsWebView)
  {
    [(THWPlatformWebViewProtocol *)self->_webView setWebViewDelegate:self];
  }

  if (self->_stageView == v7 && self->_playButtonPressed && self->_ownsWebView || ([(THWWebRep *)self webView], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, v6 = [(THWWebRep *)self autoplayRequested], v5, v6))
  {
    [(THWWebRep *)self p_startAutoplay];
    [(THWWebRep *)self setAutoplayRequested:0];
  }
}

- (void)willRemoveChildView:(id)a3
{
  if (self->_ownsWebView)
  {
    v4 = [(THWWebRep *)self webView];
    [v4 setWebViewDelegate:0];
  }
}

- (BOOL)wantsPressAnimation
{
  v2 = [(THWWebRep *)self pressableHandler];
  v3 = [v2 widgetInteractionDisabledOnPage];

  return v3;
}

- (BOOL)wantsPressAction
{
  if ([(THWWebRep *)self meetsStageDimensionRequirementForExpanded])
  {
    return [(THWWebRep *)self pressableAction]!= 0;
  }

  v4 = [(THWWebRep *)self pressableHandler];
  if ([v4 widgetInteractionDisabledOnPage])
  {
    v3 = [(THWWebRep *)self pressableAction]!= 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldRecognizePressOnRep:(id)a3
{
  v3 = [(THWWebRep *)self layout];
  v4 = [v3 isExpanded];

  return v4 ^ 1;
}

- (void)webViewDidFinishLoad:(id)a3
{
  v4 = [(THWWebRep *)self info];
  v5 = [v4 exposurePolicy];

  if (!v5)
  {
    v6 = dispatch_time(0, 100000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1ABAF8;
    block[3] = &unk_45AD60;
    block[4] = self;
    dispatch_after(v6, &_dispatch_main_q, block);
  }
}

- (id)webThreadWebView:(id)a3 resource:(id)a4 willSendRequest:(id)a5 redirectResponse:(id)a6 fromDataSource:(id)a7
{
  v8 = a5;
  v9 = [v8 URL];
  v10 = [v9 scheme];
  v11 = [v10 isEqualToString:@"x-ibooks-th"];

  if ((v11 & 1) == 0)
  {
    v12 = [(THWWebRep *)self info];
    v13 = [v12 autoplayConfig];
    if ([v13 enabled])
    {
      v14 = [(THWWebRep *)self info];
      v15 = [v14 allowNetworkAccess];

      if (!v15)
      {
        v16 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v16 = v8;
LABEL_7:

  return v16;
}

- (void)p_webView:(id)a3 shouldStartLoadWithURL:(id)a4 navigationType:(int)a5 syncResponseHandler:(id)a6 asyncResponseHandler:(id)a7
{
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = v13;
  if (v12)
  {
    v13 = v12;
  }

  v15 = objc_retainBlock(v13);
  v16 = [(THWWebRep *)self p_cachedLoadExternalContentApproval];
  v17 = [v11 scheme];
  v18 = [@"x-ibooks-th" isEqualToString:v17];

  v19 = [v11 absoluteString];
  v20 = [v19 isEqualToString:@"about:blank"];

  if (v20)
  {
    goto LABEL_4;
  }

  v21 = [(THWWebRep *)self bridgeController];
  v22 = [v21 handleURL:v11];

  if (v22)
  {
    goto LABEL_20;
  }

  v23 = [(THWWebRep *)self info];
  v24 = [v23 autoplayConfig];
  if ([v24 enabled])
  {
    if (v18)
    {

      v25 = &dword_0 + 1;
LABEL_17:
      v15[2](v15, v25);
      goto LABEL_21;
    }

    v31 = [v16 BOOLValue];

    if (v31)
    {
LABEL_16:
      v25 = [v16 BOOLValue];
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ([v11 isFileURL])
  {
LABEL_20:
    v15[2](v15, 0);
    goto LABEL_21;
  }

  if (a5 != 5)
  {
    if (a5)
    {
      goto LABEL_21;
    }

    v26 = +[TSKApplicationDelegate sharedDelegate];
    v27 = [v26 validURLSchemes];
    v28 = [v11 scheme];
    v29 = [v28 lowercaseString];
    v30 = [v27 containsObject:v29];

    if (!v30)
    {
      goto LABEL_20;
    }

LABEL_19:
    v35 = +[TSKApplicationDelegate sharedDelegate];
    [v35 openURL:v11];

    goto LABEL_20;
  }

  v32 = [v11 scheme];
  v33 = [v32 lowercaseString];
  v34 = [@"mailto" isEqualToString:v33];

  if (v34)
  {
    goto LABEL_19;
  }

  v36 = +[THApplicationDelegate sharedDelegate];
  v37 = [v36 urlSchemesNotRequiringUserPrompt];
  v38 = [v11 scheme];
  v39 = [v37 containsObject:v38];

  if (v39)
  {
LABEL_4:
    v15[2](v15, &dword_0 + 1);
    goto LABEL_21;
  }

  if (v16)
  {
    goto LABEL_16;
  }

  v48 = [(THWWebRep *)self layout];
  v40 = [v48 layoutController];
  v41 = [v40 canvas];
  v42 = [v41 canvasController];
  v43 = [v42 layerHost];
  v47 = [v43 viewController];

  v44 = +[THApplicationDelegate sharedDelegate];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1ABFFC;
  v49[3] = &unk_45E888;
  v49[4] = self;
  v45 = v14;
  v50 = v45;
  v46 = [v44 shouldAuthorizeURLToLoad:v11 loadContext:v47 completion:v49];

  if (v12)
  {
    (*(v12 + 2))(v12, v46);
  }

  else if (v46)
  {
    (*(v45 + 2))(v45, 1);
  }

LABEL_21:
}

- (BOOL)webView:(id)a3 shouldStartLoadWithURL:(id)a4 navigationType:(int)a5 deferredResponseHandler:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1AC1B0;
  v16[3] = &unk_45E8B0;
  v16[4] = &v17;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1AC1C0;
  v14[3] = &unk_45E8D8;
  v12 = a6;
  v15 = v12;
  [(THWWebRep *)self p_webView:v10 shouldStartLoadWithURL:v11 navigationType:v7 syncResponseHandler:v16 asyncResponseHandler:v14];
  LOBYTE(v7) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v7;
}

- (BOOL)canHandleGesture:(id)a3
{
  v4 = a3;
  v5 = [(THWWebRep *)self pressableHandler];
  v6 = [v5 canHandleGesture:v4];

  if (v6)
  {
    v7 = 1;
  }

  else if (self->_ownsWebView)
  {
    v8 = [(THWWebRep *)self freeTransformableHandler];
    v7 = [v8 canHandleGesture:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)handleGesture:(id)a3
{
  v4 = a3;
  if (!self->_ownsWebView)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THWWebRep handleGesture:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebRep.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:752 description:@"shouldn't be handling gestures when we don't own the webView"];
  }

  v8 = [(THWWebRep *)self pressableHandler];
  v9 = [v8 handleGesture:v4];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(THWWebRep *)self freeTransformableHandler];
    v10 = [v11 handleGesture:v4];
  }

  return v10;
}

- (void)willBeginHandlingGesture:(id)a3
{
  v7 = a3;
  v4 = [v7 gestureKind];
  v5 = TSDFreeTransform;

  if (v4 == v5)
  {
    v6 = [(THWWebRep *)self freeTransformableHandler];
    [v6 willBeginHandlingGesture:v7];
  }
}

- (BOOL)webView:(id)a3 handleURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(THWWebRep *)self webView];

  if (v8 == v7)
  {
    v10 = [v6 scheme];
    v11 = [v10 lowercaseString];

    if (![v11 isEqualToString:@"ibooks"] || (objc_msgSend(v6, "host"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = +[TSKApplicationDelegate sharedDelegate];
      [v13 openURL:v6];
      v9 = 0;
LABEL_6:

      goto LABEL_7;
    }

    if ([(THWWebRep *)self isExpanded])
    {
      v15 = [(THWWebRep *)self interactiveCanvasController];
      v16 = [v15 delegate];
      v13 = TSUProtocolCast();

      v9 = v13 != 0;
      if (!v13)
      {
        goto LABEL_6;
      }

      [v13 handleHyperlinkWithURL:v6];
    }

    else
    {
      objc_opt_class();
      v17 = [(THWWebRep *)self interactiveCanvasController];
      v13 = TSUDynamicCast();

      [v13 performSelectorOnMainThread:"handleHyperlinkWithURL:" withObject:v6 waitUntilDone:0];
    }

    v9 = 1;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (BOOL)webView:(id)a3 shouldAcceptHitAtPoint:(CGPoint)a4 onView:(id)a5 withEvent:(id)a6
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  if ([(THWWebRep *)self stageAlmostCoversPage])
  {
    v10 = ![(THWWebRep *)self p_pointIsInRedZone:v9 onView:x, y];
  }

  else
  {
    v10 = 1;
  }

  v11 = [(THWWebRep *)self pressableHandler];
  v12 = [v11 widgetInteractionDisabledOnPage];

  v13 = (v12 ^ 1) & v10;
  if ([(THWWebRep *)self isExpanded])
  {
    v13 &= ![(THWWebRep *)self p_pointIsInRedZone:v9 onView:x, y];
  }

  return v13;
}

- (void)expandedWillPresentWithController:(id)a3
{
  v4 = a3;
  [(THWWebRep *)self setExpandedRepController:v4];
  objc_opt_class();
  v5 = [v4 expandedRepSourceRep];
  v8 = TSUDynamicCast();

  v6 = [v4 expandedRepSourceRep];

  v7 = TSUProtocolCast();

  if (!v8 && [v7 isFreeTransformInProgress])
  {
    self->_suspendPosterRendering = 1;
  }
}

- (THAnimationController)animationController
{
  animationController = self->_animationController;
  if (!animationController)
  {
    v4 = objc_alloc_init(THAnimationController);
    v5 = self->_animationController;
    self->_animationController = v4;

    [(THAnimationController *)self->_animationController setSource:self];
    [(THAnimationController *)self->_animationController addObserver:self];
    animationController = self->_animationController;
  }

  return animationController;
}

- (BOOL)expandedHasContentForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [(THWWebRep *)self info];
  v5 = [v4 adornmentInfo];
  LOBYTE(v3) = [v5 panelContentProviderHasContentForPanel:v3];

  return v3;
}

- (id)expandedChildInfosForPanel:(int)a3
{
  v3 = *&a3;
  v4 = [(THWWebRep *)self info];
  v5 = [v4 adornmentInfo];
  v6 = [v5 panelContentProviderChildInfosForPanel:v3];

  return v6;
}

- (BOOL)expandedHasRoomForPanelsWithHeight:(double)a3 inFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(THWWebRep *)self layout];
  [v9 webSizeInStageSize:{width, height}];
  v11 = v10;

  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  return CGRectGetHeight(v13) - v11 >= a3;
}

- (void)expandedDidPresentWithController:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 expandableRepContainsHTMLContent:self];
  }
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)a3 toFrame:(CGRect)a4
{
  v4 = [(THWWebRep *)self layout:a3.origin.x];
  [v4 invalidateFrame];
}

- (void)didExitExpanded
{
  v2 = [(THWWebRep *)self bridgeController];
  [v2 tellBrowserToPauseAudioVisual];
}

- (void)didPresentExpanded
{
  if (!self->_webView)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[THWWebRep didPresentExpanded]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebRep.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:926 description:{@"invalid nil value for '%s'", "_webView"}];
  }

  if (!self->_ownsWebView)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THWWebRep didPresentExpanded]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebRep.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:927 description:@"we should own the web view after being expanded"];
  }

  [(THWWebRep *)self setExpanding:0];
  [(THWWebRep *)self deferredStageViewFrame];
  if (!CGRectIsNull(v15))
  {
    [(THWWebRep *)self deferredStageViewFrame];
    [(THWWebRep *)self p_updateStageViewFrame:?];
  }

  if (self->_suspendPosterRendering)
  {
    self->_suspendPosterRendering = 0;
    webViewPosterLayer = self->_webViewPosterLayer;
    v10 = [(THWWebRep *)self info];
    v11 = [v10 defaultImage];
    [(THWWebRep *)self p_updateLayerContents:webViewPosterLayer withImage:v11];
  }

  v12 = [(THWWebRep *)self bridgeController];
  [v12 tellBrowserWillEnterWidgetMode:3];

  v13 = [(THWWebRep *)self bridgeController];
  [v13 tellBrowserDidEnterWidgetMode:3];

  if (!self->_isWebContentLoaded)
  {

    [(THWWebRep *)self p_loadSourceURL];
  }
}

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v9 = [(THWWebRep *)self layout];
  [v9 webSizeInStageSize:{v7, v6}];
  v11 = v10;
  v13 = v12;

  v14 = [(THWWebRep *)self layout];
  [v14 webSizeInStageSize:{width, height}];
  v16 = v15;
  v18 = v17;

  v19 = v16 / v11;
  v20 = v18 / v13;
  return fminf(v19, v20);
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedDidRotateTransitionToSize:(CGSize)a3
{
  v3 = [(THWWebRep *)self layout:a3.width];
  [v3 invalidateFrame];
}

- (void)expandableExpandedPresentationDidEnd
{
  v3 = [(THWWebRep *)self pressableHandler];
  v4 = [v3 widgetInteractionDisabledOnPage];

  if (v4)
  {

    [(THWWebRep *)self p_pauseOnCanvas];
  }
}

- (void)p_togglePanelDescriptionExpanded
{
  [(THWWebRep *)self setPanelDescriptionExpanded:[(THWWebRep *)self panelDescriptionExpanded]^ 1];
  [(THWExpandedRepController *)self->_expandedRepController expandedRepControllerAnimatePanel:1 withCrossFadeContent:1 backgroundLayout:0 duration:0.25];
  expandedRepController = self->_expandedRepController;

  [(THWExpandedRepController *)expandedRepController expandedRepControllerInvalidateChildrenInPanel:1 invalidateWPAuto:1];
}

- (id)expandedPanel:(int)a3 primaryTargetForGesture:(id)a4
{
  if (a3 == 1)
  {
    v8[7] = v4;
    v9 = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1ACEF8;
    v8[3] = &unk_45AD60;
    v8[4] = self;
    v6 = [[THWTapGestureAction alloc] initWithAction:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)expandedMaxLineCountForTextLayout:(id)a3 inPanel:(int)a4 withDefault:(unsigned int)a5
{
  v8 = a3;
  if (a4 == 1 && !self->_panelDescriptionExpanded)
  {
    v9 = [(THWWebRep *)self layout];
    v10 = [v9 layoutController];

    v11 = "isCompactHeight";
    if (objc_opt_respondsToSelector())
    {
      v12 = 2;
    }

    else
    {
      v11 = "isCompactWidth";
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_9:

        goto LABEL_10;
      }

      v12 = 5;
    }

    if ([v10 performSelector:v11])
    {
      a5 = v12;
    }

    goto LABEL_9;
  }

LABEL_10:

  return a5;
}

- (BOOL)shouldAnimateTargetLayer:(id)a3
{
  if (self->_stageView)
  {
    return 0;
  }

  v4 = [(THWWebRep *)self freeTransformableHandler];
  v5 = [v4 ftc];
  v6 = [v5 passedThreshold];

  return v6;
}

- (BOOL)shouldFadeOutAnimationLayer:(id)a3
{
  if (self->_stageView)
  {
    return 0;
  }

  v4 = [(THWWebRep *)self freeTransformableHandler];
  v5 = [v4 ftc];
  v6 = [v5 passedThreshold];

  return v6;
}

- (id)animationLayer
{
  v3 = [(THWWebRep *)self freeTransformableHandler];
  v4 = [v3 ftc];
  v5 = [v4 isFreeTransformInProgress];

  if (!v5 || (-[THWWebRep freeTransformableHandler](self, "freeTransformableHandler"), v6 = objc_claimAutoreleasedReturnValue(), [v6 ftc], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "freeTransformLayer"), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, !v8))
  {
    stageView = self->_stageView;
    if (!stageView || ([(TSWPassThroughView *)stageView layer], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      canvasPosterLayer = self->_canvasPosterLayer;
      if (!canvasPosterLayer)
      {
        v12 = OBJC_IVAR___TSDRep_mCanvas;
        v13 = *&self->super.TSDContainerRep_opaque[OBJC_IVAR___TSDRep_mCanvas];
        v14 = [(THWWebRep *)self layout];
        [v14 stageFrame];
        [v13 convertUnscaledToBoundsRect:?];
        [*&self->super.TSDContainerRep_opaque[v12] contentsScale];
        TSDRoundedRectForScale();
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v23 = [(THWWebRep *)self canvasPosterLayer];
        [v23 setFrame:{v16, v18, v20, v22}];

        v24 = [(THWWebRep *)self canvasPosterLayer];
        v25 = [(THWWebRep *)self info];
        v26 = [v25 placeholderImage];
        [(THWWebRep *)self p_updateLayerContents:v24 withImage:v26];

        canvasPosterLayer = self->_canvasPosterLayer;
      }

      v10 = canvasPosterLayer;
    }

    v8 = v10;
  }

  return v8;
}

- (id)shadowAnimationLayer
{
  v3 = [(THWWebRep *)self freeTransformableHandler];
  v4 = [v3 ftc];
  v5 = [v4 isFreeTransformInProgress];

  if (v5)
  {
    v6 = [(THWWebRep *)self freeTransformableHandler];
    v7 = [v6 ftc];
    v8 = [v7 shadowLayer];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  v6 = [(THWWebRep *)self freeTransformableHandler];
  v7 = [v6 ftc];
  v8 = [v7 isFreeTransformInProgress];

  if (v8)
  {
    v10 = [(THWWebRep *)self freeTransformableHandler];
    v11 = [v10 ftc];
    v12 = v11;
    if (v11)
    {
      [v11 currentTransform];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    *&retstr->a = v13;
    *&retstr->c = v14;
    *&retstr->tx = v15;
  }

  return result;
}

- (void)reparentAnimationLayerIfBackedByView:(id)a3
{
  if (self->_stageView)
  {
    v4 = [(THWWebRep *)self subviewsController];
    stageView = self->_stageView;
    v5 = [NSArray arrayWithObjects:&stageView count:1];
    [v4 addSubviews:v5];
  }
}

- (id)targetLayer
{
  v5 = [(THWWebRep *)self freeTransformableHandler];
  v6 = [v5 ftc];
  v7 = [v6 isFreeTransformInProgress];
  if (v7)
  {
    v2 = [(THWWebRep *)self freeTransformableHandler];
    v3 = [v2 ftc];
    if (![v3 passedThreshold])
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  v8 = [(THWWebRep *)self animationLayer];
  if (v7)
  {
LABEL_6:
  }

  return v8;
}

- (CGRect)ftcTargetFrame
{
  v3 = [(THWWebRep *)self freeTransformableHandler];
  v4 = [v3 ftc];
  if ([v4 isFreeTransformInProgress])
  {
    v5 = [(THWWebRep *)self freeTransformableHandler];
    v6 = [v5 ftc];
    [v6 completionTargetRect];
    x = v7;
    y = v9;
    width = v11;
    height = v13;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)reparentTargetLayerIfBackedByView:(id)a3
{
  if (self->_stageView)
  {
    v4 = [(THWWebRep *)self subviewsController];
    stageView = self->_stageView;
    v5 = [NSArray arrayWithObjects:&stageView count:1];
    [v4 addSubviews:v5];
  }
}

- (BOOL)isExpanded
{
  v2 = [(THWWebRep *)self layout];
  v3 = [v2 isExpanded];

  return v3;
}

- (BOOL)meetsStageDimensionRequirementForExpanded
{
  v2 = [(THWWebRep *)self layout];
  [v2 stageFrame];
  v4 = v3;
  v6 = v5;

  return v6 < 660.0 || v4 < 960.0;
}

- (BOOL)isFreeTransformInProgress
{
  v2 = [(THWWebRep *)self freeTransformableHandler];
  v3 = [v2 ftc];
  v4 = [v3 isFreeTransformInProgress];

  return v4;
}

- (CGRect)rectForCompletion
{
  v2 = [(THWWebRep *)self layout];
  [v2 frameInParent];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)contentIsReady
{
  v3 = [(THWWebRep *)self info];
  v4 = [v3 exposurePolicy];

  if (v4 == 1)
  {
    v5 = dispatch_time(0, 100000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1AD918;
    block[3] = &unk_45AD60;
    block[4] = self;
    dispatch_after(v5, &_dispatch_main_q, block);
  }
}

- (THWAutoplayConfig)autoplayConfig
{
  v2 = [(THWWebRep *)self info];
  v3 = [v2 autoplayConfig];

  return v3;
}

- (BOOL)autoplayAllowed
{
  v2 = [(THWWebRep *)self pressableHandler];
  v3 = [v2 widgetInteractionAllowAutoplay];

  return v3;
}

- (void)autoplayStart
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_1ADA24;
  activity_block[3] = &unk_45AD60;
  activity_block[4] = self;
  _os_activity_initiate(&dword_0, "HTML Autoplay Start", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)autoplayStop
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_1ADAAC;
  activity_block[3] = &unk_45AD60;
  activity_block[4] = self;
  _os_activity_initiate(&dword_0, "HTML Autoplay Stop", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)autoplayPause
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_1ADB34;
  activity_block[3] = &unk_45AD60;
  activity_block[4] = self;
  _os_activity_initiate(&dword_0, "HTML Autoplay Pause", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)p_autoplayIfDesired
{
  v4 = [(THWWebRep *)self autoplayConfig];
  if ([v4 enabled])
  {
    v3 = [(THWWebRep *)self p_becameVisibleOnCanvas];

    if (v3)
    {

      [(THWWebRep *)self p_startAutoplay];
    }
  }

  else
  {
  }
}

- (void)p_startAutoplay
{
  v3 = [(THWWebRep *)self webView];

  if (v3)
  {

    [(THWWebRep *)self p_startAutoplayOnCanvas];
  }

  else
  {

    [(THWWebRep *)self setAutoplayRequested:1];
  }
}

- (void)p_pauseOnCanvas
{
  if (self->_ownsWebView && self->_isWebContentLoaded)
  {
    v3 = [(THWWebRep *)self bridgeController];
    [v3 tellBrowserToPauseAudioVisual];
  }
}

- (void)p_startAutoplayOnCanvas
{
  if (self->_ownsWebView)
  {
    v3 = [(THWWebRep *)self webView];

    if (!v3)
    {
      v4 = +[TSUAssertionHandler currentHandler];
      v5 = [NSString stringWithUTF8String:"[THWWebRep p_startAutoplayOnCanvas]"];
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebRep.m"];
      [v4 handleFailureInFunction:v5 file:v6 lineNumber:1406 description:{@"invalid nil value for '%s'", "self.webView"}];
    }

    v7 = [(THWWebRep *)self bridgeController];
    [v7 tellBrowserWillEnterWidgetMode:1];

    v8 = [(THWWebRep *)self bridgeController];
    [v8 tellBrowserDidEnterWidgetMode:1];

    if (!self->_isWebContentLoaded)
    {

      [(THWWebRep *)self p_loadSourceURL];
    }
  }
}

- (void)handleNotificationVantageDidChange:(id)a3
{
  if (self->_ownsWebView)
  {
    v5 = [a3 userInfo];
    v6 = [v5 objectForKey:@"THVantageChangeReason"];

    if (([v6 isEqualToString:@"THVantageChangeReasonScrolling"] & 1) == 0 && !objc_msgSend(v6, "isEqualToString:", @"THVantageChangeReasonWindowResize") || (-[THWWebRep isVisibleOnCanvas](self, "isVisibleOnCanvas") & 1) == 0)
    {
      [(THWWebRep *)self p_pauseOnCanvas];
    }
  }
}

- (void)p_loadSourceURL
{
  if (![(THWWebBridgeController *)self->_bridgeController injectedWidgetObject])
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[THWWebRep p_loadSourceURL]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebRep.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:1438 description:@"shouldn't load URL before wigdet object has been injected"];
  }

  v6 = [(THWWebRep *)self info];
  v7 = [v6 sourceURL];

  if (([v7 isFileURL] & 1) == 0)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[THWWebRep p_loadSourceURL]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebRep.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:1441 description:@"can't handle non-file URLs"];
  }

  if ([v7 isFileURL])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1AE0CC;
    v11[3] = &unk_45ADB0;
    v11[4] = self;
    v12 = v7;
    _os_activity_initiate(&dword_0, "HTML Widget Load URL", OS_ACTIVITY_FLAG_DEFAULT, v11);
  }
}

- (id)p_filteredOutURLSchemes
{
  v3 = [(THWWebRep *)self info];
  if ([v3 allowNetworkAccess])
  {
    v4 = [(THWWebRep *)self info];
    v5 = [v4 autoplayConfig];
    v6 = [v5 enabled];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [NSSet setWithObjects:@"ftp", @"http", @"https", 0];
LABEL_6:

  return v7;
}

- (void)p_exposeWebView
{
  if ([(THWWebRep *)self ownsWebView])
  {
    [(THWWebRep *)self setDeferExposeWebView:0];
    v3 = [(THWWebRep *)self webView];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1AE460;
    v4[3] = &unk_45AD60;
    v4[4] = self;
    [v3 showAnimated:1 duration:v4 completion:0.150000006];
  }

  else
  {

    [(THWWebRep *)self setDeferExposeWebView:1];
  }
}

- (void)p_play
{
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_1AE52C;
  activity_block[3] = &unk_45AD60;
  activity_block[4] = self;
  _os_activity_initiate(&dword_0, "Play", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)buttonControlWasPressed:(id)a3
{
  v4 = [(THWWebRep *)self pressableHandler];
  v5 = [v4 widgetInteractionDisabledOnPage];

  if (v5)
  {
    v6 = [(THWWebRep *)self pressableHandler];
    [v6 spoofGesture];
  }

  else
  {

    [(THWWebRep *)self p_play];
  }
}

- (void)buttonControl:(id)a3 didUpdateLayer:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v5 setContentsGravity:kCAGravityResizeAspectFill];
  v7 = [v6 canvas];

  [v7 viewScale];
  TSDMultiplySizeScalar();

  [v5 bounds];
  TSDShrinkSizeToFitInSize();
  v9 = v8;
  v11 = v10;
  [v5 bounds];
  v14 = THScaleNeededToFitSizeInSize(v12, v13, v9, v11);
  CATransform3DMakeScale(&v16, v14, v14, 1.0);
  v15 = v16;
  [v5 setTransform:&v15];
}

- (BOOL)p_pointIsInRedZone:(CGPoint)a3 onView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(THWWebRep *)self isExpanded])
  {
    v8 = [(THWWebRep *)self interactiveCanvasController];
    v9 = [v8 delegate];
    v10 = TSUProtocolCast();

    v11 = [v10 view];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    width = v16;
    height = v18;

    expandedRepController = self->_expandedRepController;
    if (expandedRepController)
    {
      v21 = [(THWExpandedRepController *)expandedRepController expandedRepControllerHasRoomForPanels];
      v22 = 75.0;
      if (!v21)
      {
        v22 = 0.0;
      }
    }

    else
    {
      v22 = 75.0;
    }

    v30 = [v10 view];
    [v7 convertPoint:v30 toView:{x, y}];
    x = v31;
    v23 = v32;

    goto LABEL_11;
  }

  v23 = y;
  objc_opt_class();
  v24 = [(THWWebRep *)self interactiveCanvasController];
  v25 = [v24 delegate];
  v10 = TSUDynamicCast();

  if (!v10)
  {
    v13 = CGRectZero.origin.x;
    v15 = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v36 = v15;
    v37 = height;
LABEL_11:
    v27 = width;
    v29 = v13;
    goto LABEL_12;
  }

  [v10 paginatedPageSize];
  v27 = floor(v26);
  height = floor(v28);
  width = v27 + -150.0;
  v37 = height + -75.0;
  v15 = 0.0;
  v13 = 75.0;
  v36 = 75.0;
  v29 = 0.0;
LABEL_12:

  v40.origin.x = v29;
  v40.origin.y = v15;
  v40.size.width = v27;
  v40.size.height = height;
  v38.x = x;
  v38.y = v23;
  v33 = CGRectContainsPoint(v40, v38);
  v41.origin.x = v13;
  v41.origin.y = v36;
  v41.size.height = v37;
  v41.size.width = width;
  v39.x = x;
  v39.y = v23;
  v34 = !CGRectContainsPoint(v41, v39);

  return v33 && v34;
}

- (BOOL)p_stageAlmostCoversPage
{
  if ([(THWWebRep *)self isExpanded])
  {
    return 0;
  }

  objc_opt_class();
  v4 = [(THWWebRep *)self interactiveCanvasController];
  v5 = [v4 delegate];
  v6 = TSUDynamicCast();

  if (v6)
  {
    [v6 paginatedPageSize];
    v8 = v7;
    v10 = v9;
    v11 = [(THWWebRep *)self layout];
    [v11 stageFrame];
    v13 = v12;
    v15 = v14;

    v3 = v15 > v10 + -75.0 && v13 > v8 + -150.0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)p_cachedLoadExternalContentApproval
{
  v3 = +[BEDocumentExternalLoadApprovalCache sharedInstance];
  v4 = [(THWWebRep *)self info];
  v5 = [v4 bookID];
  v6 = [v3 cachedApprovalForBookID:v5];

  return v6;
}

- (void)p_cacheLoadExternalContentApproval:(BOOL)a3
{
  v3 = a3;
  v7 = +[BEDocumentExternalLoadApprovalCache sharedInstance];
  v5 = [(THWWebRep *)self info];
  v6 = [v5 bookID];
  [v7 cachedApproval:v3 forBookID:v6];
}

- (CGRect)deferredStageViewFrame
{
  x = self->_deferredStageViewFrame.origin.x;
  y = self->_deferredStageViewFrame.origin.y;
  width = self->_deferredStageViewFrame.size.width;
  height = self->_deferredStageViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end