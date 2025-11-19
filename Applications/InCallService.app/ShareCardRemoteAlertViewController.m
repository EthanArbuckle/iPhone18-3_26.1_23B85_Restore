@interface ShareCardRemoteAlertViewController
- (_TtC13InCallService34ShareCardRemoteAlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ShareCardRemoteAlertViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100192628(a3);
}

- (_TtC13InCallService34ShareCardRemoteAlertViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100192D1C(v5, v7, a4);
}

@end