@interface ComponentViewOverflowTransitioning
- (_TtC8AppStore34ComponentViewOverflowTransitioning)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation ComponentViewOverflowTransitioning

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  swift_unknownObjectWeakAssign();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectWeakAssign();
  }

  v7 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowPresentationController()) initWithPresentedViewController:a3 presentingViewController:a4];

  return v7;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10022BADC(v9);

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10022B148(v4);

  return v6;
}

- (_TtC8AppStore34ComponentViewOverflowTransitioning)init
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC8AppStore34ComponentViewOverflowTransitioning_isTransitioningFromContainer) = 0;
  v3 = OBJC_IVAR____TtC8AppStore34ComponentViewOverflowTransitioning_selectedIndexPath;
  v4 = type metadata accessor for IndexPath();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for ComponentViewOverflowTransitioning();
  return [(ComponentViewOverflowTransitioning *)&v6 init];
}

@end