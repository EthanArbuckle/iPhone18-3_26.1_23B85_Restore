@interface LSDispatchCoalescedAfterDelay
@end

@implementation LSDispatchCoalescedAfterDelay

void ___LSDispatchCoalescedAfterDelay_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  atomic_fetch_and(*(a1 + 40), 0x7Fu);

  JUMPOUT(0x1865D7C50);
}

@end