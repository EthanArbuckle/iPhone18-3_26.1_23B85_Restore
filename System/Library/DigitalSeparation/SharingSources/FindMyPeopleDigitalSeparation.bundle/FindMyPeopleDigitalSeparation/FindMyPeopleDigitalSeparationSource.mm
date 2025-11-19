@interface FindMyPeopleDigitalSeparationSource
- (_TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource)init;
- (void)fetchSharedResourcesWithCompletion:(id)a3;
- (void)stopAllSharingWithCompletion:(id)a3;
- (void)stopSharing:(DSSharedResource *)a3 withCompletion:(id)a4;
- (void)stopSharingWithParticipant:(DSParticipation *)a3 completion:(id)a4;
@end

@implementation FindMyPeopleDigitalSeparationSource

- (void)fetchSharedResourcesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1DD8(sub_7B78, v5);
}

- (void)stopSharing:(DSSharedResource *)a3 withCompletion:(id)a4
{
  v7 = (*(*(sub_5BC4(&qword_11990, &qword_9458) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_8044();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_9500;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_9508;
  v14[5] = v13;
  swift_unknownObjectRetain();
  v15 = self;
  sub_60F8(0, 0, v9, &unk_9510, v14);
}

- (void)stopSharingWithParticipant:(DSParticipation *)a3 completion:(id)a4
{
  v7 = (*(*(sub_5BC4(&qword_11990, &qword_9458) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_8044();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_94E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_94E8;
  v14[5] = v13;
  swift_unknownObjectRetain();
  v15 = self;
  sub_60F8(0, 0, v9, &unk_94F0, v14);
}

- (void)stopAllSharingWithCompletion:(id)a3
{
  v5 = (*(*(sub_5BC4(&qword_11990, &qword_9458) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_8044();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_9498;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_94A8;
  v12[5] = v11;
  v13 = self;
  sub_60F8(0, 0, v7, &unk_94B8, v12);
}

- (_TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource)init
{
  v3 = sub_7E54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_7E64() - 8) + 64);
  __chkstk_darwin();
  v9 = DSSourceNameFindMy;
  *(&self->super.isa + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource_name) = DSSourceNameFindMy;
  v10 = OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation35FindMyPeopleDigitalSeparationSource_session;
  (*(v4 + 104))(v7, enum case for ClientOrigin.other(_:), v3);
  v11 = v9;
  sub_7E74();
  v12 = sub_7F04();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(&self->super.isa + v10) = sub_7F14();
  MyPeopleDigitalSeparationSource = type metadata accessor for FindMyPeopleDigitalSeparationSource();
  v17.receiver = self;
  v17.super_class = MyPeopleDigitalSeparationSource;
  return [(FindMyPeopleDigitalSeparationSource *)&v17 init];
}

@end