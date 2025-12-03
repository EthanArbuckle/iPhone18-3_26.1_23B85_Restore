@interface CrossFadeAnimator
- (_TtC23ShelfKitCollectionViews17CrossFadeAnimator)init;
- (void)animateTransition:(id)transition;
@end

@implementation CrossFadeAnimator

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D7D58(transition);
  swift_unknownObjectRelease();
}

- (_TtC23ShelfKitCollectionViews17CrossFadeAnimator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CrossFadeAnimator();
  return [(CrossFadeAnimator *)&v3 init];
}

@end