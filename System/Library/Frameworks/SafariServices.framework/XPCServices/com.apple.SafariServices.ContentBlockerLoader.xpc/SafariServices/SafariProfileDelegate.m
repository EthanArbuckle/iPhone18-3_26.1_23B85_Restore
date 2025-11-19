@interface SafariProfileDelegate
- (id)sfWebExtensionsControllerTabGroupManager:(id)a3;
- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)a3;
- (id)sfWebExtensionsControllersForAllProfiles:(id)a3;
@end

@implementation SafariProfileDelegate

- (id)sfWebExtensionsControllersForAllProfiles:(id)a3
{
  v3 = +[ContentBlockerLoader defaultWebExtensionsController];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)a3
{
  v3 = +[ContentBlockerLoader defaultContentBlockerManager];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)sfWebExtensionsControllerTabGroupManager:(id)a3
{
  v3 = +[ContentBlockerLoader _tabGroupManager];

  return v3;
}

@end