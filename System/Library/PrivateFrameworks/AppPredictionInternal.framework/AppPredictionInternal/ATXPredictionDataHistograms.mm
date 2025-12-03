@interface ATXPredictionDataHistograms
- (NSArray)actionKeyBasedHistograms;
- (id)initWithAppInfoManager:(void *)manager bundleIdTable:(void *)table launchSequenceManager:(void *)sequenceManager histogramManager:(void *)histogramManager dataStore:(int)store persistHistograms:;
- (void)allHistograms;
- (void)removeExpiredData;
- (void)verifyHistograms;
@end

@implementation ATXPredictionDataHistograms

_ATXAppLaunchHistogramWithPersistentBackup *__135__ATXPredictionDataHistograms_initWithAppInfoManager_bundleIdTable_launchSequenceManager_histogramManager_dataStore_persistHistograms___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == 1)
  {
    v4 = [[_ATXAppLaunchHistogramWithPersistentBackup alloc] initWithDataStore:*(a1 + 32) histogramType:a2];
  }

  else
  {
    v4 = [*(a1 + 40) histogramForLaunchType:a2];
  }

  v5 = v4;
  v6 = *(a1 + 48);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return v5;
}

_ATXAppLaunchCategoricalHistogramWithPersistentBackup *__135__ATXPredictionDataHistograms_initWithAppInfoManager_bundleIdTable_launchSequenceManager_histogramManager_dataStore_persistHistograms___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == 1)
  {
    v4 = [[_ATXAppLaunchCategoricalHistogramWithPersistentBackup alloc] initWithDataStore:*(a1 + 32) histogramType:a2];
  }

  else
  {
    v4 = [*(a1 + 40) categoricalHistogramForLaunchType:a2];
  }

  v5 = v4;
  v6 = *(a1 + 48);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return v5;
}

- (NSArray)actionKeyBasedHistograms
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *&self->_appIntentLaunchHistogram;
  appIntentDayOfWeekHistogram = self->_appIntentDayOfWeekHistogram;
  v8 = *&self->_appIntentAirplaneModeLaunchHistogram;
  appIntentCoreMotionLaunchHistogram = self->_appIntentCoreMotionLaunchHistogram;
  appIntentWifiHistogram = self->_appIntentWifiHistogram;
  v10 = appIntentCoreMotionLaunchHistogram;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:7];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)removeExpiredData
{
  v119 = *MEMORY[0x277D85DE8];
  v48 = *&self->_appLaunchHistogram;
  homescreenLaunchHistogram = self->_homescreenLaunchHistogram;
  v50 = *&self->_appDirectoryLaunchHistogram;
  dayOfWeekLaunchHistogram = self->_dayOfWeekLaunchHistogram;
  v3 = *&self->_wifiLaunchHistogram;
  v52 = *&self->_airplaneModeLaunchHistogram;
  v53 = v3;
  appCoarseTimePOWLocationLaunchesHistogram = self->_appCoarseTimePOWLocationLaunchesHistogram;
  timeAndDayHistogram = self->_timeAndDayHistogram;
  v55 = appCoarseTimePOWLocationLaunchesHistogram;
  appCoarseTimePOWLocationConfirmsHistogram = self->_appCoarseTimePOWLocationConfirmsHistogram;
  appSpecificTimeDOWLocationLaunchesHistogram = self->_appSpecificTimeDOWLocationLaunchesHistogram;
  v57 = appCoarseTimePOWLocationConfirmsHistogram;
  appCoarseTimePOWLocationRejectsHistogram = self->_appCoarseTimePOWLocationRejectsHistogram;
  appSpecificTimeDOWLocationConfirmsHistogram = self->_appSpecificTimeDOWLocationConfirmsHistogram;
  v59 = appCoarseTimePOWLocationRejectsHistogram;
  v60 = *&self->_appSpecificTimeDOWLocationRejectsHistogram;
  appCoarseGeoHashHistogram = self->_appCoarseGeoHashHistogram;
  v62 = *&self->_appZoom7GeoHashHistogram;
  v63 = *&self->_appConfirmsTwoHourTimeInterval;
  appConfirmsDayOfWeek = self->_appConfirmsDayOfWeek;
  appRejectsDayOfWeek = self->_appRejectsDayOfWeek;
  v61 = appCoarseGeoHashHistogram;
  v64 = appConfirmsDayOfWeek;
  v65 = appRejectsDayOfWeek;
  appRejectsCoarseGeoHash = self->_appRejectsCoarseGeoHash;
  appConfirmsCoarseGeoHash = self->_appConfirmsCoarseGeoHash;
  v67 = appRejectsCoarseGeoHash;
  appRejectsSpecificGeoHash = self->_appRejectsSpecificGeoHash;
  appConfirmsSpecificGeoHash = self->_appConfirmsSpecificGeoHash;
  v69 = appRejectsSpecificGeoHash;
  appForAllIntentsLaunchHistogram = self->_appForAllIntentsLaunchHistogram;
  appForAllIntentsUnlockTimeHistogram = self->_appForAllIntentsUnlockTimeHistogram;
  appExplicitRejectsCoarseTimePOWLocationHistogram = self->_appExplicitRejectsCoarseTimePOWLocationHistogram;
  v71 = appForAllIntentsLaunchHistogram;
  appForAllIntentsDayOfWeekHistogram = self->_appForAllIntentsDayOfWeekHistogram;
  appForAllIntentsAirplaneModeLaunchHistogram = self->_appForAllIntentsAirplaneModeLaunchHistogram;
  v72 = appForAllIntentsUnlockTimeHistogram;
  v73 = appForAllIntentsDayOfWeekHistogram;
  v74 = appForAllIntentsAirplaneModeLaunchHistogram;
  appForAllIntentsWifiHistogram = self->_appForAllIntentsWifiHistogram;
  appForAllIntentsCoreMotionLaunchHistogram = self->_appForAllIntentsCoreMotionLaunchHistogram;
  heuristicConfirmsHistogram = self->_heuristicConfirmsHistogram;
  appForAllIntentsTrendingLaunchHistogram = self->_appForAllIntentsTrendingLaunchHistogram;
  v76 = appForAllIntentsWifiHistogram;
  infoManager = self->_infoManager;
  bundleIdTable = self->_bundleIdTable;
  v77 = appForAllIntentsCoreMotionLaunchHistogram;
  v78 = infoManager;
  actionConfirmsHistogram = self->_actionConfirmsHistogram;
  actionRejectsHistogram = self->_actionRejectsHistogram;
  v79 = bundleIdTable;
  v80 = actionConfirmsHistogram;
  v81 = actionRejectsHistogram;
  v82 = heuristicConfirmsHistogram;
  seqManager = self->_seqManager;
  heuristicRejectsHistogram = self->_heuristicRejectsHistogram;
  v84 = seqManager;
  appClipsFeedbackHistogramNoDecay = self->_appClipsFeedbackHistogramNoDecay;
  appIntentPartOfWeekHistogram = self->_appIntentPartOfWeekHistogram;
  appClipsFeedbackHistogram = self->_appClipsFeedbackHistogram;
  v86 = appClipsFeedbackHistogramNoDecay;
  notificationsHistoryHistogram = self->_notificationsHistoryHistogram;
  v88 = appIntentPartOfWeekHistogram;
  homeScreenAppConfirmsSpecificTimeDOWLocationHistogram = self->_homeScreenAppConfirmsSpecificTimeDOWLocationHistogram;
  homeScreenAppConfirmsCoarseTimePOWLocationHistogram = self->_homeScreenAppConfirmsCoarseTimePOWLocationHistogram;
  v90 = homeScreenAppConfirmsSpecificTimeDOWLocationHistogram;
  homeScreenAppConfirmsDayOfWeekHistogram = self->_homeScreenAppConfirmsDayOfWeekHistogram;
  homeScreenAppConfirmsTwoHourTimeIntervalHistogram = self->_homeScreenAppConfirmsTwoHourTimeIntervalHistogram;
  v92 = homeScreenAppConfirmsDayOfWeekHistogram;
  homeScreenAppConfirmsSpecificGeohashHistogram = self->_homeScreenAppConfirmsSpecificGeohashHistogram;
  homeScreenAppConfirmsCoarseGeohashHistogram = self->_homeScreenAppConfirmsCoarseGeohashHistogram;
  v94 = homeScreenAppConfirmsSpecificGeohashHistogram;
  homeScreenAppRejectsSpecificTimeDOWLocationHistogram = self->_homeScreenAppRejectsSpecificTimeDOWLocationHistogram;
  homeScreenAppRejectsCoarseTimePOWLocationHistogram = self->_homeScreenAppRejectsCoarseTimePOWLocationHistogram;
  v96 = homeScreenAppRejectsSpecificTimeDOWLocationHistogram;
  homeScreenAppRejectsDayOfWeekHistogram = self->_homeScreenAppRejectsDayOfWeekHistogram;
  homeScreenAppRejectsTwoHourTimeIntervalHistogram = self->_homeScreenAppRejectsTwoHourTimeIntervalHistogram;
  v98 = homeScreenAppRejectsDayOfWeekHistogram;
  homeScreenAppRejectsSpecificGeohashHistogram = self->_homeScreenAppRejectsSpecificGeohashHistogram;
  homeScreenAppRejectsCoarseGeohashHistogram = self->_homeScreenAppRejectsCoarseGeohashHistogram;
  v100 = homeScreenAppRejectsSpecificGeohashHistogram;
  appDirectoryConfirmsCoarseTimePOWLocationHistogram = self->_appDirectoryConfirmsCoarseTimePOWLocationHistogram;
  homeScreenAppExplicitRejectsCoarseTimePOWLocationHistogram = self->_homeScreenAppExplicitRejectsCoarseTimePOWLocationHistogram;
  v102 = appDirectoryConfirmsCoarseTimePOWLocationHistogram;
  appDirectoryConfirmsTwoHourTimeIntervalHistogram = self->_appDirectoryConfirmsTwoHourTimeIntervalHistogram;
  appDirectoryConfirmsSpecificTimeDOWLocationHistogram = self->_appDirectoryConfirmsSpecificTimeDOWLocationHistogram;
  v104 = appDirectoryConfirmsTwoHourTimeIntervalHistogram;
  appDirectoryConfirmsDayOfWeekHistogram = self->_appDirectoryConfirmsDayOfWeekHistogram;
  appDirectoryConfirmsCoarseGeohashHistogram = self->_appDirectoryConfirmsCoarseGeohashHistogram;
  appDirectoryConfirmsSpecificGeohashHistogram = self->_appDirectoryConfirmsSpecificGeohashHistogram;
  appDirectoryRejectsCoarseTimePOWLocationHistogram = self->_appDirectoryRejectsCoarseTimePOWLocationHistogram;
  appDirectoryRejectsSpecificTimeDOWLocationHistogram = self->_appDirectoryRejectsSpecificTimeDOWLocationHistogram;
  appDirectoryRejectsTwoHourTimeIntervalHistogram = self->_appDirectoryRejectsTwoHourTimeIntervalHistogram;
  appDirectoryRejectsDayOfWeekHistogram = self->_appDirectoryRejectsDayOfWeekHistogram;
  appDirectoryRejectsCoarseGeohashHistogram = self->_appDirectoryRejectsCoarseGeohashHistogram;
  appDirectoryRejectsSpecificGeohashHistogram = self->_appDirectoryRejectsSpecificGeohashHistogram;
  appDirectoryExplicitRejectsCoarseTimePOWLocationHistogram = self->_appDirectoryExplicitRejectsCoarseTimePOWLocationHistogram;
  poiCategoryHistogram = self->_poiCategoryHistogram;
  activitySuggestionsFeedbackHistogram = self->_activitySuggestionsFeedbackHistogram;
  notificationDigestAppEngagementHistogram = self->_notificationDigestAppEngagementHistogram;
  notificationDigestAlltimeMarqueeAppearancesHistogram = self->_notificationDigestAlltimeMarqueeAppearancesHistogram;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:78];
  v47 = self->_seqManager;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  actionKeyBasedHistograms = [(ATXPredictionDataHistograms *)self actionKeyBasedHistograms];
  v37 = [v35 arrayByAddingObjectsFromArray:actionKeyBasedHistograms];

  v38 = __atxlog_handle_default();
  v39 = os_signpost_id_generate(v38);

  v40 = __atxlog_handle_default();
  v41 = v40;
  if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
  {
    *v46 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "RemoveOldLaunchInfo", " enableTelemetry=YES ", v46, 2u);
  }

  v42 = [[ATXExpiredDataProvider alloc] initWithAppInfoManager:self->_infoManager histogramBundleIdTable:self->_bundleIdTable];
  [ATXExpiredDataRemover removeExpiredBundleIdsFrom:v34 removeExpiredActionKeysFrom:v37 expiredDataProvider:v42];
  v43 = __atxlog_handle_default();
  v44 = v43;
  if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *v46 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v44, OS_SIGNPOST_INTERVAL_END, v39, "RemoveOldLaunchInfo", " enableTelemetry=YES ", v46, 2u);
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)initWithAppInfoManager:(void *)manager bundleIdTable:(void *)table launchSequenceManager:(void *)sequenceManager histogramManager:(void *)histogramManager dataStore:(int)store persistHistograms:
{
  v14 = a2;
  managerCopy = manager;
  tableCopy = table;
  sequenceManagerCopy = sequenceManager;
  histogramManagerCopy = histogramManager;
  v19 = histogramManagerCopy;
  if (self)
  {
    if (store)
    {
      v20 = histogramManagerCopy;
    }

    else
    {
      v20 = sequenceManagerCopy;
    }

    if (!v20)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithAppInfoManager_bundleIdTable_launchSequenceManager_histogramManager_dataStore_persistHistograms_ object:self file:@"ATXPredictionDataHistograms.m" lineNumber:62 description:@"Data store or histogram manager is missing"];
    }

    v445.receiver = self;
    v445.super_class = ATXPredictionDataHistograms;
    v21 = objc_msgSendSuper2(&v445, sel_init);
    self = v21;
    if (v21)
    {
      objc_storeStrong(v21 + 1, a2);
      objc_storeStrong(self + 2, manager);
      objc_storeStrong(self + 3, table);
      v434 = v14;
      v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __135__ATXPredictionDataHistograms_initWithAppInfoManager_bundleIdTable_launchSequenceManager_histogramManager_dataStore_persistHistograms___block_invoke;
      aBlock[3] = &unk_2785A12E0;
      storeCopy = store;
      v24 = v19;
      v441 = v24;
      v25 = sequenceManagerCopy;
      v26 = v19;
      v27 = sequenceManagerCopy;
      v28 = tableCopy;
      v29 = managerCopy;
      v30 = v25;
      v442 = v25;
      v443 = v22;
      v432 = v22;
      v31 = _Block_copy(aBlock);
      v435[0] = MEMORY[0x277D85DD0];
      v435[1] = 3221225472;
      v435[2] = __135__ATXPredictionDataHistograms_initWithAppInfoManager_bundleIdTable_launchSequenceManager_histogramManager_dataStore_persistHistograms___block_invoke_2;
      v435[3] = &unk_2785A1308;
      storeCopy2 = store;
      v436 = v24;
      v32 = v30;
      managerCopy = v29;
      tableCopy = v28;
      sequenceManagerCopy = v27;
      v19 = v26;
      v437 = v32;
      v438 = v23;
      v33 = v23;
      v34 = _Block_copy(v435);
      v35 = v31[2](v31, 0);
      v36 = self[4];
      self[4] = v35;

      v37 = OUTLINED_FUNCTION_1_15();
      v39 = v38(v37, 1);
      v40 = self[5];
      self[5] = v39;

      v41 = OUTLINED_FUNCTION_1_15();
      v43 = v42(v41, 92);
      v44 = self[6];
      self[6] = v43;

      v45 = OUTLINED_FUNCTION_1_15();
      v47 = v46(v45, 93);
      v48 = self[7];
      self[7] = v47;

      v49 = OUTLINED_FUNCTION_1_15();
      v51 = v50(v49, 11);
      v52 = self[8];
      self[8] = v51;

      v53 = OUTLINED_FUNCTION_1_15();
      v55 = v54(v53, 2);
      v56 = self[9];
      self[9] = v55;

      v57 = OUTLINED_FUNCTION_1_15();
      v59 = v58(v57, 3);
      v60 = self[10];
      self[10] = v59;

      v61 = OUTLINED_FUNCTION_1_15();
      v63 = v62(v61, 5);
      v64 = self[11];
      self[11] = v63;

      v65 = OUTLINED_FUNCTION_1_15();
      v67 = v66(v65, 14);
      v68 = self[12];
      self[12] = v67;

      v69 = OUTLINED_FUNCTION_1_15();
      v71 = v70(v69, 23);
      v72 = self[13];
      self[13] = v71;

      v73 = OUTLINED_FUNCTION_1_15();
      v75 = v74(v73, 17);
      v76 = self[14];
      self[14] = v75;

      v77 = OUTLINED_FUNCTION_1_15();
      v79 = v78(v77, 26);
      v80 = self[15];
      self[15] = v79;

      v81 = OUTLINED_FUNCTION_1_15();
      v83 = v82(v81, 20);
      v84 = self[16];
      self[16] = v83;

      v85 = OUTLINED_FUNCTION_1_15();
      v87 = v86(v85, 16);
      v88 = self[17];
      self[17] = v87;

      v89 = OUTLINED_FUNCTION_1_15();
      v91 = v90(v89, 25);
      v92 = self[18];
      self[18] = v91;

      v93 = OUTLINED_FUNCTION_1_15();
      v95 = v94(v93, 19);
      v96 = self[19];
      self[19] = v95;

      v97 = OUTLINED_FUNCTION_1_15();
      v99 = v98(v97, 28);
      v100 = self[20];
      self[20] = v99;

      v101 = OUTLINED_FUNCTION_1_15();
      v103 = v102(v101, 22);
      v104 = self[21];
      self[21] = v103;

      v105 = OUTLINED_FUNCTION_1_15();
      v107 = v106(v105, 35);
      v108 = self[22];
      self[22] = v107;

      v109 = OUTLINED_FUNCTION_1_15();
      v111 = v110(v109, 36);
      v112 = self[23];
      self[23] = v111;

      v113 = OUTLINED_FUNCTION_1_15();
      v115 = v114(v113, 99);
      v116 = self[24];
      self[24] = v115;

      v117 = OUTLINED_FUNCTION_1_15();
      v119 = v118(v117, 100);
      v120 = self[25];
      self[25] = v119;

      v121 = OUTLINED_FUNCTION_1_15();
      v123 = v122(v121, 101);
      v124 = self[26];
      self[26] = v123;

      v125 = OUTLINED_FUNCTION_1_15();
      v127 = v126(v125, 102);
      v128 = self[27];
      self[27] = v127;

      v129 = OUTLINED_FUNCTION_1_15();
      v131 = v130(v129, 103);
      v132 = self[28];
      self[28] = v131;

      v133 = OUTLINED_FUNCTION_1_15();
      v135 = v134(v133, 108);
      v136 = self[29];
      self[29] = v135;

      v137 = OUTLINED_FUNCTION_1_15();
      v139 = v138(v137, 113);
      v140 = self[30];
      self[30] = v139;

      v141 = OUTLINED_FUNCTION_1_15();
      v143 = v142(v141, 109);
      v144 = self[31];
      self[31] = v143;

      v145 = OUTLINED_FUNCTION_1_15();
      v147 = v146(v145, 110);
      v148 = self[32];
      self[32] = v147;

      v149 = OUTLINED_FUNCTION_1_15();
      v151 = v150(v149, 112);
      v152 = self[33];
      self[33] = v151;

      v153 = v34[2](v34, 4);
      v154 = self[34];
      self[34] = v153;

      v155 = OUTLINED_FUNCTION_0_30();
      v157 = v156(v155, 37);
      v158 = self[35];
      self[35] = v157;

      v159 = OUTLINED_FUNCTION_0_30();
      v161 = v160(v159, 42);
      v162 = self[36];
      self[36] = v161;

      v163 = OUTLINED_FUNCTION_0_30();
      v165 = v164(v163, 43);
      v166 = self[37];
      self[37] = v165;

      v167 = OUTLINED_FUNCTION_0_30();
      v169 = v168(v167, 44);
      v170 = self[38];
      self[38] = v169;

      v171 = OUTLINED_FUNCTION_0_30();
      v173 = v172(v171, 45);
      v174 = self[39];
      self[39] = v173;

      v175 = OUTLINED_FUNCTION_0_30();
      v177 = v176(v175, 46);
      v178 = self[40];
      self[40] = v177;

      v179 = OUTLINED_FUNCTION_0_30();
      v181 = v180(v179, 47);
      v182 = self[41];
      self[41] = v181;

      v183 = OUTLINED_FUNCTION_0_30();
      v185 = v184(v183, 48);
      v186 = self[42];
      self[42] = v185;

      v187 = OUTLINED_FUNCTION_0_30();
      v189 = v188(v187, 50);
      v190 = self[43];
      self[43] = v189;

      v191 = OUTLINED_FUNCTION_0_30();
      v193 = v192(v191, 51);
      v194 = self[44];
      self[44] = v193;

      v195 = OUTLINED_FUNCTION_0_30();
      v197 = v196(v195, 61);
      v198 = self[45];
      self[45] = v197;

      v199 = OUTLINED_FUNCTION_0_30();
      v201 = v200(v199, 52);
      v202 = self[46];
      self[46] = v201;

      v203 = OUTLINED_FUNCTION_0_30();
      v205 = v204(v203, 53);
      v206 = self[47];
      self[47] = v205;

      v207 = OUTLINED_FUNCTION_0_30();
      v209 = v208(v207, 54);
      v210 = self[48];
      self[48] = v209;

      v211 = OUTLINED_FUNCTION_0_30();
      v213 = v212(v211, 55);
      v214 = self[49];
      self[49] = v213;

      v215 = OUTLINED_FUNCTION_0_30();
      v217 = v216(v215, 56);
      v218 = self[50];
      self[50] = v217;

      v219 = OUTLINED_FUNCTION_0_30();
      v221 = v220(v219, 57);
      v222 = self[51];
      self[51] = v221;

      v223 = OUTLINED_FUNCTION_0_30();
      v225 = v224(v223, 58);
      v226 = self[52];
      self[52] = v225;

      v227 = OUTLINED_FUNCTION_0_30();
      v229 = v228(v227, 59);
      v230 = self[53];
      self[53] = v229;

      v231 = OUTLINED_FUNCTION_0_30();
      v233 = v232(v231, 60);
      v234 = self[54];
      self[54] = v233;

      v235 = OUTLINED_FUNCTION_0_30();
      v237 = v236(v235, 87);
      v238 = self[55];
      self[55] = v237;

      v239 = OUTLINED_FUNCTION_0_30();
      v241 = v240(v239, 29);
      v242 = self[56];
      self[56] = v241;

      v243 = OUTLINED_FUNCTION_0_30();
      v245 = v244(v243, 38);
      v246 = self[57];
      self[57] = v245;

      v247 = OUTLINED_FUNCTION_0_30();
      v249 = v248(v247, 31);
      v250 = self[58];
      self[58] = v249;

      v251 = OUTLINED_FUNCTION_0_30();
      v253 = v252(v251, 39);
      v254 = self[59];
      self[59] = v253;

      v255 = OUTLINED_FUNCTION_0_30();
      v257 = v256(v255, 33);
      v258 = self[60];
      self[60] = v257;

      v259 = OUTLINED_FUNCTION_0_30();
      v261 = v260(v259, 34);
      v262 = self[61];
      self[61] = v261;

      v263 = OUTLINED_FUNCTION_0_30();
      v265 = v264(v263, 40);
      v266 = self[62];
      self[62] = v265;

      v267 = OUTLINED_FUNCTION_0_30();
      v269 = v268(v267, 49);
      v270 = self[63];
      self[63] = v269;

      v271 = OUTLINED_FUNCTION_0_30();
      v273 = v272(v271, 94);
      v274 = self[64];
      self[64] = v273;

      v275 = OUTLINED_FUNCTION_0_30();
      v277 = v276(v275, 32);
      v278 = self[65];
      self[65] = v277;

      v279 = OUTLINED_FUNCTION_0_30();
      v281 = v280(v279, 62);
      v282 = self[66];
      self[66] = v281;

      v283 = OUTLINED_FUNCTION_0_30();
      v285 = v284(v283, 63);
      v286 = self[67];
      self[67] = v285;

      v287 = OUTLINED_FUNCTION_0_30();
      v289 = v288(v287, 64);
      v290 = self[68];
      self[68] = v289;

      v291 = OUTLINED_FUNCTION_0_30();
      v293 = v292(v291, 65);
      v294 = self[69];
      self[69] = v293;

      v295 = OUTLINED_FUNCTION_0_30();
      v297 = v296(v295, 66);
      v298 = self[70];
      self[70] = v297;

      v299 = OUTLINED_FUNCTION_0_30();
      v301 = v300(v299, 67);
      v302 = self[71];
      self[71] = v301;

      v303 = OUTLINED_FUNCTION_0_30();
      v305 = v304(v303, 68);
      v306 = self[72];
      self[72] = v305;

      v307 = OUTLINED_FUNCTION_0_30();
      v309 = v308(v307, 69);
      v310 = self[73];
      self[73] = v309;

      v311 = OUTLINED_FUNCTION_0_30();
      v313 = v312(v311, 70);
      v314 = self[74];
      self[74] = v313;

      v315 = OUTLINED_FUNCTION_0_30();
      v317 = v316(v315, 71);
      v318 = self[75];
      self[75] = v317;

      v319 = OUTLINED_FUNCTION_0_30();
      v321 = v320(v319, 72);
      v322 = self[76];
      self[76] = v321;

      v323 = OUTLINED_FUNCTION_0_30();
      v325 = v324(v323, 73);
      v326 = self[77];
      self[77] = v325;

      v327 = OUTLINED_FUNCTION_0_30();
      v329 = v328(v327, 74);
      v330 = self[78];
      self[78] = v329;

      v331 = OUTLINED_FUNCTION_0_30();
      v333 = v332(v331, 88);
      v334 = self[79];
      self[79] = v333;

      v335 = OUTLINED_FUNCTION_0_30();
      v337 = v336(v335, 75);
      v338 = self[80];
      self[80] = v337;

      v339 = OUTLINED_FUNCTION_0_30();
      v341 = v340(v339, 76);
      v342 = self[81];
      self[81] = v341;

      v343 = OUTLINED_FUNCTION_0_30();
      v345 = v344(v343, 77);
      v346 = self[82];
      self[82] = v345;

      v347 = OUTLINED_FUNCTION_0_30();
      v349 = v348(v347, 78);
      v350 = self[83];
      self[83] = v349;

      v351 = OUTLINED_FUNCTION_0_30();
      v353 = v352(v351, 79);
      v354 = self[84];
      self[84] = v353;

      v355 = OUTLINED_FUNCTION_0_30();
      v357 = v356(v355, 80);
      v358 = self[85];
      self[85] = v357;

      v359 = OUTLINED_FUNCTION_0_30();
      v361 = v360(v359, 81);
      v362 = self[86];
      self[86] = v361;

      v363 = OUTLINED_FUNCTION_0_30();
      v365 = v364(v363, 82);
      v366 = self[87];
      self[87] = v365;

      v367 = OUTLINED_FUNCTION_0_30();
      v369 = v368(v367, 83);
      v370 = self[88];
      self[88] = v369;

      v371 = OUTLINED_FUNCTION_0_30();
      v373 = v372(v371, 84);
      v374 = self[89];
      self[89] = v373;

      v375 = OUTLINED_FUNCTION_0_30();
      v377 = v376(v375, 85);
      v378 = self[90];
      self[90] = v377;

      v379 = OUTLINED_FUNCTION_0_30();
      v381 = v380(v379, 86);
      v382 = self[91];
      self[91] = v381;

      v383 = OUTLINED_FUNCTION_0_30();
      v385 = v384(v383, 89);
      v386 = self[92];
      self[92] = v385;

      v387 = OUTLINED_FUNCTION_0_30();
      v389 = v388(v387, 95);
      v390 = self[93];
      self[93] = v389;

      v391 = OUTLINED_FUNCTION_0_30();
      v393 = v392(v391, 96);
      v394 = self[94];
      self[94] = v393;

      v395 = OUTLINED_FUNCTION_0_30();
      v397 = v396(v395, 97);
      v398 = self[100];
      self[100] = v397;

      v399 = OUTLINED_FUNCTION_0_30();
      v401 = v400(v399, 98);
      v402 = self[101];
      self[101] = v401;

      v403 = OUTLINED_FUNCTION_0_30();
      v405 = v404(v403, 104);
      v406 = self[95];
      self[95] = v405;

      v407 = OUTLINED_FUNCTION_0_30();
      v409 = v408(v407, 105);
      v410 = self[96];
      self[96] = v409;

      v411 = OUTLINED_FUNCTION_0_30();
      v413 = v412(v411, 106);
      v414 = self[97];
      self[97] = v413;

      v415 = OUTLINED_FUNCTION_0_30();
      v417 = v416(v415, 107);
      v418 = self[98];
      self[98] = v417;

      v419 = OUTLINED_FUNCTION_0_30();
      v421 = v420(v419, 111);
      v14 = v434;
      v422 = self[99];
      self[99] = v421;

      v423 = [v432 copy];
      v424 = self[103];
      self[103] = v423;

      allValues = [v432 allValues];
      v426 = self[102];
      self[102] = allValues;

      v427 = [v33 copy];
      v428 = self[105];
      self[105] = v427;

      allValues2 = [v33 allValues];
      v430 = self[104];
      self[104] = allValues2;
    }
  }

  return self;
}

- (void)allHistograms
{
  selfCopy = self;
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self[102]];
    selfCopy = [v2 arrayByAddingObjectsFromArray:selfCopy[104]];
  }

  return selfCopy;
}

- (void)verifyHistograms
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allHistograms = [(ATXPredictionDataHistograms *)self allHistograms];
  v3 = [allHistograms countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allHistograms);
        }

        [*(*(&v8 + 1) + 8 * v6++) verifyDataIntegrity];
      }

      while (v4 != v6);
      v4 = [allHistograms countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end