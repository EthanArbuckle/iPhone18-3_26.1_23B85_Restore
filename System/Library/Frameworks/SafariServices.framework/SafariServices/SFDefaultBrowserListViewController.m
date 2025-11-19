@interface SFDefaultBrowserListViewController
- (void)setNavigationEnabled:(BOOL)a3;
@end

@implementation SFDefaultBrowserListViewController

- (void)setNavigationEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(OBBaseWelcomeController *)self navigationItem];
  [v5 setHidesBackButton:v3 ^ 1];

  v7 = [(SFDefaultBrowserListViewController *)self navigationController];
  v6 = [v7 interactivePopGestureRecognizer];
  [v6 setEnabled:v3];
}

@end