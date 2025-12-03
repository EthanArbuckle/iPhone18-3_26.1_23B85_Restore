@interface InputPickeriPadPresentationAnimationController
- (_TtC5AVKit46InputPickeriPadPresentationAnimationController)init;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation InputPickeriPadPresentationAnimationController

- (double)transitionDuration:(id)duration
{
  result = 0.35;
  if (*(&self->super.isa + OBJC_IVAR____TtC5AVKit46InputPickeriPadPresentationAnimationController_style))
  {
    return 0.25;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18B4A6CA8(transition);
  swift_unknownObjectRelease();
}

- (_TtC5AVKit46InputPickeriPadPresentationAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end