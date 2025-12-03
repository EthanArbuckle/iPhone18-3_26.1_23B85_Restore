@interface FTMenuRemoteAlertViewController
- (_TtC13InCallService31FTMenuRemoteAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FTMenuRemoteAlertViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1001DD394(appear);
}

- (_TtC13InCallService31FTMenuRemoteAlertViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1001DE140(v5, v7, bundle);
}

@end