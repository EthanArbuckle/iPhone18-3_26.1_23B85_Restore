@interface NILocalization
+ (id)_niFrameworkBundle;
+ (id)_niLocalizedStringFromBundle:(id)a3 withKey:(id)a4;
+ (id)_niLocalizedStringFromFrameworkBundleWithKey:(id)a3;
+ (id)fallbackBundle;
+ (id)fallbackBundleWithBundle:(id)a3;
+ (id)localizedBundle;
+ (id)localizedBundleWithBundle:(id)a3;
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

+ (id)_niLocalizedStringFromFrameworkBundleWithKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() localizedBundle];
  v5 = [v4 localizedStringForKey:v3 value:0 table:0];

  if (!v5)
  {
    v6 = [objc_opt_class() fallbackBundle];
    v5 = [v6 localizedStringForKey:v3 value:0 table:0];

    if (!v5)
    {
      v7 = [objc_opt_class() _niFrameworkBundle];
      v5 = [v7 localizedStringForKey:v3 value:0 table:0];
    }
  }

  return v5;
}

+ (id)fallbackBundle
{
  v2 = objc_opt_class();
  v3 = [objc_opt_class() _niFrameworkBundle];
  v4 = [v2 fallbackBundleWithBundle:v3];

  return v4;
}

+ (id)localizedBundle
{
  v2 = objc_opt_class();
  v3 = [objc_opt_class() _niFrameworkBundle];
  v4 = [v2 localizedBundleWithBundle:v3];

  return v4;
}

+ (id)_niLocalizedStringFromBundle:(id)a3 withKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() localizedBundleWithBundle:v5];
  v8 = [v7 localizedStringForKey:v6 value:0 table:0];

  if (!v8)
  {
    v9 = [objc_opt_class() fallbackBundleWithBundle:v5];
    v8 = [v9 localizedStringForKey:v6 value:0 table:0];

    if (!v8)
    {
      v8 = [v5 localizedStringForKey:v6 value:0 table:0];
    }
  }

  return v8;
}

+ (id)fallbackBundleWithBundle:(id)a3
{
  v3 = MEMORY[0x1E695DF58];
  v4 = a3;
  v5 = [v3 preferredLanguages];
  v6 = [v5 firstObject];
  v7 = [v6 componentsSeparatedByString:@"-"];
  v8 = [v7 firstObject];

  v9 = [v4 pathForResource:@"Localizable" ofType:@"strings" inDirectory:0 forLocalization:v8];

  v10 = MEMORY[0x1E696AAE8];
  v11 = [v9 stringByDeletingLastPathComponent];
  v12 = [v10 bundleWithPath:v11];

  return v12;
}

+ (id)localizedBundleWithBundle:(id)a3
{
  v3 = MEMORY[0x1E695DF58];
  v4 = a3;
  v5 = [v3 preferredLanguages];
  v6 = MEMORY[0x1E696AAE8];
  v7 = [objc_opt_class() _niFrameworkBundle];
  v8 = [v7 localizations];
  v9 = [v6 preferredLocalizationsFromArray:v8 forPreferences:v5];

  v10 = [v4 resourcePath];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v9 firstObject];
  v13 = [v11 stringWithFormat:@"%@.lproj", v12];

  v14 = MEMORY[0x1E696AAE8];
  v15 = [v10 stringByAppendingPathComponent:v13];
  v16 = [v14 bundleWithPath:v15];

  return v16;
}

@end