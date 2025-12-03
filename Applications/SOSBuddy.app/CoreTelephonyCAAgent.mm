@interface CoreTelephonyCAAgent
- (_TtC8SOSBuddy20CoreTelephonyCAAgent)init;
- (void)activeSubscriptionsDidChange;
- (void)connectionAssistantStateChanged:(id)changed;
- (void)displayStatusChanged:(id)changed status:(id)status;
@end

@implementation CoreTelephonyCAAgent

- (_TtC8SOSBuddy20CoreTelephonyCAAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connectionAssistantStateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_10001ADE8(changedCopy);
}

- (void)displayStatusChanged:(id)changed status:(id)status
{
  changedCopy = changed;
  statusCopy = status;
  selfCopy = self;
  sub_10001B324(changed, status);
}

- (void)activeSubscriptionsDidChange
{
  selfCopy = self;
  sub_10001D128();
}

@end