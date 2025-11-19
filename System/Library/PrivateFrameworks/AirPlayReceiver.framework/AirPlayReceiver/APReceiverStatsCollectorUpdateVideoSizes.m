@interface APReceiverStatsCollectorUpdateVideoSizes
@end

@implementation APReceiverStatsCollectorUpdateVideoSizes

__n128 __APReceiverStatsCollectorUpdateVideoSizes_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 144) = *(a1 + 40);
  *(*(a1 + 32) + 176) = *(a1 + 56);
  result = *(a1 + 72);
  *(*(a1 + 32) + 160) = result;
  return result;
}

@end