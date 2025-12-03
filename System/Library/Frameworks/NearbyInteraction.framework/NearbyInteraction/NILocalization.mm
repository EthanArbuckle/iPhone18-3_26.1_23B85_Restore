@interface NILocalization
+ (id)_niFrameworkBundle;
+ (id)_niLocalizedStringFromBundle:(id)bundle withKey:(id)key;
+ (id)_niLocalizedStringFromFrameworkBundleWithKey:(id)key;
+ (id)fallbackBundle;
+ (id)fallbackBundleWithBundle:(id)bundle;
+ (id)localizedBundle;
+ (id)localizedBundleWithBundle:(id)bundle;
@end

@implementation NILocalization

+ (id)_niFrameworkBundle
{
  if (_niFrameworkBundle_onceToken != -1)
  {
    +[NILocalization _niFrameworkBundle];
  }

  v3 = _niFrameworkBundle_sFrameworkBundle;

  return v3;
}

void __36__NILocalization__niFrameworkBundle__block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/Frameworks/NearbyInteraction.framework"];
  v1 = [v0 bundleWithURL:v3];
  v2 = _niFrameworkBundle_sFrameworkBundle;
  _niFrameworkBundle_sFrameworkBundle = v1;
}

+ (id)_niLocalizedStringFromFrameworkBundleWithKey:(id)key
{
  keyCopy = key;
  localizedBundle = [objc_opt_class() localizedBundle];
  v5 = [localizedBundle localizedStringForKey:keyCopy value:0 table:0];

  if (!v5)
  {
    fallbackBundle = [objc_opt_class() fallbackBundle];
    v5 = [fallbackBundle localizedStringForKey:keyCopy value:0 table:0];

    if (!v5)
    {
      _niFrameworkBundle = [objc_opt_class() _niFrameworkBundle];
      v5 = [_niFrameworkBundle localizedStringForKey:keyCopy value:0 table:0];
    }
  }

  return v5;
}

+ (id)fallbackBundle
{
  v2 = objc_opt_class();
  _niFrameworkBundle = [objc_opt_class() _niFrameworkBundle];
  v4 = [v2 fallbackBundleWithBundle:_niFrameworkBundle];

  return v4;
}

+ (id)localizedBundle
{
  v2 = objc_opt_class();
  _niFrameworkBundle = [objc_opt_class() _niFrameworkBundle];
  v4 = [v2 localizedBundleWithBundle:_niFrameworkBundle];

  return v4;
}

+ (id)_niLocalizedStringFromBundle:(id)bundle withKey:(id)key
{
  bundleCopy = bundle;
  keyCopy = key;
  v7 = [objc_opt_class() localizedBundleWithBundle:bundleCopy];
  v8 = [v7 localizedStringForKey:keyCopy value:0 table:0];

  if (!v8)
  {
    v9 = [objc_opt_class() fallbackBundleWithBundle:bundleCopy];
    v8 = [v9 localizedStringForKey:keyCopy value:0 table:0];

    if (!v8)
    {
      v8 = [bundleCopy localizedStringForKey:keyCopy value:0 table:0];
    }
  }

  return v8;
}

+ (id)fallbackBundleWithBundle:(id)bundle
{
  v3 = MEMORY[0x1E695DF58];
  bundleCopy = bundle;
  preferredLanguages = [v3 preferredLanguages];
  firstObject = [preferredLanguages firstObject];
  v7 = [firstObject componentsSeparatedByString:@"-"];
  firstObject2 = [v7 firstObject];

  v9 = [bundleCopy pathForResource:@"Localizable" ofType:@"strings" inDirectory:0 forLocalization:firstObject2];

  v10 = MEMORY[0x1E696AAE8];
  stringByDeletingLastPathComponent = [v9 stringByDeletingLastPathComponent];
  v12 = [v10 bundleWithPath:stringByDeletingLastPathComponent];

  return v12;
}

+ (id)localizedBundleWithBundle:(id)bundle
{
  v3 = MEMORY[0x1E695DF58];
  bundleCopy = bundle;
  preferredLanguages = [v3 preferredLanguages];
  v6 = MEMORY[0x1E696AAE8];
  _niFrameworkBundle = [objc_opt_class() _niFrameworkBundle];
  localizations = [_niFrameworkBundle localizations];
  v9 = [v6 preferredLocalizationsFromArray:localizations forPreferences:preferredLanguages];

  resourcePath = [bundleCopy resourcePath];

  v11 = MEMORY[0x1E696AEC0];
  firstObject = [v9 firstObject];
  v13 = [v11 stringWithFormat:@"%@.lproj", firstObject];

  v14 = MEMORY[0x1E696AAE8];
  v15 = [resourcePath stringByAppendingPathComponent:v13];
  v16 = [v14 bundleWithPath:v15];

  return v16;
}

@end