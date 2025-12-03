@interface EntryMapSheetNavigationController
- (_TtC7Journal33EntryMapSheetNavigationController)initWithCoder:(id)coder;
- (_TtC7Journal33EntryMapSheetNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC7Journal33EntryMapSheetNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation EntryMapSheetNavigationController

- (_TtC7Journal33EntryMapSheetNavigationController)initWithCoder:(id)coder
{
  type metadata accessor for EntryMapSheetNavigationController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (_TtC7Journal33EntryMapSheetNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal33EntryMapSheetNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  v8 = objc_allocWithZone(type metadata accessor for EntryMapSheetNavigationController.PresentationController());
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v11 = sub_10081172C(controllerCopy, viewController, sourceViewController);

  return v11;
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  traitCollection = [controllerCopy traitCollection];
  v8 = sub_1007CF878(traitCollection);

  return v8;
}

@end