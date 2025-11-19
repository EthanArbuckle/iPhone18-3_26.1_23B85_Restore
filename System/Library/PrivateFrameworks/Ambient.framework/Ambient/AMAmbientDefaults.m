@interface AMAmbientDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation AMAmbientDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"enableAmbientMode"];
  v4 = MEMORY[0x277CBEC38];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"AMEnableAmbientMode" toDefaultValue:MEMORY[0x277CBEC38] options:1];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"alwaysOnMode"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"AMAlwaysOnEnabled" toDefaultValue:&unk_285177A18 options:1];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"nightModeEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"AMNightModeEnabled" toDefaultValue:v4 options:1];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"motionToWakeEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"AMMotionToWakeEnabled" toDefaultValue:v4 options:1];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bumpToWakeEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"AMBumpToWakeEnabled" toDefaultValue:v4 options:1];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"notificationsEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"AMNotificationsEnabled" toDefaultValue:v4 options:1];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"notificationsPreviewOnTapOnlyEnabled"];
  v11 = MEMORY[0x277CBEC28];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"AMNotificationsPreviewOnTapOnlyEnabled" toDefaultValue:MEMORY[0x277CBEC28] options:1];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"firstPresentation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"AMAmbientFirstPresentation" toDefaultValue:v4 options:1];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"lastSelectedConfigurations"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v13 withDefaultKey:@"AMLastSelectedConfigurations" toDefaultValue:0 options:1];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ignoreBatteryChargingForPresentation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"AMAmbientIgnoreBatteryCharging" toDefaultValue:v11 options:1];

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"alwaysUpdateIconModelOnAmbientWidgetLayoutChange"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v15 withDefaultKey:@"AMAlwaysUpdateIconModelOnAmbientWidgetLayoutChange" toDefaultValue:v11 options:1];

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"lifetimePresentationCounter"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v16 withDefaultKey:@"AMLifetimePresentationCounter" toDefaultValue:0 options:1];

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"migratedClockCityWidget"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v17 withDefaultKey:@"AMMigratedClockCityWidget" toDefaultValue:v11 options:1];

  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"alwaysOnEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v18 withDefaultKey:@"AMAlwaysOnEnabled" toDefaultValue:v4 options:1];
}

@end