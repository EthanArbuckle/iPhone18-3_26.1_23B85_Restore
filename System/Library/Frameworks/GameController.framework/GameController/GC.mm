@interface GC
@end

@implementation GC

void __GC_IOHIDSetLEDs_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  IOHIDServiceClientSetElementValue();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  IOHIDServiceClientSetElementValue();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  IOHIDServiceClientSetElementValue();
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  IOHIDServiceClientSetElementValue();
  v10 = *(a1 + 32);

  CFRelease(v10);
}

@end