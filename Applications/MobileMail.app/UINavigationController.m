@interface UINavigationController
- (BOOL)canDismiss;
- (BOOL)canResignFocus;
- (BOOL)shouldSnapshot;
- (id)mf_viewControllerBefore:(id)a3;
- (void)configureBarsForMessageList;
- (void)didBecomeDimmed:(BOOL)a3;
- (void)didBecomeFocused:(BOOL)a3;
- (void)didDismiss:(BOOL)a3;
- (void)didResignDimmed:(BOOL)a3;
- (void)didResignFocus:(BOOL)a3;
- (void)updateNavigationBarPrefersLargeTitles:(BOOL)a3;
- (void)willBecomeDimmed:(BOOL)a3;
- (void)willBecomeFocused:(BOOL)a3;
- (void)willDismiss:(BOOL)a3;
- (void)willResignDimmed:(BOOL)a3;
- (void)willResignFocus:(BOOL)a3;
@end

@implementation UINavigationController

- (void)configureBarsForMessageList
{
  [(UINavigationController *)self setToolbarHidden:0];
  v3 = [(UINavigationController *)self navigationBar];
  [v3 setPrefersLargeTitles:1];
}

- (void)updateNavigationBarPrefersLargeTitles:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationController *)self navigationBar];
  [v4 setPrefersLargeTitles:v3];
}

- (id)mf_viewControllerBefore:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100259A28;
  v18 = sub_100259A38;
  v19 = 0;
  v5 = [(UINavigationController *)self viewControllers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100259A40;
  v10[3] = &unk_100656A98;
  v6 = v4;
  v12 = v5;
  v13 = &v14;
  v11 = v6;
  v7 = v5;
  [v7 enumerateObjectsWithOptions:2 usingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (BOOL)canResignFocus
{
  v2 = [(UINavigationController *)self topViewController];
  v3 = [v2 canResignFocus];

  return v3;
}

- (void)willBecomeFocused:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationController *)self topViewController];
  [v4 willBecomeFocused:v3];
}

- (void)didBecomeFocused:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationController *)self topViewController];
  [v4 didBecomeFocused:v3];
}

- (void)willResignFocus:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationController *)self topViewController];
  [v4 willResignFocus:v3];
}

- (void)didResignFocus:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationController *)self topViewController];
  [v4 didResignFocus:v3];
}

- (void)willBecomeDimmed:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationController *)self topViewController];
  [v4 willBecomeDimmed:v3];
}

- (void)didBecomeDimmed:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationController *)self topViewController];
  [v4 didBecomeDimmed:v3];
}

- (void)willResignDimmed:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationController *)self topViewController];
  [v4 willResignDimmed:v3];
}

- (void)didResignDimmed:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationController *)self topViewController];
  [v4 didResignDimmed:v3];
}

- (BOOL)canDismiss
{
  v2 = [(UINavigationController *)self topViewController];
  v3 = [v2 canDismiss];

  return v3;
}

- (void)willDismiss:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationController *)self topViewController];
  [v4 willDismiss:v3];
}

- (void)didDismiss:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationController *)self topViewController];
  [v4 didDismiss:v3];
}

- (BOOL)shouldSnapshot
{
  v2 = [(UINavigationController *)self visibleViewController];
  v3 = [v2 shouldSnapshot];

  return v3;
}

@end