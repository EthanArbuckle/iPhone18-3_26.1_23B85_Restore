@interface ATXActionStatistics
- (ATXActionStatistics)init;
- (void)updateActionStatisticsForSlotResolutionStatistics:(id)statistics candidateActionPredictions:(id)predictions;
@end

@implementation ATXActionStatistics

- (ATXActionStatistics)init
{
  v9.receiver = self;
  v9.super_class = ATXActionStatistics;
  v2 = [(ATXActionStatistics *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    *(v2 + 8) = 0;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 40) = 0;
    *(v2 + 21) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 664) = 0u;
    *(v2 + 680) = 0u;
    *(v2 + 632) = 0u;
    *(v2 + 648) = 0u;
    *(v2 + 600) = 0u;
    *(v2 + 616) = 0u;
    *(v2 + 568) = 0u;
    *(v2 + 584) = 0u;
    *(v2 + 536) = 0u;
    *(v2 + 552) = 0u;
    *(v2 + 504) = 0u;
    *(v2 + 520) = 0u;
    *(v2 + 472) = 0u;
    *(v2 + 488) = 0u;
    *(v2 + 440) = 0u;
    *(v2 + 456) = 0u;
    *(v2 + 408) = 0u;
    *(v2 + 424) = 0u;
    v5 = objc_opt_new();
    v6 = *(v2 + 46);
    *(v2 + 46) = v5;

    *(v2 + 376) = 0u;
    *(v2 + 392) = 0u;
    v7 = v2;
  }

  return v2;
}

- (void)updateActionStatisticsForSlotResolutionStatistics:(id)statistics candidateActionPredictions:(id)predictions
{
  v56 = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  predictionsCopy = predictions;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = [predictionsCopy countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(predictionsCopy);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        scoredAction = [v12 scoredAction];
        predictedItem = [scoredAction predictedItem];

        if (predictedItem)
        {
          v15 = [ATXMinimalSlotResolutionParameters alloc];
          slotSet = [v12 slotSet];
          v17 = [(ATXMinimalSlotResolutionParameters *)v15 initWithAction:predictedItem slots:slotSet];

          v18 = [statisticsCopy[2] objectForKeyedSubscript:v17];
          [(NSMutableDictionary *)self->_statisticsForParameters setObject:v18 forKeyedSubscript:v17];
        }
      }

      v9 = [predictionsCopy countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v9);
  }

  totalTimeOfDayCount = self->_totalTimeOfDayCount;
  self->_totalLaunches = *(statisticsCopy + 4) + self->_totalLaunches;
  self->_totalTimeOfDayCount = *(statisticsCopy + 6) + totalTimeOfDayCount;
  totalHourWindowCount = self->_totalHourWindowCount;
  self->_totalThirtyMinuteWindowCount = *(statisticsCopy + 7) + self->_totalThirtyMinuteWindowCount;
  self->_totalHourWindowCount = *(statisticsCopy + 8) + totalHourWindowCount;
  totalCoarseTimeOfDayCount = self->_totalCoarseTimeOfDayCount;
  self->_totalEightHourWindowCount = *(statisticsCopy + 9) + self->_totalEightHourWindowCount;
  totalPartOfWeekCount = self->_totalPartOfWeekCount;
  self->_totalDayOfWeekCount = *(statisticsCopy + 11) + self->_totalDayOfWeekCount;
  self->_totalPartOfWeekCount = *(statisticsCopy + 12) + totalPartOfWeekCount;
  totalDayAndPrevLocationCount = self->_totalDayAndPrevLocationCount;
  self->_totalPartOfWeekAndLocationCount = *(statisticsCopy + 37) + self->_totalPartOfWeekAndLocationCount;
  totalTimeOfDayOccurrences = self->_totalTimeOfDayOccurrences;
  self->_totalPartOfWeekAndTimeCount = *(statisticsCopy + 38) + self->_totalPartOfWeekAndTimeCount;
  totalMotionTypeCount = self->_totalMotionTypeCount;
  self->_totalLocationCount = *(statisticsCopy + 13) + self->_totalLocationCount;
  self->_totalCoarseTimeOfDayCount = *(statisticsCopy + 10) + totalCoarseTimeOfDayCount;
  self->_totalMotionTypeCount = *(statisticsCopy + 14) + totalMotionTypeCount;
  totalTimeAndLocationCount = self->_totalTimeAndLocationCount;
  self->_totalPrevLocationCount = *(statisticsCopy + 15) + self->_totalPrevLocationCount;
  self->_totalTimeAndLocationCount = *(statisticsCopy + 29) + totalTimeAndLocationCount;
  totalDayAndLocationCount = self->_totalDayAndLocationCount;
  self->_totalTimeAndDayCount = *(statisticsCopy + 30) + self->_totalTimeAndDayCount;
  self->_totalDayAndLocationCount = *(statisticsCopy + 31) + totalDayAndLocationCount;
  totalPrevLocationAndMotionTypeCount = self->_totalPrevLocationAndMotionTypeCount;
  self->_totalTimeAndDayAndLocationCount = *(statisticsCopy + 32) + self->_totalTimeAndDayAndLocationCount;
  self->_totalPrevLocationAndMotionTypeCount = *(statisticsCopy + 33) + totalPrevLocationAndMotionTypeCount;
  totalTimeAndPrevLocationCount = self->_totalTimeAndPrevLocationCount;
  self->_totalPrevLocationAndLocationCount = *(statisticsCopy + 34) + self->_totalPrevLocationAndLocationCount;
  self->_totalTimeAndPrevLocationCount = *(statisticsCopy + 35) + totalTimeAndPrevLocationCount;
  self->_totalDayAndPrevLocationCount = *(statisticsCopy + 36) + totalDayAndPrevLocationCount;
  self->_totalTimeOfDayOccurrences = *(statisticsCopy + 39) + totalTimeOfDayOccurrences;
  totalLocationOccurrences = self->_totalLocationOccurrences;
  self->_totalDayOfWeekOccurrences = *(statisticsCopy + 40) + self->_totalDayOfWeekOccurrences;
  self->_totalLocationOccurrences = *(statisticsCopy + 41) + totalLocationOccurrences;
  totalPreviousLocationOccurrences = self->_totalPreviousLocationOccurrences;
  self->_totalMotionTypeOccurrences = *(statisticsCopy + 42) + self->_totalMotionTypeOccurrences;
  self->_totalPreviousLocationOccurrences = *(statisticsCopy + 43) + totalPreviousLocationOccurrences;
  totalTimeAndDayOccurrences = self->_totalTimeAndDayOccurrences;
  self->_totalPartOfWeekOccurrences = *(statisticsCopy + 44) + self->_totalPartOfWeekOccurrences;
  self->_totalTimeAndDayOccurrences = *(statisticsCopy + 45) + totalTimeAndDayOccurrences;
  totalDayAndLocationOccurrences = self->_totalDayAndLocationOccurrences;
  self->_totalTimeAndLocationOccurrences = *(statisticsCopy + 46) + self->_totalTimeAndLocationOccurrences;
  self->_totalDayAndLocationOccurrences = *(statisticsCopy + 47) + totalDayAndLocationOccurrences;
  totalPrevLocationAndLocationOccurrences = self->_totalPrevLocationAndLocationOccurrences;
  self->_totalTimeAndDayAndLocationOccurrences = *(statisticsCopy + 48) + self->_totalTimeAndDayAndLocationOccurrences;
  self->_totalPrevLocationAndLocationOccurrences = *(statisticsCopy + 49) + totalPrevLocationAndLocationOccurrences;
  totalTimeAndPrevLocationOccurrences = self->_totalTimeAndPrevLocationOccurrences;
  self->_totalPrevLocationAndMotionTypeOccurrences = *(statisticsCopy + 50) + self->_totalPrevLocationAndMotionTypeOccurrences;
  self->_totalTimeAndPrevLocationOccurrences = *(statisticsCopy + 51) + totalTimeAndPrevLocationOccurrences;
  totalPartOfWeekAndLocationOccurrences = self->_totalPartOfWeekAndLocationOccurrences;
  self->_totalDayAndPrevLocationOccurrences = *(statisticsCopy + 52) + self->_totalDayAndPrevLocationOccurrences;
  self->_totalPartOfWeekAndLocationOccurrences = *(statisticsCopy + 53) + totalPartOfWeekAndLocationOccurrences;
  totalConfirms = self->_totalConfirms;
  self->_totalPartOfWeekAndTimeOccurrences = *(statisticsCopy + 54) + self->_totalPartOfWeekAndTimeOccurrences;
  self->_totalConfirms = *(statisticsCopy + 17) + totalConfirms;
  totalExplicitRejectsNoDecay = self->_totalExplicitRejectsNoDecay;
  self->_totalRejects = *(statisticsCopy + 18) + self->_totalRejects;
  self->_totalExplicitRejectsNoDecay = *(statisticsCopy + 19) + totalExplicitRejectsNoDecay;
  totalRejectsInSpotlight = self->_totalRejectsInSpotlight;
  self->_totalConfirmsInSpotlight = *(statisticsCopy + 20) + self->_totalConfirmsInSpotlight;
  self->_totalRejectsInSpotlight = *(statisticsCopy + 21) + totalRejectsInSpotlight;
  totalRejectsInSpotlightWithinMeanWindow = self->_totalRejectsInSpotlightWithinMeanWindow;
  self->_totalConfirmsInSpotlightWithinMeanWindow = *(statisticsCopy + 22) + self->_totalConfirmsInSpotlightWithinMeanWindow;
  self->_totalRejectsInSpotlightWithinMeanWindow = *(statisticsCopy + 23) + totalRejectsInSpotlightWithinMeanWindow;
  [(NSMutableSet *)self->_totalUniqueDaysConfirmedOrRejectedInSpotlightWithinMeanWindow unionSet:statisticsCopy[24]];
  totalRejectsTodayInLockscreen = self->_totalRejectsTodayInLockscreen;
  self->_totalConfirmsTodayInLockscreen = *(statisticsCopy + 25) + self->_totalConfirmsTodayInLockscreen;
  self->_totalRejectsTodayInLockscreen = *(statisticsCopy + 26) + totalRejectsTodayInLockscreen;
  totalRejectsInLockscreen = self->_totalRejectsInLockscreen;
  self->_totalConfirmsInLockscreen = *(statisticsCopy + 27) + self->_totalConfirmsInLockscreen;
  self->_totalRejectsInLockscreen = *(statisticsCopy + 28) + totalRejectsInLockscreen;
  totalCoarseTimePOWLocationOccurrences = self->_totalCoarseTimePOWLocationOccurrences;
  self->_totalCoarseTimePOWLocationCount = *(statisticsCopy + 55) + self->_totalCoarseTimePOWLocationCount;
  self->_totalCoarseTimePOWLocationOccurrences = *(statisticsCopy + 56) + totalCoarseTimePOWLocationOccurrences;
  totalConfirmsCoarseTimePOWLocationOccurrences = self->_totalConfirmsCoarseTimePOWLocationOccurrences;
  self->_totalConfirmsCoarseTimePOWLocationCount = *(statisticsCopy + 57) + self->_totalConfirmsCoarseTimePOWLocationCount;
  self->_totalConfirmsCoarseTimePOWLocationOccurrences = *(statisticsCopy + 58) + totalConfirmsCoarseTimePOWLocationOccurrences;
  totalRejectsCoarseTimePOWLocationOccurrences = self->_totalRejectsCoarseTimePOWLocationOccurrences;
  self->_totalRejectsCoarseTimePOWLocationCount = *(statisticsCopy + 59) + self->_totalRejectsCoarseTimePOWLocationCount;
  self->_totalRejectsCoarseTimePOWLocationOccurrences = *(statisticsCopy + 60) + totalRejectsCoarseTimePOWLocationOccurrences;
  totalSpecificTimeDOWLocationOccurrences = self->_totalSpecificTimeDOWLocationOccurrences;
  self->_totalSpecificTimeDOWLocationCount = *(statisticsCopy + 61) + self->_totalSpecificTimeDOWLocationCount;
  self->_totalSpecificTimeDOWLocationOccurrences = *(statisticsCopy + 62) + totalSpecificTimeDOWLocationOccurrences;
  totalConfirmsSpecificTimeDOWLocationOccurrences = self->_totalConfirmsSpecificTimeDOWLocationOccurrences;
  self->_totalConfirmsSpecificTimeDOWLocationCount = *(statisticsCopy + 63) + self->_totalConfirmsSpecificTimeDOWLocationCount;
  self->_totalConfirmsSpecificTimeDOWLocationOccurrences = *(statisticsCopy + 64) + totalConfirmsSpecificTimeDOWLocationOccurrences;
  totalRejectsSpecificTimeDOWLocationOccurrences = self->_totalRejectsSpecificTimeDOWLocationOccurrences;
  self->_totalRejectsSpecificTimeDOWLocationCount = *(statisticsCopy + 65) + self->_totalRejectsSpecificTimeDOWLocationCount;
  self->_totalRejectsSpecificTimeDOWLocationOccurrences = *(statisticsCopy + 66) + totalRejectsSpecificTimeDOWLocationOccurrences;
  launchesCoarseGeoHashInContext = self->_launchesCoarseGeoHashInContext;
  self->_launchesDayOfWeekInContext = *(statisticsCopy + 67) + self->_launchesDayOfWeekInContext;
  self->_launchesCoarseGeoHashInContext = *(statisticsCopy + 68) + launchesCoarseGeoHashInContext;
  self->_launchesSpecificGeoHashInContext = *(statisticsCopy + 69) + self->_launchesSpecificGeoHashInContext;
  self->_launchesTimeOfDayInContext = *(statisticsCopy + 70) + self->_launchesTimeOfDayInContext;
  self->_confirmsTimeOfDayInContext = *(statisticsCopy + 71) + self->_confirmsTimeOfDayInContext;
  self->_rejectsTimeOfDayInContext = *(statisticsCopy + 72) + self->_rejectsTimeOfDayInContext;
  self->_confirmsDayOfWeekInContext = *(statisticsCopy + 73) + self->_confirmsDayOfWeekInContext;
  self->_rejectsDayOfWeekInContext = *(statisticsCopy + 74) + self->_rejectsDayOfWeekInContext;
  self->_confirmsCoarseGeoHashInContext = *(statisticsCopy + 75) + self->_confirmsCoarseGeoHashInContext;
  self->_rejectsCoarseGeoHashInContext = *(statisticsCopy + 76) + self->_rejectsCoarseGeoHashInContext;
  self->_confirmsSpecificGeoHashInContext = *(statisticsCopy + 77) + self->_confirmsSpecificGeoHashInContext;
  self->_rejectsSpecificGeoHashInContext = *(statisticsCopy + 78) + self->_rejectsSpecificGeoHashInContext;
  self->_homeScreenActionConfirmsOnDayOfWeekInContext = *(statisticsCopy + 79) + self->_homeScreenActionConfirmsOnDayOfWeekInContext;
  self->_homeScreenActionRejectsOnDayOfWeekInContext = *(statisticsCopy + 80) + self->_homeScreenActionRejectsOnDayOfWeekInContext;
  self->_homeScreenActionConfirmsAtTimeOfDayInContext = *(statisticsCopy + 81) + self->_homeScreenActionConfirmsAtTimeOfDayInContext;
  self->_homeScreenActionRejectsAtTimeOfDayInContext = *(statisticsCopy + 82) + self->_homeScreenActionRejectsAtTimeOfDayInContext;
  self->_homeScreenActionConfirmsAtCoarseGeohashInContext = *(statisticsCopy + 83) + self->_homeScreenActionConfirmsAtCoarseGeohashInContext;
  self->_homeScreenActionRejectsAtCoarseGeohashInContext = *(statisticsCopy + 84) + self->_homeScreenActionRejectsAtCoarseGeohashInContext;
  self->_homeScreenActionConfirmsAtSpecificGeohashInContext = *(statisticsCopy + 85) + self->_homeScreenActionConfirmsAtSpecificGeohashInContext;
  self->_homeScreenActionRejectsAtSpecificGeohashInContext = *(statisticsCopy + 86) + self->_homeScreenActionRejectsAtSpecificGeohashInContext;
  self->_homeScreenActionConfirmsAtCoarseTimePOWLocationInContext = *(statisticsCopy + 87) + self->_homeScreenActionConfirmsAtCoarseTimePOWLocationInContext;
  self->_homeScreenActionRejectsAtCoarseTimePOWLocationInContext = *(statisticsCopy + 88) + self->_homeScreenActionRejectsAtCoarseTimePOWLocationInContext;
  self->_homeScreenActionConfirmsAtSpecificTimeDOWLocationInContext = *(statisticsCopy + 89) + self->_homeScreenActionConfirmsAtSpecificTimeDOWLocationInContext;
  self->_homeScreenActionRejectsAtSpecificTimeDOWLocationInContext = *(statisticsCopy + 90) + self->_homeScreenActionRejectsAtSpecificTimeDOWLocationInContext;

  v50 = *MEMORY[0x277D85DE8];
}

@end