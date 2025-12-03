@interface RCRecordingCardMoreButtonMenuCreator
- (_TtC10VoiceMemos36RCRecordingCardMoreButtonMenuCreator)init;
- (_TtC10VoiceMemos36RCRecordingCardMoreButtonMenuCreator)initWithRecordingUUID:(id)d actionDelegate:(id)delegate;
- (id)createMenuWithDisplayCopyTranscriptAction:(BOOL)action hideTrimItem:(BOOL)item hasMultipleTracks:(BOOL)tracks showUndoItem:(BOOL)undoItem showShareItem:(BOOL)shareItem;
@end

@implementation RCRecordingCardMoreButtonMenuCreator

- (_TtC10VoiceMemos36RCRecordingCardMoreButtonMenuCreator)initWithRecordingUUID:(id)d actionDelegate:(id)delegate
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  swift_unknownObjectRetain();
  v7 = sub_1000EF6F0(v4, v6);
  swift_unknownObjectRelease();
  return v7;
}

- (id)createMenuWithDisplayCopyTranscriptAction:(BOOL)action hideTrimItem:(BOOL)item hasMultipleTracks:(BOOL)tracks showUndoItem:(BOOL)undoItem showShareItem:(BOOL)shareItem
{
  selfCopy = self;
  v13.super.super.isa = sub_100006014(action, item, tracks, undoItem, shareItem).super.super.isa;

  return v13.super.super.isa;
}

- (_TtC10VoiceMemos36RCRecordingCardMoreButtonMenuCreator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end