@interface LPCustomizationPickerViewController
- (LPCustomizationPickerViewController)initWithCoder:(id)coder;
- (LPCustomizationPickerViewController)initWithRootViewController:(id)controller;
- (LPCustomizationPickerViewController)initWithSource:(id)source;
- (LPCustomizationPickerViewControllerDelegate)customizationDelegate;
- (UIImage)mask;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)createAnimatorFor:(id)for reversed:(BOOL)reversed;
- (void)handleTapGestureForLinkView:(id)view;
- (void)handleTapGestureForScrollView:(id)view;
- (void)setCustomizationDelegate:(id)delegate;
- (void)setMask:(id)mask;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation LPCustomizationPickerViewController

- (UIImage)mask
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR___LPCustomizationPickerViewController_mask;
  swift_beginAccess();
  v4 = *(self + v3);

  return v4;
}

- (void)setMask:(id)mask
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR___LPCustomizationPickerViewController_mask;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = mask;
  maskCopy = mask;
}

- (LPCustomizationPickerViewControllerDelegate)customizationDelegate
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setCustomizationDelegate:(id)delegate
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

- (LPCustomizationPickerViewController)initWithSource:(id)source
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1AE980704(source);

  return v4;
}

- (LPCustomizationPickerViewController)initWithCoder:(id)coder
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  _sSo35LPCustomizationPickerViewControllerC16LinkPresentationE5coderABSgSo7NSCoderC_tcfc_0();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = LPCustomizationPickerViewController;
  selfCopy = self;
  [(LPCustomizationPickerViewController *)&v8 viewDidDisappear:disappearCopy];
  v6 = OBJC_IVAR___LPCustomizationPickerViewController_source;
  swift_beginAccess();
  v7 = *(selfCopy + v6);
  [v7 setAlpha_];
}

- (void)handleTapGestureForLinkView:(id)view
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  selfCopy = self;
  sub_1AE981B18(viewCopy);
}

- (void)handleTapGestureForScrollView:(id)view
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  selfCopy = self;
  sub_1AE982D00();
}

- (LPCustomizationPickerViewController)initWithRootViewController:(id)controller
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

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = [(LPCustomizationPickerViewController *)self createAnimatorFor:controller reversed:0];

  return v7;
}

- (id)animationControllerForDismissedController:(id)controller
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [(LPCustomizationPickerViewController *)self createAnimatorFor:controller reversed:1];

  return v5;
}

- (id)createAnimatorFor:(id)for reversed:(BOOL)reversed
{
  swift_getObjectType();
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = v6;
    _s18TransitionAnimatorCMa();
    forCopy = for;
    v9 = sub_1AE96C7B4(v7, reversed);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end