@interface AKUserDefaults
+ (id)objectForKey:(id)a3;
+ (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation AKUserDefaults

+ (void)setValue:(id)a3 forKey:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  CFPreferencesSetAppValue(v5, location[0], kCFPreferencesAnyApplication);
  CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

+ (id)objectForKey:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [(NSUserDefaults *)v4 objectForKey:location[0]];
  _objc_release(v4);
  objc_storeStrong(location, 0);

  return v5;
}

@end