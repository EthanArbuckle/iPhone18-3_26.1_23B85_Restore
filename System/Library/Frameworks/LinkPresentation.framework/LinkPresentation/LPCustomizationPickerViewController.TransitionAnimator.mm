@interface LPCustomizationPickerViewController.TransitionAnimator
- (_TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator)init;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation LPCustomizationPickerViewController.TransitionAnimator

- (_TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator)init
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)transitionDuration:(id)duration
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0.8;
}

- (void)animateTransition:(id)transition
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1AE96D7C4(transition);

  swift_unknownObjectRelease();
}

@end