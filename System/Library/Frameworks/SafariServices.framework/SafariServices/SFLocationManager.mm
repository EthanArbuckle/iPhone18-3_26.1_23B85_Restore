@interface SFLocationManager
@end

@implementation SFLocationManager

void __43___SFLocationManager_sharedLocationManager__block_invoke()
{
  v0 = objc_alloc_init(_SFLocationManager);
  v1 = sharedLocationManager_shared;
  sharedLocationManager_shared = v0;
}

void __26___SFLocationManager_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26___SFLocationManager_init__block_invoke_2;
  v5[3] = &unk_1E8490298;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __26___SFLocationManager_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleApplicationStateChange:*(a1 + 32)];
}

@end