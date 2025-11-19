@interface HKCalculateWorkoutDuration
@end

@implementation HKCalculateWorkoutDuration

double ___HKCalculateWorkoutDuration_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 timeIntervalSinceDate:a2];
  v4 = *(*(a1 + 32) + 8);
  result = v5 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

@end