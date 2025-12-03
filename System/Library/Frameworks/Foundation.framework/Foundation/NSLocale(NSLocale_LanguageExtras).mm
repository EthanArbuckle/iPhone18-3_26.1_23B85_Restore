@interface NSLocale(NSLocale_LanguageExtras)
+ (id)_preferredMeasurementSystem;
+ (id)_preferredTemperatureUnit;
+ (id)preferredLocale;
+ (uint64_t)__effectiveLanguageForBundle:()NSLocale_LanguageExtras;
+ (uint64_t)_deviceLanguage;
+ (uint64_t)mostPreferredLanguageOf:()NSLocale_LanguageExtras forUsage:options:;
+ (void)mostPreferredLanguageOf:()NSLocale_LanguageExtras withPreferredLanguages:forUsage:options:;
+ (void)registerPreferredLanguage:()NSLocale_LanguageExtras usage:confidence:;
@end

@implementation NSLocale(NSLocale_LanguageExtras)

+ (uint64_t)_deviceLanguage
{
  v0 = MEMORY[0x1E695DF58];
  v1 = _NSFoundationBundle();

  return [v0 __effectiveLanguageForBundle:v1];
}

+ (id)preferredLocale
{
  v0 = _CFLocaleCopyPreferred();

  return v0;
}

+ (id)_preferredTemperatureUnit
{
  v0 = _CFLocaleCopyPreferredTemperatureUnit();

  return v0;
}

+ (uint64_t)__effectiveLanguageForBundle:()NSLocale_LanguageExtras
{
  v4 = *MEMORY[0x1E695E890];
  v5 = *MEMORY[0x1E695E898];
  v6 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v6 && (_NSIsNSArray() & 1) == 0)
  {

    v6 = 0;
  }

  if (![v6 count])
  {
    if (v6)
    {
      CFRelease(v6);
    }

    v6 = CFPreferencesCopyValue(@"AppleLanguages", v4, *MEMORY[0x1E695E8A0], v5);
  }

  if (v6 && (_NSIsNSArray() & 1) == 0)
  {

    v6 = 0;
  }

  v7 = -[NSArray firstObject](+[NSBundle preferredLocalizationsFromArray:forPreferences:](NSBundle, "preferredLocalizationsFromArray:forPreferences:", [a3 localizations], v6), "firstObject");
  v8 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v7];
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

+ (void)registerPreferredLanguage:()NSLocale_LanguageExtras usage:confidence:
{
  v7 = _NormalizedLanguageIDFromString(a4);
  if ((a5 & 3) != 0 && self > 0.5)
  {
    v8 = v7;
    v9 = _CFLocaleCopyPreferredLanguagesForCurrentUser();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 mutableCopy];
      if (([v11 containsObject:v8] & 1) == 0)
      {
        [v11 addObject:v8];
        _SetPreferredLanguages(v11);
      }

      CFRelease(v10);
    }
  }
}

+ (uint64_t)mostPreferredLanguageOf:()NSLocale_LanguageExtras forUsage:options:
{
  preferredLanguages = [self preferredLanguages];

  return [self mostPreferredLanguageOf:a3 withPreferredLanguages:preferredLanguages forUsage:a4 options:a5];
}

+ (void)mostPreferredLanguageOf:()NSLocale_LanguageExtras withPreferredLanguages:forUsage:options:
{
  v32 = *MEMORY[0x1E69E9840];
  if ((a6 & 4) != 0)
  {
    v11 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [a3 countByEnumeratingWithState:&v28 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(a3);
          }

          BaseLanguageIdentifierFromIdentifier = GetBaseLanguageIdentifierFromIdentifier(*(*(&v28 + 1) + 8 * i));
          if (BaseLanguageIdentifierFromIdentifier)
          {
            [v11 addObject:BaseLanguageIdentifierFromIdentifier];
          }
        }

        v13 = [a3 countByEnumeratingWithState:&v28 objects:v27 count:16];
      }

      while (v13);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = [a4 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
LABEL_18:
      v20 = 0;
      while (1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(a4);
        }

        v10 = *(*(&v23 + 1) + 8 * v20);
        if ([v11 containsObject:GetBaseLanguageIdentifierFromIdentifier(v10)])
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [a4 countByEnumeratingWithState:&v23 objects:v22 count:16];
          if (v18)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      v10 = 0;
    }
  }

  else
  {
    v8 = [(NSArray *)+[NSBundle preferredLocalizationsFromArray:forPreferences:](NSBundle firstObject:a3];
    if (v8 && (v9 = v8, MatchesBaseLanguageInLanguageIDs(v8, a3)))
    {
      if (MatchesBaseLanguageInLanguageIDs(v9, a4))
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

+ (id)_preferredMeasurementSystem
{
  v0 = _CFLocaleCopyPreferredMeasurementSystem();

  return v0;
}

@end