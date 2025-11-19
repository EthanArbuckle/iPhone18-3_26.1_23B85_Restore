@interface CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption
@end

@implementation CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption

void ___CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_block_invoke_11()
{
  if (CFPreferencesGetAppBooleanValue(@"NSDoubleLocalizedStrings", @"kCFPreferencesCurrentApplication", 0))
  {
    _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_doubleStrings = 1;
  }

  if (CFPreferencesGetAppBooleanValue(@"NSForceRightToLeftLocalizedStrings", @"kCFPreferencesCurrentApplication", 0))
  {
    _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_forceRightToLeftStrings = 1;
  }

  if (CFPreferencesGetAppBooleanValue(@"NSAccentuateLocalizedStrings", @"kCFPreferencesCurrentApplication", 0))
  {
    _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_accentuateStrings = 1;
  }

  if (CFPreferencesGetAppBooleanValue(@"NSSurroundLocalizedStrings", @"kCFPreferencesCurrentApplication", 0))
  {
    _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_surroundStrings = 1;
  }

  v0 = CFPreferencesCopyAppValue(@"NSTallLocalizedStrings", @"kCFPreferencesCurrentApplication");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID() && CFStringGetLength(v1))
    {
      _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_tallStrings = 1;
    }

    CFRelease(v1);
  }
}

uint64_t ___CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"NSShowNonLocalizedStrings", @"kCFPreferencesCurrentApplication", 0);
  _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_capitalize = result != 0;
  return result;
}

@end