id accessibilityLocalizedString(void *a1)
{
  v1 = MEMORY[0x29EDB9F48];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = localizedString(v3, @"Accessibility", v2);

  return v4;
}

id localizedString(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1 = [a1 localizedStringForKey:a3 value:&stru_2A21B0C50 table:a2];
    v3 = vars8;
  }

  return a1;
}

id accessibilityCinnamonLocalizedString(void *a1)
{
  v1 = MEMORY[0x29EDB9F48];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = localizedString(v3, @"Accessibility-Cinnamon", v2);

  return v4;
}

void sub_29BE3C56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}