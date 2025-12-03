@interface AXBHardwareDisplayModifier
- (AXBHardwareDisplayModifier)init;
- (void)_updateGrayScaleSettings;
- (void)dealloc;
@end

@implementation AXBHardwareDisplayModifier

- (AXBHardwareDisplayModifier)init
{
  v13.receiver = self;
  v13.super_class = AXBHardwareDisplayModifier;
  v2 = [(AXBHardwareDisplayModifier *)&v13 init];
  if (v2)
  {
    v3 = AXIsInternalInstall();
    v4 = MEMORY[0x29EDC8428];
    if (v3)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC8478]];
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _toggleAXSetting_0, v6, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v7 = CFNotificationCenterGetDarwinNotifyCenter();
      v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *v4];
      CFNotificationCenterAddObserver(v7, 0, _toggleAXSetting_0, v8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__updateGrayScaleSettings name:*v4 object:0];

    v12 = v2;
    AXPerformBlockOnMainThreadAfterDelay();
    v10 = v12;
  }

  return v2;
}

- (void)_updateGrayScaleSettings
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  serverIfRunning = [MEMORY[0x29EDBBAE0] serverIfRunning];
  displays = [serverIfRunning displays];

  v4 = [displays countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(displays);
        }

        [*(*(&v9 + 1) + 8 * v7++) setGrayscale:_AXSGrayscaleEnabled() != 0];
      }

      while (v5 != v7);
      v5 = [displays countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXBHardwareDisplayModifier;
  [(AXBHardwareDisplayModifier *)&v4 dealloc];
}

@end