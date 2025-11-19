@interface InjectAllModifiersIfNeeded
@end

@implementation InjectAllModifiersIfNeeded

uint64_t ____InjectAllModifiersIfNeeded_block_invoke_3(uint64_t a1, void *a2)
{
  result = __DefineForShaderModifierStandardUniformPerNode(a2);
  if (result)
  {
    v4 = result;
    v5 = *(*(a1 + 32) + 16);

    return [v5 addObject:v4];
  }

  return result;
}

@end