@interface FMFindingExperiencePresenter
- (_TtC6FindMy28FMFindingExperiencePresenter)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
@end

@implementation FMFindingExperiencePresenter

- (_TtC6FindMy28FMFindingExperiencePresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = [objc_allocWithZone(type metadata accessor for FMR1FindingViewPresentedTransition()) init];

  return v5;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = [objc_allocWithZone(type metadata accessor for FMR1FindingViewDismissedTransition()) init];

  return v3;
}

@end