@interface AudioServerPluginInterruptionHandler
@end

@implementation AudioServerPluginInterruptionHandler

void __manager_AudioServerPluginInterruptionHandler_block_invoke(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    if (!*(CMBaseObjectGetDerivedStorage() + 1))
    {
      manager_asyncRegisterAirPlayHALDriverInternal(v3);
    }

    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

@end