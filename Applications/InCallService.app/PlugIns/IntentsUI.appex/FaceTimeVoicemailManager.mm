@interface FaceTimeVoicemailManager
- (void)dealloc;
- (void)deleteVoicemails:(NSArray *)a3 completion:(id)a4;
- (void)markVoicemailsAsRead:(NSArray *)a3 completion:(id)a4;
- (void)messagesPassingTest:(id)a3 completion:;
- (void)removeVoicemailsFromTrash:(NSArray *)a3 completion:(id)a4;
- (void)reportTranscriptionProblemForVoicemail:(id)a3;
- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forVoicemail:(id)a4;
- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)a3;
- (void)trashVoicemails:(NSArray *)a3 completion:(id)a4;
- (void)voicemailWithIdentifier:(MPMessageID *)a3 completion:(id)a4;
@end

@implementation FaceTimeVoicemailManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  sub_1000355F8((&self->super.super.isa + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController), *&self->super._estimatedCount[OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController]);
  v4 = self;

  sub_10007B218();

  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(FaceTimeVoicemailManager *)&v5 dealloc];
}

- (void)voicemailWithIdentifier:(MPMessageID *)a3 completion:(id)a4
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10007B608();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000A1FF0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000A1FF8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100052478(0, 0, v10, &unk_1000A2000, v15);
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)a3
{
  if (a3)
  {
    v3 = self;
    sub_100045090(0, 3u);
  }
}

- (void)deleteVoicemails:(NSArray *)a3 completion:(id)a4
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10007B608();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000A1E90;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000A1E98;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100052478(0, 0, v10, &unk_1000A1EA0, v15);
}

- (void)markVoicemailsAsRead:(NSArray *)a3 completion:(id)a4
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10007B608();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000A1E70;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000A1E78;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100052478(0, 0, v10, &unk_1000A1E80, v15);
}

- (void)trashVoicemails:(NSArray *)a3 completion:(id)a4
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10007B608();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000A1E50;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000A1E58;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100052478(0, 0, v10, &unk_1000A1E60, v15);
}

- (void)removeVoicemailsFromTrash:(NSArray *)a3 completion:(id)a4
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10007B608();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000A1E30;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000A1E38;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100052478(0, 0, v10, &unk_1000A1E40, v15);
}

- (void)messagesPassingTest:(id)a3 completion:
{
  v4 = v3;
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a3);
  v12 = _Block_copy(v4);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_10007B608();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000A1DE0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000A1DF0;
  v16[5] = v15;
  v17 = self;
  sub_100052478(0, 0, v10, &unk_1000A18C0, v16);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forVoicemail:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_100053E5C();
}

- (void)reportTranscriptionProblemForVoicemail:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100053E5C();
}

@end