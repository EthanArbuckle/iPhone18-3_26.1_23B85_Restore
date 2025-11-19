id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = AXAccessibilityBundlesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Preferences.axbundle"];

  v4 = [MEMORY[0x29EDB9F48] bundleWithPath:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 localizedStringForKey:v1 value:&stru_2A22ACBF8 table:@"Accessibility"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id accessibilityNonLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = AXAccessibilityBundlesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Preferences.axbundle"];

  v4 = [MEMORY[0x29EDB9F48] bundleWithPath:v3];
  v5 = v4;
  v6 = 0;
  if (v1 && v4)
  {
    v7 = MEMORY[0x29EDB8DC0];
    v8 = [v4 pathForResource:@"NonLocalizedStrings" ofType:@"strings"];
    v9 = [v7 dictionaryWithContentsOfFile:v8];

    v6 = [v9 objectForKey:v1];
  }

  return v6;
}