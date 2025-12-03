@interface InformationalViewController
- (_TtC30FamilyControlsAuthenticationUI27InformationalViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC30FamilyControlsAuthenticationUI27InformationalViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
@end

@implementation InformationalViewController

- (_TtC30FamilyControlsAuthenticationUI27InformationalViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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
    return sub_100008344(v9, v11, text, v13, v14, v16, layout);
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
  return sub_100008344(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC30FamilyControlsAuthenticationUI27InformationalViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    text = v10;
  }

  *&self->delegate[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI27InformationalViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  iconCopy = icon;
  v12 = String._bridgeToObjectiveC()();

  if (text)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for InformationalViewController();
  v14 = [(InformationalViewController *)&v16 initWithTitle:v12 detailText:v13 icon:iconCopy contentLayout:layout];

  return v14;
}

@end