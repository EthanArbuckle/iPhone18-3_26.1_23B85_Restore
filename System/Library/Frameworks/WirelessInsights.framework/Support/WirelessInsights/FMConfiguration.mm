@interface FMConfiguration
+ (id)getAllValuesWithDefaultsBasedOn:(id)on;
+ (id)getNSNumberAtKey:(id)key fromDict:(id)dict error:(id *)error;
+ (id)sharedInstance;
+ (void)replaceSharedInstanceWithValuesOrDefaults:(id)defaults;
- (BOOL)isCompatibleToConfig:(id)config;
- (FMConfiguration)initWithValues:(id)values;
@end

@implementation FMConfiguration

+ (id)sharedInstance
{
  os_unfair_lock_lock(&unk_1002D8468);
  v2 = qword_1002D8460;
  os_unfair_lock_unlock(&unk_1002D8468);
  if (!v2)
  {
    v3 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100204BE0(v3);
    }
  }

  return v2;
}

+ (void)replaceSharedInstanceWithValuesOrDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v3 = [FMConfiguration alloc];
  v4 = [FMConfiguration getAllValuesWithDefaultsBasedOn:defaultsCopy];
  v5 = [(FMConfiguration *)v3 initWithValues:v4];

  os_unfair_lock_lock(&unk_1002D8468);
  v6 = qword_1002D8460;
  qword_1002D8460 = v5;

  os_unfair_lock_unlock(&unk_1002D8468);
}

+ (id)getNSNumberAtKey:(id)key fromDict:(id)dict error:(id *)error
{
  keyCopy = key;
  v8 = objc_autoreleasePoolPush();
  v9 = [dict objectForKeyedSubscript:keyCopy];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = v9;
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_autoreleasePoolPop(v8);
  if (v11)
  {
    v12 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100204C24(keyCopy, v12);
    }

    nSLocalizedDescriptionKey = [NSString stringWithFormat:@"Missing configuration value for key %@", keyCopy, NSLocalizedDescriptionKey];
    v17 = nSLocalizedDescriptionKey;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    *error = [NSError errorWithDomain:@"FMConfiguration" code:0 userInfo:v14];

    v9 = 0;
  }

  return v9;
}

+ (id)getAllValuesWithDefaultsBasedOn:(id)on
{
  onCopy = on;
  v4 = sub_100085004();
  v5 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100204C9C(v4, v5);
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A7258;
  v11[3] = &unk_1002AF008;
  v7 = onCopy;
  v12 = v7;
  v14 = v4;
  v8 = v6;
  v13 = v8;
  [&off_1002BF998 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = [v8 copy];

  return v9;
}

- (FMConfiguration)initWithValues:(id)values
{
  valuesCopy = values;
  v235.receiver = self;
  v235.super_class = FMConfiguration;
  v6 = [(FMConfiguration *)&v235 init];
  v7 = v6;
  if (v6)
  {
    crowdsourcedDisabledCountries = v6->_crowdsourcedDisabledCountries;
    v6->_crowdsourcedDisabledCountries = &__NSArray0__struct;

    congestionPredictionEnabledCountries = v7->_congestionPredictionEnabledCountries;
    v7->_congestionPredictionEnabledCountries = &off_1002BF8D8;

    v234 = 0;
    v10 = [FMConfiguration getNSNumberAtKey:@"FMDatabaseEntitiesTimeToLive" fromDict:valuesCopy error:&v234];
    v11 = v234;
    v7->_FMDatabaseEntitiesTimeToLive = [v10 unsignedIntegerValue];

    v233 = v11;
    v12 = [FMConfiguration getNSNumberAtKey:@"FMEnableFedMobilityOOSLearnings" fromDict:valuesCopy error:&v233];
    v13 = v233;

    v7->_enableFedMobilityOOSLearnings = [v12 BOOLValue];
    v232 = v13;
    v14 = [FMConfiguration getNSNumberAtKey:@"FMSendOOSPredictionsToBaseband" fromDict:valuesCopy error:&v232];
    v15 = v232;

    v7->_sendOOSPredictionsToBaseband = [v14 BOOLValue];
    v231 = v15;
    v16 = [FMConfiguration getNSNumberAtKey:@"FMOOSTimeOfDayWindowBackMinutes" fromDict:valuesCopy error:&v231];
    v17 = v231;

    v7->_OOSTimeOfDayWindowBackMinutes = [v16 unsignedIntegerValue];
    v230 = v17;
    v18 = [FMConfiguration getNSNumberAtKey:@"FMOOSTimeOfDayWindowForwardMinutes" fromDict:valuesCopy error:&v230];
    v19 = v230;

    v7->_OOSTimeOfDayWindowForwardMinutes = [v18 unsignedIntegerValue];
    v229 = v19;
    v20 = [FMConfiguration getNSNumberAtKey:@"FMOOSNextVisitCutoffMinutes" fromDict:valuesCopy error:&v229];
    v21 = v229;

    v7->_OOSNextVisitCutoffMinutes = [v20 unsignedIntegerValue];
    v228 = v21;
    v22 = [FMConfiguration getNSNumberAtKey:@"FMOOSPrevCellsInDatabase" fromDict:valuesCopy error:&v228];
    v23 = v228;

    v7->_OOSPrevCellsInDatabase = [v22 unsignedIntegerValue];
    v227 = v23;
    v24 = [FMConfiguration getNSNumberAtKey:@"FMOOSDurationsInDatabase" fromDict:valuesCopy error:&v227];
    v25 = v227;

    v7->_OOSDurationsInDatabase = [v24 unsignedIntegerValue];
    v226 = v25;
    v26 = [FMConfiguration getNSNumberAtKey:@"FMOOSPrevCellsInMemory" fromDict:valuesCopy error:&v226];
    v27 = v226;

    v7->_OOSPrevCellsInMemory = [v26 unsignedIntegerValue];
    v225 = v27;
    v28 = [FMConfiguration getNSNumberAtKey:@"FMOOSMinOOSAreaDurationSeconds" fromDict:valuesCopy error:&v225];
    v29 = v225;

    v7->_OOSMinOOSAreaDurationSeconds = [v28 unsignedIntegerValue];
    v224 = v29;
    v30 = [FMConfiguration getNSNumberAtKey:@"FMOOSMaxSecondsSinceCellSeenBeforeInService" fromDict:valuesCopy error:&v224];
    v31 = v224;

    v7->_OOSMaxSecondsSinceCellSeenBeforeInService = [v30 unsignedIntegerValue];
    v223 = v31;
    v32 = [FMConfiguration getNSNumberAtKey:@"FMOOSMinSeenCountForSendingPrediction" fromDict:valuesCopy error:&v223];
    v33 = v223;

    v7->_OOSMinSeenCountForSendingPrediction = [v32 unsignedIntegerValue];
    v222 = v33;
    v34 = [FMConfiguration getNSNumberAtKey:@"FMOOSMaxOOSAreasInDatabase" fromDict:valuesCopy error:&v222];
    v35 = v222;

    v7->_OOSMaxOOSAreasInDatabase = [v34 unsignedIntegerValue];
    v221 = v35;
    v36 = [FMConfiguration getNSNumberAtKey:@"FMOOSTimeBetweenDatabaseMaintenance" fromDict:valuesCopy error:&v221];
    v37 = v221;

    v7->_OOSTimeBetweenDatabaseMaintenance = [v36 unsignedIntegerValue];
    v220 = v37;
    v38 = [FMConfiguration getNSNumberAtKey:@"FMOOSAreasDatabaseTimeToLive" fromDict:valuesCopy error:&v220];
    v39 = v220;

    v7->_OOSAreasDatabaseTimeToLive = [v38 unsignedIntegerValue];
    v219 = v39;
    v40 = [FMConfiguration getNSNumberAtKey:@"FMCellCoverageTileMinNumberOfObservations" fromDict:valuesCopy error:&v219];
    v41 = v219;

    v7->_CellCoverageTileMinNumberOfObservations = [v40 unsignedIntegerValue];
    v218 = v41;
    v42 = [FMConfiguration getNSNumberAtKey:@"FMCrowdsourcedOOSRateDiffThreshold" fromDict:valuesCopy error:&v218];
    v43 = v218;

    v7->_CrowdsourcedOOSRateDiffThreshold = [v42 unsignedIntegerValue];
    v217 = v43;
    v44 = [FMConfiguration getNSNumberAtKey:@"FMCrowdsourcedMaxCountDiffPercentThreshold" fromDict:valuesCopy error:&v217];
    v45 = v217;

    v7->_CrowdsourcedMaxCountDiffPercentThreshold = [v44 unsignedIntegerValue];
    v216 = v45;
    v46 = [FMConfiguration getNSNumberAtKey:@"FMCrowdsourcedMinDistanceChangedWhileOOSThreshold" fromDict:valuesCopy error:&v216];
    v47 = v216;

    v7->_CrowdsourcedMinDistanceChangedWhileOOSThreshold = [v46 unsignedIntegerValue];
    v215 = v47;
    v48 = [FMConfiguration getNSNumberAtKey:@"FMDisableVisitChecking" fromDict:valuesCopy error:&v215];
    v49 = v215;

    v7->_disableVisitChecking = [v48 BOOLValue];
    v214 = v49;
    v50 = [FMConfiguration getNSNumberAtKey:@"FMLocationHorizontalAccuracyThreshold" fromDict:valuesCopy error:&v214];
    v51 = v214;

    v7->_LocationHorizontalAccuracyThreshold = [v50 unsignedIntegerValue];
    v213 = v51;
    v52 = [FMConfiguration getNSNumberAtKey:@"FMSendOnDevicePredictionLikelihood" fromDict:valuesCopy error:&v213];
    v53 = v213;

    [v52 floatValue];
    v7->_sendOnDevicePredictionLikelihood = v54;

    v212 = v53;
    v55 = [FMConfiguration getNSNumberAtKey:@"FMSelectPredictedCellBasedOnSeenCountLikelihood" fromDict:valuesCopy error:&v212];
    v56 = v212;

    [v55 floatValue];
    v7->_selectPredictedCellBasedOnSeenCountLikelihood = v57;

    v211 = v56;
    v58 = [FMConfiguration getNSNumberAtKey:@"FMSendCrowdsourcedPredictionLikelihood" fromDict:valuesCopy error:&v211];
    v59 = v211;

    [v58 floatValue];
    v7->_sendCrowdsourcedPredictionLikelihood = v60;

    v210 = v59;
    v61 = [FMConfiguration getNSNumberAtKey:@"FMOnDeviceDurationPredictionPercentile" fromDict:valuesCopy error:&v210];
    v62 = v210;

    v7->_onDeviceDurationPredictionPercentile = [v61 unsignedIntegerValue];
    v209 = v62;
    v63 = [FMConfiguration getNSNumberAtKey:@"FMCoreLocationDistanceFilter" fromDict:valuesCopy error:&v209];
    v64 = v209;

    v7->_coreLocationDistanceFilter = [v63 unsignedIntegerValue];
    v208 = v64;
    v65 = [FMConfiguration getNSNumberAtKey:@"FMDisableCrowdsourcedLearnings" fromDict:valuesCopy error:&v208];
    v66 = v208;

    v7->_disableCrowdsourcedLearnings = [v65 BOOLValue];
    v207 = v66;
    v67 = [FMConfiguration getNSNumberAtKey:@"FMMinPredictedDurationSeconds" fromDict:valuesCopy error:&v207];
    v68 = v207;

    v7->_minPredictedDurationSeconds = [v67 unsignedIntegerValue];
    v206 = v68;
    v69 = [FMConfiguration getNSNumberAtKey:@"FMEnableCongestionPredictions" fromDict:valuesCopy error:&v206];
    v70 = v206;

    v7->_enableCongestionPredictions = [v69 BOOLValue];
    v205 = v70;
    v71 = [FMConfiguration getNSNumberAtKey:@"FMCongestionOccurrencesInDatabase" fromDict:valuesCopy error:&v205];
    v72 = v205;

    v7->_congestionOccurrencesInDatabase = [v71 unsignedIntegerValue];
    v204 = v72;
    v73 = [FMConfiguration getNSNumberAtKey:@"FMCongestionPrevCellsInDatabase" fromDict:valuesCopy error:&v204];
    v74 = v204;

    v7->_congestionPrevCellsInDatabase = [v73 unsignedIntegerValue];
    v203 = v74;
    v75 = [FMConfiguration getNSNumberAtKey:@"FMCongestionMaxAreasInDatabase" fromDict:valuesCopy error:&v203];
    v76 = v203;

    v7->_congestionMaxAreasInDatabase = [v75 unsignedIntegerValue];
    v202 = v76;
    v77 = [FMConfiguration getNSNumberAtKey:@"FMCongestionMinSeenCountForSendingPrediction" fromDict:valuesCopy error:&v202];
    v78 = v202;

    v7->_congestionMinSeenCountForSendingPrediction = [v77 unsignedIntegerValue];
    v201 = v78;
    v79 = [FMConfiguration getNSNumberAtKey:@"FMCongestionGoodCellsInDatabase" fromDict:valuesCopy error:&v201];
    v80 = v201;

    v7->_congestionGoodCellsInDatabase = [v79 unsignedIntegerValue];
    v200 = v80;
    v81 = [FMConfiguration getNSNumberAtKey:@"FMCongestionSendOnDevicePredictionLikelihood" fromDict:valuesCopy error:&v200];
    v82 = v200;

    [v81 floatValue];
    v7->_congestionSendOnDevicePredictionLikelihood = v83;

    v199 = v82;
    v84 = [FMConfiguration getNSNumberAtKey:@"FMTSEnableTimeSeriesPredictions" fromDict:valuesCopy error:&v199];
    v85 = v199;

    v7->_FMTSEnableTimeSeriesPredictions = [v84 BOOLValue];
    v198 = v85;
    v86 = [FMConfiguration getNSNumberAtKey:@"FMTSEnableDataCollection" fromDict:valuesCopy error:&v198];
    v87 = v198;

    v7->_FMTSEnableDataCollection = [v86 BOOLValue];
    v197 = v87;
    v88 = [FMConfiguration getNSNumberAtKey:@"FMTSWindowSizeInDatabaseSeconds" fromDict:valuesCopy error:&v197];
    v89 = v197;

    v7->_FMTSWindowSizeInDatabaseSeconds = [v88 unsignedIntegerValue];
    v196 = v89;
    v90 = [FMConfiguration getNSNumberAtKey:@"FMTSAnomaliesInDatabase" fromDict:valuesCopy error:&v196];
    v91 = v196;

    v7->_FMTSAnomaliesInDatabase = [v90 unsignedIntegerValue];
    v195 = v91;
    v92 = [FMConfiguration getNSNumberAtKey:@"FMTSMaxAnomaliesFetchedPerPrediction" fromDict:valuesCopy error:&v195];
    v93 = v195;

    v7->_FMTSMaxAnomaliesFetchedPerPrediction = [v92 unsignedIntegerValue];
    v194 = v93;
    v94 = [FMConfiguration getNSNumberAtKey:@"FMTSAnomalyUsedForPredictionDistanceThreshold" fromDict:valuesCopy error:&v194];
    v95 = v194;

    [v94 doubleValue];
    v7->_FMTSAnomalyUsedForPredictionDistanceThreshold = v96;

    v193 = v95;
    v97 = [FMConfiguration getNSNumberAtKey:@"FMTSTimeDistanceWeight" fromDict:valuesCopy error:&v193];
    v98 = v193;

    [v97 doubleValue];
    v7->_FMTSTimeDistanceWeight = v99;

    v192 = v98;
    v100 = [FMConfiguration getNSNumberAtKey:@"FMTSCellChangeCrossDistance" fromDict:valuesCopy error:&v192];
    v101 = v192;

    [v100 doubleValue];
    v7->_FMTSCellChangeCrossDistance = v102;

    v191 = v101;
    v103 = [FMConfiguration getNSNumberAtKey:@"FMTSTimeDistanceMaxTime" fromDict:valuesCopy error:&v191];
    v104 = v191;

    v7->_FMTSTimeDistanceMaxTime = [v103 intValue];
    v190 = v104;
    v105 = [FMConfiguration getNSNumberAtKey:@"FMTSEventTypeWeightCellChange" fromDict:valuesCopy error:&v190];
    v106 = v190;

    [v105 doubleValue];
    v7->_FMTSEventTypeWeightCellChange = v107;

    v189 = v106;
    v108 = [FMConfiguration getNSNumberAtKey:@"FMTSEventTypeWeightSignalStrengthChange" fromDict:valuesCopy error:&v189];
    v109 = v189;

    [v108 doubleValue];
    v7->_FMTSEventTypeWeightSignalStrengthChange = v110;

    v188 = v109;
    v111 = [FMConfiguration getNSNumberAtKey:@"FMTSEventTypeWeightVisitStart" fromDict:valuesCopy error:&v188];
    v112 = v188;

    [v111 doubleValue];
    v7->_FMTSEventTypeWeightVisitStart = v113;

    v187 = v112;
    v114 = [FMConfiguration getNSNumberAtKey:@"FMTSEventTypeWeightVisitEnd" fromDict:valuesCopy error:&v187];
    v115 = v187;

    [v114 doubleValue];
    v7->_FMTSEventTypeWeightVisitEnd = v116;

    v186 = v115;
    v117 = [FMConfiguration getNSNumberAtKey:@"FMTSSignalStrengthChangeSameDirectionDistance" fromDict:valuesCopy error:&v186];
    v118 = v186;

    [v117 doubleValue];
    v7->_FMTSSignalStrengthChangeSameDirectionDistance = v119;

    v185 = v118;
    v120 = [FMConfiguration getNSNumberAtKey:@"FMTSWindowSizeMaxTimeUntilPredictedAnomalySeconds" fromDict:valuesCopy error:&v185];
    v121 = v185;

    v7->_FMTSWindowSizeMaxTimeUntilPredictedAnomalySeconds = [v120 unsignedIntegerValue];
    v184 = v121;
    v122 = [FMConfiguration getNSNumberAtKey:@"FMTSAnomalyPredictionAdvanceTimeSeconds" fromDict:valuesCopy error:&v184];
    v123 = v184;

    v7->_FMTSAnomalyPredictionAdvanceTimeSeconds = [v122 unsignedIntegerValue];
    v183 = v123;
    v124 = [FMConfiguration getNSNumberAtKey:@"FMTSAnomalyPredictionDurationConfidenceRangeSeconds" fromDict:valuesCopy error:&v183];
    v125 = v183;

    v7->_FMTSAnomalyPredictionDurationConfidenceRangeSeconds = [v124 unsignedIntegerValue];
    v182 = v125;
    v126 = [FMConfiguration getNSNumberAtKey:@"FMTSAnomalyPredictionTimeToAnomalyConfidenceRangeSeconds" fromDict:valuesCopy error:&v182];
    v127 = v182;

    v7->_FMTSAnomalyPredictionTimeToAnomalyConfidenceRangeSeconds = [v126 unsignedIntegerValue];
    v181 = v127;
    v128 = [FMConfiguration getNSNumberAtKey:@"FMTSAnomalyBaseConfidence" fromDict:valuesCopy error:&v181];
    v129 = v181;

    [v128 doubleValue];
    v7->_FMTSAnomalyBaseConfidence = v130;

    v180 = v129;
    v131 = [FMConfiguration getNSNumberAtKey:@"FMTSAnomalyConfidenceMinPredictionCount" fromDict:valuesCopy error:&v180];
    v132 = v180;

    v7->_FMTSAnomalyConfidenceMinPredictionCount = [v131 unsignedIntegerValue];
    v179 = v132;
    v133 = [FMConfiguration getNSNumberAtKey:@"FMTSAnomalyPredictionMinNumObservedEvents" fromDict:valuesCopy error:&v179];
    v134 = v179;

    v7->_FMTSAnomalyPredictionMinNumObservedEvents = [v133 unsignedIntegerValue];
    v178 = v134;
    v135 = [FMConfiguration getNSNumberAtKey:@"FMTSPredictionMinTimeBetweenPredictionsSeconds" fromDict:valuesCopy error:&v178];
    v136 = v178;

    v7->_FMTSPredictionMinTimeBetweenPredictionsSeconds = [v135 unsignedIntegerValue];
    v177 = v136;
    v137 = [FMConfiguration getNSNumberAtKey:@"FMTSAnomalyStoringMinNumObservedEvents" fromDict:valuesCopy error:&v177];
    v138 = v177;

    v7->_FMTSAnomalyStoringMinNumObservedEvents = [v137 unsignedIntegerValue];
    v176 = v138;
    v139 = [FMConfiguration getNSNumberAtKey:@"FMTSAnomalyStoringMinDurationSeconds" fromDict:valuesCopy error:&v176];
    v140 = v176;

    v7->_FMTSAnomalyStoringMinDurationSeconds = [v139 unsignedIntegerValue];
    v175 = v140;
    v141 = [FMConfiguration getNSNumberAtKey:@"FMTSAnomalyUseTagsForFetching" fromDict:valuesCopy error:&v175];
    v142 = v175;

    v7->_FMTSAnomalyUseTagsForFetching = [v141 BOOLValue];
    v174 = v142;
    v143 = [FMConfiguration getNSNumberAtKey:@"FMTSCongestionAnomalyMaxTimeOfDayDifference" fromDict:valuesCopy error:&v174];
    v144 = v174;

    v7->_FMTSCongestionAnomalyMaxTimeOfDayDifference = [v143 unsignedIntegerValue];
    v173 = v144;
    v145 = [FMConfiguration getNSNumberAtKey:@"FMTSAnomalyUseLastEventForPredictionAdvanceTime" fromDict:valuesCopy error:&v173];
    v146 = v173;

    v7->_FMTSAnomalyUseLastEventForPredictionAdvanceTime = [v145 BOOLValue];
    v172 = v146;
    v147 = [FMConfiguration getNSNumberAtKey:@"FMTSMaxTimeUntilAnomalyPredictionErrorConsideredCorrect" fromDict:valuesCopy error:&v172];
    v148 = v172;

    v7->_FMTSMaxTimeUntilAnomalyPredictionErrorConsideredCorrect = [v147 unsignedIntegerValue];
    v171 = v148;
    v149 = [FMConfiguration getNSNumberAtKey:@"FMTSMaxDurationPredictionErrorConsideredCorrect" fromDict:valuesCopy error:&v171];
    v150 = v171;

    v7->_FMTSMaxDurationPredictionErrorConsideredCorrect = [v149 unsignedIntegerValue];
    v170 = v150;
    v151 = [FMConfiguration getNSNumberAtKey:@"FMCellMapMaxNumPredictionNeighbors" fromDict:valuesCopy error:&v170];
    v152 = v170;

    v7->_FMCellMapMaxNumPredictionNeighbors = [v151 unsignedIntegerValue];
    v169 = v152;
    v153 = [FMConfiguration getNSNumberAtKey:@"FMCellMapMaxNumNodesInDatabase" fromDict:valuesCopy error:&v169];
    v154 = v169;

    v7->_FMCellMapMaxNumNodesInDatabase = [v153 unsignedIntegerValue];
    v168 = v154;
    v155 = [FMConfiguration getNSNumberAtKey:@"FMCellMapInternalOverrideEnabled" fromDict:valuesCopy error:&v168];
    v156 = v168;

    v7->_FMCellMapInternalOverrideEnabled = [v155 BOOLValue];
    v167 = v156;
    v157 = [FMConfiguration getNSNumberAtKey:@"FMCellMapSendPredictionsToBaseband" fromDict:valuesCopy error:&v167];
    v158 = v167;

    v7->_FMCellMapSendPredictionsToBaseband = [v157 BOOLValue];
    v166 = v158;
    v159 = [FMConfiguration getNSNumberAtKey:@"FMCellMapPredictionSendingEnabledLikelihood" fromDict:valuesCopy error:&v166];
    v160 = v166;

    [v159 doubleValue];
    v7->_FMCellMapPredictionSendingEnabledLikelihood = v161;

    if (v160)
    {
      v162 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v160 localizedDescription];
        sub_100204D18(localizedDescription, buf, v162);
      }

      v164 = 0;
    }

    else
    {
      objc_storeStrong(&v7->_configAsDict, values);
      [valuesCopy enumerateKeysAndObjectsUsingBlock:&stru_1002AF048];
      v164 = v7;
    }
  }

  else
  {
    v164 = 0;
  }

  return v164;
}

- (BOOL)isCompatibleToConfig:(id)config
{
  configCopy = config;
  v5 = configCopy;
  v6 = 1;
  if (configCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000A8D10;
    v8[3] = &unk_1002AF070;
    v8[4] = self;
    v9 = configCopy;
    v10 = &v11;
    [&off_1002BF8F0 enumerateObjectsUsingBlock:v8];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  return v6 & 1;
}

@end