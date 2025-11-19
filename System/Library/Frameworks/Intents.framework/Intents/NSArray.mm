@interface NSArray
@end

@implementation NSArray

void __51__NSArray_Intents___intents_indexingRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 _intents_indexingRepresentation];
  [v2 addObject:v3];
}

BOOL __41__NSArray_INKeyImageProducing___keyImage__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F02E1E10])
  {
    v3 = [v2 _keyImage];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __69__NSArray_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

void __69__NSArray_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 addObject:v2];
}

void __40__NSArray_Intents__descriptionAtIndent___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [a2 descriptionAtIndent:a1[6] + 1];
  [v2 appendFormat:@"%@    %@, ", v3, v4];
}

@end