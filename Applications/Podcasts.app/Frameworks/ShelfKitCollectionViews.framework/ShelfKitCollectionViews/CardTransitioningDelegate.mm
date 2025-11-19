@interface CardTransitioningDelegate
- (_TtC23ShelfKitCollectionViews25CardTransitioningDelegate)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation CardTransitioningDelegate

- (_TtC23ShelfKitCollectionViews25CardTransitioningDelegate)init
{
  v2 = type metadata accessor for CardTransitioningDelegate();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews25CardTransitioningDelegate_configuration];
  *v4 = 1;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 16) = 1;
  *(v4 + 5) = 0;
  *(v4 + 6) = 0;
  *(v4 + 56) = xmmword_31D770;
  v4[72] = 0;
  *(v4 + 10) = 15;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = [(CardTransitioningDelegate *)&v7 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_93754(v8, a4, v10);

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = [objc_allocWithZone(type metadata accessor for CardDismissalAnimator()) init];

  return v3;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = [objc_allocWithZone(type metadata accessor for CardPresentationAnimator()) init];

  return v5;
}

@end