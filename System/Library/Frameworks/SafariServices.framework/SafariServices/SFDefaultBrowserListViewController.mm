@interface SFDefaultBrowserListViewController
- (void)setNavigationEnabled:(BOOL)enabled;
@end

@implementation SFDefaultBrowserListViewController

- (void)setNavigationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:enabledCopy ^ 1];

  navigationController = [(SFDefaultBrowserListViewController *)self navigationController];
  interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:enabledCopy];
}

@end