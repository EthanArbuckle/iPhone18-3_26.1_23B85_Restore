@interface LPCustomizationPickerViewController
- (LPCustomizationPickerViewController)initWithCoder:(id)a3;
- (LPCustomizationPickerViewController)initWithRootViewController:(id)a3;
- (LPCustomizationPickerViewController)initWithSource:(id)a3;
- (LPCustomizationPickerViewControllerDelegate)customizationDelegate;
- (UIImage)mask;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)createAnimatorFor:(id)a3 reversed:(BOOL)a4;
- (void)handleTapGestureForLinkView:(id)a3;
- (void)handleTapGestureForScrollView:(id)a3;
- (void)setCustomizationDelegate:(id)a3;
- (void)setMask:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
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

- (void)setMask:(id)a3
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
  *(self + v5) = a3;
  v7 = a3;
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

- (void)setCustomizationDelegate:(id)a3
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

- (LPCustomizationPickerViewController)initWithSource:(id)a3
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1AE980704(a3);

  return v4;
}

- (LPCustomizationPickerViewController)initWithCoder:(id)a3
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

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = LPCustomizationPickerViewController;
  v5 = self;
  [(LPCustomizationPickerViewController *)&v8 viewDidDisappear:v3];
  v6 = OBJC_IVAR___LPCustomizationPickerViewController_source;
  swift_beginAccess();
  v7 = *(v5 + v6);
  [v7 setAlpha_];
}

- (void)handleTapGestureForLinkView:(id)a3
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1AE981B18(v5);
}

- (void)handleTapGestureForScrollView:(id)a3
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1AE982D00();
}

- (LPCustomizationPickerViewController)initWithRootViewController:(id)a3
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

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = [(LPCustomizationPickerViewController *)self createAnimatorFor:a3 reversed:0];

  return v7;
}

- (id)animationControllerForDismissedController:(id)a3
{
  sub_1AE988824();
  sub_1AE988814();
  sub_1AE9887E4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [(LPCustomizationPickerViewController *)self createAnimatorFor:a3 reversed:1];

  return v5;
}

- (id)createAnimatorFor:(id)a3 reversed:(BOOL)a4
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
    v8 = a3;
    v9 = sub_1AE96C7B4(v7, a4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end