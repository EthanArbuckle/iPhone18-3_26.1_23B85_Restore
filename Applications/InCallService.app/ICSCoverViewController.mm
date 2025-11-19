@interface ICSCoverViewController
- (ICSCoverViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)updateViews;
- (void)viewDidLoad;
@end

@implementation ICSCoverViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1001FC08C();
}

- (void)updateViews
{
  v2 = self;
  sub_1001FC480();
}

- (ICSCoverViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_1001FC91C();
}

@end