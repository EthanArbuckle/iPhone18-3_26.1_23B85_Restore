@interface AppDelegateService
- (AppDelegateService)init;
- (void)setLocalPlayer:(id)a3;
@end

@implementation AppDelegateService

- (AppDelegateService)init
{
  v5.receiver = self;
  v5.super_class = AppDelegateService;
  v2 = [(AppDelegateService *)&v5 init];
  if (v2)
  {
    GKUISetRemote();
    v3 = +[GKDaemonProxy daemonProxy];
    [v3 setDataUpdateDelegate:v2];
  }

  return v2;
}

- (void)setLocalPlayer:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[GKLocalPlayer localPlayer];
    [v4 updateFromLocalPlayer:v3];
  }
}

@end