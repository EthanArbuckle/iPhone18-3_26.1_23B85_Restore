@interface QLWebLocationItemViewController
- (BOOL)canPinchToDismiss;
- (id)accessoryView;
- (id)toolbarButtonsForTraitCollection:(id)a3;
- (void)_updateConstraintConstants:(BOOL)a3;
- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)previewIsAppearingWithProgress:(double)a3;
@end

@implementation QLWebLocationItemViewController

- (void)loadView
{
  v37[1] = *MEMORY[0x277D85DE8];
  if (!self->_webView)
  {
    v3 = objc_opt_new();
    [(QLWebLocationItemViewController *)self setView:v3];

    v4 = objc_alloc(MEMORY[0x277CE3858]);
    v5 = [(QLItemViewController *)self presentingDelegate];
    v6 = [v5 hostApplicationBundleIdentifier];
    v7 = [v4 ql_initWithForegroundPriorityAndSourceBundleIdentifier:v6];

    v8 = objc_alloc(MEMORY[0x277CE3850]);
    v9 = [(QLWebLocationItemViewController *)self view];
    [v9 bounds];
    v10 = [v8 initWithFrame:v7 configuration:?];
    webView = self->_webView;
    self->_webView = v10;

    v12 = [(QLWebLocationItemViewController *)self view];
    [v12 addSubview:self->_webView];

    v13 = [(QLWebLocationItemViewController *)self scrollView];
    [v13 setContentInsetAdjustmentBehavior:2];

    [(WKWebView *)self->_webView setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(WKWebView *)self->_webView leftAnchor];
    v15 = [(QLWebLocationItemViewController *)self view];
    v16 = [v15 leftAnchor];
    v17 = [(QLItemViewController *)self appearance];
    [v17 peripheryInsets];
    v19 = [v14 constraintEqualToAnchor:v16 constant:v18];
    v20 = [v19 ql_activatedConstraint];
    leftConstraint = self->_leftConstraint;
    self->_leftConstraint = v20;

    v22 = [(QLWebLocationItemViewController *)self view];
    v23 = [v22 rightAnchor];
    v24 = [(WKWebView *)self->_webView rightAnchor];
    v25 = [(QLItemViewController *)self appearance];
    [v25 peripheryInsets];
    v27 = [v23 constraintEqualToAnchor:v24 constant:v26];
    v28 = [v27 ql_activatedConstraint];
    rightConstraint = self->_rightConstraint;
    self->_rightConstraint = v28;

    v30 = [(QLWebLocationItemViewController *)self view];
    v31 = MEMORY[0x277CCAAD0];
    v32 = self->_webView;
    v36 = @"webView";
    v37[0] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v34 = [v31 constraintsWithVisualFormat:@"V:|[webView]|" options:0 metrics:0 views:v33];
    [v30 addConstraints:v34];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v7 = MEMORY[0x277CBEBC0];
  v8 = a5;
  v9 = [a3 objectForKeyedSubscript:@"URL"];
  v15 = [v7 URLWithString:v9];

  if (v15)
  {
    [(QLWebLocationItemViewController *)self loadViewIfNeeded];
    [(WKWebView *)self->_webView addObserver:self forKeyPath:@"estimatedProgress" options:1 context:0];
    webView = self->_webView;
    v11 = [MEMORY[0x277CCAD20] requestWithURL:v15];
    v12 = [(WKWebView *)webView loadRequest:v11];

    v13 = [(QLWebLocationItemViewController *)self scrollView];
    [v13 setContentInsetAdjustmentBehavior:2];

    v8[2](v8, 0);
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.QLWebLocationItemViewController" code:0 userInfo:0];
    v8[2](v8, v14);

    v8 = v14;
  }
}

- (void)previewIsAppearingWithProgress:(double)a3
{
  v6.receiver = self;
  v6.super_class = QLWebLocationItemViewController;
  [(QLItemViewController *)&v6 previewIsAppearingWithProgress:?];
  v5 = [(QLWebLocationItemViewController *)self accessoryView];
  [v5 setAlpha:a3];
}

- (void)dealloc
{
  [(WKWebView *)self->_webView removeObserver:self forKeyPath:@"estimatedProgress"];
  v3.receiver = self;
  v3.super_class = QLWebLocationItemViewController;
  [(QLWebLocationItemViewController *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_loadingHandler)
  {
    if (self->_webView == v9)
    {
      if ([v12 isEqualToString:@"estimatedProgress"])
      {
        [(WKWebView *)self->_webView estimatedProgress];
        if (v11 == 1.0)
        {
          (*(self->_loadingHandler + 2))();
        }
      }
    }
  }
}

- (BOOL)canPinchToDismiss
{
  v2 = [(QLWebLocationItemViewController *)self scrollView];
  v3 = v2;
  if (v2)
  {
    [v2 zoomScale];
    v5 = v4;
    [v3 minimumZoomScale];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accessoryView
{
  locationViewContainer = self->_locationViewContainer;
  if (!locationViewContainer)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(QLItemViewController *)self contents];
    v6 = [v5 objectForKeyedSubscript:@"URL"];
    v7 = [v4 URLWithString:v6];

    v8 = [_TtC9QuickLook29QLWebLocationBarViewInterface makeLocationBarUI:v7];
    v9 = [v8 view];
    locationView = self->_locationView;
    self->_locationView = v9;

    v11 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)self->_locationView setBackgroundColor:v11];

    v12 = objc_opt_new();
    v13 = self->_locationViewContainer;
    self->_locationViewContainer = v12;

    [(UIView *)self->_locationViewContainer addSubview:self->_locationView];
    locationViewContainer = self->_locationViewContainer;
  }

  [(UIView *)locationViewContainer bounds];
  [(UIView *)self->_locationView setFrame:?];
  v14 = self->_locationView;

  return v14;
}

- (id)toolbarButtonsForTraitCollection:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D43FB0]) initWithIdentifier:@"QLSafariButtonIdentifier"];
  [v3 setSymbolImageName:@"safari"];
  [v3 setPlacement:2];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"QLSafariButtonIdentifier"])
  {
    v8 = [(QLItemViewController *)self contents];
    v9 = [v8 objectForKeyedSubscript:@"URL"];

    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    v11 = MEMORY[0x277D43EF8];
    v12 = *MEMORY[0x277D43EF8];
    if (v10)
    {
      if (!v12)
      {
        QLSInitLogging();
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23A714000, v12, OS_LOG_TYPE_DEFAULT, "Will open URL #AnyItemViewController", buf, 2u);
      }

      v13 = [MEMORY[0x277D75128] sharedApplication];
      v19 = *MEMORY[0x277D766B8];
      v20[0] = MEMORY[0x277CBEC38];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v13 openURL:v10 options:v14 completionHandler:&__block_literal_global_8];
    }

    else
    {
      if (!v12)
      {
        QLSInitLogging();
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&dword_23A714000, v12, OS_LOG_TYPE_ERROR, "Safari button tapped but the URL is invalid: %@ #AnyItemViewController", buf, 0xCu);
      }
    }

    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = QLWebLocationItemViewController;
    [(QLItemViewController *)&v16 buttonPressedWithIdentifier:v6 completionHandler:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __81__QLWebLocationItemViewController_buttonPressedWithIdentifier_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_DEFAULT, "The url was opened successfully: %d #AnyItemViewController", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateConstraintConstants:(BOOL)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__QLWebLocationItemViewController__updateConstraintConstants___block_invoke;
  aBlock[3] = &unk_278B57190;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (v3)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.2];
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

void __62__QLWebLocationItemViewController__updateConstraintConstants___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appearance];
  [v2 peripheryInsets];
  [*(*(a1 + 32) + 1160) setConstant:v3];

  v4 = [*(a1 + 32) appearance];
  [v4 peripheryInsets];
  [*(*(a1 + 32) + 1168) setConstant:v5];

  v6 = [*(a1 + 32) view];
  [v6 setNeedsLayout];
}

@end