@interface FMOnboardingNavigationController
- (_TtC6FindMy32FMOnboardingNavigationController)initWithCoder:(id)a3;
- (_TtC6FindMy32FMOnboardingNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC6FindMy32FMOnboardingNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC6FindMy32FMOnboardingNavigationController)initWithRootViewController:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMOnboardingNavigationController

- (_TtC6FindMy32FMOnboardingNavigationController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_conditionSubscription) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_isDissmissable) = 0;
  *&self->mediator[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_onboardingDelegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMOnboardingNavigationController();
  v4 = v7.receiver;
  [(FMOnboardingNavigationController *)&v7 viewWillAppear:v3];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_mediator] + 16);
  v6 = sub_1003CC338(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_conditionSubscription] = v6;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1002DB1D0(a3);
}

- (_TtC6FindMy32FMOnboardingNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy32FMOnboardingNavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy32FMOnboardingNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end