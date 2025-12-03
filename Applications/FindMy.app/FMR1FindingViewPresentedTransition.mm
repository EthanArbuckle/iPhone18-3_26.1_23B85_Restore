@interface FMR1FindingViewPresentedTransition
- (_TtC6FindMy34FMR1FindingViewPresentedTransition)init;
- (void)animateTransition:(id)transition;
@end

@implementation FMR1FindingViewPresentedTransition

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001A7EC4(transition);
  swift_unknownObjectRelease();
}

- (_TtC6FindMy34FMR1FindingViewPresentedTransition)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMR1FindingViewPresentedTransition();
  return [(FMR1Transition *)&v3 init];
}

@end