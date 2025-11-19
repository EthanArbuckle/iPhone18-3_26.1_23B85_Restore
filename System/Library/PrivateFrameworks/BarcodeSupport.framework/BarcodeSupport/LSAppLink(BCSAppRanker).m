@interface LSAppLink(BCSAppRanker)
- (id)bundleIdentifier;
@end

@implementation LSAppLink(BCSAppRanker)

- (id)bundleIdentifier
{
  v1 = [a1 targetApplicationProxy];
  v2 = [v1 bundleIdentifier];

  return v2;
}

@end