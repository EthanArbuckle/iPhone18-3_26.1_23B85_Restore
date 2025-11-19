@interface ReadAnnouncementIntentHandler
- (_TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler)init;
- (void)confirmReadAnnouncement:(INReadAnnouncementIntent *)a3 completion:(id)a4;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)handleReadAnnouncement:(INReadAnnouncementIntent *)a3 completion:(id)a4;
@end

@implementation ReadAnnouncementIntentHandler

- (void)dealloc
{
  v2 = self;
  sub_1000065E4();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for ReadAnnouncementIntentHandler();
  [(ReadAnnouncementIntentHandler *)&v3 dealloc];
}

- (void)confirmReadAnnouncement:(INReadAnnouncementIntent *)a3 completion:(id)a4
{
  v7 = sub_1000029F0(&unk_100021660, &qword_1000176F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1000164C4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000175D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000175E0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100014D80(0, 0, v10, &unk_1000175E8, v15);
}

- (void)handleReadAnnouncement:(INReadAnnouncementIntent *)a3 completion:(id)a4
{
  v7 = sub_1000029F0(&unk_100021660, &qword_1000176F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1000164C4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000175B8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000175C0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100014D80(0, 0, v10, &unk_100017710, v15);
}

- (_TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_playbackOptions) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_announce) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_localPlaybackSession) = 0;
  v3 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler_endpointIdentifier;
  v4 = sub_100016374();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC23AnnounceIntentExtension29ReadAnnouncementIntentHandler____lazy_storage___logger;
  v6 = sub_100016394();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = type metadata accessor for ReadAnnouncementIntentHandler();
  return [(ReadAnnouncementIntentHandler *)&v8 init];
}

- (void)connectionInvalidated
{
  v1 = a1;
  sub_1000065E4();
}

@end