@interface ATXPredictionDataHistograms
- (NSArray)actionKeyBasedHistograms;
- (id)initWithAppInfoManager:(void *)a3 bundleIdTable:(void *)a4 launchSequenceManager:(void *)a5 histogramManager:(void *)a6 dataStore:(int)a7 persistHistograms:;
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
  v36 = [(ATXPredictionDataHistograms *)self actionKeyBasedHistograms];
  v37 = [v35 arrayByAddingObjectsFromArray:v36];

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

- (id)initWithAppInfoManager:(void *)a3 bundleIdTable:(void *)a4 launchSequenceManager:(void *)a5 histogramManager:(void *)a6 dataStore:(int)a7 persistHistograms:
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = v18;
  if (a1)
  {
    if (a7)
    {
      v20 = v18;
    }

    else
    {
      v20 = v17;
    }

    if (!v20)
    {
      v433 = [MEMORY[0x277CCA890] currentHandler];
      [v433 handleFailureInMethod:sel_initWithAppInfoManager_bundleIdTable_launchSequenceManager_histogramManager_dataStore_persistHistograms_ object:a1 file:@"ATXPredictionDataHistograms.m" lineNumber:62 description:@"Data store or histogram manager is missing"];
    }

    v445.receiver = a1;
    v445.super_class = ATXPredictionDataHistograms;
    v21 = objc_msgSendSuper2(&v445, sel_init);
    a1 = v21;
    if (v21)
    {
      objc_storeStrong(v21 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      v434 = v14;
      v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __135__ATXPredictionDataHistograms_initWithAppInfoManager_bundleIdTable_launchSequenceManager_histogramManager_dataStore_persistHistograms___block_invoke;
      aBlock[3] = &unk_2785A12E0;
      v444 = a7;
      v24 = v19;
      v441 = v24;
      v25 = v17;
      v26 = v19;
      v27 = v17;
      v28 = v16;
      v29 = v15;
      v30 = v25;
      v442 = v25;
      v443 = v22;
      v432 = v22;
      v31 = _Block_copy(aBlock);
      v435[0] = MEMORY[0x277D85DD0];
      v435[1] = 3221225472;
      v435[2] = __135__ATXPredictionDataHistograms_initWithAppInfoManager_bundleIdTable_launchSequenceManager_histogramManager_dataStore_persistHistograms___block_invoke_2;
      v435[3] = &unk_2785A1308;
      v439 = a7;
      v436 = v24;
      v32 = v30;
      v15 = v29;
      v16 = v28;
      v17 = v27;
      v19 = v26;
      v437 = v32;
      v438 = v23;
      v33 = v23;
      v34 = _Block_copy(v435);
      v35 = v31[2](v31, 0);
      v36 = a1[4];
      a1[4] = v35;

      v37 = OUTLINED_FUNCTION_1_15();
      v39 = v38(v37, 1);
      v40 = a1[5];
      a1[5] = v39;

      v41 = OUTLINED_FUNCTION_1_15();
      v43 = v42(v41, 92);
      v44 = a1[6];
      a1[6] = v43;

      v45 = OUTLINED_FUNCTION_1_15();
      v47 = v46(v45, 93);
      v48 = a1[7];
      a1[7] = v47;

      v49 = OUTLINED_FUNCTION_1_15();
      v51 = v50(v49, 11);
      v52 = a1[8];
      a1[8] = v51;

      v53 = OUTLINED_FUNCTION_1_15();
      v55 = v54(v53, 2);
      v56 = a1[9];
      a1[9] = v55;

      v57 = OUTLINED_FUNCTION_1_15();
      v59 = v58(v57, 3);
      v60 = a1[10];
      a1[10] = v59;

      v61 = OUTLINED_FUNCTION_1_15();
      v63 = v62(v61, 5);
      v64 = a1[11];
      a1[11] = v63;

      v65 = OUTLINED_FUNCTION_1_15();
      v67 = v66(v65, 14);
      v68 = a1[12];
      a1[12] = v67;

      v69 = OUTLINED_FUNCTION_1_15();
      v71 = v70(v69, 23);
      v72 = a1[13];
      a1[13] = v71;

      v73 = OUTLINED_FUNCTION_1_15();
      v75 = v74(v73, 17);
      v76 = a1[14];
      a1[14] = v75;

      v77 = OUTLINED_FUNCTION_1_15();
      v79 = v78(v77, 26);
      v80 = a1[15];
      a1[15] = v79;

      v81 = OUTLINED_FUNCTION_1_15();
      v83 = v82(v81, 20);
      v84 = a1[16];
      a1[16] = v83;

      v85 = OUTLINED_FUNCTION_1_15();
      v87 = v86(v85, 16);
      v88 = a1[17];
      a1[17] = v87;

      v89 = OUTLINED_FUNCTION_1_15();
      v91 = v90(v89, 25);
      v92 = a1[18];
      a1[18] = v91;

      v93 = OUTLINED_FUNCTION_1_15();
      v95 = v94(v93, 19);
      v96 = a1[19];
      a1[19] = v95;

      v97 = OUTLINED_FUNCTION_1_15();
      v99 = v98(v97, 28);
      v100 = a1[20];
      a1[20] = v99;

      v101 = OUTLINED_FUNCTION_1_15();
      v103 = v102(v101, 22);
      v104 = a1[21];
      a1[21] = v103;

      v105 = OUTLINED_FUNCTION_1_15();
      v107 = v106(v105, 35);
      v108 = a1[22];
      a1[22] = v107;

      v109 = OUTLINED_FUNCTION_1_15();
      v111 = v110(v109, 36);
      v112 = a1[23];
      a1[23] = v111;

      v113 = OUTLINED_FUNCTION_1_15();
      v115 = v114(v113, 99);
      v116 = a1[24];
      a1[24] = v115;

      v117 = OUTLINED_FUNCTION_1_15();
      v119 = v118(v117, 100);
      v120 = a1[25];
      a1[25] = v119;

      v121 = OUTLINED_FUNCTION_1_15();
      v123 = v122(v121, 101);
      v124 = a1[26];
      a1[26] = v123;

      v125 = OUTLINED_FUNCTION_1_15();
      v127 = v126(v125, 102);
      v128 = a1[27];
      a1[27] = v127;

      v129 = OUTLINED_FUNCTION_1_15();
      v131 = v130(v129, 103);
      v132 = a1[28];
      a1[28] = v131;

      v133 = OUTLINED_FUNCTION_1_15();
      v135 = v134(v133, 108);
      v136 = a1[29];
      a1[29] = v135;

      v137 = OUTLINED_FUNCTION_1_15();
      v139 = v138(v137, 113);
      v140 = a1[30];
      a1[30] = v139;

      v141 = OUTLINED_FUNCTION_1_15();
      v143 = v142(v141, 109);
      v144 = a1[31];
      a1[31] = v143;

      v145 = OUTLINED_FUNCTION_1_15();
      v147 = v146(v145, 110);
      v148 = a1[32];
      a1[32] = v147;

      v149 = OUTLINED_FUNCTION_1_15();
      v151 = v150(v149, 112);
      v152 = a1[33];
      a1[33] = v151;

      v153 = v34[2](v34, 4);
      v154 = a1[34];
      a1[34] = v153;

      v155 = OUTLINED_FUNCTION_0_30();
      v157 = v156(v155, 37);
      v158 = a1[35];
      a1[35] = v157;

      v159 = OUTLINED_FUNCTION_0_30();
      v161 = v160(v159, 42);
      v162 = a1[36];
      a1[36] = v161;

      v163 = OUTLINED_FUNCTION_0_30();
      v165 = v164(v163, 43);
      v166 = a1[37];
      a1[37] = v165;

      v167 = OUTLINED_FUNCTION_0_30();
      v169 = v168(v167, 44);
      v170 = a1[38];
      a1[38] = v169;

      v171 = OUTLINED_FUNCTION_0_30();
      v173 = v172(v171, 45);
      v174 = a1[39];
      a1[39] = v173;

      v175 = OUTLINED_FUNCTION_0_30();
      v177 = v176(v175, 46);
      v178 = a1[40];
      a1[40] = v177;

      v179 = OUTLINED_FUNCTION_0_30();
      v181 = v180(v179, 47);
      v182 = a1[41];
      a1[41] = v181;

      v183 = OUTLINED_FUNCTION_0_30();
      v185 = v184(v183, 48);
      v186 = a1[42];
      a1[42] = v185;

      v187 = OUTLINED_FUNCTION_0_30();
      v189 = v188(v187, 50);
      v190 = a1[43];
      a1[43] = v189;

      v191 = OUTLINED_FUNCTION_0_30();
      v193 = v192(v191, 51);
      v194 = a1[44];
      a1[44] = v193;

      v195 = OUTLINED_FUNCTION_0_30();
      v197 = v196(v195, 61);
      v198 = a1[45];
      a1[45] = v197;

      v199 = OUTLINED_FUNCTION_0_30();
      v201 = v200(v199, 52);
      v202 = a1[46];
      a1[46] = v201;

      v203 = OUTLINED_FUNCTION_0_30();
      v205 = v204(v203, 53);
      v206 = a1[47];
      a1[47] = v205;

      v207 = OUTLINED_FUNCTION_0_30();
      v209 = v208(v207, 54);
      v210 = a1[48];
      a1[48] = v209;

      v211 = OUTLINED_FUNCTION_0_30();
      v213 = v212(v211, 55);
      v214 = a1[49];
      a1[49] = v213;

      v215 = OUTLINED_FUNCTION_0_30();
      v217 = v216(v215, 56);
      v218 = a1[50];
      a1[50] = v217;

      v219 = OUTLINED_FUNCTION_0_30();
      v221 = v220(v219, 57);
      v222 = a1[51];
      a1[51] = v221;

      v223 = OUTLINED_FUNCTION_0_30();
      v225 = v224(v223, 58);
      v226 = a1[52];
      a1[52] = v225;

      v227 = OUTLINED_FUNCTION_0_30();
      v229 = v228(v227, 59);
      v230 = a1[53];
      a1[53] = v229;

      v231 = OUTLINED_FUNCTION_0_30();
      v233 = v232(v231, 60);
      v234 = a1[54];
      a1[54] = v233;

      v235 = OUTLINED_FUNCTION_0_30();
      v237 = v236(v235, 87);
      v238 = a1[55];
      a1[55] = v237;

      v239 = OUTLINED_FUNCTION_0_30();
      v241 = v240(v239, 29);
      v242 = a1[56];
      a1[56] = v241;

      v243 = OUTLINED_FUNCTION_0_30();
      v245 = v244(v243, 38);
      v246 = a1[57];
      a1[57] = v245;

      v247 = OUTLINED_FUNCTION_0_30();
      v249 = v248(v247, 31);
      v250 = a1[58];
      a1[58] = v249;

      v251 = OUTLINED_FUNCTION_0_30();
      v253 = v252(v251, 39);
      v254 = a1[59];
      a1[59] = v253;

      v255 = OUTLINED_FUNCTION_0_30();
      v257 = v256(v255, 33);
      v258 = a1[60];
      a1[60] = v257;

      v259 = OUTLINED_FUNCTION_0_30();
      v261 = v260(v259, 34);
      v262 = a1[61];
      a1[61] = v261;

      v263 = OUTLINED_FUNCTION_0_30();
      v265 = v264(v263, 40);
      v266 = a1[62];
      a1[62] = v265;

      v267 = OUTLINED_FUNCTION_0_30();
      v269 = v268(v267, 49);
      v270 = a1[63];
      a1[63] = v269;

      v271 = OUTLINED_FUNCTION_0_30();
      v273 = v272(v271, 94);
      v274 = a1[64];
      a1[64] = v273;

      v275 = OUTLINED_FUNCTION_0_30();
      v277 = v276(v275, 32);
      v278 = a1[65];
      a1[65] = v277;

      v279 = OUTLINED_FUNCTION_0_30();
      v281 = v280(v279, 62);
      v282 = a1[66];
      a1[66] = v281;

      v283 = OUTLINED_FUNCTION_0_30();
      v285 = v284(v283, 63);
      v286 = a1[67];
      a1[67] = v285;

      v287 = OUTLINED_FUNCTION_0_30();
      v289 = v288(v287, 64);
      v290 = a1[68];
      a1[68] = v289;

      v291 = OUTLINED_FUNCTION_0_30();
      v293 = v292(v291, 65);
      v294 = a1[69];
      a1[69] = v293;

      v295 = OUTLINED_FUNCTION_0_30();
      v297 = v296(v295, 66);
      v298 = a1[70];
      a1[70] = v297;

      v299 = OUTLINED_FUNCTION_0_30();
      v301 = v300(v299, 67);
      v302 = a1[71];
      a1[71] = v301;

      v303 = OUTLINED_FUNCTION_0_30();
      v305 = v304(v303, 68);
      v306 = a1[72];
      a1[72] = v305;

      v307 = OUTLINED_FUNCTION_0_30();
      v309 = v308(v307, 69);
      v310 = a1[73];
      a1[73] = v309;

      v311 = OUTLINED_FUNCTION_0_30();
      v313 = v312(v311, 70);
      v314 = a1[74];
      a1[74] = v313;

      v315 = OUTLINED_FUNCTION_0_30();
      v317 = v316(v315, 71);
      v318 = a1[75];
      a1[75] = v317;

      v319 = OUTLINED_FUNCTION_0_30();
      v321 = v320(v319, 72);
      v322 = a1[76];
      a1[76] = v321;

      v323 = OUTLINED_FUNCTION_0_30();
      v325 = v324(v323, 73);
      v326 = a1[77];
      a1[77] = v325;

      v327 = OUTLINED_FUNCTION_0_30();
      v329 = v328(v327, 74);
      v330 = a1[78];
      a1[78] = v329;

      v331 = OUTLINED_FUNCTION_0_30();
      v333 = v332(v331, 88);
      v334 = a1[79];
      a1[79] = v333;

      v335 = OUTLINED_FUNCTION_0_30();
      v337 = v336(v335, 75);
      v338 = a1[80];
      a1[80] = v337;

      v339 = OUTLINED_FUNCTION_0_30();
      v341 = v340(v339, 76);
      v342 = a1[81];
      a1[81] = v341;

      v343 = OUTLINED_FUNCTION_0_30();
      v345 = v344(v343, 77);
      v346 = a1[82];
      a1[82] = v345;

      v347 = OUTLINED_FUNCTION_0_30();
      v349 = v348(v347, 78);
      v350 = a1[83];
      a1[83] = v349;

      v351 = OUTLINED_FUNCTION_0_30();
      v353 = v352(v351, 79);
      v354 = a1[84];
      a1[84] = v353;

      v355 = OUTLINED_FUNCTION_0_30();
      v357 = v356(v355, 80);
      v358 = a1[85];
      a1[85] = v357;

      v359 = OUTLINED_FUNCTION_0_30();
      v361 = v360(v359, 81);
      v362 = a1[86];
      a1[86] = v361;

      v363 = OUTLINED_FUNCTION_0_30();
      v365 = v364(v363, 82);
      v366 = a1[87];
      a1[87] = v365;

      v367 = OUTLINED_FUNCTION_0_30();
      v369 = v368(v367, 83);
      v370 = a1[88];
      a1[88] = v369;

      v371 = OUTLINED_FUNCTION_0_30();
      v373 = v372(v371, 84);
      v374 = a1[89];
      a1[89] = v373;

      v375 = OUTLINED_FUNCTION_0_30();
      v377 = v376(v375, 85);
      v378 = a1[90];
      a1[90] = v377;

      v379 = OUTLINED_FUNCTION_0_30();
      v381 = v380(v379, 86);
      v382 = a1[91];
      a1[91] = v381;

      v383 = OUTLINED_FUNCTION_0_30();
      v385 = v384(v383, 89);
      v386 = a1[92];
      a1[92] = v385;

      v387 = OUTLINED_FUNCTION_0_30();
      v389 = v388(v387, 95);
      v390 = a1[93];
      a1[93] = v389;

      v391 = OUTLINED_FUNCTION_0_30();
      v393 = v392(v391, 96);
      v394 = a1[94];
      a1[94] = v393;

      v395 = OUTLINED_FUNCTION_0_30();
      v397 = v396(v395, 97);
      v398 = a1[100];
      a1[100] = v397;

      v399 = OUTLINED_FUNCTION_0_30();
      v401 = v400(v399, 98);
      v402 = a1[101];
      a1[101] = v401;

      v403 = OUTLINED_FUNCTION_0_30();
      v405 = v404(v403, 104);
      v406 = a1[95];
      a1[95] = v405;

      v407 = OUTLINED_FUNCTION_0_30();
      v409 = v408(v407, 105);
      v410 = a1[96];
      a1[96] = v409;

      v411 = OUTLINED_FUNCTION_0_30();
      v413 = v412(v411, 106);
      v414 = a1[97];
      a1[97] = v413;

      v415 = OUTLINED_FUNCTION_0_30();
      v417 = v416(v415, 107);
      v418 = a1[98];
      a1[98] = v417;

      v419 = OUTLINED_FUNCTION_0_30();
      v421 = v420(v419, 111);
      v14 = v434;
      v422 = a1[99];
      a1[99] = v421;

      v423 = [v432 copy];
      v424 = a1[103];
      a1[103] = v423;

      v425 = [v432 allValues];
      v426 = a1[102];
      a1[102] = v425;

      v427 = [v33 copy];
      v428 = a1[105];
      a1[105] = v427;

      v429 = [v33 allValues];
      v430 = a1[104];
      a1[104] = v429;
    }
  }

  return a1;
}

- (void)allHistograms
{
  v1 = a1;
  if (a1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:a1[102]];
    v1 = [v2 arrayByAddingObjectsFromArray:v1[104]];
  }

  return v1;
}

- (void)verifyHistograms
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(ATXPredictionDataHistograms *)self allHistograms];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) verifyDataIntegrity];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end