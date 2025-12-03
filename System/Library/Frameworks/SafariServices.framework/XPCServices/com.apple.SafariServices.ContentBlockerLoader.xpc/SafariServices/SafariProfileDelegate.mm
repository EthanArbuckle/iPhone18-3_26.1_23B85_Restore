@interface SafariProfileDelegate
- (id)sfWebExtensionsControllerTabGroupManager:(id)manager;
- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)profiles;
- (id)sfWebExtensionsControllersForAllProfiles:(id)profiles;
@end

@implementation SafariProfileDelegate

- (id)sfWebExtensionsControllersForAllProfiles:(id)profiles
{
  v3 = +[ContentBlockerLoader defaultWebExtensionsController];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)profiles
{
  v3 = +[ContentBlockerLoader defaultContentBlockerManager];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)sfWebExtensionsControllerTabGroupManager:(id)manager
{
  v3 = +[ContentBlockerLoader _tabGroupManager];

  return v3;
}

@end