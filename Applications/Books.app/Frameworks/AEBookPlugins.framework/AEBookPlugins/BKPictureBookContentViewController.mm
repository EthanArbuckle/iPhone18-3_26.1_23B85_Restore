@interface BKPictureBookContentViewController
- (BOOL)isAnnotationVisible:(id)visible;
- (id)URLForLoadingDocument;
- (id)stylesheetSet;
- (void)_readyToShow;
- (void)_revealImmediateTimeout;
- (void)_sendContentInfoRequestToLoadMediaFrames;
- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l;
- (void)navigationHandlerFirstSignificantPaintCompleted:(id)completed;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKPictureBookContentViewController

- (void)viewDidLoad
{
  book = [(BKContentViewController *)self book];
  document = [(BKContentViewController *)self document];
  [document fixedLayoutSize];
  v5 = v4;
  v7 = v6;
  [document estimatedFixedLayoutViewFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  view = [(BKPictureBookContentViewController *)self view];
  [view setFrame:{v9, v11, v13, v15}];
  v16 = +[UIColor whiteColor];
  [view setBackgroundColor:v16];

  v47 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:book ordinal:[(BKContentViewController *)self ordinal]];
  bookLanguage = [book bookLanguage];
  v18 = [BEContentCleanupJSOptions fixedLayoutOptionsWithLanguage:bookLanguage];

  v19 = [BECFIUtilitiesJSOptions alloc];
  document2 = [(BKContentViewController *)self document];
  manifestId = [document2 manifestId];
  assetID = [book assetID];
  ordinal = [(BKContentViewController *)self ordinal];
  spineIndexInPackage = [book spineIndexInPackage];
  v25 = [v19 initWithManifestId:manifestId assetId:assetID chapterIndex:ordinal spineIndex:{objc_msgSend(spineIndexInPackage, "unsignedIntegerValue")}];

  v26 = [BEWebViewFactoryPaginationOptions paginationOptionsForBookInfoSnapshot:v47 withConfiguration:0 contentLayoutSize:v5, v7];
  cacheItem = [book cacheItem];
  stylesheetSet = [(BKPictureBookContentViewController *)self stylesheetSet];
  v29 = [BEWebViewFactory viewConfiguredForPictureBooks:cacheItem fixedLayoutSize:v26 protocolCacheItem:v18 paginationOptions:v25 cleanupOptions:stylesheetSet cfiOptions:v9 stylesheetSet:v11, v13, v15, v5, v7];
  webView2 = self->super._webView2;
  self->super._webView2 = v29;

  [(WKWebView *)self->super._webView2 setAutoresizingMask:18];
  [(WKWebView *)self->super._webView2 setOpaque:0];
  [(WKWebView *)self->super._webView2 setFrame:v9, v11, v13, v15];
  be_navigationHandler = [(WKWebView *)self->super._webView2 be_navigationHandler];
  [be_navigationHandler setDelegate:self];

  be_uiHandler = [(WKWebView *)self->super._webView2 be_uiHandler];
  [be_uiHandler setDelegate:self];

  configuration = [(WKWebView *)self->super._webView2 configuration];
  userContentController = [configuration userContentController];
  [(BKHTMLContentViewController *)self registerScriptMessageHandlersWithUserContentController:userContentController];

  v35 = self->super._webView2;
  book2 = [(BKContentViewController *)self book];
  v37 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [book2 isFixedLayout]);
  v38 = [(WKWebView *)v35 be_updateAXValueForMessage:v37];
  [(WKWebView *)v35 be_updateAXCurrentReadingStateWithMessage:@"BEWebProcessPluginBookLayoutParameterKey" forValue:v38];

  v39 = self->super._webView2;
  if ([(BKContentViewController *)self pageProgressionDirection]== 1)
  {
    v40 = &__kCFBooleanTrue;
  }

  else
  {
    v40 = &__kCFBooleanFalse;
  }

  v41 = [(WKWebView *)v39 be_updateAXValueForMessage:v40];
  [(WKWebView *)v39 be_updateAXCurrentReadingStateWithMessage:@"BEWebProcessPluginRTLParameterKey" forValue:v41];

  [view addSubview:self->super._webView2];
  v42 = [[BKWK2WebViewLoader alloc] initWithPaginationOptions:v26 ordinal:[(BKContentViewController *)self ordinal]];
  [(BKHTMLContentViewController *)self setLoader:v42];

  loader = [(BKHTMLContentViewController *)self loader];
  webViewProxy = [(BKHTMLContentViewController *)self webViewProxy];
  [webViewProxy setLoader:loader];

  v45 = self->super._webView2;
  loader2 = [(BKHTMLContentViewController *)self loader];
  [loader2 setWebView:v45];

  v50.receiver = self;
  v50.super_class = BKPictureBookContentViewController;
  [(BKHTMLContentViewController *)&v50 viewDidLoad];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = BKPictureBookContentViewController;
  [(BKHTMLContentViewController *)&v5 viewWillDisappear:disappear];
  delegate = [(BKContentViewController *)self delegate];
  [delegate cancelPreloadForContent:self];
}

- (id)URLForLoadingDocument
{
  book = self->super.super._book;
  document = [(BKContentViewController *)self document];
  v4 = [(AEBookInfo *)book urlForDocument:document];

  v5 = BEURLHandleriBooksImgUrlFromiBooksURL();

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = BKPictureBookContentViewController;
  coordinatorCopy = coordinator;
  [(BKHTMLContentViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3620;
  v8[3] = &unk_1E2A60;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (id)stylesheetSet
{
  book = [(BKContentViewController *)self book];
  v3 = +[ContentViewStyleManager getPictureBookUserStyleSheetWithLegacyBook:](ContentViewStyleManager, "getPictureBookUserStyleSheetWithLegacyBook:", [book shouldDisableOptimizeSpeed] ^ 1);

  if (![v3 length])
  {
    sub_136A48();
  }

  v4 = [BEWebViewFactoryStylesheetSet alloc];
  v8 = v3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [v4 initWithAllFrameStylesheets:v5];

  return v6;
}

- (BOOL)isAnnotationVisible:(id)visible
{
  location = [visible location];
  LOBYTE(self) = [(BKHTMLContentViewController *)self isLocationOnCurrentPage:location];

  return self;
}

- (void)_readyToShow
{
  if (![(BKPictureBookContentViewController *)self alreadyRevealed])
  {
    [(BKPictureBookContentViewController *)self setAlreadyRevealed:1];
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_revealImmediateTimeout" object:0];

    [(BKHTMLContentViewController *)self contentReady];
  }
}

- (void)navigationHandlerFirstSignificantPaintCompleted:(id)completed
{
  v4.receiver = self;
  v4.super_class = BKPictureBookContentViewController;
  [(BKHTMLContentViewController *)&v4 navigationHandlerFirstSignificantPaintCompleted:completed];
  [(BKPictureBookContentViewController *)self setDidFinishRendering:1];
  if ([(BKPictureBookContentViewController *)self didFinishLoading])
  {
    [(BKPictureBookContentViewController *)self _readyToShow];
  }
}

- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l
{
  handlerCopy = handler;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = BKPictureBookContentViewController;
  [(BKHTMLContentViewController *)&v14 navigationHandler:handlerCopy didFinishLoadOfURL:lCopy];
  [(BKPictureBookContentViewController *)self setDidFinishLoading:1];
  objc_initWeak(&location, self);
  [(BKPictureBookContentViewController *)self performSelector:"_revealImmediateTimeout" withObject:0 afterDelay:2.0];
  v8 = self->super._webView2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_39E4;
  v10[3] = &unk_1E2AC8;
  v9 = v8;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [(WKWebView *)v9 _doAfterNextStablePresentationUpdate:v10];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

- (void)_revealImmediateTimeout
{
  if (![(BKPictureBookContentViewController *)self alreadyRevealed])
  {
    [(BKPictureBookContentViewController *)self setAlreadyRevealed:1];
    v3 = _AEWKPictureBookLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Revealing even though we never got navigationHandlerFirstSignificantPaintCompleted", v4, 2u);
    }

    [(BKHTMLContentViewController *)self contentReady];
  }
}

- (void)_sendContentInfoRequestToLoadMediaFrames
{
  stylesheetSet = [(BKPictureBookContentViewController *)self stylesheetSet];
  v3 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:self->super.super._book ordinal:[(BKContentViewController *)self ordinal]];
  v4 = [BKWK2LoaderContentInfoRequest contentInfoRequestWithLocation:0 bookSnapshot:v3 ordinal:[(BKContentViewController *)self ordinal] configuration:self->super.super._configuration stylesheetSet:stylesheetSet completion:&stru_1E2B08];
  loader = [(BKHTMLContentViewController *)self loader];
  [loader enqueueContentInfoRequest:v4];
}

@end