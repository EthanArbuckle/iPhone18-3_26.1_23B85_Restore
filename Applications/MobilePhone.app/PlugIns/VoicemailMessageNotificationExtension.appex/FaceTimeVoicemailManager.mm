@interface FaceTimeVoicemailManager
- (void)dealloc;
- (void)deleteVoicemails:(NSArray *)voicemails completion:(id)completion;
- (void)markVoicemailsAsRead:(NSArray *)read completion:(id)completion;
- (void)messagesPassingTest:(id)test completion:;
- (void)removeVoicemailsFromTrash:(NSArray *)trash completion:(id)completion;
- (void)reportTranscriptionProblemForVoicemail:(id)voicemail;
- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forVoicemail:(id)voicemail;
- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)notifications;
- (void)trashVoicemails:(NSArray *)voicemails completion:(id)completion;
- (void)voicemailWithIdentifier:(MPMessageID *)identifier completion:(id)completion;
@end

@implementation FaceTimeVoicemailManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  sub_1000184C8((&self->super.super.isa + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController), *&self->super._estimatedCount[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController]);
  selfCopy = self;

  sub_10006065C();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(FaceTimeVoicemailManager *)&v5 dealloc];
}

- (void)voicemailWithIdentifier:(MPMessageID *)identifier completion:(id)completion
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
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
  identifierCopy = identifier;
  selfCopy = self;
  sub_10005E2C8(0, 0, v9, &unk_10007A498, v14);
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)notifications
{
  if (notifications)
  {
    selfCopy = self;
    sub_100038B14(0, 3u);
  }
}

- (void)deleteVoicemails:(NSArray *)voicemails completion:(id)completion
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = voicemails;
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
  voicemailsCopy = voicemails;
  selfCopy = self;
  sub_10005E2C8(0, 0, v9, &unk_10007A330, v14);
}

- (void)markVoicemailsAsRead:(NSArray *)read completion:(id)completion
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = read;
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
  readCopy = read;
  selfCopy = self;
  sub_10005E2C8(0, 0, v9, &unk_10007A310, v14);
}

- (void)trashVoicemails:(NSArray *)voicemails completion:(id)completion
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = voicemails;
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
  voicemailsCopy = voicemails;
  selfCopy = self;
  sub_10005E2C8(0, 0, v9, &unk_10007A2F0, v14);
}

- (void)removeVoicemailsFromTrash:(NSArray *)trash completion:(id)completion
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = trash;
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
  trashCopy = trash;
  selfCopy = self;
  sub_10005E2C8(0, 0, v9, &unk_10007A2D0, v14);
}

- (void)messagesPassingTest:(id)test completion:
{
  v4 = v3;
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(test);
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
  selfCopy = self;
  sub_10005E2C8(0, 0, v9, &unk_10007AD00, v15);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  selfCopy = self;
  sub_1000481C0();
}

- (void)reportTranscriptionProblemForVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  selfCopy = self;
  sub_1000481C0();
}

@end