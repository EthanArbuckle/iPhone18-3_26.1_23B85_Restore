@interface UINavigationController(AAUIContactSetupNavigationController)
- (void)aaui_hideActivityIndicator;
- (void)aaui_showActivityIndicator;
@end

@implementation UINavigationController(AAUIContactSetupNavigationController)

- (void)aaui_showActivityIndicator
{
  v2 = [a1 _aaui_activityIndicatorView];

  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [a1 _aaui_setActivityIndicatorView:v3];

    v4 = [a1 _aaui_activityIndicatorView];
    [v4 setHidesWhenStopped:1];

    v5 = [a1 _aaui_activityIndicatorView];
    [v5 startAnimating];

    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = [a1 _aaui_activityIndicatorView];
    v13 = [v6 initWithCustomView:v7];

    v8 = [a1 topViewController];
    v9 = [v8 navigationItem];
    v10 = [v9 rightBarButtonItems];
    [a1 _aaui_setCurrentRightBarButtonItems:v10];

    v11 = [a1 topViewController];
    v12 = [v11 navigationItem];
    [v12 setRightBarButtonItem:v13];
  }
}

- (void)aaui_hideActivityIndicator
{
  v2 = [a1 _aaui_activityIndicatorView];

  if (v2)
  {
    v3 = [a1 _aaui_activityIndicatorView];
    [v3 stopAnimating];

    v4 = [a1 topViewController];
    v5 = [v4 navigationItem];
    v6 = [a1 _aaui_currentRightBarButtonItems];
    [v5 setRightBarButtonItems:v6];

    [a1 _aaui_setCurrentRightBarButtonItems:0];

    [a1 _aaui_setActivityIndicatorView:0];
  }
}

@end