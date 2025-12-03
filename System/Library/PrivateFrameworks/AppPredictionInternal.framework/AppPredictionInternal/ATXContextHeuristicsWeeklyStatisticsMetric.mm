@interface ATXContextHeuristicsWeeklyStatisticsMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXContextHeuristicsWeeklyStatisticsMetric

- (id)coreAnalyticsDictionary
{
  v40[25] = *MEMORY[0x277D85DE8];
  v39[0] = @"areSpotlightRecentsEnabled";
  v38 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXContextHeuristicsWeeklyStatisticsMetric areSpotlightRecentsEnabled](self, "areSpotlightRecentsEnabled")}];
  v40[0] = v38;
  v39[1] = @"areSpotlightSuggestionsEnabled";
  v37 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXContextHeuristicsWeeklyStatisticsMetric areSpotlightSuggestionsEnabled](self, "areSpotlightSuggestionsEnabled")}];
  v40[1] = v37;
  v39[2] = @"numAppSuggestionsVisibleInSpotlight";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numAppSuggestionsVisibleInSpotlight](self, "numAppSuggestionsVisibleInSpotlight")}];
  v40[2] = v36;
  v39[3] = @"numAppLibraryAppSuggestionTaps";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numAppLibraryAppSuggestionTaps](self, "numAppLibraryAppSuggestionTaps")}];
  v40[3] = v35;
  v39[4] = @"numAppLibraryAppTaps";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numAppLibraryAppTaps](self, "numAppLibraryAppTaps")}];
  v40[4] = v34;
  v39[5] = @"numHomescreenAppSuggestionTaps";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numHomescreenAppSuggestionTaps](self, "numHomescreenAppSuggestionTaps")}];
  v40[5] = v33;
  v39[6] = @"numHomescreenAppTaps";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numHomescreenAppTaps](self, "numHomescreenAppTaps")}];
  v40[6] = v32;
  v39[7] = @"numLeftOfHomeAppSuggestionTaps";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numLeftOfHomeAppSuggestionTaps](self, "numLeftOfHomeAppSuggestionTaps")}];
  v40[7] = v31;
  v39[8] = @"numSpotlightAppSuggestionTaps";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numSpotlightAppSuggestionTaps](self, "numSpotlightAppSuggestionTaps")}];
  v40[8] = v30;
  v39[9] = @"numSpotlightSearchAppTaps";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numSpotlightSearchAppTaps](self, "numSpotlightSearchAppTaps")}];
  v40[9] = v29;
  v39[10] = @"numSpotlightActionSuggestionTaps";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numSpotlightActionSuggestionTaps](self, "numSpotlightActionSuggestionTaps")}];
  v40[10] = v28;
  v39[11] = @"numRecentsTaps";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numRecentsTaps](self, "numRecentsTaps")}];
  v40[11] = v27;
  v39[12] = @"numSpotlightSearches";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numSpotlightSearches](self, "numSpotlightSearches")}];
  v40[12] = v26;
  v39[13] = @"numSpotlightViews";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numSpotlightViews](self, "numSpotlightViews")}];
  v40[13] = v25;
  v39[14] = @"numSpotlightUniqueDayVisits";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numSpotlightUniqueDayVisits](self, "numSpotlightUniqueDayVisits")}];
  v40[14] = v24;
  v39[15] = @"percentageOfTimeSpotlightActionSuggestionAvailable";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric percentageOfTimeSpotlightActionSuggestionAvailable](self, "percentageOfTimeSpotlightActionSuggestionAvailable")}];
  v40[15] = v23;
  v39[16] = @"numCalendarEvents";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numCalendarEvents](self, "numCalendarEvents")}];
  v40[16] = v22;
  v39[17] = @"numCalendarEventsWithLink";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numCalendarEventsWithLink](self, "numCalendarEventsWithLink")}];
  v40[17] = v21;
  v39[18] = @"numCalendarEventsWithLocation";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsWeeklyStatisticsMetric numCalendarEventsWithLocation](self, "numCalendarEventsWithLocation")}];
  v40[18] = v20;
  v39[19] = @"trialDeploymentId";
  trialDeploymentId = [(ATXContextHeuristicsWeeklyStatisticsMetric *)self trialDeploymentId];
  v4 = trialDeploymentId;
  if (!trialDeploymentId)
  {
    trialDeploymentId = [MEMORY[0x277CBEB68] null];
  }

  v18 = trialDeploymentId;
  v40[19] = trialDeploymentId;
  v39[20] = @"trialExperimentId";
  trialExperimentId = [(ATXContextHeuristicsWeeklyStatisticsMetric *)self trialExperimentId];
  v6 = trialExperimentId;
  if (!trialExperimentId)
  {
    trialExperimentId = [MEMORY[0x277CBEB68] null];
  }

  v40[20] = trialExperimentId;
  v39[21] = @"trialTreatmentId";
  trialTreatmentId = [(ATXContextHeuristicsWeeklyStatisticsMetric *)self trialTreatmentId];
  null = trialTreatmentId;
  if (!trialTreatmentId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v40[21] = null;
  v39[22] = @"atxTrialDeploymentId";
  atxTrialDeploymentId = [(ATXContextHeuristicsWeeklyStatisticsMetric *)self atxTrialDeploymentId];
  null2 = atxTrialDeploymentId;
  if (!atxTrialDeploymentId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v40[22] = null2;
  v39[23] = @"atxTrialExperimentId";
  atxTrialExperimentId = [(ATXContextHeuristicsWeeklyStatisticsMetric *)self atxTrialExperimentId];
  null3 = atxTrialExperimentId;
  if (!atxTrialExperimentId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v40[23] = null3;
  v39[24] = @"atxTrialTreatmentId";
  atxTrialTreatmentId = [(ATXContextHeuristicsWeeklyStatisticsMetric *)self atxTrialTreatmentId];
  null4 = atxTrialTreatmentId;
  if (!atxTrialTreatmentId)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v40[24] = null4;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:25];
  if (!atxTrialTreatmentId)
  {
  }

  if (!atxTrialExperimentId)
  {
  }

  if (!atxTrialDeploymentId)
  {
  }

  if (!trialTreatmentId)
  {
  }

  if (!v6)
  {
  }

  if (!v4)
  {
  }

  v15 = *MEMORY[0x277D85DE8];

  return v19;
}

@end