@interface FMRemoteUIPRXFlowContentViewController
- (_TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)proxCardFlowDidDismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation FMRemoteUIPRXFlowContentViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10005A2E0(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10005A538(disappear);
}

- (_TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10005A8AC(v5, v7, bundle);
}

- (void)proxCardFlowDidDismiss
{
  selfCopy = self;
  sub_10005AB58();
}

@end