@interface RCShareMemoExporter
- (RCShareMemoExporter)init;
- (float)progressForRecordingWithId:(id)a3;
- (void)attachMetadataToRecordingAtURL:(NSURL *)a3 withId:(NSString *)a4 with:(_TtP10VoiceMemos27EffectRendererInfoProviding_ *)a5 completionHandler:(id)a6;
- (void)cancelExportForRecordingWithId:(id)a3;
- (void)renderRecordingWithId:(NSString *)a3 intoDirectory:(NSURL *)a4 with:(_TtP10VoiceMemos27EffectRendererInfoProviding_ *)a5 completionHandler:(id)a6;
- (void)splitMultitrackRecordingWithId:(NSString *)a3 intoDirectory:(NSURL *)a4 with:(_TtP10VoiceMemos27TrackSplitRendererProviding_ *)a5 completionHandler:(id)a6;
@end

@implementation RCShareMemoExporter

- (void)renderRecordingWithId:(NSString *)a3 intoDirectory:(NSURL *)a4 with:(_TtP10VoiceMemos27EffectRendererInfoProviding_ *)a5 completionHandler:(id)a6
{
  v11 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100243F98;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100243FA0;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  swift_unknownObjectRetain();
  v22 = self;
  sub_1001A8E50(0, 0, v14, &unk_100243FA8, v19);
}

- (void)splitMultitrackRecordingWithId:(NSString *)a3 intoDirectory:(NSURL *)a4 with:(_TtP10VoiceMemos27TrackSplitRendererProviding_ *)a5 completionHandler:(id)a6
{
  v11 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100243F78;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100243F80;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  swift_unknownObjectRetain();
  v22 = self;
  sub_1001A8E50(0, 0, v14, &unk_100243F88, v19);
}

- (void)attachMetadataToRecordingAtURL:(NSURL *)a3 withId:(NSString *)a4 with:(_TtP10VoiceMemos27EffectRendererInfoProviding_ *)a5 completionHandler:(id)a6
{
  v11 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100243F58;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100243D40;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  swift_unknownObjectRetain();
  v22 = self;
  sub_1001A8E50(0, 0, v14, &unk_100243540, v19);
}

- (RCShareMemoExporter)init
{
  v3 = OBJC_IVAR___RCShareMemoExporter_inProgressOperations;
  sub_1000C773C(&qword_1002D0570);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = &_swiftEmptyDictionarySingleton;
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ShareMemoExporter();
  return [(RCShareMemoExporter *)&v6 init];
}

- (void)cancelExportForRecordingWithId:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR___RCShareMemoExporter_inProgressOperations);
  v5 = self;

  os_unfair_lock_lock(v4 + 6);
  sub_100109FD4(&v4[4]);
  os_unfair_lock_unlock(v4 + 6);
}

- (float)progressForRecordingWithId:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR___RCShareMemoExporter_inProgressOperations);
  v5 = self;

  os_unfair_lock_lock(v4 + 6);
  sub_100109FB8(&v4[4], &v8);
  os_unfair_lock_unlock(v4 + 6);
  v6 = v8;

  return v6;
}

@end