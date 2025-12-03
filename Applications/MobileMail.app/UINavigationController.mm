@interface UINavigationController
- (BOOL)canDismiss;
- (BOOL)canResignFocus;
- (BOOL)shouldSnapshot;
- (id)mf_viewControllerBefore:(id)before;
- (void)configureBarsForMessageList;
- (void)didBecomeDimmed:(BOOL)dimmed;
- (void)didBecomeFocused:(BOOL)focused;
- (void)didDismiss:(BOOL)dismiss;
- (void)didResignDimmed:(BOOL)dimmed;
- (void)didResignFocus:(BOOL)focus;
- (void)updateNavigationBarPrefersLargeTitles:(BOOL)titles;
- (void)willBecomeDimmed:(BOOL)dimmed;
- (void)willBecomeFocused:(BOOL)focused;
- (void)willDismiss:(BOOL)dismiss;
- (void)willResignDimmed:(BOOL)dimmed;
- (void)willResignFocus:(BOOL)focus;
@end

@implementation UINavigationController

- (void)configureBarsForMessageList
{
  [(UINavigationController *)self setToolbarHidden:0];
  navigationBar = [(UINavigationController *)self navigationBar];
  [navigationBar setPrefersLargeTitles:1];
}

- (void)updateNavigationBarPrefersLargeTitles:(BOOL)titles
{
  titlesCopy = titles;
  navigationBar = [(UINavigationController *)self navigationBar];
  [navigationBar setPrefersLargeTitles:titlesCopy];
}

- (id)mf_viewControllerBefore:(id)before
{
  beforeCopy = before;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100259A28;
  v18 = sub_100259A38;
  v19 = 0;
  viewControllers = [(UINavigationController *)self viewControllers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100259A40;
  v10[3] = &unk_100656A98;
  v6 = beforeCopy;
  v12 = viewControllers;
  v13 = &v14;
  v11 = v6;
  v7 = viewControllers;
  [v7 enumerateObjectsWithOptions:2 usingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (BOOL)canResignFocus
{
  topViewController = [(UINavigationController *)self topViewController];
  canResignFocus = [topViewController canResignFocus];

  return canResignFocus;
}

- (void)willBecomeFocused:(BOOL)focused
{
  focusedCopy = focused;
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController willBecomeFocused:focusedCopy];
}

- (void)didBecomeFocused:(BOOL)focused
{
  focusedCopy = focused;
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController didBecomeFocused:focusedCopy];
}

- (void)willResignFocus:(BOOL)focus
{
  focusCopy = focus;
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController willResignFocus:focusCopy];
}

- (void)didResignFocus:(BOOL)focus
{
  focusCopy = focus;
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController didResignFocus:focusCopy];
}

- (void)willBecomeDimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController willBecomeDimmed:dimmedCopy];
}

- (void)didBecomeDimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController didBecomeDimmed:dimmedCopy];
}

- (void)willResignDimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController willResignDimmed:dimmedCopy];
}

- (void)didResignDimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController didResignDimmed:dimmedCopy];
}

- (BOOL)canDismiss
{
  topViewController = [(UINavigationController *)self topViewController];
  canDismiss = [topViewController canDismiss];

  return canDismiss;
}

- (void)willDismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController willDismiss:dismissCopy];
}

- (void)didDismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  topViewController = [(UINavigationController *)self topViewController];
  [topViewController didDismiss:dismissCopy];
}

- (BOOL)shouldSnapshot
{
  visibleViewController = [(UINavigationController *)self visibleViewController];
  shouldSnapshot = [visibleViewController shouldSnapshot];

  return shouldSnapshot;
}

@end