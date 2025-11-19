id accessibilityLocalizedStringWithFallback(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  v7 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  if (v7)
  {
    if ([v6 length])
    {
      v8 = accessibilityLocalizedStringWithFallback(v6, 0);
      v9 = [v7 localizedStringForKey:v5 value:v8 table:@"Accessibility"];
    }

    else
    {
      v9 = [v7 localizedStringForKey:v5 value:&stru_2A21289B8 table:@"Accessibility"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_29BC1A400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}