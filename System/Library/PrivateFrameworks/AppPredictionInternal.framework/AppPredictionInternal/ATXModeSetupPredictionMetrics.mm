@interface ATXModeSetupPredictionMetrics
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation ATXModeSetupPredictionMetrics

- (id)coreAnalyticsDictionary
{
  v131[49] = *MEMORY[0x277D85DE8];
  v130[0] = @"ModeName";
  v3 = [(ATXModeSetupPredictionMetrics *)self modeName];
  v129 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v131[0] = v3;
  v130[1] = @"ModeIsCreated";
  v128 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXModeSetupPredictionMetrics modeIsCreated](self, "modeIsCreated", v3)}];
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
  v4 = [(ATXModeSetupPredictionMetrics *)self globalAllPagesFolderCountBucket];
  v118 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_283A55F40;
  }

  v131[11] = v5;
  v130[12] = @"GlobalAllPagesWidgetCountBucket";
  v6 = [(ATXModeSetupPredictionMetrics *)self globalAllPagesWidgetCountBucket];
  v117 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &unk_283A55F40;
  }

  v131[12] = v7;
  v130[13] = @"HomePageFolderCountBucket";
  v8 = [(ATXModeSetupPredictionMetrics *)self homePageFolderCountBucket];
  v116 = v8;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &unk_283A55F40;
  }

  v131[13] = v9;
  v130[14] = @"HomePageWidgetCountBucket";
  v10 = [(ATXModeSetupPredictionMetrics *)self homePageWidgetCountBucket];
  v115 = v10;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &unk_283A55F40;
  }

  v131[14] = v11;
  v130[15] = @"GlobalAppLaunchCount7Days";
  v12 = [(ATXModeSetupPredictionMetrics *)self globalAppLaunchCount7Days];
  v114 = v12;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &unk_283A55F40;
  }

  v131[15] = v13;
  v130[16] = @"GlobalAppLaunchCountToday";
  v14 = [(ATXModeSetupPredictionMetrics *)self globalAppLaunchCountToday];
  v113 = v14;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_283A55F40;
  }

  v131[16] = v15;
  v130[17] = @"ModeAppLaunchCountBasedOnGlobalPriors7Days";
  v16 = [(ATXModeSetupPredictionMetrics *)self modeAppLaunchCountBasedOnGlobalPriors7Days];
  v112 = v16;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_283A55F40;
  }

  v131[17] = v17;
  v130[18] = @"ModeAppLaunchCountBasedOnGlobalPriorsToday";
  v18 = [(ATXModeSetupPredictionMetrics *)self modeAppLaunchCountBasedOnGlobalPriorsToday];
  v111 = v18;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &unk_283A55F40;
  }

  v131[18] = v19;
  v130[19] = @"ModeInferredDuration7Days";
  v20 = [(ATXModeSetupPredictionMetrics *)self modeInferredDuration7Days];
  v110 = v20;
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = &unk_283A55F40;
  }

  v131[19] = v21;
  v130[20] = @"ModeInferredDurationToday";
  v22 = [(ATXModeSetupPredictionMetrics *)self modeInferredDurationToday];
  v109 = v22;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = &unk_283A55F40;
  }

  v131[20] = v23;
  v130[21] = @"ModeInferredCount7Days";
  v24 = [(ATXModeSetupPredictionMetrics *)self modeInferredCount7Days];
  v108 = v24;
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = &unk_283A55F40;
  }

  v131[21] = v25;
  v130[22] = @"ModeInferredCountToday";
  v26 = [(ATXModeSetupPredictionMetrics *)self modeInferredCountToday];
  v107 = v26;
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = &unk_283A55F40;
  }

  v131[22] = v27;
  v130[23] = @"ModeTurnedOnCount7Days";
  v28 = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnCount7Days];
  v106 = v28;
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = &unk_283A55F40;
  }

  v131[23] = v29;
  v130[24] = @"ModeTurnedOnCountToday";
  v30 = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnCountToday];
  v105 = v30;
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = &unk_283A55F40;
  }

  v131[24] = v31;
  v130[25] = @"ModeTurnedOnDuration7Days";
  v32 = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnDuration7Days];
  v104 = v32;
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = &unk_283A55F40;
  }

  v131[25] = v33;
  v130[26] = @"ModeTurnedOnDurationToday";
  v34 = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnDurationToday];
  v103 = v34;
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = &unk_283A55F40;
  }

  v131[26] = v35;
  v130[27] = @"ModeNotificationsClearedCount7Days";
  v36 = [(ATXModeSetupPredictionMetrics *)self modeNotificationsClearedCount7Days];
  v102 = v36;
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = &unk_283A55F40;
  }

  v131[27] = v37;
  v130[28] = @"ModeNotificationsClearedCountToday";
  v38 = [(ATXModeSetupPredictionMetrics *)self modeNotificationsClearedCountToday];
  v101 = v38;
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = &unk_283A55F40;
  }

  v131[28] = v39;
  v130[29] = @"GlobalNotificationsClearedCount7Days";
  v40 = [(ATXModeSetupPredictionMetrics *)self globalNotificationsClearedCount7Days];
  v100 = v40;
  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = &unk_283A55F40;
  }

  v131[29] = v41;
  v130[30] = @"GlobalNotificationsClearedCountToday";
  v42 = [(ATXModeSetupPredictionMetrics *)self globalNotificationsClearedCountToday];
  v99 = v42;
  if (v42)
  {
    v43 = v42;
  }

  else
  {
    v43 = &unk_283A55F40;
  }

  v131[30] = v43;
  v130[31] = @"ModeNotificationsCount7Days";
  v44 = [(ATXModeSetupPredictionMetrics *)self modeNotificationsCount7Days];
  v98 = v44;
  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = &unk_283A55F40;
  }

  v131[31] = v45;
  v130[32] = @"ModeNotificationsCountToday";
  v46 = [(ATXModeSetupPredictionMetrics *)self modeNotificationsCountToday];
  v97 = v46;
  if (v46)
  {
    v47 = v46;
  }

  else
  {
    v47 = &unk_283A55F40;
  }

  v131[32] = v47;
  v130[33] = @"GlobalNotificationsCount7Days";
  v48 = [(ATXModeSetupPredictionMetrics *)self globalNotificationsCount7Days];
  v96 = v48;
  if (v48)
  {
    v49 = v48;
  }

  else
  {
    v49 = &unk_283A55F40;
  }

  v131[33] = v49;
  v130[34] = @"GlobalNotificationsCountToday";
  v50 = [(ATXModeSetupPredictionMetrics *)self globalNotificationsCountToday];
  v95 = v50;
  if (v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = &unk_283A55F40;
  }

  v131[34] = v51;
  v130[35] = @"ModeWeightedAppLaunchCountBasedOnGlobalPriors7Days";
  v52 = [(ATXModeSetupPredictionMetrics *)self modeWeightedAppLaunchCountBasedOnGlobalPriors7Days];
  v94 = v52;
  if (v52)
  {
    v53 = v52;
  }

  else
  {
    v53 = &unk_283A55F40;
  }

  v131[35] = v53;
  v130[36] = @"ModeWeightedAppLaunchCountBasedOnGlobalPriorsToday";
  v54 = [(ATXModeSetupPredictionMetrics *)self modeWeightedAppLaunchCountBasedOnGlobalPriorsToday];
  v93 = v54;
  if (v54)
  {
    v55 = v54;
  }

  else
  {
    v55 = &unk_283A55F40;
  }

  v131[36] = v55;
  v130[37] = @"GlobalPosterConfigurationsCount";
  v56 = [(ATXModeSetupPredictionMetrics *)self globalPosterConfigurationsCount];
  v92 = v56;
  if (v56)
  {
    v57 = v56;
  }

  else
  {
    v57 = &unk_283A55F40;
  }

  v131[37] = v57;
  v130[38] = @"GlobalAppInterruptionsCount7Days";
  v58 = [(ATXModeSetupPredictionMetrics *)self globalAppInterruptionsCount7Days];
  v91 = v58;
  if (v58)
  {
    v59 = v58;
  }

  else
  {
    v59 = &unk_283A55F40;
  }

  v131[38] = v59;
  v130[39] = @"GlobalAppInterruptionsCountToday";
  v60 = [(ATXModeSetupPredictionMetrics *)self globalAppInterruptionsCountToday];
  v90 = v60;
  if (v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = &unk_283A55F40;
  }

  v131[39] = v61;
  v130[40] = @"ModeAppInterruptionsCountInModeInferred7Days";
  v62 = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountInModeInferred7Days];
  v89 = v62;
  if (v62)
  {
    v63 = v62;
  }

  else
  {
    v63 = &unk_283A55F40;
  }

  v131[40] = v63;
  v130[41] = @"ModeAppInterruptionsCountInModeInferredToday";
  v64 = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountInModeInferredToday];
  v88 = v64;
  if (v64)
  {
    v65 = v64;
  }

  else
  {
    v65 = &unk_283A55F40;
  }

  v131[41] = v65;
  v130[42] = @"ModeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days";
  v66 = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days];
  v67 = v66;
  if (v66)
  {
    v68 = v66;
  }

  else
  {
    v68 = &unk_283A55F40;
  }

  v131[42] = v68;
  v130[43] = @"ModeAppInterruptionsCountBasedOnAllowListOfInferredModeToday";
  v69 = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday];
  v70 = v69;
  if (v69)
  {
    v71 = v69;
  }

  else
  {
    v71 = &unk_283A55F40;
  }

  v131[43] = v71;
  v130[44] = @"ModeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days";
  v72 = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days];
  v73 = v72;
  if (v72)
  {
    v74 = v72;
  }

  else
  {
    v74 = &unk_283A55F40;
  }

  v131[44] = v74;
  v130[45] = @"ModeAppInterruptionsCountBasedOnDenyListOfInferredModeToday";
  v75 = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday];
  v76 = v75;
  if (v75)
  {
    v77 = v75;
  }

  else
  {
    v77 = &unk_283A55F40;
  }

  v131[45] = v77;
  v130[46] = @"TrialTreatmentId";
  v78 = [(ATXModeSetupPredictionMetrics *)self trialTreatmentId];
  v79 = v78;
  if (!v78)
  {
    v79 = [MEMORY[0x277CBEB68] null];
  }

  v131[46] = v79;
  v130[47] = @"TrialExperimentId";
  v80 = [(ATXModeSetupPredictionMetrics *)self trialExperimentId];
  v81 = v80;
  if (!v80)
  {
    v81 = [MEMORY[0x277CBEB68] null];
  }

  v131[47] = v81;
  v130[48] = @"TrialDeploymentId";
  v82 = [(ATXModeSetupPredictionMetrics *)self trialDeploymentId];
  v83 = v82;
  if (!v82)
  {
    v83 = [MEMORY[0x277CBEB68] null];
  }

  v131[48] = v83;
  v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:49];
  if (!v82)
  {
  }

  if (!v80)
  {
  }

  if (!v78)
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
  v64 = [(ATXModeSetupPredictionMetrics *)self modeName];
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
  v57 = [(ATXModeSetupPredictionMetrics *)self globalAllPagesFolderCountBucket];
  v62 = [(ATXModeSetupPredictionMetrics *)self globalAllPagesWidgetCountBucket];
  v63 = [(ATXModeSetupPredictionMetrics *)self homePageFolderCountBucket];
  v60 = [(ATXModeSetupPredictionMetrics *)self homePageWidgetCountBucket];
  v61 = [(ATXModeSetupPredictionMetrics *)self globalAppLaunchCount7Days];
  v58 = [(ATXModeSetupPredictionMetrics *)self globalAppLaunchCountToday];
  v55 = [(ATXModeSetupPredictionMetrics *)self modeAppLaunchCountBasedOnGlobalPriors7Days];
  v59 = [(ATXModeSetupPredictionMetrics *)self modeAppLaunchCountBasedOnGlobalPriorsToday];
  v53 = [(ATXModeSetupPredictionMetrics *)self modeInferredDuration7Days];
  v56 = [(ATXModeSetupPredictionMetrics *)self modeInferredDurationToday];
  v54 = [(ATXModeSetupPredictionMetrics *)self modeInferredCount7Days];
  v51 = [(ATXModeSetupPredictionMetrics *)self modeInferredCountToday];
  v50 = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnCount7Days];
  v52 = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnCountToday];
  v48 = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnDuration7Days];
  v49 = [(ATXModeSetupPredictionMetrics *)self modeTurnedOnDurationToday];
  v47 = [(ATXModeSetupPredictionMetrics *)self modeNotificationsClearedCount7Days];
  v28 = [(ATXModeSetupPredictionMetrics *)self modeNotificationsClearedCountToday];
  v46 = [(ATXModeSetupPredictionMetrics *)self globalNotificationsClearedCount7Days];
  v27 = [(ATXModeSetupPredictionMetrics *)self globalNotificationsClearedCountToday];
  v45 = [(ATXModeSetupPredictionMetrics *)self modeNotificationsCount7Days];
  v26 = [(ATXModeSetupPredictionMetrics *)self modeNotificationsCountToday];
  v44 = [(ATXModeSetupPredictionMetrics *)self globalNotificationsCount7Days];
  v25 = [(ATXModeSetupPredictionMetrics *)self globalNotificationsCountToday];
  v43 = [(ATXModeSetupPredictionMetrics *)self modeWeightedAppLaunchCountBasedOnGlobalPriors7Days];
  v24 = [(ATXModeSetupPredictionMetrics *)self modeWeightedAppLaunchCountBasedOnGlobalPriorsToday];
  v42 = [(ATXModeSetupPredictionMetrics *)self globalPosterConfigurationsCount];
  v41 = [(ATXModeSetupPredictionMetrics *)self globalAppInterruptionsCount7Days];
  v23 = [(ATXModeSetupPredictionMetrics *)self globalAppInterruptionsCountToday];
  v22 = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountInModeInferred7Days];
  v21 = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountInModeInferredToday];
  v20 = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days];
  v19 = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday];
  v13 = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days];
  v14 = [(ATXModeSetupPredictionMetrics *)self modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday];
  v15 = [(ATXModeSetupPredictionMetrics *)self trialTreatmentId];
  v16 = [(ATXModeSetupPredictionMetrics *)self trialExperimentId];
  v17 = [(ATXModeSetupPredictionMetrics *)self trialDeploymentId];
  v40 = [v39 stringWithFormat:@"ATXModeSetupPredictionMetrics\nModeName:%@ \nModeIsCreated:%@ \nModeWasCreatedWithin7Days:%@ \nModeWasCreatedToday:%@ \nModeHasActivatedWithin7Days:%@ \nModeHasActivatedToday:%@ \nWasOfferedDigestOnboardingSuggestion:%@ \nHasSetupDigestThroughOnboardingSuggestion:%@ \nIsDigestCurrentlyEnabled:%@ \nModeHasLinkedPoster:%@ \nModeHasSmartActivationEnabled:%@ \nGlobalAllPagesFolderCountBucket:%@ \nGlobalAllPagesWidgetCountBucket:%@ \nHomePageFolderCountBucket:%@ \nHomePageWidgetCountBucket:%@ \nGlobalAppLaunchCount7Days:%@ \nGlobalAppLaunchCountToday:%@ \nModeAppLaunchCountBasedOnGlobalPriors7Days:%@ \nModeAppLaunchCountBasedOnGlobalPriorsToday:%@ \nModeInferredDuration7Days:%@ \nModeInferredDurationToday:%@ \nModeInferredCount7Days:%@ \nModeInferredCountToday:%@ \nModeTurnedOnCount7Days:%@ \nModeTurnedOnCountToday:%@ \nModeTurnedOnDuration7Days:%@ \nModeTurnedOnDurationToday:%@ \nModeNotificationsClearedCount7Days:%@ \nModeNotificationsClearedCountToday:%@ \nGlobalNotificationsClearedCount7Days:%@ \nGlobalNotificationsClearedCountToday:%@ \nModeNotificationsCount7Days:%@ \nModeNotificationsCountToday:%@ \nGlobalNotificationsCount7Days:%@ \nGlobalNotificationsCountToday:%@ \nModeWeightedAppLaunchCountBasedOnGlobalPriors7Days:%@ \nModeWeightedAppLaunchCountBasedOnGlobalPriorsToday:%@ \nGlobalPosterConfigurationsCount:%@ \nGlobalAppInterruptionsCount7Days:%@ \nGlobalAppInterruptionsCountToday:%@ \nModeAppInterruptionsCountInModeInferred7Days:%@ \nModeAppInterruptionsCountInModeInferredToday:%@ \nModeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days:%@ \nModeAppInterruptionsCountBasedOnAllowListOfInferredModeToday:%@ \nModeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days:%@ \nModeAppInterruptionsCountBasedOnDenyListOfInferredModeToday:%@ \nTrialTreatmentId:%@ \nTrialExperimentId:%@ \nTrialDeploymentId:%@ \n", v64, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v57, v62, v63, v60, v61, v58, v55, v59, v53, v56, v54, v51, v50, v52, v48, v49, v47, v28, v46, v27, v45, v26, v44, v25, v43, v24, v42, v41, v23, v22, v21, v20, v19, v13, v14, v15, v16, v17];

  return v40;
}

@end