@interface SafetyAndHandlingViewController
- (_TtC5SetupP33_B0FEB36AE6E872F4DEF7032EA437E06931SafetyAndHandlingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5SetupP33_B0FEB36AE6E872F4DEF7032EA437E06931SafetyAndHandlingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
@end

@implementation SafetyAndHandlingViewController

- (_TtC5SetupP33_B0FEB36AE6E872F4DEF7032EA437E06931SafetyAndHandlingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_10002BBB0(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_10002BBB0(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC5SetupP33_B0FEB36AE6E872F4DEF7032EA437E06931SafetyAndHandlingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = a3;
    v11 = a5;
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = a3;
    v14 = a5;
    v12 = 0;
  }

  v17.receiver = self;
  v17.super_class = type metadata accessor for SafetyAndHandlingViewController();
  v15 = [(SafetyAndHandlingViewController *)&v17 initWithTitle:a3 detailText:v12 icon:a5 contentLayout:a6];

  return v15;
}

@end