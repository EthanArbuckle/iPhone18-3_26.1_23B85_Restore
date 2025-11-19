@interface ModelViewOverflowTransitioning
- (_TtC23ShelfKitCollectionViews30ModelViewOverflowTransitioning)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation ModelViewOverflowTransitioning

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  swift_unknownObjectWeakAssign();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectWeakAssign();
  }

  v7 = [objc_allocWithZone(type metadata accessor for ModelViewOverflowPresentationController()) initWithPresentedViewController:a3 presentingViewController:a4];

  return v7;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1DB3C0();

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1DA9B8(v4);

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