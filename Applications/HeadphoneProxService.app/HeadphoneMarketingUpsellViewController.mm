@interface HeadphoneMarketingUpsellViewController
- (_TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController)initWithContentView:(id)a3;
- (void)dynamicViewController:(id)a3 didResolveWithResult:(id)a4 error:(id)a5;
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

- (_TtC20HeadphoneProxService38HeadphoneMarketingUpsellViewController)initWithContentView:(id)a3
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
  sub_100037658(v9, v8, a5);
}

@end