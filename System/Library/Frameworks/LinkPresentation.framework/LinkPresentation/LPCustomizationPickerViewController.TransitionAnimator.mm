@interface LPCustomizationPickerViewController.TransitionAnimator
- (_TtCE16LinkPresentationCSo35LPCustomizationPickerViewController18TransitionAnimator)init;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
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

- (double)transitionDuration:(id)a3
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

- (void)animateTransition:(id)a3
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v5 = self;
  sub_1AE96D7C4(a3);

  swift_unknownObjectRelease();
}

@end