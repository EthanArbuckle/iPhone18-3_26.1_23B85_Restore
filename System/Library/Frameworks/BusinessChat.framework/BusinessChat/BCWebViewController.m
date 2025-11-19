@interface BCWebViewController
- (BCWebViewController)initWithCallbackURI:(id)a3;
- (BCWebViewControllerDelegate)delegate;
- (void)loadURL:(id)a3;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentCertificatErrorForHost:(id)a3;
- (void)reload;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)updateNavigationBar;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
@end

@implementation BCWebViewController

- (BCWebViewController)initWithCallbackURI:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = BCWebViewController;
  v6 = [(BCWebViewController *)&v16 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callbackURI, a3);
    v8 = objc_alloc_init(MEMORY[0x277CE3858]);
    v9 = [MEMORY[0x277CE3868] nonPersistentDataStore];
    [v8 setWebsiteDataStore:v9];

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

- (void)loadURL:(id)a3
{
  v5 = MEMORY[0x277CCAD20];
  v6 = a3;
  v9 = [[v5 alloc] initWithURL:v6];
  v7 = [(BCWebViewController *)self webkitView];
  v8 = [v7 loadRequest:v9];

  if (self)
  {
    objc_storeStrong(&self->_originURL, a3);

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

  v8 = [(BCWebViewController *)self webkitView];
  v9 = [v8 URL];

  if (v9)
  {
    v10 = [(BCWebViewController *)self webkitView];
    v11 = [v10 reload];
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

    v4 = [(BCWebViewController *)self webkitView];
    [v4 addObserver:self forKeyPath:@"hasOnlySecureContent" options:1 context:0];

    v5 = [(BCWebViewController *)self webkitView];
    [v5 addObserver:self forKeyPath:@"estimatedProgress" options:1 context:0];

    v6 = [(BCWebViewController *)self webkitView];
    [v6 addObserver:self forKeyPath:@"canGoBack" options:1 context:0];

    v7 = [(BCWebViewController *)self webkitView];
    [v7 addObserver:self forKeyPath:@"canGoForward" options:1 context:0];

    [(BCProgressIndicatorView *)self->_progressIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x277CCAAD0];
    v25 = self->_progressIndicatorView;
    v23 = [(BCProgressIndicatorView *)v25 topAnchor];
    v24 = [(BCWebViewController *)self webkitView];
    v22 = [v24 topAnchor];
    v21 = [v23 constraintEqualToAnchor:v22 constant:-0.0];
    *buf = v21;
    v8 = self->_progressIndicatorView;
    v19 = [(BCProgressIndicatorView *)v8 leadingAnchor];
    v9 = [(BCWebViewController *)self webkitView];
    v10 = [v9 leadingAnchor];
    v11 = [v19 constraintEqualToAnchor:v10 constant:-0.0];
    v28 = v11;
    v12 = self->_progressIndicatorView;
    v13 = [(BCProgressIndicatorView *)v12 trailingAnchor];
    v14 = [(BCWebViewController *)self webkitView];
    v15 = [v14 trailingAnchor];
    v16 = [v13 constraintEqualToAnchor:v15 constant:0.0];
    v29 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];
    [v20 activateConstraints:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setupSubviews
{
  v3 = _SFIPhoneSafariUserAgentString();
  v4 = [(BCWebViewController *)self webkitView];
  [v4 setCustomUserAgent:v3];

  v5 = [(BCWebViewController *)self webkitView];
  [v5 setNavigationDelegate:self];

  v6 = [(BCWebViewController *)self view];
  v7 = [(BCWebViewController *)self webkitView];
  [v6 addSubview:v7];

  v8 = [(BCWebViewController *)self view];
  if (self)
  {
    progressIndicatorView = self->_progressIndicatorView;
  }

  else
  {
    progressIndicatorView = 0;
  }

  v10 = v8;
  [v8 addSubview:progressIndicatorView];
}

- (void)setupConstraints
{
  v27[4] = *MEMORY[0x277D85DE8];
  v3 = [(BCWebViewController *)self webkitView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = MEMORY[0x277CCAAD0];
  v26 = [(BCWebViewController *)self webkitView];
  v24 = [v26 topAnchor];
  v25 = [(BCWebViewController *)self view];
  v23 = [v25 topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v27[0] = v22;
  v21 = [(BCWebViewController *)self webkitView];
  v19 = [v21 leftAnchor];
  v20 = [(BCWebViewController *)self view];
  v18 = [v20 leftAnchor];
  v16 = [v19 constraintEqualToAnchor:v18];
  v27[1] = v16;
  v15 = [(BCWebViewController *)self webkitView];
  v4 = [v15 rightAnchor];
  v5 = [(BCWebViewController *)self view];
  v6 = [v5 rightAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v27[2] = v7;
  v8 = [(BCWebViewController *)self webkitView];
  v9 = [v8 bottomAnchor];
  v10 = [(BCWebViewController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v27[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  [v17 activateConstraints:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)presentCertificatErrorForHost:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v4;
    _os_log_impl(&dword_236EA0000, v5, OS_LOG_TYPE_DEFAULT, "BCWebViewController: presentCertificatErrorForHost: %@", buf, 0xCu);
  }

  v27 = v4;
  v6 = [[BCInvalidCertificatView alloc] initWithHost:v4];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(BCWebViewController *)self view];
  [v7 addSubview:v6];

  v19 = MEMORY[0x277CCAAD0];
  v25 = [v6 topAnchor];
  v26 = [(BCWebViewController *)self webkitView];
  v24 = [v26 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v28[0] = v23;
  v21 = [v6 leftAnchor];
  v22 = [(BCWebViewController *)self webkitView];
  v20 = [v22 leftAnchor];
  v18 = [v21 constraintEqualToAnchor:v20];
  v28[1] = v18;
  v17 = [v6 rightAnchor];
  v8 = [(BCWebViewController *)self webkitView];
  v9 = [v8 rightAnchor];
  v10 = [v17 constraintEqualToAnchor:v9];
  v28[2] = v10;
  v11 = [v6 bottomAnchor];
  v12 = [(BCWebViewController *)self webkitView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v28[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [v19 activateConstraints:v15];

  if (self)
  {
    objc_storeStrong(&self->_invalidCertificatView, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ((!self || !self->_wasCallbackCaptured) && [v9 isEqualToString:@"hasOnlySecureContent"])
  {
    v12 = [(BCWebViewController *)self delegate];
    v13 = [(BCWebViewController *)self webkitView];
    [v12 didChangeSecureStatus:{objc_msgSend(v13, "hasOnlySecureContent")}];
  }

  if (([v9 isEqualToString:@"canGoBack"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"canGoForward"))
  {
    [(BCWebViewController *)self updateNavigationBar];
  }

  if ([v9 isEqualToString:@"estimatedProgress"])
  {
    v14 = [(BCWebViewController *)self webkitView];
    [v14 estimatedProgress];
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

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 request];
  v12 = [v11 URL];

  v13 = LogCategory_Daemon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 baseURL];
    v21 = 138412290;
    v22 = v14;
    _os_log_impl(&dword_236EA0000, v13, OS_LOG_TYPE_DEFAULT, "BCWebViewController: decidePolicyFor %@", &v21, 0xCu);
  }

  v15 = [(BCWebViewController *)self delegate];
  v16 = [v10 URL];

  [v15 didChangeNavigationURL:v16];
  if ([v15 shouldHandleRedirectURI:v12])
  {
    v17 = LogCategory_Daemon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v12 baseURL];
      v21 = 138412290;
      v22 = v18;
      _os_log_impl(&dword_236EA0000, v17, OS_LOG_TYPE_DEFAULT, "BCWebViewController: capturing URL: %@", &v21, 0xCu);
    }

    if (self)
    {
      self->_wasCallbackCaptured = 1;
    }

    v9[2](v9, 0);
    v19 = [v8 request];
    [v15 didReceiveCallbackRequest:v19];
  }

  else
  {
    v9[2](v9, 1);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_error_impl(&dword_236EA0000, v7, OS_LOG_TYPE_ERROR, "BCWebViewController: didFailProvisionalNavigation error: %@", &buf, 0xCu);
  }

  if (!self || !self->_wasCallbackCaptured)
  {
    v8 = [(BCWebViewController *)self delegate];
    v9 = [v6 domain];
    if ([v9 isEqualToString:*MEMORY[0x277CCA738]])
    {
      v10 = v6;
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

          v14 = [v11 userInfo];
          v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA748]];

          v16 = [v15 host];
          v17 = [v16 _webkit_decodeHostName];

          [(BCWebViewController *)self presentCertificatErrorForHost:v17];
          [v8 didChangeSecureStatus:0];

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
        v41 = v8;
        v42 = v6;
        v18 = LogCategory_Daemon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 0;
          _os_log_impl(&dword_236EA0000, v18, OS_LOG_TYPE_DEFAULT, "BCWebViewController: presentServerError", v43, 2u);
        }

        v19 = objc_opt_new();
        [(BCServerErrorView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
        v20 = [(BCWebViewController *)self view];
        [v20 addSubview:v19];

        v33 = MEMORY[0x277CCAAD0];
        v39 = [(BCServerErrorView *)v19 topAnchor];
        v40 = [(BCWebViewController *)self webkitView];
        v38 = [v40 topAnchor];
        v37 = [v39 constraintEqualToAnchor:v38];
        *&buf = v37;
        v35 = [(BCServerErrorView *)v19 leftAnchor];
        v36 = [(BCWebViewController *)self webkitView];
        v34 = [v36 leftAnchor];
        v32 = [v35 constraintEqualToAnchor:v34];
        *(&buf + 1) = v32;
        v31 = [(BCServerErrorView *)v19 rightAnchor];
        v21 = [(BCWebViewController *)self webkitView];
        v22 = [v21 rightAnchor];
        v23 = [v31 constraintEqualToAnchor:v22];
        v45 = v23;
        v24 = [(BCServerErrorView *)v19 bottomAnchor];
        v25 = [(BCWebViewController *)self webkitView];
        v26 = [v25 bottomAnchor];
        v27 = [v24 constraintEqualToAnchor:v26];
        v46 = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:4];
        [v33 activateConstraints:v28];

        serverErrorView = self->_serverErrorView;
        self->_serverErrorView = v19;

        v8 = v41;
        v6 = v42;
      }
    }

    [v8 didChangeSecureStatus:0];
LABEL_16:
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
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