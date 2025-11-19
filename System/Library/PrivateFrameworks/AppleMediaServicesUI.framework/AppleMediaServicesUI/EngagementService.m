@interface EngagementService
+ (_TtC14amsengagementd17EngagementService)shared;
- (void)contentInfoForApp:(NSString *)a3 cacheKey:(NSString *)a4 version:(NSString *)a5 reply:(id)a6;
- (void)fetchMetricsIdentifiers;
- (void)manualSyncMetricsIdentifiers;
- (void)notifyBlockedMessages:(id)a3;
- (void)syncMetricsIdentifiers;
- (void)treatmentStoreServiceWithReply:(id)a3;
@end

@implementation EngagementService

- (void)treatmentStoreServiceWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_100009624(&unk_1001EBE28, v5);
}

+ (_TtC14amsengagementd17EngagementService)shared
{
  v2 = sub_1000E4C6C();

  return v2;
}

- (void)contentInfoForApp:(NSString *)a3 cacheKey:(NSString *)a4 version:(NSString *)a5 reply:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_100009624(&unk_1001EBE50, v11);
}

- (void)notifyBlockedMessages:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1000EAE50(v4);
}

- (void)syncMetricsIdentifiers
{
  v2 = self;
  sub_1000ED094();
}

- (void)fetchMetricsIdentifiers
{
  v2 = self;
  sub_1000ED16C(0, sub_10016E220);
}

- (void)manualSyncMetricsIdentifiers
{
  v2 = self;
  sub_1000ED16C(1, sub_10016D838);
}

@end