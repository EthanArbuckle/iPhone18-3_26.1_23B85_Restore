@interface TipUIPopoverViewController.Delegate
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (_TtCC6TipKit26TipUIPopoverViewControllerP33_3C6E95058702E04B23C6D12101E9B7608Delegate)init;
- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
@end

@implementation TipUIPopoverViewController.Delegate

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_1A36190A4();

  return v3;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1A36190A4();

  return v4;
}

- (void)presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  presentationControllerCopy = presentationController;
  selfCopy = self;
  sub_1A361920C(controllerCopy, presentationControllerCopy);
}

- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  selfCopy = self;
  v9 = sub_1A361938C(controllerCopy, style);

  return v9;
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A36194FC(controllerCopy, style, coordinator);

  swift_unknownObjectRelease();
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  dismissCopy = dismiss;
  selfCopy = self;
  v7 = sub_1A36196A4(dismissCopy);

  return v7 & 1;
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1A361998C(controllerCopy, rect, view);
}

- (_TtCC6TipKit26TipUIPopoverViewControllerP33_3C6E95058702E04B23C6D12101E9B7608Delegate)init
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1A3619B24();

  return v2;
}

@end