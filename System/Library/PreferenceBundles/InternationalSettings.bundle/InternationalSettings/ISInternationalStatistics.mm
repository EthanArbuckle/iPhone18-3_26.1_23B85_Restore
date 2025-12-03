@interface ISInternationalStatistics
+ (void)logInternationalStatistics;
@end

@implementation ISInternationalStatistics

+ (void)logInternationalStatistics
{
  v2 = +[NSLocale preferredLanguages];
  firstObject = [v2 firstObject];
  v4 = +[NSLocale currentLocale];
  localeIdentifier = [v4 localeIdentifier];
  v6 = [NSLocale componentsFromLocaleIdentifier:localeIdentifier];

  v7 = [v6 objectForKeyedSubscript:NSLocaleLanguageCode];
  v8 = [v6 objectForKeyedSubscript:NSLocaleScriptCode];
  v9 = +[NSLocale currentLocale];
  regionCode = [v9 regionCode];

  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:v7 forKeyedSubscript:NSLocaleLanguageCode];
  if (v8)
  {
    [v11 setObject:v8 forKeyedSubscript:NSLocaleScriptCode];
  }

  [v11 setObject:regionCode forKeyedSubscript:NSLocaleCountryCode];
  v12 = [NSLocale localeIdentifierFromComponents:v11];
  v14 = [NSString stringWithFormat:@"%@ + %@", firstObject, v12];
  v13 = v14;
  AnalyticsSendEventLazy();
}

@end