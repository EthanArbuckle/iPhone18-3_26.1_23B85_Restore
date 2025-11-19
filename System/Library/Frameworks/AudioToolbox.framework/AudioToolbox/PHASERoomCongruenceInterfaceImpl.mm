@interface PHASERoomCongruenceInterfaceImpl
- (void)setRoomCongruenceParameters:(id)a3;
@end

@implementation PHASERoomCongruenceInterfaceImpl

- (void)setRoomCongruenceParameters:(id)a3
{
  v3 = a3;
  cf = v3;
  if (v3)
  {
    CFRetain(v3);
    v7 = cf;
    v4 = CFGetTypeID(cf);
    if (v4 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v7 = 0;
  }

  if (LoadSpatialTrackingServiceDylib(void)::onceToken != -1)
  {
    dispatch_once(&LoadSpatialTrackingServiceDylib(void)::onceToken, &__block_literal_global_3422);
  }

  if (pSTSSetRoomConfigurationDictionary)
  {
    pSTSSetRoomConfigurationDictionary(v7, 0);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

@end