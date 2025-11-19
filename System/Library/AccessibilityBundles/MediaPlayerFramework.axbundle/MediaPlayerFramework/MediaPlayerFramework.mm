id accessibilityMPLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityMPLocalizedString_axBundle;
  if (accessibilityMPLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityMPLocalizedString_axBundle, accessibilityMPLocalizedString_axBundle = v3, v4, (v2 = accessibilityMPLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A21FEB68 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_29BF4FDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AXLabelForMediaRoute(void *a1)
{
  v1 = a1;
  if ([v1 isAppleTVRoute])
  {
    v2 = @"route.description.appletv";
  }

  else if ([v1 isAirpodsRoute])
  {
    v2 = @"route.description.airpods";
  }

  else if ([v1 isPowerbeatsRoute])
  {
    v2 = @"route.description.powerbeats";
  }

  else if ([v1 isBeatsSoloRoute])
  {
    v2 = @"route.description.beatssolo";
  }

  else if ([v1 isBeatsXRoute])
  {
    v2 = @"route.description.beatsx";
  }

  else if ([v1 isCarplayRoute])
  {
    v2 = @"route.description.carplay";
  }

  else if ([v1 isHomePodRoute])
  {
    v2 = @"route.description.homepod";
  }

  else if ([v1 isDeviceRoute] && objc_msgSend(v1, "routeSubtype") != 2)
  {
    v2 = @"route.description.device";
  }

  else
  {
    v3 = [v1 routeSubtype] - 2;
    if (v3 > 0xD)
    {
      v2 = @"route.description.speaker";
    }

    else
    {
      v2 = off_29F2CFEB8[v3];
    }
  }

  v4 = accessibilityLocalizedString(v2);

  return v4;
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.MediaPlayerFramework.axbundle"], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A21FEB68 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_29BF51FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}