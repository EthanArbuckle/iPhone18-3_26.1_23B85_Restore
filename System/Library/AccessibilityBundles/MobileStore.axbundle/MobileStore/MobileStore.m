id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.MobileStore.axbundle"], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A222EDD8 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id starStringForStarCount(float a1)
{
  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  v1 = (rintf(fmaxf(a1, 0.0) * 10.0) / 10.0) * 5.0;
  if (v1 <= v1)
  {
    v4 = UIAXStarRatingStringForRating();
  }

  else
  {
    v2 = MEMORY[0x29EDBA0F8];
    v3 = accessibilityUIKitLocalizedString();
    v4 = [v2 localizedStringWithFormat:v3, v1];
  }

  return v4;
}