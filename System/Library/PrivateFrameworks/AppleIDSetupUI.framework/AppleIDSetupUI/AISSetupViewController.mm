@interface AISSetupViewController
- (AISSetupViewController)initWithContext:(id)context;
- (void)_updateAutoDismissal;
- (void)didMoveToParentViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation AISSetupViewController

- (AISSetupViewController)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AISSetupViewController;
  v6 = [(AISSetupViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
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
  context = [(AISSetupViewController *)self context];
  dontSuggestUserAction = [(AISSetupViewController *)self dontSuggestUserAction];
  skipAction = [(AISSetupViewController *)self skipAction];
  shouldAutoDismiss = [(AISSetupViewController *)self shouldAutoDismiss];
  context2 = [(AISSetupViewController *)self context];
  isPreEstablishedClient = [context2 isPreEstablishedClient];
  reportHandler = [(AISSetupViewController *)self reportHandler];
  v11 = [(__AISSetupViewController *)v3 initWithContext:context dontSuggestUserAction:dontSuggestUserAction skipAction:skipAction shouldAutoDismiss:shouldAutoDismiss isPreEstablishedClient:isPreEstablishedClient reportHandler:reportHandler];
  viewController = self->_viewController;
  self->_viewController = v11;

  viewController = [(AISSetupViewController *)self viewController];
  view = [viewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  viewController2 = [(AISSetupViewController *)self viewController];
  [viewController2 willMoveToParentViewController:self];

  [(AISSetupViewController *)self addChildViewController:self->_viewController];
  view2 = [(AISSetupViewController *)self view];
  viewController3 = [(AISSetupViewController *)self viewController];
  view3 = [viewController3 view];
  [view2 addSubview:view3];

  v42 = MEMORY[0x277CCAAD0];
  viewController4 = [(AISSetupViewController *)self viewController];
  view4 = [viewController4 view];
  topAnchor = [view4 topAnchor];
  view5 = [(AISSetupViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v53 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v60[0] = v53;
  viewController5 = [(AISSetupViewController *)self viewController];
  view6 = [viewController5 view];
  bottomAnchor = [view6 bottomAnchor];
  view7 = [(AISSetupViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v60[1] = v47;
  viewController6 = [(AISSetupViewController *)self viewController];
  view8 = [viewController6 view];
  leadingAnchor = [view8 leadingAnchor];
  view9 = [(AISSetupViewController *)self view];
  leadingAnchor2 = [view9 leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v60[2] = v40;
  viewController7 = [(AISSetupViewController *)self viewController];
  view10 = [viewController7 view];
  trailingAnchor = [view10 trailingAnchor];
  view11 = [(AISSetupViewController *)self view];
  trailingAnchor2 = [view11 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v60[3] = v34;
  viewController8 = [(AISSetupViewController *)self viewController];
  view12 = [viewController8 view];
  centerXAnchor = [view12 centerXAnchor];
  view13 = [(AISSetupViewController *)self view];
  centerXAnchor2 = [view13 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v60[4] = v20;
  viewController9 = [(AISSetupViewController *)self viewController];
  view14 = [viewController9 view];
  centerYAnchor = [view14 centerYAnchor];
  view15 = [(AISSetupViewController *)self view];
  centerYAnchor2 = [view15 centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v60[5] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:6];
  [v42 activateConstraints:v27];

  viewController10 = [(AISSetupViewController *)self viewController];
  [viewController10 didMoveToParentViewController:self];

  [(AISSetupViewController *)self _updateAutoDismissal];
  v29 = *MEMORY[0x277D85DE8];
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = AISSetupViewController;
  [(AISSetupViewController *)&v4 didMoveToParentViewController:controller];
  [(AISSetupViewController *)self _updateAutoDismissal];
}

- (void)_updateAutoDismissal
{
  viewController = [(AISSetupViewController *)self viewController];

  if (viewController)
  {
    if ([(AISSetupViewController *)self shouldAutoDismiss])
    {
      navigationController = [(AISSetupViewController *)self navigationController];
      v5 = navigationController == 0;
    }

    else
    {
      v5 = 0;
    }

    viewController2 = [(AISSetupViewController *)self viewController];
    [viewController2 setShouldAutoDismiss:v5];
  }
}

@end