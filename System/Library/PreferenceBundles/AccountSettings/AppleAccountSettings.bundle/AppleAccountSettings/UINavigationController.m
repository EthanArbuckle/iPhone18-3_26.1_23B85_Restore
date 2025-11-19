@interface UINavigationController
- (void)aaui_hideActivityIndicator;
- (void)aaui_pushViewController:(id)a3 animated:(BOOL)a4;
- (void)aaui_removeLastViewControllerAnimated:(BOOL)a3;
- (void)aaui_showActivityIndicator;
@end

@implementation UINavigationController

- (void)aaui_showActivityIndicator
{
  v3 = [(UINavigationController *)self _aaui_activityIndicatorView];

  if (!v3)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [(UINavigationController *)self _aaui_setActivityIndicatorView:v4];

    v5 = [(UINavigationController *)self _aaui_activityIndicatorView];
    [v5 setHidesWhenStopped:1];

    v6 = [(UINavigationController *)self _aaui_activityIndicatorView];
    [v6 startAnimating];

    v7 = [UIBarButtonItem alloc];
    v8 = [(UINavigationController *)self _aaui_activityIndicatorView];
    v14 = [v7 initWithCustomView:v8];

    v9 = [(UINavigationController *)self topViewController];
    v10 = [v9 navigationItem];
    v11 = [v10 rightBarButtonItems];
    [(UINavigationController *)self _aaui_setCurrentRightBarButtonItems:v11];

    v12 = [(UINavigationController *)self topViewController];
    v13 = [v12 navigationItem];
    [v13 setRightBarButtonItem:v14];
  }
}

- (void)aaui_hideActivityIndicator
{
  v3 = [(UINavigationController *)self _aaui_activityIndicatorView];

  if (v3)
  {
    v4 = [(UINavigationController *)self _aaui_activityIndicatorView];
    [v4 stopAnimating];

    v5 = [(UINavigationController *)self topViewController];
    v6 = [v5 navigationItem];
    v7 = [(UINavigationController *)self _aaui_currentRightBarButtonItems];
    [v6 setRightBarButtonItems:v7];

    [(UINavigationController *)self _aaui_setCurrentRightBarButtonItems:0];

    [(UINavigationController *)self _aaui_setActivityIndicatorView:0];
  }
}

- (void)aaui_pushViewController:(id)a3 animated:(BOOL)a4
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v6 = a3;
  v7 = self;
  sub_2F030(v6, a4, v8);

  sub_2DFB0(v8, &qword_69F98, &qword_405E0);
}

- (void)aaui_removeLastViewControllerAnimated:(BOOL)a3
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v4 = self;
  sub_2F644(a3, v5);

  sub_2DFB0(v5, &qword_69F98, &qword_405E0);
}

@end