id accessibilityMusicSettingsLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityMusicSettingsLocalizedString_axBundle;
  if (accessibilityMusicSettingsLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityMusicSettingsLocalizedString_axBundle, accessibilityMusicSettingsLocalizedString_axBundle = v3, v4, (v2 = accessibilityMusicSettingsLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A225C050 table:@"MusicSettingsAccessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_29C08B1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}