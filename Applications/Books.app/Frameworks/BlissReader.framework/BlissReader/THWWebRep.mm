@interface THWWebRep
+ (void)enumerateSubdomainsOfHost:(id)host usingBlock:(id)block;
- (BOOL)autoplayAllowed;
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)expandedHasContentForPanel:(int)panel;
- (BOOL)expandedHasRoomForPanelsWithHeight:(double)height inFrame:(CGRect)frame;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)isExpanded;
- (BOOL)isFreeTransformInProgress;
- (BOOL)meetsStageDimensionRequirementForExpanded;
- (BOOL)p_pointIsInRedZone:(CGPoint)zone onView:(id)view;
- (BOOL)p_stageAlmostCoversPage;
- (BOOL)shouldAnimateTargetLayer:(id)layer;
- (BOOL)shouldFadeOutAnimationLayer:(id)layer;
- (BOOL)shouldRecognizePressOnRep:(id)rep;
- (BOOL)wantsPressAction;
- (BOOL)wantsPressAnimation;
- (BOOL)webView:(id)view handleURL:(id)l;
- (BOOL)webView:(id)view shouldAcceptHitAtPoint:(CGPoint)point onView:(id)onView withEvent:(id)event;
- (BOOL)webView:(id)view shouldStartLoadWithURL:(id)l navigationType:(int)type deferredResponseHandler:(id)handler;
- (CALayer)canvasPosterLayer;
- (CALayer)webViewPosterLayer;
- (CGAffineTransform)freeTransform;
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize;
- (CGRect)deferredStageViewFrame;
- (CGRect)ftcTargetFrame;
- (CGRect)rectForCompletion;
- (PFDURLRequestScope)requestScope;
- (THAnimationController)animationController;
- (THWAutoplayConfig)autoplayConfig;
- (THWWebRep)initWithLayout:(id)layout canvas:(id)canvas;
- (TSWPassThroughView)stageView;
- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize;
- (id)animationLayer;
- (id)expandedChildInfosForPanel:(int)panel;
- (id)expandedPanel:(int)panel primaryTargetForGesture:(id)gesture;
- (id)p_cachedLoadExternalContentApproval;
- (id)p_filteredOutURLSchemes;
- (id)shadowAnimationLayer;
- (id)targetLayer;
- (id)webThreadWebView:(id)view resource:(id)resource willSendRequest:(id)request redirectResponse:(id)response fromDataSource:(id)source;
- (unsigned)expandedMaxLineCountForTextLayout:(id)layout inPanel:(int)panel withDefault:(unsigned int)default;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)addChildViewsToArray:(id)array;
- (void)autoplayPause;
- (void)autoplayStart;
- (void)autoplayStop;
- (void)buttonControl:(id)control didUpdateLayer:(id)layer;
- (void)buttonControlWasPressed:(id)pressed;
- (void)contentIsReady;
- (void)dealloc;
- (void)didAddChildView:(id)view;
- (void)didExitExpanded;
- (void)didPresentExpanded;
- (void)expandableExpandedPresentationDidEnd;
- (void)expandedDidPresentWithController:(id)controller;
- (void)expandedDidRotateTransitionToSize:(CGSize)size;
- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame;
- (void)expandedWillPresentWithController:(id)controller;
- (void)handleNotificationVantageDidChange:(id)change;
- (void)p_autoplayIfDesired;
- (void)p_cacheLoadExternalContentApproval:(BOOL)approval;
- (void)p_exposeWebView;
- (void)p_loadSourceURL;
- (void)p_pauseOnCanvas;
- (void)p_play;
- (void)p_startAutoplay;
- (void)p_startAutoplayOnCanvas;
- (void)p_togglePanelDescriptionExpanded;
- (void)p_updateLayerContents:(id)contents withImage:(id)image;
- (void)p_updateStageViewFrame:(CGRect)frame;
- (void)p_webView:(id)view shouldStartLoadWithURL:(id)l navigationType:(int)type syncResponseHandler:(id)handler asyncResponseHandler:(id)responseHandler;
- (void)reparentAnimationLayerIfBackedByView:(id)view;
- (void)reparentTargetLayerIfBackedByView:(id)view;
- (void)replaceContentsFromRep:(id)rep;
- (void)screenScaleDidChange;
- (void)viewScaleDidChange;
- (void)webViewDidFinishLoad:(id)load;
- (void)willBeRemoved;
- (void)willBeginHandlingGesture:(id)gesture;
- (void)willRemoveChildView:(id)view;
- (void)willReplaceContentsFromRep:(id)rep;
@end

@implementation THWWebRep

- (THWWebRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v20.receiver = self;
  v20.super_class = THWWebRep;
  v4 = [(THWWebRep *)&v20 initWithLayout:layout canvas:canvas];
  v5 = v4;
  if (v4)
  {
    v4->_ownsWebView = 1;
    objc_opt_class();
    interactiveCanvasController = [(THWWebRep *)v5 interactiveCanvasController];
    v7 = TSUDynamicCast();

    pressHandlerForPressableReps = [v7 pressHandlerForPressableReps];
    if (pressHandlerForPressableReps)
    {
      v9 = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:v5 pressHandler:pressHandlerForPressableReps];
      [(THWWebRep *)v5 setPressableHandler:v9];

      pressableHandler = [(THWWebRep *)v5 pressableHandler];
      [pressableHandler setEnabledOnlyIfWidgetInteractionDisabledOnPage:1];
    }

    v11 = [THWFreeTransformableRepGestureTargetHandler alloc];
    hostICC = [(THWWebRep *)v5 hostICC];
    widgetHost = [hostICC widgetHost];
    freeTransformRepHandler = [widgetHost freeTransformRepHandler];
    v15 = [(THWFreeTransformableRepGestureTargetHandler *)v11 initWithFreeTransformableRep:v5 handler:freeTransformRepHandler];
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

+ (void)enumerateSubdomainsOfHost:(id)host usingBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    hostCopy = host;
    v8 = [@"autoplay." stringByAppendingString:hostCopy];
    (*(block + 2))(blockCopy, v8);

    v9 = [@"manual." stringByAppendingString:hostCopy];

    (*(block + 2))(blockCopy, v9);
  }
}

- (PFDURLRequestScope)requestScope
{
  if (!self->_requestScope)
  {
    info = [(THWWebRep *)self info];

    if (info)
    {
      info2 = [(THWWebRep *)self info];
      drmContext = [info2 drmContext];
      bookBundleURL = [info2 bookBundleURL];
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = sub_1AA740;
      v20 = sub_1AA750;
      bookID = [info2 bookID];
      v22 = bookID;
      v8 = [NSArray arrayWithObjects:&v22 count:1];
      v21 = [v8 mutableCopy];

      v9 = objc_opt_class();
      bookID2 = [info2 bookID];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1AA758;
      v15[3] = &unk_45E860;
      v15[4] = &v16;
      [v9 enumerateSubdomainsOfHost:bookID2 usingBlock:v15];

      v11 = [PFDURLRequestScope requestScopeWithHosts:v17[5] bookRootURL:bookBundleURL context:drmContext];
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

- (void)willReplaceContentsFromRep:(id)rep
{
  repCopy = rep;
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
    bridgeController = [v14 bridgeController];
    [(THWWebRep *)self setBridgeController:bridgeController];

    bridgeController2 = [(THWWebRep *)self bridgeController];
    [bridgeController2 setJavascriptHandler:self];

    webView = [v14 webView];
    [(THWWebRep *)self setWebView:webView];

    layer = [(TSWPassThroughView *)self->_stageView layer];
    webViewPosterLayer = [(THWWebRep *)self webViewPosterLayer];
    [layer addSublayer:webViewPosterLayer];

    [(THWWebRep *)self setOwnsWebView:0];
    v5 = v14;
  }
}

- (void)replaceContentsFromRep:(id)rep
{
  repCopy = rep;
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
    stageView = [(THWWebRep *)self stageView];
    webView = [(THWWebRep *)self webView];
    [stageView addSubview:webView];

    v12 = OBJC_IVAR___TSDRep_mCanvas;
    v13 = *&self->super.TSDContainerRep_opaque[OBJC_IVAR___TSDRep_mCanvas];
    layout = [(THWWebRep *)self layout];
    [layout webFrameInRoot];
    [v13 convertUnscaledToBoundsRect:?];
    [*&self->super.TSDContainerRep_opaque[v12] contentsScale];
    TSDRoundedRectForScale();
    [(THWWebRep *)self p_updateStageViewFrame:?];

    [(THWPlatformWebViewProtocol *)self->_webView setWebViewDelegate:self];
    if (-[THWWebRep createdWebView](self, "createdWebView") && -[THWWebRep isExpanded](self, "isExpanded") || ![v43 isWebContentLoaded] || -[THWWebRep deferExposeWebView](self, "deferExposeWebView"))
    {
      webView2 = [(THWWebRep *)self webView];
      [webView2 setAlpha:0.0];

      webView3 = [(THWWebRep *)self webView];
      stageView2 = [(THWWebRep *)self stageView];
      [stageView2 bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      info = [(THWWebRep *)self info];
      [info idealWebSize];
      [webView3 setFrame:v19 naturalSize:{v21, v23, v25, v27, v28}];
    }

    else
    {
      webView4 = [(THWWebRep *)self webView];
      stageView3 = [(THWWebRep *)self stageView];
      [stageView3 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      info2 = [(THWWebRep *)self info];
      [info2 idealWebSize];
      [webView4 setFrame:v33 naturalSize:{v35, v37, v39, v41, v42}];

      [(CALayer *)self->_webViewPosterLayer removeFromSuperlayer];
    }

    isExpanded = [(THWWebRep *)self isExpanded];
    v6 = v43;
    if (!isExpanded)
    {
      interactiveCanvasController = [(THWWebRep *)self interactiveCanvasController];
      [interactiveCanvasController layoutInvalidated];

      v6 = v43;
    }
  }

  _objc_release_x1(isExpanded, v6);
}

- (void)viewScaleDidChange
{
  pressableHandler = [(THWWebRep *)self pressableHandler];
  widgetInteractionDisabledOnPage = [pressableHandler widgetInteractionDisabledOnPage];

  if (widgetInteractionDisabledOnPage)
  {

    [(THWWebRep *)self p_pauseOnCanvas];
  }
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  arrayCopy = array;
  if (!self->_stageView)
  {
    v34 = arrayCopy;
    info = [(THWWebRep *)self info];
    autoplayConfig = [info autoplayConfig];
    if (([autoplayConfig enabled] & 1) != 0 || -[THWWebRep isExpanded](self, "isExpanded"))
    {
    }

    else
    {
      playButtonPressed = self->_playButtonPressed;

      if (!playButtonPressed)
      {
        v22 = OBJC_IVAR___TSDRep_mCanvas;
        v23 = *&self->super.TSDContainerRep_opaque[OBJC_IVAR___TSDRep_mCanvas];
        layout = [(THWWebRep *)self layout];
        [layout stageFrame];
        [v23 convertUnscaledToBoundsRect:?];
        [*&self->super.TSDContainerRep_opaque[v22] contentsScale];
        TSDRoundedRectForScale();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        canvasPosterLayer = [(THWWebRep *)self canvasPosterLayer];
        [canvasPosterLayer setFrame:{v26, v28, v30, v32}];

        canvasPosterLayer2 = [(THWWebRep *)self canvasPosterLayer];
        goto LABEL_6;
      }
    }

    v7 = OBJC_IVAR___TSDRep_mCanvas;
    v8 = *&self->super.TSDContainerRep_opaque[OBJC_IVAR___TSDRep_mCanvas];
    layout2 = [(THWWebRep *)self layout];
    [layout2 webFrame];
    [v8 convertUnscaledToBoundsRect:?];
    [*&self->super.TSDContainerRep_opaque[v7] contentsScale];
    TSDRoundedRectForScale();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    webViewPosterLayer = [(THWWebRep *)self webViewPosterLayer];
    [webViewPosterLayer setFrame:{v11, v13, v15, v17}];

    canvasPosterLayer2 = [(THWWebRep *)self webViewPosterLayer];
LABEL_6:
    v20 = canvasPosterLayer2;
    [v34 addObject:canvasPosterLayer2];

    arrayCopy = v34;
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

    interactiveCanvasController = [(THWWebRep *)self interactiveCanvasController];
    [(CALayer *)self->_webViewPosterLayer setDelegate:interactiveCanvasController];

    [(CALayer *)self->_webViewPosterLayer setContentsGravity:kCAGravityResize];
    webViewPosterLayer = self->_webViewPosterLayer;
  }

  contents = [(CALayer *)webViewPosterLayer contents];
  if (!contents && self->_ownsWebView)
  {
    if (self->_suspendPosterRendering)
    {
      goto LABEL_8;
    }

    v8 = self->_webViewPosterLayer;
    contents = [(THWWebRep *)self info];
    defaultImage = [contents defaultImage];
    [(THWWebRep *)self p_updateLayerContents:v8 withImage:defaultImage];
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

    interactiveCanvasController = [(THWWebRep *)self interactiveCanvasController];
    [(CALayer *)self->_canvasPosterLayer setDelegate:interactiveCanvasController];

    [(CALayer *)self->_canvasPosterLayer setContentsGravity:kCAGravityResize];
    canvasPosterLayer = self->_canvasPosterLayer;
  }

  contents = [(CALayer *)canvasPosterLayer contents];
  if (!contents && self->_ownsWebView)
  {
    if (self->_suspendPosterRendering)
    {
      goto LABEL_8;
    }

    v8 = self->_canvasPosterLayer;
    contents = [(THWWebRep *)self info];
    placeholderImage = [contents placeholderImage];
    [(THWWebRep *)self p_updateLayerContents:v8 withImage:placeholderImage];
  }

LABEL_8:
  v10 = self->_canvasPosterLayer;

  return v10;
}

- (void)p_updateLayerContents:(id)contents withImage:(id)image
{
  if (contents)
  {
    imageCopy = image;
    contentsCopy = contents;
    canvas = [(THWWebRep *)self canvas];
    [canvas contentsScale];
    v9 = v8;

    v10 = [imageCopy CGImageForContentsScale:v9];
    [contentsCopy setContents:v10];
    [contentsCopy setContentsScale:v9];
  }
}

- (void)screenScaleDidChange
{
  v9.receiver = self;
  v9.super_class = THWWebRep;
  [(THWWebRep *)&v9 screenScaleDidChange];
  webViewPosterLayer = self->_webViewPosterLayer;
  info = [(THWWebRep *)self info];
  defaultImage = [info defaultImage];
  [(THWWebRep *)self p_updateLayerContents:webViewPosterLayer withImage:defaultImage];

  canvasPosterLayer = self->_canvasPosterLayer;
  info2 = [(THWWebRep *)self info];
  placeholderImage = [info2 placeholderImage];
  [(THWWebRep *)self p_updateLayerContents:canvasPosterLayer withImage:placeholderImage];
}

- (void)p_updateStageViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (![(THWWebRep *)self isExpanding])
  {
    stageView = [(THWWebRep *)self stageView];
    [stageView setFrame:{x, y, width, height}];

    stageView2 = [(THWWebRep *)self stageView];
    [stageView2 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    webViewPosterLayer = [(THWWebRep *)self webViewPosterLayer];
    [webViewPosterLayer setFrame:{v11, v13, v15, v17}];

    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  [(THWWebRep *)self setDeferredStageViewFrame:x, y, width, height];
}

- (void)addChildViewsToArray:(id)array
{
  arrayCopy = array;
  if (![(THWWebRep *)self isExpanded])
  {
    info = [(THWWebRep *)self info];
    autoplayConfig = [info autoplayConfig];
    if (([autoplayConfig enabled] & 1) != 0 || self->_playButtonPressed || self->_isWebContentLoaded)
    {
    }

    else
    {
      deferExposeWebView = [(THWWebRep *)self deferExposeWebView];

      if (!deferExposeWebView)
      {
        goto LABEL_10;
      }
    }
  }

  v7 = OBJC_IVAR___TSDRep_mCanvas;
  v8 = *&self->super.TSDContainerRep_opaque[OBJC_IVAR___TSDRep_mCanvas];
  layout = [(THWWebRep *)self layout];
  [layout webFrameInRoot];
  [v8 convertUnscaledToBoundsRect:?];
  [*&self->super.TSDContainerRep_opaque[v7] contentsScale];
  TSDRoundedRectForScale();
  [(THWWebRep *)self p_updateStageViewFrame:?];

  if (self->_ownsWebView)
  {
    webView = self->_webView;
    stageView = [(THWWebRep *)self stageView];
    [stageView bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    info2 = [(THWWebRep *)self info];
    [info2 idealWebSize];
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

  [arrayCopy addObject:self->_stageView];
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
    layer = [(TSWPassThroughView *)self->_stageView layer];
    webViewPosterLayer = [(THWWebRep *)self webViewPosterLayer];
    [layer addSublayer:webViewPosterLayer];

    if (!self->_webView)
    {
      [(THWWebRep *)self setCreatedWebView:1];
      requestScope = [(THWWebRep *)self requestScope];
      v8 = [THWWebView alloc];
      p_filteredOutURLSchemes = [(THWWebRep *)self p_filteredOutURLSchemes];
      v10 = [(THWWebView *)v8 initWithfilteredOutURLSchemes:p_filteredOutURLSchemes requestScope:requestScope];
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

- (void)didAddChildView:(id)view
{
  viewCopy = view;
  if (self->_ownsWebView)
  {
    [(THWPlatformWebViewProtocol *)self->_webView setWebViewDelegate:self];
  }

  if (self->_stageView == viewCopy && self->_playButtonPressed && self->_ownsWebView || ([(THWWebRep *)self webView], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, v6 = [(THWWebRep *)self autoplayRequested], v5, v6))
  {
    [(THWWebRep *)self p_startAutoplay];
    [(THWWebRep *)self setAutoplayRequested:0];
  }
}

- (void)willRemoveChildView:(id)view
{
  if (self->_ownsWebView)
  {
    webView = [(THWWebRep *)self webView];
    [webView setWebViewDelegate:0];
  }
}

- (BOOL)wantsPressAnimation
{
  pressableHandler = [(THWWebRep *)self pressableHandler];
  widgetInteractionDisabledOnPage = [pressableHandler widgetInteractionDisabledOnPage];

  return widgetInteractionDisabledOnPage;
}

- (BOOL)wantsPressAction
{
  if ([(THWWebRep *)self meetsStageDimensionRequirementForExpanded])
  {
    return [(THWWebRep *)self pressableAction]!= 0;
  }

  pressableHandler = [(THWWebRep *)self pressableHandler];
  if ([pressableHandler widgetInteractionDisabledOnPage])
  {
    v3 = [(THWWebRep *)self pressableAction]!= 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldRecognizePressOnRep:(id)rep
{
  layout = [(THWWebRep *)self layout];
  isExpanded = [layout isExpanded];

  return isExpanded ^ 1;
}

- (void)webViewDidFinishLoad:(id)load
{
  info = [(THWWebRep *)self info];
  exposurePolicy = [info exposurePolicy];

  if (!exposurePolicy)
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

- (id)webThreadWebView:(id)view resource:(id)resource willSendRequest:(id)request redirectResponse:(id)response fromDataSource:(id)source
{
  requestCopy = request;
  v9 = [requestCopy URL];
  scheme = [v9 scheme];
  v11 = [scheme isEqualToString:@"x-ibooks-th"];

  if ((v11 & 1) == 0)
  {
    info = [(THWWebRep *)self info];
    autoplayConfig = [info autoplayConfig];
    if ([autoplayConfig enabled])
    {
      info2 = [(THWWebRep *)self info];
      allowNetworkAccess = [info2 allowNetworkAccess];

      if (!allowNetworkAccess)
      {
        v16 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v16 = requestCopy;
LABEL_7:

  return v16;
}

- (void)p_webView:(id)view shouldStartLoadWithURL:(id)l navigationType:(int)type syncResponseHandler:(id)handler asyncResponseHandler:(id)responseHandler
{
  lCopy = l;
  handlerCopy = handler;
  responseHandlerCopy = responseHandler;
  v14 = responseHandlerCopy;
  if (handlerCopy)
  {
    responseHandlerCopy = handlerCopy;
  }

  v15 = objc_retainBlock(responseHandlerCopy);
  p_cachedLoadExternalContentApproval = [(THWWebRep *)self p_cachedLoadExternalContentApproval];
  scheme = [lCopy scheme];
  v18 = [@"x-ibooks-th" isEqualToString:scheme];

  absoluteString = [lCopy absoluteString];
  v20 = [absoluteString isEqualToString:@"about:blank"];

  if (v20)
  {
    goto LABEL_4;
  }

  bridgeController = [(THWWebRep *)self bridgeController];
  v22 = [bridgeController handleURL:lCopy];

  if (v22)
  {
    goto LABEL_20;
  }

  info = [(THWWebRep *)self info];
  autoplayConfig = [info autoplayConfig];
  if ([autoplayConfig enabled])
  {
    if (v18)
    {

      bOOLValue2 = &dword_0 + 1;
LABEL_17:
      v15[2](v15, bOOLValue2);
      goto LABEL_21;
    }

    bOOLValue = [p_cachedLoadExternalContentApproval BOOLValue];

    if (bOOLValue)
    {
LABEL_16:
      bOOLValue2 = [p_cachedLoadExternalContentApproval BOOLValue];
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ([lCopy isFileURL])
  {
LABEL_20:
    v15[2](v15, 0);
    goto LABEL_21;
  }

  if (type != 5)
  {
    if (type)
    {
      goto LABEL_21;
    }

    v26 = +[TSKApplicationDelegate sharedDelegate];
    validURLSchemes = [v26 validURLSchemes];
    scheme2 = [lCopy scheme];
    lowercaseString = [scheme2 lowercaseString];
    v30 = [validURLSchemes containsObject:lowercaseString];

    if (!v30)
    {
      goto LABEL_20;
    }

LABEL_19:
    v35 = +[TSKApplicationDelegate sharedDelegate];
    [v35 openURL:lCopy];

    goto LABEL_20;
  }

  scheme3 = [lCopy scheme];
  lowercaseString2 = [scheme3 lowercaseString];
  v34 = [@"mailto" isEqualToString:lowercaseString2];

  if (v34)
  {
    goto LABEL_19;
  }

  v36 = +[THApplicationDelegate sharedDelegate];
  urlSchemesNotRequiringUserPrompt = [v36 urlSchemesNotRequiringUserPrompt];
  scheme4 = [lCopy scheme];
  v39 = [urlSchemesNotRequiringUserPrompt containsObject:scheme4];

  if (v39)
  {
LABEL_4:
    v15[2](v15, &dword_0 + 1);
    goto LABEL_21;
  }

  if (p_cachedLoadExternalContentApproval)
  {
    goto LABEL_16;
  }

  layout = [(THWWebRep *)self layout];
  layoutController = [layout layoutController];
  canvas = [layoutController canvas];
  canvasController = [canvas canvasController];
  layerHost = [canvasController layerHost];
  viewController = [layerHost viewController];

  v44 = +[THApplicationDelegate sharedDelegate];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1ABFFC;
  v49[3] = &unk_45E888;
  v49[4] = self;
  v45 = v14;
  v50 = v45;
  v46 = [v44 shouldAuthorizeURLToLoad:lCopy loadContext:viewController completion:v49];

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, v46);
  }

  else if (v46)
  {
    (*(v45 + 2))(v45, 1);
  }

LABEL_21:
}

- (BOOL)webView:(id)view shouldStartLoadWithURL:(id)l navigationType:(int)type deferredResponseHandler:(id)handler
{
  v7 = *&type;
  viewCopy = view;
  lCopy = l;
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
  handlerCopy = handler;
  v15 = handlerCopy;
  [(THWWebRep *)self p_webView:viewCopy shouldStartLoadWithURL:lCopy navigationType:v7 syncResponseHandler:v16 asyncResponseHandler:v14];
  LOBYTE(v7) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v7;
}

- (BOOL)canHandleGesture:(id)gesture
{
  gestureCopy = gesture;
  pressableHandler = [(THWWebRep *)self pressableHandler];
  v6 = [pressableHandler canHandleGesture:gestureCopy];

  if (v6)
  {
    v7 = 1;
  }

  else if (self->_ownsWebView)
  {
    freeTransformableHandler = [(THWWebRep *)self freeTransformableHandler];
    v7 = [freeTransformableHandler canHandleGesture:gestureCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)handleGesture:(id)gesture
{
  gestureCopy = gesture;
  if (!self->_ownsWebView)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THWWebRep handleGesture:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebRep.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:752 description:@"shouldn't be handling gestures when we don't own the webView"];
  }

  pressableHandler = [(THWWebRep *)self pressableHandler];
  v9 = [pressableHandler handleGesture:gestureCopy];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    freeTransformableHandler = [(THWWebRep *)self freeTransformableHandler];
    v10 = [freeTransformableHandler handleGesture:gestureCopy];
  }

  return v10;
}

- (void)willBeginHandlingGesture:(id)gesture
{
  gestureCopy = gesture;
  gestureKind = [gestureCopy gestureKind];
  v5 = TSDFreeTransform;

  if (gestureKind == v5)
  {
    freeTransformableHandler = [(THWWebRep *)self freeTransformableHandler];
    [freeTransformableHandler willBeginHandlingGesture:gestureCopy];
  }
}

- (BOOL)webView:(id)view handleURL:(id)l
{
  lCopy = l;
  viewCopy = view;
  webView = [(THWWebRep *)self webView];

  if (webView == viewCopy)
  {
    scheme = [lCopy scheme];
    lowercaseString = [scheme lowercaseString];

    if (![lowercaseString isEqualToString:@"ibooks"] || (objc_msgSend(lCopy, "host"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = +[TSKApplicationDelegate sharedDelegate];
      [v13 openURL:lCopy];
      v9 = 0;
LABEL_6:

      goto LABEL_7;
    }

    if ([(THWWebRep *)self isExpanded])
    {
      interactiveCanvasController = [(THWWebRep *)self interactiveCanvasController];
      delegate = [interactiveCanvasController delegate];
      v13 = TSUProtocolCast();

      v9 = v13 != 0;
      if (!v13)
      {
        goto LABEL_6;
      }

      [v13 handleHyperlinkWithURL:lCopy];
    }

    else
    {
      objc_opt_class();
      interactiveCanvasController2 = [(THWWebRep *)self interactiveCanvasController];
      v13 = TSUDynamicCast();

      [v13 performSelectorOnMainThread:"handleHyperlinkWithURL:" withObject:lCopy waitUntilDone:0];
    }

    v9 = 1;
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (BOOL)webView:(id)view shouldAcceptHitAtPoint:(CGPoint)point onView:(id)onView withEvent:(id)event
{
  y = point.y;
  x = point.x;
  onViewCopy = onView;
  if ([(THWWebRep *)self stageAlmostCoversPage])
  {
    v10 = ![(THWWebRep *)self p_pointIsInRedZone:onViewCopy onView:x, y];
  }

  else
  {
    v10 = 1;
  }

  pressableHandler = [(THWWebRep *)self pressableHandler];
  widgetInteractionDisabledOnPage = [pressableHandler widgetInteractionDisabledOnPage];

  v13 = (widgetInteractionDisabledOnPage ^ 1) & v10;
  if ([(THWWebRep *)self isExpanded])
  {
    v13 &= ![(THWWebRep *)self p_pointIsInRedZone:onViewCopy onView:x, y];
  }

  return v13;
}

- (void)expandedWillPresentWithController:(id)controller
{
  controllerCopy = controller;
  [(THWWebRep *)self setExpandedRepController:controllerCopy];
  objc_opt_class();
  expandedRepSourceRep = [controllerCopy expandedRepSourceRep];
  v8 = TSUDynamicCast();

  expandedRepSourceRep2 = [controllerCopy expandedRepSourceRep];

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

- (BOOL)expandedHasContentForPanel:(int)panel
{
  v3 = *&panel;
  info = [(THWWebRep *)self info];
  adornmentInfo = [info adornmentInfo];
  LOBYTE(v3) = [adornmentInfo panelContentProviderHasContentForPanel:v3];

  return v3;
}

- (id)expandedChildInfosForPanel:(int)panel
{
  v3 = *&panel;
  info = [(THWWebRep *)self info];
  adornmentInfo = [info adornmentInfo];
  v6 = [adornmentInfo panelContentProviderChildInfosForPanel:v3];

  return v6;
}

- (BOOL)expandedHasRoomForPanelsWithHeight:(double)height inFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layout = [(THWWebRep *)self layout];
  [layout webSizeInStageSize:{width, height}];
  v11 = v10;

  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  return CGRectGetHeight(v13) - v11 >= height;
}

- (void)expandedDidPresentWithController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy expandableRepContainsHTMLContent:self];
  }
}

- (void)expandedWidgetLayoutFrameDidChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame
{
  v4 = [(THWWebRep *)self layout:frame.origin.x];
  [v4 invalidateFrame];
}

- (void)didExitExpanded
{
  bridgeController = [(THWWebRep *)self bridgeController];
  [bridgeController tellBrowserToPauseAudioVisual];
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
    info = [(THWWebRep *)self info];
    defaultImage = [info defaultImage];
    [(THWWebRep *)self p_updateLayerContents:webViewPosterLayer withImage:defaultImage];
  }

  bridgeController = [(THWWebRep *)self bridgeController];
  [bridgeController tellBrowserWillEnterWidgetMode:3];

  bridgeController2 = [(THWWebRep *)self bridgeController];
  [bridgeController2 tellBrowserDidEnterWidgetMode:3];

  if (!self->_isWebContentLoaded)
  {

    [(THWWebRep *)self p_loadSourceURL];
  }
}

- (double)scaleForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize
{
  height = toSize.height;
  width = toSize.width;
  v6 = size.height;
  v7 = size.width;
  layout = [(THWWebRep *)self layout];
  [layout webSizeInStageSize:{v7, v6}];
  v11 = v10;
  v13 = v12;

  layout2 = [(THWWebRep *)self layout];
  [layout2 webSizeInStageSize:{width, height}];
  v16 = v15;
  v18 = v17;

  v19 = v16 / v11;
  v20 = v18 / v13;
  return fminf(v19, v20);
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedDidRotateTransitionToSize:(CGSize)size
{
  v3 = [(THWWebRep *)self layout:size.width];
  [v3 invalidateFrame];
}

- (void)expandableExpandedPresentationDidEnd
{
  pressableHandler = [(THWWebRep *)self pressableHandler];
  widgetInteractionDisabledOnPage = [pressableHandler widgetInteractionDisabledOnPage];

  if (widgetInteractionDisabledOnPage)
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

- (id)expandedPanel:(int)panel primaryTargetForGesture:(id)gesture
{
  if (panel == 1)
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

- (unsigned)expandedMaxLineCountForTextLayout:(id)layout inPanel:(int)panel withDefault:(unsigned int)default
{
  layoutCopy = layout;
  if (panel == 1 && !self->_panelDescriptionExpanded)
  {
    layout = [(THWWebRep *)self layout];
    layoutController = [layout layoutController];

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

    if ([layoutController performSelector:v11])
    {
      default = v12;
    }

    goto LABEL_9;
  }

LABEL_10:

  return default;
}

- (BOOL)shouldAnimateTargetLayer:(id)layer
{
  if (self->_stageView)
  {
    return 0;
  }

  freeTransformableHandler = [(THWWebRep *)self freeTransformableHandler];
  v5 = [freeTransformableHandler ftc];
  passedThreshold = [v5 passedThreshold];

  return passedThreshold;
}

- (BOOL)shouldFadeOutAnimationLayer:(id)layer
{
  if (self->_stageView)
  {
    return 0;
  }

  freeTransformableHandler = [(THWWebRep *)self freeTransformableHandler];
  v5 = [freeTransformableHandler ftc];
  passedThreshold = [v5 passedThreshold];

  return passedThreshold;
}

- (id)animationLayer
{
  freeTransformableHandler = [(THWWebRep *)self freeTransformableHandler];
  v4 = [freeTransformableHandler ftc];
  isFreeTransformInProgress = [v4 isFreeTransformInProgress];

  if (!isFreeTransformInProgress || (-[THWWebRep freeTransformableHandler](self, "freeTransformableHandler"), v6 = objc_claimAutoreleasedReturnValue(), [v6 ftc], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "freeTransformLayer"), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, !v8))
  {
    stageView = self->_stageView;
    if (!stageView || ([(TSWPassThroughView *)stageView layer], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      canvasPosterLayer = self->_canvasPosterLayer;
      if (!canvasPosterLayer)
      {
        v12 = OBJC_IVAR___TSDRep_mCanvas;
        v13 = *&self->super.TSDContainerRep_opaque[OBJC_IVAR___TSDRep_mCanvas];
        layout = [(THWWebRep *)self layout];
        [layout stageFrame];
        [v13 convertUnscaledToBoundsRect:?];
        [*&self->super.TSDContainerRep_opaque[v12] contentsScale];
        TSDRoundedRectForScale();
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        canvasPosterLayer = [(THWWebRep *)self canvasPosterLayer];
        [canvasPosterLayer setFrame:{v16, v18, v20, v22}];

        canvasPosterLayer2 = [(THWWebRep *)self canvasPosterLayer];
        info = [(THWWebRep *)self info];
        placeholderImage = [info placeholderImage];
        [(THWWebRep *)self p_updateLayerContents:canvasPosterLayer2 withImage:placeholderImage];

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
  freeTransformableHandler = [(THWWebRep *)self freeTransformableHandler];
  v4 = [freeTransformableHandler ftc];
  isFreeTransformInProgress = [v4 isFreeTransformInProgress];

  if (isFreeTransformInProgress)
  {
    freeTransformableHandler2 = [(THWWebRep *)self freeTransformableHandler];
    v7 = [freeTransformableHandler2 ftc];
    shadowLayer = [v7 shadowLayer];
  }

  else
  {
    shadowLayer = 0;
  }

  return shadowLayer;
}

- (CGAffineTransform)freeTransform
{
  v5 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v5;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  freeTransformableHandler = [(THWWebRep *)self freeTransformableHandler];
  v7 = [freeTransformableHandler ftc];
  isFreeTransformInProgress = [v7 isFreeTransformInProgress];

  if (isFreeTransformInProgress)
  {
    freeTransformableHandler2 = [(THWWebRep *)self freeTransformableHandler];
    v11 = [freeTransformableHandler2 ftc];
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

- (void)reparentAnimationLayerIfBackedByView:(id)view
{
  if (self->_stageView)
  {
    subviewsController = [(THWWebRep *)self subviewsController];
    stageView = self->_stageView;
    v5 = [NSArray arrayWithObjects:&stageView count:1];
    [subviewsController addSubviews:v5];
  }
}

- (id)targetLayer
{
  freeTransformableHandler = [(THWWebRep *)self freeTransformableHandler];
  v6 = [freeTransformableHandler ftc];
  isFreeTransformInProgress = [v6 isFreeTransformInProgress];
  if (isFreeTransformInProgress)
  {
    freeTransformableHandler2 = [(THWWebRep *)self freeTransformableHandler];
    v3 = [freeTransformableHandler2 ftc];
    if (![v3 passedThreshold])
    {
      animationLayer = 0;
      goto LABEL_6;
    }
  }

  animationLayer = [(THWWebRep *)self animationLayer];
  if (isFreeTransformInProgress)
  {
LABEL_6:
  }

  return animationLayer;
}

- (CGRect)ftcTargetFrame
{
  freeTransformableHandler = [(THWWebRep *)self freeTransformableHandler];
  v4 = [freeTransformableHandler ftc];
  if ([v4 isFreeTransformInProgress])
  {
    freeTransformableHandler2 = [(THWWebRep *)self freeTransformableHandler];
    v6 = [freeTransformableHandler2 ftc];
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

- (void)reparentTargetLayerIfBackedByView:(id)view
{
  if (self->_stageView)
  {
    subviewsController = [(THWWebRep *)self subviewsController];
    stageView = self->_stageView;
    v5 = [NSArray arrayWithObjects:&stageView count:1];
    [subviewsController addSubviews:v5];
  }
}

- (BOOL)isExpanded
{
  layout = [(THWWebRep *)self layout];
  isExpanded = [layout isExpanded];

  return isExpanded;
}

- (BOOL)meetsStageDimensionRequirementForExpanded
{
  layout = [(THWWebRep *)self layout];
  [layout stageFrame];
  v4 = v3;
  v6 = v5;

  return v6 < 660.0 || v4 < 960.0;
}

- (BOOL)isFreeTransformInProgress
{
  freeTransformableHandler = [(THWWebRep *)self freeTransformableHandler];
  v3 = [freeTransformableHandler ftc];
  isFreeTransformInProgress = [v3 isFreeTransformInProgress];

  return isFreeTransformInProgress;
}

- (CGRect)rectForCompletion
{
  layout = [(THWWebRep *)self layout];
  [layout frameInParent];
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
  info = [(THWWebRep *)self info];
  exposurePolicy = [info exposurePolicy];

  if (exposurePolicy == 1)
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
  info = [(THWWebRep *)self info];
  autoplayConfig = [info autoplayConfig];

  return autoplayConfig;
}

- (BOOL)autoplayAllowed
{
  pressableHandler = [(THWWebRep *)self pressableHandler];
  widgetInteractionAllowAutoplay = [pressableHandler widgetInteractionAllowAutoplay];

  return widgetInteractionAllowAutoplay;
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
  autoplayConfig = [(THWWebRep *)self autoplayConfig];
  if ([autoplayConfig enabled])
  {
    p_becameVisibleOnCanvas = [(THWWebRep *)self p_becameVisibleOnCanvas];

    if (p_becameVisibleOnCanvas)
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
  webView = [(THWWebRep *)self webView];

  if (webView)
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
    bridgeController = [(THWWebRep *)self bridgeController];
    [bridgeController tellBrowserToPauseAudioVisual];
  }
}

- (void)p_startAutoplayOnCanvas
{
  if (self->_ownsWebView)
  {
    webView = [(THWWebRep *)self webView];

    if (!webView)
    {
      v4 = +[TSUAssertionHandler currentHandler];
      v5 = [NSString stringWithUTF8String:"[THWWebRep p_startAutoplayOnCanvas]"];
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebRep.m"];
      [v4 handleFailureInFunction:v5 file:v6 lineNumber:1406 description:{@"invalid nil value for '%s'", "self.webView"}];
    }

    bridgeController = [(THWWebRep *)self bridgeController];
    [bridgeController tellBrowserWillEnterWidgetMode:1];

    bridgeController2 = [(THWWebRep *)self bridgeController];
    [bridgeController2 tellBrowserDidEnterWidgetMode:1];

    if (!self->_isWebContentLoaded)
    {

      [(THWWebRep *)self p_loadSourceURL];
    }
  }
}

- (void)handleNotificationVantageDidChange:(id)change
{
  if (self->_ownsWebView)
  {
    userInfo = [change userInfo];
    v6 = [userInfo objectForKey:@"THVantageChangeReason"];

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

  info = [(THWWebRep *)self info];
  sourceURL = [info sourceURL];

  if (([sourceURL isFileURL] & 1) == 0)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[THWWebRep p_loadSourceURL]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebRep.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:1441 description:@"can't handle non-file URLs"];
  }

  if ([sourceURL isFileURL])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1AE0CC;
    v11[3] = &unk_45ADB0;
    v11[4] = self;
    v12 = sourceURL;
    _os_activity_initiate(&dword_0, "HTML Widget Load URL", OS_ACTIVITY_FLAG_DEFAULT, v11);
  }
}

- (id)p_filteredOutURLSchemes
{
  info = [(THWWebRep *)self info];
  if ([info allowNetworkAccess])
  {
    info2 = [(THWWebRep *)self info];
    autoplayConfig = [info2 autoplayConfig];
    enabled = [autoplayConfig enabled];

    if (!enabled)
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
    webView = [(THWWebRep *)self webView];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1AE460;
    v4[3] = &unk_45AD60;
    v4[4] = self;
    [webView showAnimated:1 duration:v4 completion:0.150000006];
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

- (void)buttonControlWasPressed:(id)pressed
{
  pressableHandler = [(THWWebRep *)self pressableHandler];
  widgetInteractionDisabledOnPage = [pressableHandler widgetInteractionDisabledOnPage];

  if (widgetInteractionDisabledOnPage)
  {
    pressableHandler2 = [(THWWebRep *)self pressableHandler];
    [pressableHandler2 spoofGesture];
  }

  else
  {

    [(THWWebRep *)self p_play];
  }
}

- (void)buttonControl:(id)control didUpdateLayer:(id)layer
{
  layerCopy = layer;
  controlCopy = control;
  [layerCopy setContentsGravity:kCAGravityResizeAspectFill];
  canvas = [controlCopy canvas];

  [canvas viewScale];
  TSDMultiplySizeScalar();

  [layerCopy bounds];
  TSDShrinkSizeToFitInSize();
  v9 = v8;
  v11 = v10;
  [layerCopy bounds];
  v14 = THScaleNeededToFitSizeInSize(v12, v13, v9, v11);
  CATransform3DMakeScale(&v16, v14, v14, 1.0);
  v15 = v16;
  [layerCopy setTransform:&v15];
}

- (BOOL)p_pointIsInRedZone:(CGPoint)zone onView:(id)view
{
  y = zone.y;
  x = zone.x;
  viewCopy = view;
  if ([(THWWebRep *)self isExpanded])
  {
    interactiveCanvasController = [(THWWebRep *)self interactiveCanvasController];
    delegate = [interactiveCanvasController delegate];
    v10 = TSUProtocolCast();

    view = [v10 view];
    [view bounds];
    v13 = v12;
    v15 = v14;
    width = v16;
    height = v18;

    expandedRepController = self->_expandedRepController;
    if (expandedRepController)
    {
      expandedRepControllerHasRoomForPanels = [(THWExpandedRepController *)expandedRepController expandedRepControllerHasRoomForPanels];
      v22 = 75.0;
      if (!expandedRepControllerHasRoomForPanels)
      {
        v22 = 0.0;
      }
    }

    else
    {
      v22 = 75.0;
    }

    view2 = [v10 view];
    [viewCopy convertPoint:view2 toView:{x, y}];
    x = v31;
    v23 = v32;

    goto LABEL_11;
  }

  v23 = y;
  objc_opt_class();
  interactiveCanvasController2 = [(THWWebRep *)self interactiveCanvasController];
  delegate2 = [interactiveCanvasController2 delegate];
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
  interactiveCanvasController = [(THWWebRep *)self interactiveCanvasController];
  delegate = [interactiveCanvasController delegate];
  v6 = TSUDynamicCast();

  if (v6)
  {
    [v6 paginatedPageSize];
    v8 = v7;
    v10 = v9;
    layout = [(THWWebRep *)self layout];
    [layout stageFrame];
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
  info = [(THWWebRep *)self info];
  bookID = [info bookID];
  v6 = [v3 cachedApprovalForBookID:bookID];

  return v6;
}

- (void)p_cacheLoadExternalContentApproval:(BOOL)approval
{
  approvalCopy = approval;
  v7 = +[BEDocumentExternalLoadApprovalCache sharedInstance];
  info = [(THWWebRep *)self info];
  bookID = [info bookID];
  [v7 cachedApproval:approvalCopy forBookID:bookID];
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