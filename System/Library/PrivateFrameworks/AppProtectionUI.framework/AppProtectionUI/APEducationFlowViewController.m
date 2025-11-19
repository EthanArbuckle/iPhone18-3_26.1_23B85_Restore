@interface APEducationFlowViewController
- (APEducationFlowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (APEducationViewControllerDelegate)delegate;
- (void)setInitialAlertController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation APEducationFlowViewController

- (void)setInitialAlertController:(id)a3
{
  v4 = *(self + OBJC_IVAR___APEducationFlowViewController_initialAlertController);
  *(self + OBJC_IVAR___APEducationFlowViewController_initialAlertController) = a3;
  v3 = a3;
}

- (APEducationViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  _sSo29APEducationFlowViewControllerC15AppProtectionUIE13viewDidAppearyySbF_0();
}

- (APEducationFlowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end