@interface PlayAnnouncementSoundIntentHandler
- (_TtC23AnnounceIntentExtension34PlayAnnouncementSoundIntentHandler)init;
- (void)handlePlayAnnouncementSound:(INPlayAnnouncementSoundIntent *)a3 completion:(id)a4;
@end

@implementation PlayAnnouncementSoundIntentHandler

- (void)handlePlayAnnouncementSound:(INPlayAnnouncementSoundIntent *)a3 completion:(id)a4
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
  v14[4] = &unk_100017798;
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

- (_TtC23AnnounceIntentExtension34PlayAnnouncementSoundIntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlayAnnouncementSoundIntentHandler();
  return [(PlayAnnouncementSoundIntentHandler *)&v3 init];
}

@end