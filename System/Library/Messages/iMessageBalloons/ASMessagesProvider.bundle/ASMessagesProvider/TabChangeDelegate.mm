@interface TabChangeDelegate
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (_TtC18ASMessagesProvider17TabChangeDelegate)init;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
@end

@implementation TabChangeDelegate

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_5DFBF4(controllerCopy, viewControllerCopy);

  return 1;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_5E02A0(controllerCopy, viewControllerCopy);
}

- (_TtC18ASMessagesProvider17TabChangeDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end