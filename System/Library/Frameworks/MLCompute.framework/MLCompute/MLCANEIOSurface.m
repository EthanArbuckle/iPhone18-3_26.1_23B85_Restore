@interface MLCANEIOSurface
@end

@implementation MLCANEIOSurface

void __30___MLCANEIOSurface_initialize__block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken != -1)
  {
    __30___MLCANEIOSurface_initialize__block_invoke_cold_1();
  }

  v0 = AppleNeuralEngineLibrary_frameworkLibrary;
  if (AppleNeuralEngineLibrary_frameworkLibrary)
  {
    v0 = softLinkClass_ANEIOSurfaceObject() != 0;
  }

  gIsAppleNeuralEngineAvailable = v0;
}

@end