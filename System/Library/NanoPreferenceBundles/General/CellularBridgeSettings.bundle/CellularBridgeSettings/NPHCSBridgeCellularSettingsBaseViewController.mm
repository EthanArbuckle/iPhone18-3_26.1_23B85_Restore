@interface NPHCSBridgeCellularSettingsBaseViewController
- (id)parentController;
- (id)rootController;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)setSpecifier:(id)a3;
- (void)showController:(id)a3 animate:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation NPHCSBridgeCellularSettingsBaseViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = NPHCSBridgeCellularSettingsBaseViewController;
  [(NPHCSBridgeCellularSettingsBaseViewController *)&v2 viewDidLoad];
}

- (id)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

- (id)rootController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootController);

  return WeakRetained;
}

- (void)setSpecifier:(id)a3
{
  v5 = a3;
  if (self->_specifier != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_specifier, a3);
    v5 = v6;
  }
}

- (void)showController:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (v4)
  {
    [(NPHCSBridgeCellularSettingsBaseViewController *)self showViewController:v8 sender:self];
    v6 = v8;
  }

  else
  {
    v7 = [(NPHCSBridgeCellularSettingsBaseViewController *)self navigationController];
    [v7 pushViewController:v8 animated:0];

    v6 = v7;
  }
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

@end