@interface RemoveEvent
@end

@implementation RemoveEvent

void __fpic_RemoveEvent_block_invoke(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    fpic_ServiceCurrentEvent(v2, MEMORY[0x1E6960C70]);
    CFRelease(v3);
  }

  v4 = *(a1 + 32);

  CFRelease(v4);
}

@end