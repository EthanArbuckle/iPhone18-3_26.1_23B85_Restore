@interface CBDebugInfoViewController
+ (NSString)CBDebugInfoViewDismissButtonPressedNotification;
- (CBDebugInfoViewController)initWithCoder:(id)a3;
- (CBDebugInfoViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
  v2 = self;
  sub_10003B3CC();
}

- (CBDebugInfoViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DebugInfoViewController();
  v9 = [(CBDebugInfoViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (CBDebugInfoViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DebugInfoViewController();
  v4 = a3;
  v5 = [(CBDebugInfoViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end