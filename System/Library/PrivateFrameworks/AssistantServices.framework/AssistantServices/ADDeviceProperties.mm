@interface ADDeviceProperties
- (ADDeviceProperties)init;
- (void)_getODDiOSDevicePropertiesWithGeneral:(id)a3 assistant:(id)a4 dictation:(id)a5 iOSGeneral:(id)a6 iOSAssistant:(id)a7 completion:(id)a8;
- (void)_getODDmacOSDevicePropertiesWithGeneral:(id)a3 assistant:(id)a4 dictation:(id)a5 macOS:(id)a6 completion:(id)a7;
- (void)_getODDtvOSDevicePropertiesWithGeneral:(id)a3 assistant:(id)a4 dictation:(id)a5 tvOS:(id)a6 completion:(id)a7;
- (void)_getODDvisionOSDevicePropertiesWithGeneral:(id)a3 assistant:(id)a4 dictation:(id)a5 completion:(id)a6;
- (void)_getODDwatchOSDevicePropertiesWithGeneral:(id)a3 assistant:(id)a4 dictation:(id)a5 watchOS:(id)a6 completion:(id)a7;
- (void)_populateDevicePropertiesForClientEvent:(id)a3 withCompletion:(id)a4;
- (void)_populateEventMetadataForClientEvent:(id)a3 withCompletion:(id)a4;
- (void)_triggerReportingForNullDeviceAggregationId;
- (void)getODDDeviceAggregationIdWithCompletion:(id)a3;
- (void)getODDDevicePropertiesWithCompletion:(id)a3;
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
  v5 = [v4 processIdentifier];
  [v3 reportIssueForType:@"ODDDeviceProperties" subType:@"null_deviceAggregationId" context:&__NSDictionary0__struct processIdentifier:v5 walkboutStatus:byte_100590548];
}

- (void)_getODDvisionOSDevicePropertiesWithGeneral:(id)a3 assistant:(id)a4 dictation:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v23 = "[ADDeviceProperties _getODDvisionOSDevicePropertiesWithGeneral:assistant:dictation:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v14 = objc_alloc_init(ODDSiriSchemaODDvisionOSDevicePropertiesReported);
  v15 = [v10 getODDAssistantProperties];
  [v14 setAssistant:v15];

  v16 = [v11 getODDDictationProperties];
  [v14 setDictation:v16];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10013D05C;
  v19[3] = &unk_100512CC8;
  v20 = v14;
  v21 = v12;
  v17 = v12;
  v18 = v14;
  [v9 getODDGeneralPropertiesWithCompletion:v19];
}

- (void)_getODDmacOSDevicePropertiesWithGeneral:(id)a3 assistant:(id)a4 dictation:(id)a5 macOS:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v27 = "[ADDeviceProperties _getODDmacOSDevicePropertiesWithGeneral:assistant:dictation:macOS:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v17 = objc_alloc_init(ODDSiriSchemaODDmacOSDevicePropertiesReported);
  v18 = [v12 getODDAssistantProperties];
  [v17 setAssistant:v18];

  v19 = [v13 getODDDictationProperties];
  [v17 setDictation:v19];

  v20 = [v14 getODDmacOSAssistantProperties];
  [v17 setMacOSAssistant:v20];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10013D2B0;
  v23[3] = &unk_100512CC8;
  v24 = v17;
  v25 = v15;
  v21 = v15;
  v22 = v17;
  [v11 getODDGeneralPropertiesWithCompletion:v23];
}

- (void)_getODDtvOSDevicePropertiesWithGeneral:(id)a3 assistant:(id)a4 dictation:(id)a5 tvOS:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v39 = "[ADDeviceProperties _getODDtvOSDevicePropertiesWithGeneral:assistant:dictation:tvOS:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v18 = dispatch_group_create();
  v19 = objc_alloc_init(ODDSiriSchemaODDtvOSDevicePropertiesReported);
  v20 = [v13 getODDAssistantProperties];
  [v19 setAssistant:v20];

  v21 = [v14 getODDDictationProperties];
  [v19 setDictation:v21];

  dispatch_group_enter(v18);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10013D5F8;
  v35[3] = &unk_100512C78;
  v22 = v19;
  v36 = v22;
  v23 = v18;
  v37 = v23;
  [v12 getODDGeneralPropertiesWithCompletion:v35];
  dispatch_group_enter(v23);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10013D638;
  v32[3] = &unk_100512CF0;
  v24 = v22;
  v33 = v24;
  v34 = v23;
  v25 = v23;
  [v15 getODDtvOSAssistantPropertiesWithCompletion:v32];
  queue = self->_queue;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10013D678;
  v29[3] = &unk_10051E038;
  v30 = v24;
  v31 = v16;
  v27 = v24;
  v28 = v16;
  dispatch_group_notify(v25, queue, v29);
}

- (void)_getODDwatchOSDevicePropertiesWithGeneral:(id)a3 assistant:(id)a4 dictation:(id)a5 watchOS:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v27 = "[ADDeviceProperties _getODDwatchOSDevicePropertiesWithGeneral:assistant:dictation:watchOS:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v17 = objc_alloc_init(ODDSiriSchemaODDwatchOSDevicePropertiesReported);
  v18 = [v12 getODDAssistantProperties];
  [v17 setAssistant:v18];

  v19 = [v13 getODDDictationProperties];
  [v17 setDictation:v19];

  v20 = [v14 getODDwatchOSAssistantProperties];
  [v17 setWatchOSAssistant:v20];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10013D890;
  v23[3] = &unk_100512CC8;
  v24 = v17;
  v25 = v15;
  v21 = v15;
  v22 = v17;
  [v11 getODDGeneralPropertiesWithCompletion:v23];
}

- (void)_getODDiOSDevicePropertiesWithGeneral:(id)a3 assistant:(id)a4 dictation:(id)a5 iOSGeneral:(id)a6 iOSAssistant:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v43 = "[ADDeviceProperties _getODDiOSDevicePropertiesWithGeneral:assistant:dictation:iOSGeneral:iOSAssistant:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v21 = dispatch_group_create();
  v22 = objc_alloc_init(ODDSiriSchemaODDiOSDevicePropertiesReported);
  v23 = [v15 getODDAssistantProperties];
  [v22 setAssistant:v23];

  v24 = [v16 getODDDictationProperties];
  [v22 setDictation:v24];

  v25 = [v17 getODDiOSGeneralProperties];
  [v22 setIOSGeneral:v25];

  dispatch_group_enter(v21);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10013DC08;
  v39[3] = &unk_100512C78;
  v26 = v22;
  v40 = v26;
  v27 = v21;
  v41 = v27;
  [v14 getODDGeneralPropertiesWithCompletion:v39];
  dispatch_group_enter(v27);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10013DC48;
  v36[3] = &unk_100512CA0;
  v28 = v26;
  v37 = v28;
  v38 = v27;
  v29 = v27;
  [v18 getODDiOSAssistantPropertiesWithCompletion:v36];
  queue = self->_queue;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10013DC88;
  v33[3] = &unk_10051E038;
  v34 = v28;
  v35 = v19;
  v31 = v28;
  v32 = v19;
  dispatch_group_notify(v29, queue, v33);
}

- (void)_populateDevicePropertiesForClientEvent:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[ADGeneralProperties alloc] initWithQueue:self->_queue];
  v9 = objc_alloc_init(ADAssistantProperties);
  v10 = objc_alloc_init(ADDictationProperties);
  v11 = objc_alloc_init(ADiOSGeneralProperties);
  v12 = [[ADiOSAssistantProperties alloc] initWithQueue:self->_queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013DE00;
  v15[3] = &unk_100512C50;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  [(ADDeviceProperties *)self _getODDiOSDevicePropertiesWithGeneral:v8 assistant:v9 dictation:v10 iOSGeneral:v11 iOSAssistant:v12 completion:v15];
}

- (void)_populateEventMetadataForClientEvent:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013DF1C;
  block[3] = &unk_10051E088;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)getODDDeviceAggregationIdWithCompletion:(id)a3
{
  v4 = a3;
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
      v17 = [v7 dictionaryRepresentation];
      *buf = 136315394;
      v21 = "[ADDeviceProperties getODDDeviceAggregationIdWithCompletion:]";
      v22 = 2112;
      v23 = v17;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Successfully populated EventMetadataForClientEvent event %@", buf, 0x16u);

      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else if (!v4)
    {
      goto LABEL_11;
    }

LABEL_10:
    v12 = [v7 eventMetadata];
    v13 = [v12 deviceAggregationId];
    v4[2](v4, v13);

    goto LABEL_11;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v14 = v11;
    v15 = [v7 dictionaryRepresentation];
    *buf = 136315394;
    v21 = "[ADDeviceProperties getODDDeviceAggregationIdWithCompletion:]";
    v22 = 2112;
    v23 = v15;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Timed out waiting to populate EventMetadataForClientEvent event %@", buf, 0x16u);
  }

  AnalyticsSendEvent();
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)getODDDevicePropertiesWithCompletion:(id)a3
{
  v4 = a3;
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
      v16 = [v7 dictionaryRepresentation];
      *buf = 136315394;
      v25 = "[ADDeviceProperties getODDDevicePropertiesWithCompletion:]";
      v26 = 2112;
      v27 = v16;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Successfully populated ODDDeviceProperties event %@", buf, 0x16u);

      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else if (!v4)
    {
      goto LABEL_11;
    }

LABEL_10:
    v4[2](v4, v7);
    goto LABEL_11;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v13 = v12;
    v14 = [v7 dictionaryRepresentation];
    *buf = 136315394;
    v25 = "[ADDeviceProperties getODDDevicePropertiesWithCompletion:]";
    v26 = 2112;
    v27 = v14;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Timed out waiting to populate ODDDeviceProperties event %@", buf, 0x16u);
  }

  AnalyticsSendEvent();
  if (v4)
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