@interface IOHIDEventSystemFilterEvent
@end

@implementation IOHIDEventSystemFilterEvent

uint64_t ____IOHIDEventSystemFilterEvent_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  v4 = *(v2 + 24);
  v3 = v2 + 24;
  if (v4)
  {
    return _IOHIDEventSystemConnectionFilterEvent(a2, *(result + 40), v3);
  }

  return result;
}

@end