@interface FaceTimeVoicemailManager
- (BOOL)isTranscriptionEnabled;
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
  sub_10000BC24((&self->super.super.isa + OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController), *&self->super._estimatedCount[OBJC_IVAR____TtC8FaceTime24FaceTimeVoicemailManager_messageStoreController]);
  selfCopy = self;

  MessageStoreController.removeDelegate(_:)();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(FaceTimeVoicemailManager *)&v5 dealloc];
}

- (void)voicemailWithIdentifier:(MPMessageID *)identifier completion:(id)completion
{
  v7 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000D8028;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D8030;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100083C24(0, 0, v9, &unk_1000D8038, v14);
}

- (BOOL)isTranscriptionEnabled
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)notifications
{
  if (notifications)
  {
    selfCopy = self;
    sub_10006F448(0, 3u);
  }
}

- (void)deleteVoicemails:(NSArray *)voicemails completion:(id)completion
{
  v7 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = voicemails;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000D7EB0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D7EB8;
  v14[5] = v13;
  voicemailsCopy = voicemails;
  selfCopy = self;
  sub_100083C24(0, 0, v9, &unk_1000D7EC0, v14);
}

- (void)markVoicemailsAsRead:(NSArray *)read completion:(id)completion
{
  v7 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = read;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000D7E90;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D7E98;
  v14[5] = v13;
  readCopy = read;
  selfCopy = self;
  sub_100083C24(0, 0, v9, &unk_1000D7EA0, v14);
}

- (void)trashVoicemails:(NSArray *)voicemails completion:(id)completion
{
  v7 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = voicemails;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000D7E70;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D7E78;
  v14[5] = v13;
  voicemailsCopy = voicemails;
  selfCopy = self;
  sub_100083C24(0, 0, v9, &unk_1000D7E80, v14);
}

- (void)removeVoicemailsFromTrash:(NSArray *)trash completion:(id)completion
{
  v7 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = trash;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000D7E50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D7E58;
  v14[5] = v13;
  trashCopy = trash;
  selfCopy = self;
  sub_100083C24(0, 0, v9, &unk_1000D7E60, v14);
}

- (void)messagesPassingTest:(id)test completion:
{
  v4 = v3;
  v7 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(test);
  v11 = _Block_copy(v4);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D7E38;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000D7B80;
  v15[5] = v14;
  selfCopy = self;
  sub_100083C24(0, 0, v9, &unk_1000D7B88, v15);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forVoicemail:(id)voicemail
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  voicemailCopy = voicemail;
  selfCopy = self;
  sub_10007D134();
}

- (void)reportTranscriptionProblemForVoicemail:(id)voicemail
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10007E2C4(&qword_100125090, type metadata accessor for VoicemailActor);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  voicemailCopy = voicemail;
  selfCopy = self;
  sub_10007D134();
}

@end