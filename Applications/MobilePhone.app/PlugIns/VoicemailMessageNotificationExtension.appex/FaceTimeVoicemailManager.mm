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
  sub_1000184C8((&self->super.super.isa + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController), *&self->super._estimatedCount[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController]);
  v4 = self;

  sub_10006065C();

  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(FaceTimeVoicemailManager *)&v5 dealloc];
}

- (void)voicemailWithIdentifier:(MPMessageID *)a3 completion:(id)a4
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10006099C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10007A488;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10007A490;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10005E2C8(0, 0, v9, &unk_10007A498, v14);
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)a3
{
  if (a3)
  {
    v3 = self;
    sub_100038B14(0, 3u);
  }
}

- (void)deleteVoicemails:(NSArray *)a3 completion:(id)a4
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10006099C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10007A320;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10007A328;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10005E2C8(0, 0, v9, &unk_10007A330, v14);
}

- (void)markVoicemailsAsRead:(NSArray *)a3 completion:(id)a4
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10006099C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10007A300;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10007A308;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10005E2C8(0, 0, v9, &unk_10007A310, v14);
}

- (void)trashVoicemails:(NSArray *)a3 completion:(id)a4
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10006099C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10007A2E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10007A2E8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10005E2C8(0, 0, v9, &unk_10007A2F0, v14);
}

- (void)removeVoicemailsFromTrash:(NSArray *)a3 completion:(id)a4
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10006099C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10007A2C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10007A2C8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10005E2C8(0, 0, v9, &unk_10007A2D0, v14);
}

- (void)messagesPassingTest:(id)a3 completion:
{
  v4 = v3;
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a3);
  v11 = _Block_copy(v4);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10006099C();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10007A2A8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100079DA0;
  v15[5] = v14;
  v16 = self;
  sub_10005E2C8(0, 0, v9, &unk_10007AD00, v15);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forVoicemail:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_1000481C0();
}

- (void)reportTranscriptionProblemForVoicemail:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000481C0();
}

@end