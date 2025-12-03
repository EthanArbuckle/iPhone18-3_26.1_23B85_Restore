@interface ACSettingsBasicSetting
+ (id)setting;
+ (id)settingWithAceString:(id)string;
- (ACSettingsUpdateDelegate)delegate;
- (NSURL)preferencesURL;
- (SiriUISashItem)sashItem;
- (UIImage)icon;
@end

@implementation ACSettingsBasicSetting

+ (id)settingWithAceString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:SASettingKeyAirplaneModeValue])
  {
    v4 = off_8170;
  }

  else if ([stringCopy isEqualToString:SASettingKeyAssistiveTouchValue])
  {
    v4 = off_8160;
  }

  else if ([stringCopy isEqualToString:SASettingKeyBluetoothValue])
  {
    v4 = off_8188;
  }

  else if ([stringCopy isEqualToString:SASettingKeyDisplayBrightnessValue])
  {
    v4 = off_8190;
  }

  else if ([stringCopy isEqualToString:SASettingKeyCellularDataValue])
  {
    v4 = off_8198;
  }

  else if ([stringCopy isEqualToString:SASettingKeyDoNotDisturbValue])
  {
    v4 = off_81A8;
  }

  else if ([stringCopy isEqualToString:SASettingKeyGuidedAccessValue])
  {
    v4 = off_81B0;
  }

  else if ([stringCopy isEqualToString:SASettingKeyInvertColorsValue])
  {
    v4 = off_81B8;
  }

  else if ([stringCopy isEqualToString:SASettingKeyVoiceOverValue])
  {
    v4 = &off_81D8;
  }

  else if ([stringCopy isEqualToString:SASettingKeyVoiceControlValue])
  {
    v4 = off_81A0;
  }

  else if ([stringCopy isEqualToString:SASettingKeyNoiseCancellationValue])
  {
    v4 = off_81C0;
  }

  else if ([stringCopy isEqualToString:SASettingKeyAudioTransparencyValue])
  {
    v4 = off_8178;
  }

  else if ([stringCopy isEqualToString:SASettingKeyWiFiValue])
  {
    v4 = off_8168;
  }

  else if ([stringCopy isEqualToString:SASettingKeyPowerSavingModeValue])
  {
    v4 = off_81C8;
  }

  else
  {
    v5 = [stringCopy isEqualToString:SASettingKeyLocationServicesValue];
    v4 = off_8180;
    if (v5)
    {
      v4 = off_81D0;
    }
  }

  setting = [(__objc2_class *)*v4 setting];

  return setting;
}

+ (id)setting
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (UIImage)icon
{
  settingsDetailClass = [(ACSettingsBasicSetting *)self settingsDetailClass];

  return [(objc_class *)settingsDetailClass iconImage];
}

- (NSURL)preferencesURL
{
  settingsDetailClass = [(ACSettingsBasicSetting *)self settingsDetailClass];

  return [(objc_class *)settingsDetailClass preferencesURL];
}

- (SiriUISashItem)sashItem
{
  v3 = [[SiriUISashItem alloc] initWithApplicationBundleIdentifier:@"com.apple.Preferences"];
  v4 = objc_alloc_init(SAUIAppPunchOut);
  preferencesURL = [(ACSettingsBasicSetting *)self preferencesURL];
  [v4 setPunchOutUri:preferencesURL];

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