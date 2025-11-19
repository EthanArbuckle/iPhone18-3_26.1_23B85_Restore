@interface LAAuthenticationBiometricMethodShim
@end

@implementation LAAuthenticationBiometricMethodShim

uint64_t __54___LAAuthenticationBiometricMethodShim_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_LAAuthenticationBiometricMethodShim);
  v1 = sharedInstance_shim;
  sharedInstance_shim = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end