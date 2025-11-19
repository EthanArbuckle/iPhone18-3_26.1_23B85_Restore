@interface RCRecordingCellMoreButtonMenuCreator
- (NSString)recordingUUID;
- (UIView)source;
- (_TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator)init;
- (_TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator)initWithRecordingUUID:(id)a3 actionDelegate:(id)a4 source:(id)a5;
- (id)createMenuWithDisplayShowTranscriptAction:(BOOL)a3 displayCopyTranscriptAction:(BOOL)a4 hasMultipleTracks:(BOOL)a5 isSpatialRecording:(BOOL)a6;
- (void)setRecordingUUID:(id)a3;
@end

@implementation RCRecordingCellMoreButtonMenuCreator

- (NSString)recordingUUID
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setRecordingUUID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator_recordingUUID);
  *v5 = v4;
  v5[1] = v6;
}

- (UIView)source
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator)initWithRecordingUUID:(id)a3 actionDelegate:(id)a4 source:(id)a5
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = sub_1001204C4(v6, v8);
  swift_unknownObjectRelease();

  return v10;
}

- (id)createMenuWithDisplayShowTranscriptAction:(BOOL)a3 displayCopyTranscriptAction:(BOOL)a4 hasMultipleTracks:(BOOL)a5 isSpatialRecording:(BOOL)a6
{
  v7 = a5;
  v9 = self;
  v10.super.super.isa = sub_100120654(a4, v7, a6).super.super.isa;

  return v10.super.super.isa;
}

- (_TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end