@interface AXUISettingsTouchAccommodationsController
@end

@implementation AXUISettingsTouchAccommodationsController

void __60__AXUISettingsTouchAccommodationsController_AXSettings_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained shouldIgnoreNextEnabledChangedNotification];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v3)
  {
    [v4 setShouldIgnoreNextEnabledChangedNotification:0];
  }

  else
  {
    [v4 reloadSpecifiers];
  }
}

@end