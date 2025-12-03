@interface NanoMapsSettingsManager
+ (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value;
+ (BOOL)unsignedIntegerForKey:(id)key defaultValue:(unint64_t)value;
+ (id)stringForKey:(id)key;
+ (void)_synchronizeKey:(id)key;
+ (void)setString:(id)string forKey:(id)key;
+ (void)setUnsignedInteger:(unint64_t)integer forKey:(id)key;
@end

@implementation NanoMapsSettingsManager

+ (void)_synchronizeKey:(id)key
{
  keyCopy = key;
  v4 = +[NPSDomainAccessor nanoMapsDomainAccessor];
  synchronize = [v4 synchronize];

  v7 = objc_opt_new();
  v6 = [NSSet setWithObject:keyCopy];

  [v7 synchronizeNanoDomain:@"com.apple.NanoMaps" keys:v6];
}

+ (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value
{
  keyCopy = key;
  v6 = +[NPSDomainAccessor nanoMapsDomainAccessor];
  synchronize = [v6 synchronize];
  v10 = 0;
  v8 = [v6 BOOLForKey:keyCopy keyExistsAndHasValidFormat:&v10];

  if (v10)
  {
    value = v8;
  }

  return value;
}

+ (BOOL)unsignedIntegerForKey:(id)key defaultValue:(unint64_t)value
{
  keyCopy = key;
  v6 = +[NPSDomainAccessor nanoMapsDomainAccessor];
  synchronize = [v6 synchronize];
  v8 = [v6 objectForKey:keyCopy];

  if (v8)
  {
    value = [v8 unsignedIntegerValue];
  }

  return value != 0;
}

+ (void)setUnsignedInteger:(unint64_t)integer forKey:(id)key
{
  keyCopy = key;
  v8 = +[NPSDomainAccessor nanoMapsDomainAccessor];
  v7 = [NSNumber numberWithUnsignedInteger:integer];
  [v8 setObject:v7 forKey:keyCopy];

  [self _synchronizeKey:keyCopy];
}

+ (id)stringForKey:(id)key
{
  keyCopy = key;
  v4 = +[NPSDomainAccessor nanoMapsDomainAccessor];
  synchronize = [v4 synchronize];
  v6 = [v4 stringForKey:keyCopy];

  return v6;
}

+ (void)setString:(id)string forKey:(id)key
{
  keyCopy = key;
  stringCopy = string;
  v8 = +[NPSDomainAccessor nanoMapsDomainAccessor];
  [v8 setObject:stringCopy forKey:keyCopy];

  [self _synchronizeKey:keyCopy];
}

@end