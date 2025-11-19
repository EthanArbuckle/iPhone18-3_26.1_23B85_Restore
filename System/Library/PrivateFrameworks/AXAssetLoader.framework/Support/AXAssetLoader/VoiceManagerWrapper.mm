@interface VoiceManagerWrapper
+ (_TtC9axassetsd19VoiceManagerWrapper)shared;
+ (void)setShared:(id)a3;
- (_TtC9axassetsd19VoiceManagerWrapper)init;
- (void)handleDarwinNotification:(NSString *)a3 completion:(id)a4;
- (void)run:(id)a3;
@end

@implementation VoiceManagerWrapper

+ (_TtC9axassetsd19VoiceManagerWrapper)shared
{
  if (qword_10001DF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static VoiceManagerWrapper.shared;
}

+ (void)setShared:(id)a3
{
  v3 = qword_10001DF18;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static VoiceManagerWrapper.shared;
  static VoiceManagerWrapper.shared = v4;
}

- (void)run:(id)a3
{
  v5 = (*(*(sub_10000854C(&qword_10001DF68, &qword_100010888) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000108E0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000108E8;
  v12[5] = v11;
  v13 = self;
  sub_100009760(0, 0, v7, &unk_1000108F0, v12);
}

- (void)handleDarwinNotification:(NSString *)a3 completion:(id)a4
{
  v7 = (*(*(sub_10000854C(&qword_10001DF68, &qword_100010888) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100010898;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000108A8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_100009760(0, 0, v9, &unk_1000108B8, v14);
}

- (_TtC9axassetsd19VoiceManagerWrapper)init
{
  v3 = OBJC_IVAR____TtC9axassetsd19VoiceManagerWrapper_daemon;
  sub_10000854C(&qword_10001DF28, &qword_100010840);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100010830;
  v5 = type metadata accessor for TTSVBVoiceLoader();
  v6 = TTSVBVoiceLoader.__allocating_init()();
  *(v4 + 56) = v5;
  *(v4 + 64) = sub_100008594();
  *(v4 + 32) = v6;
  v7 = type metadata accessor for VoiceDatabaseDaemon();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(&self->super.isa + v3) = VoiceDatabaseDaemon.init(startTransaction:endTransaction:additionalLoaders:)();
  v11.receiver = self;
  v11.super_class = type metadata accessor for VoiceManagerWrapper();
  return [(VoiceManagerWrapper *)&v11 init];
}

@end