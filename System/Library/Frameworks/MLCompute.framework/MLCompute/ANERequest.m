@interface ANERequest
@end

@implementation ANERequest

void *__softLinkClass_ANERequest_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "OBJC_CLASS_$__ANERequest");
  softLinkClass_ANERequest_softLinkClass_ANERequest = result;
  return result;
}

@end