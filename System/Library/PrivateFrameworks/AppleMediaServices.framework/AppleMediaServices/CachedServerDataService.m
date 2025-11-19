@interface CachedServerDataService
+ (_TtC12amsaccountsd23CachedServerDataService)sharedService;
- (void)performOnStartup;
- (void)queueMetricsEventFor:(NSDate *)a3 appID:(NSString *)a4 completionHandler:(id)a5;
- (void)scheduleSyncFromPushWithDsid:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation CachedServerDataService

+ (_TtC12amsaccountsd23CachedServerDataService)sharedService
{
  v2 = sub_100002614();

  return v2;
}

- (void)queueMetricsEventFor:(NSDate *)a3 appID:(NSString *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_100004754(&unk_100232E30, v9);
}

- (void)scheduleSyncFromPushWithDsid:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = self;

  sub_100004754(&unk_100232ED0, v7);
}

- (void)performOnStartup
{
  v2 = self;
  sub_1000D1588();
}

@end