@interface AAUIBaseDetailViewController
- (AAUIBaseDetailViewController)init;
- (void)_setupNavigationBarButtons;
- (void)viewDidLoad;
@end

@implementation AAUIBaseDetailViewController

- (AAUIBaseDetailViewController)init
{
  v3.receiver = self;
  v3.super_class = AAUIBaseDetailViewController;
  return [(AAUIBaseDetailViewController *)&v3 init];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AAUIBaseDetailViewController;
  [(AAUIBaseDetailViewController *)&v3 viewDidLoad];
  [(AAUIBaseDetailViewController *)self _setupNavigationBarButtons];
}

- (void)_setupNavigationBarButtons
{
  v3 = [(AAUIBaseDetailViewController *)self navigationItem];
  if (([(AAUIBaseDetailViewController *)self isPresentedAsModalSheet]& 1) == 0)
  {
    [v3 setRightBarButtonItem:0];
  }

  [(AAUIBaseDetailViewController *)self setCancelButton:0];
  [v3 setLeftBarButtonItem:0];
  [v3 setHidesBackButton:0];
}

@end