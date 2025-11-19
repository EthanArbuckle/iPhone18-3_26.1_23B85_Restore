@interface LSPlugInKitProxy(UserNotifications)
- (id)un_applicationBundleIdentifier;
- (id)un_applicationBundleURL;
@end

@implementation LSPlugInKitProxy(UserNotifications)

- (id)un_applicationBundleIdentifier
{
  v1 = [a1 containingBundle];
  v2 = [v1 bundleIdentifier];

  return v2;
}

- (id)un_applicationBundleURL
{
  v1 = [a1 containingBundle];
  v2 = [v1 bundleURL];

  return v2;
}

@end