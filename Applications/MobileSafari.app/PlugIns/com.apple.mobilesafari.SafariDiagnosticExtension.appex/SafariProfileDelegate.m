@interface SafariProfileDelegate
- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)a3;
- (id)sfWebExtensionsControllersForAllProfiles:(id)a3;
@end

@implementation SafariProfileDelegate

- (id)sfWebExtensionsControllersForAllProfiles:(id)a3
{
  v3 = +[SafariDiagnosticExtension defaultWebExtensionsController];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (id)sfWebExtensionsControllersContentBlockerManagersForAllProfiles:(id)a3
{
  v3 = +[SafariDiagnosticExtension defaultContentBlockerManager];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

@end