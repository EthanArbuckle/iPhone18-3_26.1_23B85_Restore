@interface RootViewController
- (_TtC11FTMInternal18RootViewController)initWithCoder:(id)a3;
- (_TtC11FTMInternal18RootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation RootViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1002221D4();
}

- (_TtC11FTMInternal18RootViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for RootViewController();
  v9 = [(RootViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC11FTMInternal18RootViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RootViewController();
  v4 = a3;
  v5 = [(RootViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end