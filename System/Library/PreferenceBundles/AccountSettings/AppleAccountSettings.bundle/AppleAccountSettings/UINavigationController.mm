@interface UINavigationController
- (void)aaui_hideActivityIndicator;
- (void)aaui_pushViewController:(id)controller animated:(BOOL)animated;
- (void)aaui_removeLastViewControllerAnimated:(BOOL)animated;
- (void)aaui_showActivityIndicator;
@end

@implementation UINavigationController

- (void)aaui_showActivityIndicator
{
  _aaui_activityIndicatorView = [(UINavigationController *)self _aaui_activityIndicatorView];

  if (!_aaui_activityIndicatorView)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(UINavigationController *)self _aaui_setActivityIndicatorView:v4];

    _aaui_activityIndicatorView2 = [(UINavigationController *)self _aaui_activityIndicatorView];
    [_aaui_activityIndicatorView2 setHidesWhenStopped:1];

    _aaui_activityIndicatorView3 = [(UINavigationController *)self _aaui_activityIndicatorView];
    [_aaui_activityIndicatorView3 startAnimating];

    v7 = [UIBarButtonItem alloc];
    _aaui_activityIndicatorView4 = [(UINavigationController *)self _aaui_activityIndicatorView];
    v14 = [v7 initWithCustomView:_aaui_activityIndicatorView4];

    topViewController = [(UINavigationController *)self topViewController];
    navigationItem = [topViewController navigationItem];
    rightBarButtonItems = [navigationItem rightBarButtonItems];
    [(UINavigationController *)self _aaui_setCurrentRightBarButtonItems:rightBarButtonItems];

    topViewController2 = [(UINavigationController *)self topViewController];
    navigationItem2 = [topViewController2 navigationItem];
    [navigationItem2 setRightBarButtonItem:v14];
  }
}

- (void)aaui_hideActivityIndicator
{
  _aaui_activityIndicatorView = [(UINavigationController *)self _aaui_activityIndicatorView];

  if (_aaui_activityIndicatorView)
  {
    _aaui_activityIndicatorView2 = [(UINavigationController *)self _aaui_activityIndicatorView];
    [_aaui_activityIndicatorView2 stopAnimating];

    topViewController = [(UINavigationController *)self topViewController];
    navigationItem = [topViewController navigationItem];
    _aaui_currentRightBarButtonItems = [(UINavigationController *)self _aaui_currentRightBarButtonItems];
    [navigationItem setRightBarButtonItems:_aaui_currentRightBarButtonItems];

    [(UINavigationController *)self _aaui_setCurrentRightBarButtonItems:0];

    [(UINavigationController *)self _aaui_setActivityIndicatorView:0];
  }
}

- (void)aaui_pushViewController:(id)controller animated:(BOOL)animated
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  controllerCopy = controller;
  selfCopy = self;
  sub_2F030(controllerCopy, animated, v8);

  sub_2DFB0(v8, &qword_69F98, &qword_405E0);
}

- (void)aaui_removeLastViewControllerAnimated:(BOOL)animated
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  selfCopy = self;
  sub_2F644(animated, v5);

  sub_2DFB0(v5, &qword_69F98, &qword_405E0);
}

@end