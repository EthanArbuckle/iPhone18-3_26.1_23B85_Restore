@interface FMOnboardingNavigationController
- (_TtC6FindMy32FMOnboardingNavigationController)initWithCoder:(id)coder;
- (_TtC6FindMy32FMOnboardingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC6FindMy32FMOnboardingNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC6FindMy32FMOnboardingNavigationController)initWithRootViewController:(id)controller;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMOnboardingNavigationController

- (_TtC6FindMy32FMOnboardingNavigationController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_conditionSubscription) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_isDissmissable) = 0;
  *&self->mediator[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_onboardingDelegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMOnboardingNavigationController();
  v4 = v7.receiver;
  [(FMOnboardingNavigationController *)&v7 viewWillAppear:appearCopy];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_mediator] + 16);
  v6 = sub_1003CC338(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_conditionSubscription] = v6;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1002DB1D0(disappear);
}

- (_TtC6FindMy32FMOnboardingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy32FMOnboardingNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy32FMOnboardingNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end