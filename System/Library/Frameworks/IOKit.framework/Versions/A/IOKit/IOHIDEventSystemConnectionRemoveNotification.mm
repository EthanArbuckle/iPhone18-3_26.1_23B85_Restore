@interface IOHIDEventSystemConnectionRemoveNotification
@end

@implementation IOHIDEventSystemConnectionRemoveNotification

void ___IOHIDEventSystemConnectionRemoveNotification_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_recursive_lock_lock_with_options();
  CFDictionaryRemoveValue(*(*(a1 + 32) + 16), *(a1 + 40));
  v3 = *(a1 + 32);
  os_unfair_recursive_lock_unlock();
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  v4 = *(a1 + 48);

  CFRelease(v4);
}

@end