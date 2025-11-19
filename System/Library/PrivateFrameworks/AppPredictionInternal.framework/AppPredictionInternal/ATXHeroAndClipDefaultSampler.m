@interface ATXHeroAndClipDefaultSampler
- (BOOL)_isEventEligibleForSampling:(id)a3;
- (id)sampleEvents:(id)a3 numToSample:(unint64_t)a4;
@end

@implementation ATXHeroAndClipDefaultSampler

- (BOOL)_isEventEligibleForSampling:(id)a3
{
  v3 = a3;
  v4 = [v3 location];
  v5 = [MEMORY[0x277D41BF8] sharedInstance];
  v6 = [v5 isLocationNearKnownTypeLocationOfInterest:v4] ^ 1;

  v7 = +[_ATXGlobals sharedInstance];
  if (([v3 isClip] & 1) == 0)
  {
    v8 = [v3 bundleId];
    v9 = [v7 launchAndLocationHarvesterAppBlacklist];
    v10 = [ATXLaunchAndLocationFilterer appBundleIdIsBlacklisted:v8 blacklist:v9];

    v11 = [v3 bundleId];
    v12 = [v7 launchAndLocationHarvesterGenreIdBlacklist];
    v6 &= (v10 | [ATXLaunchAndLocationFilterer genreIdIsBlacklistedGivenAppBundleId:v11 blacklist:v12]) ^ 1;
  }

  v13 = [v4 timestamp];
  v14 = ![ATXLaunchAndLocationFilterer locationIsStaleOrNotAccurateEnough:v4 now:v13];

  return v6 & v14;
}

- (id)sampleEvents:(id)a3 numToSample:(unint64_t)a4
{
  v6 = a3;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__ATXHeroAndClipDefaultSampler_sampleEvents_numToSample___block_invoke;
  v19[3] = &unk_278598440;
  v19[4] = self;
  v7 = [MEMORY[0x277CCAC30] predicateWithBlock:v19];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  v9 = [v8 count];
  if (v9 < a4)
  {
    a4 = v9;
  }

  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  if ([v8 count])
  {
    v11 = 0;
    do
    {
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
      [v10 setObject:v12 atIndexedSubscript:v11];

      ++v11;
    }

    while (v11 < [v8 count]);
  }

  v13 = [MEMORY[0x277CEBCC0] sampleWeightedArray:v10 numToSample:a4];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
  if (a4)
  {
    v15 = 0;
    do
    {
      v16 = [v13 objectAtIndexedSubscript:v15];
      v17 = [v8 objectAtIndexedSubscript:{objc_msgSend(v16, "unsignedIntegerValue")}];
      [v14 setObject:v17 atIndexedSubscript:v15];

      ++v15;
    }

    while (a4 != v15);
  }

  return v14;
}

@end