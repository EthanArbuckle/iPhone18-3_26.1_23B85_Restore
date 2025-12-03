@interface ADDeviceProperties
- (ADDeviceProperties)init;
- (void)_getODDiOSDevicePropertiesWithGeneral:(id)general assistant:(id)assistant dictation:(id)dictation iOSGeneral:(id)sGeneral iOSAssistant:(id)sAssistant completion:(id)completion;
- (void)_getODDmacOSDevicePropertiesWithGeneral:(id)general assistant:(id)assistant dictation:(id)dictation macOS:(id)s completion:(id)completion;
- (void)_getODDtvOSDevicePropertiesWithGeneral:(id)general assistant:(id)assistant dictation:(id)dictation tvOS:(id)s completion:(id)completion;
- (void)_getODDvisionOSDevicePropertiesWithGeneral:(id)general assistant:(id)assistant dictation:(id)dictation completion:(id)completion;
- (void)_getODDwatchOSDevicePropertiesWithGeneral:(id)general assistant:(id)assistant dictation:(id)dictation watchOS:(id)s completion:(id)completion;
- (void)_populateDevicePropertiesForClientEvent:(id)event withCompletion:(id)completion;
- (void)_populateEventMetadataForClientEvent:(id)event withCompletion:(id)completion;
- (void)_triggerReportingForNullDeviceAggregationId;
- (void)getODDDeviceAggregationIdWithCompletion:(id)completion;
- (void)getODDDevicePropertiesWithCompletion:(id)completion;
@end

@implementation ADDeviceProperties

- (void)_triggerReportingForNullDeviceAggregationId
{
  AnalyticsSendEvent();
  v2 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[ADDeviceProperties _triggerReportingForNullDeviceAggregationId]";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Reporting missing deviceAggregationId for ODDDeviceProperties to ABC", &v6, 0xCu);
  }

  v3 = +[SiriCoreSymptomsReporter sharedInstance];
  v4 = +[NSProcessInfo processInfo];
  processIdentifier = [v4 processIdentifier];
  [v3 reportIssueForType:@"ODDDeviceProperties" subType:@"null_deviceAggregationId" context:&__NSDictionary0__struct processIdentifier:processIdentifier walkboutStatus:byte_100590548];
}

- (void)_getODDvisionOSDevicePropertiesWithGeneral:(id)general assistant:(id)assistant dictation:(id)dictation completion:(id)completion
{
  generalCopy = general;
  assistantCopy = assistant;
  dictationCopy = dictation;
  completionCopy = completion;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v23 = "[ADDeviceProperties _getODDvisionOSDevicePropertiesWithGeneral:assistant:dictation:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v14 = objc_alloc_init(ODDSiriSchemaODDvisionOSDevicePropertiesReported);
  getODDAssistantProperties = [assistantCopy getODDAssistantProperties];
  [v14 setAssistant:getODDAssistantProperties];

  getODDDictationProperties = [dictationCopy getODDDictationProperties];
  [v14 setDictation:getODDDictationProperties];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013D05C;
  v19[3] = &unk_100512CC8;
  v20 = v14;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = v14;
  [generalCopy getODDGeneralPropertiesWithCompletion:v19];
}

- (void)_getODDmacOSDevicePropertiesWithGeneral:(id)general assistant:(id)assistant dictation:(id)dictation macOS:(id)s completion:(id)completion
{
  generalCopy = general;
  assistantCopy = assistant;
  dictationCopy = dictation;
  sCopy = s;
  completionCopy = completion;
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v27 = "[ADDeviceProperties _getODDmacOSDevicePropertiesWithGeneral:assistant:dictation:macOS:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v17 = objc_alloc_init(ODDSiriSchemaODDmacOSDevicePropertiesReported);
  getODDAssistantProperties = [assistantCopy getODDAssistantProperties];
  [v17 setAssistant:getODDAssistantProperties];

  getODDDictationProperties = [dictationCopy getODDDictationProperties];
  [v17 setDictation:getODDDictationProperties];

  getODDmacOSAssistantProperties = [sCopy getODDmacOSAssistantProperties];
  [v17 setMacOSAssistant:getODDmacOSAssistantProperties];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10013D2B0;
  v23[3] = &unk_100512CC8;
  v24 = v17;
  v25 = completionCopy;
  v21 = completionCopy;
  v22 = v17;
  [generalCopy getODDGeneralPropertiesWithCompletion:v23];
}

- (void)_getODDtvOSDevicePropertiesWithGeneral:(id)general assistant:(id)assistant dictation:(id)dictation tvOS:(id)s completion:(id)completion
{
  generalCopy = general;
  assistantCopy = assistant;
  dictationCopy = dictation;
  sCopy = s;
  completionCopy = completion;
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v39 = "[ADDeviceProperties _getODDtvOSDevicePropertiesWithGeneral:assistant:dictation:tvOS:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v18 = dispatch_group_create();
  v19 = objc_alloc_init(ODDSiriSchemaODDtvOSDevicePropertiesReported);
  getODDAssistantProperties = [assistantCopy getODDAssistantProperties];
  [v19 setAssistant:getODDAssistantProperties];

  getODDDictationProperties = [dictationCopy getODDDictationProperties];
  [v19 setDictation:getODDDictationProperties];

  dispatch_group_enter(v18);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10013D5F8;
  v35[3] = &unk_100512C78;
  v22 = v19;
  v36 = v22;
  v23 = v18;
  v37 = v23;
  [generalCopy getODDGeneralPropertiesWithCompletion:v35];
  dispatch_group_enter(v23);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10013D638;
  v32[3] = &unk_100512CF0;
  v24 = v22;
  v33 = v24;
  v34 = v23;
  v25 = v23;
  [sCopy getODDtvOSAssistantPropertiesWithCompletion:v32];
  queue = self->_queue;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10013D678;
  v29[3] = &unk_10051E038;
  v30 = v24;
  v31 = completionCopy;
  v27 = v24;
  v28 = completionCopy;
  dispatch_group_notify(v25, queue, v29);
}

- (void)_getODDwatchOSDevicePropertiesWithGeneral:(id)general assistant:(id)assistant dictation:(id)dictation watchOS:(id)s completion:(id)completion
{
  generalCopy = general;
  assistantCopy = assistant;
  dictationCopy = dictation;
  sCopy = s;
  completionCopy = completion;
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v27 = "[ADDeviceProperties _getODDwatchOSDevicePropertiesWithGeneral:assistant:dictation:watchOS:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v17 = objc_alloc_init(ODDSiriSchemaODDwatchOSDevicePropertiesReported);
  getODDAssistantProperties = [assistantCopy getODDAssistantProperties];
  [v17 setAssistant:getODDAssistantProperties];

  getODDDictationProperties = [dictationCopy getODDDictationProperties];
  [v17 setDictation:getODDDictationProperties];

  getODDwatchOSAssistantProperties = [sCopy getODDwatchOSAssistantProperties];
  [v17 setWatchOSAssistant:getODDwatchOSAssistantProperties];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10013D890;
  v23[3] = &unk_100512CC8;
  v24 = v17;
  v25 = completionCopy;
  v21 = completionCopy;
  v22 = v17;
  [generalCopy getODDGeneralPropertiesWithCompletion:v23];
}

- (void)_getODDiOSDevicePropertiesWithGeneral:(id)general assistant:(id)assistant dictation:(id)dictation iOSGeneral:(id)sGeneral iOSAssistant:(id)sAssistant completion:(id)completion
{
  generalCopy = general;
  assistantCopy = assistant;
  dictationCopy = dictation;
  sGeneralCopy = sGeneral;
  sAssistantCopy = sAssistant;
  completionCopy = completion;
  v20 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v43 = "[ADDeviceProperties _getODDiOSDevicePropertiesWithGeneral:assistant:dictation:iOSGeneral:iOSAssistant:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v21 = dispatch_group_create();
  v22 = objc_alloc_init(ODDSiriSchemaODDiOSDevicePropertiesReported);
  getODDAssistantProperties = [assistantCopy getODDAssistantProperties];
  [v22 setAssistant:getODDAssistantProperties];

  getODDDictationProperties = [dictationCopy getODDDictationProperties];
  [v22 setDictation:getODDDictationProperties];

  getODDiOSGeneralProperties = [sGeneralCopy getODDiOSGeneralProperties];
  [v22 setIOSGeneral:getODDiOSGeneralProperties];

  dispatch_group_enter(v21);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10013DC08;
  v39[3] = &unk_100512C78;
  v26 = v22;
  v40 = v26;
  v27 = v21;
  v41 = v27;
  [generalCopy getODDGeneralPropertiesWithCompletion:v39];
  dispatch_group_enter(v27);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10013DC48;
  v36[3] = &unk_100512CA0;
  v28 = v26;
  v37 = v28;
  v38 = v27;
  v29 = v27;
  [sAssistantCopy getODDiOSAssistantPropertiesWithCompletion:v36];
  queue = self->_queue;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10013DC88;
  v33[3] = &unk_10051E038;
  v34 = v28;
  v35 = completionCopy;
  v31 = v28;
  v32 = completionCopy;
  dispatch_group_notify(v29, queue, v33);
}

- (void)_populateDevicePropertiesForClientEvent:(id)event withCompletion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  v8 = [[ADGeneralProperties alloc] initWithQueue:self->_queue];
  v9 = objc_alloc_init(ADAssistantProperties);
  v10 = objc_alloc_init(ADDictationProperties);
  v11 = objc_alloc_init(ADiOSGeneralProperties);
  v12 = [[ADiOSAssistantProperties alloc] initWithQueue:self->_queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013DE00;
  v15[3] = &unk_100512C50;
  v16 = eventCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = eventCopy;
  [(ADDeviceProperties *)self _getODDiOSDevicePropertiesWithGeneral:v8 assistant:v9 dictation:v10 iOSGeneral:v11 iOSAssistant:v12 completion:v15];
}

- (void)_populateEventMetadataForClientEvent:(id)event withCompletion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013DF1C;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = eventCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

- (void)getODDDeviceAggregationIdWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v21 = "[ADDeviceProperties getODDDeviceAggregationIdWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v6 = dispatch_group_create();
  v7 = objc_alloc_init(ODDSiriSchemaODDSiriClientEvent);
  dispatch_group_enter(v6);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013EADC;
  v18[3] = &unk_10051DFE8;
  v8 = v6;
  v19 = v8;
  [(ADDeviceProperties *)self _populateEventMetadataForClientEvent:v7 withCompletion:v18];
  v9 = dispatch_time(0, 11000000000);
  v10 = dispatch_group_wait(v8, v9);
  v11 = AFSiriLogContextDaemon;
  if (!v10)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v16 = v11;
      dictionaryRepresentation = [v7 dictionaryRepresentation];
      *buf = 136315394;
      v21 = "[ADDeviceProperties getODDDeviceAggregationIdWithCompletion:]";
      v22 = 2112;
      v23 = dictionaryRepresentation;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Successfully populated EventMetadataForClientEvent event %@", buf, 0x16u);

      if (!completionCopy)
      {
        goto LABEL_11;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_11;
    }

LABEL_10:
    eventMetadata = [v7 eventMetadata];
    deviceAggregationId = [eventMetadata deviceAggregationId];
    completionCopy[2](completionCopy, deviceAggregationId);

    goto LABEL_11;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v14 = v11;
    dictionaryRepresentation2 = [v7 dictionaryRepresentation];
    *buf = 136315394;
    v21 = "[ADDeviceProperties getODDDeviceAggregationIdWithCompletion:]";
    v22 = 2112;
    v23 = dictionaryRepresentation2;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Timed out waiting to populate EventMetadataForClientEvent event %@", buf, 0x16u);
  }

  AnalyticsSendEvent();
  if (completionCopy)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)getODDDevicePropertiesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v25 = "[ADDeviceProperties getODDDevicePropertiesWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v6 = dispatch_group_create();
  v7 = objc_alloc_init(ODDSiriSchemaODDSiriClientEvent);
  dispatch_group_enter(v6);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10013EDFC;
  v22[3] = &unk_10051DFE8;
  v8 = v6;
  v23 = v8;
  [(ADDeviceProperties *)self _populateEventMetadataForClientEvent:v7 withCompletion:v22];
  dispatch_group_enter(v8);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10013EE04;
  v20 = &unk_10051DFE8;
  v9 = v8;
  v21 = v9;
  [(ADDeviceProperties *)self _populateDevicePropertiesForClientEvent:v7 withCompletion:&v17];
  v10 = dispatch_time(0, 11000000000);
  v11 = dispatch_group_wait(v9, v10);
  v12 = AFSiriLogContextDaemon;
  if (!v11)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v15 = v12;
      dictionaryRepresentation = [v7 dictionaryRepresentation];
      *buf = 136315394;
      v25 = "[ADDeviceProperties getODDDevicePropertiesWithCompletion:]";
      v26 = 2112;
      v27 = dictionaryRepresentation;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Successfully populated ODDDeviceProperties event %@", buf, 0x16u);

      if (!completionCopy)
      {
        goto LABEL_11;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_11;
    }

LABEL_10:
    completionCopy[2](completionCopy, v7);
    goto LABEL_11;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v13 = v12;
    dictionaryRepresentation2 = [v7 dictionaryRepresentation];
    *buf = 136315394;
    v25 = "[ADDeviceProperties getODDDevicePropertiesWithCompletion:]";
    v26 = 2112;
    v27 = dictionaryRepresentation2;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Timed out waiting to populate ODDDeviceProperties event %@", buf, 0x16u);
  }

  AnalyticsSendEvent();
  if (completionCopy)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (ADDeviceProperties)init
{
  v8.receiver = self;
  v8.super_class = ADDeviceProperties;
  v2 = [(ADDeviceProperties *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("ADDeviceProperties", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

@end