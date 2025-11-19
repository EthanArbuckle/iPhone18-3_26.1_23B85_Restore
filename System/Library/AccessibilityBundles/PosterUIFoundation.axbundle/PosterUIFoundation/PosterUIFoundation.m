id accessibilityLocalizedStringInTable(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = accessibilityLocalizedStringInTable_axBundle;
  if (accessibilityLocalizedStringInTable_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v6 = objc_claimAutoreleasedReturnValue(), v7 = accessibilityLocalizedStringInTable_axBundle, accessibilityLocalizedStringInTable_axBundle = v6, v7, (v5 = accessibilityLocalizedStringInTable_axBundle) != 0))
  {
    v8 = [v5 localizedStringForKey:v3 value:&stru_2A22A5258 table:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}