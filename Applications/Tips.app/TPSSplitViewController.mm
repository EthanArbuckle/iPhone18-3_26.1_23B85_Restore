@interface TPSSplitViewController
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC4Tips22TPSSplitViewController)initWithCoder:(id)a3;
- (_TtC4Tips22TPSSplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC4Tips22TPSSplitViewController)initWithStyle:(int64_t)a3;
@end

@implementation TPSSplitViewController

- (UIViewController)childViewControllerForStatusBarStyle
{
  v2 = self;
  v3 = sub_100024460();

  return v3;
}

- (_TtC4Tips22TPSSplitViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TPSSplitViewController();
  v4 = a3;
  v5 = [(TPSSplitViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC4Tips22TPSSplitViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for TPSSplitViewController();
  v9 = [(TPSSplitViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC4Tips22TPSSplitViewController)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TPSSplitViewController();
  return [(TPSSplitViewController *)&v5 initWithStyle:a3];
}

@end