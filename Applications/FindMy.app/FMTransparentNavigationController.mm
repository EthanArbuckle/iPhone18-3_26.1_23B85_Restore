@interface FMTransparentNavigationController
- (_TtC6FindMy33FMTransparentNavigationController)initWithCoder:(id)coder;
- (_TtC6FindMy33FMTransparentNavigationController)initWithRootViewController:(id)controller;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation FMTransparentNavigationController

- (_TtC6FindMy33FMTransparentNavigationController)initWithRootViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMTransparentNavigationController();
  controllerCopy = controller;
  v5 = [(FMActivityIndicatingNavigationController *)&v7 initWithRootViewController:controllerCopy];
  [(FMTransparentNavigationController *)v5 setDelegate:v5, v7.receiver, v7.super_class];

  return v5;
}

- (_TtC6FindMy33FMTransparentNavigationController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100266E70();
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_1002673C0(viewControllerCopy);
}

@end