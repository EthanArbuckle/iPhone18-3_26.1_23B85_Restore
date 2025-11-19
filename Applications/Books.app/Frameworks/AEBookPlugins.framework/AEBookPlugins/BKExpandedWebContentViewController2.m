@interface BKExpandedWebContentViewController2
+ (BOOL)supportsResource:(id)a3;
- (BEContentCleanupJSOptions)cleanupOptions;
- (BKExpandedWebContentViewController2)initWithResource:(id)a3;
- (BOOL)navigationHandler:(id)a3 handleInternalLoadRequest:(id)a4;
- (double)_viewportWidth;
- (id)_stylesheetSet;
- (id)_titleForPage;
- (id)_urlToLoad;
- (id)contentView;
- (id)leftToolbarItems;
- (id)previewCssTemplate;
- (void)_applyImageFilter:(BOOL)a3;
- (void)_prepareImageShowOriginal:(BOOL)a3;
- (void)_swapImageProtocols;
- (void)_updateContent;
- (void)_updateMetaViewportArguments;
- (void)handler:(id)a3 presentAlertController:(id)a4 completion:(id)a5;
- (void)navigationHandler:(id)a3 didFinishLoadOfURL:(id)a4;
- (void)navigationHandler:(id)a3 handleExternalLoadRequest:(id)a4 likelyUserInitiated:(BOOL)a5;
- (void)navigationHandler:(id)a3 handleInternalLoadRequestForNewWindow:(id)a4;
- (void)navigationHandler:(id)a3 handleUserRequestForFrameToLoadExternalURL:(id)a4 completion:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)releaseViews;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKExpandedWebContentViewController2

+ (BOOL)supportsResource:(id)a3
{
  v3 = [a3 resource];
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

- (BKExpandedWebContentViewController2)initWithResource:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BKExpandedWebContentViewController2;
  v5 = [(BKExpandedContentViewController *)&v12 initWithResource:v4];
  v6 = v5;
  if (v5)
  {
    v5->_showOriginal = 1;
    v7 = [v4 resource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
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

      objc_storeStrong(&v6->_content, v7);
      v10 = [v4 contentType];
      url = v6->_contentType;
      v6->_contentType = v10;
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

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BKExpandedWebContentViewController2;
  [(BKExpandedContentViewController *)&v6 viewDidAppear:a3];
  v4 = [(BKExpandedWebContentViewController2 *)self webView];
  v5 = [v4 scrollView];
  [v5 flashScrollIndicators];

  [(BKExpandedWebContentViewController2 *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(BKExpandedWebContentViewController2 *)self view];
  [v8 setNeedsUpdateConstraints];

  v9.receiver = self;
  v9.super_class = BKExpandedWebContentViewController2;
  [(BKExpandedWebContentViewController2 *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)releaseViews
{
  v4.receiver = self;
  v4.super_class = BKExpandedWebContentViewController2;
  [(BKExpandedContentViewController *)&v4 releaseViews];
  v3 = [(BKExpandedWebContentViewController2 *)self webView];
  [v3 removeObserver:self forKeyPath:@"title" context:off_22B480];

  [(BKExpandedWebContentViewController2 *)self setWebView:0];
}

- (id)contentView
{
  webView = self->_webView;
  if (!webView)
  {
    v4 = [(BKExpandedContentViewController *)self resource];
    v5 = [(BKExpandedWebContentViewController2 *)self view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(BKExpandedWebContentViewController2 *)self allowsRemoteInspection];
    v15 = [v4 bookID];
    v28 = v4;
    imageFilteringEnabled = self->_imageFilteringEnabled;
    v17 = [v4 cacheItem];
    v18 = [(BKExpandedWebContentViewController2 *)self cleanupOptions];
    v19 = [(BKExpandedWebContentViewController2 *)self _stylesheetSet];
    v20 = [BEWebViewFactory viewConfiguredForPreview:v14 enableDeveloperExtras:v15 bookID:imageFilteringEnabled imageFilterMode:v17 protocolCacheItem:v18 cleanupOptions:v19 stylesheetSet:v7, v9, v11, v13];
    v21 = self->_webView;
    self->_webView = v20;

    [(WKWebView *)self->_webView setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = +[UIColor clearColor];
    [(WKWebView *)self->_webView setBackgroundColor:v22];

    [(WKWebView *)self->_webView setOpaque:0];
    v23 = [(WKWebView *)self->_webView be_navigationHandler];
    [v23 setDelegate:self];

    v24 = [(WKWebView *)self->_webView be_uiHandler];
    [v24 setDelegate:self];

    [(WKWebView *)self->_webView addObserver:self forKeyPath:@"title" options:0 context:off_22B480];
    if (self->_imageFilteringEnabled)
    {
      [(BKExpandedWebContentViewController2 *)self _swapImageProtocols];
    }

    v25 = [(WKWebView *)self->_webView scrollView];
    [v25 _setShowsBackgroundShadow:0];
    [v25 setShowsHorizontalScrollIndicator:0];
    v26 = +[UIColor clearColor];
    [v25 setBackgroundColor:v26];

    [v25 setOpaque:0];
    [(BKExpandedWebContentViewController2 *)self _updateMetaViewportArguments];
    [(BKExpandedWebContentViewController2 *)self _updateContent];
    [(BKExpandedContentViewController *)self setInnerView:self->_webView];

    webView = self->_webView;
  }

  return webView;
}

- (void)_swapImageProtocols
{
  v3 = [(BKExpandedWebContentViewController2 *)self webView];
  v2 = +[BEContentSupportJS javascriptForSwappingAllImages];
  [v3 evaluateJavaScript:v2 completionHandler:&stru_1E4B68];
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

- (void)_prepareImageShowOriginal:(BOOL)a3
{
  if (self->_imageFilteringEnabled && self->_showOriginal != a3)
  {
    self->_showOriginal = a3;
    [(BKExpandedWebContentViewController2 *)self _applyImageFilter:!a3];
  }
}

- (void)_applyImageFilter:(BOOL)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v5 = [v4 stringValue];
  v7 = [NSString stringWithFormat:@"__ibooks_image_filter.refetchVisibleImages(%@)", v5];

  v6 = [(BKExpandedWebContentViewController2 *)self webView];
  [v6 evaluateJavaScript:v7 completionHandler:&stru_1E4B88];
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
  v3 = [(BKExpandedWebContentViewController2 *)self theme];
  v4 = [v3 backgroundColorForTraitEnvironment:self];

  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:v4 forKey:@"contentBackgroundColor"];
  v6 = [(BKExpandedWebContentViewController2 *)self theme];
  v7 = [v6 contentTextColor];
  [v5 setObject:v7 forKey:@"contentColor"];

  v8 = [(BKExpandedWebContentViewController2 *)self theme];
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 shouldInvertContent]);
  [v5 setObject:v9 forKey:@"shouldInvertContent"];

  v10 = [(BKExpandedWebContentViewController2 *)self previewCssTemplate];
  v11 = [v10 evaluateWithData:v5 error:0];

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
  v14 = [(BKExpandedWebContentViewController2 *)self _titleForPage];
  [(BKExpandedContentViewController *)self setPreviewTitle:?];
  v3 = [(BKExpandedWebContentViewController2 *)self content];

  if (v3)
  {
    v4 = [(BKExpandedWebContentViewController2 *)self content];
    v5 = [v4 dataUsingEncoding:4];

    webView = self->_webView;
    v7 = [(BKExpandedWebContentViewController2 *)self contentType];
    v8 = BEUTF8StringEncodingName;
    v9 = [(BKExpandedContentViewController *)self resource];
    v10 = [v9 sourceURL];
    v11 = [(WKWebView *)webView loadData:v5 MIMEType:v7 characterEncodingName:v8 baseURL:v10];
  }

  else
  {
    v12 = self->_webView;
    v5 = [(BKExpandedWebContentViewController2 *)self _urlToLoad];
    v7 = [NSURLRequest requestWithURL:v5];
    v13 = [(WKWebView *)v12 loadRequest:v7];
  }
}

- (double)_viewportWidth
{
  v2 = [(BKExpandedContentViewController *)self resource];
  [v2 contentSize];
  if (v3 <= 0.0)
  {
    v4 = 980.0;
  }

  else
  {
    v4 = v3;
    [v2 zoomScale];
    if (v5 != 0.0)
    {
      [v2 zoomScale];
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
  v5 = [v4 stringValue];
  v8[0] = v5;
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
  v3 = [(WKWebView *)self->_webView title];
  if (![v3 length])
  {
    v4 = [(BKExpandedContentViewController *)self resource];
    v5 = [v4 title];

    v3 = v5;
  }

  v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v7 = [v3 stringByTrimmingCharactersInSet:v6];

  if (![v7 length])
  {
    v8 = [(BKExpandedWebContentViewController2 *)self _urlToLoad];
    v9 = [v8 lastPathComponent];

    if (![v9 length])
    {
      v10 = [(BKExpandedContentViewController *)self resource];
      v11 = [v10 sourceURL];
      v12 = [v11 lastPathComponent];

      v9 = v12;
    }

    v13 = [v9 stringByDeletingPathExtension];

    v7 = [v13 capitalizedString];
  }

  return v7;
}

- (void)navigationHandler:(id)a3 didFinishLoadOfURL:(id)a4
{
  v12 = [(BKExpandedContentViewController *)self delegate:a3];
  if (objc_opt_respondsToSelector())
  {
    [v12 expandedContentViewDidFinishLoad:self];
  }

  [(BKExpandedWebContentViewController2 *)self _viewportWidth];
  v6 = v5 * 0.95;
  v7 = [(BKExpandedWebContentViewController2 *)self cleanupOptions];
  v8 = [BEContentCleanupJS updateScriptWithOptions:v7 pageLength:v6 gapBetweenPages:0.0];

  v9 = [(BKExpandedWebContentViewController2 *)self webView];
  [v9 evaluateJavaScript:v8 completionHandler:&stru_1E4BA8];

  v10 = [(BKExpandedWebContentViewController2 *)self webView];
  v11 = [v10 scrollView];
  [v11 flashScrollIndicators];

  [(BKExpandedContentViewController *)self stopActivityIndicator:1];
}

- (void)navigationHandler:(id)a3 handleUserRequestForFrameToLoadExternalURL:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(BKExpandedContentViewController *)self delegate];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_867AC;
  v11[3] = &unk_1E4BD0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 expandedContentViewController:self handleUserRequestForFrameToLoadExternalURL:v8 completion:v11];
}

- (void)navigationHandler:(id)a3 handleExternalLoadRequest:(id)a4 likelyUserInitiated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(BKExpandedContentViewController *)self delegate];
  [v8 expandedContentViewController:self handleExternalLoadRequest:v7 likelyUserInitiated:v5];
}

- (BOOL)navigationHandler:(id)a3 handleInternalLoadRequest:(id)a4
{
  v5 = [a4 absoluteURL];
  v6 = [(BKExpandedContentViewController *)self resource];
  v7 = [v6 sourceURL];
  if ([v5 be_isEquivalentToURL:v7 ignoringFragment:1])
  {

    v8 = 1;
LABEL_5:

    goto LABEL_6;
  }

  v9 = [(BKExpandedWebContentViewController2 *)self _urlToLoad];
  v8 = 1;
  v10 = [v5 be_isEquivalentToURL:v9 ignoringFragment:1];

  if ((v10 & 1) == 0)
  {
    v6 = [(BKExpandedContentViewController *)self delegate];
    v8 = [v6 expandedContentViewController:self handleInternalLoadRequest:v5];
    goto LABEL_5;
  }

LABEL_6:

  return v8;
}

- (void)navigationHandler:(id)a3 handleInternalLoadRequestForNewWindow:(id)a4
{
  v5 = a4;
  v6 = [(BKExpandedContentViewController *)self delegate];
  [v6 expandedContentViewController:self handleInternalLoadRequestForNewWindow:v5];
}

- (void)handler:(id)a3 presentAlertController:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(BKExpandedContentViewController *)self delegate];
  [v9 expandedContentViewController:self presentAlertController:v8 completion:v7];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_22B480 == a6)
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
    [(BKExpandedWebContentViewController2 *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end