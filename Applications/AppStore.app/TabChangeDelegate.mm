@interface TabChangeDelegate
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (_TtC8AppStore17TabChangeDelegate)init;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
@end

@implementation TabChangeDelegate

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_100399C44(controllerCopy, viewControllerCopy);

  return 1;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_10039A2F0(controllerCopy, viewControllerCopy);
}

- (_TtC8AppStore17TabChangeDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end