@interface TPSCallWaitingStrings
+ (NSBundle)classBundle;
+ (id)localizedStringForKey:(id)key;
@end

@implementation TPSCallWaitingStrings

+ (NSBundle)classBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  classBundle = [self classBundle];
  localizationTableName = [self localizationTableName];
  v7 = [classBundle localizedStringForKey:keyCopy value:&stru_4238 table:localizationTableName];

  return v7;
}

@end