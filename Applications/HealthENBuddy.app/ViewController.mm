@interface ViewController
- (_TtC13HealthENBuddy14ViewController)initWithCoder:(id)a3;
- (_TtC13HealthENBuddy14ViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation ViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ViewController();
  [(ViewController *)&v2 viewDidLoad];
}

- (_TtC13HealthENBuddy14ViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for ViewController();
  v9 = [(ViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC13HealthENBuddy14ViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ViewController();
  v4 = a3;
  v5 = [(ViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end