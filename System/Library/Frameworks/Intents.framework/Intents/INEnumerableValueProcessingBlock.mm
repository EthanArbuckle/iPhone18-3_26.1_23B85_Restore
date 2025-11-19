@interface INEnumerableValueProcessingBlock
@end

@implementation INEnumerableValueProcessingBlock

uint64_t ___INEnumerableValueProcessingBlock_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_1F02E1960])
  {
    v5 = [v4 _intents_enumerateObjectsOfClass:*(a1 + 40) withBlock:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end