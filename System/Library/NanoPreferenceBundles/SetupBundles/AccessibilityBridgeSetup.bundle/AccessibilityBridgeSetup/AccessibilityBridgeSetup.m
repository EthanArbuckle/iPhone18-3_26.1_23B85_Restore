BOOL accessibilitySetupOptionIsActive(uint64_t a1)
{
  v1 = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v4 = _AXSEnhanceBackgroundContrastEnabled();
        break;
      case 4:
        v4 = _AXSReduceMotionEnabled();
        break;
      case 5:
        v4 = _AXDarkenSystemColorsGlobal();
        break;
      default:
        return v1;
    }

    return v4 != 0;
  }

  switch(a1)
  {
    case 0:
      v4 = _AXSVoiceOverTouchEnabled();
      return v4 != 0;
    case 1:
      v4 = _AXSZoomTouchEnabled();
      return v4 != 0;
    case 2:
      v2 = accessibilityGetActiveDevice();
      v3 = [[NSUUID alloc] initWithUUIDString:@"D7B1DB8F-6F20-44A7-B454-95B8A418D208"];
      if ([v2 supportsCapability:v3])
      {
        v1 = _AXSAssistiveTouchEnabled() != 0;
      }

      else
      {
        v1 = 0;
      }

      break;
  }

  return v1;
}

void *accessibilityGetActiveDevice()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:v1];
  v3 = [v2 firstObject];

  v4 = [v3 valueForProperty:NRDevicePropertyIsArchived];
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

__CFString *accessibilityDomainKeyForSetupOption(uint64_t a1)
{
  if (a1 > 2)
  {
    v4 = @"ReduceMotionEnabled";
    v5 = @"DarkenSystemColors";
    if (a1 != 5)
    {
      v5 = 0;
    }

    if (a1 != 4)
    {
      v4 = v5;
    }

    if (a1 == 3)
    {
      v2 = @"EnhancedBackgroundContrastEnabled";
    }

    else
    {
      v2 = v4;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"ZoomTouchEnabled";
    }

    else if (a1 == 2)
    {
      v2 = kAXSWatchControlEnabledPreference;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = @"VoiceOverTouchEnabled";
  }

  return v2;
}

id accessibilityActiveAccessibilityFeaturesOnCompanion()
{
  v0 = [NSMutableArray arrayWithCapacity:6];
  for (i = 0; i != 6; ++i)
  {
    if (accessibilitySetupOptionIsActive(i))
    {
      v2 = [NSNumber numberWithUnsignedInteger:i];
      [v0 addObject:v2];
    }
  }

  return v0;
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_82A0 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id accessibilityLocalizedStringForSetupOption(unint64_t a1)
{
  if (a1 > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityLocalizedString(*(&off_8220 + a1));
  }

  return v2;
}

id accessibilityLocalizedDescriptionForSetupOption(unint64_t a1)
{
  if (a1 > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityLocalizedString(*(&off_8250 + a1));
  }

  return v2;
}

void accessibilitySetAccessibilityOptionsOnDevice(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v4 && v5)
  {
    v19 = kAXSAccessibilityPreferenceDomain;
    v6 = [[NPSDomainAccessor alloc] initWithDomain:v19 pairedDevice:v4];
    v7 = +[NSMutableSet set];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v3;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = accessibilityDomainKeyForSetupOption([v13 unsignedIntegerValue]);
          if (v14)
          {
            v15 = [v8 objectForKeyedSubscript:v13];
            v16 = [v15 BOOLValue];

            [v6 setBool:v16 forKey:v14];
            [v7 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v17 = [v6 synchronize];
    v18 = objc_opt_new();
    [v18 synchronizeNanoDomain:v19 keys:v7];

    v3 = v20;
  }
}