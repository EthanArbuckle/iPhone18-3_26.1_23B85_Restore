id restaurantAccessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = restaurantAccessibilityLocalizedString_axBundle;
  if (restaurantAccessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = restaurantAccessibilityLocalizedString_axBundle, restaurantAccessibilityLocalizedString_axBundle = v3, v4, (v2 = restaurantAccessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A22C24A0 table:@"RestaurantsAccessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_29C20E2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}