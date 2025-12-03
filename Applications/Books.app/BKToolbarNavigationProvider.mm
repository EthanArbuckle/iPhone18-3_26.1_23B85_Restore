@interface BKToolbarNavigationProvider
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)bsuiFeedViewControllerNavigationBarStyle:(unint64_t)style;
- (void)navigationController:(id)controller willShowViewController:(id)viewController;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
@end

@implementation BKToolbarNavigationProvider

- (void)navigationController:(id)controller willShowViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  _s5Books25ToolbarNavigationProviderC20navigationController_8willShowySo012UINavigationF0C_So06UIViewF0CtF_0(controllerCopy, viewControllerCopy);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  _s5Books25ToolbarNavigationProviderC20navigationController_8willShowySo012UINavigationF0C_So06UIViewF0CtF_0(controllerCopy, viewControllerCopy);
}

- (void)bsuiFeedViewControllerNavigationBarStyle:(unint64_t)style
{
  selfCopy = self;
  ToolbarNavigationProvider.bsuiFeedViewControllerNavigationBarStyle(_:)(style);
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;

  [scrollCopy contentOffset];
  [scrollCopy adjustedContentInset];
  sub_10079B8C4();
}

@end