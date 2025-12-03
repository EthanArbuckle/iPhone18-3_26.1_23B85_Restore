@interface TabChangeDelegate
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (_TtC22SubscribePageExtension17TabChangeDelegate)init;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
@end

@implementation TabChangeDelegate

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_1005C9E24(controllerCopy, viewControllerCopy);

  return 1;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_1005CA4D0(controllerCopy, viewControllerCopy);
}

- (_TtC22SubscribePageExtension17TabChangeDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end