@interface VoicemailDelegateDecorator
- (void)accountsDidChange;
- (void)capabilitiesDidChange;
- (void)greetingDidChangeByCarrier:(id)carrier;
- (void)managerStorageUsageDidChange;
- (void)onlineStatusDidChange;
- (void)subscriptionStateStatusDidChange;
- (void)syncInProgresDidChange;
- (void)transcribingStatusDidChange;
- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated;
@end

@implementation VoicemailDelegateDecorator

- (void)onlineStatusDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received onlineStatusDidChange");
}

- (void)capabilitiesDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received capabilitiesDidChange");
}

- (void)subscriptionStateStatusDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received subscriptionStateStatusDidChange");
}

- (void)syncInProgresDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received syncInProgresDidChange");
}

- (void)managerStorageUsageDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received managerStorageUsageDidChange");
}

- (void)transcribingStatusDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received transcribingStatusDidChange");
}

- (void)accountsDidChange
{
  selfCopy = self;
  sub_100159378("VoicemailDelegateDecorator: received accountsDidChange");
}

- (void)greetingDidChangeByCarrier:(id)carrier
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10015A1F0(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)voicemailsDidChangeInitial:(BOOL)initial added:(id)added deleted:(id)deleted updated:(id)updated
{
  if (added)
  {
    sub_1001538EC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (deleted)
  {
    sub_1001538EC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (updated)
  {
    sub_1001538EC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_10015AA90();
}

@end