@interface FMDeviceEraseViewController
- (_TtC6FindMy27FMDeviceEraseViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy27FMDeviceEraseViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
@end

@implementation FMDeviceEraseViewController

- (_TtC6FindMy27FMDeviceEraseViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_1002E1554(v9, v11, text, v13, v14, v16, layout);
  }

  text = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_1002E1554(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC6FindMy27FMDeviceEraseViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    titleCopy = title;
    iconCopy = icon;
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    titleCopy2 = title;
    iconCopy2 = icon;
    v12 = 0;
  }

  v17.receiver = self;
  v17.super_class = type metadata accessor for FMDeviceEraseViewController();
  v15 = [(FMDeviceActionsViewController *)&v17 initWithTitle:title detailText:v12 icon:icon contentLayout:layout];

  return v15;
}

@end