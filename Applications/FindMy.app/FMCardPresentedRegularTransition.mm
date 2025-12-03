@interface FMCardPresentedRegularTransition
- (_TtC6FindMy32FMCardPresentedRegularTransition)init;
- (void)animateTransition:(id)transition;
@end

@implementation FMCardPresentedRegularTransition

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10026B7CC(transition);
  swift_unknownObjectRelease();
}

- (_TtC6FindMy32FMCardPresentedRegularTransition)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMCardPresentedRegularTransition();
  return [(FMCardTransition *)&v3 init];
}

@end