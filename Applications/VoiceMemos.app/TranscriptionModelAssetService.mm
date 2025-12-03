@interface TranscriptionModelAssetService
+ (_TtC10VoiceMemos30TranscriptionModelAssetService)sharedInstance;
- (_TtC10VoiceMemos30TranscriptionModelAssetService)init;
- (void)assetIsInstalledForCurrentLanguageWithCompletionHandler:(id)handler;
- (void)downloadAsset;
- (void)isAvailableWithCompletionHandler:(id)handler;
@end

@implementation TranscriptionModelAssetService

- (_TtC10VoiceMemos30TranscriptionModelAssetService)init
{
  v3 = OBJC_IVAR____TtC10VoiceMemos30TranscriptionModelAssetService__downloadStateValueSubject;
  v6 = 0;
  v7 = 0x80;
  sub_1000C773C(&unk_1002D4150);
  swift_allocObject();
  *(&self->super.isa + v3) = CurrentValueSubject.init(_:)();
  v5.receiver = self;
  v5.super_class = type metadata accessor for TranscriptionModelAssetService();
  return [(TranscriptionModelAssetService *)&v5 init];
}

+ (_TtC10VoiceMemos30TranscriptionModelAssetService)sharedInstance
{
  if (qword_1002CDF50 != -1)
  {
    swift_once();
  }

  v3 = qword_1002E90D0;

  return v3;
}

- (void)isAvailableWithCompletionHandler:(id)handler
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
  v12[4] = &unk_10024C9E8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100243D40;
  v13[5] = v12;
  selfCopy = self;
  sub_1001A8E50(0, 0, v8, &unk_100243540, v13);
}

- (void)assetIsInstalledForCurrentLanguageWithCompletionHandler:(id)handler
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
  v12[4] = &unk_10024C9F8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10024CA00;
  v13[5] = v12;
  selfCopy = self;
  sub_1001A8E50(0, 0, v8, &unk_10024CA08, v13);
}

- (void)downloadAsset
{
  v3 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  selfCopy = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = selfCopy;
  sub_100179578(0, 0, v6, &unk_10024C9A0, v10);
}

@end