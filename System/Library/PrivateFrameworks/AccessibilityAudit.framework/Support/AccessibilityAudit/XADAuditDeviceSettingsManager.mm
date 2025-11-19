@interface XADAuditDeviceSettingsManager
- (XADAuditDeviceSettingsManager)init;
- (id)_fontCategories;
- (id)_fontValueFromCategoryIndex:(int64_t)a3;
- (id)_platformDefaultSettings;
- (id)_platformSettings;
- (id)settingsToCache;
- (int64_t)_fontCategoryIndexFromValue:(id)a3;
- (void)_settingDidChange:(id)a3;
- (void)dealloc;
- (void)setHostAPIVersion:(int64_t)a3;
- (void)startObservingChanges;
- (void)stopObservingChanges;
- (void)updateCurrentValueForSetting:(id)a3 postNotificationIfChanged:(BOOL)a4;
- (void)updateSetting:(id)a3 withNumberValue:(id)a4;
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
    v4 = [(XADAuditDeviceSettingsManager *)v2 _platformSettings];
    [(XADAuditDeviceSettingsManager *)v3 setSettings:v4];

    v5 = [(XADAuditDeviceSettingsManager *)v3 _platformDefaultSettings];
    [(XADAuditDeviceSettingsManager *)v3 setDefaultSettings:v5];

    [(XADAuditDeviceSettingsManager *)v3 updateCurrentValueForAllSettingsAndPostNotificationIfChanged:1];
  }

  return v3;
}

- (id)settingsToCache
{
  v7.receiver = self;
  v7.super_class = XADAuditDeviceSettingsManager;
  v2 = [(XADAuditDeviceSettingsManager *)&v7 settingsToCache];
  v3 = [AXAuditDeviceSetting createWithIdentifier:@"FONT_EXTENDED_RANGES" currentValue:0 settingType:3];
  v4 = v3;
  if (v3)
  {
    if (v2)
    {
      v5 = [v2 arrayByAddingObject:v3];

      v2 = v5;
    }

    else
    {
      v8 = v3;
      v2 = [NSArray arrayWithObjects:&v8 count:1];
    }
  }

  return v2;
}

- (void)setHostAPIVersion:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = XADAuditDeviceSettingsManager;
  [(XADAuditDeviceSettingsManager *)&v6 setHostAPIVersion:a3];
  v4 = [(XADAuditDeviceSettingsManager *)self _platformSettings];
  [(XADAuditDeviceSettingsManager *)self setSettings:v4];

  v5 = [(XADAuditDeviceSettingsManager *)self _platformDefaultSettings];
  [(XADAuditDeviceSettingsManager *)self setDefaultSettings:v5];

  [(XADAuditDeviceSettingsManager *)self updateCurrentValueForAllSettingsAndPostNotificationIfChanged:1];
}

- (id)_platformDefaultSettings
{
  v2 = [(XADAuditDeviceSettingsManager *)self _platformSettings];
  v3 = [AXAuditDeviceSetting createWithIdentifier:@"FONT_EXTENDED_RANGES" currentValue:&off_100019990 settingType:3];
  v4 = [v2 arrayByAddingObject:v3];

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
  v10 = [(XADAuditDeviceSettingsManager *)self _fontCategories];
  v11 = -[XADAuditDeviceSettingsManager _fontValueFromCategoryIndex:](self, "_fontValueFromCategoryIndex:", [v10 indexOfObject:UIContentSizeCategoryLarge]);
  v12 = [AXAuditDeviceSetting createWithIdentifier:AXAuditDeviceSettingIdentifierFontsSize currentValue:v11 settingType:2];
  v13 = [(XADAuditDeviceSettingsManager *)self _fontCategories];
  [v12 setSliderTickMarks:{objc_msgSend(v13, "count")}];

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

- (void)_settingDidChange:(id)a3
{
  v4 = [(XADAuditDeviceSettingsManager *)self settingForIdentifier:a3];
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

  v5 = [(XADAuditDeviceSettingsManager *)self _notificationContext];
  [v5 addObject:self];

  v6 = [(XADAuditDeviceSettingsManager *)self _notificationContext];
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_10000708C, kAXSInvertColorsEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_1000070DC, kAXSDarkenSystemColorsEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_10000712C, kAXSReduceMotionChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_10000717C, kAXSEnhanceBackgroundContrastChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_1000071CC, kAXSEnhanceTextLegibilityChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_10000721C, kAXSIncreaseButtonLegibilityNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_10000726C, kAXSButtonShapesEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_1000072BC, kAXSGrayscaleEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_10000730C, kAXSDifferentiateWithoutColorChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_10000735C, @"ApplePreferredContentSizeCategoryChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (id)_fontCategories
{
  v2 = [[NSArray alloc] initWithObjects:{UIContentSizeCategoryExtraSmall, UIContentSizeCategorySmall, UIContentSizeCategoryMedium, UIContentSizeCategoryLarge, UIContentSizeCategoryExtraLarge, UIContentSizeCategoryExtraExtraLarge, UIContentSizeCategoryExtraExtraExtraLarge, UIContentSizeCategoryAccessibilityMedium, UIContentSizeCategoryAccessibilityLarge, UIContentSizeCategoryAccessibilityExtraLarge, UIContentSizeCategoryAccessibilityExtraExtraLarge, UIContentSizeCategoryAccessibilityExtraExtraExtraLarge, 0}];

  return v2;
}

- (void)updateCurrentValueForSetting:(id)a3 postNotificationIfChanged:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [v6 enabled];
  v9 = [v6 currentValueNumber];
  if ([v7 isEqualToString:AXAuditDeviceSettingIdentifierInvertColors])
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

    v12 = v6;
    goto LABEL_23;
  }

  if ([v7 isEqualToString:AXAuditDeviceSettingIdentifierIncreaseContrast])
  {
    v10 = _AXDarkenSystemColors();
    goto LABEL_19;
  }

  if ([v7 isEqualToString:AXAuditDeviceSettingIdentifierReduceMotion])
  {
    v10 = _AXSReduceMotionEnabled();
    goto LABEL_19;
  }

  if ([v7 isEqualToString:AXAuditDeviceSettingIdentifierReduceTransparency])
  {
    v10 = _AXSEnhanceBackgroundContrastEnabled();
    goto LABEL_19;
  }

  if ([v7 isEqualToString:AXAuditDeviceSettingIdentifierBoldFonts])
  {
    v10 = _AXSEnhanceTextLegibilityEnabled();
    goto LABEL_19;
  }

  if ([v7 isEqualToString:AXAuditDeviceSettingIdentifierOnOffLabels])
  {
    v10 = _AXSIncreaseButtonLegibility();
    goto LABEL_19;
  }

  if ([v7 isEqualToString:AXAuditDeviceSettingIdentifierButtonShapes])
  {
    v10 = _AXSButtonShapesEnabled();
    goto LABEL_19;
  }

  if ([v7 isEqualToString:AXAuditDeviceSettingIdentifierGrayscale])
  {
    v10 = _AXSGrayscaleEnabled();
    goto LABEL_19;
  }

  if ([v7 isEqualToString:AXAuditDeviceSettingIdentifierDifferentiateWithoutColor])
  {
    v10 = _AXSDifferentiateWithoutColorEnabled();
    goto LABEL_19;
  }

  if ([v7 isEqualToString:AXAuditDeviceSettingIdentifierFontsSize])
  {
    v19 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
    v20 = CFPreferencesCopyAppValue(@"UIPreferredContentSizeCategoryName", v19);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [(XADAuditDeviceSettingsManager *)self _fontCategories];
      v22 = [v21 indexOfObject:v20];

      v23 = [(XADAuditDeviceSettingsManager *)self _fontValueFromCategoryIndex:v22];
      [v6 setCurrentValueNumber:v23];
    }

    goto LABEL_40;
  }

  if (![v7 isEqualToString:@"FONT_EXTENDED_RANGES"])
  {
    goto LABEL_24;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(kPSLargeTextUsesExtendedRangeKey, off_10001DC78, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v20 = [NSNumber numberWithBool:AppBooleanValue != 0];
    [v6 setCurrentValueNumber:v20];
LABEL_40:

    goto LABEL_24;
  }

  v12 = v6;
  v11 = 0;
LABEL_23:
  [v12 setCurrentValueNumber:v11];
LABEL_24:
  if (v4)
  {
    v13 = [v6 identifier];
    v14 = [(XADAuditDeviceSettingsManager *)self settingForIdentifier:v13];

    if (v14)
    {
      if (v8 == [v6 enabled])
      {
        if (v9 || ([v6 currentValueNumber], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v15 = [v6 currentValueNumber];
          v16 = [v9 isEqual:v15];

          if (v16)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      v18 = [(XADAuditDeviceSettingsManager *)self delegate];
      [v18 axAuditDeviceManager:self settingDidChange:v6];
    }
  }

LABEL_33:
}

- (id)_fontValueFromCategoryIndex:(int64_t)a3
{
  v4 = [(XADAuditDeviceSettingsManager *)self _fontCategories];
  v5 = [v4 count];

  if (v5 < 2)
  {
    v7 = &off_100019990;
  }

  else
  {
    v6 = a3 / (v5 + -1.0);
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

- (int64_t)_fontCategoryIndexFromValue:(id)a3
{
  v4 = a3;
  v5 = [(XADAuditDeviceSettingsManager *)self _fontCategories];
  v6 = [v5 count];

  if (v6 < 2)
  {
    v8 = 0;
  }

  else
  {
    [v4 doubleValue];
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

- (void)updateSetting:(id)a3 withNumberValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = XADAuditDeviceSettingsManager;
  [(XADAuditDeviceSettingsManager *)&v31 updateSetting:v6 withNumberValue:v7];
  v8 = [v6 identifier];
  if ([v8 isEqualToString:AXAuditDeviceSettingIdentifierInvertColors])
  {
    [v7 BOOLValue];
    _AXSInvertColorsSetEnabled();
  }

  else if ([v8 isEqualToString:AXAuditDeviceSettingIdentifierIncreaseContrast])
  {
    [v7 BOOLValue];
    _AXSSetDarkenSystemColors();
  }

  else if ([v8 isEqualToString:AXAuditDeviceSettingIdentifierReduceMotion])
  {
    [v7 BOOLValue];
    _AXSSetReduceMotionEnabled();
  }

  else if ([v8 isEqualToString:AXAuditDeviceSettingIdentifierReduceTransparency])
  {
    [v7 BOOLValue];
    _AXSSetEnhanceBackgroundContrastEnabled();
  }

  else if ([v8 isEqualToString:AXAuditDeviceSettingIdentifierBoldFonts])
  {
    [v7 BOOLValue];
    _AXSSetEnhanceTextLegibilityEnabled();
  }

  else if ([v8 isEqualToString:AXAuditDeviceSettingIdentifierOnOffLabels])
  {
    [v7 BOOLValue];
    _AXSSetIncreaseButtonLegibility();
  }

  else if ([v8 isEqualToString:AXAuditDeviceSettingIdentifierButtonShapes])
  {
    [v7 BOOLValue];
    _AXSSetButtonShapesEnabled();
  }

  else if ([v8 isEqualToString:AXAuditDeviceSettingIdentifierGrayscale])
  {
    [v7 BOOLValue];
    _AXSGrayscaleSetEnabled();
  }

  else if ([v8 isEqualToString:AXAuditDeviceSettingIdentifierDifferentiateWithoutColor])
  {
    [v7 BOOLValue];
    _AXSSetDifferentiateWithoutColorEnabled();
  }

  else if ([v8 isEqualToString:AXAuditDeviceSettingIdentifierFontsSize])
  {
    v9 = [(XADAuditDeviceSettingsManager *)self _fontCategories];
    v10 = [(XADAuditDeviceSettingsManager *)self _fontCategoryIndexFromValue:v7];
    v11 = [v9 indexOfObject:UIContentSizeCategoryExtraExtraExtraLarge];
    if ((v10 & 0x8000000000000000) != 0 || (v12 = v11, v10 >= [v9 count]))
    {
      v18 = [v8 isEqualToString:@"FONT_EXTENDED_RANGES"];
      if (v7 && v18)
      {
        v19 = [v7 BOOLValue];
        if (v19)
        {
          v20 = &kCFBooleanTrue;
        }

        else
        {
          v20 = &kCFBooleanFalse;
        }

        CFPreferencesSetAppValue(kPSLargeTextUsesExtendedRangeKey, *v20, off_10001DC78);
        CFPreferencesAppSynchronize(off_10001DC78);
        if ((v19 & 1) == 0)
        {
          v21 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
          v22 = CFPreferencesCopyAppValue(@"UIPreferredContentSizeCategoryName", v21);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [(XADAuditDeviceSettingsManager *)self _fontCategories];
            v24 = [v23 indexOfObject:v22];

            v25 = [v9 indexOfObject:UIContentSizeCategoryExtraExtraExtraLarge];
            if ((v25 & 0x8000000000000000) == 0)
            {
              v26 = v25;
              if (v25 < [v9 count] && v24 > v26)
              {
                v27 = [v9 objectAtIndex:v26];

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
      v13 = [v9 objectAtIndex:v10];
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

  [(XADAuditDeviceSettingsManager *)self updateCurrentValueForSetting:v6 postNotificationIfChanged:1];
}

@end