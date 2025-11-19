@interface WaitUntilConnectedEx
@end

@implementation WaitUntilConnectedEx

uint64_t __stream_WaitUntilConnectedEx_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 24))
  {
    v2 = -16617;
  }

  else
  {
    v2 = *(v1 + 48);
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

@end