@interface BaseViewController
- (_TtC11Diagnostics18BaseViewController)initWithCoder:(id)coder;
- (_TtC11Diagnostics18BaseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation BaseViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for BaseViewController();
  v2 = v6.receiver;
  viewDidLoad = [(BaseViewController *)&v6 viewDidLoad];
  v4 = (*((swift_isaMask & *v2) + 0x50))(viewDidLoad);
  v5 = (*((swift_isaMask & *v2) + 0x58))(v4);
  (*((swift_isaMask & *v2) + 0x60))(v5);
}

- (_TtC11Diagnostics18BaseViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for BaseViewController();
  v9 = [(BaseViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC11Diagnostics18BaseViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseViewController();
  coderCopy = coder;
  v5 = [(BaseViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end