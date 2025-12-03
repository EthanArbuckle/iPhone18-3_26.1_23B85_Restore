@interface FMCardDismissedCompactTransition
- (_TtC6FindMy32FMCardDismissedCompactTransition)init;
- (void)animateTransition:(id)transition;
@end

@implementation FMCardDismissedCompactTransition

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1004FFB08(transition);
  swift_unknownObjectRelease();
}

- (_TtC6FindMy32FMCardDismissedCompactTransition)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMCardDismissedCompactTransition();
  return [(FMCardTransition *)&v3 init];
}

@end