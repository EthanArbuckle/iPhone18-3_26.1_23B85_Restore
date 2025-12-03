@interface BCWebViewController
- (BCWebViewController)initWithCallbackURI:(id)i;
- (BCWebViewControllerDelegate)delegate;
- (void)loadURL:(id)l;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentCertificatErrorForHost:(id)host;
- (void)reload;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)updateNavigationBar;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
@end

@implementation BCWebViewController

- (BCWebViewController)initWithCallbackURI:(id)i
{
  iCopy = i;
  v16.receiver = self;
  v16.super_class = BCWebViewController;
  v6 = [(BCWebViewController *)&v16 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callbackURI, i);
    v8 = objc_alloc_init(MEMORY[0x277CE3858]);
    nonPersistentDataStore = [MEMORY[0x277CE3868] nonPersistentDataStore];
    [v8 setWebsiteDataStore:nonPersistentDataStore];

    v10 = objc_alloc(MEMORY[0x277CE3850]);
    v11 = [v10 initWithFrame:v8 configuration:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    webkitView = v7->_webkitView;
    v7->_webkitView = v11;

    v13 = objc_alloc_init(BCProgressIndicatorView);
    progressIndicatorView = v7->_progressIndicatorView;
    v7->_progressIndicatorView = v13;
  }

  return v7;
}

- (void)loadURL:(id)l
{
  v5 = MEMORY[0x277CCAD20];
  lCopy = l;
  v9 = [[v5 alloc] initWithURL:lCopy];
  webkitView = [(BCWebViewController *)self webkitView];
  v8 = [webkitView loadRequest:v9];

  if (self)
  {
    objc_storeStrong(&self->_originURL, l);

    self->_wasCallbackCaptured = 0;
  }

  else
  {
  }
}

- (void)reload
{
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_236EA0000, v3, OS_LOG_TYPE_DEFAULT, "BCWebViewController: reload", v13, 2u);
  }

  if (self)
  {
    self->_wasCallbackCaptured = 0;
    serverErrorView = self->_serverErrorView;
    if (serverErrorView)
    {
      [(BCServerErrorView *)serverErrorView removeFromSuperview];
      v5 = self->_serverErrorView;
      self->_serverErrorView = 0;
    }

    invalidCertificatView = self->_invalidCertificatView;
    if (invalidCertificatView)
    {
      [(BCInvalidCertificatView *)invalidCertificatView removeFromSuperview];
      v7 = self->_invalidCertificatView;
      self->_invalidCertificatView = 0;
    }
  }

  webkitView = [(BCWebViewController *)self webkitView];
  v9 = [webkitView URL];

  if (v9)
  {
    webkitView2 = [(BCWebViewController *)self webkitView];
    reload = [webkitView2 reload];
  }

  else
  {
    if (self)
    {
      originURL = self->_originURL;
    }

    else
    {
      originURL = 0;
    }

    [(BCWebViewController *)self loadURL:originURL];
  }
}

- (void)updateNavigationBar
{
  v2 = LogCategory_Daemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_236EA0000, v2, OS_LOG_TYPE_DEFAULT, "BCWebViewController: updateNavigationBar", v3, 2u);
  }
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(BCWebViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v30 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = BCWebViewController;
  [(BCWebViewController *)&v26 viewDidLoad];
  [(BCWebViewController *)self setupSubviews];
  [(BCWebViewController *)self setupConstraints];
  if (self)
  {
    v3 = LogCategory_Daemon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_236EA0000, v3, OS_LOG_TYPE_DEFAULT, "BCWebViewController: setupObservers", buf, 2u);
    }

    webkitView = [(BCWebViewController *)self webkitView];
    [webkitView addObserver:self forKeyPath:@"hasOnlySecureContent" options:1 context:0];

    webkitView2 = [(BCWebViewController *)self webkitView];
    [webkitView2 addObserver:self forKeyPath:@"estimatedProgress" options:1 context:0];

    webkitView3 = [(BCWebViewController *)self webkitView];
    [webkitView3 addObserver:self forKeyPath:@"canGoBack" options:1 context:0];

    webkitView4 = [(BCWebViewController *)self webkitView];
    [webkitView4 addObserver:self forKeyPath:@"canGoForward" options:1 context:0];

    [(BCProgressIndicatorView *)self->_progressIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x277CCAAD0];
    v25 = self->_progressIndicatorView;
    topAnchor = [(BCProgressIndicatorView *)v25 topAnchor];
    webkitView5 = [(BCWebViewController *)self webkitView];
    topAnchor2 = [webkitView5 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-0.0];
    *buf = v21;
    v8 = self->_progressIndicatorView;
    leadingAnchor = [(BCProgressIndicatorView *)v8 leadingAnchor];
    webkitView6 = [(BCWebViewController *)self webkitView];
    leadingAnchor2 = [webkitView6 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-0.0];
    v28 = v11;
    v12 = self->_progressIndicatorView;
    trailingAnchor = [(BCProgressIndicatorView *)v12 trailingAnchor];
    webkitView7 = [(BCWebViewController *)self webkitView];
    trailingAnchor2 = [webkitView7 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
    v29 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];
    [v20 activateConstraints:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setupSubviews
{
  v3 = _SFIPhoneSafariUserAgentString();
  webkitView = [(BCWebViewController *)self webkitView];
  [webkitView setCustomUserAgent:v3];

  webkitView2 = [(BCWebViewController *)self webkitView];
  [webkitView2 setNavigationDelegate:self];

  view = [(BCWebViewController *)self view];
  webkitView3 = [(BCWebViewController *)self webkitView];
  [view addSubview:webkitView3];

  view2 = [(BCWebViewController *)self view];
  if (self)
  {
    progressIndicatorView = self->_progressIndicatorView;
  }

  else
  {
    progressIndicatorView = 0;
  }

  v10 = view2;
  [view2 addSubview:progressIndicatorView];
}

- (void)setupConstraints
{
  v27[4] = *MEMORY[0x277D85DE8];
  webkitView = [(BCWebViewController *)self webkitView];
  [webkitView setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = MEMORY[0x277CCAAD0];
  webkitView2 = [(BCWebViewController *)self webkitView];
  topAnchor = [webkitView2 topAnchor];
  view = [(BCWebViewController *)self view];
  topAnchor2 = [view topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[0] = v22;
  webkitView3 = [(BCWebViewController *)self webkitView];
  leftAnchor = [webkitView3 leftAnchor];
  view2 = [(BCWebViewController *)self view];
  leftAnchor2 = [view2 leftAnchor];
  v16 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v27[1] = v16;
  webkitView4 = [(BCWebViewController *)self webkitView];
  rightAnchor = [webkitView4 rightAnchor];
  view3 = [(BCWebViewController *)self view];
  rightAnchor2 = [view3 rightAnchor];
  v7 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v27[2] = v7;
  webkitView5 = [(BCWebViewController *)self webkitView];
  bottomAnchor = [webkitView5 bottomAnchor];
  view4 = [(BCWebViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  [v17 activateConstraints:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)presentCertificatErrorForHost:(id)host
{
  v31 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = hostCopy;
    _os_log_impl(&dword_236EA0000, v5, OS_LOG_TYPE_DEFAULT, "BCWebViewController: presentCertificatErrorForHost: %@", buf, 0xCu);
  }

  v27 = hostCopy;
  v6 = [[BCInvalidCertificatView alloc] initWithHost:hostCopy];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(BCWebViewController *)self view];
  [view addSubview:v6];

  v19 = MEMORY[0x277CCAAD0];
  topAnchor = [v6 topAnchor];
  webkitView = [(BCWebViewController *)self webkitView];
  topAnchor2 = [webkitView topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[0] = v23;
  leftAnchor = [v6 leftAnchor];
  webkitView2 = [(BCWebViewController *)self webkitView];
  leftAnchor2 = [webkitView2 leftAnchor];
  v18 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v28[1] = v18;
  rightAnchor = [v6 rightAnchor];
  webkitView3 = [(BCWebViewController *)self webkitView];
  rightAnchor2 = [webkitView3 rightAnchor];
  v10 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v28[2] = v10;
  bottomAnchor = [v6 bottomAnchor];
  webkitView4 = [(BCWebViewController *)self webkitView];
  bottomAnchor2 = [webkitView4 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v28[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [v19 activateConstraints:v15];

  if (self)
  {
    objc_storeStrong(&self->_invalidCertificatView, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ((!self || !self->_wasCallbackCaptured) && [pathCopy isEqualToString:@"hasOnlySecureContent"])
  {
    delegate = [(BCWebViewController *)self delegate];
    webkitView = [(BCWebViewController *)self webkitView];
    [delegate didChangeSecureStatus:{objc_msgSend(webkitView, "hasOnlySecureContent")}];
  }

  if (([pathCopy isEqualToString:@"canGoBack"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"canGoForward"))
  {
    [(BCWebViewController *)self updateNavigationBar];
  }

  if ([pathCopy isEqualToString:@"estimatedProgress"])
  {
    webkitView2 = [(BCWebViewController *)self webkitView];
    [webkitView2 estimatedProgress];
    v16 = v15;

    if (self)
    {
      [(BCProgressIndicatorView *)self->_progressIndicatorView progress];
      v19 = *&v18;
      progressIndicatorView = self->_progressIndicatorView;
    }

    else
    {
      [0 progress];
      v19 = *&v18;
      progressIndicatorView = 0;
    }

    *&v18 = v16;
    [(BCProgressIndicatorView *)progressIndicatorView setProgress:1 animated:v18];
    if (v16 >= 1.0)
    {
      v17 = v16;
      v21 = dispatch_time(0, (vabds_f32(v17, v19) * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__BCWebViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_278A0E678;
      block[4] = self;
      dispatch_after(v21, MEMORY[0x277D85CD0], block);
    }
  }
}

uint64_t __70__BCWebViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return [(BCProgressIndicatorView *)*(v1 + 1032) hide];
  }

  else
  {
    return [(BCProgressIndicatorView *)0 hide];
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  handlerCopy = handler;
  viewCopy = view;
  request = [actionCopy request];
  v12 = [request URL];

  v13 = LogCategory_Daemon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    baseURL = [v12 baseURL];
    v21 = 138412290;
    v22 = baseURL;
    _os_log_impl(&dword_236EA0000, v13, OS_LOG_TYPE_DEFAULT, "BCWebViewController: decidePolicyFor %@", &v21, 0xCu);
  }

  delegate = [(BCWebViewController *)self delegate];
  v16 = [viewCopy URL];

  [delegate didChangeNavigationURL:v16];
  if ([delegate shouldHandleRedirectURI:v12])
  {
    v17 = LogCategory_Daemon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      baseURL2 = [v12 baseURL];
      v21 = 138412290;
      v22 = baseURL2;
      _os_log_impl(&dword_236EA0000, v17, OS_LOG_TYPE_DEFAULT, "BCWebViewController: capturing URL: %@", &v21, 0xCu);
    }

    if (self)
    {
      self->_wasCallbackCaptured = 1;
    }

    handlerCopy[2](handlerCopy, 0);
    request2 = [actionCopy request];
    [delegate didReceiveCallbackRequest:request2];
  }

  else
  {
    handlerCopy[2](handlerCopy, 1);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  v47 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = errorCopy;
    _os_log_error_impl(&dword_236EA0000, v7, OS_LOG_TYPE_ERROR, "BCWebViewController: didFailProvisionalNavigation error: %@", &buf, 0xCu);
  }

  if (!self || !self->_wasCallbackCaptured)
  {
    delegate = [(BCWebViewController *)self delegate];
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA738]])
    {
      v10 = errorCopy;
      v11 = v10;
      if (self)
      {
        v12 = [v10 code] + 1206;

        if (v12 < 6)
        {
          v13 = LogCategory_Daemon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_236EA0000, v13, OS_LOG_TYPE_DEFAULT, "BCWebViewController: provisional error is related to certificate", &buf, 2u);
          }

          userInfo = [v11 userInfo];
          v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA748]];

          host = [v15 host];
          _webkit_decodeHostName = [host _webkit_decodeHostName];

          [(BCWebViewController *)self presentCertificatErrorForHost:_webkit_decodeHostName];
          [delegate didChangeSecureStatus:0];

          goto LABEL_16;
        }

        goto LABEL_12;
      }
    }

    else
    {

      if (self)
      {
LABEL_12:
        v41 = delegate;
        v42 = errorCopy;
        v18 = LogCategory_Daemon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 0;
          _os_log_impl(&dword_236EA0000, v18, OS_LOG_TYPE_DEFAULT, "BCWebViewController: presentServerError", v43, 2u);
        }

        v19 = objc_opt_new();
        [(BCServerErrorView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
        view = [(BCWebViewController *)self view];
        [view addSubview:v19];

        v33 = MEMORY[0x277CCAAD0];
        topAnchor = [(BCServerErrorView *)v19 topAnchor];
        webkitView = [(BCWebViewController *)self webkitView];
        topAnchor2 = [webkitView topAnchor];
        v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
        *&buf = v37;
        leftAnchor = [(BCServerErrorView *)v19 leftAnchor];
        webkitView2 = [(BCWebViewController *)self webkitView];
        leftAnchor2 = [webkitView2 leftAnchor];
        v32 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
        *(&buf + 1) = v32;
        rightAnchor = [(BCServerErrorView *)v19 rightAnchor];
        webkitView3 = [(BCWebViewController *)self webkitView];
        rightAnchor2 = [webkitView3 rightAnchor];
        v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
        v45 = v23;
        bottomAnchor = [(BCServerErrorView *)v19 bottomAnchor];
        webkitView4 = [(BCWebViewController *)self webkitView];
        bottomAnchor2 = [webkitView4 bottomAnchor];
        v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v46 = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:4];
        [v33 activateConstraints:v28];

        serverErrorView = self->_serverErrorView;
        self->_serverErrorView = v19;

        delegate = v41;
        errorCopy = v42;
      }
    }

    [delegate didChangeSecureStatus:0];
LABEL_16:
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_236EA0000, v5, OS_LOG_TYPE_DEFAULT, "BCWebViewController: didStartProvisionalNavigation", v7, 2u);
  }

  if (self)
  {
    progressIndicatorView = self->_progressIndicatorView;
  }

  else
  {
    progressIndicatorView = 0;
  }

  [(BCProgressIndicatorView *)progressIndicatorView show];
}

- (BCWebViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end