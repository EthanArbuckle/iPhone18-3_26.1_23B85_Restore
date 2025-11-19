id accessibilityMusicUILocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityMusicUILocalizedString_axBundle;
  if (accessibilityMusicUILocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityMusicUILocalizedString_axBundle, accessibilityMusicUILocalizedString_axBundle = v3, v4, (v2 = accessibilityMusicUILocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A225C540 table:@"MusicUIAccessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilityMusicLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityMusicLocalizedString_axBundle;
  if (accessibilityMusicLocalizedString_axBundle)
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = AXAccessibilityBundlesDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"Music.axbundle"];
  v6 = [v3 bundleWithPath:v5];
  v7 = accessibilityMusicLocalizedString_axBundle;
  accessibilityMusicLocalizedString_axBundle = v6;

  v2 = accessibilityMusicLocalizedString_axBundle;
  if (accessibilityMusicLocalizedString_axBundle)
  {
LABEL_3:
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A225C540 table:@"Accessibility"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}