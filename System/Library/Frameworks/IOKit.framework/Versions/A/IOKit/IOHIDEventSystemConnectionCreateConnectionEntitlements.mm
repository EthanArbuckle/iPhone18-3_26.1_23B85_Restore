@interface IOHIDEventSystemConnectionCreateConnectionEntitlements
@end

@implementation IOHIDEventSystemConnectionCreateConnectionEntitlements

uint64_t ____IOHIDEventSystemConnectionCreateConnectionEntitlements_block_invoke(uint64_t a1, char *__s1, void *a3)
{
  if (strstr(__s1, ".hid") || strstr(__s1, ".iohid"))
  {
    xpc_dictionary_set_value(*(a1 + 32), __s1, a3);
  }

  return 1;
}

@end