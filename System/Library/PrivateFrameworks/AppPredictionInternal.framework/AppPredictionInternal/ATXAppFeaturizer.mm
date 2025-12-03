@interface ATXAppFeaturizer
+ (double)time:(double)time toAccuracyInSeconds:(double)seconds;
+ (float)_computeL2DistanceFromBundleId:(id)id to:(const float *)to app2vecMapping:(id)mapping;
+ (void)_predictNextAppLaunchEmbedding:(id)embedding into:(float *)into launchSequence:(id)sequence;
- (ATXAppFeaturizer)initWithDayZeroParameters:(id)parameters dayZeroIntentParameters:(id)intentParameters feedback:(id)feedback appLaunchHistogramManager:(id)manager appLaunchSequenceManager:(id)sequenceManager appLaunchLocation:(id)location appInstallMontior:(id)montior mediaApplications:(id)self0 appDailyDose:(id)self1 globalAppScorePredictor:(id)self2 globalSmartSuppression:(id)self3 appInfoManager:(id)self4 magicalMomentsUpdateMonitor:(id)self5 heroAppPredictions:(id)self6 appIconState:(id)self7 appLaunchMicroLocation:(id)self8 notificationManager:(id)self9;
- (ATXAppFeaturizer)initWithDayZeroParameters:(id)parameters dayZeroIntentParameters:(id)intentParameters feedback:(id)feedback appLaunchHistogramManager:(id)manager appLaunchSequenceManager:(id)sequenceManager appLaunchLocation:(id)location appInstallMontior:(id)montior mediaApplications:(id)self0 appDailyDose:(id)self1 globalAppScorePredictor:(id)self2 globalSmartSuppression:(id)self3 appInfoManager:(id)self4 magicalMomentsUpdateMonitor:(id)self5 heroAppPredictions:(id)self6 appIconState:(id)self7 appLaunchMicroLocation:(id)self8 notificationManager:(id)self9 heroPoiManager:(id)poiManager;
- (vector<ATXPredictionItem,)evaluateFeaturesForApps:(ATXAppFeaturizer *)self clipBundleIdsToRank:(SEL)rank consumerSubType:(id)type intent:(id)intent scoreLogger:(unsigned __int8)logger context:(id)context featureCache:(id)cache;
- (void)setDistributionBasedScoreInputsForItem:(ATXPredictionItem *)item withGeoHashResolution:(unint64_t)resolution withGeoHashLaunchCounts:(id)counts;
- (void)setDistributionBasedScoreInputsForTimeAndDay:(ATXPredictionItem *)day forBundleId:(id)id withTimeOfDayHistogram:(id)histogram withDayOfWeekHistogram:(id)weekHistogram;
- (void)setModeAffinityScores:(ATXPredictionItem *)scores appModeEntityScores:(id)entityScores;
- (void)setZeroValuesForModeEntityFeatures:(ATXPredictionItem *)features;
@end

@implementation ATXAppFeaturizer

- (ATXAppFeaturizer)initWithDayZeroParameters:(id)parameters dayZeroIntentParameters:(id)intentParameters feedback:(id)feedback appLaunchHistogramManager:(id)manager appLaunchSequenceManager:(id)sequenceManager appLaunchLocation:(id)location appInstallMontior:(id)montior mediaApplications:(id)self0 appDailyDose:(id)self1 globalAppScorePredictor:(id)self2 globalSmartSuppression:(id)self3 appInfoManager:(id)self4 magicalMomentsUpdateMonitor:(id)self5 heroAppPredictions:(id)self6 appIconState:(id)self7 appLaunchMicroLocation:(id)self8 notificationManager:(id)self9
{
  parametersCopy = parameters;
  intentParametersCopy = intentParameters;
  feedbackCopy = feedback;
  managerCopy = manager;
  sequenceManagerCopy = sequenceManager;
  locationCopy = location;
  montiorCopy = montior;
  applicationsCopy = applications;
  doseCopy = dose;
  predictorCopy = predictor;
  suppressionCopy = suppression;
  infoManagerCopy = infoManager;
  monitorCopy = monitor;
  predictionsCopy = predictions;
  stateCopy = state;
  microLocationCopy = microLocation;
  notificationManagerCopy = notificationManager;
  v33 = objc_opt_new();
  v36 = [(ATXAppFeaturizer *)self initWithDayZeroParameters:parametersCopy dayZeroIntentParameters:intentParametersCopy feedback:feedbackCopy appLaunchHistogramManager:managerCopy appLaunchSequenceManager:sequenceManagerCopy appLaunchLocation:locationCopy appInstallMontior:montiorCopy mediaApplications:applicationsCopy appDailyDose:doseCopy globalAppScorePredictor:predictorCopy globalSmartSuppression:suppressionCopy appInfoManager:infoManagerCopy magicalMomentsUpdateMonitor:monitorCopy heroAppPredictions:predictionsCopy appIconState:stateCopy appLaunchMicroLocation:microLocationCopy notificationManager:notificationManagerCopy heroPoiManager:v33];

  return v36;
}

- (ATXAppFeaturizer)initWithDayZeroParameters:(id)parameters dayZeroIntentParameters:(id)intentParameters feedback:(id)feedback appLaunchHistogramManager:(id)manager appLaunchSequenceManager:(id)sequenceManager appLaunchLocation:(id)location appInstallMontior:(id)montior mediaApplications:(id)self0 appDailyDose:(id)self1 globalAppScorePredictor:(id)self2 globalSmartSuppression:(id)self3 appInfoManager:(id)self4 magicalMomentsUpdateMonitor:(id)self5 heroAppPredictions:(id)self6 appIconState:(id)self7 appLaunchMicroLocation:(id)self8 notificationManager:(id)self9 heroPoiManager:(id)poiManager
{
  parametersCopy = parameters;
  intentParametersCopy = intentParameters;
  intentParametersCopy2 = intentParameters;
  feedbackCopy = feedback;
  feedbackCopy2 = feedback;
  managerCopy = manager;
  sequenceManagerCopy = sequenceManager;
  locationCopy = location;
  montiorCopy = montior;
  applicationsCopy = applications;
  doseCopy = dose;
  predictorCopy = predictor;
  suppressionCopy = suppression;
  infoManagerCopy = infoManager;
  monitorCopy = monitor;
  predictionsCopy = predictions;
  stateCopy = state;
  microLocationCopy = microLocation;
  notificationManagerCopy = notificationManager;
  poiManagerCopy = poiManager;
  v50.receiver = self;
  v50.super_class = ATXAppFeaturizer;
  v31 = [(ATXAppFeaturizer *)&v50 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_dayZeroParameters, parameters);
    objc_storeStrong(&v32->_dayZeroIntentParameters, intentParametersCopy);
    objc_storeStrong(&v32->_feedback, feedbackCopy);
    objc_storeStrong(&v32->_appLaunchHistogramManager, manager);
    objc_storeStrong(&v32->_appLaunchSequenceManager, sequenceManager);
    objc_storeStrong(&v32->_appLaunchLocation, location);
    objc_storeStrong(&v32->_appInstallMonitor, montior);
    objc_storeStrong(&v32->_mediaApps, applications);
    objc_storeStrong(&v32->_appDailyDose, dose);
    objc_storeStrong(&v32->_globalAppScorePredictor, predictor);
    objc_storeStrong(&v32->_globalSmartSuppression, suppression);
    objc_storeStrong(&v32->_appInfoManager, infoManager);
    objc_storeStrong(&v32->_mmPredictionMonitor, monitor);
    objc_storeStrong(&v32->_heroPredictionServer, predictions);
    objc_storeStrong(&v32->_appIconState, state);
    objc_storeStrong(&v32->_microLocation, microLocation);
    objc_storeStrong(&v32->_notificationManager, notificationManager);
    objc_storeStrong(&v32->_heroPoiManager, poiManager);
  }

  return v32;
}

- (vector<ATXPredictionItem,)evaluateFeaturesForApps:(ATXAppFeaturizer *)self clipBundleIdsToRank:(SEL)rank consumerSubType:(id)type intent:(id)intent scoreLogger:(unsigned __int8)logger context:(id)context featureCache:(id)cache
{
  MEMORY[0x28223BE20](self, rank);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v826 = v22;
  v875[16] = *MEMORY[0x277D85DE8];
  v713 = v23;
  v24 = v19;
  v709 = v15;
  v710 = v13;
  v838 = v11;
  v751 = a10;
  v711 = v24;
  recentNotifications = [v21[1] recentNotifications];
  if (v24)
  {
    v740 = [v713 arrayByAddingObjectsFromArray:v24];
  }

  else
  {
    v740 = v713;
  }

  v25 = __atxlog_handle_app_prediction();
  v843 = v21;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:v17];
    LODWORD(v872[0]) = 138412290;
    *(v872 + 4) = v26;
    _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "Evaluating app features for consumer: %@.", v872, 0xCu);
  }

  if (v751)
  {
    [v751 itemsForBundleIds:v740];
    v27 = *(&v864 + 1);
    v28 = v864;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v864 = 0uLL;
    v865 = 0;
  }

  if (0x13A524387AC82261 * ((v27 - v28) >> 3) == [v740 count])
  {
    v29 = __atxlog_handle_app_prediction();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:v17];
      LODWORD(v872[0]) = 138412290;
      *(v872 + 4) = v30;
      _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "Found all bundleIds in the feature cache. Using the cached values for consumer: %@.", v872, 0xCu);
    }

    *v826 = v864;
    v826[2] = v865;
    v865 = 0;
    v864 = 0uLL;
    goto LABEL_132;
  }

  std::vector<ATXPredictionItem>::vector[abi:ne200100](v826, [v740 count]);
  v814 = [v713 count];
  v809 = [v24 count] + v814;
  v781 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v809];
  v780 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v809];
  v704 = objc_autoreleasePoolPush();
  std::vector<double>::vector[abi:ne200100](&v862, v809);
  std::vector<double>::vector[abi:ne200100](&v860, v809);
  std::vector<double>::vector[abi:ne200100](&v858, v809);
  [v21[2] putFeedbackScoresForApps:v740 intoScores:v862 confirms:v860 rejects:v858];
  timeContext = [v838 timeContext];
  date = [timeContext date];

  userContext = [v838 userContext];
  lastUnlockDate = [userContext lastUnlockDate];

  v841 = [v21[3] histogramForLaunchType:0];
  v803 = [v21[3] histogramForLaunchType:1];
  v739 = [v21[3] histogramForLaunchType:92];
  v738 = [v21[3] histogramForLaunchType:93];
  v712 = [v21[3] histogramForLaunchType:11];
  v839 = [v21[3] histogramForLaunchType:2];
  v743 = [v21[3] histogramForLaunchType:3];
  v779 = [v21[3] histogramForLaunchType:5];
  v812 = [v21[3] categoricalHistogramForLaunchType:4];
  v775 = [v21[3] categoricalHistogramForLaunchType:37];
  v732 = [v21[3] categoricalHistogramForLaunchType:41];
  v813 = [v21[3] categoricalHistogramForLaunchType:42];
  v792 = [v21[3] categoricalHistogramForLaunchType:43];
  v788 = [v21[3] categoricalHistogramForLaunchType:44];
  v791 = [v21[3] categoricalHistogramForLaunchType:45];
  v787 = [v21[3] categoricalHistogramForLaunchType:46];
  v790 = [v21[3] categoricalHistogramForLaunchType:47];
  v786 = [v21[3] categoricalHistogramForLaunchType:48];
  v789 = [v21[3] categoricalHistogramForLaunchType:87];
  v811 = [v21[3] categoricalHistogramForLaunchType:50];
  v810 = [v21[3] categoricalHistogramForLaunchType:51];
  v805 = [v21[3] categoricalHistogramForLaunchType:61];
  v758 = [v21[3] categoricalHistogramForLaunchType:52];
  v757 = [v21[3] categoricalHistogramForLaunchType:53];
  v756 = [v21[3] categoricalHistogramForLaunchType:54];
  v755 = [v21[3] categoricalHistogramForLaunchType:55];
  v754 = [v21[3] categoricalHistogramForLaunchType:56];
  v785 = [v21[3] categoricalHistogramForLaunchType:57];
  v784 = [v21[3] categoricalHistogramForLaunchType:58];
  v783 = [v21[3] categoricalHistogramForLaunchType:59];
  v782 = [v21[3] categoricalHistogramForLaunchType:60];
  v802 = [v21[3] categoricalHistogramForLaunchType:63];
  v799 = [v21[3] categoricalHistogramForLaunchType:64];
  v772 = [v21[3] categoricalHistogramForLaunchType:65];
  v774 = [v21[3] categoricalHistogramForLaunchType:66];
  v770 = [v21[3] categoricalHistogramForLaunchType:67];
  v768 = [v21[3] categoricalHistogramForLaunchType:68];
  v801 = [v21[3] categoricalHistogramForLaunchType:69];
  v798 = [v21[3] categoricalHistogramForLaunchType:70];
  v771 = [v21[3] categoricalHistogramForLaunchType:71];
  v773 = [v21[3] categoricalHistogramForLaunchType:72];
  v769 = [v21[3] categoricalHistogramForLaunchType:73];
  v767 = [v21[3] categoricalHistogramForLaunchType:74];
  v800 = [v21[3] categoricalHistogramForLaunchType:88];
  v797 = [v21[3] categoricalHistogramForLaunchType:75];
  v794 = [v21[3] categoricalHistogramForLaunchType:76];
  v764 = [v21[3] categoricalHistogramForLaunchType:77];
  v766 = [v21[3] categoricalHistogramForLaunchType:78];
  v762 = [v21[3] categoricalHistogramForLaunchType:79];
  v760 = [v21[3] categoricalHistogramForLaunchType:80];
  v796 = [v21[3] categoricalHistogramForLaunchType:81];
  v793 = [v21[3] categoricalHistogramForLaunchType:82];
  v763 = [v21[3] categoricalHistogramForLaunchType:83];
  v765 = [v21[3] categoricalHistogramForLaunchType:84];
  v761 = [v21[3] categoricalHistogramForLaunchType:85];
  v759 = [v21[3] categoricalHistogramForLaunchType:86];
  v795 = [v21[3] categoricalHistogramForLaunchType:89];
  v753 = [v21[3] categoricalHistogramForLaunchType:95];
  userContext2 = [v838 userContext];
  lastAppLaunch = [userContext2 lastAppLaunch];

  if (lastAppLaunch)
  {
    v836 = [v21[4] launchSequenceForBundle:?];
  }

  else
  {
    v836 = 0;
  }

  v35 = MEMORY[0x277D41C30];
  locationMotionContext = [v838 locationMotionContext];
  v776 = [v35 getMotionStringFromMotionType:{objc_msgSend(locationMotionContext, "motionType")}];

  deviceStateContext = [v838 deviceStateContext];
  onWifi = [deviceStateContext onWifi];

  deviceStateContext2 = [v838 deviceStateContext];
  wifiSSID = [deviceStateContext2 wifiSSID];

  deviceStateContext3 = [v838 deviceStateContext];
  inAirplaneMode = [deviceStateContext3 inAirplaneMode];

  [v841 entropy];
  v729 = v40;
  [v839 entropy];
  v728 = v41;
  [v839 entropyForDate:date];
  v727 = v42;
  [v779 entropy];
  v726 = v43;
  [v812 entropy];
  v725 = v44;
  [v812 entropyForCategory:wifiSSID];
  v724 = v45;
  locationMotionContext2 = [v838 locationMotionContext];
  context = [locationMotionContext2 locationEnabled];

  if (v809 < 1)
  {
    v50 = 0.0;
    v49 = 0.0;
    v48 = 0.0;
    v52 = v21;
  }

  else
  {
    v47 = 0;
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v51 = v839;
    v52 = v21;
    do
    {
      v53 = [v740 objectAtIndexedSubscript:v47];
      [v841 overallLaunchPopularityForBundleId:v53];
      v55 = v54;
      [v51 relativeLaunchPopularityWithBundleId:v53 date:date];
      v57 = v56;
      [v779 relativeLaunchPopularityWithBundleId:v53 date:date];
      v59 = v58;
      [v812 relativeLaunchPopularityWithBundleId:v53 category:wifiSSID];
      v61 = v60;

      v48 = v48 + vabdd_f64(v55, v57);
      v49 = v49 + vabdd_f64(v55, v59);
      v50 = v50 + vabdd_f64(v55, v61);
      ++v47;
      v51 = v839;
    }

    while (v809 != v47);
  }

  [MEMORY[0x277CEB3C0] pathForResource:@"_ATXApp2VecMapping" ofType:@"dat" isDirectory:0];
  v856 = 0;
  __p = 0;
  v705 = v857 = 0;
  if (v705 && (v62 = [[ATXApp2VecMapping alloc] initWithPath:v705], (v63 = v62) != 0))
  {
    std::vector<float>::resize(&__p, [(ATXApp2VecMapping *)v62 vectorLength]);
    v64 = objc_opt_class();
    v65 = __p;
    launchSequence = [v52[4] launchSequence];
    [v64 _predictNextAppLaunchEmbedding:v63 into:v65 launchSequence:launchSequence];
    v714 = v63;
    v723 = 0;
  }

  else
  {
    launchSequence = __atxlog_handle_app_prediction();
    if (os_log_type_enabled(launchSequence, OS_LOG_TYPE_FAULT))
    {
      [ATXAppFeaturizer evaluateFeaturesForApps:launchSequence clipBundleIdsToRank:? consumerSubType:? intent:? scoreLogger:? context:? featureCache:?];
    }

    v714 = 0;
    v723 = 1;
  }

  timeContext2 = [v838 timeContext];
  dayOfWeek = [timeContext2 dayOfWeek];

  timeContext3 = [v838 timeContext];
  timeOfDay = [timeContext3 timeOfDay];

  timeContext4 = [v838 timeContext];
  dateInWeekend = [timeContext4 dateInWeekend];

  v806 = [_ATXActionUtils stringForTimeOfDayAndDayOfWeek:date timeZone:0];
  locationMotionContext3 = [v838 locationMotionContext];
  v820 = +[_ATXActionUtils stringForSpecificGeohash:](_ATXActionUtils, "stringForSpecificGeohash:", [locationMotionContext3 geohash]);

  locationMotionContext4 = [v838 locationMotionContext];
  v822 = +[_ATXActionUtils stringForCoarseGeohash:](_ATXActionUtils, "stringForCoarseGeohash:", [locationMotionContext4 coarseGeohash]);

  locationMotionContext5 = [v838 locationMotionContext];
  v737 = +[_ATXActionUtils stringForZoom7Geohash:](_ATXActionUtils, "stringForZoom7Geohash:", [locationMotionContext5 largeGeohash]);

  v818 = [_ATXActionUtils stringForTwoHourTimeWindow:date timeZone:0];
  v816 = [_ATXActionUtils stringForDayOfWeek:date timeZone:0];
  locationMotionContext6 = [v838 locationMotionContext];
  v824 = +[_ATXActionUtils stringForCoarseTimePOWLocation:timeZone:coarseGeohash:](_ATXActionUtils, "stringForCoarseTimePOWLocation:timeZone:coarseGeohash:", date, 0, [locationMotionContext6 coarseGeohash]);

  locationMotionContext7 = [v838 locationMotionContext];
  v817 = +[_ATXActionUtils stringForSpecificTimeDOWLocation:timeZone:geohash:](_ATXActionUtils, "stringForSpecificTimeDOWLocation:timeZone:geohash:", date, 0, [locationMotionContext7 geohash]);

  v828 = objc_opt_new();
  v830 = objc_opt_new();
  v834 = objc_opt_new();
  v832 = objc_opt_new();
  v853 = 0u;
  v854 = 0u;
  v851 = 0u;
  v852 = 0u;
  obj = v740;
  v75 = [obj countByEnumeratingWithState:&v851 objects:v875 count:16];
  if (v75)
  {
    v76 = *v852;
    do
    {
      for (i = 0; i != v75; ++i)
      {
        if (*v852 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v78 = *(*(&v851 + 1) + 8 * i);
        v79 = MEMORY[0x277CCABB0];
        v80 = v843[5];
        locationMotionContext8 = [v838 locationMotionContext];
        currentLOI = [locationMotionContext8 currentLOI];
        v83 = [v79 numberWithInt:{objc_msgSend(v80, "launchCountAtLOI:bundleId:", currentLOI, v78)}];
        [v834 setObject:v83 forKeyedSubscript:v78];

        v84 = MEMORY[0x277CCABB0];
        [v836 launchCount:v78];
        v85 = [v84 numberWithDouble:?];
        [v832 setObject:v85 forKeyedSubscript:v78];

        v86 = MEMORY[0x277CCABB0];
        v874 = v78;
        v87 = [MEMORY[0x277CBEA60] arrayWithObjects:&v874 count:1];
        LODWORD(v88) = 1045220557;
        [v841 totalLaunchesForBundleIds:v87 forDate:date distanceScale:v88];
        v89 = [v86 numberWithDouble:?];
        [v830 setObject:v89 forKeyedSubscript:v78];

        v90 = MEMORY[0x277CCABB0];
        v873 = v78;
        v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v873 count:1];
        LODWORD(v92) = 1.0;
        [v839 totalLaunchesForBundleIds:v91 forDate:date distanceScale:v92];
        v93 = [v90 numberWithDouble:?];
        [v828 setObject:v93 forKeyedSubscript:v78];
      }

      v75 = [obj countByEnumeratingWithState:&v851 objects:v875 count:16];
    }

    while (v75);
  }

  v731 = [v843[10] globalPopularityForBundleIdsGivenTimeDayAndLocation:obj context:v838];
  v94 = arc4random();
  launchedAppCount = [v843[12] launchedAppCount];
  currentPoiCategory = [v843[16] currentPoiCategory];
  v95 = objc_opt_new();
  efficientCurrentMode = [v95 efficientCurrentMode];
  v97 = efficientCurrentMode;
  v98 = @"Default";
  if (efficientCurrentMode)
  {
    v98 = efficientCurrentMode;
  }

  v708 = v98;

  v99 = __atxlog_handle_app_prediction();
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
  {
    v100 = objc_opt_class();
    v101 = NSStringFromClass(v100);
    LODWORD(v872[0]) = 138412546;
    *(v872 + 4) = v101;
    WORD2(v872[1]) = 2112;
    *(&v872[1] + 6) = v708;
    _os_log_impl(&dword_2263AA000, v99, OS_LOG_TYPE_DEFAULT, "%@ - retrieved current mode of %@ from ATXUnifiedActivityBiomeStream", v872, 0x16u);
  }

  v102 = objc_alloc(MEMORY[0x277CEB6A0]);
  v103 = +[ATXModeEntityScorerServer sharedInstance];
  v706 = [v102 initWithModeEntityScorerClient:v103];

  v730 = [v706 modeEntityScoresFromCacheForModeEntityTypeIdentifier:*MEMORY[0x277D41C88] modeIdentifier:v708 modeConfigurationType:0];
  if (v809 >= 1)
  {
    v104 = 0;
    v733 = 0;
    v105.i32[1] = -1059153344;
    v718 = timeOfDay;
    v719 = dayOfWeek;
    *v105.i32 = -31337.0;
    v716 = onWifi;
    v717 = dateInWeekend;
    v715 = (context ^ 1u);
    v720 = v814;
    v721 = vdupq_lane_s32(v105, 0);
    v106 = v94 / 4294967300.0;
    while (1)
    {
      contexta = objc_autoreleasePoolPush();
      v808 = [obj objectAtIndexedSubscript:v104];
      if (!v751)
      {
        break;
      }

      [v751 itemForBundleId:v808];
      if (!v872[0])
      {
        goto LABEL_45;
      }

      if (0x13A524387AC82261 * ((v826[1] - *v826) >> 3) <= v104)
      {
        std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
      }

      v107 = (*v826 + 3336 * v104);
      objc_storeStrong(v107, v872[0]);
      memcpy(v107 + 1, &v872[1], 0xCFEuLL);
LABEL_114:

      objc_autoreleasePoolPop(contexta);
      if (++v104 == v809)
      {
        goto LABEL_115;
      }
    }

    bzero(v872, 0xD08uLL);
LABEL_45:
    v108 = v808;
    v849 = v108;
    v850[830] = -31337.0;
    LOWORD(v850[831]) = 0;
    for (j = 4; j != 832; j += 4)
    {
      *&v850[j - 2] = v721;
    }

    v815 = [v843[12] appInfoForBundleId:v108];
    v110 = __atxlog_handle_app_prediction();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
    {
      v870 = 138412290;
      v871 = v108;
      _os_log_debug_impl(&dword_2263AA000, v110, OS_LOG_TYPE_DEBUG, "Setting score inputs for app with BundleId: %@", &v870, 0xCu);
    }

    v111 = ATXIsRemoteAppBundleId();
    *&v112 = ATXSetInput(&v849, 0x33BuLL, v111);
    genreId = [v815 genreId];
    v114 = genreId == 0;

    if (!v114)
    {
      genreId2 = [v815 genreId];
      [v781 setValue:genreId2 forKey:v108];
    }

    app2VecCluster = [v815 app2VecCluster];
    v117 = app2VecCluster == 0;

    if (!v117)
    {
      app2VecCluster2 = [v815 app2VecCluster];
      [v780 setValue:app2VecCluster2 forKey:v108];
    }

    installDate = [v815 installDate];
    if ((installDate != 0) | v733 & 1)
    {
      if (installDate)
      {
        v120 = installDate;
        timeContext5 = [v838 timeContext];
        date2 = [timeContext5 date];
        ATXSetInputAge(&v849, 0, v120, date2);

        installDate2 = v120;
        v124 = v815;
LABEL_65:

        v125 = installDate2;
        v815 = v124;
        goto LABEL_66;
      }

      v125 = 0;
    }

    else
    {
      if (([v108 hasPrefix:@"com.apple"] & 1) == 0)
      {
        [v843[6] train];
        v124 = [v843[12] appInfoForBundleId:v108];

        installDate2 = [v124 installDate];
        if (installDate2)
        {
          timeContext5 = [v838 timeContext];
          date3 = [timeContext5 date];
          ATXSetInputAge(&v849, 0, installDate2, date3);
        }

        else
        {
          timeContext5 = __atxlog_handle_app_prediction();
          if (os_log_type_enabled(timeContext5, OS_LOG_TYPE_DEFAULT))
          {
            v870 = 138412290;
            v871 = v108;
          }

          installDate2 = 0;
        }

        v733 = 1;
        goto LABEL_65;
      }

      v125 = 0;
      v733 = 0;
    }

LABEL_66:
    v127 = 0.0;
    if (v104 >= v720)
    {
      timeContext6 = [v838 timeContext];
      date4 = [timeContext6 date];
      v130 = [date4 dateByAddingTimeInterval:-43200.0];
      timeContext7 = [v838 timeContext];
      date5 = [timeContext7 date];
      ATXSetInputAge(&v849, 0, v130, date5);

      v127 = 1.0;
    }

    ATXSetInput(&v849, 0x301uLL, v127);
    ATXSetInput(&v849, 0x6CuLL, v719);
    ATXSetInput(&v849, 0x6DuLL, v718);
    ATXSetInput(&v849, 0x6EuLL, v717);
    ATXSetInput(&v849, 0x161uLL, v106);
    v133 = arc4random();
    *&v134 = ATXSetInput(&v849, 0x162uLL, v133 / 4294967300.0);
    ambientLightContext = [v838 ambientLightContext];
    ambientLightType = [ambientLightContext ambientLightType];

    if (ambientLightType != 7)
    {
      v137 = [MEMORY[0x277CCABB0] numberWithInt:ambientLightType];
      stringValue = [v137 stringValue];
      [v732 launchPopularityWithBundleId:v108 category:stringValue];
      ATXSetInput(&v849, 0x186uLL, v139);

      v140 = [MEMORY[0x277CCABB0] numberWithInt:ambientLightType];
      stringValue2 = [v140 stringValue];
      [v732 relativeLaunchPopularityWithBundleId:v108 category:stringValue2];
      ATXSetInput(&v849, 0x185uLL, v142);
    }

    v143 = ATXDayZeroScore(v108, v843[17], launchedAppCount);
    *&v144 = ATXSetInput(&v849, 0x21uLL, v143);
    v145 = [v843[17] objectForKeyedSubscript:{@"staticPenalties", v144}];
    v750 = [v145 objectForKeyedSubscript:v108];

    [v750 doubleValue];
    *&v147 = ATXSetInput(&v849, 0x22uLL, v146);
    [_ATXFeedbackConstants alphaForBundleId:v108, v147];
    *&v149 = ATXSetInput(&v849, 0x166uLL, v148);
    [_ATXFeedbackConstants betaForBundleId:v108, v149];
    *&v151 = ATXSetInput(&v849, 0x167uLL, v150);
    v152 = [v834 objectForKeyedSubscript:{v108, v151}];
    [v152 doubleValue];
    ATXSetInput(&v849, 0x16AuLL, v153);

    v154 = [v832 objectForKeyedSubscript:v108];
    [v154 doubleValue];
    ATXSetInput(&v849, 0x16BuLL, v155);

    v156 = [v830 objectForKeyedSubscript:v108];
    [v156 doubleValue];
    ATXSetInput(&v849, 0x16CuLL, v157);

    v158 = [v828 objectForKeyedSubscript:v108];
    [v158 doubleValue];
    ATXSetInput(&v849, 0x16DuLL, v159);

    v160 = [v731 objectForKeyedSubscript:v108];
    [v160 doubleValue];
    ATXSetInput(&v849, 0x169uLL, v161);

    v162 = [v843[11] fetchContextualAssociationScoresForBundleId:v108];
    v163 = [v162 objectForKeyedSubscript:@"GeohashZoom7"];
    [v163 doubleValue];
    ATXSetInput(&v849, 0x29BuLL, v164);

    v165 = [v162 objectForKeyedSubscript:@"GeohashCoarse"];
    [v165 doubleValue];
    ATXSetInput(&v849, 0x29CuLL, v166);

    v167 = [v162 objectForKeyedSubscript:@"GeohashSpecific"];
    [v167 doubleValue];
    ATXSetInput(&v849, 0x29DuLL, v168);

    v169 = [v162 objectForKeyedSubscript:@"PartOfWeek"];
    [v169 doubleValue];
    ATXSetInput(&v849, 0x29EuLL, v170);

    v171 = [v162 objectForKeyedSubscript:@"CoarseTime"];
    [v171 doubleValue];
    ATXSetInput(&v849, 0x29FuLL, v172);

    v173 = [v162 objectForKeyedSubscript:@"LOIType"];
    [v173 doubleValue];
    ATXSetInput(&v849, 0x2A0uLL, v174);

    lastLaunch = [v815 lastLaunch];
    timeContext8 = [v838 timeContext];
    date6 = [timeContext8 date];
    ATXSetInputAge(&v849, 2uLL, lastLaunch, date6);

    lastSpotlightLaunch = [v815 lastSpotlightLaunch];
    timeContext9 = [v838 timeContext];
    date7 = [timeContext9 date];
    ATXSetInputAge(&v849, 1uLL, lastSpotlightLaunch, date7);

    averageSecondsBetweenLaunches = [v815 averageSecondsBetweenLaunches];
    if (averageSecondsBetweenLaunches)
    {
      [averageSecondsBetweenLaunches doubleValue];
      *&v181 = ATXSetInput(&v849, 4uLL, v182);
    }

    medianSecondsBetweenLaunches = [v815 medianSecondsBetweenLaunches];
    if (medianSecondsBetweenLaunches)
    {
      [medianSecondsBetweenLaunches doubleValue];
      *&v183 = ATXSetInput(&v849, 3uLL, v184);
    }

    if (lastUnlockDate)
    {
      [date timeIntervalSinceDate:{lastUnlockDate, v183}];
      if (v183 >= 0.0)
      {
        HIDWORD(v185) = 1085021696;
        if (v183 >= 3600.0)
        {
          v183 = 3599.0;
        }

        LODWORD(v185) = 1.0;
        [v712 relativeLaunchPopularityWithBundleId:v108 elapsedTime:v183 distanceScale:v185];
        *&v183 = ATXSetInput(&v849, 5uLL, v186);
      }
    }

    v187 = [v843[13] appInFolderWithBundleId:{v108, v183}];
    if (v187)
    {
      ATXSetInput(&v849, 7uLL, [v843[13] folderPageNumberForBundleId:v108]);
    }

    *&v188 = ATXSetInput(&v849, 6uLL, v187);
    v189 = [v843[13] springboardPageNumberForBundleId:{v108, v188}];
    v190 = 0.0;
    if (v189 != -1)
    {
      v190 = 1.0;
    }

    ATXSetInput(&v849, 8uLL, v190);
    *&v191 = ATXSetInput(&v849, 9uLL, v189);
    if (v189 == -1)
    {
      *&v191 = ATXSetInput(&v849, 9uLL, 0.0);
    }

    *&v192 = ATXSetInput(&v849, 0xAuLL, [v843[13] appOnDockWithBundleId:{v108, v191}]);
    v193 = v843[5];
    locationMotionContext9 = [v838 locationMotionContext];
    currentLOI2 = [locationMotionContext9 currentLOI];
    [v193 launchProbabilityAtLOI:currentLOI2 bundleId:v108];
    ATXSetInput(&v849, 0x26uLL, v196);

    [v843[7] popularityAtCurrentMicroLocationForApp:v108];
    *&v198 = ATXSetInput(&v849, 0x27uLL, v197);
    [v743 overallLaunchPopularityForBundleId:{v108, v198}];
    if (!inAirplaneMode)
    {
      v199 = 0.0;
    }

    ATXSetInput(&v849, 0x3DuLL, v199);
    v200 = 0.0;
    if (inAirplaneMode)
    {
      [v743 totalLaunches];
    }

    *&v201 = ATXSetInput(&v849, 0x3EuLL, v200);
    v869 = v108;
    v202 = [MEMORY[0x277CBEA60] arrayWithObjects:&v869 count:{1, v201}];
    [v743 totalLaunchesForBundleIds:v202];
    ATXSetInput(&v849, 0x2A4uLL, v203);

    [v779 overallLaunchPopularityForBundleId:v108];
    *&v205 = ATXSetInput(&v849, 0x3FuLL, v204);
    [v779 totalLaunches];
    *&v207 = ATXSetInput(&v849, 0x40uLL, v206);
    [v812 overallLaunchPopularityForBundleId:v108 category:{wifiSSID, v207}];
    *&v209 = ATXSetInput(&v849, 0x41uLL, v208);
    [v812 totalLaunchesForCategory:{wifiSSID, v209}];
    *&v211 = ATXSetInput(&v849, 0x42uLL, v210);
    [v812 totalLaunchesForBundleId:v108 category:{wifiSSID, v211}];
    *&v213 = ATXSetInput(&v849, 0x2A1uLL, v212);
    [v812 totalLaunchesForBundleId:{v108, v213}];
    ATXSetInput(&v849, 0x2A2uLL, v214);
    *&v215 = ATXSetInput(&v849, 0x43uLL, v716);
    [v775 overallLaunchPopularityForBundleId:v108 category:{v776, v215}];
    *&v217 = ATXSetInput(&v849, 0x44uLL, v216);
    [v775 totalLaunchesForCategory:{v776, v217}];
    *&v219 = ATXSetInput(&v849, 0x45uLL, v218);
    [v775 totalLaunchesForBundleId:v108 category:{v776, v219}];
    *&v221 = ATXSetInput(&v849, 0x2A3uLL, v220);
    [v813 overallLaunchPopularityForBundleId:v108 category:{v806, v221}];
    *&v223 = ATXSetInput(&v849, 0x61uLL, v222);
    [v813 totalLaunchesForBundleId:v108 category:{v806, v223}];
    *&v225 = ATXSetInput(&v849, 0x1FFuLL, v224);
    [v813 totalLaunchesForBundleId:{v108, v225}];
    *&v227 = ATXSetInput(&v849, 0x201uLL, v226);
    [v813 relativeLaunchPopularityWithBundleId:v108 category:{v806, v227}];
    *&v229 = ATXSetInput(&v849, 0x62uLL, v228);
    [v813 launchPopularityWithBundleId:v108 category:{v806, v229}];
    *&v231 = ATXSetInput(&v849, 0x63uLL, v230);
    [v813 totalLaunches];
    *&v233 = ATXSetInput(&v849, 0x64uLL, v232);
    [v841 totalLaunches];
    *&v235 = ATXSetInput(&v849, 0x3BuLL, v234);
    [v841 launchPopularityWithBundleId:v108 date:{date, v235}];
    *&v237 = ATXSetInput(&v849, 0x1AuLL, v236);
    [v841 relativeLaunchPopularityWithBundleId:v108 date:{date, v237}];
    ATXSetInput(&v849, 0x1BuLL, v238);
    LODWORD(v239) = 1045220557;
    [v841 relativeLaunchPopularityWithBundleId:v108 date:date distanceScale:v239];
    *&v241 = ATXSetInput(&v849, 0x1CuLL, v240);
    [v841 overallLaunchPopularityForBundleId:{v108, v241}];
    *&v243 = ATXSetInput(&v849, 0x1DuLL, v242);
    [v803 totalLaunches];
    *&v245 = ATXSetInput(&v849, 0x3CuLL, v244);
    [v803 launchPopularityWithBundleId:v108 date:{date, v245}];
    *&v247 = ATXSetInput(&v849, 0x1EuLL, v246);
    [v803 relativeLaunchPopularityWithBundleId:v108 date:{date, v247}];
    *&v249 = ATXSetInput(&v849, 0x1FuLL, v248);
    [v803 overallLaunchPopularityForBundleId:{v108, v249}];
    *&v251 = ATXSetInput(&v849, 0x20uLL, v250);
    v868 = v108;
    v252 = [MEMORY[0x277CBEA60] arrayWithObjects:&v868 count:{1, v251}];
    [v739 totalLaunchesForBundleIds:v252];
    ATXSetInput(&v849, 0x2CCuLL, v253);

    [v739 totalLaunches];
    *&v255 = ATXSetInput(&v849, 0x2CDuLL, v254);
    v867 = v108;
    v256 = [MEMORY[0x277CBEA60] arrayWithObjects:&v867 count:{1, v255}];
    [v738 totalLaunchesForBundleIds:v256];
    ATXSetInput(&v849, 0x2CEuLL, v257);

    [v738 totalLaunches];
    *&v259 = ATXSetInput(&v849, 0x2CFuLL, v258);
    [v839 launchPopularityWithBundleId:v108 date:{date, v259}];
    *&v261 = ATXSetInput(&v849, 0x23uLL, v260);
    [v839 relativeLaunchPopularityWithBundleId:v108 date:{date, v261}];
    *&v263 = ATXSetInput(&v849, 0x24uLL, v262);
    v264 = [v811 launchCountsForEachCategoryForBundleId:{v108, v263}];
    allValues = [v264 allValues];

    v266 = [v810 launchCountsForEachCategoryForBundleId:v108];
    allValues2 = [v266 allValues];

    v267 = [v805 launchCountsForEachCategoryForBundleId:v108];
    allValues3 = [v267 allValues];

    [v843 setDistributionBasedScoreInputsForTimeAndDay:&v849 forBundleId:v108 withTimeOfDayHistogram:v841 withDayOfWeekHistogram:v839];
    [v843 setDistributionBasedScoreInputsForItem:&v849 withGeoHashResolution:0 withGeoHashLaunchCounts:allValues];
    [v843 setDistributionBasedScoreInputsForItem:&v849 withGeoHashResolution:1 withGeoHashLaunchCounts:allValues2];
    [v843 setDistributionBasedScoreInputsForItem:&v849 withGeoHashResolution:2 withGeoHashLaunchCounts:allValues3];
    *&v268 = ATXSetInput(&v849, 0x228uLL, [_ATXActionUtils timeBucketFromZeroToTwentyFour:date timeZone:0]);
    [v841 entropyForBundleId:{v108, v268}];
    ATXSetInput(&v849, 0x1F8uLL, v269);
    LODWORD(v270) = 1.0;
    [v839 totalLaunchesForBundleIds:obj forDate:date distanceScale:v270];
    *&v272 = ATXSetInput(&v849, 0x1FDuLL, v271);
    v866 = v108;
    v273 = [MEMORY[0x277CBEA60] arrayWithObjects:&v866 count:{1, v272}];
    [v839 totalLaunchesForBundleIds:v273];
    ATXSetInput(&v849, 0x1FEuLL, v274);

    [v813 totalLaunchesForCategory:v806];
    *&v276 = ATXSetInput(&v849, 0x200uLL, v275);
    [v811 totalLaunchesForBundleId:v108 category:{v820, v276}];
    *&v278 = ATXSetInput(&v849, 0x1FBuLL, v277);
    [v811 totalLaunchesForBundleId:{v108, v278}];
    *&v280 = ATXSetInput(&v849, 0x205uLL, v279);
    [v811 totalLaunchesForCategory:{v820, v280}];
    *&v282 = ATXSetInput(&v849, 0x204uLL, v281);
    [v811 entropyForBundleId:{v108, v282}];
    *&v284 = ATXSetInput(&v849, 0x1F9uLL, v283);
    [v810 totalLaunchesForBundleId:v108 category:{v822, v284}];
    *&v286 = ATXSetInput(&v849, 0x1FCuLL, v285);
    [v810 totalLaunchesForBundleId:{v108, v286}];
    *&v288 = ATXSetInput(&v849, 0x203uLL, v287);
    [v810 totalLaunchesForCategory:{v822, v288}];
    *&v290 = ATXSetInput(&v849, 0x202uLL, v289);
    [v810 entropyForBundleId:{v108, v290}];
    *&v292 = ATXSetInput(&v849, 0x1FAuLL, v291);
    [v805 totalLaunchesForBundleId:v108 category:{v737, v292}];
    *&v294 = ATXSetInput(&v849, 0x28CuLL, v293);
    [v805 totalLaunchesForBundleId:{v108, v294}];
    *&v296 = ATXSetInput(&v849, 0x28EuLL, v295);
    [v805 totalLaunchesForCategory:{v737, v296}];
    *&v298 = ATXSetInput(&v849, 0x28DuLL, v297);
    [v805 entropyForBundleId:{v108, v298}];
    *&v300 = ATXSetInput(&v849, 0x299uLL, v299);
    [v774 totalLaunchesForBundleId:v108 category:{v816, v300}];
    *&v302 = ATXSetInput(&v849, 0x2A5uLL, v301);
    [v774 totalLaunchesForCategory:{v816, v302}];
    *&v304 = ATXSetInput(&v849, 0x2A6uLL, v303);
    [v774 totalLaunchesForBundleId:{v108, v304}];
    *&v306 = ATXSetInput(&v849, 0x2A7uLL, v305);
    [v773 totalLaunchesForBundleId:v108 category:{v816, v306}];
    *&v308 = ATXSetInput(&v849, 0x2A8uLL, v307);
    [v773 totalLaunchesForCategory:{v816, v308}];
    *&v310 = ATXSetInput(&v849, 0x2A9uLL, v309);
    [v773 totalLaunchesForBundleId:{v108, v310}];
    *&v312 = ATXSetInput(&v849, 0x2AAuLL, v311);
    [v772 totalLaunchesForBundleId:v108 category:{v818, v312}];
    *&v314 = ATXSetInput(&v849, 0x2ABuLL, v313);
    [v772 totalLaunchesForCategory:{v818, v314}];
    *&v316 = ATXSetInput(&v849, 0x2ACuLL, v315);
    [v772 totalLaunchesForBundleId:{v108, v316}];
    *&v318 = ATXSetInput(&v849, 0x2ADuLL, v317);
    [v771 totalLaunchesForBundleId:v108 category:{v818, v318}];
    *&v320 = ATXSetInput(&v849, 0x2AEuLL, v319);
    [v771 totalLaunchesForCategory:{v818, v320}];
    *&v322 = ATXSetInput(&v849, 0x2AFuLL, v321);
    [v771 totalLaunchesForBundleId:{v108, v322}];
    *&v324 = ATXSetInput(&v849, 0x2B0uLL, v323);
    [v770 totalLaunchesForBundleId:v108 category:{v822, v324}];
    *&v326 = ATXSetInput(&v849, 0x2B1uLL, v325);
    [v770 totalLaunchesForCategory:{v822, v326}];
    *&v328 = ATXSetInput(&v849, 0x2B2uLL, v327);
    [v770 totalLaunchesForBundleId:{v108, v328}];
    *&v330 = ATXSetInput(&v849, 0x2B3uLL, v329);
    [v769 totalLaunchesForBundleId:v108 category:{v822, v330}];
    *&v332 = ATXSetInput(&v849, 0x2B4uLL, v331);
    [v769 totalLaunchesForCategory:{v822, v332}];
    *&v334 = ATXSetInput(&v849, 0x2B5uLL, v333);
    [v769 totalLaunchesForBundleId:{v108, v334}];
    *&v336 = ATXSetInput(&v849, 0x2B6uLL, v335);
    [v768 totalLaunchesForBundleId:v108 category:{v820, v336}];
    *&v338 = ATXSetInput(&v849, 0x2B7uLL, v337);
    [v768 totalLaunchesForCategory:{v820, v338}];
    *&v340 = ATXSetInput(&v849, 0x2B8uLL, v339);
    [v768 totalLaunchesForBundleId:{v108, v340}];
    *&v342 = ATXSetInput(&v849, 0x2B9uLL, v341);
    [v767 totalLaunchesForBundleId:v108 category:{v820, v342}];
    *&v344 = ATXSetInput(&v849, 0x2BAuLL, v343);
    [v767 totalLaunchesForCategory:{v820, v344}];
    *&v346 = ATXSetInput(&v849, 0x2BBuLL, v345);
    [v767 totalLaunchesForBundleId:{v108, v346}];
    *&v348 = ATXSetInput(&v849, 0x2BCuLL, v347);
    [v802 totalLaunchesForBundleId:v108 category:{v824, v348}];
    *&v350 = ATXSetInput(&v849, 0x2BDuLL, v349);
    [v802 totalLaunchesForCategory:{v824, v350}];
    *&v352 = ATXSetInput(&v849, 0x2BEuLL, v351);
    [v802 totalLaunchesForBundleId:{v108, v352}];
    *&v354 = ATXSetInput(&v849, 0x2BFuLL, v353);
    [v801 totalLaunchesForBundleId:v108 category:{v824, v354}];
    *&v356 = ATXSetInput(&v849, 0x2C0uLL, v355);
    [v801 totalLaunchesForCategory:{v824, v356}];
    *&v358 = ATXSetInput(&v849, 0x2C1uLL, v357);
    [v801 totalLaunchesForBundleId:{v108, v358}];
    *&v360 = ATXSetInput(&v849, 0x2C2uLL, v359);
    [v800 totalLaunchesForBundleId:v108 category:{v824, v360}];
    *&v362 = ATXSetInput(&v849, 0x2C3uLL, v361);
    [v800 totalLaunchesForCategory:{v824, v362}];
    *&v364 = ATXSetInput(&v849, 0x2C4uLL, v363);
    [v800 totalLaunchesForBundleId:{v108, v364}];
    *&v366 = ATXSetInput(&v849, 0x2C5uLL, v365);
    [v799 totalLaunchesForBundleId:v108 category:{v817, v366}];
    *&v368 = ATXSetInput(&v849, 0x2C6uLL, v367);
    [v799 totalLaunchesForCategory:{v817, v368}];
    *&v370 = ATXSetInput(&v849, 0x2C7uLL, v369);
    [v799 totalLaunchesForBundleId:{v108, v370}];
    *&v372 = ATXSetInput(&v849, 0x2C8uLL, v371);
    [v798 totalLaunchesForBundleId:v108 category:{v817, v372}];
    *&v374 = ATXSetInput(&v849, 0x2C9uLL, v373);
    [v798 totalLaunchesForCategory:{v817, v374}];
    *&v376 = ATXSetInput(&v849, 0x2CAuLL, v375);
    [v798 totalLaunchesForBundleId:{v108, v376}];
    *&v378 = ATXSetInput(&v849, 0x2CBuLL, v377);
    [v766 totalLaunchesForBundleId:v108 category:{v816, v378}];
    *&v380 = ATXSetInput(&v849, 0x2D0uLL, v379);
    [v766 totalLaunchesForCategory:{v816, v380}];
    *&v382 = ATXSetInput(&v849, 0x2D1uLL, v381);
    [v766 totalLaunchesForBundleId:{v108, v382}];
    *&v384 = ATXSetInput(&v849, 0x2D2uLL, v383);
    [v765 totalLaunchesForBundleId:v108 category:{v816, v384}];
    *&v386 = ATXSetInput(&v849, 0x2D3uLL, v385);
    [v765 totalLaunchesForCategory:{v816, v386}];
    *&v388 = ATXSetInput(&v849, 0x2D4uLL, v387);
    [v765 totalLaunchesForBundleId:{v108, v388}];
    *&v390 = ATXSetInput(&v849, 0x2D5uLL, v389);
    [v764 totalLaunchesForBundleId:v108 category:{v818, v390}];
    *&v392 = ATXSetInput(&v849, 0x2D6uLL, v391);
    [v764 totalLaunchesForCategory:{v818, v392}];
    *&v394 = ATXSetInput(&v849, 0x2D7uLL, v393);
    [v764 totalLaunchesForBundleId:{v108, v394}];
    *&v396 = ATXSetInput(&v849, 0x2D8uLL, v395);
    [v763 totalLaunchesForBundleId:v108 category:{v818, v396}];
    *&v398 = ATXSetInput(&v849, 0x2D9uLL, v397);
    [v763 totalLaunchesForCategory:{v818, v398}];
    *&v400 = ATXSetInput(&v849, 0x2DAuLL, v399);
    [v763 totalLaunchesForBundleId:{v108, v400}];
    *&v402 = ATXSetInput(&v849, 0x2DBuLL, v401);
    [v762 totalLaunchesForBundleId:v108 category:{v822, v402}];
    *&v404 = ATXSetInput(&v849, 0x2DCuLL, v403);
    [v762 totalLaunchesForCategory:{v822, v404}];
    *&v406 = ATXSetInput(&v849, 0x2DDuLL, v405);
    [v762 totalLaunchesForBundleId:{v108, v406}];
    *&v408 = ATXSetInput(&v849, 0x2DEuLL, v407);
    [v761 totalLaunchesForBundleId:v108 category:{v822, v408}];
    *&v410 = ATXSetInput(&v849, 0x2DFuLL, v409);
    [v761 totalLaunchesForCategory:{v822, v410}];
    *&v412 = ATXSetInput(&v849, 0x2E0uLL, v411);
    [v761 totalLaunchesForBundleId:{v108, v412}];
    *&v414 = ATXSetInput(&v849, 0x2E1uLL, v413);
    [v760 totalLaunchesForBundleId:v108 category:{v820, v414}];
    *&v416 = ATXSetInput(&v849, 0x2E2uLL, v415);
    [v760 totalLaunchesForCategory:{v820, v416}];
    *&v418 = ATXSetInput(&v849, 0x2E3uLL, v417);
    [v760 totalLaunchesForBundleId:{v108, v418}];
    *&v420 = ATXSetInput(&v849, 0x2E4uLL, v419);
    [v759 totalLaunchesForBundleId:v108 category:{v820, v420}];
    *&v422 = ATXSetInput(&v849, 0x2E5uLL, v421);
    [v759 totalLaunchesForCategory:{v820, v422}];
    *&v424 = ATXSetInput(&v849, 0x2E6uLL, v423);
    [v759 totalLaunchesForBundleId:{v108, v424}];
    *&v426 = ATXSetInput(&v849, 0x2E7uLL, v425);
    [v797 totalLaunchesForBundleId:v108 category:{v824, v426}];
    *&v428 = ATXSetInput(&v849, 0x2E8uLL, v427);
    [v797 totalLaunchesForCategory:{v824, v428}];
    *&v430 = ATXSetInput(&v849, 0x2E9uLL, v429);
    [v797 totalLaunchesForBundleId:{v108, v430}];
    *&v432 = ATXSetInput(&v849, 0x2EAuLL, v431);
    [v796 totalLaunchesForBundleId:v108 category:{v824, v432}];
    *&v434 = ATXSetInput(&v849, 0x2EBuLL, v433);
    [v796 totalLaunchesForCategory:{v824, v434}];
    *&v436 = ATXSetInput(&v849, 0x2ECuLL, v435);
    [v796 totalLaunchesForBundleId:{v108, v436}];
    *&v438 = ATXSetInput(&v849, 0x2EDuLL, v437);
    [v795 totalLaunchesForBundleId:v108 category:{v824, v438}];
    *&v440 = ATXSetInput(&v849, 0x2EEuLL, v439);
    [v795 totalLaunchesForCategory:{v824, v440}];
    *&v442 = ATXSetInput(&v849, 0x2EFuLL, v441);
    [v795 totalLaunchesForBundleId:{v108, v442}];
    *&v444 = ATXSetInput(&v849, 0x2F0uLL, v443);
    [v794 totalLaunchesForBundleId:v108 category:{v817, v444}];
    *&v446 = ATXSetInput(&v849, 0x2F1uLL, v445);
    [v794 totalLaunchesForCategory:{v817, v446}];
    *&v448 = ATXSetInput(&v849, 0x2F2uLL, v447);
    [v794 totalLaunchesForBundleId:{v108, v448}];
    *&v450 = ATXSetInput(&v849, 0x2F3uLL, v449);
    [v793 totalLaunchesForBundleId:v108 category:{v817, v450}];
    *&v452 = ATXSetInput(&v849, 0x2F4uLL, v451);
    [v793 totalLaunchesForCategory:{v817, v452}];
    *&v454 = ATXSetInput(&v849, 0x2F5uLL, v453);
    [v793 totalLaunchesForBundleId:{v108, v454}];
    *&v456 = ATXSetInput(&v849, 0x2F6uLL, v455);
    [v802 totalLaunches];
    *&v458 = ATXSetInput(&v849, 0x2F7uLL, v457);
    [v799 totalLaunches];
    *&v460 = ATXSetInput(&v849, 0x2F8uLL, v459);
    [v801 totalLaunches];
    *&v462 = ATXSetInput(&v849, 0x2F9uLL, v461);
    [v798 totalLaunches];
    *&v464 = ATXSetInput(&v849, 0x2FAuLL, v463);
    [v800 totalLaunches];
    *&v466 = ATXSetInput(&v849, 0x2FBuLL, v465);
    [v797 totalLaunches];
    *&v468 = ATXSetInput(&v849, 0x2FCuLL, v467);
    [v794 totalLaunches];
    *&v470 = ATXSetInput(&v849, 0x2FDuLL, v469);
    [v796 totalLaunches];
    *&v472 = ATXSetInput(&v849, 0x2FEuLL, v471);
    [v793 totalLaunches];
    *&v474 = ATXSetInput(&v849, 0x2FFuLL, v473);
    [v795 totalLaunches];
    *&v476 = ATXSetInput(&v849, 0x300uLL, v475);
    [v811 totalLaunches];
    *&v478 = ATXSetInput(&v849, 0x207uLL, v477);
    [v810 totalLaunches];
    ATXSetInput(&v849, 0x206uLL, v479);
    *&v480 = ATXSetInput(&v849, 0x208uLL, v715);
    if (v836)
    {
      [v836 likelihoodForLaunch:{v108, v480}];
      ATXSetInput(&v849, 0x25uLL, v481);
    }

    ATXSetInput(&v849, 0x28uLL, v729);
    ATXSetInput(&v849, 0x29uLL, v728);
    *&v482 = ATXSetInput(&v849, 0x2AuLL, v727);
    [v839 entropyForBundleId:{v108, v482}];
    ATXSetInput(&v849, 0x2BuLL, v483);
    ATXSetInput(&v849, 0x2CuLL, v48);
    ATXSetInput(&v849, 0x2DuLL, v726);
    ATXSetInput(&v849, 0x2EuLL, v49);
    ATXSetInput(&v849, 0x2FuLL, v725);
    *&v484 = ATXSetInput(&v849, 0x30uLL, v724);
    [v812 entropyForBundleId:{v108, v484}];
    ATXSetInput(&v849, 0x31uLL, v485);
    ATXSetInput(&v849, 0x32uLL, v50);
    ATXSetInput(&v849, 0x33uLL, v809);
    v486 = -1.0;
    if ((v723 & 1) == 0)
    {
      [objc_opt_class() _computeL2DistanceFromBundleId:v108 to:__p app2vecMapping:v714];
      v486 = v487;
    }

    *&v488 = ATXSetInput(&v849, 0x34uLL, v486);
    *&v489 = ATXSetInput(&v849, 0x60uLL, [v843[8] appSupportsMedia:{v108, v488}]);
    v490 = [recentNotifications objectForKeyedSubscript:{v108, v489}];
    v491 = v490 == 0;

    if (!v491)
    {
      v492 = objc_opt_class();
      v493 = [recentNotifications objectForKeyedSubscript:v108];
      [v493 timeIntervalSinceNow];
      [v492 time:-v494 toAccuracyInSeconds:0.1];
      ATXSetInput(&v849, 0x4DuLL, v495);
    }

    v496 = [v843[14] predictionsForBundleId:v108];
    predictionIndex = 32767.0;
    v498 = v496;
    if (v496)
    {
      if ([v496 predictionSource] == 2)
      {
        [v498 confidence];
        *&v500 = ATXSetInput(&v849, 0x46uLL, v499);
        *&v501 = ATXSetInput(&v849, 0x47uLL, [v498 pmmReason]);
        *&v502 = ATXSetInput(&v849, 0x48uLL, [v498 anchorType]);
        predictionIndex = [v498 predictionIndex];
      }

      else
      {
        v503 = __atxlog_handle_pmm();
        if (os_log_type_enabled(v503, OS_LOG_TYPE_ERROR))
        {
          [ATXAppFeaturizer evaluateFeaturesForApps:v848 clipBundleIdsToRank:v503 consumerSubType:? intent:? scoreLogger:? context:? featureCache:?];
        }

        predictionIndex = 32767.0;
      }
    }

    *&v504 = ATXSetInput(&v849, 0x4BuLL, predictionIndex);
    *&v505 = ATXSetInput(&v849, 0x4CuLL, [v843[14] mmPredictionCount]);
    [v843[9] getCurrentDoseForApp:{v108, v505}];
    v507 = v506;
    *&v508 = ATXSetInput(&v849, 0x38uLL, v506);
    v509 = [v843[9] getDoseForApp:{v108, v508}];
    if (v509)
    {
      v510 = v509;
      [v509 movingAverage];
      *&v512 = ATXSetInput(&v849, 0x37uLL, v511);
      [v510 movingError];
      *&v514 = ATXSetInput(&v849, 0x3AuLL, v513);
      [v510 movingAverage];
      ATXSetInput(&v849, 0x39uLL, v515 - v507);
    }

    else
    {
      v510 = 0;
      v516 = __atxlog_handle_app_prediction();
      if (os_log_type_enabled(v516, OS_LOG_TYPE_DEBUG))
      {
        v870 = 138412290;
        v871 = v108;
        _os_log_debug_impl(&dword_2263AA000, v516, OS_LOG_TYPE_DEBUG, "[DailyDose]:can not find historical dose for: %@", &v870, 0xCu);
      }
    }

    if (v104 >= (v863 - v862) >> 3 || (ATXSetInput(&v849, 0xBuLL, *(v862 + v104)), v104 >= (v861 - v860) >> 3) || (ATXSetInput(&v849, 0xCuLL, *(v860 + v104)), v104 >= (v859 - v858) >> 3))
    {
      std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
    }

    *&v517 = ATXSetInput(&v849, 0xDuLL, *(v858 + v104));
    v518 = [v843[18] objectForKeyedSubscript:{@"appCategories", v517}];
    v744 = [v518 objectForKeyedSubscript:v108];

    *&v519 = ATXSetInput(&v849, 0x84uLL, [v744 intValue]);
    [v792 totalLaunchesForBundleId:v108 category:{v824, v519}];
    *&v521 = ATXSetInput(&v849, 0x189uLL, v520);
    [v792 totalLaunchesForCategory:{v824, v521}];
    *&v523 = ATXSetInput(&v849, 0x18AuLL, v522);
    [v792 totalLaunchesForBundleId:{v108, v523}];
    *&v525 = ATXSetInput(&v849, 0x18BuLL, v524);
    [v792 totalLaunches];
    *&v527 = ATXSetInput(&v849, 0x18CuLL, v526);
    [v791 totalLaunchesForBundleId:v108 category:{v824, v527}];
    *&v529 = ATXSetInput(&v849, 0x18DuLL, v528);
    [v791 totalLaunchesForCategory:{v824, v529}];
    *&v531 = ATXSetInput(&v849, 0x18EuLL, v530);
    [v791 totalLaunchesForBundleId:{v108, v531}];
    *&v533 = ATXSetInput(&v849, 0x18FuLL, v532);
    [v791 totalLaunches];
    *&v535 = ATXSetInput(&v849, 0x190uLL, v534);
    [v790 totalLaunchesForBundleId:v108 category:{v824, v535}];
    *&v537 = ATXSetInput(&v849, 0x191uLL, v536);
    [v790 totalLaunchesForCategory:{v824, v537}];
    *&v539 = ATXSetInput(&v849, 0x192uLL, v538);
    [v790 totalLaunchesForBundleId:{v108, v539}];
    *&v541 = ATXSetInput(&v849, 0x193uLL, v540);
    [v790 totalLaunches];
    *&v543 = ATXSetInput(&v849, 0x194uLL, v542);
    [v789 totalLaunchesForBundleId:v108 category:{v824, v543}];
    *&v545 = ATXSetInput(&v849, 0x195uLL, v544);
    [v789 totalLaunchesForCategory:{v824, v545}];
    *&v547 = ATXSetInput(&v849, 0x196uLL, v546);
    [v789 totalLaunchesForBundleId:{v108, v547}];
    *&v549 = ATXSetInput(&v849, 0x197uLL, v548);
    [v789 totalLaunches];
    *&v551 = ATXSetInput(&v849, 0x198uLL, v550);
    [v788 totalLaunchesForBundleId:v108 category:{v817, v551}];
    *&v553 = ATXSetInput(&v849, 0x199uLL, v552);
    [v788 totalLaunchesForCategory:{v817, v553}];
    *&v555 = ATXSetInput(&v849, 0x19AuLL, v554);
    [v788 totalLaunchesForBundleId:{v108, v555}];
    *&v557 = ATXSetInput(&v849, 0x19BuLL, v556);
    [v788 totalLaunches];
    *&v559 = ATXSetInput(&v849, 0x19CuLL, v558);
    [v787 totalLaunchesForBundleId:v108 category:{v817, v559}];
    *&v561 = ATXSetInput(&v849, 0x19DuLL, v560);
    [v787 totalLaunchesForCategory:{v817, v561}];
    *&v563 = ATXSetInput(&v849, 0x19EuLL, v562);
    [v787 totalLaunchesForBundleId:{v108, v563}];
    *&v565 = ATXSetInput(&v849, 0x19FuLL, v564);
    [v787 totalLaunches];
    *&v567 = ATXSetInput(&v849, 0x1A0uLL, v566);
    [v786 totalLaunchesForBundleId:v108 category:{v817, v567}];
    *&v569 = ATXSetInput(&v849, 0x1A1uLL, v568);
    [v786 totalLaunchesForCategory:{v817, v569}];
    *&v571 = ATXSetInput(&v849, 0x1A2uLL, v570);
    [v786 totalLaunchesForBundleId:{v108, v571}];
    *&v573 = ATXSetInput(&v849, 0x1A3uLL, v572);
    [v786 totalLaunches];
    *&v575 = ATXSetInput(&v849, 0x1A4uLL, v574);
    [v758 totalLaunchesForBundleId:v108 category:{v818, v575}];
    *&v577 = ATXSetInput(&v849, 0x209uLL, v576);
    [v758 totalLaunchesForCategory:{v818, v577}];
    *&v579 = ATXSetInput(&v849, 0x20AuLL, v578);
    [v758 totalLaunchesForBundleId:{v108, v579}];
    *&v581 = ATXSetInput(&v849, 0x20BuLL, v580);
    [v757 totalLaunchesForBundleId:v108 category:{v818, v581}];
    *&v583 = ATXSetInput(&v849, 0x20CuLL, v582);
    [v757 totalLaunchesForCategory:{v818, v583}];
    *&v585 = ATXSetInput(&v849, 0x20DuLL, v584);
    [v757 totalLaunchesForBundleId:{v108, v585}];
    *&v587 = ATXSetInput(&v849, 0x20EuLL, v586);
    [v756 totalLaunchesForBundleId:v108 category:{v818, v587}];
    *&v589 = ATXSetInput(&v849, 0x20FuLL, v588);
    [v756 totalLaunchesForCategory:{v818, v589}];
    *&v591 = ATXSetInput(&v849, 0x210uLL, v590);
    [v756 totalLaunchesForBundleId:{v108, v591}];
    *&v593 = ATXSetInput(&v849, 0x211uLL, v592);
    [v755 totalLaunchesForBundleId:v108 category:{v816, v593}];
    *&v595 = ATXSetInput(&v849, 0x212uLL, v594);
    [v755 totalLaunchesForCategory:{v816, v595}];
    *&v597 = ATXSetInput(&v849, 0x213uLL, v596);
    [v755 totalLaunchesForBundleId:{v108, v597}];
    *&v599 = ATXSetInput(&v849, 0x214uLL, v598);
    [v754 totalLaunchesForBundleId:v108 category:{v816, v599}];
    *&v601 = ATXSetInput(&v849, 0x215uLL, v600);
    [v754 totalLaunchesForCategory:{v816, v601}];
    *&v603 = ATXSetInput(&v849, 0x216uLL, v602);
    [v754 totalLaunchesForBundleId:{v108, v603}];
    *&v605 = ATXSetInput(&v849, 0x217uLL, v604);
    [v785 totalLaunchesForBundleId:v108 category:{v822, v605}];
    *&v607 = ATXSetInput(&v849, 0x218uLL, v606);
    [v785 totalLaunchesForCategory:{v822, v607}];
    *&v609 = ATXSetInput(&v849, 0x219uLL, v608);
    [v785 totalLaunchesForBundleId:{v108, v609}];
    *&v611 = ATXSetInput(&v849, 0x21AuLL, v610);
    [v784 totalLaunchesForBundleId:v108 category:{v822, v611}];
    *&v613 = ATXSetInput(&v849, 0x21BuLL, v612);
    [v784 totalLaunchesForCategory:{v822, v613}];
    *&v615 = ATXSetInput(&v849, 0x21CuLL, v614);
    [v784 totalLaunchesForBundleId:{v108, v615}];
    *&v617 = ATXSetInput(&v849, 0x21DuLL, v616);
    [v783 totalLaunchesForBundleId:v108 category:{v820, v617}];
    *&v619 = ATXSetInput(&v849, 0x21EuLL, v618);
    [v783 totalLaunchesForCategory:{v820, v619}];
    *&v621 = ATXSetInput(&v849, 0x21FuLL, v620);
    [v783 totalLaunchesForBundleId:{v108, v621}];
    *&v623 = ATXSetInput(&v849, 0x220uLL, v622);
    [v782 totalLaunchesForBundleId:v108 category:{v820, v623}];
    *&v625 = ATXSetInput(&v849, 0x221uLL, v624);
    [v782 totalLaunchesForCategory:{v820, v625}];
    *&v627 = ATXSetInput(&v849, 0x222uLL, v626);
    [v782 totalLaunchesForBundleId:{v108, v627}];
    *&v629 = ATXSetInput(&v849, 0x223uLL, v628);
    [v785 totalLaunches];
    *&v631 = ATXSetInput(&v849, 0x224uLL, v630);
    [v783 totalLaunches];
    *&v633 = ATXSetInput(&v849, 0x225uLL, v632);
    [v784 totalLaunches];
    *&v635 = ATXSetInput(&v849, 0x226uLL, v634);
    [v782 totalLaunches];
    *&v637 = ATXSetInput(&v849, 0x227uLL, v636);
    [v753 launchPopularityWithBundleId:v108 category:{currentPoiCategory, v637}];
    *&v639 = ATXSetInput(&v849, 0x326uLL, v638);
    [v753 relativeLaunchPopularityWithBundleId:v108 category:{currentPoiCategory, v639}];
    *&v641 = ATXSetInput(&v849, 0x327uLL, v640);
    [v753 totalLaunchesForBundleId:v108 category:{currentPoiCategory, v641}];
    *&v643 = ATXSetInput(&v849, 0x329uLL, v642);
    [v843 setModeAffinityScores:&v849 appModeEntityScores:{v730, v643}];
    v644 = v849;
    v845 = v644;
    memcpy(v846, v850, sizeof(v846));
    if (v751)
    {
      [v751 addItem:&v845 forBundleId:v108];
    }

    else
    {
    }

    if (0x13A524387AC82261 * ((v826[1] - *v826) >> 3) <= v104)
    {
      std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
    }

    v645 = (*v826 + 3336 * v104);
    objc_storeStrong(v645, v849);
    memcpy(v645 + 1, v850, 0xCFEuLL);

    goto LABEL_114;
  }

LABEL_115:

  if (__p)
  {
    v856 = __p;
    operator delete(__p);
  }

  if (v858)
  {
    v859 = v858;
    operator delete(v858);
  }

  if (v860)
  {
    v861 = v860;
    operator delete(v860);
  }

  if (v862)
  {
    v863 = v862;
    operator delete(v862);
  }

  objc_autoreleasePoolPop(v704);
  v646 = objc_opt_new();
  v821 = v646;
  v844 = objc_opt_new();
  v842 = objc_opt_new();
  v840 = objc_opt_new();
  v837 = objc_opt_new();
  v835 = objc_opt_new();
  v833 = objc_opt_new();
  v831 = objc_opt_new();
  v829 = objc_opt_new();
  v825 = objc_opt_new();
  v823 = objc_opt_new();
  v647 = objc_opt_new();
  v648 = objc_opt_new();
  v649 = objc_opt_new();
  v819 = objc_opt_new();
  if (v809 >= 1)
  {
    v650 = 0;
    v651 = 0;
    do
    {
      v652 = [obj objectAtIndexedSubscript:v651];
      v653 = [v781 objectForKeyedSubscript:v652];
      [v646 addScore:v653 group:*(*v826 + v650 + 124)];
      [v844 addScore:v653 group:*(*v826 + v650 + 164)];
      [v842 addScore:v653 group:*(*v826 + v650 + 160)];
      [v840 addScore:v653 group:*(*v826 + v650 + 144)];
      [v837 addScore:v653 group:*(*v826 + v650 + 268)];
      [v835 addScore:v653 group:*(*v826 + v650 + 260)];
      [v833 addScore:v653 group:*(*v826 + v650 + 244)];
      [v831 addScore:v653 group:*(*v826 + v650 + 168)];
      [v829 addScore:v653 group:*(*v826 + v650 + 276)];
      v654 = [v780 objectForKeyedSubscript:v652];
      [v825 addScore:v654 group:*(*v826 + v650 + 124)];
      [v823 addScore:v654 group:*(*v826 + v650 + 164)];
      [v647 addScore:v654 group:*(*v826 + v650 + 160)];
      [v648 addScore:v654 group:*(*v826 + v650 + 268)];
      [v649 addScore:v654 group:*(*v826 + v650 + 168)];
      if (v654)
      {
        [v819 addObject:v654];
      }

      v646 = v821;
      ++v651;
      v650 += 3336;
    }

    while (3336 * v809 != v650);
  }

  v655 = [v819 count];
  if (v809 >= 1)
  {
    v656 = 0;
    v657 = v655;
    do
    {
      v658 = [obj objectAtIndexedSubscript:v656];
      v659 = [v781 objectForKeyedSubscript:v658];
      v660 = *v826;
      [v646 getScoreForGroup:v659];
      *&v662 = ATXSetInput(v660 + 3336 * v656, 0x51uLL, v661);
      v663 = *v826;
      [v844 getScoreForGroup:{v659, v662}];
      *&v665 = ATXSetInput(v663 + 3336 * v656, 0x52uLL, v664);
      v666 = *v826;
      [v842 getScoreForGroup:{v659, v665}];
      *&v668 = ATXSetInput(v666 + 3336 * v656, 0x53uLL, v667);
      v669 = *v826;
      [v840 getScoreForGroup:{v659, v668}];
      *&v671 = ATXSetInput(v669 + 3336 * v656, 0x54uLL, v670);
      v672 = *v826;
      [v837 getScoreForGroup:{v659, v671}];
      *&v674 = ATXSetInput(v672 + 3336 * v656, 0x55uLL, v673);
      v675 = *v826;
      [v835 getScoreForGroup:{v659, v674}];
      *&v677 = ATXSetInput(v675 + 3336 * v656, 0x56uLL, v676);
      v678 = *v826;
      [v833 getScoreForGroup:{v659, v677}];
      *&v680 = ATXSetInput(v678 + 3336 * v656, 0x57uLL, v679);
      v681 = *v826;
      [v831 getScoreForGroup:{v659, v680}];
      *&v683 = ATXSetInput(v681 + 3336 * v656, 0x58uLL, v682);
      v684 = *v826;
      [v829 getScoreForGroup:{v659, v683}];
      *&v686 = ATXSetInput(v684 + 3336 * v656, 0x59uLL, v685);
      v687 = [v780 objectForKeyedSubscript:{v658, v686}];
      v688 = *v826;
      [v825 getScoreForGroup:v687];
      *&v690 = ATXSetInput(v688 + 3336 * v656, 0x5AuLL, v689);
      v691 = *v826;
      [v823 getScoreForGroup:{v687, v690}];
      *&v693 = ATXSetInput(v691 + 3336 * v656, 0x5BuLL, v692);
      v694 = *v826;
      [v647 getScoreForGroup:{v687, v693}];
      *&v696 = ATXSetInput(v694 + 3336 * v656, 0x5CuLL, v695);
      v697 = *v826;
      [v648 getScoreForGroup:{v687, v696}];
      *&v699 = ATXSetInput(v697 + 3336 * v656, 0x5DuLL, v698);
      v700 = *v826;
      [v649 getScoreForGroup:{v687, v699}];
      ATXSetInput(v700 + 3336 * v656, 0x5EuLL, v701);
      ATXSetInput(*v826 + 3336 * v656, 0x5FuLL, v657);

      ++v656;
    }

    while (v656 != v809);
  }

LABEL_132:
  v872[0] = &v864;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](v872);

  v703 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setModeAffinityScores:(ATXPredictionItem *)scores appModeEntityScores:(id)entityScores
{
  v24 = [entityScores objectForKeyedSubscript:scores->key];
  if (v24)
  {
    v6 = [ATXModeEntityScoringFeatures alloc];
    scoreMetadata = [v24 scoreMetadata];
    featureVector = [scoreMetadata featureVector];
    v9 = [(ATXModeEntityScoringFeatures *)v6 initFromJSON:featureVector];

    entitySpecificFeatures = [v9 entitySpecificFeatures];
    appCategoryScore = [entitySpecificFeatures appCategoryScore];
    [appCategoryScore doubleValue];
    v13 = v12;

    *&v14 = ATXSetInput(scores, 0x32AuLL, v13);
    [v9 posteriorProbability];
    *&v16 = ATXSetInput(scores, 0x32BuLL, v15);
    [v9 classConditionalProbability];
    *&v18 = ATXSetInput(scores, 0x32CuLL, v17);
    *&v19 = ATXSetInput(scores, 0x32DuLL, [v9 uniqueOccurrencesInMode]);
    *&v20 = ATXSetInput(scores, 0x32EuLL, [v9 localOccurrences]);
    *&v21 = ATXSetInput(scores, 0x32FuLL, [v9 globalOccurrences]);
    scoreMetadata2 = [v24 scoreMetadata];
    [scoreMetadata2 score];
    ATXSetInput(scores, 0x330uLL, v23);
  }

  else
  {
    [(ATXAppFeaturizer *)self setZeroValuesForModeEntityFeatures:scores];
  }
}

- (void)setZeroValuesForModeEntityFeatures:(ATXPredictionItem *)features
{
  ATXSetInput(features, 0x32AuLL, 0.0);
  ATXSetInput(features, 0x32BuLL, 0.0);
  ATXSetInput(features, 0x32CuLL, 0.0);
  ATXSetInput(features, 0x32DuLL, 0.0);
  ATXSetInput(features, 0x32EuLL, 0.0);
  ATXSetInput(features, 0x32FuLL, 0.0);

  ATXSetInput(features, 0x330uLL, 0.0);
}

- (void)setDistributionBasedScoreInputsForTimeAndDay:(ATXPredictionItem *)day forBundleId:(id)id withTimeOfDayHistogram:(id)histogram withDayOfWeekHistogram:(id)weekHistogram
{
  v33[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  histogramCopy = histogram;
  weekHistogramCopy = weekHistogram;
  bucketCount = [histogramCopy bucketCount];
  if (bucketCount <= 7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAppFeaturizer.mm" lineNumber:954 description:@"Number of aggregated time buckets should be greater than 0"];
  }

  v13 = 0;
  v14 = bucketCount >> 3;
  while (v13 != v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = 8 * v13;
    v17 = 0.0;
    v18 = 8;
    do
    {
      v33[0] = idCopy;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      [histogramCopy unsmoothedLaunchesForBundleIds:v19 forLocalTime:v16];
      v21 = v20;

      v17 = v17 + v21;
      ++v16;
      --v18;
    }

    while (v18);
    ATXSetInput(day, [_ATXScoreTypes mappingForTimeOfDayDistributionSignals:v13 forScoreInputCategory:0], v17);
    objc_autoreleasePoolPop(v15);
    ++v13;
  }

  for (i = 0; i != 7; ++i)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = [_ATXScoreTypes mappingForDayOfWeekDistributionSignals:i forScoreInputCategory:0];
    v32 = idCopy;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [weekHistogramCopy unsmoothedLaunchesForBundleIds:v25 forLocalTime:i];
    v27 = v26;

    ATXSetInput(day, v24, v27);
    objc_autoreleasePoolPop(v23);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setDistributionBasedScoreInputsForItem:(ATXPredictionItem *)item withGeoHashResolution:(unint64_t)resolution withGeoHashLaunchCounts:(id)counts
{
  v24[1] = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
  v24[0] = v23;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v9 = [countsCopy sortedArrayUsingDescriptors:v8];

  v11 = 0;
  if (resolution <= 1)
  {
    if (resolution)
    {
      if (resolution != 1)
      {
        goto LABEL_14;
      }

      *&v10 = ATXSetInput(item, 0x1F7uLL, [countsCopy count]);
      v12 = &kATXAppNumberOfScoreInputsForCoarseGeoHash;
    }

    else
    {
      *&v10 = ATXSetInput(item, 0x1F6uLL, [countsCopy count]);
      v12 = &kATXAppNumberOfScoreInputsForSpecificGeoHash;
    }

    goto LABEL_13;
  }

  if (resolution == 2)
  {
    *&v10 = ATXSetInput(item, 0x29AuLL, [countsCopy count]);
    v12 = &kATXAppNumberOfScoreInputsForZoom7GeoHash;
LABEL_13:
    v11 = *v12;
LABEL_14:
    v15 = 0;
    v16 = v11;
    while (1)
    {
      v17 = [v9 count];
      v18 = v17 >= v16 ? v16 : v17;
      if (v15 >= v18)
      {
        break;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = [_ATXScoreTypes mappingForTopRankedGeoHashSignalsWithResolution:resolution withRank:v15 forScoreInputCategory:0];
      v21 = [v9 objectAtIndex:v15];
      [v21 doubleValue];
      ATXSetInput(item, v20, v22);

      objc_autoreleasePoolPop(v19);
      ++v15;
    }

    goto LABEL_10;
  }

  if (resolution != 0xFFFFFFFF)
  {
    goto LABEL_14;
  }

  v13 = __atxlog_handle_app_prediction();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [ATXAppFeaturizer setDistributionBasedScoreInputsForItem:v13 withGeoHashResolution:? withGeoHashLaunchCounts:?];
  }

LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
}

+ (float)_computeL2DistanceFromBundleId:(id)id to:(const float *)to app2vecMapping:(id)mapping
{
  v14[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  mappingCopy = mapping;
  v8 = 4 * [mappingCopy vectorLength];
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([mappingCopy getVectorForBundleIdWithGenreBackup:idCopy into:v9] & 1) == 0)
  {
    bzero(v9, v8);
  }

  catlas_saxpby_NEWLAPACK();
  cblas_snrm2_NEWLAPACK();
  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (void)_predictNextAppLaunchEmbedding:(id)embedding into:(float *)into launchSequence:(id)sequence
{
  v25 = *MEMORY[0x277D85DE8];
  embeddingCopy = embedding;
  sequenceCopy = sequence;
  vectorLength = [embeddingCopy vectorLength];
  std::vector<float>::vector[abi:ne200100](&__p, 4 * vectorLength);
  v10 = 0;
  *&v11 = 138412546;
  v18 = v11;
  while ([sequenceCopy count] > v10)
  {
    v12 = [sequenceCopy objectAtIndexedSubscript:v10];
    v13 = (v10 - [sequenceCopy count] + 4) * vectorLength;
    if (v13 >= (v20 - __p) >> 2)
    {
      std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
    }

    v14 = [embeddingCopy getVectorForBundleIdWithGenreBackup:v12 into:__p + 4 * v13];

    v15 = __atxlog_handle_app_prediction();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [sequenceCopy objectAtIndexedSubscript:v10];
      *buf = v18;
      v22 = v16;
      v23 = 1024;
      v24 = v14;
      _os_log_debug_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEBUG, "Embeddings found for %@: %i", buf, 0x12u);
    }

    ++v10;
  }

  if (+[ATXAppFeaturizer _predictNextAppLaunchEmbedding:into:launchSequence:]::onceToken != -1)
  {
    +[ATXAppFeaturizer _predictNextAppLaunchEmbedding:into:launchSequence:];
  }

  [+[ATXAppFeaturizer _predictNextAppLaunchEmbedding:into:launchSequence:]::nn forInputs:__p computeOutputLayer:into];
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __71__ATXAppFeaturizer__predictNextAppLaunchEmbedding_into_launchSequence___block_invoke()
{
  v0 = [MEMORY[0x277CEB3C0] pathForResource:@"_ATXAppLaunchSequenceModel" ofType:@"dat" isDirectory:0];
  if (v0)
  {
    v5 = 0;
    v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v0 options:1 error:&v5];
    v2 = v5;
    if (v1)
    {
      v3 = [[_ATXNeuralNetwork alloc] initWithData:v1];
      v4 = +[ATXAppFeaturizer _predictNextAppLaunchEmbedding:into:launchSequence:]::nn;
      +[ATXAppFeaturizer _predictNextAppLaunchEmbedding:into:launchSequence:]::nn = v3;
    }

    else
    {
      v4 = __atxlog_handle_app_prediction();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __71__ATXAppFeaturizer__predictNextAppLaunchEmbedding_into_launchSequence___block_invoke_cold_1(v0, v2, v4);
      }
    }
  }
}

+ (double)time:(double)time toAccuracyInSeconds:(double)seconds
{
  if (seconds <= 0.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAppFeaturizer.mm" lineNumber:1058 description:@"Accuracy must be greater than 0"];
  }

  return (time / seconds) * seconds;
}

- (void)evaluateFeaturesForApps:(os_log_t)log clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "MagicalMoment with unknown source. This shouldn't happen.", buf, 2u);
}

- (void)setDistributionBasedScoreInputsForItem:(os_log_t)log withGeoHashResolution:withGeoHashLaunchCounts:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 0xFFFFFFFFLL;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Unknown GeoHash Resolution: %ld", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __71__ATXAppFeaturizer__predictNextAppLaunchEmbedding_into_launchSequence___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Could not read neural network from %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end