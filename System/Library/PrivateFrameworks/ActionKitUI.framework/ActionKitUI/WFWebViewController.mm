@interface WFWebViewController
- (WFWebViewController)initWithNibName:(id)name bundle:(id)bundle;
- (WFWebViewController)initWithWebView:(id)view;
- (WFWebViewControllerDelegate)delegate;
- (void)cancel;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)done;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setDelegate:(id)delegate;
- (void)updateNavigationItems;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action preferences:(id)preferences decisionHandler:(id)handler;
@end

@implementation WFWebViewController

- (WFWebViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)done
{
  delegate = [(WFWebViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFWebViewController *)self delegate];
    [delegate2 webViewControllerDidFinish:self];
  }
}

- (void)cancel
{
  delegate = [(WFWebViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFWebViewController *)self delegate];
    [delegate2 webViewControllerDidCancel:self];
  }
}

- (void)loadView
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WFWebViewController;
  [(WFWebViewController *)&v28 loadView];
  webView = [(WFWebViewController *)self webView];
  [webView setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(WFWebViewController *)self view];
  [view addSubview:webView];

  v27 = objc_opt_new();
  [v27 configureWithOpaqueBackground];
  navigationController = [(WFWebViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setScrollEdgeAppearance:v27];

  v18 = MEMORY[0x277CCAAD0];
  topAnchor = [webView topAnchor];
  view2 = [(WFWebViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[0] = v22;
  bottomAnchor = [webView bottomAnchor];
  view3 = [(WFWebViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[1] = v17;
  leadingAnchor = [webView leadingAnchor];
  view4 = [(WFWebViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[2] = v10;
  trailingAnchor = [webView trailingAnchor];
  view5 = [(WFWebViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  [v18 activateConstraints:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (WFWebViewControllerTitleContext == context)
  {
    v8 = [(WFWebViewController *)self webView:path];
    title = [v8 title];
    [(WFWebViewController *)self setTitle:title];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFWebViewController;
    [(WFWebViewController *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)updateNavigationItems
{
  navigationController = [(WFWebViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];
  v6 = [firstObject isEqual:self];

  if (!v6)
  {
    navigationItem = [(WFWebViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:0];

    navigationItem2 = [(WFWebViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
    goto LABEL_7;
  }

  delegate = [(WFWebViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
    navigationItem3 = [(WFWebViewController *)self navigationItem];
    [navigationItem3 setLeftBarButtonItem:v9];
  }

  delegate2 = [(WFWebViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_done];
    navigationItem4 = [(WFWebViewController *)self navigationItem];
    [navigationItem4 setRightBarButtonItem:v13];

    navigationItem2 = [(WFWebViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem2 rightBarButtonItem];
    [rightBarButtonItem setStyle:2];

LABEL_7:
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = WFWebViewController;
  [(WFWebViewController *)&v4 didMoveToParentViewController:controller];
  [(WFWebViewController *)self updateNavigationItems];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(WFWebViewController *)self updateNavigationItems];
}

- (void)dealloc
{
  [(WFWebViewController *)self removeObserver:self forKeyPath:@"webView.title" context:WFWebViewControllerTitleContext];
  v3.receiver = self;
  v3.super_class = WFWebViewController;
  [(WFWebViewController *)&v3 dealloc];
}

- (WFWebViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = WFWebViewController;
  v4 = [(WFWebViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(WFWebViewController *)v4 updateNavigationItems];
    [(WFWebViewController *)v5 addObserver:v5 forKeyPath:@"webView.title" options:0 context:WFWebViewControllerTitleContext];
  }

  return v5;
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action preferences:(id)preferences decisionHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  preferencesCopy = preferences;
  handlerCopy = handler;
  targetFrame = [actionCopy targetFrame];
  isMainFrame = [targetFrame isMainFrame];

  if ((isMainFrame & 1) == 0)
  {
    [preferencesCopy setAllowsContentJavaScript:0];
    v13 = getWFSecurityLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      request = [actionCopy request];
      v15 = [request URL];
      *buf = 136315394;
      v39 = "[WFWebViewController webView:decidePolicyForNavigationAction:preferences:decisionHandler:]";
      v40 = 2112;
      v41 = v15;
      _os_log_impl(&dword_23E342000, v13, OS_LOG_TYPE_DEBUG, "%s Disabled JavaScript for iframe navigation to: %@", buf, 0x16u);
    }
  }

  if ([actionCopy _wk_shouldAskAboutInsecureFormSubmission])
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
    v22 = handlerCopy;
    v37 = v22;
    v23 = preferencesCopy;
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
    (*(handlerCopy + 2))(handlerCopy, 1, preferencesCopy);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (WFWebViewController)initWithWebView:(id)view
{
  viewCopy = view;
  v5 = [(WFWebViewController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(WFWebViewController *)v5 setWebView:viewCopy];
    webView = [(WFWebViewController *)v6 webView];
    [webView setNavigationDelegate:v6];
  }

  return v6;
}

@end