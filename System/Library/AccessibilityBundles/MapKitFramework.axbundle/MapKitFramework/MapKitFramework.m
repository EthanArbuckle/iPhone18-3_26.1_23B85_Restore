id AXVectorKitLocString(void *a1)
{
  v1 = a1;
  if (AXVectorKitLocString_onceToken != -1)
  {
    AXVectorKitLocString_cold_1();
  }

  if (AXVectorKitLocString_bundle)
  {
    v2 = [AXVectorKitLocString_bundle localizedStringForKey:v1 value:&stru_2A21DAE00 table:@"Accessibility"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __AXVectorKitLocString_block_invoke()
{
  AXVectorKitLocString_bundle = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.VectorKit.axbundle"];

  return MEMORY[0x2A1C71028]();
}

id AXMapKitLocString(void *a1)
{
  v1 = a1;
  if (AXMapKitLocString_onceToken != -1)
  {
    AXMapKitLocString_cold_1();
  }

  if (AXMapKitLocString_bundle)
  {
    v2 = [AXMapKitLocString_bundle localizedStringForKey:v1 value:&stru_2A21DAE00 table:@"Accessibility"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __AXMapKitLocString_block_invoke()
{
  AXMapKitLocString_bundle = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.MapKitFramework.axbundle"];

  return MEMORY[0x2A1C71028]();
}

id AXMapsLocString(void *a1)
{
  v1 = a1;
  if (AXMapsLocString_onceToken != -1)
  {
    AXMapsLocString_cold_1();
  }

  if (AXMapsLocString_bundle)
  {
    v2 = [AXMapsLocString_bundle localizedStringForKey:v1 value:&stru_2A21DAE00 table:@"Accessibility-Maps"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __AXMapsLocString_block_invoke()
{
  AXMapsLocString_bundle = [MEMORY[0x29EDB9F48] accessibilityBundleWithLastPathComponent:@"Maps.axbundle"];

  return MEMORY[0x2A1C71028]();
}

id AXStringByReplacingMiddleDots(void *a1)
{
  v1 = AXStringByReplacingMiddleDots_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    AXStringByReplacingMiddleDots_cold_1();
  }

  v3 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  v5 = [v4 stringByTrimmingCharactersInSet:AXStringByReplacingMiddleDots_MiddleDotCharacterSet];

  v6 = [v5 componentsSeparatedByCharactersInSet:AXStringByReplacingMiddleDots_MiddleDotCharacterSet];
  v7 = [v6 ax_flatMappedArrayUsingBlock:&__block_literal_global_311_0];

  v8 = [v7 componentsJoinedByString:{@", "}];

  return v8;
}

uint64_t __AXStringByReplacingMiddleDots_block_invoke()
{
  AXStringByReplacingMiddleDots_MiddleDotCharacterSet = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"·"];

  return MEMORY[0x2A1C71028]();
}

id __AXStringByReplacingMiddleDots_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x29EDB9F50];
  v3 = a2;
  v4 = [v2 whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if (![v5 length])
  {

    v5 = 0;
  }

  return v5;
}

id AXShortAddressDescriptionForPlacemark(void *a1, int a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v5 = [v3 subThoroughfare];
  v6 = [v5 length];
  v7 = v6 != 0;
  if (!v6)
  {
    goto LABEL_4;
  }

  if ([v5 rangeOfString:@"-"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 appendString:v5];
LABEL_4:
    v8 = 0;
    goto LABEL_6;
  }

  v9 = MEMORY[0x29EDBA0F8];
  v10 = AXVectorKitLocString(@"BETWEEN_ADDRESS_RANGE");
  v11 = [v9 localizedStringWithFormat:v10, v5];
  [v4 appendString:v11];

  v8 = 1;
LABEL_6:
  v12 = [v3 thoroughfare];

  if ([v12 length])
  {
    if (v6)
    {
      [v4 appendString:@" "];
    }

    if (v8)
    {
      v13 = MEMORY[0x29EDBA0F8];
      v14 = AXVectorKitLocString(@"ON_ROAD");
      v15 = [v13 localizedStringWithFormat:v14, v12];
      [v4 appendString:v15];
    }

    else
    {
      [v4 appendString:v12];
    }

    v7 = 1;
  }

  if (!v7 || a2)
  {
    v16 = [v3 subLocality];

    if ([v16 length])
    {
      if (v7)
      {
        [v4 appendString:{@", "}];
      }

      [v4 appendString:v16];
      v7 = 1;
    }

    v17 = [v3 locality];

    if ([v17 length])
    {
      if (v7)
      {
        [v4 appendString:{@", "}];
      }

      [v4 appendString:v17];
      v7 = 1;
    }

    v18 = [v3 subAdministrativeArea];

    if ([v18 length])
    {
      v19 = [v3 locality];
      v20 = [v18 isEqualToString:v19];

      if ((v20 & 1) == 0)
      {
        if (v7)
        {
          [v4 appendString:{@", "}];
        }

        [v4 appendString:v18];
        v7 = 1;
      }
    }

    v12 = [v3 administrativeArea];

    if ([v12 length])
    {
      if (v7)
      {
        [v4 appendString:{@", "}];
      }

      [v4 appendString:v12];
    }
  }

  if ([v4 length])
  {
    v21 = v4;
  }

  else
  {
    v22 = [v3 formattedAddressLines];
    v21 = [v22 componentsJoinedByString:@"\n"];
  }

  return v21;
}

id AXNotificationsForMapAccessibilityClients()
{
  v5[4] = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDC83E8];
  v5[0] = *MEMORY[0x29EDC8538];
  v5[1] = v0;
  v1 = *MEMORY[0x29EDC8418];
  v5[2] = *MEMORY[0x29EDC8400];
  v5[3] = v1;
  v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x29EDCA608];

  return v2;
}

uint64_t AXRequiresMapAccessibilityPurelyForAutomation()
{
  result = _AXSAutomationEnabled();
  if (result)
  {
    return !AXRequiresMapAccessibilityForAccessibilityTechnology();
  }

  return result;
}

BOOL AXRequiresLongerTimeouts()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 1;
  }

  return UIAccessibilityIsSwitchControlRunning();
}

id AXPublisherDescriptionForCollection(void *a1)
{
  v1 = [a1 safeValueForKey:@"publisherAttribution"];
  v2 = [v1 safeStringForKey:@"displayName"];

  return v2;
}

id AXClockDescriptionForHeadingInDegrees(double a1)
{
    ;
  }

    ;
  }

  v2 = llround(a1 / 30.0);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 12;
  }

  v4 = MEMORY[0x29EDBA0F8];
  v5 = AXVectorKitLocString(@"CLOCK_DIRECTION");
  v6 = [v4 localizedStringWithFormat:v5, v3];

  return v6;
}

id AXMapWidthScaleString(double a1, double a2, double a3)
{
  v6 = [MEMORY[0x29EDB8DE0] currentLocale];
  v7 = [v6 _navigation_distanceUsesMetricSystem];

  v17.x = a1 + a3;
  v16.x = a1;
  v16.y = a2;
  v17.y = a2;
  v8 = MKMetersBetweenMapPoints(v16, v17);
  v9 = 1609.344;
  if (v7)
  {
    v9 = 1000.0;
    v10 = @"MAP_DISTANCE_KM";
  }

  else
  {
    v10 = @"MAP_DISTANCE_M";
  }

  v11 = v8 / v9;
  v12 = AXVectorKitLocString(v10);
  v13 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v12, *&v11];

  return v13;
}

id AXMapHeightScaleString(double a1, double a2, double a3, double a4)
{
  v7 = [MEMORY[0x29EDB8DE0] currentLocale];
  v8 = [v7 _navigation_distanceUsesMetricSystem];

  v18.y = a2 + a4;
  v17.x = a1;
  v17.y = a2;
  v18.x = a1;
  v9 = MKMetersBetweenMapPoints(v17, v18);
  v10 = 1609.344;
  if (v8)
  {
    v10 = 1000.0;
    v11 = @"MAP_DISTANCE_KM";
  }

  else
  {
    v11 = @"MAP_DISTANCE_M";
  }

  v12 = v9 / v10;
  v13 = AXVectorKitLocString(v11);
  v14 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v13, *&v12];

  return v14;
}

void sub_29BEEB908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BEED89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BEEE428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BEEE6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}