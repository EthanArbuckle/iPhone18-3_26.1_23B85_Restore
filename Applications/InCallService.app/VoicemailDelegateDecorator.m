@interface VoicemailDelegateDecorator
- (void)accountsDidChange;
- (void)capabilitiesDidChange;
- (void)greetingDidChangeByCarrier:(id)a3;
- (void)managerStorageUsageDidChange;
- (void)onlineStatusDidChange;
- (void)subscriptionStateStatusDidChange;
- (void)syncInProgresDidChange;
- (void)transcribingStatusDidChange;
- (void)voicemailsDidChangeInitial:(BOOL)a3 added:(id)a4 deleted:(id)a5 updated:(id)a6;
@end

@implementation VoicemailDelegateDecorator

- (void)onlineStatusDidChange
{
  v2 = self;
  sub_100159378("VoicemailDelegateDecorator: received onlineStatusDidChange");
}

- (void)capabilitiesDidChange
{
  v2 = self;
  sub_100159378("VoicemailDelegateDecorator: received capabilitiesDidChange");
}

- (void)subscriptionStateStatusDidChange
{
  v2 = self;
  sub_100159378("VoicemailDelegateDecorator: received subscriptionStateStatusDidChange");
}

- (void)syncInProgresDidChange
{
  v2 = self;
  sub_100159378("VoicemailDelegateDecorator: received syncInProgresDidChange");
}

- (void)managerStorageUsageDidChange
{
  v2 = self;
  sub_100159378("VoicemailDelegateDecorator: received managerStorageUsageDidChange");
}

- (void)transcribingStatusDidChange
{
  v2 = self;
  sub_100159378("VoicemailDelegateDecorator: received transcribingStatusDidChange");
}

- (void)accountsDidChange
{
  v2 = self;
  sub_100159378("VoicemailDelegateDecorator: received accountsDidChange");
}

- (void)greetingDidChangeByCarrier:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10015A1F0(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)voicemailsDidChangeInitial:(BOOL)a3 added:(id)a4 deleted:(id)a5 updated:(id)a6
{
  if (a4)
  {
    sub_1001538EC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a5)
  {
    sub_1001538EC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a6)
  {
    sub_1001538EC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = self;
  sub_10015AA90();
}

@end