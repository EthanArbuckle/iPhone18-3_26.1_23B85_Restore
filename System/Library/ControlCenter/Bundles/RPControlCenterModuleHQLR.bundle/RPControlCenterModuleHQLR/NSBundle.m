@interface NSBundle
+ (id)_rpFrameworkBundle;
+ (id)_rpLocalizedAppNameFromBundleID:(id)a3;
+ (id)_rpLocalizedStringFromFrameworkBundleWithKey:(id)a3;
+ (id)_rpPluralLocalizedStringFromFrameworkBundleWithKey:(id)a3;
+ (id)baseIdentifier:(id)a3;
+ (id)executablePathWithPID:(int)a3;
+ (id)fallbackLanguage;
+ (id)preferredLanguage;
- (id)_rpLocalizedAppName;
@end

@implementation NSBundle

+ (id)_rpFrameworkBundle
{
  if (qword_37D98[0] != -1)
  {
    sub_216E8();
  }

  v3 = qword_37D90;

  return v3;
}

- (id)_rpLocalizedAppName
{
  v3 = [(NSBundle *)self objectForInfoDictionaryKey:_kCFBundleDisplayNameKey];
  if (v3 || ([(NSBundle *)self objectForInfoDictionaryKey:kCFBundleNameKey], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = v4;
  }

  else
  {
    v4 = [(NSBundle *)self objectForInfoDictionaryKey:kCFBundleExecutableKey];
    v5 = 0;
  }

  return v4;
}

+ (id)_rpLocalizedAppNameFromBundleID:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleWithIdentifier:v3];
  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedName];
    v8 = v7;
    if (v7 && ([v7 isEqualToString:&stru_31A68] & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", @"$(PRODUCT_BUNDLE_IDENTIFIER)"))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 _rpLocalizedAppName];

  v8 = v9;
  if (!v9)
  {
LABEL_10:
    v10 = v3;

    v8 = v10;
    goto LABEL_11;
  }

LABEL_8:
  if (([v8 isEqualToString:&stru_31A68] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"$(PRODUCT_BUNDLE_IDENTIFIER)"))
  {
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

+ (id)_rpLocalizedStringFromFrameworkBundleWithKey:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle _rpFrameworkBundle];
  v6 = [a1 preferredLanguage];
  v7 = [v5 localizedStringForKey:v4 value:0 table:@"Localizable" localization:v6];

  if (!v7)
  {
    v8 = [a1 fallbackLanguage];
    v7 = [v5 localizedStringForKey:v4 value:0 table:@"Localizable" localization:v8];

    if (!v7)
    {
      v7 = [v5 localizedStringForKey:v4 value:0 table:@"Localizable"];
    }
  }

  return v7;
}

+ (id)_rpPluralLocalizedStringFromFrameworkBundleWithKey:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle _rpFrameworkBundle];
  v6 = [a1 preferredLanguage];
  v7 = [v5 localizedStringForKey:v4 value:0 table:@"LocalizablePlural" localization:v6];

  if (!v7)
  {
    v8 = [a1 fallbackLanguage];
    v7 = [v5 localizedStringForKey:v4 value:0 table:@"LocalizablePlural" localization:v8];

    if (!v7)
    {
      v7 = [v5 localizedStringForKey:v4 value:0 table:@"LocalizablePlural"];
    }
  }

  return v7;
}

+ (id)fallbackLanguage
{
  v2 = +[NSLocale preferredLanguages];
  v3 = [v2 firstObject];
  v4 = [v3 componentsSeparatedByString:@"-"];
  v5 = [v4 firstObject];

  return v5;
}

+ (id)preferredLanguage
{
  v2 = +[NSLocale preferredLanguages];
  v3 = [objc_opt_class() _rpFrameworkBundle];
  v4 = [v3 localizations];
  v5 = [NSBundle preferredLocalizationsFromArray:v4 forPreferences:v2];

  v6 = [v5 firstObject];

  return v6;
}

+ (id)baseIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
  v4 = [v3 mutableCopy];

  [v4 removeLastObject];
  v5 = [v4 componentsJoinedByString:@"."];

  return v5;
}

+ (id)executablePathWithPID:(int)a3
{
  v3 = [[NSString alloc] initWithBytes:buffer length:proc_pidpath(a3 encoding:{buffer, 0x1000u), 4}];

  return v3;
}

@end