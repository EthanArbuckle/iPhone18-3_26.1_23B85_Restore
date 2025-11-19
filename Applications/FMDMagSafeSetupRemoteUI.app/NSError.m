@interface NSError
+ (NSError)errorWithMessage:(id)a3;
@end

@implementation NSError

+ (NSError)errorWithMessage:(id)a3
{
  v9 = NSLocalizedDescriptionKey;
  v10 = a3;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [NSError errorWithDomain:v6 code:0 userInfo:v4];

  return v7;
}

@end