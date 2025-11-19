@interface IOHIDEventSystemClientUngroupAndDispatchEventFilter
@end

@implementation IOHIDEventSystemClientUngroupAndDispatchEventFilter

void ___IOHIDEventSystemClientUngroupAndDispatchEventFilter_block_invoke(uint64_t a1, const void *a2)
{
  if (_IOHIDEventSystemClientDispatchEventFilter(*(a1 + 40), *(a1 + 48), a2))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v4 = *(a1 + 56);

    CFArrayAppendValue(v4, a2);
  }
}

@end