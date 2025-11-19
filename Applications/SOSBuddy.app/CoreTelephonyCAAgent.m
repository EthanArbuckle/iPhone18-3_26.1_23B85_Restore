@interface CoreTelephonyCAAgent
- (_TtC8SOSBuddy20CoreTelephonyCAAgent)init;
- (void)activeSubscriptionsDidChange;
- (void)connectionAssistantStateChanged:(id)a3;
- (void)displayStatusChanged:(id)a3 status:(id)a4;
@end

@implementation CoreTelephonyCAAgent

- (_TtC8SOSBuddy20CoreTelephonyCAAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connectionAssistantStateChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001ADE8(v4);
}

- (void)displayStatusChanged:(id)a3 status:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10001B324(a3, a4);
}

- (void)activeSubscriptionsDidChange
{
  v2 = self;
  sub_10001D128();
}

@end