@interface APLegacyFeatureFlags
- (APDeviceCapabilityEngine)capabilityEngine;
@end

@implementation APLegacyFeatureFlags

- (APDeviceCapabilityEngine)capabilityEngine
{
  v2 = [APDeviceCapabilityEngine alloc];
  v9 = objc_msgSend_deviceCapabilityEngine(APLegacyFeatureFlagsInternal, v3, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_initWithBuilder_(v2, v10, v9, v11, v12, v13, v14);

  return v15;
}

@end