@interface ATXSlotResolutionStatistics
- (ATXSlotResolutionStatistics)initWithActionKey:(id)a3;
- (double)_totalConfirmRatioStandardDeviation;
- (void)_updateConfirmRatioStatisticsForNewConfirmRatio:(double)a3;
@end

@implementation ATXSlotResolutionStatistics

- (ATXSlotResolutionStatistics)initWithActionKey:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(ATXSlotResolutionStatistics *)a2 initWithActionKey:?];
  }

  v19.receiver = self;
  v19.super_class = ATXSlotResolutionStatistics;
  v7 = [(ATXSlotResolutionStatistics *)&v19 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_actionKey, a3);
    v9 = objc_opt_new();
    statisticsForParameters = v8->_statisticsForParameters;
    v8->_statisticsForParameters = v9;

    v11 = objc_opt_new();
    statisticsForSlotSet = v8->_statisticsForSlotSet;
    v8->_statisticsForSlotSet = v11;

    v8->_totalLaunches = 0.0;
    v8->_slotCount = 0;
    v8->_totalPartOfWeekAndLocationCount = 0.0;
    v8->_totalConfirmRatioCount = 0;
    *&v8->_totalTimeOfDayCount = 0u;
    *&v8->_totalHourWindowCount = 0u;
    *&v8->_totalCoarseTimeOfDayCount = 0u;
    *&v8->_totalPartOfWeekCount = 0u;
    *&v8->_totalMotionTypeCount = 0u;
    v8->_totalConfirmsForAllSlots = 0.0;
    *&v8->_totalRejectsForAllSlots = 0u;
    *&v8->_totalConfirmRatioMean = 0u;
    v13 = objc_opt_new();
    totalUniqueDaysLaunched = v8->_totalUniqueDaysLaunched;
    v8->_totalUniqueDaysLaunched = v13;

    *&v8->_totalConfirmsInSpotlightForAllSlots = 0u;
    *&v8->_totalConfirmsInSpotlightWithinMeanWindowForAllSlots = 0u;
    *&v8->_totalTimeAndLocationCount = 0u;
    *&v8->_totalDayAndLocationCount = 0u;
    *&v8->_totalPrevLocationAndMotionTypeCount = 0u;
    *&v8->_totalTimeAndPrevLocationCount = 0u;
    *&v8->_totalTimeOfDayOccurrences = 0u;
    *&v8->_totalLocationOccurrences = 0u;
    *&v8->_totalPreviousLocationOccurrences = 0u;
    *&v8->_totalTimeAndDayOccurrences = 0u;
    *&v8->_totalDayAndLocationOccurrences = 0u;
    *&v8->_totalPrevLocationAndLocationOccurrences = 0u;
    *&v8->_totalTimeAndPrevLocationOccurrences = 0u;
    *&v8->_totalPartOfWeekAndLocationOccurrences = 0u;
    v15 = objc_opt_new();
    totalUniqueDaysConfirmedOrRejectedInSpotlightWithinMeanWindowForAllSlots = v8->_totalUniqueDaysConfirmedOrRejectedInSpotlightWithinMeanWindowForAllSlots;
    v8->_totalUniqueDaysConfirmedOrRejectedInSpotlightWithinMeanWindowForAllSlots = v15;

    *&v8->_totalConfirmsInLockscreenForAllSlots = 0u;
    *&v8->_totalConfirmsTodayInLockscreenForAllSlots = 0u;
    *&v8->_totalCoarseTimePOWLocationCount = 0u;
    *&v8->_totalConfirmsCoarseTimePOWLocationCount = 0u;
    *&v8->_totalRejectsCoarseTimePOWLocationCount = 0u;
    *&v8->_totalSpecificTimeDOWLocationCount = 0u;
    *&v8->_totalConfirmsSpecificTimeDOWLocationCount = 0u;
    *&v8->_totalRejectsSpecificTimeDOWLocationCount = 0u;
    *&v8->_launchesDayOfWeekInContext = 0u;
    *&v8->_launchesSpecificGeoHashInContext = 0u;
    *&v8->_confirmsTimeOfDayInContext = 0u;
    *&v8->_confirmsDayOfWeekInContext = 0u;
    *&v8->_confirmsCoarseGeoHashInContext = 0u;
    *&v8->_confirmsSpecificGeoHashInContext = 0u;
    *&v8->_homeScreenActionConfirmsOnDayOfWeekInContext = 0u;
    *&v8->_homeScreenActionConfirmsAtTimeOfDayInContext = 0u;
    *&v8->_homeScreenActionConfirmsAtCoarseGeohashInContext = 0u;
    *&v8->_homeScreenActionConfirmsAtSpecificGeohashInContext = 0u;
    *&v8->_homeScreenActionConfirmsAtCoarseTimePOWLocationInContext = 0u;
    *&v8->_homeScreenActionConfirmsAtSpecificTimeDOWLocationInContext = 0u;
    v17 = v8;
  }

  return v8;
}

- (void)_updateConfirmRatioStatisticsForNewConfirmRatio:(double)a3
{
  v3 = self->_totalConfirmRatioCount + 1;
  self->_totalConfirmRatioCount = v3;
  totalConfirmRatioMean = self->_totalConfirmRatioMean;
  v5 = a3 - totalConfirmRatioMean;
  v6 = totalConfirmRatioMean + (a3 - totalConfirmRatioMean) / v3;
  self->_totalConfirmRatioMean = v6;
  self->_totalConfirmRatioSumOfSquaresOfDifferencesFromMean = self->_totalConfirmRatioSumOfSquaresOfDifferencesFromMean + v5 * (a3 - v6);
}

- (double)_totalConfirmRatioStandardDeviation
{
  totalConfirmRatioCount = self->_totalConfirmRatioCount;
  if (totalConfirmRatioCount >= 2)
  {
    return sqrt(self->_totalConfirmRatioSumOfSquaresOfDifferencesFromMean / (totalConfirmRatioCount - 1));
  }

  else
  {
    return 0.0;
  }
}

- (void)initWithActionKey:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXActionStatistics.m" lineNumber:543 description:{@"Invalid parameter not satisfying: %@", @"actionKey"}];
}

@end