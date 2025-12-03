@interface _EXExtensionIdentity(MTSDeviceSetupExtensionIdentity)
- (id)containingAppBundleURL;
@end

@implementation _EXExtensionIdentity(MTSDeviceSetupExtensionIdentity)

- (id)containingAppBundleURL
{
  containingBundleRecord = [self containingBundleRecord];
  v2 = [containingBundleRecord URL];

  return v2;
}

@end