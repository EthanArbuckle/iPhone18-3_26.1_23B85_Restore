@interface TPSDialAssistStrings
+ (NSBundle)classBundle;
+ (id)localizedStringForKey:(id)a3;
@end

@implementation TPSDialAssistStrings

+ (NSBundle)classBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 classBundle];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_41E0 table:v6];

  return v7;
}

@end