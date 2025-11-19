@interface TodayArticleTransitioningDelegate
- (_TtC8AppStore33TodayArticleTransitioningDelegate)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation TodayArticleTransitioningDelegate

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10078617C(v8, a4, v10);

  return v12;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_100788BD0(v8);

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100787708(v4);

  return v6;
}

- (_TtC8AppStore33TodayArticleTransitioningDelegate)init
{
  ObjectType = swift_getObjectType();
  *&self->presentedViewController[OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_presentedViewController] = 0;
  swift_unknownObjectWeakInit();
  *&self->presentedViewController[OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_presentingViewController] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_selectedIndexPath;
  v5 = type metadata accessor for IndexPath();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.isa + OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(TodayArticleTransitioningDelegate *)&v7 init];
}

@end