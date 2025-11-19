@interface InjectModifiers
@end

@implementation InjectModifiers

uint64_t ____InjectModifiers_block_invoke(uint64_t a1, void *a2)
{
  result = __DefineForShaderModifierStandardUniformPerNode(a2);
  if (result)
  {
    v4 = result;
    v5 = *(*(a1 + 32) + 8);

    return [v5 setObject:&stru_282DCC058 forKeyedSubscript:v4];
  }

  return result;
}

@end