@interface SBufConsumerStop
@end

@implementation SBufConsumerStop

void ___SBufConsumerStop_block_invoke(uint64_t a1)
{
  dispatch_source_set_timer(*(*(a1 + 32) + 144), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v2 = *(a1 + 32);
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
}

@end