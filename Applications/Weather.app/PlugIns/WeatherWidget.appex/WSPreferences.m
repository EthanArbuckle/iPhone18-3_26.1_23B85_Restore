@interface WSPreferences
+ (BOOL)readBoolFromContainerPreferenceValueForKey:(id)a3 defaultValue:(BOOL)a4;
+ (id)readContainerPreferenceValueForKey:(id)a3;
+ (void)writePreferenceForKey:(id)a3 value:(id)a4;
@end

@implementation WSPreferences

+ (BOOL)readBoolFromContainerPreferenceValueForKey:(id)a3 defaultValue:(BOOL)a4
{
  v5 = [WSPreferences readContainerPreferenceValueForKey:a3];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a4 = [v5 BOOLValue];
    }
  }

  return a4;
}

+ (id)readContainerPreferenceValueForKey:(id)a3
{
  v3 = a3;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.weather" allowPlaceholder:0 error:0];
  v5 = [v4 groupContainerURLs];
  v6 = [v5 objectForKey:@"group.com.apple.weather"];
  v7 = [v6 path];

  if (!v7)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.weather"];

    v7 = [v9 path];
  }

  v10 = _CFPreferencesCopyAppValueWithContainer();

  return v10;
}

+ (void)writePreferenceForKey:(id)a3 value:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.weather" allowPlaceholder:0 error:0];
  v7 = [v6 groupContainerURLs];
  v8 = [v7 objectForKey:@"group.com.apple.weather"];
  v9 = [v8 path];

  if (!v9)
  {
    v10 = +[NSFileManager defaultManager];
    v11 = [v10 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.weather"];

    v9 = [v11 path];
  }

  _CFPreferencesSetAppValueWithContainer();
  _CFPreferencesAppSynchronizeWithContainer();
}

@end