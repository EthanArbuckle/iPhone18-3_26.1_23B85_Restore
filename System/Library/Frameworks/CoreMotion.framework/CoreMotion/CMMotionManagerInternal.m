@interface CMMotionManagerInternal
- (CMMotionManagerInternal)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)teardownPrivate;
@end

@implementation CMMotionManagerInternal

- (id).cxx_construct
{
  *(self + 568) = 0u;
  *(self + 40) = 0u;
  return self;
}

- (CMMotionManagerInternal)init
{
  v9.receiver = self;
  v9.super_class = CMMotionManagerInternal;
  v2 = [(CMMotionManagerInternal *)&v9 init];
  if (v2)
  {
    *(v2 + 2) = 0;
    *(v2 + 2) = 0;
    *(v2 + 3) = 0x3F847AE147AE147BLL;
    *(v2 + 4) = 0;
    *(v2 + 40) = 0u;
    *(v2 + 7) = 0xBFF0000000000000;
    *(v2 + 10) = 0;
    *(v2 + 11) = 0x3F847AE147AE147BLL;
    *(v2 + 12) = 0;
    *(v2 + 104) = 0u;
    *(v2 + 15) = 0xBFF0000000000000;
    *(v2 + 17) = 0;
    *(v2 + 18) = 0x3F847AE147AE147BLL;
    *(v2 + 19) = 0;
    *(v2 + 10) = 0u;
    *(v2 + 22) = 0xBFF0000000000000;
    *(v2 + 24) = 0;
    *(v2 + 25) = 0x3F847AE147AE147BLL;
    *(v2 + 13) = 0u;
    *(v2 + 28) = 0;
    *(v2 + 29) = 0xBFF0000000000000;
    *(v2 + 32) = 0;
    *(v2 + 33) = 0x3F847AE147AE147BLL;
    *(v2 + 36) = 0;
    *(v2 + 74) = 0;
    *(v2 + 17) = 0u;
    *(v2 + 38) = 1;
    *(v2 + 147) = 0;
    v2[584] = 1;
    *(v2 + 78) = 256;
    v2[316] = 0;
    *(v2 + 44) = 0;
    *(v2 + 20) = xmmword_19B7B9B90;
    *(v2 + 21) = 0u;
    v2[360] = 0;
    *(v2 + 46) = 0;
    *(v2 + 47) = 0x3FA47AE147AE147BLL;
    *(v2 + 24) = 0u;
    *(v2 + 50) = 0;
    *(v2 + 51) = 0xBFF0000000000000;
    v2[432] = 0;
    *(v2 + 440) = 0u;
    *(v2 + 456) = 0u;
    *(v2 + 472) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 66) = 0;
    *(v2 + 268) = 257;
    v2[538] = 0;
    *(v2 + 616) = 0u;
    v5 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v3, v4);
    objc_msgSend_bundleIdentifier(v5, v6, v7);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMMotionManagerInternal;
  [(CMMotionManagerInternal *)&v3 dealloc];
}

- (void)teardownPrivate
{
  fPrivateDeviceMotionCallbackInfo = self->fPrivateDeviceMotionCallbackInfo;
  if (fPrivateDeviceMotionCallbackInfo)
  {
    v4 = MEMORY[0x19EAE71C0](fPrivateDeviceMotionCallbackInfo, a2);
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->fPrivateDeviceMotionCallbackInfo = 0;

  *&self->fPrivateDeviceMotionUse9Axis = 0;
}

@end