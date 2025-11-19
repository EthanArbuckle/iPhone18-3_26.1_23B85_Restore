@interface ComingSoonViewController
- (_TtC8AppStore24ComingSoonViewController)initWithCoder:(id)a3;
- (_TtC8AppStore24ComingSoonViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
@end

@implementation ComingSoonViewController

- (void)loadView
{
  v2 = self;
  sub_1002DE5D8();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(ComingSoonViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (_TtC8AppStore24ComingSoonViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for ComingSoonViewController();
  v9 = [(ComingSoonViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC8AppStore24ComingSoonViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ComingSoonViewController();
  v4 = a3;
  v5 = [(ComingSoonViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end