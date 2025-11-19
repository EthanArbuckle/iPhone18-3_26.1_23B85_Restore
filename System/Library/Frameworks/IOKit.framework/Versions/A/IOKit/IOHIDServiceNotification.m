@interface IOHIDServiceNotification
@end

@implementation IOHIDServiceNotification

void ____IOHIDServiceNotification_block_invoke_2(uint64_t a1)
{
  CFSetApplyFunction(*(a1 + 32), __IOHIDServiceNotificationSetApplier, *(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void ____IOHIDServiceNotification_block_invoke(uint64_t a1)
{
  CFSetApplyFunction(*(a1 + 32), __IOHIDServiceNotificationSetApplier, *(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

@end