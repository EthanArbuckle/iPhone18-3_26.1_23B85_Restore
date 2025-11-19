@interface RCLiveTranscription
- (_TtC10VoiceMemos19RCLiveTranscription)init;
- (_TtC10VoiceMemos19RCLiveTranscription)initWith:(id)a3;
- (void)finalizeAndReturnTranscriptionDataWithCompletionHandler:(id)a3;
- (void)prepareToProcessWithFormat:(id)a3 audioTime:(id)a4 punchInTime:(double)a5;
- (void)processAudioBuffer:(id)a3;
- (void)refreshWithComposition:(id)a3;
@end

@implementation RCLiveTranscription

- (_TtC10VoiceMemos19RCLiveTranscription)initWith:(id)a3
{
  if (a3)
  {
    v3 = a3;
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

- (void)prepareToProcessWithFormat:(id)a3 audioTime:(id)a4 punchInTime:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_10011E5C0(v8, a5);
}

- (void)processAudioBuffer:(id)a3
{
  v5 = sub_1000C773C(&unk_1002D3680);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v12 - v8;
  if (*(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_liveTranscription))
  {
    v12[1] = a3;
    v10 = a3;
    v11 = self;

    sub_1000C773C(&qword_1002CEF68);
    AsyncStream.Continuation.yield(_:)();

    (*(v6 + 8))(v9, v5);
  }
}

- (void)finalizeAndReturnTranscriptionDataWithCompletionHandler:(id)a3
{
  v5 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_1001A8E50(0, 0, v8, &unk_100243540, v13);
}

- (void)refreshWithComposition:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10011C648(v4);
}

- (_TtC10VoiceMemos19RCLiveTranscription)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end