@interface RCRecordingTranscriptionService
+ (RCRecordingTranscriptionService)sharedInstance;
- (RCRecordingTranscriptionService)init;
- (void)cancelFileTranscriptionWithCompletionHandler:(id)a3;
- (void)startTranscriptionFor:(id)a3;
@end

@implementation RCRecordingTranscriptionService

+ (RCRecordingTranscriptionService)sharedInstance
{
  if (qword_1002CDDB8 != -1)
  {
    swift_once();
  }

  v3 = qword_1002E8D20;

  return v3;
}

- (RCRecordingTranscriptionService)init
{
  v2 = (&self->super.isa + OBJC_IVAR___RCRecordingTranscriptionService_fileTranscriptionTask);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  *(&self->super.isa + OBJC_IVAR___RCRecordingTranscriptionService_isTranscribingLive) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for RecordingTranscriptionService();
  return [(RCRecordingTranscriptionService *)&v4 init];
}

- (void)startTranscriptionFor:(id)a3
{
  v4 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = v8;
  v12[6] = v10;
  v13 = self;
  sub_100179578(0, 0, v7, &unk_100243900, v12);
}

- (void)cancelFileTranscriptionWithCompletionHandler:(id)a3
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
  v12[4] = &unk_1002438F0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100243D40;
  v13[5] = v12;
  v14 = self;
  sub_1001A8E50(0, 0, v8, &unk_100243540, v13);
}

@end