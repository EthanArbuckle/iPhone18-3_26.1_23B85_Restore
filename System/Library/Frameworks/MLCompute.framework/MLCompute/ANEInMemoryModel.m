@interface ANEInMemoryModel
@end

@implementation ANEInMemoryModel

void *__softLinkClass_ANEInMemoryModel_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "OBJC_CLASS_$__ANEInMemoryModel");
  softLinkClass_ANEInMemoryModel_softLinkClass_ANEInMemoryModel = result;
  return result;
}

@end