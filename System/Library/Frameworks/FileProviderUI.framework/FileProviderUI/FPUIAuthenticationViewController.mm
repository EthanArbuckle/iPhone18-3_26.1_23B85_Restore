@interface FPUIAuthenticationViewController
- (FPUIAuthenticationDelegate)authenticationDelegate;
- (FPUIAuthenticationLandingViewController)landingViewController;
- (FPUIAuthenticationViewController)initWithServerURL:(id)a3;
- (void)setInitialConnectionURL:(id)a3;
- (void)viewDidLoad;
@end

@implementation FPUIAuthenticationViewController

- (FPUIAuthenticationViewController)initWithServerURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FPUIAuthenticationViewController;
  v5 = [(FPUIAuthenticationViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    initialConnectionURL = v5->_initialConnectionURL;
    v5->_initialConnectionURL = v6;
  }

  return v5;
}

- (void)viewDidLoad
{
  v33[4] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = FPUIAuthenticationViewController;
  [(FPUIAuthenticationViewController *)&v32 viewDidLoad];
  v3 = [[FPUIAuthenticationLandingViewController alloc] initWithURL:self->_initialConnectionURL];
  v4 = [(FPUIAuthenticationViewController *)self authenticationDelegate];
  [(FPUIAuthenticationTableViewController *)v3 setAuthenticationDelegate:v4];

  v31 = v3;
  objc_storeWeak(&self->_landingViewController, v3);
  v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
  [(FPUIAuthenticationViewController *)self addChildViewController:v5];
  v6 = [(FPUIAuthenticationViewController *)self view];
  v7 = [v5 view];
  [v6 addSubview:v7];

  v21 = MEMORY[0x277CCAAD0];
  v30 = [(FPUIAuthenticationViewController *)self view];
  v28 = [v30 centerXAnchor];
  v29 = [v5 view];
  v27 = [v29 centerXAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v33[0] = v26;
  v25 = [(FPUIAuthenticationViewController *)self view];
  v23 = [v25 centerYAnchor];
  v24 = [v5 view];
  v22 = [v24 centerYAnchor];
  v20 = [v23 constraintEqualToAnchor:v22];
  v33[1] = v20;
  v19 = [(FPUIAuthenticationViewController *)self view];
  v17 = [v19 widthAnchor];
  v18 = [v5 view];
  v8 = [v18 widthAnchor];
  v9 = [v17 constraintEqualToAnchor:v8];
  v33[2] = v9;
  v10 = [(FPUIAuthenticationViewController *)self view];
  v11 = [v10 heightAnchor];
  v12 = [v5 view];
  v13 = [v12 heightAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v33[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [v21 activateConstraints:v15];

  [v5 didMoveToParentViewController:self];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)setInitialConnectionURL:(id)a3
{
  v5 = a3;
  if (self->_initialConnectionURL != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_initialConnectionURL, a3);
    WeakRetained = objc_loadWeakRetained(&self->_landingViewController);
    [WeakRetained setInitialConnectionURL:v7];

    v5 = v7;
  }
}

- (FPUIAuthenticationDelegate)authenticationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticationDelegate);

  return WeakRetained;
}

- (FPUIAuthenticationLandingViewController)landingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_landingViewController);

  return WeakRetained;
}

@end