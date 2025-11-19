@interface NSSet
@end

@implementation NSSet

uint64_t __43__NSSet_HealthKit__hk_symmetricDifference___block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = a2;
  LODWORD(v3) = [v3 containsObject:v4];
  LODWORD(v2) = [*(v2 + 40) containsObject:v4];

  return v3 ^ v2;
}

uint64_t __39__NSSet_HealthKit__hk_mapToDictionary___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return [*(result + 32) setObject:a3 forKeyedSubscript:a2];
    }
  }

  return result;
}

@end