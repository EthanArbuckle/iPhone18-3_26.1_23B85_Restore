@interface InputPickerAnimationTransition
- (_TtC5AVKit30InputPickerAnimationTransition)init;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation InputPickerAnimationTransition

- (double)transitionDuration:(id)a3
{
  result = 0.35;
  if (*(&self->super.isa + OBJC_IVAR____TtC5AVKit30InputPickerAnimationTransition_style))
  {
    return 0.25;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_18B5151F4(a3);
  swift_unknownObjectRelease();
}

- (_TtC5AVKit30InputPickerAnimationTransition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end