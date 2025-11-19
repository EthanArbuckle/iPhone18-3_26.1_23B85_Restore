id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.Compass.axbundle"], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A216E928 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id axCompassController()
{
  v0 = [*MEMORY[0x29EDC8008] keyWindow];
  v1 = [v0 rootViewController];

  return v1;
}

id axCompassPageViewController()
{
  v0 = axCompassController();
  v1 = [v0 safeValueForKey:@"_compassPageController"];

  return v1;
}

id axLevelPageViewController()
{
  v0 = axCompassController();
  v1 = [v0 safeValueForKey:@"_levelPageController"];

  return v1;
}