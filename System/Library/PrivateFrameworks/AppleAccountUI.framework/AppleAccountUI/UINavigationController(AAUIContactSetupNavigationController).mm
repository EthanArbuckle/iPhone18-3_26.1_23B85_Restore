@interface UINavigationController(AAUIContactSetupNavigationController)
- (void)aaui_hideActivityIndicator;
- (void)aaui_showActivityIndicator;
@end

@implementation UINavigationController(AAUIContactSetupNavigationController)

- (void)aaui_showActivityIndicator
{
  _aaui_activityIndicatorView = [self _aaui_activityIndicatorView];

  if (!_aaui_activityIndicatorView)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [self _aaui_setActivityIndicatorView:v3];

    _aaui_activityIndicatorView2 = [self _aaui_activityIndicatorView];
    [_aaui_activityIndicatorView2 setHidesWhenStopped:1];

    _aaui_activityIndicatorView3 = [self _aaui_activityIndicatorView];
    [_aaui_activityIndicatorView3 startAnimating];

    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    _aaui_activityIndicatorView4 = [self _aaui_activityIndicatorView];
    v13 = [v6 initWithCustomView:_aaui_activityIndicatorView4];

    topViewController = [self topViewController];
    navigationItem = [topViewController navigationItem];
    rightBarButtonItems = [navigationItem rightBarButtonItems];
    [self _aaui_setCurrentRightBarButtonItems:rightBarButtonItems];

    topViewController2 = [self topViewController];
    navigationItem2 = [topViewController2 navigationItem];
    [navigationItem2 setRightBarButtonItem:v13];
  }
}

- (void)aaui_hideActivityIndicator
{
  _aaui_activityIndicatorView = [self _aaui_activityIndicatorView];

  if (_aaui_activityIndicatorView)
  {
    _aaui_activityIndicatorView2 = [self _aaui_activityIndicatorView];
    [_aaui_activityIndicatorView2 stopAnimating];

    topViewController = [self topViewController];
    navigationItem = [topViewController navigationItem];
    _aaui_currentRightBarButtonItems = [self _aaui_currentRightBarButtonItems];
    [navigationItem setRightBarButtonItems:_aaui_currentRightBarButtonItems];

    [self _aaui_setCurrentRightBarButtonItems:0];

    [self _aaui_setActivityIndicatorView:0];
  }
}

@end