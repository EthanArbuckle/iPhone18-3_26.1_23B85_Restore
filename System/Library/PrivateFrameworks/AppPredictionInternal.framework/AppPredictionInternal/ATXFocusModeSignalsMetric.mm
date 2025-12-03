@interface ATXFocusModeSignalsMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXFocusModeSignalsMetric

- (id)coreAnalyticsDictionary
{
  v165[47] = *MEMORY[0x277D85DE8];
  v164[0] = @"FocusMode";
  [(ATXFocusModeSignalsMetric *)self focusMode];
  null = ATXModeToString();
  v4 = null;
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v122 = null;
  v165[0] = null;
  v164[1] = @"AppBundleId";
  appBundleId = [(ATXFocusModeSignalsMetric *)self appBundleId];
  v6 = appBundleId;
  if (!appBundleId)
  {
    appBundleId = [MEMORY[0x277CBEB68] null];
  }

  v139 = v6;
  v140 = v4;
  v121 = appBundleId;
  v165[1] = appBundleId;
  v164[2] = @"ActiveConfigurationType";
  activeConfigurationType = [(ATXFocusModeSignalsMetric *)self activeConfigurationType];
  v8 = activeConfigurationType;
  if (!activeConfigurationType)
  {
    activeConfigurationType = [MEMORY[0x277CBEB68] null];
  }

  v120 = activeConfigurationType;
  v165[2] = activeConfigurationType;
  v164[3] = @"wasAppSuggestedDuringModeSetup";
  v137 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric wasAppSuggestedDuringModeSetup](self, "wasAppSuggestedDuringModeSetup")}];
  v165[3] = v137;
  v164[4] = @"wasAppSuggestionDuringModeSetupAccepted";
  v136 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric wasAppSuggestionDuringModeSetupAccepted](self, "wasAppSuggestionDuringModeSetupAccepted")}];
  v165[4] = v136;
  v164[5] = @"CategoryScore";
  categoryScore = [(ATXFocusModeSignalsMetric *)self categoryScore];
  v10 = categoryScore;
  if (!categoryScore)
  {
    categoryScore = [MEMORY[0x277CBEB68] null];
  }

  v119 = categoryScore;
  v165[5] = categoryScore;
  v164[6] = @"ClassConditionalProbabilityOfModeGivenEntity";
  classConditionalProbabilityOfModeGivenEntity = [(ATXFocusModeSignalsMetric *)self classConditionalProbabilityOfModeGivenEntity];
  v12 = classConditionalProbabilityOfModeGivenEntity;
  if (!classConditionalProbabilityOfModeGivenEntity)
  {
    classConditionalProbabilityOfModeGivenEntity = [MEMORY[0x277CBEB68] null];
  }

  v118 = classConditionalProbabilityOfModeGivenEntity;
  v165[6] = classConditionalProbabilityOfModeGivenEntity;
  v164[7] = @"EntityModeEntityScore";
  entityModeEntityScore = [(ATXFocusModeSignalsMetric *)self entityModeEntityScore];
  v14 = entityModeEntityScore;
  if (!entityModeEntityScore)
  {
    entityModeEntityScore = [MEMORY[0x277CBEB68] null];
  }

  v117 = entityModeEntityScore;
  v165[7] = entityModeEntityScore;
  v164[8] = @"GlobalPopularityForEntity";
  globalPopularityForEntity = [(ATXFocusModeSignalsMetric *)self globalPopularityForEntity];
  v16 = globalPopularityForEntity;
  if (!globalPopularityForEntity)
  {
    globalPopularityForEntity = [MEMORY[0x277CBEB68] null];
  }

  v116 = globalPopularityForEntity;
  v165[8] = globalPopularityForEntity;
  v164[9] = @"ModePopularityForEntity";
  modePopularityForEntity = [(ATXFocusModeSignalsMetric *)self modePopularityForEntity];
  v18 = modePopularityForEntity;
  if (!modePopularityForEntity)
  {
    modePopularityForEntity = [MEMORY[0x277CBEB68] null];
  }

  v115 = modePopularityForEntity;
  v165[9] = modePopularityForEntity;
  v164[10] = @"RatioOfModePopularityToGlobalPopularityOfEntity";
  ratioOfModePopularityToGlobalPopularityOfEntity = [(ATXFocusModeSignalsMetric *)self ratioOfModePopularityToGlobalPopularityOfEntity];
  v130 = ratioOfModePopularityToGlobalPopularityOfEntity;
  if (!ratioOfModePopularityToGlobalPopularityOfEntity)
  {
    ratioOfModePopularityToGlobalPopularityOfEntity = [MEMORY[0x277CBEB68] null];
  }

  v114 = ratioOfModePopularityToGlobalPopularityOfEntity;
  v165[10] = ratioOfModePopularityToGlobalPopularityOfEntity;
  v164[11] = @"PosteriorProbabilityOfEntityGivenMode";
  posteriorProbabilityOfEntityGivenMode = [(ATXFocusModeSignalsMetric *)self posteriorProbabilityOfEntityGivenMode];
  v21 = posteriorProbabilityOfEntityGivenMode;
  if (!posteriorProbabilityOfEntityGivenMode)
  {
    posteriorProbabilityOfEntityGivenMode = [MEMORY[0x277CBEB68] null];
  }

  v113 = posteriorProbabilityOfEntityGivenMode;
  v165[11] = posteriorProbabilityOfEntityGivenMode;
  v164[12] = @"GlobalOccurrencesOfEntity";
  globalOccurrencesOfEntity = [(ATXFocusModeSignalsMetric *)self globalOccurrencesOfEntity];
  v163 = globalOccurrencesOfEntity;
  if (!globalOccurrencesOfEntity)
  {
    globalOccurrencesOfEntity = [MEMORY[0x277CBEB68] null];
  }

  v112 = globalOccurrencesOfEntity;
  v165[12] = globalOccurrencesOfEntity;
  v164[13] = @"LocalOccurrencesOfEntityInMode";
  localOccurrencesOfEntityInMode = [(ATXFocusModeSignalsMetric *)self localOccurrencesOfEntityInMode];
  v162 = localOccurrencesOfEntityInMode;
  if (!localOccurrencesOfEntityInMode)
  {
    localOccurrencesOfEntityInMode = [MEMORY[0x277CBEB68] null];
  }

  v111 = localOccurrencesOfEntityInMode;
  v165[13] = localOccurrencesOfEntityInMode;
  v164[14] = @"UniqueOccurrencesOfEntityInMode";
  uniqueOccurrencesOfEntityInMode = [(ATXFocusModeSignalsMetric *)self uniqueOccurrencesOfEntityInMode];
  v161 = uniqueOccurrencesOfEntityInMode;
  if (!uniqueOccurrencesOfEntityInMode)
  {
    uniqueOccurrencesOfEntityInMode = [MEMORY[0x277CBEB68] null];
  }

  v110 = uniqueOccurrencesOfEntityInMode;
  v165[14] = uniqueOccurrencesOfEntityInMode;
  v164[15] = @"EntityOccurredGloballyOverTheLastNDays";
  v128 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric entityOccurredGloballyOverLastNDays](self, "entityOccurredGloballyOverLastNDays")}];
  v165[15] = v128;
  v164[16] = @"EntityOccurredInModeOverLastNDays";
  v127 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric entityOccurredInModeOverLastNDays](self, "entityOccurredInModeOverLastNDays")}];
  v165[16] = v127;
  v164[17] = @"WidgetBundleIdAndKind";
  widgetBundleIdAndKind = [(ATXFocusModeSignalsMetric *)self widgetBundleIdAndKind];
  v160 = widgetBundleIdAndKind;
  if (!widgetBundleIdAndKind)
  {
    widgetBundleIdAndKind = [MEMORY[0x277CBEB68] null];
  }

  v109 = widgetBundleIdAndKind;
  v165[17] = widgetBundleIdAndKind;
  v164[18] = @"WidgetSize";
  widgetSize = [(ATXFocusModeSignalsMetric *)self widgetSize];
  v159 = widgetSize;
  if (!widgetSize)
  {
    widgetSize = [MEMORY[0x277CBEB68] null];
  }

  v108 = widgetSize;
  v165[18] = widgetSize;
  v164[19] = @"IntentHash";
  intentHash = [(ATXFocusModeSignalsMetric *)self intentHash];
  v158 = intentHash;
  if (!intentHash)
  {
    intentHash = [MEMORY[0x277CBEB68] null];
  }

  v107 = intentHash;
  v165[19] = intentHash;
  v164[20] = @"ABGroup";
  abGroup = [(ATXFocusModeSignalsMetric *)self abGroup];
  v157 = abGroup;
  if (!abGroup)
  {
    abGroup = [MEMORY[0x277CBEB68] null];
  }

  v106 = abGroup;
  v165[20] = abGroup;
  v164[21] = @"GlobalClearanceRateForEntity";
  globalClearanceRateForEntity = [(ATXFocusModeSignalsMetric *)self globalClearanceRateForEntity];
  v156 = globalClearanceRateForEntity;
  if (!globalClearanceRateForEntity)
  {
    globalClearanceRateForEntity = [MEMORY[0x277CBEB68] null];
  }

  v105 = globalClearanceRateForEntity;
  v165[21] = globalClearanceRateForEntity;
  v164[22] = @"LocalClearanceRateForEntity";
  localClearanceRateForEntity = [(ATXFocusModeSignalsMetric *)self localClearanceRateForEntity];
  v155 = localClearanceRateForEntity;
  if (!localClearanceRateForEntity)
  {
    localClearanceRateForEntity = [MEMORY[0x277CBEB68] null];
  }

  v104 = localClearanceRateForEntity;
  v165[22] = localClearanceRateForEntity;
  v164[23] = @"NotificationsClearedInMode";
  notificationsClearedInMode = [(ATXFocusModeSignalsMetric *)self notificationsClearedInMode];
  v154 = notificationsClearedInMode;
  if (!notificationsClearedInMode)
  {
    notificationsClearedInMode = [MEMORY[0x277CBEB68] null];
  }

  v103 = notificationsClearedInMode;
  v165[23] = notificationsClearedInMode;
  v164[24] = @"NotificationsClearedGlobally";
  notificationsClearedGlobally = [(ATXFocusModeSignalsMetric *)self notificationsClearedGlobally];
  v153 = notificationsClearedGlobally;
  if (!notificationsClearedGlobally)
  {
    notificationsClearedGlobally = [MEMORY[0x277CBEB68] null];
  }

  v102 = notificationsClearedGlobally;
  v165[24] = notificationsClearedGlobally;
  v164[25] = @"NotificationsMuted";
  notificationsMuted = [(ATXFocusModeSignalsMetric *)self notificationsMuted];
  v152 = notificationsMuted;
  if (!notificationsMuted)
  {
    notificationsMuted = [MEMORY[0x277CBEB68] null];
  }

  v101 = notificationsMuted;
  v165[25] = notificationsMuted;
  v164[26] = @"RatioOfLocalToGlobalNotificationsClearedRateForEntity";
  ratioOfLocalToGlobalNotificationsClearedRateForEntity = [(ATXFocusModeSignalsMetric *)self ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  v151 = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  if (!ratioOfLocalToGlobalNotificationsClearedRateForEntity)
  {
    ratioOfLocalToGlobalNotificationsClearedRateForEntity = [MEMORY[0x277CBEB68] null];
  }

  v100 = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  v165[26] = ratioOfLocalToGlobalNotificationsClearedRateForEntity;
  v164[27] = @"ClassConditionalOfNotificationsClearedForEntity";
  classConditionalOfNotificationsClearedForEntity = [(ATXFocusModeSignalsMetric *)self classConditionalOfNotificationsClearedForEntity];
  v150 = classConditionalOfNotificationsClearedForEntity;
  if (!classConditionalOfNotificationsClearedForEntity)
  {
    classConditionalOfNotificationsClearedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v99 = classConditionalOfNotificationsClearedForEntity;
  v165[27] = classConditionalOfNotificationsClearedForEntity;
  v164[28] = @"NotificationsReceivedGlobally";
  notificationsReceivedGlobally = [(ATXFocusModeSignalsMetric *)self notificationsReceivedGlobally];
  v149 = notificationsReceivedGlobally;
  if (!notificationsReceivedGlobally)
  {
    notificationsReceivedGlobally = [MEMORY[0x277CBEB68] null];
  }

  v98 = notificationsReceivedGlobally;
  v165[28] = notificationsReceivedGlobally;
  v164[29] = @"NotificationsReceivedInMode";
  notificationsReceivedInMode = [(ATXFocusModeSignalsMetric *)self notificationsReceivedInMode];
  v148 = notificationsReceivedInMode;
  if (!notificationsReceivedInMode)
  {
    notificationsReceivedInMode = [MEMORY[0x277CBEB68] null];
  }

  v97 = notificationsReceivedInMode;
  v165[29] = notificationsReceivedInMode;
  v164[30] = @"LocalPopularityOfNotificationsReceivedForEntity";
  localPopularityOfNotificationsReceivedForEntity = [(ATXFocusModeSignalsMetric *)self localPopularityOfNotificationsReceivedForEntity];
  v147 = localPopularityOfNotificationsReceivedForEntity;
  if (!localPopularityOfNotificationsReceivedForEntity)
  {
    localPopularityOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v96 = localPopularityOfNotificationsReceivedForEntity;
  v165[30] = localPopularityOfNotificationsReceivedForEntity;
  v164[31] = @"GlobalPopularityOfNotificationsReceivedForEntity";
  globalPopularityOfNotificationsReceivedForEntity = [(ATXFocusModeSignalsMetric *)self globalPopularityOfNotificationsReceivedForEntity];
  v146 = globalPopularityOfNotificationsReceivedForEntity;
  if (!globalPopularityOfNotificationsReceivedForEntity)
  {
    globalPopularityOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v95 = globalPopularityOfNotificationsReceivedForEntity;
  v165[31] = globalPopularityOfNotificationsReceivedForEntity;
  v164[32] = @"RatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity";
  ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = [(ATXFocusModeSignalsMetric *)self ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  v145 = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  if (!ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity)
  {
    ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v94 = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  v165[32] = ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity;
  v164[33] = @"ClassConditionalOfNotificationsReceivedForEntity";
  classConditionalOfNotificationsReceivedForEntity = [(ATXFocusModeSignalsMetric *)self classConditionalOfNotificationsReceivedForEntity];
  v144 = classConditionalOfNotificationsReceivedForEntity;
  if (!classConditionalOfNotificationsReceivedForEntity)
  {
    classConditionalOfNotificationsReceivedForEntity = [MEMORY[0x277CBEB68] null];
  }

  v93 = classConditionalOfNotificationsReceivedForEntity;
  v165[33] = classConditionalOfNotificationsReceivedForEntity;
  v164[34] = @"IsAppCandidateSuggestion";
  v126 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric isAppCandidateSuggestion](self, "isAppCandidateSuggestion")}];
  v165[34] = v126;
  v164[35] = @"IsAppRecommendedSuggestion";
  v125 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric isAppRecommendedSuggestion](self, "isAppRecommendedSuggestion")}];
  v165[35] = v125;
  v164[36] = @"TreatmentId";
  treatmentId = [(ATXFocusModeSignalsMetric *)self treatmentId];
  v143 = treatmentId;
  if (!treatmentId)
  {
    treatmentId = [MEMORY[0x277CBEB68] null];
  }

  v92 = treatmentId;
  v165[36] = treatmentId;
  v164[37] = @"ExperimentId";
  experimentId = [(ATXFocusModeSignalsMetric *)self experimentId];
  v142 = experimentId;
  if (!experimentId)
  {
    experimentId = [MEMORY[0x277CBEB68] null];
  }

  v91 = experimentId;
  v165[37] = experimentId;
  v164[38] = @"DeploymentId";
  deploymentId = [(ATXFocusModeSignalsMetric *)self deploymentId];
  v141 = deploymentId;
  if (!deploymentId)
  {
    deploymentId = [MEMORY[0x277CBEB68] null];
  }

  v129 = v21;
  v90 = deploymentId;
  v165[38] = deploymentId;
  v164[39] = @"GlobalModeAffinityPrior";
  globalModeAffinityPrior = [(ATXFocusModeSignalsMetric *)self globalModeAffinityPrior];
  v124 = globalModeAffinityPrior;
  if (!globalModeAffinityPrior)
  {
    globalModeAffinityPrior = [MEMORY[0x277CBEB68] null];
  }

  v135 = v10;
  v89 = globalModeAffinityPrior;
  v165[39] = globalModeAffinityPrior;
  v164[40] = @"GlobalInterruptingPrior";
  globalInterruptingPrior = [(ATXFocusModeSignalsMetric *)self globalInterruptingPrior];
  v47 = globalInterruptingPrior;
  if (!globalInterruptingPrior)
  {
    globalInterruptingPrior = [MEMORY[0x277CBEB68] null];
  }

  v138 = v8;
  v88 = globalInterruptingPrior;
  v165[40] = globalInterruptingPrior;
  v164[41] = @"ModeAppInterruptionsCountByEntity";
  modeAppInterruptionsCountByEntity = [(ATXFocusModeSignalsMetric *)self modeAppInterruptionsCountByEntity];
  v49 = modeAppInterruptionsCountByEntity;
  if (!modeAppInterruptionsCountByEntity)
  {
    modeAppInterruptionsCountByEntity = [MEMORY[0x277CBEB68] null];
  }

  v87 = modeAppInterruptionsCountByEntity;
  v165[41] = modeAppInterruptionsCountByEntity;
  v164[42] = @"ModeAppInterruptionsClassConditionalProbabilityByEntity";
  modeAppInterruptionsClassConditionalProbabilityByEntity = [(ATXFocusModeSignalsMetric *)self modeAppInterruptionsClassConditionalProbabilityByEntity];
  v51 = modeAppInterruptionsClassConditionalProbabilityByEntity;
  if (!modeAppInterruptionsClassConditionalProbabilityByEntity)
  {
    modeAppInterruptionsClassConditionalProbabilityByEntity = [MEMORY[0x277CBEB68] null];
  }

  v131 = v18;
  v134 = v12;
  v86 = modeAppInterruptionsClassConditionalProbabilityByEntity;
  v165[42] = modeAppInterruptionsClassConditionalProbabilityByEntity;
  v164[43] = @"GlobalAppInterruptionsCountByEntity";
  globalAppInterruptionsCountByEntity = [(ATXFocusModeSignalsMetric *)self globalAppInterruptionsCountByEntity];
  v53 = globalAppInterruptionsCountByEntity;
  if (!globalAppInterruptionsCountByEntity)
  {
    globalAppInterruptionsCountByEntity = [MEMORY[0x277CBEB68] null];
  }

  v132 = v16;
  v133 = v14;
  v85 = globalAppInterruptionsCountByEntity;
  v165[43] = globalAppInterruptionsCountByEntity;
  v164[44] = @"GlobalPopularityOfInterruptingEntity";
  globalPopularityOfInterruptingEntity = [(ATXFocusModeSignalsMetric *)self globalPopularityOfInterruptingEntity];
  null2 = globalPopularityOfInterruptingEntity;
  if (!globalPopularityOfInterruptingEntity)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v165[44] = null2;
  v164[45] = @"ModePopularityOfInterruptingEntity";
  modePopularityOfInterruptingEntity = [(ATXFocusModeSignalsMetric *)self modePopularityOfInterruptingEntity];
  null3 = modePopularityOfInterruptingEntity;
  if (!modePopularityOfInterruptingEntity)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v165[45] = null3;
  v164[46] = @"RatioOfModePopularityToGlobalPopularityOfInterruptingEntity";
  ratioOfModePopularityToGlobalPopularityOfInterruptingEntity = [(ATXFocusModeSignalsMetric *)self ratioOfModePopularityToGlobalPopularityOfInterruptingEntity];
  null4 = ratioOfModePopularityToGlobalPopularityOfInterruptingEntity;
  if (!ratioOfModePopularityToGlobalPopularityOfInterruptingEntity)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v165[46] = null4;
  v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v165 forKeys:v164 count:47];
  if (!ratioOfModePopularityToGlobalPopularityOfInterruptingEntity)
  {
  }

  if (!modePopularityOfInterruptingEntity)
  {
  }

  if (!globalPopularityOfInterruptingEntity)
  {
  }

  if (!v53)
  {
  }

  if (!v51)
  {
  }

  if (!v49)
  {
  }

  if (!v47)
  {
  }

  if (!v124)
  {
  }

  v60 = v141;
  if (!v141)
  {

    v60 = 0;
  }

  v61 = v142;
  if (!v142)
  {

    v61 = 0;
  }

  v62 = v143;
  if (!v143)
  {

    v62 = 0;
  }

  v63 = v144;
  if (!v144)
  {

    v63 = 0;
  }

  v64 = v145;
  if (!v145)
  {

    v64 = 0;
  }

  v65 = v146;
  if (!v146)
  {

    v65 = 0;
  }

  v66 = v147;
  if (!v147)
  {

    v66 = 0;
  }

  v67 = v148;
  if (!v148)
  {

    v67 = 0;
  }

  v68 = v149;
  if (!v149)
  {

    v68 = 0;
  }

  v69 = v150;
  if (!v150)
  {

    v69 = 0;
  }

  v70 = v151;
  if (!v151)
  {

    v70 = 0;
  }

  v71 = v152;
  if (!v152)
  {

    v71 = 0;
  }

  v72 = v153;
  if (!v153)
  {

    v72 = 0;
  }

  v73 = v154;
  if (!v154)
  {

    v73 = 0;
  }

  v74 = v155;
  if (!v155)
  {

    v74 = 0;
  }

  v75 = v156;
  if (!v156)
  {

    v75 = 0;
  }

  v76 = v157;
  if (!v157)
  {

    v76 = 0;
  }

  v77 = v158;
  if (!v158)
  {

    v77 = 0;
  }

  v78 = v159;
  if (!v159)
  {

    v78 = 0;
  }

  v79 = v160;
  if (!v160)
  {

    v79 = 0;
  }

  v80 = v161;
  if (!v161)
  {

    v80 = 0;
  }

  v81 = v162;
  if (!v162)
  {

    v81 = 0;
  }

  v82 = v163;
  if (!v163)
  {

    v82 = 0;
  }

  if (!v129)
  {
  }

  if (!v130)
  {
  }

  if (!v131)
  {
  }

  if (!v132)
  {
  }

  if (!v133)
  {
  }

  if (!v134)
  {
  }

  if (!v135)
  {
  }

  if (!v138)
  {
  }

  if (!v139)
  {
  }

  if (!v140)
  {
  }

  v83 = *MEMORY[0x277D85DE8];

  return v123;
}

@end