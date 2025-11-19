@interface VisualVoicemailManager
- (_TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager)init;
- (_TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager)initWithVisualVoicemailManager:(id)a3 onVoicemailsChanged:(id)a4;
- (int64_t)estimatedCount;
- (void)accountsDidChange;
- (void)capabilitiesDidChange;
- (void)deleteVoicemails:(NSArray *)a3 completion:(id)a4;
- (void)fetchMessagesWithCompletion:(id)a3;
- (void)handleVoiceMailsChangedNotificationWithNotification:(id)a3;
- (void)managerStorageUsageDidChange;
- (void)markVoicemailsAsRead:(NSArray *)a3 completion:(id)a4;
- (void)messagesPassingTest:(id)a3 completion:;
- (void)onlineStatusDidChange;
- (void)removeVoicemailsFromTrash:(NSArray *)a3 completion:(id)a4;
- (void)reportTranscriptionProblemForVoicemail:(id)a3;
- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forVoicemail:(id)a4;
- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)a3;
- (void)subscriptionStateStatusDidChange;
- (void)syncInProgresDidChange;
- (void)transcribingStatusDidChange;
- (void)trashVoicemails:(NSArray *)a3 completion:(id)a4;
- (void)voicemailWithIdentifier:(MPMessageID *)a3 completion:(id)a4;
- (void)voicemailsDidChangeInitial:(BOOL)a3 added:(id)a4 deleted:(id)a5 updated:(id)a6;
@end

@implementation VisualVoicemailManager

- (_TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager)initWithVisualVoicemailManager:(id)a3 onVoicemailsChanged:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_100058CF0(a3, sub_1000529CC, v6);
}

- (void)fetchMessagesWithCompletion:(id)a3
{
  v5 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_10006099C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10007ADD8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10007ADE0;
  v12[5] = v11;
  v13 = self;
  sub_10005E2C8(0, 0, v7, &unk_10007ADE8, v12);
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
  v13[4] = &unk_10007ADB8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10007ADC0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10005E2C8(0, 0, v9, &unk_10007ADC8, v14);
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
  v13[4] = &unk_10007AD98;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10007ADA0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10005E2C8(0, 0, v9, &unk_10007ADA8, v14);
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
  v13[4] = &unk_10007AD78;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10007AD80;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10005E2C8(0, 0, v9, &unk_10007AD88, v14);
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
  v13[4] = &unk_10007AD58;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10007AD60;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10005E2C8(0, 0, v9, &unk_10007AD68, v14);
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
  v13[4] = &unk_10007AD30;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10007AD38;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10005E2C8(0, 0, v9, &unk_10007AD40, v14);
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
  v14[4] = &unk_10007ACE0;
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
  v6 = a4;
  v7 = self;
  sub_10005C28C(a3, v6);
}

- (void)reportTranscriptionProblemForVoicemail:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10005C510(v4);
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)a3
{
  v5 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_10006099C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_10006094C();
  v9 = self;
  v10 = sub_10006093C();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = v9;
  *(v11 + 40) = a3;
  sub_100037558(0, 0, v7, &unk_10007ACC8, v11);
}

- (_TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleVoiceMailsChangedNotificationWithNotification:(id)a3
{
  v4 = sub_1000601AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006018C();
  v8 = self;
  sub_10005CC14(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)voicemailsDidChangeInitial:(BOOL)a3 added:(id)a4 deleted:(id)a5 updated:(id)a6
{
  v8 = a4;
  if (a4)
  {
    sub_10005E5B4();
    v8 = sub_1000608CC();
  }

  if (a5)
  {
    sub_10005E5B4();
    a5 = sub_1000608CC();
  }

  if (a6)
  {
    sub_10005E5B4();
    a6 = sub_1000608CC();
  }

  v11 = self;
  sub_10005D0A4(a3, v8, a5, a6);
}

- (void)onlineStatusDidChange
{
  v2 = self;
  sub_10005D744("%s observed voicemailsDidChange");
}

- (void)capabilitiesDidChange
{
  v2 = self;
  sub_10005D744("%s observed capabilitiesDidChange");
}

- (void)subscriptionStateStatusDidChange
{
  v2 = self;
  sub_10005D744("%s observed subscriptionStatusDidChange");
}

- (void)syncInProgresDidChange
{
  v2 = self;
  sub_10005D744("%s observed syncInProgressDidChnage");
}

- (void)managerStorageUsageDidChange
{
  v2 = self;
  sub_10005D744("%s observed manageStorageUsageDidChange");
}

- (void)transcribingStatusDidChange
{
  v2 = self;
  sub_10005D744("%s observed transcribingStatusDidChange");
}

- (void)accountsDidChange
{
  v2 = self;
  sub_10005D744("%s observed accountsDidChange");
}

- (int64_t)estimatedCount
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager);
  v8[4] = sub_10005E018;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10005BD74;
  v8[3] = &unk_10008BB80;
  v4 = _Block_copy(v8);
  v5 = self;
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