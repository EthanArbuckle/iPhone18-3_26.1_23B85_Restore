@interface ATXNotificationBreakthroughEventMetric
+ (id)coreAnalyticsDictionaryFromQueryResult:(id)result featureCollectionSet:(id)set;
- (ATXNotificationBreakthroughEventMetric)initWithQueryResult:(id)result featureCollectionSet:(id)set;
- (id)coreAnalyticsDictionary;
@end

@implementation ATXNotificationBreakthroughEventMetric

- (ATXNotificationBreakthroughEventMetric)initWithQueryResult:(id)result featureCollectionSet:(id)set
{
  resultCopy = result;
  setCopy = set;
  v12.receiver = self;
  v12.super_class = ATXNotificationBreakthroughEventMetric;
  v9 = [(_ATXCoreAnalyticsMetric *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureCollectionSet, set);
    objc_storeStrong(&v10->_queryResult, result);
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

+ (id)coreAnalyticsDictionaryFromQueryResult:(id)result featureCollectionSet:(id)set
{
  v226[53] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  setCopy = set;
  v225[0] = @"bundleId";
  bundleId = [resultCopy bundleId];
  v8 = bundleId;
  if (!bundleId)
  {
    bundleId = [MEMORY[0x277CBEB68] null];
  }

  v140 = bundleId;
  v226[0] = bundleId;
  v225[1] = @"destinationReason";
  destinationReason = [resultCopy destinationReason];
  v10 = destinationReason;
  if (!destinationReason)
  {
    destinationReason = [MEMORY[0x277CBEB68] null];
  }

  v219 = v10;
  v139 = destinationReason;
  v226[1] = destinationReason;
  v225[2] = @"handleDestination";
  finalDestination = [resultCopy finalDestination];
  v218 = finalDestination;
  if (!finalDestination)
  {
    finalDestination = [MEMORY[0x277CBEB68] null];
  }

  v220 = v8;
  v138 = finalDestination;
  v226[2] = finalDestination;
  v225[3] = @"handleMode";
  resolution = [resultCopy resolution];
  resolutionTimestamp = [resolution resolutionTimestamp];
  null = [ATXNotificationEventMetric atxComputedModeStringForTimestamp:?];
  v13 = null;
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v137 = null;
  v226[3] = null;
  v225[4] = @"isMessage";
  v214 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(resultCopy, "isMessage")}];
  v226[4] = v214;
  v225[5] = @"notificationUrgency";
  [resultCopy urgency];
  null2 = ATXUserNotificationDeliveryUrgencyToString();
  v15 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v136 = null2;
  v226[5] = null2;
  v225[6] = @"originalDestination";
  originalDestination = [resultCopy originalDestination];
  v212 = originalDestination;
  if (!originalDestination)
  {
    originalDestination = [MEMORY[0x277CBEB68] null];
  }

  v135 = originalDestination;
  v226[6] = originalDestination;
  v225[7] = @"deliveryMethod";
  [resultCopy deliveryMethod];
  null3 = ATXUserNotificationDeliveryMethodToString();
  v18 = null3;
  if (!null3)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v134 = null3;
  v226[7] = null3;
  v225[8] = @"receiveMode";
  receiveTimestamp = [resultCopy receiveTimestamp];
  null4 = [ATXNotificationEventMetric atxComputedModeStringForTimestamp:?];
  v20 = null4;
  if (!null4)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v133 = null4;
  v226[8] = null4;
  v225[9] = @"resolutionType";
  resolution2 = [resultCopy resolution];
  null5 = ATXUserNotificationResolutionTypeToString([resolution2 resolutionType]);
  v224 = null5;
  if (!null5)
  {
    null5 = [MEMORY[0x277CBEB68] null];
  }

  v132 = null5;
  v226[9] = null5;
  v225[10] = @"secureBundleId";
  bundleId2 = [resultCopy bundleId];
  null6 = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  v223 = null6;
  if (!null6)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  v131 = null6;
  v226[10] = null6;
  v225[11] = @"timeToResolution";
  v23 = MEMORY[0x277CCABB0];
  resolution3 = [resultCopy resolution];
  resolutionTimestamp2 = [resolution3 resolutionTimestamp];
  [resultCopy receiveTimestamp];
  v204 = v205 = resolutionTimestamp2;
  [resolutionTimestamp2 timeIntervalSinceDate:?];
  v203 = [v23 numberWithDouble:?];
  v226[11] = v203;
  v225[12] = @"receiveInferredMode";
  v25 = MEMORY[0x277D41C68];
  receiveTimestamp2 = [resultCopy receiveTimestamp];
  v201 = [v25 currentModeEventAtGivenTime:?];
  eventBody = [v201 eventBody];
  [eventBody modeType];
  BMUserFocusInferredModeTypeToActivity();
  ATXModeFromActivityType();
  null7 = ATXModeToString();
  v222 = null7;
  if (!null7)
  {
    null7 = [MEMORY[0x277CBEB68] null];
  }

  v130 = null7;
  v226[12] = null7;
  v225[13] = @"handleInferredMode";
  v27 = MEMORY[0x277D41C68];
  resolution4 = [resultCopy resolution];
  resolutionTimestamp3 = [resolution4 resolutionTimestamp];
  v197 = [v27 currentModeEventAtGivenTime:?];
  eventBody2 = [v197 eventBody];
  [eventBody2 modeType];
  BMUserFocusInferredModeTypeToActivity();
  ATXModeFromActivityType();
  null8 = ATXModeToString();
  v195 = null8;
  if (!null8)
  {
    null8 = [MEMORY[0x277CBEB68] null];
  }

  v209 = v20;
  v211 = v18;
  v213 = v15;
  v215 = v13;
  v129 = null8;
  v226[13] = null8;
  v225[14] = @"currentUnifiedMode";
  [setCopy currentUnifiedMode];
  v194 = ATXModeToString();
  v226[14] = v194;
  v225[15] = @"contactRelationships";
  v193 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(setCopy, "contactRelationships")}];
  v226[15] = v193;
  v225[16] = @"relationshipFromMegadome";
  relationshipsFromMegadome = [setCopy relationshipsFromMegadome];
  firstObject = [relationshipsFromMegadome firstObject];
  v191 = firstObject;
  if (!firstObject)
  {
    firstObject = [MEMORY[0x277CBEB68] null];
  }

  v128 = firstObject;
  v226[16] = firstObject;
  v225[17] = @"dayOfWeek";
  v190 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(setCopy, "dayOfWeek")}];
  v226[17] = v190;
  v225[18] = @"timeOfDay";
  v189 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(setCopy, "timeOfDay")}];
  v226[18] = v189;
  v225[19] = @"locationSemantic";
  v188 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(setCopy, "locationSemantic")}];
  v226[19] = v188;
  v225[20] = @"appModeAffinityScore";
  v30 = MEMORY[0x277CCABB0];
  [setCopy appModeAffinityScore];
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
  [setCopy contactModeAffinityScore];
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
  [setCopy notificationModeAffinityScore];
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
  [setCopy appCategoryScoreInMode];
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
  [setCopy urgencyScore];
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
  [setCopy importanceScore];
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
  v221 = resultCopy;
  v181 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resultCopy, "bodyLength")}];
  v226[26] = v181;
  v225[27] = @"timeBucketToLaunchApp";
  v180 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(setCopy, "timeToLaunchApp")}];
  v226[27] = v180;
  v225[28] = @"dailyNumberOfNotificationsReceivedForBundleID";
  v48 = MEMORY[0x277CCABB0];
  historicalVolumeByCountAndPercentage = [setCopy historicalVolumeByCountAndPercentage];
  v49 = [v48 numberWithUnsignedInteger:{objc_msgSend(historicalVolumeByCountAndPercentage, "dailyNumberOfNotificationsReceivedForBundleID")}];
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
  historicalVolumeByCountAndPercentage2 = [setCopy historicalVolumeByCountAndPercentage];
  v52 = [v51 numberWithUnsignedInteger:{objc_msgSend(historicalVolumeByCountAndPercentage2, "weeklyNumberOfNotificationsReceivedForBundleID")}];
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
  historicalVolumeByCountAndPercentage3 = [setCopy historicalVolumeByCountAndPercentage];
  [historicalVolumeByCountAndPercentage3 dailyPercentageOfNotificationsReceivedForBundleID];
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
  historicalVolumeByCountAndPercentage4 = [setCopy historicalVolumeByCountAndPercentage];
  [historicalVolumeByCountAndPercentage4 weeklyPercentageOfNotificationsReceivedForBundleID];
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
  modeConditionedHistoricalVolumeByCountAndPercentage = [setCopy modeConditionedHistoricalVolumeByCountAndPercentage];
  v61 = [v60 numberWithUnsignedInteger:{objc_msgSend(modeConditionedHistoricalVolumeByCountAndPercentage, "dailyNumberOfNotificationsReceivedForBundleID")}];
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
  modeConditionedHistoricalVolumeByCountAndPercentage2 = [setCopy modeConditionedHistoricalVolumeByCountAndPercentage];
  v64 = [v63 numberWithUnsignedInteger:{objc_msgSend(modeConditionedHistoricalVolumeByCountAndPercentage2, "weeklyNumberOfNotificationsReceivedForBundleID")}];
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
  modeConditionedHistoricalVolumeByCountAndPercentage3 = [setCopy modeConditionedHistoricalVolumeByCountAndPercentage];
  [modeConditionedHistoricalVolumeByCountAndPercentage3 dailyPercentageOfNotificationsReceivedForBundleID];
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
  modeConditionedHistoricalVolumeByCountAndPercentage4 = [setCopy modeConditionedHistoricalVolumeByCountAndPercentage];
  [modeConditionedHistoricalVolumeByCountAndPercentage4 weeklyPercentageOfNotificationsReceivedForBundleID];
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
  historicalResolutionByPercentage = [setCopy historicalResolutionByPercentage];
  [historicalResolutionByPercentage percentageForOneMinuteDuration];
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
  historicalResolutionByPercentage2 = [setCopy historicalResolutionByPercentage];
  [historicalResolutionByPercentage2 percentageForTwoMinutesDuration];
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
  historicalResolutionByPercentage3 = [setCopy historicalResolutionByPercentage];
  [historicalResolutionByPercentage3 percentageForFiveMinutesDuration];
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
  historicalResolutionByPercentage4 = [setCopy historicalResolutionByPercentage];
  [historicalResolutionByPercentage4 percentageForTenMinutesDuration];
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
  historicalResolutionByPercentage5 = [setCopy historicalResolutionByPercentage];
  [historicalResolutionByPercentage5 percentageForTwentyMinutesDuration];
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
  historicalResolutionByPercentage6 = [setCopy historicalResolutionByPercentage];
  [historicalResolutionByPercentage6 percentageForThirtyMinutesDuration];
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
  historicalResolutionByPercentage7 = [setCopy historicalResolutionByPercentage];
  [historicalResolutionByPercentage7 percentageForSixtyMinutesDuration];
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
  modeConditionedHistoricalResolutionByPercentage = [setCopy modeConditionedHistoricalResolutionByPercentage];
  [modeConditionedHistoricalResolutionByPercentage percentageForOneMinuteDuration];
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
  modeConditionedHistoricalResolutionByPercentage2 = [setCopy modeConditionedHistoricalResolutionByPercentage];
  [modeConditionedHistoricalResolutionByPercentage2 percentageForTwoMinutesDuration];
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
  modeConditionedHistoricalResolutionByPercentage3 = [setCopy modeConditionedHistoricalResolutionByPercentage];
  [modeConditionedHistoricalResolutionByPercentage3 percentageForFiveMinutesDuration];
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
  modeConditionedHistoricalResolutionByPercentage4 = [setCopy modeConditionedHistoricalResolutionByPercentage];
  [modeConditionedHistoricalResolutionByPercentage4 percentageForTenMinutesDuration];
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
  modeConditionedHistoricalResolutionByPercentage5 = [setCopy modeConditionedHistoricalResolutionByPercentage];
  [modeConditionedHistoricalResolutionByPercentage5 percentageForTwentyMinutesDuration];
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
  modeConditionedHistoricalResolutionByPercentage6 = [setCopy modeConditionedHistoricalResolutionByPercentage];
  [modeConditionedHistoricalResolutionByPercentage6 percentageForThirtyMinutesDuration];
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
  modeConditionedHistoricalResolutionByPercentage7 = [setCopy modeConditionedHistoricalResolutionByPercentage];
  [modeConditionedHistoricalResolutionByPercentage7 percentageForSixtyMinutesDuration];
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
  null9 = [MEMORY[0x277CBEB68] null];
  v226[50] = null9;
  v225[51] = @"trialExperimentId";
  null10 = [MEMORY[0x277CBEB68] null];
  v226[51] = null10;
  v225[52] = @"trialTreatmentId";
  null11 = [MEMORY[0x277CBEB68] null];
  v226[52] = null11;
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