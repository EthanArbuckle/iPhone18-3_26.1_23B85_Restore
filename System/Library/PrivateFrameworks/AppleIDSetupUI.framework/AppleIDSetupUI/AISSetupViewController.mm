@interface AISSetupViewController
- (AISSetupViewController)initWithContext:(id)a3;
- (void)_updateAutoDismissal;
- (void)didMoveToParentViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation AISSetupViewController

- (AISSetupViewController)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AISSetupViewController;
  v6 = [(AISSetupViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v7->_shouldAutoDismiss = 1;
  }

  return v7;
}

- (void)viewDidLoad
{
  v60[6] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = AISSetupViewController;
  [(AISSetupViewController *)&v59 viewDidLoad];
  v3 = [__AISSetupViewController alloc];
  v4 = [(AISSetupViewController *)self context];
  v5 = [(AISSetupViewController *)self dontSuggestUserAction];
  v6 = [(AISSetupViewController *)self skipAction];
  v7 = [(AISSetupViewController *)self shouldAutoDismiss];
  v8 = [(AISSetupViewController *)self context];
  v9 = [v8 isPreEstablishedClient];
  v10 = [(AISSetupViewController *)self reportHandler];
  v11 = [(__AISSetupViewController *)v3 initWithContext:v4 dontSuggestUserAction:v5 skipAction:v6 shouldAutoDismiss:v7 isPreEstablishedClient:v9 reportHandler:v10];
  viewController = self->_viewController;
  self->_viewController = v11;

  v13 = [(AISSetupViewController *)self viewController];
  v14 = [v13 view];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(AISSetupViewController *)self viewController];
  [v15 willMoveToParentViewController:self];

  [(AISSetupViewController *)self addChildViewController:self->_viewController];
  v16 = [(AISSetupViewController *)self view];
  v17 = [(AISSetupViewController *)self viewController];
  v18 = [v17 view];
  [v16 addSubview:v18];

  v42 = MEMORY[0x277CCAAD0];
  v58 = [(AISSetupViewController *)self viewController];
  v57 = [v58 view];
  v55 = [v57 topAnchor];
  v56 = [(AISSetupViewController *)self view];
  v54 = [v56 topAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v60[0] = v53;
  v52 = [(AISSetupViewController *)self viewController];
  v51 = [v52 view];
  v49 = [v51 bottomAnchor];
  v50 = [(AISSetupViewController *)self view];
  v48 = [v50 bottomAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v60[1] = v47;
  v46 = [(AISSetupViewController *)self viewController];
  v45 = [v46 view];
  v43 = [v45 leadingAnchor];
  v44 = [(AISSetupViewController *)self view];
  v41 = [v44 leadingAnchor];
  v40 = [v43 constraintEqualToAnchor:v41];
  v60[2] = v40;
  v39 = [(AISSetupViewController *)self viewController];
  v38 = [v39 view];
  v36 = [v38 trailingAnchor];
  v37 = [(AISSetupViewController *)self view];
  v35 = [v37 trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v60[3] = v34;
  v33 = [(AISSetupViewController *)self viewController];
  v32 = [v33 view];
  v30 = [v32 centerXAnchor];
  v31 = [(AISSetupViewController *)self view];
  v19 = [v31 centerXAnchor];
  v20 = [v30 constraintEqualToAnchor:v19];
  v60[4] = v20;
  v21 = [(AISSetupViewController *)self viewController];
  v22 = [v21 view];
  v23 = [v22 centerYAnchor];
  v24 = [(AISSetupViewController *)self view];
  v25 = [v24 centerYAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v60[5] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:6];
  [v42 activateConstraints:v27];

  v28 = [(AISSetupViewController *)self viewController];
  [v28 didMoveToParentViewController:self];

  [(AISSetupViewController *)self _updateAutoDismissal];
  v29 = *MEMORY[0x277D85DE8];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = AISSetupViewController;
  [(AISSetupViewController *)&v4 didMoveToParentViewController:a3];
  [(AISSetupViewController *)self _updateAutoDismissal];
}

- (void)_updateAutoDismissal
{
  v3 = [(AISSetupViewController *)self viewController];

  if (v3)
  {
    if ([(AISSetupViewController *)self shouldAutoDismiss])
    {
      v4 = [(AISSetupViewController *)self navigationController];
      v5 = v4 == 0;
    }

    else
    {
      v5 = 0;
    }

    v6 = [(AISSetupViewController *)self viewController];
    [v6 setShouldAutoDismiss:v5];
  }
}

@end