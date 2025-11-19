__CFString *accessibilityMobileMailLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityMobileMailLocalizedString_axBundle;
  v3 = &stru_2A21D8790;
  if (accessibilityMobileMailLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/AccessibilityBundles/MobileMail.axbundle"], v4 = objc_claimAutoreleasedReturnValue(), v5 = accessibilityMobileMailLocalizedString_axBundle, accessibilityMobileMailLocalizedString_axBundle = v4, v5, (v2 = accessibilityMobileMailLocalizedString_axBundle) != 0))
  {
    v6 = [v2 localizedStringForKey:v1 value:&stru_2A21D8790 table:@"Accessibility"];
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v3 = v6;
  }

  v7 = v3;

  return v3;
}