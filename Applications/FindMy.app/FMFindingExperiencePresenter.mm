@interface FMFindingExperiencePresenter
- (_TtC6FindMy28FMFindingExperiencePresenter)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
@end

@implementation FMFindingExperiencePresenter

- (_TtC6FindMy28FMFindingExperiencePresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = [objc_allocWithZone(type metadata accessor for FMR1FindingViewPresentedTransition()) init];

  return v5;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = [objc_allocWithZone(type metadata accessor for FMR1FindingViewDismissedTransition()) init];

  return v3;
}

@end