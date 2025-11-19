@interface FMCardDismissedCompactTransition
- (_TtC6FindMy32FMCardDismissedCompactTransition)init;
- (void)animateTransition:(id)a3;
@end

@implementation FMCardDismissedCompactTransition

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1004FFB08(a3);
  swift_unknownObjectRelease();
}

- (_TtC6FindMy32FMCardDismissedCompactTransition)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMCardDismissedCompactTransition();
  return [(FMCardTransition *)&v3 init];
}

@end