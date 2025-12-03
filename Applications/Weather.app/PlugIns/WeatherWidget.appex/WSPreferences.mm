@interface WSPreferences
+ (BOOL)readBoolFromContainerPreferenceValueForKey:(id)key defaultValue:(BOOL)value;
+ (id)readContainerPreferenceValueForKey:(id)key;
+ (void)writePreferenceForKey:(id)key value:(id)value;
@end

@implementation WSPreferences

+ (BOOL)readBoolFromContainerPreferenceValueForKey:(id)key defaultValue:(BOOL)value
{
  v5 = [WSPreferences readContainerPreferenceValueForKey:key];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = [v5 BOOLValue];
    }
  }

  return value;
}

+ (id)readContainerPreferenceValueForKey:(id)key
{
  keyCopy = key;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.weather" allowPlaceholder:0 error:0];
  groupContainerURLs = [v4 groupContainerURLs];
  v6 = [groupContainerURLs objectForKey:@"group.com.apple.weather"];
  path = [v6 path];

  if (!path)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.weather"];

    path = [v9 path];
  }

  v10 = _CFPreferencesCopyAppValueWithContainer();

  return v10;
}

+ (void)writePreferenceForKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.weather" allowPlaceholder:0 error:0];
  groupContainerURLs = [v6 groupContainerURLs];
  v8 = [groupContainerURLs objectForKey:@"group.com.apple.weather"];
  path = [v8 path];

  if (!path)
  {
    v10 = +[NSFileManager defaultManager];
    v11 = [v10 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.weather"];

    path = [v11 path];
  }

  _CFPreferencesSetAppValueWithContainer();
  _CFPreferencesAppSynchronizeWithContainer();
}

@end