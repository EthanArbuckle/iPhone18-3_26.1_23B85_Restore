@interface AKUserDefaults
+ (id)objectForKey:(id)key;
+ (void)setValue:(id)value forKey:(id)key;
@end

@implementation AKUserDefaults

+ (void)setValue:(id)value forKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v5 = 0;
  objc_storeStrong(&v5, key);
  CFPreferencesSetAppValue(v5, location[0], kCFPreferencesAnyApplication);
  CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

+ (id)objectForKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [(NSUserDefaults *)v4 objectForKey:location[0]];
  _objc_release(v4);
  objc_storeStrong(location, 0);

  return v5;
}

@end