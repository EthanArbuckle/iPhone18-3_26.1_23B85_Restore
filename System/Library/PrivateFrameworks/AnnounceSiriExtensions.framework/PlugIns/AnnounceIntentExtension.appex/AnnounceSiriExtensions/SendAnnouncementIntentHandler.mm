@interface SendAnnouncementIntentHandler
- (_TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler)init;
- (void)dealloc;
- (void)handleSendAnnouncement:(INSendAnnouncementIntent *)announcement completion:(id)completion;
- (void)resolveAnnouncementForSendAnnouncement:(INSendAnnouncementIntent *)announcement withCompletion:(id)completion;
- (void)resolveRecipientsForSendAnnouncement:(INSendAnnouncementIntent *)announcement withCompletion:(id)completion;
@end

@implementation SendAnnouncementIntentHandler

- (_TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce) = 0;
  v3 = OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler____lazy_storage___logger;
  v4 = sub_100016394();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for SendAnnouncementIntentHandler();
  return [(SendAnnouncementIntentHandler *)&v6 init];
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC23AnnounceIntentExtension29SendAnnouncementIntentHandler_announce);
  selfCopy = self;
  if (v4)
  {
    [v4 setDelegate:0];
    v6 = *(&self->super.super.isa + v3);
  }

  else
  {
    v6 = 0;
  }

  *(&self->super.super.isa + v3) = 0;

  v7.receiver = self;
  v7.super_class = type metadata accessor for SendAnnouncementIntentHandler();
  [(SendAnnouncementIntentHandler *)&v7 dealloc];
}

- (void)resolveAnnouncementForSendAnnouncement:(INSendAnnouncementIntent *)announcement withCompletion:(id)completion
{
  v7 = sub_1000029F0(&unk_100021660, &qword_1000176F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = announcement;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1000164C4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017740;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100017748;
  v15[5] = v14;
  announcementCopy = announcement;
  selfCopy = self;
  sub_100014D80(0, 0, v10, &unk_100017750, v15);
}

- (void)resolveRecipientsForSendAnnouncement:(INSendAnnouncementIntent *)announcement withCompletion:(id)completion
{
  v7 = sub_1000029F0(&unk_100021660, &qword_1000176F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = announcement;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1000164C4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017720;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100017728;
  v15[5] = v14;
  announcementCopy = announcement;
  selfCopy = self;
  sub_100014D80(0, 0, v10, &unk_100017730, v15);
}

- (void)handleSendAnnouncement:(INSendAnnouncementIntent *)announcement completion:(id)completion
{
  v7 = sub_1000029F0(&unk_100021660, &qword_1000176F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = announcement;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1000164C4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017700;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000175C0;
  v15[5] = v14;
  announcementCopy = announcement;
  selfCopy = self;
  sub_100014D80(0, 0, v10, &unk_100017710, v15);
}

@end