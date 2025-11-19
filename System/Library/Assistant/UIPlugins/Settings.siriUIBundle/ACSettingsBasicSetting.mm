@interface ACSettingsBasicSetting
+ (id)setting;
+ (id)settingWithAceString:(id)a3;
- (ACSettingsUpdateDelegate)delegate;
- (NSURL)preferencesURL;
- (SiriUISashItem)sashItem;
- (UIImage)icon;
@end

@implementation ACSettingsBasicSetting

+ (id)settingWithAceString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:SASettingKeyAirplaneModeValue])
  {
    v4 = off_8170;
  }

  else if ([v3 isEqualToString:SASettingKeyAssistiveTouchValue])
  {
    v4 = off_8160;
  }

  else if ([v3 isEqualToString:SASettingKeyBluetoothValue])
  {
    v4 = off_8188;
  }

  else if ([v3 isEqualToString:SASettingKeyDisplayBrightnessValue])
  {
    v4 = off_8190;
  }

  else if ([v3 isEqualToString:SASettingKeyCellularDataValue])
  {
    v4 = off_8198;
  }

  else if ([v3 isEqualToString:SASettingKeyDoNotDisturbValue])
  {
    v4 = off_81A8;
  }

  else if ([v3 isEqualToString:SASettingKeyGuidedAccessValue])
  {
    v4 = off_81B0;
  }

  else if ([v3 isEqualToString:SASettingKeyInvertColorsValue])
  {
    v4 = off_81B8;
  }

  else if ([v3 isEqualToString:SASettingKeyVoiceOverValue])
  {
    v4 = &off_81D8;
  }

  else if ([v3 isEqualToString:SASettingKeyVoiceControlValue])
  {
    v4 = off_81A0;
  }

  else if ([v3 isEqualToString:SASettingKeyNoiseCancellationValue])
  {
    v4 = off_81C0;
  }

  else if ([v3 isEqualToString:SASettingKeyAudioTransparencyValue])
  {
    v4 = off_8178;
  }

  else if ([v3 isEqualToString:SASettingKeyWiFiValue])
  {
    v4 = off_8168;
  }

  else if ([v3 isEqualToString:SASettingKeyPowerSavingModeValue])
  {
    v4 = off_81C8;
  }

  else
  {
    v5 = [v3 isEqualToString:SASettingKeyLocationServicesValue];
    v4 = off_8180;
    if (v5)
    {
      v4 = off_81D0;
    }
  }

  v6 = [(__objc2_class *)*v4 setting];

  return v6;
}

+ (id)setting
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (UIImage)icon
{
  v2 = [(ACSettingsBasicSetting *)self settingsDetailClass];

  return [(objc_class *)v2 iconImage];
}

- (NSURL)preferencesURL
{
  v2 = [(ACSettingsBasicSetting *)self settingsDetailClass];

  return [(objc_class *)v2 preferencesURL];
}

- (SiriUISashItem)sashItem
{
  v3 = [[SiriUISashItem alloc] initWithApplicationBundleIdentifier:@"com.apple.Preferences"];
  v4 = objc_alloc_init(SAUIAppPunchOut);
  v5 = [(ACSettingsBasicSetting *)self preferencesURL];
  [v4 setPunchOutUri:v5];

  v8 = v4;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [v3 setCommands:v6];

  return v3;
}

- (ACSettingsUpdateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end