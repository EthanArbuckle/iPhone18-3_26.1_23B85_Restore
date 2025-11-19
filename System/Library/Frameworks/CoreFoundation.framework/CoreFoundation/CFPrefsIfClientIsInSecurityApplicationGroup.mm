@interface CFPrefsIfClientIsInSecurityApplicationGroup
@end

@implementation CFPrefsIfClientIsInSecurityApplicationGroup

uint64_t ___CFPrefsIfClientIsInSecurityApplicationGroup_block_invoke(uint64_t a1, CFTypeRef cf1, _BYTE *a3)
{
  result = CFEqual(cf1, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40);
    *a3 = 1;
  }

  return result;
}

@end