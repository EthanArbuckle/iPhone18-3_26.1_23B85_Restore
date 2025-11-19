@interface WFWebViewController
- (WFWebViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WFWebViewController)initWithWebView:(id)a3;
- (WFWebViewControllerDelegate)delegate;
- (void)cancel;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)done;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setDelegate:(id)a3;
- (void)updateNavigationItems;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 preferences:(id)a5 decisionHandler:(id)a6;
@end

@implementation WFWebViewController

- (WFWebViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)done
{
  v3 = [(WFWebViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFWebViewController *)self delegate];
    [v5 webViewControllerDidFinish:self];
  }
}

- (void)cancel
{
  v3 = [(WFWebViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFWebViewController *)self delegate];
    [v5 webViewControllerDidCancel:self];
  }
}

- (void)loadView
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WFWebViewController;
  [(WFWebViewController *)&v28 loadView];
  v3 = [(WFWebViewController *)self webView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(WFWebViewController *)self view];
  [v4 addSubview:v3];

  v27 = objc_opt_new();
  [v27 configureWithOpaqueBackground];
  v5 = [(WFWebViewController *)self navigationController];
  v6 = [v5 navigationBar];
  [v6 setScrollEdgeAppearance:v27];

  v18 = MEMORY[0x277CCAAD0];
  v25 = [v3 topAnchor];
  v26 = [(WFWebViewController *)self view];
  v24 = [v26 safeAreaLayoutGuide];
  v23 = [v24 topAnchor];
  v22 = [v25 constraintEqualToAnchor:v23];
  v29[0] = v22;
  v20 = [v3 bottomAnchor];
  v21 = [(WFWebViewController *)self view];
  v19 = [v21 bottomAnchor];
  v17 = [v20 constraintEqualToAnchor:v19];
  v29[1] = v17;
  v7 = [v3 leadingAnchor];
  v8 = [(WFWebViewController *)self view];
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v29[2] = v10;
  v11 = [v3 trailingAnchor];
  v12 = [(WFWebViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v29[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  [v18 activateConstraints:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (WFWebViewControllerTitleContext == a6)
  {
    v8 = [(WFWebViewController *)self webView:a3];
    v7 = [v8 title];
    [(WFWebViewController *)self setTitle:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFWebViewController;
    [(WFWebViewController *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)updateNavigationItems
{
  v3 = [(WFWebViewController *)self navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 firstObject];
  v6 = [v5 isEqual:self];

  if (!v6)
  {
    v16 = [(WFWebViewController *)self navigationItem];
    [v16 setLeftBarButtonItem:0];

    v17 = [(WFWebViewController *)self navigationItem];
    [v17 setRightBarButtonItem:0];
    goto LABEL_7;
  }

  v7 = [(WFWebViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
    v10 = [(WFWebViewController *)self navigationItem];
    [v10 setLeftBarButtonItem:v9];
  }

  v11 = [(WFWebViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_done];
    v14 = [(WFWebViewController *)self navigationItem];
    [v14 setRightBarButtonItem:v13];

    v17 = [(WFWebViewController *)self navigationItem];
    v15 = [v17 rightBarButtonItem];
    [v15 setStyle:2];

LABEL_7:
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = WFWebViewController;
  [(WFWebViewController *)&v4 didMoveToParentViewController:a3];
  [(WFWebViewController *)self updateNavigationItems];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(WFWebViewController *)self updateNavigationItems];
}

- (void)dealloc
{
  [(WFWebViewController *)self removeObserver:self forKeyPath:@"webView.title" context:WFWebViewControllerTitleContext];
  v3.receiver = self;
  v3.super_class = WFWebViewController;
  [(WFWebViewController *)&v3 dealloc];
}

- (WFWebViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = WFWebViewController;
  v4 = [(WFWebViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(WFWebViewController *)v4 updateNavigationItems];
    [(WFWebViewController *)v5 addObserver:v5 forKeyPath:@"webView.title" options:0 context:WFWebViewControllerTitleContext];
  }

  return v5;
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 preferences:(id)a5 decisionHandler:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [v8 targetFrame];
  v12 = [v11 isMainFrame];

  if ((v12 & 1) == 0)
  {
    [v9 setAllowsContentJavaScript:0];
    v13 = getWFSecurityLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v8 request];
      v15 = [v14 URL];
      *buf = 136315394;
      v39 = "[WFWebViewController webView:decidePolicyForNavigationAction:preferences:decisionHandler:]";
      v40 = 2112;
      v41 = v15;
      _os_log_impl(&dword_23E342000, v13, OS_LOG_TYPE_DEBUG, "%s Disabled JavaScript for iframe navigation to: %@", buf, 0x16u);
    }
  }

  if ([v8 _wk_shouldAskAboutInsecureFormSubmission])
  {
    v16 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
    v17 = WFLocalizedString(@"This is a non-secure form.");
    [v16 setTitle:v17];

    v18 = WFLocalizedString(@"This form will be sent in a way that is not secure. Are you sure you want to send it?");
    [v16 setMessage:v18];

    v19 = [MEMORY[0x277D79FC8] imageNamed:@"Privacy" inBundle:0];
    [v16 setIcon:v19];

    v20 = MEMORY[0x277CFC220];
    v21 = WFLocalizedString(@"Submit");
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __91__WFWebViewController_webView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke;
    v35[3] = &unk_278C375C8;
    v22 = v10;
    v37 = v22;
    v23 = v9;
    v36 = v23;
    v24 = [v20 buttonWithTitle:v21 style:0 handler:v35];
    [v16 addButton:v24];

    v25 = MEMORY[0x277CFC220];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __91__WFWebViewController_webView_decidePolicyForNavigationAction_preferences_decisionHandler___block_invoke_2;
    v32 = &unk_278C375C8;
    v34 = v22;
    v33 = v23;
    v26 = [v25 cancelButtonWithHandler:&v29];
    [v16 addButton:{v26, v29, v30, v31, v32}];

    v27 = WFUserInterfaceFromViewController();
    [v27 presentAlert:v16];
  }

  else
  {
    (*(v10 + 2))(v10, 1, v9);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (WFWebViewController)initWithWebView:(id)a3
{
  v4 = a3;
  v5 = [(WFWebViewController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(WFWebViewController *)v5 setWebView:v4];
    v7 = [(WFWebViewController *)v6 webView];
    [v7 setNavigationDelegate:v6];
  }

  return v6;
}

@end