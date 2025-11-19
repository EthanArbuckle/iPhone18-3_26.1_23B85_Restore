@interface BaseViewController
- (_TtC11Diagnostics18BaseViewController)initWithCoder:(id)a3;
- (_TtC11Diagnostics18BaseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation BaseViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for BaseViewController();
  v2 = v6.receiver;
  v3 = [(BaseViewController *)&v6 viewDidLoad];
  v4 = (*((swift_isaMask & *v2) + 0x50))(v3);
  v5 = (*((swift_isaMask & *v2) + 0x58))(v4);
  (*((swift_isaMask & *v2) + 0x60))(v5);
}

- (_TtC11Diagnostics18BaseViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for BaseViewController();
  v9 = [(BaseViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC11Diagnostics18BaseViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseViewController();
  v4 = a3;
  v5 = [(BaseViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end