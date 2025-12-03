@interface LSPlugInKitProxy(UserNotifications)
- (id)un_applicationBundleIdentifier;
- (id)un_applicationBundleURL;
@end

@implementation LSPlugInKitProxy(UserNotifications)

- (id)un_applicationBundleIdentifier
{
  containingBundle = [self containingBundle];
  bundleIdentifier = [containingBundle bundleIdentifier];

  return bundleIdentifier;
}

- (id)un_applicationBundleURL
{
  containingBundle = [self containingBundle];
  bundleURL = [containingBundle bundleURL];

  return bundleURL;
}

@end