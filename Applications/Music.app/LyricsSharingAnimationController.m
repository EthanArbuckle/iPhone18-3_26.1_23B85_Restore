@interface LyricsSharingAnimationController
- (_TtC5Music32LyricsSharingAnimationController)init;
- (id)interruptibleAnimatorForTransition:(id)a3;
@end

@implementation LyricsSharingAnimationController

- (id)interruptibleAnimatorForTransition:(id)a3
{
  v5 = self->_UISheetAnimationController_opaque[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_didPrepareAnimations];
  swift_unknownObjectRetain();
  v6 = self;
  if ((v5 & 1) == 0)
  {
    sub_10043F4BC(a3);
  }

  v9.receiver = v6;
  v9.super_class = type metadata accessor for LyricsSharingAnimationController();
  v7 = [(LyricsSharingAnimationController *)&v9 interruptibleAnimatorForTransition:a3];
  swift_unknownObjectRelease();

  return v7;
}

- (_TtC5Music32LyricsSharingAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end