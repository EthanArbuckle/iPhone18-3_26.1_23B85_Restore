@interface CFMachPortChecker
@end

@implementation CFMachPortChecker

void ____CFMachPortChecker_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 96));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  v6 = *(v2 + 112);
  *(v2 + 64) = 0;
  if (v4)
  {
    os_unfair_lock_unlock((v2 + 96));
    v4(v2, v5);
    os_unfair_lock_lock((v2 + 96));
  }

  if (v3)
  {
    os_unfair_lock_unlock((v2 + 96));
    CFRunLoopSourceInvalidate(v3);
    CFRelease(v3);
    os_unfair_lock_lock((v2 + 96));
  }

  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    os_unfair_lock_unlock((v2 + 96));
    v6(v5);
    os_unfair_lock_lock((v2 + 96));
  }

  *(v2 + 16) = 2;
  __dmb(0xBu);
  os_unfair_lock_unlock((*(a1 + 32) + 96));
  v8 = *(a1 + 32);

  CFRelease(v8);
}

@end