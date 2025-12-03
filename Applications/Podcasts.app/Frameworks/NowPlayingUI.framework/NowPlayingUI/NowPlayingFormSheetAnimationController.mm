@interface NowPlayingFormSheetAnimationController
- (_TtC12NowPlayingUI38NowPlayingFormSheetAnimationController)init;
- (id)interruptibleAnimatorForTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
@end

@implementation NowPlayingFormSheetAnimationController

- (id)interruptibleAnimatorForTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_78C30(transition);
  swift_unknownObjectRelease();

  return v6;
}

- (void)animationEnded:(BOOL)ended
{
  endedCopy = ended;
  selfCopy = self;
  sub_79990(endedCopy);
}

- (_TtC12NowPlayingUI38NowPlayingFormSheetAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end