@interface NSBundle
+ (id)appendToBundleIdentifier:(id)a3;
@end

@implementation NSBundle

+ (id)appendToBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 bundleIdentifier];

  v6 = [v5 stringByAppendingFormat:@".%@", v3];

  return v6;
}

@end