@interface UIViewController
- (MapsTheme)theme;
- (UIViewController)topMostPresentedViewController;
- (void)_maps_presentSimpleAlertWithTitle:(id)title message:(id)message dismissalActionTitle:(id)actionTitle dismissalHandler:(id)handler;
- (void)_maps_topMostPresentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation UIViewController

- (MapsTheme)theme
{
  traitCollection = [(UIViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle)
  {
    traitCollection2 = [(UIViewController *)self traitCollection];
    v6 = [traitCollection2 userInterfaceStyle] != &dword_0 + 1;

    v7 = +[MapsTheme sharedTheme];
    [v7 setMapsThemeStyle:v6];
  }

  return +[MapsTheme sharedTheme];
}

- (UIViewController)topMostPresentedViewController
{
  selfCopy = self;
  presentedViewController = [(UIViewController *)selfCopy presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [(UIViewController *)selfCopy presentedViewController];

      v4PresentedViewController = [(UIViewController *)presentedViewController2 presentedViewController];

      selfCopy = presentedViewController2;
    }

    while (v4PresentedViewController);
  }

  else
  {
    presentedViewController2 = selfCopy;
  }

  return presentedViewController2;
}

- (void)_maps_presentSimpleAlertWithTitle:(id)title message:(id)message dismissalActionTitle:(id)actionTitle dismissalHandler:(id)handler
{
  handlerCopy = handler;
  actionTitleCopy = actionTitle;
  v14 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  view = [v14 view];
  [view setAccessibilityIdentifier:@"SimpleAlert"];

  v13 = [UIAlertAction actionWithTitle:actionTitleCopy style:0 handler:handlerCopy];

  [v13 setAccessibilityIdentifier:@"AlertAction"];
  [v14 addAction:v13];
  [(UIViewController *)self _maps_topMostPresentViewController:v14 animated:1 completion:0];
}

- (void)_maps_topMostPresentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  topMostPresentedViewController = [(UIViewController *)self topMostPresentedViewController];
  [topMostPresentedViewController presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

@end