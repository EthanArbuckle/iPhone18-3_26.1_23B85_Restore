@interface CRLUISplitViewController
- (_TtC8Freeform24CRLUISplitViewController)initWithCoder:(id)coder;
- (_TtC8Freeform24CRLUISplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8Freeform24CRLUISplitViewController)initWithStyle:(int64_t)style;
@end

@implementation CRLUISplitViewController

- (_TtC8Freeform24CRLUISplitViewController)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLUISplitViewController();
  return [(CRLUISplitViewController *)&v5 initWithStyle:style];
}

- (_TtC8Freeform24CRLUISplitViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLUISplitViewController();
  coderCopy = coder;
  v5 = [(CRLUISplitViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC8Freeform24CRLUISplitViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for CRLUISplitViewController();
  v9 = [(CRLUISplitViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

@end