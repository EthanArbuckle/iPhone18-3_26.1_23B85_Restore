@interface ANEInMemoryModelDescriptor
@end

@implementation ANEInMemoryModelDescriptor

void *__softLinkClass_ANEInMemoryModelDescriptor_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "OBJC_CLASS_$__ANEInMemoryModelDescriptor");
  softLinkClass_ANEInMemoryModelDescriptor_softLinkClass_ANEInMemoryModelDescriptor = result;
  return result;
}

@end