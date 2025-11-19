@interface CRLUISplitViewController
- (_TtC8Freeform24CRLUISplitViewController)initWithCoder:(id)a3;
- (_TtC8Freeform24CRLUISplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8Freeform24CRLUISplitViewController)initWithStyle:(int64_t)a3;
@end

@implementation CRLUISplitViewController

- (_TtC8Freeform24CRLUISplitViewController)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLUISplitViewController();
  return [(CRLUISplitViewController *)&v5 initWithStyle:a3];
}

- (_TtC8Freeform24CRLUISplitViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLUISplitViewController();
  v4 = a3;
  v5 = [(CRLUISplitViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC8Freeform24CRLUISplitViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for CRLUISplitViewController();
  v9 = [(CRLUISplitViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

@end