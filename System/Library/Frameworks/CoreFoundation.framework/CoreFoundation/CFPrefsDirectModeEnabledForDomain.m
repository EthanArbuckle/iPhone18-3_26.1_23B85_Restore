@interface CFPrefsDirectModeEnabledForDomain
@end

@implementation CFPrefsDirectModeEnabledForDomain

uint64_t ___CFPrefsDirectModeEnabledForDomain_block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isDirectModeEnabled];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end