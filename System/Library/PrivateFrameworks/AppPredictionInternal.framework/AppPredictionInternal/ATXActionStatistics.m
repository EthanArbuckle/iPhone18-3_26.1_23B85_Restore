@interface ATXActionStatistics
- (ATXActionStatistics)init;
- (void)updateActionStatisticsForSlotResolutionStatistics:(id)a3 candidateActionPredictions:(id)a4;
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

- (void)updateActionStatisticsForSlotResolutionStatistics:(id)a3 candidateActionPredictions:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v51 objects:v55 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        v13 = [v12 scoredAction];
        v14 = [v13 predictedItem];

        if (v14)
        {
          v15 = [ATXMinimalSlotResolutionParameters alloc];
          v16 = [v12 slotSet];
          v17 = [(ATXMinimalSlotResolutionParameters *)v15 initWithAction:v14 slots:v16];

          v18 = [v6[2] objectForKeyedSubscript:v17];
          [(NSMutableDictionary *)self->_statisticsForParameters setObject:v18 forKeyedSubscript:v17];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v9);
  }

  totalTimeOfDayCount = self->_totalTimeOfDayCount;
  self->_totalLaunches = *(v6 + 4) + self->_totalLaunches;
  self->_totalTimeOfDayCount = *(v6 + 6) + totalTimeOfDayCount;
  totalHourWindowCount = self->_totalHourWindowCount;
  self->_totalThirtyMinuteWindowCount = *(v6 + 7) + self->_totalThirtyMinuteWindowCount;
  self->_totalHourWindowCount = *(v6 + 8) + totalHourWindowCount;
  totalCoarseTimeOfDayCount = self->_totalCoarseTimeOfDayCount;
  self->_totalEightHourWindowCount = *(v6 + 9) + self->_totalEightHourWindowCount;
  totalPartOfWeekCount = self->_totalPartOfWeekCount;
  self->_totalDayOfWeekCount = *(v6 + 11) + self->_totalDayOfWeekCount;
  self->_totalPartOfWeekCount = *(v6 + 12) + totalPartOfWeekCount;
  totalDayAndPrevLocationCount = self->_totalDayAndPrevLocationCount;
  self->_totalPartOfWeekAndLocationCount = *(v6 + 37) + self->_totalPartOfWeekAndLocationCount;
  totalTimeOfDayOccurrences = self->_totalTimeOfDayOccurrences;
  self->_totalPartOfWeekAndTimeCount = *(v6 + 38) + self->_totalPartOfWeekAndTimeCount;
  totalMotionTypeCount = self->_totalMotionTypeCount;
  self->_totalLocationCount = *(v6 + 13) + self->_totalLocationCount;
  self->_totalCoarseTimeOfDayCount = *(v6 + 10) + totalCoarseTimeOfDayCount;
  self->_totalMotionTypeCount = *(v6 + 14) + totalMotionTypeCount;
  totalTimeAndLocationCount = self->_totalTimeAndLocationCount;
  self->_totalPrevLocationCount = *(v6 + 15) + self->_totalPrevLocationCount;
  self->_totalTimeAndLocationCount = *(v6 + 29) + totalTimeAndLocationCount;
  totalDayAndLocationCount = self->_totalDayAndLocationCount;
  self->_totalTimeAndDayCount = *(v6 + 30) + self->_totalTimeAndDayCount;
  self->_totalDayAndLocationCount = *(v6 + 31) + totalDayAndLocationCount;
  totalPrevLocationAndMotionTypeCount = self->_totalPrevLocationAndMotionTypeCount;
  self->_totalTimeAndDayAndLocationCount = *(v6 + 32) + self->_totalTimeAndDayAndLocationCount;
  self->_totalPrevLocationAndMotionTypeCount = *(v6 + 33) + totalPrevLocationAndMotionTypeCount;
  totalTimeAndPrevLocationCount = self->_totalTimeAndPrevLocationCount;
  self->_totalPrevLocationAndLocationCount = *(v6 + 34) + self->_totalPrevLocationAndLocationCount;
  self->_totalTimeAndPrevLocationCount = *(v6 + 35) + totalTimeAndPrevLocationCount;
  self->_totalDayAndPrevLocationCount = *(v6 + 36) + totalDayAndPrevLocationCount;
  self->_totalTimeOfDayOccurrences = *(v6 + 39) + totalTimeOfDayOccurrences;
  totalLocationOccurrences = self->_totalLocationOccurrences;
  self->_totalDayOfWeekOccurrences = *(v6 + 40) + self->_totalDayOfWeekOccurrences;
  self->_totalLocationOccurrences = *(v6 + 41) + totalLocationOccurrences;
  totalPreviousLocationOccurrences = self->_totalPreviousLocationOccurrences;
  self->_totalMotionTypeOccurrences = *(v6 + 42) + self->_totalMotionTypeOccurrences;
  self->_totalPreviousLocationOccurrences = *(v6 + 43) + totalPreviousLocationOccurrences;
  totalTimeAndDayOccurrences = self->_totalTimeAndDayOccurrences;
  self->_totalPartOfWeekOccurrences = *(v6 + 44) + self->_totalPartOfWeekOccurrences;
  self->_totalTimeAndDayOccurrences = *(v6 + 45) + totalTimeAndDayOccurrences;
  totalDayAndLocationOccurrences = self->_totalDayAndLocationOccurrences;
  self->_totalTimeAndLocationOccurrences = *(v6 + 46) + self->_totalTimeAndLocationOccurrences;
  self->_totalDayAndLocationOccurrences = *(v6 + 47) + totalDayAndLocationOccurrences;
  totalPrevLocationAndLocationOccurrences = self->_totalPrevLocationAndLocationOccurrences;
  self->_totalTimeAndDayAndLocationOccurrences = *(v6 + 48) + self->_totalTimeAndDayAndLocationOccurrences;
  self->_totalPrevLocationAndLocationOccurrences = *(v6 + 49) + totalPrevLocationAndLocationOccurrences;
  totalTimeAndPrevLocationOccurrences = self->_totalTimeAndPrevLocationOccurrences;
  self->_totalPrevLocationAndMotionTypeOccurrences = *(v6 + 50) + self->_totalPrevLocationAndMotionTypeOccurrences;
  self->_totalTimeAndPrevLocationOccurrences = *(v6 + 51) + totalTimeAndPrevLocationOccurrences;
  totalPartOfWeekAndLocationOccurrences = self->_totalPartOfWeekAndLocationOccurrences;
  self->_totalDayAndPrevLocationOccurrences = *(v6 + 52) + self->_totalDayAndPrevLocationOccurrences;
  self->_totalPartOfWeekAndLocationOccurrences = *(v6 + 53) + totalPartOfWeekAndLocationOccurrences;
  totalConfirms = self->_totalConfirms;
  self->_totalPartOfWeekAndTimeOccurrences = *(v6 + 54) + self->_totalPartOfWeekAndTimeOccurrences;
  self->_totalConfirms = *(v6 + 17) + totalConfirms;
  totalExplicitRejectsNoDecay = self->_totalExplicitRejectsNoDecay;
  self->_totalRejects = *(v6 + 18) + self->_totalRejects;
  self->_totalExplicitRejectsNoDecay = *(v6 + 19) + totalExplicitRejectsNoDecay;
  totalRejectsInSpotlight = self->_totalRejectsInSpotlight;
  self->_totalConfirmsInSpotlight = *(v6 + 20) + self->_totalConfirmsInSpotlight;
  self->_totalRejectsInSpotlight = *(v6 + 21) + totalRejectsInSpotlight;
  totalRejectsInSpotlightWithinMeanWindow = self->_totalRejectsInSpotlightWithinMeanWindow;
  self->_totalConfirmsInSpotlightWithinMeanWindow = *(v6 + 22) + self->_totalConfirmsInSpotlightWithinMeanWindow;
  self->_totalRejectsInSpotlightWithinMeanWindow = *(v6 + 23) + totalRejectsInSpotlightWithinMeanWindow;
  [(NSMutableSet *)self->_totalUniqueDaysConfirmedOrRejectedInSpotlightWithinMeanWindow unionSet:v6[24]];
  totalRejectsTodayInLockscreen = self->_totalRejectsTodayInLockscreen;
  self->_totalConfirmsTodayInLockscreen = *(v6 + 25) + self->_totalConfirmsTodayInLockscreen;
  self->_totalRejectsTodayInLockscreen = *(v6 + 26) + totalRejectsTodayInLockscreen;
  totalRejectsInLockscreen = self->_totalRejectsInLockscreen;
  self->_totalConfirmsInLockscreen = *(v6 + 27) + self->_totalConfirmsInLockscreen;
  self->_totalRejectsInLockscreen = *(v6 + 28) + totalRejectsInLockscreen;
  totalCoarseTimePOWLocationOccurrences = self->_totalCoarseTimePOWLocationOccurrences;
  self->_totalCoarseTimePOWLocationCount = *(v6 + 55) + self->_totalCoarseTimePOWLocationCount;
  self->_totalCoarseTimePOWLocationOccurrences = *(v6 + 56) + totalCoarseTimePOWLocationOccurrences;
  totalConfirmsCoarseTimePOWLocationOccurrences = self->_totalConfirmsCoarseTimePOWLocationOccurrences;
  self->_totalConfirmsCoarseTimePOWLocationCount = *(v6 + 57) + self->_totalConfirmsCoarseTimePOWLocationCount;
  self->_totalConfirmsCoarseTimePOWLocationOccurrences = *(v6 + 58) + totalConfirmsCoarseTimePOWLocationOccurrences;
  totalRejectsCoarseTimePOWLocationOccurrences = self->_totalRejectsCoarseTimePOWLocationOccurrences;
  self->_totalRejectsCoarseTimePOWLocationCount = *(v6 + 59) + self->_totalRejectsCoarseTimePOWLocationCount;
  self->_totalRejectsCoarseTimePOWLocationOccurrences = *(v6 + 60) + totalRejectsCoarseTimePOWLocationOccurrences;
  totalSpecificTimeDOWLocationOccurrences = self->_totalSpecificTimeDOWLocationOccurrences;
  self->_totalSpecificTimeDOWLocationCount = *(v6 + 61) + self->_totalSpecificTimeDOWLocationCount;
  self->_totalSpecificTimeDOWLocationOccurrences = *(v6 + 62) + totalSpecificTimeDOWLocationOccurrences;
  totalConfirmsSpecificTimeDOWLocationOccurrences = self->_totalConfirmsSpecificTimeDOWLocationOccurrences;
  self->_totalConfirmsSpecificTimeDOWLocationCount = *(v6 + 63) + self->_totalConfirmsSpecificTimeDOWLocationCount;
  self->_totalConfirmsSpecificTimeDOWLocationOccurrences = *(v6 + 64) + totalConfirmsSpecificTimeDOWLocationOccurrences;
  totalRejectsSpecificTimeDOWLocationOccurrences = self->_totalRejectsSpecificTimeDOWLocationOccurrences;
  self->_totalRejectsSpecificTimeDOWLocationCount = *(v6 + 65) + self->_totalRejectsSpecificTimeDOWLocationCount;
  self->_totalRejectsSpecificTimeDOWLocationOccurrences = *(v6 + 66) + totalRejectsSpecificTimeDOWLocationOccurrences;
  launchesCoarseGeoHashInContext = self->_launchesCoarseGeoHashInContext;
  self->_launchesDayOfWeekInContext = *(v6 + 67) + self->_launchesDayOfWeekInContext;
  self->_launchesCoarseGeoHashInContext = *(v6 + 68) + launchesCoarseGeoHashInContext;
  self->_launchesSpecificGeoHashInContext = *(v6 + 69) + self->_launchesSpecificGeoHashInContext;
  self->_launchesTimeOfDayInContext = *(v6 + 70) + self->_launchesTimeOfDayInContext;
  self->_confirmsTimeOfDayInContext = *(v6 + 71) + self->_confirmsTimeOfDayInContext;
  self->_rejectsTimeOfDayInContext = *(v6 + 72) + self->_rejectsTimeOfDayInContext;
  self->_confirmsDayOfWeekInContext = *(v6 + 73) + self->_confirmsDayOfWeekInContext;
  self->_rejectsDayOfWeekInContext = *(v6 + 74) + self->_rejectsDayOfWeekInContext;
  self->_confirmsCoarseGeoHashInContext = *(v6 + 75) + self->_confirmsCoarseGeoHashInContext;
  self->_rejectsCoarseGeoHashInContext = *(v6 + 76) + self->_rejectsCoarseGeoHashInContext;
  self->_confirmsSpecificGeoHashInContext = *(v6 + 77) + self->_confirmsSpecificGeoHashInContext;
  self->_rejectsSpecificGeoHashInContext = *(v6 + 78) + self->_rejectsSpecificGeoHashInContext;
  self->_homeScreenActionConfirmsOnDayOfWeekInContext = *(v6 + 79) + self->_homeScreenActionConfirmsOnDayOfWeekInContext;
  self->_homeScreenActionRejectsOnDayOfWeekInContext = *(v6 + 80) + self->_homeScreenActionRejectsOnDayOfWeekInContext;
  self->_homeScreenActionConfirmsAtTimeOfDayInContext = *(v6 + 81) + self->_homeScreenActionConfirmsAtTimeOfDayInContext;
  self->_homeScreenActionRejectsAtTimeOfDayInContext = *(v6 + 82) + self->_homeScreenActionRejectsAtTimeOfDayInContext;
  self->_homeScreenActionConfirmsAtCoarseGeohashInContext = *(v6 + 83) + self->_homeScreenActionConfirmsAtCoarseGeohashInContext;
  self->_homeScreenActionRejectsAtCoarseGeohashInContext = *(v6 + 84) + self->_homeScreenActionRejectsAtCoarseGeohashInContext;
  self->_homeScreenActionConfirmsAtSpecificGeohashInContext = *(v6 + 85) + self->_homeScreenActionConfirmsAtSpecificGeohashInContext;
  self->_homeScreenActionRejectsAtSpecificGeohashInContext = *(v6 + 86) + self->_homeScreenActionRejectsAtSpecificGeohashInContext;
  self->_homeScreenActionConfirmsAtCoarseTimePOWLocationInContext = *(v6 + 87) + self->_homeScreenActionConfirmsAtCoarseTimePOWLocationInContext;
  self->_homeScreenActionRejectsAtCoarseTimePOWLocationInContext = *(v6 + 88) + self->_homeScreenActionRejectsAtCoarseTimePOWLocationInContext;
  self->_homeScreenActionConfirmsAtSpecificTimeDOWLocationInContext = *(v6 + 89) + self->_homeScreenActionConfirmsAtSpecificTimeDOWLocationInContext;
  self->_homeScreenActionRejectsAtSpecificTimeDOWLocationInContext = *(v6 + 90) + self->_homeScreenActionRejectsAtSpecificTimeDOWLocationInContext;

  v50 = *MEMORY[0x277D85DE8];
}

@end