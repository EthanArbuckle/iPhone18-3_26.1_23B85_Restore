@interface ATXHeroAndClipDefaultSampler
- (BOOL)_isEventEligibleForSampling:(id)sampling;
- (id)sampleEvents:(id)events numToSample:(unint64_t)sample;
@end

@implementation ATXHeroAndClipDefaultSampler

- (BOOL)_isEventEligibleForSampling:(id)sampling
{
  samplingCopy = sampling;
  location = [samplingCopy location];
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  v6 = [mEMORY[0x277D41BF8] isLocationNearKnownTypeLocationOfInterest:location] ^ 1;

  v7 = +[_ATXGlobals sharedInstance];
  if (([samplingCopy isClip] & 1) == 0)
  {
    bundleId = [samplingCopy bundleId];
    launchAndLocationHarvesterAppBlacklist = [v7 launchAndLocationHarvesterAppBlacklist];
    v10 = [ATXLaunchAndLocationFilterer appBundleIdIsBlacklisted:bundleId blacklist:launchAndLocationHarvesterAppBlacklist];

    bundleId2 = [samplingCopy bundleId];
    launchAndLocationHarvesterGenreIdBlacklist = [v7 launchAndLocationHarvesterGenreIdBlacklist];
    v6 &= (v10 | [ATXLaunchAndLocationFilterer genreIdIsBlacklistedGivenAppBundleId:bundleId2 blacklist:launchAndLocationHarvesterGenreIdBlacklist]) ^ 1;
  }

  timestamp = [location timestamp];
  v14 = ![ATXLaunchAndLocationFilterer locationIsStaleOrNotAccurateEnough:location now:timestamp];

  return v6 & v14;
}

- (id)sampleEvents:(id)events numToSample:(unint64_t)sample
{
  eventsCopy = events;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__ATXHeroAndClipDefaultSampler_sampleEvents_numToSample___block_invoke;
  v19[3] = &unk_278598440;
  v19[4] = self;
  v7 = [MEMORY[0x277CCAC30] predicateWithBlock:v19];
  v8 = [eventsCopy filteredArrayUsingPredicate:v7];

  v9 = [v8 count];
  if (v9 < sample)
  {
    sample = v9;
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

  v13 = [MEMORY[0x277CEBCC0] sampleWeightedArray:v10 numToSample:sample];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:sample];
  if (sample)
  {
    v15 = 0;
    do
    {
      v16 = [v13 objectAtIndexedSubscript:v15];
      v17 = [v8 objectAtIndexedSubscript:{objc_msgSend(v16, "unsignedIntegerValue")}];
      [v14 setObject:v17 atIndexedSubscript:v15];

      ++v15;
    }

    while (sample != v15);
  }

  return v14;
}

@end