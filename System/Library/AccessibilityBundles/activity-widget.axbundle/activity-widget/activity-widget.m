id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_4238 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}