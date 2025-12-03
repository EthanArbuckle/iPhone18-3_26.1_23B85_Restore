@interface ServerDataCacheService
- (void)reminderEventsForAccountDSID:(id)d service:(id)service eventType:(id)type networkPolicy:(int64_t)policy completion:(id)completion;
- (void)setUpCacheForAccount:(id)account completion:(id)completion;
- (void)setUpCacheForAccountDSID:(id)d completion:(id)completion;
- (void)tearDownCacheForAccountDSID:(id)d completion:(id)completion;
- (void)updateCacheForAccountDSID:(id)d withCachePayload:(id)payload completion:(id)completion;
- (void)updateCacheForAccountDSID:(id)d withCacheTypeIDs:(id)ds completion:(id)completion;
@end

@implementation ServerDataCacheService

- (void)updateCacheForAccountDSID:(id)d withCachePayload:(id)payload completion:(id)completion
{
  v7 = _Block_copy(completion);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v7;
  dCopy = d;
  selfCopy = self;
  sub_100195E84();
}

- (void)updateCacheForAccountDSID:(id)d withCacheTypeIDs:(id)ds completion:(id)completion
{
  v7 = _Block_copy(completion);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v7;
  dCopy = d;
  selfCopy = self;
  sub_100196A98();
}

- (void)reminderEventsForAccountDSID:(id)d service:(id)service eventType:(id)type networkPolicy:(int64_t)policy completion:(id)completion
{
  v9 = _Block_copy(completion);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v9;
  dCopy = d;
  selfCopy = self;
  sub_10019BC60();
}

- (void)setUpCacheForAccount:(id)account completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  accountCopy = account;
  selfCopy = self;
  sub_10019ECBC(accountCopy, selfCopy, v6);
  _Block_release(v6);
}

- (void)setUpCacheForAccountDSID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  dCopy = d;
  selfCopy = self;
  sub_10019F0AC();
}

- (void)tearDownCacheForAccountDSID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  dCopy = d;
  selfCopy = self;
  sub_10019FBD8();
}

@end