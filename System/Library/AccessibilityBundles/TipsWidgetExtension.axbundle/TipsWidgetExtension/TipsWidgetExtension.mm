id accessibilityTipsLocalizedString(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x29EDB9F48];
  v3 = MEMORY[0x29ED3CB50]();
  v4 = [v3 stringByAppendingPathComponent:@"Tips.axbundle"];
  v5 = [v2 bundleWithPath:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedStringForKey:v1 value:&stru_2A234BE18 table:@"Accessibility"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}