@interface GCCurrentApplicationForegroundMonitor
@end

@implementation GCCurrentApplicationForegroundMonitor

void __56___GCCurrentApplicationForegroundMonitor_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_Shared;
  sharedInstance_Shared = v0;
}

__CFString *__46___GCCurrentApplicationForegroundMonitor_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "isAppInBackground")}];
    [v4 setObject:v7 forKeyedSubscript:@"IsInBackground"];

    v8 = [MEMORY[0x1E696AD98] numberWithBool:{+[_GCCurrentApplicationForegroundMonitor currentProcessFollowsRegularActivationPolicy](_GCCurrentApplicationForegroundMonitor, "currentProcessFollowsRegularActivationPolicy")}];
    [v4 setObject:v8 forKeyedSubscript:@"FollowsRegularActivationPolicy"];

    v9 = @"GCCurrentApplicationForegroundMonitor";
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __68___GCCurrentApplicationForegroundMonitor_addObserver_notifyCurrent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObserver:*(a1 + 40)];
  v2 = [*(a1 + 32) isAppInBackground];
  v3 = *(a1 + 40);
  if (v2)
  {

    return [v3 CBApplicationWillResignActive];
  }

  else
  {

    return [v3 CBApplicationDidBecomeActive];
  }
}

@end