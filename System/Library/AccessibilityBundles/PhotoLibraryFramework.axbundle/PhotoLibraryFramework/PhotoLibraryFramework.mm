id accessibilityLocalizedStringFromBundleWithTable(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    v7 = [a2 localizedStringForKey:v5 value:&stru_2A227B0B8 table:a3];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A227B0B8 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _createFormatDurationString(double a1, double a2)
{
  v3 = MEMORY[0x29C2E5E80](1);
  v4 = MEMORY[0x29C2E5E80](1, a2);
  v5 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
  v6 = accessibilityLocalizedString(@"slomo.trim.duration");
  v7 = [v5 initWithFormat:v6, v3, v4];

  v8 = [v7 rangeOfString:v3];
  v10 = v9;
  v11 = [v7 rangeOfString:v4 options:4];
  v13 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x29EDBD7E8]) initWithString:v7];
  v15 = v14;
  v16 = MEMORY[0x29EDB8F00];
  v17 = MEMORY[0x29EDBD8C0];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = v8;
    v19 = MEMORY[0x29EDB8F00];
    [v14 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD8C0] withRange:{v18, v10}];
    v16 = v19;
  }

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v15 setAttribute:*v16 forKey:*v17 withRange:{v11, v13}];
  }

  return v15;
}