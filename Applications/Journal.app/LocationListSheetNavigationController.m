@interface LocationListSheetNavigationController
- (_TtC7Journal37LocationListSheetNavigationController)initWithCoder:(id)a3;
- (_TtC7Journal37LocationListSheetNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC7Journal37LocationListSheetNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation LocationListSheetNavigationController

- (_TtC7Journal37LocationListSheetNavigationController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal37LocationListSheetNavigationController_standardDetent) = 0;
  type metadata accessor for LocationListSheetNavigationController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (_TtC7Journal37LocationListSheetNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal37LocationListSheetNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v9 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal37LocationListSheetNavigationController_standardDetent);
  if (v9)
  {
    v10 = a3;
    v11 = a4;
    v12 = a5;
    v13 = self;
    v14 = v9;
  }

  else
  {
    v15 = objc_opt_self();
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = self;
    v14 = [v15 largeDetent];
  }

  v20 = objc_allocWithZone(type metadata accessor for LocationListSheetNavigationController.PresentationController());
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = v9;
  v25 = sub_1001F3B84(v21, a4, v23, v14);

  return v25;
}

@end