@interface OSMSmartHeuristicsModel
- (OSMSmartHeuristicsModel)init;
- (void)recordFeedbackOfType:(int64_t)a3 forSpeakable:(id)a4;
- (void)setSpeakable:(id)a3;
- (void)startWithDelegate:(id)a3;
- (void)stop;
@end

@implementation OSMSmartHeuristicsModel

- (void)stop
{
  v3 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[OSMSmartHeuristicsModel stop]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
  }

  delegate = self->_delegate;
  self->_delegate = 0;
}

- (void)recordFeedbackOfType:(int64_t)a3 forSpeakable:(id)a4
{
  v6 = a4;
  v8 = +[AFOpportuneSpeakingModuleDataCollection sharedCollector];
  v7 = [v6 speakableIdentifier];

  [v8 logFeedbackOfType:a3 forSpeakableId:v7 withModelId:self->_identifier];
}

- (void)setSpeakable:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v46 = v5;
    v47 = [v4 speakableDescription];
    *buf = 136315394;
    v78 = "[OSMSmartHeuristicsModel setSpeakable:]";
    v79 = 2112;
    v80 = v47;
    _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "%s speakable: %@", buf, 0x16u);
  }

  v6 = v4;
  v7 = objc_alloc_init(NSMutableArray);
  objc_opt_class();
  v9 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v49 = self;
    v48 = [v6 copy];
    v10 = [[OSMNotificationFeatureMap alloc] initWithNotification:v48];
    if ([(OSMNotificationFeatureMap *)v10 isMessageSenderFavorite])
    {
      v11 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v78 = "[OSMSmartHeuristicsModel setSpeakable:]";
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s sender is favorite, score + 10", buf, 0xCu);
      }

      v12 = AFOpportuneSpeakingModuleDataCollectionFeatureNameKey;
      v13 = AFOpportuneSpeakingModuleDataCollectionFeatureValueKey;
      v75[0] = AFOpportuneSpeakingModuleDataCollectionFeatureNameKey;
      v75[1] = AFOpportuneSpeakingModuleDataCollectionFeatureValueKey;
      v76[0] = @"IsFavorite";
      v76[1] = &off_100010C90;
      v14 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];
      v15 = 10;
    }

    else
    {
      v12 = AFOpportuneSpeakingModuleDataCollectionFeatureNameKey;
      v13 = AFOpportuneSpeakingModuleDataCollectionFeatureValueKey;
      v73[0] = AFOpportuneSpeakingModuleDataCollectionFeatureNameKey;
      v73[1] = AFOpportuneSpeakingModuleDataCollectionFeatureValueKey;
      v74[0] = @"IsFavorite";
      v74[1] = &off_100010CA8;
      v14 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];
      v15 = 0;
    }

    [v7 addObject:v14];

    if ([(OSMNotificationFeatureMap *)v10 isGroupMessage])
    {
      v69[0] = v12;
      v69[1] = v13;
      v70[0] = @"IsNotGroupMessage";
      v70[1] = &off_100010CA8;
      v16 = v70;
      v17 = v69;
    }

    else
    {
      v18 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v78 = "[OSMSmartHeuristicsModel setSpeakable:]";
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s not sent to group, score + 10", buf, 0xCu);
      }

      v15 += 10;
      v71[0] = v12;
      v71[1] = v13;
      v72[0] = @"IsNotGroupMessage";
      v72[1] = &off_100010C90;
      v16 = v72;
      v17 = v71;
    }

    v19 = [NSDictionary dictionaryWithObjects:v16 forKeys:v17 count:2];
    [v7 addObject:v19];

    v20 = [(OSMNotificationFeatureMap *)v10 numberOfRecentInteractionsWithSender]+ v15;
    v67[1] = v13;
    v68[0] = @"NumberOfRecentInteractions";
    v67[0] = v12;
    v21 = [NSNumber numberWithUnsignedInteger:[(OSMNotificationFeatureMap *)v10 numberOfRecentInteractionsWithSender]];
    v68[1] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:2];
    [v7 addObject:v22];

    v65[1] = v13;
    v66[0] = @"TimeSinceMostRecentInteraction";
    v65[0] = v12;
    [(OSMNotificationFeatureMap *)v10 timeSinceMostRecentInteractionWithSender];
    v23 = [NSNumber numberWithDouble:?];
    v66[1] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];
    [v7 addObject:v24];

    [(OSMNotificationFeatureMap *)v10 timeSinceMostRecentInteractionWithSender];
    if (v25 >= 86400.0)
    {
      v61[0] = v12;
      v61[1] = v13;
      v62[0] = @"SentWithinLast24Hrs";
      v62[1] = &off_100010CA8;
      v27 = v62;
      v28 = v61;
    }

    else
    {
      v26 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v78 = "[OSMSmartHeuristicsModel setSpeakable:]";
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s sent within last 24 hours, score + 10", buf, 0xCu);
      }

      v20 += 10;
      v63[0] = v12;
      v63[1] = v13;
      v64[0] = @"SentWithinLast24Hrs";
      v64[1] = &off_100010C90;
      v27 = v64;
      v28 = v63;
    }

    v29 = [NSDictionary dictionaryWithObjects:v27 forKeys:v28 count:2];
    [v7 addObject:v29];

    v50 = +[OSMBackgroundFeatureManager sharedBackgroundFeatureManager];
    if ([v50 hasOngoingEvent])
    {
      v30 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v78 = "[OSMSmartHeuristicsModel setSpeakable:]";
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%s has ongoing event, score - 10", buf, 0xCu);
      }

      v31 = (v20 - 10);
      v59[0] = v12;
      v59[1] = v13;
      v60[0] = @"HasOngoingEvent";
      v60[1] = &off_100010CC0;
      v32 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2];
    }

    else
    {
      v57[0] = v12;
      v57[1] = v13;
      v58[0] = @"HasOngoingEvent";
      v58[1] = &off_100010CA8;
      v32 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
      v31 = v20;
    }

    [v7 addObject:v32];

    v33 = [v50 feedbackManager];
    v34 = [v33 lastNegativeFeedbackForContact:0];

    if (v34)
    {
      v55[1] = v13;
      v56[0] = @"TimeSinceLastNegativeFeedback";
      v55[0] = v12;
      v35 = +[NSDate date];
      [v35 timeIntervalSinceDate:v34];
      v36 = [NSNumber numberWithDouble:?];
      v56[1] = v36;
      v37 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
      [v7 addObject:v37];

      v38 = +[NSDate date];
      [v38 timeIntervalSinceDate:v34];
      v40 = v39;

      if (v40 >= 3600.0)
      {
        v51[0] = v12;
        v51[1] = v13;
        v52[0] = @"HadRecentNegativeFeedback";
        v52[1] = &off_100010CA8;
        v42 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
        self = v49;
      }

      else
      {
        v41 = AFSiriLogContextService;
        if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v78 = "[OSMSmartHeuristicsModel setSpeakable:]";
          _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "%s recently had negative feedback, score - 10", buf, 0xCu);
        }

        v31 -= 10;
        v53[0] = v12;
        v53[1] = v13;
        v54[0] = @"HadRecentNegativeFeedback";
        v54[1] = &off_100010CC0;
        v42 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
        self = v49;
      }

      [v7 addObject:v42];
    }

    else
    {
      self = v49;
    }

    v43 = +[AFOpportuneSpeakingModuleDataCollection sharedCollector];
    v44 = [(OSMNotificationFeatureMap *)v10 contactId];
    v9 = v31;
    *&v45 = v31;
    [v43 logSpeakable:v6 forContact:v44 withModelId:self->_identifier withFeatures:v7 withScore:v45];
  }

  *&v8 = v9;
  [(AFOpportuneSpeakingModelDelegate *)self->_delegate modelWithIdentifier:self->_identifier didUpdateScore:v6 forSpeakable:v8];
}

- (void)startWithDelegate:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[OSMSmartHeuristicsModel startWithDelegate:]";
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s delegate: %@", &v7, 0x16u);
  }

  delegate = self->_delegate;
  self->_delegate = v4;
}

- (OSMSmartHeuristicsModel)init
{
  v10.receiver = self;
  v10.super_class = OSMSmartHeuristicsModel;
  v2 = [(OSMSmartHeuristicsModel *)&v10 init];
  if (v2)
  {
    v3 = [NSString alloc];
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];
    v6 = [v3 initWithFormat:@"SmartHeuristicsModel-%@", v5];
    identifier = v2->_identifier;
    v2->_identifier = v6;

    v8 = +[AFOpportuneSpeakingModuleDataCollection sharedCollector];
  }

  return v2;
}

@end