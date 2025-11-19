void sub_29BDDC084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle)
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = MEMORY[0x29C2D5A30]();
  v5 = [v4 stringByAppendingPathComponent:@"MobilePhone.axbundle"];
  v6 = [v3 bundleWithPath:v5];
  v7 = accessibilityLocalizedString_axBundle;
  accessibilityLocalizedString_axBundle = v6;

  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle)
  {
LABEL_3:
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A219DBB0 table:@"Accessibility"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}