@interface VisualVoicemailManager
- (BOOL)isTranscriptionEnabled;
- (_TtC13InCallService22VisualVoicemailManager)initWithVisualVoicemailManager:(id)a3 onVoicemailsChanged:(id)a4;
- (int64_t)estimatedCount;
- (void)accountsDidChange;
- (void)capabilitiesDidChange;
- (void)fetchMessagesWithCompletion:(id)a3;
- (void)handleVoiceMailsChangedNotificationWithNotification:(id)a3;
- (void)managerStorageUsageDidChange;
- (void)messagesPassingTest:(id)a3 completion:;
- (void)onlineStatusDidChange;
- (void)reportTranscriptionProblemForVoicemail:(id)a3;
- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forVoicemail:(id)a4;
- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)a3;
- (void)subscriptionStateStatusDidChange;
- (void)syncInProgresDidChange;
- (void)transcribingStatusDidChange;
- (void)voicemailsDidChangeInitial:(BOOL)a3 added:(id)a4 deleted:(id)a5 updated:(id)a6;
@end

@implementation VisualVoicemailManager

- (BOOL)isTranscriptionEnabled
{
  v2 = self;
  v3 = sub_10014F910();

  return v3 & 1;
}

- (_TtC13InCallService22VisualVoicemailManager)initWithVisualVoicemailManager:(id)a3 onVoicemailsChanged:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_10014F93C(a3, sub_1001541E8, v6);
}

- (void)fetchMessagesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_100211F74(&unk_1002FAA78, v5);
}

- (void)messagesPassingTest:(id)a3 completion:
{
  v4 = v3;
  v6 = _Block_copy(a3);
  v7 = _Block_copy(v4);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = self;
  v9 = self;

  sub_100211F74(&unk_1002FAA08, v8);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)a3 forVoicemail:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_100152080(a3, v6);
}

- (void)reportTranscriptionProblemForVoicemail:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001522AC(v4);
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)a3
{
  v4 = self;
  sub_1001524C8(a3);
}

- (void)handleVoiceMailsChangedNotificationWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10015282C(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)voicemailsDidChangeInitial:(BOOL)a3 added:(id)a4 deleted:(id)a5 updated:(id)a6
{
  v8 = a4;
  if (a4)
  {
    sub_1001538EC();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a5)
  {
    sub_1001538EC();
    a5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a6)
  {
    sub_1001538EC();
    a6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = self;
  sub_100152B98(a3, v8, a5, a6);
}

- (void)onlineStatusDidChange
{
  v2 = self;
  sub_1001530CC("%s observed voicemailsDidChange");
}

- (void)capabilitiesDidChange
{
  v2 = self;
  sub_1001530CC("%s observed capabilitiesDidChange");
}

- (void)subscriptionStateStatusDidChange
{
  v2 = self;
  sub_1001530CC("%s observed subscriptionStatusDidChange");
}

- (void)syncInProgresDidChange
{
  v2 = self;
  sub_1001530CC("%s observed syncInProgressDidChnage");
}

- (void)managerStorageUsageDidChange
{
  v2 = self;
  sub_1001530CC("%s observed manageStorageUsageDidChange");
}

- (void)transcribingStatusDidChange
{
  v2 = self;
  sub_1001530CC("%s observed transcribingStatusDidChange");
}

- (void)accountsDidChange
{
  v2 = self;
  sub_1001530CC("%s observed accountsDidChange");
}

- (int64_t)estimatedCount
{
  v2 = self;
  sub_100153744();
  v4 = v3;

  return v4;
}

@end