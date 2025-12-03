@interface BaseRemoteViewController
- (BaseRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation BaseRemoteViewController

- (BaseRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100003070(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000032B4();
}

@end