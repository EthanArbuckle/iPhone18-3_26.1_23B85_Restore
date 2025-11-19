id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A21AEFA8 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilityLabelForBatteryTypeString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"left"])
  {
    v2 = @"battery.left.earbud";
LABEL_9:
    v3 = accessibilityLocalizedString(v2);
    goto LABEL_10;
  }

  if ([v1 isEqualToString:@"right"])
  {
    v2 = @"battery.right.earbud";
    goto LABEL_9;
  }

  if ([v1 isEqualToString:@"case"])
  {
    v2 = @"battery.case";
    goto LABEL_9;
  }

  if ([v1 hasPrefix:@"combinedLeftRight"])
  {
    v2 = @"battery.combined.earbuds";
    goto LABEL_9;
  }

  v3 = 0;
LABEL_10:

  return v3;
}