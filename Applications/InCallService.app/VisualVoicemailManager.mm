@interface VisualVoicemailManager
- (BOOL)isTranscriptionEnabled;
- (_TtC13InCallService22VisualVoicemailManager)initWithVisualVoicemailManager:(id)manager onVoicemailsChanged:(id)changed;
- (int64_t)estimatedCount;
- (void)accountsDidChange;
- (void)capabilitiesDidChange;
- (void)fetchMessagesWithCompletion:(id)completion;
- (void)handleVoiceMailsChangedNotificationWithNotification:(id)notification;
- (void)managerStorageUsageDidChange;
- (void)messagesPassingTest:(id)test completion:;
- (void)onlineStatusDidChange;
- (void)reportTranscriptionProblemForVoicemail:(id)voicemail;
- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forVoicemail:(id)voicemail;
- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)notifications;
- (void)subscriptionStateStatusDidChange;
- (void)syncInProgresDidChange;
- (void)transcribingStatusDidChange;
- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated;
@end

@implementation VisualVoicemailManager

- (BOOL)isTranscriptionEnabled
{
  selfCopy = self;
  v3 = sub_10014F910();

  return v3 & 1;
}

- (_TtC13InCallService22VisualVoicemailManager)initWithVisualVoicemailManager:(id)manager onVoicemailsChanged:(id)changed
{
  v5 = _Block_copy(changed);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_10014F93C(manager, sub_1001541E8, v6);
}

- (void)fetchMessagesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_100211F74(&unk_1002FAA78, v5);
}

- (void)messagesPassingTest:(id)test completion:
{
  v4 = v3;
  v6 = _Block_copy(test);
  v7 = _Block_copy(v4);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = self;
  selfCopy = self;

  sub_100211F74(&unk_1002FAA08, v8);
}

- (void)reportTranscriptionRatedAccurate:(BOOL)accurate forVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  selfCopy = self;
  sub_100152080(accurate, voicemailCopy);
}

- (void)reportTranscriptionProblemForVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  selfCopy = self;
  sub_1001522AC(voicemailCopy);
}

- (void)requestInitialStateIfNecessaryAndSendNotifications:(BOOL)notifications
{
  selfCopy = self;
  sub_1001524C8(notifications);
}

- (void)handleVoiceMailsChangedNotificationWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10015282C(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated
{
  addedCopy = added;
  if (added)
  {
    sub_1001538EC();
    addedCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (deleted)
  {
    sub_1001538EC();
    deleted = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (updated)
  {
    sub_1001538EC();
    updated = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_100152B98(initial, addedCopy, deleted, updated);
}

- (void)onlineStatusDidChange
{
  selfCopy = self;
  sub_1001530CC("%s observed voicemailsDidChange");
}

- (void)capabilitiesDidChange
{
  selfCopy = self;
  sub_1001530CC("%s observed capabilitiesDidChange");
}

- (void)subscriptionStateStatusDidChange
{
  selfCopy = self;
  sub_1001530CC("%s observed subscriptionStatusDidChange");
}

- (void)syncInProgresDidChange
{
  selfCopy = self;
  sub_1001530CC("%s observed syncInProgressDidChnage");
}

- (void)managerStorageUsageDidChange
{
  selfCopy = self;
  sub_1001530CC("%s observed manageStorageUsageDidChange");
}

- (void)transcribingStatusDidChange
{
  selfCopy = self;
  sub_1001530CC("%s observed transcribingStatusDidChange");
}

- (void)accountsDidChange
{
  selfCopy = self;
  sub_1001530CC("%s observed accountsDidChange");
}

- (int64_t)estimatedCount
{
  selfCopy = self;
  sub_100153744();
  v4 = v3;

  return v4;
}

@end