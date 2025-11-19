@interface AISShieldViewController
- (AISShieldViewController)initWithCoder:(id)a3;
- (AISShieldViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AISShieldViewController)initWithShieldFlowContext:(id)a3;
- (AISShieldViewControllerDelegate)delegate;
- (void)setContext:(id)a3;
- (void)setupViewController;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AISShieldViewController

- (void)setContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___AISShieldViewController_context);
  *(self + OBJC_IVAR___AISShieldViewController_context) = a3;
  v3 = a3;
}

- (AISShieldViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (AISShieldViewController)initWithShieldFlowContext:(id)a3
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR___AISShieldViewController_protoAccountNavController;
  v6 = objc_allocWithZone(type metadata accessor for ProtoAccountNavigationController());
  v7 = a3;
  *(self + v5) = [v6 init];
  *(self + OBJC_IVAR___AISShieldViewController_context) = v7;
  v9.receiver = self;
  v9.super_class = AISShieldViewController;
  return [(AISShieldViewController *)&v9 initWithNibName:0 bundle:0];
}

- (AISShieldViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___AISShieldViewController_protoAccountNavController;
  *(self + v4) = [objc_allocWithZone(type metadata accessor for ProtoAccountNavigationController()) init];
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  AISShieldViewController.viewWillAppear(_:)(a3);
}

- (void)setupViewController
{
  v2 = self;
  sub_240941BCC();
}

- (AISShieldViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end