@interface AKIDPProvidedSignInViewController
- (AKIDPProvidedSignInViewController)initWithIDPHandler:(id)handler;
- (void)IDPHandler:(id)handler didFinishLoadingPageInWebView:(id)view;
- (void)IDPHandler:(id)handler didStartLoadingPageInWebView:(id)view;
- (void)_cancelBarButtonPressed:(id)pressed;
- (void)_setNavigationTitle:(id)title;
- (void)loadView;
- (void)setupTitleView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AKIDPProvidedSignInViewController

- (AKIDPProvidedSignInViewController)initWithIDPHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKIDPProvidedSignInViewController;
  v8 = [(AKIDPProvidedSignInViewController *)&v9 initWithNibName:0 bundle:?];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_idpHandler, location[0]);
    [(AKIDPHandler *)selfCopy->_idpHandler setDelegate:selfCopy];
    v4 = [MEMORY[0x277CE3850] ak_idpWebViewWithFrame:location[0] idpHandler:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    webView = selfCopy->_webView;
    selfCopy->_webView = v4;
    MEMORY[0x277D82BD8](webView);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)loadView
{
  webView = [(AKIDPProvidedSignInViewController *)self webView];
  [(AKIDPProvidedSignInViewController *)self setView:?];
  MEMORY[0x277D82BD8](webView);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKIDPProvidedSignInViewController;
  [(AKIDPProvidedSignInViewController *)&v2 viewDidLoad];
  [(AKIDPProvidedSignInViewController *)selfCopy setupTitleView];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v11 = a2;
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = AKIDPProvidedSignInViewController;
  [(AKIDPProvidedSignInViewController *)&v9 viewWillAppear:appear];
  v3 = selfCopy;
  idpHandler = [(AKIDPProvidedSignInViewController *)selfCopy idpHandler];
  configuration = [(AKIDPHandler *)idpHandler configuration];
  request = [(AKServerRequestConfiguration *)configuration request];
  v5 = [request URL];
  host = [v5 host];
  [(AKIDPProvidedSignInViewController *)v3 _setNavigationTitle:?];
  MEMORY[0x277D82BD8](host);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](request);
  MEMORY[0x277D82BD8](configuration);
  MEMORY[0x277D82BD8](idpHandler);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v10 = a2;
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = AKIDPProvidedSignInViewController;
  [(AKIDPProvidedSignInViewController *)&v8 viewDidAppear:appear];
  [(AKIDPProvidedSignInViewController *)selfCopy setEdgesForExtendedLayout:0];
  webView = [(AKIDPProvidedSignInViewController *)selfCopy webView];
  idpHandler = [(AKIDPProvidedSignInViewController *)selfCopy idpHandler];
  configuration = [(AKIDPHandler *)idpHandler configuration];
  request = [(AKServerRequestConfiguration *)configuration request];
  v3 = [(WKWebView *)webView loadRequest:?];
  MEMORY[0x277D82BD8](request);
  MEMORY[0x277D82BD8](configuration);
  MEMORY[0x277D82BD8](idpHandler);
  MEMORY[0x277D82BD8](webView);
}

- (void)_cancelBarButtonPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  idpHandler = [(AKIDPProvidedSignInViewController *)selfCopy idpHandler];
  [(AKIDPHandler *)idpHandler cancel];
  MEMORY[0x277D82BD8](idpHandler);
  objc_storeStrong(location, 0);
}

- (void)setupTitleView
{
  v37[2] = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  v35 = 1;
  if (userInterfaceIdiom != 1)
  {
    v35 = userInterfaceIdiom == 5;
  }

  if (v35)
  {
    navigationController = [(AKIDPProvidedSignInViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setBackgroundImage:0 forBarMetrics:0];
    MEMORY[0x277D82BD8](navigationBar);
    MEMORY[0x277D82BD8](navigationController);
  }

  navigationController2 = [(AKIDPProvidedSignInViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 _setHidesShadow:0];
  MEMORY[0x277D82BD8](navigationBar2);
  MEMORY[0x277D82BD8](navigationController2);
  v6 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = MEMORY[0x277D755B8];
  v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v8 = [v5 imageNamed:@"LockIcon" inBundle:?];
  v7 = [v6 initWithImage:?];
  [(AKIDPProvidedSignInViewController *)self setSecureIconView:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  secureIconView = [(AKIDPProvidedSignInViewController *)self secureIconView];
  [(UIImageView *)secureIconView setContentMode:4];
  MEMORY[0x277D82BD8](secureIconView);
  systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
  secureIconView2 = [(AKIDPProvidedSignInViewController *)self secureIconView];
  [(UIImageView *)secureIconView2 setTintColor:systemGreenColor];
  MEMORY[0x277D82BD8](secureIconView2);
  MEMORY[0x277D82BD8](systemGreenColor);
  secureIconView3 = [(AKIDPProvidedSignInViewController *)self secureIconView];
  [(UIImageView *)secureIconView3 setHidden:1];
  MEMORY[0x277D82BD8](secureIconView3);
  secureIconView4 = [(AKIDPProvidedSignInViewController *)self secureIconView];
  [(UIImageView *)secureIconView4 setAlpha:0.0];
  MEMORY[0x277D82BD8](secureIconView4);
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v15 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKIDPProvidedSignInViewController *)self setTitleLabel:?];
  MEMORY[0x277D82BD8](v15);
  webView = [(AKIDPProvidedSignInViewController *)self webView];
  title = [(WKWebView *)webView title];
  titleLabel = [(AKIDPProvidedSignInViewController *)self titleLabel];
  [(UILabel *)titleLabel setText:title];
  MEMORY[0x277D82BD8](titleLabel);
  MEMORY[0x277D82BD8](title);
  MEMORY[0x277D82BD8](webView);
  v20 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76998] maximumContentSizeCategory:*MEMORY[0x277D76838]];
  titleLabel2 = [(AKIDPProvidedSignInViewController *)self titleLabel];
  [(UILabel *)titleLabel2 setFont:v20];
  MEMORY[0x277D82BD8](titleLabel2);
  MEMORY[0x277D82BD8](v20);
  v21 = objc_alloc(MEMORY[0x277D75A68]);
  secureIconView5 = [(AKIDPProvidedSignInViewController *)self secureIconView];
  v37[0] = secureIconView5;
  titleLabel3 = [(AKIDPProvidedSignInViewController *)self titleLabel];
  v37[1] = titleLabel3;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v22 = [v21 initWithArrangedSubviews:?];
  [(AKIDPProvidedSignInViewController *)self setTitleStackView:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](titleLabel3);
  MEMORY[0x277D82BD8](secureIconView5);
  titleStackView = [(AKIDPProvidedSignInViewController *)self titleStackView];
  [(UIStackView *)titleStackView setSpacing:6.0];
  MEMORY[0x277D82BD8](titleStackView);
  titleStackView2 = [(AKIDPProvidedSignInViewController *)self titleStackView];
  navigationItem = [(AKIDPProvidedSignInViewController *)self navigationItem];
  [navigationItem setTitleView:titleStackView2];
  MEMORY[0x277D82BD8](navigationItem);
  MEMORY[0x277D82BD8](titleStackView2);
  v30 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelBarButtonPressed_];
  navigationItem2 = [(AKIDPProvidedSignInViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v30];
  MEMORY[0x277D82BD8](navigationItem2);
  MEMORY[0x277D82BD8](v30);
  *MEMORY[0x277D85DE8];
}

- (void)_setNavigationTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  v12 = userInterfaceIdiom;
  v9 = 1;
  if (userInterfaceIdiom != 1)
  {
    v9 = v12 == 5;
  }

  if (v9)
  {
    v5 = location[0];
    titleLabel = [(AKIDPProvidedSignInViewController *)selfCopy titleLabel];
    [(UILabel *)titleLabel setText:v5];
    MEMORY[0x277D82BD8](titleLabel);
  }

  else
  {
    v3 = location[0];
    navigationItem = [(AKIDPProvidedSignInViewController *)selfCopy navigationItem];
    [navigationItem setPrompt:v3];
    MEMORY[0x277D82BD8](navigationItem);
  }

  objc_storeStrong(location, 0);
}

- (void)IDPHandler:(id)handler didFinishLoadingPageInWebView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v16 = 0;
  objc_storeStrong(&v16, view);
  title = [v16 title];
  titleLabel = [(AKIDPProvidedSignInViewController *)selfCopy titleLabel];
  [(UILabel *)titleLabel setText:title];
  MEMORY[0x277D82BD8](titleLabel);
  MEMORY[0x277D82BD8](title);
  v15 = [v16 hasOnlySecureContent] == 0;
  secureIconView = [(AKIDPProvidedSignInViewController *)selfCopy secureIconView];
  [(UIImageView *)secureIconView setHidden:v15];
  MEMORY[0x277D82BD8](secureIconView);
  v8 = MEMORY[0x277D75D18];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __78__AKIDPProvidedSignInViewController_IDPHandler_didFinishLoadingPageInWebView___block_invoke;
  v12 = &unk_2784A5EC8;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = v15;
  [v8 animateWithDuration:0.3 animations:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

uint64_t __78__AKIDPProvidedSignInViewController_IDPHandler_didFinishLoadingPageInWebView___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if ((*(a1 + 40) & 1) == 0)
  {
    v1 = 1.0;
  }

  v3 = v1;
  v4 = [*(a1 + 32) secureIconView];
  [v4 setAlpha:v3];
  return MEMORY[0x277D82BD8](v4);
}

- (void)IDPHandler:(id)handler didStartLoadingPageInWebView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v8 = 0;
  objc_storeStrong(&v8, view);
  v5 = selfCopy;
  v7 = [v8 URL];
  host = [v7 host];
  [(AKIDPProvidedSignInViewController *)v5 _setNavigationTitle:?];
  MEMORY[0x277D82BD8](host);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

@end