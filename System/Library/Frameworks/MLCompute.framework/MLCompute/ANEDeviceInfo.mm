@interface ANEDeviceInfo
@end

@implementation ANEDeviceInfo

void *__softLinkClass_ANEDeviceInfo_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_0 != -1)
  {
    __29__MLCPlatformInfo_aneSubType__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_0, "OBJC_CLASS_$__ANEDeviceInfo");
  softLinkClass_ANEDeviceInfo_softLinkClass_ANEDeviceInfo = result;
  return result;
}

void *__softLinkClass_ANEDeviceInfo_block_invoke_0()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "OBJC_CLASS_$__ANEDeviceInfo");
  softLinkClass_ANEDeviceInfo_softLinkClass_ANEDeviceInfo_0 = result;
  return result;
}

void *__softLinkClass_ANEDeviceInfo_block_invoke_1()
{
  if (AppleNeuralEngineLibrary_onceToken_2 != -1)
  {
    __isAppleNeuralEngineAPIAvailable_block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_2, "OBJC_CLASS_$__ANEDeviceInfo");
  softLinkClass_ANEDeviceInfo_softLinkClass_ANEDeviceInfo_1 = result;
  return result;
}

@end