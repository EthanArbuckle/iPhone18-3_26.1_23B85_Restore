@interface ATXAppLaunchHistogram
@end

@implementation ATXAppLaunchHistogram

void __72___ATXAppLaunchHistogram_initWithHistogram_bucketCount_filter_timeBase___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ATXHistogramBundleIdTable sharedInstance];
  v5 = [_ATXActionUtils actionKeyFilterForCandidateBundleIds:v3 candidateActionTypes:0 blacklist:0];
  v8 = [v4 allKeysFilteredBy:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeHistoryForBundleIds:v3];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 removeHistoryForBundleIds:v8];
}

void __72___ATXAppLaunchHistogram_initWithHistogram_bucketCount_filter_timeBase___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CEB3C0] dictionaryWithLegacyPathForClass:objc_opt_class()];
  v5 = v2;
  if (!v2)
  {
    __72___ATXAppLaunchHistogram_initWithHistogram_bucketCount_filter_timeBase___block_invoke_2_cold_1(a1);
    v2 = 0;
  }

  v3 = [v2 objectForKeyedSubscript:@"MinLaunchThreshold"];
  [v3 doubleValue];
  kLaunchThreshold = v4;

  if (*&kLaunchThreshold == 0.0)
  {
    __72___ATXAppLaunchHistogram_initWithHistogram_bucketCount_filter_timeBase___block_invoke_2_cold_2(a1);
  }
}

void __51___ATXAppLaunchHistogram_removeHistoryForBundleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v4 = +[ATXHistogramBundleIdTable sharedInstance];
  v5 = [v4 lookup:*(a1 + 32) into:&v6];

  if (v5)
  {
    [v3[1] deleteWhereA:v6 b:0xFFFFLL];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __52___ATXAppLaunchHistogram_removeHistoryForBundleIds___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v12 = 0;
        v10 = +[ATXHistogramBundleIdTable sharedInstance];
        LODWORD(v9) = [v10 lookup:v9 into:&v12];

        if (v9)
        {
          [v3[1] deleteWhereA:v12 b:0xFFFFLL];
          ++*(*(*(a1 + 40) + 8) + 24);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __60___ATXAppLaunchHistogram_launchPopularityWithBundleId_date___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 50);
  v7 = *(a2 + 8);
  if (*(a2 + 18) == 1)
  {
    v8 = *(a2 + 16);
    v9 = a2;
    LODWORD(v10) = 1.0;
    [v7 lookupSmoothedWithBucketCount:v8 distanceScale:v5 a:v6 b:v10];
  }

  else
  {
    v12 = a2;
    [v7 lookupUnsmoothedA:v5 b:v6];
  }

  v13 = v11;
  v14 = *(a1 + 48);
  v15 = *(a2 + 8);

  [v15 lookupUnsmoothedA:v14 b:0xFFFFLL];
  result = [v4 ratio:v13 over:v16];
  *(*(*(a1 + 40) + 8) + 24) = v18;
  return result;
}

void __82___ATXAppLaunchHistogram_relativeLaunchPopularityWithBundleId_date_distanceScale___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 52);
  v7 = *(a1 + 54);
  v8 = v3[1];
  v14 = v3;
  if (*(v3 + 18) == 1)
  {
    LODWORD(v4) = *(a1 + 48);
    [v8 lookupSmoothedWithBucketCount:*(v3 + 8) distanceScale:v6 a:v7 b:v4];
  }

  else
  {
    [v8 lookupUnsmoothedA:v6 b:v7];
  }

  v10 = *&v9;
  v11 = v14[1];
  if (*(v14 + 18) == 1)
  {
    LODWORD(v9) = *(a1 + 48);
    [v11 lookupSmoothedWithBucketCount:*(v14 + 8) distanceScale:0xFFFFLL a:*(a1 + 54) b:v9];
  }

  else
  {
    [v11 lookupUnsmoothedA:0xFFFFLL b:*(a1 + 54)];
  }

  [v5 ratio:v10 over:v12];
  *(*(*(a1 + 40) + 8) + 24) = v13;
}

void __89___ATXAppLaunchHistogram_relativeLaunchPopularityWithBundleId_elapsedTime_distanceScale___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 52);
  v7 = *(a1 + 54);
  v8 = v3[1];
  v14 = v3;
  if (*(v3 + 18) == 1)
  {
    LODWORD(v4) = *(a1 + 48);
    [v8 lookupSmoothedWithBucketCount:*(v3 + 8) distanceScale:v6 a:v7 b:v4];
  }

  else
  {
    [v8 lookupUnsmoothedA:v6 b:v7];
  }

  v10 = *&v9;
  v11 = v14[1];
  if (*(v14 + 18) == 1)
  {
    LODWORD(v9) = *(a1 + 48);
    [v11 lookupSmoothedWithBucketCount:*(v14 + 8) distanceScale:0xFFFFLL a:*(a1 + 54) b:v9];
  }

  else
  {
    [v11 lookupUnsmoothedA:0xFFFFLL b:*(a1 + 54)];
  }

  [v5 ratio:v10 over:v12];
  *(*(*(a1 + 40) + 8) + 24) = v13;
}

double __70___ATXAppLaunchHistogram_totalTimeOfDayLaunchesForDate_distanceScale___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 44);
  v5 = *(a2 + 8);
  if (*(a2 + 18) == 1)
  {
    LODWORD(a3) = *(a1 + 40);
    [v5 lookupSmoothedWithBucketCount:*(a2 + 16) distanceScale:0xFFFFLL a:v4 b:a3];
  }

  else
  {
    [v5 lookupUnsmoothedA:0xFFFFLL b:v4];
  }

  result = v6;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

double __77___ATXAppLaunchHistogram_totalTimeOfDayLaunchesForElapsedTime_distanceScale___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 44);
  v5 = *(a2 + 8);
  if (*(a2 + 18) == 1)
  {
    LODWORD(a3) = *(a1 + 40);
    [v5 lookupSmoothedWithBucketCount:*(a2 + 16) distanceScale:0xFFFFLL a:v4 b:a3];
  }

  else
  {
    [v5 lookupUnsmoothedA:0xFFFFLL b:v4];
  }

  result = v6;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __61___ATXAppLaunchHistogram_overallLaunchPopularityForBundleId___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = a2[1];
  v7 = a2;
  [v6 lookupUnsmoothedA:v5 b:0xFFFFLL];
  v9 = v8;
  v10 = a2[1];

  [v10 lookupUnsmoothedA:0xFFFFLL b:0xFFFFLL];
  result = [v4 ratio:v9 over:v11];
  *(*(*(a1 + 40) + 8) + 24) = v13;
  return result;
}

double __39___ATXAppLaunchHistogram_totalLaunches__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a2 + 8) lookupUnsmoothedA:0xFFFFLL b:0xFFFFLL];
  result = v3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __52___ATXAppLaunchHistogram_totalLaunchesForBundleIds___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3[1] lookupUnsmoothedA:objc_msgSend(*(a1 + 40) b:{"_eventIdforBundleId:", *(*(&v11 + 1) + 8 * v8), v11), 0xFFFFLL}];
        *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v9;
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __74___ATXAppLaunchHistogram_totalLaunchesForBundleIds_forDate_distanceScale___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 40) _eventIdforBundleId:{*(*(&v14 + 1) + 8 * i), v14}];
        v11 = v3[1];
        if (*(v3 + 18) == 1)
        {
          LODWORD(v10) = *(a1 + 56);
          [v11 lookupSmoothedWithBucketCount:*(v3 + 8) distanceScale:v9 a:*(a1 + 60) b:v10];
        }

        else
        {
          [v11 lookupUnsmoothedA:v9 b:*(a1 + 60)];
        }

        *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v12;
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __70___ATXAppLaunchHistogram_unsmoothedLaunchesForBundleIds_forLocalTime___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3[1] lookupUnsmoothedA:objc_msgSend(*(a1 + 40) b:{"_eventIdforBundleId:", *(*(&v11 + 1) + 8 * v8), v11), *(a1 + 56)}];
        *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v9;
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

double __48___ATXAppLaunchHistogram_bundleHasBeenLaunched___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a2 + 8) lookupUnsmoothedA:*(a1 + 40) b:0xFFFFLL];
  result = v3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __40___ATXAppLaunchHistogram_decayByFactor___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *&v2 = v2;
  return [*(a2 + 8) decayByFactor:v2];
}

uint64_t __50___ATXAppLaunchHistogram_decayWithHalfLifeInDays___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *&v2 = v2;
  return [*(a2 + 8) decayWithHalfLifeInDays:v2];
}

uint64_t __42___ATXAppLaunchHistogram_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v5 = a2;
  [v3 encodeObject:v4 forKey:@"histogramData"];
  [*(a1 + 32) encodeInt32:*(v5 + 8) forKey:@"bucketCount"];
  v6 = *(a1 + 32);
  v7 = *(v5 + 18);

  return [v6 encodeBool:v7 forKey:@"filter"];
}

uint64_t __37___ATXAppLaunchHistogram_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) description];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

double __45___ATXAppLaunchHistogram_entropyForBundleId___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a2 + 8) entropyWhereA:*(a1 + 40) b:0xFFFFLL];
  result = v3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

double __41___ATXAppLaunchHistogram_entropyForDate___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a2 + 8) entropyWhereA:0xFFFFLL b:*(a1 + 40)];
  result = v3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

double __33___ATXAppLaunchHistogram_entropy__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a2 + 8) entropyWhereA:0xFFFFLL b:0xFFFFLL];
  result = v3;
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __72___ATXAppLaunchHistogram_initWithHistogram_bucketCount_filter_timeBase___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_ATXAppLaunchHistogram.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];
}

void __72___ATXAppLaunchHistogram_initWithHistogram_bucketCount_filter_timeBase___block_invoke_2_cold_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_ATXAppLaunchHistogram.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"kLaunchThreshold != 0"}];
}

@end