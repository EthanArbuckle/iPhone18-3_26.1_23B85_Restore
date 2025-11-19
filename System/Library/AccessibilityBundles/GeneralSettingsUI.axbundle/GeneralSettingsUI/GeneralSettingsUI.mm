id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A21AAD08 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilityNonLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x29C2D75F0]();
  v3 = [v2 stringByAppendingPathComponent:@"GeneralSettingsUI.axbundle"];

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