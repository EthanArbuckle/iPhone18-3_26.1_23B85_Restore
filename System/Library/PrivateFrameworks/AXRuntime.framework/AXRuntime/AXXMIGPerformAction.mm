@interface AXXMIGPerformAction
@end

@implementation AXXMIGPerformAction

uint64_t ___AXXMIGPerformAction_block_invoke(uint64_t a1)
{
  result = xmmword_1ED655338(*(a1 + 44), *(a1 + 52), *(a1 + 40), gUserData);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end