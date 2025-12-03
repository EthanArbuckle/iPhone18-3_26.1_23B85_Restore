@interface VSClusterViewController
- (_TtC7Vehicle23VSClusterViewController)initWithCoder:(id)coder;
- (_TtC7Vehicle23VSClusterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation VSClusterViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100021020();
}

- (_TtC7Vehicle23VSClusterViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for VSClusterViewController();
  v9 = [(VSClusterViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC7Vehicle23VSClusterViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for VSClusterViewController();
  coderCopy = coder;
  v5 = [(VSClusterViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end