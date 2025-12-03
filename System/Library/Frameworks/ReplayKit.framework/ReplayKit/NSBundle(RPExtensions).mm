@interface NSBundle(RPExtensions)
+ (id)_rpFrameworkBundle;
+ (id)_rpLocalizedAppNameFromBundleID:()RPExtensions;
+ (id)_rpLocalizedStringFromFrameworkBundleWithKey:()RPExtensions;
+ (id)_rpPluralLocalizedStringFromFrameworkBundleWithKey:()RPExtensions;
+ (id)baseIdentifier:()RPExtensions;
+ (id)bundleWithPID:()RPExtensions;
+ (id)executablePathWithPID:()RPExtensions;
+ (id)fallbackLanguage;
+ (id)preferredLanguage;
- (id)_rpLocalizedAppName;
@end

@implementation NSBundle(RPExtensions)

+ (id)_rpFrameworkBundle
{
  if (_rpFrameworkBundle_onceToken != -1)
  {
    +[NSBundle(RPExtensions) _rpFrameworkBundle];
  }

  v1 = _rpFrameworkBundle_sFrameworkBundle;

  return v1;
}

- (id)_rpLocalizedAppName
{
  v2 = [self objectForInfoDictionaryKey:*MEMORY[0x277CBEC40]];
  if (v2 || ([self objectForInfoDictionaryKey:*MEMORY[0x277CBED50]], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = v3;
  }

  else
  {
    v3 = [self objectForInfoDictionaryKey:*MEMORY[0x277CBED30]];
    v4 = 0;
  }

  return v3;
}

+ (id)_rpLocalizedAppNameFromBundleID:()RPExtensions
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v3];
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
  v6 = v5;
  if (v5)
  {
    localizedName = [v5 localizedName];
    v8 = localizedName;
    if (localizedName && ([localizedName isEqualToString:&stru_284D763F8] & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", @"$(PRODUCT_BUNDLE_IDENTIFIER)"))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
  }

  _rpLocalizedAppName = [v4 _rpLocalizedAppName];

  v8 = _rpLocalizedAppName;
  if (!_rpLocalizedAppName)
  {
LABEL_10:
    v10 = v3;

    v8 = v10;
    goto LABEL_11;
  }

LABEL_8:
  if (([v8 isEqualToString:&stru_284D763F8] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"$(PRODUCT_BUNDLE_IDENTIFIER)"))
  {
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

+ (id)_rpLocalizedStringFromFrameworkBundleWithKey:()RPExtensions
{
  v4 = a3;
  _rpFrameworkBundle = [MEMORY[0x277CCA8D8] _rpFrameworkBundle];
  preferredLanguage = [self preferredLanguage];
  v7 = [_rpFrameworkBundle localizedStringForKey:v4 value:0 table:@"Localizable" localization:preferredLanguage];

  if (!v7)
  {
    fallbackLanguage = [self fallbackLanguage];
    v7 = [_rpFrameworkBundle localizedStringForKey:v4 value:0 table:@"Localizable" localization:fallbackLanguage];

    if (!v7)
    {
      v7 = [_rpFrameworkBundle localizedStringForKey:v4 value:0 table:@"Localizable"];
    }
  }

  return v7;
}

+ (id)_rpPluralLocalizedStringFromFrameworkBundleWithKey:()RPExtensions
{
  v4 = a3;
  _rpFrameworkBundle = [MEMORY[0x277CCA8D8] _rpFrameworkBundle];
  preferredLanguage = [self preferredLanguage];
  v7 = [_rpFrameworkBundle localizedStringForKey:v4 value:0 table:@"LocalizablePlural" localization:preferredLanguage];

  if (!v7)
  {
    fallbackLanguage = [self fallbackLanguage];
    v7 = [_rpFrameworkBundle localizedStringForKey:v4 value:0 table:@"LocalizablePlural" localization:fallbackLanguage];

    if (!v7)
    {
      v7 = [_rpFrameworkBundle localizedStringForKey:v4 value:0 table:@"LocalizablePlural"];
    }
  }

  return v7;
}

+ (id)fallbackLanguage
{
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];
  v2 = [firstObject componentsSeparatedByString:@"-"];
  firstObject2 = [v2 firstObject];

  return firstObject2;
}

+ (id)preferredLanguage
{
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v1 = MEMORY[0x277CCA8D8];
  _rpFrameworkBundle = [objc_opt_class() _rpFrameworkBundle];
  localizations = [_rpFrameworkBundle localizations];
  v4 = [v1 preferredLocalizationsFromArray:localizations forPreferences:preferredLanguages];

  firstObject = [v4 firstObject];

  return firstObject;
}

+ (id)baseIdentifier:()RPExtensions
{
  v3 = [a3 componentsSeparatedByString:@"."];
  v4 = [v3 mutableCopy];

  [v4 removeLastObject];
  v5 = [v4 componentsJoinedByString:@"."];

  return v5;
}

+ (id)executablePathWithPID:()RPExtensions
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:proc_pidpath(pid encoding:{buffer, 0x1000u), 4}];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)bundleWithPID:()RPExtensions
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = [MEMORY[0x277CCA8D8] executablePathWithPID:?];
  v2 = [v0 fileURLWithPath:v1];

  if (!__RPLogLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "+[NSBundle(RPExtensions) bundleWithPID:]";
    v9 = 1024;
    v10 = 136;
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d  executableURL:%@", &v7, 0x1Cu);
  }

  if (v2)
  {
    v3 = _CFBundleCopyBundleURLForExecutableURL();
    if (!__RPLogLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446722;
      v8 = "+[NSBundle(RPExtensions) bundleWithPID:]";
      v9 = 1024;
      v10 = 140;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d  bundleURL:%@", &v7, 0x1Cu);
    }

    if (v3)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end