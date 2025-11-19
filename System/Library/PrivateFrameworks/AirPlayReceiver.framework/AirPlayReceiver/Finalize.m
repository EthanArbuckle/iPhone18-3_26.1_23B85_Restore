@interface Finalize
@end

@implementation Finalize

void ___Finalize_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 24));
    dispatch_release(v3);
    *(*(a1 + 32) + 24) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 32);
  if (v4)
  {
    dispatch_source_cancel(*(v2 + 32));
    dispatch_release(v4);
    *(*(a1 + 32) + 32) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 56) = 0;
  *(*(a1 + 32) + 48) = 0;
}

@end