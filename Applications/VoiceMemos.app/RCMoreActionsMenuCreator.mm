@interface RCMoreActionsMenuCreator
- (RCControlsActionDelegate)actionDelegate;
- (UIView)source;
- (_TtC10VoiceMemos24RCMoreActionsMenuCreator)init;
- (_TtC10VoiceMemos24RCMoreActionsMenuCreator)initWithRecordingUUID:(id)a3 actionDelegate:(id)a4 source:(id)a5 accessibilityIdentifierPrefix:(id)a6;
@end

@implementation RCMoreActionsMenuCreator

- (RCControlsActionDelegate)actionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIView)source
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC10VoiceMemos24RCMoreActionsMenuCreator)initWithRecordingUUID:(id)a3 actionDelegate:(id)a4 source:(id)a5 accessibilityIdentifierPrefix:(id)a6
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  swift_unknownObjectRetain();
  v14 = a5;
  v15 = sub_1001902EC(v8, v10, a4, a5, v11, v13);
  swift_unknownObjectRelease();

  return v15;
}

- (_TtC10VoiceMemos24RCMoreActionsMenuCreator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end