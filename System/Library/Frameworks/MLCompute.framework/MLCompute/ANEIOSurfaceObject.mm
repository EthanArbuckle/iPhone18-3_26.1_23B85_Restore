@interface ANEIOSurfaceObject
@end

@implementation ANEIOSurfaceObject

void *__softLinkClass_ANEIOSurfaceObject_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken != -1)
  {
    __30___MLCANEIOSurface_initialize__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary, "OBJC_CLASS_$__ANEIOSurfaceObject");
  softLinkClass_ANEIOSurfaceObject_softLinkClass_ANEIOSurfaceObject = result;
  return result;
}

void *__softLinkClass_ANEIOSurfaceObject_block_invoke_0()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "OBJC_CLASS_$__ANEIOSurfaceObject");
  softLinkClass_ANEIOSurfaceObject_softLinkClass_ANEIOSurfaceObject_0 = result;
  return result;
}

@end