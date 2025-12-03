@interface LoadingViewController
- (_TtC11Diagnostics21LoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation LoadingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100078758();
}

- (_TtC11Diagnostics21LoadingViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1000796DC(v5, v7, bundle);
}

@end