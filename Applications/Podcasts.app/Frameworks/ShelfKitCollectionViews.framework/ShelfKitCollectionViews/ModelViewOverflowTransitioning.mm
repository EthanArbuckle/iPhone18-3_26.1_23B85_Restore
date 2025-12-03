@interface ModelViewOverflowTransitioning
- (_TtC23ShelfKitCollectionViews30ModelViewOverflowTransitioning)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation ModelViewOverflowTransitioning

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  swift_unknownObjectWeakAssign();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectWeakAssign();
  }

  v7 = [objc_allocWithZone(type metadata accessor for ModelViewOverflowPresentationController()) initWithPresentedViewController:controller presentingViewController:viewController];

  return v7;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_1DB3C0();

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1DA9B8(controllerCopy);

  return v6;
}

- (_TtC23ShelfKitCollectionViews30ModelViewOverflowTransitioning)init
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews30ModelViewOverflowTransitioning_animationView) = 0;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews30ModelViewOverflowTransitioning_selectedIndexPath;
  v5 = sub_301F38();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews30ModelViewOverflowTransitioning_transitionFromAccessoryView) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(ModelViewOverflowTransitioning *)&v7 init];
}

@end