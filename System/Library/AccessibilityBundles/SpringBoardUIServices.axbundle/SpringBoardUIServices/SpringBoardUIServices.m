id accessibilitySBLocalizedString(void *a1)
{
  v1 = a1;
  if (accessibilityBundle_axBundle)
  {
    v2 = accessibilityBundle_axBundle;
LABEL_4:
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A2319650 table:@"Accessibility"];
    goto LABEL_5;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = MEMORY[0x29ED38EE0]();
  v5 = [v4 stringByAppendingPathComponent:@"System/Library/AccessibilityBundles/SpringBoard.axbundle"];
  v6 = [v3 bundleWithPath:v5];
  v7 = accessibilityBundle_axBundle;
  accessibilityBundle_axBundle = v6;

  v2 = accessibilityBundle_axBundle;
  if (v2)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

void sub_29C418204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_29C419A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C41A148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_29C41A958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}