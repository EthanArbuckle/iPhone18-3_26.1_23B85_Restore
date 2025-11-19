@interface ICSScreenSharingBroadcasterRootViewController
- (ICSScreenSharingBroadcasterRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ICSScreenSharingBroadcasterRootViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1001AF548();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1001AF988(a3);
}

- (ICSScreenSharingBroadcasterRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_1001AFA20();
}

@end