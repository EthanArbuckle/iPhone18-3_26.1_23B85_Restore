@interface NSError
+ (NSError)errorWithMessage:(id)message;
@end

@implementation NSError

+ (NSError)errorWithMessage:(id)message
{
  v9 = NSLocalizedDescriptionKey;
  messageCopy = message;
  messageCopy2 = message;
  v4 = [NSDictionary dictionaryWithObjects:&messageCopy forKeys:&v9 count:1];
  v5 = +[NSBundle mainBundle];
  bundleIdentifier = [v5 bundleIdentifier];
  v7 = [NSError errorWithDomain:bundleIdentifier code:0 userInfo:v4];

  return v7;
}

@end