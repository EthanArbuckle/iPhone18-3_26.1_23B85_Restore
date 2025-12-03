@interface WBViewController
- (_TtC12ClarityBoard16WBViewController)initWithCoder:(id)coder;
- (_TtC12ClarityBoard16WBViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation WBViewController

- (_TtC12ClarityBoard16WBViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for WBViewController();
  v9 = [(WBViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC12ClarityBoard16WBViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WBViewController();
  coderCopy = coder;
  v5 = [(WBViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end