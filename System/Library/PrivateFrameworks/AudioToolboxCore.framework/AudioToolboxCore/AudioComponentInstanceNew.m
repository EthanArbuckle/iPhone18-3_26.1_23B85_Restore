@interface AudioComponentInstanceNew
@end

@implementation AudioComponentInstanceNew

uint64_t __AudioComponentInstanceNew_OutOfProcess_block_invoke(uint64_t result, uint64_t a2, int a3)
{
  **(result + 48) = a2;
  *(*(*(result + 32) + 8) + 24) = a3;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

@end