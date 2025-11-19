@interface APSSimulatedReceiverFinalize
@end

@implementation APSSimulatedReceiverFinalize

void ___APSSimulatedReceiverFinalize_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 100) = 0;
  *(v2 + 96) = 0;
  *(v2 + 88) = 0;
  v3 = *(v2 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 16) = 0;
    v2 = *(a1 + 32);
  }

  dispatch_source_cancel(*(v2 + 64));
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  if (v5)
  {
    dispatch_release(v5);
    *(*(a1 + 32) + 64) = 0;
    v4 = *(a1 + 32);
  }

  v6 = *(v4 + 72);
  if (v6)
  {
    dispatch_release(v6);
    *(*(a1 + 32) + 72) = 0;
  }
}

@end