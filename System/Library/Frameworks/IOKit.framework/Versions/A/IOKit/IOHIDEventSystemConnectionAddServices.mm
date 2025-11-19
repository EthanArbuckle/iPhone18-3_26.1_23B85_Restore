@interface IOHIDEventSystemConnectionAddServices
@end

@implementation IOHIDEventSystemConnectionAddServices

void ___IOHIDEventSystemConnectionAddServices_block_invoke(uint64_t a1, const void *a2)
{
  if (!_IOHIDEventSystemConnectionContainsService(*(a1 + 32), a2))
  {
    v4 = *(a1 + 40);

    CFArrayAppendValue(v4, a2);
  }
}

@end