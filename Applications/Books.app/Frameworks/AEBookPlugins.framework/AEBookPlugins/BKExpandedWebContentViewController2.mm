@interface BKExpandedWebContentViewController2
+ (BOOL)supportsResource:(id)resource;
- (BEContentCleanupJSOptions)cleanupOptions;
- (BKExpandedWebContentViewController2)initWithResource:(id)resource;
- (BOOL)navigationHandler:(id)handler handleInternalLoadRequest:(id)request;
- (double)_viewportWidth;
- (id)_stylesheetSet;
- (id)_titleForPage;
- (id)_urlToLoad;
- (id)contentView;
- (id)leftToolbarItems;
- (id)previewCssTemplate;
- (void)_applyImageFilter:(BOOL)filter;
- (void)_prepareImageShowOriginal:(BOOL)original;
- (void)_swapImageProtocols;
- (void)_updateContent;
- (void)_updateMetaViewportArguments;
- (void)handler:(id)handler presentAlertController:(id)controller completion:(id)completion;
- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l;
- (void)navigationHandler:(id)handler handleExternalLoadRequest:(id)request likelyUserInitiated:(BOOL)initiated;
- (void)navigationHandler:(id)handler handleInternalLoadRequestForNewWindow:(id)window;
- (void)navigationHandler:(id)handler handleUserRequestForFrameToLoadExternalURL:(id)l completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)releaseViews;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKExpandedWebContentViewController2

+ (BOOL)supportsResource:(id)resource
{
  resource = [resource resource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BKExpandedWebContentViewController2)initWithResource:(id)resource
{
  resourceCopy = resource;
  v12.receiver = self;
  v12.super_class = BKExpandedWebContentViewController2;
  v5 = [(BKExpandedContentViewController *)&v12 initWithResource:resourceCopy];
  v6 = v5;
  if (v5)
  {
    v5->_showOriginal = 1;
    resource = [resourceCopy resource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = resource;
      url = v6->_url;
      v6->_url = v8;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_7:

        goto LABEL_8;
      }

      objc_storeStrong(&v6->_content, resource);
      contentType = [resourceCopy contentType];
      url = v6->_contentType;
      v6->_contentType = contentType;
    }

    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = BKExpandedWebContentViewController2;
  [(BKExpandedContentViewController *)&v3 viewDidLoad];
  [(BKExpandedWebContentViewController2 *)self setModalPresentationStyle:4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = BKExpandedWebContentViewController2;
  [(BKExpandedContentViewController *)&v6 viewDidAppear:appear];
  webView = [(BKExpandedWebContentViewController2 *)self webView];
  scrollView = [webView scrollView];
  [scrollView flashScrollIndicators];

  [(BKExpandedWebContentViewController2 *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  view = [(BKExpandedWebContentViewController2 *)self view];
  [view setNeedsUpdateConstraints];

  v9.receiver = self;
  v9.super_class = BKExpandedWebContentViewController2;
  [(BKExpandedWebContentViewController2 *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)releaseViews
{
  v4.receiver = self;
  v4.super_class = BKExpandedWebContentViewController2;
  [(BKExpandedContentViewController *)&v4 releaseViews];
  webView = [(BKExpandedWebContentViewController2 *)self webView];
  [webView removeObserver:self forKeyPath:@"title" context:off_22B480];

  [(BKExpandedWebContentViewController2 *)self setWebView:0];
}

- (id)contentView
{
  webView = self->_webView;
  if (!webView)
  {
    resource = [(BKExpandedContentViewController *)self resource];
    view = [(BKExpandedWebContentViewController2 *)self view];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    allowsRemoteInspection = [(BKExpandedWebContentViewController2 *)self allowsRemoteInspection];
    bookID = [resource bookID];
    v28 = resource;
    imageFilteringEnabled = self->_imageFilteringEnabled;
    cacheItem = [resource cacheItem];
    cleanupOptions = [(BKExpandedWebContentViewController2 *)self cleanupOptions];
    _stylesheetSet = [(BKExpandedWebContentViewController2 *)self _stylesheetSet];
    v20 = [BEWebViewFactory viewConfiguredForPreview:allowsRemoteInspection enableDeveloperExtras:bookID bookID:imageFilteringEnabled imageFilterMode:cacheItem protocolCacheItem:cleanupOptions cleanupOptions:_stylesheetSet stylesheetSet:v7, v9, v11, v13];
    v21 = self->_webView;
    self->_webView = v20;

    [(WKWebView *)self->_webView setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = +[UIColor clearColor];
    [(WKWebView *)self->_webView setBackgroundColor:v22];

    [(WKWebView *)self->_webView setOpaque:0];
    be_navigationHandler = [(WKWebView *)self->_webView be_navigationHandler];
    [be_navigationHandler setDelegate:self];

    be_uiHandler = [(WKWebView *)self->_webView be_uiHandler];
    [be_uiHandler setDelegate:self];

    [(WKWebView *)self->_webView addObserver:self forKeyPath:@"title" options:0 context:off_22B480];
    if (self->_imageFilteringEnabled)
    {
      [(BKExpandedWebContentViewController2 *)self _swapImageProtocols];
    }

    scrollView = [(WKWebView *)self->_webView scrollView];
    [scrollView _setShowsBackgroundShadow:0];
    [scrollView setShowsHorizontalScrollIndicator:0];
    v26 = +[UIColor clearColor];
    [scrollView setBackgroundColor:v26];

    [scrollView setOpaque:0];
    [(BKExpandedWebContentViewController2 *)self _updateMetaViewportArguments];
    [(BKExpandedWebContentViewController2 *)self _updateContent];
    [(BKExpandedContentViewController *)self setInnerView:self->_webView];

    webView = self->_webView;
  }

  return webView;
}

- (void)_swapImageProtocols
{
  webView = [(BKExpandedWebContentViewController2 *)self webView];
  v2 = +[BEContentSupportJS javascriptForSwappingAllImages];
  [webView evaluateJavaScript:v2 completionHandler:&stru_1E4B68];
}

- (id)leftToolbarItems
{
  if (self->_imageFilteringEnabled)
  {
    v3 = BookEPUBBundle();
    v4 = [v3 localizedStringForKey:@"Invert" value:&stru_1E7188 table:0];

    v5 = [[UIBarButtonItem alloc] initWithTitle:v4 style:0 target:self action:"_invert:"];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_prepareImageShowOriginal:(BOOL)original
{
  if (self->_imageFilteringEnabled && self->_showOriginal != original)
  {
    self->_showOriginal = original;
    [(BKExpandedWebContentViewController2 *)self _applyImageFilter:!original];
  }
}

- (void)_applyImageFilter:(BOOL)filter
{
  v4 = [NSNumber numberWithUnsignedInteger:filter];
  stringValue = [v4 stringValue];
  v7 = [NSString stringWithFormat:@"__ibooks_image_filter.refetchVisibleImages(%@)", stringValue];

  webView = [(BKExpandedWebContentViewController2 *)self webView];
  [webView evaluateJavaScript:v7 completionHandler:&stru_1E4B88];
}

- (BEContentCleanupJSOptions)cleanupOptions
{
  cleanupOptions = self->_cleanupOptions;
  if (!cleanupOptions)
  {
    v4 = +[BEContentCleanupJSOptions expandedContentOptions];
    v5 = self->_cleanupOptions;
    self->_cleanupOptions = v4;

    cleanupOptions = self->_cleanupOptions;
  }

  return cleanupOptions;
}

- (id)previewCssTemplate
{
  v4 = 0;
  v2 = [AEMinimalTemplate templateWithString:@"{{if contentBackgroundColor}}\n:root error:body {\n    background-color: {{.contentBackgroundColor.bc_rgbaString}} !important\n}\n{{end contentBackgroundColor}}\n\n{{if contentColor}}\n\n:root * {\n    color: {{.contentColor.bc_rgbaString}} !important;\n}\n\n:root svg|text {\n    fill: {{.contentColor.bc_rgbaString}} !important;\n    stroke: none !important;\n}\n\n{{end contentColor}}\n\n* {\n    -webkit-user-select: none;\n    -webkit-touch-callout: none;\n}", &v4];;

  return v2;
}

- (id)_stylesheetSet
{
  theme = [(BKExpandedWebContentViewController2 *)self theme];
  v4 = [theme backgroundColorForTraitEnvironment:self];

  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:v4 forKey:@"contentBackgroundColor"];
  theme2 = [(BKExpandedWebContentViewController2 *)self theme];
  contentTextColor = [theme2 contentTextColor];
  [v5 setObject:contentTextColor forKey:@"contentColor"];

  theme3 = [(BKExpandedWebContentViewController2 *)self theme];
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [theme3 shouldInvertContent]);
  [v5 setObject:v9 forKey:@"shouldInvertContent"];

  previewCssTemplate = [(BKExpandedWebContentViewController2 *)self previewCssTemplate];
  v11 = [previewCssTemplate evaluateWithData:v5 error:0];

  v12 = [BEWebViewFactoryStylesheetSet alloc];
  if ([v11 length])
  {
    v16 = v11;
    v13 = [NSArray arrayWithObjects:&v16 count:1];
    v14 = [v12 initWithAllFrameStylesheets:v13];
  }

  else
  {
    v14 = [v12 initWithAllFrameStylesheets:&__NSArray0__struct];
  }

  return v14;
}

- (id)_urlToLoad
{
  v2 = [(BKExpandedWebContentViewController2 *)self url];
  v3 = BEURLHandleriBooksImgUrlFromiBooksURL();

  return v3;
}

- (void)_updateContent
{
  _titleForPage = [(BKExpandedWebContentViewController2 *)self _titleForPage];
  [(BKExpandedContentViewController *)self setPreviewTitle:?];
  content = [(BKExpandedWebContentViewController2 *)self content];

  if (content)
  {
    content2 = [(BKExpandedWebContentViewController2 *)self content];
    _urlToLoad = [content2 dataUsingEncoding:4];

    webView = self->_webView;
    contentType = [(BKExpandedWebContentViewController2 *)self contentType];
    v8 = BEUTF8StringEncodingName;
    resource = [(BKExpandedContentViewController *)self resource];
    sourceURL = [resource sourceURL];
    v11 = [(WKWebView *)webView loadData:_urlToLoad MIMEType:contentType characterEncodingName:v8 baseURL:sourceURL];
  }

  else
  {
    v12 = self->_webView;
    _urlToLoad = [(BKExpandedWebContentViewController2 *)self _urlToLoad];
    contentType = [NSURLRequest requestWithURL:_urlToLoad];
    v13 = [(WKWebView *)v12 loadRequest:contentType];
  }
}

- (double)_viewportWidth
{
  resource = [(BKExpandedContentViewController *)self resource];
  [resource contentSize];
  if (v3 <= 0.0)
  {
    v4 = 980.0;
  }

  else
  {
    v4 = v3;
    [resource zoomScale];
    if (v5 != 0.0)
    {
      [resource zoomScale];
      v4 = v4 * v6;
    }
  }

  return v4;
}

- (void)_updateMetaViewportArguments
{
  [(BKExpandedWebContentViewController2 *)self _viewportWidth];
  webView = self->_webView;
  v7[0] = @"width";
  v4 = [NSNumber numberWithDouble:?];
  stringValue = [v4 stringValue];
  v8[0] = stringValue;
  v8[1] = @"10";
  v7[1] = @"maximum-scale";
  v7[2] = @"minimum-scale";
  v7[3] = @"shrink-to-fit";
  v8[2] = @"0.35";
  v8[3] = @"yes";
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  [(WKWebView *)webView _overrideViewportWithArguments:v6];
}

- (id)_titleForPage
{
  title = [(WKWebView *)self->_webView title];
  if (![title length])
  {
    resource = [(BKExpandedContentViewController *)self resource];
    title2 = [resource title];

    title = title2;
  }

  v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  capitalizedString = [title stringByTrimmingCharactersInSet:v6];

  if (![capitalizedString length])
  {
    _urlToLoad = [(BKExpandedWebContentViewController2 *)self _urlToLoad];
    lastPathComponent = [_urlToLoad lastPathComponent];

    if (![lastPathComponent length])
    {
      resource2 = [(BKExpandedContentViewController *)self resource];
      sourceURL = [resource2 sourceURL];
      lastPathComponent2 = [sourceURL lastPathComponent];

      lastPathComponent = lastPathComponent2;
    }

    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    capitalizedString = [stringByDeletingPathExtension capitalizedString];
  }

  return capitalizedString;
}

- (void)navigationHandler:(id)handler didFinishLoadOfURL:(id)l
{
  v12 = [(BKExpandedContentViewController *)self delegate:handler];
  if (objc_opt_respondsToSelector())
  {
    [v12 expandedContentViewDidFinishLoad:self];
  }

  [(BKExpandedWebContentViewController2 *)self _viewportWidth];
  v6 = v5 * 0.95;
  cleanupOptions = [(BKExpandedWebContentViewController2 *)self cleanupOptions];
  v8 = [BEContentCleanupJS updateScriptWithOptions:cleanupOptions pageLength:v6 gapBetweenPages:0.0];

  webView = [(BKExpandedWebContentViewController2 *)self webView];
  [webView evaluateJavaScript:v8 completionHandler:&stru_1E4BA8];

  webView2 = [(BKExpandedWebContentViewController2 *)self webView];
  scrollView = [webView2 scrollView];
  [scrollView flashScrollIndicators];

  [(BKExpandedContentViewController *)self stopActivityIndicator:1];
}

- (void)navigationHandler:(id)handler handleUserRequestForFrameToLoadExternalURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  delegate = [(BKExpandedContentViewController *)self delegate];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_867AC;
  v11[3] = &unk_1E4BD0;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [delegate expandedContentViewController:self handleUserRequestForFrameToLoadExternalURL:lCopy completion:v11];
}

- (void)navigationHandler:(id)handler handleExternalLoadRequest:(id)request likelyUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  requestCopy = request;
  delegate = [(BKExpandedContentViewController *)self delegate];
  [delegate expandedContentViewController:self handleExternalLoadRequest:requestCopy likelyUserInitiated:initiatedCopy];
}

- (BOOL)navigationHandler:(id)handler handleInternalLoadRequest:(id)request
{
  absoluteURL = [request absoluteURL];
  resource = [(BKExpandedContentViewController *)self resource];
  sourceURL = [resource sourceURL];
  if ([absoluteURL be_isEquivalentToURL:sourceURL ignoringFragment:1])
  {

    v8 = 1;
LABEL_5:

    goto LABEL_6;
  }

  _urlToLoad = [(BKExpandedWebContentViewController2 *)self _urlToLoad];
  v8 = 1;
  v10 = [absoluteURL be_isEquivalentToURL:_urlToLoad ignoringFragment:1];

  if ((v10 & 1) == 0)
  {
    resource = [(BKExpandedContentViewController *)self delegate];
    v8 = [resource expandedContentViewController:self handleInternalLoadRequest:absoluteURL];
    goto LABEL_5;
  }

LABEL_6:

  return v8;
}

- (void)navigationHandler:(id)handler handleInternalLoadRequestForNewWindow:(id)window
{
  windowCopy = window;
  delegate = [(BKExpandedContentViewController *)self delegate];
  [delegate expandedContentViewController:self handleInternalLoadRequestForNewWindow:windowCopy];
}

- (void)handler:(id)handler presentAlertController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  delegate = [(BKExpandedContentViewController *)self delegate];
  [delegate expandedContentViewController:self presentAlertController:controllerCopy completion:completionCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_22B480 == context)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_86C44;
    block[3] = &unk_1E4920;
    objc_copyWeak(&v8, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = BKExpandedWebContentViewController2;
    [(BKExpandedWebContentViewController2 *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end