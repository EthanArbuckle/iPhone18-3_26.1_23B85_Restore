@interface APEducationFlowViewController
- (APEducationFlowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (APEducationViewControllerDelegate)delegate;
- (void)setInitialAlertController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation APEducationFlowViewController

- (void)setInitialAlertController:(id)controller
{
  v4 = *(self + OBJC_IVAR___APEducationFlowViewController_initialAlertController);
  *(self + OBJC_IVAR___APEducationFlowViewController_initialAlertController) = controller;
  controllerCopy = controller;
}

- (APEducationViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  _sSo29APEducationFlowViewControllerC15AppProtectionUIE13viewDidAppearyySbF_0();
}

- (APEducationFlowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end