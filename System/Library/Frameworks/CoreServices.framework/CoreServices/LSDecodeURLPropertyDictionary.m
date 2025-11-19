@interface LSDecodeURLPropertyDictionary
@end

@implementation LSDecodeURLPropertyDictionary

void ___LSDecodeURLPropertyDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = _LSReplaceURLPropertyValueForDecoding(v5);

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

@end