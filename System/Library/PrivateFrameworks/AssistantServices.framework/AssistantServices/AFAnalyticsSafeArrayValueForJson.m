@interface AFAnalyticsSafeArrayValueForJson
@end

@implementation AFAnalyticsSafeArrayValueForJson

void ___AFAnalyticsSafeArrayValueForJson_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _AFAnalyticsMapToSafeValueForJson(a2, *(a1 + 48));
  if (**(a1 + 48) == 1)
  {
    v11 = v5;
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v6 setObject:v11 forKey:v10];

    v5 = v11;
  }
}

void ___AFAnalyticsSafeArrayValueForJson_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 setObject:v5 atIndexedSubscript:{objc_msgSend(a2, "integerValue")}];
}

@end