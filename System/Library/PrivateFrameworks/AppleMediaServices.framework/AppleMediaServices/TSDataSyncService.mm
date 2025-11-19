@interface TSDataSyncService
+ (_TtC12amsaccountsd17TSDataSyncService)sharedService;
- (void)handleDaemonStartupWithCompletionHandler:(id)a3;
@end

@implementation TSDataSyncService

+ (_TtC12amsaccountsd17TSDataSyncService)sharedService
{
  v2 = sub_10019ED4C();

  return v2;
}

- (void)handleDaemonStartupWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_100004754(&unk_10023FCF8, v5);
}

@end