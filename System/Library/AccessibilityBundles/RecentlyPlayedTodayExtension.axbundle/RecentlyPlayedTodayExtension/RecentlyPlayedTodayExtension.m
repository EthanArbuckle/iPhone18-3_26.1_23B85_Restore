id accessibilityRecentlyPlayedTodayExtensionLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityRecentlyPlayedTodayExtensionLocalizedString_axBundle;
  if (accessibilityRecentlyPlayedTodayExtensionLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityRecentlyPlayedTodayExtensionLocalizedString_axBundle, accessibilityRecentlyPlayedTodayExtensionLocalizedString_axBundle = v3, v4, (v2 = accessibilityRecentlyPlayedTodayExtensionLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A22C09E8 table:@"RecentlyPlayedTodayExtensionAccessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}