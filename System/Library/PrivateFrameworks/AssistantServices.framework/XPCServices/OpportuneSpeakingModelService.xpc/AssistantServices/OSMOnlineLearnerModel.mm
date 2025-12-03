@interface OSMOnlineLearnerModel
- (OSMOnlineLearnerModel)init;
- (void)recordFeedbackOfType:(int64_t)type forSpeakable:(id)speakable;
- (void)setSpeakable:(id)speakable;
- (void)startWithDelegate:(id)delegate;
- (void)stop;
@end

@implementation OSMOnlineLearnerModel

- (void)stop
{
  v3 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[OSMOnlineLearnerModel stop]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
  }

  delegate = self->_delegate;
  self->_delegate = 0;
}

- (void)recordFeedbackOfType:(int64_t)type forSpeakable:(id)speakable
{
  speakableCopy = speakable;
  v7 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v11 = v7;
    v12 = AFOpportuneSpeakingModelFeedbackGetDescription();
    speakableIdentifier = [speakableCopy speakableIdentifier];
    v14 = 136315650;
    v15 = "[OSMOnlineLearnerModel recordFeedbackOfType:forSpeakable:]";
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = speakableIdentifier;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s feedback: %@, speakable id: %@", &v14, 0x20u);
  }

  v8 = +[AFOpportuneSpeakingModuleDataCollection sharedCollector];
  speakableIdentifier2 = [speakableCopy speakableIdentifier];
  [v8 logFeedbackOfType:type forSpeakableId:speakableIdentifier2 withModelId:self->_identifier];

  v10 = +[OSMRelevanceEngine sharedEngine];
  [v10 processFeedback:type];
}

- (void)setSpeakable:(id)speakable
{
  speakableCopy = speakable;
  v5 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v152 = v5;
    speakableDescription = [speakableCopy speakableDescription];
    *buf = 136315394;
    v269 = "[OSMOnlineLearnerModel setSpeakable:]";
    v270 = 2112;
    v271 = speakableDescription;
    _os_log_debug_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEBUG, "%s speakable: %@", buf, 0x16u);
  }

  v6 = +[NSMutableArray array];
  v7 = objc_alloc_init(NSMutableArray);
  v8 = speakableCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v207 = v6;
    v206 = [v8 copy];
    v9 = [[OSMNotificationFeatureMap alloc] initWithNotification:v206];
    v10 = [REFeatureValue featureValueWithInt64:[(OSMNotificationFeatureMap *)v9 isMessageSenderInContacts]];
    v11 = +[OSMRelevanceEngineFeatures isSenderInContactsFeature];
    v229 = [RERelevanceProvider customRelevanceProviderForFeature:v11 withValue:v10];

    v12 = AFOpportuneSpeakingModuleDataCollectionFeatureNameKey;
    v13 = AFOpportuneSpeakingModuleDataCollectionFeatureValueKey;
    v282[0] = AFOpportuneSpeakingModuleDataCollectionFeatureNameKey;
    v282[1] = AFOpportuneSpeakingModuleDataCollectionFeatureValueKey;
    v283[0] = @"IsInContacts";
    v216 = v10;
    v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 int64Value]);
    v283[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v283 forKeys:v282 count:2];
    [v7 addObject:v15];

    v16 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v154 = v16;
      int64Value = [v10 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value;
      _os_log_debug_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEBUG, "%s sender is in contacts: %llu", buf, 0x16u);
    }

    v17 = [REFeatureValue featureValueWithInt64:[(OSMNotificationFeatureMap *)v9 isMessageSenderFavorite]];
    v18 = +[OSMRelevanceEngineFeatures isSenderFavoriteFeature];
    v228 = [RERelevanceProvider customRelevanceProviderForFeature:v18 withValue:v17];

    v280[1] = v13;
    v281[0] = @"IsFavorite";
    v280[0] = v12;
    v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v17 int64Value]);
    v281[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v281 forKeys:v280 count:2];
    [v7 addObject:v20];

    v21 = AFSiriLogContextService;
    v22 = v12;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v156 = v21;
      int64Value2 = [v17 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value2;
      _os_log_debug_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEBUG, "%s sender is favorite: %llu", buf, 0x16u);
    }

    v234 = v9;
    v23 = [REFeatureValue featureValueWithInt64:[(OSMNotificationFeatureMap *)v9 isGroupMessage]^ 1];
    v24 = +[OSMRelevanceEngineFeatures isNotGroupMessageFeature];
    v227 = [RERelevanceProvider customRelevanceProviderForFeature:v24 withValue:v23];

    v278[1] = v13;
    v279[0] = @"IsNotGroupMessage";
    v278[0] = v22;
    v215 = v23;
    v25 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v23 int64Value]);
    v279[1] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v279 forKeys:v278 count:2];
    [v7 addObject:v26];

    v27 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v158 = v27;
      int64Value3 = [v23 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value3;
      _os_log_debug_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEBUG, "%s not sent to group: %llu", buf, 0x16u);
    }

    v204 = v17;
    v232 = v8;
    v28 = +[OSMBackgroundFeatureManager sharedBackgroundFeatureManager];
    v29 = +[REFeatureValue featureValueWithInt64:](REFeatureValue, "featureValueWithInt64:", [v28 hasOngoingEvent]);
    v30 = +[OSMRelevanceEngineFeatures hasOngoingEventFeature];
    v226 = [RERelevanceProvider customRelevanceProviderForFeature:v30 withValue:v29];

    v276[1] = v13;
    v277[0] = @"HasOngoingEvent";
    v276[0] = v22;
    v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v29 int64Value]);
    v277[1] = v31;
    v32 = [NSDictionary dictionaryWithObjects:v277 forKeys:v276 count:2];
    [v7 addObject:v32];

    v33 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v160 = v33;
      int64Value4 = [v29 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value4;
      _os_log_debug_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEBUG, "%s has ongoing event: %llu", buf, 0x16u);
    }

    v34 = +[REFeatureValue featureValueWithInt64:](REFeatureValue, "featureValueWithInt64:", [v28 motionActivity]);
    v35 = +[OSMRelevanceEngineFeatures motionActivityFeature];
    v225 = [RERelevanceProvider customRelevanceProviderForFeature:v35 withValue:v34];

    v275[0] = @"MotionActivity";
    v274[0] = v22;
    v274[1] = v13;
    v202 = v34;
    v36 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v34 int64Value]);
    v275[1] = v36;
    v37 = [NSDictionary dictionaryWithObjects:v275 forKeys:v274 count:2];
    [v7 addObject:v37];

    v38 = AFSiriLogContextService;
    v230 = v28;
    v39 = v7;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v162 = v38;
      motionActivity = [v28 motionActivity];
      motionConfidence = [v28 motionConfidence];
      *buf = 136315650;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = motionActivity;
      v272 = 2112;
      v273 = motionConfidence;
      _os_log_debug_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEBUG, "%s motion activity: %lu confidence: %@", buf, 0x20u);

      v28 = v230;
    }

    v203 = v29;
    musicPlayingState = [v28 musicPlayingState];
    v40 = +[REFeatureValue featureValueWithInt64:](REFeatureValue, "featureValueWithInt64:", [musicPlayingState state] == 1);
    v41 = +[OSMRelevanceEngineFeatures isMusicPlayingFeature];
    v224 = [RERelevanceProvider customRelevanceProviderForFeature:v41 withValue:v40];

    v267[0] = @"IsMusicPlaying";
    v266[0] = v22;
    v266[1] = v13;
    v42 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v40 int64Value]);
    v267[1] = v42;
    v43 = [NSDictionary dictionaryWithObjects:v267 forKeys:v266 count:2];
    [v7 addObject:v43];

    v44 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v165 = v44;
      int64Value5 = [v40 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value5;
      _os_log_debug_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEBUG, "%s is music playing: %llu", buf, 0x16u);
    }

    v200 = v40;
    v45 = +[REFeatureValue featureValueWithInt64:](REFeatureValue, "featureValueWithInt64:", [v28 mediaType]);
    v46 = +[OSMRelevanceEngineFeatures mediaTypeFeature];
    v223 = [RERelevanceProvider customRelevanceProviderForFeature:v46 withValue:v45];

    v265[0] = @"MediaType";
    v264[0] = v22;
    v264[1] = v13;
    v214 = v45;
    v47 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v45 int64Value]);
    v265[1] = v47;
    v48 = [NSDictionary dictionaryWithObjects:v265 forKeys:v264 count:2];
    [v7 addObject:v48];

    v49 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v167 = v49;
      int64Value6 = [v45 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value6;
      _os_log_debug_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEBUG, "%s media type: %llu", buf, 0x16u);
    }

    [(OSMNotificationFeatureMap *)v9 timeSinceMostRecentInteractionWithSender];
    v50 = [REFeatureValue featureValueWithDouble:?];
    v51 = +[OSMRelevanceEngineFeatures timeSinceMostRecentInteractionFeature];
    v222 = [RERelevanceProvider customRelevanceProviderForFeature:v51 withValue:v50];

    v263[0] = @"TimeSinceMostRecentInteraction";
    v262[0] = v22;
    v262[1] = v13;
    v213 = v50;
    [v50 doubleValue];
    v52 = [NSNumber numberWithDouble:?];
    v263[1] = v52;
    v53 = [NSDictionary dictionaryWithObjects:v263 forKeys:v262 count:2];
    [v7 addObject:v53];

    v54 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v169 = v54;
      [v50 doubleValue];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = v170;
      _os_log_debug_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEBUG, "%s time since last interaction: %f", buf, 0x16u);
    }

    v261[0] = @"RecentInteractions";
    v260[0] = v22;
    v260[1] = v13;
    recentInteractionsWithSender = [(OSMNotificationFeatureMap *)v9 recentInteractionsWithSender];
    v56 = [recentInteractionsWithSender componentsJoinedByString:{@", "}];
    v261[1] = v56;
    [NSDictionary dictionaryWithObjects:v261 forKeys:v260 count:2];
    v57 = v231 = v22;
    [v7 addObject:v57];

    v58 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v171 = v58;
      recentInteractionsWithSender2 = [(OSMNotificationFeatureMap *)v9 recentInteractionsWithSender];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2112;
      v271 = recentInteractionsWithSender2;
      _os_log_debug_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEBUG, "%s recent interactions buffer: %@", buf, 0x16u);
    }

    speakableDate = [v232 speakableDate];
    v60 = [speakableDate dateByAddingTimeInterval:-60.0];
    speakableDate2 = [v232 speakableDate];
    v62 = [REFeatureValue featureValueWithInt64:[(OSMNotificationFeatureMap *)v9 numberOfInteractionsBetweenDate:v60 andDate:speakableDate2]];

    v63 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastMinuteFeature];
    v221 = [RERelevanceProvider customRelevanceProviderForFeature:v63 withValue:v62];

    v259[0] = @"NumberOfInteractionsInLastMinute";
    v258[0] = v22;
    v258[1] = v13;
    v64 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v62 int64Value]);
    v259[1] = v64;
    v65 = [NSDictionary dictionaryWithObjects:v259 forKeys:v258 count:2];
    [v39 addObject:v65];

    v66 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v173 = v66;
      int64Value7 = [v62 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value7;
      _os_log_debug_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEBUG, "%s number of interactions in last minute: %llu", buf, 0x16u);
    }

    v199 = v62;
    speakableDate3 = [v232 speakableDate];
    v68 = [speakableDate3 dateByAddingTimeInterval:-1800.0];
    speakableDate4 = [v232 speakableDate];
    v70 = [speakableDate4 dateByAddingTimeInterval:-60.0];
    v71 = [REFeatureValue featureValueWithInt64:[(OSMNotificationFeatureMap *)v9 numberOfInteractionsBetweenDate:v68 andDate:v70]];

    v72 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastHalfHourFeature];
    v220 = [RERelevanceProvider customRelevanceProviderForFeature:v72 withValue:v71];

    v257[0] = @"NumberOfInteractionsInLastHalfHour";
    v256[0] = v22;
    v256[1] = v13;
    v212 = v71;
    v73 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v71 int64Value]);
    v257[1] = v73;
    v74 = [NSDictionary dictionaryWithObjects:v257 forKeys:v256 count:2];
    [v39 addObject:v74];

    v75 = AFSiriLogContextService;
    v76 = v13;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v175 = v75;
      int64Value8 = [v212 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value8;
      _os_log_debug_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEBUG, "%s number of interactions in last half hour: %llu", buf, 0x16u);
    }

    speakableDate5 = [v232 speakableDate];
    v78 = [speakableDate5 dateByAddingTimeInterval:-3600.0];
    speakableDate6 = [v232 speakableDate];
    v80 = [speakableDate6 dateByAddingTimeInterval:-1800.0];
    v81 = [REFeatureValue featureValueWithInt64:[(OSMNotificationFeatureMap *)v234 numberOfInteractionsBetweenDate:v78 andDate:v80]];

    v82 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastHourFeature];
    v219 = [RERelevanceProvider customRelevanceProviderForFeature:v82 withValue:v81];

    v255[0] = @"NumberOfInteractionsInLastHour";
    v254[0] = v22;
    v254[1] = v76;
    v83 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v81 int64Value]);
    v255[1] = v83;
    v84 = [NSDictionary dictionaryWithObjects:v255 forKeys:v254 count:2];
    [v39 addObject:v84];

    v85 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v177 = v85;
      int64Value9 = [v81 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value9;
      _os_log_debug_impl(&_mh_execute_header, v177, OS_LOG_TYPE_DEBUG, "%s number of interactions in last hour: %llu", buf, 0x16u);
    }

    speakableDate7 = [v232 speakableDate];
    v87 = [speakableDate7 dateByAddingTimeInterval:-21600.0];
    speakableDate8 = [v232 speakableDate];
    v89 = [speakableDate8 dateByAddingTimeInterval:-3600.0];
    v90 = [REFeatureValue featureValueWithInt64:[(OSMNotificationFeatureMap *)v234 numberOfInteractionsBetweenDate:v87 andDate:v89]];

    v91 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastSixHoursFeature];
    v218 = [RERelevanceProvider customRelevanceProviderForFeature:v91 withValue:v90];

    v253[0] = @"NumberOfInteractionsInLastSixHours";
    v252[0] = v22;
    v252[1] = v76;
    v211 = v90;
    v92 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v90 int64Value]);
    v253[1] = v92;
    v93 = [NSDictionary dictionaryWithObjects:v253 forKeys:v252 count:2];
    [v39 addObject:v93];

    v94 = AFSiriLogContextService;
    v233 = v76;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v179 = v94;
      int64Value10 = [v90 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value10;
      _os_log_debug_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEBUG, "%s number of interactions in last six hours: %llu", buf, 0x16u);
    }

    speakableDate9 = [v232 speakableDate];
    v96 = [speakableDate9 dateByAddingTimeInterval:-86400.0];
    speakableDate10 = [v232 speakableDate];
    v98 = [speakableDate10 dateByAddingTimeInterval:-21600.0];
    v99 = [REFeatureValue featureValueWithInt64:[(OSMNotificationFeatureMap *)v234 numberOfInteractionsBetweenDate:v96 andDate:v98]];

    v100 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastDayFeature];
    v217 = [RERelevanceProvider customRelevanceProviderForFeature:v100 withValue:v99];

    v251[0] = @"NumberOfInteractionsInLastDay";
    v250[0] = v22;
    v250[1] = v76;
    v101 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v99 int64Value]);
    v251[1] = v101;
    v102 = [NSDictionary dictionaryWithObjects:v251 forKeys:v250 count:2];
    [v39 addObject:v102];

    v103 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v181 = v103;
      int64Value11 = [v99 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value11;
      _os_log_debug_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEBUG, "%s number of interactions in last day: %llu", buf, 0x16u);
    }

    speakableDate11 = [v232 speakableDate];
    v105 = [speakableDate11 dateByAddingTimeInterval:-604800.0];
    speakableDate12 = [v232 speakableDate];
    v107 = [speakableDate12 dateByAddingTimeInterval:-86400.0];
    v108 = [REFeatureValue featureValueWithInt64:[(OSMNotificationFeatureMap *)v234 numberOfInteractionsBetweenDate:v105 andDate:v107]];

    v109 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastWeekFeature];
    v198 = [RERelevanceProvider customRelevanceProviderForFeature:v109 withValue:v108];

    v249[0] = @"NumberOfInteractionsInLastWeek";
    v248[0] = v22;
    v248[1] = v233;
    v210 = v108;
    v110 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v108 int64Value]);
    v249[1] = v110;
    v111 = [NSDictionary dictionaryWithObjects:v249 forKeys:v248 count:2];
    [v39 addObject:v111];

    v112 = AFSiriLogContextService;
    v113 = v39;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v183 = v112;
      int64Value12 = [v210 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value12;
      _os_log_debug_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEBUG, "%s number of interactions in last week: %llu", buf, 0x16u);
    }

    speakableDate13 = [v232 speakableDate];
    v115 = [speakableDate13 dateByAddingTimeInterval:-1209600.0];
    speakableDate14 = [v232 speakableDate];
    v117 = [speakableDate14 dateByAddingTimeInterval:-604800.0];
    v118 = [REFeatureValue featureValueWithInt64:[(OSMNotificationFeatureMap *)v234 numberOfInteractionsBetweenDate:v115 andDate:v117]];

    v119 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastFortnightFeature];
    v196 = [RERelevanceProvider customRelevanceProviderForFeature:v119 withValue:v118];

    v247[0] = @"NumberOfInteractionsInLastFortnight";
    v246[0] = v231;
    v246[1] = v233;
    v120 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v118 int64Value]);
    v247[1] = v120;
    v121 = [NSDictionary dictionaryWithObjects:v247 forKeys:v246 count:2];
    [v39 addObject:v121];

    v122 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v185 = v122;
      int64Value13 = [v118 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value13;
      _os_log_debug_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEBUG, "%s number of interactions in last fortnight: %llu", buf, 0x16u);
    }

    v197 = v118;
    speakableDate15 = [v232 speakableDate];
    v124 = [speakableDate15 dateByAddingTimeInterval:-2419200.0];
    speakableDate16 = [v232 speakableDate];
    v126 = [speakableDate16 dateByAddingTimeInterval:-1209600.0];
    v127 = [REFeatureValue featureValueWithInt64:[(OSMNotificationFeatureMap *)v234 numberOfInteractionsBetweenDate:v124 andDate:v126]];

    v128 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastMonthFeature];
    v195 = [RERelevanceProvider customRelevanceProviderForFeature:v128 withValue:v127];

    v244[0] = v231;
    v244[1] = v233;
    v245[0] = @"NumberOfInteractionsInLastMonth";
    v209 = v127;
    v129 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v127 int64Value]);
    v245[1] = v129;
    v130 = [NSDictionary dictionaryWithObjects:v245 forKeys:v244 count:2];
    [v39 addObject:v130];

    v131 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v187 = v131;
      int64Value14 = [v127 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value14;
      _os_log_debug_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEBUG, "%s number of interactions in last month: %llu", buf, 0x16u);
    }

    v132 = +[NSDate distantPast];
    speakableDate17 = [v232 speakableDate];
    v134 = [speakableDate17 dateByAddingTimeInterval:-2419200.0];
    v135 = [REFeatureValue featureValueWithInt64:[(OSMNotificationFeatureMap *)v234 numberOfInteractionsBetweenDate:v132 andDate:v134]];

    v136 = +[OSMRelevanceEngineFeatures numberOfInteractionsOlderThanLastMonthFeature];
    v194 = [RERelevanceProvider customRelevanceProviderForFeature:v136 withValue:v135];

    v242[0] = v231;
    v242[1] = v233;
    v243[0] = @"NumberOfInteractionsOlderThanLastMonth";
    v208 = v135;
    v137 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v135 int64Value]);
    v243[1] = v137;
    v138 = [NSDictionary dictionaryWithObjects:v243 forKeys:v242 count:2];
    [v39 addObject:v138];

    v139 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v189 = v139;
      int64Value15 = [v135 int64Value];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = int64Value15;
      _os_log_debug_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEBUG, "%s number of interactions older than last month: %llu", buf, 0x16u);
    }

    feedbackManager = [v230 feedbackManager];
    v141 = [feedbackManager lastNegativeFeedbackForContact:0];

    v142 = +[NSDate date];
    v143 = v142;
    if (v141)
    {
      [v142 timeIntervalSinceDate:{v141, v141}];
    }

    else
    {
      [v142 timeIntervalSince1970];
    }

    v144 = [REFeatureValue featureValueWithDouble:?];

    v145 = +[OSMRelevanceEngineFeatures timeSinceNegativeFeedbackFeature];
    v146 = [RERelevanceProvider customRelevanceProviderForFeature:v145 withValue:v144];

    v240[1] = v233;
    v241[0] = @"TimeSinceLastNegativeFeedback";
    v240[0] = v231;
    [v144 doubleValue];
    v147 = [NSNumber numberWithDouble:?];
    v241[1] = v147;
    v148 = [NSDictionary dictionaryWithObjects:v241 forKeys:v240 count:2];
    [v113 addObject:v148];

    v149 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v191 = v149;
      [v144 doubleValue];
      *buf = 136315394;
      v269 = "[OSMOnlineLearnerModel setSpeakable:]";
      v270 = 2048;
      v271 = v192;
      _os_log_debug_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEBUG, "%s time since last negative feedback: %f", buf, 0x16u);
    }

    [v207 addObject:v229];
    [v207 addObject:v228];
    [v207 addObject:v227];
    [v207 addObject:v226];
    [v207 addObject:v225];
    [v207 addObject:v224];
    [v207 addObject:v223];
    [v207 addObject:v222];
    [v207 addObject:v221];
    [v207 addObject:v220];
    [v207 addObject:v219];
    [v207 addObject:v218];
    [v207 addObject:v217];
    [v207 addObject:v198];
    [v207 addObject:v196];
    [v207 addObject:v195];
    [v207 addObject:v194];
    [v207 addObject:v146];
    v150 = +[OSMRelevanceEngine sharedEngine];
    v235[0] = _NSConcreteStackBlock;
    v235[1] = 3221225472;
    v235[2] = sub_1000045DC;
    v235[3] = &unk_100010460;
    v7 = v113;
    v236 = v232;
    v237 = v234;
    v238 = selfCopy;
    v239 = v113;
    v151 = v234;
    [v150 predictionForSpeakable:v236 withRelevanceProviders:v207 handler:v235];

    v6 = v207;
    v8 = v232;
  }
}

- (void)startWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[OSMOnlineLearnerModel startWithDelegate:]";
    v9 = 2112;
    v10 = delegateCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s delegate: %@", &v7, 0x16u);
  }

  delegate = self->_delegate;
  self->_delegate = delegateCopy;
}

- (OSMOnlineLearnerModel)init
{
  v10.receiver = self;
  v10.super_class = OSMOnlineLearnerModel;
  v2 = [(OSMOnlineLearnerModel *)&v10 init];
  if (v2)
  {
    v3 = [NSString alloc];
    v4 = +[NSUUID UUID];
    uUIDString = [v4 UUIDString];
    v6 = [v3 initWithFormat:@"OnlineLearnerModel-%@", uUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v6;

    v8 = +[AFOpportuneSpeakingModuleDataCollection sharedCollector];
  }

  return v2;
}

@end