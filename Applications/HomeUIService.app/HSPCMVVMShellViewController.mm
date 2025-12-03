@interface HSPCMVVMShellViewController
- (HSPCMVVMShellViewController)initWithTableViewStyle:(int64_t)style moduleCreator:(id)creator moduleControllerBuilder:(id)builder;
- (void)performPRXLayoutPass;
- (void)viewDidLoad;
@end

@implementation HSPCMVVMShellViewController

- (HSPCMVVMShellViewController)initWithTableViewStyle:(int64_t)style moduleCreator:(id)creator moduleControllerBuilder:(id)builder
{
  builderCopy = builder;
  creatorCopy = creator;
  v10 = [[HUPRXItemModuleTableViewController alloc] initWithTableViewStyle:style moduleCreator:creatorCopy moduleControllerBuilder:builderCopy];

  v11 = [PRXScrollableContentView alloc];
  tableView = [(HUPRXItemModuleTableViewController *)v10 tableView];
  v13 = [v11 initWithCardStyle:0 scrollView:tableView];

  v17.receiver = self;
  v17.super_class = HSPCMVVMShellViewController;
  v14 = [(HSPCMVVMShellViewController *)&v17 initWithContentView:v13];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mvvmController, v10);
  }

  return v15;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HSPCMVVMShellViewController;
  [(HSPCMVVMShellViewController *)&v5 viewDidLoad];
  mvvmController = [(HSPCMVVMShellViewController *)self mvvmController];
  [(HSPCMVVMShellViewController *)self addChildViewController:mvvmController];

  mvvmController2 = [(HSPCMVVMShellViewController *)self mvvmController];
  [mvvmController2 didMoveToParentViewController:self];
}

- (void)performPRXLayoutPass
{
  mvvmController = [(HSPCMVVMShellViewController *)self mvvmController];
  tableView = [mvvmController tableView];
  [tableView layoutIfNeeded];

  contentView = [(HSPCMVVMShellViewController *)self contentView];
  [contentView setNeedsUpdateConstraints];

  view = [(HSPCMVVMShellViewController *)self view];
  [view bounds];
  [(HSPCMVVMShellViewController *)self updatePreferredContentSizeForCardWidth:v6];
}

@end