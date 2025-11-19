@interface AFAnalyticsSafeDictionaryValueForJson
@end

@implementation AFAnalyticsSafeDictionaryValueForJson

void ___AFAnalyticsSafeDictionaryValueForJson_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = _AFAnalyticsMapToSafeValueForJson(a3, *(a1 + 48));
  if (**(a1 + 48) == 1)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 setObject:v5 forKey:v10];
  }
}

@end