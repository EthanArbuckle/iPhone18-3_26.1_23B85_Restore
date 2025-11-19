id AssistantUIAccessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = AssistantUIAccessibilityLocalizedString_axBundle;
  if (AssistantUIAccessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = AssistantUIAccessibilityLocalizedString_axBundle, AssistantUIAccessibilityLocalizedString_axBundle = v3, v4, (v2 = AssistantUIAccessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A2113AB0 table:@"AssistantUI"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}