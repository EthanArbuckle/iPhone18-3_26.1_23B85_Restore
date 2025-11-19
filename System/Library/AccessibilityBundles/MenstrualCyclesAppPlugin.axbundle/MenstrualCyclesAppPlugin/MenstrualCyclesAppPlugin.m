id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A2204690 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _AXGetStringForDay(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB8D98] currentCalendar];
  v3 = [v2 isDateInYesterday:v1];
  if (v3)
  {
    v4 = accessibilityLocalizedString(@"context.yesterday");
  }

  else
  {
    v4 = &stru_2A2204690;
  }

  v5 = [v2 isDateInToday:v1];
  if (v5)
  {
    v6 = accessibilityLocalizedString(@"context.today");
  }

  else
  {
    v6 = &stru_2A2204690;
  }

  if (([v2 isDateInTomorrow:v1] & 1) == 0)
  {
    v7 = __UIAXStringForVariables();
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v11 = accessibilityLocalizedString(@"context.tomorrow");
  v7 = __UIAXStringForVariables();

  if (v5)
  {
LABEL_11:
  }

LABEL_12:
  if (v3)
  {

    if (v7)
    {
      goto LABEL_14;
    }
  }

  else if (v7)
  {
LABEL_14:
    v10 = AXDateStringForFormat();
    v8 = __UIAXStringForVariables();

    goto LABEL_17;
  }

  v8 = AXDateStringForFormat();
LABEL_17:

  return v8;
}