@interface MiniPlayerViewController
- (_TtC5Music24MiniPlayerViewController)initWithCoder:(id)coder;
- (_TtC5Music24MiniPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation MiniPlayerViewController

- (_TtC5Music24MiniPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for MiniPlayerViewController();
  v9 = [(MiniPlayerViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC5Music24MiniPlayerViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MiniPlayerViewController();
  coderCopy = coder;
  v5 = [(MiniPlayerViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end