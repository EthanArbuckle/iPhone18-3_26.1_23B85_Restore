id AXMapsStringForContaineeLayout(uint64_t a1)
{
  v1 = @"CARD_SIZE_FULL";
  if (a1 == 2)
  {
    v1 = @"CARD_SIZE_MEDIUM";
  }

  if (a1 == 1)
  {
    v2 = @"CARD_SIZE_SMALL";
  }

  else
  {
    v2 = v1;
  }

  v3 = AXMapsLocString(v2);

  return v3;
}

id AXMapsStringForManeuverType(int a1)
{
  v2 = 0;
  v4 = @"GEOManeuverType_NO_TURN";
  switch(a1)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v4 = @"GEOManeuverType_LEFT_TURN";
      goto LABEL_3;
    case 2:
      v4 = @"GEOManeuverType_RIGHT_TURN";
      goto LABEL_3;
    case 3:
      v4 = @"GEOManeuverType_STRAIGHT_AHEAD";
      goto LABEL_3;
    case 4:
      v4 = @"GEOManeuverType_U_TURN";
      goto LABEL_3;
    case 5:
      v4 = @"GEOManeuverType_FOLLOW_ROAD";
      goto LABEL_3;
    case 6:
      v4 = @"GEOManeuverType_ENTER_ROUNDABOUT";
      goto LABEL_3;
    case 7:
      v4 = @"GEOManeuverType_EXIT_ROUNDABOUT";
      goto LABEL_3;
    case 11:
      v4 = @"GEOManeuverType_OFF_RAMP";
      goto LABEL_3;
    case 12:
      v4 = @"GEOManeuverType_ON_RAMP";
      goto LABEL_3;
    case 16:
      v4 = @"GEOManeuverType_ARRIVE_END_OF_NAVIGATION";
      goto LABEL_3;
    case 17:
      v4 = @"GEOManeuverType_START_ROUTE";
      goto LABEL_3;
    case 18:
      v4 = @"GEOManeuverType_ARRIVE_AT_DESTINATION";
      goto LABEL_3;
    case 20:
      v4 = @"GEOManeuverType_KEEP_LEFT";
      goto LABEL_3;
    case 21:
      v4 = @"GEOManeuverType_KEEP_RIGHT";
      goto LABEL_3;
    case 22:
      v4 = @"GEOManeuverType_ENTER_FERRY";
      goto LABEL_3;
    case 23:
      v4 = @"GEOManeuverType_EXIT_FERRY";
      goto LABEL_3;
    case 24:
      v4 = @"GEOManeuverType_CHANGE_FERRY";
      goto LABEL_3;
    case 25:
      v4 = @"GEOManeuverType_START_ROUTE_WITH_U_TURN";
      goto LABEL_3;
    case 26:
      v4 = @"GEOManeuverType_U_TURN_AT_ROUNDABOUT";
      goto LABEL_3;
    case 27:
      v4 = @"GEOManeuverType_LEFT_TURN_AT_END";
      goto LABEL_3;
    case 28:
      v4 = @"GEOManeuverType_RIGHT_TURN_AT_END";
      goto LABEL_3;
    case 29:
      v4 = @"GEOManeuverType_HIGHWAY_OFF_RAMP_LEFT";
      goto LABEL_3;
    case 30:
      v4 = @"GEOManeuverType_HIGHWAY_OFF_RAMP_RIGHT";
      goto LABEL_3;
    case 33:
      v4 = @"GEOManeuverType_ARRIVE_AT_DESTINATION_LEFT";
      goto LABEL_3;
    case 34:
      v4 = @"GEOManeuverType_ARRIVE_AT_DESTINATION_RIGHT";
      goto LABEL_3;
    case 35:
      v4 = @"GEOManeuverType_U_TURN_WHEN_POSSIBLE";
      goto LABEL_3;
    case 39:
      v4 = @"GEOManeuverType_ARRIVE_END_OF_DIRECTIONS";
      goto LABEL_3;
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
      v4 = @"GEOManeuverType_ROUNDABOUT_EXIT";
      goto LABEL_3;
    case 60:
      v4 = @"GEOManeuverType_SHARP_LEFT_TURN";
      goto LABEL_3;
    case 61:
      v4 = @"GEOManeuverType_SHARP_RIGHT_TURN";
      goto LABEL_3;
    case 62:
      v4 = @"GEOManeuverType_SLIGHT_LEFT_TURN";
      goto LABEL_3;
    case 63:
      v4 = @"GEOManeuverType_SLIGHT_RIGHT_TURN";
      goto LABEL_3;
    case 64:
      v4 = @"GEOManeuverType_CHANGE_HIGHWAY";
      goto LABEL_3;
    case 65:
      v4 = @"GEOManeuverType_CHANGE_HIGHWAY_LEFT";
      goto LABEL_3;
    case 66:
      v4 = @"GEOManeuverType_CHANGE_HIGHWAY_RIGHT";
LABEL_3:
      v2 = AXMapsLocString(v4);
      break;
    default:
      break;
  }

  return v2;
}

id AXMapsStringForVehicleColor(void *a1)
{
  v1 = a1;
  if (AXMapsStringForVehicleColor_onceToken != -1)
  {
    AXMapsStringForVehicleColor_cold_1();
  }

  v7 = 0;
  v8 = 0;
  v6 = 0;
  [v1 getRed:&v8 green:&v7 blue:&v6 alpha:0];
  if (AXColorsProbablyEqual())
  {
    v2 = @"VEHICLE_DARK_GRAY";
LABEL_8:
    v3 = AXMapsLocString(v2);
    goto LABEL_9;
  }

  if ((AXColorsProbablyEqual() & 1) != 0 || AXColorsProbablyEqual())
  {
    v2 = @"VEHICLE_NAVY_BLUE";
    goto LABEL_8;
  }

  if ((AXColorsProbablyEqual() & 1) != 0 || AXColorsProbablyEqual())
  {
    v2 = @"VEHICLE_LIGHT_BLUE";
    goto LABEL_8;
  }

  if ((AXColorsProbablyEqual() & 1) != 0 || AXColorsProbablyEqual())
  {
    v2 = @"VEHICLE_BLUE";
    goto LABEL_8;
  }

  if ((AXColorsProbablyEqual() & 1) != 0 || AXColorsProbablyEqual())
  {
    v2 = @"VEHICLE_BEIGE";
    goto LABEL_8;
  }

  if (AXColorsProbablyEqual())
  {
    v2 = @"VEHICLE_WHITE";
    goto LABEL_8;
  }

  v3 = AXColorStringForColor();
LABEL_9:
  v4 = v3;

  return v4;
}

uint64_t __AXMapsStringForVehicleColor_block_invoke()
{
  v0 = [MEMORY[0x29EDC7A00] colorWithRed:0.388235 green:0.388235 blue:0.4 alpha:1.0];
  v1 = AXMapsStringForVehicleColor_DarkGrayColor;
  AXMapsStringForVehicleColor_DarkGrayColor = v0;

  v2 = [MEMORY[0x29EDC7A00] colorWithRed:0.0 green:0.239216 blue:0.501961 alpha:1.0];
  v3 = AXMapsStringForVehicleColor_NavyBlueColor;
  AXMapsStringForVehicleColor_NavyBlueColor = v2;

  v4 = [MEMORY[0x29EDC7A00] colorWithRed:0.352941 green:0.784314 blue:0.980392 alpha:1.0];
  v5 = AXMapsStringForVehicleColor_LightBlueColor;
  AXMapsStringForVehicleColor_LightBlueColor = v4;

  v6 = [MEMORY[0x29EDC7A00] colorWithRed:0.0 green:0.478431 blue:1.0 alpha:1.0];
  v7 = AXMapsStringForVehicleColor_BlueColor;
  AXMapsStringForVehicleColor_BlueColor = v6;

  v8 = [MEMORY[0x29EDC7A00] colorWithRed:0.701961 green:0.584314 blue:0.419608 alpha:1.0];
  v9 = AXMapsStringForVehicleColor_BeigeColor;
  AXMapsStringForVehicleColor_BeigeColor = v8;

  v10 = [MEMORY[0x29EDC7A00] colorWithRed:0.949019 green:0.949019 blue:0.949019 alpha:1.0];
  v11 = AXMapsStringForVehicleColor_DarkModeWhiteColor;
  AXMapsStringForVehicleColor_DarkModeWhiteColor = v10;

  v12 = [MEMORY[0x29EDC7A00] colorWithRed:0.701961 green:0.6 blue:0.454902 alpha:1.0];
  v13 = AXMapsStringForVehicleColor_DarkModeBeigeColor;
  AXMapsStringForVehicleColor_DarkModeBeigeColor = v12;

  v14 = [MEMORY[0x29EDC7A00] colorWithRed:0.023529 green:0.298039 blue:0.6 alpha:1.0];
  v15 = AXMapsStringForVehicleColor_DarkModeNavyBlueColor;
  AXMapsStringForVehicleColor_DarkModeNavyBlueColor = v14;

  v16 = [MEMORY[0x29EDC7A00] colorWithRed:0.39216 green:0.823529 blue:1.0 alpha:1.0];
  v17 = AXMapsStringForVehicleColor_DarkModeLightBlueColor;
  AXMapsStringForVehicleColor_DarkModeLightBlueColor = v16;

  AXMapsStringForVehicleColor_DarkModeBlueColor = [MEMORY[0x29EDC7A00] colorWithRed:0.03922 green:0.517647 blue:1.0 alpha:1.0];

  return MEMORY[0x2A1C71028]();
}

void sub_29BF03070(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_29BF04F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BF05864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BF06B28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_29BF08064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BF08240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BF090D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AXVectorKitLocString(void *a1)
{
  v1 = a1;
  if (AXVectorKitLocString_onceToken != -1)
  {
    AXVectorKitLocString_cold_1();
  }

  if (AXVectorKitLocString_bundle)
  {
    v2 = [AXVectorKitLocString_bundle localizedStringForKey:v1 value:&stru_2A21E4020 table:@"Accessibility"];
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
    v2 = [AXMapKitLocString_bundle localizedStringForKey:v1 value:&stru_2A21E4020 table:@"Accessibility"];
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
    v2 = [AXMapsLocString_bundle localizedStringForKey:v1 value:&stru_2A21E4020 table:@"Accessibility-Maps"];
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
  v7 = [v6 ax_flatMappedArrayUsingBlock:&__block_literal_global_311];

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

void sub_29BF0B748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BF0F2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BF0F61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BF0FD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BF109C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BF14910(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}