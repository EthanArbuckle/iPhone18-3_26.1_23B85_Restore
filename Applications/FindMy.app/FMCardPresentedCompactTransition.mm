@interface FMCardPresentedCompactTransition
- (_TtC6FindMy32FMCardPresentedCompactTransition)init;
- (void)animateTransition:(id)a3;
@end

@implementation FMCardPresentedCompactTransition

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100370D24(a3);
  swift_unknownObjectRelease();
}

- (_TtC6FindMy32FMCardPresentedCompactTransition)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMCardPresentedCompactTransition();
  return [(FMCardTransition *)&v3 init];
}

@end