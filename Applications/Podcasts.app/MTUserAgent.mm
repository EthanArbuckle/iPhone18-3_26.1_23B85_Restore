@interface MTUserAgent
+ (id)userAgent;
@end

@implementation MTUserAgent

+ (id)userAgent
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 infoDictionary];
  v4 = [v3 objectForKey:@"CFBundleShortVersionString"];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 infoDictionary];
  v7 = [v6 objectForKey:kCFBundleNameKey];

  v8 = [NSString stringWithFormat:@"%@/%@", v7, v4];

  return v8;
}

@end