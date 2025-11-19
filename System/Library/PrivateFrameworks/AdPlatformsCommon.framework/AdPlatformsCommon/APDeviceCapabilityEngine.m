@interface APDeviceCapabilityEngine
- (APDeviceCapabilityEngine)initWithBuilder:(id)a3;
- (unsigned)build;
@end

@implementation APDeviceCapabilityEngine

- (APDeviceCapabilityEngine)initWithBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APDeviceCapabilityEngine;
  v6 = [(APDeviceCapabilityEngine *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_capabilityEngine, a3);
  }

  return v7;
}

- (unsigned)build
{
  v7 = objc_msgSend_capabilityEngine(self, a2, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_build(v7, v8, v9, v10, v11, v12, v13);

  return v14;
}

@end