@interface ACDPreferences
+ (ACDPreferences)sharedPreferences;
- (double)serverTimeoutInterval;
- (id)objectForKey:(id)key;
- (void)reset;
@end

@implementation ACDPreferences

+ (ACDPreferences)sharedPreferences
{
  if (sharedPreferences_onceToken != -1)
  {
    +[ACDPreferences sharedPreferences];
  }

  v3 = sharedPreferences_sSharedPreferences;

  return v3;
}

uint64_t __35__ACDPreferences_sharedPreferences__block_invoke()
{
  sharedPreferences_sSharedPreferences = objc_alloc_init(ACDPreferences);

  return MEMORY[0x2821F96F8]();
}

- (id)objectForKey:(id)key
{
  v3 = CFPreferencesCopyAppValue(key, @"com.apple.accounts");

  return v3;
}

- (double)serverTimeoutInterval
{
  v2 = [(ACDPreferences *)self objectForKey:@"IdleTimeout"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 15.0;
  }

  return intValue;
}

- (void)reset
{
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF030];
  v5 = CFPreferencesCopyKeyList(@"com.apple.accounts", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  CFPreferencesSetMultiple(0, v5, @"com.apple.accounts", v3, v4);
  if (v5)
  {
    CFRelease(v5);
  }

  [(ACDPreferences *)self synchronize];
}

@end