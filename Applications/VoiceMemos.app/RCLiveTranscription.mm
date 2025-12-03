@interface RCLiveTranscription
- (_TtC10VoiceMemos19RCLiveTranscription)init;
- (_TtC10VoiceMemos19RCLiveTranscription)initWith:(id)with;
- (void)finalizeAndReturnTranscriptionDataWithCompletionHandler:(id)handler;
- (void)prepareToProcessWithFormat:(id)format audioTime:(id)time punchInTime:(double)inTime;
- (void)processAudioBuffer:(id)buffer;
- (void)refreshWithComposition:(id)composition;
@end

@implementation RCLiveTranscription

- (_TtC10VoiceMemos19RCLiveTranscription)initWith:(id)with
{
  if (with)
  {
    withCopy = with;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = sub_10011E244(v4, v6);
  sub_1000D51D8(v4, v6);
  return v7;
}

- (void)prepareToProcessWithFormat:(id)format audioTime:(id)time punchInTime:(double)inTime
{
  formatCopy = format;
  timeCopy = time;
  selfCopy = self;
  sub_10011E5C0(formatCopy, inTime);
}

- (void)processAudioBuffer:(id)buffer
{
  v5 = sub_1000C773C(&unk_1002D3680);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v12 - v8;
  if (*(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_liveTranscription))
  {
    v12[1] = buffer;
    bufferCopy = buffer;
    selfCopy = self;

    sub_1000C773C(&qword_1002CEF68);
    AsyncStream.Continuation.yield(_:)();

    (*(v6 + 8))(v9, v5);
  }
}

- (void)finalizeAndReturnTranscriptionDataWithCompletionHandler:(id)handler
{
  v5 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100245590;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100243D40;
  v13[5] = v12;
  selfCopy = self;
  sub_1001A8E50(0, 0, v8, &unk_100243540, v13);
}

- (void)refreshWithComposition:(id)composition
{
  compositionCopy = composition;
  selfCopy = self;
  sub_10011C648(compositionCopy);
}

- (_TtC10VoiceMemos19RCLiveTranscription)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end