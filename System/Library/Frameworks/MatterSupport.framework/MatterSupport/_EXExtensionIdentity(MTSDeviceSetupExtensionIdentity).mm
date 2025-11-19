@interface _EXExtensionIdentity(MTSDeviceSetupExtensionIdentity)
- (id)containingAppBundleURL;
@end

@implementation _EXExtensionIdentity(MTSDeviceSetupExtensionIdentity)

- (id)containingAppBundleURL
{
  v1 = [a1 containingBundleRecord];
  v2 = [v1 URL];

  return v2;
}

@end