@interface CFPrefsIsAppleInternal
@end

@implementation CFPrefsIsAppleInternal

uint64_t ___CFPrefsIsAppleInternal_block_invoke()
{
  result = access("/AppleInternal", 0);
  if (!result)
  {
    _CFPrefsIsAppleInternal_internal = 1;
  }

  return result;
}

@end