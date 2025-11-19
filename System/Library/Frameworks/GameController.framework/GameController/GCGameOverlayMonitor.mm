@interface GCGameOverlayMonitor
@end

@implementation GCGameOverlayMonitor

void __39___GCGameOverlayMonitor_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_Shared_1;
  sharedInstance_Shared_1 = v0;
}

void __29___GCGameOverlayMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_GCGameOverlayMonitor *)WeakRetained _refreshState];
}

__CFString *__29___GCGameOverlayMonitor_init__block_invoke_89(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "isOverlayPresented")}];
    [v4 setObject:v7 forKeyedSubscript:@"OverlayIsPresented"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6[4]];
    [v4 setObject:v8 forKeyedSubscript:@"OverlayPresentationStateChangedCount"];

    v9 = @"GCGameOverlayMonitor";
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __51___GCGameOverlayMonitor_addObserver_notifyCurrent___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObserver:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) isOverlayPresented];

  return [v2 gameOverlayPresentationChanged:v3];
}

void __50___GCGameOverlayMonitor_currentProcessIsOverlayUI__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  currentProcessIsOverlayUI_IsGameOverlayUI = [v0 isEqualToString:@"com.apple.GameOverlayUI"];
}

@end