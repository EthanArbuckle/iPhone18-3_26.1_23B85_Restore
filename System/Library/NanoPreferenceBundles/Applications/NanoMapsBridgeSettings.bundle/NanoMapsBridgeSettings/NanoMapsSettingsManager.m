@interface NanoMapsSettingsManager
+ (BOOL)BOOLForKey:(id)a3 defaultValue:(BOOL)a4;
+ (BOOL)unsignedIntegerForKey:(id)a3 defaultValue:(unint64_t)a4;
+ (id)stringForKey:(id)a3;
+ (void)_synchronizeKey:(id)a3;
+ (void)setString:(id)a3 forKey:(id)a4;
+ (void)setUnsignedInteger:(unint64_t)a3 forKey:(id)a4;
@end

@implementation NanoMapsSettingsManager

+ (void)_synchronizeKey:(id)a3
{
  v3 = a3;
  v4 = +[NPSDomainAccessor nanoMapsDomainAccessor];
  v5 = [v4 synchronize];

  v7 = objc_opt_new();
  v6 = [NSSet setWithObject:v3];

  [v7 synchronizeNanoDomain:@"com.apple.NanoMaps" keys:v6];
}

+ (BOOL)BOOLForKey:(id)a3 defaultValue:(BOOL)a4
{
  v5 = a3;
  v6 = +[NPSDomainAccessor nanoMapsDomainAccessor];
  v7 = [v6 synchronize];
  v10 = 0;
  v8 = [v6 BOOLForKey:v5 keyExistsAndHasValidFormat:&v10];

  if (v10)
  {
    a4 = v8;
  }

  return a4;
}

+ (BOOL)unsignedIntegerForKey:(id)a3 defaultValue:(unint64_t)a4
{
  v5 = a3;
  v6 = +[NPSDomainAccessor nanoMapsDomainAccessor];
  v7 = [v6 synchronize];
  v8 = [v6 objectForKey:v5];

  if (v8)
  {
    a4 = [v8 unsignedIntegerValue];
  }

  return a4 != 0;
}

+ (void)setUnsignedInteger:(unint64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v8 = +[NPSDomainAccessor nanoMapsDomainAccessor];
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  [v8 setObject:v7 forKey:v6];

  [a1 _synchronizeKey:v6];
}

+ (id)stringForKey:(id)a3
{
  v3 = a3;
  v4 = +[NPSDomainAccessor nanoMapsDomainAccessor];
  v5 = [v4 synchronize];
  v6 = [v4 stringForKey:v3];

  return v6;
}

+ (void)setString:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NPSDomainAccessor nanoMapsDomainAccessor];
  [v8 setObject:v7 forKey:v6];

  [a1 _synchronizeKey:v6];
}

@end