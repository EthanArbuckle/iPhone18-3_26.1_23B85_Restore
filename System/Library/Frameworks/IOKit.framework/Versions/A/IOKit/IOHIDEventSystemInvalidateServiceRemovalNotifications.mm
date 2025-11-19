@interface IOHIDEventSystemInvalidateServiceRemovalNotifications
@end

@implementation IOHIDEventSystemInvalidateServiceRemovalNotifications

void ____IOHIDEventSystemInvalidateServiceRemovalNotifications_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CFRetain(*(a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ____IOHIDEventSystemInvalidateServiceRemovalNotifications_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_61_0;
  v5[4] = *(a1 + 32);
  IOHIDNotificationInvalidate(a3, v5);
}

@end