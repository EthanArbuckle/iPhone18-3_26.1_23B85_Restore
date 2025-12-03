@interface MTUserAgent
+ (id)userAgent;
@end

@implementation MTUserAgent

+ (id)userAgent
{
  v2 = +[NSBundle mainBundle];
  infoDictionary = [v2 infoDictionary];
  v4 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];

  v5 = +[NSBundle mainBundle];
  infoDictionary2 = [v5 infoDictionary];
  v7 = [infoDictionary2 objectForKey:kCFBundleNameKey];

  v8 = [NSString stringWithFormat:@"%@/%@", v7, v4];

  return v8;
}

@end