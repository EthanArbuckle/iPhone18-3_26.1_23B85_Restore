@interface LTDisambiguableResult
@end

@implementation LTDisambiguableResult

void __61___LTDisambiguableResult_initWithSentences_joinedWithString___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 copy];
  v6 = v5;
  v7 = v5;
  if (a3)
  {
    [v5 _insertPrefix:*(a1 + 32)];
    v6 = v7;
  }

  [*(a1 + 40) addObject:v6];
}

void __58___LTDisambiguableResult_combineResults_joinedWithString___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 copy];
  v8 = v5;
  if (a3)
  {
    [v5 _insertPrefix:*(a1 + 32)];
    v5 = v8;
  }

  v6 = *(a1 + 40);
  v7 = [v5 sentences];
  [v6 addObjectsFromArray:v7];
}

uint64_t __43___LTDisambiguableResult_sentenceWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __55___LTDisambiguableResult_isGenderDisambiguationEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  isGenderDisambiguationEnabled_isGenderDisambiguationEnabled = result;
  return result;
}

@end