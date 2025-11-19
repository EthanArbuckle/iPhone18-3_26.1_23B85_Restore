id accessibilityJurassicLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityJurassicLocalizedString_axBundle;
  if (accessibilityJurassicLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityJurassicLocalizedString_axBundle, accessibilityJurassicLocalizedString_axBundle = v3, v4, (v2 = accessibilityJurassicLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A2244C58 table:@"Accessibility-Jurassic"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}