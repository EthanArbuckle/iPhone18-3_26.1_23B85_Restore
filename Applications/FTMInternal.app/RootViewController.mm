@interface RootViewController
- (_TtC11FTMInternal18RootViewController)initWithCoder:(id)coder;
- (_TtC11FTMInternal18RootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation RootViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002221D4();
}

- (_TtC11FTMInternal18RootViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for RootViewController();
  v9 = [(RootViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC11FTMInternal18RootViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RootViewController();
  coderCopy = coder;
  v5 = [(RootViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end