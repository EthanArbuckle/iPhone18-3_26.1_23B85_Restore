@interface VisualVoicemailManager
- (_TtC9IntentsUI22VisualVoicemailManager)init;
- (_TtC9IntentsUI22VisualVoicemailManager)initWithVisualVoicemailManager:(id)manager onVoicemailsChanged:(id)changed;
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

- (_TtC9IntentsUI22VisualVoicemailManager)initWithVisualVoicemailManager:(id)manager onVoicemailsChanged:(id)changed
{
  v5 = _Block_copy(changed);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_10003D828(manager, sub_100043490, v6);
}

- (void)fetchMessagesWithCompletion:(id)completion
{
  v5 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_10007B608();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000A1B60;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000A1B68;
  v13[5] = v12;
  selfCopy = self;
  sub_100052478(0, 0, v8, &unk_1000A1B70, v13);
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
  v14[4] = &unk_1000A1B40;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000A1B48;
  v15[5] = v14;
  voicemailsCopy = voicemails;
  selfCopy = self;
  sub_100052478(0, 0, v10, &unk_1000A1B50, v15);
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
  v14[4] = &unk_1000A1B20;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000A1B28;
  v15[5] = v14;
  readCopy = read;
  selfCopy = self;
  sub_100052478(0, 0, v10, &unk_1000A1B30, v15);
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
  v14[4] = &unk_1000A1B00;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000A1B08;
  v15[5] = v14;
  voicemailsCopy = voicemails;
  selfCopy = self;
  sub_100052478(0, 0, v10, &unk_1000A1B10, v15);
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
  v14[4] = &unk_1000A1AE0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000A1AE8;
  v15[5] = v14;
  trashCopy = trash;
  selfCopy = self;
  sub_100052478(0, 0, v10, &unk_1000A1AF0, v15);
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
  v14[4] = &unk_1000A1AB8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000A1AC0;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100052478(0, 0, v10, &unk_1000A1AC8, v15);
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
  v15[4] = &unk_1000A1AA0;
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
  sub_100040D1C(accurate, voicemailCopy);
}

- (void)reportTranscriptionProblemForVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  selfCopy = self;
  sub_100040F90(voicemailCopy);
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)notifications
{
  v5 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = sub_10007B608();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10007B5B8();
  selfCopy = self;
  v11 = sub_10007B5A8();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = selfCopy;
  *(v12 + 40) = notifications;
  sub_100078AB0(0, 0, v8, &unk_1000A1A88, v12);
}

- (_TtC9IntentsUI22VisualVoicemailManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleVoiceMailsChangedNotificationWithNotification:(id)notification
{
  v4 = sub_10007AD18();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007ACF8();
  selfCopy = self;
  sub_100041504(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated
{
  addedCopy = added;
  if (added)
  {
    sub_100042840();
    addedCopy = sub_10007B528();
  }

  if (deleted)
  {
    sub_100042840();
    deleted = sub_10007B528();
  }

  if (updated)
  {
    sub_100042840();
    updated = sub_10007B528();
  }

  selfCopy = self;
  sub_100041994(initial, addedCopy, deleted, updated);
}

- (void)onlineStatusDidChange
{
  selfCopy = self;
  sub_100042034("%s observed voicemailsDidChange");
}

- (void)capabilitiesDidChange
{
  selfCopy = self;
  sub_100042034("%s observed capabilitiesDidChange");
}

- (void)subscriptionStateStatusDidChange
{
  selfCopy = self;
  sub_100042034("%s observed subscriptionStatusDidChange");
}

- (void)syncInProgresDidChange
{
  selfCopy = self;
  sub_100042034("%s observed syncInProgressDidChnage");
}

- (void)managerStorageUsageDidChange
{
  selfCopy = self;
  sub_100042034("%s observed manageStorageUsageDidChange");
}

- (void)transcribingStatusDidChange
{
  selfCopy = self;
  sub_100042034("%s observed transcribingStatusDidChange");
}

- (void)accountsDidChange
{
  selfCopy = self;
  sub_100042034("%s observed accountsDidChange");
}

- (int64_t)estimatedCount
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9IntentsUI22VisualVoicemailManager_visualVoicemailManager);
  v8[4] = sub_10004275C;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100040804;
  v8[3] = &unk_1000B2AE8;
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