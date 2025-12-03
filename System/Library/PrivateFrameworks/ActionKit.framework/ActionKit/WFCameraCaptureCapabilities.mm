@interface WFCameraCaptureCapabilities
+ (WFCameraCaptureCapabilities)capabilities;
- (BOOL)isSupportedMode:(int64_t)mode withDevice:(int64_t)device;
- (WFCameraCaptureCapabilities)init;
@end

@implementation WFCameraCaptureCapabilities

- (BOOL)isSupportedMode:(int64_t)mode withDevice:(int64_t)device
{
  capabilities = [(WFCameraCaptureCapabilities *)self capabilities];
  LOBYTE(device) = [capabilities isSupportedMode:mode withDevice:device];

  return device;
}

- (WFCameraCaptureCapabilities)init
{
  v9.receiver = self;
  v9.super_class = WFCameraCaptureCapabilities;
  v2 = [(WFCameraCaptureCapabilities *)&v9 init];
  if (v2)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v3 = getCAMCaptureCapabilitiesClass_softClass;
    v14 = getCAMCaptureCapabilitiesClass_softClass;
    if (!getCAMCaptureCapabilitiesClass_softClass)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __getCAMCaptureCapabilitiesClass_block_invoke;
      v10[3] = &unk_278C222B8;
      v10[4] = &v11;
      __getCAMCaptureCapabilitiesClass_block_invoke(v10);
      v3 = v12[3];
    }

    v4 = v3;
    _Block_object_dispose(&v11, 8);
    v5 = [[v3 alloc] initWithHostProcess:0];
    capabilities = v2->_capabilities;
    v2->_capabilities = v5;

    v7 = v2;
  }

  return v2;
}

+ (WFCameraCaptureCapabilities)capabilities
{
  if (capabilities_onceToken != -1)
  {
    dispatch_once(&capabilities_onceToken, &__block_literal_global_1317);
  }

  v3 = capabilities_capabilities;

  return v3;
}

void __43__WFCameraCaptureCapabilities_capabilities__block_invoke()
{
  v0 = objc_alloc_init(WFCameraCaptureCapabilities);
  v1 = capabilities_capabilities;
  capabilities_capabilities = v0;
}

@end