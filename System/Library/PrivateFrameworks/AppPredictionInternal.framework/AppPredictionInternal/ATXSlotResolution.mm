@interface ATXSlotResolution
+ (BOOL)isNotLaunchedWithinShortTimeSpan:(id)a3;
+ (double)exponentialDecay:(double)a3 withHalflife:(double)a4;
+ (id)yearMonthDayComponentsForDate:(id)a3;
+ (void)setDistributionBasedScoreInputsForDayOfWeekForItem:(ATXPredictionItem *)a3 withLaunchDistribution:(id)a4;
+ (void)setDistributionBasedScoreInputsForItem:(ATXPredictionItem *)a3 withGeoHashResolution:(unint64_t)a4 withLaunchCounts:(id)a5;
+ (void)setDistributionBasedScoreInputsForTimeOfDayForItem:(ATXPredictionItem *)a3 withLaunchDistribution:(id)a4;
+ (void)setSlotLogProbabilityForCandidateActionPredictions:(id)a3;
+ (void)setSlotResolutionPredictionItemForTopUpcomingMediaActionContainer:(id)a3 appActionPredictionItem:(const ATXPredictionItem *)a4 appActionLogProbability:(double)a5;
- (ATXSlotResolution)init;
- (ATXSlotResolution)initWithDataStore:(id)a3;
- (id)actionPredictionsForStatistics:(id)a3;
- (id)actionPredictionsForStatistics:(id)a3 appActionPredictionItem:(const ATXPredictionItem *)a4 appActionLogProbability:(double)a5 scoreLogger:(id)a6 currentDate:(id)a7;
- (id)fastStatisticsOnSlotsForBundleId:(id)a3 actionType:(id)a4 currentDate:(id)a5 previousLocationUUID:(id)a6 currentLocationUUID:(id)a7 currentMotionType:(int64_t)a8 currentGeohash:(int64_t)a9 currentCoarseGeohash:(int64_t)a10;
- (id)statisticsForActionKey:(id)a3;
- (id)statisticsForActionKey:(id)a3 context:(id)a4;
- (id)statisticsForActionKey:(id)a3 currentDate:(id)a4 previousLocationUUID:(id)a5 currentLocationUUID:(id)a6 currentMotionType:(int64_t)a7 currentGeohash:(int64_t)a8 currentCoarseGeohash:(int64_t)a9;
- (id)updateStatisticsWithFeedbackForBundleId:(id)a3 actionType:(id)a4 statistics:(id)a5 currentDate:(id)a6 currentGeohash:(int64_t)a7 currentCoarseGeohash:(int64_t)a8;
- (id)updateStatisticsWithHigherLevelFeaturesForStatistics:(id)a3;
@end

@implementation ATXSlotResolution

- (ATXSlotResolution)initWithDataStore:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ATXSlotResolution.mm" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"dataStore"}];
  }

  v14.receiver = self;
  v14.super_class = ATXSlotResolution;
  v7 = [(ATXSlotResolution *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataStore, a3);
    v9 = +[ATXScoreInterpreterCache sharedInstance];
    v10 = [v9 scoreInterpreterForConsumerSubType:25];
    slotResolutionInterpreter = v8->_slotResolutionInterpreter;
    v8->_slotResolutionInterpreter = v10;
  }

  return v8;
}

- (ATXSlotResolution)init
{
  v3 = +[_ATXDataStore sharedInstance];
  v4 = [(ATXSlotResolution *)self initWithDataStore:v3];

  return v4;
}

+ (id)yearMonthDayComponentsForDate:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [v4 components:28 fromDate:v3];

  return v5;
}

+ (double)exponentialDecay:(double)a3 withHalflife:(double)a4
{
  if (a4 <= 0.0)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"ATXSlotResolution.mm" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"halflife > 0"}];
  }

  return exp(-0.693147181 / a4 * a3);
}

- (id)fastStatisticsOnSlotsForBundleId:(id)a3 actionType:(id)a4 currentDate:(id)a5 previousLocationUUID:(id)a6 currentLocationUUID:(id)a7 currentMotionType:(int64_t)a8 currentGeohash:(int64_t)a9 currentCoarseGeohash:(int64_t)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v60 = v16;
  v61 = v15;
  v58 = a6;
  v59 = v17;
  v57 = a7;
  v56 = [_ATXActionUtils timeOfDayAndDayOfWeekForDate:v17 timeZone:0];
  v18 = [v56 first];
  v19 = [v18 integerValue];

  v20 = [v56 second];
  v21 = [v20 integerValue];

  v55 = [MEMORY[0x277CBEA80] currentCalendar];
  LODWORD(v20) = [v55 isDateInWeekend:v17];
  v54 = [ATXSlotResolution yearMonthDayComponentsForDate:v17];
  v22 = +[_ATXGlobals sharedInstance];
  v23 = [ATXSlotResolutionStatistics alloc];
  v24 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:v15 actionType:v16];
  v25 = [(ATXSlotResolutionStatistics *)v23 initWithActionKey:v24];

  v196[0] = 0;
  v196[1] = v196;
  v196[2] = 0x2020000000;
  v196[3] = -1;
  v195[0] = 0;
  v195[1] = v195;
  v195[2] = 0x2020000000;
  v195[3] = 0;
  v194[0] = 0;
  v194[1] = v194;
  v194[2] = 0x2020000000;
  v194[3] = 0;
  v193[0] = 0;
  v193[1] = v193;
  v193[2] = 0x2020000000;
  v193[3] = 0;
  v192[0] = 0;
  v192[1] = v192;
  v192[2] = 0x2020000000;
  v192[3] = 0;
  v191[0] = 0;
  v191[1] = v191;
  v191[2] = 0x2020000000;
  v191[3] = 0;
  v190[0] = 0;
  v190[1] = v190;
  v190[2] = 0x2020000000;
  v190[3] = 0;
  v188[0] = 0;
  v188[1] = v188;
  v188[2] = 0x2020000000;
  v189 = 0;
  v186[0] = 0;
  v186[1] = v186;
  v186[2] = 0x2020000000;
  v187 = 0;
  v185[0] = 0;
  v185[1] = v185;
  v185[2] = 0x2020000000;
  v185[3] = 0;
  v184[0] = 0;
  v184[1] = v184;
  v184[2] = 0x2020000000;
  v184[3] = 0;
  v182[0] = 0;
  v182[1] = v182;
  v182[2] = 0x2020000000;
  v183 = 0;
  v180[0] = 0;
  v180[1] = v180;
  v180[2] = 0x2020000000;
  v181 = 0;
  v178[0] = 0;
  v178[1] = v178;
  v178[2] = 0x2020000000;
  v179 = 0;
  v177[0] = 0;
  v177[1] = v177;
  v177[2] = 0x2020000000;
  v177[3] = 0;
  v176[0] = 0;
  v176[1] = v176;
  v176[2] = 0x2020000000;
  v176[3] = 0;
  v174[0] = 0;
  v174[1] = v174;
  v174[2] = 0x2020000000;
  v175 = 0;
  v173[0] = 0;
  v173[1] = v173;
  v173[2] = 0x2020000000;
  v173[3] = 0;
  v171[0] = 0;
  v171[1] = v171;
  v171[2] = 0x2020000000;
  v172 = 0;
  v169[0] = 0;
  v169[1] = v169;
  v169[2] = 0x2020000000;
  v170 = 0;
  v168[0] = 0;
  v168[1] = v168;
  v168[2] = 0x2020000000;
  v168[3] = 0;
  v166[0] = 0;
  v166[1] = v166;
  v166[2] = 0x2020000000;
  v167 = 0;
  v165[0] = 0;
  v165[1] = v165;
  v165[2] = 0x2020000000;
  v165[3] = 0;
  v164[0] = 0;
  v164[1] = v164;
  v164[2] = 0x2020000000;
  v164[3] = 0;
  v162[0] = 0;
  v162[1] = v162;
  v162[2] = 0x2020000000;
  v163 = 0;
  v160[0] = 0;
  v160[1] = v160;
  v160[2] = 0x2020000000;
  v161 = 0;
  v158[0] = 0;
  v158[1] = v158;
  v158[2] = 0x2020000000;
  v159 = 0;
  v157[0] = 0;
  v157[1] = v157;
  v157[2] = 0x2020000000;
  v157[3] = 0;
  v156[0] = 0;
  v156[1] = v156;
  v156[2] = 0x2020000000;
  v156[3] = 0;
  v155[0] = 0;
  v155[1] = v155;
  v155[2] = 0x2020000000;
  v155[3] = 0;
  v154[0] = 0;
  v154[1] = v154;
  v154[2] = 0x2020000000;
  v154[3] = 0;
  v153[0] = 0;
  v153[1] = v153;
  v153[2] = 0x2020000000;
  v153[3] = 0;
  v152[0] = 0;
  v152[1] = v152;
  v152[2] = 0x2020000000;
  v152[3] = 0;
  v151[0] = 0;
  v151[1] = v151;
  v151[2] = 0x2020000000;
  v151[3] = 0;
  v150[0] = 0;
  v150[1] = v150;
  v150[2] = 0x2020000000;
  v150[3] = 0;
  v149[0] = 0;
  v149[1] = v149;
  v149[2] = 0x2020000000;
  v149[3] = 0;
  v148[0] = 0;
  v148[1] = v148;
  v148[2] = 0x2020000000;
  v148[3] = 0;
  v147[0] = 0;
  v147[1] = v147;
  v147[2] = 0x2020000000;
  v147[3] = 0;
  v146[0] = 0;
  v146[1] = v146;
  v146[2] = 0x2020000000;
  v146[3] = 0;
  v145[0] = 0;
  v145[1] = v145;
  v145[2] = 0x2020000000;
  v145[3] = 0;
  v144[0] = 0;
  v144[1] = v144;
  v144[2] = 0x2020000000;
  v53 = v25;
  [v22 slotResolutionLaunchDecayHalflife];
  *&v144[3] = v26 * 86400.0;
  v143[0] = 0;
  v143[1] = v143;
  v143[2] = 0x2020000000;
  [v22 slotResolutionTimeOfDayLaunchDecayHalflife];
  *&v143[3] = v27 * 86400.0;
  v142[0] = 0;
  v142[1] = v142;
  v142[2] = 0x2020000000;
  [v22 slotResolutionDayOfWeekLaunchDecayHalflife];
  *&v142[3] = v28 * 86400.0;
  v141[0] = 0;
  v141[1] = v141;
  v141[2] = 0x2020000000;
  [v22 slotResolutionLocationLaunchDecayHalflife];
  *&v141[3] = v29 * 86400.0;
  v140[0] = 0;
  v140[1] = v140;
  v140[2] = 0x2020000000;
  [v22 actionSpecificGeoHashDecayHalflife];
  *&v140[3] = v30 * 86400.0;
  v139[0] = 0;
  v139[1] = v139;
  v139[2] = 0x2020000000;
  [v22 actionCoarseGeoHashDecayHalflife];
  *&v139[3] = v31 * 86400.0;
  v138[0] = 0;
  v138[1] = v138;
  v138[2] = 0x2020000000;
  [v22 slotResolutionPreviousLocationLaunchDecayHalflife];
  *&v138[3] = v32 * 86400.0;
  v137[0] = 0;
  v137[1] = v137;
  v137[2] = 0x2020000000;
  [v22 slotResolutionMotionTypeLaunchDecayHalflife];
  *&v137[3] = v33 * 86400.0;
  v136[0] = 0;
  v136[1] = v136;
  v136[2] = 0x2020000000;
  [v22 appLaunchDecayHalflife];
  *&v136[3] = v34 * 86400.0;
  v135[0] = 0;
  v135[1] = v135;
  v135[2] = 0x2020000000;
  [v22 slotResolutionPartOfWeekLaunchDecayHalflife];
  *&v135[3] = v35 * 86400.0;
  v134[0] = 0;
  v134[1] = v134;
  v134[2] = 0x2020000000;
  [v22 appAndActionCoarseTimePowLocationDecayHalflife];
  *&v134[3] = v36 * 86400.0;
  v133[0] = 0;
  v133[1] = v133;
  v133[2] = 0x2020000000;
  [v22 appAndActionSpecificTimePowLocationDecayHalflife];
  *&v133[3] = v37 * 86400.0;
  v38 = objc_opt_new();
  v131[0] = 0;
  v131[1] = v131;
  v131[2] = 0x3032000000;
  v131[3] = __Block_byref_object_copy__33;
  v131[4] = __Block_byref_object_dispose__33;
  v132 = 0;
  v39 = objc_opt_new();
  dataStore = self->_dataStore;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __172__ATXSlotResolution_fastStatisticsOnSlotsForBundleId_actionType_currentDate_previousLocationUUID_currentLocationUUID_currentMotionType_currentGeohash_currentCoarseGeohash___block_invoke;
  v62[3] = &unk_27859A7C0;
  v72 = v196;
  v73 = v195;
  v125 = v19;
  v74 = v194;
  v75 = v193;
  v76 = v192;
  v77 = v191;
  v78 = v190;
  v79 = v188;
  v126 = v21;
  v51 = v55;
  v63 = v51;
  v80 = v158;
  v81 = v182;
  v50 = v57;
  v64 = v50;
  v82 = v186;
  v127 = v20;
  v83 = v185;
  v84 = v184;
  v128 = a8;
  v85 = v180;
  v86 = v178;
  v41 = v58;
  v87 = v177;
  v88 = v176;
  v89 = v174;
  v90 = v173;
  v91 = v171;
  v92 = v169;
  v93 = v168;
  v94 = v166;
  v65 = v41;
  v66 = self;
  v130 = a9;
  v95 = v162;
  v96 = v160;
  v97 = v165;
  v98 = v164;
  v129 = a10;
  v99 = v157;
  v42 = v59;
  v100 = v156;
  v101 = v144;
  v102 = v155;
  v103 = v143;
  v104 = v154;
  v105 = v142;
  v106 = v153;
  v107 = v141;
  v108 = v152;
  v109 = v140;
  v110 = v151;
  v111 = v139;
  v112 = v150;
  v113 = v138;
  v114 = v149;
  v115 = v137;
  v116 = v148;
  v117 = v136;
  v118 = v147;
  v119 = v135;
  v120 = v146;
  v121 = v134;
  v122 = v145;
  v123 = v133;
  v124 = v131;
  v67 = v42;
  v68 = v39;
  v43 = v38;
  v69 = v43;
  v44 = v53;
  v70 = v44;
  v45 = v54;
  v71 = v45;
  v46 = v39;
  [(_ATXDataStore *)dataStore enumerateSlotUuidsOfType:v60 bundleId:v61 block:v62];
  v47 = v71;
  v48 = v44;

  _Block_object_dispose(v131, 8);
  _Block_object_dispose(v133, 8);
  _Block_object_dispose(v134, 8);
  _Block_object_dispose(v135, 8);
  _Block_object_dispose(v136, 8);
  _Block_object_dispose(v137, 8);
  _Block_object_dispose(v138, 8);
  _Block_object_dispose(v139, 8);
  _Block_object_dispose(v140, 8);
  _Block_object_dispose(v141, 8);
  _Block_object_dispose(v142, 8);
  _Block_object_dispose(v143, 8);
  _Block_object_dispose(v144, 8);
  _Block_object_dispose(v145, 8);
  _Block_object_dispose(v146, 8);
  _Block_object_dispose(v147, 8);
  _Block_object_dispose(v148, 8);
  _Block_object_dispose(v149, 8);
  _Block_object_dispose(v150, 8);
  _Block_object_dispose(v151, 8);
  _Block_object_dispose(v152, 8);
  _Block_object_dispose(v153, 8);
  _Block_object_dispose(v154, 8);
  _Block_object_dispose(v155, 8);
  _Block_object_dispose(v156, 8);
  _Block_object_dispose(v157, 8);
  _Block_object_dispose(v158, 8);
  _Block_object_dispose(v160, 8);
  _Block_object_dispose(v162, 8);
  _Block_object_dispose(v164, 8);
  _Block_object_dispose(v165, 8);
  _Block_object_dispose(v166, 8);
  _Block_object_dispose(v168, 8);
  _Block_object_dispose(v169, 8);
  _Block_object_dispose(v171, 8);
  _Block_object_dispose(v173, 8);
  _Block_object_dispose(v174, 8);
  _Block_object_dispose(v176, 8);
  _Block_object_dispose(v177, 8);
  _Block_object_dispose(v178, 8);
  _Block_object_dispose(v180, 8);
  _Block_object_dispose(v182, 8);
  _Block_object_dispose(v184, 8);
  _Block_object_dispose(v185, 8);
  _Block_object_dispose(v186, 8);
  _Block_object_dispose(v188, 8);
  _Block_object_dispose(v190, 8);
  _Block_object_dispose(v191, 8);
  _Block_object_dispose(v192, 8);
  _Block_object_dispose(v193, 8);
  _Block_object_dispose(v194, 8);
  _Block_object_dispose(v195, 8);
  _Block_object_dispose(v196, 8);

  return v48;
}

uint64_t __172__ATXSlotResolution_fastStatisticsOnSlotsForBundleId_actionType_currentDate_previousLocationUUID_currentLocationUUID_currentMotionType_currentGeohash_currentCoarseGeohash___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, double a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18)
{
  v272 = *MEMORY[0x277D85DE8];
  v265 = a2;
  v261 = a7;
  v267 = a8;
  v263 = a12;
  v262 = a13;
  v264 = a15;
  v260 = a16;
  if (*(*(*(a1 + 104) + 8) + 24) != a3)
  {
    [ATXSlotResolutionParametersStatistics _smoothedCountForTimeOfDay:a10 currentTimeOfDay:*(a1 + 528)];
    *(*(*(a1 + 112) + 8) + 24) = v24;
    [ATXSlotResolutionParametersStatistics _smoothedCountForThirtyMinuteWindow:a10 currentTimeOfDay:*(a1 + 528)];
    *(*(*(a1 + 120) + 8) + 24) = v25;
    [ATXSlotResolutionParametersStatistics _smoothedCountForHourWindow:a10 currentTimeOfDay:*(a1 + 528)];
    *(*(*(a1 + 128) + 8) + 24) = v26;
    [ATXSlotResolutionParametersStatistics _smoothedCountForEightHourWindow:a10 currentTimeOfDay:*(a1 + 528)];
    *(*(*(a1 + 136) + 8) + 24) = v27;
    [ATXSlotResolutionParametersStatistics _smoothedCountForCoarseTimeOfDay:a10 currentTimeOfDay:*(a1 + 528)];
    *(*(*(a1 + 144) + 8) + 24) = v28;
    [ATXSlotResolutionParametersStatistics _smoothedBudgetForTimeOfDay:a10 currentTimeOfDay:*(a1 + 528)];
    *(*(*(a1 + 152) + 8) + 24) = v29;
    *(*(*(a1 + 160) + 8) + 24) = *(a1 + 536) == a11;
    v30 = [*(a1 + 32) isDateInWeekend:v267];
    *(*(*(a1 + 168) + 8) + 24) = [_ATXActionUtils timeBucketFromZeroToTwentyFour:a10];
    if (*(a1 + 40))
    {
      v31 = [v262 isEqual:?];
    }

    else
    {
      v31 = 0;
    }

    *(*(*(a1 + 176) + 8) + 24) = v31;
    *(*(*(a1 + 184) + 8) + 24) = *(a1 + 544) == v30;
    v32 = *(*(*(a1 + 184) + 8) + 24);
    v33 = 0.0;
    v34 = 0.0;
    if (v32)
    {
      v35 = *(*(*(a1 + 176) + 8) + 24);
      if (v35)
      {
        v34 = vcvtd_n_f64_s32(v35 + v32, 1uLL);
      }
    }

    *(*(*(a1 + 192) + 8) + 24) = v34;
    v36 = *(*(*(a1 + 144) + 8) + 24);
    if (v36 != 0.0)
    {
      v37 = *(*(*(a1 + 184) + 8) + 24);
      if (v37)
      {
        v33 = (v36 + v37) * 0.5;
      }
    }

    *(*(*(a1 + 200) + 8) + 24) = v33;
    v38 = a14 != 4 && *(a1 + 552) == a14;
    *(*(*(a1 + 208) + 8) + 24) = v38;
    v39 = v263;
    if (v263)
    {
      v39 = [v263 isEqual:*(a1 + 48)];
    }

    *(*(*(a1 + 216) + 8) + 24) = v39;
    v40 = *(*(*(a1 + 144) + 8) + 24);
    v41 = 0.0;
    v42 = 0.0;
    if (v40 != 0.0)
    {
      v43 = *(*(*(a1 + 160) + 8) + 24);
      if (v43)
      {
        v42 = (v40 + v43) * 0.5;
      }
    }

    *(*(*(a1 + 224) + 8) + 24) = v42;
    v44 = *(*(*(a1 + 144) + 8) + 24);
    if (v44 != 0.0)
    {
      v45 = *(*(*(a1 + 176) + 8) + 24);
      if (v45)
      {
        v41 = (v44 + v45) * 0.5;
      }
    }

    *(*(*(a1 + 232) + 8) + 24) = v41;
    v46 = *(*(*(a1 + 160) + 8) + 24);
    if (v46)
    {
      v47 = *(*(*(a1 + 176) + 8) + 24);
      if (v47)
      {
        v46 = vcvtd_n_f64_s32(v47 + v46, 1uLL);
      }

      else
      {
        v46 = 0;
      }
    }

    *(*(*(a1 + 240) + 8) + 24) = v46;
    v48 = *(*(*(a1 + 144) + 8) + 24);
    v49 = 0.0;
    if (v48 != 0.0)
    {
      v50 = *(*(*(a1 + 160) + 8) + 24);
      if (v50)
      {
        v51 = *(*(*(a1 + 176) + 8) + 24);
        if (v51)
        {
          v49 = (v48 + v50 + v51) / 3.0;
        }
      }
    }

    *(*(*(a1 + 248) + 8) + 24) = v49;
    v52 = *(*(*(a1 + 216) + 8) + 24);
    if (v52)
    {
      v53 = *(*(*(a1 + 208) + 8) + 24);
      if (v53)
      {
        v52 = vcvtd_n_f64_s32(v53 + v52, 1uLL);
      }

      else
      {
        v52 = 0;
      }
    }

    *(*(*(a1 + 256) + 8) + 24) = v52;
    v54 = *(*(*(a1 + 216) + 8) + 24);
    if (v54)
    {
      v55 = *(*(*(a1 + 176) + 8) + 24);
      if (v55)
      {
        v54 = vcvtd_n_f64_s32(v55 + v54, 1uLL);
      }

      else
      {
        v54 = 0;
      }
    }

    *(*(*(a1 + 264) + 8) + 24) = v54;
    v56 = *(*(*(a1 + 144) + 8) + 24);
    v57 = 0.0;
    if (v56 != 0.0)
    {
      v58 = *(*(*(a1 + 216) + 8) + 24);
      if (v58)
      {
        v57 = (v56 + v58) * 0.5;
      }
    }

    *(*(*(a1 + 272) + 8) + 24) = v57;
    v59 = *(*(*(a1 + 160) + 8) + 24);
    if (v59)
    {
      v60 = *(*(*(a1 + 216) + 8) + 24);
      if (v60)
      {
        v59 = vcvtd_n_f64_s32(v60 + v59, 1uLL);
      }

      else
      {
        v59 = 0;
      }
    }

    *(*(*(a1 + 280) + 8) + 24) = v59;
    v61 = *(a1 + 56);
    *(*(*(a1 + 288) + 8) + 24) = [objc_opt_class() matchForCurrentGeohash:*(a1 + 560) rowGeohash:a18];
    v62 = *(a1 + 56);
    *(*(*(a1 + 296) + 8) + 24) = [objc_opt_class() matchForCurrentGeohash:*(a1 + 568) rowGeohash:a17];
    v63 = *(*(*(a1 + 144) + 8) + 24);
    v64 = 0.0;
    v65 = 0.0;
    if (v63 != 0.0)
    {
      v66 = *(*(*(a1 + 184) + 8) + 24);
      if (v66)
      {
        v67 = *(*(*(a1 + 288) + 8) + 24);
        if (v67)
        {
          v65 = (v63 + v66 + v67) / 3.0;
        }
      }
    }

    *(*(*(a1 + 304) + 8) + 24) = v65;
    v68 = *(*(*(a1 + 120) + 8) + 24);
    if (v68 != 0.0)
    {
      v69 = *(*(*(a1 + 160) + 8) + 24);
      if (v69)
      {
        v70 = *(*(*(a1 + 296) + 8) + 24);
        if (v70)
        {
          v64 = (v68 + v69 + v70) / 3.0;
        }
      }
    }

    *(*(*(a1 + 312) + 8) + 24) = v64;
    [*(a1 + 64) timeIntervalSinceDate:v267];
    *(*(*(a1 + 320) + 8) + 24) = v71;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 336) + 8) + 24)];
    *(*(*(a1 + 328) + 8) + 24) = v72;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 352) + 8) + 24)];
    *(*(*(a1 + 344) + 8) + 24) = v73;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 368) + 8) + 24)];
    *(*(*(a1 + 360) + 8) + 24) = v74;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 384) + 8) + 24)];
    *(*(*(a1 + 376) + 8) + 24) = v75;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 400) + 8) + 24)];
    *(*(*(a1 + 392) + 8) + 24) = v76;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 416) + 8) + 24)];
    *(*(*(a1 + 408) + 8) + 24) = v77;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 432) + 8) + 24)];
    *(*(*(a1 + 424) + 8) + 24) = v78;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 448) + 8) + 24)];
    *(*(*(a1 + 440) + 8) + 24) = v79;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 464) + 8) + 24)];
    *(*(*(a1 + 456) + 8) + 24) = v80;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 480) + 8) + 24)];
    *(*(*(a1 + 472) + 8) + 24) = v81;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 496) + 8) + 24)];
    *(*(*(a1 + 488) + 8) + 24) = v82;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 512) + 8) + 24)];
    *(*(*(a1 + 504) + 8) + 24) = v83;
    v84 = [ATXSlotResolution yearMonthDayComponentsForDate:v267];
    v85 = *(*(a1 + 520) + 8);
    v86 = *(v85 + 40);
    *(v85 + 40) = v84;

    *(*(*(a1 + 104) + 8) + 24) = a3;
    [*(a1 + 72) removeAllObjects];
  }

  v87 = *(a1 + 56);
  v88 = [objc_opt_class() shouldCountRowForGeohashOccurrencesCalculationForCurrentGeohash:*(a1 + 560) rowGeohash:a18];
  v89 = *(a1 + 56);
  v90 = [objc_opt_class() shouldCountRowForGeohashOccurrencesCalculationForCurrentGeohash:*(a1 + 568) rowGeohash:a17];
  v91 = *(a1 + 56);
  v258 = [objc_opt_class() shouldCountRowForGeohashIndividualContextStatistics:*(a1 + 560) rowGeohash:a18];
  v92 = *(a1 + 56);
  v93 = [objc_opt_class() shouldCountRowForGeohashIndividualContextStatistics:*(a1 + 568) rowGeohash:a17];
  v94 = *(a1 + 80);
  v95 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  LOBYTE(v94) = [v94 containsObject:v95];

  if ((v94 & 1) == 0)
  {
    *(*(a1 + 88) + 48) = *(*(a1 + 88) + 48) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 112) + 8) + 24);
    *(*(a1 + 88) + 56) = *(*(a1 + 88) + 56) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 120) + 8) + 24);
    *(*(a1 + 88) + 64) = *(*(a1 + 88) + 64) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 128) + 8) + 24);
    *(*(a1 + 88) + 72) = *(*(a1 + 88) + 72) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 136) + 8) + 24);
    *(*(a1 + 88) + 80) = *(*(a1 + 88) + 80) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 144) + 8) + 24);
    *(*(a1 + 88) + 88) = *(*(a1 + 88) + 88) + *(*(*(a1 + 360) + 8) + 24) * a9 * *(*(*(a1 + 160) + 8) + 24);
    *(*(a1 + 88) + 96) = *(*(a1 + 88) + 96) + *(*(*(a1 + 472) + 8) + 24) * a9 * *(*(*(a1 + 184) + 8) + 24);
    v96 = *(*(*(a1 + 472) + 8) + 24);
    v97 = *(*(a1 + 376) + 8);
    if (v96 < *(v97 + 24))
    {
      v96 = *(v97 + 24);
    }

    *(*(a1 + 88) + 296) = *(*(a1 + 88) + 296) + v96 * a9 * *(*(*(a1 + 192) + 8) + 24);
    v98 = *(*(*(a1 + 472) + 8) + 24);
    v99 = *(*(a1 + 344) + 8);
    if (v98 < *(v99 + 24))
    {
      v98 = *(v99 + 24);
    }

    *(*(a1 + 88) + 304) = *(*(a1 + 88) + 304) + v98 * a9 * *(*(*(a1 + 200) + 8) + 24);
    *(*(a1 + 88) + 104) = *(*(a1 + 88) + 104) + *(*(*(a1 + 376) + 8) + 24) * a9 * *(*(*(a1 + 176) + 8) + 24);
    *(*(a1 + 88) + 120) = *(*(a1 + 88) + 120) + *(*(*(a1 + 424) + 8) + 24) * a9 * *(*(*(a1 + 216) + 8) + 24);
    *(*(a1 + 88) + 112) = *(*(a1 + 88) + 112) + *(*(*(a1 + 440) + 8) + 24) * a9 * *(*(*(a1 + 208) + 8) + 24);
    v100 = *(*(*(a1 + 344) + 8) + 24);
    v101 = *(*(a1 + 360) + 8);
    if (v100 < *(v101 + 24))
    {
      v100 = *(v101 + 24);
    }

    *(*(a1 + 88) + 240) = *(*(a1 + 88) + 240) + v100 * a9 * *(*(*(a1 + 224) + 8) + 24);
    v102 = *(*(*(a1 + 344) + 8) + 24);
    v103 = *(*(a1 + 376) + 8);
    if (v102 < *(v103 + 24))
    {
      v102 = *(v103 + 24);
    }

    *(*(a1 + 88) + 232) = *(*(a1 + 88) + 232) + v102 * a9 * *(*(*(a1 + 232) + 8) + 24);
    v104 = *(*(*(a1 + 360) + 8) + 24);
    v105 = *(*(a1 + 376) + 8);
    if (v104 < *(v105 + 24))
    {
      v104 = *(v105 + 24);
    }

    *(*(a1 + 88) + 248) = *(*(a1 + 88) + 248) + v104 * a9 * *(*(*(a1 + 240) + 8) + 24);
    v106 = *(*(*(a1 + 344) + 8) + 24);
    v107 = *(*(*(a1 + 360) + 8) + 24);
    v108 = *(*(a1 + 376) + 8);
    if (v107 < *(v108 + 24))
    {
      v107 = *(v108 + 24);
    }

    if (v106 < v107)
    {
      v106 = v107;
    }

    *(*(a1 + 88) + 256) = *(*(a1 + 88) + 256) + v106 * a9 * *(*(*(a1 + 248) + 8) + 24);
    v109 = *(*(*(a1 + 424) + 8) + 24);
    v110 = *(*(a1 + 440) + 8);
    if (v109 < *(v110 + 24))
    {
      v109 = *(v110 + 24);
    }

    *(*(a1 + 88) + 264) = *(*(a1 + 88) + 264) + v109 * a9 * *(*(*(a1 + 256) + 8) + 24);
    v111 = *(*(*(a1 + 424) + 8) + 24);
    v112 = *(*(a1 + 376) + 8);
    if (v111 < *(v112 + 24))
    {
      v111 = *(v112 + 24);
    }

    *(*(a1 + 88) + 272) = *(*(a1 + 88) + 272) + v111 * a9 * *(*(*(a1 + 264) + 8) + 24);
    v113 = *(*(*(a1 + 344) + 8) + 24);
    v114 = *(*(a1 + 424) + 8);
    if (v113 < *(v114 + 24))
    {
      v113 = *(v114 + 24);
    }

    *(*(a1 + 88) + 280) = *(*(a1 + 88) + 280) + v113 * a9 * *(*(*(a1 + 272) + 8) + 24);
    v115 = *(*(*(a1 + 360) + 8) + 24);
    v116 = *(*(a1 + 424) + 8);
    if (v115 < *(v116 + 24))
    {
      v115 = *(v116 + 24);
    }

    *(*(a1 + 88) + 288) = *(*(a1 + 88) + 288) + v115 * a9 * *(*(*(a1 + 280) + 8) + 24);
    *(*(a1 + 88) + 440) = *(*(a1 + 88) + 440) + *(*(*(a1 + 488) + 8) + 24) * a9 * *(*(*(a1 + 304) + 8) + 24);
    *(*(a1 + 88) + 488) = *(*(a1 + 88) + 488) + *(*(*(a1 + 504) + 8) + 24) * a9 * *(*(*(a1 + 312) + 8) + 24);
    *(*(a1 + 88) + 312) = *(*(a1 + 88) + 312) + a9 * *(*(*(a1 + 344) + 8) + 24);
    *(*(a1 + 88) + 320) = *(*(a1 + 88) + 320) + a9 * *(*(*(a1 + 360) + 8) + 24);
    *(*(a1 + 88) + 328) = *(*(a1 + 88) + 328) + a9 * *(*(*(a1 + 376) + 8) + 24);
    *(*(a1 + 88) + 336) = *(*(a1 + 88) + 336) + a9 * *(*(*(a1 + 440) + 8) + 24);
    *(*(a1 + 88) + 344) = *(*(a1 + 88) + 344) + a9 * *(*(*(a1 + 424) + 8) + 24);
    *(*(a1 + 88) + 352) = *(*(a1 + 88) + 352) + a9 * *(*(*(a1 + 472) + 8) + 24);
    v117 = *(*(*(a1 + 344) + 8) + 24);
    if (v117 < *(*(*(a1 + 360) + 8) + 24))
    {
      v117 = *(*(*(a1 + 360) + 8) + 24);
    }

    *(*(a1 + 88) + 360) = *(*(a1 + 88) + 360) + a9 * v117;
    v118 = *(*(*(a1 + 344) + 8) + 24);
    v119 = *(*(a1 + 376) + 8);
    if (v118 < *(v119 + 24))
    {
      v118 = *(v119 + 24);
    }

    *(*(a1 + 88) + 368) = *(*(a1 + 88) + 368) + a9 * v118;
    v120 = *(*(*(a1 + 360) + 8) + 24);
    v121 = *(*(a1 + 376) + 8);
    if (v120 < *(v121 + 24))
    {
      v120 = *(v121 + 24);
    }

    *(*(a1 + 88) + 376) = *(*(a1 + 88) + 376) + a9 * v120;
    v122 = *(*(*(a1 + 344) + 8) + 24);
    v123 = *(*(*(a1 + 360) + 8) + 24);
    v124 = *(*(a1 + 376) + 8);
    if (v123 < *(v124 + 24))
    {
      v123 = *(v124 + 24);
    }

    if (v122 < v123)
    {
      v122 = v123;
    }

    *(*(a1 + 88) + 384) = *(*(a1 + 88) + 384) + a9 * v122;
    v125 = *(*(*(a1 + 424) + 8) + 24);
    v126 = *(*(a1 + 376) + 8);
    if (v125 < *(v126 + 24))
    {
      v125 = *(v126 + 24);
    }

    *(*(a1 + 88) + 392) = *(*(a1 + 88) + 392) + a9 * v125;
    v127 = *(*(*(a1 + 424) + 8) + 24);
    v128 = *(*(a1 + 440) + 8);
    if (v127 < *(v128 + 24))
    {
      v127 = *(v128 + 24);
    }

    *(*(a1 + 88) + 400) = *(*(a1 + 88) + 400) + a9 * v127;
    v129 = *(*(*(a1 + 344) + 8) + 24);
    v130 = *(*(a1 + 424) + 8);
    if (v129 < *(v130 + 24))
    {
      v129 = *(v130 + 24);
    }

    *(*(a1 + 88) + 408) = *(*(a1 + 88) + 408) + a9 * v129;
    v131 = *(*(*(a1 + 360) + 8) + 24);
    v132 = *(*(a1 + 424) + 8);
    if (v131 < *(v132 + 24))
    {
      v131 = *(v132 + 24);
    }

    *(*(a1 + 88) + 416) = *(*(a1 + 88) + 416) + a9 * v131;
    v133 = *(*(*(a1 + 472) + 8) + 24);
    v134 = *(*(a1 + 376) + 8);
    if (v133 < *(v134 + 24))
    {
      v133 = *(v134 + 24);
    }

    *(*(a1 + 88) + 424) = *(*(a1 + 88) + 424) + a9 * v133;
    v135 = *(*(*(a1 + 472) + 8) + 24);
    v136 = *(*(a1 + 344) + 8);
    if (v135 < *(v136 + 24))
    {
      v135 = *(v136 + 24);
    }

    *(*(a1 + 88) + 432) = *(*(a1 + 88) + 432) + a9 * v135;
    if (v88)
    {
      *(*(a1 + 88) + 448) = *(*(a1 + 88) + 448) + a9 * *(*(*(a1 + 488) + 8) + 24);
    }

    if (v90)
    {
      *(*(a1 + 88) + 496) = *(*(a1 + 88) + 496) + a9 * *(*(*(a1 + 504) + 8) + 24);
    }

    if (v258)
    {
      *(*(a1 + 88) + 544) = *(*(a1 + 88) + 544) + *(*(*(a1 + 408) + 8) + 24) * a9 * *(*(*(a1 + 288) + 8) + 24);
    }

    if (v93)
    {
      *(*(a1 + 88) + 552) = *(*(a1 + 88) + 552) + *(*(*(a1 + 392) + 8) + 24) * a9 * *(*(*(a1 + 296) + 8) + 24);
    }

    *(*(a1 + 88) + 536) = *(*(a1 + 88) + 536) + *(*(*(a1 + 360) + 8) + 24) * a9 * *(*(*(a1 + 160) + 8) + 24);
    *(*(a1 + 88) + 560) = *(*(a1 + 88) + 560) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 128) + 8) + 24);
    *(*(a1 + 88) + 32) = *(*(a1 + 88) + 32) + a9 * *(*(*(a1 + 328) + 8) + 24);
    [*(*(a1 + 88) + 128) addObject:*(*(*(a1 + 520) + 8) + 40)];
    v137 = *(a1 + 80);
    v138 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [v137 addObject:v138];
  }

  v257 = v93;
  v139 = [[ATXMinimalSlotResolutionParameters alloc] initWithParameterHash:a4 slotHash:a5 uuid:v265 paramCount:a6];
  if ([*(a1 + 72) containsObject:v139])
  {
    v140 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v269 = v261;
      v270 = 2048;
      v271 = a3;
      _os_log_impl(&dword_2263AA000, v140, OS_LOG_TYPE_DEFAULT, "Skipping previously encountered parameter combination for actionType: %@ alogRowID: %lld", buf, 0x16u);
    }

    goto LABEL_197;
  }

  [*(a1 + 72) addObject:v139];
  v141 = [*(*(a1 + 88) + 16) objectForKey:v139];

  if (!v141)
  {
    v142 = *(*(a1 + 88) + 16);
    v143 = [[ATXSlotResolutionParametersStatistics alloc] initWithNumParameters:a6];
    [v142 setObject:v143 forKey:v139];

    ++*(*(a1 + 88) + 40);
  }

  v144 = [*(*(a1 + 88) + 16) objectForKeyedSubscript:v139];
  v145 = v144;
  ++*(v144 + 8);
  *(v144 + 16) = *(v144 + 16) + a9;
  *(v144 + 232) = *(v144 + 232) + a9 * *(*(*(a1 + 328) + 8) + 24);
  *(v144 + 240) = *(v144 + 240) + a9 * *(*(*(a1 + 344) + 8) + 24);
  *(v144 + 248) = *(v144 + 248) + a9 * *(*(*(a1 + 360) + 8) + 24);
  *(v144 + 256) = *(v144 + 256) + a9 * *(*(*(a1 + 472) + 8) + 24);
  *(v144 + 264) = *(v144 + 264) + a9 * *(*(*(a1 + 376) + 8) + 24);
  *(v144 + 272) = *(v144 + 272) + a9 * *(*(*(a1 + 424) + 8) + 24);
  *(v144 + 280) = *(v144 + 280) + a9 * *(*(*(a1 + 440) + 8) + 24);
  v146 = *(*(*(a1 + 344) + 8) + 24);
  v147 = *(*(a1 + 360) + 8);
  if (v146 < *(v147 + 24))
  {
    v146 = *(v147 + 24);
  }

  *(v144 + 288) = *(v144 + 288) + a9 * v146;
  v148 = *(*(*(a1 + 344) + 8) + 24);
  v149 = *(*(a1 + 376) + 8);
  if (v148 < *(v149 + 24))
  {
    v148 = *(v149 + 24);
  }

  *(v144 + 296) = *(v144 + 296) + a9 * v148;
  v150 = *(*(*(a1 + 360) + 8) + 24);
  v151 = *(*(a1 + 376) + 8);
  if (v150 < *(v151 + 24))
  {
    v150 = *(v151 + 24);
  }

  *(v144 + 304) = *(v144 + 304) + a9 * v150;
  v152 = *(*(*(a1 + 344) + 8) + 24);
  v153 = *(*(*(a1 + 360) + 8) + 24);
  v154 = *(*(a1 + 376) + 8);
  if (v153 < *(v154 + 24))
  {
    v153 = *(v154 + 24);
  }

  if (v152 < v153)
  {
    v152 = v153;
  }

  *(v144 + 312) = *(v144 + 312) + a9 * v152;
  v155 = *(*(*(a1 + 424) + 8) + 24);
  if (v155 < *(*(*(a1 + 440) + 8) + 24))
  {
    v155 = *(*(*(a1 + 440) + 8) + 24);
  }

  *(v144 + 320) = *(v144 + 320) + a9 * v155;
  v156 = *(*(*(a1 + 424) + 8) + 24);
  v157 = *(*(a1 + 376) + 8);
  if (v156 < *(v157 + 24))
  {
    v156 = *(v157 + 24);
  }

  *(v144 + 328) = *(v144 + 328) + a9 * v156;
  v158 = *(*(*(a1 + 344) + 8) + 24);
  v159 = *(*(a1 + 424) + 8);
  if (v158 < *(v159 + 24))
  {
    v158 = *(v159 + 24);
  }

  *(v144 + 336) = *(v144 + 336) + a9 * v158;
  v160 = *(*(*(a1 + 360) + 8) + 24);
  if (v160 < *(*(*(a1 + 424) + 8) + 24))
  {
    v160 = *(*(*(a1 + 424) + 8) + 24);
  }

  *(v144 + 344) = *(v144 + 344) + a9 * v160;
  v161 = *(*(*(a1 + 472) + 8) + 24);
  v162 = *(*(a1 + 376) + 8);
  if (v161 < *(v162 + 24))
  {
    v161 = *(v162 + 24);
  }

  *(v144 + 352) = *(v144 + 352) + a9 * v161;
  v163 = *(*(*(a1 + 472) + 8) + 24);
  v164 = *(*(a1 + 344) + 8);
  if (v163 < *(v164 + 24))
  {
    v163 = *(v164 + 24);
  }

  *(v144 + 360) = *(v144 + 360) + a9 * v163;
  if (v88)
  {
    *(v144 + 648) = *(v144 + 648) + a9 * *(*(*(a1 + 488) + 8) + 24);
  }

  if (v90)
  {
    *(v144 + 696) = *(v144 + 696) + a9 * *(*(*(a1 + 504) + 8) + 24);
  }

  *(v144 + 368) = *(v144 + 368) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 112) + 8) + 24);
  *(v144 + 376) = *(v144 + 376) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 120) + 8) + 24);
  *(v144 + 384) = *(v144 + 384) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 128) + 8) + 24);
  *(v144 + 392) = *(v144 + 392) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 136) + 8) + 24);
  *(v144 + 400) = *(v144 + 400) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 144) + 8) + 24);
  *(v144 + 408) = *(v144 + 408) + *(*(*(a1 + 360) + 8) + 24) * a9 * *(*(*(a1 + 160) + 8) + 24);
  *(v144 + 416) = *(v144 + 416) + *(*(*(a1 + 472) + 8) + 24) * a9 * *(*(*(a1 + 184) + 8) + 24);
  v165 = *(*(*(a1 + 472) + 8) + 24);
  v166 = *(*(a1 + 376) + 8);
  if (v165 < *(v166 + 24))
  {
    v165 = *(v166 + 24);
  }

  *(v144 + 424) = *(v144 + 424) + v165 * a9 * *(*(*(a1 + 192) + 8) + 24);
  v167 = *(*(*(a1 + 472) + 8) + 24);
  v168 = *(*(a1 + 344) + 8);
  if (v167 < *(v168 + 24))
  {
    v167 = *(v168 + 24);
  }

  *(v144 + 520) = *(v144 + 520) + v167 * a9 * *(*(*(a1 + 200) + 8) + 24);
  *(v144 + 432) = *(v144 + 432) + *(*(*(a1 + 376) + 8) + 24) * a9 * *(*(*(a1 + 176) + 8) + 24);
  *(v144 + 448) = *(v144 + 448) + *(*(*(a1 + 424) + 8) + 24) * a9 * *(*(*(a1 + 216) + 8) + 24);
  *(v144 + 440) = *(v144 + 440) + *(*(*(a1 + 440) + 8) + 24) * a9 * *(*(*(a1 + 208) + 8) + 24);
  v169 = *(*(*(a1 + 344) + 8) + 24);
  v170 = *(*(a1 + 360) + 8);
  if (v169 < *(v170 + 24))
  {
    v169 = *(v170 + 24);
  }

  *(v144 + 464) = *(v144 + 464) + v169 * a9 * *(*(*(a1 + 224) + 8) + 24);
  v171 = *(*(*(a1 + 344) + 8) + 24);
  v172 = *(*(a1 + 376) + 8);
  if (v171 < *(v172 + 24))
  {
    v171 = *(v172 + 24);
  }

  *(v144 + 456) = *(v144 + 456) + v171 * a9 * *(*(*(a1 + 232) + 8) + 24);
  v173 = *(*(*(a1 + 360) + 8) + 24);
  v174 = *(*(a1 + 376) + 8);
  if (v173 < *(v174 + 24))
  {
    v173 = *(v174 + 24);
  }

  *(v144 + 472) = *(v144 + 472) + v173 * a9 * *(*(*(a1 + 240) + 8) + 24);
  v175 = *(*(*(a1 + 344) + 8) + 24);
  v176 = *(*(*(a1 + 360) + 8) + 24);
  v177 = *(*(a1 + 376) + 8);
  if (v176 < *(v177 + 24))
  {
    v176 = *(v177 + 24);
  }

  if (v175 < v176)
  {
    v175 = v176;
  }

  *(v144 + 480) = *(v144 + 480) + v175 * a9 * *(*(*(a1 + 248) + 8) + 24);
  v178 = *(*(*(a1 + 424) + 8) + 24);
  v179 = *(*(a1 + 440) + 8);
  if (v178 < *(v179 + 24))
  {
    v178 = *(v179 + 24);
  }

  *(v144 + 488) = *(v144 + 488) + v178 * a9 * *(*(*(a1 + 256) + 8) + 24);
  v180 = *(*(*(a1 + 424) + 8) + 24);
  v181 = *(*(a1 + 376) + 8);
  if (v180 < *(v181 + 24))
  {
    v180 = *(v181 + 24);
  }

  *(v144 + 496) = *(v144 + 496) + v180 * a9 * *(*(*(a1 + 264) + 8) + 24);
  v182 = *(*(*(a1 + 344) + 8) + 24);
  v183 = *(*(a1 + 424) + 8);
  if (v182 < *(v183 + 24))
  {
    v182 = *(v183 + 24);
  }

  *(v144 + 504) = *(v144 + 504) + v182 * a9 * *(*(*(a1 + 272) + 8) + 24);
  v184 = *(*(*(a1 + 360) + 8) + 24);
  v185 = *(*(a1 + 424) + 8);
  if (v184 < *(v185 + 24))
  {
    v184 = *(v185 + 24);
  }

  *(v144 + 512) = *(v144 + 512) + v184 * a9 * *(*(*(a1 + 280) + 8) + 24);
  *(v144 + 640) = *(v144 + 640) + *(*(*(a1 + 488) + 8) + 24) * a9 * *(*(*(a1 + 304) + 8) + 24);
  *(v144 + 688) = *(v144 + 688) + *(*(*(a1 + 504) + 8) + 24) * a9 * *(*(*(a1 + 312) + 8) + 24);
  v186 = *(v144 + 1136);
  v187 = [MEMORY[0x277CCABB0] numberWithInteger:a11];
  v188 = [v186 objectForKey:v187];

  if (!v188)
  {
    v189 = *(v145 + 1136);
    v190 = [MEMORY[0x277CCABB0] numberWithInteger:a11];
    [v189 setObject:&unk_283A558F8 forKeyedSubscript:v190];
  }

  v191 = *(v145 + 1136);
  v192 = [MEMORY[0x277CCABB0] numberWithInteger:a11];
  v193 = [v191 objectForKeyedSubscript:v192];
  [v193 doubleValue];
  v195 = v194;

  v196 = [MEMORY[0x277CCABB0] numberWithDouble:v195 + a9 * *(*(*(a1 + 360) + 8) + 24)];
  v197 = *(v145 + 1136);
  v198 = [MEMORY[0x277CCABB0] numberWithInteger:a11];
  [v197 setObject:v196 forKeyedSubscript:v198];

  v199 = *(v145 + 1144);
  v200 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 168) + 8) + 24)];
  v201 = [v199 objectForKey:v200];

  if (!v201)
  {
    v202 = *(v145 + 1144);
    v203 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 168) + 8) + 24)];
    [v202 setObject:&unk_283A558F8 forKeyedSubscript:v203];
  }

  v204 = *(v145 + 1144);
  v205 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 168) + 8) + 24)];
  v206 = [v204 objectForKeyedSubscript:v205];
  [v206 doubleValue];
  v208 = v207;

  v209 = [MEMORY[0x277CCABB0] numberWithDouble:v208 + a9 * *(*(*(a1 + 344) + 8) + 24)];
  v210 = *(v145 + 1144);
  v211 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 168) + 8) + 24)];
  [v210 setObject:v209 forKeyedSubscript:v211];

  v212 = *(v145 + 1152);
  v213 = [MEMORY[0x277CCABB0] numberWithLongLong:a18];
  v214 = [v212 objectForKey:v213];

  if (!v214)
  {
    v215 = *(v145 + 1152);
    v216 = [MEMORY[0x277CCABB0] numberWithLongLong:a18];
    [v215 setObject:&unk_283A558F8 forKeyedSubscript:v216];
  }

  v217 = *(v145 + 1152);
  v218 = [MEMORY[0x277CCABB0] numberWithLongLong:a18];
  v219 = [v217 objectForKeyedSubscript:v218];
  [v219 doubleValue];
  v221 = v220;

  v222 = [MEMORY[0x277CCABB0] numberWithDouble:v221 + a9 * *(*(*(a1 + 408) + 8) + 24)];
  v223 = *(v145 + 1152);
  v224 = [MEMORY[0x277CCABB0] numberWithLongLong:a18];
  [v223 setObject:v222 forKeyedSubscript:v224];

  v225 = *(v145 + 1160);
  v226 = [MEMORY[0x277CCABB0] numberWithLongLong:a17];
  v227 = [v225 objectForKey:v226];

  if (!v227)
  {
    v228 = *(v145 + 1160);
    v229 = [MEMORY[0x277CCABB0] numberWithLongLong:a17];
    [v228 setObject:&unk_283A558F8 forKeyedSubscript:v229];
  }

  v230 = *(v145 + 1160);
  v231 = [MEMORY[0x277CCABB0] numberWithLongLong:a17];
  v232 = [v230 objectForKeyedSubscript:v231];
  [v232 doubleValue];
  v234 = v233;

  v235 = [MEMORY[0x277CCABB0] numberWithDouble:v234 + a9 * *(*(*(a1 + 392) + 8) + 24)];
  v236 = *(v145 + 1160);
  v237 = [MEMORY[0x277CCABB0] numberWithLongLong:a17];
  [v236 setObject:v235 forKeyedSubscript:v237];

  if (v258)
  {
    *(v145 + 744) = *(v145 + 744) + *(*(*(a1 + 408) + 8) + 24) * a9 * *(*(*(a1 + 288) + 8) + 24);
    *(v145 + 752) = *(v145 + 752) + a9 * *(*(*(a1 + 408) + 8) + 24);
  }

  if (v257)
  {
    *(v145 + 760) = *(v145 + 760) + *(*(*(a1 + 392) + 8) + 24) * a9 * *(*(*(a1 + 296) + 8) + 24);
    *(v145 + 768) = *(v145 + 768) + a9 * *(*(*(a1 + 392) + 8) + 24);
  }

  *(v145 + 736) = *(v145 + 736) + a9 * *(*(*(a1 + 360) + 8) + 24);
  *(v145 + 776) = *(v145 + 776) + a9 * *(*(*(a1 + 344) + 8) + 24);
  v238 = *(v145 + 48);
  if (v238)
  {
    v239 = [v238 earlierDate:v267];
  }

  else
  {
    v239 = v267;
  }

  v240 = *(v145 + 48);
  *(v145 + 48) = v239;

  v241 = *(v145 + 56);
  if (v241)
  {
    v242 = [v241 laterDate:v267];
  }

  else
  {
    v242 = v267;
  }

  v243 = *(v145 + 56);
  *(v145 + 56) = v242;

  if (*(v145 + 32))
  {
    v244 = [v264 isEqualToDate:?];
    if (v264)
    {
      v245 = v244;
    }

    else
    {
      v245 = 1;
    }

    if (v245)
    {
      goto LABEL_188;
    }

    goto LABEL_187;
  }

  if (v264)
  {
LABEL_187:
    objc_storeStrong((v145 + 32), a15);
    *(v145 + 592) = *(*(*(a1 + 456) + 8) + 24) + *(v145 + 592);
  }

LABEL_188:
  if (([*(v145 + 40) containsObject:*(*(*(a1 + 520) + 8) + 40)] & 1) == 0)
  {
    if ([*(v145 + 40) count])
    {
      [v145 _updateTimeOfDayBudgetStatisticsForNewTimeOfDayBudget:*(v145 + 632)];
      *(v145 + 632) = 0;
    }

    [*(v145 + 40) addObject:*(*(*(a1 + 520) + 8) + 40)];
  }

  *(v145 + 632) = *(*(*(a1 + 152) + 8) + 24) + *(v145 + 632);
  if ([*(*(*(a1 + 520) + 8) + 40) isEqual:*(a1 + 96)])
  {
    *(v145 + 624) = *(*(*(a1 + 152) + 8) + 24) + *(v145 + 624);
  }

  v246 = *(*(a1 + 88) + 24);
  v247 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  v248 = [v246 objectForKey:v247];

  if (!v248)
  {
    v249 = *(*(a1 + 88) + 24);
    v250 = objc_alloc_init(ATXSlotResolutionSlotSetStatistics);
    v251 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
    [v249 setObject:v250 forKey:v251];
  }

  v252 = *(*(a1 + 88) + 24);
  v253 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  v254 = [v252 objectForKeyedSubscript:v253];

  v254[2] = v254[2] + a9 * *(*(*(a1 + 328) + 8) + 24);
LABEL_197:

  v255 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)updateStatisticsWithFeedbackForBundleId:(id)a3 actionType:(id)a4 statistics:(id)a5 currentDate:(id)a6 currentGeohash:(int64_t)a7 currentCoarseGeohash:(int64_t)a8
{
  v39 = a3;
  v38 = a4;
  v14 = a5;
  v15 = a6;
  v37 = v14;
  v40 = [MEMORY[0x277CBEA80] currentCalendar];
  v16 = +[_ATXGlobals sharedInstance];
  v36 = [_ATXActionUtils timeOfDayAndDayOfWeekForDate:v15 timeZone:0];
  v17 = [v36 first];
  v18 = [v17 integerValue];

  v19 = [v36 second];
  v20 = [v19 integerValue];

  LODWORD(v19) = [v40 isDateInWeekend:v15];
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  [v16 slotResolutionTimeOfDayLaunchDecayHalflife];
  *&v65[3] = v21 * 86400.0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  [v16 slotResolutionDayOfWeekLaunchDecayHalflife];
  *&v64[3] = v22 * 86400.0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  [v16 slotResolutionPartOfWeekLaunchDecayHalflife];
  *&v63[3] = v23 * 86400.0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  [v16 appAndActionCoarseTimePowLocationDecayHalflife];
  *&v62[3] = v24 * 86400.0;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  [v16 appAndActionSpecificTimePowLocationDecayHalflife];
  *&v61[3] = v25 * 86400.0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  [v16 actionCoarseGeoHashDecayHalflife];
  *&v60[3] = v26 * 86400.0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  [v16 actionSpecificGeoHashDecayHalflife];
  *&v59[3] = v27 * 86400.0;
  dataStore = self->_dataStore;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __131__ATXSlotResolution_updateStatisticsWithFeedbackForBundleId_actionType_statistics_currentDate_currentGeohash_currentCoarseGeohash___block_invoke;
  v41[3] = &unk_27859A7E8;
  v54 = v18;
  v55 = v20;
  v29 = v40;
  v42 = v29;
  v43 = self;
  v57 = a8;
  v58 = a7;
  v47 = v65;
  v48 = v64;
  v49 = v63;
  v50 = v62;
  v51 = v61;
  v52 = v60;
  v56 = v19;
  v53 = v59;
  v30 = v37;
  v44 = v30;
  v31 = v15;
  v45 = v31;
  v32 = v16;
  v46 = v32;
  [(_ATXDataStore *)dataStore enumerateFeedbackForActionOfType:v38 bundleId:v39 block:v41];
  v33 = v46;
  v34 = v30;

  _Block_object_dispose(v59, 8);
  _Block_object_dispose(v60, 8);
  _Block_object_dispose(v61, 8);
  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v65, 8);

  return v34;
}

uint64_t __131__ATXSlotResolution_updateStatisticsWithFeedbackForBundleId_actionType_statistics_currentDate_currentGeohash_currentCoarseGeohash___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v101 = a2;
  v104 = a3;
  v17 = a4;
  [v17 timeIntervalSinceNow];
  v19 = v18;
  +[_ATXFeedbackConstants actionDecayHalfLifeSeconds];
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:v20];
  v99 = v21;
  v102 = [ATXSlotResolution yearMonthDayComponentsForDate:v17];
  v100 = [_ATXActionUtils timeOfDayAndDayOfWeekForDate:v17 timeZone:0];
  v22 = [v100 first];
  v23 = [v22 integerValue];

  v24 = [v100 second];
  v25 = [v24 integerValue];

  [ATXSlotResolutionParametersStatistics _smoothedCountForTimeOfDay:v23 currentTimeOfDay:*(a1 + 128)];
  v27 = v26;
  [ATXSlotResolutionParametersStatistics _smoothedCountForCoarseTimeOfDay:v23 currentTimeOfDay:*(a1 + 128)];
  v29 = v28;
  [ATXSlotResolutionParametersStatistics _smoothedCountForThirtyMinuteWindow:v23 currentTimeOfDay:*(a1 + 128)];
  v31 = v30;
  [ATXSlotResolutionParametersStatistics _smoothedCountForHourWindow:v23 currentTimeOfDay:*(a1 + 128)];
  v94 = v32;
  v33 = *(a1 + 136);
  v34 = [*(a1 + 32) isDateInWeekend:v17];
  v35 = *(a1 + 144);
  v36 = *(a1 + 40);
  v103 = [objc_opt_class() matchForCurrentGeohash:*(a1 + 152) rowGeohash:a8];
  v37 = *(a1 + 40);
  v38 = [objc_opt_class() matchForCurrentGeohash:*(a1 + 160) rowGeohash:a7];
  v39 = v38;
  v41 = v29 != 0.0 && v35 == v34;
  v42 = (v29 + 1.0 + 1.0) / 3.0;
  if ((v41 & v103) != 1)
  {
    v42 = 0.0;
  }

  v96 = v42;
  v44 = v31 != 0.0 && v33 == v25;
  if ((v44 & v38) == 1)
  {
    v45 = (v31 + 1.0 + 1.0) / 3.0;
  }

  else
  {
    v45 = 0.0;
  }

  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 72) + 8) + 24)];
  v98 = v46;
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 80) + 8) + 24)];
  v97 = v47;
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 88) + 8) + 24)];
  v91 = v48;
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 96) + 8) + 24)];
  v95 = v49;
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 104) + 8) + 24)];
  v51 = v50;
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 112) + 8) + 24)];
  v92 = v52;
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 120) + 8) + 24)];
  if (v19 <= 0.0)
  {
    v90 = v53;
    v93 = [[ATXMinimalSlotResolutionParameters alloc] initWithAction:v101 slots:v104];
    v54 = [*(*(a1 + 48) + 16) objectForKey:v93];

    if (!v54)
    {
LABEL_97:

      goto LABEL_98;
    }

    v55 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v93];
    v89 = v19 / -60.0;
    if ([MEMORY[0x277CEBCF0] isActionSpotlightConsumerSubType:a5])
    {
      if (v19 >= -3600.0)
      {
        if (a9 != 0.0)
        {
          v55[17] = v55[17] + 1.0;
        }

        if (a10 != 0.0)
        {
          v55[18] = v55[18] + 1.0;
        }
      }

      if (v19 >= -7200.0)
      {
        if (a9 != 0.0)
        {
          v55[19] = v55[19] + 1.0;
        }

        if (a10 != 0.0)
        {
          v55[20] = v55[20] + 1.0;
        }
      }

      if ([*(a1 + 32) isDate:v17 inSameDayAsDate:*(a1 + 56)])
      {
        if (a9 != 0.0)
        {
          v55[21] = v55[21] + 1.0;
        }

        if (a10 != 0.0)
        {
          v55[22] = v55[22] + 1.0;
        }
      }

      [*(a1 + 64) maximumActionFeedbackMeanCalculationEntryAge];
      if (v56 * 86400.0 >= -v19)
      {
        if (a10 != 0.0)
        {
          *(*(a1 + 48) + 184) = *(*(a1 + 48) + 184) + 1.0;
        }

        if (a9 != 0.0)
        {
          *(*(a1 + 48) + 176) = *(*(a1 + 48) + 176) + 1.0;
        }

        [*(*(a1 + 48) + 192) addObject:v102];
      }

      if (a9 != 0.0)
      {
        v57 = v55[11];
        if (v57 >= v89)
        {
          v57 = v19 / -60.0;
        }

        v55[11] = v57;
        v55[68] = v55[68] + v98 * v27;
        v55[69] = v55[69] + v98 * v29;
        v55[23] = v99 + v55[23];
        *(*(a1 + 48) + 160) = v99 + *(*(a1 + 48) + 160);
        if (*(a1 + 136) == v25)
        {
          v55[67] = v97 + v55[67];
        }

        v58 = [*(a1 + 32) isDateInWeekend:*(a1 + 56)];
        if (v58 == [*(a1 + 32) isDateInWeekend:v17])
        {
          v55[66] = v91 + v55[66];
        }
      }

      v59 = v94;
      v60 = v45;
      if (a10 == 0.0)
      {
        goto LABEL_84;
      }

      v55[24] = v99 + v55[24];
      *(*(a1 + 48) + 168) = v99 + *(*(a1 + 48) + 168);
      if (a6 != 2)
      {
        goto LABEL_84;
      }

      v61 = &OBJC_IVAR___ATXSlotResolutionParametersStatistics__minutesSinceLastExplicitRejectInSpotlight;
    }

    else
    {
      v59 = v94;
      v60 = v45;
      if ((a5 - 38) < 2 || a5 == 36)
      {
        if (a9 != 0.0)
        {
          v65 = 0.0;
          if (v33 == v25)
          {
            v65 = 1.0;
          }

          v66 = v97 * v65;
          v55[114] = v55[114] + v66 * a9;
          v55[118] = v55[118] + v94 * v98 * a9;
          v67 = v92 * v103;
          v55[122] = v55[122] + v67 * a9;
          v68 = v90 * v39;
          v55[126] = v55[126] + v68 * a9;
          v55[130] = v55[130] + v96 * v95 * a9;
          v55[134] = v55[134] + v45 * v51 * a9;
          v55[115] = v55[115] + v97 * a9;
          v55[119] = v55[119] + v98 * a9;
          v55[123] = v55[123] + v92 * a9;
          v55[127] = v55[127] + v90 * a9;
          v55[131] = v55[131] + v95 * a9;
          v55[135] = v55[135] + v51 * a9;
          *(*(a1 + 48) + 632) = *(*(a1 + 48) + 632) + v66 * a9;
          *(*(a1 + 48) + 648) = *(*(a1 + 48) + 648) + v94 * v98 * a9;
          *(*(a1 + 48) + 664) = *(*(a1 + 48) + 664) + v67 * a9;
          *(*(a1 + 48) + 680) = *(*(a1 + 48) + 680) + v68 * a9;
          *(*(a1 + 48) + 696) = *(*(a1 + 48) + 696) + v96 * v95 * a9;
          *(*(a1 + 48) + 712) = *(*(a1 + 48) + 712) + v45 * v51 * a9;
        }

        if (a10 == 0.0)
        {
          goto LABEL_84;
        }

        v69 = 0.0;
        if (v33 == v25)
        {
          v69 = 1.0;
        }

        v70 = v97 * v69;
        v55[116] = v55[116] + v70 * a10;
        v55[120] = v55[120] + v94 * v98 * a10;
        v71 = v92 * v103;
        v55[124] = v55[124] + v71 * a10;
        v72 = v90 * v39;
        v55[128] = v55[128] + v72 * a10;
        v55[132] = v55[132] + v96 * v95 * a10;
        v55[136] = v55[136] + v45 * v51 * a10;
        v55[117] = v55[117] + v97 * a10;
        v55[121] = v55[121] + v98 * a10;
        v55[125] = v55[125] + v92 * a10;
        v55[129] = v55[129] + v90 * a10;
        v55[133] = v55[133] + v95 * a10;
        v55[137] = v55[137] + v51 * a10;
        *(*(a1 + 48) + 640) = *(*(a1 + 48) + 640) + v70 * a10;
        *(*(a1 + 48) + 656) = *(*(a1 + 48) + 656) + v94 * v98 * a10;
        *(*(a1 + 48) + 672) = *(*(a1 + 48) + 672) + v71 * a10;
        *(*(a1 + 48) + 688) = *(*(a1 + 48) + 688) + v72 * a10;
        *(*(a1 + 48) + 704) = *(*(a1 + 48) + 704) + v96 * v95 * a10;
        *(*(a1 + 48) + 720) = *(*(a1 + 48) + 720) + v45 * v51 * a10;
        if (a6 != 2)
        {
          goto LABEL_84;
        }

        v61 = &OBJC_IVAR___ATXSlotResolutionParametersStatistics__minutesSinceLastExplicitRejectInHomeScreen;
      }

      else
      {
        if (a5 != 22)
        {
          goto LABEL_84;
        }

        if ([*(a1 + 32) isDate:v17 inSameDayAsDate:*(a1 + 56)])
        {
          if (a9 != 0.0)
          {
            v55[25] = v55[25] + 1.0;
            *(*(a1 + 48) + 200) = *(*(a1 + 48) + 200) + 1.0;
          }

          if (a10 != 0.0)
          {
            v55[26] = v55[26] + 1.0;
            *(*(a1 + 48) + 208) = *(*(a1 + 48) + 208) + 1.0;
          }
        }

        v59 = v94;
        v60 = v45;
        if (a9 != 0.0)
        {
          v62 = v55[13];
          if (v62 >= v89)
          {
            v62 = v89;
          }

          v55[13] = v62;
          v55[72] = v55[72] + v98 * v27;
          v55[73] = v55[73] + v98 * v29;
          v55[27] = v99 + v55[27];
          *(*(a1 + 48) + 216) = v99 + *(*(a1 + 48) + 216);
          if (*(a1 + 136) == v25)
          {
            v55[71] = v97 + v55[71];
          }

          v63 = [*(a1 + 32) isDateInWeekend:*(a1 + 56)];
          v59 = v94;
          v60 = v45;
          if (v63 == [*(a1 + 32) isDateInWeekend:v17])
          {
            v55[70] = v91 + v55[70];
          }
        }

        if (a10 == 0.0)
        {
          goto LABEL_84;
        }

        v64 = v55[14];
        if (v64 >= v89)
        {
          v64 = v89;
        }

        v55[14] = v64;
        v55[28] = v99 + v55[28];
        *(*(a1 + 48) + 224) = v99 + *(*(a1 + 48) + 224);
        if (a6 != 2)
        {
          goto LABEL_84;
        }

        v61 = &OBJC_IVAR___ATXSlotResolutionParametersStatistics__minutesSinceLastExplicitRejectInLockscreen;
      }
    }

    v73 = *v61;
    v74 = *(v55 + v73);
    if (v74 >= v89)
    {
      v74 = v89;
    }

    *(v55 + v73) = v74;
LABEL_84:
    v75 = *(a1 + 40);
    if ([objc_opt_class() shouldCountRowForGeohashOccurrencesCalculationForCurrentGeohash:*(a1 + 152) rowGeohash:a8])
    {
      v55[83] = v55[83] + v95 * a9;
      v55[85] = v55[85] + v95 * a10;
      *(*(a1 + 48) + 464) = *(*(a1 + 48) + 464) + v95 * a9;
      *(*(a1 + 48) + 480) = *(*(a1 + 48) + 480) + v95 * a10;
    }

    v76 = *(a1 + 40);
    if ([objc_opt_class() shouldCountRowForGeohashOccurrencesCalculationForCurrentGeohash:*(a1 + 160) rowGeohash:a7])
    {
      v55[89] = v55[89] + v51 * a9;
      v55[91] = v55[91] + v51 * a10;
      *(*(a1 + 48) + 512) = *(*(a1 + 48) + 512) + v51 * a9;
      *(*(a1 + 48) + 528) = *(*(a1 + 48) + 528) + v51 * a10;
    }

    v77 = v96 * v95;
    v55[82] = v55[82] + v96 * v95 * a9;
    v78 = v60 * v51;
    v55[88] = v55[88] + v60 * v51 * a9;
    v55[84] = v55[84] + v96 * v95 * a10;
    v55[90] = v55[90] + v60 * v51 * a10;
    v79 = v59 * v98;
    v55[98] = v55[98] + v59 * v98 * a9;
    v80 = 0.0;
    if (v33 == v25)
    {
      v80 = 1.0;
    }

    v81 = v97 * v80;
    v55[102] = v55[102] + v97 * v80 * a9;
    v55[100] = v55[100] + v79 * a10;
    v55[104] = v55[104] + v97 * v80 * a10;
    v55[99] = v55[99] + v98 * a9;
    v55[103] = v55[103] + v97 * a9;
    v55[101] = v55[101] + v98 * a10;
    v55[105] = v55[105] + v97 * a10;
    v82 = *(a1 + 40);
    v83 = [objc_opt_class() shouldCountRowForGeohashIndividualContextStatistics:*(a1 + 160) rowGeohash:a7];
    v84 = *(a1 + 40);
    v85 = [objc_opt_class() shouldCountRowForGeohashIndividualContextStatistics:*(a1 + 152) rowGeohash:a8];
    if (v83)
    {
      v86 = v90 * v39;
      v55[110] = v55[110] + v86 * a9;
      v55[111] = v55[111] + v90 * a9;
      v55[113] = v55[113] + v90 * a10;
      v55[112] = v55[112] + v86 * a10;
      *(*(a1 + 48) + 616) = *(*(a1 + 48) + 616) + v86 * a9;
      *(*(a1 + 48) + 624) = *(*(a1 + 48) + 624) + v86 * a10;
    }

    if (v85)
    {
      v87 = v92 * v103;
      v55[106] = v55[106] + v87 * a9;
      v55[107] = v55[107] + v92 * a9;
      v55[109] = v55[109] + v92 * a10;
      v55[108] = v55[108] + v87 * a10;
      *(*(a1 + 48) + 600) = *(*(a1 + 48) + 600) + v87 * a9;
      *(*(a1 + 48) + 608) = *(*(a1 + 48) + 608) + v87 * a10;
    }

    *(*(a1 + 48) + 456) = *(*(a1 + 48) + 456) + v77 * a9;
    *(*(a1 + 48) + 504) = *(*(a1 + 48) + 504) + v78 * a9;
    *(*(a1 + 48) + 472) = *(*(a1 + 48) + 472) + v77 * a10;
    *(*(a1 + 48) + 520) = *(*(a1 + 48) + 520) + v78 * a10;
    *(*(a1 + 48) + 584) = *(*(a1 + 48) + 584) + v81 * a9;
    *(*(a1 + 48) + 592) = *(*(a1 + 48) + 592) + v81 * a10;
    *(*(a1 + 48) + 568) = *(*(a1 + 48) + 568) + v79 * a9;
    *(*(a1 + 48) + 576) = *(*(a1 + 48) + 576) + v79 * a10;
    v55[8] = v55[8] + v99 * a9;
    v55[9] = v55[9] + v99 * a10;
    *(*(a1 + 48) + 136) = *(*(a1 + 48) + 136) + v99 * a9;
    *(*(a1 + 48) + 144) = *(*(a1 + 48) + 144) + v99 * a10;
    if (a6 == 2)
    {
      *(*(a1 + 48) + 152) = *(*(a1 + 48) + 152) + a10;
      v55[10] = v55[10] + a10;
    }

    goto LABEL_97;
  }

LABEL_98:

  return 1;
}

- (id)updateStatisticsWithHigherLevelFeaturesForStatistics:(id)a3
{
  v3 = a3;
  v4 = v3[2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ATXSlotResolution_updateStatisticsWithHigherLevelFeaturesForStatistics___block_invoke;
  v7[3] = &unk_27859A810;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __74__ATXSlotResolution_updateStatisticsWithHigherLevelFeaturesForStatistics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v5 = a3;
  [v5 _totalFeedbackEvents];
  if (v6 > 0.0)
  {
    v7 = *(a1 + 32);
    [v5 _confirmRatio];
    [v7 _updateConfirmRatioStatisticsForNewConfirmRatio:?];
  }

  v8 = *(*(a1 + 32) + 24);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "slotHash")}];
  v10 = [v8 objectForKeyedSubscript:v9];

  ATXProbability(v5[29], v10[2]);
  v12 = v11;
  v13 = -log2(v11);
  if (v12 <= 0.0)
  {
    v13 = -0.0;
  }

  v10[1] = v10[1] + v13 * v12;
  ATXProbability(v5[48], *(*(a1 + 32) + 560));
  v15 = v14;
  v16 = -log2(v14);
  if (v15 <= 0.0)
  {
    v16 = -0.0;
  }

  v5[138] = v5[138] + v16 * v15;
  ATXProbability(v5[51], *(*(a1 + 32) + 536));
  v18 = v17;
  v19 = -log2(v17);
  if (v18 <= 0.0)
  {
    v19 = -0.0;
  }

  v5[139] = v5[139] + v19 * v18;
  ATXProbability(v5[93], *(*(a1 + 32) + 544));
  v21 = v20;
  v22 = -log2(v20);
  if (v21 <= 0.0)
  {
    v22 = -0.0;
  }

  v5[140] = v5[140] + v22 * v21;
  ATXProbability(v5[95], *(*(a1 + 32) + 552));
  v24 = v23;
  v25 = -log2(v23);
  if (v24 <= 0.0)
  {
    v25 = -0.0;
  }

  v5[141] = v5[141] + v25 * v24;
  [v5 _updateTimeOfDayBudgetStatisticsForNewTimeOfDayBudget:v5[79]];
}

- (id)statisticsForActionKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D41BF8] sharedInstance];
  v6 = [v5 previousLOIAndCurrentLOI];

  v7 = [v6 first];
  v8 = [v7 uuid];

  v9 = [v6 second];
  v10 = [v9 uuid];

  v11 = [MEMORY[0x277D41C38] sharedInstance];
  v12 = [v11 getCurrentActivity];

  v13 = [MEMORY[0x277D41BF8] sharedInstance];
  v14 = [v13 getCurrentLocation];

  v15 = [MEMORY[0x277D41BF8] sharedInstance];
  v16 = [v15 locationEnabled];

  v17 = [ATXPrivacyPreservingLocationHash privacyPreservingGeohashForLocation:v14 locationEnabled:v16];
  v18 = [ATXPrivacyPreservingLocationHash privacyPreservingCoarseGeohashForLocation:v14 locationEnabled:v16];
  v19 = objc_opt_new();
  v20 = -[ATXSlotResolution statisticsForActionKey:currentDate:previousLocationUUID:currentLocationUUID:currentMotionType:currentGeohash:currentCoarseGeohash:](self, "statisticsForActionKey:currentDate:previousLocationUUID:currentLocationUUID:currentMotionType:currentGeohash:currentCoarseGeohash:", v4, v19, v8, v10, [v12 motiontype], v17, v18);

  return v20;
}

- (id)statisticsForActionKey:(id)a3 context:(id)a4
{
  v22 = a3;
  v5 = a4;
  v20 = [v5 timeContext];
  v21 = [v20 date];
  v19 = [v5 locationMotionContext];
  v17 = [v19 previousLOI];
  v18 = [v17 uuid];
  v16 = [v5 locationMotionContext];
  v15 = [v16 currentLOI];
  v6 = [v15 uuid];
  v7 = [v5 locationMotionContext];
  v8 = [v7 motionType];
  v9 = [v5 locationMotionContext];
  v10 = [v9 geohash];
  v11 = [v5 locationMotionContext];
  v12 = -[ATXSlotResolution statisticsForActionKey:currentDate:previousLocationUUID:currentLocationUUID:currentMotionType:currentGeohash:currentCoarseGeohash:](self, "statisticsForActionKey:currentDate:previousLocationUUID:currentLocationUUID:currentMotionType:currentGeohash:currentCoarseGeohash:", v22, v21, v18, v6, v8, v10, [v11 coarseGeohash]);

  return v12;
}

- (id)statisticsForActionKey:(id)a3 currentDate:(id)a4 previousLocationUUID:(id)a5 currentLocationUUID:(id)a6 currentMotionType:(int64_t)a7 currentGeohash:(int64_t)a8 currentCoarseGeohash:(int64_t)a9
{
  v37 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v34 = a4;
  v33 = a5;
  v15 = a6;
  v16 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:v14];
  v17 = [v16 first];
  v18 = [v16 second];
  v19 = v18;
  if (v17)
  {
    v20 = v18 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = __atxlog_handle_action_prediction();
    v29 = v34;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v14;
      _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "Error parsing '%@'", buf, 0xCu);
    }

    v27 = [[ATXSlotResolutionStatistics alloc] initWithActionKey:v14];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v15;
    v24 = v22;
    v32 = v23;
    v25 = [ATXSlotResolution fastStatisticsOnSlotsForBundleId:"fastStatisticsOnSlotsForBundleId:actionType:currentDate:previousLocationUUID:currentLocationUUID:currentMotionType:currentGeohash:currentCoarseGeohash:" actionType:v17 currentDate:v19 previousLocationUUID:v34 currentLocationUUID:v33 currentMotionType:a8 currentGeohash:a9 currentCoarseGeohash:?];
    v26 = [(ATXSlotResolution *)self updateStatisticsWithFeedbackForBundleId:v17 actionType:v19 statistics:v25 currentDate:v34 currentGeohash:a8 currentCoarseGeohash:a9];

    v27 = [(ATXSlotResolution *)self updateStatisticsWithHigherLevelFeaturesForStatistics:v26];

    v28 = v24;
    v15 = v32;
    v29 = v34;
    objc_autoreleasePoolPop(v28);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)actionPredictionsForStatistics:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ATXSlotResolution *)self actionPredictionsForStatistics:v4 appActionPredictionItem:0 appActionLogProbability:0 scoreLogger:v5 currentDate:0.0];

  return v6;
}

- (id)actionPredictionsForStatistics:(id)a3 appActionPredictionItem:(const ATXPredictionItem *)a4 appActionLogProbability:(double)a5 scoreLogger:(id)a6 currentDate:(id)a7
{
  v7 = MEMORY[0x28223BE20](self, a2);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v7;
  v88 = *MEMORY[0x277D85DE8];
  v18 = v17;
  v19 = v11;
  v20 = v9;
  v57 = v18;
  v58 = v19;
  v21 = [_ATXActionUtils getBundleIdFromActionKey:v18[1]];
  v59 = v21;
  if (v21)
  {
    v22.i32[1] = -1059153344;
    *v22.i32 = -31337.0;
    *v85 = 0;
    v86 = -31337.0;
    v87 = 0;
    v23 = vdupq_lane_s32(v22, 0);
    for (i = 16; i != 3328; i += 16)
    {
      *&v85[i] = v23;
    }

    if (v15)
    {
      v25 = v15;
    }

    else
    {
      v25 = v85;
    }

    v81[0] = 0;
    v81[1] = v81;
    v81[2] = 0x3032000000;
    v81[3] = __Block_byref_object_copy__33;
    v81[4] = __Block_byref_object_dispose__33;
    v82 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:2];
    v26 = objc_opt_new();
    v27 = v18[2];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __124__ATXSlotResolution_actionPredictionsForStatistics_appActionPredictionItem_appActionLogProbability_scoreLogger_currentDate___block_invoke;
    v71[3] = &unk_27859A838;
    v72 = v18;
    v28 = v19;
    v73 = v28;
    v79 = v25;
    v80 = v13;
    v74 = v20;
    v78 = v81;
    v75 = v21;
    v76 = v16;
    v56 = v26;
    v77 = v56;
    [v27 enumerateKeysAndObjectsUsingBlock:v71];
    if ([MEMORY[0x277CEBC58] isSpotlightPlusEnabled] && objc_msgSend(v56, "count"))
    {
      v55 = v28;
      v29 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [ATXSlotResolution actionPredictionsForStatistics:v29 appActionPredictionItem:? appActionLogProbability:? scoreLogger:? currentDate:?];
      }

      v69 = 0;
      v68 = 0;
      v70 = 0;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v30 = v56;
      v31 = [v30 countByEnumeratingWithState:&v64 objects:v84 count:16];
      if (v31)
      {
        v32 = *v65;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v65 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v64 + 1) + 8 * j);
            if (v34)
            {
              [v34 predictionItem];
            }

            else
            {
              bzero(&v62, 0xD08uLL);
            }

            v35 = v69;
            if (v69 >= v70)
            {
              v38 = 0x13A524387AC82261 * ((v69 - v68) >> 3) + 1;
              if (v38 > 0x13A524387AC822)
              {
                std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
              }

              if (0x274A4870F59044C2 * ((v70 - v68) >> 3) > v38)
              {
                v38 = 0x274A4870F59044C2 * ((v70 - v68) >> 3);
              }

              if ((0x13A524387AC82261 * ((v70 - v68) >> 3)) >= 0x9D2921C3D6411)
              {
                v39 = 0x13A524387AC822;
              }

              else
              {
                v39 = v38;
              }

              v83[4] = &v68;
              if (v39)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<ATXPredictionItem>>(&v68, v39);
              }

              v40 = (8 * ((v69 - v68) >> 3));
              v83[0] = 0;
              v83[1] = v40;
              v83[3] = 0;
              v41 = v62;
              v62 = 0;
              *v40 = v41;
              memcpy(v40 + 1, v63, 0xCFEuLL);
              v83[2] = v40 + 417;
              std::vector<ATXPredictionItem>::__swap_out_circular_buffer(&v68, v83);
              v37 = v69;
              std::__split_buffer<ATXPredictionItem>::~__split_buffer(v83);
            }

            else
            {
              v36 = v62;
              v62 = 0;
              *v69 = v36;
              memcpy(v35 + 1, v63, 0xCFEuLL);
              v37 = v35 + 417;
            }

            v69 = v37;
          }

          v31 = [v30 countByEnumeratingWithState:&v64 objects:v84 count:16];
        }

        while (v31);
      }

      v42 = +[_ATXAppPredictor sharedInstance];
      [v42 scoreActionsWithFeaturesUsingCoreML:&v68 consumerSubType:25 scoreLogger:v55];

      v43 = 0;
      for (k = 0; k < [v30 count]; ++k)
      {
        *&v45 = ATXSetInput(v68 + v43, 0x17FuLL, *(v68 + v43 + 3328));
        v46 = [v30 objectAtIndexedSubscript:{k, v45}];
        v47 = (v68 + v43 + 8);
        v48 = *(v68 + v43);
        v60 = v48;
        memcpy(v61, v47, sizeof(v61));
        if (v46)
        {
          [v46 setPredictionItem:&v60];
        }

        else
        {
        }

        v43 += 3336;
      }

      v62 = &v68;
      std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v62);
    }

    v52 = v77;
    v51 = v56;

    _Block_object_dispose(v81, 8);
  }

  else
  {
    v49 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v18[1];
      *v85 = 138412290;
      *&v85[4] = v50;
      _os_log_impl(&dword_2263AA000, v49, OS_LOG_TYPE_DEFAULT, "Error parsing '%@'", v85, 0xCu);
    }

    v51 = MEMORY[0x277CBEBF8];
  }

  v53 = *MEMORY[0x277D85DE8];

  return v51;
}

void __124__ATXSlotResolution_actionPredictionsForStatistics_appActionPredictionItem_appActionLogProbability_scoreLogger_currentDate___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v96[1] = *MEMORY[0x277D85DE8];
  v91 = v6;
  v7 = v4;
  v89 = *(*(v5 + 32) + 8);
  if (*(v5 + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"ActionKey: %@\nSlotSet Hash: %lu\nParameter Hash: %lu", *(*(v5 + 32) + 8), objc_msgSend(v91, "slotHash"), objc_msgSend(v91, "hash")];
LABEL_7:
      v9 = v8;

      v10 = v9;
      goto LABEL_9;
    }

    if (*(v5 + 40))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%tu", *(*(v5 + 32) + 8), objc_msgSend(v91, "hash")];
        goto LABEL_7;
      }
    }
  }

  v10 = v89;
LABEL_9:
  v11 = *(v5 + 88);
  v12 = *v11;
  memcpy(v95, v11 + 1, 0xCFEuLL);
  v90 = v10;
  v94 = v90;

  v95[0] = [v91 hash];
  ATXSetInput(&v94, 0x17DuLL, *(*(v5 + 88) + 3328));
  ATXSetInput(&v94, 0x17EuLL, *(v5 + 96));
  ATXProbability(*(v7 + 29), *(*(v5 + 32) + 32));
  ATXSetInput(&v94, 0xBBuLL, v13);
  ATXSmoothedProbability(*(v7 + 46), *(v7 + 30));
  ATXSetInput(&v94, 0xD0uLL, v14);
  ATXProbability(*(v7 + 47), *(*(v5 + 32) + 56));
  ATXSetInput(&v94, 0xBDuLL, v15);
  ATXProbability(*(v7 + 48), *(*(v5 + 32) + 64));
  ATXSetInput(&v94, 0xBEuLL, v16);
  ATXProbability(*(v7 + 49), *(*(v5 + 32) + 72));
  ATXSetInput(&v94, 0xBFuLL, v17);
  ATXSetInput(&v94, 0xE1uLL, *(v7 + 46));
  ATXSetInput(&v94, 0xE5uLL, *(v7 + 47));
  ATXSetInput(&v94, 0xE6uLL, *(v7 + 48));
  ATXSetInput(&v94, 0xE7uLL, *(v7 + 49));
  ATXProbability(*(v7 + 46), *(*(v5 + 32) + 48));
  ATXSetInput(&v94, 0xBCuLL, v18);
  ATXSmoothedProbability(*(v7 + 51), *(v7 + 31));
  ATXSetInput(&v94, 0xD2uLL, v19);
  ATXSmoothedProbability(*(v7 + 52), *(v7 + 32));
  ATXSetInput(&v94, 0xD3uLL, v20);
  ATXSmoothedProbability(*(v7 + 53), *(v7 + 44));
  ATXSetInput(&v94, 0xD4uLL, v21);
  ATXProbability(*(v7 + 53), *(*(v5 + 32) + 296));
  ATXSetInput(&v94, 0xC2uLL, v22);
  ATXSetInput(&v94, 0xE2uLL, *(v7 + 51));
  ATXSetInput(&v94, 0xE3uLL, *(v7 + 52));
  ATXProbability(*(v7 + 51), *(*(v5 + 32) + 88));
  ATXSetInput(&v94, 0xC0uLL, v23);
  ATXProbability(*(v7 + 52), *(*(v5 + 32) + 96));
  ATXSetInput(&v94, 0xC1uLL, v24);
  ATXSmoothedProbability(*(v7 + 50), *(v7 + 30));
  ATXSetInput(&v94, 0xD1uLL, v25);
  ATXSetInput(&v94, 0xE4uLL, *(v7 + 50));
  ATXProbability(*(v7 + 50), *(*(v5 + 32) + 80));
  ATXSetInput(&v94, 0xC3uLL, v26);
  ATXSetInputAge(&v94, 0xFBuLL, *(v7 + 7), *(v5 + 48));
  ATXSmoothedProbability(*(v7 + 54), *(v7 + 33));
  ATXSetInput(&v94, 0xD5uLL, v27);
  ATXSetInput(&v94, 0xE8uLL, *(v7 + 54));
  ATXProbability(*(v7 + 54), *(*(v5 + 32) + 104));
  ATXSetInput(&v94, 0xC4uLL, v28);
  ATXSmoothedProbability(*(v7 + 56), *(v7 + 34));
  ATXSetInput(&v94, 0xD7uLL, v29);
  ATXSetInput(&v94, 0xEAuLL, *(v7 + 56));
  ATXProbability(*(v7 + 56), *(*(v5 + 32) + 120));
  ATXSetInput(&v94, 0xC6uLL, v30);
  ATXSmoothedProbability(*(v7 + 55), *(v7 + 35));
  ATXSetInput(&v94, 0xD6uLL, v31);
  ATXSetInput(&v94, 0xE9uLL, *(v7 + 55));
  ATXProbability(*(v7 + 55), *(*(v5 + 32) + 112));
  ATXSetInput(&v94, 0xC5uLL, v32);
  ATXSetInput(&v94, 0x101uLL, *(v7 + 6));
  ATXSetInput(&v94, 0xFFuLL, *(v7 + 29));
  *&v33 = ATXSetInput(&v94, 0xFDuLL, *(v7 + 2));
  *&v34 = ATXSetInput(&v94, 0xBAuLL, [*(*(v5 + 32) + 128) count]);
  ATXSetInput(&v94, 0xFEuLL, [*(v7 + 5) count]);
  *&v35 = ATXSetInput(&v94, 0x107uLL, *(v7 + 75));
  [v7 _timeOfDayBudgetStandardDeviation];
  ATXSetInput(&v94, 0x108uLL, v36);
  ATXSetInput(&v94, 0x109uLL, *(v7 + 78));
  ATXSetInput(&v94, 0xB9uLL, *(*(v5 + 32) + 32));
  ATXSetInput(&v94, 0xB8uLL, *(*(v5 + 32) + 40));
  ATXSetInput(&v94, 0xEBuLL, *(v7 + 30));
  ATXSetInput(&v94, 0xECuLL, *(v7 + 31));
  ATXSetInput(&v94, 0xEDuLL, *(v7 + 33));
  ATXSetInput(&v94, 0xEEuLL, *(v7 + 35));
  ATXSetInput(&v94, 0xEFuLL, *(v7 + 34));
  ATXSetInput(&v94, 0xF0uLL, *(v7 + 32));
  ATXSetInput(&v94, 0xF1uLL, *(v7 + 36));
  ATXSetInput(&v94, 0xF2uLL, *(v7 + 37));
  ATXSetInput(&v94, 0xF3uLL, *(v7 + 38));
  ATXSetInput(&v94, 0xF4uLL, *(v7 + 39));
  ATXSetInput(&v94, 0xF5uLL, *(v7 + 41));
  ATXSetInput(&v94, 0xF6uLL, *(v7 + 40));
  ATXSetInput(&v94, 0xF7uLL, *(v7 + 42));
  ATXSetInput(&v94, 0xF8uLL, *(v7 + 43));
  ATXSetInput(&v94, 0xF9uLL, *(v7 + 44));
  ATXSetInput(&v94, 0xFAuLL, *(v7 + 45));
  ATXProbability(*(v7 + 58), *(*(v5 + 32) + 240));
  ATXSetInput(&v94, 0xC7uLL, v37);
  ATXSmoothedProbability(*(v7 + 58), *(v7 + 36));
  ATXSetInput(&v94, 0xD8uLL, v38);
  ATXProbability(*(v7 + 65), *(*(v5 + 32) + 304));
  ATXSetInput(&v94, 0xCFuLL, v39);
  ATXSmoothedProbability(*(v7 + 65), *(v7 + 45));
  ATXSetInput(&v94, 0xE0uLL, v40);
  ATXProbability(*(v7 + 57), *(*(v5 + 32) + 232));
  ATXSetInput(&v94, 0xC8uLL, v41);
  ATXSmoothedProbability(*(v7 + 57), *(v7 + 37));
  ATXSetInput(&v94, 0xD9uLL, v42);
  ATXProbability(*(v7 + 59), *(*(v5 + 32) + 248));
  ATXSetInput(&v94, 0xC9uLL, v43);
  ATXSmoothedProbability(*(v7 + 59), *(v7 + 38));
  ATXSetInput(&v94, 0xDAuLL, v44);
  ATXProbability(*(v7 + 60), *(*(v5 + 32) + 256));
  ATXSetInput(&v94, 0xCAuLL, v45);
  ATXSmoothedProbability(*(v7 + 60), *(v7 + 39));
  ATXSetInput(&v94, 0xDBuLL, v46);
  ATXProbability(*(v7 + 62), *(*(v5 + 32) + 272));
  ATXSetInput(&v94, 0xCCuLL, v47);
  ATXSmoothedProbability(*(v7 + 62), *(v7 + 41));
  ATXSetInput(&v94, 0xDDuLL, v48);
  ATXProbability(*(v7 + 61), *(*(v5 + 32) + 264));
  ATXSetInput(&v94, 0xCBuLL, v49);
  ATXSmoothedProbability(*(v7 + 61), *(v7 + 40));
  ATXSetInput(&v94, 0xDCuLL, v50);
  ATXProbability(*(v7 + 63), *(*(v5 + 32) + 280));
  ATXSetInput(&v94, 0xCDuLL, v51);
  ATXSmoothedProbability(*(v7 + 63), *(v7 + 42));
  ATXSetInput(&v94, 0xDEuLL, v52);
  ATXProbability(*(v7 + 64), *(*(v5 + 32) + 288));
  ATXSetInput(&v94, 0xCEuLL, v53);
  ATXSmoothedProbability(*(v7 + 64), *(v7 + 43));
  *&v55 = ATXSetInput(&v94, 0xDFuLL, v54);
  [v7 _confirmRatio];
  ATXSetInput(&v94, 0x110uLL, v56);
  ATXSetInput(&v94, 0x10AuLL, *(v7 + 8));
  ATXSetInput(&v94, 0x10BuLL, *(v7 + 9));
  ATXSetInput(&v94, 0x10CuLL, *(v7 + 10));
  ATXSetInput(&v94, 0x10DuLL, *(*(v5 + 32) + 136));
  ATXSetInput(&v94, 0x10EuLL, *(*(v5 + 32) + 144));
  ATXSetInput(&v94, 0x10FuLL, *(*(v5 + 32) + 152));
  *&v57 = ATXSetInput(&v94, 0x112uLL, *(*(v5 + 32) + 736));
  [*(v5 + 32) _totalConfirmRatioStandardDeviation];
  ATXSetInput(&v94, 0x111uLL, v58);
  ATXSetInput(&v94, 0x113uLL, *(*(v5 + 32) + 728));
  ATXSetInput(&v94, 0x114uLL, *(v7 + 16));
  ATXSetInput(&v94, 0x115uLL, *(v7 + 11));
  ATXSetInput(&v94, 0x116uLL, *(v7 + 12));
  ATXSetInput(&v94, 0x117uLL, *(v7 + 17));
  ATXSetInput(&v94, 0x118uLL, *(v7 + 18));
  ATXSetInput(&v94, 0x119uLL, *(v7 + 19));
  ATXSetInput(&v94, 0x11AuLL, *(v7 + 20));
  ATXSetInput(&v94, 0x11BuLL, *(v7 + 21));
  ATXSetInput(&v94, 0x11CuLL, *(v7 + 22));
  ATXSetInput(&v94, 0x11DuLL, *(v7 + 23));
  ATXSetInput(&v94, 0x11EuLL, *(v7 + 24));
  ATXSetInput(&v94, 0x123uLL, *(*(v5 + 32) + 160));
  ATXSetInput(&v94, 0x124uLL, *(*(v5 + 32) + 168));
  ATXSetInput(&v94, 0x11FuLL, *(v7 + 66));
  ATXSetInput(&v94, 0x120uLL, *(v7 + 67));
  ATXSetInput(&v94, 0x121uLL, *(v7 + 68));
  ATXSetInput(&v94, 0x122uLL, *(v7 + 69));
  ATXSetInput(&v94, 0x125uLL, *(v7 + 25));
  ATXSetInput(&v94, 0x126uLL, *(v7 + 26));
  ATXSetInput(&v94, 0x127uLL, *(v7 + 13));
  ATXSetInput(&v94, 0x128uLL, *(v7 + 14));
  ATXSetInput(&v94, 0x129uLL, *(v7 + 15));
  ATXSetInput(&v94, 0x12AuLL, *(v7 + 27));
  ATXSetInput(&v94, 0x12BuLL, *(v7 + 28));
  ATXSetInput(&v94, 0x130uLL, *(*(v5 + 32) + 200));
  ATXSetInput(&v94, 0x131uLL, *(*(v5 + 32) + 208));
  ATXSetInput(&v94, 0x132uLL, *(*(v5 + 32) + 216));
  ATXSetInput(&v94, 0x133uLL, *(*(v5 + 32) + 224));
  ATXSetInput(&v94, 0x12CuLL, *(v7 + 70));
  ATXSetInput(&v94, 0x12DuLL, *(v7 + 71));
  ATXSetInput(&v94, 0x12EuLL, *(v7 + 72));
  ATXSetInput(&v94, 0x12FuLL, *(v7 + 73));
  ATXSetInput(&v94, 0x1A5uLL, *(v7 + 80));
  ATXSetInput(&v94, 0x1A7uLL, *(v7 + 81));
  ATXSetInput(&v94, 0x1A9uLL, *(v7 + 82));
  ATXSetInput(&v94, 0x1ABuLL, *(v7 + 83));
  ATXSetInput(&v94, 0x1ADuLL, *(v7 + 84));
  ATXSetInput(&v94, 0x1AFuLL, *(v7 + 85));
  ATXSetInput(&v94, 0x1B1uLL, *(v7 + 86));
  ATXSetInput(&v94, 0x1B3uLL, *(v7 + 87));
  ATXSetInput(&v94, 0x1B5uLL, *(v7 + 88));
  ATXSetInput(&v94, 0x1B7uLL, *(v7 + 89));
  ATXSetInput(&v94, 0x1B9uLL, *(v7 + 90));
  ATXSetInput(&v94, 0x1BBuLL, *(v7 + 91));
  ATXSetInput(&v94, 0x232uLL, *(v7 + 48));
  ATXSetInput(&v94, 0x234uLL, *(v7 + 97));
  ATXSetInput(&v94, 0x229uLL, *(v7 + 51));
  ATXSetInput(&v94, 0x22BuLL, *(v7 + 92));
  ATXSetInput(&v94, 0x22CuLL, *(v7 + 93));
  ATXSetInput(&v94, 0x22EuLL, *(v7 + 94));
  ATXSetInput(&v94, 0x22FuLL, *(v7 + 95));
  ATXSetInput(&v94, 0x231uLL, *(v7 + 96));
  ATXSetInput(&v94, 0x235uLL, *(v7 + 98));
  ATXSetInput(&v94, 0x237uLL, *(v7 + 99));
  ATXSetInput(&v94, 0x238uLL, *(v7 + 100));
  ATXSetInput(&v94, 0x23AuLL, *(v7 + 101));
  ATXSetInput(&v94, 0x23BuLL, *(v7 + 102));
  ATXSetInput(&v94, 0x23DuLL, *(v7 + 103));
  ATXSetInput(&v94, 0x23EuLL, *(v7 + 104));
  ATXSetInput(&v94, 0x240uLL, *(v7 + 105));
  ATXSetInput(&v94, 0x241uLL, *(v7 + 106));
  ATXSetInput(&v94, 0x243uLL, *(v7 + 107));
  ATXSetInput(&v94, 0x244uLL, *(v7 + 108));
  ATXSetInput(&v94, 0x246uLL, *(v7 + 109));
  ATXSetInput(&v94, 0x247uLL, *(v7 + 110));
  ATXSetInput(&v94, 0x249uLL, *(v7 + 111));
  ATXSetInput(&v94, 0x24AuLL, *(v7 + 112));
  ATXSetInput(&v94, 0x24CuLL, *(v7 + 113));
  ATXSetInput(&v94, 0x302uLL, *(v7 + 114));
  ATXSetInput(&v94, 0x305uLL, *(v7 + 118));
  ATXSetInput(&v94, 0x308uLL, *(v7 + 122));
  ATXSetInput(&v94, 0x30BuLL, *(v7 + 126));
  ATXSetInput(&v94, 0x30EuLL, *(v7 + 130));
  ATXSetInput(&v94, 0x311uLL, *(v7 + 134));
  ATXSetInput(&v94, 0x314uLL, *(v7 + 116));
  ATXSetInput(&v94, 0x317uLL, *(v7 + 120));
  ATXSetInput(&v94, 0x31AuLL, *(v7 + 124));
  ATXSetInput(&v94, 0x31DuLL, *(v7 + 128));
  ATXSetInput(&v94, 0x320uLL, *(v7 + 132));
  ATXSetInput(&v94, 0x323uLL, *(v7 + 136));
  ATXSetInput(&v94, 0x304uLL, *(v7 + 115));
  ATXSetInput(&v94, 0x307uLL, *(v7 + 119));
  ATXSetInput(&v94, 0x30AuLL, *(v7 + 123));
  ATXSetInput(&v94, 0x30DuLL, *(v7 + 127));
  ATXSetInput(&v94, 0x310uLL, *(v7 + 131));
  ATXSetInput(&v94, 0x313uLL, *(v7 + 135));
  ATXSetInput(&v94, 0x316uLL, *(v7 + 117));
  ATXSetInput(&v94, 0x319uLL, *(v7 + 121));
  ATXSetInput(&v94, 0x31CuLL, *(v7 + 125));
  ATXSetInput(&v94, 0x31FuLL, *(v7 + 129));
  ATXSetInput(&v94, 0x322uLL, *(v7 + 133));
  *&v59 = ATXSetInput(&v94, 0x325uLL, *(v7 + 137));
  v88 = [*(v7 + 145) allValues];
  v60 = [*(v7 + 144) allValues];
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(v7 + 143)];
  [ATXSlotResolution setDistributionBasedScoreInputsForTimeOfDayForItem:&v94 withLaunchDistribution:v61];

  v62 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(v7 + 142)];
  [ATXSlotResolution setDistributionBasedScoreInputsForDayOfWeekForItem:&v94 withLaunchDistribution:v62];

  [ATXSlotResolution setDistributionBasedScoreInputsForItem:&v94 withGeoHashResolution:0 withLaunchCounts:v88];
  [ATXSlotResolution setDistributionBasedScoreInputsForItem:&v94 withGeoHashResolution:1 withLaunchCounts:v60];
  v63 = [*(*(*(v5 + 80) + 8) + 40) objectForKey:*(v5 + 56)];
  LODWORD(v62) = v63 == 0;

  if (v62)
  {
    v64 = *(*(*(v5 + 80) + 8) + 40);
    v65 = MEMORY[0x277CCABB0];
    v66 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v67 = [v66 histogramForLaunchType:0];
    v96[0] = *(v5 + 56);
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:1];
    [v67 totalLaunchesForBundleIds:v68];
    v69 = [v65 numberWithDouble:?];
    [v64 setObject:v69 forKey:*(v5 + 56)];
  }

  v70 = [*(*(*(v5 + 80) + 8) + 40) objectForKey:*(v5 + 56)];
  [v70 doubleValue];
  ATXSetInput(&v94, 0x103uLL, v71 + 1.0);

  ATXSetInput(&v94, 0x104uLL, *(v7 + 74));
  *&v72 = ATXSetInput(&v94, 0x102uLL, -31337.0);
  v73 = *(*(v5 + 32) + 24);
  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v91, "slotHash", v72)}];
  v75 = [v73 objectForKeyedSubscript:v74];

  ATXSetInput(&v94, 0x105uLL, v75[1]);
  ATXSetInput(&v94, 0x286uLL, *(v7 + 138));
  ATXSetInput(&v94, 0x287uLL, *(v7 + 139));
  ATXSetInput(&v94, 0x288uLL, *(v7 + 140));
  ATXSetInput(&v94, 0x289uLL, *(v7 + 141));
  *&v76 = ATXSetInput(&v94, 0x106uLL, v75[2]);
  v77 = +[ATXActionLOIBoost sharedInstance];
  [v77 boostForActionKey:*(*(v5 + 32) + 8)];
  ATXSetInput(&v94, 0x100uLL, v78);

  *&v79 = ATXSetInput(&v94, 0xFCuLL, ([ATXSlotResolution isNotLaunchedWithinShortTimeSpan:v7]^ 1));
  if (([MEMORY[0x277CEBC58] isSpotlightPlusEnabled] & 1) == 0)
  {
    v80 = +[_ATXAppPredictor sharedInstance];
    [v80 setupScoreLogger:*(v5 + 40) forConsumerSubType:25];

    v81 = +[_ATXAppPredictor sharedInstance];
    [v81 _predictionScoreAndUpdateConfidenceForItem:&v94 interpreter:*(*(v5 + 64) + 16) consumerSubType:25 scoreLogger:*(v5 + 40) intentType:0];
    v83 = v82;

    v84 = v83;
    *&v95[415] = v84;
    ATXSetInput(&v94, 0x17FuLL, v83);
  }

  v85 = [[ATXActionPredictionContainer alloc] initWithMinimalSlotResolutionParameters:v91 score:*(*(v5 + 32) + 8) actionKey:0.0];
  v86 = v94;
  v92 = v86;
  memcpy(v93, v95, sizeof(v93));
  if (v85)
  {
    [(ATXActionPredictionContainer *)v85 setPredictionItem:&v92];
  }

  else
  {
  }

  [*(v5 + 72) addObject:v85];

  v87 = *MEMORY[0x277D85DE8];
}

+ (void)setDistributionBasedScoreInputsForTimeOfDayForItem:(ATXPredictionItem *)a3 withLaunchDistribution:(id)a4
{
  v12 = a4;
  for (i = 0; i != 25; ++i)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [_ATXScoreTypes mappingForTimeOfDayDistributionSignals:i forScoreInputCategory:1];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:i];
    v9 = [v12 objectForKeyedSubscript:v8];
    [v9 doubleValue];
    v11 = v10;

    ATXSetInput(a3, v7, v11);
    objc_autoreleasePoolPop(v6);
  }
}

+ (void)setDistributionBasedScoreInputsForDayOfWeekForItem:(ATXPredictionItem *)a3 withLaunchDistribution:(id)a4
{
  v12 = a4;
  for (i = 0; i != 7; ++i)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [_ATXScoreTypes mappingForDayOfWeekDistributionSignals:i forScoreInputCategory:1];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:i];
    v9 = [v12 objectForKeyedSubscript:v8];
    [v9 doubleValue];
    v11 = v10;

    ATXSetInput(a3, v7, v11);
    objc_autoreleasePoolPop(v6);
  }
}

+ (void)setDistributionBasedScoreInputsForItem:(ATXPredictionItem *)a3 withGeoHashResolution:(unint64_t)a4 withLaunchCounts:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = a5;
  v8 = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_11;
      }

      *&v7 = ATXSetInput(a3, 0x28BuLL, [v21 count]);
      v9 = &kATXActionNumberOfScoreInputsForCoarseGeoHash;
    }

    else
    {
      *&v7 = ATXSetInput(a3, 0x28AuLL, [v21 count]);
      v9 = &kATXActionNumberOfScoreInputsForSpecificGeoHash;
    }

    v8 = *v9;
LABEL_11:
    v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:{0, v7}];
    v22[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v12 = [v21 sortedArrayUsingDescriptors:v11];

    for (i = 0; ; ++i)
    {
      v14 = [v12 count];
      v15 = v14 >= v8 ? v8 : v14;
      if (i >= v15)
      {
        break;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = [_ATXScoreTypes mappingForTopRankedGeoHashSignalsWithResolution:a4 withRank:i forScoreInputCategory:1];
      v18 = [v12 objectAtIndex:i];
      [v18 doubleValue];
      ATXSetInput(a3, v17, v19);

      objc_autoreleasePoolPop(v16);
    }

    goto LABEL_18;
  }

  if (a4 == 2)
  {
    v10 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXSlotResolution setDistributionBasedScoreInputsForItem:v10 withGeoHashResolution:? withLaunchCounts:?];
    }
  }

  else
  {
    if (a4 != 0xFFFFFFFF)
    {
      goto LABEL_11;
    }

    v10 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXSlotResolution setDistributionBasedScoreInputsForItem:v10 withGeoHashResolution:? withLaunchCounts:?];
    }
  }

LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isNotLaunchedWithinShortTimeSpan:(id)a3
{
  v3 = a3;
  if (+[ATXSlotResolution isNotLaunchedWithinShortTimeSpan:]::onceToken != -1)
  {
    +[ATXSlotResolution isNotLaunchedWithinShortTimeSpan:];
  }

  v6 = 1;
  if (v3[6])
  {
    v4 = v3[7];
    if (v4)
    {
      [v4 timeIntervalSinceDate:?];
      if (v5 <= +[ATXSlotResolution isNotLaunchedWithinShortTimeSpan:]::minimumTimespanForOnceOffActions)
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

void __54__ATXSlotResolution_isNotLaunchedWithinShortTimeSpan___block_invoke()
{
  v0 = +[_ATXGlobals sharedInstance];
  +[ATXSlotResolution isNotLaunchedWithinShortTimeSpan:]::minimumTimespanForOnceOffActions = [v0 minimumTimespanForOnceOffActions];
}

+ (void)setSlotResolutionPredictionItemForTopUpcomingMediaActionContainer:(id)a3 appActionPredictionItem:(const ATXPredictionItem *)a4 appActionLogProbability:(double)a5
{
  v5 = MEMORY[0x28223BE20](a1, a2);
  v7 = v6;
  v9 = v8;
  if (v7)
  {
    v13 = *v7;
    memcpy(v14, (v7 + 8), sizeof(v14));
    ATXSetInput(&v13, 0x17DuLL, *(v7 + 3328));
    ATXSetInput(&v13, 0x17EuLL, v5);
    v10 = v13;
    v11 = v10;
    memcpy(v12, v14, sizeof(v12));
    if (v9)
    {
      [v9 setPredictionItem:&v11];
    }

    else
    {
    }
  }
}

+ (void)setSlotLogProbabilityForCandidateActionPredictions:(id)a3
{
  MEMORY[0x28223BE20](a1, a2);
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        if (v8)
        {
          [*(*(&v16 + 1) + 8 * v7) predictionItem];
        }

        else
        {
          bzero(&v14, 0xD08uLL);
        }

        [v8 score];
        ATXSetInput(&v14, 0x180uLL, v9);
        v10 = v14;
        v12 = v10;
        memcpy(v13, v15, sizeof(v13));
        if (v8)
        {
          [v8 setPredictionItem:&v12];
        }

        else
        {
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:{16, v12}];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)setDistributionBasedScoreInputsForItem:(os_log_t)log withGeoHashResolution:withLaunchCounts:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 0xFFFFFFFFLL;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Unknown GeoHash Resolution: %lu", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)setDistributionBasedScoreInputsForItem:(os_log_t)log withGeoHashResolution:withLaunchCounts:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "GeoHash Resolution not supported in ATXSlotResolution: %lu", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end