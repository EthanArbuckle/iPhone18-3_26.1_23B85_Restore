@interface ShareCardRemoteAlertViewController
- (_TtC13InCallService34ShareCardRemoteAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ShareCardRemoteAlertViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100192628(appear);
}

- (_TtC13InCallService34ShareCardRemoteAlertViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100192D1C(v5, v7, bundle);
}

@end