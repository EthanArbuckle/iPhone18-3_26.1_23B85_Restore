@interface IOHIDServiceEventCallback
@end

@implementation IOHIDServiceEventCallback

double ____IOHIDServiceEventCallback_block_invoke(uint64_t a1, const __CFArray *a2)
{
  if (!IOHIDEventGetIntegerValue(a2, 720921))
  {

    return IOHIDEventSetIntegerValue(a2, 720921, 1);
  }

  return result;
}

@end