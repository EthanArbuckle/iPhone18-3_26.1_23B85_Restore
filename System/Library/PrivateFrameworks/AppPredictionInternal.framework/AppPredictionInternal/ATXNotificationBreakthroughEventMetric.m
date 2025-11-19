@interface ATXNotificationBreakthroughEventMetric
+ (id)coreAnalyticsDictionaryFromQueryResult:(id)a3 featureCollectionSet:(id)a4;
- (ATXNotificationBreakthroughEventMetric)initWithQueryResult:(id)a3 featureCollectionSet:(id)a4;
- (id)coreAnalyticsDictionary;
@end

@implementation ATXNotificationBreakthroughEventMetric

- (ATXNotificationBreakthroughEventMetric)initWithQueryResult:(id)a3 featureCollectionSet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXNotificationBreakthroughEventMetric;
  v9 = [(_ATXCoreAnalyticsMetric *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureCollectionSet, a4);
    objc_storeStrong(&v10->_queryResult, a3);
  }

  return v10;
}

- (id)coreAnalyticsDictionary
{
  v3 = objc_opt_class();
  queryResult = self->_queryResult;
  featureCollectionSet = self->_featureCollectionSet;

  return [v3 coreAnalyticsDictionaryFromQueryResult:queryResult featureCollectionSet:featureCollectionSet];
}

+ (id)coreAnalyticsDictionaryFromQueryResult:(id)a3 featureCollectionSet:(id)a4
{
  v226[53] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v225[0] = @"bundleId";
  v7 = [v5 bundleId];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v140 = v7;
  v226[0] = v7;
  v225[1] = @"destinationReason";
  v9 = [v5 destinationReason];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v219 = v10;
  v139 = v9;
  v226[1] = v9;
  v225[2] = @"handleDestination";
  v11 = [v5 finalDestination];
  v218 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v220 = v8;
  v138 = v11;
  v226[2] = v11;
  v225[3] = @"handleMode";
  v217 = [v5 resolution];
  v216 = [v217 resolutionTimestamp];
  v12 = [ATXNotificationEventMetric atxComputedModeStringForTimestamp:?];
  v13 = v12;
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v137 = v12;
  v226[3] = v12;
  v225[4] = @"isMessage";
  v214 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isMessage")}];
  v226[4] = v214;
  v225[5] = @"notificationUrgency";
  [v5 urgency];
  v14 = ATXUserNotificationDeliveryUrgencyToString();
  v15 = v14;
  if (!v14)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v136 = v14;
  v226[5] = v14;
  v225[6] = @"originalDestination";
  v16 = [v5 originalDestination];
  v212 = v16;
  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v135 = v16;
  v226[6] = v16;
  v225[7] = @"deliveryMethod";
  [v5 deliveryMethod];
  v17 = ATXUserNotificationDeliveryMethodToString();
  v18 = v17;
  if (!v17)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v134 = v17;
  v226[7] = v17;
  v225[8] = @"receiveMode";
  v210 = [v5 receiveTimestamp];
  v19 = [ATXNotificationEventMetric atxComputedModeStringForTimestamp:?];
  v20 = v19;
  if (!v19)
  {
    v19 = [MEMORY[0x277CBEB68] null];
  }

  v133 = v19;
  v226[8] = v19;
  v225[9] = @"resolutionType";
  v208 = [v5 resolution];
  v21 = ATXUserNotificationResolutionTypeToString([v208 resolutionType]);
  v224 = v21;
  if (!v21)
  {
    v21 = [MEMORY[0x277CBEB68] null];
  }

  v132 = v21;
  v226[9] = v21;
  v225[10] = @"secureBundleId";
  v207 = [v5 bundleId];
  v22 = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  v223 = v22;
  if (!v22)
  {
    v22 = [MEMORY[0x277CBEB68] null];
  }

  v131 = v22;
  v226[10] = v22;
  v225[11] = @"timeToResolution";
  v23 = MEMORY[0x277CCABB0];
  v206 = [v5 resolution];
  v24 = [v206 resolutionTimestamp];
  [v5 receiveTimestamp];
  v204 = v205 = v24;
  [v24 timeIntervalSinceDate:?];
  v203 = [v23 numberWithDouble:?];
  v226[11] = v203;
  v225[12] = @"receiveInferredMode";
  v25 = MEMORY[0x277D41C68];
  v202 = [v5 receiveTimestamp];
  v201 = [v25 currentModeEventAtGivenTime:?];
  v200 = [v201 eventBody];
  [v200 modeType];
  BMUserFocusInferredModeTypeToActivity();
  ATXModeFromActivityType();
  v26 = ATXModeToString();
  v222 = v26;
  if (!v26)
  {
    v26 = [MEMORY[0x277CBEB68] null];
  }

  v130 = v26;
  v226[12] = v26;
  v225[13] = @"handleInferredMode";
  v27 = MEMORY[0x277D41C68];
  v199 = [v5 resolution];
  v198 = [v199 resolutionTimestamp];
  v197 = [v27 currentModeEventAtGivenTime:?];
  v196 = [v197 eventBody];
  [v196 modeType];
  BMUserFocusInferredModeTypeToActivity();
  ATXModeFromActivityType();
  v28 = ATXModeToString();
  v195 = v28;
  if (!v28)
  {
    v28 = [MEMORY[0x277CBEB68] null];
  }

  v209 = v20;
  v211 = v18;
  v213 = v15;
  v215 = v13;
  v129 = v28;
  v226[13] = v28;
  v225[14] = @"currentUnifiedMode";
  [v6 currentUnifiedMode];
  v194 = ATXModeToString();
  v226[14] = v194;
  v225[15] = @"contactRelationships";
  v193 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "contactRelationships")}];
  v226[15] = v193;
  v225[16] = @"relationshipFromMegadome";
  v192 = [v6 relationshipsFromMegadome];
  v29 = [v192 firstObject];
  v191 = v29;
  if (!v29)
  {
    v29 = [MEMORY[0x277CBEB68] null];
  }

  v128 = v29;
  v226[16] = v29;
  v225[17] = @"dayOfWeek";
  v190 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "dayOfWeek")}];
  v226[17] = v190;
  v225[18] = @"timeOfDay";
  v189 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "timeOfDay")}];
  v226[18] = v189;
  v225[19] = @"locationSemantic";
  v188 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "locationSemantic")}];
  v226[19] = v188;
  v225[20] = @"appModeAffinityScore";
  v30 = MEMORY[0x277CCABB0];
  [v6 appModeAffinityScore];
  v31 = [v30 numberWithDouble:?];
  v187 = v31;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = &unk_283A56FA8;
  }

  v226[20] = v32;
  v225[21] = @"contactModeAffinityScore";
  v33 = MEMORY[0x277CCABB0];
  [v6 contactModeAffinityScore];
  v34 = [v33 numberWithDouble:?];
  v186 = v34;
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = &unk_283A56FA8;
  }

  v226[21] = v35;
  v225[22] = @"notificationModeAffinityScore";
  v36 = MEMORY[0x277CCABB0];
  [v6 notificationModeAffinityScore];
  v37 = [v36 numberWithDouble:?];
  v185 = v37;
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = &unk_283A56FA8;
  }

  v226[22] = v38;
  v225[23] = @"appCategoryScoreInMode";
  v39 = MEMORY[0x277CCABB0];
  [v6 appCategoryScoreInMode];
  v40 = [v39 numberWithDouble:?];
  v184 = v40;
  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = &unk_283A56FA8;
  }

  v226[23] = v41;
  v225[24] = @"urgencyScore";
  v42 = MEMORY[0x277CCABB0];
  [v6 urgencyScore];
  v43 = [v42 numberWithDouble:?];
  v183 = v43;
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = &unk_283A56FA8;
  }

  v226[24] = v44;
  v225[25] = @"importanceScore";
  v45 = MEMORY[0x277CCABB0];
  [v6 importanceScore];
  v46 = [v45 numberWithDouble:?];
  v182 = v46;
  if (v46)
  {
    v47 = v46;
  }

  else
  {
    v47 = &unk_283A56FA8;
  }

  v226[25] = v47;
  v225[26] = @"lengthOfNotificationBody";
  v221 = v5;
  v181 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "bodyLength")}];
  v226[26] = v181;
  v225[27] = @"timeBucketToLaunchApp";
  v180 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "timeToLaunchApp")}];
  v226[27] = v180;
  v225[28] = @"dailyNumberOfNotificationsReceivedForBundleID";
  v48 = MEMORY[0x277CCABB0];
  v179 = [v6 historicalVolumeByCountAndPercentage];
  v49 = [v48 numberWithUnsignedInteger:{objc_msgSend(v179, "dailyNumberOfNotificationsReceivedForBundleID")}];
  v178 = v49;
  if (v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = &unk_283A56FA8;
  }

  v226[28] = v50;
  v225[29] = @"weeklyNumberOfNotificationsReceivedForBundleID";
  v51 = MEMORY[0x277CCABB0];
  v177 = [v6 historicalVolumeByCountAndPercentage];
  v52 = [v51 numberWithUnsignedInteger:{objc_msgSend(v177, "weeklyNumberOfNotificationsReceivedForBundleID")}];
  v176 = v52;
  if (v52)
  {
    v53 = v52;
  }

  else
  {
    v53 = &unk_283A56FA8;
  }

  v226[29] = v53;
  v225[30] = @"dailyPercentageOfNotificationsReceivedForBundleID";
  v54 = MEMORY[0x277CCABB0];
  v175 = [v6 historicalVolumeByCountAndPercentage];
  [v175 dailyPercentageOfNotificationsReceivedForBundleID];
  v55 = [v54 numberWithDouble:?];
  v174 = v55;
  if (v55)
  {
    v56 = v55;
  }

  else
  {
    v56 = &unk_283A56FA8;
  }

  v226[30] = v56;
  v225[31] = @"weeklyPercentageOfNotificationsReceivedForBundleID";
  v57 = MEMORY[0x277CCABB0];
  v173 = [v6 historicalVolumeByCountAndPercentage];
  [v173 weeklyPercentageOfNotificationsReceivedForBundleID];
  v58 = [v57 numberWithDouble:?];
  v172 = v58;
  if (v58)
  {
    v59 = v58;
  }

  else
  {
    v59 = &unk_283A56FA8;
  }

  v226[31] = v59;
  v225[32] = @"modeDailyNumberOfNotificationsReceivedForBundleID";
  v60 = MEMORY[0x277CCABB0];
  v171 = [v6 modeConditionedHistoricalVolumeByCountAndPercentage];
  v61 = [v60 numberWithUnsignedInteger:{objc_msgSend(v171, "dailyNumberOfNotificationsReceivedForBundleID")}];
  v170 = v61;
  if (v61)
  {
    v62 = v61;
  }

  else
  {
    v62 = &unk_283A56FA8;
  }

  v226[32] = v62;
  v225[33] = @"modeWeeklyNumberOfNotificationsReceivedForBundleID";
  v63 = MEMORY[0x277CCABB0];
  v169 = [v6 modeConditionedHistoricalVolumeByCountAndPercentage];
  v64 = [v63 numberWithUnsignedInteger:{objc_msgSend(v169, "weeklyNumberOfNotificationsReceivedForBundleID")}];
  v168 = v64;
  if (v64)
  {
    v65 = v64;
  }

  else
  {
    v65 = &unk_283A56FA8;
  }

  v226[33] = v65;
  v225[34] = @"modeDailyPercentageOfNotificationsReceivedForBundleID";
  v66 = MEMORY[0x277CCABB0];
  v167 = [v6 modeConditionedHistoricalVolumeByCountAndPercentage];
  [v167 dailyPercentageOfNotificationsReceivedForBundleID];
  v67 = [v66 numberWithDouble:?];
  v166 = v67;
  if (v67)
  {
    v68 = v67;
  }

  else
  {
    v68 = &unk_283A56FA8;
  }

  v226[34] = v68;
  v225[35] = @"modeWeeklyPercentageOfNotificationsReceivedForBundleID";
  v69 = MEMORY[0x277CCABB0];
  v165 = [v6 modeConditionedHistoricalVolumeByCountAndPercentage];
  [v165 weeklyPercentageOfNotificationsReceivedForBundleID];
  v70 = [v69 numberWithDouble:?];
  v164 = v70;
  if (v70)
  {
    v71 = v70;
  }

  else
  {
    v71 = &unk_283A56FA8;
  }

  v226[35] = v71;
  v225[36] = @"percentageForOneMinuteDuration";
  v72 = MEMORY[0x277CCABB0];
  v163 = [v6 historicalResolutionByPercentage];
  [v163 percentageForOneMinuteDuration];
  v73 = [v72 numberWithDouble:?];
  v162 = v73;
  if (v73)
  {
    v74 = v73;
  }

  else
  {
    v74 = &unk_283A56FA8;
  }

  v226[36] = v74;
  v225[37] = @"percentageForTwoMinutesDuration";
  v75 = MEMORY[0x277CCABB0];
  v161 = [v6 historicalResolutionByPercentage];
  [v161 percentageForTwoMinutesDuration];
  v76 = [v75 numberWithDouble:?];
  v160 = v76;
  if (v76)
  {
    v77 = v76;
  }

  else
  {
    v77 = &unk_283A56FA8;
  }

  v226[37] = v77;
  v225[38] = @"percentageForFiveMinutesDuration";
  v78 = MEMORY[0x277CCABB0];
  v159 = [v6 historicalResolutionByPercentage];
  [v159 percentageForFiveMinutesDuration];
  v79 = [v78 numberWithDouble:?];
  v158 = v79;
  if (v79)
  {
    v80 = v79;
  }

  else
  {
    v80 = &unk_283A56FA8;
  }

  v226[38] = v80;
  v225[39] = @"percentageForTenMinutesDuration";
  v81 = MEMORY[0x277CCABB0];
  v157 = [v6 historicalResolutionByPercentage];
  [v157 percentageForTenMinutesDuration];
  v82 = [v81 numberWithDouble:?];
  v156 = v82;
  if (v82)
  {
    v83 = v82;
  }

  else
  {
    v83 = &unk_283A56FA8;
  }

  v226[39] = v83;
  v225[40] = @"percentageForTwentyMinutesDuration";
  v84 = MEMORY[0x277CCABB0];
  v155 = [v6 historicalResolutionByPercentage];
  [v155 percentageForTwentyMinutesDuration];
  v85 = [v84 numberWithDouble:?];
  v154 = v85;
  if (v85)
  {
    v86 = v85;
  }

  else
  {
    v86 = &unk_283A56FA8;
  }

  v226[40] = v86;
  v225[41] = @"percentageForThirtyMinutesDuration";
  v87 = MEMORY[0x277CCABB0];
  v153 = [v6 historicalResolutionByPercentage];
  [v153 percentageForThirtyMinutesDuration];
  v88 = [v87 numberWithDouble:?];
  v152 = v88;
  if (v88)
  {
    v89 = v88;
  }

  else
  {
    v89 = &unk_283A56FA8;
  }

  v226[41] = v89;
  v225[42] = @"percentageForSixtyMinutesDuration";
  v90 = MEMORY[0x277CCABB0];
  v151 = [v6 historicalResolutionByPercentage];
  [v151 percentageForSixtyMinutesDuration];
  v91 = [v90 numberWithDouble:?];
  v150 = v91;
  if (v91)
  {
    v92 = v91;
  }

  else
  {
    v92 = &unk_283A56FA8;
  }

  v226[42] = v92;
  v225[43] = @"modePercentageForOneMinuteDuration";
  v93 = MEMORY[0x277CCABB0];
  v149 = [v6 modeConditionedHistoricalResolutionByPercentage];
  [v149 percentageForOneMinuteDuration];
  v94 = [v93 numberWithDouble:?];
  v148 = v94;
  if (v94)
  {
    v95 = v94;
  }

  else
  {
    v95 = &unk_283A56FA8;
  }

  v226[43] = v95;
  v225[44] = @"modePercentageForTwoMinutesDuration";
  v96 = MEMORY[0x277CCABB0];
  v147 = [v6 modeConditionedHistoricalResolutionByPercentage];
  [v147 percentageForTwoMinutesDuration];
  v97 = [v96 numberWithDouble:?];
  v146 = v97;
  if (v97)
  {
    v98 = v97;
  }

  else
  {
    v98 = &unk_283A56FA8;
  }

  v226[44] = v98;
  v225[45] = @"modePercentageForFiveMinutesDuration";
  v99 = MEMORY[0x277CCABB0];
  v145 = [v6 modeConditionedHistoricalResolutionByPercentage];
  [v145 percentageForFiveMinutesDuration];
  v100 = [v99 numberWithDouble:?];
  v144 = v100;
  if (v100)
  {
    v101 = v100;
  }

  else
  {
    v101 = &unk_283A56FA8;
  }

  v226[45] = v101;
  v225[46] = @"modePercentageForTenMinutesDuration";
  v102 = MEMORY[0x277CCABB0];
  v143 = [v6 modeConditionedHistoricalResolutionByPercentage];
  [v143 percentageForTenMinutesDuration];
  v103 = [v102 numberWithDouble:?];
  v104 = v103;
  if (v103)
  {
    v105 = v103;
  }

  else
  {
    v105 = &unk_283A56FA8;
  }

  v226[46] = v105;
  v225[47] = @"modePercentageForTwentyMinutesDuration";
  v106 = MEMORY[0x277CCABB0];
  v142 = [v6 modeConditionedHistoricalResolutionByPercentage];
  [v142 percentageForTwentyMinutesDuration];
  v107 = [v106 numberWithDouble:?];
  v108 = v107;
  if (v107)
  {
    v109 = v107;
  }

  else
  {
    v109 = &unk_283A56FA8;
  }

  v226[47] = v109;
  v225[48] = @"modePercentageForThirtyMinutesDuration";
  v110 = MEMORY[0x277CCABB0];
  v111 = [v6 modeConditionedHistoricalResolutionByPercentage];
  [v111 percentageForThirtyMinutesDuration];
  v112 = [v110 numberWithDouble:?];
  v113 = v112;
  if (v112)
  {
    v114 = v112;
  }

  else
  {
    v114 = &unk_283A56FA8;
  }

  v226[48] = v114;
  v225[49] = @"modePercentageForSixtyMinutesDuration";
  v115 = MEMORY[0x277CCABB0];
  v116 = [v6 modeConditionedHistoricalResolutionByPercentage];
  [v116 percentageForSixtyMinutesDuration];
  v117 = [v115 numberWithDouble:?];
  v118 = v117;
  if (v117)
  {
    v119 = v117;
  }

  else
  {
    v119 = &unk_283A56FA8;
  }

  v226[49] = v119;
  v225[50] = @"trialDeploymentId";
  v120 = [MEMORY[0x277CBEB68] null];
  v226[50] = v120;
  v225[51] = @"trialExperimentId";
  v121 = [MEMORY[0x277CBEB68] null];
  v226[51] = v121;
  v225[52] = @"trialTreatmentId";
  v122 = [MEMORY[0x277CBEB68] null];
  v226[52] = v122;
  v141 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v226 forKeys:v225 count:53];

  if (!v191)
  {
  }

  if (!v195)
  {
  }

  v123 = v222;
  if (!v222)
  {

    v123 = 0;
  }

  v124 = v223;
  if (!v223)
  {

    v124 = 0;
  }

  v125 = v224;
  if (!v224)
  {

    v125 = 0;
  }

  if (!v209)
  {
  }

  if (!v211)
  {
  }

  if (!v212)
  {
  }

  if (!v213)
  {
  }

  if (!v215)
  {
  }

  if (!v218)
  {
  }

  if (!v219)
  {
  }

  if (!v220)
  {
  }

  v126 = *MEMORY[0x277D85DE8];

  return v141;
}

@end