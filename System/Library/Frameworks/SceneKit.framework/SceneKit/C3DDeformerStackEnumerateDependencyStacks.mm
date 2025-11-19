@interface C3DDeformerStackEnumerateDependencyStacks
@end

@implementation C3DDeformerStackEnumerateDependencyStacks

uint64_t ____C3DDeformerStackEnumerateDependencyStacks_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = C3DNodeGetDeformerStack([a3 nodeRef]);
  if (result)
  {
    v5 = *(*(a1 + 32) + 16);

    return v5();
  }

  return result;
}

@end