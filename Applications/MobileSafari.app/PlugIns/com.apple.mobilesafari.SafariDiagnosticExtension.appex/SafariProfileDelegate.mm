@interface SafariProfileDelegate
- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)profiles;
- (id)sfWebExtensionsControllersForAllProfiles:(id)profiles;
@end

@implementation SafariProfileDelegate

- (id)sfWebExtensionsControllersForAllProfiles:(id)profiles
{
  v3 = +[SafariDiagnosticExtension defaultWebExtensionsController];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)profiles
{
  v3 = +[SafariDiagnosticExtension defaultContentBlockerManager];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

@end