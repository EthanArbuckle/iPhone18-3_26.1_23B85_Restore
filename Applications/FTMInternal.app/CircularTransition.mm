@interface CircularTransition
- (void)animateTransition:(id)transition;
@end

@implementation CircularTransition

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001C0FB0(transition);
  swift_unknownObjectRelease();
}

@end