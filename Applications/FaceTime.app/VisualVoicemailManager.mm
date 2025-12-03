@interface VisualVoicemailManager
- (BOOL)isTranscriptionEnabled;
- (_TtC8FaceTime22VisualVoicemailManager)init;
- (_TtC8FaceTime22VisualVoicemailManager)initWithVisualVoicemailManager:(id)manager onVoicemailsChanged:(id)changed;
- (int64_t)estimatedCount;
- (void)accountsDidChange;
- (void)capabilitiesDidChange;
- (void)deleteVoicemails:(NSArray *)voicemails completion:(id)completion;
- (void)fetchMessagesWithCompletion:(id)completion;
- (void)handleVoiceMailsChangedNotificationWithNotification:(id)notification;
- (void)managerStorageUsageDidChange;
- (void)markVoicemailsAsRead:(NSArray *)read completion:(id)completion;
- (void)messagesPassingTest:(id)test completion:;
- (void)onlineStatusDidChange;
- (void)removeVoicemailsFromTrash:(NSArray *)trash completion:(id)completion;
- (void)reportTranscriptionProblemForVoicemail:(id)voicemail;
- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forVoicemail:(id)voicemail;
- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)notifications;
- (void)subscriptionStateStatusDidChange;
- (void)syncInProgresDidChange;
- (void)transcribingStatusDidChange;
- (void)trashVoicemails:(NSArray *)voicemails completion:(id)completion;
- (void)voicemailWithIdentifier:(MPMessageID *)identifier completion:(id)completion;
- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated;
@end

@implementation VisualVoicemailManager

- (BOOL)isTranscriptionEnabled
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  isTranscriptionEnabled = [*(&self->super.isa + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager) isTranscriptionEnabled];

  return isTranscriptionEnabled;
}

- (_TtC8FaceTime22VisualVoicemailManager)initWithVisualVoicemailManager:(id)manager onVoicemailsChanged:(id)changed
{
  v5 = _Block_copy(changed);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_10007E940(manager, sub_100084BB8, v6);
}

- (void)fetchMessagesWithCompletion:(id)completion
{
  v5 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000D8250;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000D8258;
  v12[5] = v11;
  selfCopy = self;
  sub_100083C24(0, 0, v7, &unk_1000D8260, v12);
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
  v13[4] = &unk_1000D8230;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D8238;
  v14[5] = v13;
  voicemailsCopy = voicemails;
  selfCopy = self;
  sub_100083C24(0, 0, v9, &unk_1000D8240, v14);
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
  v13[4] = &unk_1000D8210;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D8218;
  v14[5] = v13;
  readCopy = read;
  selfCopy = self;
  sub_100083C24(0, 0, v9, &unk_1000D8220, v14);
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
  v13[4] = &unk_1000D81F0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D81F8;
  v14[5] = v13;
  voicemailsCopy = voicemails;
  selfCopy = self;
  sub_100083C24(0, 0, v9, &unk_1000D8200, v14);
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
  v13[4] = &unk_1000D81D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D81D8;
  v14[5] = v13;
  trashCopy = trash;
  selfCopy = self;
  sub_100083C24(0, 0, v9, &unk_1000D81E0, v14);
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
  v13[4] = &unk_1000D81A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000D81B0;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100083C24(0, 0, v9, &unk_1000D81B8, v14);
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
  v14[4] = &unk_1000D8158;
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
  sub_10006B000();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  voicemailCopy = voicemail;
  selfCopy = self;
  sub_100081DA0(accurate, voicemailCopy);
}

- (void)reportTranscriptionProblemForVoicemail:(id)voicemail
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  voicemailCopy = voicemail;
  selfCopy = self;
  sub_10008208C(voicemailCopy);
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)notifications
{
  v5 = sub_1000525C4(&qword_100124480);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  selfCopy = self;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = selfCopy;
  *(v11 + 40) = notifications;
  sub_10009A64C(0, 0, v7, &unk_1000D8140, v11);
}

- (_TtC8FaceTime22VisualVoicemailManager)init
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleVoiceMailsChangedNotificationWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10006B000();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000826D0(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated
{
  addedCopy = added;
  if (added)
  {
    sub_100084008();
    addedCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (deleted)
  {
    sub_100084008();
    deleted = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (updated)
  {
    sub_100084008();
    updated = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_100082BC4(initial, addedCopy, deleted, updated);
}

- (void)onlineStatusDidChange
{
  selfCopy = self;
  sub_100083264("%s observed voicemailsDidChange");
}

- (void)capabilitiesDidChange
{
  selfCopy = self;
  sub_100083264("%s observed capabilitiesDidChange");
}

- (void)subscriptionStateStatusDidChange
{
  selfCopy = self;
  sub_100083264("%s observed subscriptionStatusDidChange");
}

- (void)syncInProgresDidChange
{
  selfCopy = self;
  sub_100083264("%s observed syncInProgressDidChnage");
}

- (void)managerStorageUsageDidChange
{
  selfCopy = self;
  sub_100083264("%s observed manageStorageUsageDidChange");
}

- (void)transcribingStatusDidChange
{
  selfCopy = self;
  sub_100083264("%s observed transcribingStatusDidChange");
}

- (void)accountsDidChange
{
  selfCopy = self;
  sub_100083264("%s observed accountsDidChange");
}

- (int64_t)estimatedCount
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8FaceTime22VisualVoicemailManager_visualVoicemailManager);
  v8[4] = sub_10008398C;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100081888;
  v8[3] = &unk_10010CF38;
  v4 = _Block_copy(v8);
  selfCopy = self;
  v6 = [v3 countOfVoicemailsPassingTest:v4];
  _Block_release(v4);

  if ((v6 & 0x8000000000000000) == 0)
  {
    return v6;
  }

  __break(1u);
  return result;
}

@end