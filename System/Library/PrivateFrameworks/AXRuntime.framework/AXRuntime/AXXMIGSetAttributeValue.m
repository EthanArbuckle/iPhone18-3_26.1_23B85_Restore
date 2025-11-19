@interface AXXMIGSetAttributeValue
@end

@implementation AXXMIGSetAttributeValue

uint64_t ___AXXMIGSetAttributeValue_block_invoke(uint64_t a1)
{
  result = (*(&gCallbacks + 1))(*(a1 + 52), *(a1 + 60), *(a1 + 48), *(*(*(a1 + 40) + 8) + 24), gUserData);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end