@interface FMCardDismissedRegularTransition
- (_TtC6FindMy32FMCardDismissedRegularTransition)init;
- (void)animateTransition:(id)transition;
@end

@implementation FMCardDismissedRegularTransition

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10041081C(transition);
  swift_unknownObjectRelease();
}

- (_TtC6FindMy32FMCardDismissedRegularTransition)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMCardDismissedRegularTransition();
  return [(FMCardTransition *)&v3 init];
}

@end