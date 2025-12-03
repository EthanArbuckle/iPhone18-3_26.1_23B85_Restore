@interface RCMoreActionsMenuCreator
- (RCControlsActionDelegate)actionDelegate;
- (UIView)source;
- (_TtC10VoiceMemos24RCMoreActionsMenuCreator)init;
- (_TtC10VoiceMemos24RCMoreActionsMenuCreator)initWithRecordingUUID:(id)d actionDelegate:(id)delegate source:(id)source accessibilityIdentifierPrefix:(id)prefix;
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

- (_TtC10VoiceMemos24RCMoreActionsMenuCreator)initWithRecordingUUID:(id)d actionDelegate:(id)delegate source:(id)source accessibilityIdentifierPrefix:(id)prefix
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  swift_unknownObjectRetain();
  sourceCopy = source;
  v15 = sub_1001902EC(v8, v10, delegate, source, v11, v13);
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