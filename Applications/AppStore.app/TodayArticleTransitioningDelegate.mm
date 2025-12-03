@interface TodayArticleTransitioningDelegate
- (_TtC8AppStore33TodayArticleTransitioningDelegate)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation TodayArticleTransitioningDelegate

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  selfCopy = self;
  v12 = sub_10078617C(controllerCopy, viewController, sourceViewControllerCopy);

  return v12;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_100788BD0(controllerCopy);

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_100787708(controllerCopy);

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