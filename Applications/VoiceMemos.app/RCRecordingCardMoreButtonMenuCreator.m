@interface RCRecordingCardMoreButtonMenuCreator
- (_TtC10VoiceMemos36RCRecordingCardMoreButtonMenuCreator)init;
- (_TtC10VoiceMemos36RCRecordingCardMoreButtonMenuCreator)initWithRecordingUUID:(id)a3 actionDelegate:(id)a4;
- (id)createMenuWithDisplayCopyTranscriptAction:(BOOL)a3 hideTrimItem:(BOOL)a4 hasMultipleTracks:(BOOL)a5 showUndoItem:(BOOL)a6 showShareItem:(BOOL)a7;
@end

@implementation RCRecordingCardMoreButtonMenuCreator

- (_TtC10VoiceMemos36RCRecordingCardMoreButtonMenuCreator)initWithRecordingUUID:(id)a3 actionDelegate:(id)a4
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  swift_unknownObjectRetain();
  v7 = sub_1000EF6F0(v4, v6);
  swift_unknownObjectRelease();
  return v7;
}

- (id)createMenuWithDisplayCopyTranscriptAction:(BOOL)a3 hideTrimItem:(BOOL)a4 hasMultipleTracks:(BOOL)a5 showUndoItem:(BOOL)a6 showShareItem:(BOOL)a7
{
  v12 = self;
  v13.super.super.isa = sub_100006014(a3, a4, a5, a6, a7).super.super.isa;

  return v13.super.super.isa;
}

- (_TtC10VoiceMemos36RCRecordingCardMoreButtonMenuCreator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end