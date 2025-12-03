@interface MOMultiDeviceEngagementManager
- (MOMultiDeviceEngagementManager)init;
- (id)eventsBySuggestionIdentifierFrom:(id)from to:(id)to;
- (id)eventsLightBySuggestionIdentifierFrom:(id)from to:(id)to;
- (id)goodnessScoreEngagementsBySuggestionIdentifierFrom:(id)from to:(id)to;
- (id)latestViewedEngagmentDateFrom:(id)from to:(id)to;
- (id)uniqueRawEngagementSuggestionTypeBySuggestionIdentifierBasedOnEngagementLightFrom:(id)from to:(id)to;
- (id)uniqueRawEngagementSuggestionTypeBySuggestionIdentifierFrom:(id)from to:(id)to;
- (void)init;
- (void)sendSuggestionEvent:(id)event;
- (void)sendSuggestionEventLight:(id)light;
@end

@implementation MOMultiDeviceEngagementManager

- (MOMultiDeviceEngagementManager)init
{
  v43.receiver = self;
  v43.super_class = MOMultiDeviceEngagementManager;
  v2 = [(MOMultiDeviceEngagementManager *)&v43 init];
  if (v2)
  {
    v3 = BiomeLibrary();
    moments = [v3 Moments];
    events = [moments Events];
    engagement = [events Engagement];

    v42 = 0;
    v7 = [engagement remoteDevicesWithError:&v42];
    v8 = v42;
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(MOMultiDeviceEngagementManager *)v8 init];
      }

      mergedStreamPublisher = v2->_mergedStreamPublisher;
      v2->_mergedStreamPublisher = 0;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = [v7 count];
        *buf = 134217984;
        v45 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[MOMultiDeviceEngagementManager.init] found %lu sync device for engagement stream", buf, 0xCu);
      }

      v13 = +[NSDate distantPast];
      [v13 timeIntervalSinceReferenceDate];
      mergedStreamPublisher = [engagement publishersForDevices:v7 withUseCase:@"Moments" startTime:1 includeLocal:&__block_literal_global_1 pipeline:?];

      merge = [mergedStreamPublisher merge];
      v15 = v2->_mergedStreamPublisher;
      v2->_mergedStreamPublisher = merge;

      v16 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[MOMultiDeviceEngagementManager.init] mergedStreamPublisher was set", buf, 2u);
      }
    }

    v17 = BiomeLibrary();
    moments2 = [v17 Moments];
    events2 = [moments2 Events];
    engagement2 = [events2 Engagement];
    source = [engagement2 source];
    streamSource = v2->_streamSource;
    v2->_streamSource = source;

    v23 = BiomeLibrary();
    moments3 = [v23 Moments];
    events3 = [moments3 Events];
    engagementLight = [events3 EngagementLight];
    source2 = [engagementLight source];
    streamSourceLight = v2->_streamSourceLight;
    v2->_streamSourceLight = source2;

    v29 = BiomeLibrary();
    moments4 = [v29 Moments];
    events4 = [moments4 Events];
    engagement3 = [events4 Engagement];
    publisher = [engagement3 publisher];
    streamPublisher = v2->_streamPublisher;
    v2->_streamPublisher = publisher;

    v35 = BiomeLibrary();
    moments5 = [v35 Moments];
    events5 = [moments5 Events];
    engagementLight2 = [events5 EngagementLight];
    publisher2 = [engagementLight2 publisher];
    streamPublisherLight = v2->_streamPublisherLight;
    v2->_streamPublisherLight = publisher2;
  }

  return v2;
}

- (void)sendSuggestionEvent:(id)event
{
  eventCopy = event;
  streamSource = [(MOMultiDeviceEngagementManager *)self streamSource];
  [streamSource sendEvent:eventCopy];
}

- (void)sendSuggestionEventLight:(id)light
{
  lightCopy = light;
  streamSourceLight = [(MOMultiDeviceEngagementManager *)self streamSourceLight];
  [streamSourceLight sendEvent:lightCopy];
}

- (id)uniqueRawEngagementSuggestionTypeBySuggestionIdentifierFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = objc_opt_new();
  v8 = [(MOMultiDeviceEngagementManager *)self eventsBySuggestionIdentifierFrom:fromCopy to:toCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __97__MOMultiDeviceEngagementManager_uniqueRawEngagementSuggestionTypeBySuggestionIdentifierFrom_to___block_invoke;
  v11[3] = &unk_1003094F8;
  v11[4] = &v12;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

void __97__MOMultiDeviceEngagementManager_uniqueRawEngagementSuggestionTypeBySuggestionIdentifierFrom_to___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(&v14 + 1) + 8 * v12) type]);
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [*(*(*(a1 + 32) + 8) + 40) setObject:v7 forKeyedSubscript:v5];
}

- (id)goodnessScoreEngagementsBySuggestionIdentifierFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = objc_opt_new();
  v8 = [(MOMultiDeviceEngagementManager *)self eventsBySuggestionIdentifierFrom:fromCopy to:toCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __88__MOMultiDeviceEngagementManager_goodnessScoreEngagementsBySuggestionIdentifierFrom_to___block_invoke;
  v11[3] = &unk_1003094F8;
  v11[4] = &v12;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

void __88__MOMultiDeviceEngagementManager_goodnessScoreEngagementsBySuggestionIdentifierFrom_to___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 type] == 1)
        {
          v12 = [v11 fullBundleOrderedSet];
          if ([v12 count])
          {
            v13 = [v11 fullBundleOrderedSet];
            v14 = [v13 objectAtIndexedSubscript:0];
            [v14 bundleGoodnessScore];
            v15 = [NSNumber numberWithDouble:?];
            [*(*(*(a1 + 32) + 8) + 40) setObject:v15 forKeyedSubscript:v5];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (id)eventsBySuggestionIdentifierFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = objc_opt_new();
  mergedStreamPublisher = [(MOMultiDeviceEngagementManager *)self mergedStreamPublisher];

  if (!mergedStreamPublisher)
  {
    v20 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MOMultiDeviceEngagementManager eventsBySuggestionIdentifierFrom:v20 to:?];
    }

    goto LABEL_13;
  }

  mergedStreamPublisher2 = [(MOMultiDeviceEngagementManager *)self mergedStreamPublisher];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __70__MOMultiDeviceEngagementManager_eventsBySuggestionIdentifierFrom_to___block_invoke;
  v24[3] = &unk_100309520;
  v25 = fromCopy;
  v26 = toCopy;
  v10 = [mergedStreamPublisher2 filterWithIsIncluded:v24];

  v11 = [v10 removeDuplicatesWithIsDuplicate:&__block_literal_global_10];
  v12 = objc_opt_new();
  v13 = [v11 reduceWithInitial:v12 nextPartialResult:&__block_literal_global_13];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  v37 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __70__MOMultiDeviceEngagementManager_eventsBySuggestionIdentifierFrom_to___block_invoke_4;
  v23[3] = &unk_1003095C8;
  v23[4] = &buf;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __70__MOMultiDeviceEngagementManager_eventsBySuggestionIdentifierFrom_to___block_invoke_5;
  v22[3] = &unk_1003095F0;
  v22[4] = &v27;
  v14 = [v13 sinkWithCompletion:v23 receiveInput:v22];
  v15 = *(*(&buf + 1) + 40);
  if (v15)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOMultiDeviceEngagementManager eventsBySuggestionIdentifierFrom:v16 to:?];
    }
  }

  _Block_object_dispose(&buf, 8);

  if (v15)
  {
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v17 = _mo_log_facility_get_os_log(&MOLogFacilityEngagement);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v28[5] count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[MOMultiDeviceEngagementManager.eventsBySuggestionIdentifierFrom] Fetched %lu engagement signals", &buf, 0xCu);
  }

  v19 = v28[5];
LABEL_14:
  _Block_object_dispose(&v27, 8);

  return v19;
}

BOOL __70__MOMultiDeviceEngagementManager_eventsBySuggestionIdentifierFrom_to___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 suggestionEvent];

  if (v4)
  {
    v5 = [v4 timestamp];
    [v5 timeIntervalSinceDate:*(a1 + 32)];
    if (v6 >= 0.0)
    {
      v8 = [v4 timestamp];
      [v8 timeIntervalSinceDate:*(a1 + 40)];
      v7 = v9 < 0.0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __70__MOMultiDeviceEngagementManager_eventsBySuggestionIdentifierFrom_to___block_invoke_2(id a1, BMMomentsEngagementSuggestionEvent *a2, BMMomentsEngagementSuggestionEvent *a3)
{
  v4 = a3;
  v5 = [(BMMomentsEngagementSuggestionEvent *)a2 timestamp];
  v6 = [(BMMomentsEngagementSuggestionEvent *)v4 timestamp];

  return v5 == v6;
}

NSMutableDictionary *__cdecl __70__MOMultiDeviceEngagementManager_eventsBySuggestionIdentifierFrom_to___block_invoke_3(id a1, NSMutableDictionary *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = [(BMStoreEvent *)a3 eventBody];
  v6 = [v5 suggestionEvent];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v6 fullBundleOrderedSet];
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [NSUUID alloc];
        v13 = [v11 identifier];
        v14 = [v13 suggestionId];
        v15 = [v12 initWithUUIDString:v14];

        v16 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v15];

        if (v16)
        {
          v17 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v15];
          [v17 addObject:v6];
        }

        else
        {
          v17 = [[NSMutableArray alloc] initWithObjects:{v6, 0}];
          [(NSMutableDictionary *)v4 setObject:v17 forKeyedSubscript:v15];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return v4;
}

uint64_t __70__MOMultiDeviceEngagementManager_eventsBySuggestionIdentifierFrom_to___block_invoke_4(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 error];

  return _objc_release_x1();
}

- (id)latestViewedEngagmentDateFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v8 = [(MOMultiDeviceEngagementManager *)self eventsBySuggestionIdentifierFrom:fromCopy to:toCopy];
  v9 = [(MOMultiDeviceEngagementManager *)self eventsLightBySuggestionIdentifierFrom:fromCopy to:toCopy];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = +[NSDate distantPast];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __67__MOMultiDeviceEngagementManager_latestViewedEngagmentDateFrom_to___block_invoke;
  v15[3] = &unk_1003094F8;
  v15[4] = &v16;
  [v9 enumerateKeysAndObjectsUsingBlock:v15];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __67__MOMultiDeviceEngagementManager_latestViewedEngagmentDateFrom_to___block_invoke_2;
  v14[3] = &unk_1003094F8;
  v14[4] = &v16;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];
  v10 = v17[5];
  v11 = +[NSDate distantPast];

  if (v10 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v17[5];
  }

  _Block_object_dispose(&v16, 8);

  return v12;
}

void __67__MOMultiDeviceEngagementManager_latestViewedEngagmentDateFrom_to___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 type] == 9)
        {
          v10 = [v9 timestamp];
          [v10 timeIntervalSinceDate:*(*(*(a1 + 32) + 8) + 40)];
          v12 = v11;

          if (v12 > 0.0)
          {
            v13 = [v9 timestamp];
            v14 = *(*(a1 + 32) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

void __67__MOMultiDeviceEngagementManager_latestViewedEngagmentDateFrom_to___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 type] == 9)
        {
          v10 = [v9 timestamp];
          [v10 timeIntervalSinceDate:*(*(*(a1 + 32) + 8) + 40)];
          v12 = v11;

          if (v12 > 0.0)
          {
            v13 = [v9 timestamp];
            v14 = *(*(a1 + 32) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (id)uniqueRawEngagementSuggestionTypeBySuggestionIdentifierBasedOnEngagementLightFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = objc_opt_new();
  v8 = [(MOMultiDeviceEngagementManager *)self eventsLightBySuggestionIdentifierFrom:fromCopy to:toCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __119__MOMultiDeviceEngagementManager_uniqueRawEngagementSuggestionTypeBySuggestionIdentifierBasedOnEngagementLightFrom_to___block_invoke;
  v11[3] = &unk_1003094F8;
  v11[4] = &v12;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

void __119__MOMultiDeviceEngagementManager_uniqueRawEngagementSuggestionTypeBySuggestionIdentifierBasedOnEngagementLightFrom_to___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(&v14 + 1) + 8 * v12) type]);
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [*(*(*(a1 + 32) + 8) + 40) setObject:v7 forKeyedSubscript:v5];
}

- (id)eventsLightBySuggestionIdentifierFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = objc_opt_new();
  streamPublisherLight = [(MOMultiDeviceEngagementManager *)self streamPublisherLight];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __75__MOMultiDeviceEngagementManager_eventsLightBySuggestionIdentifierFrom_to___block_invoke;
  v26[3] = &unk_100309520;
  v9 = fromCopy;
  v27 = v9;
  v10 = toCopy;
  v28 = v10;
  v11 = [streamPublisherLight filterWithIsIncluded:v26];

  v12 = [v11 removeDuplicatesWithIsDuplicate:&__block_literal_global_20];
  v13 = objc_opt_new();
  v14 = [v12 reduceWithInitial:v13 nextPartialResult:&__block_literal_global_22];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __75__MOMultiDeviceEngagementManager_eventsLightBySuggestionIdentifierFrom_to___block_invoke_4;
  v19[3] = &unk_1003095C8;
  v19[4] = &v20;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __75__MOMultiDeviceEngagementManager_eventsLightBySuggestionIdentifierFrom_to___block_invoke_5;
  v18[3] = &unk_1003095F0;
  v18[4] = &v29;
  v15 = [v14 sinkWithCompletion:v19 receiveInput:v18];
  if (v21[5])
  {
    v16 = 0;
  }

  else
  {
    v16 = v30[5];
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v29, 8);

  return v16;
}

BOOL __75__MOMultiDeviceEngagementManager_eventsLightBySuggestionIdentifierFrom_to___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 suggestionEvent];

  if (v4)
  {
    v5 = [v4 timestamp];
    [v5 timeIntervalSinceDate:*(a1 + 32)];
    if (v6 >= 0.0)
    {
      v8 = [v4 timestamp];
      [v8 timeIntervalSinceDate:*(a1 + 40)];
      v7 = v9 < 0.0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __75__MOMultiDeviceEngagementManager_eventsLightBySuggestionIdentifierFrom_to___block_invoke_2(id a1, BMMomentsEngagementLightSuggestionEvent *a2, BMMomentsEngagementLightSuggestionEvent *a3)
{
  v4 = a3;
  v5 = [(BMMomentsEngagementLightSuggestionEvent *)a2 timestamp];
  v6 = [(BMMomentsEngagementLightSuggestionEvent *)v4 timestamp];

  return v5 == v6;
}

NSMutableDictionary *__cdecl __75__MOMultiDeviceEngagementManager_eventsLightBySuggestionIdentifierFrom_to___block_invoke_3(id a1, NSMutableDictionary *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = [(BMStoreEvent *)a3 eventBody];
  v6 = [v5 suggestionEvent];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v6 fullBundleOrderedSet];
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [NSUUID alloc];
        v13 = [v11 identifier];
        v14 = [v13 suggestionId];
        v15 = [v12 initWithUUIDString:v14];

        v16 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v15];

        if (v16)
        {
          v17 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v15];
          [v17 addObject:v6];
        }

        else
        {
          v17 = [[NSMutableArray alloc] initWithObjects:{v6, 0}];
          [(NSMutableDictionary *)v4 setObject:v17 forKeyedSubscript:v15];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return v4;
}

uint64_t __75__MOMultiDeviceEngagementManager_eventsLightBySuggestionIdentifierFrom_to___block_invoke_4(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 error];

  return _objc_release_x1();
}

- (void)init
{
  localizedDescription = [self localizedDescription];
  v4 = 138412290;
  v5 = localizedDescription;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MOMultiDeviceEngagementManager.init] Can't fetch remote devices for Engagement stream (error= %@). Setting mergedStreamPublisher to nil.", &v4, 0xCu);
}

- (void)eventsBySuggestionIdentifierFrom:(uint64_t)a1 to:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MOMultiDeviceEngagementManager.eventsBySuggestionIdentifierFrom] Error sinking engagement event (error=%@). Returning nil engagement signal array", &v3, 0xCu);
}

@end