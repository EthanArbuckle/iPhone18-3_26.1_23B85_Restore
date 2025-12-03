@interface QLWKWebItemViewController
+ (BOOL)_shouldDisableJavaScriptForContentType:(id)type;
- (BOOL)canPinchToDismiss;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer;
- (CGSize)scrubView:(id)view pageSizeAtIndex:(unint64_t)index;
- (id)_renderer;
- (id)_thumbnailAtIndex:(unint64_t)index;
- (id)scrubView;
- (unint64_t)currentPageNumber;
- (void)_addThumbnailToCache:(id)cache atIndex:(unint64_t)index;
- (void)_hideScrubberIfNeeded:(BOOL)needed;
- (void)_prepareThumbnailView;
- (void)_registerRemoteProxy;
- (void)_scrollToPage:(int64_t)page;
- (void)_showScrubberIfNeeded:(BOOL)needed reloadThumbnails:(BOOL)thumbnails;
- (void)_updateConstraintConstants:(BOOL)constants;
- (void)_webViewDidRequestPasswordForQuickLookDocument:(id)document;
- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dealloc;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)loadView;
- (void)numberOfPagesWithSize:(CGSize)size completionHandler:(id)handler;
- (void)pdfDataForPageAtIndex:(int64_t)index withCompletionHandler:(id)handler;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrubView:(id)view thumbnailForPage:(int64_t)page size:(CGSize)size withCompletionBlock:(id)block;
- (void)transitionDidStart:(BOOL)start;
- (void)transitionWillFinish:(BOOL)finish didComplete:(BOOL)complete;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view startURLSchemeTask:(id)task;
- (void)webView:(id)view stopURLSchemeTask:(id)task;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
@end

@implementation QLWKWebItemViewController

- (void)dealloc
{
  generatedDocument = [(QLWKWebItemViewController *)self generatedDocument];

  if (generatedDocument)
  {
    v4 = MEMORY[0x277D43EC0];
    generatedDocument2 = [(QLWKWebItemViewController *)self generatedDocument];
    [v4 unregisterPreview:generatedDocument2];
  }

  v6.receiver = self;
  v6.super_class = QLWKWebItemViewController;
  [(QLWKWebItemViewController *)&v6 dealloc];
}

- (void)loadView
{
  v53[1] = *MEMORY[0x277D85DE8];
  if (!self->_webView)
  {
    v3 = objc_opt_new();
    [(QLWKWebItemViewController *)self setView:v3];

    v49 = QLFrameworkBundle();
    v4 = [v49 URLForResource:@"QLWebKitBundle" withExtension:@"wkbundle" subdirectory:@"PlugIns" localization:0];
    v5 = objc_alloc_init(MEMORY[0x277CE3890]);
    v48 = v4;
    [v5 setInjectedBundleURL:v4];
    [v5 setJITEnabled:0];
    v6 = [objc_alloc(MEMORY[0x277CE3820]) _initWithConfiguration:v5];
    previewContentType = self->_previewContentType;
    v52 = @"contentType";
    v53[0] = previewContentType;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    [v6 _setObjectsForBundleParametersWithDictionary:v8];

    v9 = objc_alloc(MEMORY[0x277CE3858]);
    presentingDelegate = [(QLItemViewController *)self presentingDelegate];
    hostApplicationBundleIdentifier = [presentingDelegate hostApplicationBundleIdentifier];
    v12 = [v9 ql_initWithForegroundPriorityAndSourceBundleIdentifier:hostApplicationBundleIdentifier];

    [v12 setProcessPool:v6];
    v13 = [[QLWKURLSchemeHandlerProxy alloc] initWithHandler:self];
    protocolScheme = [MEMORY[0x277D43ED8] protocolScheme];
    [v12 setURLSchemeHandler:v13 forURLScheme:protocolScheme];

    v15 = [[QLWKURLSchemeHandlerProxy alloc] initWithHandler:self];
    protocolScheme2 = [MEMORY[0x277D43EB8] protocolScheme];
    [v12 setURLSchemeHandler:v15 forURLScheme:protocolScheme2];

    if ([QLWKWebItemViewController _shouldDisableJavaScriptForContentType:self->_previewContentType])
    {
      defaultWebpagePreferences = [v12 defaultWebpagePreferences];
      [defaultWebpagePreferences setAllowsContentJavaScript:0];

      v18 = [MEMORY[0x277CBEB98] set];
      [v12 _setAllowedNetworkHosts:v18];
    }

    v19 = objc_alloc(MEMORY[0x277CE3850]);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v21 = [v19 initWithFrame:v12 configuration:?];
    webView = self->_webView;
    self->_webView = v21;

    [(WKWebView *)self->_webView setNavigationDelegate:self];
    scrollView = [(WKWebView *)self->_webView scrollView];
    [scrollView setDelegate:self];

    [(WKWebView *)self->_webView setAccessibilityIdentifier:@"QLWKWebViewControllerWkWebViewAccessibilityIdentifier"];
    [(WKWebView *)self->_webView setAllowsLinkPreview:0];
    [(QLWKWebItemViewController *)self _registerRemoteProxy];
    view = [(QLWKWebItemViewController *)self view];
    [view addSubview:self->_webView];

    scrollView2 = [(QLWKWebItemViewController *)self scrollView];
    [scrollView2 setContentInsetAdjustmentBehavior:2];

    [(WKWebView *)self->_webView setTranslatesAutoresizingMaskIntoConstraints:0];
    leftAnchor = [(WKWebView *)self->_webView leftAnchor];
    view2 = [(QLWKWebItemViewController *)self view];
    leftAnchor2 = [view2 leftAnchor];
    appearance = [(QLItemViewController *)self appearance];
    [appearance peripheryInsets];
    v31 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v30];
    ql_activatedConstraint = [v31 ql_activatedConstraint];
    leftConstraint = self->_leftConstraint;
    self->_leftConstraint = ql_activatedConstraint;

    view3 = [(QLWKWebItemViewController *)self view];
    rightAnchor = [view3 rightAnchor];
    rightAnchor2 = [(WKWebView *)self->_webView rightAnchor];
    appearance2 = [(QLItemViewController *)self appearance];
    [appearance2 peripheryInsets];
    v39 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v38];
    ql_activatedConstraint2 = [v39 ql_activatedConstraint];
    rightConstraint = self->_rightConstraint;
    self->_rightConstraint = ql_activatedConstraint2;

    view4 = [(QLWKWebItemViewController *)self view];
    v43 = MEMORY[0x277CCAAD0];
    v44 = self->_webView;
    v50 = @"webView";
    v51 = v44;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v46 = [v43 constraintsWithVisualFormat:@"V:|[webView]|" options:0 metrics:0 views:v45];
    [view4 addConstraints:v46];
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (id)scrubView
{
  scrubView = self->_scrubView;
  if (!scrubView)
  {
    v4 = objc_alloc_init(QLScrubView);
    v5 = self->_scrubView;
    self->_scrubView = v4;

    [(QLScrubView *)self->_scrubView setDataSource:self];
    [(QLScrubView *)self->_scrubView setDelegate:self];
    [(QLScrubView *)self->_scrubView setHidden:1];
    appearance = [(QLItemViewController *)self appearance];
    [appearance topInset];
    [(QLScrubView *)self->_scrubView setTopOffset:?];

    [(QLScrubView *)self->_scrubView reloadThumbnails];
    scrubView = self->_scrubView;
  }

  return scrubView;
}

- (void)_registerRemoteProxy
{
  _remoteObjectRegistry = [(WKWebView *)self->_webView _remoteObjectRegistry];
  v3 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_284DCECB8];
  v4 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v3];
  thumbnailGenerator = self->_thumbnailGenerator;
  self->_thumbnailGenerator = v4;

  v6 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_284DCED18];
  v7 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v6];
  paginator = self->_paginator;
  self->_paginator = v7;
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  handlerCopy = handler;
  contentType = [context contentType];
  previewContentType = self->_previewContentType;
  self->_previewContentType = contentType;

  v11 = _Block_copy(handlerCopy);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v11;

  [(QLWKWebItemViewController *)self loadViewIfNeeded];
  v13 = objc_opt_new();
  operationQueue = self->_operationQueue;
  self->_operationQueue = v13;

  [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
  v15 = objc_opt_new();
  indexToThumbnailsCache = self->_indexToThumbnailsCache;
  self->_indexToThumbnailsCache = v15;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    webView = [(QLWKWebItemViewController *)self webView];
    v18 = [webView loadFileURL:contentsCopy allowingReadAccessToURL:contentsCopy];
  }

  else
  {
    v19 = MEMORY[0x277D43EC0];
    webView = contentsCopy;
    [v19 registerPreview:webView];
    webView2 = [(QLWKWebItemViewController *)self webView];
    previewRequest = [webView previewRequest];
    v22 = [webView2 loadRequest:previewRequest];

    [(QLWKWebItemViewController *)self setGeneratedDocument:webView];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  view = [(QLWKWebItemViewController *)self view];
  [view frame];
  v10 = v9 != height;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__QLWKWebItemViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_278B579B8;
  v13[4] = self;
  v14 = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__QLWKWebItemViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v12[3] = &unk_278B57208;
  v12[4] = self;
  [coordinatorCopy animateAlongsideTransition:v13 completion:v12];
  v11.receiver = self;
  v11.super_class = QLWKWebItemViewController;
  [(QLWKWebItemViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

void __80__QLWKWebItemViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[142];
  v3 = v1[143];
  v5 = [v1 webView];
  v4 = [v5 scrollView];
  [v4 setContentOffset:{v2, v3}];
}

- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer
{
  touchCopy = touch;
  v22.receiver = self;
  v22.super_class = QLWKWebItemViewController;
  v7 = [(QLItemViewController *)&v22 shouldAcceptTouch:touchCopy ofGestureRecognizer:recognizer];
  v8 = MEMORY[0x277D43F90];
  context = [(QLItemViewController *)self context];
  contentType = [context contentType];
  LODWORD(v8) = [v8 isSpreadSheetDocumentType:contentType];

  if (v8)
  {
    [touchCopy locationInView:self->_webView];
    v12 = v11;
    appearance = [(QLItemViewController *)self appearance];
    [appearance topInset];
    v15 = v12 - v14 >= 55.0;

    if ((v15 & v7 & 1) == 0)
    {
LABEL_3:
      v16 = 0;
      goto LABEL_11;
    }
  }

  else if (!v7)
  {
    goto LABEL_3;
  }

  view = [touchCopy view];
  if (view)
  {
    superview = view;
    do
    {
      v19 = superview;
      scrubView = self->_scrubView;
      superview = [(QLScrubView *)superview superview];
    }

    while (superview && v19 != scrubView);
    v16 = v19 != scrubView;
  }

  else
  {
    v16 = 1;
  }

LABEL_11:

  return v16;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)canPinchToDismiss
{
  scrollView = [(WKWebView *)self->_webView scrollView];
  [scrollView zoomScale];
  v5 = floor(v4 * 1000.0);
  scrollView2 = [(WKWebView *)self->_webView scrollView];
  [scrollView2 minimumZoomScale];
  v8 = v5 <= floor(v7 * 1000.0);

  return v8;
}

- (id)_renderer
{
  renderer = self->_renderer;
  if (renderer)
  {
    v3 = renderer;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D41250]);
    v6 = self->_renderer;
    self->_renderer = v5;

    _webViewPrintFormatter = [(WKWebView *)self->_webView _webViewPrintFormatter];
    [(UIPrintPageRenderer *)self->_renderer addPrintFormatter:_webViewPrintFormatter startingAtPageAtIndex:0];
    v3 = self->_renderer;
  }

  return v3;
}

- (void)_prepareThumbnailView
{
  thumbnailGenerator = self->_thumbnailGenerator;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__QLWKWebItemViewController__prepareThumbnailView__block_invoke;
  v3[3] = &unk_278B579E0;
  v3[4] = self;
  [(QLWebKitThumbnailGenerator *)thumbnailGenerator thumbnailInformationWithCompletionBlock:v3];
}

uint64_t __50__QLWKWebItemViewController__prepareThumbnailView__block_invoke(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(*(a1 + 32) + 1216) = a2;
  v4 = (*(a1 + 32) + 1224);
  *v4 = a3;
  v4[1] = a4;
  v6 = *(a1 + 32);
  return QLRunInMainThread();
}

- (void)_showScrubberIfNeeded:(BOOL)needed reloadThumbnails:(BOOL)thumbnails
{
  thumbnailsCopy = thumbnails;
  neededCopy = needed;
  traitCollection = [(QLWKWebItemViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
  }

  else
  {
    appearance = [(QLItemViewController *)self appearance];
    presentationMode = [appearance presentationMode];

    if (presentationMode == 4)
    {
      return;
    }
  }

  scrubView = [(QLWKWebItemViewController *)self scrubView];
  v11 = scrubView;
  if (scrubView)
  {
    if ([scrubView isHidden])
    {
      superview = [v11 superview];

      if (!superview)
      {
        v13 = MEMORY[0x277D75D18];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __68__QLWKWebItemViewController__showScrubberIfNeeded_reloadThumbnails___block_invoke_2;
        v19[3] = &unk_278B56E50;
        v19[4] = self;
        v20 = v11;
        [v13 performWithoutAnimation:v19];
      }

      if (thumbnailsCopy)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __68__QLWKWebItemViewController__showScrubberIfNeeded_reloadThumbnails___block_invoke_3;
        v18[3] = &unk_278B57190;
        v18[4] = self;
        [MEMORY[0x277D75D18] performWithoutAnimation:v18];
      }

      [v11 selectPageNumber:{-[QLWKWebItemViewController currentPageNumber](self, "currentPageNumber")}];
      [v11 setHidden:0];
      view = [(QLWKWebItemViewController *)self view];
      [view setNeedsLayout];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __68__QLWKWebItemViewController__showScrubberIfNeeded_reloadThumbnails___block_invoke_4;
      aBlock[3] = &unk_278B57190;
      aBlock[4] = self;
      v15 = _Block_copy(aBlock);
      v16 = v15;
      if (neededCopy)
      {
        [MEMORY[0x277D75D18] animateWithDuration:v15 animations:0 completion:0.2];
      }

      else
      {
        (*(v15 + 2))(v15);
      }
    }

    else if (thumbnailsCopy)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __68__QLWKWebItemViewController__showScrubberIfNeeded_reloadThumbnails___block_invoke;
      v21[3] = &unk_278B57190;
      v21[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v21];
    }
  }
}

void __68__QLWKWebItemViewController__showScrubberIfNeeded_reloadThumbnails___block_invoke_2(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) view];
  [v2 addSubview:*(a1 + 40)];

  [*(a1 + 40) setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [*(a1 + 32) view];
  v4 = MEMORY[0x277CCAAD0];
  v5 = *(a1 + 40);
  v31 = @"scrubber";
  v32[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v7 = [v4 constraintsWithVisualFormat:@"V:|[scrubber]|" options:0 metrics:0 views:v6];
  [v3 addConstraints:v7];

  v8 = [*(a1 + 32) view];
  v9 = MEMORY[0x277CCAAD0];
  v29 = @"scrubberWidth";
  v10 = MEMORY[0x277CCABB0];
  +[QLScrubView defaultWidth];
  v11 = [v10 numberWithDouble:?];
  v30 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v13 = *(a1 + 40);
  v27 = @"scrubber";
  v28 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v15 = [v9 constraintsWithVisualFormat:@"H:[scrubber(scrubberWidth)]" options:0 metrics:v12 views:v14];
  [v8 addConstraints:v15];

  v16 = MEMORY[0x277CCAAD0];
  v17 = *(a1 + 40);
  v18 = [*(a1 + 32) view];
  +[QLScrubView defaultWidth];
  v20 = [v16 constraintWithItem:v17 attribute:6 relatedBy:0 toItem:v18 attribute:6 multiplier:1.0 constant:v19];
  v21 = *(a1 + 32);
  v22 = *(v21 + 1240);
  *(v21 + 1240) = v20;

  v23 = [*(a1 + 32) view];
  [v23 addConstraint:*(*(a1 + 32) + 1240)];

  v24 = [*(a1 + 32) view];
  [v24 setNeedsLayout];

  v25 = [*(a1 + 32) view];
  [v25 layoutIfNeeded];

  v26 = *MEMORY[0x277D85DE8];
}

void __68__QLWKWebItemViewController__showScrubberIfNeeded_reloadThumbnails___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 1240) setConstant:0.0];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

- (unint64_t)currentPageNumber
{
  p_pageSize = &self->_pageSize;
  scrollView = [(WKWebView *)self->_webView scrollView];
  [scrollView zoomScale];
  height = p_pageSize->height;
  scrollView2 = [(WKWebView *)self->_webView scrollView];
  [scrollView2 zoomScale];
  v8 = v7;

  scrollView3 = [(WKWebView *)self->_webView scrollView];
  [scrollView3 frame];
  v11 = v10;

  scrollView4 = [(WKWebView *)self->_webView scrollView];
  [scrollView4 contentOffset];
  v14 = v13;

  result = self->_thumbnailCount;
  if (result >= 1)
  {
    return ((v11 * 0.5 + v14) / (height * v8));
  }

  return result;
}

- (void)_hideScrubberIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v5 = self->_scrubView;
  v6 = v5;
  if (v5 && ([(QLScrubView *)v5 isHidden]& 1) == 0)
  {
    view = [(QLWKWebItemViewController *)self view];
    [view setNeedsLayout];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__QLWKWebItemViewController__hideScrubberIfNeeded___block_invoke;
    aBlock[3] = &unk_278B57190;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __51__QLWKWebItemViewController__hideScrubberIfNeeded___block_invoke_2;
    v13 = &unk_278B571B8;
    v14 = v6;
    v9 = _Block_copy(&v10);
    if (neededCopy)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v8 animations:v9 completion:{0.2, v10, v11, v12, v13}];
    }

    else
    {
      v8[2](v8);
      v9[2](v9, 1);
    }
  }
}

void __51__QLWKWebItemViewController__hideScrubberIfNeeded___block_invoke(uint64_t a1)
{
  +[QLScrubView defaultWidth];
  [*(*(a1 + 32) + 1240) setConstant:?];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

- (void)_scrollToPage:(int64_t)page
{
  if (page)
  {
    paginator = self->_paginator;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__QLWKWebItemViewController__scrollToPage___block_invoke;
    v12[3] = &unk_278B57A08;
    v12[4] = self;
    [(QLWebKitPaginator *)paginator boundsForPageAtIndex:page withCompletionBlock:v12];
  }

  else
  {
    scrollView = [(WKWebView *)self->_webView scrollView];
    [scrollView contentOffset];
    v7 = v6;
    appearance = [(QLItemViewController *)self appearance];
    [appearance topInset];
    v10 = -v9;

    scrollView2 = [(WKWebView *)self->_webView scrollView];
    [scrollView2 setContentOffset:0 animated:{v7, v10}];
  }
}

void __43__QLWKWebItemViewController__scrollToPage___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v3 = v4;
  QLRunInMainThread();
}

void __43__QLWKWebItemViewController__scrollToPage___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) CGRectValue];
  v3 = v2;
  v5 = v4;
  v6 = [*(*(a1 + 40) + 1264) scrollView];
  [v6 zoomScale];
  v7 = [*(*(a1 + 40) + 1264) scrollView];
  [v7 zoomScale];
  v9 = v3 * v8;
  v10 = [*(*(a1 + 40) + 1264) scrollView];
  [v10 zoomScale];
  v11 = [*(*(a1 + 40) + 1264) scrollView];
  [v11 zoomScale];
  v13 = v5 * v12;

  v14 = [*(*(a1 + 40) + 1264) scrollView];
  [v14 contentSize];
  v16 = v15;

  v17 = [*(*(a1 + 40) + 1264) scrollView];
  [v17 frame];
  v19 = v18;

  v20 = [*(*(a1 + 40) + 1264) scrollView];
  [v20 contentOffset];
  v22 = v21;

  v23 = [*(a1 + 40) appearance];
  [v23 topInset];
  v25 = v19 - v24 - v13;

  if (v25 > 0.0)
  {
    v9 = v9 + v25 * -0.5;
  }

  v26 = [*(a1 + 40) appearance];
  [v26 bottomInset];
  v28 = v16 - v27;

  if (v19 + v9 >= v28)
  {
    v29 = [*(a1 + 40) appearance];
    [v29 bottomInset];
    v9 = v16 - v19 + v30;
  }

  v31 = [*(*(a1 + 40) + 1264) scrollView];
  [v31 setContentOffset:0 animated:{v22, v9}];
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, error, view, navigation);
    v7 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, error, view, navigation);
    v7 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  [(QLWKWebItemViewController *)self _prepareThumbnailView:view];
  paginator = self->_paginator;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__QLWKWebItemViewController_webView_didFinishNavigation___block_invoke;
  v8[3] = &unk_278B57A08;
  v8[4] = self;
  [(QLWebKitPaginator *)paginator sizeForPageAtIndex:0 withCompletionBlock:v8];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0);
    v7 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

uint64_t __57__QLWKWebItemViewController_webView_didFinishNavigation___block_invoke(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 32) + 1192);
  result = [a2 CGSizeValue];
  *v2 = v4;
  v2[1] = v5;
  return result;
}

- (void)_webViewDidRequestPasswordForQuickLookDocument:(id)document
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0, document);
    v5 = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.WKWebItemViewController" code:1 userInfo:0];
  completionHandler = self->_completionHandler;
  v7 = v4;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, v4);
    v6 = self->_completionHandler;
    self->_completionHandler = 0;
  }

  else
  {
    [(QLItemViewController *)self notifyDelegatesDidFailWithError:?];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  handlerCopy = handler;
  if ([actionCopy navigationType] || (objc_msgSend(actionCopy, "request"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "URL"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isSpringboardHandledURL"), v10, v9, !v11))
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    v12 = MEMORY[0x277D43EF8];
    v13 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      request = [actionCopy request];
      v16 = [request URL];
      v21 = 138412290;
      v22 = v16;
      _os_log_impl(&dword_23A714000, v14, OS_LOG_TYPE_DEFAULT, "Forwarding URL to client from web preview: %@ #AnyItemViewController", &v21, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0);
    delegate = [(QLItemViewController *)self delegate];
    request2 = [actionCopy request];
    v19 = [request2 URL];
    [delegate previewItemViewController:self wantsToOpenURL:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  taskCopy = task;
  mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  request = [taskCopy request];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __56__QLWKWebItemViewController_webView_startURLSchemeTask___block_invoke;
  v13 = &unk_278B57A30;
  v14 = taskCopy;
  selfCopy = self;
  v8 = taskCopy;
  v9 = [mEMORY[0x277CCAD30] dataTaskWithRequest:request completionHandler:&v10];

  [(QLWKWebItemViewController *)self setGeneratedDocumentURLSessionTask:v9, v10, v11, v12, v13];
  [v9 resume];
}

void __56__QLWKWebItemViewController_webView_startURLSchemeTask___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v7 = *(a1 + 32);
  if (a3)
  {
    [v7 didReceiveResponse:a3];
    [*(a1 + 32) didReceiveData:v8];
    [*(a1 + 32) didFinish];
  }

  else
  {
    [v7 didFailWithError:a4];
  }

  [*(a1 + 40) setGeneratedDocumentURLSessionTask:0];
}

- (void)webView:(id)view stopURLSchemeTask:(id)task
{
  v4 = [(QLWKWebItemViewController *)self generatedDocumentURLSessionTask:view];
  [v4 cancel];
}

- (void)scrubView:(id)view thumbnailForPage:(int64_t)page size:(CGSize)size withCompletionBlock:(id)block
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  blockCopy = block;
  v13 = [(QLWKWebItemViewController *)self _thumbnailAtIndex:page];
  if (v13)
  {
    blockCopy[2](blockCopy, v13);
  }

  else
  {
    objc_initWeak(&location, self);
    thumbnailGenerator = self->_thumbnailGenerator;
    v15 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__QLWKWebItemViewController_scrubView_thumbnailForPage_size_withCompletionBlock___block_invoke;
    v16[3] = &unk_278B57A58;
    objc_copyWeak(v18, &location);
    v18[1] = page;
    v17 = blockCopy;
    [(QLWebKitThumbnailGenerator *)thumbnailGenerator thumbnailForPage:page size:v15 withCompletionBlock:v16];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }
}

void __81__QLWKWebItemViewController_scrubView_thumbnailForPage_size_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _addThumbnailToCache:v3 atIndex:*(a1 + 48)];
  }

  else
  {
    v5 = MEMORY[0x277D43EF8];
    v6 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_ERROR, "Did not obtain thumbnail for page at index: %ld #AnyItemViewController", &v9, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (CGSize)scrubView:(id)view pageSizeAtIndex:(unint64_t)index
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_thumbnailAtIndex:(unint64_t)index
{
  v5 = self->_indexToThumbnailsCache;
  objc_sync_enter(v5);
  indexToThumbnailsCache = self->_indexToThumbnailsCache;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v8 = [(NSCache *)indexToThumbnailsCache objectForKey:v7];

  objc_sync_exit(v5);

  return v8;
}

- (void)_addThumbnailToCache:(id)cache atIndex:(unint64_t)index
{
  cacheCopy = cache;
  v6 = self->_indexToThumbnailsCache;
  objc_sync_enter(v6);
  indexToThumbnailsCache = self->_indexToThumbnailsCache;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  [(NSCache *)indexToThumbnailsCache setObject:cacheCopy forKey:v8];

  objc_sync_exit(v6);
}

- (void)numberOfPagesWithSize:(CGSize)size completionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = handlerCopy;
  QLRunInMainThreadSync();
}

void __69__QLWKWebItemViewController_numberOfPagesWithSize_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = [*(a1 + 32) _renderer];
  [v4 setPrintableRect:{0.0, 0.0, v2, v3}];

  v5 = [*(a1 + 32) _renderer];
  [v5 printableRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [*(a1 + 32) _renderer];
  [v14 setPaperRect:{v7, v9, v11, v13}];

  v15 = *(a1 + 40);
  v16 = [*(a1 + 32) _renderer];
  (*(v15 + 16))(v15, [v16 numberOfPages]);
}

- (void)pdfDataForPageAtIndex:(int64_t)index withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = handlerCopy;
  QLRunInMainThreadSync();
}

void __73__QLWKWebItemViewController_pdfDataForPageAtIndex_withCompletionHandler___block_invoke(uint64_t a1)
{
  data = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:0];
  v2 = [*(a1 + 32) _renderer];
  [v2 printableRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  UIGraphicsBeginPDFContextToData(data, v16, 0);
  UIGraphicsBeginPDFPage();
  v11 = [*(a1 + 32) _renderer];
  v12 = [v11 printFormattersForPageAtIndex:0];
  v13 = [v12 firstObject];

  [v13 rectForPageAtIndex:*(a1 + 48)];
  [v13 drawInRect:*(a1 + 48) forPageAtIndex:?];
  UIGraphicsEndPDFContext();
  (*(*(a1 + 40) + 16))();
}

- (void)scrollViewDidScroll:(id)scroll
{
  currentPageNumber = [(QLWKWebItemViewController *)self currentPageNumber];
  if (([(QLScrubView *)self->_scrubView isHidden]& 1) == 0)
  {
    scrubView = self->_scrubView;

    [(QLScrubView *)scrubView selectPageNumber:currentPageNumber];
  }
}

- (void)transitionDidStart:(BOOL)start
{
  if (!start)
  {
    [(QLWKWebItemViewController *)self _hideScrubberIfNeeded:1];
  }
}

- (void)transitionWillFinish:(BOOL)finish didComplete:(BOOL)complete
{
  if (!finish && !complete)
  {
    [(QLWKWebItemViewController *)self _updateScrubberVisibilityAnimated:1];
  }
}

- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  view = [(QLWKWebItemViewController *)self view];
  [view endEditing:0];

  v9.receiver = self;
  v9.super_class = QLWKWebItemViewController;
  [(QLItemViewController *)&v9 buttonPressedWithIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (void)_updateConstraintConstants:(BOOL)constants
{
  constantsCopy = constants;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__QLWKWebItemViewController__updateConstraintConstants___block_invoke;
  aBlock[3] = &unk_278B57190;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (constantsCopy)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.2];
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

void __56__QLWKWebItemViewController__updateConstraintConstants___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appearance];
  [v2 peripheryInsets];
  [*(*(a1 + 32) + 1248) setConstant:v3];

  v4 = [*(a1 + 32) appearance];
  [v4 peripheryInsets];
  [*(*(a1 + 32) + 1256) setConstant:v5];

  v6 = [*(a1 + 32) view];
  [v6 setNeedsLayout];
}

+ (BOOL)_shouldDisableJavaScriptForContentType:(id)type
{
  typeCopy = type;
  if ([MEMORY[0x277D43F90] isIWorkDocumentType:typeCopy])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [MEMORY[0x277D43F90] isOfficeDocumentType:typeCopy] ^ 1;
  }

  return v4;
}

@end