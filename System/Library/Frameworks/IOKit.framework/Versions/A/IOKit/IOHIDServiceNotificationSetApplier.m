@interface IOHIDServiceNotificationSetApplier
@end

@implementation IOHIDServiceNotificationSetApplier

uint64_t ____IOHIDServiceNotificationSetApplier_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    return a4(a5, a6, *(result + 32));
  }

  return result;
}

@end