@interface AAFDeviceInfo
+ (BOOL)_hasLocalSecret;
+ (BOOL)deviceIsAudioAccessory;
+ (BOOL)deviceIsiPad;
+ (BOOL)isVirtualMachine;
+ (id)localSecretType;
@end

@implementation AAFDeviceInfo

+ (BOOL)deviceIsAudioAccessory
{
  if (deviceIsAudioAccessory_onceToken != -1)
  {
    +[AAFDeviceInfo deviceIsAudioAccessory];
  }

  return deviceIsAudioAccessory_result;
}

uint64_t __39__AAFDeviceInfo_deviceIsAudioAccessory__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceIsAudioAccessory_result = result == 7;
  return result;
}

+ (BOOL)deviceIsiPad
{
  if (deviceIsiPad_onceToken != -1)
  {
    +[AAFDeviceInfo deviceIsiPad];
  }

  return deviceIsiPad_result;
}

uint64_t __29__AAFDeviceInfo_deviceIsiPad__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceIsiPad_result = result == 3;
  return result;
}

+ (BOOL)isVirtualMachine
{
  if (isVirtualMachine_onceToken != -1)
  {
    +[AAFDeviceInfo isVirtualMachine];
  }

  return isVirtualMachine_result;
}

uint64_t __33__AAFDeviceInfo_isVirtualMachine__block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0);
  if (!result)
  {
    isVirtualMachine_result = v2 != 0;
  }

  return result;
}

+ (id)localSecretType
{
  if (![a1 _hasLocalSecret])
  {
    return @"None";
  }

  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  if ([v2 unlockScreenType])
  {
    v3 = @"Password";
  }

  else
  {
    v3 = @"Passcode";
  }

  return v3;
}

+ (BOOL)_hasLocalSecret
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

@end