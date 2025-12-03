@interface TTRITemplatesListCell
- (NSArray)accessibilityCustomActions;
- (NSString)accessibilityLabel;
- (UICellConfigurationState)_bridgedConfigurationState;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setAccessibilityCustomActions:(id)isa;
@end

@implementation TTRITemplatesListCell

- (UICellConfigurationState)_bridgedConfigurationState
{
  ObjectType = swift_getObjectType();
  v4 = sub_100058000(&unk_10077FBB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = self;
  v17.super_class = ObjectType;
  selfCopy = self;
  _bridgedConfigurationState = [(TTRITemplatesListCell *)&v17 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_viewModel;
  swift_beginAccess();
  sub_1004933FC(selfCopy + v13, v6);
  sub_10048F5C4(v6);

  v14.super.super.isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  (*(v8 + 8))(v10, v7);

  return v14.super.super.isa;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10048F7DC(v7);

  (*(v5 + 8))(v7, v4);
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_1004914E4();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_100491AC0();

  if (v3)
  {
    sub_100003540(0, &qword_10076BCE0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setAccessibilityCustomActions:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076BCE0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRITemplatesListCell *)&v8 setAccessibilityCustomActions:isa];
}

@end