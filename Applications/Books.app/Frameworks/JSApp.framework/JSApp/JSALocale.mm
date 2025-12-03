@interface JSALocale
+ (id)getLanguage:(id)language;
@end

@implementation JSALocale

+ (id)getLanguage:(id)language
{
  languageCopy = language;
  v4 = +[NSLocale currentLocale];
  v5 = [v4 displayNameForKey:NSLocaleLanguageCode value:languageCopy];

  return v5;
}

@end