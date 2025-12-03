@interface NSLocale
+ (NSLocale)allocWithZone:(_NSZone *)zone;
+ (NSLocale)localeWithLocaleIdentifier:(NSString *)ident;
+ (NSString)canonicalLanguageIdentifierFromString:(NSString *)string;
+ (NSString)canonicalLocaleIdentifierFromString:(NSString *)string;
+ (id)internetServicesRegion;
- (BOOL)isEqual:(id)equal;
- (BOOL)usesMetricSystem;
- (id)_copyDisplayNameForKey:(id)key value:(id)value;
- (unint64_t)hash;
@end

@implementation NSLocale

- (unint64_t)hash
{
  localeIdentifier = [(NSLocale *)self localeIdentifier];

  return [(NSString *)localeIdentifier hash];
}

+ (NSLocale)allocWithZone:(_NSZone *)zone
{
  v6 = *MEMORY[0x1E69E9840];
  if (NSLocale == self)
  {
    result = &__placeholderLocale;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___NSLocale;
    result = objc_msgSendSuper2(&v5, sel_allocWithZone_, zone);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  localeIdentifier = [(NSLocale *)self localeIdentifier];
  localeIdentifier2 = [equal localeIdentifier];

  return [(NSString *)localeIdentifier isEqual:localeIdentifier2];
}

- (BOOL)usesMetricSystem
{
  v2 = [(NSLocale *)self objectForKey:@"kCFLocaleUsesMetricSystemKey"];

  return [v2 BOOLValue];
}

+ (NSLocale)localeWithLocaleIdentifier:(NSString *)ident
{
  v3 = [[self alloc] initWithLocaleIdentifier:ident];

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

- (id)_copyDisplayNameForKey:(id)key value:(id)value
{
  v4 = [(NSLocale *)self displayNameForKey:key value:value];

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