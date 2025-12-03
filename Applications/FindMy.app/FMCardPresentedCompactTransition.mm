@interface FMCardPresentedCompactTransition
- (_TtC6FindMy32FMCardPresentedCompactTransition)init;
- (void)animateTransition:(id)transition;
@end

@implementation FMCardPresentedCompactTransition

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100370D24(transition);
  swift_unknownObjectRelease();
}

- (_TtC6FindMy32FMCardPresentedCompactTransition)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMCardPresentedCompactTransition();
  return [(FMCardTransition *)&v3 init];
}

@end