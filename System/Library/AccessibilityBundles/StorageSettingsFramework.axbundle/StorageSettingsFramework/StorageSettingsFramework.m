id accessibilityPreferencesFrameworkBundleLocalizedString(void *a1)
{
  v1 = a1;
  v2 = AXAccessibilityBundlesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"PreferencesFramework.axbundle"];

  v4 = [MEMORY[0x29EDB9F48] bundleWithPath:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 localizedStringForKey:v1 value:&stru_2A2320740 table:@"Accessibility"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}