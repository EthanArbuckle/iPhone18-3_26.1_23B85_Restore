@interface TabChangeDelegate
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (_TtC20ProductPageExtension17TabChangeDelegate)init;
- (void)tabBarController:(id)controller didSelectViewController:(id)viewController;
@end

@implementation TabChangeDelegate

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_1005E7CA4(controllerCopy, viewControllerCopy);

  return 1;
}

- (void)tabBarController:(id)controller didSelectViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_1005E8350(controllerCopy, viewControllerCopy);
}

- (_TtC20ProductPageExtension17TabChangeDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end