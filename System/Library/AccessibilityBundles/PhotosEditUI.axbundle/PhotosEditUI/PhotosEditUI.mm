id accessibilityPhotosEditUILocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityPhotosEditUILocalizedString_axBundle;
  if (accessibilityPhotosEditUILocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityPhotosEditUILocalizedString_axBundle, accessibilityPhotosEditUILocalizedString_axBundle = v3, v4, (v2 = accessibilityPhotosEditUILocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A227DF48 table:@"PhotosEditUIAccessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_29C10FF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}