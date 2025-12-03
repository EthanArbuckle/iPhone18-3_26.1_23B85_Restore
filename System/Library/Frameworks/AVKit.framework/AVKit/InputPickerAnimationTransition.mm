@interface InputPickerAnimationTransition
- (_TtC5AVKit30InputPickerAnimationTransition)init;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation InputPickerAnimationTransition

- (double)transitionDuration:(id)duration
{
  result = 0.35;
  if (*(&self->super.isa + OBJC_IVAR____TtC5AVKit30InputPickerAnimationTransition_style))
  {
    return 0.25;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18B5151F4(transition);
  swift_unknownObjectRelease();
}

- (_TtC5AVKit30InputPickerAnimationTransition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end