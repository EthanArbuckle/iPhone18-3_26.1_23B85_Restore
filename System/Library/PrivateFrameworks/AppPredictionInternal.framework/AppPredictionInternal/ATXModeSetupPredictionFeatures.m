@interface ATXModeSetupPredictionFeatures
- (ATXModeSetupPredictionFeatures)init;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
@end

@implementation ATXModeSetupPredictionFeatures

- (ATXModeSetupPredictionFeatures)init
{
  v36.receiver = self;
  v36.super_class = ATXModeSetupPredictionFeatures;
  v2 = [(ATXModeSetupPredictionFeatures *)&v36 init];
  v3 = v2;
  if (v2)
  {
    v2->_isDigestCurrentlyEnabled = 0;
    globalAllPagesFolderCount = v2->_globalAllPagesFolderCount;
    v2->_globalAllPagesFolderCount = &unk_283A556D0;

    globalAllPagesWidgetCount = v3->_globalAllPagesWidgetCount;
    v3->_globalAllPagesWidgetCount = &unk_283A556D0;

    homePageFolderCountBucket = v3->_homePageFolderCountBucket;
    v3->_homePageFolderCountBucket = &unk_283A556D0;

    homePageWidgetCountBucket = v3->_homePageWidgetCountBucket;
    v3->_homePageWidgetCountBucket = &unk_283A556D0;

    globalAppLaunchCountWithinLastNDays = v3->_globalAppLaunchCountWithinLastNDays;
    v3->_globalAppLaunchCountWithinLastNDays = &unk_283A556D0;

    globalAppLaunchCountWithinLast1Day = v3->_globalAppLaunchCountWithinLast1Day;
    v3->_globalAppLaunchCountWithinLast1Day = &unk_283A556D0;

    modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDays = v3->_modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDays;
    v3->_modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDays = &unk_283A556D0;

    modeAppLaunchCountBasedOnGlobalPriorsWithinLast1Day = v3->_modeAppLaunchCountBasedOnGlobalPriorsWithinLast1Day;
    v3->_modeAppLaunchCountBasedOnGlobalPriorsWithinLast1Day = &unk_283A556D0;

    modeInferredDurationInLastNDays = v3->_modeInferredDurationInLastNDays;
    v3->_modeInferredDurationInLastNDays = &unk_283A556D0;

    modeInferredDurationInLast1Day = v3->_modeInferredDurationInLast1Day;
    v3->_modeInferredDurationInLast1Day = &unk_283A556D0;

    modeInferredCountInLastNDays = v3->_modeInferredCountInLastNDays;
    v3->_modeInferredCountInLastNDays = &unk_283A556D0;

    modeInferredCountInLast1Day = v3->_modeInferredCountInLast1Day;
    v3->_modeInferredCountInLast1Day = &unk_283A556D0;

    modeCountOfNotificationsClearedWithinLastNDays = v3->_modeCountOfNotificationsClearedWithinLastNDays;
    v3->_modeCountOfNotificationsClearedWithinLastNDays = &unk_283A556D0;

    modeCountOfNotificationsClearedWithinLast1Day = v3->_modeCountOfNotificationsClearedWithinLast1Day;
    v3->_modeCountOfNotificationsClearedWithinLast1Day = &unk_283A556D0;

    globalCountOfNotificationsClearedWithinLastNDays = v3->_globalCountOfNotificationsClearedWithinLastNDays;
    v3->_globalCountOfNotificationsClearedWithinLastNDays = &unk_283A556D0;

    globalCountOfNotificationsClearedWithinLast1Day = v3->_globalCountOfNotificationsClearedWithinLast1Day;
    v3->_globalCountOfNotificationsClearedWithinLast1Day = &unk_283A556D0;

    modeCountOfNotificationsReceivedWithinLastNDays = v3->_modeCountOfNotificationsReceivedWithinLastNDays;
    v3->_modeCountOfNotificationsReceivedWithinLastNDays = &unk_283A556D0;

    modeCountOfNotificationsReceivedWithinLast1Day = v3->_modeCountOfNotificationsReceivedWithinLast1Day;
    v3->_modeCountOfNotificationsReceivedWithinLast1Day = &unk_283A556D0;

    globalCountOfNotificationsReceivedWithinLastNDays = v3->_globalCountOfNotificationsReceivedWithinLastNDays;
    v3->_globalCountOfNotificationsReceivedWithinLastNDays = &unk_283A556D0;

    globalCountOfNotificationsReceivedWithinLast1Day = v3->_globalCountOfNotificationsReceivedWithinLast1Day;
    v3->_globalCountOfNotificationsReceivedWithinLast1Day = &unk_283A556D0;

    modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDays = v3->_modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDays;
    v3->_modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDays = &unk_283A556D0;

    modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1Day = v3->_modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1Day;
    v3->_modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1Day = &unk_283A556D0;

    globalPosterConfigurationsCount = v3->_globalPosterConfigurationsCount;
    v3->_globalPosterConfigurationsCount = &unk_283A556D0;

    globalInterruptedAppSessionsCountWithinLastNDays = v3->_globalInterruptedAppSessionsCountWithinLastNDays;
    v3->_globalInterruptedAppSessionsCountWithinLastNDays = &unk_283A556D0;

    globalInterruptedAppSessionsCountWithinLast1Day = v3->_globalInterruptedAppSessionsCountWithinLast1Day;
    v3->_globalInterruptedAppSessionsCountWithinLast1Day = &unk_283A556D0;

    modeInterruptedAppSessionsCountWithinLastNDays = v3->_modeInterruptedAppSessionsCountWithinLastNDays;
    v3->_modeInterruptedAppSessionsCountWithinLastNDays = &unk_283A556D0;

    modeInterruptedAppSessionsCountWithinLast1Day = v3->_modeInterruptedAppSessionsCountWithinLast1Day;
    v3->_modeInterruptedAppSessionsCountWithinLast1Day = &unk_283A556D0;

    modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode = v3->_modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode;
    v3->_modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode = &unk_283A556D0;

    modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode = v3->_modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode;
    v3->_modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode = &unk_283A556D0;

    modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode = v3->_modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode;
    v3->_modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode = &unk_283A556D0;

    modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode = v3->_modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode;
    v3->_modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode = &unk_283A556D0;
  }

  return v3;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v70.receiver = self;
  v70.super_class = ATXModeSetupPredictionFeatures;
  v5 = [(ATXModeSetupPredictionFeatures *)&v70 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isDigestCurrentlyEnabled"];
    v5->_isDigestCurrentlyEnabled = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"globalAllPagesFolderCount"];
    globalAllPagesFolderCount = v5->_globalAllPagesFolderCount;
    v5->_globalAllPagesFolderCount = v7;

    v9 = [v4 objectForKeyedSubscript:@"globalAllPagesWidgetCount"];
    globalAllPagesWidgetCount = v5->_globalAllPagesWidgetCount;
    v5->_globalAllPagesWidgetCount = v9;

    v11 = [v4 objectForKeyedSubscript:@"homePageFolderCountBucket"];
    homePageFolderCountBucket = v5->_homePageFolderCountBucket;
    v5->_homePageFolderCountBucket = v11;

    v13 = [v4 objectForKeyedSubscript:@"homePageWidgetCountBucket"];
    homePageWidgetCountBucket = v5->_homePageWidgetCountBucket;
    v5->_homePageWidgetCountBucket = v13;

    v15 = [v4 objectForKeyedSubscript:@"globalAppLaunchCountWithinLastNDays"];
    globalAppLaunchCountWithinLastNDays = v5->_globalAppLaunchCountWithinLastNDays;
    v5->_globalAppLaunchCountWithinLastNDays = v15;

    v17 = [v4 objectForKeyedSubscript:@"globalAppLaunchCountWithinLast1Day"];
    globalAppLaunchCountWithinLast1Day = v5->_globalAppLaunchCountWithinLast1Day;
    v5->_globalAppLaunchCountWithinLast1Day = v17;

    v19 = [v4 objectForKeyedSubscript:@"modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDays"];
    modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDays = v5->_modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDays;
    v5->_modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDays = v19;

    v21 = [v4 objectForKeyedSubscript:@"modeAppLaunchCountBasedOnGlobalPriorsWithinLast1Day"];
    modeAppLaunchCountBasedOnGlobalPriorsWithinLast1Day = v5->_modeAppLaunchCountBasedOnGlobalPriorsWithinLast1Day;
    v5->_modeAppLaunchCountBasedOnGlobalPriorsWithinLast1Day = v21;

    v23 = [v4 objectForKeyedSubscript:@"modeInferredDurationInLastNDays"];
    modeInferredDurationInLastNDays = v5->_modeInferredDurationInLastNDays;
    v5->_modeInferredDurationInLastNDays = v23;

    v25 = [v4 objectForKeyedSubscript:@"modeInferredDurationInLast1Day"];
    modeInferredDurationInLast1Day = v5->_modeInferredDurationInLast1Day;
    v5->_modeInferredDurationInLast1Day = v25;

    v27 = [v4 objectForKeyedSubscript:@"modeInferredCountInLastNDays"];
    modeInferredCountInLastNDays = v5->_modeInferredCountInLastNDays;
    v5->_modeInferredCountInLastNDays = v27;

    v29 = [v4 objectForKeyedSubscript:@"modeInferredCountInLast1Day"];
    modeInferredCountInLast1Day = v5->_modeInferredCountInLast1Day;
    v5->_modeInferredCountInLast1Day = v29;

    v31 = [v4 objectForKeyedSubscript:@"modeCountOfNotificationsClearedWithinLastNDays"];
    modeCountOfNotificationsClearedWithinLastNDays = v5->_modeCountOfNotificationsClearedWithinLastNDays;
    v5->_modeCountOfNotificationsClearedWithinLastNDays = v31;

    v33 = [v4 objectForKeyedSubscript:@"modeCountOfNotificationsClearedWithinLast1Day"];
    modeCountOfNotificationsClearedWithinLast1Day = v5->_modeCountOfNotificationsClearedWithinLast1Day;
    v5->_modeCountOfNotificationsClearedWithinLast1Day = v33;

    v35 = [v4 objectForKeyedSubscript:@"globalCountOfNotificationsClearedWithinLastNDays"];
    globalCountOfNotificationsClearedWithinLastNDays = v5->_globalCountOfNotificationsClearedWithinLastNDays;
    v5->_globalCountOfNotificationsClearedWithinLastNDays = v35;

    v37 = [v4 objectForKeyedSubscript:@"globalCountOfNotificationsClearedWithinLast1Day"];
    globalCountOfNotificationsClearedWithinLast1Day = v5->_globalCountOfNotificationsClearedWithinLast1Day;
    v5->_globalCountOfNotificationsClearedWithinLast1Day = v37;

    v39 = [v4 objectForKeyedSubscript:@"modeCountOfNotificationsReceivedWithinLastNDays"];
    modeCountOfNotificationsReceivedWithinLastNDays = v5->_modeCountOfNotificationsReceivedWithinLastNDays;
    v5->_modeCountOfNotificationsReceivedWithinLastNDays = v39;

    v41 = [v4 objectForKeyedSubscript:@"modeCountOfNotificationsReceivedWithinLast1Day"];
    modeCountOfNotificationsReceivedWithinLast1Day = v5->_modeCountOfNotificationsReceivedWithinLast1Day;
    v5->_modeCountOfNotificationsReceivedWithinLast1Day = v41;

    v43 = [v4 objectForKeyedSubscript:@"globalCountOfNotificationsReceivedWithinLastNDays"];
    globalCountOfNotificationsReceivedWithinLastNDays = v5->_globalCountOfNotificationsReceivedWithinLastNDays;
    v5->_globalCountOfNotificationsReceivedWithinLastNDays = v43;

    v45 = [v4 objectForKeyedSubscript:@"globalCountOfNotificationsReceivedWithinLast1Day"];
    globalCountOfNotificationsReceivedWithinLast1Day = v5->_globalCountOfNotificationsReceivedWithinLast1Day;
    v5->_globalCountOfNotificationsReceivedWithinLast1Day = v45;

    v47 = [v4 objectForKeyedSubscript:@"modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDays"];
    modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDays = v5->_modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDays;
    v5->_modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDays = v47;

    v49 = [v4 objectForKeyedSubscript:@"modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1Day"];
    modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1Day = v5->_modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1Day;
    v5->_modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1Day = v49;

    v51 = [v4 objectForKeyedSubscript:@"globalPosterConfigurationsCount"];
    globalPosterConfigurationsCount = v5->_globalPosterConfigurationsCount;
    v5->_globalPosterConfigurationsCount = v51;

    v53 = [v4 objectForKeyedSubscript:@"globalInterruptedAppSessionsCountWithinLastNDays"];
    globalInterruptedAppSessionsCountWithinLastNDays = v5->_globalInterruptedAppSessionsCountWithinLastNDays;
    v5->_globalInterruptedAppSessionsCountWithinLastNDays = v53;

    v55 = [v4 objectForKeyedSubscript:@"globalInterruptedAppSessionsCountWithinLast1Day"];
    globalInterruptedAppSessionsCountWithinLast1Day = v5->_globalInterruptedAppSessionsCountWithinLast1Day;
    v5->_globalInterruptedAppSessionsCountWithinLast1Day = v55;

    v57 = [v4 objectForKeyedSubscript:@"modeInterruptedAppSessionsCountWithinLastNDays"];
    modeInterruptedAppSessionsCountWithinLastNDays = v5->_modeInterruptedAppSessionsCountWithinLastNDays;
    v5->_modeInterruptedAppSessionsCountWithinLastNDays = v57;

    v59 = [v4 objectForKeyedSubscript:@"modeInterruptedAppSessionsCountWithinLast1Day"];
    modeInterruptedAppSessionsCountWithinLast1Day = v5->_modeInterruptedAppSessionsCountWithinLast1Day;
    v5->_modeInterruptedAppSessionsCountWithinLast1Day = v59;

    v61 = [v4 objectForKeyedSubscript:@"modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode"];
    modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode = v5->_modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode;
    v5->_modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode = v61;

    v63 = [v4 objectForKeyedSubscript:@"modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode"];
    modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode = v5->_modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode;
    v5->_modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode = v63;

    v65 = [v4 objectForKeyedSubscript:@"modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode"];
    modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode = v5->_modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode;
    v5->_modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode = v65;

    v67 = [v4 objectForKeyedSubscript:@"modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode"];
    modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode = v5->_modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode;
    v5->_modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode = v67;
  }

  return v5;
}

- (id)jsonRepresentation
{
  v50 = *MEMORY[0x277D85DE8];
  v22[0] = @"isDigestCurrentlyEnabled";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDigestCurrentlyEnabled];
  globalAllPagesFolderCount = self->_globalAllPagesFolderCount;
  globalAllPagesWidgetCount = self->_globalAllPagesWidgetCount;
  v23[0] = v3;
  v23[1] = globalAllPagesFolderCount;
  v22[1] = @"globalAllPagesFolderCount";
  v22[2] = @"globalAllPagesWidgetCount";
  v24 = *&self->_homePageFolderCountBucket;
  v22[3] = @"homePageFolderCountBucket";
  v22[4] = @"homePageWidgetCountBucket";
  globalAppLaunchCountWithinLastNDays = self->_globalAppLaunchCountWithinLastNDays;
  globalAppLaunchCountWithinLast1Day = self->_globalAppLaunchCountWithinLast1Day;
  v23[2] = globalAllPagesWidgetCount;
  v25 = globalAppLaunchCountWithinLastNDays;
  v26 = globalAppLaunchCountWithinLast1Day;
  v22[5] = @"globalAppLaunchCountWithinLastNDays";
  v22[6] = @"globalAppLaunchCountWithinLast1Day";
  v27 = *&self->_modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDays;
  v22[7] = @"modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDays";
  v22[8] = @"modeAppLaunchCountBasedOnGlobalPriorsWithinLast1Day";
  modeInferredDurationInLastNDays = self->_modeInferredDurationInLastNDays;
  v22[9] = @"modeInferredDurationInLastNDays";
  v22[10] = @"modeInferredDurationInLast1Day";
  v8 = *&self->_modeInferredDurationInLast1Day;
  v22[11] = @"modeInferredCountInLastNDays";
  v22[12] = @"modeInferredCountInLast1Day";
  modeCountOfNotificationsClearedWithinLastNDays = self->_modeCountOfNotificationsClearedWithinLastNDays;
  modeInferredCountInLast1Day = self->_modeInferredCountInLast1Day;
  v31 = modeCountOfNotificationsClearedWithinLastNDays;
  v22[13] = @"modeCountOfNotificationsClearedWithinLastNDays";
  v22[14] = @"modeCountOfNotificationsClearedWithinLast1Day";
  globalCountOfNotificationsClearedWithinLastNDays = self->_globalCountOfNotificationsClearedWithinLastNDays;
  modeCountOfNotificationsClearedWithinLast1Day = self->_modeCountOfNotificationsClearedWithinLast1Day;
  v33 = globalCountOfNotificationsClearedWithinLastNDays;
  v22[15] = @"globalCountOfNotificationsClearedWithinLastNDays";
  v22[16] = @"globalCountOfNotificationsClearedWithinLast1Day";
  modeCountOfNotificationsReceivedWithinLastNDays = self->_modeCountOfNotificationsReceivedWithinLastNDays;
  globalCountOfNotificationsClearedWithinLast1Day = self->_globalCountOfNotificationsClearedWithinLast1Day;
  v35 = modeCountOfNotificationsReceivedWithinLastNDays;
  v22[17] = @"modeCountOfNotificationsReceivedWithinLastNDays";
  v22[18] = @"modeCountOfNotificationsReceivedWithinLast1Day";
  globalCountOfNotificationsReceivedWithinLastNDays = self->_globalCountOfNotificationsReceivedWithinLastNDays;
  modeCountOfNotificationsReceivedWithinLast1Day = self->_modeCountOfNotificationsReceivedWithinLast1Day;
  v37 = globalCountOfNotificationsReceivedWithinLastNDays;
  v22[19] = @"globalCountOfNotificationsReceivedWithinLastNDays";
  v22[20] = @"globalCountOfNotificationsReceivedWithinLast1Day";
  modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDays = self->_modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDays;
  globalCountOfNotificationsReceivedWithinLast1Day = self->_globalCountOfNotificationsReceivedWithinLast1Day;
  v39 = modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDays;
  v22[21] = @"modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDays";
  v22[22] = @"modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1Day";
  globalPosterConfigurationsCount = self->_globalPosterConfigurationsCount;
  modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1Day = self->_modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1Day;
  v41 = globalPosterConfigurationsCount;
  v22[23] = @"globalPosterConfigurationsCount";
  v22[24] = @"globalInterruptedAppSessionsCountWithinLastNDays";
  globalInterruptedAppSessionsCountWithinLast1Day = self->_globalInterruptedAppSessionsCountWithinLast1Day;
  globalInterruptedAppSessionsCountWithinLastNDays = self->_globalInterruptedAppSessionsCountWithinLastNDays;
  v43 = globalInterruptedAppSessionsCountWithinLast1Day;
  v22[25] = @"globalInterruptedAppSessionsCountWithinLast1Day";
  v22[26] = @"modeInterruptedAppSessionsCountWithinLastNDays";
  modeInterruptedAppSessionsCountWithinLast1Day = self->_modeInterruptedAppSessionsCountWithinLast1Day;
  modeInterruptedAppSessionsCountWithinLastNDays = self->_modeInterruptedAppSessionsCountWithinLastNDays;
  v45 = modeInterruptedAppSessionsCountWithinLast1Day;
  v22[27] = @"modeInterruptedAppSessionsCountWithinLast1Day";
  v22[28] = @"modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode";
  modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode = self->_modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode;
  modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode = self->_modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode;
  v47 = modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode;
  v29 = v8;
  v22[29] = @"modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode";
  v22[30] = @"modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode";
  v22[31] = @"modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode";
  modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode = self->_modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode;
  modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode = self->_modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode;
  v49 = modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:32];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end