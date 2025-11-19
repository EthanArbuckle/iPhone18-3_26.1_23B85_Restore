id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A21F5150 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id AXMeasureAccessibilityStateObserver()
{
  objc_opt_class();
  v0 = [MEMORY[0x29C2DD610](@"Measure.AccessibilityStateObserver") safeValueForKey:@"shared"];
  v1 = __UIAccessibilityCastAsSafeCategory();

  return v1;
}

id AXMeasureLabelView()
{
  objc_opt_class();
  v0 = AXMeasureViewController();
  v1 = [v0 safeValueForKey:@"labelView"];
  v2 = __UIAccessibilityCastAsSafeCategory();

  return v2;
}

id AXMeasureViewController()
{
  if (AXDeviceIsPad())
  {
    v0 = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
    v1 = [v0 rootViewController];
    v2 = __UIAccessibilitySafeClass();

    [v2 safeArrayForKey:@"viewControllers"];
  }

  else
  {
    v2 = AXMeasureTabBarController();
    [v2 viewControllers];
  }
  v3 = ;
  v4 = [v3 firstObject];

  return v4;
}

id AXMeasureReticleView()
{
  objc_opt_class();
  v0 = AXMeasureViewController();
  v1 = [v0 safeValueForKey:@"reticleView"];
  v2 = __UIAccessibilityCastAsSafeCategory();

  return v2;
}

id AXMeasureTabBarController()
{
  v0 = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
  v1 = [v0 rootViewController];
  v2 = __UIAccessibilitySafeClass();

  objc_opt_class();
  v3 = [v2 safeArrayForKey:@"viewControllers"];
  v4 = [v3 firstObject];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

id AXMeasureSpeakableDescriptionForLastSavedMeasurement()
{
  v0 = AXMeasureLabelView();
  v1 = [v0 _accessibilityLastSavedMeasurementString];

  return v1;
}

id AXMeasureSpeakableDescriptionForCurrentMeasurement()
{
  v0 = AXMeasureLabelView();
  v1 = [v0 _accessibilityCurrentMeasurementString];

  return v1;
}

uint64_t AXMeasureIsMeasuring()
{
  v0 = AXMeasureTabBarController();
  v1 = [v0 selectedIndex];

  if (v1)
  {
    return 0;
  }

  v3 = AXMeasureAccessibilityStateObserver();
  v4 = [v3 axIsModeForMeasuring];

  return v4;
}

void AXMeasureSpeakMeasurementAnnouncement(void *a1)
{
  v2 = a1;
  v1 = v2;
  AXPerformBlockOnMainThread();
}

void __AXMeasureSpeakMeasurementAnnouncement_block_invoke(uint64_t a1)
{
  if (AXMeasureIsMeasuring())
  {
    v2 = *MEMORY[0x29EDC7EA8];
    v3 = *(a1 + 32);

    UIAccessibilityPostNotification(v2, v3);
  }
}

void AXMeasureAnnounceUpdatedMeasurement(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  v4 = v6;
  v5 = v3;
  AXPerformBlockOnMainThreadAfterDelay();
}

void __AXMeasureAnnounceUpdatedMeasurement_block_invoke(uint64_t a1)
{
  v2 = AXMeasureAccessibilityStateObserver();
  v3 = [v2 axHasConfirmedRectangle];

  if ((*(a1 + 48) & 1) == 0 && (v3 & 1) == 0)
  {
    v4 = AXMeasureAccessibilityStateObserver();
    v7 = [v4 axDescriptionForNumberOfPointsAndLines];

    v5 = v7;
    if (v7)
    {
      if (*(a1 + 40))
      {
        v6 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v7];

        v5 = v6;
      }
    }

    else
    {
      v5 = *(a1 + 32);
    }

    v8 = v5;
    AXMeasureSpeakMeasurementAnnouncement(v5);
  }
}

void AXMeasureDidPotentiallyShowCardViewWithAncestorClass(uint64_t a1)
{
  if (a1)
  {
    v2 = MEMORY[0x29C2DD610](@"Measure.CardTitleView");
    if (v2)
    {
      v3 = v2;
      v4 = [MEMORY[0x29EDC7DD0] keyWindow];
      v5 = [v4 _accessibilityDescendantOfType:a1];
      v6 = [v5 _accessibilityDescendantOfType:v3];
      argument = [v6 safeUIViewForKey:@"title"];

      if (argument)
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
      }
    }
  }
}

void sub_29BF3477C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_29BF36064(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2A1C59AA8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}