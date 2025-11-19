@interface FMRemoteUIPRXFlowContentViewController
- (_TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)proxCardFlowDidDismiss;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation FMRemoteUIPRXFlowContentViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10005A2E0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10005A538(a3);
}

- (_TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10005A8AC(v5, v7, a4);
}

- (void)proxCardFlowDidDismiss
{
  v2 = self;
  sub_10005AB58();
}

@end