@interface LSCheckAllContainerStates
@end

@implementation LSCheckAllContainerStates

uint64_t ___LSCheckAllContainerStates_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 2))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    return _LSContainerCheckState(**(result + 40), a2, a3, 0, 0);
  }

  return result;
}

@end