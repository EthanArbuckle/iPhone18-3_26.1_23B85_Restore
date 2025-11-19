@interface AKIDPProvidedSignInViewController
- (AKIDPProvidedSignInViewController)initWithIDPHandler:(id)a3;
- (void)IDPHandler:(id)a3 didFinishLoadingPageInWebView:(id)a4;
- (void)IDPHandler:(id)a3 didStartLoadingPageInWebView:(id)a4;
- (void)_cancelBarButtonPressed:(id)a3;
- (void)_setNavigationTitle:(id)a3;
- (void)loadView;
- (void)setupTitleView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AKIDPProvidedSignInViewController

- (AKIDPProvidedSignInViewController)initWithIDPHandler:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = AKIDPProvidedSignInViewController;
  v8 = [(AKIDPProvidedSignInViewController *)&v9 initWithNibName:0 bundle:?];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    objc_storeStrong(&v11->_idpHandler, location[0]);
    [(AKIDPHandler *)v11->_idpHandler setDelegate:v11];
    v4 = [MEMORY[0x277CE3850] ak_idpWebViewWithFrame:location[0] idpHandler:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    webView = v11->_webView;
    v11->_webView = v4;
    MEMORY[0x277D82BD8](webView);
  }

  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)loadView
{
  v2 = [(AKIDPProvidedSignInViewController *)self webView];
  [(AKIDPProvidedSignInViewController *)self setView:?];
  MEMORY[0x277D82BD8](v2);
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKIDPProvidedSignInViewController;
  [(AKIDPProvidedSignInViewController *)&v2 viewDidLoad];
  [(AKIDPProvidedSignInViewController *)v4 setupTitleView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = AKIDPProvidedSignInViewController;
  [(AKIDPProvidedSignInViewController *)&v9 viewWillAppear:a3];
  v3 = v12;
  v8 = [(AKIDPProvidedSignInViewController *)v12 idpHandler];
  v7 = [(AKIDPHandler *)v8 configuration];
  v6 = [(AKServerRequestConfiguration *)v7 request];
  v5 = [v6 URL];
  v4 = [v5 host];
  [(AKIDPProvidedSignInViewController *)v3 _setNavigationTitle:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
}

- (void)viewDidAppear:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8.receiver = self;
  v8.super_class = AKIDPProvidedSignInViewController;
  [(AKIDPProvidedSignInViewController *)&v8 viewDidAppear:a3];
  [(AKIDPProvidedSignInViewController *)v11 setEdgesForExtendedLayout:0];
  v7 = [(AKIDPProvidedSignInViewController *)v11 webView];
  v6 = [(AKIDPProvidedSignInViewController *)v11 idpHandler];
  v5 = [(AKIDPHandler *)v6 configuration];
  v4 = [(AKServerRequestConfiguration *)v5 request];
  v3 = [(WKWebView *)v7 loadRequest:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
}

- (void)_cancelBarButtonPressed:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKIDPProvidedSignInViewController *)v5 idpHandler];
  [(AKIDPHandler *)v3 cancel];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)setupTitleView
{
  v37[2] = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277D75418] currentDevice];
  v34 = [v33 userInterfaceIdiom];
  MEMORY[0x277D82BD8](v33);
  v35 = 1;
  if (v34 != 1)
  {
    v35 = v34 == 5;
  }

  if (v35)
  {
    v32 = [(AKIDPProvidedSignInViewController *)self navigationController];
    v31 = [v32 navigationBar];
    [v31 setBackgroundImage:0 forBarMetrics:0];
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
  }

  v4 = [(AKIDPProvidedSignInViewController *)self navigationController];
  v3 = [v4 navigationBar];
  [v3 _setHidesShadow:0];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v6 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = MEMORY[0x277D755B8];
  v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v8 = [v5 imageNamed:@"LockIcon" inBundle:?];
  v7 = [v6 initWithImage:?];
  [(AKIDPProvidedSignInViewController *)self setSecureIconView:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = [(AKIDPProvidedSignInViewController *)self secureIconView];
  [(UIImageView *)v10 setContentMode:4];
  MEMORY[0x277D82BD8](v10);
  v12 = [MEMORY[0x277D75348] systemGreenColor];
  v11 = [(AKIDPProvidedSignInViewController *)self secureIconView];
  [(UIImageView *)v11 setTintColor:v12];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v13 = [(AKIDPProvidedSignInViewController *)self secureIconView];
  [(UIImageView *)v13 setHidden:1];
  MEMORY[0x277D82BD8](v13);
  v14 = [(AKIDPProvidedSignInViewController *)self secureIconView];
  [(UIImageView *)v14 setAlpha:0.0];
  MEMORY[0x277D82BD8](v14);
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v15 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKIDPProvidedSignInViewController *)self setTitleLabel:?];
  MEMORY[0x277D82BD8](v15);
  v18 = [(AKIDPProvidedSignInViewController *)self webView];
  v17 = [(WKWebView *)v18 title];
  v16 = [(AKIDPProvidedSignInViewController *)self titleLabel];
  [(UILabel *)v16 setText:v17];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v20 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76998] maximumContentSizeCategory:*MEMORY[0x277D76838]];
  v19 = [(AKIDPProvidedSignInViewController *)self titleLabel];
  [(UILabel *)v19 setFont:v20];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v21 = objc_alloc(MEMORY[0x277D75A68]);
  v25 = [(AKIDPProvidedSignInViewController *)self secureIconView];
  v37[0] = v25;
  v24 = [(AKIDPProvidedSignInViewController *)self titleLabel];
  v37[1] = v24;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v22 = [v21 initWithArrangedSubviews:?];
  [(AKIDPProvidedSignInViewController *)self setTitleStackView:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  v26 = [(AKIDPProvidedSignInViewController *)self titleStackView];
  [(UIStackView *)v26 setSpacing:6.0];
  MEMORY[0x277D82BD8](v26);
  v28 = [(AKIDPProvidedSignInViewController *)self titleStackView];
  v27 = [(AKIDPProvidedSignInViewController *)self navigationItem];
  [v27 setTitleView:v28];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  v30 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelBarButtonPressed_];
  v29 = [(AKIDPProvidedSignInViewController *)self navigationItem];
  [v29 setLeftBarButtonItem:v30];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  *MEMORY[0x277D85DE8];
}

- (void)_setNavigationTitle:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];
  MEMORY[0x277D82BD8](v7);
  v12 = v8;
  v9 = 1;
  if (v8 != 1)
  {
    v9 = v12 == 5;
  }

  if (v9)
  {
    v5 = location[0];
    v6 = [(AKIDPProvidedSignInViewController *)v11 titleLabel];
    [(UILabel *)v6 setText:v5];
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v3 = location[0];
    v4 = [(AKIDPProvidedSignInViewController *)v11 navigationItem];
    [v4 setPrompt:v3];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)IDPHandler:(id)a3 didFinishLoadingPageInWebView:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = [v16 title];
  v5 = [(AKIDPProvidedSignInViewController *)v18 titleLabel];
  [(UILabel *)v5 setText:v6];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v15 = [v16 hasOnlySecureContent] == 0;
  v7 = [(AKIDPProvidedSignInViewController *)v18 secureIconView];
  [(UIImageView *)v7 setHidden:v15];
  MEMORY[0x277D82BD8](v7);
  v8 = MEMORY[0x277D75D18];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __78__AKIDPProvidedSignInViewController_IDPHandler_didFinishLoadingPageInWebView___block_invoke;
  v12 = &unk_2784A5EC8;
  v13 = MEMORY[0x277D82BE0](v18);
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

- (void)IDPHandler:(id)a3 didStartLoadingPageInWebView:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = v10;
  v7 = [v8 URL];
  v6 = [v7 host];
  [(AKIDPProvidedSignInViewController *)v5 _setNavigationTitle:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

@end