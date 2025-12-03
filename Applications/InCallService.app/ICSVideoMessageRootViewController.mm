@interface ICSVideoMessageRootViewController
- (ICSVideoMessageRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (void)viewDidLoad;
@end

@implementation ICSVideoMessageRootViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001A7CC4();
}

- (ICSVideoMessageRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_1001A8168();
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  selfCopy = self;
  sub_1001A8228(selfCopy, toStyle);
}

@end