@interface AISShieldViewController
- (AISShieldViewController)initWithCoder:(id)coder;
- (AISShieldViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AISShieldViewController)initWithShieldFlowContext:(id)context;
- (AISShieldViewControllerDelegate)delegate;
- (void)setContext:(id)context;
- (void)setupViewController;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AISShieldViewController

- (void)setContext:(id)context
{
  v4 = *(self + OBJC_IVAR___AISShieldViewController_context);
  *(self + OBJC_IVAR___AISShieldViewController_context) = context;
  contextCopy = context;
}

- (AISShieldViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (AISShieldViewController)initWithShieldFlowContext:(id)context
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR___AISShieldViewController_protoAccountNavController;
  v6 = objc_allocWithZone(type metadata accessor for ProtoAccountNavigationController());
  contextCopy = context;
  *(self + v5) = [v6 init];
  *(self + OBJC_IVAR___AISShieldViewController_context) = contextCopy;
  v9.receiver = self;
  v9.super_class = AISShieldViewController;
  return [(AISShieldViewController *)&v9 initWithNibName:0 bundle:0];
}

- (AISShieldViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___AISShieldViewController_protoAccountNavController;
  *(self + v4) = [objc_allocWithZone(type metadata accessor for ProtoAccountNavigationController()) init];
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  AISShieldViewController.viewWillAppear(_:)(appear);
}

- (void)setupViewController
{
  selfCopy = self;
  sub_240941BCC();
}

- (AISShieldViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end