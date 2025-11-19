@interface InformationalViewController
- (_TtC30FamilyControlsAuthenticationUI27InformationalViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC30FamilyControlsAuthenticationUI27InformationalViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
@end

@implementation InformationalViewController

- (_TtC30FamilyControlsAuthenticationUI27InformationalViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
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
    return sub_100008344(v9, v11, a4, v13, v14, v16, a6);
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
  return sub_100008344(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC30FamilyControlsAuthenticationUI27InformationalViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v10;
  }

  *&self->delegate[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI27InformationalViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  v11 = a5;
  v12 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for InformationalViewController();
  v14 = [(InformationalViewController *)&v16 initWithTitle:v12 detailText:v13 icon:v11 contentLayout:a6];

  return v14;
}

@end