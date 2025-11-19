@interface IOHIDServiceInit
@end

@implementation IOHIDServiceInit

void ____IOHIDServiceInit_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 440) = 0;
  if (!*(v2 + 444))
  {
    dispatch_source_cancel(*(v2 + 448));
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
}

void ____IOHIDServiceInit_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 444) - 1;
  *(v2 + 444) = v3;
  if (!v3 && (*(v2 + 440) & 1) == 0)
  {
    dispatch_source_cancel(*(v2 + 448));
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
}

@end