@interface _ATXAppPredictor
+ (id)_arrayFromSet:(id)set upToSize:(unint64_t)size;
+ (id)inputScoresForPredictionItem:(const ATXPredictionItem *)item;
+ (id)recreateSharedInstanceWithCurrentABGroup;
+ (id)sharedInstance;
+ (void)updateConfidenceForItem:(ATXPredictionItem *)item subscores:(id)subscores;
- (ATXCDNDownloaderTriggerManager)cdnDownloaderTriggerManager;
- (BOOL)_initAppLaunchAndInstallMonitors;
- (BOOL)_initDependencies;
- (BOOL)scoreAppsWithFeaturesUsingCoreML:(void *)l scoreLogger:(id)logger;
- (double)scoreAppWithFeaturesUsingCoreML:(ATXPredictionItem *)l;
- (float)_getPredictionForItems:(unint64_t)items clipBundleIdsToRank:(void *)rank consumerSubType:intent:scoreLogger:context:featureCache:;
- (id)_allDayZeroApps;
- (id)_appPredictionsSeedAppsGivenSBAppList:(id)list consumerSubType:(unsigned __int8)type minimumDesiredApps:(unint64_t)apps;
- (id)appInstallMonitor;
- (id)appIntentMonitor;
- (id)appLaunchMonitor;
- (id)getABGroups;
- (id)getPredictionModelDetailsForConsumerSubType:(unsigned __int8)type;
- (id)initInternal;
- (id)predictWithLimit:(unint64_t)limit consumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes scoreLogger:(id)logger predictionItemsToKeep:(void *)keep predictedItemsOutParameter:(void *)self0 context:(id)self1 datastore:(id)self2 featureCache:(id)self3;
- (id)predictWithLimit:(unint64_t)limit consumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes scoreLogger:(id)logger predictionItemsToKeep:(void *)keep predictedItemsOutParameter:(void *)self0 context:(id)self1 featureCache:(id)self2;
- (id)predictWithLimit:(unint64_t)limit consumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes scoreLogger:(id)logger predictionItemsToKeep:(void *)keep predictedItemsOutParameter:(void *)self0 datastore:(id)self1;
- (id)recentInstallCache;
- (unordered_map<NSString)_createMapOfKeyToItemForPredictionItems:()ATXNSStringHash;
- (vector<ATXPredictionItem,)_evalFeaturesForActions:(_ATXAppPredictor *)self scoreLogger:(SEL)logger context:(id)context featureCache:(id)cache;
- (vector<ATXPredictionItem,)_evalFeaturesForAppForAllIntents:(_ATXAppPredictor *)self scoreLogger:(SEL)logger context:(id)context;
- (vector<ATXPredictionItem,)_evalFeaturesForAppIntents:(_ATXAppPredictor *)self scoreLogger:(SEL)logger context:(id)context;
- (void)_addZeroDayAppIntentKeysToBundleIdTable:(id)table;
- (void)_copyValidScoreInputsFromPredictionItem:(const ATXPredictionItem *)item toPredictionItem:(ATXPredictionItem *)predictionItem;
- (void)_getPredictionForItems:(unint64_t)items clipBundleIdsToRank:(void *)rank consumerSubType:(uint64_t)type intent:scoreLogger:context:featureCache:;
- (void)_getPredictionForItems:(void *)items clipBundleIdsToRank:(void *)rank consumerSubType:(void *)type intent:(uint64_t)intent scoreLogger:(uint64_t)logger context:(id *)context featureCache:(uint64_t)cache;
- (void)_initFeaturizers;
- (void)_updateFromAsset;
- (void)_updateFromZeroDayAsset;
- (void)_updateFromZeroDayIntentAsset;
- (void)dealloc;
- (void)initInternal;
- (void)iterZeroDayAppIntentKeysWithBlock:(id)block;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)receiveFeedbackForConsumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType atxResponse:(id)response engagementType:(unint64_t)engagementType engagedBundleId:(id)id bundleIdsShown:(id)shown explicitlyRejectedBundleIds:(id)ids context:(id)self0;
- (void)resetRecentInstallCache;
- (void)trainWithTask:(id)task;
@end

@implementation _ATXAppPredictor

+ (id)sharedInstance
{
  pthread_mutex_lock(&sharedInstanceLock);
  v2 = sharedInstance;
  if (!sharedInstance)
  {
    initInternal = [[_ATXAppPredictor alloc] initInternal];
    v4 = sharedInstance;
    sharedInstance = initInternal;

    v2 = sharedInstance;
  }

  v5 = v2;
  pthread_mutex_unlock(&sharedInstanceLock);

  return v5;
}

- (id)_allDayZeroApps
{
  v2 = [MEMORY[0x277CEB400] dayZeroBundleIdsAndScoresFromDayZeroParameters:self->_dayZeroParameters];
  allKeys = [v2 allKeys];
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:allKeys];

  return v4;
}

- (id)_appPredictionsSeedAppsGivenSBAppList:(id)list consumerSubType:(unsigned __int8)type minimumDesiredApps:(unint64_t)apps
{
  listCopy = list;
  v8 = objc_alloc(MEMORY[0x277CBEB58]);
  if (listCopy)
  {
    v9 = listCopy;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v10 = [v8 initWithArray:v9];
  allRecentlyInstalledApplications = [(_ATXRecentInstallCache *)self->_recentInstallCache allRecentlyInstalledApplications];
  [v10 unionSet:allRecentlyInstalledApplications];

  _allDayZeroApps = [(_ATXAppPredictor *)self _allDayZeroApps];
  allAppsLaunchedOrInstalledWithin30Days = [(_ATXAppInfoManager *)self->_appInfoManager allAppsLaunchedOrInstalledWithin30Days];
  [_allDayZeroApps unionSet:allAppsLaunchedOrInstalledWithin30Days];

  [v10 intersectSet:_allDayZeroApps];
  if ([v10 count] < apps)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v9];
    [v14 minusSet:v10];
    v15 = +[_ATXAppPredictor _arrayFromSet:upToSize:](_ATXAppPredictor, "_arrayFromSet:upToSize:", v14, apps - [v10 count]);
    [v10 addObjectsFromArray:v15];
  }

  return v10;
}

+ (id)_arrayFromSet:(id)set upToSize:(unint64_t)size
{
  setCopy = set;
  if ([setCopy count] <= size)
  {
    allObjects = [setCopy allObjects];
  }

  else
  {
    allObjects2 = [setCopy allObjects];
    allObjects = [allObjects2 subarrayWithRange:{0, size}];
  }

  return allObjects;
}

- (vector<ATXPredictionItem,)_evalFeaturesForAppForAllIntents:(_ATXAppPredictor *)self scoreLogger:(SEL)logger context:(id)context
{
  contextCopy = context;
  v102 = a5;
  v115 = a6;
  timeContext = [v115 timeContext];
  date = [timeContext date];

  v10 = [contextCopy count];
  std::vector<ATXPredictionItem>::vector[abi:ne200100](retstr, v10);
  deviceStateContext = [v115 deviceStateContext];
  inAirplaneMode = [deviceStateContext inAirplaneMode];

  userContext = [v115 userContext];
  lastUnlockDate = [userContext lastUnlockDate];

  deviceStateContext2 = [v115 deviceStateContext];
  wifiSSID = [deviceStateContext2 wifiSSID];

  locationMotionContext = [v115 locationMotionContext];
  motionType = [locationMotionContext motionType];

  v121 = [MEMORY[0x277D41C30] getMotionStringFromMotionType:motionType];
  locationMotionContext2 = [v115 locationMotionContext];
  currentLOI = [locationMotionContext2 currentLOI];

  v17 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v18 = [v17 histogramForLaunchType:16];
  v19 = [v17 histogramForLaunchType:19];
  v103 = [v17 histogramForLaunchType:25];
  v113 = [v17 histogramForLaunchType:28];
  v125 = [v17 histogramForLaunchType:22];
  v20 = [v17 categoricalHistogramForLaunchType:31];
  v120 = [v17 categoricalHistogramForLaunchType:39];
  v119 = [v17 categoricalHistogramForLaunchType:33];
  v118 = [v17 categoricalHistogramForLaunchType:34];
  [v18 entropy];
  v110 = v21;
  [v19 entropy];
  v109 = v22;
  [v19 entropyForDate:date];
  v108 = v23;
  [v125 entropy];
  v107 = v24;
  v123 = v19;
  [v20 entropy];
  v26 = v25;
  v106 = motionType;
  [v20 entropyForCategory:wifiSSID];
  if (v10 >= 1)
  {
    v28 = v27;
    v29 = 0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    do
    {
      v33 = [contextCopy objectAtIndexedSubscript:v29];
      [v18 overallLaunchPopularityForBundleId:v33];
      v35 = v34;
      [v19 relativeLaunchPopularityWithBundleId:v33 date:date];
      v37 = v36;
      [v125 relativeLaunchPopularityWithBundleId:v33 date:date];
      v39 = v38;
      [v20 relativeLaunchPopularityWithBundleId:v33 category:wifiSSID];
      v32 = v32 + vabdd_f64(v35, v37);
      v31 = v31 + vabdd_f64(v35, v39);
      v30 = v30 + vabdd_f64(v35, v40);

      ++v29;
    }

    while ((v10 & 0x7FFFFFFF) != v29);
    v104 = v10 & 0x7FFFFFFF;
    v41 = 0;
    v42.i32[1] = -1059153344;
    *v42.i32 = -31337.0;
    v43 = v10;
    v105 = vdupq_lane_s32(v42, 0);
    do
    {
      v44 = objc_autoreleasePoolPush();
      v45 = [contextCopy objectAtIndexedSubscript:v41];
      v126 = v45;
      *&v127[830] = -31337.0;
      LOWORD(v127[831]) = 0;
      for (i = 4; i != 832; i += 4)
      {
        *&v127[i - 2] = v105;
      }

      [v18 overallLaunchPopularityForBundleId:v45];
      *&v48 = ATXSetInput(&v126, 0x9DuLL, v47);
      [v18 launchPopularityWithBundleId:v45 date:{date, v48}];
      *&v50 = ATXSetInput(&v126, 0xA7uLL, v49);
      [v18 relativeLaunchPopularityWithBundleId:v45 date:{date, v50}];
      ATXSetInput(&v126, 0x9EuLL, v51);
      LODWORD(v52) = 1036831949;
      [v18 relativeLaunchPopularityWithBundleId:v45 date:date distanceScale:v52];
      *&v54 = ATXSetInput(&v126, 0xA0uLL, v53);
      [v18 totalLaunches];
      *&v56 = ATXSetInput(&v126, 0x98uLL, v55);
      [v123 launchPopularityWithBundleId:v45 date:{date, v56}];
      *&v58 = ATXSetInput(&v126, 0xA8uLL, v57);
      [v123 relativeLaunchPopularityWithBundleId:v45 date:{date, v58}];
      *&v60 = ATXSetInput(&v126, 0x9FuLL, v59);
      if (lastUnlockDate)
      {
        [date timeIntervalSinceDate:{lastUnlockDate, v60}];
        if (v61 >= 0.0)
        {
          HIDWORD(v62) = 1085022208;
          if (v61 >= 3600.0)
          {
            v61 = 3599.0;
          }

          LODWORD(v62) = 1.0;
          [v103 relativeLaunchPopularityWithBundleId:v45 elapsedTime:v61 distanceScale:v62];
          ATXSetInput(&v126, 0xA1uLL, v63);
        }
      }

      v64 = 0.0;
      if (inAirplaneMode)
      {
        [v113 overallLaunchPopularityForBundleId:{v45, 0.0}];
      }

      ATXSetInput(&v126, 0xA2uLL, v64);
      v65 = 0.0;
      if (inAirplaneMode)
      {
        [v113 totalLaunches];
      }

      *&v66 = ATXSetInput(&v126, 0x99uLL, v65);
      [v125 overallLaunchPopularityForBundleId:{v45, v66}];
      *&v68 = ATXSetInput(&v126, 0xA5uLL, v67);
      [v125 totalLaunches];
      *&v70 = ATXSetInput(&v126, 0x9CuLL, v69);
      [v20 overallLaunchPopularityForBundleId:v45 category:{wifiSSID, v70}];
      *&v72 = ATXSetInput(&v126, 0xA3uLL, v71);
      [v20 totalLaunchesForCategory:{wifiSSID, v72}];
      *&v74 = ATXSetInput(&v126, 0x9AuLL, v73);
      [v120 overallLaunchPopularityForBundleId:v45 category:{v121, v74}];
      *&v76 = ATXSetInput(&v126, 0xA4uLL, v75);
      [v120 totalLaunchesForCategory:{v121, v76}];
      *&v78 = ATXSetInput(&v126, 0x9BuLL, v77);
      appLaunchLocation = self->_appLaunchLocation;
      locationMotionContext3 = [v115 locationMotionContext];
      currentLOI2 = [locationMotionContext3 currentLOI];
      [(_ATXAppLaunchLocation *)appLaunchLocation launchProbabilityAtLOI:currentLOI2 appForAllIntentsBundleId:v45];
      ATXSetInput(&v126, 0xA6uLL, v82);

      ATXSetInput(&v126, 0xA9uLL, v110);
      ATXSetInput(&v126, 0xAAuLL, v109);
      *&v83 = ATXSetInput(&v126, 0xABuLL, v108);
      [v123 entropyForBundleId:{v45, v83}];
      ATXSetInput(&v126, 0xACuLL, v84);
      ATXSetInput(&v126, 0xB2uLL, v32);
      ATXSetInput(&v126, 0xADuLL, v107);
      ATXSetInput(&v126, 0xB3uLL, v31);
      ATXSetInput(&v126, 0xAEuLL, v26);
      *&v85 = ATXSetInput(&v126, 0xAFuLL, v28);
      [v20 entropyForBundleId:{v45, v85}];
      ATXSetInput(&v126, 0xB0uLL, v86);
      ATXSetInput(&v126, 0xB1uLL, v30);
      *&v87 = ATXSetInput(&v126, 0x97uLL, v43);
      [v119 totalLaunchesForBundleId:{v45, v87}];
      *&v89 = ATXSetInput(&v126, 0xB4uLL, v88);
      [v118 totalLaunchesForBundleId:{v45, v89}];
      *&v91 = ATXSetInput(&v126, 0xB5uLL, v90);
      [v119 totalLaunches];
      *&v93 = ATXSetInput(&v126, 0xB6uLL, v92);
      [v118 totalLaunches];
      *&v95 = ATXSetInput(&v126, 0xB7uLL, v94);
      *&v96 = ATXSetInput(&v126, 0x178uLL, [ATXAWDUtils awdMotionTypeWithMotionType:v106, v95]);
      if (currentLOI)
      {
        ATXSetInput(&v126, 0x179uLL, +[ATXAWDUtils awdLOITypeWithRTLOI:](ATXAWDUtils, "awdLOITypeWithRTLOI:", [currentLOI type]));
      }

      else
      {
        v127[379] = 0;
      }

      if (0x13A524387AC82261 * ((retstr->__end_ - retstr->__begin_) >> 3) <= v41)
      {
        std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
      }

      v97 = &retstr->__begin_[v41];
      v98 = v126;
      key = v97->key;
      v97->key = v126;
      v100 = v98;

      memcpy(&v97->actionHash, v127, 0xCFEuLL);
      objc_autoreleasePoolPop(v44);
      ++v41;
    }

    while (v41 != v104);
  }

  return result;
}

- (vector<ATXPredictionItem,)_evalFeaturesForAppIntents:(_ATXAppPredictor *)self scoreLogger:(SEL)logger context:(id)context
{
  contextCopy = context;
  v154 = a5;
  v189 = a6;
  timeContext = [v189 timeContext];
  date = [timeContext date];

  v11 = [contextCopy count];
  std::vector<ATXPredictionItem>::vector[abi:ne200100](retstr, v11);
  deviceStateContext = [v189 deviceStateContext];
  inAirplaneMode = [deviceStateContext inAirplaneMode];

  v186 = +[_ATXAppInfoManager sharedInstance];
  userContext = [v189 userContext];
  lastUnlockDate = [userContext lastUnlockDate];

  deviceStateContext2 = [v189 deviceStateContext];
  wifiSSID = [deviceStateContext2 wifiSSID];

  v16 = MEMORY[0x277D41C30];
  locationMotionContext = [v189 locationMotionContext];
  v180 = [v16 getMotionStringFromMotionType:{objc_msgSend(locationMotionContext, "motionType")}];

  totalSlotsInDatastore = [v186 totalSlotsInDatastore];
  [totalSlotsInDatastore doubleValue];
  v166 = v19;

  v157 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v192 = [v157 histogramForLaunchType:14];
  v20 = [v157 histogramForLaunchType:17];
  v158 = [v157 histogramForLaunchType:23];
  v169 = [v157 histogramForLaunchType:26];
  v188 = [v157 histogramForLaunchType:20];
  v191 = [v157 categoricalHistogramForLaunchType:29];
  v179 = [v157 categoricalHistogramForLaunchType:38];
  v178 = [v157 categoricalHistogramForLaunchType:40];
  v167 = [v157 categoricalHistogramForLaunchType:41];
  userContext2 = [v189 userContext];
  lastAppActionLaunch = [userContext2 lastAppActionLaunch];

  v156 = lastAppActionLaunch;
  if (lastAppActionLaunch)
  {
    v23 = +[_ATXAppLaunchSequenceManager sharedInstance];
    v171 = [v23 launchSequenceForAppAction:lastAppActionLaunch];
  }

  else
  {
    v171 = 0;
  }

  userContext3 = [v189 userContext];
  secondMostRecentAppLaunch = [userContext3 secondMostRecentAppLaunch];

  v164 = date;
  v155 = secondMostRecentAppLaunch;
  if (secondMostRecentAppLaunch)
  {
    v26 = +[_ATXAppLaunchSequenceManager sharedInstance];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:#AppLaunched", secondMostRecentAppLaunch];
    v170 = [v26 launchSequenceForAppAction:v27];
  }

  else
  {
    v170 = 0;
  }

  v176 = [v157 categoricalHistogramForLaunchType:33];
  v175 = [v157 categoricalHistogramForLaunchType:34];
  [v192 entropy];
  v165 = v28;
  [v20 entropy];
  v163 = v29;
  [v20 entropyForDate:date];
  v162 = v30;
  [v188 entropy];
  v161 = v31;
  [v191 entropy];
  v33 = v32;
  [v191 entropyForCategory:wifiSSID];
  v35 = v34;
  if (v11 < 1)
  {
    v39 = 0.0;
    v38 = 0.0;
    v37 = 0.0;
  }

  else
  {
    v36 = 0;
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    do
    {
      v40 = [contextCopy objectAtIndexedSubscript:v36];
      [v192 overallLaunchPopularityForBundleId:v40];
      v42 = v41;
      [v20 relativeLaunchPopularityWithBundleId:v40 date:date];
      v44 = v43;
      [v188 relativeLaunchPopularityWithBundleId:v40 date:date];
      v46 = v45;
      [v191 relativeLaunchPopularityWithBundleId:v40 category:wifiSSID];
      v37 = v37 + vabdd_f64(v42, v44);
      v38 = v38 + vabdd_f64(v42, v46);
      v39 = v39 + vabdd_f64(v42, v47);

      ++v36;
    }

    while ((v11 & 0x7FFFFFFF) != v36);
  }

  v48 = off_278594000;
  v177 = [_ATXActionUtils partOfWeekStringForDate:date];
  if (v11 >= 1)
  {
    v49 = 0;
    v50.i32[1] = -1059153344;
    *v50.i32 = -31337.0;
    v51 = v11;
    v159 = v11 & 0x7FFFFFFF;
    v160 = vdupq_lane_s32(v50, 0);
    v190 = v20;
    do
    {
      context = objc_autoreleasePoolPush();
      v52 = v49;
      v193 = [contextCopy objectAtIndexedSubscript:v49];
      v194 = v193;
      v195[830] = -31337.0;
      LOWORD(v195[831]) = 0;
      for (i = 4; i != 832; i += 4)
      {
        *&v195[i - 2] = v160;
      }

      *&v54 = ATXSetInput(&v194, 0x66uLL, v166);
      [v192 overallLaunchPopularityForBundleId:{v193, v54}];
      *&v56 = ATXSetInput(&v194, 0x6FuLL, v55);
      [v192 launchPopularityWithBundleId:v193 date:{date, v56}];
      *&v58 = ATXSetInput(&v194, 0x7CuLL, v57);
      [v192 relativeLaunchPopularityWithBundleId:v193 date:{date, v58}];
      ATXSetInput(&v194, 0x71uLL, v59);
      LODWORD(v60) = 1036831949;
      [v192 relativeLaunchPopularityWithBundleId:v193 date:date distanceScale:v60];
      *&v62 = ATXSetInput(&v194, 0x72uLL, v61);
      [v192 totalLaunches];
      *&v64 = ATXSetInput(&v194, 0x67uLL, v63);
      [v190 launchPopularityWithBundleId:v193 date:{date, v64}];
      *&v66 = ATXSetInput(&v194, 0x7DuLL, v65);
      [v190 relativeLaunchPopularityWithBundleId:v193 date:{date, v66}];
      *&v68 = ATXSetInput(&v194, 0x73uLL, v67);
      if (lastUnlockDate)
      {
        [date timeIntervalSinceDate:{lastUnlockDate, v68}];
        if (v68 >= 0.0)
        {
          HIDWORD(v69) = 1085021696;
          if (v68 >= 3600.0)
          {
            v68 = 3599.0;
          }

          LODWORD(v69) = 1.0;
          [v158 relativeLaunchPopularityWithBundleId:v193 elapsedTime:v68 distanceScale:v69];
          *&v68 = ATXSetInput(&v194, 0x74uLL, v70);
        }
      }

      v71 = [v186 lastAppActionLaunchDateForActionKey:{v193, v68}];
      timeContext2 = [v189 timeContext];
      date2 = [timeContext2 date];
      ATXSetInputAge(&v194, 0x7EuLL, v71, date2);

      v183 = [v186 averageSecondsBetweenAppActionsForActionKey:v193];
      if (v183)
      {
        [v183 doubleValue];
        *&v74 = ATXSetInput(&v194, 0x7FuLL, v75);
      }

      v182 = [v186 medianSecondsBetweenAppActionsForActionKey:{v193, v74}];
      if (v182)
      {
        [v182 doubleValue];
        *&v76 = ATXSetInput(&v194, 0x80uLL, v77);
      }

      [v169 overallLaunchPopularityForBundleId:{v193, v76}];
      if (!inAirplaneMode)
      {
        v78 = 0.0;
      }

      ATXSetInput(&v194, 0x77uLL, v78);
      v79 = 0.0;
      if (inAirplaneMode)
      {
        [v169 totalLaunches];
      }

      *&v80 = ATXSetInput(&v194, 0x68uLL, v79);
      [v188 overallLaunchPopularityForBundleId:{v193, v80}];
      *&v82 = ATXSetInput(&v194, 0x70uLL, v81);
      [v188 totalLaunches];
      *&v84 = ATXSetInput(&v194, 0x6BuLL, v83);
      [v191 overallLaunchPopularityForBundleId:v193 category:{wifiSSID, v84}];
      *&v86 = ATXSetInput(&v194, 0x75uLL, v85);
      [v191 totalLaunchesForCategory:{wifiSSID, v86}];
      *&v88 = ATXSetInput(&v194, 0x69uLL, v87);
      [v179 overallLaunchPopularityForBundleId:v193 category:{v180, v88}];
      *&v90 = ATXSetInput(&v194, 0x76uLL, v89);
      [v179 totalLaunchesForCategory:{v180, v90}];
      *&v92 = ATXSetInput(&v194, 0x6AuLL, v91);
      [v178 launchPopularityWithBundleId:v193 category:{v177, v92}];
      *&v94 = ATXSetInput(&v194, 0x4FuLL, v93);
      [v178 relativeLaunchPopularityWithBundleId:v193 category:{v177, v94}];
      *&v96 = ATXSetInput(&v194, 0x50uLL, v95);
      ambientLightContext = [v189 ambientLightContext];
      ambientLightType = [ambientLightContext ambientLightType];

      if (ambientLightType != 7)
      {
        v99 = [MEMORY[0x277CCABB0] numberWithInt:ambientLightType];
        stringValue = [v99 stringValue];
        [v167 launchPopularityWithBundleId:v193 category:stringValue];
        ATXSetInput(&v194, 0x188uLL, v101);

        v102 = [MEMORY[0x277CCABB0] numberWithInt:ambientLightType];
        stringValue2 = [v102 stringValue];
        [v167 relativeLaunchPopularityWithBundleId:v193 category:stringValue2];
        ATXSetInput(&v194, 0x187uLL, v104);
      }

      appLaunchLocation = self->_appLaunchLocation;
      locationMotionContext2 = [v189 locationMotionContext];
      currentLOI = [locationMotionContext2 currentLOI];
      [(_ATXAppLaunchLocation *)appLaunchLocation launchProbabilityAtLOI:currentLOI appIntent:v193];
      ATXSetInput(&v194, 0x78uLL, v108);

      [(ATXAppLaunchMicroLocation *)self->_microLocation popularityAtCurrentMicroLocationForActionKey:v193];
      *&v110 = ATXSetInput(&v194, 0x79uLL, v109);
      v110 = [(NSDictionary *)self->_dayZeroIntentParameters objectForKeyedSubscript:@"dayZero", v110];
      v112 = [v110 objectForKeyedSubscript:@"dayZeroBumps"];
      v113 = [v112 objectForKeyedSubscript:v193];

      [v113 doubleValue];
      *&v115 = ATXSetInput(&v194, 0x81uLL, v114);
      v115 = [(NSDictionary *)self->_dayZeroIntentParameters objectForKeyedSubscript:@"staticPenalties", v115];
      v117 = [v115 objectForKeyedSubscript:v193];

      [v117 doubleValue];
      *&v119 = ATXSetInput(&v194, 0x82uLL, v118);
      v119 = [(NSDictionary *)self->_dayZeroIntentParameters objectForKeyedSubscript:@"valueScores", v119];
      v121 = [v119 objectForKeyedSubscript:v193];

      v185 = v121;
      [v121 doubleValue];
      *&v123 = ATXSetInput(&v194, 0x83uLL, v122);
      v123 = [(NSDictionary *)self->_dayZeroIntentParameters objectForKeyedSubscript:@"intentCategories", v123];
      v125 = [(__objc2_class *)v48[204] getActionTypeFromActionKey:v193];
      v126 = [v123 objectForKeyedSubscript:v125];

      *&v127 = ATXSetInput(&v194, 0x85uLL, [v126 intValue]);
      v127 = [(NSDictionary *)self->_dayZeroIntentParameters objectForKeyedSubscript:@"actionKeyCategories", v127];
      v184 = v113;
      v129 = [v127 objectForKeyedSubscript:v193];

      *&v130 = ATXSetInput(&v194, 0x86uLL, [v129 intValue]);
      if (v171)
      {
        [v171 likelihoodForLaunch:{v193, v130}];
        *&v130 = ATXSetInput(&v194, 0x7AuLL, v131);
      }

      if (v170)
      {
        [v170 likelihoodForLaunch:{v193, v130}];
        ATXSetInput(&v194, 0x7BuLL, v132);
      }

      ATXSetInput(&v194, 0x88uLL, v165);
      ATXSetInput(&v194, 0x89uLL, v163);
      *&v133 = ATXSetInput(&v194, 0x8AuLL, v162);
      [v190 entropyForBundleId:{v193, v133}];
      ATXSetInput(&v194, 0x8BuLL, v134);
      ATXSetInput(&v194, 0x90uLL, v37);
      ATXSetInput(&v194, 0x8CuLL, v161);
      ATXSetInput(&v194, 0x91uLL, v38);
      ATXSetInput(&v194, 0x8DuLL, v33);
      *&v135 = ATXSetInput(&v194, 0x8EuLL, v35);
      [v191 entropyForBundleId:{v193, v135}];
      ATXSetInput(&v194, 0x8FuLL, v136);
      ATXSetInput(&v194, 0x92uLL, v39);
      *&v137 = ATXSetInput(&v194, 0x65uLL, v51);
      v173 = v129;
      v137 = [_ATXActionUtils getBundleIdFromActionKey:v193, v137];
      v139 = [_ATXActionUtils getActionTypeFromActionKey:v193];
      [v176 totalLaunchesForBundleId:v137 category:v139];
      *&v141 = ATXSetInput(&v194, 0x93uLL, v140);
      [v175 totalLaunchesForBundleId:v137 category:{v139, v141}];
      *&v143 = ATXSetInput(&v194, 0x94uLL, v142);
      [v176 totalLaunches];
      *&v145 = ATXSetInput(&v194, 0x95uLL, v144);
      [v175 totalLaunches];
      ATXSetInput(&v194, 0x96uLL, v146);
      v147 = v126;
      if (0x13A524387AC82261 * ((retstr->__end_ - retstr->__begin_) >> 3) <= v52)
      {
        std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
      }

      v148 = v52;
      v149 = &retstr->__begin_[v52];
      v150 = v194;
      key = v149->key;
      v149->key = v194;
      v152 = v150;

      memcpy(&v149->actionHash, v195, 0xCFEuLL);
      objc_autoreleasePoolPop(context);
      v49 = v148 + 1;
      date = v164;
      v20 = v190;
      v48 = off_278594000;
    }

    while (v49 != v159);
  }

  return result;
}

- (unordered_map<NSString)_createMapOfKeyToItemForPredictionItems:()ATXNSStringHash
{
  v6 = 0x13A524387AC82261 * ((*(a4 + 1) - *a4) >> 3);
  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::__rehash<true>(retstr, v6);
  v9 = *a4;
  v8 = *(a4 + 1);
  while (v9 != v8)
  {
    v10[0] = *v9;
    v10[1] = v9;
    std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem const*>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem const*>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem const*>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem const*>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * {__strong},ATXPredictionItem const*>>(retstr, v10);

    v9 += 417;
  }

  return result;
}

- (void)_copyValidScoreInputsFromPredictionItem:(const ATXPredictionItem *)item toPredictionItem:(ATXPredictionItem *)predictionItem
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77___ATXAppPredictor__copyValidScoreInputsFromPredictionItem_toPredictionItem___block_invoke;
  v4[3] = &__block_descriptor_48_e12_v24__0Q8_B16l;
  v4[4] = item;
  v4[5] = predictionItem;
  [_ATXScoreTypes iterScoreInputsWithBlock:v4];
}

- (vector<ATXPredictionItem,)_evalFeaturesForActions:(_ATXAppPredictor *)self scoreLogger:(SEL)logger context:(id)context featureCache:(id)cache
{
  contextCopy = context;
  cacheCopy = cache;
  v14 = a6;
  v41 = a7;
  v15 = [contextCopy count];
  [(_ATXAppPredictor *)self _evalFeaturesForAppIntents:contextCopy scoreLogger:cacheCopy context:v14];
  v43 = [_ATXActionUtils getBundleIdsFromActionKeys:contextCopy];
  v16 = objc_autoreleasePoolPush();
  appFeaturizer = self->_appFeaturizer;
  if (appFeaturizer)
  {
    [(ATXAppFeaturizer *)appFeaturizer evaluateFeaturesForApps:v43 clipBundleIdsToRank:0 consumerSubType:4 intent:0 scoreLogger:cacheCopy context:v14 featureCache:v41];
  }

  else
  {
    memset(v46, 0, 24);
  }

  context = v16;
  v38 = contextCopy;
  v42 = v14;
  [(_ATXAppPredictor *)self _createMapOfKeyToItemForPredictionItems:v46];
  v39 = v15;
  if (v15 >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = v15 & 0x7FFFFFFF;
    do
    {
      v21 = objc_autoreleasePoolPush();
      begin = retstr->__begin_;
      if (0x13A524387AC82261 * ((retstr->__end_ - retstr->__begin_) >> 3) <= v19)
      {
        std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
      }

      v23 = v21;
      v44 = [_ATXActionUtils getBundleIdFromActionKey:begin[v18].key];
      v24 = std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::find<NSString * {__strong}>(v45, &v44);
      if (!v24)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:logger object:self file:@"_ATXAppPredictor.mm" lineNumber:657 description:@"Failed to find bundleId in lookup table"];
      }

      [(_ATXAppPredictor *)self _copyValidScoreInputsFromPredictionItem:v24[3] toPredictionItem:&begin[v18]];

      objc_autoreleasePoolPop(v23);
      ++v19;
      ++v18;
    }

    while (v20 != v19);
  }

  std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::~__hash_table(v45);
  v45[0] = v46;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](v45);
  objc_autoreleasePoolPop(context);
  v25 = objc_autoreleasePoolPush();
  [(_ATXAppPredictor *)self _evalFeaturesForAppForAllIntents:v43 scoreLogger:cacheCopy context:v42];
  contexta = v25;
  [(_ATXAppPredictor *)self _createMapOfKeyToItemForPredictionItems:v46];
  if (v39 >= 1)
  {
    v26 = 0;
    v27 = 0;
    v28 = v39 & 0x7FFFFFFF;
    do
    {
      v29 = objc_autoreleasePoolPush();
      v30 = retstr->__begin_;
      if (0x13A524387AC82261 * ((retstr->__end_ - retstr->__begin_) >> 3) <= v27)
      {
        std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
      }

      v31 = v29;
      v44 = [_ATXActionUtils getBundleIdFromActionKey:v30[v26].key];
      v32 = std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::find<NSString * {__strong}>(v45, &v44);
      if (!v32)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:logger object:self file:@"_ATXAppPredictor.mm" lineNumber:677 description:@"Failed to find bundleId in lookup table"];
      }

      [(_ATXAppPredictor *)self _copyValidScoreInputsFromPredictionItem:v32[3] toPredictionItem:&v30[v26]];

      objc_autoreleasePoolPop(v31);
      ++v27;
      ++v26;
    }

    while (v28 != v27);
  }

  std::__hash_table<std::__hash_value_type<ATXAction * {__strong},int>,std::__unordered_map_hasher<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionHash,ATXActionEqual,true>,std::__unordered_map_equal<ATXAction * {__strong},std::__hash_value_type<ATXAction * {__strong},int>,ATXActionEqual,ATXActionHash,true>,std::allocator<std::__hash_value_type<ATXAction * {__strong},int>>>::~__hash_table(v45);
  v45[0] = v46;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](v45);
  objc_autoreleasePoolPop(contexta);

  return result;
}

- (BOOL)scoreAppsWithFeaturesUsingCoreML:(void *)l scoreLogger:(id)logger
{
  loggerCopy = logger;
  v6 = objc_autoreleasePoolPush();
  v17 = 0;
  v7 = [[ATXMLInferenceRunner alloc] initModelWithName:@"ATXAppPredictionMLModel" error:&v17];
  v8 = v17;
  if (v7)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65___ATXAppPredictor_scoreAppsWithFeaturesUsingCoreML_scoreLogger___block_invoke;
    v15[3] = &unk_2785A0028;
    v16 = loggerCopy;
    v14 = v8;
    v9 = [v7 runInferenceOnItems:l resultBlock:v15 error:&v14];
    v10 = v14;

    if ((v9 & 1) == 0)
    {
      v11 = __atxlog_handle_app_prediction();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppPredictor scoreAppsWithFeaturesUsingCoreML:scoreLogger:];
      }
    }

    v12 = v16;
  }

  else
  {
    v12 = __atxlog_handle_app_prediction();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_ATXAppPredictor scoreAppsWithFeaturesUsingCoreML:scoreLogger:];
    }

    v9 = 0;
    v10 = v8;
  }

  objc_autoreleasePoolPop(v6);
  return v9;
}

- (double)scoreAppWithFeaturesUsingCoreML:(ATXPredictionItem *)l
{
  v4 = objc_autoreleasePoolPush();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0xC0DE9A4000000000;
  v15 = 0;
  v5 = [[ATXMLInferenceRunner alloc] initModelWithName:@"ATXAppPredictionMLModel" error:&v15];
  v6 = v15;
  v7 = v6;
  if (!v5)
  {
    v10 = __atxlog_handle_app_prediction();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_ATXAppPredictor scoreAppsWithFeaturesUsingCoreML:scoreLogger:];
    }

    goto LABEL_8;
  }

  v13 = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52___ATXAppPredictor_scoreAppWithFeaturesUsingCoreML___block_invoke;
  v14[3] = &unk_2785A0078;
  v14[4] = &v16;
  v8 = [v5 runInferenceOnItem:l resultBlock:v14 error:&v13];
  v9 = v13;

  if ((v8 & 1) == 0)
  {
    v10 = __atxlog_handle_app_prediction();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_ATXAppPredictor scoreAppsWithFeaturesUsingCoreML:scoreLogger:];
    }

    v7 = v9;
LABEL_8:

    v9 = v7;
  }

  v11 = v17[3];

  _Block_object_dispose(&v16, 8);
  objc_autoreleasePoolPop(v4);
  return v11;
}

+ (id)inputScoresForPredictionItem:(const ATXPredictionItem *)item
{
  initWithDefaultValueForScoreTypeKeys = [[ATXScoreDict alloc] initWithDefaultValueForScoreTypeKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49___ATXAppPredictor_inputScoresForPredictionItem___block_invoke;
  v7[3] = &unk_2785A00F0;
  v5 = initWithDefaultValueForScoreTypeKeys;
  v8 = v5;
  itemCopy = item;
  [_ATXScoreTypes iterScoreInputsWithBlock:v7];

  return v5;
}

+ (void)updateConfidenceForItem:(ATXPredictionItem *)item subscores:(id)subscores
{
  subscoresCopy = subscores;
  [subscoresCopy scoreForKey:@"isMediumConfidenceForBlendingLayer" found:0];
  item->isMediumConfidenceForBlendingLayer = v5 == 1.0;
  [subscoresCopy scoreForKey:@"isHighConfidenceForBlendingLayer" found:0];
  item->isHighConfidenceForBlendingLayer = v6 == 1.0;
}

- (id)initInternal
{
  v25.receiver = self;
  v25.super_class = _ATXAppPredictor;
  v2 = [(_ATXAppPredictor *)&v25 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);
    queue = v2->_queue;
    v2->_queue = v7;

    [(_ATXAppPredictor *)v2 _updateFromAsset];
    [(_ATXAppPredictor *)v2 _updateFromZeroDayAsset];
    [(_ATXAppPredictor *)v2 _updateFromZeroDayIntentAsset];
    v9 = objc_opt_new();
    inferenceRunnerForConsumerSubtype = v2->_inferenceRunnerForConsumerSubtype;
    v2->_inferenceRunnerForConsumerSubtype = v9;

    v11 = MEMORY[0x277D42598];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __32___ATXAppPredictor_initInternal__block_invoke;
    v23[3] = &unk_27859AED0;
    v12 = v2;
    v24 = v12;
    [v11 runBlockWhenDeviceIsClassCUnlocked:v23];
    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      v13 = objc_alloc(MEMORY[0x277CBEBD0]);
      v14 = [v13 initWithSuiteName:*MEMORY[0x277CEBD00]];
      userDefaults = v12->_userDefaults;
      v12->_userDefaults = v14;

      [(NSUserDefaults *)v12->_userDefaults addObserver:v12 forKeyPath:@"appPredictionABGroupOverride" options:1 context:0];
    }

    v16 = +[ATXAppPredictionBlacklist sharedInstance];
    appPredictionBlacklist = v12->_appPredictionBlacklist;
    v12->_appPredictionBlacklist = v16;

    v18 = +[ATXActionPredictionBlacklist sharedInstanceWithAppPredictionBlacklist];
    actionPredictionBlacklist = v12->_actionPredictionBlacklist;
    v12->_actionPredictionBlacklist = v18;

    v20 = +[ATXLockscreenBlacklist sharedInstance];
    v21 = __atxlog_handle_default();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppPredictor initInternal];
    }
  }

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v13 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  [(_ATXAppPredictor *)self _updateFromAsset];
  v8 = __atxlog_handle_app_prediction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "Updating assets because AppPrediction A/B group override detected: %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateFromAsset
{
  v3 = objc_opt_new();
  currentABGroupDetails = self->_currentABGroupDetails;
  self->_currentABGroupDetails = v3;

  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:50];
  v6 = MEMORY[0x277CEBCF0];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __36___ATXAppPredictor__updateFromAsset__block_invoke;
  v13 = &unk_2785A0118;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  [v6 iterConsumerSubTypesWithBlock:&v10];
  v8 = [v7 copy];
  abGroupIdentifiers = self->_abGroupIdentifiers;
  self->_abGroupIdentifiers = v8;
}

- (void)_updateFromZeroDayAsset
{
  OUTLINED_FUNCTION_8_2(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addZeroDayAppIntentKeysToBundleIdTable:(id)table
{
  tableCopy = table;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60___ATXAppPredictor__addZeroDayAppIntentKeysToBundleIdTable___block_invoke;
  v6[3] = &unk_2785A0140;
  v7 = tableCopy;
  v5 = tableCopy;
  [(_ATXAppPredictor *)self iterZeroDayAppIntentKeysWithBlock:v6];
}

- (void)iterZeroDayAppIntentKeysWithBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSDictionary *)self->_dayZeroIntentParameters objectForKeyedSubscript:@"dayZero", 0];
  v6 = [v5 objectForKeyedSubscript:@"dayZeroAppIntents"];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v6);
      }

      blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9), &v15);
      if (v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateFromZeroDayIntentAsset
{
  OUTLINED_FUNCTION_8_2(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_initAppLaunchAndInstallMonitors
{
  v2 = atomic_load(&self->_appLaunchAndInstallMonitorsInitialized);
  if (v2)
  {
    return 1;
  }

  if (![MEMORY[0x277D42598] isClassCLocked])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52___ATXAppPredictor__initAppLaunchAndInstallMonitors__block_invoke;
    block[3] = &unk_27859AED0;
    block[4] = self;
    dispatch_sync(queue, block);
    return 1;
  }

  v4 = __atxlog_handle_app_prediction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [_ATXAppPredictor _initAppLaunchAndInstallMonitors];
  }

  return 0;
}

- (BOOL)_initDependencies
{
  v2 = atomic_load(&self->_dependenciesAreInitialized);
  if (v2)
  {
    return 1;
  }

  if (![MEMORY[0x277D42598] isClassCLocked])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37___ATXAppPredictor__initDependencies__block_invoke;
    block[3] = &unk_27859AED0;
    block[4] = self;
    dispatch_sync(queue, block);
    return 1;
  }

  v4 = __atxlog_handle_app_prediction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [_ATXAppPredictor _initDependencies];
  }

  return 0;
}

- (void)_initFeaturizers
{
  v3 = [ATXAppFeaturizer alloc];
  dayZeroParameters = self->_dayZeroParameters;
  dayZeroIntentParameters = self->_dayZeroIntentParameters;
  v25 = +[_ATXFeedback sharedInstance];
  v24 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v6 = +[_ATXAppLaunchSequenceManager sharedInstance];
  appInstallMonitor = self->_appInstallMonitor;
  mediaApps = self->_mediaApps;
  appLaunchLocation = self->_appLaunchLocation;
  appDailyDose = self->_appDailyDose;
  v23 = v6;
  v22 = +[ATXGlobalAppScorePredictor sharedInstance];
  v20 = appLaunchLocation;
  v21 = objc_opt_new();
  v18 = dayZeroParameters;
  v19 = dayZeroIntentParameters;
  appInfoManager = self->_appInfoManager;
  mmPredictionMonitor = self->_mmPredictionMonitor;
  server = [(ATXCDNDownloaderTriggerManager *)self->_cdnDownloaderTriggerManager server];
  v14 = +[_ATXAppIconState sharedInstance];
  microLocation = self->_microLocation;
  v16 = [(ATXAppFeaturizer *)v3 initWithDayZeroParameters:v18 dayZeroIntentParameters:v19 feedback:v25 appLaunchHistogramManager:v24 appLaunchSequenceManager:v23 appLaunchLocation:v20 appInstallMontior:appInstallMonitor mediaApplications:mediaApps appDailyDose:appDailyDose globalAppScorePredictor:v22 globalSmartSuppression:v21 appInfoManager:appInfoManager magicalMomentsUpdateMonitor:mmPredictionMonitor heroAppPredictions:server appIconState:v14 appLaunchMicroLocation:microLocation notificationManager:self->_notificationManager];
  appFeaturizer = self->_appFeaturizer;
  self->_appFeaturizer = v16;
}

- (void)dealloc
{
  if ([MEMORY[0x277D42590] isInternalBuild])
  {
    [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"appPredictionABGroupOverride"];
  }

  [(_ATXAppLaunchMonitor *)self->_appLaunchMonitor stop];
  [(ATXAppIntentMonitor *)self->_appIntentMonitor stop];
  [(_ATXAppInstallMonitor *)self->_appInstallMonitor stop];
  v3.receiver = self;
  v3.super_class = _ATXAppPredictor;
  [(_ATXAppPredictor *)&v3 dealloc];
}

+ (id)recreateSharedInstanceWithCurrentABGroup
{
  pthread_mutex_lock(&sharedInstanceLock);
  initInternal = [[_ATXAppPredictor alloc] initInternal];
  v3 = sharedInstance;
  sharedInstance = initInternal;

  v4 = sharedInstance;
  pthread_mutex_unlock(&sharedInstanceLock);

  return v4;
}

- (id)recentInstallCache
{
  if ([(_ATXAppPredictor *)self _initAppLaunchAndInstallMonitors])
  {
    recentInstallCache = self->_recentInstallCache;
  }

  else
  {
    recentInstallCache = 0;
  }

  return recentInstallCache;
}

- (id)appLaunchMonitor
{
  if ([(_ATXAppPredictor *)self _initAppLaunchAndInstallMonitors])
  {
    appLaunchMonitor = self->_appLaunchMonitor;
  }

  else
  {
    appLaunchMonitor = 0;
  }

  return appLaunchMonitor;
}

- (id)appIntentMonitor
{
  if ([(_ATXAppPredictor *)self _initAppLaunchAndInstallMonitors])
  {
    appIntentMonitor = self->_appIntentMonitor;
  }

  else
  {
    appIntentMonitor = 0;
  }

  return appIntentMonitor;
}

- (ATXCDNDownloaderTriggerManager)cdnDownloaderTriggerManager
{
  if ([(_ATXAppPredictor *)self _initDependencies])
  {
    cdnDownloaderTriggerManager = self->_cdnDownloaderTriggerManager;
  }

  else
  {
    cdnDownloaderTriggerManager = 0;
  }

  return cdnDownloaderTriggerManager;
}

- (void)resetRecentInstallCache
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43___ATXAppPredictor_resetRecentInstallCache__block_invoke;
  block[3] = &unk_27859AED0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)appInstallMonitor
{
  if ([(_ATXAppPredictor *)self _initAppLaunchAndInstallMonitors])
  {
    appInstallMonitor = self->_appInstallMonitor;
  }

  else
  {
    appInstallMonitor = 0;
  }

  return appInstallMonitor;
}

- (id)predictWithLimit:(unint64_t)limit consumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes scoreLogger:(id)logger predictionItemsToKeep:(void *)keep predictedItemsOutParameter:(void *)self0 context:(id)self1 featureCache:(id)self2
{
  typeCopy = type;
  intentCopy = intent;
  identifiersCopy = identifiers;
  actiontypesCopy = actiontypes;
  loggerCopy = logger;
  contextCopy = context;
  cacheCopy = cache;
  v22 = +[_ATXDataStore sharedInstance];
  v23 = [(_ATXAppPredictor *)self predictWithLimit:limit consumerSubType:typeCopy intent:intentCopy candidateBundleIdentifiers:identifiersCopy candidateActiontypes:actiontypesCopy scoreLogger:loggerCopy predictionItemsToKeep:keep predictedItemsOutParameter:parameter context:contextCopy datastore:v22 featureCache:cacheCopy];

  return v23;
}

- (id)predictWithLimit:(unint64_t)limit consumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes scoreLogger:(id)logger predictionItemsToKeep:(void *)keep predictedItemsOutParameter:(void *)self0 datastore:(id)self1
{
  typeCopy = type;
  intentCopy = intent;
  identifiersCopy = identifiers;
  actiontypesCopy = actiontypes;
  loggerCopy = logger;
  datastoreCopy = datastore;
  predictionContextForCurrentContext = [(ATXPredictionContextBuilder *)self->_predictionContextBuilder predictionContextForCurrentContext];
  v21 = objc_opt_new();
  v22 = [(_ATXAppPredictor *)self predictWithLimit:limit consumerSubType:typeCopy intent:intentCopy candidateBundleIdentifiers:identifiersCopy candidateActiontypes:actiontypesCopy scoreLogger:loggerCopy predictionItemsToKeep:keep predictedItemsOutParameter:parameter context:predictionContextForCurrentContext datastore:datastoreCopy featureCache:v21];

  return v22;
}

- (id)predictWithLimit:(unint64_t)limit consumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes scoreLogger:(id)logger predictionItemsToKeep:(void *)keep predictedItemsOutParameter:(void *)self0 context:(id)self1 datastore:(id)self2 featureCache:(id)self3
{
  typeCopy = type;
  v75 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  identifiersCopy = identifiers;
  actiontypesCopy = actiontypes;
  loggerCopy = logger;
  contextCopy = context;
  datastoreCopy = datastore;
  cacheCopy = cache;
  memset(v65, 0, sizeof(v65));
  if (parameter)
  {
    parameterCopy = parameter;
  }

  else
  {
    parameterCopy = v65;
  }

  appLaunchMonitor = [(_ATXAppPredictor *)self appLaunchMonitor];

  v24 = 0;
  if (contextCopy && appLaunchMonitor)
  {
    appIdentifiers = [MEMORY[0x277CEB378] appIdentifiers];
    allObjects = [appIdentifiers allObjects];

    if ([identifiersCopy count] || objc_msgSend(allObjects, "count"))
    {
      v42 = cacheCopy;
      v26 = __atxlog_handle_default();
      v27 = os_signpost_id_generate(v26);

      v28 = __atxlog_handle_default();
      v29 = v28;
      v30 = v27 - 1;
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        ClassName = object_getClassName(intentCopy);
        *buf = 67240450;
        *&buf[4] = typeCopy;
        LOWORD(v71) = 2082;
        *(&v71 + 2) = ClassName;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "Predict", "Subtype=%{public,signpost.telemetry:number1}u Intent=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0x12u);
      }

      spid = v27;
      disabledBundleIds = [(ATXAppPredictionBlacklist *)self->_appPredictionBlacklist disabledBundleIds];
      *buf = 0;
      *&v71 = buf;
      *(&v71 + 1) = 0x3032000000;
      v72 = __Block_byref_object_copy__177;
      v73 = __Block_byref_object_dispose__178;
      v74 = 0;
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __200___ATXAppPredictor_predictWithLimit_consumerSubType_intent_candidateBundleIdentifiers_candidateActiontypes_scoreLogger_predictionItemsToKeep_predictedItemsOutParameter_context_datastore_featureCache___block_invoke;
      block[3] = &unk_2785A0190;
      block[4] = self;
      v64 = typeCopy;
      v34 = intentCopy;
      v50 = v34;
      v51 = identifiersCopy;
      v52 = allObjects;
      v35 = disabledBundleIds;
      v53 = v35;
      v54 = actiontypesCopy;
      v55 = datastoreCopy;
      v60 = parameterCopy;
      v56 = loggerCopy;
      v57 = contextCopy;
      cacheCopy = v42;
      limitCopy = limit;
      keepCopy = keep;
      v58 = v42;
      v59 = buf;
      v63 = a2;
      dispatch_sync(queue, block);
      v36 = __atxlog_handle_default();
      v37 = v36;
      if (v30 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        v38 = object_getClassName(v34);
        *v66 = 67240450;
        v67 = typeCopy;
        v68 = 2082;
        v69 = v38;
        _os_signpost_emit_with_name_impl(&dword_2263AA000, v37, OS_SIGNPOST_INTERVAL_END, spid, "Predict", "Subtype=%{public,signpost.telemetry:number1}u Intent=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", v66, 0x12u);
      }

      v24 = *(v71 + 40);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v24 = 0;
    }
  }

  *buf = v65;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](buf);

  v39 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)getPredictionModelDetailsForConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  asset = [MEMORY[0x277CEB3C0] asset];
  v6 = [_ATXPredictionModelDetails alloc];
  compatibilityVersion = [asset compatibilityVersion];
  assetVersion = [asset assetVersion];
  v9 = [(NSArray *)self->_abGroupIdentifiers objectAtIndexedSubscript:typeCopy];
  v10 = [(_ATXPredictionModelDetails *)v6 initWithAssetCompatibilityVersion:compatibilityVersion assetVersion:assetVersion abGroup:v9];

  return v10;
}

- (id)getABGroups
{
  mEMORY[0x277CEB3A0] = [MEMORY[0x277CEB3A0] sharedInstanceWithMobileAssets];
  v3 = [mEMORY[0x277CEB3A0] getAssetFileAndSubscoreForConsumerSubType:4];
  first = [v3 first];

  v5 = [MEMORY[0x277CEB3C0] rawDictionaryForResource:first ofType:@"plplist"];
  allKeys = [v5 allKeys];

  return allKeys;
}

- (void)receiveFeedbackForConsumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType atxResponse:(id)response engagementType:(unint64_t)engagementType engagedBundleId:(id)id bundleIdsShown:(id)shown explicitlyRejectedBundleIds:(id)ids context:(id)self0
{
  responseCopy = response;
  idCopy = id;
  shownCopy = shown;
  idsCopy = ids;
  contextCopy = context;
  v32 = idCopy;
  v33 = responseCopy;
  v31 = idsCopy;
  v20 = os_transaction_create();
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy__177;
  v52[4] = __Block_byref_object_dispose__178;
  v53 = 0;
  queue = self->_queue;
  block = MEMORY[0x277D85DD0];
  v38 = 3221225472;
  v39 = __161___ATXAppPredictor_receiveFeedbackForConsumerType_consumerSubType_atxResponse_engagementType_engagedBundleId_bundleIdsShown_explicitlyRejectedBundleIds_context___block_invoke;
  v40 = &unk_2785A01B8;
  v48 = v52;
  typeCopy = type;
  selfCopy = self;
  subTypeCopy = subType;
  v36 = responseCopy;
  v42 = v36;
  engagementTypeCopy = engagementType;
  v34 = idCopy;
  v43 = v34;
  v22 = shownCopy;
  v44 = v22;
  v23 = idsCopy;
  v45 = v23;
  v24 = contextCopy;
  v46 = v24;
  v25 = v20;
  v47 = v25;
  dispatch_sync(queue, &block);
  if (type == 1)
  {
    if (engagementType - 2 < 2)
    {
      appLaunchLogger = self->_appLaunchLogger;
      timeContext = [v24 timeContext];
      date = [timeContext date];
      [(ATXAppLaunchLogger *)appLaunchLogger logAppLaunchFrom:12 at:date];
LABEL_9:

      goto LABEL_10;
    }

    if (engagementType == 1)
    {
      v30 = self->_appLaunchLogger;
      timeContext = [v24 timeContext];
      date = [timeContext date];
      [(ATXAppLaunchLogger *)v30 logAppLaunchFrom:13 at:date];
      goto LABEL_9;
    }
  }

  else if (type == 2 && engagementType == 1)
  {
    v29 = self->_appLaunchLogger;
    timeContext = [v24 timeContext];
    date = [timeContext date];
    [(ATXAppLaunchLogger *)v29 logAppLaunchFrom:15 at:date];
    goto LABEL_9;
  }

LABEL_10:

  _Block_object_dispose(v52, 8);
}

- (void)trainWithTask:(id)task
{
  taskCopy = task;
  if ([taskCopy didDefer])
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "App prediction training immediately deferred", buf, 2u);
    }
  }

  else
  {
    [taskCopy setProgressUnits:5];
    v6 = MEMORY[0x277D42598];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34___ATXAppPredictor_trainWithTask___block_invoke;
    v7[3] = &unk_2785A0168;
    v7[4] = self;
    v8 = taskCopy;
    [v6 runBlockWhenDeviceIsClassCUnlocked:v7];
  }
}

- (void)_getPredictionForItems:(unint64_t)items clipBundleIdsToRank:(void *)rank consumerSubType:(uint64_t)type intent:scoreLogger:context:featureCache:
{
  v32 = a2;
  selfCopy = self;
  if (items >= 2)
  {
    selfCopy2 = self;
    if (items == 2)
    {
      v32 = a2 - 417;
      if (*(self + 3328) < *(a2 - 2))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<ATXPredictionItem *> &,std::__wrap_iter<ATXPredictionItem *> &>(&selfCopy, &v32);
      }
    }

    else if (items <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,-[_ATXAppPredictor _getPredictionForItems:clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:]::$_0 &,std::__wrap_iter<ATXPredictionItem *>>(self, a2);
    }

    else
    {
      rankCopy = rank;
      v10 = items >> 1;
      v11 = (self + 3336 * (items >> 1));
      if (items <= type)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,[_ATXAppPredictor _getPredictionForItems:clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:]::$_0 &,std::__wrap_iter<ATXPredictionItem *>>(self, (self + 3336 * (items >> 1)), items >> 1, rank);
        v13 = items - v10;
        v14 = &rankCopy[417 * v10];
        std::__stable_sort_move<std::_ClassicAlgPolicy,[_ATXAppPredictor _getPredictionForItems:clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:]::$_0 &,std::__wrap_iter<ATXPredictionItem *>>(&selfCopy2[417 * (items >> 1)], a2, v13, v14);
        itemsCopy = items;
        v15 = &rankCopy[417 * items];
        v16 = v14;
        v17 = rankCopy;
        while (v16 != v15)
        {
          if (*(v17 + 832) >= *(v16 + 832))
          {
            v20 = *v17;
            *v17 = 0;
            v21 = *selfCopy2;
            *selfCopy2 = v20;

            memcpy(selfCopy2 + 1, v17 + 1, 0xCFEuLL);
            v17 += 417;
          }

          else
          {
            v18 = *v16;
            *v16 = 0;
            v19 = *selfCopy2;
            *selfCopy2 = v18;

            memcpy(selfCopy2 + 1, v16 + 1, 0xCFEuLL);
            v16 += 417;
          }

          selfCopy2 += 417;
          if (v17 == v14)
          {
            if (v16 != v15)
            {
              v22 = 0;
              do
              {
                v23 = &v16[v22];
                v24 = v16[v22];
                v16[v22] = 0;
                v25 = selfCopy2[v22];
                selfCopy2[v22] = v24;

                memcpy(&selfCopy2[v22 + 1], &v16[v22 + 1], 0xCFEuLL);
                v22 += 417;
              }

              while (v23 + 417 != v15);
            }

            goto LABEL_27;
          }
        }

        if (v17 != v14)
        {
          v26 = 0;
          do
          {
            v27 = &v17[v26];
            v28 = v17[v26];
            v17[v26] = 0;
            v29 = selfCopy2[v26];
            selfCopy2[v26] = v28;

            memcpy(&selfCopy2[v26 + 1], &v17[v26 + 1], 0xCFEuLL);
            v26 += 417;
          }

          while (v27 + 417 != v14);
        }

LABEL_27:
        if (rankCopy)
        {
          for (i = 0; i < itemsCopy; ++i)
          {

            rankCopy += 417;
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,[_ATXAppPredictor _getPredictionForItems:clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:]::$_0 &,std::__wrap_iter<ATXPredictionItem *>>(self, self + 3336 * (items >> 1), items >> 1, rank, type);
        v12 = items - v10;
        std::__stable_sort<std::_ClassicAlgPolicy,[_ATXAppPredictor _getPredictionForItems:clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:]::$_0 &,std::__wrap_iter<ATXPredictionItem *>>(v11, a2, v12, rankCopy, type);

        std::__inplace_merge<std::_ClassicAlgPolicy,[_ATXAppPredictor _getPredictionForItems:clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:]::$_0 &,std::__wrap_iter<ATXPredictionItem *>>(selfCopy2, v11, a2, v10, v12, rankCopy, type);
      }
    }
  }
}

- (float)_getPredictionForItems:(unint64_t)items clipBundleIdsToRank:(void *)rank consumerSubType:intent:scoreLogger:context:featureCache:
{
  if (!items)
  {
    return result;
  }

  rankCopy = rank;
  v7 = result;
  if (items == 2)
  {
    v11 = (a2 - 834);
    if (result[832] >= *(a2 - 2))
    {
      v29 = *result;
      *result = 0;
      *rank = v29;
      memcpy(rank + 1, result + 2, 0xCFEuLL);
      v30 = *v11;
      *v11 = 0;
      rankCopy[417] = v30;
      v14 = a2 - 832;
      v10 = rankCopy + 418;
      goto LABEL_23;
    }

    v12 = *v11;
    *v11 = 0;
    *rank = v12;
    memcpy(rank + 1, a2 - 832, 0xCFEuLL);
    v13 = *v7;
    *v7 = 0;
    v9 = v7 + 2;
    rankCopy[417] = v13;
    v10 = rankCopy + 418;
LABEL_7:
    v14 = v9;
LABEL_23:

    return memcpy(v10, v14, 0xCFEuLL);
  }

  if (items == 1)
  {
    v8 = *result;
    *result = 0;
    v9 = result + 2;
    *rank = v8;
    v10 = rank + 1;
    goto LABEL_7;
  }

  if (items > 8)
  {
    v31 = 3336 * (items >> 1);
    v32 = &result[v31 / 4];
    std::__stable_sort<std::_ClassicAlgPolicy,[_ATXAppPredictor _getPredictionForItems:clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:]::$_0 &,std::__wrap_iter<ATXPredictionItem *>>(result, &result[v31 / 4], items >> 1, rank, items >> 1);
    result = std::__stable_sort<std::_ClassicAlgPolicy,[_ATXAppPredictor _getPredictionForItems:clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:]::$_0 &,std::__wrap_iter<ATXPredictionItem *>>(&v7[v31 / 4], a2, items - (items >> 1), &rankCopy[v31 / 8], items - (items >> 1));
    v33 = &v7[v31 / 4];
    while (v33 != a2)
    {
      if (v7[832] >= v33[832])
      {
        v35 = *v7;
        *v7 = 0;
        *rankCopy = v35;
        result = memcpy(rankCopy + 1, v7 + 2, 0xCFEuLL);
        v7 += 834;
      }

      else
      {
        v34 = *v33;
        *v33 = 0;
        *rankCopy = v34;
        result = memcpy(rankCopy + 1, v33 + 2, 0xCFEuLL);
        v33 += 834;
      }

      rankCopy += 417;
      if (v7 == v32)
      {
        if (v33 != a2)
        {
          v36 = 0;
          do
          {
            v37 = &v33[v36 / 4];
            v38 = *&v33[v36 / 4];
            *&v33[v36 / 4] = 0;
            rankCopy[v36 / 8] = v38;
            result = memcpy(&rankCopy[v36 / 8 + 1], &v33[v36 / 4 + 2], 0xCFEuLL);
            v36 += 3336;
          }

          while (v37 + 834 != a2);
        }

        return result;
      }
    }

    if (v7 != v32)
    {
      v39 = 0;
      do
      {
        v40 = &v7[v39 / 4];
        v41 = *&v7[v39 / 4];
        *&v7[v39 / 4] = 0;
        rankCopy[v39 / 8] = v41;
        result = memcpy(&rankCopy[v39 / 8 + 1], &v7[v39 / 4 + 2], 0xCFEuLL);
        v39 += 3336;
      }

      while (v40 + 834 != v32);
    }
  }

  else if (result != a2)
  {
    v15 = *result;
    *result = 0;
    *rank = v15;
    result = memcpy(rank + 1, result + 2, 0xCFEuLL);
    v16 = v7 + 834;
    if (v7 + 834 != a2)
    {
      v17 = 0;
      v18 = rankCopy;
      do
      {
        v19 = v16;
        v20 = v18 + 418;
        if (*(v18 + 832) >= v7[1666])
        {
          v28 = *v16;
          *v19 = 0;
          v18[417] = v28;
        }

        else
        {
          v21 = *v18;
          *v18 = 0;
          v18[417] = v21;
          memcpy(v18 + 418, v18 + 1, 0xCFEuLL);
          v22 = rankCopy;
          if (v18 != rankCopy)
          {
            v23 = v17;
            while (1)
            {
              v22 = (rankCopy + v23);
              if (*(rankCopy + v23 - 8) >= v7[1666])
              {
                break;
              }

              v24 = *(v22 - 417);
              *(v22 - 417) = 0;
              v25 = *v22;
              *v22 = v24;

              memcpy(v22 + 1, v22 - 416, 0xCFEuLL);
              v23 -= 3336;
              if (!v23)
              {
                v22 = rankCopy;
                break;
              }
            }
          }

          v26 = *v19;
          *v19 = 0;
          v27 = *v22;
          *v22 = v26;
          v20 = v22 + 1;
        }

        result = memcpy(v20, v7 + 836, 0xCFEuLL);
        v16 = v19 + 417;
        v17 += 3336;
        v18 += 417;
        v7 = v19;
      }

      while (v19 + 417 != a2);
    }
  }

  return result;
}

- (void)_getPredictionForItems:(void *)items clipBundleIdsToRank:(void *)rank consumerSubType:(void *)type intent:(uint64_t)intent scoreLogger:(uint64_t)logger context:(id *)context featureCache:(uint64_t)cache
{
  rankCopy = rank;
  itemsCopy = items;
  if (logger)
  {
    loggerCopy = logger;
    rankCopy2 = rank;
    itemsCopy2 = items;
    typeCopy = rankCopy;
    rankCopy3 = rank;
    while (loggerCopy > cache && intent > cache)
    {
      if (!intent)
      {
        goto LABEL_36;
      }

      v13 = 0;
      v14 = -intent;
      while (1)
      {
        v15 = &itemsCopy2[v13 / 8];
        if (*&itemsCopy2[v13 / 8 + 416] < *(rankCopy3 + 832))
        {
          break;
        }

        v13 += 3336;
        if (__CFADD__(v14++, 1))
        {
          goto LABEL_36;
        }
      }

      itemsCopy = &itemsCopy2[v13 / 8];
      if (-v14 >= loggerCopy)
      {
        if (v14 == -1)
        {
          rankCopy = typeCopy;
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<ATXPredictionItem *> &,std::__wrap_iter<ATXPredictionItem *> &>(&itemsCopy, &rankCopy);
          return;
        }

        v23 = -v14 / 2;
        if (type == rankCopy3)
        {
          typeCopy = type;
        }

        else
        {
          v24 = 0x13A524387AC82261 * (type - rankCopy3);
          typeCopy = rankCopy3;
          do
          {
            v25 = v24 >> 1;
            v26 = &typeCopy[417 * (v24 >> 1)];
            v27 = *(v26 + 832);
            v28 = v26 + 417;
            v24 += ~(v24 >> 1);
            if (*(&itemsCopy2[417 * v23 + 416] + v13) < v27)
            {
              typeCopy = v28;
            }

            else
            {
              v24 = v25;
            }
          }

          while (v24);
        }

        v17 = 0x13A524387AC82261 * (typeCopy - rankCopy3);
        rankCopy2 = (&itemsCopy2[417 * v23] + v13);
      }

      else
      {
        v17 = loggerCopy / 2;
        typeCopy = &rankCopy2[417 * (loggerCopy / 2)];
        if (rankCopy2 - itemsCopy2 != v13)
        {
          v18 = 0x13A524387AC82261 * ((rankCopy2 - itemsCopy2 - v13) >> 3);
          rankCopy2 = &itemsCopy2[v13 / 8];
          do
          {
            v19 = v18 >> 1;
            v20 = &rankCopy2[417 * (v18 >> 1)];
            v21 = *(v20 + 832);
            v22 = v20 + 417;
            v18 += ~(v18 >> 1);
            if (v21 < *(typeCopy + 832))
            {
              v18 = v19;
            }

            else
            {
              rankCopy2 = v22;
            }
          }

          while (v18);
        }

        v23 = 0x13A524387AC82261 * ((rankCopy2 - itemsCopy2 - v13) >> 3);
      }

      v29 = typeCopy;
      if (rankCopy2 != rankCopy3)
      {
        v29 = rankCopy2;
        if (typeCopy != rankCopy3)
        {
          v30 = rankCopy3;
          typeCopy2 = type;
          cacheCopy = cache;
          v33 = v23;
          v34 = v17;
          v35 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<ATXPredictionItem *>>(rankCopy2, v30, typeCopy);
          v17 = v34;
          v23 = v33;
          cache = cacheCopy;
          type = typeCopy2;
          v29 = v35;
        }
      }

      intent = -(v23 + v14);
      v36 = loggerCopy - v17;
      if (v23 + v17 >= loggerCopy - (v23 + v17) - v14)
      {
        v39 = v23;
        v40 = -(v23 + v14);
        v41 = v17;
        cacheCopy3 = cache;
        std::__inplace_merge<std::_ClassicAlgPolicy,[_ATXAppPredictor _getPredictionForItems:clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:]::$_0 &,std::__wrap_iter<ATXPredictionItem *>>(v29, typeCopy, type, v40, v36, context);
        typeCopy = rankCopy2;
        v36 = v41;
        intent = v39;
        type = v29;
      }

      else
      {
        typeCopy3 = type;
        cacheCopy3 = cache;
        std::__inplace_merge<std::_ClassicAlgPolicy,[_ATXAppPredictor _getPredictionForItems:clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:]::$_0 &,std::__wrap_iter<ATXPredictionItem *>>(v15, rankCopy2, v29, v23, v17, context);
        type = typeCopy3;
        itemsCopy = v29;
        v15 = v29;
        rankCopy2 = typeCopy;
      }

      rankCopy3 = typeCopy;
      itemsCopy2 = v15;
      loggerCopy = v36;
      cache = cacheCopy3;
      if (!v36)
      {
LABEL_36:
        rankCopy = typeCopy;
        return;
      }
    }

    rankCopy = typeCopy;
    if (intent <= loggerCopy)
    {
      contextCopy = context;
      if (itemsCopy2 == rankCopy3)
      {
        return;
      }

      typeCopy4 = type;
      v44 = 0;
      contextCopy2 = context;
      v60 = itemsCopy2;
      do
      {
        v61 = *v60;
        *v60 = 0;
        *contextCopy2 = v61;
        memcpy(contextCopy2 + 1, v60 + 1, 0xCFEuLL);
        ++v44;
        v60 += 417;
        contextCopy2 += 417;
      }

      while (v60 != rankCopy3);
      v62 = typeCopy4;
      while (rankCopy3 != v62)
      {
        if (*(contextCopy + 832) >= *(rankCopy3 + 832))
        {
          v65 = *contextCopy;
          *contextCopy = 0;
          v66 = *itemsCopy2;
          *itemsCopy2 = v65;

          memcpy(itemsCopy2 + 1, contextCopy + 1, 0xCFEuLL);
          contextCopy += 417;
        }

        else
        {
          v63 = *rankCopy3;
          *rankCopy3 = 0;
          v64 = *itemsCopy2;
          *itemsCopy2 = v63;

          memcpy(itemsCopy2 + 1, rankCopy3 + 1, 0xCFEuLL);
          rankCopy3 += 417;
        }

        itemsCopy2 += 417;
        v62 = typeCopy4;
        if (contextCopy2 == contextCopy)
        {
          goto LABEL_73;
        }
      }

      v71 = 0;
      do
      {
        v72 = &contextCopy[v71];
        v73 = contextCopy[v71];
        contextCopy[v71] = 0;
        v74 = itemsCopy2[v71];
        itemsCopy2[v71] = v73;

        memcpy(&itemsCopy2[v71 + 1], &contextCopy[v71 + 1], 0xCFEuLL);
        v71 += 417;
      }

      while (contextCopy2 - 417 != v72);
LABEL_73:
      contextCopy5 = context;
    }

    else
    {
      contextCopy5 = context;
      if (rankCopy3 == type)
      {
        return;
      }

      v43 = 0;
      v44 = 0;
      do
      {
        v45 = &rankCopy3[v43];
        v46 = rankCopy3[v43];
        rankCopy3[v43] = 0;
        context[v43] = v46;
        typeCopy5 = type;
        memcpy(&context[v43 + 1], &rankCopy3[v43 + 1], 0xCFEuLL);
        type = typeCopy5;
        ++v44;
        v43 += 417;
      }

      while (v45 + 417 != typeCopy5);
      v48 = typeCopy5 - 417;
      v49 = &context[v43];
      while (rankCopy3 != itemsCopy2)
      {
        v50 = *(rankCopy3 - 2);
        v51 = *(v49 - 2);
        if (v50 < v51)
        {
          v52 = rankCopy3 - 417;
        }

        else
        {
          v52 = v49 - 417;
        }

        if (v50 < v51)
        {
          v53 = rankCopy3;
        }

        else
        {
          v53 = v49;
        }

        if (v50 >= v51)
        {
          v49 -= 417;
        }

        else
        {
          rankCopy3 -= 417;
        }

        v54 = *v52;
        *v52 = 0;
        v55 = *v48;
        *v48 = v54;

        v56 = v53 - 416;
        contextCopy5 = context;
        memcpy(v48 + 1, v56, 0xCFEuLL);
        v48 -= 417;
        if (v49 == context)
        {
          goto LABEL_74;
        }
      }

      if (v49 != contextCopy5)
      {
        v67 = v49 - 417;
        do
        {
          v68 = *v67;
          *v67 = 0;
          v69 = *v48;
          *v48 = v68;

          memcpy(v48 + 1, v67 + 1, 0xCFEuLL);
          v48 -= 417;
          v70 = v67 == contextCopy5;
          v67 -= 417;
        }

        while (!v70);
      }
    }

LABEL_74:
    if (contextCopy5)
    {
      do
      {

        contextCopy5 += 417;
        --v44;
      }

      while (v44);
    }
  }
}

- (void)scoreAppsWithFeaturesUsingCoreML:scoreLogger:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)scoreAppsWithFeaturesUsingCoreML:scoreLogger:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)actionModelNameForActionSubType:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "Incorrect ConsumerSubType for Action Prediction (%@) using CoreML!", buf, 0xCu);
}

- (void)prewarmModelForConsumerSubtype:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2_6(&dword_2263AA000, v0, v1, "Failed to create inference runner using model %@ : %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_getPredictionForItems:(os_log_t)log clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "Generating new predictions: %@", buf, 0xCu);
}

- (void)initInternal
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeCacheFileWithSerializedChunks:path:cacheFileDescriptors:consumerSubType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end