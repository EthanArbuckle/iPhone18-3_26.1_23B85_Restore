id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.Setup.axbundle"], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A22D4EC0 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id AXAttributedStringForLanguage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (-[__CFString length](v4, "length") && [v3 length])
  {
    v5 = [(__CFString *)v4 lowercaseString];
    v6 = [v5 isEqualToString:@"pt"];

    if (v6)
    {

      v4 = @"pt-BR";
    }

    v7 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v3];
    [v7 setAttribute:v4 forKey:*MEMORY[0x29EDBD950]];
    [v7 setAttribute:v4 forKey:*MEMORY[0x29EDBD8A0]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_29C30C154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C30DF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}