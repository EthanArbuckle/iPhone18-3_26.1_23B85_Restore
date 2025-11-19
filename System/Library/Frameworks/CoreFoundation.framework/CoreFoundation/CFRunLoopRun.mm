@interface CFRunLoopRun
@end

@implementation CFRunLoopRun

void ____CFRunLoopRun_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  kdebug_trace();
  v3 = *(a1 + 32);

  CFRunLoopWakeUp(v3);
}

@end