@interface HomePodSetupAMSUpsellViewController
- (_TtC14HDSViewService35HomePodSetupAMSUpsellViewController)initWithContentView:(id)a3;
- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5;
- (void)viewDidLoad;
@end

@implementation HomePodSetupAMSUpsellViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10005DCC4();
}

- (_TtC14HDSViewService35HomePodSetupAMSUpsellViewController)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5
{
  if (a4)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_10005EE2C(v9, v8, a5);
}

@end