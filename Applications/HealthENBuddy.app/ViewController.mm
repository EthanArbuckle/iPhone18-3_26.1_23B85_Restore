@interface ViewController
- (_TtC13HealthENBuddy14ViewController)initWithCoder:(id)coder;
- (_TtC13HealthENBuddy14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation ViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ViewController();
  [(ViewController *)&v2 viewDidLoad];
}

- (_TtC13HealthENBuddy14ViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for ViewController();
  v9 = [(ViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC13HealthENBuddy14ViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ViewController();
  coderCopy = coder;
  v5 = [(ViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end