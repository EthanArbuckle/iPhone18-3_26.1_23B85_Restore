@interface JSALocale
+ (id)getLanguage:(id)a3;
@end

@implementation JSALocale

+ (id)getLanguage:(id)a3
{
  v3 = a3;
  v4 = +[NSLocale currentLocale];
  v5 = [v4 displayNameForKey:NSLocaleLanguageCode value:v3];

  return v5;
}

@end