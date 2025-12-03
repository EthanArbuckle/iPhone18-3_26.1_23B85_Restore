@interface XADAuditDeviceSettingsManager
- (XADAuditDeviceSettingsManager)init;
- (id)_fontCategories;
- (id)_fontValueFromCategoryIndex:(int64_t)index;
- (id)_platformDefaultSettings;
- (id)_platformSettings;
- (id)settingsToCache;
- (int64_t)_fontCategoryIndexFromValue:(id)value;
- (void)_settingDidChange:(id)change;
- (void)dealloc;
- (void)setHostAPIVersion:(int64_t)version;
- (void)startObservingChanges;
- (void)stopObservingChanges;
- (void)updateCurrentValueForSetting:(id)setting postNotificationIfChanged:(BOOL)changed;
- (void)updateSetting:(id)setting withNumberValue:(id)value;
@end

@implementation XADAuditDeviceSettingsManager

- (XADAuditDeviceSettingsManager)init
{
  v7.receiver = self;
  v7.super_class = XADAuditDeviceSettingsManager;
  v2 = [(XADAuditDeviceSettingsManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    _platformSettings = [(XADAuditDeviceSettingsManager *)v2 _platformSettings];
    [(XADAuditDeviceSettingsManager *)v3 setSettings:_platformSettings];

    _platformDefaultSettings = [(XADAuditDeviceSettingsManager *)v3 _platformDefaultSettings];
    [(XADAuditDeviceSettingsManager *)v3 setDefaultSettings:_platformDefaultSettings];

    [(XADAuditDeviceSettingsManager *)v3 updateCurrentValueForAllSettingsAndPostNotificationIfChanged:1];
  }

  return v3;
}

- (id)settingsToCache
{
  v7.receiver = self;
  v7.super_class = XADAuditDeviceSettingsManager;
  settingsToCache = [(XADAuditDeviceSettingsManager *)&v7 settingsToCache];
  v3 = [AXAuditDeviceSetting createWithIdentifier:@"FONT_EXTENDED_RANGES" currentValue:0 settingType:3];
  v4 = v3;
  if (v3)
  {
    if (settingsToCache)
    {
      v5 = [settingsToCache arrayByAddingObject:v3];

      settingsToCache = v5;
    }

    else
    {
      v8 = v3;
      settingsToCache = [NSArray arrayWithObjects:&v8 count:1];
    }
  }

  return settingsToCache;
}

- (void)setHostAPIVersion:(int64_t)version
{
  v6.receiver = self;
  v6.super_class = XADAuditDeviceSettingsManager;
  [(XADAuditDeviceSettingsManager *)&v6 setHostAPIVersion:version];
  _platformSettings = [(XADAuditDeviceSettingsManager *)self _platformSettings];
  [(XADAuditDeviceSettingsManager *)self setSettings:_platformSettings];

  _platformDefaultSettings = [(XADAuditDeviceSettingsManager *)self _platformDefaultSettings];
  [(XADAuditDeviceSettingsManager *)self setDefaultSettings:_platformDefaultSettings];

  [(XADAuditDeviceSettingsManager *)self updateCurrentValueForAllSettingsAndPostNotificationIfChanged:1];
}

- (id)_platformDefaultSettings
{
  _platformSettings = [(XADAuditDeviceSettingsManager *)self _platformSettings];
  v3 = [AXAuditDeviceSetting createWithIdentifier:@"FONT_EXTENDED_RANGES" currentValue:&off_100019990 settingType:3];
  v4 = [_platformSettings arrayByAddingObject:v3];

  return v4;
}

- (id)_platformSettings
{
  v3 = objc_opt_new();
  v17 = [AXAuditDeviceSetting createWithIdentifier:AXAuditDeviceSettingIdentifierInvertColors currentValue:&off_100019990 settingType:3];
  [v3 addObject:?];
  v16 = [AXAuditDeviceSetting createWithIdentifier:AXAuditDeviceSettingIdentifierIncreaseContrast currentValue:&off_100019990 settingType:3];
  [v3 addObject:?];
  v15 = [AXAuditDeviceSetting createWithIdentifier:AXAuditDeviceSettingIdentifierReduceTransparency currentValue:&off_100019990 settingType:3];
  [v3 addObject:?];
  v4 = [AXAuditDeviceSetting createWithIdentifier:AXAuditDeviceSettingIdentifierReduceMotion currentValue:&off_100019990 settingType:3];
  [v3 addObject:v4];
  if ([(XADAuditDeviceSettingsManager *)self hostAPIVersion]>= 3)
  {
    v5 = [AXAuditDeviceSetting createWithIdentifier:AXAuditDeviceSettingIdentifierBoldFonts currentValue:&off_100019990 settingType:3];
    [v3 addObject:v5];
  }

  v6 = [AXAuditDeviceSetting createWithIdentifier:AXAuditDeviceSettingIdentifierOnOffLabels currentValue:&off_100019990 settingType:3];
  [v3 addObject:v6];
  v7 = [AXAuditDeviceSetting createWithIdentifier:AXAuditDeviceSettingIdentifierButtonShapes currentValue:&off_100019990 settingType:3];
  [v3 addObject:v7];
  v8 = [AXAuditDeviceSetting createWithIdentifier:AXAuditDeviceSettingIdentifierGrayscale currentValue:&off_100019990 settingType:3];
  [v3 addObject:v8];
  v9 = [AXAuditDeviceSetting createWithIdentifier:AXAuditDeviceSettingIdentifierDifferentiateWithoutColor currentValue:&off_100019990 settingType:3];
  [v3 addObject:v9];
  _fontCategories = [(XADAuditDeviceSettingsManager *)self _fontCategories];
  v11 = -[XADAuditDeviceSettingsManager _fontValueFromCategoryIndex:](self, "_fontValueFromCategoryIndex:", [_fontCategories indexOfObject:UIContentSizeCategoryLarge]);
  v12 = [AXAuditDeviceSetting createWithIdentifier:AXAuditDeviceSettingIdentifierFontsSize currentValue:v11 settingType:2];
  _fontCategories2 = [(XADAuditDeviceSettingsManager *)self _fontCategories];
  [v12 setSliderTickMarks:{objc_msgSend(_fontCategories2, "count")}];

  [v3 addObject:v12];

  return v3;
}

- (void)stopObservingChanges
{
  v4.receiver = self;
  v4.super_class = XADAuditDeviceSettingsManager;
  [(XADAuditDeviceSettingsManager *)&v4 stopObservingChanges];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (void)_settingDidChange:(id)change
{
  v4 = [(XADAuditDeviceSettingsManager *)self settingForIdentifier:change];
  [(XADAuditDeviceSettingsManager *)self updateCurrentValueForSetting:v4 postNotificationIfChanged:1];
}

- (void)dealloc
{
  [(XADAuditDeviceSettingsManager *)self stopObservingChanges];
  v3.receiver = self;
  v3.super_class = XADAuditDeviceSettingsManager;
  [(XADAuditDeviceSettingsManager *)&v3 dealloc];
}

- (void)startObservingChanges
{
  v7.receiver = self;
  v7.super_class = XADAuditDeviceSettingsManager;
  [(XADAuditDeviceSettingsManager *)&v7 startObservingChanges];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = [[NSHashTable alloc] initWithOptions:5 capacity:1];
  [(XADAuditDeviceSettingsManager *)self set_notificationContext:v4];

  _notificationContext = [(XADAuditDeviceSettingsManager *)self _notificationContext];
  [_notificationContext addObject:self];

  _notificationContext2 = [(XADAuditDeviceSettingsManager *)self _notificationContext];
  CFNotificationCenterAddObserver(DarwinNotifyCenter, _notificationContext2, sub_10000708C, kAXSInvertColorsEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, _notificationContext2, sub_1000070DC, kAXSDarkenSystemColorsEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, _notificationContext2, sub_10000712C, kAXSReduceMotionChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, _notificationContext2, sub_10000717C, kAXSEnhanceBackgroundContrastChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, _notificationContext2, sub_1000071CC, kAXSEnhanceTextLegibilityChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, _notificationContext2, sub_10000721C, kAXSIncreaseButtonLegibilityNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, _notificationContext2, sub_10000726C, kAXSButtonShapesEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, _notificationContext2, sub_1000072BC, kAXSGrayscaleEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, _notificationContext2, sub_10000730C, kAXSDifferentiateWithoutColorChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, _notificationContext2, sub_10000735C, @"ApplePreferredContentSizeCategoryChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (id)_fontCategories
{
  v2 = [[NSArray alloc] initWithObjects:{UIContentSizeCategoryExtraSmall, UIContentSizeCategorySmall, UIContentSizeCategoryMedium, UIContentSizeCategoryLarge, UIContentSizeCategoryExtraLarge, UIContentSizeCategoryExtraExtraLarge, UIContentSizeCategoryExtraExtraExtraLarge, UIContentSizeCategoryAccessibilityMedium, UIContentSizeCategoryAccessibilityLarge, UIContentSizeCategoryAccessibilityExtraLarge, UIContentSizeCategoryAccessibilityExtraExtraLarge, UIContentSizeCategoryAccessibilityExtraExtraExtraLarge, 0}];

  return v2;
}

- (void)updateCurrentValueForSetting:(id)setting postNotificationIfChanged:(BOOL)changed
{
  changedCopy = changed;
  settingCopy = setting;
  identifier = [settingCopy identifier];
  enabled = [settingCopy enabled];
  currentValueNumber = [settingCopy currentValueNumber];
  if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierInvertColors])
  {
    v10 = _AXSInvertColorsEnabled();
LABEL_19:
    if (v10)
    {
      v11 = &__kCFBooleanTrue;
    }

    else
    {
      v11 = &__kCFBooleanFalse;
    }

    v12 = settingCopy;
    goto LABEL_23;
  }

  if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierIncreaseContrast])
  {
    v10 = _AXDarkenSystemColors();
    goto LABEL_19;
  }

  if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierReduceMotion])
  {
    v10 = _AXSReduceMotionEnabled();
    goto LABEL_19;
  }

  if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierReduceTransparency])
  {
    v10 = _AXSEnhanceBackgroundContrastEnabled();
    goto LABEL_19;
  }

  if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierBoldFonts])
  {
    v10 = _AXSEnhanceTextLegibilityEnabled();
    goto LABEL_19;
  }

  if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierOnOffLabels])
  {
    v10 = _AXSIncreaseButtonLegibility();
    goto LABEL_19;
  }

  if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierButtonShapes])
  {
    v10 = _AXSButtonShapesEnabled();
    goto LABEL_19;
  }

  if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierGrayscale])
  {
    v10 = _AXSGrayscaleEnabled();
    goto LABEL_19;
  }

  if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierDifferentiateWithoutColor])
  {
    v10 = _AXSDifferentiateWithoutColorEnabled();
    goto LABEL_19;
  }

  if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierFontsSize])
  {
    v19 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
    v20 = CFPreferencesCopyAppValue(@"UIPreferredContentSizeCategoryName", v19);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _fontCategories = [(XADAuditDeviceSettingsManager *)self _fontCategories];
      v22 = [_fontCategories indexOfObject:v20];

      v23 = [(XADAuditDeviceSettingsManager *)self _fontValueFromCategoryIndex:v22];
      [settingCopy setCurrentValueNumber:v23];
    }

    goto LABEL_40;
  }

  if (![identifier isEqualToString:@"FONT_EXTENDED_RANGES"])
  {
    goto LABEL_24;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(kPSLargeTextUsesExtendedRangeKey, off_10001DC78, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v20 = [NSNumber numberWithBool:AppBooleanValue != 0];
    [settingCopy setCurrentValueNumber:v20];
LABEL_40:

    goto LABEL_24;
  }

  v12 = settingCopy;
  v11 = 0;
LABEL_23:
  [v12 setCurrentValueNumber:v11];
LABEL_24:
  if (changedCopy)
  {
    identifier2 = [settingCopy identifier];
    v14 = [(XADAuditDeviceSettingsManager *)self settingForIdentifier:identifier2];

    if (v14)
    {
      if (enabled == [settingCopy enabled])
      {
        if (currentValueNumber || ([settingCopy currentValueNumber], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          currentValueNumber2 = [settingCopy currentValueNumber];
          v16 = [currentValueNumber isEqual:currentValueNumber2];

          if (v16)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      delegate = [(XADAuditDeviceSettingsManager *)self delegate];
      [delegate axAuditDeviceManager:self settingDidChange:settingCopy];
    }
  }

LABEL_33:
}

- (id)_fontValueFromCategoryIndex:(int64_t)index
{
  _fontCategories = [(XADAuditDeviceSettingsManager *)self _fontCategories];
  v5 = [_fontCategories count];

  if (v5 < 2)
  {
    v7 = &off_100019990;
  }

  else
  {
    v6 = index / (v5 + -1.0);
    if (v6 > 1.0)
    {
      v6 = 1.0;
    }

    if (v6 < 0.0)
    {
      v6 = 0.0;
    }

    v7 = [NSNumber numberWithDouble:v6];
  }

  return v7;
}

- (int64_t)_fontCategoryIndexFromValue:(id)value
{
  valueCopy = value;
  _fontCategories = [(XADAuditDeviceSettingsManager *)self _fontCategories];
  v6 = [_fontCategories count];

  if (v6 < 2)
  {
    v8 = 0;
  }

  else
  {
    [valueCopy doubleValue];
    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    v8 = llround((v6 + -1.0) * v7);
  }

  return v8;
}

- (void)updateSetting:(id)setting withNumberValue:(id)value
{
  settingCopy = setting;
  valueCopy = value;
  v31.receiver = self;
  v31.super_class = XADAuditDeviceSettingsManager;
  [(XADAuditDeviceSettingsManager *)&v31 updateSetting:settingCopy withNumberValue:valueCopy];
  identifier = [settingCopy identifier];
  if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierInvertColors])
  {
    [valueCopy BOOLValue];
    _AXSInvertColorsSetEnabled();
  }

  else if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierIncreaseContrast])
  {
    [valueCopy BOOLValue];
    _AXSSetDarkenSystemColors();
  }

  else if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierReduceMotion])
  {
    [valueCopy BOOLValue];
    _AXSSetReduceMotionEnabled();
  }

  else if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierReduceTransparency])
  {
    [valueCopy BOOLValue];
    _AXSSetEnhanceBackgroundContrastEnabled();
  }

  else if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierBoldFonts])
  {
    [valueCopy BOOLValue];
    _AXSSetEnhanceTextLegibilityEnabled();
  }

  else if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierOnOffLabels])
  {
    [valueCopy BOOLValue];
    _AXSSetIncreaseButtonLegibility();
  }

  else if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierButtonShapes])
  {
    [valueCopy BOOLValue];
    _AXSSetButtonShapesEnabled();
  }

  else if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierGrayscale])
  {
    [valueCopy BOOLValue];
    _AXSGrayscaleSetEnabled();
  }

  else if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierDifferentiateWithoutColor])
  {
    [valueCopy BOOLValue];
    _AXSSetDifferentiateWithoutColorEnabled();
  }

  else if ([identifier isEqualToString:AXAuditDeviceSettingIdentifierFontsSize])
  {
    _fontCategories = [(XADAuditDeviceSettingsManager *)self _fontCategories];
    v10 = [(XADAuditDeviceSettingsManager *)self _fontCategoryIndexFromValue:valueCopy];
    v11 = [_fontCategories indexOfObject:UIContentSizeCategoryExtraExtraExtraLarge];
    if ((v10 & 0x8000000000000000) != 0 || (v12 = v11, v10 >= [_fontCategories count]))
    {
      v18 = [identifier isEqualToString:@"FONT_EXTENDED_RANGES"];
      if (valueCopy && v18)
      {
        bOOLValue = [valueCopy BOOLValue];
        if (bOOLValue)
        {
          v20 = &kCFBooleanTrue;
        }

        else
        {
          v20 = &kCFBooleanFalse;
        }

        CFPreferencesSetAppValue(kPSLargeTextUsesExtendedRangeKey, *v20, off_10001DC78);
        CFPreferencesAppSynchronize(off_10001DC78);
        if ((bOOLValue & 1) == 0)
        {
          v21 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
          v22 = CFPreferencesCopyAppValue(@"UIPreferredContentSizeCategoryName", v21);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            _fontCategories2 = [(XADAuditDeviceSettingsManager *)self _fontCategories];
            v24 = [_fontCategories2 indexOfObject:v22];

            v25 = [_fontCategories indexOfObject:UIContentSizeCategoryExtraExtraExtraLarge];
            if ((v25 & 0x8000000000000000) == 0)
            {
              v26 = v25;
              if (v25 < [_fontCategories count] && v24 > v26)
              {
                v27 = [_fontCategories objectAtIndex:v26];

                v28 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
                CFPreferencesSetAppValue(@"UIPreferredContentSizeCategoryName", v27, v28);
                v29 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
                CFPreferencesAppSynchronize(v29);
                v22 = v27;
              }
            }
          }
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"ApplePreferredContentSizeCategoryChangedNotification", 0, 0, 1u);
        dispatch_async(&_dispatch_main_q, &stru_100018AB8);
      }
    }

    else
    {
      v13 = [_fontCategories objectAtIndex:v10];
      v14 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
      CFPreferencesSetAppValue(@"UIPreferredContentSizeCategoryName", v13, v14);
      v15 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
      CFPreferencesAppSynchronize(v15);
      if (v10 <= v12)
      {
        v16 = &kCFBooleanFalse;
      }

      else
      {
        v16 = &kCFBooleanTrue;
      }

      CFPreferencesSetAppValue(kPSLargeTextUsesExtendedRangeKey, *v16, off_10001DC78);
      CFPreferencesAppSynchronize(off_10001DC78);
      v17 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v17, @"ApplePreferredContentSizeCategoryChangedNotification", 0, 0, 1u);
      dispatch_async(&_dispatch_main_q, &stru_100018A98);
    }
  }

  [(XADAuditDeviceSettingsManager *)self updateCurrentValueForSetting:settingCopy postNotificationIfChanged:1];
}

@end