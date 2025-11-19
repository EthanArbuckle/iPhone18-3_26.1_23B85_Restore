@interface MKUserTrackingButtonController
@end

@implementation MKUserTrackingButtonController

void __55___MKUserTrackingButtonController_setUserTrackingView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isLocationServicesRestricted];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55___MKUserTrackingButtonController_setUserTrackingView___block_invoke_2;
  v3[3] = &unk_1E76CA760;
  v3[4] = *(a1 + 40);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __55___MKUserTrackingButtonController_setUserTrackingView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _setInternallyEnabled:(*(a1 + 40) & 1) == 0];
}

@end