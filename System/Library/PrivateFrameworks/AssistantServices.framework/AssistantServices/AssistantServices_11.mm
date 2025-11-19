void sub_10028E73C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) _queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10028E83C;
  v10[3] = &unk_100519338;
  v16 = a2;
  v11 = v5;
  v14 = *(a1 + 56);
  v12 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v13 = v7;
  v15 = v8;
  v9 = v5;
  dispatch_async(v6, v10);
}

uint64_t sub_10028E83C(uint64_t a1)
{
  if (*(a1 + 72) == 1 && !*(a1 + 32))
  {
    v4 = *(*(a1 + 56) + 16);

    return v4();
  }

  else
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = v2;
      v7 = [v5 count];
      v8 = *(a1 + 48);
      v9 = *(a1 + 64);
      v10 = *(a1 + 32);
      v11 = 136316162;
      v12 = "[ADCommandCenter(Metrics) _metrics_processEventRecordsFromStore:batch:deliveryStream:eventStreamUID:streamSpeechId:untilLimit:uploadRecords:completion:]_block_invoke_3";
      v13 = 2048;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to delete %tu sent analytics events from event stream with UID %@ in delivery stream %tu due to error %@.", &v11, 0x34u);
    }

    return (*(*(a1 + 56) + 16))();
  }
}

uint64_t sub_10028E9B4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setOutstandingCount:a2];
  [*(a1 + 32) markEndTime];
  [ADCoreAnalyticsSideChannel logAnalyticsBatchUploadedWithBatch:*(a1 + 32)];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_10028EF60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10028EF78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Fetching analytics event stream UIDs...", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10028F10C;
  v8[3] = &unk_100519298;
  v8[4] = *(a1 + 32);
  v11 = *(a1 + 48);
  v13 = *(a1 + 64);
  v5 = *(a1 + 40);
  v17 = *(a1 + 120);
  v18 = *(a1 + 128);
  v6 = *(a1 + 88);
  v14 = *(a1 + 72);
  v15 = v6;
  v16 = *(a1 + 104);
  v9 = v5;
  v10 = v3;
  v19 = *(a1 + 129);
  v12 = *(a1 + 56);
  v7 = v3;
  [v7 fetchEventStreamUIDsWithCompletion:v8];
}

void sub_10028F10C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v123[0] = _NSConcreteStackBlock;
  v123[1] = 3221225472;
  v123[2] = sub_10028FDE8;
  v123[3] = &unk_1005191A8;
  v7 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v124 = v7;
  [v5 enumerateObjectsUsingBlock:v123];
  v8 = [v7 allObjects];
  v9 = v8;
  if (v6)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to fetch analytics event stream UIDs due to error %@", buf, 0x16u);
    }

    v11 = [*(a1 + 32) _queue];
    v12 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10028FE40;
    block[3] = &unk_10051CF58;
    block[4] = *(a1 + 56);
    dispatch_async(v11, block);

LABEL_5:
    v13 = v12[4];
    goto LABEL_6;
  }

  v14 = [v8 count];
  v15 = AFSiriLogContextDaemon;
  v16 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (!v14)
  {
    if (v16)
    {
      *buf = 136315138;
      *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s No analytics event stream UIDs was fetched.", buf, 0xCu);
    }

    v24 = [*(a1 + 32) _queue];
    v12 = v121;
    v121[0] = _NSConcreteStackBlock;
    v121[1] = 3221225472;
    v121[2] = sub_10028FE50;
    v121[3] = &unk_10051CF58;
    v121[4] = *(a1 + 56);
    dispatch_async(v24, v121);

    goto LABEL_5;
  }

  if (v16)
  {
    v17 = v15;
    v18 = [v9 count];
    *buf = 136315650;
    *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke_2";
    *&buf[12] = 2048;
    *&buf[14] = v18;
    *&buf[22] = 2112;
    v126 = v9;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Fetched %tu analytics event stream UIDs %@", buf, 0x20u);
  }

  v19 = +[NSProcessInfo processInfo];
  [v19 systemUptime];
  v21 = v20 < *(a1 + 72);

  if (!v21)
  {
    v25 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Attempted to send analytics event stream when time limit is reached.", buf, 0xCu);
    }

    v26 = [*(a1 + 32) _queue];
    v12 = v120;
    v120[0] = _NSConcreteStackBlock;
    v120[1] = 3221225472;
    v120[2] = sub_10028FE60;
    v120[3] = &unk_10051CF58;
    v120[4] = *(a1 + 56);
    dispatch_async(v26, v120);

    goto LABEL_5;
  }

  v22 = +[ADAnalyticsService sharedService];
  v13 = [v22 currentEventStreamUID];

  v74 = [v9 mutableCopy];
  [v74 removeObject:v13];
  if (*(a1 + 40) && [v9 containsObject:?])
  {
    v23 = *(a1 + 40);
  }

  else
  {
    v27 = [v74 count];
    v23 = v13;
    if (v27)
    {
      v28 = [v74 firstObject];
      goto LABEL_23;
    }
  }

  v28 = v23;
LABEL_23:
  v29 = v28;
  v30 = [v28 isEqualToString:*(a1 + 40)];
  v31 = [v29 isEqualToString:v13];
  group = v30;
  if (v30)
  {
    v32 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v33 = *(a1 + 40);
      *buf = 136315394;
      *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke_2";
      *&buf[12] = 2112;
      *&buf[14] = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s Using prioritized event stream UID %@", buf, 0x16u);
    }
  }

  if (v31)
  {
    v34 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Using current event stream UID %@", buf, 0x16u);
    }
  }

  v114 = 0;
  v115 = &v114;
  v116 = 0x3032000000;
  v117 = sub_10028FE70;
  v118 = sub_10028FE80;
  v119 = 0;
  v111[0] = _NSConcreteStackBlock;
  v111[1] = 3221225472;
  v111[2] = sub_10028FE88;
  v111[3] = &unk_1005191D0;
  v73 = v29;
  v112 = v73;
  v113 = &v114;
  [v5 enumerateObjectsUsingBlock:v111];
  v35 = [*(a1 + 32) _account];
  v72 = [v35 speechIdentifier];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x5810000000;
  v126 = "";
  if (group)
  {
    v36 = *(a1 + 96);
    v127 = *(a1 + 80);
    v128 = v36;
    v129 = *(a1 + 112);
    v37 = *(a1 + 128);
  }

  else
  {
    v127 = xmmword_1003F0548;
    v128 = unk_1003F0558;
    v129 = xmmword_1003F0568;
    v37 = 100;
  }

  v130 = v37;
  groupa = dispatch_group_create();
  v38 = *&buf[8];
  if (*(*&buf[8] + 32) == 1)
  {
    dispatch_group_enter(groupa);
    v39 = [[ADAnalyticsDeliveryBatch alloc] initWithDeliveryStream:0];
    [(ADAnalyticsDeliveryBatch *)v39 markStartTime];
    v40 = [*(a1 + 32) _account];
    v41 = [v40 hostname];
    [(ADAnalyticsDeliveryBatch *)v39 setServerEnvironment:v41];

    [(ADAnalyticsDeliveryBatch *)v39 setScheduledActivity:*(a1 + 136)];
    v42 = *(a1 + 48);
    v66 = *(a1 + 32);
    v69 = v115[5];
    v43 = *(a1 + 72);
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_10028FF20;
    v105[3] = &unk_1005191F8;
    v106 = v72;
    v107 = v73;
    v44 = v39;
    v45 = *(a1 + 32);
    v108 = v44;
    v109 = v45;
    v110 = *(a1 + 137);
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_100290900;
    v102[3] = &unk_100519220;
    v104 = buf;
    v103 = groupa;
    [v66 _metrics_processEventRecordsFromStore:v42 batch:v44 deliveryStream:0 eventStreamUID:v107 streamSpeechId:v69 untilLimit:v105 uploadRecords:v43 completion:v102];

    v38 = *&buf[8];
  }

  if (*(v38 + 48) == 1)
  {
    dispatch_group_enter(groupa);
    v46 = [[ADAnalyticsDeliveryBatch alloc] initWithDeliveryStream:1];
    [(ADAnalyticsDeliveryBatch *)v46 markStartTime];
    v47 = [*(a1 + 32) _account];
    v48 = [v47 hostname];
    [(ADAnalyticsDeliveryBatch *)v46 setServerEnvironment:v48];

    [(ADAnalyticsDeliveryBatch *)v46 setScheduledActivity:*(a1 + 136)];
    v49 = *(a1 + 48);
    v67 = *(a1 + 32);
    v70 = v115[5];
    v50 = *(a1 + 72);
    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_100290A24;
    v97[3] = &unk_100519248;
    v98 = v73;
    v51 = v46;
    v99 = v51;
    v52 = v13;
    v53 = *(a1 + 32);
    v100 = v52;
    v101 = v53;
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_100290D50;
    v94[3] = &unk_100519220;
    v96 = buf;
    v95 = groupa;
    [v67 _metrics_processEventRecordsFromStore:v49 batch:v51 deliveryStream:1 eventStreamUID:v98 streamSpeechId:v70 untilLimit:v97 uploadRecords:v50 completion:v94];

    v38 = *&buf[8];
  }

  if (*(v38 + 64) == 1)
  {
    dispatch_group_enter(groupa);
    v54 = [[ADAnalyticsDeliveryBatch alloc] initWithDeliveryStream:2];
    [(ADAnalyticsDeliveryBatch *)v54 markStartTime];
    v55 = [*(a1 + 32) _account];
    v56 = [v55 hostname];
    [(ADAnalyticsDeliveryBatch *)v54 setServerEnvironment:v56];

    [(ADAnalyticsDeliveryBatch *)v54 setScheduledActivity:*(a1 + 136)];
    v57 = *(a1 + 48);
    v68 = *(a1 + 32);
    v71 = v115[5];
    v58 = *(a1 + 72);
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_100290E7C;
    v89[3] = &unk_100519248;
    v90 = v73;
    v59 = v54;
    v91 = v59;
    v60 = v13;
    v61 = *(a1 + 32);
    v92 = v60;
    v93 = v61;
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_1002911BC;
    v86[3] = &unk_100519220;
    v88 = buf;
    v87 = groupa;
    [v68 _metrics_processEventRecordsFromStore:v57 batch:v59 deliveryStream:2 eventStreamUID:v90 streamSpeechId:v71 untilLimit:v89 uploadRecords:v58 completion:v86];
  }

  v62 = [*(a1 + 32) _queue];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_1002912E8;
  v77[3] = &unk_100519270;
  v81 = buf;
  v63 = *(a1 + 56);
  v64 = *(a1 + 32);
  v82 = *(a1 + 72);
  v83 = *(a1 + 138);
  v84 = *(a1 + 137);
  v77[4] = v64;
  v78 = v73;
  v79 = v63;
  v85 = *(a1 + 136);
  v80 = *(a1 + 64);
  v65 = v73;
  dispatch_group_notify(groupa, v62, v77);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v114, 8);

LABEL_6:
}

void sub_10028FDA4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Unwind_Resume(a1);
}

void sub_10028FDE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 streamUID];
  [v2 addObject:v3];
}

uint64_t sub_10028FE70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10028FE88(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 streamUID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = [v11 speechId];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

void sub_10028FF20(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    *buf = 136315394;
    v95 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke_2";
    v96 = 2048;
    v97 = [v7 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Converting %tu analytics events to Events metrics...", buf, 0x16u);
  }

  v12 = v8;
  v13 = v12;
  if (!v12 || (v14 = v12, [v12 isEqualToString:@"unknown"]))
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      *buf = 136315650;
      v95 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      v96 = 2112;
      v97 = v13;
      v98 = 2112;
      v99 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Recorded speechId was %@, using current %@", buf, 0x20u);
    }

    v14 = *(a1 + 32);
  }

  v75 = v13;
  v17 = *(a1 + 40);
  v74 = v14;
  v18 = v17;
  v19 = v7;
  v73 = objc_autoreleasePoolPush();
  v76 = v18;
  v20 = v19;
  v21 = [v20 count];
  if (v21)
  {
    v22 = v21;
    v71 = v9;
    v72 = a1;
    v23 = [[NSMutableDictionary alloc] initWithCapacity:v21];
    v24 = [[NSMutableDictionary alloc] initWithCapacity:v22];
    v70 = v22;
    v87 = [[NSMutableDictionary alloc] initWithCapacity:v22];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = v20;
    v25 = [obj countByEnumeratingWithState:&v88 objects:buf count:16];
    if (!v25)
    {
      v82 = 0;
      goto LABEL_55;
    }

    v26 = v25;
    v82 = 0;
    v27 = *v89;
    v80 = v20;
    v81 = v23;
    v83 = *v89;
    v84 = v24;
    while (1)
    {
      v28 = 0;
      v85 = v26;
      do
      {
        if (*v89 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v88 + 1) + 8 * v28);
        v30 = objc_autoreleasePoolPush();
        v31 = [v29 event];
        [v31 type];
        if (AFAnalyticsEventTypeIsValid())
        {
          v32 = AFAnalyticsEventTypeGetLegacyName();
          v33 = [v87 objectForKey:v32];
          v34 = [v33 unsignedIntegerValue];

          if (v34 == 1)
          {
            v36 = [v23 objectForKey:v32];
            v37 = [v24 objectForKey:v32];
            v38 = [NSString stringWithFormat:@"%@.%u", v32, 0];
            [v23 setObject:v36 forKey:v38];
            [v23 removeObjectForKey:v32];

            if (v37)
            {
              [v24 setObject:v37 forKey:v38];
              [v24 removeObjectForKey:v32];
            }

            v20 = v80;
          }

          else
          {
            if (!v34)
            {
              v35 = v32;
              goto LABEL_23;
            }

            v38 = 0;
          }

          v35 = [NSString stringWithFormat:@"%@.%tu", v32, v34];

LABEL_23:
          v39 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v31 timestamp]);
          [v23 setObject:v39 forKey:v35];

          v40 = v31;
          if (v40)
          {
            v41 = v40;
            v42 = [v40 contextData];
            if (!v42)
            {
              goto LABEL_32;
            }

            v43 = [v41 contextDataType];
            if (v43 == 2)
            {
              v48 = [[NSString alloc] initWithData:v42 encoding:4];
              goto LABEL_39;
            }

            if (v43 != 1)
            {
LABEL_32:
              v48 = 0;
              goto LABEL_39;
            }

            context = objc_autoreleasePoolPush();
            v93 = 0;
            v44 = [NSPropertyListSerialization propertyListWithData:v42 options:0 format:0 error:&v93];
            v45 = v93;
            v78 = v44;
            if (v45 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v49 = AFSiriLogContextAnalytics;
              if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
              {
                *v100 = 136315394;
                v101 = "_ADAnalyticsMetricsGetEventInformationValue";
                v102 = 2114;
                v103 = v45;
                _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s %{public}@", v100, 0x16u);
              }

              v48 = 0;
LABEL_37:
              v20 = v80;
            }

            else
            {
              v92 = 0;
              v46 = [NSJSONSerialization dataWithJSONObject:v44 options:0 error:&v92];
              v47 = v92;

              v42 = v46;
              if (v46 && !v47)
              {
                v48 = [[NSString alloc] initWithData:v46 encoding:4];
                goto LABEL_37;
              }

              v77 = v46;
              v52 = AFSiriLogContextAnalytics;
              v20 = v80;
              if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
              {
                *v100 = 136315394;
                v101 = "_ADAnalyticsMetricsGetEventInformationValue";
                v102 = 2114;
                v103 = v47;
                _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%s %{public}@", v100, 0x16u);
              }

              v48 = 0;
              v42 = v77;
            }

            objc_autoreleasePoolPop(context);
LABEL_39:

            if (v48)
            {
              v24 = v84;
              [v84 setObject:v48 forKey:v35];
              v50 = [v35 lengthOfBytesUsingEncoding:4];
              v82 = [v48 lengthOfBytesUsingEncoding:4] + v82 + v50;

              v23 = v81;
LABEL_43:
              v51 = [NSNumber numberWithUnsignedInteger:v34 + 1];
              [v87 setObject:v51 forKey:v32];

              v27 = v83;
              v26 = v85;
              goto LABEL_44;
            }

            v23 = v81;
          }

          v24 = v84;
          goto LABEL_43;
        }

LABEL_44:

        objc_autoreleasePoolPop(v30);
        v28 = v28 + 1;
      }

      while (v26 != v28);
      v53 = [obj countByEnumeratingWithState:&v88 objects:buf count:16];
      v26 = v53;
      if (!v53)
      {
LABEL_55:

        v58 = [v23 count];
        v57 = v58 != 0;
        if (v58)
        {
          AFSystemGetBootTimeInTimeInterval();
          v59 = [NSNumber numberWithDouble:?];
          [v23 setObject:v59 forKey:@"SystemBootTime"];

          [v24 setObject:v76 forKey:@"StreamIdentifier"];
          v60 = v23;
          v61 = v24;
          v55 = v23;
          v56 = v24;
          a1 = v72;
        }

        else
        {
          v62 = AFSiriLogContextAnalytics;
          a1 = v72;
          if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
          {
            *v100 = 136315394;
            v101 = "_ADAnalyticsMetricsCreateTimingsAndEventInformationDictionaries";
            v102 = 2048;
            v103 = v70;
            _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%s Dropped %tu events because no timings can be extracted from the events.", v100, 0x16u);
          }

          v55 = 0;
          v56 = 0;
        }

        v9 = v71;

        goto LABEL_61;
      }
    }
  }

  v54 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v95 = "_ADAnalyticsMetricsCreateTimingsAndEventInformationDictionaries";
    _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%s Unable to build metrics out of no event records.", buf, 0xCu);
  }

  v82 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
LABEL_61:

  v63 = v55;
  v64 = v56;
  if (v57)
  {
    v65 = objc_alloc_init(SAMetrics);
    [v65 setCategory:@"Events"];
    [v65 setEventInformation:v64];
    [v65 setTimings:v63];
    v66 = v74;
    [v65 setSpeechId:v74];
  }

  else
  {
    v65 = 0;
    v66 = v74;
  }

  objc_autoreleasePoolPop(v73);
  [*(a1 + 48) setPayloadSize:v82];
  v67 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v68 = v67;
    v69 = [v20 count];
    *buf = 136315650;
    v95 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
    v96 = 2048;
    v97 = v69;
    v98 = 2112;
    v99 = v65;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "%s Converted %tu analytics events to Events metrics %@", buf, 0x20u);
  }

  [*(a1 + 56) _sendMetrics:v65 requiresActiveSession:*(a1 + 64) batch:*(a1 + 48) completion:v9];
}

void sub_100290900(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      v7 = 2048;
      v8 = 0;
      v4 = "%s Event record process complete for delivery stream %lu, moving on to next iteration";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, &v5, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 32) = 0;
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      v7 = 2048;
      v8 = 0;
      v4 = "%s Ceasing to process events from delivery stream %tu.";
      goto LABEL_6;
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100290A24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    *buf = 136315394;
    *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
    *&buf[12] = 2048;
    *&buf[14] = [v7 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Converting %tu analytics events to SendInstrumentation...", buf, 0x16u);
  }

  v29 = 0;
  v12 = *(a1 + 32);
  v13 = v7;
  v14 = objc_alloc_init(NSMutableArray);
  v15 = objc_autoreleasePoolPush();
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_1000DD6A4;
  v31 = &unk_100510FC8;
  v16 = v14;
  v32 = v16;
  v33 = &v29;
  [v13 enumerateObjectsUsingBlock:buf];
  v17 = objc_alloc_init(SASendInstrumentation);
  [v17 setInstrumentationBatch:v16];

  objc_autoreleasePoolPop(v15);
  [*(a1 + 40) setPayloadSize:v29];
  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    v20 = [v13 count];
    *buf = 136315650;
    *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
    *&buf[12] = 2048;
    *&buf[14] = v20;
    *&buf[22] = 2112;
    v31 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Converted %tu analytics events to SendInstrumentation metrics %@", buf, 0x20u);
  }

  mach_absolute_time();
  v21 = [NSNumber numberWithUnsignedLongLong:AFMachAbsoluteTimeGetNanoseconds()];
  [v17 setEventTransmittedRelativeToBootTimeTimestampNs:v21];

  [v17 setEventTransmittedTimestampRefId:*(a1 + 48)];
  v22 = *(a1 + 56);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100291620;
  v25[3] = &unk_10051B280;
  v26 = *(a1 + 40);
  v27 = v17;
  v28 = v9;
  v23 = v9;
  v24 = v17;
  [v22 handleCommand:v24 completion:v25];
}

void sub_100290D50(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      v7 = 2048;
      v8 = 1;
      v4 = "%s Event record process complete for delivery stream %lu, moving on to next iteration";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, &v5, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 48) = 0;
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      v7 = 2048;
      v8 = 1;
      v4 = "%s Ceasing to process events from delivery stream %tu.";
      goto LABEL_6;
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100290E7C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    *buf = 136315394;
    *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
    *&buf[12] = 2048;
    *&buf[14] = [v7 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Converting %tu analytics events to SendInstrumentation(Generic)...", buf, 0x16u);
  }

  v29 = 0;
  v12 = *(a1 + 32);
  v13 = v7;
  v14 = objc_alloc_init(NSMutableArray);
  v15 = objc_autoreleasePoolPush();
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_1000DD608;
  v31 = &unk_100510FC8;
  v16 = v14;
  v32 = v16;
  v33 = &v29;
  [v13 enumerateObjectsUsingBlock:buf];
  v17 = objc_alloc_init(SASendInstrumentation);
  [v17 setPayloadVersion:SASendInstrumentationPayloadVersionGENERIC_WRAPPER_SUPPORTValue];
  [v17 setInstrumentationBatch:v16];

  objc_autoreleasePoolPop(v15);
  [*(a1 + 40) setPayloadSize:v29];
  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    v20 = [v13 count];
    *buf = 136315650;
    *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
    *&buf[12] = 2048;
    *&buf[14] = v20;
    *&buf[22] = 2112;
    v31 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Converted %tu analytics events to SendInstrumentation(Generic) %@", buf, 0x20u);
  }

  mach_absolute_time();
  v21 = [NSNumber numberWithUnsignedLongLong:AFMachAbsoluteTimeGetNanoseconds()];
  [v17 setEventTransmittedRelativeToBootTimeTimestampNs:v21];

  [v17 setEventTransmittedTimestampRefId:*(a1 + 48)];
  v22 = *(a1 + 56);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100291450;
  v25[3] = &unk_10051B280;
  v26 = *(a1 + 40);
  v27 = v17;
  v28 = v9;
  v23 = v9;
  v24 = v17;
  [v22 handleCommand:v24 completion:v25];
}

void sub_1002911BC(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      v7 = 2048;
      v8 = 2;
      v4 = "%s Event record process complete for delivery stream %lu, moving on to next iteration";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, &v5, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 64) = 0;
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      v7 = 2048;
      v8 = 2;
      v4 = "%s Ceasing to process events from delivery stream %tu.";
      goto LABEL_6;
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

id sub_1002912E8(uint64_t a1)
{
  v2 = *(*(a1 + 64) + 8);
  if (*(v2 + 80) && ((*(v2 + 32) & 1) != 0 || (*(v2 + 48) & 1) != 0 || (*(v2 + 64) & 1) != 0))
  {
    v3 = +[ADPreferences sharedPreferences];
    v4 = +[NSDate date];
    [v3 setLastMetricsUploadDate:v4];

    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    v7 = *(a1 + 81);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = *(*(a1 + 64) + 8);
    v12 = *(a1 + 82);
    v13 = *(v11 + 48);
    v16[0] = *(v11 + 32);
    v16[1] = v13;
    v16[2] = *(v11 + 64);
    v17 = *(v11 + 80);
    return [v8 _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:v6 requiresUnlimitedPower:v7 requiresActiveSession:v9 prioritizedEventStreamUID:v16 deliveryStreamContinuations:v12 scheduledActivity:v10 completion:v5];
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      LODWORD(v16[0]) = 136315138;
      *(v16 + 4) = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Ceasing to process events from all delivery streams.", v16, 0xCu);
    }

    return (*(*(a1 + 48) + 16))();
  }
}

void sub_100291450(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) markFailedWithType:6];
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v11 = 136315650;
      v12 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s SendInstrumentation(Generic) command %@ failed due to error: %@", &v11, 0x20u);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [*(a1 + 32) markFailedWithType:6];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 40);
        v11 = 136315650;
        v12 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
        v13 = 2112;
        v14 = v10;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s SendInstrumentation(Generic) command %@ failed due to response: %@", &v11, 0x20u);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100291620(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) markFailedWithType:6];
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v11 = 136315650;
      v12 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s SendInstrumentation command %@ failed due to error: %@", &v11, 0x20u);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [*(a1 + 32) markFailedWithType:6];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 40);
        v11 = 136315650;
        v12 = "[ADCommandCenter(Metrics) _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:prioritizedEventStreamUID:deliveryStreamContinuations:scheduledActivity:completion:]_block_invoke";
        v13 = 2112;
        v14 = v10;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s SendInstrumentation command %@ failed due to response: %@", &v11, 0x20u);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t sub_100291CC8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100291CE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 offlineIdentifier];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v22 = "[ADCommandCenter(Metrics) _metrics_sendNextOfflineMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:completion:]_block_invoke";
      v23 = 2112;
      v24 = v5;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Fetched next offline metrics. (offlineIdentifier = %@, metrics = %@)", buf, 0x20u);
    }

    v7 = [*(a1 + 32) _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100291F6C;
    block[3] = &unk_100519158;
    v19 = *(a1 + 56);
    block[4] = *(a1 + 32);
    v8 = v4;
    v20 = *(a1 + 64);
    v15 = v8;
    v16 = v5;
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v9 = v5;
    dispatch_async(v7, block);
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "[ADCommandCenter(Metrics) _metrics_sendNextOfflineMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s No next offline metrics was fetched.", buf, 0xCu);
    }

    v11 = [*(a1 + 32) _queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100292128;
    v12[3] = &unk_10051CF58;
    v13 = *(a1 + 48);
    dispatch_async(v11, v12);

    v9 = v13;
  }
}

void sub_100291F6C(uint64_t a1)
{
  v2 = +[NSProcessInfo processInfo];
  [v2 systemUptime];
  v4 = v3;
  v5 = *(a1 + 72);

  if (v4 >= v5)
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "[ADCommandCenter(Metrics) _metrics_sendNextOfflineMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Attempted to send offline metrics when time limit is reached.", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 80);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100292138;
    v10[3] = &unk_100519130;
    v10[4] = v6;
    v11 = *(a1 + 48);
    v14 = *(a1 + 72);
    v15 = *(a1 + 81);
    v16 = *(a1 + 80);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    [v6 _sendMetrics:v7 requiresActiveSession:v8 batch:0 completion:v10];
  }
}

id sub_100292138(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _offlineMetricsManager];
    [v3 deleteMetricsWithOfflineIdentifier:*(a1 + 40)];

    v4 = *(a1 + 32);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 73);
    v8 = *(a1 + 48);

    return [v4 _metrics_sendNextOfflineMetricsToServerUntilLimit:v6 requiresUnlimitedPower:v7 requiresActiveSession:v8 completion:v5];
  }

  else
  {
    v10 = *(*(a1 + 56) + 16);

    return v10();
  }
}

void sub_100292600(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = +[ADAnalyticsService sharedService];
    [v2 accessStoreUsingBlock:&stru_1005190C0];
  }

  v3 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  v4 = +[ADAnalyticsService sharedService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100292AB8;
  v9[3] = &unk_10051B420;
  v5 = v3;
  v10 = v5;
  [v4 accessStoreUsingBlock:v9];

  v6 = +[ADAnalyticsService sharedService];
  [v6 resumeEventsStaging];

  *(*(a1 + 32) + 744) = 0;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Done sending metrics to server.", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_1002927B0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s End sending offline metrics.", buf, 0xCu);
  }

  v3 = +[NSProcessInfo processInfo];
  [v3 systemUptime];
  v5 = v4;
  v6 = *(a1 + 48);

  v7 = AFSiriLogContextDaemon;
  if (v5 >= v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Skipped sending analytics event streams to server because time limit is reached.", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Begin sending analytics event streams...", buf, 0xCu);
    }

    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 57);
    v11 = *(a1 + 58);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1002929FC;
    v13[3] = &unk_10051CF58;
    v12 = *(a1 + 32);
    v14 = *(a1 + 40);
    *buf = xmmword_1003F0548;
    v16 = unk_1003F0558;
    v17 = xmmword_1003F0568;
    v18 = 100;
    [v12 _metrics_sendNextAnalyticsEventStreamToServerUntilLimit:v9 requiresUnlimitedPower:v10 requiresActiveSession:0 prioritizedEventStreamUID:buf deliveryStreamContinuations:v11 scheduledActivity:v13 completion:v8];
  }
}

uint64_t sub_1002929FC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s End sending analytics event streams.", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100292AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100292B64;
  v6[3] = &unk_10051C980;
  v7 = v4;
  v8 = v3;
  v5 = v3;
  [v5 purgeDeletedEventRecordsBeforeOrEqualToDate:v7 completion:v6];
}

void sub_100292B64(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]_block_invoke_4";
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to purge deleted analytics events with timestamp before [%@] due to error %@.", &v8, 0x20u);
    }
  }

  [*(a1 + 40) checkpointWithCompletion:&stru_1005190E0];
}

void sub_100292C58(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[ADCommandCenter(Metrics) _metrics_sendMetricsToServerUntilLimit:requiresUnlimitedPower:requiresActiveSession:purgesOversizedStorage:scheduledActivity:completion:]_block_invoke";
      v8 = 2112;
      v9 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed to checkpoint analytics store due to error %@.", &v6, 0x16u);
    }
  }
}

void sub_100292D78(id a1)
{
  v1 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[ADCommandCenter(Metrics) _metrics_recordCancellationMetrics]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s ", &v3, 0xCu);
  }

  v2 = +[AFAnalytics sharedAnalytics];
  [v2 logEventWithType:1701 context:0];
}

void sub_100292EF0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v8 = "[ADCommandCenter(Metrics) _metrics_recordFailureMetricsForError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v4 = +[AFAnalytics sharedAnalytics];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10029302C;
  v5[3] = &unk_10051DF78;
  v6 = *(a1 + 32);
  [v4 logEventWithType:1702 contextProvider:v5];
}

id sub_10029310C(uint64_t a1)
{
  if (AFIsInternalInstall() && (v2 = *(a1 + 32)) != 0)
  {
    v12[0] = @"bestTextInterpretation";
    v12[1] = @"resultId";
    v3 = *(a1 + 40);
    v13[0] = v2;
    v13[1] = v3;
    v4 = v13;
    v5 = v12;
    v6 = 2;
  }

  else
  {
    v7 = *(a1 + 40);
    v10 = @"resultId";
    v11 = v7;
    v4 = &v11;
    v5 = &v10;
    v6 = 1;
  }

  v8 = [NSDictionary dictionaryWithObjects:v4 forKeys:v5 count:v6];

  return v8;
}

__CFString *sub_10029381C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableString);
  v3 = [v1 utterances];
  v4 = [v3 firstObject];

  v28 = v1;
  v5 = [v1 phrases];
  v6 = 0;
  if ([v5 count])
  {
    v7 = 0;
    v29 = v5;
    v30 = v4;
    do
    {
      v8 = [v4 interpretationIndices];
      v9 = [v8 count];

      if (v7 >= v9)
      {
        break;
      }

      v10 = [v5 objectAtIndex:v7];
      v11 = [v4 interpretationIndices];
      v12 = [v11 objectAtIndex:v7];
      v13 = [v12 unsignedIntegerValue];

      v14 = [v10 interpretations];
      v15 = [v14 count];

      if (v13 >= v15)
      {

        v26 = &stru_10051F508;
        goto LABEL_19;
      }

      v32 = v10;
      v16 = [v10 interpretations];
      v17 = [v16 objectAtIndex:v13];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = v17;
      v18 = [v17 tokens];
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v34;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            v23 = v6;
            if (*v34 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v24 = *(*(&v33 + 1) + 8 * i);
            if (([v24 removeSpaceBefore] & 1) == 0 && (objc_msgSend(v23, "removeSpaceAfter") & 1) == 0 && v23)
            {
              [v2 appendString:@" "];
            }

            v25 = [v24 text];
            [v2 appendString:v25];
            v6 = v24;
          }

          v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v20);
      }

      ++v7;
      v5 = v29;
      v4 = v30;
    }

    while (v7 < [v29 count]);
  }

  v26 = v2;
LABEL_19:

  return v26;
}

double sub_100293B00(void *a1)
{
  v1 = [a1 phrases];
  v2 = [v1 firstObject];

  v3 = [v2 interpretations];
  v4 = [v3 firstObject];

  v5 = [v4 tokens];
  v6 = [v5 firstObject];

  [v6 silenceStartTime];
  v8 = v7;

  return v8;
}

void sub_1002949AC(id *a1, char a2)
{
  v4 = [a1[4] _queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100294A84;
  v5[3] = &unk_10051C6C8;
  v9 = a2;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  dispatch_async(v4, v5);
}

uint64_t sub_100294A84(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = AFSiriLogContextDaemon;
  v5 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v2 != 1)
  {
    if (v3)
    {
      if (!v5)
      {
        goto LABEL_15;
      }

      v8 = *(a1 + 40);
      v14 = 136315650;
      v15 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]_block_invoke";
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v8;
      v7 = "%s Failed to send metrics (%@:%@).";
      goto LABEL_8;
    }

    if (!v5)
    {
      goto LABEL_15;
    }

    v12 = *(a1 + 40);
    v14 = 136315394;
    v15 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]_block_invoke";
    v16 = 2112;
    v17 = v12;
    v7 = "%s Failed to send metrics (%@).";
LABEL_13:
    v9 = v4;
    v10 = 22;
    goto LABEL_14;
  }

  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_15;
    }

    v11 = *(a1 + 40);
    v14 = 136315394;
    v15 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]_block_invoke";
    v16 = 2112;
    v17 = v11;
    v7 = "%s Sent metrics (%@).";
    goto LABEL_13;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = *(a1 + 40);
  v14 = 136315650;
  v15 = "[ADCommandCenter(Metrics) _sendMetrics:requiresActiveSession:batch:completion:]_block_invoke_2";
  v16 = 2112;
  v17 = v3;
  v18 = 2112;
  v19 = v6;
  v7 = "%s Sent metrics (%@:%@).";
LABEL_8:
  v9 = v4;
  v10 = 32;
LABEL_14:
  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v7, &v14, v10);
LABEL_15:
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56));
  }

  return result;
}

void sub_100295058(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100295128;
  block[3] = &unk_10051E128;
  v10 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, block);
}

id sub_10029510C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 invokeWithSignal:1];
  }

  else
  {
    return [v2 invoke];
  }
}

void sub_100295128(uint64_t a1)
{
  if (*(a1 + 48) != 1)
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v6 = [v4 category];
      v7 = [*(a1 + 32) aceId];
      v8 = 136315650;
      v9 = "[ADCommandCenter(Metrics) _reallyCommitOrSaveMetrics:]_block_invoke_2";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed to send live metrics (%@:%@), adding to offline metrics manager.", &v8, 0x20u);
    }

    v3 = [*(a1 + 40) _offlineMetricsManager];
    [v3 insertMetrics:*(a1 + 32)];
  }
}

id sub_100295340(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 848) != 1 || *(result + 40) == 1)
  {
    *(v1 + 848) = 1;
    return [*(result + 4) _updateAutoDownloadedVoiceAssetsForOutputVoice];
  }

  return result;
}

void sub_100295694(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v3 localizedDescription];
      v8 = 136315650;
      v9 = "[ADCommandCenter(OutputVoice) _updateAutoDownloadedVoiceAssetsForOutputVoice]_block_invoke";
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Unable to subscribe voice %@, error: %@", &v8, 0x20u);
    }
  }
}

void sub_100295E3C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _ad_finalMetricsContextWithResponse:v8 error:v5];
  [*(a1 + 40) logEventWithType:507 context:v6 contextNoCopy:0];
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

void sub_100296400(uint64_t a1)
{
  v2 = [*(a1 + 32) speakableIdentifier];
  v3 = [*(*(a1 + 40) + 32) speakableIdentifier];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    [*(*(a1 + 40) + 8) cancel];
    v5 = *(a1 + 40);
    v6 = *(v5 + 8);
    *(v5 + 8) = 0;

    if (*(*(a1 + 40) + 64) == 3)
    {
      v7 = 0.4;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = *(a1 + 56);
    if (v8 <= v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (AFIsInternalInstall())
    {
      v10 = [*(a1 + 40) _remoteOSMService];
      v11 = @"Minimal Alert";
      if (v8 > v7)
      {
        v11 = @"Speak Verbosely";
      }

      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 speakableIdentifier];
      [v10 recordRecommendedAction:v13 forSpeakableId:v14 withModelIdentifier:*(a1 + 48)];
    }

    if ([*(a1 + 48) isEqualToString:*(*(a1 + 40) + 56)])
    {
      v15 = *(a1 + 40);

      [v15 _finishRunningCurrentSpeakableWithResult:v9 error:0];
    }
  }
}

void sub_1002965C4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[ADOpportuneSpeakingModule _remoteOSMService]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Failed to communicate with Opportune Speaking Model Service: %@", &v4, 0x16u);
    }
  }
}

void sub_100296808(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100296838(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADOpportuneSpeakingModule _connectionToOSMService]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Connection to Opportune Speaking Model Service interrupted", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetConnectionToOSMService];
}

void sub_1002968FC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADOpportuneSpeakingModule _connectionToOSMService]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Connection to Opportune Speaking Model Service invalidated", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetConnectionToOSMService];
}

void sub_100296F60(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = *(v7 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002971B8;
  block[3] = &unk_1005194E0;
  v14 = v5;
  v15 = v7;
  v10 = a1[5];
  v9 = a1[6];
  v16 = v6;
  v18 = v9;
  v17 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v8, block);
}

void sub_100297044(void *a1)
{
  v2 = [[ADOpportuneSpeakingVoiceActivityModel alloc] initWithQueue:*(a1[4] + 16) stateManager:*(a1[4] + 104)];
  v3 = *(a1[4] + 72);
  v4 = [(ADOpportuneSpeakingVoiceActivityModel *)v2 modelIdentifier];
  [v3 setObject:v2 forKey:v4];

  v5 = *(a1[4] + 80);
  v6 = [(ADOpportuneSpeakingVoiceActivityModel *)v2 modelIdentifier];
  v7 = [NSNumber numberWithInteger:a1[6]];
  [v5 setObject:v6 forKey:v7];

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "[ADOpportuneSpeakingModule _loadModelWithType:completion:]_block_invoke";
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Loaded model into assistantd: %@", &v10, 0x16u);
  }

  v9 = a1[5];
  if (v9)
  {
    (*(v9 + 16))();
  }
}

uint64_t sub_1002971B8(void *a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = a1[4];
    v8 = 136315394;
    v9 = "[ADOpportuneSpeakingModule _loadModelWithType:completion:]_block_invoke_2";
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Loaded model on remote: %@", &v8, 0x16u);
  }

  [*(a1[5] + 72) setObject:a1[4] forKey:a1[6]];
  v3 = a1[6];
  v4 = *(a1[5] + 80);
  v5 = [NSNumber numberWithInteger:a1[8]];
  [v4 setObject:v3 forKey:v5];

  result = a1[7];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100297628(uint64_t a1)
{
  v2 = _AFPreferencesOpportuneSpeakingModelUsed();
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *(*(a1 + 32) + 64) = v3;
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  v6 = [NSNumber numberWithInteger:*(v4 + 64)];
  v7 = [v5 objectForKey:v6];
  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  *(v8 + 56) = v7;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [*(*(a1 + 32) + 72) allValues];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(a1 + 40) + 16))();
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

id sub_100297A98(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = objc_retainBlock(*(a1 + 48));
  v4 = [*(a1 + 40) speakableIdentifier];
  [v2 setObject:v3 forKey:v4];

  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  v5 = *(a1 + 32);

  return [v5 _processEnqueuedSpeakables];
}

id sub_100297D5C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = 136315394;
    v8 = "[ADOpportuneSpeakingModule _processEnqueuedSpeakables]_block_invoke";
    v9 = 2048;
    v10 = v6;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Timeout: could not execute opportune speaking models in time (%f sec)", &v7, 0x16u);
  }

  [*(*(a1 + 32) + 8) cancel];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  return [*(a1 + 32) _finishRunningCurrentSpeakableWithResult:0 error:0];
}

void sub_100297E48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 32))
  {
    [v3 startWithDelegate:?];
    [v4 setSpeakable:*(*(a1 + 32) + 32)];
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      v7 = 136315394;
      v8 = "[ADOpportuneSpeakingModule _processEnqueuedSpeakables]_block_invoke";
      v9 = 2048;
      v10 = v6;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s _currentSpeakable is nil while executing opportune speaking models, this is likely cause by timeout (length: %f sec)", &v7, 0x16u);
    }
  }
}

void sub_100298060(void *a1, int a2, int a3)
{
  v4 = a1[6];
  if (v4 == 1)
  {
    if (!a2)
    {
      v4 = 2;
    }

    if (a3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = [*(a1[4] + 72) objectForKey:*(a1[4] + 56)];
    [v7 recordFeedbackOfType:v6 forSpeakable:a1[5]];
  }
}

void sub_1002983B0(id a1)
{
  v1 = [[ADOpportuneSpeakingModule alloc] _init];
  v2 = qword_1005907A0;
  qword_1005907A0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1002983F0(id a1)
{
  v1 = qword_1005907A8;
  qword_1005907A8 = &off_1005342C0;
}

id sub_100298408(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[AFVoiceInfo alloc] initWithDictionaryRepresentation:v3];
  }

  else
  {
    v5 = 0;
  }

  if (([v5 isValidForSiriSessionLanguage:v4] & 1) == 0)
  {

    v5 = 0;
  }

  return v5;
}

void *sub_1002984B0(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

id sub_100298508(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[AFVoiceInfo alloc] initWithDictionaryRepresentation:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100298580(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [AFVoiceInfo alloc];
    v3 = [v1 languageCode];
    v4 = [v1 gender];
    v5 = [v1 isCustom];
    v6 = [v1 name];
    v7 = [v1 footprint];

    v8 = [v2 initWithLanguageCode:v3 gender:v4 isCustom:v5 name:v6 footprint:v7 contentVersion:0 masteredVersion:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100298670(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3 && v4)
  {
    v7 = sub_100298854(v4);
    v8 = [NSSet setWithObjects:@"da-DK", @"en-IE", @"en-ZA", @"fi-FI", @"ko-KR", @"nb-NO", @"tr-TR", @"zh-HK", @"zh-TW", 0];
    v9 = [NSSet setWithObjects:@"en-AU", @"en-US", @"en-CA", @"en-GB", 0];
    v10 = [v3 languageCode];
    if ([v10 isEqualToString:@"en-IN"] & 1) != 0 || (objc_msgSend(v8, "containsObject:", v7))
    {
      goto LABEL_14;
    }

    if ([v9 containsObject:v7])
    {
      if ([v10 isEqualToString:@"en-ZA"])
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else if (![v7 isEqualToString:@"en-ZA"])
    {
      if ([v7 isEqualToString:@"en-IE"] && !objc_msgSend(v10, "isEqualToString:", @"en-IE"))
      {
        goto LABEL_14;
      }

LABEL_13:
      v6 = sub_1002988D0(v3, v5);
      goto LABEL_14;
    }

    if ([v10 isEqualToString:@"en-IE"])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:

  return v6;
}

id sub_100298854(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [&off_1005342E8 objectForKey:v1];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = v1;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1002988D0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3 && v4)
  {
    v7 = [v3 languageCode];
    v8 = [v7 isEqualToString:@"en-US"];

    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = +[NSMutableSet set];
    v10 = +[AFLocalization sharedInstance];
    v11 = [v10 voiceNamesForOutputLanguageCode:@"en-US" gender:1];
    v12 = [v11 firstObject];

    v13 = +[AFLocalization sharedInstance];
    v14 = [v13 voiceNamesForOutputLanguageCode:@"en-US" gender:2];
    v15 = [v14 firstObject];

    if (v12)
    {
      [v9 addObject:v12];
    }

    if (v15)
    {
      [v9 addObject:v15];
    }

    v16 = [v3 name];
    v17 = [v9 containsObject:v16];

    if (!v17)
    {
      v6 = 1;
    }

    else
    {
LABEL_9:
      v6 = sub_100298A54(v3, v5);
    }
  }

  return v6;
}

uint64_t sub_100298A54(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3 && v4)
  {
    v7 = [v3 languageCode];
    v8 = [v7 isEqualToString:@"fi-FI"];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_100298AE4(v3, v5);
    }
  }

  return v6;
}

uint64_t sub_100298AE4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3)
  {
    if (v4)
    {
      v7 = [v3 languageCode];
      v8 = [v7 isEqualToString:@"en-US"];

      if (!v8 || (+[NSMutableSet set](NSMutableSet, "set"), v9 = objc_claimAutoreleasedReturnValue(), +[AFLocalization sharedInstance](AFLocalization, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), v6 = 1, [v10 voiceNamesForOutputLanguageCode:@"en-US" gender:1], v11 = objc_claimAutoreleasedReturnValue(), v23[0] = _NSConcreteStackBlock, v23[1] = 3221225472, v23[2] = sub_100298CF4, v23[3] = &unk_100519570, v12 = v9, v24 = v12, objc_msgSend(v11, "enumerateObjectsUsingBlock:", v23), v11, v10, +[AFLocalization sharedInstance](AFLocalization, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "voiceNamesForOutputLanguageCode:gender:", @"en-US", 2), v14 = objc_claimAutoreleasedReturnValue(), v18 = _NSConcreteStackBlock, v19 = 3221225472, v20 = sub_100298D34, v21 = &unk_100519570, v22 = v12, v15 = v12, objc_msgSend(v14, "enumerateObjectsUsingBlock:", &v18), v14, v13, objc_msgSend(v3, "name", v18, v19, v20, v21), v16 = objc_claimAutoreleasedReturnValue(), LODWORD(v14) = objc_msgSend(v15, "containsObject:", v16), v16, v22, v24, v15, v14))
      {
        v6 = sub_100298D74(v3, v5);
      }
    }
  }

  return v6;
}

id sub_100298CF4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) addObject:a2];
  if (a3 == 1)
  {
    *a4 = 1;
  }

  return result;
}

id sub_100298D34(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) addObject:a2];
  if (a3 == 1)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_100298D74(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3 && v4)
  {
    v7 = [v3 languageCode];
    v8 = [v7 isEqualToString:@"ja-JP"];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_100298E04(v3, v5);
    }
  }

  return v6;
}

uint64_t sub_100298E04(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3 && v4)
  {
    v7 = [NSSet setWithObjects:@"ar-SA", @"he-IL", 0];
    v8 = [v3 languageCode];
    v9 = [v7 containsObject:v8];

    if (v9)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_100298ED0(v3, v5);
    }
  }

  return v6;
}

uint64_t sub_100298ED0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3 && v4)
  {
    v7 = [v3 languageCode];
    v8 = [v7 isEqualToString:@"de-DE"];

    if (v8)
    {
      v9 = +[NSMutableSet set];
      v10 = +[AFLocalization sharedInstance];
      v6 = 1;
      v11 = [v10 voiceNamesForOutputLanguageCode:@"de-DE" gender:1];
      v12 = [v11 firstObject];

      [v9 addObject:v12];
      v13 = +[AFLocalization sharedInstance];
      v14 = [v13 voiceNamesForOutputLanguageCode:@"de-DE" gender:2];
      v15 = [v14 firstObject];

      [v9 addObject:v15];
      v16 = [v3 name];
      LOBYTE(v14) = [v9 containsObject:v16];

      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v17 = [v3 languageCode];
    v18 = [v17 isEqualToString:@"en-GB"];

    if (v18)
    {
      v19 = +[NSMutableSet set];
      v20 = +[AFLocalization sharedInstance];
      v21 = [v20 voiceNamesForOutputLanguageCode:@"en-GB" gender:1];
      v22 = [v21 firstObject];

      [v19 addObject:v22];
      v23 = +[AFLocalization sharedInstance];
      v24 = [v23 voiceNamesForOutputLanguageCode:@"en-GB" gender:2];
      v25 = [v24 firstObject];

      [v19 addObject:v25];
      v26 = [v3 name];
      LOBYTE(v24) = [v19 containsObject:v26];

      v6 = 1;
      if ((v24 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v27 = [v3 languageCode];
    v28 = [v27 isEqualToString:@"th-TH"];

    if ((v28 & 1) == 0)
    {
LABEL_11:
      v6 = sub_100299194(v3, v5);
      goto LABEL_12;
    }

    v6 = 1;
  }

LABEL_12:

  return v6;
}

uint64_t sub_100299194(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3 && v4)
  {
    v7 = [v3 languageCode];
    v8 = [v7 isEqualToString:@"ms-MY"];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_100299224(v3, v5);
    }
  }

  return v6;
}

uint64_t sub_100299224(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3)
  {
    if (v4)
    {
      v7 = [v3 languageCode];
      v8 = [v7 isEqualToString:@"zh-CN"];

      if (!v8 || (+[NSMutableSet set](NSMutableSet, "set"), v9 = objc_claimAutoreleasedReturnValue(), +[AFLocalization sharedInstance](AFLocalization, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), [v10 voiceNamesForOutputLanguageCode:@"zh-CN" gender:2], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "firstObject"), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, objc_msgSend(v9, "addObject:", v12), +[AFLocalization sharedInstance](AFLocalization, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), v6 = 1, objc_msgSend(v13, "voiceNamesForOutputLanguageCode:gender:", @"zh-CN", 1), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, objc_msgSend(v9, "addObject:", v15), objc_msgSend(v3, "name"), v16 = objc_claimAutoreleasedReturnValue(), LODWORD(v13) = objc_msgSend(v9, "containsObject:", v16), v16, v15, v12, v9, v13))
      {
        v6 = sub_10029939C(v3, v5);
      }
    }
  }

  return v6;
}

uint64_t sub_10029939C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 1;
  if (v3 && a2)
  {
    v6 = [v3 languageCode];
    if ([v6 isEqualToString:@"vi-VN"])
    {
      v5 = 1;
LABEL_16:

      goto LABEL_17;
    }

    v7 = [v4 languageCode];
    v8 = [v7 isEqualToString:@"vi-VN-u-sd-vnct"];

    if (v8)
    {
      v5 = 1;
      goto LABEL_17;
    }

    v9 = [v4 languageCode];
    v10 = [v9 isEqualToString:@"fr-FR"];

    if (v10)
    {
      v11 = +[NSMutableSet set];
      v12 = +[AFLocalization sharedInstance];
      v5 = 1;
      v13 = [v12 voiceNamesForOutputLanguageCode:@"fr-FR" gender:1];
      v14 = [v13 firstObject];

      [v11 addObject:v14];
      v15 = +[AFLocalization sharedInstance];
      v16 = [v15 voiceNamesForOutputLanguageCode:@"fr-FR" gender:2];
      v17 = [v16 firstObject];

      [v11 addObject:v17];
      v18 = [v4 name];
      LOBYTE(v16) = [v11 containsObject:v18];

      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v19 = [v4 languageCode];
    v20 = [v19 isEqualToString:@"it-IT"];

    if (v20)
    {
      v21 = +[NSMutableSet set];
      v22 = +[AFLocalization sharedInstance];
      v23 = [v22 voiceNamesForOutputLanguageCode:@"it-IT" gender:2];
      v24 = [v23 firstObject];

      [v21 addObject:v24];
      v25 = +[AFLocalization sharedInstance];
      v26 = [v25 voiceNamesForOutputLanguageCode:@"it-IT" gender:1];
      v27 = [v26 firstObject];

      [v21 addObject:v27];
      v28 = [v4 name];
      LOBYTE(v26) = [v21 containsObject:v28];

      v5 = 1;
      if ((v26 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v29 = [v4 languageCode];
    v30 = [v29 isEqualToString:@"en-AU"];

    if (!v30 || (+[NSMutableSet set](NSMutableSet, "set"), v31 = objc_claimAutoreleasedReturnValue(), +[AFLocalization sharedInstance](AFLocalization, "sharedInstance"), v32 = objc_claimAutoreleasedReturnValue(), [v32 voiceNamesForOutputLanguageCode:@"en-AU" gender:2], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "firstObject"), v34 = objc_claimAutoreleasedReturnValue(), v33, v32, objc_msgSend(v31, "addObject:", v34), +[AFLocalization sharedInstance](AFLocalization, "sharedInstance"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "voiceNamesForOutputLanguageCode:gender:", @"en-AU", 1), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "firstObject"), v37 = objc_claimAutoreleasedReturnValue(), v36, v35, objc_msgSend(v31, "addObject:", v37), objc_msgSend(v4, "name"), v38 = objc_claimAutoreleasedReturnValue(), LODWORD(v36) = objc_msgSend(v31, "containsObject:", v38), v38, v37, v34, v31, v5 = 1, v36))
    {
LABEL_15:
      v6 = [v4 languageCode];
      v5 = [v6 isEqualToString:@"pt-PT"];
      goto LABEL_16;
    }
  }

LABEL_17:

  return v5;
}

uint64_t sub_100299798(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3 && v4)
  {
    v7 = [NSSet setWithObjects:@"fi-FI", @"ko-KR", @"tr-TR", 0];
    v8 = [v3 languageCode];
    v9 = [v8 isEqualToString:@"en-IN"];

    if (v9 & 1) != 0 || ([v3 languageCode], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "containsObject:", v10), v10, (v11))
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1002988D0(v3, v5);
    }
  }

  return v6;
}

uint64_t sub_100299898(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 1;
  if (v3 && v4)
  {
    v7 = [NSSet setWithObjects:@"fi-FI", @"ko-KR", @"tr-TR", 0];
    v8 = [v3 languageCode];
    v9 = [v7 containsObject:v8];

    if (v9)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1002988D0(v3, v5);
    }
  }

  return v6;
}

uint64_t sub_100299970(void *a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 1;
  }

  v2 = [a1 languageCode];
  v3 = [v2 isEqualToString:@"pt-PT"];

  return v3;
}

id sub_1002999C0(void *a1)
{
  v1 = sub_100298854(a1);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = [NSSet setWithObjects:@"ar-SA", @"en-GB", @"fr-FR", @"nl-NL", 0];
    if ([v4 containsObject:v3])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v6 = [[AFVoiceInfo alloc] initWithLanguageCode:v3 gender:v5 isCustom:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100299AA0(void *a1)
{
  v1 = sub_1002999C0(a1);
  v2 = [v1 gender];
  v3 = [v1 isCustom];
  v4 = +[AFLocalization sharedInstance];
  v5 = [v1 languageCode];
  v6 = [v4 voiceNamesForOutputLanguageCode:v5 gender:v2];
  v7 = [v6 firstObject];

  v8 = [v1 languageCode];
  LODWORD(v5) = [v8 isEqualToString:@"fi-FI"];

  if (v5)
  {

    v3 = 0;
    v7 = @"satu";
    v2 = 2;
  }

  v9 = [AFVoiceInfo alloc];
  v10 = [v1 languageCode];
  v11 = [v9 initWithLanguageCode:v10 gender:v2 isCustom:v3 name:v7 footprint:0 contentVersion:0 masteredVersion:0];

  return v11;
}

id sub_100299BF4(void *a1)
{
  v1 = sub_100299AA0(a1);
  v2 = [v1 gender];
  v3 = +[AFLocalization sharedInstance];
  v4 = [v1 languageCode];
  v5 = [v3 voiceNamesForOutputLanguageCode:v4 gender:v2];
  v6 = [v5 firstObject];

  v7 = [v1 languageCode];
  LODWORD(v4) = [v7 isEqualToString:@"ja-JP"];

  if (v4)
  {

    v8 = v2 == 2;
    if (v2 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    if (v8)
    {
      v6 = @"oren";
    }

    else
    {
      v6 = @"hattori";
    }
  }

  v9 = [AFVoiceInfo alloc];
  v10 = [v1 languageCode];
  v11 = [v9 initWithLanguageCode:v10 gender:v2 isCustom:objc_msgSend(v1 name:"isCustom") footprint:v6 contentVersion:0 masteredVersion:{0, 0}];

  return v11;
}

id sub_100299D4C(void *a1)
{
  v1 = sub_100299BF4(a1);
  v2 = [v1 gender];
  v3 = [v1 isCustom];
  v4 = +[AFLocalization sharedInstance];
  v5 = [v1 languageCode];
  v6 = [v4 voiceNamesForOutputLanguageCode:v5 gender:v2];
  v7 = [v6 firstObject];

  v8 = [v1 languageCode];
  LOBYTE(v5) = [v8 isEqualToString:@"ar-SA"];

  if (v5)
  {
    v9 = @"maged";
    v2 = 1;
  }

  else
  {
    v10 = [v1 languageCode];
    v11 = [v10 isEqualToString:@"he-IL"];

    if (!v11)
    {
      goto LABEL_6;
    }

    v9 = @"carmit";
    v2 = 2;
  }

  v3 = 0;
  v7 = v9;
LABEL_6:
  v12 = [AFVoiceInfo alloc];
  v13 = [v1 languageCode];
  v14 = [v12 initWithLanguageCode:v13 gender:v2 isCustom:v3 name:v7 footprint:0 contentVersion:0 masteredVersion:0];

  return v14;
}

id sub_100299EDC(void *a1)
{
  v1 = sub_100299D4C(a1);
  v2 = [v1 gender];
  v3 = [v1 isCustom];
  v4 = +[AFLocalization sharedInstance];
  v5 = [v1 languageCode];
  v6 = [v4 voiceNamesForOutputLanguageCode:v5 gender:v2];
  v7 = [v6 firstObject];

  v8 = [v1 languageCode];
  LODWORD(v5) = [v8 isEqualToString:@"de-DE"];

  if (v5)
  {

    v9 = v2 == 1;
    if (v2 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    v10 = @"helena";
    v11 = @"martin";
LABEL_11:
    if (v9)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    goto LABEL_14;
  }

  v12 = [v1 languageCode];
  v13 = [v12 isEqualToString:@"en-GB"];

  if (v13)
  {

    v9 = v2 == 2;
    if (v2 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    v10 = @"arthur";
    v11 = @"martha";
    goto LABEL_11;
  }

  v18 = [v1 languageCode];
  v19 = [v18 isEqualToString:@"th-TH"];

  if (v19)
  {

    v3 = 0;
    v7 = @"kanya";
    v2 = 2;
  }

LABEL_14:
  v14 = [AFVoiceInfo alloc];
  v15 = [v1 languageCode];
  v16 = [v14 initWithLanguageCode:v15 gender:v2 isCustom:v3 name:v7 footprint:0 contentVersion:0 masteredVersion:0];

  return v16;
}

id sub_10029A0CC(void *a1)
{
  v1 = sub_100299EDC(a1);
  v2 = [v1 gender];
  v3 = [v1 isCustom];
  v4 = +[AFLocalization sharedInstance];
  v5 = [v1 languageCode];
  v6 = [v4 voiceNamesForOutputLanguageCode:v5 gender:v2];
  v7 = [v6 firstObject];

  v8 = [v1 languageCode];
  LODWORD(v5) = [v8 isEqualToString:@"ms-MY"];

  if (v5)
  {

    v3 = 0;
    v7 = @"amira";
    v2 = 2;
  }

  v9 = [AFVoiceInfo alloc];
  v10 = [v1 languageCode];
  v11 = [v9 initWithLanguageCode:v10 gender:v2 isCustom:v3 name:v7 footprint:0 contentVersion:0 masteredVersion:0];

  return v11;
}

id sub_10029A220(void *a1)
{
  v1 = sub_10029A0CC(a1);
  v2 = [v1 gender];
  v3 = [v1 isCustom];
  v4 = +[AFLocalization sharedInstance];
  v5 = [v1 languageCode];
  v6 = [v4 voiceNamesForOutputLanguageCode:v5 gender:v2];
  v7 = [v6 firstObject];

  v8 = [v1 languageCode];
  LODWORD(v5) = [v8 isEqualToString:@"zh-CN"];

  if (v5)
  {

    v9 = v2 == 1;
    if (v2 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    if (v9)
    {
      v7 = @"li-mu";
    }

    else
    {
      v7 = @"linfei";
    }
  }

  v10 = [AFVoiceInfo alloc];
  v11 = [v1 languageCode];
  v12 = [v10 initWithLanguageCode:v11 gender:v2 isCustom:v3 name:v7 footprint:0 contentVersion:0 masteredVersion:0];

  return v12;
}

id sub_10029A384(void *a1)
{
  v1 = sub_10029A220(a1);
  v2 = [v1 gender];
  v3 = [v1 isCustom];
  v4 = +[AFLocalization sharedInstance];
  v5 = [v1 languageCode];
  v6 = [v4 voiceNamesForOutputLanguageCode:v5 gender:v2];
  v7 = [v6 firstObject];

  v8 = [v1 languageCode];
  v9 = [v1 languageCode];
  if ([v9 isEqualToString:@"vi-VN"])
  {

LABEL_4:
    v3 = 0;
    v12 = @"vi-VN";
    v2 = 2;
    v7 = @"linh";
    goto LABEL_23;
  }

  v10 = [v1 languageCode];
  v11 = [v10 isEqualToString:@"vi-VN-u-sd-vnct"];

  if (v11)
  {
    goto LABEL_4;
  }

  v13 = [v1 languageCode];
  v14 = [v13 isEqualToString:@"fr-FR"];

  v15 = [v1 languageCode];
  v12 = v15;
  if (v14)
  {

    v16 = v2 == 1;
    if (v2 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    v17 = @"marie";
    v18 = @"daniel";
  }

  else
  {
    v19 = [(__CFString *)v15 isEqualToString:@"it-IT"];

    v20 = [v1 languageCode];
    v12 = v20;
    if (v19)
    {

      v16 = v2 == 2;
      if (v2 == 2)
      {
        v2 = 2;
      }

      else
      {
        v2 = 1;
      }

      v17 = @"paolo";
      v18 = @"francesca";
    }

    else
    {
      v21 = [(__CFString *)v20 isEqualToString:@"en-AU"];

      if (!v21)
      {
        v12 = v8;
        goto LABEL_23;
      }

      v12 = [v1 languageCode];

      v16 = v2 == 2;
      if (v2 == 2)
      {
        v2 = 2;
      }

      else
      {
        v2 = 1;
      }

      v17 = @"gordon";
      v18 = @"catherine";
    }
  }

  if (v16)
  {
    v7 = v18;
  }

  else
  {
    v7 = v17;
  }

LABEL_23:
  v22 = [[AFVoiceInfo alloc] initWithLanguageCode:v12 gender:v2 isCustom:v3 name:v7 footprint:0 contentVersion:0 masteredVersion:0];

  return v22;
}

id sub_10029A61C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = kAFOutputVoice;
  v7 = a1;
  if ([a3 isEqualToString:v6])
  {
    v8 = sub_100298508(v7);

    v9 = sub_100298508(v5);
    v10 = [v8 languageCode];
    v11 = [v9 languageCode];
    if ([v10 isEqualToString:v11])
    {
      v12 = [v8 gender];
      v13 = v12 == [v9 gender];
    }

    else
    {
      v13 = 0;
    }

    v15 = [v8 name];
    if (v15)
    {
      v16 = v15;
      v17 = [v9 name];

      v14 = ((v17 == 0) & v13);
      if (v17 && v13)
      {
        v18 = [v8 name];
        v19 = [v9 name];
        v14 = [v18 isEqualToString:v19];
      }
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = [v7 isEqual:v5];
    v8 = v7;
  }

  return v14;
}

void sub_10029A7B0(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_10029A974(a2);
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "_ADCloudKitKeyValueStoreSaveValueForKey";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Saving key to local prefs: %@", &v10, 0x16u);
  }

  if ([v4 isEqualToString:kAFSessionLanguage])
  {
    v6 = +[ADCommandCenter sharedCommandCenter];
    [v6 setQueuedLanguageCode:v3];

    v7 = +[AFAnalytics sharedAnalytics];
    [v7 logEventWithType:3201 context:&off_100534310];
  }

  else
  {
    if (![v4 isEqualToString:kAFOutputVoice])
    {
      _AFBackedUpPreferencesSetValueForKey();
      goto LABEL_9;
    }

    v7 = sub_100298508(v3);
    v8 = +[ADCommandCenter sharedCommandCenter];
    [v8 setQueuedOutputVoice:v7];

    v9 = +[AFAnalytics sharedAnalytics];
    [v9 logEventWithType:3202 context:&off_100534338];
  }

LABEL_9:
}

void *sub_10029A974(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Output Voice v14"])
  {
    v2 = kAFOutputVoice;
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v2;
}

id sub_10029A9C8()
{
  if ((AFIsHorseman() & 1) != 0 || AFIsATV())
  {
    v2 = 0;
LABEL_4:
    [NSSet setWithObjects:@"User Identifier", @"Logging User Identifier", v2, v3, v4, v5, v6, v7];
    goto LABEL_5;
  }

  if (AFIsVision())
  {
    v3 = kAFSpokenNotificationSkipTriggerlessReplyConfirmation;
    v4 = 0;
    v2 = kAFSpokenNotificationTemporaryMuteEndDateKey;
    goto LABEL_4;
  }

  [NSSet setWithObjects:kAFOutputVoice, kAFSessionLanguage, @"User Identifier", @"Logging User Identifier", kAFSpokenNotificationTemporaryMuteEndDateKey, kAFSpokenNotificationSkipTriggerlessReplyConfirmation, @"MultiUser VoiceIdentification Enabled", 0];
  v0 = LABEL_5:;

  return v0;
}

id sub_10029AAC4()
{
  v0 = _AFBackedUpPreferencesKeyList();
  v1 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v0 count]);
  v2 = sub_10029A9C8();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = v0;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v2 containsObject:v8])
        {
          [v1 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v9 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v1;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        sub_10029A974(v15);
        v16 = _AFBackedUpPreferencesValueForKey();
        if (v16)
        {
          [v9 setObject:v16 forKey:{v15, v18}];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  return v9;
}

id sub_10029AD04()
{
  v0 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v1 = sub_10029A9C8();
  if ([v1 containsObject:@"User Identifier"])
  {
    v2 = +[ADPreferences sharedPreferences];
    v3 = [v2 sharedUserIdentifier];

    if (v3)
    {
      [v0 setObject:v3 forKey:@"User Identifier"];
    }
  }

  if ([v1 containsObject:@"Logging User Identifier"])
  {
    v4 = +[ADPreferences sharedPreferences];
    v5 = [v4 loggingSharedUserIdentifier];

    if (v5)
    {
      [v0 setObject:v5 forKey:@"Logging User Identifier"];
    }
  }

  return v0;
}

id sub_10029AE0C()
{
  v0 = objc_opt_new();
  v1 = sub_10029A9C8();
  sub_10029A974(kAFModificationDates);
  v2 = _AFBackedUpPreferencesValueForKey();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v1 containsObject:{v8, v11}])
          {
            v9 = [v3 objectForKey:v8];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v0 setObject:v9 forKey:v8];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  return v0;
}

uint64_t sub_10029B694(void *a1)
{
  v2 = a1[4];
  if ((*(v2 + 32) & 9) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 8));
    [WeakRetained sensitiveCondition:2 startedAt:a1[6]];
  }

  result = a1[5];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_10029BE9C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 32);
  v4 = a2;
  [v4 setCallState:{objc_msgSend(v3, "callState")}];
  [v4 setOnSpeaker:*(a1 + 40)];
  [v4 setIsDropInCall:{objc_msgSend(*(*(a1 + 32) + 32), "isDropInCall")}];
}

void sub_10029C10C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setCallState:v3];
  [v4 setOnSpeaker:{objc_msgSend(*(*(a1 + 32) + 32), "onSpeaker")}];
  [v4 setIsDropInCall:{objc_msgSend(*(*(a1 + 32) + 32), "isDropInCall")}];
}

void sub_10029C18C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setCallState:v3];
  [v4 setOnSpeaker:{objc_msgSend(*(*(a1 + 32) + 32), "onSpeaker")}];
  [v4 setIsDropInCall:*(a1 + 48)];
}

void sub_10029C33C(id a1)
{
  v1 = objc_alloc_init(AFHomeAnnouncementObserver);
  v2 = qword_1005907C0;
  qword_1005907C0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10029C4E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADPostSiriEngagementService runMaintenanceWorkWithCompletion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ActivityDispatcher completion Error status: %@ (null is good)", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t sub_10029C664(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10029CA5C(uint64_t a1, char a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v9, v7);
    }
  }

  else
  {
    [*(a1 + 32) _amosSADomainObjectPunchOut:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_10029CCC4(uint64_t a1, char a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v9, v7);
    }
  }

  else
  {
    [*(a1 + 32) _amosSADomainObjectCommit:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_10029D08C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    if ([*(a1 + 32) isAMOSIdentifier])
    {
      v7 = *(a1 + 32);
      v8 = [v5 identifier];
      LODWORD(v7) = [v7 isEqual:v8];

      if (v7)
      {
        v9 = [*(a1 + 32) absoluteString];
        v10 = [v9 stringByAppendingString:@"?committed=yes"];

        v11 = [[NSURL alloc] initWithString:v10];
        [v5 setIdentifier:v11];
        [*(a1 + 40) setIdentifier:v11];
        v12 = *(a1 + 48);
        v13 = [*(a1 + 40) dictionary];
        v14 = [v11 absoluteString];
        [v12 setDomainObject:v13 forKey:v14];

        v15 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 40);
          v20 = 136315394;
          v21 = "[ADCommandCenter(AMOS) _amosSADomainObjectCommit:completion:]_block_invoke";
          v22 = 2112;
          v23 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Keeping committed object around %@", &v20, 0x16u);
        }
      }
    }

    [*(a1 + 48) setDomainObject:0 forKey:*(a1 + 56)];
    v6 = objc_alloc_init(SADomainObjectCommitCompleted);
    v17 = [v5 identifier];
    [v6 setIdentifier:v17];

    v18 = [*(a1 + 64) aceId];
    [v6 setRefId:v18];
  }

  v19 = *(a1 + 72);
  if (v19)
  {
    (*(v19 + 16))(v19, v6, 0);
  }
}

void sub_10029D38C(uint64_t a1, char a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v9, v7);
    }
  }

  else
  {
    [*(a1 + 32) _amosSADomainObjectDelete:*(a1 + 40) completion:*(a1 + 48)];
  }
}

uint64_t sub_10029D6A0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = [[SACommandFailed alloc] initWithReason:@"Failed to receive object from service"];
  }

  else
  {
    v4 = objc_alloc_init(SADomainObjectDeleteCompleted);
  }

  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    v8 = v5;
    v6 = (*(v6 + 16))();
    v5 = v8;
  }

  return _objc_release_x1(v6, v5);
}

void sub_10029D7F0(uint64_t a1, char a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v9, v7);
    }
  }

  else
  {
    [*(a1 + 32) _amosSADomainObjectCancel:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_10029D9C8(uint64_t a1, char a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v9, v7);
    }
  }

  else
  {
    [*(a1 + 32) _amosSADomainObjectUpdate:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_10029DDF8(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "[ADCommandCenter(AMOS) _updateObjectFromService:sadIdentifier:completion:]_block_invoke";
      v26 = 1026;
      LODWORD(v27) = a3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to retrieve object from service. status: %{public}d", &v24, 0x12u);
    }

    v8 = [[SACommandFailed alloc] initWithReason:@"Failed to retrieve object from service"];
  }

  else
  {
    v9 = [v5 objects];
    if ([v9 count] == 1)
    {
      v10 = [v9 lastObject];
      v11 = [v10 identifier];
      v12 = [v11 absoluteString];

      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v24 = 136315394;
        v25 = "[ADCommandCenter(AMOS) _updateObjectFromService:sadIdentifier:completion:]_block_invoke";
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Successfully retrieved object from service %@", &v24, 0x16u);
      }

      v14 = [*(a1 + 32) setFields];
      v15 = [*(a1 + 32) addFields];
      v16 = [*(a1 + 32) removeFields];
      [v10 updateUsingSet:v14 add:v15 remove:v16];

      v17 = sub_100214B58();
      [v10 setIdentifier:v17];
      v18 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v24 = 136315394;
        v25 = "[ADCommandCenter(AMOS) _updateObjectFromService:sadIdentifier:completion:]_block_invoke";
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Updated retrieved object to %@", &v24, 0x16u);
      }

      v19 = [*(a1 + 40) _domainObjectCache];
      v20 = [v10 dictionary];
      v21 = [v17 absoluteString];
      [v19 setDomainObject:v20 withOldId:v12 forKey:v21];

      v8 = objc_alloc_init(SADomainObjectUpdateCompleted);
      [v8 setIdentifier:v17];
    }

    else
    {
      v22 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v24 = 136315394;
        v25 = "[ADCommandCenter(AMOS) _updateObjectFromService:sadIdentifier:completion:]_block_invoke";
        v26 = 2112;
        v27 = v9;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Unexpected count of retrieved objects: %@", &v24, 0x16u);
      }

      v8 = [[SACommandFailed alloc] initWithReason:@"Error retrieving object from service"];
    }
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    (*(v23 + 16))(v23, v8, 0);
  }
}

void sub_10029E260(uint64_t a1, char a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v9, v7);
    }
  }

  else
  {
    [*(a1 + 32) _amosSADomainObjectRetrieve:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_10029E6D4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v10 = v5;
  if (a3)
  {
    v6 = v5;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v5 objects];
    [v7 addObjectsFromArray:v8];

    v6 = objc_alloc_init(SADomainObjectRetrieveCompleted);
    [v6 setObjects:*(a1 + 32)];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v6, 0);
  }
}

void sub_10029E854(uint64_t a1, char a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v9, v7);
    }
  }

  else
  {
    [*(a1 + 32) _amosSADomainObjectCreate:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_10029EB94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 encodedClassName];
  v8 = [*(a1 + 32) expectedResponseClassName];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [AceObject aceObjectWithGenericCommand:v5];
    v11 = [*(a1 + 32) aceId];
    [v10 setRefId:v11];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = objc_alloc_init(SACommandFailed);
    v13 = [v12 encodedClassName];
    v14 = [v7 isEqualToString:v13];

    if (v14)
    {
      v15 = v5;
    }

    else
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        v22 = v16;
        v23 = [v21 expectedResponseClassName];
        v24 = 136315906;
        v25 = "[ADCommandCenter(AMOS) _sendAMOSCommandToService:responseHandler:]_block_invoke";
        v26 = 2114;
        v27 = v23;
        v28 = 2114;
        v29 = v7;
        v30 = 2114;
        v31 = v6;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Unexpected response from service. Expecting %{public}@, got %{public}@ error: %{public}@", &v24, 0x2Au);
      }

      v15 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      [v17 setReason:@"Unexpected response from service"];
    }

    v18 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [*(a1 + 32) aceId];
    [v19 setRefId:v20];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10029F180(void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = v7;
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      v14 = a1[5];
      v15 = 136315650;
      v16 = "[ADCommandCenter(AMOS) _handleSADOCommandIfServiceDoesNotUseAMOS:allowInterposing:completion:]_block_invoke";
      v17 = 2112;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Couldn't send SADOCommand %@ to service %{public}@", &v15, 0x20u);
    }

    v9 = objc_alloc_init(SACommandIgnored);
  }

  v11 = v9;
  v12 = a1[6];
  if (v12)
  {
    (*(v12 + 16))(v12, 1, v11, v8);
  }
}

void sub_10029F50C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 1, v5, v6);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10029F5F8;
    v10[3] = &unk_10051CD88;
    v11 = *(a1 + 48);
    [v8 _handleCommandInAMOS:v9 completion:v10];
  }
}

uint64_t sub_10029F5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, a2, a3);
  }

  return result;
}

uint64_t sub_1002A0704(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002A071C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[3] sharedUserId];
  v4 = [v2 _confidenceScoreForSharedUserID:v3 expectedSpeakerSharedUserID:*(a1 + 40) expectedSpeakerConfidenceScore:*(a1 + 64) confidenceScores:*(a1 + 48)];

  [*(*(*(a1 + 56) + 8) + 40) addObject:v4];
  v5 = *(a1 + 32);
  v6 = *(v5 + 208);
  if (v6)
  {
    v7 = [v6 sharedUserID];
    v8 = [v5 _confidenceScoreForSharedUserID:v7 expectedSpeakerSharedUserID:*(a1 + 40) expectedSpeakerConfidenceScore:*(a1 + 64) confidenceScores:*(a1 + 48)];

    [*(*(*(a1 + 56) + 8) + 40) addObject:v8];
    v5 = *(a1 + 32);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v5 + 200);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(a1 + 32) _confidenceScoreForSharedUserID:*(*(&v15 + 1) + 8 * v13) expectedSpeakerSharedUserID:*(a1 + 40) expectedSpeakerConfidenceScore:*(a1 + 64) confidenceScores:{*(a1 + 48), v15}];
        [*(*(*(a1 + 56) + 8) + 40) addObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

void sub_1002A09A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADMultiUserService getSharedUserIdForiCloudAltDSID:completion:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Looked up user in ADMultiUserService %@", &v8, 0x16u);
  }

  v5 = [v3 sharedUserId];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v3 sharedUserId];
    (*(v6 + 16))(v6, 0, v7);
  }

  else
  {
    v7 = +[ADCloudKitManager sharedManager];
    [v7 fetchSharedUserIdForiCloudAltDSID:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_1002A0B9C(void *a1)
{
  v2 = a1[4];
  if (!v2)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v3 = [*(a1[5] + 208) iCloudAltDSID];
  v4 = [v2 isEqualToString:v3];

  if (!v4)
  {
    v8 = a1[4];
    v9 = [*(a1[5] + 216) iCloudAltDSID];
    LODWORD(v8) = [v8 isEqualToString:v9];

    v10 = a1[5];
    if (v8)
    {
      v5 = *(v10 + 216);
      v11 = a1[5];
      v12 = *(v11 + 152);
      v13 = *(v11 + 216);
    }

    else
    {
      v13 = [*(v10 + 272) objectForKeyedSubscript:a1[4]];
      v5 = v13;
      v12 = *(a1[5] + 152);
    }

    v14 = [v13 sharedUserID];
    v6 = [v12 objectForKeyedSubscript:v14];

    if (v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v5 = *(a1[5] + 208);
  v6 = *(a1[5] + 144);
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  v15 = sub_1002A0D0C(v5, v6);
LABEL_11:

  v7 = v15;
LABEL_12:
  v16 = v7;
  (*(a1[6] + 16))();
}

id sub_1002A0D0C(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_1002A0F2C(v3, a2);
  v5 = +[ADCompanionService sharedInstance];
  v6 = [v5 isReady];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v3 attributes];
  v8 = [v7 attributes];

  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (![*(*(&v23 + 1) + 8 * i) integerValue])
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = [AFSharedUserInfo alloc];
  v15 = [v3 sharedUserID];
  v16 = [v3 loggableSharedUserID];
  v17 = [v3 personalDomainsIsEnabled];
  v18 = [v3 homeUserUUID];
  v19 = [v3 iCloudAltDSID];
  BYTE1(v22) = [v3 isMediaFallbackUser];
  LOBYTE(v22) = v13;
  v20 = [v14 initWithSharedUserId:v15 loggableSharedUserId:v16 companionDeviceInfo:v4 personalRequestsEnabled:v17 companionLinkReady:v6 homeUserId:v18 iCloudAltDSID:v19 isDeviceOwner:v22 isMediaFallbackUser:?];

  return v20;
}

id sub_1002A0F2C(void *a1, void *a2)
{
  v16 = a2;
  v3 = a1;
  v4 = [v3 productPrefix];
  v17 = productTypeFromUserAgentString();

  v5 = AFDoesProductTypeSupportMUX();
  v6 = [AFCompanionDeviceInfo alloc];
  v7 = [v3 companionAssistantID];
  v8 = [v3 companionSpeechID];
  v9 = [v3 companionIDSIdentifier];
  v10 = [v3 productPrefix];
  v11 = [v3 aceHost];
  LOBYTE(a1) = [v3 companionPeerToPeerHandoffCapable];
  v12 = [v3 companionName];

  BYTE3(v15) = 1;
  BYTE2(v15) = v5;
  BYTE1(v15) = a1;
  LOBYTE(v15) = 0;
  v13 = [v6 initWithAssistantID:v7 speechID:v8 idsIdentifier:v9 productPrefix:v10 aceHost:v11 syncMetadata:&__NSDictionary0__struct syncMetadataCapability:v15 peerToPeerHandoffCapability:v16 muxSupportCapability:v12 meDevice:? siriLanguage:? companionName:?];

  return v13;
}

void sub_1002A1154(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 208);
  if (v3)
  {
    v4 = sub_1002A0D0C(v3, *(v2 + 144));
  }

  else
  {
    v5 = *(v2 + 216);
    if (v5)
    {
      v6 = *(v2 + 152);
      v7 = [v5 sharedUserID];
      v8 = [v6 objectForKeyedSubscript:v7];

      v9 = sub_1002A0D0C(*(*(a1 + 32) + 216), v8);

      v4 = v9;
    }

    else
    {
      v4 = 0;
    }
  }

  v10 = v4;
  (*(*(a1 + 40) + 16))();
}

void sub_1002A12E8(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = [*(a1[5] + 208) sharedUserID];
    v4 = [v2 isEqualToString:v3];

    if (v4)
    {
      v5 = *(a1[5] + 208);
      v6 = *(a1[5] + 144);
    }

    else
    {
      v8 = a1[4];
      v9 = [*(a1[5] + 216) sharedUserID];
      LODWORD(v8) = [v8 isEqualToString:v9];

      v10 = a1[5];
      if (v8)
      {
        v11 = *(v10 + 216);
      }

      else
      {
        v11 = [*(v10 + 200) objectForKeyedSubscript:a1[4]];
      }

      v5 = v11;
      v6 = [*(a1[5] + 152) objectForKeyedSubscript:a1[4]];
    }

    v12 = v6;
    if (v5)
    {
      v13 = sub_1002A0D0C(v5, v6);
    }

    else
    {
      v13 = 0;
    }

    v7 = v13;
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  (*(a1[6] + 16))();
}

uint64_t sub_1002A151C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) sharedUserID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1002A1720(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 208);
  if (v3)
  {
    v4 = [v3 companionIDSIdentifier];
    v5 = [v4 isEqualToString:a1[5]];

    if (v5)
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v32 = "[ADMultiUserService getAssistantIdentifierForIDS:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Matched primary user companion", buf, 0xCu);
      }

      v7 = *(a1[4] + 208);
LABEL_12:
      v12 = [v7 companionAssistantID];
      v13 = *(a1[6] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
      goto LABEL_26;
    }

    v2 = a1[4];
  }

  v8 = *(v2 + 216);
  if (v8)
  {
    v9 = [v8 companionIDSIdentifier];
    v10 = [v9 isEqualToString:a1[5]];

    if (v10)
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v32 = "[ADMultiUserService getAssistantIdentifierForIDS:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Matched device owner companion", buf, 0xCu);
      }

      v7 = *(a1[4] + 216);
      goto LABEL_12;
    }

    v2 = a1[4];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = *(v2 + 200);
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(a1[4] + 200) objectForKey:{*(*(&v26 + 1) + 8 * i), v26}];
        v20 = [v19 companionIDSIdentifier];
        v21 = [v20 isEqualToString:a1[5]];

        if (v21)
        {
          v22 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v32 = "[ADMultiUserService getAssistantIdentifierForIDS:]_block_invoke";
            _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s Matched secondary user companion", buf, 0xCu);
          }

          v23 = [v19 companionAssistantID];
          v24 = *(a1[6] + 8);
          v25 = *(v24 + 40);
          *(v24 + 40) = v23;

          goto LABEL_26;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:
}

void sub_1002A1BC0(uint64_t a1)
{
  v2 = [*(a1 + 32) uppercaseString];
  v3 = *(a1 + 40);
  v4 = *(v3 + 208);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v29 = "[ADMultiUserService getIDSIdentifierForAssistantId:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Primary user present", buf, 0xCu);
    v4 = *(*(a1 + 40) + 208);
  }

  v6 = [v4 companionAssistantID];
  v7 = [v6 uppercaseString];
  v8 = [v7 isEqualToString:v2];

  v3 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 48);
    v10 = [*(v3 + 208) companionIDSIdentifier];
    (*(v9 + 16))(v9, v10, 0);
  }

  else
  {
LABEL_6:
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = *(v3 + 200);
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(a1 + 40) + 200) objectForKey:{*(*(&v23 + 1) + 8 * i), v23}];
          v16 = [v15 companionAssistantID];
          v17 = [v16 uppercaseString];
          v18 = [v17 isEqualToString:v2];

          if (v18)
          {
            v20 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v29 = "[ADMultiUserService getIDSIdentifierForAssistantId:completion:]_block_invoke";
              _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Second user match found", buf, 0xCu);
            }

            v21 = *(a1 + 48);
            v22 = [v15 companionIDSIdentifier];
            (*(v21 + 16))(v21, v22, 0);

            goto LABEL_20;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[ADMultiUserService getIDSIdentifierForAssistantId:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Primary user not present or home user not found", buf, 0xCu);
    }

    v10 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:&__NSDictionary0__struct, v23];
    (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v10);
  }

LABEL_20:
}

void sub_1002A233C(void *a1)
{
  v2 = [*(a1[4] + 264) count];
  v3 = a1[4];
  v4 = *(v3 + 208);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:
    v5 = [v4 sharedUserID];
    v6 = [v5 isEqualToString:a1[5]];

    v3 = a1[4];
    if (v6)
    {
      v7 = *(v3 + 208);
LABEL_8:
      v8 = v7;
      if (v7)
      {
        v9 = [v7 audioAppSignals];
        v10 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v16 = 136315394;
          v17 = "[ADMultiUserService getMultiUserAudioAppSignalsForSharedUserID:completion:]_block_invoke";
          v18 = 2112;
          v19 = v9;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s User found, returning bag: %@", &v16, 0x16u);
        }

        (*(a1[6] + 16))();
      }

      else
      {
        v11 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v16 = 136315138;
          v17 = "[ADMultiUserService getMultiUserAudioAppSignalsForSharedUserID:completion:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s User not found", &v16, 0xCu);
        }

        v12 = a1[6];
        v13 = [AFError errorWithCode:6001 description:0];
        (*(v12 + 16))(v12, 0, v13);

        v9 = 0;
      }

      goto LABEL_16;
    }

LABEL_7:
    v7 = [*(v3 + 200) objectForKey:a1[5]];
    goto LABEL_8;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315138;
    v17 = "[ADMultiUserService getMultiUserAudioAppSignalsForSharedUserID:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s Non multi-user HomePod and primary user not found. Returning an error", &v16, 0xCu);
  }

  v15 = a1[6];
  v9 = [AFError errorWithCode:6001 description:0];
  (*(v15 + 16))(v15, 0, v9);
LABEL_16:
}

void sub_1002A26F8(void *a1)
{
  v2 = [*(a1[4] + 264) count];
  v3 = a1[4];
  v4 = *(v3 + 208);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:
    v5 = [v4 sharedUserID];
    v6 = [v5 isEqualToString:a1[5]];

    v3 = a1[4];
    if (v6)
    {
      v7 = *(v3 + 208);
      goto LABEL_8;
    }

LABEL_7:
    v7 = [*(v3 + 200) objectForKey:a1[5]];
LABEL_8:
    v8 = v7;
    if (v7)
    {
      v9 = [v7 settings];
      v10 = [v9 objectForKey:SAHomeMemberSettingsTemperatureUnitPListKey];

      v11 = [v8 settings];
      v12 = [v11 objectForKey:SAHomeMemberSettingsTwentyFourHourTimeDisplayPListKey];
      v13 = [v12 BOOLValue];

      v14 = [v8 settings];
      v15 = [v14 objectForKey:SAHomeMemberSettingsRegionPListKey];

      v16 = [v8 settings];
      v17 = [v16 objectForKey:SAHomeMemberSettingsCountryCodePListKey];

      v18 = [v8 settings];
      v19 = [v18 objectForKey:SAHomeMemberSettingsPreferredLanguagePListKey];

LABEL_10:
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v26 = 136315138;
        v27 = "[ADMultiUserService getMultiUserSettingsForSharedUserID:completion:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s User found", &v26, 0xCu);
      }

      v21 = objc_alloc_init(AFPersonalUserSettings);
      [(AFPersonalUserSettings *)v21 setTemperatureUnit:v10];
      [(AFPersonalUserSettings *)v21 setTwentyFourHourTimeDisplay:v13];
      [(AFPersonalUserSettings *)v21 setRegion:v15];
      [(AFPersonalUserSettings *)v21 setCountryCode:v17];
      [(AFPersonalUserSettings *)v21 setPreferredLanguage:v19];
      (*(a1[6] + 16))();

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v22 = +[ADAssistantDataManager sharedDataManager];
  v8 = [v22 _cachedAssistantData];

  if (v8)
  {
    v10 = [v8 temperatureUnit];
    v23 = [v8 twentyFourHourTimeDisplay];
    v13 = [v23 BOOLValue];

    v15 = [v8 region];
    v17 = [v8 countryCode];
    v19 = [v8 preferredLanguage];
    goto LABEL_10;
  }

LABEL_15:
  v24 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v26 = 136315138;
    v27 = "[ADMultiUserService getMultiUserSettingsForSharedUserID:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s User not found", &v26, 0xCu);
  }

  v25 = a1[6];
  v10 = [AFError errorWithCode:6001 description:0];
  (*(v25 + 16))(v25, 0, v10);
LABEL_18:
}

void sub_1002A2BAC(uint64_t a1)
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 _selectedSharedUserID];

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315395;
    v20 = "[ADMultiUserService getCompanionAssistantIdForRecognizedUser:]_block_invoke";
    v21 = 2113;
    v22 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Found currently recognized user sharedUserID: %{private}@", &v19, 0x16u);
  }

  if ([v3 length])
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 208);
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v17 = v7;
      v18 = [v6 sharedUserID];
      v19 = 136315395;
      v20 = "[ADMultiUserService getCompanionAssistantIdForRecognizedUser:]_block_invoke";
      v21 = 2113;
      v22 = v18;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Checking if it matches that of primary user: %{private}@", &v19, 0x16u);

      v6 = *(*(a1 + 32) + 208);
    }

    v8 = [v6 sharedUserID];
    v9 = [v8 isEqualToString:v3];

    v5 = *(a1 + 32);
    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = [*(v5 + 208) companionAssistantID];
      (*(v10 + 16))(v10, v11, 0);
    }

    else
    {
LABEL_9:
      v12 = [*(v5 + 200) objectForKey:v3];
      v11 = v12;
      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [v12 companionAssistantID];
        (*(v13 + 16))(v13, v14, 0);
      }

      else
      {
        v16 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v19 = 136315138;
          v20 = "[ADMultiUserService getCompanionAssistantIdForRecognizedUser:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s companionAssistantID not found", &v19, 0xCu);
        }

        v14 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:&__NSDictionary0__struct];
        (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v14);
      }
    }
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315138;
      v20 = "[ADMultiUserService getCompanionAssistantIdForRecognizedUser:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s No selectedSharedUserID found, returning nil", &v19, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1002A2FE8(uint64_t a1)
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 _selectedSharedUserID];

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315395;
    v11 = "[ADMultiUserService getMultiUserSettingsForRecognizedUserWithCompletion:]_block_invoke";
    v12 = 2113;
    v13 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Found currently recognized user sharedUserID: %{private}@", &v10, 0x16u);
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else if (v3)
  {
    goto LABEL_7;
  }

  v5 = +[ADMultiUserTestSupport sharedService];
  v6 = [v5 hasTestUserSelectionScores];

  if (v6)
  {
    v7 = +[ADMultiUserTestSupport sharedService];
    v3 = [v7 getClassifiedUser];

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[ADMultiUserService getMultiUserSettingsForRecognizedUserWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v3;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Overriding selectedSharedUserID using debug voice id scores: %@", &v10, 0x16u);
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_7:
  if ([v3 length])
  {
    [*(a1 + 32) getMultiUserSettingsForSharedUserID:v3 completion:*(a1 + 40)];
  }

  else
  {
    v9 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:&__NSDictionary0__struct];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1002A32EC(uint64_t a1)
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 _selectedSharedUserID];

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315395;
    v20 = "[ADMultiUserService getiCloudAltDSIDOfRecognizedUserWithCompletion:]_block_invoke";
    v21 = 2113;
    v22 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Found currently recognized user sharedUserID: %{private}@", &v19, 0x16u);
  }

  if ([v3 length])
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 208);
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v17 = v7;
      v18 = [v6 sharedUserID];
      v19 = 136315395;
      v20 = "[ADMultiUserService getiCloudAltDSIDOfRecognizedUserWithCompletion:]_block_invoke";
      v21 = 2113;
      v22 = v18;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Checking if it matches that of primary user: %{private}@", &v19, 0x16u);

      v6 = *(*(a1 + 32) + 208);
    }

    v8 = [v6 sharedUserID];
    v9 = [v8 isEqualToString:v3];

    v5 = *(a1 + 32);
    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = [*(v5 + 208) iCloudAltDSID];
      (*(v10 + 16))(v10, v11, 0);
    }

    else
    {
LABEL_9:
      v12 = [*(v5 + 200) objectForKey:v3];
      v11 = v12;
      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [v12 iCloudAltDSID];
        (*(v13 + 16))(v13, v14, 0);
      }

      else
      {
        v16 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v19 = 136315138;
          v20 = "[ADMultiUserService getiCloudAltDSIDOfRecognizedUserWithCompletion:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s iCloudAltDSID not found", &v19, 0xCu);
        }

        v14 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:&__NSDictionary0__struct];
        (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v14);
      }
    }
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315138;
      v20 = "[ADMultiUserService getiCloudAltDSIDOfRecognizedUserWithCompletion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s No selectedSharedUserID found, returning nil", &v19, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1002A3728(uint64_t a1)
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 _selectedSharedUserID];

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v28 = 136315395;
    v29 = "[ADMultiUserService getHomeUserIdOfRecognizedUserWithCompletion:]_block_invoke";
    v30 = 2113;
    v31 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Found currently recognized user sharedUserID: %{private}@", &v28, 0x16u);
    if (v3)
    {
      goto LABEL_13;
    }
  }

  else if (v3)
  {
    goto LABEL_13;
  }

  v5 = +[ADMultiUserTestSupport sharedService];
  v6 = [v5 hasTestUserSelectionScores];

  if (v6)
  {
    v7 = +[ADMultiUserTestSupport sharedService];
    v3 = [v7 getClassifiedUser];

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v28 = 136315394;
      v29 = "[ADMultiUserService getHomeUserIdOfRecognizedUserWithCompletion:]_block_invoke";
      v30 = 2112;
      v31 = v3;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Overriding selectedSharedUserID using debug voice id scores: %@", &v28, 0x16u);
    }

    v9 = *(a1 + 32);
    if (!*(v9 + 208))
    {
      v10 = *(v9 + 216);
      if (v10)
      {
        v11 = [v10 sharedUserID];
        v12 = [v11 isEqualToString:v3];

        if (v12)
        {
          v13 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v28 = 136315138;
            v29 = "[ADMultiUserService getHomeUserIdOfRecognizedUserWithCompletion:]_block_invoke";
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Primary user not present, falling back to use _deviceOwner", &v28, 0xCu);
          }

          v14 = *(a1 + 40);
          v15 = [*(*(a1 + 32) + 216) homeUserUUID];
          (*(v14 + 16))(v14, v15, 0);

          goto LABEL_29;
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_13:
  if ([v3 length])
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 208);
    if (!v17)
    {
      goto LABEL_19;
    }

    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v28 = 136315138;
      v29 = "[ADMultiUserService getHomeUserIdOfRecognizedUserWithCompletion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s Primary user present", &v28, 0xCu);
      v17 = *(*(a1 + 32) + 208);
    }

    v19 = [v17 sharedUserID];
    v20 = [v19 isEqualToString:v3];

    v16 = *(a1 + 32);
    if (v20)
    {
      v21 = *(a1 + 40);
      v22 = [*(v16 + 208) homeUserUUID];
      (*(v21 + 16))(v21, v22, 0);
    }

    else
    {
LABEL_19:
      v23 = [*(v16 + 200) objectForKey:v3];
      v22 = v23;
      if (v23)
      {
        v24 = *(a1 + 40);
        v25 = [v23 homeUserUUID];
        (*(v24 + 16))(v24, v25, 0);
      }

      else
      {
        v27 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v28 = 136315138;
          v29 = "[ADMultiUserService getHomeUserIdOfRecognizedUserWithCompletion:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Primary user not present or home userId not found", &v28, 0xCu);
        }

        v25 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:&__NSDictionary0__struct];
        (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v25);
      }
    }
  }

  else
  {
    v26 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v28 = 136315138;
      v29 = "[ADMultiUserService getHomeUserIdOfRecognizedUserWithCompletion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s No selectedSharedUserID found, returning nil", &v28, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

LABEL_29:
}

void sub_1002A3CA4(uint64_t a1)
{
  v34 = objc_alloc_init(NSMutableDictionary);
  v2 = *(a1 + 32);
  v3 = *(v2 + 208);
  if (v3)
  {
    v4 = [v3 iCloudAltDSID];
    v5 = [NSDictionary alloc];
    v6 = [*(*(a1 + 32) + 208) sharedUserID];
    v7 = kAFMultiUserSharedUserIdKey;
    v8 = [*(*(a1 + 32) + 208) loggableMusicSyncSharedUserID];
    v9 = [v5 initWithObjectsAndKeys:{v6, v7, v8, kAFMultiUserConformingSharedUserIdKey, 0}];

    if (!v4)
    {
      goto LABEL_12;
    }

    if (!AFIsHorseman())
    {
      v10 = _AFPreferencesSiriRMVSetting();
      v11 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      *buf = 136315394;
      v43 = "[ADMultiUserService getRecognizableUsersConfromingSharedUserIds:]_block_invoke";
      v44 = 2048;
      v45 = v10;
      v12 = "%s Primary user present. RmV enabled: %ld";
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  v13 = *(v2 + 216);
  if (v13)
  {
    v4 = [v13 iCloudAltDSID];
    v14 = [NSDictionary alloc];
    v15 = [*(*(a1 + 32) + 216) sharedUserID];
    v16 = kAFMultiUserSharedUserIdKey;
    v17 = [*(*(a1 + 32) + 216) loggableMusicSyncSharedUserID];
    v9 = [v14 initWithObjectsAndKeys:{v15, v16, v17, kAFMultiUserConformingSharedUserIdKey, 0}];

    if (!v4)
    {
      goto LABEL_12;
    }

    if (!AFIsHorseman())
    {
      v10 = _AFPreferencesSiriRMVSetting();
      v11 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      *buf = 136315394;
      v43 = "[ADMultiUserService getRecognizableUsersConfromingSharedUserIds:]_block_invoke";
      v44 = 2048;
      v45 = v10;
      v12 = "%s Device Owner present. RmV enabled: %ld";
LABEL_29:
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v12, buf, 0x16u);
LABEL_10:
      if (v10 == 1)
      {
        goto LABEL_11;
      }

LABEL_12:

      v2 = *(a1 + 32);
      goto LABEL_13;
    }

LABEL_11:
    [v34 setObject:v9 forKey:v4];
    goto LABEL_12;
  }

  v4 = 0;
LABEL_13:
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(v2 + 200);
  v18 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v36 = *v38;
    v20 = kAFMultiUserSharedUserIdKey;
    v21 = kAFMultiUserConformingSharedUserIdKey;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        v23 = v4;
        if (*v38 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v37 + 1) + 8 * i);
        v4 = [*(*(a1 + 32) + 216) iCloudAltDSID];

        v25 = a1;
        v26 = [*(*(a1 + 32) + 200) objectForKey:v24];
        v27 = [NSDictionary alloc];
        v28 = [v26 sharedUserID];
        v29 = [v26 loggableMusicSyncSharedUserID];
        v30 = [v27 initWithObjectsAndKeys:{v28, v20, v29, v21, 0}];

        if (v4 && ((AFIsHorseman() & 1) != 0 || _AFPreferencesSiriRMVSetting() == 1))
        {
          [v34 setObject:v30 forKey:v4];
        }

        a1 = v25;
      }

      v19 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v19);
  }

  v31 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v32 = v31;
    v33 = [v34 count];
    *buf = 136315394;
    v43 = "[ADMultiUserService getRecognizableUsersConfromingSharedUserIds:]_block_invoke";
    v44 = 2048;
    v45 = v33;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s User count: %ld", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002A422C(uint64_t a1)
{
  v36 = objc_alloc_init(NSMutableDictionary);
  v2 = *(a1 + 32);
  if (*(v2 + 208))
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v42 = "[ADMultiUserService getConformingSharedUserIds:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Primary user present", buf, 0xCu);
    }

    v4 = [NSDictionary alloc];
    v5 = [*(*(a1 + 32) + 208) sharedUserID];
    v6 = kAFMultiUserSharedUserIdKey;
    v7 = [*(*(a1 + 32) + 208) loggableMusicSyncSharedUserID];
    v8 = [v4 initWithObjectsAndKeys:{v5, v6, v7, kAFMultiUserConformingSharedUserIdKey, 0}];

    v9 = [*(*(a1 + 32) + 208) homeUserUUID];

    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = 208;
    goto LABEL_11;
  }

  if (!*(v2 + 216))
  {
    goto LABEL_13;
  }

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v42 = "[ADMultiUserService getConformingSharedUserIds:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Device owner present", buf, 0xCu);
  }

  v12 = [NSDictionary alloc];
  v13 = [*(*(a1 + 32) + 216) sharedUserID];
  v14 = kAFMultiUserSharedUserIdKey;
  v15 = [*(*(a1 + 32) + 216) loggableMusicSyncSharedUserID];
  v8 = [v12 initWithObjectsAndKeys:{v13, v14, v15, kAFMultiUserConformingSharedUserIdKey, 0}];

  v16 = [*(*(a1 + 32) + 216) homeUserUUID];

  if (v16)
  {
    v10 = 216;
LABEL_11:
    v17 = [*(*(a1 + 32) + v10) homeUserUUID];
    [v36 setObject:v8 forKey:v17];
  }

LABEL_12:

  v2 = *(a1 + 32);
LABEL_13:
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(v2 + 200);
  v18 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    v21 = kAFMultiUserSharedUserIdKey;
    v22 = kAFMultiUserConformingSharedUserIdKey;
    do
    {
      v23 = 0;
      do
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v24 = a1;
        v25 = [*(*(a1 + 32) + 200) objectForKey:*(*(&v37 + 1) + 8 * v23)];
        v26 = [NSDictionary alloc];
        v27 = [v25 sharedUserID];
        v28 = [v25 loggableMusicSyncSharedUserID];
        v29 = [v26 initWithObjectsAndKeys:{v27, v21, v28, v22, 0}];

        v30 = [v25 homeUserUUID];

        if (v30)
        {
          v31 = [v25 homeUserUUID];
          [v36 setObject:v29 forKey:v31];
        }

        v23 = v23 + 1;
        a1 = v24;
      }

      while (v19 != v23);
      v19 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v19);
  }

  v32 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v33 = v32;
    v34 = [v36 count];
    *buf = 136315394;
    v42 = "[ADMultiUserService getConformingSharedUserIds:]_block_invoke";
    v43 = 2048;
    v44 = v34;
    _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s User count: %ld", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002A47BC(void *a1)
{
  v2 = a1[4];
  v3 = v2[26];
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315138;
      v20 = "[ADMultiUserService getConformingSharedUserIdForHomeUserId:completion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Primary user present", &v19, 0xCu);
      v3 = *(a1[4] + 208);
    }

    v5 = [v3 homeUserUUID];
    v6 = [v5 isEqualToString:a1[5]];

    v2 = a1[4];
    if (v6)
    {
      v7 = a1[6];
      v8 = [v2[26] sharedUserID];
      v9 = *(a1[4] + 208);
LABEL_11:
      v14 = [v9 loggableMusicSyncSharedUserID];
      (*(v7 + 16))(v7, v8, v14, 0);
      goto LABEL_17;
    }
  }

  else
  {
    v10 = v2[27];
    if (v10)
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v19 = 136315138;
        v20 = "[ADMultiUserService getConformingSharedUserIdForHomeUserId:completion:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Device owner present", &v19, 0xCu);
        v10 = *(a1[4] + 216);
      }

      v12 = [v10 homeUserUUID];
      v13 = [v12 isEqualToString:a1[5]];

      v2 = a1[4];
      if (v13)
      {
        v7 = a1[6];
        v8 = [v2[27] sharedUserID];
        v9 = *(a1[4] + 216);
        goto LABEL_11;
      }
    }
  }

  v15 = [v2[33] objectForKey:a1[5]];
  if (v15)
  {
    v8 = v15;
    v16 = a1[6];
    v14 = [v15 sharedUserID];
    v17 = [v8 loggableMusicSyncSharedUserID];
    (*(v16 + 16))(v16, v14, v17, 0);
  }

  else
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315138;
      v20 = "[ADMultiUserService getConformingSharedUserIdForHomeUserId:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Primary user not present or sharedUserId not found", &v19, 0xCu);
    }

    v14 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:&__NSDictionary0__struct];
    (*(a1[6] + 16))();
    v8 = 0;
  }

LABEL_17:
}

void sub_1002A4BD4(void *a1)
{
  v2 = a1[4];
  v3 = [*(a1[5] + 208) sharedUserID];
  LODWORD(v2) = [v2 isEqualToString:v3];

  v4 = a1[5];
  if (v2)
  {
    v5 = *(v4 + 208);
  }

  else
  {
    v5 = [*(v4 + 200) objectForKey:a1[4]];
  }

  v14 = v5;
  if (v5)
  {
    v6 = [ADCommunalDeviceUser saHomeMemberInfo:v5];
    v7 = [v6 homeMemberSettings];
    v8 = [v7 meCard];

    if (v8 && ([v8 firstName], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = a1[6];
      v11 = [v8 firstName];
      (*(v10 + 16))(v10, v11, 0);
    }

    else
    {
      v12 = a1[6];
      v11 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6008 userInfo:&__NSDictionary0__struct];
      (*(v12 + 16))(v12, 0, v11);
    }
  }

  else
  {
    v13 = a1[6];
    v8 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:&__NSDictionary0__struct];
    (*(v13 + 16))(v13, 0, v8);
  }
}

void sub_1002A4F40(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 208);
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v18 = v4;
      v19 = [v3 sharedUserID];
      v22 = 136315395;
      v23 = "[ADMultiUserService getSharedUserIdForHomeUserId:completion:]_block_invoke";
      v24 = 2113;
      v25 = v19;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s Primary user present with sharedUserId = %{private}@", &v22, 0x16u);

      v3 = *(a1[4] + 208);
    }

    v5 = [v3 homeUserUUID];
    v6 = [v5 isEqualToString:a1[5]];

    v2 = a1[4];
    if (v6)
    {
      v7 = a1[6];
      v8 = *(v2 + 208);
LABEL_11:
      v13 = [v8 sharedUserID];
      (*(v7 + 16))(v7, v13, 0);
      goto LABEL_18;
    }
  }

  else
  {
    v9 = *(v2 + 216);
    if (v9)
    {
      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v20 = v10;
        v21 = [v9 sharedUserID];
        v22 = 136315395;
        v23 = "[ADMultiUserService getSharedUserIdForHomeUserId:completion:]_block_invoke";
        v24 = 2113;
        v25 = v21;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Device owner present with sharedUserId = %{private}@", &v22, 0x16u);

        v9 = *(a1[4] + 216);
      }

      v11 = [v9 homeUserUUID];
      v12 = [v11 isEqualToString:a1[5]];

      v2 = a1[4];
      if (v12)
      {
        v7 = a1[6];
        v8 = *(v2 + 216);
        goto LABEL_11;
      }
    }
  }

  v14 = [*(v2 + 264) objectForKey:a1[5]];
  v13 = v14;
  if (v14)
  {
    v15 = a1[6];
    v16 = [v14 sharedUserID];
    (*(v15 + 16))(v15, v16, 0);
  }

  else
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315138;
      v23 = "[ADMultiUserService getSharedUserIdForHomeUserId:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Primary user not present or sharedUserId not found", &v22, 0xCu);
    }

    v16 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:&__NSDictionary0__struct];
    (*(a1[6] + 16))(a1[6], 0, v16);
  }

LABEL_18:
}

void sub_1002A53FC(void *a1)
{
  v2 = *(a1[4] + 208);
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315138;
      v18 = "[ADMultiUserService getHomeUserIdForSharedUserId:completion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Primary user present", &v17, 0xCu);
      v2 = *(a1[4] + 208);
    }

    v4 = [v2 sharedUserID];
    v5 = [v4 isEqualToString:a1[5]];

    if (v5)
    {
      v6 = a1[6];
      v7 = *(a1[4] + 208);
LABEL_12:
      v12 = [v7 homeUserUUID];
      (*(v6 + 16))(v6, v12, 0);
      goto LABEL_19;
    }
  }

  if (AFIsATV())
  {
    v8 = *(a1[4] + 216);
    if (v8)
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136315138;
        v18 = "[ADMultiUserService getHomeUserIdForSharedUserId:completion:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Platform is ATV and not primary user. Checking device owner", &v17, 0xCu);
        v8 = *(a1[4] + 216);
      }

      v10 = [v8 sharedUserID];
      v11 = [v10 isEqualToString:a1[5]];

      if (v11)
      {
        v6 = a1[6];
        v7 = *(a1[4] + 216);
        goto LABEL_12;
      }
    }
  }

  if (a1[5] && ([*(a1[4] + 200) objectForKey:?], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v13;
    v14 = a1[6];
    v15 = [v13 homeUserUUID];
    (*(v14 + 16))(v14, v15, 0);
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[ADMultiUserService getHomeUserIdForSharedUserId:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Primary user not present or home userId not found", &v17, 0xCu);
    }

    v12 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:&__NSDictionary0__struct];
    (*(a1[6] + 16))(a1[6], 0, v12);
  }

LABEL_19:
}

void sub_1002A579C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002A57B4(uint64_t a1)
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 _selectedSharedUserID];

  if (![v3 length])
  {
    goto LABEL_10;
  }

  v4 = [*(*(a1 + 32) + 208) sharedUserID];
  v5 = [v4 isEqualToString:v3];

  v6 = *(a1 + 32);
  if (!v5)
  {
    v9 = [*(v6 + 200) objectForKey:v3];
    v10 = v9;
    if (v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = [v9 allowExplicitContent];
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(*(*(a1 + 40) + 8) + 24);
        v17 = 136315651;
        v18 = "[ADMultiUserService getAllowExplicitContentSettingForRecognizedUser]_block_invoke";
        v19 = 1024;
        LODWORD(v20[0]) = v12;
        WORD2(v20[0]) = 2113;
        *(v20 + 6) = v3;
        v13 = "%s AllowExplicitContent=%i for Shared user with sharedUserId=%{private}@";
        v14 = v11;
        v15 = 28;
LABEL_12:
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, v13, &v17, v15);
      }
    }

    else
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136315395;
        v18 = "[ADMultiUserService getAllowExplicitContentSettingForRecognizedUser]_block_invoke";
        v19 = 2113;
        v20[0] = v3;
        v13 = "%s Shared user with sharedUserId=%{private}@ not found";
        v14 = v16;
        v15 = 22;
        goto LABEL_12;
      }
    }

    goto LABEL_10;
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(v6 + 208) allowExplicitContent];
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*(*(a1 + 40) + 8) + 24);
    v17 = 136315651;
    v18 = "[ADMultiUserService getAllowExplicitContentSettingForRecognizedUser]_block_invoke";
    v19 = 1024;
    LODWORD(v20[0]) = v8;
    WORD2(v20[0]) = 2113;
    *(v20 + 6) = v3;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s AllowExplicitContent=%i for Primary user with sharedUserId=%{private}@", &v17, 0x1Cu);
  }

LABEL_10:
}

void sub_1002A5B3C(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 208);
  if (v3)
  {
    v4 = [v3 homeUserUUID];
    v5 = [v4 isEqualToString:a1[5]];

    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    v6 = 208;
    goto LABEL_7;
  }

  v7 = *(v2 + 216);
  if (v7)
  {
    v8 = [v7 homeUserUUID];
    v9 = [v8 isEqualToString:a1[5]];

    if (v9)
    {
      v6 = 216;
LABEL_7:
      v10 = [*(a1[4] + v6) sharedUserID];
      v11 = [v10 copy];
      v12 = *(a1[6] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }

LABEL_8:
  v14 = [*(a1[4] + 264) objectForKey:a1[5]];
  if (v14)
  {
    v19 = v14;
    v15 = [v14 sharedUserID];
    v16 = [v15 copy];
    v17 = *(a1[6] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v14 = v19;
  }
}

void sub_1002A5D60(void *a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1002A5E28;
  v11 = &unk_100519AE8;
  v3 = a1[4];
  v12 = a1[5];
  v13 = v2;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:&v8];
  v5 = [v4 copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1002A5E28(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(*(a1 + 32) + 208) sharedUserID];
  v4 = [v12 isEqualToString:v3];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = *(v5 + 208);
LABEL_5:
    v10 = [v6 loggableMusicSyncSharedUserID];
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v12];
    goto LABEL_7;
  }

  v7 = [*(v5 + 216) sharedUserID];
  v8 = [v12 isEqualToString:v7];

  v9 = *(a1 + 32);
  if (v8)
  {
    v6 = *(v9 + 216);
    goto LABEL_5;
  }

  v10 = [*(v9 + 200) objectForKey:v12];
  v11 = [v10 loggableMusicSyncSharedUserID];
  [*(a1 + 40) setObject:v11 forKeyedSubscript:v12];

LABEL_7:
}

uint64_t sub_1002A6044(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  v3 = [*(*(result + 40) + 208) sharedUserID];
  v4 = [v1 isEqualToString:v3];

  if (v4)
  {
    v5 = *(v2[5] + 208);
  }

  else
  {
    v6 = v2[4];
    v7 = [*(v2[5] + 216) sharedUserID];
    LODWORD(v6) = [v6 isEqualToString:v7];

    v8 = v2[5];
    if (!v6)
    {
      v15 = [*(v8 + 200) objectForKey:v2[4]];
      v12 = [v15 loggableMusicSyncSharedUserID];
      v13 = *(v2[6] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v11 = v15;
      goto LABEL_9;
    }

    v5 = *(v8 + 216);
  }

  v9 = [v5 loggableMusicSyncSharedUserID];
  v10 = *(v2[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
LABEL_9:

  return _objc_release_x1(v9, v11);
}

void sub_1002A6280(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 208);
  if (v3)
  {
    v4 = [v3 shareOwnerName];
    v5 = [v4 isEqualToString:a1[5]];
    v2 = a1[4];
    if (v5)
    {
      v6 = [*(v2 + 208) sharedUserID];
      v7 = *(a1[6] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v2 = a1[4];
    }
  }

  else
  {
    v4 = 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(v2 + 200);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      v13 = 0;
      v14 = v4;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v17 + 1) + 8 * v13);
        v16 = [*(a1[4] + 200) objectForKey:{v15, v17}];
        v4 = [v16 shareOwnerName];

        if ([v4 isEqualToString:a1[5]])
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v15);

          goto LABEL_15;
        }

        v13 = v13 + 1;
        v14 = v4;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

void sub_1002A65A0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 200) objectForKey:*(a1 + 40)];
  v10 = v2;
  if (v2)
  {
    [v2 setShareOwnerName:*(a1 + 48)];
    [v10 testAndSetLoggingIsAllowed:*(a1 + 72)];
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = [v3 dictionary];
      [v10 setSettings:v4];
    }

    if (*(a1 + 64))
    {
      [v10 setAudioAppSignals:?];
    }
  }

  else
  {
    v5 = [*(*(a1 + 32) + 208) sharedUserID];
    v6 = [v5 isEqualToString:*(a1 + 40)];

    if (v6)
    {
      [*(*(a1 + 32) + 208) setShareOwnerName:*(a1 + 48)];
      v7 = *(a1 + 56);
      if (v7)
      {
        v8 = *(*(a1 + 32) + 208);
        v9 = [v7 dictionary];
        [v8 setSettings:v9];
      }

      if (*(a1 + 64))
      {
        [*(*(a1 + 32) + 208) setAudioAppSignals:?];
      }

      [*(*(a1 + 32) + 208) testAndSetLoggingIsAllowed:*(a1 + 72)];
    }
  }
}

void sub_1002A679C(void *a1)
{
  v2 = [*(a1[4] + 264) objectForKey:a1[5]];
  if (v2)
  {
    v3 = v2;
    [v2 setEnrollmentName:a1[6]];
    v2 = v3;
  }
}

void sub_1002A6BF8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 200) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (!v2)
  {
    v4 = [*(*(a1 + 32) + 208) sharedUserID];
    v5 = [v4 isEqualToString:*(a1 + 40)];

    if (!v5)
    {
      goto LABEL_5;
    }

    v3 = *(*(a1 + 32) + 208);
  }

  v6 = *(*(a1 + 120) + 8);
  v7 = v3;
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

LABEL_5:
  v9 = *(*(*(a1 + 120) + 8) + 40);
  if (!v9)
  {
    v16 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6001 userInfo:&__NSDictionary0__struct];
    v17 = 0;
    goto LABEL_49;
  }

  v10 = *(a1 + 48);
  v11 = [v9 companionAssistantID];
  v12 = v10;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_15;
  }

  if (!v12 || !v13)
  {

    goto LABEL_14;
  }

  v15 = [v12 isEqual:v13];

  if ((v15 & 1) == 0)
  {
LABEL_14:
    [*(*(*(a1 + 120) + 8) + 40) setCompanionAssistantID:*(a1 + 48)];
    *(*(*(a1 + 128) + 8) + 24) = 1;
  }

LABEL_15:
  if (*(a1 + 56))
  {
    [*(*(*(a1 + 120) + 8) + 40) setCompanionSpeechID:?];
  }

  if (*(a1 + 64))
  {
    [*(*(*(a1 + 120) + 8) + 40) setCompanionIDSIdentifier:?];
  }

  if (*(a1 + 72))
  {
    [*(*(*(a1 + 120) + 8) + 40) setProductPrefix:?];
  }

  v18 = *(a1 + 80);
  v19 = [*(*(*(a1 + 120) + 8) + 40) aceHost];
  v20 = v18;
  v21 = v19;
  v22 = v21;
  if (v20 == v21)
  {
  }

  else
  {
    if (v20 && v21)
    {
      v23 = [v20 isEqual:v21];

      if (v23)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }

    [*(*(*(a1 + 120) + 8) + 40) setAceHost:*(a1 + 80)];
    *(*(*(a1 + 128) + 8) + 24) = 1;
  }

LABEL_29:
  v24 = [*(*(*(a1 + 120) + 8) + 40) companionPeerToPeerHandoffCapable];
  if (v24 != [*(a1 + 88) peerToPeerHandoffCapability])
  {
    [*(*(*(a1 + 120) + 8) + 40) setCompanionPeerToPeerHandoffCapable:{objc_msgSend(*(a1 + 88), "peerToPeerHandoffCapability")}];
    *(*(*(a1 + 128) + 8) + 24) = 1;
  }

  if (*(a1 + 96))
  {
    v25 = [*(*(*(a1 + 120) + 8) + 40) companionName];
    v26 = [v25 isEqualToString:*(a1 + 96)];

    if ((v26 & 1) == 0)
    {
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v28 = *(a1 + 96);
        *buf = 136315394;
        v65 = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]_block_invoke";
        v66 = 2112;
        v67 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Updating companion Name: %@", buf, 0x16u);
      }

      [*(*(*(a1 + 120) + 8) + 40) setCompanionName:*(a1 + 96)];
      *(*(*(a1 + 128) + 8) + 24) = 1;
    }
  }

  v17 = [*(*(*(a1 + 120) + 8) + 40) homeUserUUID];
  v29 = *(a1 + 32);
  v30 = *(a1 + 104);
  if (*(*(*(a1 + 120) + 8) + 40) == v29[26])
  {
    if (v30)
    {
      [*(a1 + 32) _setPrimaryUserSiriLanguage:?];
    }

    else
    {
      v38 = +[AFPreferences sharedPreferences];
      v39 = [v38 languageCode];
      [v29 _setPrimaryUserSiriLanguage:v39];

      v40 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v65 = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s siriLanguage unavailable. Setting it to the same language as HomePod.", buf, 0xCu);
      }
    }

    [*(a1 + 32) _setPrimaryUserMeDevice:*(a1 + 136)];
    [*(a1 + 32) _savePrimaryAndDeviceOwner];
  }

  else
  {
    if (v30)
    {
      [*(a1 + 32) _setSharedUserSiriLanguage:v30 forSharedUser:*(a1 + 40)];
      v31 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v32 = *(*(a1 + 32) + 152);
        v33 = v31;
        v34 = [v32 count];
        *buf = 136315394;
        v65 = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]_block_invoke";
        v66 = 2048;
        v67 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s _sharedUsersSiriLanguageBySharedUserID: %lu", buf, 0x16u);
      }
    }

    else
    {
      v35 = +[AFPreferences sharedPreferences];
      v36 = [v35 languageCode];
      [v29 _setSharedUserSiriLanguage:v36 forSharedUser:*(a1 + 40)];

      v37 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v65 = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s siriLanguage unavailable for shared user. Setting it to the same language as HomePod.", buf, 0xCu);
      }
    }

    [*(a1 + 32) _setSharedUserMeDevice:*(a1 + 136) forSharedUser:*(a1 + 40)];
    [*(a1 + 32) _saveSharedUsers];
  }

  v16 = 0;
LABEL_49:
  if (AFIsATV())
  {
    v41 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v65 = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s #multi-user-atv skipping MU update since we cannot trust HomeKit settings on ATV", buf, 0xCu);
    }

    [*(a1 + 32) _updateVoiceProfileInfo];
    [*(a1 + 32) _updateSAMultiUserInfo];
    [*(a1 + 32) refreshHomeKitOnboardedUsers];
    v42 = *(*(a1 + 112) + 16);
    goto LABEL_56;
  }

  if (!v16)
  {
    v44 = *(a1 + 32);
    if (!v44[4] || !v17)
    {
      v49 = +[ADHomeInfoManager sharedInfoManager];
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_1002A7600;
      v61[3] = &unk_100519A70;
      v61[4] = *(a1 + 32);
      v62 = v17;
      v63 = *(a1 + 112);
      [v49 settingsForMultiUserWithRefresh:0 completion:v61];

LABEL_80:
      v56 = *(*(*(a1 + 120) + 8) + 40);
      if (v56 && *(*(*(a1 + 128) + 8) + 24) == 1)
      {
        v57 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v58 = v57;
          v59 = [v56 sharedUserID];
          *buf = 136315395;
          v65 = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]_block_invoke";
          v66 = 2113;
          v67 = v59;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%s Posting notification that companion device information/capabilities changed for sharedUserId: (%{private}@)", buf, 0x16u);
        }

        v60 = +[NSNotificationCenter defaultCenter];
        [v60 postNotificationName:@"ADMultiUserSharedUserCompanionInfoChangedNotification" object:*(*(*(a1 + 120) + 8) + 40)];
      }

      goto LABEL_57;
    }

    if ([v44 _updateHomeKitSettings:v17])
    {
      v45 = [*(*(a1 + 32) + 32) objectForKey:v17];
      if (v45)
      {
        v46 = v45;
        v47 = [v45 objectForKey:@"allowVoiceID"];
        if ([v47 integerValue] == 1)
        {
          v48 = *(a1 + 112);
          if (v48)
          {
            (*(v48 + 16))(v48, 0);
          }
        }

        else
        {
          v53 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v65 = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]_block_invoke";
            _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%s VoiceID disabled for existing user and we did not get a homeinfo change notification", buf, 0xCu);
          }

          [*(a1 + 32) removeUserWithHomeUUID:v17 completion:&stru_100519A28];
          v54 = *(a1 + 112);
          if (v54)
          {
            v55 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6010 userInfo:&__NSDictionary0__struct];
            (*(v54 + 16))(v54, v55);
          }
        }
      }

      else
      {
        v51 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v65 = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%s We should have a user setting. File a bug.", buf, 0xCu);
        }

        v52 = *(a1 + 112);
        if (v52)
        {
          (*(v52 + 16))(v52, 0);
        }

        v46 = 0;
      }
    }

    else
    {
      v50 = *(a1 + 112);
      if (!v50)
      {
LABEL_79:
        [*(a1 + 32) _updateVoiceProfileInfo];
        [*(a1 + 32) _updateSAMultiUserInfo];
        goto LABEL_80;
      }

      v46 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6008 userInfo:&__NSDictionary0__struct];
      (*(v50 + 16))(v50, v46);
    }

    goto LABEL_79;
  }

  v43 = *(a1 + 112);
  if (v43)
  {
    v42 = *(v43 + 16);
LABEL_56:
    v42();
  }

LABEL_57:
}

void sub_1002A7600(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 248);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002A76CC;
  v8[3] = &unk_10051E0D8;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

void sub_1002A76CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v7 = kAFAssistantErrorDomain;
    v8 = 6009;
LABEL_9:
    v6 = [NSError errorWithDomain:v7 code:v8 userInfo:&__NSDictionary0__struct];
LABEL_10:
    [*(a1 + 40) _updateVoiceProfileInfo];
    [*(a1 + 40) _updateSAMultiUserInfo];
    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, v6);
    }

    goto LABEL_12;
  }

  objc_storeStrong((*(a1 + 40) + 32), v2);
  if (([*(a1 + 40) _updateHomeKitSettings:*(a1 + 48)] & 1) == 0)
  {
    v7 = kAFAssistantErrorDomain;
    v8 = 6008;
    goto LABEL_9;
  }

  v3 = [*(*(a1 + 40) + 32) objectForKey:*(a1 + 48)];
  v4 = v3;
  if (!v3)
  {
LABEL_6:

    v6 = 0;
    goto LABEL_10;
  }

  v5 = [v3 objectForKey:@"allowVoiceID"];
  if ([v5 integerValue])
  {

    goto LABEL_6;
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]_block_invoke_2";
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s VoiceID disabled for existing user and we did not get a homeinfo change notification", &v13, 0xCu);
  }

  [*(a1 + 40) removeUserWithHomeUUID:*(a1 + 48) completion:&stru_100519A48];
  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6010 userInfo:&__NSDictionary0__struct];
    (*(v11 + 16))(v11, v12);
  }

  v6 = 0;
LABEL_12:
}

void sub_1002A78D4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Error when removing user (%@)", &v4, 0x16u);
    }
  }
}

void sub_1002A7998(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[ADMultiUserService updateMultiUserWithSharedUserId:companionInfo:completion:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Error when removing user (%@)", &v4, 0x16u);
    }
  }
}

void sub_1002A7B98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 248);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A7D20;
    block[3] = &unk_10051E088;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v12 = v6;
    v13 = v7;
    v14 = v8;
    dispatch_async(v5, block);

    v9 = v12;
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[ADMultiUserService triggerMultiUserMetricsWithCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unable to gather multi-user metrics. Unable to determine home users and their voice settings", buf, 0xCu);
    }

    v9 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6014 userInfo:&__NSDictionary0__struct];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_1002A7D20(uint64_t a1)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(a1 + 32) objectForKey:{*(*(&v21 + 1) + 8 * i), v21}];
        if ([v8 integerValue] == 1)
        {
          ++v5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v35 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = [*(a1 + 40) _countVoiceProfiles];
  v10 = [*(*(a1 + 40) + 48) homeMembers];
  v11 = [v10 count];

  v12 = [*(*(a1 + 40) + 48) homeMembers];
  v13 = [v12 containsObject:*(*(a1 + 40) + 24)];

  v14 = AFSiriLogContextDaemon;
  if (v13)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[ADMultiUserService triggerMultiUserMetricsWithCompletion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Unknown user will be substracted from multiuser count", buf, 0xCu);
      v14 = AFSiriLogContextDaemon;
    }

    --v11;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v28 = "[ADMultiUserService triggerMultiUserMetricsWithCompletion:]_block_invoke";
    v29 = 2048;
    v30 = v5;
    v31 = 2048;
    v32 = v11;
    v33 = 2048;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Voice Recognition enabled users count: %ld, multi-user members count: %ld, voice profiles count: %ld", buf, 0x2Au);
  }

  v15 = +[AFAnalytics sharedAnalytics];
  v25[0] = @"voice recognition enabled users count";
  v16 = [NSNumber numberWithInteger:v5];
  v26[0] = v16;
  v25[1] = @"multi users count";
  v17 = [NSNumber numberWithUnsignedInteger:v11];
  v26[1] = v17;
  v25[2] = @"voice profiles count";
  v18 = [NSNumber numberWithUnsignedInteger:v9];
  v26[2] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
  [v15 logEventWithType:6114 context:v19];

  return (*(*(a1 + 48) + 16))();
}

id sub_1002A8164(uint64_t a1)
{
  result = [*(a1 + 32) _updateVoiceProfileInfo];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _updateSAMultiUserInfo];
  }

  return result;
}

void sub_1002A8250(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315395;
    v6 = "[ADMultiUserService _removeGhostVoiceProfiles]_block_invoke";
    v7 = 2113;
    v8 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s removing ghost voice profile for sharedUserID %{private}@", &v5, 0x16u);
  }

  [*(a1 + 32) _removeVoiceProfileIfNeeded:v3 forLanguageCode:0];
}

void sub_1002A8760(uint64_t a1)
{
  if (*(a1 + 32) && ([*(a1 + 40) _allUsersBySharedUserID], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "objectForKey:", *(a1 + 32)), v3 = objc_claimAutoreleasedReturnValue(), v2, v3) || *(a1 + 48) && ((objc_msgSend(*(*(a1 + 40) + 208), "iCloudAltDSID"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *(a1 + 48)), v4, v6 = *(a1 + 40), !v5) ? (objc_msgSend(*(v6 + 272), "objectForKey:", *(a1 + 48)), v7 = objc_claimAutoreleasedReturnValue()) : (v7 = *(v6 + 208)), (v3 = v7) != 0))
  {
    v8 = [v3 sharedUserID];
    v9 = [v3 companionAssistantID];
    v10 = [NSString stringWithFormat:@"%@%@%@", v8, *(a1 + 56), v9];
    v11 = [@"*o+2$Tf?6M_mo" dataUsingEncoding:4];
    v12 = [v10 uppercaseString];
    v13 = [v12 dataUsingEncoding:4];

    v14 = AFSecurityDigestData();
    v15 = 0;
    if (v15)
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "[ADMultiUserService getLoggableIdentiferForUserWithSharedUserID:iCloudAltDSID:sessionID:completion:]_block_invoke";
        v24 = 2112;
        v25 = v15;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed to generate loggable identifier due to error: %@", buf, 0x16u);
      }

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v18 = *(a1 + 64);
      v19 = [NSString hexStringFromData:v14];
      (*(v18 + 16))(v18, v19);
    }
  }

  else
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 48);
      v21 = *(a1 + 32);
      *buf = 136315651;
      v23 = "[ADMultiUserService getLoggableIdentiferForUserWithSharedUserID:iCloudAltDSID:sessionID:completion:]_block_invoke";
      v24 = 2113;
      v25 = v20;
      v26 = 2113;
      v27 = v21;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s No user found with iCloudAltDSID: %{private}@ sharedUserID:%{private}@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_1002A8CB4(uint64_t a1)
{
  v2 = [*(a1 + 32) _getUserAgentStringForSharedUserID:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

uint64_t sub_1002A8E40(uint64_t a1)
{
  v2 = [*(a1 + 32) _getUserAgentStringForSharedUserID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1002A8FEC(uint64_t a1)
{
  v2 = +[NSProcessInfo processInfo];
  [v2 systemUptime];
  v4 = v3;

  v5 = *(a1 + 32);
  v6 = *(v5 + 96);
  if ((v6 == 0.0 || v4 - v6 >= 3600.0) && *(v5 + 104) <= 2uLL)
  {
    *(v5 + 96) = v4;
    v7 = dispatch_time(0, 60000000000);
    v8 = *(a1 + 32);
    v9 = *(v8 + 248);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A90DC;
    block[3] = &unk_10051DFE8;
    block[4] = v8;
    dispatch_after(v7, v9, block);
  }
}

id sub_1002A90DC(uint64_t a1)
{
  [*(a1 + 32) _removeGhostVoiceProfiles];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[ADMultiUserService voiceProfilesOutOfSync]_block_invoke_2";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Starting a download.", buf, 0xCu);
  }

  ++*(*(a1 + 32) + 104);
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002A91F8;
  v5[3] = &unk_10051B778;
  v5[4] = v3;
  return [v3 _forceCloudSyncedUserDownload:v5];
}

void sub_1002A91F8(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[ADMultiUserService voiceProfilesOutOfSync]_block_invoke";
    v7 = 1024;
    v8 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s download status is (%d)", &v5, 0x12u);
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    *(*(a1 + 32) + 104) = 0;
  }

LABEL_4:
  *(*(a1 + 32) + 96) = 0;
}

id sub_1002A934C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[ADMultiUserService resetAllUsers]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  [*(a1 + 32) _resetAllUsers];
  [*(a1 + 32) _updateSAMultiUserInfo];
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002A9460;
  v5[3] = &unk_10051B778;
  v5[4] = v3;
  return [v3 _forceCloudSyncedUserDownload:v5];
}

void sub_1002A9460(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_time(0, 30000000000);
    v4 = *(a1 + 32);
    v5 = *(v4 + 248);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002A94FC;
    block[3] = &unk_10051DFE8;
    block[4] = v4;
    dispatch_after(v3, v5, block);
  }
}

void sub_1002A9900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1002A992C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = [v2 homeMembers];
    *(*(*(a1 + 80) + 8) + 24) = [v3 count];

    v4 = *(*(a1 + 80) + 8);
    v5 = *(v4 + 24);
    if (v5)
    {
      *(v4 + 24) = v5 - 1;
    }
  }

  if (*(a1 + 40))
  {
    v6 = [*(*(a1 + 32) + 200) objectForKey:?];
    v7 = [*(*(a1 + 32) + 208) sharedUserID];
    v8 = [v7 isEqualToString:*(a1 + 40)];

    v9 = AFSiriLogContextDaemon;
    v10 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    if ((v8 & 1) != 0 || v6)
    {
      if (v10)
      {
        v48 = *(a1 + 40);
        *buf = 136315395;
        v59 = "[ADMultiUserService validateAndReturnScores:classifiedUser:donatedScores:unknownUserSharedId:totalUsers:ghostVoiceProfileDetected:]_block_invoke";
        v60 = 2113;
        v61 = v48;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s classifiedUser %{private}@ is enrolled, no cleanup needed", buf, 0x16u);
      }
    }

    else
    {
      if (v10)
      {
        v49 = *(a1 + 40);
        *buf = 136315395;
        v59 = "[ADMultiUserService validateAndReturnScores:classifiedUser:donatedScores:unknownUserSharedId:totalUsers:ghostVoiceProfileDetected:]_block_invoke";
        v60 = 2113;
        v61 = v49;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s classifiedUser %{private}@ is not enrolled, its voice profile will be removed", buf, 0x16u);
      }

      [*(a1 + 32) _trackGhostVoiceProfile:*(a1 + 40)];
      v11 = *(a1 + 96);
      if (v11)
      {
        *v11 = 1;
      }
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = *(a1 + 48);
  v12 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v55;
    *&v13 = 136315651;
    v50 = v13;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v55 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v54 + 1) + 8 * i);
        v18 = [*(*(a1 + 32) + 200) objectForKey:{v17, v50}];
        if (v18)
        {

LABEL_22:
          v21 = +[NSMutableDictionary dictionary];
          v22 = [*(*(a1 + 32) + 200) objectForKey:v17];
          v23 = AFSiriLogContextDaemon;
          v24 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
          if (v22)
          {
            if (v24)
            {
              v25 = v23;
              v26 = [v22 sharedUserID];
              *buf = 136315394;
              v59 = "[ADMultiUserService validateAndReturnScores:classifiedUser:donatedScores:unknownUserSharedId:totalUsers:ghostVoiceProfileDetected:]_block_invoke";
              v60 = 2112;
              v61 = v26;
              _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s Using shared user %@.", buf, 0x16u);
            }

            goto LABEL_28;
          }

          if (v24)
          {
            v41 = *(*(a1 + 32) + 208);
            v42 = v23;
            v43 = [v41 sharedUserID];
            *buf = 136315394;
            v59 = "[ADMultiUserService validateAndReturnScores:classifiedUser:donatedScores:unknownUserSharedId:totalUsers:ghostVoiceProfileDetected:]_block_invoke";
            v60 = 2112;
            v61 = v43;
            _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "%s Using primary user %@.", buf, 0x16u);
          }

          v22 = *(*(a1 + 32) + 208);
          if (v22)
          {
LABEL_28:
            v27 = [v22 companionAssistantID];

            if (v27 && (v28 = *(a1 + 56), [v22 companionAssistantID], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "objectForKey:", v29), v30 = objc_claimAutoreleasedReturnValue(), v29, v30) || (objc_msgSend(v22, "companionIDSIdentifier"), v31 = objc_claimAutoreleasedReturnValue(), v31, v31) && (v32 = *(a1 + 56), objc_msgSend(v22, "companionIDSIdentifier"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "objectForKey:", v33), v30 = objc_claimAutoreleasedReturnValue(), v33, v30))
            {
              if ([v30 count])
              {
                v34 = [v30 objectAtIndex:0];
                [v21 setObject:v34 forKey:@"companion_device_score"];
              }

              else
              {
                v38 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
                {
                  log = v38;
                  v51 = [v22 companionAssistantID];
                  v44 = [v22 companionIDSIdentifier];
                  *buf = v50;
                  v59 = "[ADMultiUserService validateAndReturnScores:classifiedUser:donatedScores:unknownUserSharedId:totalUsers:ghostVoiceProfileDetected:]_block_invoke";
                  v60 = 2113;
                  v61 = v51;
                  v62 = 2113;
                  v63 = v44;
                  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s Empty Score array from assistantId %{private}@ idsIdentifier %{private}@", buf, 0x20u);
                }
              }

LABEL_42:
            }

            else
            {
              v35 = [*(a1 + 56) objectForKey:v17];
              if (v35)
              {
                v30 = v35;
                [v21 setObject:v35 forKey:@"nearby_devices_scores"];
                goto LABEL_42;
              }
            }
          }

          [*(a1 + 64) setObject:v21 forKey:v17];
          v39 = *(a1 + 72);
          v40 = [*(a1 + 48) objectForKey:v17];
          [v39 setObject:v40 forKey:v17];

          continue;
        }

        v19 = [*(*(a1 + 32) + 208) sharedUserID];
        v20 = [v19 isEqualToString:v17];

        if (v20)
        {
          goto LABEL_22;
        }

        v36 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315395;
          v59 = "[ADMultiUserService validateAndReturnScores:classifiedUser:donatedScores:unknownUserSharedId:totalUsers:ghostVoiceProfileDetected:]_block_invoke";
          v60 = 2113;
          v61 = v17;
          _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%s Ghost voice profile detected for sharedUserID (%{private}@)", buf, 0x16u);
        }

        [*(a1 + 32) _trackGhostVoiceProfile:v17];
        v37 = *(a1 + 96);
        if (v37)
        {
          *v37 = 1;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v14);
  }

  v45 = [*(*(a1 + 32) + 24) sharedUserId];
  v46 = *(*(a1 + 88) + 8);
  v47 = *(v46 + 40);
  *(v46 + 40) = v45;
}

void sub_1002AA08C(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(*(a1 + 32) + 200);
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v14 = *v19;
    do
    {
      v4 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(a1 + 32) + 200) objectForKey:*(*(&v18 + 1) + 8 * v4)];
        v6 = [ADCommunalDeviceUser saRemoteDeviceForHomeMember:v5];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1002AA2D4;
        v15[3] = &unk_1005199B8;
        v7 = v6;
        v16 = v7;
        v8 = v5;
        v17 = v8;
        v9 = [AFPeerInfo newWithBuilder:v15];
        v10 = +[ADCompanionService sharedInstance];
        v11 = [[ADPeerInfo alloc] initWithAFPeerInfo:v9];
        v12 = [v10 discoveryTypeForPeer:v11];

        if (v12)
        {
          [v7 setDiscoveryMode:v12];
        }

        if (v7 && [v8 voiceIDAllowedByUser])
        {
          [*(a1 + 40) addObject:v7];
        }

        v4 = v4 + 1;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }
}

void sub_1002AA2D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 assistantId];
  [v4 setAssistantIdentifier:v5];

  v6 = [*(a1 + 40) companionIDSIdentifier];
  [v4 setIdsDeviceUniqueIdentifier:v6];
}

void sub_1002AA858(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ADHomeInfoManager sharedInfoManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002AA924;
  v7[3] = &unk_100519968;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 getCurrentHomeMemberIds:v7];
}

void sub_1002AA924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ADPreferences sharedPreferences];
  v5 = [v4 sharedUserIdentifier];
  v6 = v5;
  v7 = AFMultiUserDefaultSharedUserId;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = AFMultiUserDefaultSharedUserId;
  }

  v17 = v8;

  v9 = +[ADPreferences sharedPreferences];
  v10 = [v9 loggingSharedUserIdentifier];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12;

  v14 = [*(a1 + 32) _generateDeviceUserWithHomeUserUUID:v3 sharedUserId:v17 loggableSharedUserId:v13 adaccount:*(a1 + 40)];

  v15 = *(a1 + 48);
  v16 = [ADCommunalDeviceUser saMultiUserInfo:v14];
  (*(v15 + 16))(v15, v16);
}

uint64_t sub_1002AAB40(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_1002AAE64(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1002AAF24(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 208);
  if (v2)
  {
    v3 = [v2 sharedUserID];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(*(a1 + 32) + 200);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(a1 + 32) + 200) objectForKey:{*(*(&v12 + 1) + 8 * v9), v12}];
        v11 = [v10 sharedUserID];

        if (v11)
        {
          [v4 addObject:v11];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002AB154(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 208);
  if (v3 || (v3 = *(v2 + 216)) != 0)
  {
    v4 = [v3 sharedUserID];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(*(a1 + 40) + 16))();
}

void sub_1002AB274(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  if (v4)
  {
    v5 = sub_1002A0F2C(v4, *(v3 + 144));
    v6 = 208;
  }

  else
  {
    v7 = *(v3 + 216);
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = *(v3 + 152);
    v9 = [*(v3 + 216) sharedUserID];
    v10 = [v8 objectForKeyedSubscript:v9];
    v5 = sub_1002A0F2C(v7, v10);

    v6 = 216;
  }

  v11 = [*(*(a1 + 32) + v6) sharedUserID];
  [v2 setObject:v5 forKey:v11];

  v3 = *(a1 + 32);
LABEL_6:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = *(v3 + 200);
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(a1 + 32) + 200) objectForKey:{*(*(&v24 + 1) + 8 * v16), v24}];
        v18 = v17;
        if (v17)
        {
          v19 = *(*(a1 + 32) + 152);
          v20 = [v17 sharedUserID];
          v21 = [v19 objectForKeyedSubscript:v20];
          v22 = sub_1002A0F2C(v18, v21);

          v23 = [v18 sharedUserID];
          [v2 setObject:v22 forKey:v23];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002AB570(uint64_t a1)
{
  v40 = objc_alloc_init(NSMutableArray);
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 208);
    v4 = v2;
    v5 = [v3 loggableDictionary];
    *buf = 136315395;
    v50 = "[ADMultiUserService showMultiUsersWithCompletion:]_block_invoke";
    v51 = 2113;
    v52 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s primaryUser:%{private}@:", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  if (*(v6 + 208))
  {
    v7 = [*(a1 + 32) _augmentUserPropertiesWithHomeInfoForUser:?];
    [v40 addObject:v7];

    v6 = *(a1 + 32);
  }

  v8 = *(v6 + 216);
  if (v8 && !*(v6 + 208))
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [v8 loggableDictionary];
      *buf = 136315395;
      v50 = "[ADMultiUserService showMultiUsersWithCompletion:]_block_invoke";
      v51 = 2113;
      v52 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Device Owner:%{private}@:", buf, 0x16u);

      v6 = *(a1 + 32);
      v8 = *(v6 + 216);
    }

    v12 = [v6 _augmentUserPropertiesWithHomeInfoForUser:v8];
    [v40 addObject:v12];

    v6 = *(a1 + 32);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = *(v6 + 200);
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v46;
    *&v15 = 136315395;
    v38 = v15;
    do
    {
      v18 = 0;
      do
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = [*(*(a1 + 32) + 200) objectForKey:{*(*(&v45 + 1) + 8 * v18), v38}];
        v20 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v21 = v20;
          v22 = [v19 loggableDictionary];
          *buf = v38;
          v50 = "[ADMultiUserService showMultiUsersWithCompletion:]_block_invoke";
          v51 = 2113;
          v52 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s sharedUser:%{private}@:", buf, 0x16u);
        }

        if (v19)
        {
          v23 = [*(a1 + 32) _augmentUserPropertiesWithHomeInfoForUser:v19];
          [v40 addObject:v23];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v13 countByEnumeratingWithState:&v45 objects:v56 count:16];
    }

    while (v16);
  }

  if (AFIsATV())
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v24 = *(*(a1 + 32) + 272);
    v25 = [v24 countByEnumeratingWithState:&v41 objects:v55 count:16];
    if (v25)
    {
      v27 = v25;
      v28 = *v42;
      *&v26 = 136315651;
      v39 = v26;
      do
      {
        v29 = 0;
        do
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = [*(*(a1 + 32) + 272) objectForKey:{*(*(&v41 + 1) + 8 * v29), v39}];
          v31 = v30;
          if (v30)
          {
            v32 = [v30 sharedUserID];

            if (!v32)
            {
              v33 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                v34 = v33;
                v35 = [v31 dictionaryRepresentation];
                v36 = [v31 iCloudAltDSID];
                *buf = v39;
                v50 = "[ADMultiUserService showMultiUsersWithCompletion:]_block_invoke";
                v51 = 2113;
                v52 = v35;
                v53 = 2112;
                v54 = v36;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s [cloud-only]sharedUser:%{private}@ %@", buf, 0x20u);
              }

              v37 = [*(a1 + 32) _augmentUserPropertiesWithHomeInfoForUser:v31];
              [v40 addObject:v37];
            }
          }

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [v24 countByEnumeratingWithState:&v41 objects:v55 count:16];
      }

      while (v27);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002AC084(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 200) objectForKey:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = 0;
  [v3 _removeUser:v2 homeUserID:0 sharedUserID:v4 iCloudAltDSID:0 error:&v7];
  v5 = v7;
  if (!v5)
  {
    [*(a1 + 32) _postRemovalStateCleanup];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void sub_1002AC290(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 264) objectForKey:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = 0;
  [v3 _removeUser:v2 homeUserID:v4 sharedUserID:0 iCloudAltDSID:0 error:&v7];
  v5 = v7;
  if (!v5)
  {
    [*(a1 + 32) _postRemovalStateCleanup];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

id sub_1002ACCD8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = @"owner";
  }

  else
  {
    v1 = @"participant";
  }

  v6[0] = @"user";
  v6[1] = @"timestamp";
  v7[0] = v1;
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v3 = [NSNumber numberWithDouble:?];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_1002ACF50(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = a1;
  obj = *(*(a1 + 32) + 264);
  v23 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v23)
  {
    v3 = 0;
    v22 = *v35;
    do
    {
      v4 = 0;
      v5 = v3;
      do
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v4;
        v3 = [*(*(v24 + 32) + 264) objectForKey:*(*(&v34 + 1) + 8 * v4)];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v6 = *(v24 + 40);
        v7 = [v6 countByEnumeratingWithState:&v30 objects:v43 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v31;
          do
          {
            v10 = 0;
            do
            {
              if (*v31 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v30 + 1) + 8 * v10);
              v12 = [v3 shareOwnerName];
              v13 = [v12 isEqualToString:v11];

              if (v13)
              {
                v14 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v40 = "[ADMultiUserService removeUserWithShareOwnerNames:completion:]_block_invoke";
                  v41 = 2112;
                  v42 = v11;
                  _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Adding (%@) for removal", buf, 0x16u);
                }

                [v2 addObject:v3];
              }

              v10 = v10 + 1;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v30 objects:v43 count:16];
          }

          while (v8);
        }

        v4 = v25 + 1;
        v5 = v3;
      }

      while ((v25 + 1) != v23);
      v23 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v23);
  }

  if ([v2 count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v2;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(v24 + 32) _removeUser:*(*(&v26 + 1) + 8 * i) homeUserID:0 sharedUserID:0 iCloudAltDSID:0 error:0];
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v17);
    }

    [*(v24 + 32) _postRemovalStateCleanup];
  }

  v20 = *(v24 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, 0);
  }
}

void sub_1002AD3B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  *(v2 + 216) = 0;

  v4 = +[ADPreferences sharedPreferences];
  [v4 setDeviceOwner:0];

  [*(a1 + 32) _saveDeviceOwnerToKeychainCache];
  v5 = +[ADAnalyticsIdentifiersProvider sharedInstance];
  [v5 removeObserver:*(a1 + 32) foriCloudAltDSId:0];
}

void sub_1002AE33C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 88) == 1)
  {
    LOBYTE(v9) = 1;
    [v2 _addUser:v3 sharedUserId:*(a1 + 48) loggableSharedUserId:*(a1 + 56) iCloudAltDSID:*(a1 + 64) enrollmentName:*(a1 + 72) isPrimary:*(a1 + 89) nonCloudSyncedUser:v9 completion:*(a1 + 80)];
  }

  else
  {
    v4 = *(a1 + 64);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002AE4A4;
    v11[3] = &unk_1005198F8;
    v16 = *(a1 + 80);
    v10 = *(a1 + 32);
    v5 = *(&v10 + 1);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v12 = v10;
    v13 = v8;
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v17 = *(a1 + 89);
    v18 = *(a1 + 88);
    [v2 _allowVoiceIdentificationForThisUser:v3 iCloudAltDSID:v4 completion:v11];
  }
}

uint64_t sub_1002AE4A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      goto LABEL_6;
    }

    v7 = v3;
    v4 = v4[2]();
  }

  else
  {
    LOBYTE(v6) = *(a1 + 89);
    v7 = 0;
    v4 = [*(a1 + 32) _addUser:*(a1 + 40) sharedUserId:*(a1 + 48) loggableSharedUserId:*(a1 + 56) iCloudAltDSID:*(a1 + 64) enrollmentName:*(a1 + 72) isPrimary:*(a1 + 88) nonCloudSyncedUser:v6 completion:*(a1 + 80)];
  }

  v3 = v7;
LABEL_6:

  return _objc_release_x1(v4, v3);
}

void sub_1002AFB6C(id a1)
{
  v1 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[ADMultiUserService _deleteShareForUser:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s Share removal operation complete.", &v2, 0xCu);
  }
}

void sub_1002B0034(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 248);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002B0114;
  block[3] = &unk_10051D2A0;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_1002B0114(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = *(a1 + 40);
  if (v2 && [v2 count])
  {
    v3 = [*(a1 + 40) objectForKey:*(a1 + 48)];
    if (v3)
    {
      v4 = v3;
      if (AFIsATV() && +[AFFeatureFlags isLassoEnabled](AFFeatureFlags, "isLassoEnabled") && [*(*(a1 + 32) + 88) isEqualToString:*(a1 + 56)])
      {
        v5 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v6 = *(a1 + 56);
          v22 = 136315394;
          v23 = "[ADMultiUserService _allowVoiceIdentificationForThisUser:iCloudAltDSID:completion:]_block_invoke";
          v24 = 2112;
          v25 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Set RMV enabled for the user requested during buddy flow with iCloudAltDSID%@", &v22, 0x16u);
        }

        v7 = [v4 mutableCopy];
        [v7 setObject:&off_100533F20 forKey:@"allowVoiceID"];
        [*(a1 + 40) setObject:v7 forKey:*(a1 + 48)];

        v4 = v7;
      }

      v8 = [v4 objectForKey:@"allowVoiceID"];
      v9 = v8;
      if (v8 && [v8 integerValue] == 1)
      {
        v10 = *(a1 + 64);
        if (v10)
        {
          (*(v10 + 16))(v10, 0);
        }
      }

      else
      {
        v16 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v17 = *(a1 + 48);
          v22 = 136315394;
          v23 = "[ADMultiUserService _allowVoiceIdentificationForThisUser:iCloudAltDSID:completion:]_block_invoke";
          v24 = 2112;
          v25 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s VoiceID disallowed on fresh retrieval for (%@)", &v22, 0x16u);
        }

        v18 = *(a1 + 64);
        if (v18)
        {
          v19 = [NSError errorWithDomain:kAFAssistantErrorDomain code:6010 userInfo:&__NSDictionary0__struct];
          (*(v18 + 16))(v18, v19);
        }
      }

      goto LABEL_24;
    }

    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 48);
      v22 = 136315394;
      v23 = "[ADMultiUserService _allowVoiceIdentificationForThisUser:iCloudAltDSID:completion:]_block_invoke";
      v24 = 2112;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Missing setting even on fresh retrieval (%@)", &v22, 0x16u);
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = kAFAssistantErrorDomain;
      v15 = 6008;
      goto LABEL_18;
    }
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 48);
      v22 = 136315394;
      v23 = "[ADMultiUserService _allowVoiceIdentificationForThisUser:iCloudAltDSID:completion:]_block_invoke_2";
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Missing all settings for (%@)", &v22, 0x16u);
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = kAFAssistantErrorDomain;
      v15 = 6009;
LABEL_18:
      v4 = [NSError errorWithDomain:v14 code:v15 userInfo:&__NSDictionary0__struct];
      (*(v13 + 16))(v13, v4);
LABEL_24:
    }
  }
}

void sub_1002B2018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002B2044(uint64_t a1, void *a2)
{
  v3 = [a2 homeMemberSettings];
  if (!v3)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

id sub_1002B4600(uint64_t a1)
{
  result = [*(a1 + 32) _countVoiceProfiles];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1002B5548(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = @"failed";
    v7 = 136315650;
    v8 = "[ADMultiUserService _forceCloudSyncedUserDownload:]_block_invoke";
    v9 = 2112;
    if (!v3)
    {
      v5 = @"succeeded";
    }

    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Download %@ with error: %@", &v7, 0x20u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3 == 0);
  }
}

void sub_1002B6294(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v2[25])
    {
      v3 = v2[34];
      if (v3)
      {
        v4 = [v3 objectForKeyedSubscript:?];
        v5 = [*(a1 + 48) userEphemeralId];
        v6 = [v5 UUIDString];
        [v4 setEphemeralID:v6];

        v7 = [*(a1 + 48) userAggregationId];
        v8 = [v7 UUIDString];
        [v4 setAggregationID:v8];

        v9 = [v4 sharedUserID];

        if (v9)
        {
          v10 = [v4 sharedUserID];
          v11 = [*(*(a1 + 40) + 200) objectForKeyedSubscript:v10];
          v12 = [*(a1 + 48) userEphemeralId];
          v13 = [v12 UUIDString];
          [v11 setEphemeralID:v13];

          v14 = [*(*(a1 + 40) + 200) objectForKeyedSubscript:v10];
          v15 = [*(a1 + 48) userAggregationId];
          v16 = [v15 UUIDString];
          [v14 setAggregationID:v16];

          v18 = *(a1 + 40);
          v17 = *(a1 + 48);
          v19 = *(a1 + 32);
          v20 = [v4 sharedUserID];
          [v18 onUserAnalyticsIdsChanged:v17 iCloudAltDSId:v19 sharedUserId:v20];
        }

        else
        {
          v29 = *(a1 + 32);
          v30 = *(a1 + 40);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_1002B656C;
          v34[3] = &unk_100519838;
          v31 = v29;
          v32 = *(a1 + 40);
          v33 = *(a1 + 48);
          v35 = v31;
          v36 = v32;
          v37 = v33;
          [v30 getSharedUserIdForiCloudAltDSID:v31 completion:v34];
        }
      }
    }
  }

  else
  {
    v21 = v2[27];
    if (v21)
    {
      v22 = [*(a1 + 48) userEphemeralId];
      v23 = [v22 UUIDString];
      [v21 setEphemeralID:v23];

      v24 = *(*(a1 + 40) + 216);
      v25 = [*(a1 + 48) userAggregationId];
      v26 = [v25 UUIDString];
      [v24 setAggregationID:v26];

      v27 = *(a1 + 40);
      v28 = *(a1 + 48);

      [v27 onUserAnalyticsIdsChanged:v28 iCloudAltDSId:0 sharedUserId:0];
    }
  }
}

void sub_1002B656C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 136315907;
      v15 = "[ADMultiUserService didReceiveIDs:forUser:]_block_invoke_2";
      v16 = 2113;
      v17 = v6;
      v18 = 2113;
      v19 = v13;
      v20 = 2112;
      v21 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Encountered error when retrieving sharedUserId(%{private}@) for iCloudAltDSId(%{private}@): %@", &v14, 0x2Au);
    }
  }

  v8 = [*(*(a1 + 40) + 272) objectForKeyedSubscript:v6];
  v9 = [*(a1 + 48) userEphemeralId];
  v10 = [v9 UUIDString];
  [v8 setEphemeralID:v10];

  v11 = [*(a1 + 48) userAggregationId];
  v12 = [v11 UUIDString];
  [v8 setAggregationID:v12];

  [*(a1 + 40) onUserAnalyticsIdsChanged:*(a1 + 48) iCloudAltDSId:*(a1 + 32) sharedUserId:v6];
}

void sub_1002B726C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADMultiUserService _refreshUsersAndVoiceProfiles:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Removed (%@) with error (%@)", &v6, 0x20u);
  }
}

void sub_1002B7344(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[ADMultiUserService _refreshUsersAndVoiceProfiles:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      v11 = 2112;
      v12 = v5;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s There was an error %@ adding %@", &v7, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[ADMultiUserService _refreshUsersAndVoiceProfiles:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Added %@", &v7, 0x16u);
  }
}

id sub_1002B7480(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[ADMultiUserService _refreshUsersAndVoiceProfiles:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Configured LiveOn Users.", &v4, 0xCu);
    }
  }

  return [*(a1 + 40) _updateSAMultiUserInfo];
}

id sub_1002B75B4(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADMultiUserService refreshHomeKitOnboardedUsers]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 280);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002B76BC;
  v6[3] = &unk_100519810;
  v6[4] = v3;
  return [v4 settingsForMultiUserWithRefresh:1 completion:v6];
}

void sub_1002B76BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v12 = "[ADMultiUserService refreshHomeKitOnboardedUsers]_block_invoke";
    v13 = 2113;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s userSettings = %{private}@", buf, 0x16u);
  }

  v5 = [*(*(a1 + 32) + 88) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 248);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002B7808;
  v9[3] = &unk_10051E010;
  v9[4] = v6;
  v10 = v3;
  v8 = v3;
  dispatch_async(v7, v9);
}

void sub_1002B7808(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v26 = +[NSMutableArray array];
  [*(a1 + 32) _updateHomeKitSettingsForDeviceOwner];
  if (![*(a1 + 32) _isHostingMultiUserLanguage])
  {
    goto LABEL_43;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = v3;
  v6 = 0;
  v27 = 0;
  v7 = *v31;
  *&v4 = 136315138;
  v25 = v4;
  obj = v2;
  do
  {
    v8 = 0;
    do
    {
      if (*v31 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v30 + 1) + 8 * v8);
      v10 = [*(*(a1 + 32) + 264) objectForKey:{v9, v25}];
      v11 = [*(*(a1 + 32) + 32) objectForKey:v9];
      v12 = [v11 objectForKey:@"allowVoiceID"];
      v13 = [*(a1 + 32) personalDomainSettingsDidChange:v10 newUserSettings:v11];
      if (([*(a1 + 32) _updateHomeKitSettings:v9] & 1) == 0 && !AFIsATV())
      {
        if (!v11 || [v12 integerValue] != 1)
        {
          goto LABEL_27;
        }

        v16 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = v25;
          v35 = "[ADMultiUserService refreshHomeKitOnboardedUsers]_block_invoke";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s New user participating in multi-user", buf, 0xCu);
        }

        [*(a1 + 32) _trackHomeUserUUIDForInFlightVoiceProfile:v9];
        v17 = +[AFAnalytics sharedAnalytics];
        [v17 logEventWithType:6109 contextProvider:&stru_1005197E8];

        goto LABEL_21;
      }

      if (!v11)
      {
        goto LABEL_27;
      }

      if ([v12 integerValue] == 1)
      {
        if ((v6 & 1) != 0 || [v12 integerValue] != 1)
        {
          v27 |= v13;
          goto LABEL_27;
        }

        if ([v10 nonCloudSyncedUser] & 1) != 0 || (v14 = *(*(a1 + 32) + 240), objc_msgSend(v10, "sharedUserID"), v15 = objc_claimAutoreleasedReturnValue(), LOBYTE(v14) = objc_msgSend(v14, "isSATEnrolledForSiriProfileId:forLanguageCode:", v15, *(*(a1 + 32) + 288)), v15, (v14))
        {
          v6 = 0;
          goto LABEL_27;
        }

        v18 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = v25;
          v35 = "[ADMultiUserService refreshHomeKitOnboardedUsers]_block_invoke";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s newUsersJoined", buf, 0xCu);
        }

        v19 = os_signpost_id_generate(AFSiriLogContextMultiUser);
        v20 = AFSiriLogContextMultiUser;
        v21 = v20;
        if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "MultiUserService", "New user was added", buf, 2u);
        }

        *(*(a1 + 32) + 16) = v19;
LABEL_21:
        if (AFIsATV())
        {
          [v26 addObject:v9];
        }

        v6 = 1;
        goto LABEL_27;
      }

      if (([v10 nonCloudSyncedUser] & 1) == 0)
      {
        [*(a1 + 32) removeUserWithHomeUUID:v9 completion:&stru_1005197A8];
      }

LABEL_27:

      v8 = v8 + 1;
    }

    while (v5 != v8);
    v22 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    v5 = v22;
  }

  while (v22);

  if (v6)
  {
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = v25;
      v35 = "[ADMultiUserService refreshHomeKitOnboardedUsers]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Triggering download", buf, 0xCu);
    }

    v24 = *(a1 + 32);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1002B7CF4;
    v29[3] = &unk_10051B778;
    v29[4] = v24;
    [v24 _forceCloudSyncedUserDownload:v29];
  }

  if (v27)
  {
    [*(a1 + 32) _saveSharedUsers];
    [*(a1 + 32) _updateSAMultiUserInfo];
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"ADMultiUsersDidChangeNotification" object:0];
LABEL_42:
  }

LABEL_43:
}

void sub_1002B7CF4(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 248);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002B7D6C;
  v4[3] = &unk_10051CBD8;
  v5 = a2;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

void sub_1002B7D6C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v10 = 136315394;
    v11 = "[ADMultiUserService refreshHomeKitOnboardedUsers]_block_invoke_2";
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Download completed, success: %{BOOL}d", &v10, 0x12u);
  }

  [*(a1 + 32) _untrackAllHomeUserUUIDsForInFlightVoiceProfile];
  v4 = AFSiriLogContextMultiUser;
  v5 = v4;
  v6 = *(*(a1 + 32) + 16);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "MultiUserService", "Cloud sync finished", &v10, 2u);
  }

  if (*(a1 + 40) == 1)
  {
    v7 = AFSiriLogContextMultiUser;
    v8 = v7;
    v9 = *(*(a1 + 32) + 8);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "MultiUserService", "MultiUser is ready", &v10, 2u);
    }

    [*(a1 + 32) _updateSAMultiUserInfo];
  }
}

NSDictionary *__cdecl sub_1002B7F1C(id a1)
{
  v5 = @"date";
  v1 = +[NSDate date];
  v2 = [NSDateFormatter localizedStringFromDate:v1 dateStyle:1 timeStyle:4];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void sub_1002B7FF8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[ADMultiUserService refreshHomeKitOnboardedUsers]_block_invoke_2";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Error when removing user (%@)", &v4, 0x16u);
    }
  }
}

void sub_1002B81CC(id a1, BOOL a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[ADMultiUserService _currentHomeIsReady:]_block_invoke_2";
    v6 = 1024;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s status:%d", &v4, 0x12u);
  }
}

void sub_1002B82FC(uint64_t a1)
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[ADMultiUserService _primaryUserSharedUserIdentifierDidChangeNotification:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = AFIsInternalInstall();
  v5 = *(a1 + 32);
  if (!v4 || (*(v5 + 84) & 1) == 0)
  {
    if (!*(v5 + 208))
    {
LABEL_15:
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1002B8540;
      v12[3] = &unk_10051B778;
      v12[4] = v5;
      [v5 _forceCloudSyncedUserDownload:v12];
      goto LABEL_17;
    }

    v6 = [v2 sharedUserIdentifier];
    v7 = [v2 loggingSharedUserIdentifier];
    v8 = [*(*(a1 + 32) + 208) sharedUserID];
    if ([v6 isEqualToString:v8])
    {
      v9 = [*(*(a1 + 32) + 208) loggableSharedUserID];
      v10 = [v7 isEqualToString:v9];

      if ((v10 & 1) != 0 || !v6)
      {
        goto LABEL_16;
      }
    }

    else
    {

      if (!v6)
      {
        goto LABEL_16;
      }
    }

    if (v7)
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v14 = "[ADMultiUserService _primaryUserSharedUserIdentifierDidChangeNotification:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s SharedUserId of primary user changed. Resetting primary user.", buf, 0xCu);
      }

      [*(a1 + 32) _resetPrimaryUser];

      v5 = *(a1 + 32);
      goto LABEL_15;
    }

LABEL_16:
  }

LABEL_17:
}

void sub_1002B8540(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_time(0, 30000000000);
    v4 = *(a1 + 32);
    v5 = *(v4 + 248);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002B85DC;
    block[3] = &unk_10051DFE8;
    block[4] = v4;
    dispatch_after(v3, v5, block);
  }
}

void sub_1002B8858(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADMultiUserService _multiUserListenerShouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s MultiUser Connection Invalidated (pid=%d)", &v4, 0x12u);
  }
}

void sub_1002B8914(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADMultiUserService _multiUserListenerShouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s MultiUser Connection Interrupted (pid=%d)", &v4, 0x12u);
  }
}

uint64_t sub_1002B8D30(uint64_t a1)
{
  v2 = [*(a1 + 32) _allUsersBySharedUserID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1002B8DF0(uint64_t a1)
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 languageCode];

  if (v3 && ([v3 isEqualToString:*(*(a1 + 32) + 288)] & 1) == 0)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[ADMultiUserService _languageCodeDidChange]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Language changed to %@", &v7, 0x16u);
    }

    objc_storeStrong((*(a1 + 32) + 288), v3);
    v5 = [*(a1 + 32) _isHostingMultiUserLanguage];
    v6 = *(a1 + 32);
    if (v5)
    {
      [v6 _refreshUsersAndVoiceProfiles:1];
      [*(a1 + 32) refreshHomeKitOnboardedUsers];
    }

    else
    {
      [v6 resetAllUsers];
    }
  }
}

void sub_1002B936C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002B9394(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADMultiUserService _initWithPreferences:ssrManager:homeInfoManager:]_block_invoke";
    v6 = 2080;
    v7 = "com.apple.siri.corespeech.voiceprofilelist.change";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Handling %s notification", &v4, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshUsersAndVoiceProfiles:1];
}

void sub_1002B946C(id a1)
{
  v6 = +[SSRVoiceProfileManager sharedInstance];
  v1 = [ADMultiUserService alloc];
  v2 = +[ADPreferences sharedPreferences];
  v3 = +[ADHomeInfoManager sharedInfoManager];
  v4 = [(ADMultiUserService *)v1 _initWithPreferences:v2 ssrManager:v6 homeInfoManager:v3];
  v5 = qword_1005907D0;
  qword_1005907D0 = v4;
}

void sub_1002B9524(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 sharedUserId];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v11 sharedUserId];
    v6 = [v4 objectForKey:v5];
    v7 = [v6 mutableCopy];

    if (!v7)
    {
      v7 = +[NSMutableArray array];
    }

    v8 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v11 confidenceScore]);
    [v7 addObject:v8];

    v9 = *(a1 + 32);
    v10 = [v11 sharedUserId];
    [v9 setObject:v7 forKey:v10];
  }
}

void sub_1002B972C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dictionary];
  (*(v2 + 16))(v2, v3);
}

void sub_1002B98A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    v3 = [v2 _fetchMappedMeCard];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v6 = *(a1 + 32);
    if (*(v6 + 16))
    {
      WeakRetained = objc_loadWeakRetained((v6 + 24));
      [WeakRetained addressBookManagerDidUpdateData:*(a1 + 32) meCard:*(*(a1 + 32) + 16)];
    }
  }
}

void sub_1002B9A4C(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchMappedMeCard];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained addressBookManagerDidUpdateData:*(a1 + 32) meCard:*(*(a1 + 32) + 16)];
}

uint64_t sub_1002BA128(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    v3 = [v2 _fetchMappedMeCard];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void sub_1002BA62C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32) == 1)
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADCoreBluetoothManager peripheral:didReadRSSI:error:]_block_invoke";
      v13 = 2112;
      v14 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %@ already invalidated", &v11, 0x16u);
    }
  }

  else
  {
    v4 = [*(a1 + 40) identifier];
    v5 = [*(*(a1 + 32) + 40) objectForKey:v4];

    if (v5)
    {
      v6 = *(a1 + 48);
      if (v6)
      {
        v7 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v9 = *(a1 + 40);
          v11 = 136315650;
          v12 = "[ADCoreBluetoothManager peripheral:didReadRSSI:error:]_block_invoke";
          v13 = 2112;
          v14 = v9;
          v15 = 2112;
          v16 = v6;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Error reading RSSI for %@: %@", &v11, 0x20u);
        }
      }

      [*(a1 + 32) _didReadRSSI:*(a1 + 56) forPeripheral:*(a1 + 40)];
    }

    else
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 40);
        v11 = 136315394;
        v12 = "[ADCoreBluetoothManager peripheral:didReadRSSI:error:]_block_invoke";
        v13 = 2112;
        v14 = v10;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Read RSSI for peripheral that we didn't sign up for: %@", &v11, 0x16u);
      }
    }
  }
}

void sub_1002BAFC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained invoke];
}

void sub_1002BB20C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[ADCoreBluetoothManager _retrieveConnectedDevicesInfoOnServices:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Fatal error: ADCoreBluetoothManager is designed for one-time use!", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    objc_storeStrong((v2 + 56), *(a1 + 40));
    v4 = [AFSafetyBlock alloc];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1002BB494;
    v18[3] = &unk_100519BD8;
    v18[4] = *(a1 + 32);
    v19 = *(a1 + 48);
    v5 = [v4 initWithBlock:v18];
    objc_storeWeak((*(a1 + 32) + 64), v5);
    v6 = dispatch_time(0, 5000000000);
    v7 = *(*(a1 + 32) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002BB6A8;
    block[3] = &unk_10051DFE8;
    v17 = v5;
    v8 = v5;
    dispatch_after(v6, v7, block);
    v9 = [CBCentralManager alloc];
    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    v20 = CBCentralManagerOptionShowPowerAlertKey;
    v21 = &__kCFBooleanFalse;
    v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v13 = [v9 initWithDelegate:v10 queue:v11 options:v12];
    v14 = *(a1 + 32);
    v15 = *(v14 + 24);
    *(v14 + 24) = v13;
  }
}

void sub_1002BB494(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(*(a1 + 32) + 24) setDelegate:v2];
  v3 = *(a1 + 32);
  if (*(v3 + 32) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = v2;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [*(v3 + 40) allValues];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v18 = "[ADCoreBluetoothManager _retrieveConnectedDevicesInfoOnServices:completion:]_block_invoke";
            v19 = 2112;
            v20 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Unable to read RSSI for peripheral %@ before timeout", buf, 0x16u);
          }

          v11 = [*(a1 + 32) _adCoreBluetoothDeviceForPeripheral:v9 RSSI:0];
          [*(*(a1 + 32) + 48) addObject:v11];
          [*(*(a1 + 32) + 24) cancelPeripheralConnection:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v6);
    }

    (*(*(a1 + 40) + 16))();
    v2 = v12;
  }
}