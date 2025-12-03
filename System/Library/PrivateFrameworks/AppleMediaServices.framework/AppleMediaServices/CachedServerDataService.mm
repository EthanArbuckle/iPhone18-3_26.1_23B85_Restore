@interface CachedServerDataService
+ (_TtC12amsaccountsd23CachedServerDataService)sharedService;
- (void)performOnStartup;
- (void)queueMetricsEventFor:(NSDate *)for appID:(NSString *)d completionHandler:(id)handler;
- (void)scheduleSyncFromPushWithDsid:(unint64_t)dsid completionHandler:(id)handler;
@end

@implementation CachedServerDataService

+ (_TtC12amsaccountsd23CachedServerDataService)sharedService
{
  v2 = sub_100002614();

  return v2;
}

- (void)queueMetricsEventFor:(NSDate *)for appID:(NSString *)d completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = for;
  v9[3] = d;
  v9[4] = v8;
  v9[5] = self;
  forCopy = for;
  dCopy = d;
  selfCopy = self;

  sub_100004754(&unk_100232E30, v9);
}

- (void)scheduleSyncFromPushWithDsid:(unint64_t)dsid completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = dsid;
  v7[3] = v6;
  v7[4] = self;
  selfCopy = self;

  sub_100004754(&unk_100232ED0, v7);
}

- (void)performOnStartup
{
  selfCopy = self;
  sub_1000D1588();
}

@end