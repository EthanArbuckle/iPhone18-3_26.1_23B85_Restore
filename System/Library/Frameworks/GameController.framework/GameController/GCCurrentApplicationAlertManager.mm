@interface GCCurrentApplicationAlertManager
@end

@implementation GCCurrentApplicationAlertManager

void __51___GCCurrentApplicationAlertManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_Shared_5;
  sharedInstance_Shared_5 = v0;
}

uint64_t __63___GCCurrentApplicationAlertManager_addObserver_notifyCurrent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObserver:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) isAlertPresented];

  return [v2 alertVisibilityDidChange:v3];
}

@end