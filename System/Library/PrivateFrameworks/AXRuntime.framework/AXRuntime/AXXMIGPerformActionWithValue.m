@interface AXXMIGPerformActionWithValue
@end

@implementation AXXMIGPerformActionWithValue

uint64_t ___AXXMIGPerformActionWithValue_block_invoke(uint64_t a1)
{
  result = (*(&xmmword_1ED655338 + 1))(*(a1 + 56), *(a1 + 64), *(a1 + 48), *(*(*(a1 + 40) + 8) + 24), gUserData, *(a1 + 52));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end