@interface ANEQoSMapper
@end

@implementation ANEQoSMapper

void *__softLinkClass_ANEQoSMapper_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "OBJC_CLASS_$__ANEQoSMapper");
  softLinkClass_ANEQoSMapper_softLinkClass_ANEQoSMapper = result;
  return result;
}

@end