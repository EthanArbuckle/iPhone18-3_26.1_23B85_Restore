@interface FTMenuRemoteAlertViewController
- (_TtC13InCallService31FTMenuRemoteAlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FTMenuRemoteAlertViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1001DD394(a3);
}

- (_TtC13InCallService31FTMenuRemoteAlertViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1001DE140(v5, v7, a4);
}

@end