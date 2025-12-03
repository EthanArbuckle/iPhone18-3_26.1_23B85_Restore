@interface ATXModeSetupPredictionMetrics
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation ATXModeSetupPredictionMetrics

- (id)coreAnalyticsDictionary
{
  v131[49] = *MEMORY[0x277D85DE8];
  v130[0] = @"ModeName";
  modeName = [(ATXModeSetupPredictionMetrics *)self modeName];
  v129 = modeName;
  if (!modeName)
  {
    modeName = [MEMORY[0x277CBEB68] null];
  }

  v131[0] = modeName;
  v130[1] = @"ModeIsCreated";
  v128 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeIsCreated](self, "modeIsCreated", modeName)}];
  v131[1] = v128;
  v130[2] = @"ModeWasCreatedWithin7Days";
  v127 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeWasCreatedWithin7Days](self, "modeWasCreatedWithin7Days")}];
  v131[2] = v127;
  v130[3] = @"ModeWasCreatedToday";
  v126 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeWasCreatedToday](self, "modeWasCreatedToday")}];
  v131[3] = v126;
  v130[4] = @"ModeHasActivatedWithin7Days";
  v125 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeHasActivatedWithin7Days](self, "modeHasActivatedWithin7Days")}];
  v131[4] = v125;
  v130[5] = @"ModeHasActivatedToday";
  v124 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeHasActivatedToday](self, "modeHasActivatedToday")}];
  v131[5] = v124;
  v130[6] = @"WasOfferedDigestOnboardingSuggestion";
  v123 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics wasOfferedDigestOnboardingSuggestion](self, "wasOfferedDigestOnboardingSuggestion")}];
  v131[6] = v123;
  v130[7] = @"HasSetupDigestThroughOnboardingSuggestion";
  v122 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics hasSetupDigestThroughOnboardingSuggestion](self, "hasSetupDigestThroughOnboardingSuggestion")}];
  v131[7] = v122;
  v130[8] = @"IsDigestCurrentlyEnabled";
  v121 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics isDigestCurrentlyEnabled](self, "isDigestCurrentlyEnabled")}];
  v131[8] = v121;
  v130[9] = @"ModeHasLinkedPoster";
  v120 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeHasLinkedPoster](self, "modeHasLinkedPoster")}];
  v131[9] = v120;
  v130[10] = @"ModeHasSmartActivationEnabled";
  v119 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeHasSmartActivationEnabled](self, "modeHasSmartActivationEnabled")}];
  v131[10] = v119;
  v130[11] = @"GlobalAllPagesFolderCountBucket";
  globalAllPagesFolderCountBucket = [(ATXModeSetupPredictionMetrics *)self globalAllPagesFolderCountBucket];
  v118 = globalAllPagesFolderCountBucket;
  if (globalAllPagesFolderCountBucket)
  {
    v5 = globalAllPagesFolderCountBucket;
  }

  else
  {
    v5 = &unk_283A55F40;
  }

  v131[11] = v5;
  v130[12] = @"GlobalAllPagesWidgetCountBucket";
  globalAllPagesWidgetCountBucket = [(ATXModeSetupPredictionMetrics *)self globalAllPagesWidgetCountBucket];
  v117 = globalAllPagesWidgetCountBucket;
  if (globalAllPagesWidgetCountBucket)
  {
    v7 = globalAllPagesWidgetCountBucket;
  }

  else
  {
    v7 = &unk_283A55F40;
  }

  v131[12] = v7;
  v130[13] = @"HomePageFolderCountBucket";
  homePageFolderCountBucket = [(ATXModeSetupPredictionMetrics *)self homePageFolderCountBucket];
  v116 = homePageFolderCountBucket;
  if (homePageFolderCountBucket)
  {
    v9 = homePageFolderCountBucket;
  }

  else
  {
    v9 = &unk_283A55F40;
  }

  v131[13] = v9;
  v130[14] = @"HomePageWidgetCountBucket";
  homePageWidgetCountBucket = [(ATXModeSetupPredictionMetrics *)self homePageWidgetCountBucket];
  v115 = homePageWidgetCountBucket;
  if (homePageWidgetCountBucket)
  {
    v11 = homePageWidgetCountBucket;
  }

  else
  {
    v11 = &unk_283A55F40;
  }

  v131[14] = v11;
  v130[15] = @"GlobalAppLaunchCount7Days";
  globalAppLaunchCount7Days = [(ATXModeSetupPredictionMetrics *)self globalAppLaunchCount7Days];
  v114 = globalAppLaunchCount7Days;
  if (globalAppLaunchCount7Days)
  {
    v13 = globalAppLaunchCount7Days;
  }

  else
  {
    v13 = &unk_283A55F40;
  }

  v131[15] = v13;
  v130[16] = @"GlobalAppLaunchCountToday";
  globalAppLaunchCountToday = [(ATXModeSetupPredictionMetrics *)self globalAppLaunchCountToday];
  v113 = globalAppLaunchCountToday;
  if (globalAppLaunchCountToday)
  {
    v15 = globalAppLaunchCountToday;
  }

  else
  {
    v15 = &unk_283A55F40;
  }

  v131[16] = v15;
  v130[17] = @"ModeAppLaunchCountBasedOnGlobalPriors7Days";
  modeAppLaunchCountBasedOnGlobalPriors7Days = [(ATXModeSetupPredictionMetrics *)self modeAppLaunchCountBasedOnGlobalPriors7Days];
  v112 = modeAppLaunchCountBasedOnGlobalPriors7Days;
  if (modeAppLaunchCountBasedOnGlobalPriors7Days)
  {
    v17 = modeAppLaunchCountBasedOnGlobalPriors7Days;
  }

  else
  {
    v17 = &unk_283A55F40;
  }

  v131[17] = v17;
  v130[18] = @"ModeAppLaunchCountBasedOnGlobalPriorsToday";
  modeAppLaunchCountBasedOnGlobalPriorsToday = [(ATXModeSetupPredictionMetrics *)self modeAppLaunchCountBasedOnGlobalPriorsToday];
  v111 = modeAppLaunchCountBasedOnGlobalPriorsToday;
  if (modeAppLaunchCountBasedOnGlobalPriorsToday)
  {
    v19 = modeAppLaunchCountBasedOnGlobalPriorsToday;
  }

  else
  {
    v19 = &unk_283A55F40;
  }

  v131[18] = v19;
  v130[19] = @"ModeInferredDuration7Days";
  modeInferredDuration7Days = [(ATXModeSetupPredictionMetrics *)self modeInferredDuration7Days];
  v110 = modeInferredDuration7Days;
  if (modeInferredDuration7Days)
  {
    v21 = modeInferredDuration7Days;
  }

  else
  {
    v21 = &unk_283A55F40;
  }

  v131[19] = v21;
  v130[20] = @"ModeInferredDurationToday";
  modeInferredDurationToday = [(ATXModeSetupPredictionMetrics *)self modeInferredDurationToday];
  v109 = modeInferredDurationToday;
  if (modeInferredDurationToday)
  {
    v23 = modeInferredDurationToday;
  }

  else
  {
    v23 = &unk_283A55F40;
  }

  v131[20] = v23;
  v130[21] = @"ModeInferredCount7Days";
  modeInferredCount7Days = [(ATXModeSetupPredictionMetrics *)self modeInferredCount7Days];
  v108 = modeInferredCount7Days;
  if (modeInferredCount7Days)
  {
    v25 = modeInferredCount7Days;
  }

  else
  {
    v25 = &unk_283A55F40;
  }

  v131[21] = v25;
  v130[22] = @"ModeInferredCountToday";
  modeInferredCountToday = [(ATXModeSetupPredictionMetrics *)self modeInferredCountToday];
  v107 = modeInferredCountToday;
  if (modeInferredCountToday)
  {
    v27 = modeInferredCountToday;
  }

  else
  {
    v27 = &unk_283A55F40;
  }

  v131[22] = v27;
  v130[23] = @"ModeTurnedOnCount7Days";
  modeTurnedOnCount7Days = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnCount7Days];
  v106 = modeTurnedOnCount7Days;
  if (modeTurnedOnCount7Days)
  {
    v29 = modeTurnedOnCount7Days;
  }

  else
  {
    v29 = &unk_283A55F40;
  }

  v131[23] = v29;
  v130[24] = @"ModeTurnedOnCountToday";
  modeTurnedOnCountToday = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnCountToday];
  v105 = modeTurnedOnCountToday;
  if (modeTurnedOnCountToday)
  {
    v31 = modeTurnedOnCountToday;
  }

  else
  {
    v31 = &unk_283A55F40;
  }

  v131[24] = v31;
  v130[25] = @"ModeTurnedOnDuration7Days";
  modeTurnedOnDuration7Days = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnDuration7Days];
  v104 = modeTurnedOnDuration7Days;
  if (modeTurnedOnDuration7Days)
  {
    v33 = modeTurnedOnDuration7Days;
  }

  else
  {
    v33 = &unk_283A55F40;
  }

  v131[25] = v33;
  v130[26] = @"ModeTurnedOnDurationToday";
  modeTurnedOnDurationToday = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnDurationToday];
  v103 = modeTurnedOnDurationToday;
  if (modeTurnedOnDurationToday)
  {
    v35 = modeTurnedOnDurationToday;
  }

  else
  {
    v35 = &unk_283A55F40;
  }

  v131[26] = v35;
  v130[27] = @"ModeNotificationsClearedCount7Days";
  modeNotificationsClearedCount7Days = [(ATXModeSetupPredictionMetrics *)self modeNotificationsClearedCount7Days];
  v102 = modeNotificationsClearedCount7Days;
  if (modeNotificationsClearedCount7Days)
  {
    v37 = modeNotificationsClearedCount7Days;
  }

  else
  {
    v37 = &unk_283A55F40;
  }

  v131[27] = v37;
  v130[28] = @"ModeNotificationsClearedCountToday";
  modeNotificationsClearedCountToday = [(ATXModeSetupPredictionMetrics *)self modeNotificationsClearedCountToday];
  v101 = modeNotificationsClearedCountToday;
  if (modeNotificationsClearedCountToday)
  {
    v39 = modeNotificationsClearedCountToday;
  }

  else
  {
    v39 = &unk_283A55F40;
  }

  v131[28] = v39;
  v130[29] = @"GlobalNotificationsClearedCount7Days";
  globalNotificationsClearedCount7Days = [(ATXModeSetupPredictionMetrics *)self globalNotificationsClearedCount7Days];
  v100 = globalNotificationsClearedCount7Days;
  if (globalNotificationsClearedCount7Days)
  {
    v41 = globalNotificationsClearedCount7Days;
  }

  else
  {
    v41 = &unk_283A55F40;
  }

  v131[29] = v41;
  v130[30] = @"GlobalNotificationsClearedCountToday";
  globalNotificationsClearedCountToday = [(ATXModeSetupPredictionMetrics *)self globalNotificationsClearedCountToday];
  v99 = globalNotificationsClearedCountToday;
  if (globalNotificationsClearedCountToday)
  {
    v43 = globalNotificationsClearedCountToday;
  }

  else
  {
    v43 = &unk_283A55F40;
  }

  v131[30] = v43;
  v130[31] = @"ModeNotificationsCount7Days";
  modeNotificationsCount7Days = [(ATXModeSetupPredictionMetrics *)self modeNotificationsCount7Days];
  v98 = modeNotificationsCount7Days;
  if (modeNotificationsCount7Days)
  {
    v45 = modeNotificationsCount7Days;
  }

  else
  {
    v45 = &unk_283A55F40;
  }

  v131[31] = v45;
  v130[32] = @"ModeNotificationsCountToday";
  modeNotificationsCountToday = [(ATXModeSetupPredictionMetrics *)self modeNotificationsCountToday];
  v97 = modeNotificationsCountToday;
  if (modeNotificationsCountToday)
  {
    v47 = modeNotificationsCountToday;
  }

  else
  {
    v47 = &unk_283A55F40;
  }

  v131[32] = v47;
  v130[33] = @"GlobalNotificationsCount7Days";
  globalNotificationsCount7Days = [(ATXModeSetupPredictionMetrics *)self globalNotificationsCount7Days];
  v96 = globalNotificationsCount7Days;
  if (globalNotificationsCount7Days)
  {
    v49 = globalNotificationsCount7Days;
  }

  else
  {
    v49 = &unk_283A55F40;
  }

  v131[33] = v49;
  v130[34] = @"GlobalNotificationsCountToday";
  globalNotificationsCountToday = [(ATXModeSetupPredictionMetrics *)self globalNotificationsCountToday];
  v95 = globalNotificationsCountToday;
  if (globalNotificationsCountToday)
  {
    v51 = globalNotificationsCountToday;
  }

  else
  {
    v51 = &unk_283A55F40;
  }

  v131[34] = v51;
  v130[35] = @"ModeWeightedAppLaunchCountBasedOnGlobalPriors7Days";
  modeWeightedAppLaunchCountBasedOnGlobalPriors7Days = [(ATXModeSetupPredictionMetrics *)self modeWeightedAppLaunchCountBasedOnGlobalPriors7Days];
  v94 = modeWeightedAppLaunchCountBasedOnGlobalPriors7Days;
  if (modeWeightedAppLaunchCountBasedOnGlobalPriors7Days)
  {
    v53 = modeWeightedAppLaunchCountBasedOnGlobalPriors7Days;
  }

  else
  {
    v53 = &unk_283A55F40;
  }

  v131[35] = v53;
  v130[36] = @"ModeWeightedAppLaunchCountBasedOnGlobalPriorsToday";
  modeWeightedAppLaunchCountBasedOnGlobalPriorsToday = [(ATXModeSetupPredictionMetrics *)self modeWeightedAppLaunchCountBasedOnGlobalPriorsToday];
  v93 = modeWeightedAppLaunchCountBasedOnGlobalPriorsToday;
  if (modeWeightedAppLaunchCountBasedOnGlobalPriorsToday)
  {
    v55 = modeWeightedAppLaunchCountBasedOnGlobalPriorsToday;
  }

  else
  {
    v55 = &unk_283A55F40;
  }

  v131[36] = v55;
  v130[37] = @"GlobalPosterConfigurationsCount";
  globalPosterConfigurationsCount = [(ATXModeSetupPredictionMetrics *)self globalPosterConfigurationsCount];
  v92 = globalPosterConfigurationsCount;
  if (globalPosterConfigurationsCount)
  {
    v57 = globalPosterConfigurationsCount;
  }

  else
  {
    v57 = &unk_283A55F40;
  }

  v131[37] = v57;
  v130[38] = @"GlobalAppInterruptionsCount7Days";
  globalAppInterruptionsCount7Days = [(ATXModeSetupPredictionMetrics *)self globalAppInterruptionsCount7Days];
  v91 = globalAppInterruptionsCount7Days;
  if (globalAppInterruptionsCount7Days)
  {
    v59 = globalAppInterruptionsCount7Days;
  }

  else
  {
    v59 = &unk_283A55F40;
  }

  v131[38] = v59;
  v130[39] = @"GlobalAppInterruptionsCountToday";
  globalAppInterruptionsCountToday = [(ATXModeSetupPredictionMetrics *)self globalAppInterruptionsCountToday];
  v90 = globalAppInterruptionsCountToday;
  if (globalAppInterruptionsCountToday)
  {
    v61 = globalAppInterruptionsCountToday;
  }

  else
  {
    v61 = &unk_283A55F40;
  }

  v131[39] = v61;
  v130[40] = @"ModeAppInterruptionsCountInModeInferred7Days";
  modeAppInterruptionsCountInModeInferred7Days = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountInModeInferred7Days];
  v89 = modeAppInterruptionsCountInModeInferred7Days;
  if (modeAppInterruptionsCountInModeInferred7Days)
  {
    v63 = modeAppInterruptionsCountInModeInferred7Days;
  }

  else
  {
    v63 = &unk_283A55F40;
  }

  v131[40] = v63;
  v130[41] = @"ModeAppInterruptionsCountInModeInferredToday";
  modeAppInterruptionsCountInModeInferredToday = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountInModeInferredToday];
  v88 = modeAppInterruptionsCountInModeInferredToday;
  if (modeAppInterruptionsCountInModeInferredToday)
  {
    v65 = modeAppInterruptionsCountInModeInferredToday;
  }

  else
  {
    v65 = &unk_283A55F40;
  }

  v131[41] = v65;
  v130[42] = @"ModeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days";
  modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days];
  v67 = modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days;
  if (modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days)
  {
    v68 = modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days;
  }

  else
  {
    v68 = &unk_283A55F40;
  }

  v131[42] = v68;
  v130[43] = @"ModeAppInterruptionsCountBasedOnAllowListOfInferredModeToday";
  modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday];
  v70 = modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday;
  if (modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday)
  {
    v71 = modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday;
  }

  else
  {
    v71 = &unk_283A55F40;
  }

  v131[43] = v71;
  v130[44] = @"ModeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days";
  modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days];
  v73 = modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days;
  if (modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days)
  {
    v74 = modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days;
  }

  else
  {
    v74 = &unk_283A55F40;
  }

  v131[44] = v74;
  v130[45] = @"ModeAppInterruptionsCountBasedOnDenyListOfInferredModeToday";
  modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday];
  v76 = modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday;
  if (modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday)
  {
    v77 = modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday;
  }

  else
  {
    v77 = &unk_283A55F40;
  }

  v131[45] = v77;
  v130[46] = @"TrialTreatmentId";
  trialTreatmentId = [(ATXModeSetupPredictionMetrics *)self trialTreatmentId];
  null = trialTreatmentId;
  if (!trialTreatmentId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v131[46] = null;
  v130[47] = @"TrialExperimentId";
  trialExperimentId = [(ATXModeSetupPredictionMetrics *)self trialExperimentId];
  null2 = trialExperimentId;
  if (!trialExperimentId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v131[47] = null2;
  v130[48] = @"TrialDeploymentId";
  trialDeploymentId = [(ATXModeSetupPredictionMetrics *)self trialDeploymentId];
  null3 = trialDeploymentId;
  if (!trialDeploymentId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v131[48] = null3;
  v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:49];
  if (!trialDeploymentId)
  {
  }

  if (!trialExperimentId)
  {
  }

  if (!trialTreatmentId)
  {
  }

  if (!v129)
  {
  }

  v84 = *MEMORY[0x277D85DE8];

  return v87;
}

- (id)description
{
  v39 = MEMORY[0x277CCACA8];
  modeName = [(ATXModeSetupPredictionMetrics *)self modeName];
  if ([(ATXModeSetupPredictionMetrics *)self modeIsCreated])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v38 = v3;
  if ([(ATXModeSetupPredictionMetrics *)self modeWasCreatedWithin7Days])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v37 = v4;
  if ([(ATXModeSetupPredictionMetrics *)self modeWasCreatedToday])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v36 = v5;
  if ([(ATXModeSetupPredictionMetrics *)self modeHasActivatedWithin7Days])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v35 = v6;
  if ([(ATXModeSetupPredictionMetrics *)self modeHasActivatedToday])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v34 = v7;
  if ([(ATXModeSetupPredictionMetrics *)self wasOfferedDigestOnboardingSuggestion])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v33 = v8;
  if ([(ATXModeSetupPredictionMetrics *)self hasSetupDigestThroughOnboardingSuggestion])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v32 = v9;
  if ([(ATXModeSetupPredictionMetrics *)self isDigestCurrentlyEnabled])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v31 = v10;
  if ([(ATXModeSetupPredictionMetrics *)self modeHasLinkedPoster])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v30 = v11;
  if ([(ATXModeSetupPredictionMetrics *)self modeHasSmartActivationEnabled])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v29 = v12;
  globalAllPagesFolderCountBucket = [(ATXModeSetupPredictionMetrics *)self globalAllPagesFolderCountBucket];
  globalAllPagesWidgetCountBucket = [(ATXModeSetupPredictionMetrics *)self globalAllPagesWidgetCountBucket];
  homePageFolderCountBucket = [(ATXModeSetupPredictionMetrics *)self homePageFolderCountBucket];
  homePageWidgetCountBucket = [(ATXModeSetupPredictionMetrics *)self homePageWidgetCountBucket];
  globalAppLaunchCount7Days = [(ATXModeSetupPredictionMetrics *)self globalAppLaunchCount7Days];
  globalAppLaunchCountToday = [(ATXModeSetupPredictionMetrics *)self globalAppLaunchCountToday];
  modeAppLaunchCountBasedOnGlobalPriors7Days = [(ATXModeSetupPredictionMetrics *)self modeAppLaunchCountBasedOnGlobalPriors7Days];
  modeAppLaunchCountBasedOnGlobalPriorsToday = [(ATXModeSetupPredictionMetrics *)self modeAppLaunchCountBasedOnGlobalPriorsToday];
  modeInferredDuration7Days = [(ATXModeSetupPredictionMetrics *)self modeInferredDuration7Days];
  modeInferredDurationToday = [(ATXModeSetupPredictionMetrics *)self modeInferredDurationToday];
  modeInferredCount7Days = [(ATXModeSetupPredictionMetrics *)self modeInferredCount7Days];
  modeInferredCountToday = [(ATXModeSetupPredictionMetrics *)self modeInferredCountToday];
  modeTurnedOnCount7Days = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnCount7Days];
  modeTurnedOnCountToday = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnCountToday];
  modeTurnedOnDuration7Days = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnDuration7Days];
  modeTurnedOnDurationToday = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnDurationToday];
  modeNotificationsClearedCount7Days = [(ATXModeSetupPredictionMetrics *)self modeNotificationsClearedCount7Days];
  modeNotificationsClearedCountToday = [(ATXModeSetupPredictionMetrics *)self modeNotificationsClearedCountToday];
  globalNotificationsClearedCount7Days = [(ATXModeSetupPredictionMetrics *)self globalNotificationsClearedCount7Days];
  globalNotificationsClearedCountToday = [(ATXModeSetupPredictionMetrics *)self globalNotificationsClearedCountToday];
  modeNotificationsCount7Days = [(ATXModeSetupPredictionMetrics *)self modeNotificationsCount7Days];
  modeNotificationsCountToday = [(ATXModeSetupPredictionMetrics *)self modeNotificationsCountToday];
  globalNotificationsCount7Days = [(ATXModeSetupPredictionMetrics *)self globalNotificationsCount7Days];
  globalNotificationsCountToday = [(ATXModeSetupPredictionMetrics *)self globalNotificationsCountToday];
  modeWeightedAppLaunchCountBasedOnGlobalPriors7Days = [(ATXModeSetupPredictionMetrics *)self modeWeightedAppLaunchCountBasedOnGlobalPriors7Days];
  modeWeightedAppLaunchCountBasedOnGlobalPriorsToday = [(ATXModeSetupPredictionMetrics *)self modeWeightedAppLaunchCountBasedOnGlobalPriorsToday];
  globalPosterConfigurationsCount = [(ATXModeSetupPredictionMetrics *)self globalPosterConfigurationsCount];
  globalAppInterruptionsCount7Days = [(ATXModeSetupPredictionMetrics *)self globalAppInterruptionsCount7Days];
  globalAppInterruptionsCountToday = [(ATXModeSetupPredictionMetrics *)self globalAppInterruptionsCountToday];
  modeAppInterruptionsCountInModeInferred7Days = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountInModeInferred7Days];
  modeAppInterruptionsCountInModeInferredToday = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountInModeInferredToday];
  modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days];
  modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday];
  modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days];
  modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday];
  trialTreatmentId = [(ATXModeSetupPredictionMetrics *)self trialTreatmentId];
  trialExperimentId = [(ATXModeSetupPredictionMetrics *)self trialExperimentId];
  trialDeploymentId = [(ATXModeSetupPredictionMetrics *)self trialDeploymentId];
  v40 = [v39 stringWithFormat:@"ATXModeSetupPredictionMetrics\nModeName:%@ \nModeIsCreated:%@ \nModeWasCreatedWithin7Days:%@ \nModeWasCreatedToday:%@ \nModeHasActivatedWithin7Days:%@ \nModeHasActivatedToday:%@ \nWasOfferedDigestOnboardingSuggestion:%@ \nHasSetupDigestThroughOnboardingSuggestion:%@ \nIsDigestCurrentlyEnabled:%@ \nModeHasLinkedPoster:%@ \nModeHasSmartActivationEnabled:%@ \nGlobalAllPagesFolderCountBucket:%@ \nGlobalAllPagesWidgetCountBucket:%@ \nHomePageFolderCountBucket:%@ \nHomePageWidgetCountBucket:%@ \nGlobalAppLaunchCount7Days:%@ \nGlobalAppLaunchCountToday:%@ \nModeAppLaunchCountBasedOnGlobalPriors7Days:%@ \nModeAppLaunchCountBasedOnGlobalPriorsToday:%@ \nModeInferredDuration7Days:%@ \nModeInferredDurationToday:%@ \nModeInferredCount7Days:%@ \nModeInferredCountToday:%@ \nModeTurnedOnCount7Days:%@ \nModeTurnedOnCountToday:%@ \nModeTurnedOnDuration7Days:%@ \nModeTurnedOnDurationToday:%@ \nModeNotificationsClearedCount7Days:%@ \nModeNotificationsClearedCountToday:%@ \nGlobalNotificationsClearedCount7Days:%@ \nGlobalNotificationsClearedCountToday:%@ \nModeNotificationsCount7Days:%@ \nModeNotificationsCountToday:%@ \nGlobalNotificationsCount7Days:%@ \nGlobalNotificationsCountToday:%@ \nModeWeightedAppLaunchCountBasedOnGlobalPriors7Days:%@ \nModeWeightedAppLaunchCountBasedOnGlobalPriorsToday:%@ \nGlobalPosterConfigurationsCount:%@ \nGlobalAppInterruptionsCount7Days:%@ \nGlobalAppInterruptionsCountToday:%@ \nModeAppInterruptionsCountInModeInferred7Days:%@ \nModeAppInterruptionsCountInModeInferredToday:%@ \nModeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days:%@ \nModeAppInterruptionsCountBasedOnAllowListOfInferredModeToday:%@ \nModeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days:%@ \nModeAppInterruptionsCountBasedOnDenyListOfInferredModeToday:%@ \nTrialTreatmentId:%@ \nTrialExperimentId:%@ \nTrialDeploymentId:%@ \n", modeName, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, globalAllPagesFolderCountBucket, globalAllPagesWidgetCountBucket, homePageFolderCountBucket, homePageWidgetCountBucket, globalAppLaunchCount7Days, globalAppLaunchCountToday, modeAppLaunchCountBasedOnGlobalPriors7Days, modeAppLaunchCountBasedOnGlobalPriorsToday, modeInferredDuration7Days, modeInferredDurationToday, modeInferredCount7Days, modeInferredCountToday, modeTurnedOnCount7Days, modeTurnedOnCountToday, modeTurnedOnDuration7Days, modeTurnedOnDurationToday, modeNotificationsClearedCount7Days, modeNotificationsClearedCountToday, globalNotificationsClearedCount7Days, globalNotificationsClearedCountToday, modeNotificationsCount7Days, modeNotificationsCountToday, globalNotificationsCount7Days, globalNotificationsCountToday, modeWeightedAppLaunchCountBasedOnGlobalPriors7Days, modeWeightedAppLaunchCountBasedOnGlobalPriorsToday, globalPosterConfigurationsCount, globalAppInterruptionsCount7Days, globalAppInterruptionsCountToday, modeAppInterruptionsCountInModeInferred7Days, modeAppInterruptionsCountInModeInferredToday, modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days, modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday, modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days, modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday, trialTreatmentId, trialExperimentId, trialDeploymentId];

  return v40;
}

@end