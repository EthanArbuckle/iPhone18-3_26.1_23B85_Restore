@interface PHCallsKeypadViewController
- (PHCallsKeypadViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PHCallsKeypadViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1001D2514();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1001D2FF8(a3);
}

- (PHCallsKeypadViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_1001D3B18();
}

@end