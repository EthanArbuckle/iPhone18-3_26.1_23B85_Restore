@interface ServerDataCacheService
- (void)reminderEventsForAccountDSID:(id)a3 service:(id)a4 eventType:(id)a5 networkPolicy:(int64_t)a6 completion:(id)a7;
- (void)setUpCacheForAccount:(id)a3 completion:(id)a4;
- (void)setUpCacheForAccountDSID:(id)a3 completion:(id)a4;
- (void)tearDownCacheForAccountDSID:(id)a3 completion:(id)a4;
- (void)updateCacheForAccountDSID:(id)a3 withCachePayload:(id)a4 completion:(id)a5;
- (void)updateCacheForAccountDSID:(id)a3 withCacheTypeIDs:(id)a4 completion:(id)a5;
@end

@implementation ServerDataCacheService

- (void)updateCacheForAccountDSID:(id)a3 withCachePayload:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v7;
  v8 = a3;
  v9 = self;
  sub_100195E84();
}

- (void)updateCacheForAccountDSID:(id)a3 withCacheTypeIDs:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v7;
  v8 = a3;
  v9 = self;
  sub_100196A98();
}

- (void)reminderEventsForAccountDSID:(id)a3 service:(id)a4 eventType:(id)a5 networkPolicy:(int64_t)a6 completion:(id)a7
{
  v9 = _Block_copy(a7);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v9;
  v10 = a3;
  v11 = self;
  sub_10019BC60();
}

- (void)setUpCacheForAccount:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10019ECBC(v7, v8, v6);
  _Block_release(v6);
}

- (void)setUpCacheForAccountDSID:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  sub_10019F0AC();
}

- (void)tearDownCacheForAccountDSID:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  sub_10019FBD8();
}

@end