@interface NSLocale
+ (NSLocale)allocWithZone:(_NSZone *)a3;
+ (NSLocale)localeWithLocaleIdentifier:(NSString *)ident;
+ (NSString)canonicalLanguageIdentifierFromString:(NSString *)string;
+ (NSString)canonicalLocaleIdentifierFromString:(NSString *)string;
+ (id)internetServicesRegion;
- (BOOL)isEqual:(id)a3;
- (BOOL)usesMetricSystem;
- (id)_copyDisplayNameForKey:(id)a3 value:(id)a4;
- (unint64_t)hash;
@end

@implementation NSLocale

- (unint64_t)hash
{
  v2 = [(NSLocale *)self localeIdentifier];

  return [(NSString *)v2 hash];
}

+ (NSLocale)allocWithZone:(_NSZone *)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (NSLocale == a1)
  {
    result = &__placeholderLocale;
  }

  else
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___NSLocale;
    result = objc_msgSendSuper2(&v5, sel_allocWithZone_, a3);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSLocale *)self localeIdentifier];
  v6 = [a3 localeIdentifier];

  return [(NSString *)v5 isEqual:v6];
}

- (BOOL)usesMetricSystem
{
  v2 = [(NSLocale *)self objectForKey:@"kCFLocaleUsesMetricSystemKey"];

  return [v2 BOOLValue];
}

+ (NSLocale)localeWithLocaleIdentifier:(NSString *)ident
{
  v3 = [[a1 alloc] initWithLocaleIdentifier:ident];

  return v3;
}

+ (NSString)canonicalLocaleIdentifierFromString:(NSString *)string
{
  if (string)
  {
    return [NSLocale _canonicalLocaleIdentifierFromString:?];
  }

  else
  {
    return 0;
  }
}

+ (NSString)canonicalLanguageIdentifierFromString:(NSString *)string
{
  if (string)
  {
    return [NSLocale _canonicalLanguageIdentifierFromString:?];
  }

  else
  {
    return 0;
  }
}

- (id)_copyDisplayNameForKey:(id)a3 value:(id)a4
{
  v4 = [(NSLocale *)self displayNameForKey:a3 value:a4];

  return v4;
}

+ (id)internetServicesRegion
{
  v2 = CFPreferencesCopyAppValue(@"AppleInternetServicesRegion", @"kCFPreferencesCurrentApplication");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFStringGetTypeID())
    {

      return v3;
    }

    CFRelease(v3);
  }

  v6 = +[NSLocale currentLocale];

  return [(NSLocale *)v6 objectForKey:@"kCFLocaleCountryCodeKey"];
}

@end