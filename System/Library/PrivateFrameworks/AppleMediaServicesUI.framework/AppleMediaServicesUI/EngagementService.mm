@interface EngagementService
+ (_TtC14amsengagementd17EngagementService)shared;
- (void)contentInfoForApp:(NSString *)app cacheKey:(NSString *)key version:(NSString *)version reply:(id)reply;
- (void)fetchMetricsIdentifiers;
- (void)manualSyncMetricsIdentifiers;
- (void)notifyBlockedMessages:(id)messages;
- (void)syncMetricsIdentifiers;
- (void)treatmentStoreServiceWithReply:(id)reply;
@end

@implementation EngagementService

- (void)treatmentStoreServiceWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_100009624(&unk_1001EBE28, v5);
}

+ (_TtC14amsengagementd17EngagementService)shared
{
  v2 = sub_1000E4C6C();

  return v2;
}

- (void)contentInfoForApp:(NSString *)app cacheKey:(NSString *)key version:(NSString *)version reply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = app;
  v11[3] = key;
  v11[4] = version;
  v11[5] = v10;
  v11[6] = self;
  appCopy = app;
  keyCopy = key;
  versionCopy = version;
  selfCopy = self;

  sub_100009624(&unk_1001EBE50, v11);
}

- (void)notifyBlockedMessages:(id)messages
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000EAE50(v4);
}

- (void)syncMetricsIdentifiers
{
  selfCopy = self;
  sub_1000ED094();
}

- (void)fetchMetricsIdentifiers
{
  selfCopy = self;
  sub_1000ED16C(0, sub_10016E220);
}

- (void)manualSyncMetricsIdentifiers
{
  selfCopy = self;
  sub_1000ED16C(1, sub_10016D838);
}

@end