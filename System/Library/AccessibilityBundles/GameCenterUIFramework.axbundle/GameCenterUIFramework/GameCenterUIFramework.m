void sub_29BE0A1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

id AXGameCenterUIFrameworkLocString(void *a1)
{
  v1 = a1;
  if (AXGameCenterUIFrameworkLocString_onceToken != -1)
  {
    AXGameCenterUIFrameworkLocString_cold_1();
  }

  if (AXGameCenterUIFrameworkLocString_bundle)
  {
    v2 = [AXGameCenterUIFrameworkLocString_bundle localizedStringForKey:v1 value:&stru_2A21A6C08 table:@"GameCenterUIFrameworkAccessibility"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __AXGameCenterUIFrameworkLocString_block_invoke()
{
  v0 = MEMORY[0x29EDB9F48];
  v4 = MEMORY[0x29C2D70A0]();
  v1 = [v4 stringByAppendingPathComponent:@"GameCenterUIFramework.axbundle"];
  v2 = [v0 bundleWithPath:v1];
  v3 = AXGameCenterUIFrameworkLocString_bundle;
  AXGameCenterUIFrameworkLocString_bundle = v2;
}

void sub_29BE0CB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}