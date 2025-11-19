@interface ReplicatePattern
@end

@implementation ReplicatePattern

uint64_t __ripc_ReplicatePattern_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 96);
  }

  else
  {
    v2 = 0;
  }

  *(*(*(result + 32) + 8) + 24) |= v2 == *(result + 40);
  return result;
}

@end