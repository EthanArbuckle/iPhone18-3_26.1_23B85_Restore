@interface HeadphoneMarketingUpsellViewController
- (_TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController)initWithContentView:(id)view;
- (void)dynamicViewController:(id)controller didResolveWithResult:(id)result error:(id)error;
- (void)viewDidLoad;
@end

@implementation HeadphoneMarketingUpsellViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HeadphoneMarketingUpsellViewController();
  v2 = v3.receiver;
  [(HeadphoneMarketingUpsellViewController *)&v3 viewDidLoad];
  sub_100037038();
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (_TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController)initWithContentView:(id)view
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
  sub_100037658(controllerCopy, v8, error);
}

@end