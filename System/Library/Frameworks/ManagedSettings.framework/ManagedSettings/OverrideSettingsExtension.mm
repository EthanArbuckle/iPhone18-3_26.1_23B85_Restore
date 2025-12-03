@interface OverrideSettingsExtension
- (void)askToOverrideUnremovabilityOfApplication:(id)application teamIdentifier:(id)identifier replyHandler:(id)handler;
@end

@implementation OverrideSettingsExtension

- (void)askToOverrideUnremovabilityOfApplication:(id)application teamIdentifier:(id)identifier replyHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v6);

  sub_10001F828(v7, v9, v10, v12, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end