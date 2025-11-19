@interface ReevaluateCurrentRoute
@end

@implementation ReevaluateCurrentRoute

void __airplayRoute_ReevaluateCurrentRoute_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    airplayRoute_pickableRoutesChangedGuts(*(a1 + 40));
  }
}

@end