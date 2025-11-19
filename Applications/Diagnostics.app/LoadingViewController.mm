@interface LoadingViewController
- (_TtC11Diagnostics21LoadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation LoadingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100078758();
}

- (_TtC11Diagnostics21LoadingViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1000796DC(v5, v7, a4);
}

@end