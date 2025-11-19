id axLocalizedString(void *a1)
{
  v1 = a1;
  v2 = axLocalizedString_axBundle;
  if (axLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = axLocalizedString_axBundle, axLocalizedString_axBundle = v3, v4, (v2 = axLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A2279828 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}