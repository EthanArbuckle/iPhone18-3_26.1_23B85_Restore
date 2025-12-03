@interface ComponentViewOverflowTransitioning
- (_TtC20ProductPageExtension34ComponentViewOverflowTransitioning)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation ComponentViewOverflowTransitioning

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  swift_unknownObjectWeakAssign();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectWeakAssign();
  }

  v7 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowPresentationController()) initWithPresentedViewController:controller presentingViewController:viewController];

  return v7;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_10043AF48(presentingControllerCopy);

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_10043A604(controllerCopy);

  return v6;
}

- (_TtC20ProductPageExtension34ComponentViewOverflowTransitioning)init
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC20ProductPageExtension34ComponentViewOverflowTransitioning_isTransitioningFromContainer) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension34ComponentViewOverflowTransitioning_selectedIndexPath;
  v4 = sub_10075E11C();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for ComponentViewOverflowTransitioning();
  return [(ComponentViewOverflowTransitioning *)&v6 init];
}

@end