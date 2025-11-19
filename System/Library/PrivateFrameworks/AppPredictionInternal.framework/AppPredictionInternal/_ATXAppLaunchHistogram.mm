@interface _ATXAppLaunchHistogram
- (BOOL)bundleHasBeenLaunched:(id)a3;
- (BOOL)removeHistoryForBundleId:(id)a3;
- (NSString)description;
- (_ATXAppLaunchHistogram)initWithCoder:(id)a3;
- (_ATXAppLaunchHistogram)initWithType:(int64_t)a3;
- (double)averageLaunchesPerBundleId:(id)a3;
- (double)entropy;
- (double)entropyForBundleId:(id)a3;
- (double)entropyForDate:(id)a3;
- (double)launchPopularityWithBundleId:(id)a3 date:(id)a4;
- (double)overallLaunchPopularityForBundleId:(id)a3;
- (double)relativeLaunchPopularityWithBundleId:(id)a3 date:(id)a4;
- (double)relativeLaunchPopularityWithBundleId:(id)a3 date:(id)a4 distanceScale:(float)a5;
- (double)relativeLaunchPopularityWithBundleId:(id)a3 elapsedTime:(double)a4 distanceScale:(float)a5;
- (double)totalLaunches;
- (double)totalLaunchesForBundleIds:(id)a3;
- (double)totalLaunchesForBundleIds:(id)a3 forDate:(id)a4 distanceScale:(float)a5;
- (double)totalTimeOfDayLaunchesForDate:(id)a3;
- (double)totalTimeOfDayLaunchesForDate:(id)a3 distanceScale:(float)a4;
- (double)totalTimeOfDayLaunchesForElapsedTime:(double)a3;
- (double)totalTimeOfDayLaunchesForElapsedTime:(double)a3 distanceScale:(float)a4;
- (double)unsmoothedLaunchesForBundleIds:(id)a3 forLocalTime:(unsigned __int16)a4;
- (int)removeHistoryForBundleIds:(id)a3;
- (unsigned)_eventIdforBundleId:(id)a3;
- (unsigned)_localTimeWithDate:(id)a3 timeZone:(id)a4;
- (unsigned)bucketCount;
- (void)_addLaunchWithBundleId:(id)a3 date:(id)a4 timeZone:(id)a5 arbitraryWeight:(float)a6;
- (void)addLaunchWithBundleId:(id)a3 elapsedTime:(double)a4 weight:(float)a5;
- (void)dealloc;
- (void)decayByFactor:(double)a3;
- (void)decayWithHalfLifeInDays:(double)a3;
- (void)encodeWithCoder:(id)a3;
- (void)resetHistogram:(id)a3;
@end

@implementation _ATXAppLaunchHistogram

- (void)dealloc
{
  pthread_mutex_destroy(&self->_prevLocaltimeLock);
  v3.receiver = self;
  v3.super_class = _ATXAppLaunchHistogram;
  [(_ATXAppLaunchHistogram *)&v3 dealloc];
}

- (_ATXAppLaunchHistogram)initWithType:(int64_t)a3
{
  v3 = self;
  v4 = 0;
  v5 = 1;
  v6 = 86400;
  switch(a3)
  {
    case 0:
    case 1:
      v5 = 200;
      goto LABEL_6;
    case 2:
    case 17:
    case 19:
    case 100:
    case 110:
      v4 = 0;
      v6 = 604800;
      v5 = 7;
      goto LABEL_7;
    case 4:
      v342 = __atxlog_handle_default();
      if (os_log_type_enabled(v342, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v342 initWithType:v343, v344, v345, v346, v347, v348, v349];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeWifiAppLaunch";
      goto LABEL_258;
    case 6:
      v358 = __atxlog_handle_default();
      if (os_log_type_enabled(v358, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v358 initWithType:v359, v360, v361, v362, v363, v364, v365];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_APRHistogramTypeAppIntentExplicitConfirms";
      goto LABEL_258;
    case 7:
      v230 = __atxlog_handle_default();
      if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v230 initWithType:v231, v232, v233, v234, v235, v236, v237];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_APRHistogramTypeAppIntentExplicitRejects";
      goto LABEL_258;
    case 8:
      v406 = __atxlog_handle_default();
      if (os_log_type_enabled(v406, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchHistogram initWithType:];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v407 = @"_APRHistogramTypeAppIntentDonation is deprecated.";
      goto LABEL_259;
    case 9:
      v326 = __atxlog_handle_default();
      if (os_log_type_enabled(v326, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v326 initWithType:v327, v328, v329, v330, v331, v332, v333];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_APRHistogramTypeAppIntentImplicitConfirms";
      goto LABEL_258;
    case 10:
      v398 = __atxlog_handle_default();
      if (os_log_type_enabled(v398, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v398 initWithType:v399, v400, v401, v402, v403, v404, v405];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_APRHistogramTypeAppIntentImplicitRejects";
      goto LABEL_258;
    case 11:
    case 23:
    case 25:
    case 101:
      v6 = 7200;
      v5 = 240;
      goto LABEL_6;
    case 12:
      v254 = __atxlog_handle_default();
      if (os_log_type_enabled(v254, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v254 initWithType:v255, v256, v257, v258, v259, v260, v261];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_APRHistogramTypeAppIntentSiriKitDonation";
      goto LABEL_258;
    case 13:
      v424 = __atxlog_handle_default();
      if (os_log_type_enabled(v424, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v424 initWithType:v425, v426, v427, v428, v429, v430, v431];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_APRHistogramTypeAppIntentNonSiriKitDonation";
      goto LABEL_258;
    case 14:
    case 16:
    case 99:
    case 109:
      v5 = 100;
LABEL_6:
      v4 = 1;
      goto LABEL_7;
    case 15:
      v214 = __atxlog_handle_default();
      if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v214 initWithType:v215, v216, v217, v218, v219, v220, v221];
      }

      v163 = MEMORY[0x277CBEAD8];
      v164 = *MEMORY[0x277CBE658];
      v165 = @"_ATXHistogramTypeIntentForAllAppsLaunch";
      goto LABEL_164;
    case 18:
      v310 = __atxlog_handle_default();
      if (os_log_type_enabled(v310, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v310 initWithType:v311, v312, v313, v314, v315, v316, v317];
      }

      v163 = MEMORY[0x277CBEAD8];
      v164 = *MEMORY[0x277CBE658];
      v165 = @"_ATXHistogramTypeIntentForAllAppsDayOfWeek";
      goto LABEL_164;
    case 21:
      v238 = __atxlog_handle_default();
      if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v238 initWithType:v239, v240, v241, v242, v243, v244, v245];
      }

      v163 = MEMORY[0x277CBEAD8];
      v164 = *MEMORY[0x277CBE658];
      v165 = @"_ATXHistogramTypeIntentForAllAppsTrendingLaunch";
      goto LABEL_164;
    case 24:
      v174 = __atxlog_handle_default();
      if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v174 initWithType:v175, v176, v177, v178, v179, v180, v181];
      }

      v163 = MEMORY[0x277CBEAD8];
      v164 = *MEMORY[0x277CBE658];
      v165 = @"_ATXHistogramTypeIntentForAllAppsUnlockTime";
      goto LABEL_164;
    case 27:
      v155 = __atxlog_handle_default();
      if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v155 initWithType:v156, v157, v158, v159, v160, v161, v162];
      }

      v163 = MEMORY[0x277CBEAD8];
      v164 = *MEMORY[0x277CBE658];
      v165 = @"_ATXHistogramTypeIntentForAllAppsAirplaneModeLaunch";
      goto LABEL_164;
    case 29:
      v374 = __atxlog_handle_default();
      if (os_log_type_enabled(v374, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v374 initWithType:v375, v376, v377, v378, v379, v380, v381];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppIntentWifiLaunch";
      goto LABEL_258;
    case 30:
      v416 = __atxlog_handle_default();
      if (os_log_type_enabled(v416, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v416 initWithType:v417, v418, v419, v420, v421, v422, v423];
      }

      v163 = MEMORY[0x277CBEAD8];
      v164 = *MEMORY[0x277CBE658];
      v165 = @"_ATXHistogramTypeIntentForAllAppsWifiLaunch";
LABEL_164:
      [v163 raise:v164 format:{@"%@ is deprecated.", v165}];
      goto LABEL_260;
    case 31:
      v496 = __atxlog_handle_default();
      if (os_log_type_enabled(v496, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v496 initWithType:v497, v498, v499, v500, v501, v502, v503];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppForAllIntentsWifiLaunch";
      goto LABEL_258;
    case 32:
      v480 = __atxlog_handle_default();
      if (os_log_type_enabled(v480, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v480 initWithType:v481, v482, v483, v484, v485, v486, v487];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeNotifications";
      goto LABEL_258;
    case 33:
      v262 = __atxlog_handle_default();
      if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v262 initWithType:v263, v264, v265, v266, v267, v268, v269];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeActionsConfirms";
      goto LABEL_258;
    case 34:
      v472 = __atxlog_handle_default();
      if (os_log_type_enabled(v472, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v472 initWithType:v473, v474, v475, v476, v477, v478, v479];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeActionsRejects";
      goto LABEL_258;
    case 37:
      v123 = __atxlog_handle_default();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v123 initWithType:v124, v125, v126, v127, v128, v129, v130];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeCoreMotionLaunch";
      goto LABEL_258;
    case 38:
      v278 = __atxlog_handle_default();
      if (os_log_type_enabled(v278, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v278 initWithType:v279, v280, v281, v282, v283, v284, v285];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppIntentCoreMotionLaunch";
      goto LABEL_258;
    case 39:
      v408 = __atxlog_handle_default();
      if (os_log_type_enabled(v408, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v408 initWithType:v409, v410, v411, v412, v413, v414, v415];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppForAllIntentsCoreMotionLaunch";
      goto LABEL_258;
    case 40:
      v115 = __atxlog_handle_default();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v115 initWithType:v116, v117, v118, v119, v120, v121, v122];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypePartOfWeek";
      goto LABEL_258;
    case 41:
      v440 = __atxlog_handle_default();
      if (os_log_type_enabled(v440, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v440 initWithType:v441, v442, v443, v444, v445, v446, v447];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAmbientLight";
      goto LABEL_258;
    case 42:
      v448 = __atxlog_handle_default();
      if (os_log_type_enabled(v448, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v448 initWithType:v449, v450, v451, v452, v453, v454, v455];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeTimeOfDayAndDayOfWeek";
      goto LABEL_258;
    case 43:
      v83 = __atxlog_handle_default();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v83 initWithType:v84, v85, v86, v87, v88, v89, v90];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppCoarseTimePOWLocationLaunches";
      goto LABEL_258;
    case 44:
      v107 = __atxlog_handle_default();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v107 initWithType:v108, v109, v110, v111, v112, v113, v114];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppSpecificTimeDOWLocationLaunches";
      goto LABEL_258;
    case 45:
      v198 = __atxlog_handle_default();
      if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v198 initWithType:v199, v200, v201, v202, v203, v204, v205];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppCoarseTimePOWLocationConfirms";
      goto LABEL_258;
    case 46:
      v432 = __atxlog_handle_default();
      if (os_log_type_enabled(v432, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v432 initWithType:v433, v434, v435, v436, v437, v438, v439];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppSpecificTimeDOWLocationConfirms";
      goto LABEL_258;
    case 47:
      v560 = __atxlog_handle_default();
      if (os_log_type_enabled(v560, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v560 initWithType:v561, v562, v563, v564, v565, v566, v567];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppCoarseTimePOWLocationRejects";
      goto LABEL_258;
    case 48:
      v131 = __atxlog_handle_default();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v131 initWithType:v132, v133, v134, v135, v136, v137, v138];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppSpecificTimeDOWLocationRejects";
      goto LABEL_258;
    case 49:
      v147 = __atxlog_handle_default();
      if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v147 initWithType:v148, v149, v150, v151, v152, v153, v154];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppClipsAndHeroApp";
      goto LABEL_258;
    case 50:
      v382 = __atxlog_handle_default();
      if (os_log_type_enabled(v382, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v382 initWithType:v383, v384, v385, v386, v387, v388, v389];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppSpecificLocation";
      goto LABEL_258;
    case 51:
      v139 = __atxlog_handle_default();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v139 initWithType:v140, v141, v142, v143, v144, v145, v146];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppCoarseLocation";
      goto LABEL_258;
    case 52:
      v552 = __atxlog_handle_default();
      if (os_log_type_enabled(v552, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v552 initWithType:v553, v554, v555, v556, v557, v558, v559];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppLaunchesTwoHourTimeInterval";
      goto LABEL_258;
    case 53:
      v536 = __atxlog_handle_default();
      if (os_log_type_enabled(v536, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v536 initWithType:v537, v538, v539, v540, v541, v542, v543];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppConfirmsTwoHourTimeInterval";
      goto LABEL_258;
    case 54:
      v488 = __atxlog_handle_default();
      if (os_log_type_enabled(v488, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v488 initWithType:v489, v490, v491, v492, v493, v494, v495];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppRejectsTwoHourTimeInterval";
      goto LABEL_258;
    case 55:
      v366 = __atxlog_handle_default();
      if (os_log_type_enabled(v366, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v366 initWithType:v367, v368, v369, v370, v371, v372, v373];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppConfirmsDayOfWeek";
      goto LABEL_258;
    case 56:
      v576 = __atxlog_handle_default();
      if (os_log_type_enabled(v576, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v576 initWithType:v577, v578, v579, v580, v581, v582, v583];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppRejectsDayOfWeek";
      goto LABEL_258;
    case 57:
      v206 = __atxlog_handle_default();
      if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v206 initWithType:v207, v208, v209, v210, v211, v212, v213];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppConfirmsCoarseGeoHash";
      goto LABEL_258;
    case 58:
      v246 = __atxlog_handle_default();
      if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v246 initWithType:v247, v248, v249, v250, v251, v252, v253];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppRejectsCoarseGeoHash";
      goto LABEL_258;
    case 59:
      v600 = __atxlog_handle_default();
      if (os_log_type_enabled(v600, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v600 initWithType:v601, v602, v603, v604, v605, v606, v607];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppConfirmsSpecificGeoHash";
      goto LABEL_258;
    case 60:
      v318 = __atxlog_handle_default();
      if (os_log_type_enabled(v318, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v318 initWithType:v319, v320, v321, v322, v323, v324, v325];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppRejectsSpecificGeoHash";
      goto LABEL_258;
    case 61:
      v286 = __atxlog_handle_default();
      if (os_log_type_enabled(v286, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v286 initWithType:v287, v288, v289, v290, v291, v292, v293];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppZoom7GeoHash";
      goto LABEL_258;
    case 62:
      v544 = __atxlog_handle_default();
      if (os_log_type_enabled(v544, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v544 initWithType:v545, v546, v547, v548, v549, v550, v551];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenWidgetInteractions";
      goto LABEL_258;
    case 63:
      v456 = __atxlog_handle_default();
      if (os_log_type_enabled(v456, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v456 initWithType:v457, v458, v459, v460, v461, v462, v463];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppConfirmsCoarseTimePOWLocation";
      goto LABEL_258;
    case 64:
      v512 = __atxlog_handle_default();
      if (os_log_type_enabled(v512, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v512 initWithType:v513, v514, v515, v516, v517, v518, v519];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppConfirmsSpecificTimeDOWLocation";
      goto LABEL_258;
    case 65:
      v294 = __atxlog_handle_default();
      if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v294 initWithType:v295, v296, v297, v298, v299, v300, v301];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppConfirmsTwoHourTimeInterval";
      goto LABEL_258;
    case 66:
      v302 = __atxlog_handle_default();
      if (os_log_type_enabled(v302, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v302 initWithType:v303, v304, v305, v306, v307, v308, v309];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppConfirmsDayOfWeek";
      goto LABEL_258;
    case 67:
      v99 = __atxlog_handle_default();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v99 initWithType:v100, v101, v102, v103, v104, v105, v106];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppConfirmsCoarseGeohash";
      goto LABEL_258;
    case 68:
      v390 = __atxlog_handle_default();
      if (os_log_type_enabled(v390, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v390 initWithType:v391, v392, v393, v394, v395, v396, v397];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppConfirmsSpecificGeohash";
      goto LABEL_258;
    case 69:
      v592 = __atxlog_handle_default();
      if (os_log_type_enabled(v592, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v592 initWithType:v593, v594, v595, v596, v597, v598, v599];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppRejectsCoarseTimePOWLocation";
      goto LABEL_258;
    case 70:
      v464 = __atxlog_handle_default();
      if (os_log_type_enabled(v464, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v464 initWithType:v465, v466, v467, v468, v469, v470, v471];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppRejectsSpecificTimeDOWLocation";
      goto LABEL_258;
    case 71:
      v504 = __atxlog_handle_default();
      if (os_log_type_enabled(v504, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v504 initWithType:v505, v506, v507, v508, v509, v510, v511];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppRejectsTwoHourTimeInterval";
      goto LABEL_258;
    case 72:
      v182 = __atxlog_handle_default();
      if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v182 initWithType:v183, v184, v185, v186, v187, v188, v189];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppRejectsDayOfWeek";
      goto LABEL_258;
    case 73:
      v520 = __atxlog_handle_default();
      if (os_log_type_enabled(v520, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v520 initWithType:v521, v522, v523, v524, v525, v526, v527];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppRejectsCoarseGeohash";
      goto LABEL_258;
    case 74:
      v334 = __atxlog_handle_default();
      if (os_log_type_enabled(v334, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v334 initWithType:v335, v336, v337, v338, v339, v340, v341];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppRejectsSpecificGeohash";
      goto LABEL_258;
    case 75:
      v624 = __atxlog_handle_default();
      if (os_log_type_enabled(v624, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v624 initWithType:v625, v626, v627, v628, v629, v630, v631];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryConfirmsCoarseTimePOWLocation";
      goto LABEL_258;
    case 76:
      v91 = __atxlog_handle_default();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v91 initWithType:v92, v93, v94, v95, v96, v97, v98];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryConfirmsSpecificTimeDOWLocation";
      goto LABEL_258;
    case 77:
      v222 = __atxlog_handle_default();
      if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v222 initWithType:v223, v224, v225, v226, v227, v228, v229];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryConfirmsTwoHourTimeInterval";
      goto LABEL_258;
    case 78:
      v51 = __atxlog_handle_default();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v51 initWithType:v52, v53, v54, v55, v56, v57, v58];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryConfirmsDayOfWeek";
      goto LABEL_258;
    case 79:
      v584 = __atxlog_handle_default();
      if (os_log_type_enabled(v584, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v584 initWithType:v585, v586, v587, v588, v589, v590, v591];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryConfirmsCoarseGeohash";
      goto LABEL_258;
    case 80:
      v640 = __atxlog_handle_default();
      if (os_log_type_enabled(v640, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v640 initWithType:v641, v642, v643, v644, v645, v646, v647];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryConfirmsSpecificGeohash";
      goto LABEL_258;
    case 81:
      v166 = __atxlog_handle_default();
      if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v166 initWithType:v167, v168, v169, v170, v171, v172, v173];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryRejectsCoarseTimePOWLocation";
      goto LABEL_258;
    case 82:
      v616 = __atxlog_handle_default();
      if (os_log_type_enabled(v616, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v616 initWithType:v617, v618, v619, v620, v621, v622, v623];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryRejectsSpecificTimeDOWLocation";
      goto LABEL_258;
    case 83:
      v19 = __atxlog_handle_default();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v19 initWithType:v20, v21, v22, v23, v24, v25, v26];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryRejectsTwoHourTimeInterval";
      goto LABEL_258;
    case 84:
      v75 = __atxlog_handle_default();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v75 initWithType:v76, v77, v78, v79, v80, v81, v82];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryRejectsDayOfWeek";
      goto LABEL_258;
    case 85:
      v270 = __atxlog_handle_default();
      if (os_log_type_enabled(v270, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v270 initWithType:v271, v272, v273, v274, v275, v276, v277];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryRejectsCoarseGeohash";
      goto LABEL_258;
    case 86:
      v35 = __atxlog_handle_default();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v35 initWithType:v36, v37, v38, v39, v40, v41, v42];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryRejectsSpecificGeohash";
      goto LABEL_258;
    case 87:
      v67 = __atxlog_handle_default();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v67 initWithType:v68, v69, v70, v71, v72, v73, v74];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppExplicitRejectsCoarseTimePOWLocation";
      goto LABEL_258;
    case 88:
      v648 = __atxlog_handle_default();
      if (os_log_type_enabled(v648, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v648 initWithType:v649, v650, v651, v652, v653, v654, v655];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeHomeScreenAppExplicitRejectsCoarseTimePOWLocation";
      goto LABEL_258;
    case 89:
      v528 = __atxlog_handle_default();
      if (os_log_type_enabled(v528, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v528 initWithType:v529, v530, v531, v532, v533, v534, v535];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppDirectoryExplicitRejectsCoarseTimePOWLocation";
      goto LABEL_258;
    case 94:
      v190 = __atxlog_handle_default();
      if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v190 initWithType:v191, v192, v193, v194, v195, v196, v197];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeAppClipsAndHeroAppNoDecay";
      goto LABEL_258;
    case 95:
      v43 = __atxlog_handle_default();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v43 initWithType:v44, v45, v46, v47, v48, v49, v50];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypePOICategory";
      goto LABEL_258;
    case 96:
      v350 = __atxlog_handle_default();
      if (os_log_type_enabled(v350, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v350 initWithType:v351, v352, v353, v354, v355, v356, v357];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeActivitySuggestionsFeedback";
      goto LABEL_258;
    case 97:
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v8 initWithType:v9, v10, v11, v12, v13, v14, v15];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeNotificationDigestAppEngagement";
      goto LABEL_258;
    case 98:
      v608 = __atxlog_handle_default();
      if (os_log_type_enabled(v608, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v608 initWithType:v609, v610, v611, v612, v613, v614, v615];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeNotificationDigestAlltimeMarqueeAppearances";
      goto LABEL_258;
    case 104:
      v656 = __atxlog_handle_default();
      if (os_log_type_enabled(v656, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v656 initWithType:v657, v658, v659, v660, v661, v662, v663];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeDocumentWifiOpen";
      goto LABEL_258;
    case 105:
      v27 = __atxlog_handle_default();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v27 initWithType:v28, v29, v30, v31, v32, v33, v34];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeDocumentCoreMotionOpen";
      goto LABEL_258;
    case 106:
      v59 = __atxlog_handle_default();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v59 initWithType:v60, v61, v62, v63, v64, v65, v66];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeDocumentPartOfWeek";
      goto LABEL_258;
    case 107:
      v664 = __atxlog_handle_default();
      if (os_log_type_enabled(v664, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v664 initWithType:v665, v666, v667, v668, v669, v670, v671];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeDocumentAmbientLight";
      goto LABEL_258;
    case 111:
      v568 = __atxlog_handle_default();
      if (os_log_type_enabled(v568, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v568 initWithType:v569, v570, v571, v572, v573, v574, v575];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeDocumentCategoryPartOfWeek";
      goto LABEL_258;
    case 114:
      v632 = __atxlog_handle_default();
      if (os_log_type_enabled(v632, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v632 initWithType:v633, v634, v635, v636, v637, v638, v639];
      }

      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE658];
      v18 = @"_ATXHistogramTypeMax";
LABEL_258:
      v673 = v18;
      v407 = @"%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.";
LABEL_259:
      [v16 raise:v17 format:{v407, v673}];
LABEL_260:
      v7 = 0;
      break;
    default:
LABEL_7:
      v3 = [(_ATXAppLaunchHistogram *)self initWithHistogram:0 bucketCount:v5 filter:v4 timeBase:v6];
      v7 = v3;
      break;
  }

  return v7;
}

- (unsigned)_localTimeWithDate:(id)a3 timeZone:(id)a4
{
  v7 = a3;
  v8 = a4;
  pthread_mutex_lock(&self->_prevLocaltimeLock);
  prevDate = self->_prevDate;
  if (prevDate && (prevDate == v7 || [(NSDate *)v7 isEqualToDate:?]) && (self->_prevTimeZone == v8 || [(NSTimeZone *)v8 isEqualToTimeZone:?]))
  {
    LOWORD(v10) = self->_prevLocaltime;
    pthread_mutex_unlock(&self->_prevLocaltimeLock);
  }

  else
  {
    pthread_mutex_unlock(&self->_prevLocaltimeLock);
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v11 = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = v11;
    if (v8)
    {
      [v11 setTimeZone:v8];
    }

    v13 = [v12 component:512 fromDate:v7];
    [v12 getHour:&v17 minute:&v16 second:&v15 nanosecond:0 fromDate:v7];
    v10 = (3600 * v17 + 86400 * v13 + 60 * v16 + v15 - 86400) % self->_timeBase / self->_secondsPerLocaltimeInterval;
    pthread_mutex_lock(&self->_prevLocaltimeLock);
    self->_prevLocaltime = v10;
    objc_storeStrong(&self->_prevDate, a3);
    objc_storeStrong(&self->_prevTimeZone, a4);
    pthread_mutex_unlock(&self->_prevLocaltimeLock);
  }

  return v10;
}

- (unsigned)_eventIdforBundleId:(id)a3
{
  v3 = a3;
  v4 = +[ATXHistogramBundleIdTable sharedInstance];
  v5 = [v4 intern:v3];

  return v5;
}

- (void)_addLaunchWithBundleId:(id)a3 date:(id)a4 timeZone:(id)a5 arbitraryWeight:(float)a6
{
  v11 = a4;
  v12 = a5;
  if (a3)
  {
    v13 = [(_ATXAppLaunchHistogram *)self _eventIdforBundleId:a3];
    v14 = [(_ATXAppLaunchHistogram *)self _localTimeWithDate:v11 timeZone:v12];
    lock = self->_lock;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79___ATXAppLaunchHistogram__addLaunchWithBundleId_date_timeZone_arbitraryWeight___block_invoke;
    v17[3] = &__block_descriptor_40_e28_v16__0__ATXGuardedHistData_8l;
    v18 = a6;
    v19 = v13;
    v20 = v14;
    [(_PASLock *)lock runWithLockAcquired:v17];
  }

  else
  {
    v16 = __atxlog_handle_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchHistogram _addLaunchWithBundleId:a2 date:? timeZone:? arbitraryWeight:?];
    }
  }
}

- (void)addLaunchWithBundleId:(id)a3 elapsedTime:(double)a4 weight:(float)a5
{
  v9 = a3;
  if (v9)
  {
    if (a5 >= 0.0 && a5 <= 1.0)
    {
      v12 = [(_ATXAppLaunchHistogram *)self _eventIdforBundleId:v9];
      v13 = a4 % self->_timeBase;
      secondsPerLocaltimeInterval = self->_secondsPerLocaltimeInterval;
      lock = self->_lock;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __67___ATXAppLaunchHistogram_addLaunchWithBundleId_elapsedTime_weight___block_invoke;
      v16[3] = &__block_descriptor_40_e28_v16__0__ATXGuardedHistData_8l;
      v17 = a5;
      v18 = v12;
      v19 = v13 / secondsPerLocaltimeInterval;
      [(_PASLock *)lock runWithLockAcquired:v16];
      goto LABEL_12;
    }

    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchHistogram addLaunchWithBundleId:date:timeZone:weight:];
    }
  }

  else
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchHistogram _addLaunchWithBundleId:a2 date:? timeZone:? arbitraryWeight:?];
    }
  }

LABEL_12:
}

- (void)resetHistogram:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41___ATXAppLaunchHistogram_resetHistogram___block_invoke;
  v7[3] = &unk_27859B610;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (BOOL)removeHistoryForBundleId:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    lock = self->_lock;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51___ATXAppLaunchHistogram_removeHistoryForBundleId___block_invoke;
    v11[3] = &unk_27859B638;
    v12 = v5;
    v13 = &v14;
    [(_PASLock *)lock runWithLockAcquired:v11];
    v8 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchHistogram _addLaunchWithBundleId:a2 date:? timeZone:? arbitraryWeight:?];
    }

    v8 = 0;
  }

  return v8 & 1;
}

- (int)removeHistoryForBundleIds:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52___ATXAppLaunchHistogram_removeHistoryForBundleIds___block_invoke;
  v8[3] = &unk_27859B638;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LODWORD(lock) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return lock;
}

- (double)launchPopularityWithBundleId:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(_ATXAppLaunchHistogram *)self _localTimeWithDate:v7];
    v9 = [(_ATXAppLaunchHistogram *)self _eventIdforBundleId:v6];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    lock = self->_lock;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60___ATXAppLaunchHistogram_launchPopularityWithBundleId_date___block_invoke;
    v14[3] = &unk_27859B660;
    v14[4] = self;
    v14[5] = &v17;
    v15 = v9;
    v16 = v8;
    [(_PASLock *)lock runWithLockAcquired:v14];
    v11 = v18[3];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchHistogram launchPopularityWithBundleId:date:];
    }

    v11 = 0.0;
  }

  return v11;
}

- (double)relativeLaunchPopularityWithBundleId:(id)a3 date:(id)a4
{
  LODWORD(v4) = 1.0;
  [(_ATXAppLaunchHistogram *)self relativeLaunchPopularityWithBundleId:a3 date:a4 distanceScale:v4];
  return result;
}

- (double)relativeLaunchPopularityWithBundleId:(id)a3 date:(id)a4 distanceScale:(float)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(_ATXAppLaunchHistogram *)self _localTimeWithDate:v9];
    v11 = [(_ATXAppLaunchHistogram *)self _eventIdforBundleId:v8];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    lock = self->_lock;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82___ATXAppLaunchHistogram_relativeLaunchPopularityWithBundleId_date_distanceScale___block_invoke;
    v16[3] = &unk_27859B688;
    v16[4] = self;
    v16[5] = &v20;
    v18 = v11;
    v19 = v10;
    v17 = a5;
    [(_PASLock *)lock runWithLockAcquired:v16];
    v13 = v21[3];
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v14 = __atxlog_handle_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchHistogram relativeLaunchPopularityWithBundleId:date:distanceScale:];
    }

    v13 = 0.0;
  }

  return v13;
}

- (double)relativeLaunchPopularityWithBundleId:(id)a3 elapsedTime:(double)a4 distanceScale:(float)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = a4 % self->_timeBase / self->_secondsPerLocaltimeInterval;
    v10 = [(_ATXAppLaunchHistogram *)self _eventIdforBundleId:v8];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    lock = self->_lock;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89___ATXAppLaunchHistogram_relativeLaunchPopularityWithBundleId_elapsedTime_distanceScale___block_invoke;
    v15[3] = &unk_27859B688;
    v15[4] = self;
    v15[5] = &v19;
    v17 = v10;
    v18 = v9;
    v16 = a5;
    [(_PASLock *)lock runWithLockAcquired:v15];
    v12 = v20[3];
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchHistogram relativeLaunchPopularityWithBundleId:elapsedTime:distanceScale:];
    }

    v12 = 0.0;
  }

  return v12;
}

- (double)totalTimeOfDayLaunchesForDate:(id)a3 distanceScale:(float)a4
{
  v6 = a3;
  v7 = [(_ATXAppLaunchHistogram *)self _localTimeWithDate:v6];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70___ATXAppLaunchHistogram_totalTimeOfDayLaunchesForDate_distanceScale___block_invoke;
  v11[3] = &unk_27859B6B0;
  v11[4] = &v14;
  v13 = v7;
  v12 = a4;
  [(_PASLock *)lock runWithLockAcquired:v11];
  v9 = v15[3];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (double)totalTimeOfDayLaunchesForDate:(id)a3
{
  LODWORD(v3) = 1.0;
  [(_ATXAppLaunchHistogram *)self totalTimeOfDayLaunchesForDate:a3 distanceScale:v3];
  return result;
}

- (double)totalTimeOfDayLaunchesForElapsedTime:(double)a3 distanceScale:(float)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = a3 % self->_timeBase;
  secondsPerLocaltimeInterval = self->_secondsPerLocaltimeInterval;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77___ATXAppLaunchHistogram_totalTimeOfDayLaunchesForElapsedTime_distanceScale___block_invoke;
  v9[3] = &unk_27859B6B0;
  v9[4] = &v12;
  v11 = v4 / secondsPerLocaltimeInterval;
  v10 = a4;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (double)totalTimeOfDayLaunchesForElapsedTime:(double)a3
{
  LODWORD(v3) = 1.0;
  [(_ATXAppLaunchHistogram *)self totalTimeOfDayLaunchesForElapsedTime:a3 distanceScale:v3];
  return result;
}

- (double)overallLaunchPopularityForBundleId:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_ATXAppLaunchHistogram *)self _eventIdforBundleId:v4];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    lock = self->_lock;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61___ATXAppLaunchHistogram_overallLaunchPopularityForBundleId___block_invoke;
    v10[3] = &unk_27859B6D8;
    v10[4] = self;
    v10[5] = &v12;
    v11 = v5;
    [(_PASLock *)lock runWithLockAcquired:v10];
    v7 = v13[3];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchHistogram overallLaunchPopularityForBundleId:];
    }

    v7 = 0.0;
  }

  return v7;
}

- (double)totalLaunches
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39___ATXAppLaunchHistogram_totalLaunches__block_invoke;
  v5[3] = &unk_27859B700;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)averageLaunchesPerBundleId:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(_ATXAppLaunchHistogram *)self totalLaunchesForBundleIds:v4];
    v6 = v5 / [v4 count];
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)totalLaunchesForBundleIds:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52___ATXAppLaunchHistogram_totalLaunchesForBundleIds___block_invoke;
  v9[3] = &unk_27859B728;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (double)totalLaunchesForBundleIds:(id)a3 forDate:(id)a4 distanceScale:(float)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(_ATXAppLaunchHistogram *)self _localTimeWithDate:v9];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  lock = self->_lock;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74___ATXAppLaunchHistogram_totalLaunchesForBundleIds_forDate_distanceScale___block_invoke;
  v15[3] = &unk_27859B750;
  v12 = v8;
  v16 = v12;
  v17 = self;
  v18 = &v21;
  v20 = v10;
  v19 = a5;
  [(_PASLock *)lock runWithLockAcquired:v15];
  v13 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v13;
}

- (double)unsmoothedLaunchesForBundleIds:(id)a3 forLocalTime:(unsigned __int16)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70___ATXAppLaunchHistogram_unsmoothedLaunchesForBundleIds_forLocalTime___block_invoke;
  v11[3] = &unk_27859B778;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v14 = &v16;
  v15 = a4;
  [(_PASLock *)lock runWithLockAcquired:v11];
  v9 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v9;
}

- (BOOL)bundleHasBeenLaunched:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(_ATXAppLaunchHistogram *)self _eventIdforBundleId:v5];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    lock = self->_lock;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48___ATXAppLaunchHistogram_bundleHasBeenLaunched___block_invoke;
    v11[3] = &unk_27859B7A0;
    v11[4] = &v13;
    v12 = v6;
    [(_PASLock *)lock runWithLockAcquired:v11];
    v8 = v14[3] > 0.0;
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchHistogram _addLaunchWithBundleId:a2 date:? timeZone:? arbitraryWeight:?];
    }

    v8 = 0;
  }

  return v8;
}

- (void)decayByFactor:(double)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40___ATXAppLaunchHistogram_decayByFactor___block_invoke;
  v4[3] = &__block_descriptor_40_e28_v16__0__ATXGuardedHistData_8l;
  *&v4[4] = a3;
  [(_PASLock *)lock runWithLockAcquired:v4];
}

- (void)decayWithHalfLifeInDays:(double)a3
{
  lock = self->_lock;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50___ATXAppLaunchHistogram_decayWithHalfLifeInDays___block_invoke;
  v4[3] = &__block_descriptor_40_e28_v16__0__ATXGuardedHistData_8l;
  *&v4[4] = a3;
  [(_PASLock *)lock runWithLockAcquired:v4];
}

- (_ATXAppLaunchHistogram)initWithCoder:(id)a3
{
  v4 = 86400;
  v5 = a3;
  if ([v5 containsValueForKey:@"timeBase"])
  {
    v6 = [v5 decodeInt32ForKey:@"timeBase"];
    v7 = v6;
    if (v6 <= 0)
    {
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(_ATXAppLaunchHistogram *)v7 initWithCoder:v8];
      }
    }

    else
    {
      v4 = v6;
    }
  }

  v9 = [v5 error];

  if (!v9)
  {
    v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"histogram"];
    if (v10)
    {
      v12 = [[ATXHistogramData alloc] initWithTimeHistogram:v10];
      v13 = objc_autoreleasePoolPush();
      v14 = objc_alloc(MEMORY[0x277CBEB98]);
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = [v14 initWithObjects:{v15, v16, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v13);
      v18 = [v5 decodeObjectOfClasses:v17 forKey:@"bundleIdToEventId"];

      if (v18)
      {
        v19 = +[ATXHistogramBundleIdTable sharedInstance];
        v20 = [v19 permutationFrom:v18];
        [(ATXHistogramData *)v12 applyPermutationToA:v20];

        self = [(_ATXAppLaunchHistogram *)self initWithHistogram:v12 bucketCount:[v10 pointsPerTimeInterval] filter:[v10 applyFilter] timeBase:v4];
        v11 = self;
      }

      else
      {
        v25 = __atxlog_handle_default();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          [_ATXAppLaunchHistogram initWithCoder:v5];
        }

        v11 = 0;
      }

      goto LABEL_26;
    }

    v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"histogramData"];
    v21 = [v5 error];

    if (v21 || !v12)
    {
      v24 = __atxlog_handle_default();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [_ATXAppLaunchHistogram initWithCoder:v5];
      }
    }

    else
    {
      v22 = [v5 decodeInt32ForKey:@"bucketCount"];
      v23 = [v5 error];

      if (v23)
      {
        v24 = __atxlog_handle_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          [_ATXAppLaunchHistogram initWithCoder:v5];
        }
      }

      else
      {
        v27 = [v5 decodeBoolForKey:@"filter"];
        v28 = [v5 error];

        if (!v28)
        {
          self = [(_ATXAppLaunchHistogram *)self initWithHistogram:v12 bucketCount:v22 filter:v27 timeBase:v4];
          v11 = self;
          goto LABEL_26;
        }

        v24 = __atxlog_handle_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          [_ATXAppLaunchHistogram initWithCoder:v5];
        }
      }
    }

    v11 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v10 = __atxlog_handle_default();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [_ATXAppLaunchHistogram initWithCoder:v5];
  }

  v11 = 0;
LABEL_27:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___ATXAppLaunchHistogram_encodeWithCoder___block_invoke;
  v7[3] = &unk_27859B610;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
  [v6 encodeInt32:self->_timeBase forKey:@"timeBase"];
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__41;
  v10 = __Block_byref_object_dispose__41;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37___ATXAppLaunchHistogram_description__block_invoke;
  v5[3] = &unk_27859B700;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (double)entropyForBundleId:(id)a3
{
  v4 = a3;
  v5 = [(_ATXAppLaunchHistogram *)self _eventIdforBundleId:v4];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45___ATXAppLaunchHistogram_entropyForBundleId___block_invoke;
  v9[3] = &unk_27859B7A0;
  v9[4] = &v11;
  v10 = v5;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (double)entropyForDate:(id)a3
{
  v4 = a3;
  v5 = [(_ATXAppLaunchHistogram *)self _localTimeWithDate:v4];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41___ATXAppLaunchHistogram_entropyForDate___block_invoke;
  v9[3] = &unk_27859B7A0;
  v9[4] = &v11;
  v10 = v5;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (double)entropy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33___ATXAppLaunchHistogram_entropy__block_invoke;
  v5[3] = &unk_27859B700;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)bucketCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37___ATXAppLaunchHistogram_bucketCount__block_invoke;
  v5[3] = &unk_27859B700;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 12);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)initWithType:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.10(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.11(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.12(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.13(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.14(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.15(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.16(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.17(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.18(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.19(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.20(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.21(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.22(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.23(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.24(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.25(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.26(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.27(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.28(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.29(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.30(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.31(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.32(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.33(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.34(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.35(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.36(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.37(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.38(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.39(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.40(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.41(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.42(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.43(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.44(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.45(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.46(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.47(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.48(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.49(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.50(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.51(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.52(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.54(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.55(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.56(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.57(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.58(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.59(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.60(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.61(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.62(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.63(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.64(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.65(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.66(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.67(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.68(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.69(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.70(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.71(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.72(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.73(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.74(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.75(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.76(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.77(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchHistogram.  Use _ATXCategoricalAppLaunchHistogram.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.78(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is deprecated.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.79(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is deprecated.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.80(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is deprecated.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.81(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is deprecated.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.82(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is deprecated.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:(uint64_t)a3 .cold.83(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is deprecated.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addLaunchWithBundleId:(const char *)a1 date:timeZone:arbitraryWeight:.cold.1(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  sel_getName(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "Bundle id can not be nil in %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)addLaunchWithBundleId:date:timeZone:weight:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)launchPopularityWithBundleId:date:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)relativeLaunchPopularityWithBundleId:date:distanceScale:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)relativeLaunchPopularityWithBundleId:elapsedTime:distanceScale:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)overallLaunchPopularityForBundleId:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithCoder:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = 86400;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "timeBase is an invalid value: %d. Falling back to the default histogram time base of %d.", v3, 0xEu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v2, v3, "Could not decode timeBase from NSCoder, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:(void *)a1 .cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v2, v3, "Could not decode bundleIdToEventId from NSCoder, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:(void *)a1 .cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v2, v3, "Could not decode bucketCount from NSCoder, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:(void *)a1 .cold.5(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v2, v3, "Could not decode filter from NSCoder, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:(void *)a1 .cold.6(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v2, v3, "Could not decode histogram from NSCoder, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end