@interface HSUserListNavigationViewController
- (HSUserListNavigationViewController)init;
@end

@implementation HSUserListNavigationViewController

- (HSUserListNavigationViewController)init
{
  v3 = objc_alloc_init(HSUserListViewController);
  v6.receiver = self;
  v6.super_class = HSUserListNavigationViewController;
  v4 = [(HSUserManagementViewController *)&v6 initWithRootViewController:v3];
  if (v4)
  {
    [(HSUserListViewController *)v3 setDelegate:v4];
  }

  return v4;
}

@end