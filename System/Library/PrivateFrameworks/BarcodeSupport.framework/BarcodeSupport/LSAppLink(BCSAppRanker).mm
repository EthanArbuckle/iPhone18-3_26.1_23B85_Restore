@interface LSAppLink(BCSAppRanker)
- (id)bundleIdentifier;
@end

@implementation LSAppLink(BCSAppRanker)

- (id)bundleIdentifier
{
  targetApplicationProxy = [self targetApplicationProxy];
  bundleIdentifier = [targetApplicationProxy bundleIdentifier];

  return bundleIdentifier;
}

@end