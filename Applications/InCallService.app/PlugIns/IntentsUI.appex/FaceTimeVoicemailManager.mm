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
  sub_1000355F8((&self->super.super.isa + OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController), *&self->super._estimatedCount[OBJC_IVAR____TtC9IntentsUI24FaceTimeVoicemailManager_messageStoreController]);
  selfCopy = self;

  sub_10007B218();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(FaceTimeVoicemailManager *)&v5 dealloc];
}

- (void)voicemailWithIdentifier:(MPMessageID *)identifier completion:(id)completion
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = identifier;
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
  identifierCopy = identifier;
  selfCopy = self;
  sub_100052478(0, 0, v10, &unk_1000A2000, v15);
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)notifications
{
  if (notifications)
  {
    selfCopy = self;
    sub_100045090(0, 3u);
  }
}

- (void)deleteVoicemails:(NSArray *)voicemails completion:(id)completion
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = voicemails;
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
  voicemailsCopy = voicemails;
  selfCopy = self;
  sub_100052478(0, 0, v10, &unk_1000A1EA0, v15);
}

- (void)markVoicemailsAsRead:(NSArray *)read completion:(id)completion
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = read;
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
  readCopy = read;
  selfCopy = self;
  sub_100052478(0, 0, v10, &unk_1000A1E80, v15);
}

- (void)trashVoicemails:(NSArray *)voicemails completion:(id)completion
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = voicemails;
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
  voicemailsCopy = voicemails;
  selfCopy = self;
  sub_100052478(0, 0, v10, &unk_1000A1E60, v15);
}

- (void)removeVoicemailsFromTrash:(NSArray *)trash completion:(id)completion
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = trash;
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
  trashCopy = trash;
  selfCopy = self;
  sub_100052478(0, 0, v10, &unk_1000A1E40, v15);
}

- (void)messagesPassingTest:(id)test completion:
{
  v4 = v3;
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(test);
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
  selfCopy = self;
  sub_100052478(0, 0, v10, &unk_1000A18C0, v16);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  selfCopy = self;
  sub_100053E5C();
}

- (void)reportTranscriptionProblemForVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  selfCopy = self;
  sub_100053E5C();
}

@end