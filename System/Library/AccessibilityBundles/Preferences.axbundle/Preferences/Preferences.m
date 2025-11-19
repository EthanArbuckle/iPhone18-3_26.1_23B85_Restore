id accessibilityNonLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = accessibilityBundle();
  v3 = v2;
  v4 = 0;
  if (v1 && v2)
  {
    v5 = MEMORY[0x29EDB8DC0];
    v6 = [v2 pathForResource:@"NonLocalizedStrings" ofType:@"strings"];
    v7 = [v5 dictionaryWithContentsOfFile:v6];

    v4 = [v7 objectForKey:v1];
  }

  return v4;
}

id accessibilityBundle()
{
  v0 = accessibilityBundle_axBundle;
  if (!accessibilityBundle_axBundle)
  {
    v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.Preferences.axbundle"];
    v2 = accessibilityBundle_axBundle;
    accessibilityBundle_axBundle = v1;

    v0 = accessibilityBundle_axBundle;
  }

  return v0;
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityBundle();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2A22A72C0 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}