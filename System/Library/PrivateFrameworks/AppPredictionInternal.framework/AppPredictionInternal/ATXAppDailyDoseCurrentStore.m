@interface ATXAppDailyDoseCurrentStore
@end

@implementation ATXAppDailyDoseCurrentStore

void *__44___ATXAppDailyDoseCurrentStore_isExpiredAt___block_invoke(void *a1)
{
  v2 = a1[4];
  result = v2[5];
  if ((result || ([v2 _readCacheAndExpiration], (result = *(a1[4] + 40)) != 0)) && (result = objc_msgSend(result, "compare:", a1[5]), result == 1))
  {
    result = [*(a1[4] + 40) timeIntervalSinceDate:a1[5]];
    v5 = v4 > 86400.0;
  }

  else
  {
    v5 = 1;
  }

  *(*(a1[6] + 8) + 24) = v5;
  return result;
}

uint64_t __56___ATXAppDailyDoseCurrentStore_resetWithDurationMap_on___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v4 = [ATXTimeUtil nextStartOfDayAfter:v2 timeZone:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  return [v7 _overwrite];
}

void __47___ATXAppDailyDoseCurrentStore_currentDoseFor___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _getCacheFromFile];
  v2 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  [v2 doubleValue];
  *(*(*(a1 + 48) + 8) + 24) = v3;
}

void __51___ATXAppDailyDoseCurrentStore_increaseDoseFor_by___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getCacheFromFile];
  v3 = MEMORY[0x277CCABB0];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  [v4 doubleValue];
  v6 = [v3 numberWithDouble:v5 + *(a1 + 56)];
  [v2 setObject:v6 forKeyedSubscript:*(a1 + 40)];

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51___ATXAppDailyDoseCurrentStore_increaseDoseFor_by___block_invoke_2;
  v9[3] = &unk_278596C10;
  v9[4] = v7;
  v10 = *(a1 + 48);
  dispatch_async(v8, v9);
}

id __51___ATXAppDailyDoseCurrentStore_increaseDoseFor_by___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _overwrite];
  v2 = *(a1 + 40);
  return objc_opt_self();
}

@end