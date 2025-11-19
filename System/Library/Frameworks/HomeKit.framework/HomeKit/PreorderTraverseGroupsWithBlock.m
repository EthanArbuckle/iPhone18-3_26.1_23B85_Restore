@interface PreorderTraverseGroupsWithBlock
@end

@implementation PreorderTraverseGroupsWithBlock

void ___PreorderTraverseGroupsWithBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 keyPath];
  _PreorderTraverseGroupsWithBlock(v4, v5, *(a1 + 40));
}

@end