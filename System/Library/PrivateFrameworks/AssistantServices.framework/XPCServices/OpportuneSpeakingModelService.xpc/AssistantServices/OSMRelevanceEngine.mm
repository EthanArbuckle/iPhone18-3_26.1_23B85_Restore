@interface OSMRelevanceEngine
+ (id)sharedEngine;
- (OSMRelevanceEngine)init;
- (void)predictionForSpeakable:(id)speakable withRelevanceProviders:(id)providers handler:(id)handler;
- (void)processFeedback:(int64_t)feedback;
@end

@implementation OSMRelevanceEngine

- (void)processFeedback:(int64_t)feedback
{
  if (self->_currentElement)
  {
    selfCopy = self;
    if (feedback == 1 || feedback == 2)
    {
      self = [OSMRelevanceEngineTrainingContext trainWithUnmanagedElement:"trainWithUnmanagedElement:isPositiveEvent:interaction:" isPositiveEvent:? interaction:?];
      currentElement = selfCopy->_currentElement;
    }

    selfCopy->_currentElement = 0;

    _objc_release_x2(self);
  }
}

- (void)predictionForSpeakable:(id)speakable withRelevanceProviders:(id)providers handler:(id)handler
{
  speakableCopy = speakable;
  handlerCopy = handler;
  if (handlerCopy)
  {
    providersCopy = providers;
    v11 = objc_alloc_init(REContent);
    speakableDescription = [speakableCopy speakableDescription];
    [v11 setObject:speakableDescription forKey:@"OSMSpeakableDescription"];

    v13 = [REElement alloc];
    speakableIdentifier = [speakableCopy speakableIdentifier];
    v15 = [v13 initWithIdentifier:speakableIdentifier content:v11 action:0 relevanceProviders:providersCopy];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000012EC;
    v17[3] = &unk_100010620;
    v17[4] = self;
    v18 = v15;
    v19 = speakableCopy;
    v20 = handlerCopy;
    v16 = v15;
    dispatch_async(&_dispatch_main_q, v17);
  }
}

- (OSMRelevanceEngine)init
{
  v98.receiver = self;
  v98.super_class = OSMRelevanceEngine;
  v2 = [(OSMRelevanceEngine *)&v98 init];
  currentElement = v2->_currentElement;
  v2->_currentElement = 0;

  v4 = +[RERelevanceEngineConfiguration defaultConfiguration];
  v5 = [v4 mutableCopy];
  configuration = v2->_configuration;
  v2->_configuration = v5;

  v7 = v2->_configuration;
  v8 = AFUserSupportDirectoryPath();
  v9 = [v8 stringByAppendingPathComponent:@"relevance_engine_model.mdl"];

  v10 = [NSURL fileURLWithPath:v9];

  [(REMutableRelevanceEngineConfiguration *)v7 setModelFileURL:v10];
  interactionDescriptors = [(REMutableRelevanceEngineConfiguration *)v2->_configuration interactionDescriptors];
  v12 = [interactionDescriptors count];

  for (; v12; --v12)
  {
    [(REMutableRelevanceEngineConfiguration *)v2->_configuration removeInteractionAtIndex:0];
  }

  sectionDescriptors = [(REMutableRelevanceEngineConfiguration *)v2->_configuration sectionDescriptors];
  v14 = [sectionDescriptors count];

  for (; v14; --v14)
  {
    [(REMutableRelevanceEngineConfiguration *)v2->_configuration removeSectionAtIndex:0];
  }

  v15 = [REFeatureValue featureValueWithDouble:0.0];
  v16 = [REFeatureValue featureValueWithDouble:1.0];
  v95 = [REFeatureTransformer bucketTransformerWithCount:24 minValue:v15 maxValue:v16];

  v97 = [REFeatureTransformer customTransformerWithName:@"TimeTransform5" outputType:1 block:&stru_100010418];
  v96 = [REFeatureTransformer customTransformerWithName:@"TimeTransform4" outputType:1 block:&stru_100010438];
  v17 = objc_alloc_init(REMutableFeatureSet);
  v18 = +[OSMRelevanceEngineFeatures isNotGroupMessageFeature];
  [v17 addFeature:v18];

  v19 = +[OSMRelevanceEngineFeatures isSenderInContactsFeature];
  [v17 addFeature:v19];

  v20 = +[OSMRelevanceEngineFeatures isSenderFavoriteFeature];
  [v17 addFeature:v20];

  v21 = +[OSMRelevanceEngineFeatures timeSinceMostRecentInteractionFeature];
  v114 = v21;
  v22 = [NSArray arrayWithObjects:&v114 count:1];
  v23 = [REFeature transformedFeatureWithTransformer:v97 features:v22];
  [v17 addFeature:v23];

  v24 = +[OSMRelevanceEngineFeatures timeSinceNegativeFeedbackFeature];
  v113 = v24;
  v25 = [NSArray arrayWithObjects:&v113 count:1];
  v26 = [REFeature transformedFeatureWithTransformer:v96 features:v25];
  [v17 addFeature:v26];

  v27 = [REFeatureTransformer maskTransformWithWidth:3];
  v28 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastMinuteFeature];
  v112 = v28;
  v29 = [NSArray arrayWithObjects:&v112 count:1];
  v30 = [REFeature transformedFeatureWithTransformer:v27 features:v29];
  [v17 addFeature:v30];

  v31 = [REFeatureTransformer maskTransformWithWidth:3];
  v32 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastHalfHourFeature];
  v111 = v32;
  v33 = [NSArray arrayWithObjects:&v111 count:1];
  v34 = [REFeature transformedFeatureWithTransformer:v31 features:v33];
  [v17 addFeature:v34];

  v35 = [REFeatureTransformer maskTransformWithWidth:3];
  v36 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastHourFeature];
  v110 = v36;
  v37 = [NSArray arrayWithObjects:&v110 count:1];
  v38 = [REFeature transformedFeatureWithTransformer:v35 features:v37];
  [v17 addFeature:v38];

  v39 = [REFeatureTransformer maskTransformWithWidth:3];
  v40 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastSixHoursFeature];
  v109 = v40;
  v41 = [NSArray arrayWithObjects:&v109 count:1];
  v42 = [REFeature transformedFeatureWithTransformer:v39 features:v41];
  [v17 addFeature:v42];

  v43 = [REFeatureTransformer maskTransformWithWidth:3];
  v44 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastDayFeature];
  v108 = v44;
  v45 = [NSArray arrayWithObjects:&v108 count:1];
  v46 = [REFeature transformedFeatureWithTransformer:v43 features:v45];
  [v17 addFeature:v46];

  v47 = [REFeatureTransformer maskTransformWithWidth:3];
  v48 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastWeekFeature];
  v107 = v48;
  v49 = [NSArray arrayWithObjects:&v107 count:1];
  v50 = [REFeature transformedFeatureWithTransformer:v47 features:v49];
  [v17 addFeature:v50];

  v51 = [REFeatureTransformer maskTransformWithWidth:3];
  v52 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastFortnightFeature];
  v106 = v52;
  v53 = [NSArray arrayWithObjects:&v106 count:1];
  v54 = [REFeature transformedFeatureWithTransformer:v51 features:v53];
  [v17 addFeature:v54];

  v55 = [REFeatureTransformer maskTransformWithWidth:3];
  v56 = +[OSMRelevanceEngineFeatures numberOfInteractionsInLastMonthFeature];
  v105 = v56;
  v57 = [NSArray arrayWithObjects:&v105 count:1];
  v58 = [REFeature transformedFeatureWithTransformer:v55 features:v57];
  [v17 addFeature:v58];

  v59 = [REFeatureTransformer maskTransformWithWidth:3];
  v60 = +[OSMRelevanceEngineFeatures numberOfInteractionsOlderThanLastMonthFeature];
  v104 = v60;
  v61 = [NSArray arrayWithObjects:&v104 count:1];
  v62 = [REFeature transformedFeatureWithTransformer:v59 features:v61];
  [v17 addFeature:v62];

  v63 = +[OSMRelevanceEngineFeatures hasOngoingEventFeature];
  [v17 addFeature:v63];

  v64 = [REFeatureTransformer maskTransformWithWidth:4];
  v65 = +[OSMRelevanceEngineFeatures motionActivityFeature];
  v103 = v65;
  v66 = [NSArray arrayWithObjects:&v103 count:1];
  v67 = [REFeature transformedFeatureWithTransformer:v64 features:v66];
  [v17 addFeature:v67];

  v68 = +[OSMRelevanceEngineFeatures isMusicPlayingFeature];
  [v17 addFeature:v68];

  v69 = [REFeatureTransformer maskTransformWithWidth:3];
  v70 = +[OSMRelevanceEngineFeatures mediaTypeFeature];
  v102 = v70;
  v71 = [NSArray arrayWithObjects:&v102 count:1];
  v72 = [REFeature transformedFeatureWithTransformer:v69 features:v71];
  [v17 addFeature:v72];

  v73 = +[REFeature currentTimeFeature];
  v101 = v73;
  v74 = [NSArray arrayWithObjects:&v101 count:1];
  v75 = [REFeature transformedFeatureWithTransformer:v95 features:v74];
  [v17 addFeature:v75];

  v76 = [REFeatureTransformer maskTransformWithWidth:3];
  v77 = +[REFeature dayOfWeekFeature];
  v100 = v77;
  v78 = [NSArray arrayWithObjects:&v100 count:1];
  v79 = [REFeature transformedFeatureWithTransformer:v76 features:v78];
  [v17 addFeature:v79];

  v80 = [REFeatureTransformer maskTransformWithWidth:1];
  v81 = +[REFeature isWeekendFeature];
  v99 = v81;
  v82 = [NSArray arrayWithObjects:&v99 count:1];
  v83 = [REFeature transformedFeatureWithTransformer:v80 features:v82];
  [v17 addFeature:v83];

  [(REMutableRelevanceEngineConfiguration *)v2->_configuration setPrimaryFeatures:v17];
  [(REMutableRelevanceEngineConfiguration *)v2->_configuration setTrainingBehavior:1];
  [(REMutableRelevanceEngineConfiguration *)v2->_configuration setWantsImmutableContent:1];
  v84 = objc_alloc_init(REInteractionDescriptor);
  [v84 setName:@"SpeakNotification"];
  [(REMutableRelevanceEngineConfiguration *)v2->_configuration addInteractionWithDescriptor:v84];
  v85 = objc_alloc_init(RESectionDescriptor);
  [v85 setName:@"OSMSection"];
  v86 = [REFilteringRule alloc];
  v87 = +[RECondition trueCondition];
  v88 = [v86 initWithCondition:v87 type:1];

  v89 = [NSSet setWithObject:v88];
  [v85 setRules:v89];

  [(REMutableRelevanceEngineConfiguration *)v2->_configuration addSectionWithDescriptor:v85];
  v90 = [[RERelevanceEngine alloc] initWithName:@"OSMRelevanceEngine" configuration:v2->_configuration];
  engine = v2->_engine;
  v2->_engine = v90;

  v92 = objc_alloc_init(OSMRelevanceEngineTrainingContext);
  trainingContext = v2->_trainingContext;
  v2->_trainingContext = v92;

  [(RERelevanceEngine *)v2->_engine addTrainingContext:v2->_trainingContext];
  [(OSMRelevanceEngineTrainingContext *)v2->_trainingContext becomeCurrent];

  return v2;
}

+ (id)sharedEngine
{
  if (qword_1000155C8 != -1)
  {
    dispatch_once(&qword_1000155C8, &stru_1000103D8);
  }

  v3 = qword_1000155C0;

  return v3;
}

@end