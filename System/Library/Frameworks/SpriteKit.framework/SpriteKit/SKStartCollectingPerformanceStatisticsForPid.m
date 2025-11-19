@interface SKStartCollectingPerformanceStatisticsForPid
@end

@implementation SKStartCollectingPerformanceStatisticsForPid

uint64_t ___SKStartCollectingPerformanceStatisticsForPid_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CSIsNull();
  if ((result & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 8);
    *(v7 + 48) = a2;
    *(v7 + 56) = a3;
  }

  return result;
}

@end