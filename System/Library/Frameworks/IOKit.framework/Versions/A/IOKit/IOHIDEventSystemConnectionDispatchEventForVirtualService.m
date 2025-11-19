@interface IOHIDEventSystemConnectionDispatchEventForVirtualService
@end

@implementation IOHIDEventSystemConnectionDispatchEventForVirtualService

void ___IOHIDEventSystemConnectionDispatchEventForVirtualService_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _IOHIDServiceDispatchEvent(*(a1 + 32), *(a1 + 40), a3);
  CFRelease(*(a1 + 40));
  v4 = *(a1 + 32);

  CFRelease(v4);
}

@end