@interface C3DNodeCopyChildNodesPassingTest
@end

@implementation C3DNodeCopyChildNodesPassingTest

uint64_t ___C3DNodeCopyChildNodesPassingTest_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = _C3DNodeCopyChildNodesPassingTest(a2, *(a1 + 32), *(a1 + 48), *(a1 + 40));
  if ((result & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

@end