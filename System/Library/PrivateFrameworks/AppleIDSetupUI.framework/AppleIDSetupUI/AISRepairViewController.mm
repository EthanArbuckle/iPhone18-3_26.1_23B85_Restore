@interface AISRepairViewController
- (AISRepairViewController)initWithContext:(id)a3;
- (void)_updateAutoDismissal;
- (void)viewDidLoad;
@end

@implementation AISRepairViewController

- (AISRepairViewController)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AISRepairViewController;
  v6 = [(AISRepairViewController *)&v9 initWithNibName:0 bundle:0];
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
  v55[6] = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = AISRepairViewController;
  [(AISRepairViewController *)&v54 viewDidLoad];
  v3 = [__AISRepairViewController alloc];
  v4 = [(AISRepairViewController *)self context];
  v5 = [(AISRepairViewController *)self reportHandler];
  v6 = [(__AISRepairViewController *)v3 initWithContext:v4 reportHandler:v5];
  viewController = self->_viewController;
  self->_viewController = v6;

  v8 = [(AISRepairViewController *)self viewController];
  v9 = [v8 view];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(AISRepairViewController *)self viewController];
  [v10 willMoveToParentViewController:self];

  [(AISRepairViewController *)self addChildViewController:self->_viewController];
  v11 = [(AISRepairViewController *)self view];
  v12 = [(AISRepairViewController *)self viewController];
  v13 = [v12 view];
  [v11 addSubview:v13];

  v37 = MEMORY[0x277CCAAD0];
  v53 = [(AISRepairViewController *)self viewController];
  v52 = [v53 view];
  v50 = [v52 topAnchor];
  v51 = [(AISRepairViewController *)self view];
  v49 = [v51 topAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v55[0] = v48;
  v47 = [(AISRepairViewController *)self viewController];
  v46 = [v47 view];
  v44 = [v46 bottomAnchor];
  v45 = [(AISRepairViewController *)self view];
  v43 = [v45 bottomAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v55[1] = v42;
  v41 = [(AISRepairViewController *)self viewController];
  v40 = [v41 view];
  v38 = [v40 leadingAnchor];
  v39 = [(AISRepairViewController *)self view];
  v36 = [v39 leadingAnchor];
  v35 = [v38 constraintEqualToAnchor:v36];
  v55[2] = v35;
  v34 = [(AISRepairViewController *)self viewController];
  v33 = [v34 view];
  v31 = [v33 trailingAnchor];
  v32 = [(AISRepairViewController *)self view];
  v30 = [v32 trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v55[3] = v29;
  v28 = [(AISRepairViewController *)self viewController];
  v27 = [v28 view];
  v25 = [v27 centerXAnchor];
  v26 = [(AISRepairViewController *)self view];
  v14 = [v26 centerXAnchor];
  v15 = [v25 constraintEqualToAnchor:v14];
  v55[4] = v15;
  v16 = [(AISRepairViewController *)self viewController];
  v17 = [v16 view];
  v18 = [v17 centerYAnchor];
  v19 = [(AISRepairViewController *)self view];
  v20 = [v19 centerYAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v55[5] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:6];
  [v37 activateConstraints:v22];

  v23 = [(AISRepairViewController *)self viewController];
  [v23 didMoveToParentViewController:self];

  [(AISRepairViewController *)self _updateAutoDismissal];
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_updateAutoDismissal
{
  v3 = [(AISRepairViewController *)self viewController];

  if (v3)
  {
    if ([(AISRepairViewController *)self shouldAutoDismiss])
    {
      v4 = [(AISRepairViewController *)self navigationController];
      v5 = v4 == 0;
    }

    else
    {
      v5 = 0;
    }

    v6 = [(AISRepairViewController *)self viewController];
    [v6 setShouldAutoDismiss:v5];
  }
}

@end