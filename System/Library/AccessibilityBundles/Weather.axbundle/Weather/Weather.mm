id AXWeatherLocString(void *a1)
{
  v1 = a1;
  if (AXWeatherLocString_onceToken != -1)
  {
    AXWeatherLocString_cold_1();
  }

  if (AXWeatherLocString_bundle)
  {
    v2 = [AXWeatherLocString_bundle localizedStringForKey:v1 value:&stru_2A23B1E90 table:@"Accessibility-Weather"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __AXWeatherLocString_block_invoke()
{
  AXWeatherLocString_bundle = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.Weather.axbundle"];

  return MEMORY[0x2A1C71028]();
}

void sub_29C78491C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C785038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}