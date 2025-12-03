@interface StaticTransitionAnimator
- (_TtC23ShelfKitCollectionViews24StaticTransitionAnimator)init;
- (void)animateTransition:(id)transition;
@end

@implementation StaticTransitionAnimator

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1DB658(transition);
  swift_unknownObjectRelease();
}

- (_TtC23ShelfKitCollectionViews24StaticTransitionAnimator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StaticTransitionAnimator();
  return [(StaticTransitionAnimator *)&v3 init];
}

@end