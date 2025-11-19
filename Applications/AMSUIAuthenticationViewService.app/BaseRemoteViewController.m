@interface BaseRemoteViewController
- (BaseRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation BaseRemoteViewController

- (BaseRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100003070(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000032B4();
}

@end