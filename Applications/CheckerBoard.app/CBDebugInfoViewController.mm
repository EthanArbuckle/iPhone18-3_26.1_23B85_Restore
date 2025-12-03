@interface CBDebugInfoViewController
+ (NSString)CBDebugInfoViewDismissButtonPressedNotification;
- (CBDebugInfoViewController)initWithCoder:(id)coder;
- (CBDebugInfoViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation CBDebugInfoViewController

+ (NSString)CBDebugInfoViewDismissButtonPressedNotification
{
  if (qword_100091CD0 != -1)
  {
    swift_once();
  }

  v3 = qword_100092870;

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10003B3CC();
}

- (CBDebugInfoViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DebugInfoViewController();
  v9 = [(CBDebugInfoViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (CBDebugInfoViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DebugInfoViewController();
  coderCopy = coder;
  v5 = [(CBDebugInfoViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end