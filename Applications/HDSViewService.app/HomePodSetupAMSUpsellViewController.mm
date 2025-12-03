@interface HomePodSetupAMSUpsellViewController
- (_TtC14HDSViewService35HomePodSetupAMSUpsellViewController)initWithContentView:(id)view;
- (void)dynamicViewController:(id)controller didResolveWithResult:(id)result error:(id)error;
- (void)viewDidLoad;
@end

@implementation HomePodSetupAMSUpsellViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10005DCC4();
}

- (_TtC14HDSViewService35HomePodSetupAMSUpsellViewController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dynamicViewController:(id)controller didResolveWithResult:(id)result error:(id)error
{
  if (result)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_10005EE2C(controllerCopy, v8, error);
}

@end