@interface PHToolBarViewController
- (_TtC13InCallService23PHToolBarViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation PHToolBarViewController

- (_TtC13InCallService23PHToolBarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10023E008(v5, v7, bundle);
}

@end