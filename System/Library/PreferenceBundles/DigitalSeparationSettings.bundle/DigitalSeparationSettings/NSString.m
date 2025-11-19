@interface NSString
+ (id)localizedStringForKey:(id)a3;
@end

@implementation NSString

+ (id)localizedStringForKey:(id)a3
{
  v3 = a3;
  v4 = DSSettingsBundle();
  v5 = [v4 localizedStringForKey:v3 value:v3 table:@"Localizable"];

  return v5;
}

@end