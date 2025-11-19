id localizedString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = localizedString_axBundle;
  if (localizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v6 = objc_claimAutoreleasedReturnValue(), v7 = localizedString_axBundle, localizedString_axBundle = v6, v7, (v5 = localizedString_axBundle) != 0))
  {
    v8 = [v5 localizedStringForKey:v4 value:&stru_2A21BE950 table:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id accessibilityHealthCinnamonLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityHealthCinnamonLocalizedString_axBundle;
  if (accessibilityHealthCinnamonLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] accessibilityBundleWithLastPathComponent:@"Health.axbundle"], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityHealthCinnamonLocalizedString_axBundle, accessibilityHealthCinnamonLocalizedString_axBundle = v3, v4, (v2 = accessibilityHealthCinnamonLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A21BE950 table:@"Accessibility-Cinnamon"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_29BE78108(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}