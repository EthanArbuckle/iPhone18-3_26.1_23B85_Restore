@interface LocationListSheetNavigationController
- (_TtC7Journal37LocationListSheetNavigationController)initWithCoder:(id)coder;
- (_TtC7Journal37LocationListSheetNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC7Journal37LocationListSheetNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation LocationListSheetNavigationController

- (_TtC7Journal37LocationListSheetNavigationController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal37LocationListSheetNavigationController_standardDetent) = 0;
  type metadata accessor for LocationListSheetNavigationController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (_TtC7Journal37LocationListSheetNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal37LocationListSheetNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  v9 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal37LocationListSheetNavigationController_standardDetent);
  if (v9)
  {
    controllerCopy = controller;
    viewControllerCopy = viewController;
    sourceViewControllerCopy = sourceViewController;
    selfCopy = self;
    largeDetent = v9;
  }

  else
  {
    v15 = objc_opt_self();
    controllerCopy2 = controller;
    viewControllerCopy2 = viewController;
    sourceViewControllerCopy2 = sourceViewController;
    selfCopy2 = self;
    largeDetent = [v15 largeDetent];
  }

  v20 = objc_allocWithZone(type metadata accessor for LocationListSheetNavigationController.PresentationController());
  controllerCopy3 = controller;
  viewControllerCopy3 = viewController;
  sourceViewControllerCopy3 = sourceViewController;
  v24 = v9;
  v25 = sub_1001F3B84(controllerCopy3, viewController, sourceViewControllerCopy3, largeDetent);

  return v25;
}

@end