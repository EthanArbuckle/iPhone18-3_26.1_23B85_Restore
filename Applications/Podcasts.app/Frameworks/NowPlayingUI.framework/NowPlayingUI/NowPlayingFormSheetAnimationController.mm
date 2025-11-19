@interface NowPlayingFormSheetAnimationController
- (_TtC12NowPlayingUI38NowPlayingFormSheetAnimationController)init;
- (id)interruptibleAnimatorForTransition:(id)a3;
- (void)animationEnded:(BOOL)a3;
@end

@implementation NowPlayingFormSheetAnimationController

- (id)interruptibleAnimatorForTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_78C30(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)animationEnded:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_79990(v3);
}

- (_TtC12NowPlayingUI38NowPlayingFormSheetAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end