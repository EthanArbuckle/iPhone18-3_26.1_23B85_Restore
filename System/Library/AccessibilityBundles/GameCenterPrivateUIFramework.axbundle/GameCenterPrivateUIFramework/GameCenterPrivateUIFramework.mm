id AXGameCenterUIFrameworkLocString(void *a1)
{
  v1 = a1;
  if (AXGameCenterUIFrameworkLocString_onceToken != -1)
  {
    AXGameCenterUIFrameworkLocString_cold_1();
  }

  if (AXGameCenterUIFrameworkLocString_bundle)
  {
    v2 = [AXGameCenterUIFrameworkLocString_bundle localizedStringForKey:v1 value:&stru_2A21A48C8 table:@"GameCenterUIFrameworkAccessibility"];
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
  v4 = MEMORY[0x29C2D6E10]();
  v1 = [v4 stringByAppendingPathComponent:@"GameCenterUIFramework.axbundle"];
  v2 = [v0 bundleWithPath:v1];
  v3 = AXGameCenterUIFrameworkLocString_bundle;
  AXGameCenterUIFrameworkLocString_bundle = v2;
}

id AXGameCenterPrivateUIFrameworkLocString(void *a1)
{
  v1 = a1;
  if (AXGameCenterPrivateUIFrameworkLocString_onceToken != -1)
  {
    AXGameCenterPrivateUIFrameworkLocString_cold_1();
  }

  if (AXGameCenterPrivateUIFrameworkLocString_bundle)
  {
    v2 = [AXGameCenterPrivateUIFrameworkLocString_bundle localizedStringForKey:v1 value:&stru_2A21A48C8 table:@"Accessibility"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __AXGameCenterPrivateUIFrameworkLocString_block_invoke()
{
  AXGameCenterPrivateUIFrameworkLocString_bundle = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.GameCenterPrivateUIFramework.axbundle"];

  return MEMORY[0x2A1C71028]();
}

void sub_29BE05950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}