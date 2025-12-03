@interface PHCallsKeypadViewController
- (PHCallsKeypadViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PHCallsKeypadViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001D2514();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1001D2FF8(disappear);
}

- (PHCallsKeypadViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_1001D3B18();
}

@end