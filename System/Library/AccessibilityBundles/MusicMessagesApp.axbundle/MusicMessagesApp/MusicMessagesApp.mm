id accessibilityMusicMessagesAppLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityMusicMessagesAppLocalizedString_axBundle;
  if (accessibilityMusicMessagesAppLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityMusicMessagesAppLocalizedString_axBundle, accessibilityMusicMessagesAppLocalizedString_axBundle = v3, v4, (v2 = accessibilityMusicMessagesAppLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A225B390 table:@"MusicMessagesAppAccessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}