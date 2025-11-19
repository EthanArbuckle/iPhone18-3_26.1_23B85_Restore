@interface ATXFocusModeSignalsMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXFocusModeSignalsMetric

- (id)coreAnalyticsDictionary
{
  v165[47] = *MEMORY[0x277D85DE8];
  v164[0] = @"FocusMode";
  [(ATXFocusModeSignalsMetric *)self focusMode];
  v3 = ATXModeToString();
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v122 = v3;
  v165[0] = v3;
  v164[1] = @"AppBundleId";
  v5 = [(ATXFocusModeSignalsMetric *)self appBundleId];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v139 = v6;
  v140 = v4;
  v121 = v5;
  v165[1] = v5;
  v164[2] = @"ActiveConfigurationType";
  v7 = [(ATXFocusModeSignalsMetric *)self activeConfigurationType];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v120 = v7;
  v165[2] = v7;
  v164[3] = @"wasAppSuggestedDuringModeSetup";
  v137 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric wasAppSuggestedDuringModeSetup](self, "wasAppSuggestedDuringModeSetup")}];
  v165[3] = v137;
  v164[4] = @"wasAppSuggestionDuringModeSetupAccepted";
  v136 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric wasAppSuggestionDuringModeSetupAccepted](self, "wasAppSuggestionDuringModeSetupAccepted")}];
  v165[4] = v136;
  v164[5] = @"CategoryScore";
  v9 = [(ATXFocusModeSignalsMetric *)self categoryScore];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v119 = v9;
  v165[5] = v9;
  v164[6] = @"ClassConditionalProbabilityOfModeGivenEntity";
  v11 = [(ATXFocusModeSignalsMetric *)self classConditionalProbabilityOfModeGivenEntity];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v118 = v11;
  v165[6] = v11;
  v164[7] = @"EntityModeEntityScore";
  v13 = [(ATXFocusModeSignalsMetric *)self entityModeEntityScore];
  v14 = v13;
  if (!v13)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v117 = v13;
  v165[7] = v13;
  v164[8] = @"GlobalPopularityForEntity";
  v15 = [(ATXFocusModeSignalsMetric *)self globalPopularityForEntity];
  v16 = v15;
  if (!v15)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v116 = v15;
  v165[8] = v15;
  v164[9] = @"ModePopularityForEntity";
  v17 = [(ATXFocusModeSignalsMetric *)self modePopularityForEntity];
  v18 = v17;
  if (!v17)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v115 = v17;
  v165[9] = v17;
  v164[10] = @"RatioOfModePopularityToGlobalPopularityOfEntity";
  v19 = [(ATXFocusModeSignalsMetric *)self ratioOfModePopularityToGlobalPopularityOfEntity];
  v130 = v19;
  if (!v19)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v114 = v19;
  v165[10] = v19;
  v164[11] = @"PosteriorProbabilityOfEntityGivenMode";
  v20 = [(ATXFocusModeSignalsMetric *)self posteriorProbabilityOfEntityGivenMode];
  v21 = v20;
  if (!v20)
  {
    v20 = [MEMORY[0x277CBEB68] null];
  }

  v113 = v20;
  v165[11] = v20;
  v164[12] = @"GlobalOccurrencesOfEntity";
  v22 = [(ATXFocusModeSignalsMetric *)self globalOccurrencesOfEntity];
  v163 = v22;
  if (!v22)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v112 = v22;
  v165[12] = v22;
  v164[13] = @"LocalOccurrencesOfEntityInMode";
  v23 = [(ATXFocusModeSignalsMetric *)self localOccurrencesOfEntityInMode];
  v162 = v23;
  if (!v23)
  {
    v23 = [MEMORY[0x277CBEB68] null];
  }

  v111 = v23;
  v165[13] = v23;
  v164[14] = @"UniqueOccurrencesOfEntityInMode";
  v24 = [(ATXFocusModeSignalsMetric *)self uniqueOccurrencesOfEntityInMode];
  v161 = v24;
  if (!v24)
  {
    v24 = [MEMORY[0x277CBEB68] null];
  }

  v110 = v24;
  v165[14] = v24;
  v164[15] = @"EntityOccurredGloballyOverTheLastNDays";
  v128 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric entityOccurredGloballyOverLastNDays](self, "entityOccurredGloballyOverLastNDays")}];
  v165[15] = v128;
  v164[16] = @"EntityOccurredInModeOverLastNDays";
  v127 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric entityOccurredInModeOverLastNDays](self, "entityOccurredInModeOverLastNDays")}];
  v165[16] = v127;
  v164[17] = @"WidgetBundleIdAndKind";
  v25 = [(ATXFocusModeSignalsMetric *)self widgetBundleIdAndKind];
  v160 = v25;
  if (!v25)
  {
    v25 = [MEMORY[0x277CBEB68] null];
  }

  v109 = v25;
  v165[17] = v25;
  v164[18] = @"WidgetSize";
  v26 = [(ATXFocusModeSignalsMetric *)self widgetSize];
  v159 = v26;
  if (!v26)
  {
    v26 = [MEMORY[0x277CBEB68] null];
  }

  v108 = v26;
  v165[18] = v26;
  v164[19] = @"IntentHash";
  v27 = [(ATXFocusModeSignalsMetric *)self intentHash];
  v158 = v27;
  if (!v27)
  {
    v27 = [MEMORY[0x277CBEB68] null];
  }

  v107 = v27;
  v165[19] = v27;
  v164[20] = @"ABGroup";
  v28 = [(ATXFocusModeSignalsMetric *)self abGroup];
  v157 = v28;
  if (!v28)
  {
    v28 = [MEMORY[0x277CBEB68] null];
  }

  v106 = v28;
  v165[20] = v28;
  v164[21] = @"GlobalClearanceRateForEntity";
  v29 = [(ATXFocusModeSignalsMetric *)self globalClearanceRateForEntity];
  v156 = v29;
  if (!v29)
  {
    v29 = [MEMORY[0x277CBEB68] null];
  }

  v105 = v29;
  v165[21] = v29;
  v164[22] = @"LocalClearanceRateForEntity";
  v30 = [(ATXFocusModeSignalsMetric *)self localClearanceRateForEntity];
  v155 = v30;
  if (!v30)
  {
    v30 = [MEMORY[0x277CBEB68] null];
  }

  v104 = v30;
  v165[22] = v30;
  v164[23] = @"NotificationsClearedInMode";
  v31 = [(ATXFocusModeSignalsMetric *)self notificationsClearedInMode];
  v154 = v31;
  if (!v31)
  {
    v31 = [MEMORY[0x277CBEB68] null];
  }

  v103 = v31;
  v165[23] = v31;
  v164[24] = @"NotificationsClearedGlobally";
  v32 = [(ATXFocusModeSignalsMetric *)self notificationsClearedGlobally];
  v153 = v32;
  if (!v32)
  {
    v32 = [MEMORY[0x277CBEB68] null];
  }

  v102 = v32;
  v165[24] = v32;
  v164[25] = @"NotificationsMuted";
  v33 = [(ATXFocusModeSignalsMetric *)self notificationsMuted];
  v152 = v33;
  if (!v33)
  {
    v33 = [MEMORY[0x277CBEB68] null];
  }

  v101 = v33;
  v165[25] = v33;
  v164[26] = @"RatioOfLocalToGlobalNotificationsClearedRateForEntity";
  v34 = [(ATXFocusModeSignalsMetric *)self ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  v151 = v34;
  if (!v34)
  {
    v34 = [MEMORY[0x277CBEB68] null];
  }

  v100 = v34;
  v165[26] = v34;
  v164[27] = @"ClassConditionalOfNotificationsClearedForEntity";
  v35 = [(ATXFocusModeSignalsMetric *)self classConditionalOfNotificationsClearedForEntity];
  v150 = v35;
  if (!v35)
  {
    v35 = [MEMORY[0x277CBEB68] null];
  }

  v99 = v35;
  v165[27] = v35;
  v164[28] = @"NotificationsReceivedGlobally";
  v36 = [(ATXFocusModeSignalsMetric *)self notificationsReceivedGlobally];
  v149 = v36;
  if (!v36)
  {
    v36 = [MEMORY[0x277CBEB68] null];
  }

  v98 = v36;
  v165[28] = v36;
  v164[29] = @"NotificationsReceivedInMode";
  v37 = [(ATXFocusModeSignalsMetric *)self notificationsReceivedInMode];
  v148 = v37;
  if (!v37)
  {
    v37 = [MEMORY[0x277CBEB68] null];
  }

  v97 = v37;
  v165[29] = v37;
  v164[30] = @"LocalPopularityOfNotificationsReceivedForEntity";
  v38 = [(ATXFocusModeSignalsMetric *)self localPopularityOfNotificationsReceivedForEntity];
  v147 = v38;
  if (!v38)
  {
    v38 = [MEMORY[0x277CBEB68] null];
  }

  v96 = v38;
  v165[30] = v38;
  v164[31] = @"GlobalPopularityOfNotificationsReceivedForEntity";
  v39 = [(ATXFocusModeSignalsMetric *)self globalPopularityOfNotificationsReceivedForEntity];
  v146 = v39;
  if (!v39)
  {
    v39 = [MEMORY[0x277CBEB68] null];
  }

  v95 = v39;
  v165[31] = v39;
  v164[32] = @"RatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity";
  v40 = [(ATXFocusModeSignalsMetric *)self ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  v145 = v40;
  if (!v40)
  {
    v40 = [MEMORY[0x277CBEB68] null];
  }

  v94 = v40;
  v165[32] = v40;
  v164[33] = @"ClassConditionalOfNotificationsReceivedForEntity";
  v41 = [(ATXFocusModeSignalsMetric *)self classConditionalOfNotificationsReceivedForEntity];
  v144 = v41;
  if (!v41)
  {
    v41 = [MEMORY[0x277CBEB68] null];
  }

  v93 = v41;
  v165[33] = v41;
  v164[34] = @"IsAppCandidateSuggestion";
  v126 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric isAppCandidateSuggestion](self, "isAppCandidateSuggestion")}];
  v165[34] = v126;
  v164[35] = @"IsAppRecommendedSuggestion";
  v125 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXFocusModeSignalsMetric isAppRecommendedSuggestion](self, "isAppRecommendedSuggestion")}];
  v165[35] = v125;
  v164[36] = @"TreatmentId";
  v42 = [(ATXFocusModeSignalsMetric *)self treatmentId];
  v143 = v42;
  if (!v42)
  {
    v42 = [MEMORY[0x277CBEB68] null];
  }

  v92 = v42;
  v165[36] = v42;
  v164[37] = @"ExperimentId";
  v43 = [(ATXFocusModeSignalsMetric *)self experimentId];
  v142 = v43;
  if (!v43)
  {
    v43 = [MEMORY[0x277CBEB68] null];
  }

  v91 = v43;
  v165[37] = v43;
  v164[38] = @"DeploymentId";
  v44 = [(ATXFocusModeSignalsMetric *)self deploymentId];
  v141 = v44;
  if (!v44)
  {
    v44 = [MEMORY[0x277CBEB68] null];
  }

  v129 = v21;
  v90 = v44;
  v165[38] = v44;
  v164[39] = @"GlobalModeAffinityPrior";
  v45 = [(ATXFocusModeSignalsMetric *)self globalModeAffinityPrior];
  v124 = v45;
  if (!v45)
  {
    v45 = [MEMORY[0x277CBEB68] null];
  }

  v135 = v10;
  v89 = v45;
  v165[39] = v45;
  v164[40] = @"GlobalInterruptingPrior";
  v46 = [(ATXFocusModeSignalsMetric *)self globalInterruptingPrior];
  v47 = v46;
  if (!v46)
  {
    v46 = [MEMORY[0x277CBEB68] null];
  }

  v138 = v8;
  v88 = v46;
  v165[40] = v46;
  v164[41] = @"ModeAppInterruptionsCountByEntity";
  v48 = [(ATXFocusModeSignalsMetric *)self modeAppInterruptionsCountByEntity];
  v49 = v48;
  if (!v48)
  {
    v48 = [MEMORY[0x277CBEB68] null];
  }

  v87 = v48;
  v165[41] = v48;
  v164[42] = @"ModeAppInterruptionsClassConditionalProbabilityByEntity";
  v50 = [(ATXFocusModeSignalsMetric *)self modeAppInterruptionsClassConditionalProbabilityByEntity];
  v51 = v50;
  if (!v50)
  {
    v50 = [MEMORY[0x277CBEB68] null];
  }

  v131 = v18;
  v134 = v12;
  v86 = v50;
  v165[42] = v50;
  v164[43] = @"GlobalAppInterruptionsCountByEntity";
  v52 = [(ATXFocusModeSignalsMetric *)self globalAppInterruptionsCountByEntity];
  v53 = v52;
  if (!v52)
  {
    v52 = [MEMORY[0x277CBEB68] null];
  }

  v132 = v16;
  v133 = v14;
  v85 = v52;
  v165[43] = v52;
  v164[44] = @"GlobalPopularityOfInterruptingEntity";
  v54 = [(ATXFocusModeSignalsMetric *)self globalPopularityOfInterruptingEntity];
  v55 = v54;
  if (!v54)
  {
    v55 = [MEMORY[0x277CBEB68] null];
  }

  v165[44] = v55;
  v164[45] = @"ModePopularityOfInterruptingEntity";
  v56 = [(ATXFocusModeSignalsMetric *)self modePopularityOfInterruptingEntity];
  v57 = v56;
  if (!v56)
  {
    v57 = [MEMORY[0x277CBEB68] null];
  }

  v165[45] = v57;
  v164[46] = @"RatioOfModePopularityToGlobalPopularityOfInterruptingEntity";
  v58 = [(ATXFocusModeSignalsMetric *)self ratioOfModePopularityToGlobalPopularityOfInterruptingEntity];
  v59 = v58;
  if (!v58)
  {
    v59 = [MEMORY[0x277CBEB68] null];
  }

  v165[46] = v59;
  v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v165 forKeys:v164 count:47];
  if (!v58)
  {
  }

  if (!v56)
  {
  }

  if (!v54)
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