@interface TTRIEditSectionsCell
- (BOOL)accessibilityActivate;
- (UICellConfigurationState)_bridgedConfigurationState;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation TTRIEditSectionsCell

- (UICellConfigurationState)_bridgedConfigurationState
{
  ObjectType = swift_getObjectType();
  v4 = sub_100058000(&unk_10077C040);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = self;
  v17.super_class = ObjectType;
  selfCopy = self;
  _bridgedConfigurationState = [(TTRIEditSectionsCell *)&v17 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(selfCopy + v13, v6);
  sub_100118A74(v6);

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
  sub_100118BFC(v7);

  (*(v5 + 8))(v7, v4);
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  sub_10011AD6C();
  v4 = v3;

  return v4 & 1;
}

@end