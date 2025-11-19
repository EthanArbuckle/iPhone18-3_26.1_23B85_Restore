id accessibilityMobileMailLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityMobileMailLocalizedString_axBundle;
  if (accessibilityMobileMailLocalizedString_axBundle)
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = MEMORY[0x29C2DFE00]();
  v6 = [v4 stringWithFormat:@"%@/%@", v5, @"MobileMail.axbundle"];
  v7 = [v3 bundleWithPath:v6];
  v8 = accessibilityMobileMailLocalizedString_axBundle;
  accessibilityMobileMailLocalizedString_axBundle = v7;

  v2 = accessibilityMobileMailLocalizedString_axBundle;
  if (accessibilityMobileMailLocalizedString_axBundle)
  {
LABEL_3:
    v9 = [v2 localizedStringForKey:v1 value:&stru_2A221BEB8 table:@"Accessibility"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}