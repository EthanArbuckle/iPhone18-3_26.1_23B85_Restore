void _reloadSettings(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"AXNanoPreferencesSettingsChangedNotification" object:0];

  if (a2)
  {
    [a2 reloadSpecifiers];

    [a2 didReceiveNPSValueChangedNotificationWithName:a3];
  }

  else
  {
    v6 = AXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _reloadSettings_cold_1(v6);
    }
  }
}

id eltonLocString(void *a1, int a2)
{
  if (a2)
  {
    v2 = @"AccessibilitySettings-twister";
  }

  else
  {
    v2 = @"AccessibilitySettings-elton";
  }

  v3 = settingsLocString(a1, v2);

  return v3;
}

void sub_23BCD4C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *AXGetActivePairedDevice()
{
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v1 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:v1];
  v3 = [v2 firstObject];

  v4 = [v3 valueForProperty:*MEMORY[0x277D2BB30]];
  if ([v4 BOOLValue])
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

uint64_t AXActivePairedDeviceIsHunterOrLater()
{
  v0 = AXGetActivePairedDevice();
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"B4FBD189-BF37-4C38-A2C3-A0471795086C"];
  v2 = [v0 supportsCapability:v1];

  return v2;
}

BOOL AXActivePairedDeviceIsLighthouseOrLater()
{
  v0 = AXGetActivePairedDevice();
  v1 = [v0 valueForProperty:*MEMORY[0x277D2BC20]];
  v2 = [v1 componentsSeparatedByString:@"."];
  v3 = [v2 firstObject];

  v4 = [v3 intValue] > 9;
  return v4;
}

BOOL AXActivePairedDeviceIsLighthouseEOrLater()
{
  v0 = AXGetActivePairedDevice();
  v1 = [v0 valueForProperty:*MEMORY[0x277D2BC20]];
  v2 = [v1 componentsSeparatedByString:@"."];
  v3 = [v2 firstObject];
  if ([v2 count] < 2)
  {
    v4 = @"0";
  }

  else
  {
    v4 = [v2 objectAtIndexedSubscript:1];
  }

  if ([v3 intValue] <= 10)
  {
    v5 = [v3 intValue] == 10 && -[__CFString intValue](v4, "intValue") > 3;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

BOOL AXActivePairedDeviceIsMoonstoneOrLater()
{
  v0 = AXGetActivePairedDevice();
  v1 = [v0 valueForProperty:*MEMORY[0x277D2BC20]];
  v2 = [v1 componentsSeparatedByString:@"."];
  v3 = [v2 firstObject];

  v4 = [v3 intValue] > 10;
  return v4;
}

BOOL AXActivePairedDeviceIsNapiliBOrLater()
{
  v0 = AXGetActivePairedDevice();
  v1 = [v0 valueForProperty:*MEMORY[0x277D2BC20]];
  v2 = [v1 componentsSeparatedByString:@"."];
  v3 = [v2 firstObject];
  if ([v2 count] < 2)
  {
    v4 = @"0";
  }

  else
  {
    v4 = [v2 objectAtIndexedSubscript:1];
  }

  if ([v3 intValue] <= 26)
  {
    v5 = [v3 intValue] == 26 && -[__CFString intValue](v4, "intValue") > 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id settingsLocString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = AXBridgeSettingsBundle_AXBundle;
  if (!AXBridgeSettingsBundle_AXBundle)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = AXBridgeSettingsBundle_AXBundle;
    AXBridgeSettingsBundle_AXBundle = v6;

    v5 = AXBridgeSettingsBundle_AXBundle;
  }

  v8 = [v5 localizedStringForKey:v3 value:v3 table:v4];

  return v8;
}

id AXHareImage()
{
  v0 = [MEMORY[0x277D755B8] systemImageNamed:@"hare"];
  v1 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  v2 = [v0 imageWithTintColor:v1 renderingMode:2];

  return v2;
}

id AXTortoiseImage()
{
  v0 = [MEMORY[0x277D755B8] systemImageNamed:@"tortoise"];
  v1 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  v2 = [v0 imageWithTintColor:v1 renderingMode:2];

  return v2;
}

id AXVolumeMinImage()
{
  v0 = [MEMORY[0x277D755B8] systemImageNamed:@"speaker.fill"];
  v1 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  v2 = [v0 imageWithTintColor:v1 renderingMode:2];

  return v2;
}

id AXVolumeMaxImage()
{
  v0 = [MEMORY[0x277D755B8] systemImageNamed:@"speaker.wave.3.fill"];
  v1 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  v2 = [v0 imageWithTintColor:v1 renderingMode:2];

  return v2;
}

id AXResizeImageToSystemImage(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277D755D0] configurationWithTextStyle:a2];
  v6 = [v4 _systemImageNamed:@"accessibility" withConfiguration:v5];

  if (v6)
  {
    [v6 size];
    v8 = v7;
    [v6 size];
    if (v8 < v9)
    {
      v8 = v9;
    }

    [v3 size];
    v11 = v10;
    [v3 size];
    if (v11 >= v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    v14 = v8 / v13;
    v15 = objc_alloc(MEMORY[0x277D75560]);
    v16 = [MEMORY[0x277D75568] defaultFormat];
    v17 = [v15 initWithSize:v16 format:{v8, v8}];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __AXResizeImageToSystemImage_block_invoke;
    v20[3] = &unk_278B90A38;
    v21 = v3;
    v22 = v14;
    v18 = v3;
    v3 = [v17 imageWithActions:v20];
  }

  else
  {
    v17 = AXLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      AXResizeImageToSystemImage_cold_1(v17);
    }
  }

  return v3;
}

uint64_t __AXResizeImageToSystemImage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v2 size];
  v5 = v3 * v4;
  v6 = *(a1 + 40);
  [*(a1 + 32) size];

  return [v2 drawInRect:{0.0, 0.0, v5, v6 * v7}];
}

id AXLocalizedStringForQuickActionsState(uint64_t a1)
{
  if (a1 <= 2)
  {
    a1 = settingsLocString(off_278B90A58[a1], @"AccessibilitySettings-quickactions");
  }

  return a1;
}

id AXLocalizedStringForQuickActionBannerAppearance(int a1)
{
  if (!a1)
  {
    v2 = @"QUICK_ACTIONS_BANNER_FULL";
LABEL_5:
    v3 = settingsLocString(v2, @"AccessibilitySettings-quickactions");

    return v3;
  }

  if (a1 == 1)
  {
    v2 = @"QUICK_ACTIONS_BANNER_MINIMAL";
    goto LABEL_5;
  }

  v3 = 0;

  return v3;
}

id AXSettingsBundle()
{
  v0 = AXSettingsBundle_AXBundle;
  if (!AXSettingsBundle_AXBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:MEMORY[0x23EEBA8D0](@"AccessibilityBridgeSettingsController")];
    v2 = AXSettingsBundle_AXBundle;
    AXSettingsBundle_AXBundle = v1;

    v0 = AXSettingsBundle_AXBundle;
  }

  return v0;
}

uint64_t AXActivePairedDeviceSupportsWatchQuickActionsV2()
{
  v0 = AXGetActivePairedDevice();
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"93EA0155-DFC4-4F9D-B8F0-DECC5B9C0C1D"];
  v2 = [v0 supportsCapability:v1];

  return v2;
}

BOOL AXActivePairedDeviceHasDoubleTapActivationGesture()
{
  v0 = [MEMORY[0x277D7A910] sharedInstance];
  v1 = [v0 greyActivationGesture] == 3;

  return v1;
}

uint64_t AXActivePairedDeviceSupportsElton()
{
  v0 = AXGetActivePairedDevice();
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"0E581E21-36BA-4770-9408-0467585E8495"];
  v2 = [v0 supportsCapability:v1];

  return v2;
}

uint64_t AXActivePairedDeviceSupportsHasEltonEnabled()
{
  if (!AXActivePairedDeviceSupportsElton())
  {
    return 0;
  }

  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:WAGPreferencesDomain];
  v7 = 0;
  v2 = [v1 synchronize];
  if ([v1 integerForKey:@"gestureMode" keyExistsAndHasValidFormat:&v7] == 1)
  {
    v3 = v7;
  }

  else
  {
    v3 = 0;
  }

  if (AXActivePairedDeviceSupportsFlick())
  {
    v6 = 0;
    v4 = [v1 integerForKey:@"flickGestureState" keyExistsAndHasValidFormat:&v6];
    if (v3)
    {
      v3 = 1;
    }

    else if (v4 == 1)
    {
      v3 = v6;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t AXActivePairedDeviceSupportsFlick()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v1 = AXGetActivePairedDevice();
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
    v3 = [v1 supportsCapability:v2];

    return v3;
  }

  return result;
}

void AXActivePairedDeviceDisableElton()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:WAGPreferencesDomain];
  [v1 setObject:&unk_284E7E348 forKey:@"gestureMode"];
  v2 = [v1 synchronize];
  v3 = objc_opt_new();
  v4 = WAGPreferencesDomain;
  v5 = MEMORY[0x277CBEB98];
  v16[0] = @"gestureMode";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v7 = [v5 setWithArray:v6];
  [v3 synchronizeNanoDomain:v4 keys:v7];

  if (AXActivePairedDeviceSupportsFlick())
  {
    [v1 setObject:&unk_284E7E348 forKey:@"flickGestureState"];
    v8 = [v1 synchronize];
    v9 = objc_opt_new();
    v10 = WAGPreferencesDomain;
    v11 = MEMORY[0x277CBEB98];
    v15 = @"flickGestureState";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    v13 = [v11 setWithArray:v12];
    [v9 synchronizeNanoDomain:v10 keys:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

id AXLocalizedStringForFlickSpeed(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"WRIST_FLICK_SPEED_SLOW";
  }

  else
  {
    v1 = @"WRIST_FLICK_SPEED_DEFAULT";
  }

  return settingsLocString(v1, @"WristFlickSettings-twister");
}

unint64_t AXGetWristFlickSpeed()
{
  v6 = 0;
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:*MEMORY[0x277CE6A38]];
  v2 = [v1 synchronize];
  v3 = [v1 integerForKey:*MEMORY[0x277CE6A40] keyExistsAndHasValidFormat:&v6];
  if ((v6 & (v3 < 2)) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void AXSetWristFlickSpeed(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D2BA58]);
  v3 = *MEMORY[0x277CE6A38];
  v4 = [v2 initWithDomain:*MEMORY[0x277CE6A38]];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v6 = *MEMORY[0x277CE6A40];
  [v4 setObject:v5 forKey:*MEMORY[0x277CE6A40]];

  v7 = [v4 synchronize];
  v8 = objc_opt_new();
  v9 = MEMORY[0x277CBEB98];
  v13[0] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v9 setWithArray:v10];
  [v8 synchronizeNanoDomain:v3 keys:v11];

  v12 = *MEMORY[0x277D85DE8];
}

void sub_23BCDB4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a26);
  objc_destroyWeak((v27 - 128));
  _Unwind_Resume(a1);
}

void _reloadAutoAnswerValues(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 domainAccessor];
  v3 = [v2 synchronize];

  [v4 reload];
}

void sub_23BCE8A94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

void _reloadSettings_0(uint64_t a1, void *a2)
{
  if (a2)
  {

    [a2 reloadSpecifiers];
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _reloadSettings_cold_1_0(v3);
    }
  }
}

void _reloadSettings_1(uint64_t a1, void *a2)
{
  if (a2)
  {

    [a2 reloadSpecifiers];
  }

  else
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _reloadSettings_cold_1_1(v3);
    }
  }
}

id AXTouchAccommodationsDomainAccessor()
{
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:*MEMORY[0x277D81E50]];

  return v1;
}

uint64_t AXGizmoTouchAccommodationsSupported()
{
  v0 = AXGetActivePairedDevice();
  NRWatchOSVersionForRemoteDevice();
  IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();

  return IsGreaterThanOrEqual;
}

uint64_t AXGizmoTouchAccommodationsEnabled()
{
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:*MEMORY[0x277D81E50]];
  v2 = [v1 BOOLForKey:*MEMORY[0x277CE7EF0]];

  return v2;
}

void AXGizmoTouchAccommodationsSetEnabled(uint64_t a1)
{
  v1 = *MEMORY[0x277CE7EF0];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  AXGizmoTouchAccommodationsSyncPref(v1, v2);
}

void AXGizmoTouchAccommodationsSyncPref(void *a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2BA58];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = MEMORY[0x277D81E50];
  v8 = [v6 initWithDomain:*MEMORY[0x277D81E50]];
  [v8 setObject:v4 forKey:v5];

  v9 = [v8 synchronize];
  v10 = objc_opt_new();
  v11 = *v7;
  v12 = MEMORY[0x277CBEB98];
  v16[0] = v5;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [v12 setWithArray:v13];
  [v10 synchronizeNanoDomain:v11 keys:v14];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t AXGizmoTouchAccommodationsUsageConfirmed()
{
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:*MEMORY[0x277D81E50]];
  v2 = [v1 BOOLForKey:*MEMORY[0x277CE7F40]];

  return v2;
}

void AXGizmoTouchAccommodationsSetUsageConfirmed(uint64_t a1)
{
  v1 = *MEMORY[0x277CE7F40];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  AXGizmoTouchAccommodationsSyncPref(v1, v2);
}

uint64_t AXGizmoTouchAccommodationsHoldDurationEnabled()
{
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:*MEMORY[0x277D81E50]];
  v2 = [v1 BOOLForKey:*MEMORY[0x277CE7EF8]];

  return v2;
}

uint64_t AXGizmoTouchAccommodationsIgnoreRepeatEnabled()
{
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:*MEMORY[0x277D81E50]];
  v2 = [v1 BOOLForKey:*MEMORY[0x277CE7F20]];

  return v2;
}

uint64_t AXGizmoTouchAccommodationsTapActivationMethod()
{
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:*MEMORY[0x277D81E50]];
  v2 = [v1 integerForKey:*MEMORY[0x277CE7F28]];

  return v2;
}

void AXGizmoTouchAccommodationsSetHoldDurationEnabled(uint64_t a1)
{
  v1 = *MEMORY[0x277CE7EF8];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  AXGizmoTouchAccommodationsSyncPref(v1, v2);
}

void AXGizmoTouchAccommodationsSetIgnoreRepeatEnabled(uint64_t a1)
{
  v1 = *MEMORY[0x277CE7F20];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  AXGizmoTouchAccommodationsSyncPref(v1, v2);
}

uint64_t AXGizmoTouchAccommodationsAllowsSwipeGesturesToBypass()
{
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:*MEMORY[0x277D81E50]];
  v2 = [v1 BOOLForKey:*MEMORY[0x277CE7EE8]];

  return v2;
}

void AXGizmoTouchAccommodationsSetAllowsSwipeGesturesToBypass(uint64_t a1)
{
  v1 = *MEMORY[0x277CE7EE8];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  AXGizmoTouchAccommodationsSyncPref(v1, v2);
}

double AXGizmoTouchAccommodationsSwipeGestureMinimumDistance()
{
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:*MEMORY[0x277D81E50]];
  v2 = [v1 objectForKey:*MEMORY[0x277CE7F10]];

  if (!v2)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CE7F08]];
  }

  [v2 floatValue];
  v4 = v3;

  return v4;
}

void AXGizmoTouchAccommodationsSetSwipeGestureMinimumDistance()
{
  v0 = *MEMORY[0x277CE7F10];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  AXGizmoTouchAccommodationsSyncPref(v0, v1);
}

double AXGizmoTouchAccommodationsHoldDuration()
{
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:*MEMORY[0x277D81E50]];
  [v1 doubleForKey:*MEMORY[0x277CE7F00]];
  v3 = v2;

  return v3;
}

void AXGizmoTouchAccommodationsSetHoldDuration()
{
  v0 = *MEMORY[0x277CE7F00];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  AXGizmoTouchAccommodationsSyncPref(v0, v1);
}

double AXGizmoTouchAccommodationsIgnoreRepeatDuration()
{
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:*MEMORY[0x277D81E50]];
  [v1 doubleForKey:*MEMORY[0x277CE7F18]];
  v3 = v2;

  return v3;
}

void AXGizmoTouchAccommodationsSetIgnoreRepeatDuration()
{
  v0 = *MEMORY[0x277CE7F18];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  AXGizmoTouchAccommodationsSyncPref(v0, v1);
}

double AXGizmoTouchAccommodationsTapActivationTimeout()
{
  v0 = objc_alloc(MEMORY[0x277D2BA58]);
  v1 = [v0 initWithDomain:*MEMORY[0x277D81E50]];
  [v1 doubleForKey:*MEMORY[0x277CE7F30]];
  v3 = v2;

  return v3;
}

void AXGizmoTouchAccommodationsSetTapActivationTimeout()
{
  v0 = *MEMORY[0x277CE7F30];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  AXGizmoTouchAccommodationsSyncPref(v0, v1);
}

void AXGizmoTouchAccommodationsSetTapActivationMethod(uint64_t a1)
{
  v1 = *MEMORY[0x277CE7F28];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  AXGizmoTouchAccommodationsSyncPref(v1, v2);
}

void sub_23BCEDC60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_23BCF40FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WorkoutVoiceAvailabilityProviderBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutVoiceAvailabilityProviderBridge.init()()
{
  v0 = sub_23BD06184();
  v38 = *(v0 - 8);
  v39 = v0;
  v1 = *(v38 + 64);
  v2 = (MEMORY[0x28223BE20])();
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - v4;
  v6 = sub_23BD061A4();
  v35 = *(v6 - 8);
  v7 = v35;
  v36 = v6;
  v8 = *(v35 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = sub_23BD06164();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  sub_23BD06154();
  v22 = *(v15 + 16);
  v22(v19, v21, v14);
  sub_23BD06194();
  v22(v19, v21, v14);
  v23 = v5;
  v34 = v5;
  sub_23BD06174();
  v24 = v36;
  (*(v7 + 16))(v11, v13, v36);
  v25 = v38;
  v26 = v39;
  (*(v38 + 16))(v37, v23, v39);
  v27 = objc_allocWithZone(sub_23BD06044());
  v28 = sub_23BD06014();
  v29 = v40;
  *&v40[OBJC_IVAR___WorkoutVoiceAvailabilityProviderBridge_availabilityProvider] = v28;
  v30 = type metadata accessor for WorkoutVoiceAvailabilityProviderBridge();
  v41.receiver = v29;
  v41.super_class = v30;
  v31 = objc_msgSendSuper2(&v41, sel_init);
  (*(v25 + 8))(v34, v26);
  (*(v35 + 8))(v13, v24);
  (*(v15 + 8))(v21, v14);
  return v31;
}

uint64_t sub_23BCFD4AC()
{
  v0[3] = *(v0[2] + OBJC_IVAR___WorkoutVoiceAvailabilityProviderBridge_availabilityProvider);
  v1 = *(MEMORY[0x277D7DC90] + 4);
  v4 = (*MEMORY[0x277D7DC90] + MEMORY[0x277D7DC90]);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_23BCFD560;

  return v4();
}

uint64_t sub_23BCFD560()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23BCFD65C, 0, 0);
}

uint64_t sub_23BCFD65C()
{
  sub_23BD06404();
  *(v0 + 40) = sub_23BD063F4();
  v2 = sub_23BD063E4();

  return MEMORY[0x2822009F8](sub_23BCFD6F0, v2, v1);
}

uint64_t sub_23BCFD6F0()
{
  v1 = v0[5];
  v2 = v0[3];

  v0[6] = sub_23BD06024();

  return MEMORY[0x2822009F8](sub_23BCFD764, 0, 0);
}

uint64_t sub_23BCFD764()
{
  v1 = *(v0 + 48);
  v2 = sub_23BD06034();
  sub_23BCFD7D8(v1);
  v3 = *(v0 + 8);

  return v3(v2 & 1);
}

unint64_t sub_23BCFD7D8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_23BCFD95C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_23BCFD9D4, 0, 0);
}

uint64_t sub_23BCFD9D4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___WorkoutVoiceAvailabilityProviderBridge_availabilityProvider;
  v0[4] = OBJC_IVAR___WorkoutVoiceAvailabilityProviderBridge_availabilityProvider;
  v3 = *(v1 + v2);
  v4 = *(MEMORY[0x277D7DC90] + 4);
  v7 = (*MEMORY[0x277D7DC90] + MEMORY[0x277D7DC90]);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_23BCFDA88;

  return v7();
}

uint64_t sub_23BCFDA88()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23BCFDB84, 0, 0);
}

uint64_t sub_23BCFDB84()
{
  v0[6] = *(v0[2] + v0[4]);
  sub_23BD06404();
  v0[7] = sub_23BD063F4();
  v2 = sub_23BD063E4();

  return MEMORY[0x2822009F8](sub_23BCFDC28, v2, v1);
}

uint64_t sub_23BCFDC28()
{
  v2 = v0[6];
  v1 = v0[7];

  v0[8] = sub_23BD06024();

  return MEMORY[0x2822009F8](sub_23BCFDC98, 0, 0);
}

uint64_t sub_23BCFDC98()
{
  v1 = v0[8];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_23BD06034();
  sub_23BCFD7D8(v1);

  v2[2](v2, v4 & 1);
  _Block_release(v2);
  v5 = v0[1];

  return v5();
}

id WorkoutVoiceAvailabilityProviderBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutVoiceAvailabilityProviderBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23BCFDDC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BCFDE00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23BCFDEAC;

  return sub_23BCFD95C(v2, v3);
}

uint64_t sub_23BCFDEAC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23BCFDFA0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23BCFEA74;

  return v7();
}

uint64_t sub_23BCFE08C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23BCFEA74;

  return sub_23BCFDFA0(v2, v3, v5);
}

uint64_t sub_23BCFE14C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23BCFDEAC;

  return v8();
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23BCFE274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23BCFEA74;

  return sub_23BCFE14C(a1, v4, v5, v7);
}

uint64_t sub_23BCFE340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D18, &qword_23BD097E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_23BCFE5FC(a3, v25 - v11);
  v13 = sub_23BD06434();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_23BCFE66C(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23BD06424();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_23BD063E4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_23BD063A4() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_23BCFE66C(a3);

    return v23;
  }

LABEL_8:
  sub_23BCFE66C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23BCFE5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D18, &qword_23BD097E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BCFE66C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D18, &qword_23BD097E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BCFE6D4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23BCFE7CC;

  return v7(a1);
}

uint64_t sub_23BCFE7CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23BCFE8C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BCFE8FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23BCFEA74;

  return sub_23BCFE6D4(a1, v5);
}

uint64_t sub_23BCFE9B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23BCFDEAC;

  return sub_23BCFE6D4(a1, v5);
}

void __swiftcall LiveSpeechSwiftUI.make()(UIViewController *__return_ptr retstr)
{
  sub_23BD06214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D20, &unk_23BD097B0);
  sub_23BCFEB50();
  sub_23BD06224();
}

double sub_23BCFEAE0@<D0>(_OWORD *a1@<X8>)
{
  sub_23BD061F4();
  sub_23BCFEFB8();
  sub_23BD01BE8(sub_23BCFEBFC, 0, v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_23BCFEB50()
{
  result = qword_27E1C3D28;
  if (!qword_27E1C3D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C3D20, &unk_23BD097B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C3D28);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23BCFEBFC(void *a1)
{
  v1 = a1;

  return MEMORY[0x282139A60](v1);
}

id LiveSpeechSwiftUI.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23BD06384();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id LiveSpeechSwiftUI.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_23BD06384();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for LiveSpeechSwiftUI();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id LiveSpeechSwiftUI.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LiveSpeechSwiftUI.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LiveSpeechSwiftUI();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LiveSpeechSwiftUI.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveSpeechSwiftUI();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23BCFEFB8()
{
  result = qword_27E1C3D30;
  if (!qword_27E1C3D30)
  {
    sub_23BD061F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C3D30);
  }

  return result;
}

uint64_t sub_23BCFF010()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    v3 = sub_23BD061C4();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_23BD061B4();
    v6 = *(v2 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_23BCFF08C(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t (*sub_23BCFF09C(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23BCFF010();
  return sub_23BCFF0E4;
}

uint64_t sub_23BCFF0E4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

uint64_t sub_23BCFF0FC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    v3 = sub_23BD06134();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_23BD06124();
    v6 = *(v2 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_23BCFF170(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t (*sub_23BCFF180(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23BCFF0FC();
  return sub_23BCFF1C8;
}

uint64_t sub_23BCFF1C8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

uint64_t sub_23BCFF1E8()
{
  if (v0[4])
  {
    v1 = v0[4];
  }

  else
  {
    v2 = objc_allocWithZone(MEMORY[0x277CE7DC8]);
    v3 = sub_23BD06384();
    v4 = [v2 initWithDomain_];

    v5 = sub_23BD06384();
    v6 = [v4 objectForKey_];

    if (v6)
    {
      sub_23BD06564();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D68, &qword_23BD098C8);
    if (swift_dynamicCast())
    {
      v17[0] = v10;
      v17[1] = v11;
      v18 = v12;
      v7 = v0;
      (*(*v0 + 128))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D50, &qword_23BD09800);
      sub_23BD011E4();
      sub_23BD06114();
      sub_23BD01298(v17);

      v1 = v10;
      v9 = v7[4];
      v7[4] = v10;
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      sub_23BD015B4(&v10, &qword_27E1C3D70, &qword_23BD098D0);
      v1 = MEMORY[0x277D84F90];
    }
  }

  return v1;
}

uint64_t BridgeVoiceSource.voices(forQuery:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v47 = a2;
  v46 = sub_23BD060E4();
  v50 = *(v46 - 8);
  v56 = v50[8];
  MEMORY[0x28223BE20](v46);
  v51 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D18, &qword_23BD097E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D38, &qword_23BD097E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D40, &qword_23BD097F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v16 = v41 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D48, &qword_23BD097F8);
  v55 = *(v53 - 8);
  v17 = *(v55 + 64);
  v18 = MEMORY[0x28223BE20](v53);
  v44 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v52 = v41 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D50, &qword_23BD09800);
  (*(v7 + 104))(v10, *MEMORY[0x277D85778], v6);
  v49 = v16;
  v45 = v21;
  sub_23BD06444();
  (*(v7 + 8))(v10, v6);
  v22 = v48;
  sub_23BD06414();
  v23 = sub_23BD06434();
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  v24 = v12;
  v25 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v25, v16, v11);
  v26 = v50;
  v27 = v51;
  v28 = v50[2];
  v41[1] = v50 + 2;
  v42 = v28;
  v29 = v46;
  v28(v51, v54, v46);
  v30 = *(v12 + 80);
  v43 = v12;
  v31 = (v30 + 40) & ~v30;
  v32 = *(v26 + 80);
  v33 = (v13 + v32 + v31) & ~v32;
  v41[2] = v32 | 7;
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 4) = v57;
  v35 = *(v24 + 32);
  v41[0] = v11;
  v35(&v34[v31], v25, v11);
  v36 = v50[4];
  v37 = v29;
  v36(&v34[v33], v27, v29);

  sub_23BD002B8(0, 0, v48, &unk_23BD09810, v34);

  sub_23BD06454();
  (*(v55 + 16))(v44, v52, v53);
  v38 = v51;
  v42(v51, v54, v37);
  v39 = swift_allocObject();
  *(v39 + 16) = v57;
  v36((v39 + ((v32 + 24) & ~v32)), v38, v37);

  sub_23BD060F4();

  (*(v43 + 8))(v49, v41[0]);
  return (*(v55 + 8))(v52, v53);
}

uint64_t sub_23BCFFA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3DA0, &qword_23BD098F8);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3DA8, &qword_23BD09900);
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3DB0, &qword_23BD09908);
  v6[13] = v13;
  v14 = *(v13 - 8);
  v6[14] = v14;
  v15 = *(v14 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BCFFBC8, 0, 0);
}

uint64_t sub_23BCFFBC8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  sub_23BD06144();
  sub_23BD06484();
  v6 = *(v4 + 8);
  v0[17] = v6;
  v0[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  sub_23BD06494();
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_23BCFFCF0;
  v9 = v0[12];
  v10 = v0[10];

  return MEMORY[0x2822003E8](v0 + 20, 0, 0, v10);
}

uint64_t sub_23BCFFCF0()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23BCFFDEC, 0, 0);
}

uint64_t sub_23BCFFDEC()
{
  if (*(v0 + 160) == 1)
  {
    v2 = *(v0 + 136);
    v1 = *(v0 + 144);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 104);
    v6 = *(v0 + 72);
    v7 = *(v0 + 40);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D40, &qword_23BD097F0);
    sub_23BD06474();
    v2(v3, v5);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    v16 = *(v14 + 32);
    *(v14 + 32) = 0;

    *(v0 + 16) = sub_23BCFF1E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D50, &qword_23BD09800);
    sub_23BD01550();
    v17 = sub_23BD063C4();

    *(v0 + 24) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D40, &qword_23BD097F0);
    sub_23BD06464();
    (*(v11 + 8))(v10, v12);
    v18 = *(MEMORY[0x277D85798] + 4);
    v19 = swift_task_alloc();
    *(v0 + 152) = v19;
    *v19 = v0;
    v19[1] = sub_23BCFFCF0;
    v20 = *(v0 + 96);
    v21 = *(v0 + 80);

    return MEMORY[0x2822003E8](v0 + 160, 0, 0, v21);
  }
}

uint64_t sub_23BD00014()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D40, &qword_23BD097F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_23BD060E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_23BD00178()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D40, &qword_23BD097F0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_23BD060E4() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_23BCFEA74;

  return sub_23BCFFA1C(v8, v9, v10, v7, v0 + v3, v0 + v6);
}

uint64_t sub_23BD002B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D18, &qword_23BD097E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23BCFE5FC(a3, v27 - v11);
  v13 = sub_23BD06434();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23BD015B4(v12, &qword_27E1C3D18, &qword_23BD097E0);
  }

  else
  {
    sub_23BD06424();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23BD063E4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23BD063A4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_23BD015B4(a3, &qword_27E1C3D18, &qword_23BD097E0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23BD015B4(a3, &qword_27E1C3D18, &qword_23BD097E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23BD005CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_23BD005F0, 0, 0);
}

uint64_t sub_23BD005F0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v0[2] = sub_23BCFF1E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D50, &qword_23BD09800);
  sub_23BD01550();
  v4 = sub_23BD063C4();

  *v3 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_23BD006B4()
{
  v1 = sub_23BD060E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23BD00778(uint64_t a1)
{
  v4 = *(sub_23BD060E4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23BCFDEAC;

  return sub_23BD005CC(a1, v6, v1 + v5);
}

uint64_t BridgeVoiceSource.locales(forQuery:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D58, &qword_23BD09828);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  (*(*v1 + 184))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D60, &qword_23BD09838);
  sub_23BD06104();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_23BD00998(uint64_t a1, uint64_t *a2)
{
  v2[12] = a1;
  v4 = sub_23BD060D4();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a2;
  v2[15] = v7;
  v2[16] = v8;

  return MEMORY[0x2822009F8](sub_23BD00A60, 0, 0);
}

uint64_t sub_23BD00A60()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v24 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = (v3 + 8);
    v23 = *(v3 + 72);
    do
    {
      v5 = v0[15];
      v26 = v0[13];
      v27 = v2;
      v24(v5, v4);
      sub_23BD06094();
      v7 = v0[5];
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
      v8 = *(v7 - 8);
      v9 = *(v8 + 64) + 15;
      swift_task_alloc();
      (*(v8 + 16))();
      sub_23BD06004();
      sub_23BD014BC(&qword_27E1C3D90, MEMORY[0x277CC9788]);
      v10 = *(v6 + 8);
      v25 = sub_23BD064D4();

      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      sub_23BD060A4();
      v11 = v0[10];
      v12 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v11);
      v13 = *(v11 - 8);
      v14 = *(v13 + 64) + 15;
      swift_task_alloc();
      (*(v13 + 16))();
      v15 = *(v12 + 8);
      v16 = v25;
      v17 = sub_23BD064D4();
      (*v22)(v5, v26);

      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v4 += v23;
      v2 = v27 - 1;
    }

    while (v27 != 1);
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
    v16 = MEMORY[0x277D84FA0];
  }

  v18 = v0[15];
  v19 = v0[12];
  *v19 = v16;
  v19[1] = v17;

  v20 = v0[1];

  return v20();
}

uint64_t BridgeVoiceSource.preferredLanguages.getter()
{
  v0 = objc_opt_self();
  v1 = sub_23BD06384();
  v2 = [v0 domainAccessorForDomain_];

  if (v2)
  {
    v3 = sub_23BD06384();
    v4 = [v2 stringArrayForKey_];

    if (v4)
    {
      v5 = sub_23BD063D4();

      v6 = sub_23BD00E68(v5);

      if (v6)
      {

        return v6;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23BD00E68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_23BD012EC(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_23BD0130C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23BD012EC((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *BridgeVoiceSource.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = v0[2];

  v3 = v0[3];

  v4 = v0[4];

  return v0;
}

uint64_t BridgeVoiceSource.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = v0[2];

  v3 = v0[3];

  v4 = v0[4];

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_23BD01080()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

unint64_t sub_23BD011E4()
{
  result = qword_27E1C3D78;
  if (!qword_27E1C3D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C3D50, &qword_23BD09800);
    sub_23BD014BC(&qword_27E1C3D80, MEMORY[0x277D702F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C3D78);
  }

  return result;
}

char *sub_23BD012EC(char *a1, int64_t a2, char a3)
{
  result = sub_23BD01368(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23BD0130C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_23BD01368(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D88, &qword_23BD098D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23BD014BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_23BD01550()
{
  result = qword_27E1C3D98;
  if (!qword_27E1C3D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C3D50, &qword_23BD09800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C3D98);
  }

  return result;
}

uint64_t sub_23BD015B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23BD01614()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BD0164C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23BCFEA74;

  return sub_23BCFE6D4(a1, v5);
}

uint64_t sub_23BD01704(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23BCFDEAC;

  return sub_23BCFE6D4(a1, v5);
}

void *sub_23BD017C0()
{
  type metadata accessor for BridgeVoiceSource();
  result = sub_23BD01080();
  qword_27E1C4000 = result;
  return result;
}

uint64_t sub_23BD017F4()
{
  v0 = sub_23BD06074();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23BD060C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_23BD06084();
  if (qword_27E1C3EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_27E1C4000;
  v11 = type metadata accessor for BridgeVoiceSource();
  v12 = sub_23BD01A2C(&qword_27E1C3DD0, type metadata accessor for BridgeVoiceSource);
  v10 = v7;

  sub_23BD060B4();
  (*(v1 + 104))(v4, *MEMORY[0x277D700F8], v0);
  result = sub_23BD06064();
  qword_27E1C4008 = result;
  return result;
}

uint64_t type metadata accessor for BridgeCoreSynthesisVoicePickableFetcher()
{
  result = qword_27E1C3FF0;
  if (!qword_27E1C3FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BD01A2C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BD01A74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23BD01AD8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  v13 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_23BD0583C(v15, a2, a3, a4, a5, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

uint64_t sub_23BD01BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v30 = a3;
  v32 = sub_23BD06244();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = v28 - v7;
  v8 = sub_23BD060C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  if (qword_27E1C3EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = qword_27E1C4000;
  v36 = MEMORY[0x277D84F90];
  sub_23BD01A2C(&qword_27E1C3DB8, MEMORY[0x277D702B8]);
  v28[1] = v16;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3DC0, &qword_23BD09920);
  sub_23BD04540(&qword_27E1C3DC8, &qword_27E1C3DC0, &qword_23BD09920);
  sub_23BD06574();
  v18 = v31;
  v17 = v32;
  (*(v3 + 104))(v31, *MEMORY[0x277D70790], v32);
  v38 = type metadata accessor for BridgeVoiceSource();
  v39 = sub_23BD01A2C(&qword_27E1C3DD0, type metadata accessor for BridgeVoiceSource);
  v36 = v16;
  v19 = objc_allocWithZone(type metadata accessor for BridgeCoreSynthesisVoicePickableFetcher());
  *&v19[qword_27E1C3DD8] = MEMORY[0x277D84F98];
  sub_23BD01A74(&v36, v35);
  (*(v9 + 16))(v13, v15, v8);
  (*(v3 + 16))(v29, v18, v17);
  v20 = sub_23BD06294();
  (*(v3 + 8))(v18, v17);
  (*(v9 + 8))(v15, v8);
  __swift_destroy_boxed_opaque_existential_1(&v36);

  v35[0] = v20;
  sub_23BD06334();
  v21 = v36;
  v22 = v37;
  sub_23BD06514();
  v35[0] = sub_23BD064E4();
  result = sub_23BD06334();
  v24 = v36;
  v25 = v37;
  v26 = v30;
  *v30 = v21;
  v26[1] = v22;
  v26[2] = v24;
  v26[3] = v25;
  v27 = v34;
  v26[4] = v33;
  v26[5] = v27;
  return result;
}

uint64_t sub_23BD0202C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v4 = sub_23BD06234();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v51 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  *&v55 = v8;
  *(&v55 + 1) = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v46 = v42 - v15;
  *&v55 = v8;
  *(&v55 + 1) = v12;
  v42[3] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v55 = OpaqueTypeMetadata2;
  *(&v55 + 1) = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeMetadata2();
  v45 = *(v17 - 8);
  v18 = *(v45 + 64);
  MEMORY[0x28223BE20](v17);
  v43 = v42 - v19;
  v44 = OpaqueTypeMetadata2;
  *&v55 = OpaqueTypeMetadata2;
  *(&v55 + 1) = OpaqueTypeConformance2;
  v42[2] = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v47 = v17;
  *&v55 = v17;
  *(&v55 + 1) = v20;
  v42[1] = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v42 - v27;
  v29 = *(v2 + 32);
  v30 = *(v2 + 40);
  v50 = v2;
  v55 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3DE0, &unk_23BD09928);
  sub_23BD06344();
  v31 = v58;
  v29(v58);

  if (qword_27E1C3EC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v32 = v46;
  sub_23BD062F4();

  (*(v48 + 8))(v11, v8);
  v59 = *v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3E10, &unk_23BD09B20);
  sub_23BD06344();
  v56 = type metadata accessor for BridgeCoreSynthesisVoicePickableFetcher();
  v57 = MEMORY[0x277D70798];
  v33 = v43;
  v34 = v44;
  sub_23BD062E4();
  (*(v49 + 8))(v32, v34);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  v36 = v51;
  v35 = v52;
  v37 = v53;
  (*(v52 + 104))(v51, *MEMORY[0x277CE75F8], v53);
  v38 = v47;
  sub_23BD062D4();
  (*(v35 + 8))(v36, v37);
  (*(v45 + 8))(v33, v38);
  v39 = v22[2];
  v39(v28, v26, v21);
  v40 = v22[1];
  v40(v26, v21);
  v39(v54, v28, v21);
  return (v40)(v28, v21);
}

uint64_t sub_23BD0262C()
{
  sub_23BD06514();
  result = sub_23BD064E4();
  qword_27E1C4010 = result;
  return result;
}

float sub_23BD026D4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  sub_23BD02C7C(&unk_23BD09940, v1);
  v3 = v2;

  return v3;
}

uint64_t sub_23BD027C0(float a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  sub_23BD02F9C(&unk_23BD09950, v3);
}

uint64_t sub_23BD02838(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3E08, &qword_23BD09B18) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BD028D4, 0, 0);
}

uint64_t sub_23BD028D4()
{
  if (qword_27E1C3ED0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = qword_27E1C4010;
  v3 = *MEMORY[0x277CE7998];
  swift_beginAccess();
  v4 = *(v2 + v3);
  v0[7] = v4;
  v5 = sub_23BD061D4();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = *(MEMORY[0x277CE7970] + 4);
  v4;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_23BD02A28;
  v8 = v0[6];

  return MEMORY[0x282139E58](v8);
}

uint64_t sub_23BD02A28(float a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 72) = a1;

  sub_23BD015B4(v4, &qword_27E1C3E08, &qword_23BD09B18);

  return MEMORY[0x2822009F8](sub_23BD02B6C, 0, 0);
}

uint64_t sub_23BD02B6C()
{
  v1 = *(v0 + 48);
  **(v0 + 40) = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23BD02BE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23BCFEA74;

  return sub_23BD02838(a1);
}

void sub_23BD02C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD06364();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D18, &qword_23BD097E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19[-v11];
  sub_23BD065C4();
  if (v19[0] == 1)
  {
    goto LABEL_4;
  }

  v13 = dispatch_semaphore_create(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v15 = sub_23BD06434();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = v13;

  v17 = v13;
  sub_23BD002B8(0, 0, v12, &unk_23BD09B10, v16);

  sub_23BD06354();
  sub_23BD06524();
  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  if (*(v14 + 20))
  {
LABEL_4:
    sub_23BD06594();
    __break(1u);
  }

  else
  {
    v18 = *(v14 + 16);
  }
}

void sub_23BD02F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BD06364();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D18, &qword_23BD097E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18[-v11];
  sub_23BD065C4();
  if (v18[0] == 1)
  {
    goto LABEL_4;
  }

  v13 = dispatch_semaphore_create(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 1;
  v15 = sub_23BD06434();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = v13;

  v17 = v13;
  sub_23BD002B8(0, 0, v12, &unk_23BD09B00, v16);

  sub_23BD06354();
  sub_23BD06524();
  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  if (*(v14 + 16))
  {
LABEL_4:
    sub_23BD06594();
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_23BD032C8()
{
  if (qword_27E1C3ED0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1C4010;
  v2 = *MEMORY[0x277CE7998];
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 40) = v3;
  v4 = *(MEMORY[0x277CE7980] + 4);
  v3;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_23BD033CC;
  v6.n128_u32[0] = *(v0 + 56);

  return MEMORY[0x282139E70](v6);
}

uint64_t sub_23BD033CC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23BD034D8()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23BCFEA74;

  return sub_23BD032A8(v2);
}

uint64_t (*sub_23BD0356C(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  sub_23BD02C7C(&unk_23BD09960, v3);
  v5 = v4;

  *(a1 + 8) = v5;
  return sub_23BD03604;
}

uint64_t sub_23BD03604(uint64_t *a1, char a2)
{
  v2 = *(a1 + 2);
  v3 = *a1;
  if (a2)
  {
    v4 = &unk_23BD09968;
  }

  else
  {
    v4 = &unk_23BD09970;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  sub_23BD02F9C(v4, v5);
}

void __swiftcall VoiceOverSpeechSwiftUI.make()(UIViewController *__return_ptr retstr)
{
  sub_23BD06214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3DE8, &qword_23BD09978);
  sub_23BD04540(&qword_27E1C3DF0, &qword_27E1C3DE8, &qword_23BD09978);
  sub_23BD06224();
}

double sub_23BD037A8@<D0>(_OWORD *a1@<X8>)
{
  sub_23BD01BE8(sub_23BD03800, 0, v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_23BD03800(void *a1)
{
  v2 = a1;

  return MEMORY[0x282139A70](a1);
}

id VoiceOverSpeechSwiftUI.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23BD06384();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VoiceOverSpeechSwiftUI.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_23BD06384();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for VoiceOverSpeechSwiftUI();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id VoiceOverSpeechSwiftUI.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id VoiceOverSpeechSwiftUI.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VoiceOverSpeechSwiftUI();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_23BD03BC0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_23BD064C4();
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

uint64_t sub_23BD03C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a4;
  v7[6] = a7;
  v11 = (a5 + *a5);
  v8 = a5[1];
  v9 = swift_task_alloc();
  v7[7] = v9;
  *v9 = v7;
  v9[1] = sub_23BD03D30;

  return v11(v7 + 8);
}

uint64_t sub_23BD03D30()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v4 = *v0;

  *(v1 + 68) = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_23BD03E34, 0, 0);
}

uint64_t sub_23BD03E34()
{
  v1 = *(v0 + 68);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  swift_beginAccess();
  *(v3 + 16) = v1;
  *(v3 + 20) = 0;
  sub_23BD06534();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23BD03EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a4;
  v7[6] = a7;
  v11 = (a5 + *a5);
  v8 = a5[1];
  v9 = swift_task_alloc();
  v7[7] = v9;
  *v9 = v7;
  v9[1] = sub_23BD03FA8;

  return v11();
}

uint64_t sub_23BD03FA8()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23BD040A4, 0, 0);
}

uint64_t sub_23BD040A4()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  *(v1 + 16) = 0;
  sub_23BD06534();
  v3 = v0[1];

  return v3();
}

uint64_t sub_23BD0411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v10 = sub_23BD06554();
  v8[7] = v10;
  v11 = *(v10 - 8);
  v8[8] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v8[9] = v13;
  v8[10] = swift_projectBox();
  v17 = (a5 + *a5);
  v14 = a5[1];
  v15 = swift_task_alloc();
  v8[11] = v15;
  *v15 = v8;
  v15[1] = sub_23BD04294;

  return v17(v13);
}

uint64_t sub_23BD04294()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23BD04390, 0, 0);
}

uint64_t sub_23BD04390()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  (*(*(v0[6] - 8) + 56))(v1, 0, 1);
  swift_beginAccess();
  (*(v4 + 40))(v2, v1, v3);
  sub_23BD06534();

  v6 = v0[1];

  return v6();
}

uint64_t sub_23BD04474(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23BCFDEAC;

  return sub_23BD02838(a1);
}

uint64_t sub_23BD04540(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BD04600()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23BD0465C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23BD046A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23BD04758()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_23BD06384();
  [v1 addObserver:v0 selector:sel_nanoPrefsChanged name:v2 object:0];

  sub_23BD04AD4();
}

void sub_23BD04800()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];
}

void sub_23BD04864()
{
  v0 = sub_23BD062C4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D707B8]);
  sub_23BD062A4();
  v4 = objc_opt_self();
  sub_23BD062B4();
  v5 = sub_23BD06384();

  [v4 setGizmoAccessibilityPref:v5 forKey:*MEMORY[0x277CE7FC8]];
}

void sub_23BD0497C()
{
  v0 = sub_23BD062C4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D707B8]);
  sub_23BD062A4();
  v4 = objc_opt_self();
  sub_23BD062B4();
  v5 = sub_23BD06384();

  [v4 setGizmoAccessibilityPref:v5 forKey:*MEMORY[0x277CE7FD0]];

  sub_23BD062B4();
  v6 = sub_23BD06384();

  [v4 setGizmoAccessibilityPref:v6 forKey:*MEMORY[0x277CE7FC0]];
}

void sub_23BD04AD4()
{
  v1 = v0;
  v2 = [objc_opt_self() accessibilityDomainAccessor];
  if (!v2)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = *MEMORY[0x277CE7FB8];
  v5 = [v2 dictionaryForKey_];

  if (v5)
  {
    v6 = sub_23BD06374();

    sub_23BD04E78(v6);
    v8 = v7;

    if (v8)
    {
      v9 = qword_27E1C3DD8;
      swift_beginAccess();
      v10 = *(v1 + v9);

      sub_23BD05280(v8, v10);
      v12 = v11;

      if (v12)
      {

        return;
      }

      v13 = *(v1 + v9);
      *(v1 + v9) = v8;

      v14 = qword_27E1C3DD8;
      swift_beginAccess();
      v15 = *(v1 + v14);
      if (*(v15 + 16))
      {
        v40 = v4;
        v41 = v14;
        v16 = v15 + 64;
        v17 = 1 << *(v15 + 32);
        v18 = -1;
        if (v17 < 64)
        {
          v18 = ~(-1 << v17);
        }

        v19 = v18 & *(v15 + 64);
        v20 = (v17 + 63) >> 6;

        v21 = 0;
        if (!v19)
        {
          while (1)
          {
LABEL_10:
            v22 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
              goto LABEL_32;
            }

            if (v22 >= v20)
            {
              break;
            }

            v19 = *(v16 + 8 * v22);
            ++v21;
            if (v19)
            {
              v21 = v22;
              goto LABEL_14;
            }
          }

          v38 = [objc_opt_self() accessibilityDomainAccessor];
          if (!v38)
          {
            goto LABEL_33;
          }

          v39 = v38;
          [v38 removeObjectForKey_];

          return;
        }

LABEL_14:
        while (1)
        {
          v23 = __clz(__rbit64(v19)) | (v21 << 6);
          v24 = *(v15 + 56);
          v25 = v15;
          v26 = (*(v15 + 48) + 16 * v23);
          v28 = *v26;
          v27 = v26[1];
          v29 = *(v24 + 8 * v23);

          v30 = v29;
          if ([v30 integerValue] == 1)
          {
            break;
          }

          if ([v30 integerValue] == -1)
          {
            sub_23BD06254();
            goto LABEL_20;
          }

          if ([v30 integerValue] == -2)
          {
            sub_23BD06264();
            goto LABEL_20;
          }

          [v30 floatValue];
          sub_23BD06284();

          v15 = v25;
LABEL_25:
          v19 &= v19 - 1;

          if (!v19)
          {
            goto LABEL_10;
          }
        }

        sub_23BD06274();
LABEL_20:
        swift_beginAccess();
        v31 = *(v1 + v41);
        v32 = sub_23BD053F0(v28, v27);
        LOBYTE(v31) = v33;

        v15 = v25;
        if (v31)
        {
          v34 = *(v1 + v41);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = *(v1 + v41);
          *(v1 + v41) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_23BD056D0();
          }

          v37 = *(*(v36 + 48) + 16 * v32 + 8);

          sub_23BD05520(v32, v36);
          *(v1 + v41) = v36;
        }

        swift_endAccess();
        goto LABEL_25;
      }
    }
  }
}

void sub_23BD04E78(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3DF8, "6L");
    v2 = sub_23BD065B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v14 = __clz(__rbit64(v5)) | (v13 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_23BD0130C(*(a1 + 56) + 32 * v14, v28);
    *&v27 = v16;
    *(&v27 + 1) = v17;
    v25[2] = v27;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v18 = v27;
    sub_23BD05B8C(v26, v25);
    sub_23BD05B40();

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v19 = sub_23BD053F0(v18, *(&v18 + 1));
    if (v20)
    {
      v8 = v2[6] + 16 * v19;
      v9 = *(v8 + 8);
      *v8 = v18;
      v10 = v19;

      v11 = v2[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v24;

      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
      *(v2[6] + 16 * v19) = v18;
      *(v2[7] + 8 * v19) = v24;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v13 = v7;
  }
}

void sub_23BD050DC(void *a1)
{
  v1 = a1;
  sub_23BD04AD4();
}

id sub_23BD05150(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23BD051A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_23BD05280(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_23BD053F0(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_23BD05B40();
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_23BD06544();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_23BD053F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23BD065E4();
  sub_23BD063B4();
  v6 = sub_23BD065F4();

  return sub_23BD05468(a1, a2, v6);
}

unint64_t sub_23BD05468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23BD065D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23BD05520(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23BD06584() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23BD065E4();

      sub_23BD063B4();
      v13 = sub_23BD065F4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

id sub_23BD056D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3DF8, "6L");
  v2 = *v0;
  v3 = sub_23BD065A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_23BD0583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a4;
  v29 = a5;
  v27 = a2;
  v11 = sub_23BD06244();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23BD060C4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = a6;
  v31[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v22 = objc_allocWithZone(type metadata accessor for BridgeCoreSynthesisVoicePickableFetcher());
  *&v22[qword_27E1C3DD8] = MEMORY[0x277D84F98];
  sub_23BD01A74(v31, v30);
  v23 = v27;
  (*(v17 + 16))(v20, v27, v16);
  (*(v12 + 16))(v15, a3, v11);
  v24 = sub_23BD06294();
  (*(v12 + 8))(a3, v11);
  (*(v17 + 8))(v23, v16);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v24;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_23BD05B40()
{
  result = qword_27E1C3E00;
  if (!qword_27E1C3E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C3E00);
  }

  return result;
}

_OWORD *sub_23BD05B8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23BD05BB0()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23BCFEA74;

  return sub_23BD03EBC(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t objectdestroy_58Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23BD05CAC()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23BCFEA74;

  return sub_23BD03C3C(v6, v7, v8, v2, v3, v5, v4);
}