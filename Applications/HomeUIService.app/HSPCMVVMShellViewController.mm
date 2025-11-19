@interface HSPCMVVMShellViewController
- (HSPCMVVMShellViewController)initWithTableViewStyle:(int64_t)a3 moduleCreator:(id)a4 moduleControllerBuilder:(id)a5;
- (void)performPRXLayoutPass;
- (void)viewDidLoad;
@end

@implementation HSPCMVVMShellViewController

- (HSPCMVVMShellViewController)initWithTableViewStyle:(int64_t)a3 moduleCreator:(id)a4 moduleControllerBuilder:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[HUPRXItemModuleTableViewController alloc] initWithTableViewStyle:a3 moduleCreator:v9 moduleControllerBuilder:v8];

  v11 = [PRXScrollableContentView alloc];
  v12 = [(HUPRXItemModuleTableViewController *)v10 tableView];
  v13 = [v11 initWithCardStyle:0 scrollView:v12];

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
  v3 = [(HSPCMVVMShellViewController *)self mvvmController];
  [(HSPCMVVMShellViewController *)self addChildViewController:v3];

  v4 = [(HSPCMVVMShellViewController *)self mvvmController];
  [v4 didMoveToParentViewController:self];
}

- (void)performPRXLayoutPass
{
  v3 = [(HSPCMVVMShellViewController *)self mvvmController];
  v4 = [v3 tableView];
  [v4 layoutIfNeeded];

  v5 = [(HSPCMVVMShellViewController *)self contentView];
  [v5 setNeedsUpdateConstraints];

  v7 = [(HSPCMVVMShellViewController *)self view];
  [v7 bounds];
  [(HSPCMVVMShellViewController *)self updatePreferredContentSizeForCardWidth:v6];
}

@end