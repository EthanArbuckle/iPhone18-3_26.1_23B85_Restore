@interface ICSVideoMessageRootViewController
- (ICSVideoMessageRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation ICSVideoMessageRootViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1001A7CC4();
}

- (ICSVideoMessageRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_1001A8168();
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4
{
  v5 = self;
  sub_1001A8228(v5, a4);
}

@end