@interface IOHIDEventSystemClientQueueCallback
@end

@implementation IOHIDEventSystemClientQueueCallback

uint64_t ____IOHIDEventSystemClientQueueCallback_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 208);
  if (v3)
  {
    return (*(v3 + 16))(*(v2 + 208), *(v2 + 216), *(v2 + 224), *(a1 + 40), a2);
  }

  else
  {
    return (*(v2 + 200))(*(v2 + 216), *(v2 + 224), *(a1 + 40), a2);
  }
}

@end