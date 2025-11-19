id accessibilityCameraUILocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityCameraUILocalizedString_axBundle;
  if (accessibilityCameraUILocalizedString_axBundle)
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = _AXSCopyPathForAccessibilityBundle();
  v5 = [v3 bundleWithPath:v4];
  v6 = accessibilityCameraUILocalizedString_axBundle;
  accessibilityCameraUILocalizedString_axBundle = v5;

  v2 = accessibilityCameraUILocalizedString_axBundle;
  if (accessibilityCameraUILocalizedString_axBundle)
  {
LABEL_3:
    v7 = [v2 localizedStringForKey:v1 value:&stru_2A227D818 table:@"CameraUI"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id accessibilityPLServicesLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityPLServicesLocalizedString_axBundle;
  if (accessibilityPLServicesLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityPLServicesLocalizedString_axBundle, accessibilityPLServicesLocalizedString_axBundle = v3, v4, (v2 = accessibilityPLServicesLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A227D818 table:@"PhotoLibraryServicesStrings"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}