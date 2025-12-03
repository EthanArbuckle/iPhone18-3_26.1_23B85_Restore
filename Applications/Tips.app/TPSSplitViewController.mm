@interface TPSSplitViewController
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC4Tips22TPSSplitViewController)initWithCoder:(id)coder;
- (_TtC4Tips22TPSSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC4Tips22TPSSplitViewController)initWithStyle:(int64_t)style;
@end

@implementation TPSSplitViewController

- (UIViewController)childViewControllerForStatusBarStyle
{
  selfCopy = self;
  v3 = sub_100024460();

  return v3;
}

- (_TtC4Tips22TPSSplitViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TPSSplitViewController();
  coderCopy = coder;
  v5 = [(TPSSplitViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC4Tips22TPSSplitViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for TPSSplitViewController();
  v9 = [(TPSSplitViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC4Tips22TPSSplitViewController)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TPSSplitViewController();
  return [(TPSSplitViewController *)&v5 initWithStyle:style];
}

@end