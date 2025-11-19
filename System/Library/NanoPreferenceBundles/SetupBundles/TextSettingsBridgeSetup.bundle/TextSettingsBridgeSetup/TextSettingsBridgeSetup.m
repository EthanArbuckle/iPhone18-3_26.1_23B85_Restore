id textSettingsLocalizedStringForKeyAndTable(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedStringForKey:v3 value:&stru_C520 table:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *getActiveDevice()
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

id boldTextIsEnabledOnDevice(void *a1)
{
  v2 = kAXSAccessibilityPreferenceDomain;
  v3 = a1;
  v4 = [[NPSDomainAccessor alloc] initWithDomain:v2 pairedDevice:v3];

  v5 = [v4 synchronize];
  v6 = [v4 BOOLForKey:@"EnhancedTextLegibilityEnabled"];

  return v6;
}

BOOL boldTextKeyExistsOnDevice(void *a1)
{
  v2 = kAXSAccessibilityPreferenceDomain;
  v3 = a1;
  v4 = [[NPSDomainAccessor alloc] initWithDomain:v2 pairedDevice:v3];

  v5 = [v4 synchronize];
  v6 = [v4 objectForKey:@"EnhancedTextLegibilityEnabled"];
  v7 = v6 != 0;

  return v7;
}

void boldTextSetEnabledOnDevice(uint64_t a1, void *a2)
{
  v4 = kAXSAccessibilityPreferenceDomain;
  v5 = a2;
  v6 = [[NPSDomainAccessor alloc] initWithDomain:v4 pairedDevice:v5];

  [v6 setBool:a1 forKey:@"EnhancedTextLegibilityEnabled"];
  v7 = [v6 synchronize];
  v8 = objc_opt_new();
  v11 = @"EnhancedTextLegibilityEnabled";
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  v10 = [NSSet setWithArray:v9];
  [v8 synchronizeNanoDomain:v4 keys:v10];
}

id contentSizeCategoriesOnDevice(void *a1)
{
  v8[0] = UIContentSizeCategoryExtraSmall;
  v8[1] = UIContentSizeCategorySmall;
  v8[2] = UIContentSizeCategoryLarge;
  v8[3] = UIContentSizeCategoryExtraLarge;
  v8[4] = UIContentSizeCategoryExtraExtraLarge;
  v8[5] = UIContentSizeCategoryExtraExtraExtraLarge;
  v8[6] = UIContentSizeCategoryAccessibilityMedium;
  v1 = a1;
  v2 = [NSArray arrayWithObjects:v8 count:7];
  v3 = [PBBridgeWatchAttributeController sizeFromDevice:v1];

  if (v3 <= 0x19 && ((1 << v3) & 0x2386080) != 0)
  {
    v7[0] = UIContentSizeCategoryAccessibilityLarge;
    v7[1] = UIContentSizeCategoryAccessibilityExtraLarge;
    v4 = [NSArray arrayWithObjects:v7 count:2];
    v5 = [v2 arrayByAddingObjectsFromArray:v4];

    v2 = v5;
  }

  return v2;
}

NSString *_mapCompanionTextSizeToGizmoSize(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13[0] = UIContentSizeCategorySmall;
  v13[1] = UIContentSizeCategoryMedium;
  v13[2] = UIContentSizeCategoryLarge;
  v5 = [NSArray arrayWithObjects:v13 count:3];
  v12[0] = UIContentSizeCategoryAccessibilityExtraLarge;
  v12[1] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v12[2] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v6 = [NSArray arrayWithObjects:v12 count:3];
  if ([v5 containsObject:v3])
  {
    v7 = UIContentSizeCategoryLarge;
    v8 = __ROR8__([PBBridgeWatchAttributeController sizeFromDevice:v4]- 7, 1);
    if (v8 <= 9 && ((1 << v8) & 0x2C9) != 0)
    {
      v9 = UIContentSizeCategoryExtraLarge;

      v7 = v9;
    }
  }

  else
  {
    if ([v6 containsObject:v3])
    {
      v10 = UIContentSizeCategoryAccessibilityExtraLarge;
    }

    else
    {
      v10 = v3;
    }

    v7 = v10;
  }

  return v7;
}

UIContentSizeCategory _defaultTextSize(uint64_t a1)
{
  v1 = [PBBridgeWatchAttributeController sizeFromDevice:a1];
  if ((v1 - 1) > 0x18)
  {
    v2 = &UIContentSizeCategoryLarge;
  }

  else
  {
    v2 = *(&off_C378 + (v1 - 1));
  }

  v3 = *v2;

  return v3;
}

id getWatchContentSize(void *a1)
{
  v1 = a1;
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.UIKit" pairedDevice:v1];

  v3 = [v2 synchronize];
  v4 = [v2 objectForKey:@"UIPreferredContentSizeCategoryName"];

  return v4;
}

id contentSizeCategoryOnDevice(void *a1)
{
  v3 = 0;
  v1 = contentSizeCategoryOnDeviceOrCompanion(a1, &v3);

  return v1;
}

id contentSizeCategoryOnDeviceOrCompanion(void *a1, _BYTE *a2)
{
  v3 = a1;
  v4 = _AXSCopyPreferredContentSizeCategoryNameGlobal();
  v5 = v4;
  if (!v4)
  {
LABEL_5:
    v9 = getWatchContentSize(v3);
    v10 = contentSizeCategoriesOnDevice(v3);
    v11 = [v10 indexOfObject:v9];

    v12 = _defaultTextSize(v3);
    v13 = contentSizeCategoriesOnDevice(v3);
    v14 = [v13 indexOfObject:v12];

    if (v11 < v14 || v9 == 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = v9;
    }

    v6 = v16;

    goto LABEL_12;
  }

  v6 = _mapCompanionTextSizeToGizmoSize(v4, v3);
  v7 = contentSizeCategoriesOnDevice(v3);
  v8 = [v7 containsObject:v6];

  if (!v8)
  {

    goto LABEL_5;
  }

  *a2 = 1;
LABEL_12:

  return v6;
}

id contentSizeCategoryOnDeviceForValue(void *a1, uint64_t a2)
{
  v3 = contentSizeCategoriesOnDevice(a1);
  v4 = [v3 objectAtIndex:a2];

  return v4;
}

id contentSizeValueOnDevice(void *a1)
{
  v1 = a1;
  v2 = contentSizeCategoryOnDevice(v1);
  v3 = contentSizeCategoriesOnDevice(v1);

  v4 = [v3 indexOfObject:v2];
  return v4;
}

void contentSizeSetValueOnDevice(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = contentSizeCategoryOnDeviceForValue(v3, a1);
  v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.UIKit" pairedDevice:v3];

  [v4 setObject:v8 forKey:@"UIPreferredContentSizeCategoryName"];
  v5 = [v4 synchronize];
  v6 = objc_opt_new();
  v7 = [NSSet setWithObject:@"UIPreferredContentSizeCategoryName"];
  [v6 synchronizeNanoDomain:@"com.apple.UIKit" keys:v7];
}

id cachedTextPreviewImage(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [__cachedTextPreviewImages objectForKeyedSubscript:v3];
  v5 = [NSNumber numberWithBool:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  v13[0] = UIContentSizeCategoryAccessibilityMedium;
  v13[1] = UIContentSizeCategoryAccessibilityLarge;
  v13[2] = UIContentSizeCategoryAccessibilityExtraLarge;
  v7 = [NSArray arrayWithObjects:v13 count:3];
  v8 = v7;
  if (v6 || ![v7 containsObject:v3])
  {
    v11 = v6;
  }

  else
  {
    v9 = [__cachedTextPreviewImages objectForKeyedSubscript:UIContentSizeCategoryExtraExtraExtraLarge];
    v10 = [NSNumber numberWithBool:a2];
    v11 = [v9 objectForKeyedSubscript:v10];
  }

  return v11;
}

void cacheTextPreviewImage(void *a1, void *a2, uint64_t a3)
{
  v13 = a1;
  v5 = a2;
  v6 = __cachedTextPreviewImages;
  if (!__cachedTextPreviewImages)
  {
    v7 = +[NSMutableDictionary dictionary];
    v8 = __cachedTextPreviewImages;
    __cachedTextPreviewImages = v7;

    v6 = __cachedTextPreviewImages;
  }

  v9 = [v6 objectForKeyedSubscript:v5];

  if (!v9)
  {
    v10 = +[NSMutableDictionary dictionary];
    [__cachedTextPreviewImages setObject:v10 forKeyedSubscript:v5];
  }

  v11 = [__cachedTextPreviewImages objectForKeyedSubscript:v5];
  v12 = [NSNumber numberWithBool:a3];
  [v11 setObject:v13 forKeyedSubscript:v12];
}

void sub_4614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}