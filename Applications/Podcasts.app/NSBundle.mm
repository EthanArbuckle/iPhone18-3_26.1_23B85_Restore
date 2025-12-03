@interface NSBundle
+ (id)appendToBundleIdentifier:(id)identifier;
@end

@implementation NSBundle

+ (id)appendToBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[NSBundle mainBundle];
  bundleIdentifier = [v4 bundleIdentifier];

  identifierCopy = [bundleIdentifier stringByAppendingFormat:@".%@", identifierCopy];

  return identifierCopy;
}

@end