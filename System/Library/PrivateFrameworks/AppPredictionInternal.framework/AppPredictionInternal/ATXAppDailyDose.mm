@interface ATXAppDailyDose
@end

@implementation ATXAppDailyDose

void __96___ATXAppDailyDose_initWithAppInFocusStream_timeZone_today_alpha_historicalDosePath_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v2 = *(a1 + 32);
  v3 = v2[2];
  block[2] = __96___ATXAppDailyDose_initWithAppInFocusStream_timeZone_today_alpha_historicalDosePath_completion___block_invoke_2;
  block[3] = &unk_27859A888;
  v4 = v2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 64);
  dispatch_async(v3, block);
}

void __96___ATXAppDailyDose_initWithAppInFocusStream_timeZone_today_alpha_historicalDosePath_completion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _loadHistoricalDoseFrom:*(a1 + 40)])
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = v4[2];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __96___ATXAppDailyDose_initWithAppInFocusStream_timeZone_today_alpha_historicalDosePath_completion___block_invoke_3;
    v6[3] = &unk_27859A860;
    v7 = v4;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    dispatch_async(v5, v6);
  }
}

void __96___ATXAppDailyDose_initWithAppInFocusStream_timeZone_today_alpha_historicalDosePath_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __96___ATXAppDailyDose_initWithAppInFocusStream_timeZone_today_alpha_historicalDosePath_completion___block_invoke_4;
  v4[3] = &unk_2785969B8;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _doTrainingOn:v2 timeZone:v3 completion:v4];
}

uint64_t __96___ATXAppDailyDose_initWithAppInFocusStream_timeZone_today_alpha_historicalDosePath_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __34___ATXAppDailyDose_getDoseForApp___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __41___ATXAppDailyDose_getCurrentDoseForApp___block_invoke(void *a1)
{
  result = [*(a1[4] + 24) currentDoseFor:a1[5]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

void __25___ATXAppDailyDose_train__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v2 = *(a1 + 32);
  v3 = [v2 todayWithTimeZone:v4];
  [v2 _doTrainingOn:v3 timeZone:v4 completion:0];
}

void __54___ATXAppDailyDose__doTrainingOn_timeZone_completion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = [*(a1 + 32) now];
  v5 = [v4 dateByAddingTimeInterval:-2419200.0];

  if (v5 && *(a1 + 40) && [v5 compare:?] == -1)
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 8);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __54___ATXAppDailyDose__doTrainingOn_timeZone_completion___block_invoke_2;
    v35[3] = &unk_27859A8D8;
    v36 = v3;
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v37 = v8;
    v38 = v9;
    [v7 enumerateAppLaunchSessionsBetweenStartDate:v5 endDate:v6 shouldReverse:0 bundleIDFilter:0 block:v35];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:v15];
        [v16 skipTo:*(a1 + 40)];
        v17 = [v16 movingAverage];
        [v2 setObject:v17 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v12);
  }

  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  v20 = *(v19 + 16);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __54___ATXAppDailyDose__doTrainingOn_timeZone_completion___block_invoke_3;
  v25[3] = &unk_27859A928;
  v25[4] = v19;
  v26 = v2;
  v27 = v18;
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v29 = v21;
  v30 = v22;
  v28 = *(a1 + 56);
  v23 = v2;
  dispatch_async(v20, v25);

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __54___ATXAppDailyDose__doTrainingOn_timeZone_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v4 bundleID];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v4 appSessionStartTime];
    v8 = [v4 appSessionEndTime];

    [v6 addDuration:v7 endDate:v8];
  }

  else
  {
    v9 = [_ATXAppHistoricalAverageDose alloc];
    v7 = [v4 appSessionStartTime];
    v8 = [v4 appSessionEndTime];
    v10 = [(_ATXAppHistoricalAverageDose *)v9 initWith:v7 endDate:v8 timeZone:a1[5] alpha:*(a1[6] + 64)];
    v11 = a1[4];
    v12 = [v4 bundleID];

    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  return 1;
}

void __54___ATXAppDailyDose__doTrainingOn_timeZone_completion___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 48));
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54___ATXAppDailyDose__doTrainingOn_timeZone_completion___block_invoke_4;
  v5[3] = &unk_27859A900;
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v7 = v3;
  v8 = v4;
  v6 = *(a1 + 56);
  [v2 _writeHistoricalDoseWithCompletion:v5];
}

id __54___ATXAppDailyDose__doTrainingOn_timeZone_completion___block_invoke_4(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = __atxlog_handle_default();
  v4 = v3;
  v5 = a1[6];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v9 = 136446210;
    v10 = "_ATXAppDailyDose";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v4, OS_SIGNPOST_INTERVAL_END, v5, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", &v9, 0xCu);
  }

  v6 = a1[4];
  result = objc_opt_self();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __57___ATXAppDailyDose_addLaunchForBundleId_date_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  v4 = [v2 now];
  LODWORD(v3) = [v3 isExpiredAt:v4];

  if (v3)
  {
    [*(a1 + 32) _backfillAppDurationMapDBForToday];
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  if (v6)
  {
    v7 = *(v5 + 56);
    v8 = *(a1 + 40);
    v9 = v6;
    [v5 _recordAppDurationForApp:v9 withStartTime:v7 andEndTime:v8];

    v5 = *(a1 + 32);
  }

  objc_storeStrong((v5 + 48), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  result = *(a1 + 56);
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

void __56___ATXAppDailyDose__asyncStopAppUsageAtDate_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = v2;
    v4 = *(*(a1 + 32) + 56);
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = 0;

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(v10 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56___ATXAppDailyDose__asyncStopAppUsageAtDate_completion___block_invoke_2;
    block[3] = &unk_27859A888;
    block[4] = v10;
    v17 = v3;
    v18 = v4;
    v19 = v9;
    v20 = *(a1 + 48);
    v12 = v4;
    v13 = v3;
    dispatch_async(v11, block);
  }

  else
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = *(v14 + 16);

      v15();
    }
  }
}

uint64_t __56___ATXAppDailyDose__asyncStopAppUsageAtDate_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _recordAppDurationForApp:*(a1 + 40) withStartTime:*(a1 + 48) andEndTime:*(a1 + 56)];
  result = *(a1 + 64);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __55___ATXAppDailyDose__writeHistoricalDoseWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[_ATXAppDailyDose _defaultHistoricalDosePath];
  v8 = 0;
  v4 = [v2 writeToFile:v3 options:1073741825 error:&v8];
  v5 = v8;

  if ((v4 & 1) == 0)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __55___ATXAppDailyDose__writeHistoricalDoseWithCompletion___block_invoke_cold_1();
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

uint64_t __53___ATXAppDailyDose__backfillAppDurationMapDBForToday__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 bundleID];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v6 doubleValue];
  v8 = v7;

  v9 = MEMORY[0x277CCABB0];
  [v4 appSessionDuration];
  v11 = [v9 numberWithDouble:v8 + v10];
  v12 = *(a1 + 32);
  v13 = [v4 bundleID];

  [v12 setObject:v11 forKeyedSubscript:v13];
  return 1;
}

void __55___ATXAppDailyDose__writeHistoricalDoseWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Could not write historical dose: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end