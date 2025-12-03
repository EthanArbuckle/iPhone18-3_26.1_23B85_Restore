@interface RCShareMemoExporter
- (RCShareMemoExporter)init;
- (float)progressForRecordingWithId:(id)id;
- (void)attachMetadataToRecordingAtURL:(NSURL *)l withId:(NSString *)id with:(_TtP10VoiceMemos27EffectRendererInfoProviding_ *)with completionHandler:(id)handler;
- (void)cancelExportForRecordingWithId:(id)id;
- (void)renderRecordingWithId:(NSString *)id intoDirectory:(NSURL *)directory with:(_TtP10VoiceMemos27EffectRendererInfoProviding_ *)with completionHandler:(id)handler;
- (void)splitMultitrackRecordingWithId:(NSString *)id intoDirectory:(NSURL *)directory with:(_TtP10VoiceMemos27TrackSplitRendererProviding_ *)with completionHandler:(id)handler;
@end

@implementation RCShareMemoExporter

- (void)renderRecordingWithId:(NSString *)id intoDirectory:(NSURL *)directory with:(_TtP10VoiceMemos27EffectRendererInfoProviding_ *)with completionHandler:(id)handler
{
  v11 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = id;
  v16[3] = directory;
  v16[4] = with;
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
  idCopy = id;
  directoryCopy = directory;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001A8E50(0, 0, v14, &unk_100243FA8, v19);
}

- (void)splitMultitrackRecordingWithId:(NSString *)id intoDirectory:(NSURL *)directory with:(_TtP10VoiceMemos27TrackSplitRendererProviding_ *)with completionHandler:(id)handler
{
  v11 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = id;
  v16[3] = directory;
  v16[4] = with;
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
  idCopy = id;
  directoryCopy = directory;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001A8E50(0, 0, v14, &unk_100243F88, v19);
}

- (void)attachMetadataToRecordingAtURL:(NSURL *)l withId:(NSString *)id with:(_TtP10VoiceMemos27EffectRendererInfoProviding_ *)with completionHandler:(id)handler
{
  v11 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = l;
  v16[3] = id;
  v16[4] = with;
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
  lCopy = l;
  idCopy = id;
  swift_unknownObjectRetain();
  selfCopy = self;
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

- (void)cancelExportForRecordingWithId:(id)id
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR___RCShareMemoExporter_inProgressOperations);
  selfCopy = self;

  os_unfair_lock_lock(v4 + 6);
  sub_100109FD4(&v4[4]);
  os_unfair_lock_unlock(v4 + 6);
}

- (float)progressForRecordingWithId:(id)id
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR___RCShareMemoExporter_inProgressOperations);
  selfCopy = self;

  os_unfair_lock_lock(v4 + 6);
  sub_100109FB8(&v4[4], &v8);
  os_unfair_lock_unlock(v4 + 6);
  v6 = v8;

  return v6;
}

@end