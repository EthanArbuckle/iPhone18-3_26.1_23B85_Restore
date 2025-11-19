id accessibilityCameraUILocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityCameraUILocalizedString_axBundle;
  if (accessibilityCameraUILocalizedString_axBundle)
  {
    goto LABEL_4;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = AXAccessibilityBundlesDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"CameraUI.axbundle"];
  v6 = [v3 bundleWithPath:v5];
  v7 = accessibilityCameraUILocalizedString_axBundle;
  accessibilityCameraUILocalizedString_axBundle = v6;

  v2 = accessibilityCameraUILocalizedString_axBundle;
  if (accessibilityCameraUILocalizedString_axBundle || (_AXAssert(), (v2 = accessibilityCameraUILocalizedString_axBundle) != 0))
  {
LABEL_4:
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A213E2D8 table:@"CameraUIStrings"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id accessibilityCameraKitLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityCameraKitLocalizedString_axBundle;
  if (accessibilityCameraKitLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityCameraKitLocalizedString_axBundle, accessibilityCameraKitLocalizedString_axBundle = v3, v4, (v2 = accessibilityCameraKitLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A213E2D8 table:@"CameraKitStrings"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}