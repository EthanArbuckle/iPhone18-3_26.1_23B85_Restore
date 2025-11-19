void sub_1001D6E10(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechManager];
  [v2 getOfflineDictationStatusIgnoringCache:*(a1 + 48) completion:*(a1 + 40)];
}

void sub_1001D6FBC(uint64_t a1)
{
  if ([*(a1 + 32) _hasOutstandingRequestId:*(a1 + 40)])
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = *(a1 + 48);

    [v2 adRequestDidReceiveTimeoutExtensionRequestWithDuration:v3];
  }

  else
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v6 = 136315394;
      v7 = "[ADCommandCenter extendRequestTimeoutBy:forRequestID:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Received unknown requestId: %@. Ignoring.", &v6, 0x16u);
    }
  }
}

void sub_1001D7320(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) refId];
  v5 = [v2 _executionContextMatchingExecutionInfo:v3 fallbackRequestID:v4];

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADCommandCenter handleCommand:withExecutionContextMatchingInfo:completion:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s matchedExecutionContext = %@", &v7, 0x16u);
  }

  [*(a1 + 32) _handleCommandAndClientReply:*(a1 + 48) executionContext:v5 commandCompletion:*(a1 + 56)];
}

uint64_t sub_1001D74BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 520) areAnnouncementRequestsPermittedByPresentationWhileActive];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t (**sub_1001D8104(void *a1))(id, void)
{
  if (*(a1[4] + 16))
  {
    return [*(a1[4] + 16) adRequestRequestedOpenApplicationWithBundleID:a1[5] URL:a1[6] completion:a1[7]];
  }

  result = a1[7];
  if (result)
  {
    return result[2](result, 0);
  }

  return result;
}

void sub_1001D81D4(uint64_t a1)
{
  v2 = [*(a1 + 32) _hasActiveClientOrSyncingOrInCall];
  v3 = [*(a1 + 32) _serviceManager];
  v4 = *(a1 + 40);
  v5 = v3;
  if (v2)
  {
    [v3 pendServiceReloadNotification:v4];
  }

  else
  {
    [v3 reloadServiceForNotification:v4];
  }
}

void sub_1001D82D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceManager];
  [v2 removeService:*(a1 + 40)];
}

void sub_1001D83C4(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceManager];
  [v2 addService:*(a1 + 40)];
}

id sub_1001D84B0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = +[AFInstanceContext currentContext];
    v33 = 136315650;
    v34 = "[ADCommandCenter clientDisconnected:]_block_invoke";
    v35 = 2048;
    v36 = v3;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %p %@", &v33, 0x20u);
  }

  v6 = *(a1 + 40);
  if (*(a1 + 32) == *(v6 + 16))
  {
    v7 = *(v6 + 520);
    *(v6 + 520) = 0;

    v8 = *(a1 + 40);
    v9 = *(v8 + 16);
    *(v8 + 16) = 0;

    [*(*(a1 + 40) + 96) setHasClient:0];
    v10 = [*(a1 + 40) _serviceManager];
    [v10 setCommandCenterClient:0];

    v11 = AFIsHorseman();
    v6 = *(a1 + 40);
    if ((v11 & 1) == 0)
    {
      v12 = [v6 _account];
      v13 = [v12 assistantIdentifier];

      if (v13)
      {
        v14 = AFDeviceSupportsCrossSession();
        v15 = AFSiriLogContextDaemon;
        if (v14)
        {
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v33 = 136315138;
            v34 = "[ADCommandCenter clientDisconnected:]_block_invoke";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Skipping end assistant session", &v33, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v33 = 136315138;
            v34 = "[ADCommandCenter clientDisconnected:]_block_invoke";
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Notify SRD to end assistant session", &v33, 0xCu);
          }

          [*(*(a1 + 40) + 888) endSessionWithAssistantId:v13];
        }
      }

      v6 = *(a1 + 40);
    }
  }

  v16 = *(a1 + 32);
  v17 = [*(v6 + 72) handle];

  if (v16 == v17)
  {
    v18 = [*(a1 + 40) _serviceManager];
    [v18 removeService:*(*(a1 + 40) + 72)];
    [*(a1 + 40) _setUIService:0];
    if (!*(*(a1 + 40) + 80))
    {
      v19 = objc_alloc_init(ADFauxUIService);
      v20 = *(a1 + 40);
      v21 = *(v20 + 80);
      *(v20 + 80) = v19;

      [v18 addService:*(*(a1 + 40) + 80)];
    }
  }

  v22 = *(a1 + 40);
  if (!*(v22 + 16))
  {
    [*(v22 + 96) setHasActiveRequest:0];
    [*(a1 + 40) _stopUpdatingMotionActivity];
    [*(a1 + 40) _resetServices];
    v23 = [*(a1 + 40) _resultObjectCache];
    [v23 clearResultObjectsForAllRequestIdsExcept:0];

    sub_10001A0C8();
    [*(a1 + 40) _processQueuedLanguageCodeAndOutputVoice];
  }

  v24 = +[AFPreferences sharedPreferences];
  v25 = [v24 assistantIsEnabled];

  v26 = +[AFPreferences sharedPreferences];
  v27 = [v26 dictationIsEnabled];

  if ((v25 & 1) != 0 || v27)
  {
    sub_100216038(@"session_did_finish_timestamp");
    v28 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v33 = 136315138;
      v34 = "[ADCommandCenter clientDisconnected:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Client disconnected, sanity checking", &v33, 0xCu);
    }

    if (v25)
    {
      [*(a1 + 40) sanityCheckAutodownloadedAssetsForced:0];
    }
  }

  v29 = AFSupportsSCDAFramework();
  v30 = SCDAMonitor_ptr;
  if (!v29)
  {
    v30 = AFMyriadMonitor_ptr;
  }

  v31 = [*v30 sharedMonitor];
  [v31 stopMonitoring];

  [*(a1 + 40) _cancelCrossDeviceRequestOperationsForRemoteRequest];
  [*(a1 + 40) _clearAllExecutionDevices];
  return [*(a1 + 40) _shutdownSessionWhenIdle];
}

void sub_1001D8964(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = +[AFInstanceContext currentContext];
    v24 = 136315650;
    v25 = "[ADCommandCenter clientConnected:]_block_invoke";
    v26 = 2048;
    v27 = v3;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %p %@", &v24, 0x20u);
  }

  objc_storeStrong((*(a1 + 40) + 16), *(a1 + 32));
  v6 = *(a1 + 40);
  v7 = *(v6 + 520);
  *(v6 + 520) = 0;

  v8 = [[ADUIService alloc] initWithRequestDelegate:*(a1 + 32)];
  v9 = [*(a1 + 40) _serviceManager];
  [v9 addService:v8];
  [v9 setCommandCenterClient:*(a1 + 32)];
  [*(a1 + 40) _setUIService:v8];
  v10 = *(a1 + 40);
  if (v10[10])
  {
    [v9 removeService:?];
    v11 = *(a1 + 40);
    v12 = *(v11 + 80);
    *(v11 + 80) = 0;

    v10 = *(a1 + 40);
  }

  [v10 _startUpdatingMotionActivity];
  *(*(a1 + 40) + 552) = 0;
  *(*(a1 + 40) + 553) = 0;
  *(*(a1 + 40) + 554) = 0;
  *(*(a1 + 40) + 558) = 0;
  *(*(a1 + 40) + 559) = 0;
  v13 = [*(a1 + 40) _sessionManager];
  [v13 setHasClient:1];

  if ((*(*(a1 + 40) + 876) & 1) == 0 && ((AFDeviceSupportsSiriUOD() & 1) != 0 || AFShouldRunAsrOnServerForUOD()))
  {
    v14 = [*(a1 + 40) _sessionManager];
    v15 = [v14 languageCode];

    v16 = [*(a1 + 40) _updateUODAssetStatusForLanguage:v15];
  }

  v17 = +[AFPreferences sharedPreferences];
  v18 = [v17 myriadMonitorTimeOutInterval];

  if (v18 && AFIsInternalInstall())
  {
    [v18 doubleValue];
  }

  else
  {
    AFMyriadMonitorDecisionGetWaitTime();
  }

  v20 = v19;
  v21 = AFSupportsSCDAFramework();
  v22 = SCDAMonitor_ptr;
  if (!v21)
  {
    v22 = AFMyriadMonitor_ptr;
  }

  v23 = [*v22 sharedMonitor];
  [v23 startMonitoringWithTimeoutInterval:*(*(a1 + 40) + 696) instanceContext:v20];
}

void sub_1001D8CE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D8DD4;
  v4[3] = &unk_10051CD10;
  v5 = *(a1 + 48);
  [v2 _context_fetchApplicationContextForApplicationInfos:v3 completion:v4];
}

uint64_t sub_1001D8DD4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001D8F88(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = [*(a1 + 32) _managedStoreObjectForKey:*(a1 + 40)];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_1001D92B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) _activeAccountIdentifier];
    (*(v1 + 16))(v1, v2);
  }
}

uint64_t sub_1001D9498(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001D94B0(uint64_t a1)
{
  v5 = [*(a1 + 32) _account];
  v2 = [v5 assistantIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001D95B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) _account];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_1001D9760(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) _accounts];
    (*(v1 + 16))(v1, v2);
  }
}

uint64_t sub_1001D9B68(uint64_t a1)
{
  v2 = +[ADAnalyticsService sharedService];
  [v2 checkForMetricsUploadProblem];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1001D9EF8(id *a1)
{
  v2 = [a1[4] _contextManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001D9FAC;
  v3[3] = &unk_10051DD70;
  v4 = a1[5];
  v5 = a1[6];
  [v2 getContextSnapshotForCurrentRequestWithCompletion:v3];
}

void sub_1001D9FAC(uint64_t a1, void *a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v17 + 1) + 8 * v7) content];
        v9 = [v8 identifier];
        v10 = [v9 isEqual:*(a1 + 32)];

        if (v10)
        {
          v12 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v15 = *(a1 + 32);
            *buf = 136315650;
            v22 = "[ADCommandCenter getOriginDeviceInfoForContextIdentifier:completion:]_block_invoke_2";
            v23 = 2112;
            v24 = v8;
            v25 = 2112;
            v26 = v15;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Found %@ given context ID %@", buf, 0x20u);
          }

          v13 = *(a1 + 40);
          v14 = [v8 deviceInfo];
          (*(v13 + 16))(v13, v14);

          goto LABEL_15;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 32);
    *buf = 136315650;
    v22 = "[ADCommandCenter getOriginDeviceInfoForContextIdentifier:completion:]_block_invoke";
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v3;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Unable to find context ID %@ in %@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_15:
}

void sub_1001DA304(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 336) currentRequestId];
  if ([v2 isEqualToString:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;

  v6 = [*(a1 + 40) _contextManager];
  [v6 getDeviceContextsForKeys:*(a1 + 48) forForeignRequestID:v5 includesNearbyDevices:*(a1 + 64) completion:*(a1 + 56)];
}

void sub_1001DA440(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextManager];
  v6 = AFDeviceContextKeyAll;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DA550;
  v4[3] = &unk_10051C150;
  v5 = *(a1 + 40);
  [v2 getContextIncludingKeys:v3 excludingMandatoryKeys:0 timeOut:v4 completion:0.0];
}

uint64_t sub_1001DA550(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001DA600(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextManager];
  [v2 getContextSnapshotForCurrentRequestWithCompletion:*(a1 + 40)];
}

void sub_1001DABD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001DACA0;
  v6[3] = &unk_10051C718;
  v8 = *(a1 + 64);
  v7 = *(a1 + 56);
  [v2 _handleGenericAceCommand:v3 withDelegate:v4 interruptOutstandingRequest:v5 reply:v6];
}

void sub_1001DACA0(uint64_t a1, char a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1001DAD6C;
      v7[3] = &unk_10051CDD8;
      v8 = v3;
      v9 = a2;
      dispatch_async(v5, v7);
    }

    else
    {
      v6 = v3[2];

      v6();
    }
  }
}

void sub_1001DAE44(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter sendVisualContextAndCorrectionsInfo:interactionIdentifier:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  v3 = [[LBLocalSpeechRecognizerClient alloc] initWithDelegate:0];
  [v3 sendVisualContextAndCorrectionsInfo:*(a1 + 32) interactionIdentifier:*(a1 + 40)];
  [v3 invalidate];
}

void sub_1001DAFBC(uint64_t a1)
{
  v2 = +[AFPreferences sharedPreferences];
  [v2 _suppressLowStorageNotificationForLanguage:*(a1 + 32) suppress:*(a1 + 40)];
}

void sub_1001DB5E4(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[ADCommandCenter prepareForStartPlaybackWithDestination:intent:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001DB790;
    v9[3] = &unk_1005167A0;
    v11 = v5;
    v9[4] = v3;
    v6 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v4 adRequestWillProcessStartPlayback:v5 intent:v6 completion:v9];
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[ADCommandCenter prepareForStartPlaybackWithDestination:intent:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s No client, assuming success and returning immediately", buf, 0xCu);
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 1);
    }
  }
}

void sub_1001DB790(uint64_t a1, int a2, int a3)
{
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[ADCommandCenter prepareForStartPlaybackWithDestination:intent:completion:]_block_invoke";
    v21 = 1024;
    *v22 = a3;
    *&v22[4] = 1024;
    *&v22[6] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s success = %d, shouldSuppress= %d", buf, 0x18u);
  }

  v7 = *(a1 + 48);
  if (v7 != 1 || a3 == 0)
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = "non-local playback destination";
      if (v7 == 1)
      {
        v10 = "";
      }

      v20 = "[ADCommandCenter prepareForStartPlaybackWithDestination:intent:completion:]_block_invoke_2";
      *buf = 136315650;
      v21 = 2080;
      *v22 = v10;
      if (a2)
      {
        v11 = "";
      }

      else
      {
        v11 = "ADCommandCenterClient failure";
      }

      *&v22[8] = 2080;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Not ending session because of %s %s", buf, 0x20u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = *(v12 + 16);
LABEL_21:
      v13();
    }
  }

  else
  {
    if (a2)
    {
      v14 = *(*(a1 + 32) + 112);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1001DB9AC;
      v16[3] = &unk_10051CDD8;
      v17 = *(a1 + 40);
      v18 = a3;
      [v14 suppressAudioInterruptionEndedNotificationsAndEndSessionIfIdle:v16];

      return;
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      v13 = *(v15 + 16);
      goto LABEL_21;
    }
  }
}

uint64_t sub_1001DB9AC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t sub_1001DBA74(void *a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter handleFailedStartPlaybackWithDestination:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  [*(a1[4] + 16) adRequestDidHandleFailedStartPlayback:a1[6]];
  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1001DBBBC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v5 = [NSNumber numberWithBool:v3];
    v7 = 136315394;
    v8 = "[ADCommandCenter setSuppressAudioInterruptionEndedNotifications:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  return [*(*(a1 + 32) + 112) setSuppressAudioInterruptionEndedNotifications:*(a1 + 40)];
}

void sub_1001DCC84(uint64_t a1)
{
  kdebug_trace();
  [*(a1 + 32) _startRecordingForPendingSpeechRequestForDelegate:*(a1 + 40) withOptions:*(a1 + 48) sessionUUID:*(a1 + 56) completion:*(a1 + 64)];
  v2 = AFSupportsSCDAFramework();
  v3 = SCDAMonitor_ptr;
  if (!v2)
  {
    v3 = AFMyriadMonitor_ptr;
  }

  v4 = [*v3 sharedMonitor];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001DCD68;
  v5[3] = &unk_10051B778;
  v5[4] = *(a1 + 32);
  [v4 waitForMyriadDecisionForReason:AFDeviceContextKeyMultiUserState withCompletion:v5];
}

void sub_1001DCD68(uint64_t a1)
{
  [*(*(a1 + 32) + 112) getSpeechRecorderVTSatScore:&stru_100516708];
  v2 = [[AFWatchdogTimer alloc] initWithTimeoutInterval:*(*(a1 + 32) + 8) onQueue:&stru_100516728 timeoutHandler:1.7];
  [v2 start];
  v3 = *(a1 + 32);
  v4 = *(v3 + 776);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001DCE44;
  v6[3] = &unk_100516750;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  [v4 getContextSnapshotForCurrentRequestWithCompletion:v6];
}

void sub_1001DCE44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DCF04;
  block[3] = &unk_10051DB68;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_1001DCF04(uint64_t a1)
{
  if ([*(a1 + 32) cancelIfNotAlreadyCanceled])
  {
    v26 = a1;
    v2 = *(a1 + 40);
    v3 = +[NSMutableDictionary dictionary];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v2;
    v4 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v32;
      v27 = v3;
      do
      {
        v7 = 0;
        do
        {
          if (*v32 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v31 + 1) + 8 * v7);
          v9 = [v8 content];
          if (([v9 fromLocalDevice] & 1) == 0)
          {
            v10 = [v9 multiUserStateSnapshot];
            v11 = [v10 confidenceScores];
            v12 = [v10 vtSatScore];
            [v12 floatValue];
            v14 = v13;

            if ([v11 count])
            {
              v29[0] = _NSConcreteStackBlock;
              v29[1] = 3221225472;
              v29[2] = sub_1002B9524;
              v29[3] = &unk_100519B88;
              v30 = v3;
              [v11 enumerateObjectsUsingBlock:v29];
              v15 = v30;
              goto LABEL_15;
            }

            if (v14 != 0.0)
            {
              v15 = sub_10001AD98(v8);
              if (v15)
              {
                v16 = [NSNumber numberWithInt:(v14 * 100.0)];
                v17 = [NSArray arrayWithObject:v16];
                [v27 setObject:v17 forKey:v15];
              }

              else
              {
                v16 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v18 = [v8 info];
                  v19 = v18;
                  if (!v18)
                  {
                    v25 = [v9 deviceInfo];
                    v19 = v25;
                  }

                  *buf = 136315650;
                  v36 = "ADMultiUserServiceDonatedScoresFromDeviceContextTuples";
                  v37 = 1024;
                  v38 = (v14 * 100.0);
                  v39 = 2112;
                  v40 = v19;
                  _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Dropped %d in donated scores from %@ because there's no Assistant identifier.", buf, 0x1Cu);
                  if (!v18)
                  {
                  }
                }
              }

              v3 = v27;
LABEL_15:
            }
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v20 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
        v5 = v20;
      }

      while (v20);
    }

    v21 = [v3 copy];
    v22 = *(v26 + 48);
    v23 = *(v22 + 688);
    *(v22 + 688) = v21;

    v24 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v41 = 136315394;
      v42 = "[ADCommandCenter startRecordingForPendingSpeechRequestForDelegate:withOptions:sessionUUID:completion:]_block_invoke_2";
      v43 = 2112;
      v44 = v3;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Score donation received: %@", v41, 0x16u);
    }
  }
}

void sub_1001DD2E0(id a1)
{
  v1 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "[ADCommandCenter startRecordingForPendingSpeechRequestForDelegate:withOptions:sessionUUID:completion:]_block_invoke_4";
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s Timed out fetching multi user state context", &v2, 0xCu);
  }
}

void sub_1001DD38C(id a1, NSNumber *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = +[NSNotificationCenter defaultCenter];
    v5 = @"vtSatScore";
    v6 = v2;
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

    [v3 postNotificationName:@"ADMultiUserDidReceiveScoresNotification" object:v4];
  }
}

id sub_1001DD5C4(void *a1)
{
  kdebug_trace();
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 _startSpeechRequestWithDelegate:v3 withOptions:v4 sessionUUID:0];
}

void *sub_1001DE070(uint64_t a1)
{
  *(*(a1 + 32) + 640) = 1;
  objc_storeStrong((*(a1 + 32) + 648), *(a1 + 40));
  result = *(a1 + 32);
  if (!result[2])
  {

    return [result _processQueuedOutputVoice];
  }

  return result;
}

void *sub_1001DE3E4(uint64_t a1)
{
  *(*(a1 + 32) + 624) = 1;
  objc_storeStrong((*(a1 + 32) + 632), *(a1 + 40));
  *(*(a1 + 32) + 640) = 1;
  objc_storeStrong((*(a1 + 32) + 648), *(a1 + 48));
  result = *(a1 + 32);
  if (!result[2])
  {

    return [result _processQueuedLanguageCodeAndOutputVoice];
  }

  return result;
}

void *sub_1001DE764(uint64_t a1)
{
  *(*(a1 + 32) + 624) = 1;
  objc_storeStrong((*(a1 + 32) + 632), *(a1 + 40));
  result = *(a1 + 32);
  if (!result[2])
  {

    return [result _processQueuedLanguageCode];
  }

  return result;
}

void sub_1001DE888(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001DE924;
  v3[3] = &unk_10051CEE0;
  v4 = *(a1 + 48);
  [v1 _setLanguageCode:@"ADLanguageCodeKeepSame" outputVoice:v2 isDefaultValue:0 withCompletion:v3];
}

uint64_t sub_1001DE924(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001DEEEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001DEF84;
  v3[3] = &unk_10051CEE0;
  v4 = *(a1 + 48);
  [v1 _setLanguageCode:v2 outputVoice:0 isDefaultValue:0 withCompletion:v3];
}

uint64_t sub_1001DEF84(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001DF0A4(uint64_t a1, void *a2)
{
  [a2 _setDictationIsEnabledLocal:*(a1 + 32)];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];
}

void sub_1001DF104(void *a1)
{
  v1 = a1;
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 assistantIsEnabled];
  v4 = [v2 dictationIsEnabled];
  v1[2](v1, v2);

  [v2 synchronize];
  v5 = [v2 assistantIsEnabled];
  v6 = [v2 dictationIsEnabled];
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v25 = 136315650;
    v26 = "ModifyActivenessPreferenceWithBlock";
    v27 = 1024;
    *v28 = v3;
    *&v28[4] = 1024;
    *&v28[6] = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s assistantIsEnabled: %d -> %d", &v25, 0x18u);
    v7 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v25 = 136315650;
    v26 = "ModifyActivenessPreferenceWithBlock";
    v27 = 1024;
    *v28 = v4;
    *&v28[4] = 1024;
    *&v28[6] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s dictationIsEnabled: %d -> %d", &v25, 0x18u);
    v7 = AFSiriLogContextDaemon;
  }

  v8 = v3 ^ v5;
  v9 = v4 ^ v6;
  v10 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if ((v8 & 1) != 0 || v9)
  {
    if (v10)
    {
      v25 = 136315394;
      v26 = "ModifyActivenessPreferenceWithBlock";
      v27 = 2112;
      *v28 = @"ADPreferencesEnabledBitsDidChangeNotification";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Post (local) %@", &v25, 0x16u);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:@"ADPreferencesEnabledBitsDidChangeNotification" object:0];

    if (v8)
    {
      v12 = AFSiriLogContextDaemon;
      v13 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
      v14 = AFAssistantEnablementDidChangeDarwinNotification;
      if (v13)
      {
        v25 = 136315394;
        v26 = "ModifyActivenessPreferenceWithBlock";
        v27 = 2112;
        *v28 = AFAssistantEnablementDidChangeDarwinNotification;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Post (darwin) %@", &v25, 0x16u);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, v14, 0, 0, 1u);
    }

    if (v9)
    {
      v16 = AFSiriLogContextDaemon;
      v17 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
      v18 = AFDictationEnablementDidChangeDarwinNotification;
      if (v17)
      {
        v25 = 136315394;
        v26 = "ModifyActivenessPreferenceWithBlock";
        v27 = 2112;
        *v28 = AFDictationEnablementDidChangeDarwinNotification;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Post (darwin) %@", &v25, 0x16u);
      }

      v19 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v19, v18, 0, 0, 1u);
    }
  }

  else if (v10)
  {
    v25 = 136315138;
    v26 = "ModifyActivenessPreferenceWithBlock";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Skipped post local and darwin notifications because Siri and Dictation enablement states did not change.", &v25, 0xCu);
  }

  if (v5)
  {
    v20 = +[ADCommandCenter sharedCommandCenter];
    [v20 sanityCheckAutodownloadedAssetsForced:1];

    v21 = +[ADCommandCenter sharedCommandCenter];
    v22 = [v2 languageCode];
    [v21 _downloadMorphunAssets:v22];

LABEL_25:
    goto LABEL_26;
  }

  if ((v6 & 1) == 0)
  {
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v25 = 136315138;
      v26 = "ModifyActivenessPreferenceWithBlock";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Destroy active account because Siri and Dictation are both disabled.", &v25, 0xCu);
    }

    v24 = +[ADCommandCenter sharedCommandCenter];
    [v24 destroyActiveAccount];

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 postNotificationName:@"AssistantAccountRemoved" object:0];
    goto LABEL_25;
  }

LABEL_26:
}

void sub_1001DF7B0(uint64_t a1, void *a2)
{
  [a2 _setAssistantIsEnabledLocal:*(a1 + 32)];
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 setLanguageCodeIfNeeded];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];
}

void sub_1001DF9A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001DFA38;
  v2[3] = &unk_10051B580;
  v3 = v1;
  [MorphunAssets onDemandDownloadForLocale:v3 withProgress:0 withCompletion:v2];
}

void sub_1001DFA38(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = AFSiriLogContextConnection;
  v7 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v16 = 136315394;
      v17 = "[ADCommandCenter _downloadMorphunAssets:]_block_invoke_2";
      v18 = 2112;
      v19 = v8;
      v9 = "%s Morphun assets for %@ downloaded successfully!";
      v10 = v6;
      v11 = 22;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, &v16, v11);
    }
  }

  else
  {
    if (v7)
    {
      v12 = *(a1 + 32);
      v16 = 136315394;
      v17 = "[ADCommandCenter _downloadMorphunAssets:]_block_invoke";
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Morphun assets for %@ download failed.", &v16, 0x16u);
      v6 = AFSiriLogContextConnection;
    }

    v13 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v13)
      {
        v14 = v6;
        v15 = [v5 localizedDescription];
        v16 = 136315394;
        v17 = "[ADCommandCenter _downloadMorphunAssets:]_block_invoke";
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Morphun assets download failure reason: %@", &v16, 0x16u);
      }
    }

    else if (v13)
    {
      v16 = 136315138;
      v17 = "[ADCommandCenter _downloadMorphunAssets:]_block_invoke";
      v9 = "%s Morphun assets download failed with a nil error.";
      v10 = v6;
      v11 = 12;
      goto LABEL_11;
    }
  }
}

void sub_1001DFE50(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceManager];
  [v2 preheatServicesForDomain:*(a1 + 40)];
}

void sub_1001DFFA0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v11 = "_ADPreheatSpeechManagerInBackgroundWithRecordDeviceIdentifier_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v4 = +[ADSpeechManager sharedManager];
  if (*(a1 + 32))
  {
    v5 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:0];
    [v5 setRecordDeviceIdentifier:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001E0148;
  v8[3] = &unk_1005187C8;
  v9 = v5;
  v6 = v5;
  v7 = [AFSetAudioSessionActiveContext newWithBuilder:v8];
  [v4 prepareAudioSystemWithContext:v7 completion:0];
}

void sub_1001E0148(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setReason:1];
  [v3 setSpeechRequestOptions:*(a1 + 32)];
}

id sub_1001E0548(uint64_t a1)
{
  [*(a1 + 32) _sync_continueIfConditionsMet];
  v2 = *(a1 + 32);

  return [v2 _shutdownSessionWhenIdle];
}

void sub_1001E061C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter startCloudKitSyncWeeklyForActivity:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  v3 = +[ADCloudKitManager sharedManager];
  [v3 forceMultiUserSync:1 download:1 activity:*(a1 + 32) completion:0];
}

id sub_1001E0870(uint64_t a1)
{
  [*(a1 + 32) _startObservingCallState];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);

  return [v2 _sync_syncAnchorKeys:v3 forceReset:v4 reasons:v5];
}

void sub_1001E0BE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) currentToken];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "[ADCommandCenter _handleRemoteSpeechRequest:completion:]_block_invoke_2";
      v9 = 2048;
      v10 = 0x4014000000000000;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Failed to handle remote speech request in %lfs", &v7, 0x16u);
    }

    v5 = [*(a1 + 40) completion];
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    [*(a1 + 40) reset];
  }
}

void sub_1001E12D8(uint64_t a1)
{
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1001E161C;
  v8 = &unk_100516660;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v2 = [AFSiriActivationContext newWithBuilder:&v5];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADCommandCenter _handleExternalActivationRequest:completion:]_block_invoke_2";
    v13 = 2112;
    v14 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  v4 = [AFSiriActivationConnection sharedConnection:v5];
  [v4 activateWithRequestInfo:*(a1 + 40) context:v2 completion:&stru_100516680];
}

void sub_1001E144C(uint64_t a1, void *a2)
{
  v3 = [a2 actionIdentifier];
  v4 = [v3 isEqualToString:UNNotificationDefaultActionIdentifier];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

void sub_1001E14CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) remoteRequestInfo];

  if (v2 == v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 56);
      v9 = 136315394;
      v10 = "[ADCommandCenter _handleExternalActivationRequest:completion:]_block_invoke_2";
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Failed to handle remote request in %lfs", &v9, 0x16u);
    }

    v6 = [*(a1 + 40) completion];
    v7 = v6;
    if (v6)
    {
      (*(v6 + 16))(v6, 0, 0);
    }

    [*(a1 + 40) setRemoteRequestInfo:0];
    [*(a1 + 40) setCompletion:0];
  }

  if (*(a1 + 48))
  {
    v8 = +[ADUserNotificationServiceProvider personalDomainNotificationProvider];
    [v8 withdrawNotificationRequestWithIdentifier:*(a1 + 48)];
  }
}

void sub_1001E161C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 activationEventMachAbsoluteTime];
  if (!v4)
  {
    v4 = [*(a1 + 40) timestamp];
    if (!v4)
    {
      v4 = mach_absolute_time();
    }
  }

  [v5 setTimestamp:v4];
  [v5 setSource:11];
  [v5 setEvent:13];
}

void sub_1001E16A4(id a1, AFSiriActivationResult *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADCommandCenter _handleExternalActivationRequest:completion:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s result = %@", &v4, 0x16u);
  }
}

void sub_1001E1BCC(id a1)
{
  +[AFDictationSamplingUtilities deleteAllSamplingData];
  +[AFAssistantSamplingUtilities deleteAllSamplingData];
  +[SSRRPISampler deleteAllRPISampledData];
  v4 = 0;
  [CSDADataAnalyticsController cleanupData:&v4];
  v1 = v4;
  if (v1)
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v6 = "[ADCommandCenter _deleteSiriAudioDataOnDevice]_block_invoke";
      v7 = 2112;
      v8 = v1;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Error cleaning up CoreSpeech analytics data: %@", buf, 0x16u);
    }
  }

  v3 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
  [v3 deleteAllDESRecordsForDictationPersonalization];
  [v3 invalidate];
}

void sub_1001E1E3C(void *a1)
{
  v1 = a1;
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v5 = "_AnalyticsSendOnDeviceDeletionEventWithError";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s #RPI sending event kCoreAnalyticsDeletionTelemetryKey", buf, 0xCu);
  }

  v3 = v1;
  AnalyticsSendEventLazy();
}

id sub_1001E1F68(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v3 code]);
    [v2 setObject:v4 forKey:@"errorCode"];
  }

  v5 = +[AFPreferences sharedPreferences];
  v6 = [v5 assistantIsEnabled];

  if (v6)
  {
    v7 = +[AFPreferences sharedPreferences];
    v8 = [v7 languageCode];
    [v2 setObject:v8 forKey:@"siriInputLocale"];
  }

  v9 = *(a1 + 40);
  v10 = @"DHTTRIGGEREVENT_UNKNOWN";
  if (v9 == 1)
  {
    v10 = @"DHTTRIGGEREVENT_DESTROY_ASSISTANT";
  }

  if (v9 == 2)
  {
    v11 = @"DHTTRIGGEREVENT_DELETE_ASSISTANT_HISTORY";
  }

  else
  {
    v11 = v10;
  }

  [v2 setObject:v11 forKey:@"trigger"];

  return v2;
}

void sub_1001E24F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1001E2544(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[ADCommandCenter _deleteSiriHistoryWithContext:withCompletion:]_block_invoke";
      v17 = 2112;
      v18 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed with error %@.", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[ADCommandCenter _deleteSiriHistoryWithContext:withCompletion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Done", &v15, 0xCu);
  }

  v5 = +[AFFeatureFlags isOnDeviceHistoryDeletionEnabled];
  v6 = +[AFPreferences sharedPreferences];
  v7 = [v6 longLivedIdentifierUploadingEnabled] ^ 1;

  v8 = v5 & v7;
  if (v3 && v8)
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "[ADCommandCenter _deleteSiriHistoryWithContext:withCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s #RPI Skip surfacing server side deletion error as UI alert.", &v15, 0xCu);
    }

    v3 = 0;
  }

  if (AFIsNano() && *(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _postWatchNotificationWithContext:*(a1 + 32) withError:v3];
  }

  v11 = *(*(*(a1 + 48) + 8) + 40);
  if (v11)
  {
    [v11 cancel];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v3);
  }

  if (v8)
  {
    sub_1001E1E3C(v3);
  }
}

void sub_1001E277C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [AFError errorWithCode:1 description:@"Client timed out because no server response was received in 20 seconds."];
  [v1 invokeWithValue:v2];
}

void sub_1001E27E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001E2878;
  v3[3] = &unk_10051B168;
  v4 = *(a1 + 48);
  [v1 _sendCommandToServer:v2 opportunistically:0 completion:v3];
}

void sub_1001E2878(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v17 = 136315650;
    v18 = "[ADCommandCenter _deleteSiriHistoryWithContext:withCompletion:]_block_invoke_2";
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s response = %@, error = %@", &v17, 0x20u);
  }

  if (!v5)
  {
    v10 = *(a1 + 32);
    if (v6)
    {
      v8 = v10;
      v9 = v6;
      goto LABEL_8;
    }

    v15 = @"Server response is nil.";
LABEL_13:
    v16 = [AFError errorWithCode:8 description:v15];
    [v10 invokeWithValue:v16];

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = *(a1 + 32);
    if (isKindOfClass)
    {
      v12 = [v5 reason];
      v13 = [v5 ad_error];
      v14 = [AFError errorWithCode:2 description:v12 underlyingError:v13];
      [v10 invokeWithValue:v14];

      goto LABEL_14;
    }

    v15 = @"Server response is unexpected.";
    goto LABEL_13;
  }

  v8 = *(a1 + 32);
  v9 = 0;
LABEL_8:
  [v8 invokeWithValue:v9];
LABEL_14:
}

void sub_1001E2F18(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextFides;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[ADCommandCenter _destroyActiveAccount]_block_invoke";
      v6 = 2114;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error disabling fides: %{public}@", &v4, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter _destroyActiveAccount]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Successfully disabled DES", &v4, 0xCu);
  }
}

void sub_1001E3560(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v37 = [v7 refId];
    v8 = [*(*(a1 + 32) + 96) sessionRequestIdForRefId:?];
    v9 = [*(a1 + 32) _resultObjectCache];
    v38 = v7;
    v36 = v8;
    [v9 addResultObjects:v7 sessionRequestId:v8];

    v10 = objc_alloc_init(NSMutableDictionary);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v11 = *(a1 + 40);
    v12 = [v11 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v48;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v48 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v47 + 1) + 8 * i);
          v17 = [v16 aceId];
          if (v17)
          {
            [v10 setObject:v16 forKey:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v13);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = [v38 objects];
    v19 = [v18 countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v44;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v43 + 1) + 8 * j);
          v24 = [v23 aceId];
          if (v24)
          {
            [v10 setObject:v23 forKey:v24];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v20);
    }

    v25 = objc_alloc_init(NSMutableArray);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v26 = *(a1 + 48);
    v27 = [v26 countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v40;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [v10 objectForKey:*(*(&v39 + 1) + 8 * k)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v39 objects:v53 count:16];
      }

      while (v28);
    }
  }

  else
  {
    v32 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v52 = "[ADCommandCenter _getDeferredObjectsWithIdentifiers:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s Failed getting deferred objects", buf, 0xCu);
    }

    v25 = *(a1 + 40);
  }

  v33 = [*(a1 + 48) count];
  if (v33 != [v25 count])
  {
    v34 = [AFError errorWithCode:900 description:0 underlyingError:v6];

    v6 = v34;
  }

  v35 = *(a1 + 56);
  if (v35)
  {
    (*(v35 + 16))(v35, v25, v6);
  }
}

void sub_1001E3AB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[ADCommandCenter _fetchSupportedLanguagesWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Sending fetch supported languages completion", &v11, 0xCu);
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = *(a1 + 32);
    if (isKindOfClass)
    {
      v10 = [v5 locales];
      (*(v9 + 16))(v9, v10, 0);
LABEL_9:

      goto LABEL_10;
    }

    if (!v6)
    {
      v10 = [AFError errorWithCode:8];
      (*(v9 + 16))(v9, 0, v10);
      goto LABEL_9;
    }

    (*(v9 + 16))(v9, 0, v6);
  }

LABEL_10:
}

void sub_1001E3E54(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 120) allServices];
  [v1 makeObjectsPerformSelector:"clearDomainObjects"];
}

void sub_1001E45A0(uint64_t a1)
{
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = sub_1001D9498;
  v96 = sub_1001D94A8;
  v97 = 0;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v4 = [v3 commands];
  }

  else
  {
    if (!v3)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v105 = *(a1 + 32);
    v4 = [NSArray arrayWithObjects:&v105 count:1];
  }

  v5 = v4;
LABEL_6:
  if (*(a1 + 40))
  {
    if (AFIsInternalInstall())
    {
      v6 = +[NSDate date];
      [v6 timeIntervalSinceDate:*(a1 + 40)];
      v8 = v7;

      v9 = (v8 / 60.0);
      if (v9 >= 6)
      {
        v10 = @"greater_than_15_min";
        if (v9 < 0xF)
        {
          v10 = @"less_than_15_min";
        }

        v11 = v10;
        v12 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v60 = *(a1 + 32);
          *buf = 136315650;
          v99 = "[ADCommandCenter _handleAceCommand:afterCurrentRequest:waitForResponse:withDelegate:completion:]_block_invoke";
          v100 = 2112;
          v101 = v60;
          v102 = 1024;
          LODWORD(v103) = (v8 / 60.0);
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Commands %@ weren't ran for %d minutes", buf, 0x1Cu);
        }

        v13 = +[SiriCoreSymptomsReporter sharedInstance];
        v14 = +[NSProcessInfo processInfo];
        v15 = [v14 processIdentifier];
        [v13 reportIssueForType:@"command_stuck_in_group" subType:v11 context:0 processIdentifier:v15 walkboutStatus:byte_100590548];
      }
    }
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 72);
    *buf = 136315650;
    v99 = "[ADCommandCenter _handleAceCommand:afterCurrentRequest:waitForResponse:withDelegate:completion:]_block_invoke";
    v100 = 2112;
    v101 = v5;
    v102 = 1024;
    LODWORD(v103) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Performing commands %@ after request %d", buf, 0x1Cu);
  }

  v18 = dispatch_group_create();
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v5;
  v19 = [obj countByEnumeratingWithState:&v88 objects:v104 count:16];
  if (v19)
  {
    v62 = *v89;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v89 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v88 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          dispatch_group_enter(v18);
          v22 = [[ADUIService alloc] initWithRequestDelegate:*(a1 + 48)];
          v23 = [*(a1 + 56) _serviceManager];
          [v23 addService:v22];
          v24 = [v21 aceId];
          v25 = v24 == 0;

          if (v25)
          {
            v26 = SiriCoreUUIDStringCreate();
            [v21 setAceId:v26];
          }

          v27 = *(a1 + 56);
          v28 = [v21 aceId];
          [v27 _setFirstChanceService:v22 forAceId:v28];

          v30 = *(a1 + 48);
          v29 = *(a1 + 56);
          v83[0] = _NSConcreteStackBlock;
          v83[1] = 3221225472;
          v83[2] = sub_1001E5018;
          v83[3] = &unk_100516538;
          v31 = v23;
          v84 = v31;
          v32 = v22;
          v85 = v32;
          v87 = &v92;
          v86 = v18;
          [v29 _startNonSpeechRequest:v21 forDelegate:v30 withInfo:0 options:0 suppressAlert:0 completion:v83];
          if ((*(a1 + 73) & 1) == 0)
          {
            v33 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v99 = "[ADCommandCenter _handleAceCommand:afterCurrentRequest:waitForResponse:withDelegate:completion:]_block_invoke_2";
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Ignoring early return flag for non interrupting request", buf, 0xCu);
            }
          }
        }

        else
        {
          v34 = [*(a1 + 56) _isServerBoundCommand:*(a1 + 32)];
          v35 = *(a1 + 56);
          if (v34)
          {
            v36 = [v35 _sessionManager];
            v37 = [[NSString alloc] initWithFormat:@"Executing one-off server-bound command %@ from client %@.", *(a1 + 32), *(a1 + 48)];
            v38 = [v36 acquireAssertionForReason:v37];

            v39 = [*(a1 + 32) refId];
            LODWORD(v37) = v39 == 0;

            if (v37)
            {
              v40 = sub_1001E5088(*(a1 + 32));
              v46 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                v47 = *(a1 + 32);
                *buf = 136315650;
                v99 = "[ADCommandCenter _handleAceCommand:afterCurrentRequest:waitForResponse:withDelegate:completion:]_block_invoke";
                v100 = 2112;
                v101 = v40;
                v102 = 2112;
                v103 = v47;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s Create a transient root execution context %@ for locally submitted server-bound command %@.", buf, 0x20u);
              }

              [*(a1 + 56) _createRootExecutionContextForRequestID:v40];
            }

            else
            {
              v40 = 0;
            }

            dispatch_group_enter(v18);
            v48 = [AFSafetyBlock alloc];
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_1001E50EC;
            v76[3] = &unk_100516560;
            v77 = v18;
            v49 = v40;
            v78 = v49;
            v50 = *(a1 + 32);
            v51 = *(a1 + 56);
            v79 = v50;
            v80 = v51;
            v32 = v36;
            v81 = v32;
            v52 = v38;
            v82 = v52;
            v53 = [v48 initWithBlock:v76];
            v54 = *(a1 + 56);
            if (*(a1 + 73) == 1)
            {
              v72[0] = _NSConcreteStackBlock;
              v72[1] = 3221225472;
              v72[2] = sub_1001E51F8;
              v72[3] = &unk_100516588;
              v55 = *(a1 + 48);
              v75 = &v92;
              v56 = *(a1 + 56);
              v73[0] = v55;
              v73[1] = v56;
              v74 = v53;
              [v54 _sendCommandToServer:v21 opportunistically:0 completion:v72];

              v57 = v73;
            }

            else
            {
              [*(a1 + 56) _sendCommandToServer:v21 opportunistically:0];
              v58 = [*(a1 + 56) _sessionManager];
              v70[0] = _NSConcreteStackBlock;
              v70[1] = 3221225472;
              v70[2] = sub_1001E531C;
              v70[3] = &unk_100519220;
              v71[1] = &v92;
              v71[0] = v53;
              [v58 barrier:v70];

              v57 = v71;
            }
          }

          else if ([v35 _isClientBoundCommand:*(a1 + 32)])
          {
            dispatch_group_enter(v18);
            v32 = *(a1 + 32);
            [*(a1 + 56) _preheatCallbacksForCommand:v32];
            v41 = *(a1 + 56);
            v42 = [*(a1 + 32) refId];
            v43 = [v41 _rootExecutionContextForRequestID:v42];

            v66[0] = _NSConcreteStackBlock;
            v66[1] = 3221225472;
            v66[2] = sub_1001E537C;
            v66[3] = &unk_1005165B0;
            v44 = *(a1 + 56);
            v67 = *(a1 + 48);
            v69 = &v92;
            v68 = v18;
            [v44 _handleServiceCommand:v32 executionContext:v43 completion:v66];
          }

          else
          {
            if (v93[5])
            {
              continue;
            }

            v45 = [AFError errorWithCode:500];
            v32 = v93[5];
            v93[5] = v45;
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v88 objects:v104 count:16];
    }

    while (v19);
  }

  v59 = *(*(a1 + 56) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E5400;
  block[3] = &unk_10051C8E0;
  v64 = *(a1 + 64);
  v65 = &v92;
  dispatch_group_notify(v18, v59, block);

  _Block_object_dispose(&v92, 8);
}

void sub_1001E5018(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  [*(a1 + 32) removeService:*(a1 + 40)];
  v5 = *(*(a1 + 56) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    objc_storeStrong(v6, a3);
  }

  dispatch_group_leave(*(a1 + 48));
}

id sub_1001E5088(void *a1)
{
  v1 = a1;
  v2 = [v1 aceId];
  if (!v2)
  {
    v2 = SiriCoreUUIDStringCreate();
    [v1 setAceId:v2];
  }

  return v2;
}

id sub_1001E50EC(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 48);
      v6 = 136315650;
      v7 = "[ADCommandCenter _handleAceCommand:afterCurrentRequest:waitForResponse:withDelegate:completion:]_block_invoke";
      v8 = 2112;
      v9 = v2;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Destroy the transient root execution context %@ for locally submitted server-bound command %@.", &v6, 0x20u);
      v2 = *(a1 + 40);
    }

    [*(a1 + 56) _removeHandledCommandIdsForRequestId:v2];
    [*(a1 + 56) _removePostCommandHandlingBlocksForRequestId:*(a1 + 40)];
    [*(a1 + 56) _destroyRootExecutionContextForRequestID:*(a1 + 40)];
  }

  return [*(a1 + 64) relinquishAssertion:*(a1 + 72)];
}

void sub_1001E51F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) adRequestDidReceiveCommand:v5 reply:0];
  v7 = *(*(a1 + 56) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9)
  {
    objc_storeStrong(v8, a3);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    [*(a1 + 48) invoke];
    goto LABEL_6;
  }

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001E5430;
  v13[3] = &unk_10051DFE8;
  v10 = *(a1 + 40);
  v14 = *(a1 + 48);
  v11 = [v5 aceId];
  v12 = [v5 refId];
  [v10 _addPostCommandHandlingBlock:v13 forCommandId:v11 requestId:v12];

LABEL_6:
}

id sub_1001E531C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [AFError errorWithCode:17];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 32);

  return [v6 invoke];
}

void sub_1001E537C(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  [*(a1 + 32) adRequestDidReceiveCommand:a2 reply:0];
  v6 = *(*(a1 + 48) + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    objc_storeStrong(v7, a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_1001E5400(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40) == 0);
  }

  return result;
}

void sub_1001E5A88(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([a1[4] _isClientBoundCommand:v5])
  {
    v7 = a1[4];
    v8 = v5;
    [v7 _preheatCallbacksForCommand:v8];
    v9 = a1[4];
    v10 = [a1[5] refId];
    v11 = [v9 _rootExecutionContextForRequestID:v10];

    v12 = a1[4];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001E5BB4;
    v13[3] = &unk_100515DF8;
    v14 = v6;
    v15 = a1[6];
    [v12 _handleServiceCommand:v8 executionContext:v11 completion:v13];
  }
}

id *sub_1001E5BB4(id *result)
{
  if (result[4])
  {
    return [result[5] adRequestEncounteredIntermediateError:?];
  }

  return result;
}

void sub_1001E65A0(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechManager];
  v6 = [v2 context];

  if (v6)
  {
    v3 = [*(*(a1 + 32) + 336) currentRequestId];
    v4 = [v6 aceId];
    v5 = [v3 isEqualToString:v4];

    if (v5)
    {
      [*(a1 + 32) _sendWillStopRecordingForCommand:v6];
    }
  }
}

void sub_1001E69B0(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updateSpeechOptions:*(a1 + 32) forDelegate:*(a1 + 40) allowUpdateInSpeechCompletion:0];
}

void sub_1001E6A14(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechManager];
  v3 = [v2 context];
  v4 = [v3 aceId];

  v5 = [*(*(a1 + 32) + 336) currentRequestId];
  if ([v4 isEqualToString:v5])
  {
    [*(a1 + 32) _sendEnableServerEndpointerCommandWithRefID:v4];
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315650;
      v8 = "[ADCommandCenter _updateSpeechOptions:forDelegate:allowUpdateInSpeechCompletion:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Skipped enable server endpointer command because (_currentRequest.aceId = %@) and (_speechManager.context.aceId = %@) mismatched.", &v7, 0x20u);
    }
  }
}

void sub_1001E70A0(uint64_t a1)
{
  [*(a1 + 32) _requestWillStartWithInfo:0 showNetworkActivityIndicator:{objc_msgSend(*(a1 + 40), "secureOfflineOnly") ^ 1}];
  v2 = [*(a1 + 32) _speechManager];
  [v2 setInitialDictationLanguage:*(a1 + 48)];
  [v2 setPrimaryDictationLanguage:*(a1 + 48)];
  if (*(a1 + 48))
  {
    v4 = *(a1 + 48);
    v3 = [NSArray arrayWithObjects:&v4 count:1];
    [v2 setDictationLanguages:v3];
  }

  else
  {
    [v2 setDictationLanguages:0];
  }

  [v2 setDictationOptions:*(a1 + 40)];
  [v2 startSpeechCaptureWithURL:*(a1 + 56) isNarrowBand:*(a1 + 72) isDictation:1 sessionUUID:*(a1 + 64)];
}

void sub_1001E7468(uint64_t a1)
{
  [*(a1 + 32) _requestWillStartWithInfo:0 showNetworkActivityIndicator:{objc_msgSend(*(a1 + 40), "secureOfflineOnly") ^ 1}];
  v2 = [*(a1 + 32) _speechManager];
  [v2 setInitialDictationLanguage:*(a1 + 48)];
  [v2 setPrimaryDictationLanguage:*(a1 + 48)];
  if (*(a1 + 48))
  {
    v4 = *(a1 + 48);
    v3 = [NSArray arrayWithObjects:&v4 count:1];
    [v2 setDictationLanguages:v3];
  }

  else
  {
    [v2 setDictationLanguages:0];
  }

  [v2 setDictationOptions:*(a1 + 40)];
  [v2 startRecordedDictationCaptureWithSessionUUID:*(a1 + 56) narrowband:*(a1 + 64) secureOfflineOnly:{objc_msgSend(*(a1 + 40), "secureOfflineOnly")}];
}

void sub_1001E7948(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 408);
  v3 = v2;
  if (*(a1 + 56))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      *buf = 136315650;
      v17 = "[ADCommandCenter _startRecordingForPendingDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]_block_invoke";
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v9;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Entering speech group %@ (%@)...", buf, 0x20u);
    }

    dispatch_group_enter(v3);
    v6 = *(a1 + 56);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001E7AE4;
    v10[3] = &unk_100516498;
    v7 = *(a1 + 40);
    v15 = *(a1 + 64);
    v8 = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    v13 = v3;
    v14 = *(a1 + 48);
    (*(v6 + 16))(v6, v10);
  }
}

void sub_1001E7AE4(uint64_t a1, double a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    *buf = 136315650;
    v22 = "[ADCommandCenter _startRecordingForPendingDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]_block_invoke";
    v23 = 2048;
    v24 = a2;
    v25 = 2112;
    v26 = v12;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Continue pending recording at %f (%@)...", buf, 0x20u);
  }

  v5 = +[AFAnalytics sharedAnalytics];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001E7DEC;
  v19[3] = &unk_100516470;
  *&v19[4] = a2;
  v20 = *(a1 + 64);
  [v5 logEventWithType:307 contextProvider:v19];

  *(*(a1 + 40) + 416) = a2;
  if (*(a1 + 64) == 1)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "[ADCommandCenter _startRecordingForPendingDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Asking to play recording start alert on prelistening continue", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    v8 = *(v7 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E7ECC;
    block[3] = &unk_10051DFE8;
    block[4] = v7;
    dispatch_async(v8, block);
  }

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    *buf = 136315650;
    v22 = "[ADCommandCenter _startRecordingForPendingDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]_block_invoke_2";
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Leaving speech group %@ (%@)...", buf, 0x20u);
  }

  dispatch_group_leave(*(a1 + 48));
  v10 = *(a1 + 48);
  v11 = *(*(a1 + 40) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E7ED8;
  v15[3] = &unk_10051E010;
  v16 = *(a1 + 56);
  v17 = *(a1 + 32);
  dispatch_group_notify(v10, v11, v15);
}

id sub_1001E7DEC(uint64_t a1)
{
  v6[0] = @"timestamp";
  v2 = [NSNumber numberWithDouble:*(a1 + 32)];
  v6[1] = @"prelistening";
  v7[0] = v2;
  v3 = [NSNumber numberWithBool:*(a1 + 40)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_1001E7ED8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 136315650;
    v6 = "[ADCommandCenter _startRecordingForPendingDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Leaving request group %@ (%@)...", &v5, 0x20u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001E847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_1001E84B0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "[ADCommandCenter _startDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Leaving _replaceSpeechDelegateWhenReady group", &v3, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001E8568(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "[ADCommandCenter _startDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Leaving _getDictationLanguages group", &v14, 0xCu);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001E867C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 24))
  {
    v3 = *(v2 + 40);
    if (v3 == *(a1 + 40) && ([v3 adSpeechSessionEnded] & 1) == 0)
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 48);
        v7 = *(*(*(a1 + 88) + 8) + 40);
        v8 = *(*(*(a1 + 96) + 8) + 40);
        v32 = 136315906;
        v33 = "[ADCommandCenter _startDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]_block_invoke";
        v34 = 2112;
        v35 = v6;
        v36 = 2112;
        v37 = v7;
        v38 = 2112;
        v39 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Dictation with session id %@ will start with primary language code %@ and dictation languages %@.", &v32, 0x2Au);
      }

      [*(a1 + 32) _requestWillStartWithInfo:0 showNetworkActivityIndicator:{objc_msgSend(*(a1 + 56), "secureOfflineOnly") ^ 1}];
      v9 = *(a1 + 48);
      v10 = [*(a1 + 64) turnIdentifier];
      sub_100013EC0(v9, v10);

      v11 = *(*(a1 + 32) + 16);
      if ((AFIsATVOnly() & 1) != 0 || !v11)
      {
        [*(a1 + 32) _clearContextAndStartDictationSessionWithLanguageCode:*(a1 + 72) dictationOptions:*(a1 + 56)];
      }

      objc_storeStrong((*(a1 + 32) + 296), *(a1 + 64));
      [*(*(a1 + 32) + 296) setDictationInputOrigin:{objc_msgSend(*(a1 + 56), "dictationInputOrigin")}];
      v12 = *(*(a1 + 32) + 296);
      v13 = [*(a1 + 56) applicationDisplayName];
      [v12 setApplicationDisplayName:v13];

      v14 = *(*(a1 + 32) + 296);
      v15 = [*(a1 + 56) applicationName];
      [v14 setApplicationBundleIdentifier:v15];

      [*(*(a1 + 32) + 296) setSkipGeneratingSpeechPacket:{objc_msgSend(*(a1 + 56), "secureOfflineOnly")}];
      v16 = *(a1 + 32);
      v17 = [*(a1 + 56) context];
      [v16 _context_setSTApplicationContext:v17];

      v18 = [*(a1 + 32) _speechManager];
      [v18 setInitialDictationLanguage:*(a1 + 72)];
      [v18 setPrimaryDictationLanguage:*(*(*(a1 + 88) + 8) + 40)];
      [v18 setDictationLanguages:*(*(*(a1 + 96) + 8) + 40)];
      [v18 setDictationOptions:*(a1 + 56)];
      [*(a1 + 32) _setSpeechCapturingContext:0];
      v19 = -[NSObject startSpeechCaptureForDictationWithOptions:sessionUUID:secureOfflineOnly:](v18, "startSpeechCaptureForDictationWithOptions:sessionUUID:secureOfflineOnly:", *(a1 + 64), *(a1 + 48), [*(a1 + 56) secureOfflineOnly]);
      [*(a1 + 32) _setSpeechCapturingContext:v19];
      if ([*(a1 + 64) audioFileType])
      {
        objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
      }

      v20 = +[ADDictationOfflineStatusObserver sharedDictationOfflineStatusObserver];
      v21 = [v20 offlineDictationStatus];

      if ((*(a1 + 104) & 1) != 0 || (AFOfflineDictationStatusForLanguage(), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
      {
        v23 = [*(a1 + 32) _requestDispatcherService];
        v24 = [*(a1 + 32) _account];
        v25 = [v24 assistantIdentifier];
        [v23 startDictationRequestWithAssistantId:v25 requestId:*(a1 + 48) inputOrigin:0 dictationOptions:*(a1 + 56)];

        [*(*(a1 + 32) + 240) emitForRequest:*(a1 + 48)];
      }

      v26 = *(a1 + 80);
      if (v26)
      {
        (*(v26 + 16))();
      }

      goto LABEL_20;
    }
  }

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v28 = *(a1 + 40);
    v27 = *(a1 + 48);
    v29 = *(a1 + 32);
    v30 = *(v29 + 24);
    v31 = *(v29 + 40);
    v18 = v4;
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v31 adSpeechSessionEnded]);
    v32 = 136316418;
    v33 = "[ADCommandCenter _startDictationWithLanguageCode:options:speechOptions:sessionUUID:delegate:completion:]_block_invoke";
    v34 = 2112;
    v35 = v27;
    v36 = 2112;
    v37 = v28;
    v38 = 2112;
    v39 = v30;
    v40 = 2112;
    v41 = v31;
    v42 = 2112;
    v43 = v19;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Ignored Dictation with session id %@ because the expected request delegate is nil and speech delegate is %@, but the actual request delegate is %@ and speech delegate is %@, delegate session ended %@.", &v32, 0x3Eu);
LABEL_20:
  }
}

uint64_t sub_1001E8C8C(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechManager];
  [v2 startSpeechCaptureWithURL:*(a1 + 40) isNarrowBand:*(a1 + 56) isDictation:0 sessionUUID:0];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1001E8E84(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 296), *(a1 + 40));
  [*(a1 + 32) _acousticId_startSessionWithContext:*(a1 + 48)];
  v2 = [*(a1 + 32) _speechManager];
  [v2 startAcousticIDCaptureWithOptions:*(a1 + 40) sessionUUID:0];
}

void sub_1001E91F0(id *a1)
{
  objc_storeStrong(a1[4] + 37, a1[5]);
  objc_storeStrong(a1[4] + 46, a1[6]);
  *(a1[4] + 360) = 1;
  [a1[4] _setSpeechCapturingContext:0];
  v2 = [a1[4] _speechManager];
  v3 = a1[5];
  v4 = [a1[4] _sessionManager];
  v5 = [v4 languageCode];
  v6 = [v2 startSpeechCaptureForRequestWithOptions:v3 sessionUUID:0 language:v5];

  [a1[4] _setSpeechCapturingContext:v6];
}

void sub_1001E953C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 408);
  v3 = v2;
  if (*(a1 + 56))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      *buf = 136315650;
      v17 = "[ADCommandCenter _startRecordingForPendingSpeechRequestForDelegate:withOptions:sessionUUID:completion:]_block_invoke";
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v9;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Entering speech group %@ (%@)...", buf, 0x20u);
    }

    dispatch_group_enter(v3);
    v6 = *(a1 + 56);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001E96D8;
    v10[3] = &unk_100516498;
    v7 = *(a1 + 40);
    v15 = *(a1 + 64);
    v8 = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    v13 = v3;
    v14 = *(a1 + 48);
    (*(v6 + 16))(v6, v10);
  }
}

void sub_1001E96D8(uint64_t a1, double a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    *buf = 136315650;
    v23 = "[ADCommandCenter _startRecordingForPendingSpeechRequestForDelegate:withOptions:sessionUUID:completion:]_block_invoke";
    v24 = 2048;
    v25 = a2;
    v26 = 2112;
    v27 = v12;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Continue pending recording at %f (%@)...", buf, 0x20u);
  }

  v5 = +[AFAnalytics sharedAnalytics];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001E99F4;
  v20[3] = &unk_100516470;
  *&v20[4] = a2;
  v21 = *(a1 + 64);
  [v5 logEventWithType:307 contextProvider:v20];

  *(*(a1 + 40) + 416) = a2;
  if (*(a1 + 64) == 1)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[ADCommandCenter _startRecordingForPendingSpeechRequestForDelegate:withOptions:sessionUUID:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Asking to play recording start alert on prelistening continue", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    v8 = *(v7 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E9AD4;
    block[3] = &unk_10051DFE8;
    block[4] = v7;
    dispatch_async(v8, block);
  }

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    *buf = 136315650;
    v23 = "[ADCommandCenter _startRecordingForPendingSpeechRequestForDelegate:withOptions:sessionUUID:completion:]_block_invoke_2";
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Leaving speech group %@ (%@)...", buf, 0x20u);
  }

  dispatch_group_leave(*(a1 + 48));
  v10 = *(a1 + 48);
  v11 = *(*(a1 + 40) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001E9AE0;
  v15[3] = &unk_10051DB68;
  v16 = v10;
  v17 = *(a1 + 32);
  v18 = *(a1 + 56);
  dispatch_group_notify(v16, v11, v15);
}

id sub_1001E99F4(uint64_t a1)
{
  v6[0] = @"timestamp";
  v2 = [NSNumber numberWithDouble:*(a1 + 32)];
  v6[1] = @"prelistening";
  v7[0] = v2;
  v3 = [NSNumber numberWithBool:*(a1 + 40)];
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_1001E9AE0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 136315650;
    v6 = "[ADCommandCenter _startRecordingForPendingSpeechRequestForDelegate:withOptions:sessionUUID:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Leaving request group %@ (%@)...", &v5, 0x20u);
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t sub_1001EA508(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_1001EA524(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 296), *(a1 + 40));
  if (AFDeviceSupportsBargeIn())
  {
    v2 = [*(a1 + 32) _contextManager];
    v3 = [v2 localContextWithPrivacyClass:10];

    [*(a1 + 40) activationEvent];
    if (AFSpeechEventIsVoiceTrigger())
    {
      v4 = *(*(a1 + 32) + 296);
      v5 = [*(a1 + 40) bargeInOptions];
      v6 = v3;
      v7 = [v6 alarmSnapshot];
      v8 = [v7 hasFiringAlarms];

      if (v8)
      {
        v9 = 8;
      }

      else
      {
        v9 = 0;
      }

      v10 = [v6 timerSnapshot];
      v11 = [v10 hasFiringTimers];

      if (v11)
      {
        v9 |= 0x10uLL;
      }

      v12 = [v6 playbackStateSnapshot];
      v13 = [v12 playbackState];

      if (v13 == 1)
      {
        v14 = v9 + 1;
      }

      else
      {
        v14 = v9;
      }

      v15 = [v6 homeAnnouncementSnapshot];

      v16 = [v15 state];
      [v4 setBargeInOptions:v14 & 0xFFFFFFFFFFFFFFDFLL | (32 * (v16 & 1)) | v5];
    }

    v17 = *(*(a1 + 32) + 296);
    v18 = [v3 playbackStateSnapshot];
    [v17 setIsMediaPlaying:{objc_msgSend(v18, "playbackState") == 1}];
  }

  v19 = [AFSafetyBlock alloc];
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_1001EA7F8;
  v34 = &unk_10051C128;
  v35 = *(a1 + 48);
  v36 = *(a1 + 56);
  v20 = [v19 initWithBlock:&v31];
  v21 = *(a1 + 32);
  v22 = *(v21 + 64);
  *(v21 + 64) = v20;

  [*(a1 + 32) _acousticId_reset];
  v23 = [*(a1 + 32) _speechManager];
  [*(a1 + 32) _setSpeechCapturingContext:0];
  v24 = *(a1 + 64);
  v25 = *(a1 + 40);
  v26 = [*(a1 + 32) _sessionManager];
  v27 = [v26 languageCode];
  v28 = [v23 startSpeechCaptureForRequestWithOptions:v25 sessionUUID:v24 language:v27];

  [*(a1 + 32) _setSpeechCapturingContext:v28];
  if ([*(a1 + 40) audioFileType])
  {
    objc_storeStrong((*(a1 + 32) + 48), *(a1 + 72));
  }

  v29 = *(a1 + 80);
  if (v29)
  {
    (*(v29 + 16))();
  }

  v30 = *(a1 + 88);
  if (v30)
  {
    (*(v30 + 16))(v30, 1);
  }
}

void sub_1001EA7F8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 136315650;
    v6 = "[ADCommandCenter _startSpeechRequestWithDelegate:withOptions:sessionUUID:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Leaving request group %@ (%@)...", &v5, 0x20u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001EACB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "[ADCommandCenter _startNonSpeechRequest:forDelegate:withInfo:options:suppressAlert:completion:]_block_invoke";
      v13 = 2112;
      v14 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s options = %@", buf, 0x16u);
      v2 = *(a1 + 32);
    }

    objc_storeStrong((*(a1 + 40) + 296), v2);
    v4 = [*(a1 + 40) _speechManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001EAEC0;
    v9[3] = &unk_1005187C8;
    v10 = *(a1 + 32);
    v5 = [AFSetAudioSessionActiveContext newWithBuilder:v9];
    [v4 prepareAudioSystemWithContext:v5 completion:0];
  }

  [*(a1 + 40) _sendRestrictionsInPreparationForRequest];
  [*(a1 + 40) _context_updateContext];
  [*(a1 + 40) _reallyHandleNewStartRequest:*(a1 + 48) info:*(a1 + 56)];
  [*(a1 + 40) _sendLocationIfNeededForRequest];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    *buf = 136315650;
    v12 = "[ADCommandCenter _startNonSpeechRequest:forDelegate:withInfo:options:suppressAlert:completion:]_block_invoke_2";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Leaving request group %@ (%@)...", buf, 0x20u);
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_1001EAEC0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setReason:3];
  [v3 setSpeechRequestOptions:*(a1 + 32)];
}

uint64_t sub_1001EB578(uint64_t a1)
{
  [*(a1 + 32) _startNonSpeechRequest:*(a1 + 40) forDelegate:*(a1 + 48) withInfo:*(a1 + 56) options:*(a1 + 64) suppressAlert:objc_msgSend(*(a1 + 72) completion:{"options") & 1, 0}];
  result = *(a1 + 80);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001EB614(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EB6DC;
  block[3] = &unk_10051D228;
  v7 = a2;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

uint64_t sub_1001EB6C0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void sub_1001EB6DC(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [AFError errorWithCode:5 description:@"Unable to start UI with text." underlyingError:0];
    [v3 adRequestDidCompleteWithSuccess:0 error:v4];
  }
}

void sub_1001EBE18(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[2];
  v3 = *(a1 + 32) == v2 || v2 == 0;
  if (v3 && !v1[5])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADCommandCenter _reallyEndSessionForDelegate:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Asking speech manager to release audio session...", &v9, 0xCu);
      v1 = *(a1 + 40);
    }

    v8 = [v1 _speechManager];
    [v8 endSession];
  }

  else
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = v1[5];
      v9 = 136315650;
      v10 = "[ADCommandCenter _reallyEndSessionForDelegate:]_block_invoke";
      v11 = 2048;
      v12 = v2;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Ignored releasing audio session because current client is %p and speech delegate is %p.", &v9, 0x20u);
    }
  }
}

void sub_1001EC18C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _reallyEndSessionForDelegate:*(a1 + 32)];
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[72];
    if (*(a1 + 40) == v3)
    {
      WeakRetained[72] = 0;

      v2 = WeakRetained;
    }
  }
}

void sub_1001EC43C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[ADCommandCenter _prepareForAppLaunchForRequest:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  v4 = [*(a1 + 32) copy];
  v5 = *(a1 + 40);
  v6 = *(v5 + 576);
  *(v5 + 576) = v4;
}

void sub_1001ED998(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[601] & 1) != 0 || v2[600] == 1)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v7 = "[ADCommandCenter resumeInterruptedAudioPlaybackIfNeeded]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Not forcing audio session inactive since we are in a phone call", buf, 0xCu);
    }
  }

  else
  {
    v4 = [v2 _contextManager];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001EDAC4;
    v5[3] = &unk_10051B778;
    v5[4] = *(a1 + 32);
    [v4 getNowPlayingMediaIsResumable:v5];
  }
}

id *sub_1001EDAC4(id *result, int a2)
{
  if (a2)
  {
    return [result[4] forceAudioSessionInactiveWithOptions:1 completion:0];
  }

  return result;
}

void sub_1001EE4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001EE4E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EE620;
  block[3] = &unk_1005163B8;
  v8 = *(a1 + 80);
  v14 = v6;
  v22 = v8;
  v15 = *(a1 + 40);
  v16 = v5;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 32);
  v19 = v9;
  v20 = v10;
  v21 = *(a1 + 72);
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, block);
}

uint64_t sub_1001EE620(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v26 = 0;
    v9 = [v7 getDictationLanguagesForSupportedLocales:v8 error:&v26];
    v6 = v26;
    v10 = *(*(a1 + 96) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (v6)
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v31 = "[ADCommandCenter _getDictationLanguages:options:speechOptions:delegate:completion:]_block_invoke_2";
        v32 = 2112;
        v33 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Falling back to non LID dictation flow for reason: %@", buf, 0x16u);
      }

      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 56) adSpeechLanguageDetectorFailedWithError:v6];
      }

      if (*(a1 + 64))
      {
        v29 = *(a1 + 64);
        v13 = [NSArray arrayWithObjects:&v29 count:1];
        v14 = *(*(a1 + 96) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }
    }

    else
    {
      v16 = *(*(*(a1 + 96) + 8) + 40);
      if (v16 && [v16 count])
      {
        v17 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v18 = *(*(*(a1 + 96) + 8) + 40);
          *buf = 136315394;
          v31 = "[ADCommandCenter _getDictationLanguages:options:speechOptions:delegate:completion:]_block_invoke";
          v32 = 2112;
          v33 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Using language detector with languages: %@", buf, 0x16u);
        }

        [*(a1 + 72) setLanguageDetectionUserContext:*(a1 + 40)];
        v6 = 0;
        *(*(a1 + 80) + 656) = 1;
        *(*(a1 + 80) + 657) = 0;
      }

      else
      {
        v19 = [NSString stringWithFormat:@"User context returned 0 dictation languages\n%@\n%@", *(a1 + 40), *(a1 + 48)];
        v20 = [AFError errorWithCode:2800 description:v19 underlyingError:0];
        v21 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v31 = "[ADCommandCenter _getDictationLanguages:options:speechOptions:delegate:completion:]_block_invoke";
          v32 = 2112;
          v33 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Falling back to non LID dictation flow for reason: %@", buf, 0x16u);
        }

        if (objc_opt_respondsToSelector())
        {
          [*(a1 + 56) adSpeechLanguageDetectorFailedWithError:v20];
        }

        if (*(a1 + 64))
        {
          v28 = *(a1 + 64);
          v22 = [NSArray arrayWithObjects:&v28 count:1];
          v23 = *(*(a1 + 96) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = v22;
        }

        v6 = 0;
      }
    }

    goto LABEL_27;
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 56) adSpeechLanguageDetectorFailedWithError:*(a1 + 32)];
  }

  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v31 = "[ADCommandCenter _getDictationLanguages:options:speechOptions:delegate:completion:]_block_invoke";
    v32 = 2112;
    v33 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Falling back to non LID dictation flow for reason: %@", buf, 0x16u);
  }

  if (*(a1 + 64))
  {
    v27 = *(a1 + 64);
    v4 = [NSArray arrayWithObjects:&v27 count:1];
    v5 = *(*(a1 + 96) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
LABEL_27:
  }

  result = *(a1 + 88);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(*(*(a1 + 96) + 8) + 40));
  }

  return result;
}

void sub_1001EEAEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) refId];
  v5 = [v2 _executionContextMatchingExecutionInfo:v3 fallbackRequestID:v4];

  [v5 setPresentedUIResponse:1];
  v6 = [v5 isFromRemote];
  v7 = AFSiriLogContextDaemon;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      v13 = 136315650;
      v14 = "[ADCommandCenter UIService:didPresentUIResponseForCommand:withExecutionInfo:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s set most recent remote visible context for %@ to %@", &v13, 0x20u);
    }

    v9 = *(a1 + 32);
    v10 = v5;
    v11 = *(v9 + 496);
    *(v9 + 496) = v10;
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "[ADCommandCenter UIService:didPresentUIResponseForCommand:withExecutionInfo:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Most recent remote visible context cleared", &v13, 0xCu);
    }

    v12 = *(a1 + 32);
    v11 = *(v12 + 496);
    *(v12 + 496) = 0;
  }
}

void sub_1001EFA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1001EFAB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v45 = 0;
  v44 = 0;
  v4 = [*(a1 + 32) _sharedMultiUserService];
  v5 = v4;
  v6 = *(a1 + 40);
  if (!v6)
  {
    v6 = *(a1 + 48);
  }

  v7 = *(a1 + 56);
  if (!v7)
  {
    v7 = *(a1 + 64);
  }

  v43 = 0;
  v38 = v3;
  v8 = [v4 validateAndReturnScores:v6 classifiedUser:v7 donatedScores:v3 unknownUserSharedId:&v43 totalUsers:&v45 ghostVoiceProfileDetected:&v44];
  v36 = v43;
  v9 = *(*(a1 + 80) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = objc_alloc_init(NSMutableArray);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = *(*(*(a1 + 80) + 8) + 40);
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v40;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v19 = [*(*(*(a1 + 80) + 8) + 40) objectForKey:{v18, v36}];
        v20 = v19;
        if (!*(*(*(a1 + 88) + 8) + 40) || [v19 integerValue] > v15)
        {
          v15 = [v20 integerValue];
          v21 = [v18 copy];
          v22 = *(*(a1 + 88) + 8);
          v23 = *(v22 + 40);
          *(v22 + 40) = v21;
        }

        v24 = objc_alloc_init(SAUserConfidenceScore);
        [v24 setConfidenceScore:{objc_msgSend(v20, "integerValue")}];
        [v24 setSharedUserId:v18];
        [v11 addObject:v24];
      }

      v14 = [v12 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v14);
  }

  if ([*(*(*(a1 + 80) + 8) + 40) count])
  {
    v25 = v36;
    if ((AFIsATV() & 1) == 0)
    {
      v26 = [*(*(*(a1 + 80) + 8) + 40) count];
      if (v26 != [*(a1 + 48) count] || (v27 = objc_msgSend(*(a1 + 48), "count"), v27 < v45) || v44 == 1)
      {
        v28 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v47 = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Assistantd and CoreSpeech are out of sync. Attempt recovery.", buf, 0xCu);
        }

        v29 = [*(a1 + 32) _sharedMultiUserService];
        [v29 voiceProfilesOutOfSync];
      }
    }

    if (v25)
    {
      v30 = objc_alloc_init(SAUserConfidenceScore);
      [v30 setConfidenceScore:*(a1 + 96)];
      [v30 setSharedUserId:v25];
      [v11 addObject:v30];
    }

    [*(a1 + 72) setScores:{v11, v36}];
    v31 = *(a1 + 72);
    v32 = [NSNumber numberWithInteger:*(a1 + 104)];
    [v31 setScoringSchemeVersion:v32];
    v33 = v38;
    goto LABEL_30;
  }

  v34 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v47 = "[ADCommandCenter _handleConfidenceScores:classification:classifiedUser:unknownUserScore:duration:version:thresholdingType:assetVersion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s No scores found for tracked profiles.", buf, 0xCu);
  }

  v35 = [*(a1 + 48) count];
  v25 = v37;
  v33 = v38;
  if (v35)
  {
    v32 = [*(a1 + 32) _sharedMultiUserService];
    [v32 voiceProfilesOutOfSync];
LABEL_30:
  }
}

void sub_1001F00D4(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[ADCommandCenter speechManager:audioSessionDidBecomeActive:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %d", &v5, 0x12u);
  }

  [*(*(a1 + 32) + 16) adAudioSessionDidBecomeActive:*(a1 + 40)];
  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
    [v4 audioSessionDidEnd];
  }
}

id sub_1001F023C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[ADCommandCenter speechManager:audioSessionWillBecomeActive:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %d", &v5, 0x12u);
  }

  return [*(*(a1 + 32) + 16) adAudioSessionWillBecomeActive:*(a1 + 40)];
}

void sub_1001F0380(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[ADCommandCenter speechManager:didChangeRecordingState:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %d", &v5, 0x12u);
  }

  v4 = 2;
  if (!*(a1 + 40))
  {
    v4 = 0;
  }

  *(*(a1 + 32) + 256) = v4;
}

void sub_1001F097C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[ADCommandCenter _saQuickStop:executionContext:completion:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s QuickStop invocation completed with response: %@", &v14, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [AceObject aceObjectWithGenericCommand:v5];
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = SACommandSucceeded_ptr;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315650;
        v15 = "[ADCommandCenter _saQuickStop:executionContext:completion:]_block_invoke";
        v16 = 2112;
        v17 = v5;
        v18 = 2112;
        v19 = v6;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s QuickStop invocation failed with response: %@, error: %@", &v14, 0x20u);
      }

      v10 = SACommandFailed_ptr;
    }
  }

  v12 = objc_alloc_init(*v10);
  v13 = [*(a1 + 32) aceId];
  [v12 setRefId:v13];

  (*(*(a1 + 40) + 16))();
}

void sub_1001F0D00(uint64_t a1, uint64_t a2)
{
  v7 = objc_alloc_init(SAQuickStopCompleted);
  v4 = [*(a1 + 32) aceId];
  [v7 setRefId:v4];

  if (a2)
  {
    v6 = &SAQuickStopCategoryAlarmValue;
LABEL_7:
    v5 = v7;
    goto LABEL_8;
  }

  if ((a2 & 2) != 0)
  {
    v6 = &SAQuickStopCategoryTimerValue;
    goto LABEL_7;
  }

  v5 = v7;
  if (a2)
  {
    goto LABEL_9;
  }

  v6 = &SAQuickStopCategoryNoneValue;
LABEL_8:
  [v5 setCategoryStopped:*v6];
LABEL_9:
  (*(*(a1 + 40) + 16))();
}

void sub_1001F0DD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001F0E8C;
  v6[3] = &unk_10051E038;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1001F0E8C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v32 = *(a1 + 32);
    *buf = 136315394;
    v45 = "[ADCommandCenter _handleQuickStopCommandRoutedFromRemote:completion:]_block_invoke_3";
    v46 = 2112;
    v47 = v32;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  v3 = [*(a1 + 32) alarmSnapshot];
  v4 = [v3 hasFiringAlarms];
  v5 = v4;
  if (v4)
  {
    v6 = objc_alloc_init(SOClockAlarmManager);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = [v3 alarmsByID];
    v8 = [v7 allValues];

    v9 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          if ([v13 isFiring])
          {
            v14 = [v13 alarmID];
            v15 = [v14 UUIDString];
            v16 = [v6 dismissAlarmWithIdentifier:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v10);
    }

    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v45 = "[ADCommandCenter _handleQuickStopCommandRoutedFromRemote:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s QuickStop: Dismissed firing alarms.", buf, 0xCu);
    }
  }

  v18 = [*(a1 + 32) timerSnapshot];
  if ([v18 hasFiringTimers])
  {
    v33 = v3;
    v19 = objc_alloc_init(SOClockTimerManager);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = [v18 timersByID];
    v21 = [v20 allValues];

    v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v34 + 1) + 8 * j);
          if ([v26 isFiring])
          {
            v27 = [v26 timerID];
            v28 = [v27 UUIDString];
            v29 = [v19 dismissTimerWithIdentifier:v28];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v23);
    }

    v30 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v45 = "[ADCommandCenter _handleQuickStopCommandRoutedFromRemote:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s QuickStop: Dismissed firing timers.", buf, 0xCu);
    }

    v3 = v33;
  }

  else if ((v5 & 1) == 0)
  {
    v31 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v45 = "[ADCommandCenter _handleQuickStopCommandRoutedFromRemote:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s QuickStop: Nothing to stop", buf, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001F1478(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (objc_opt_respondsToSelector())
  {
    v3 = AFSupportsSCDAFramework();
    v4 = SCDAMonitor_ptr;
    if (!v3)
    {
      v4 = AFMyriadMonitor_ptr;
    }

    v5 = [*v4 sharedMonitor];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001F160C;
    v9[3] = &unk_10051CA88;
    v9[4] = *(a1 + 32);
    v6 = v2;
    v7 = *(a1 + 56);
    v10 = v6;
    v13 = v7;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    [v5 waitForMyriadDecisionForReason:@"Perform two shot prompt." withCompletion:v9];

    goto LABEL_7;
  }

  if (*(a1 + 48))
  {
    v8 = [NSString stringWithFormat:@"%@ is incapable of performing fake two shot prompt.", v2];
    v5 = [AFError errorWithCode:15 description:v8 underlyingError:0];

    (*(*(a1 + 48) + 16))(0.0, 0.0);
LABEL_7:
  }
}

void sub_1001F160C(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F16D4;
  block[3] = &unk_1005162F0;
  v11 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v7 = v4;
  v10 = v5;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  dispatch_async(v3, block);
}

void sub_1001F16D4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);

    [v2 adSpeechRecordingPerformTwoShotPromptWithType:v4 context:v3 completion:v5];
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[ADCommandCenter speechManager:performTwoShotPromptWithType:context:completion:]_block_invoke_3";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Myriad lost, twoshot prompt dropped.", buf, 0xCu);
    }

    if (*(a1 + 48))
    {
      v7 = [NSString stringWithFormat:@"%@ two shot prompt was rejected.", *(a1 + 32)];
      v8 = [AFError errorWithCode:15 description:v7 underlyingError:0];

      (*(*(a1 + 48) + 16))(0.0, 0.0);
    }
  }
}

uint64_t sub_1001F18E4(uint64_t a1)
{
  *(*(a1 + 32) + 656) = 0;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 40);

    return [v4 adSpeechLanguageDetectorFailedWithError:v3];
  }

  return result;
}

void sub_1001F1A20(uint64_t a1)
{
  if (*(*(a1 + 32) + 336))
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001F1BAC;
    v11[3] = &unk_1005162C8;
    v4 = v2;
    v12 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v11];
    v5 = objc_alloc_init(SASMultilingualDictationLanguageSelected);
    v6 = [*(*(a1 + 32) + 336) currentRequestId];
    [v5 setRefId:v6];

    [v5 setLanguageDetected:*(a1 + 48)];
    [v5 setConfidenceScoresByLanguage:v4];
    [*(a1 + 32) _sendCommandToServer:v5];
    if (objc_opt_respondsToSelector())
    {
      [*(*(a1 + 32) + 40) adSpeechRecordingDidDetectLanguage:*(a1 + 48) confidenceScores:*(a1 + 40) isConfident:*(a1 + 56)];
    }

    *(*(a1 + 32) + 657) = 1;
    [*(a1 + 32) _stopLanguageDetectionWaitTimerIfNeeded];
    v7 = *(*(a1 + 32) + 672);
    if (v7)
    {
      v8 = objc_retainBlock(v7);
      v9 = *(a1 + 32);
      v10 = *(v9 + 672);
      *(v9 + 672) = 0;

      v8[2](v8);
    }
  }
}

void sub_1001F1BAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 floatValue];
  v7 = *(a1 + 32);
  v8 = [NSNumber numberWithInteger:llroundf(v6 * 1000.0)];
  [v7 setObject:v8 forKey:v5];
}

void sub_1001F1CFC(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v7 = [v2 aceId];

  v3 = [*(*(a1 + 40) + 336) currentRequestId];
  v4 = [v7 isEqualToString:v3];

  if (v4)
  {
    v5 = objc_alloc_init(SASSpeechEndpointIdentified);
    v6 = [NSNumber numberWithLong:*(a1 + 48)];
    [v5 setEndpointTimestamp:v6];

    [v5 setRefId:v7];
    [*(a1 + 40) _sendCommandToServer:v5];
  }
}

uint64_t sub_1001F1E7C(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 40);

    return [v4 adSpeechRecordingDidDetectStartPointWithContext:v3];
  }

  return result;
}

void sub_1001F1FD0(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *v14 = 136315394;
    *&v14[4] = "[ADCommandCenter speechManager:recognitionDidCompleteWithError:secureOfflineOnlyRecognition:sessionUUID:statistics:]_block_invoke";
    *&v14[12] = 2114;
    *&v14[14] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %{public}@", v14, 0x16u);
  }

  v4 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    v5 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 32)];
    v6 = [*(a1 + 40) dictationOptions];
    v7 = [v6 interactionIdentifier];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_10051F508;
    }

    [v5 setObject:v9 forKeyedSubscript:@"dictationUIInteractionIdentifier"];

    v10 = [NSDictionary dictionaryWithDictionary:v5];

    v4 = v10;
  }

  [*(a1 + 48) _metrics_markLocalSpeechCompletedWithStatistics:v4];
  v11 = *(a1 + 56);
  if (!v11)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (*(*(a1 + 48) + 378))
  {
    v12 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "[ADCommandCenter speechManager:recognitionDidCompleteWithError:secureOfflineOnlyRecognition:sessionUUID:statistics:]_block_invoke";
      *&v14[12] = 2114;
      *&v14[14] = v11;
      v13 = "%s Local speech recognition failed, and so did the session: %{public}@";
LABEL_21:
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, v14, 0x16u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v12 = AFSiriLogContextSpeech;
  if (*(a1 + 64))
  {
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "[ADCommandCenter speechManager:recognitionDidCompleteWithError:secureOfflineOnlyRecognition:sessionUUID:statistics:]_block_invoke";
      *&v14[12] = 2114;
      *&v14[14] = v11;
      v13 = "%s Local speech recognition failed: %{public}@";
      goto LABEL_21;
    }

LABEL_16:
    *(*(a1 + 48) + 378) = 0;
    [*(a1 + 48) _endSpeechRequestForCommand:0 withError:*(a1 + 56) suppressAlert:1 secureOfflineOnlyDictation:{*(a1 + 64), *v14, *&v14[16]}];
    goto LABEL_17;
  }

  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *v14 = 136315394;
    *&v14[4] = "[ADCommandCenter speechManager:recognitionDidCompleteWithError:secureOfflineOnlyRecognition:sessionUUID:statistics:]_block_invoke";
    *&v14[12] = 2114;
    *&v14[14] = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Ignoring local speech recognition failure because the session is still active: %{public}@", v14, 0x16u);
  }

LABEL_17:
}

void sub_1001F2350(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[ADCommandCenter speechManager:didProduceLocalLoggablePackage:sessionUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v14, 0xCu);
  }

  v3 = +[AFPreferences sharedPreferences];
  v4 = [v3 siriDataSharingOptInStatus];

  v5 = [*(a1 + 32) dictationOptions];
  if ([v5 forceOfflineRecognition])
  {
    v6 = [*(a1 + 32) dictationOptions];
    v7 = [v6 secureOfflineOnly];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[AFPreferences sharedPreferences];
  v9 = [v8 isDictationHIPAACompliant];

  if (!v9)
  {
    if (v7)
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = [*(a1 + 32) dictationOptions];
      v13 = [v12 interactionIdentifier];
      [v11 _metrics_markLocalSpeechPackage:v10 interactionId:v13 optedIn:v4 == 1];
    }
  }
}

void sub_1001F26CC(uint64_t a1)
{
  v2 = [*(a1 + 32) recognition];
  v3 = [v2 phrases];
  v4 = [v2 utterances];
  v5 = [*(a1 + 32) rawRecognition];
  v6 = [v5 phrases];
  v7 = [v5 utterances];
  v8 = [*(a1 + 40) dictationOptions];
  if (![v8 forceOfflineRecognition])
  {
    v11 = 0;
    goto LABEL_5;
  }

  v9 = [*(a1 + 40) dictationOptions];
  v10 = [v9 secureOfflineOnly];

  if (v10)
  {
    v8 = [*(a1 + 40) dictationOptions];
    v11 = [v8 detectUtterances];
LABEL_5:

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v12 = [*(a1 + 40) dictationOptions];
  v13 = [v12 secureOfflineOnly];

  if (v13)
  {
    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v51 = "[ADCommandCenter speechManager:didRecognizePackage:sessionUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Phrases=<REDACTED>", buf, 0xCu);
    }
  }

  else
  {
    [v3 enumerateObjectsUsingBlock:&stru_1005161E8];
    [v4 enumerateObjectsUsingBlock:&stru_100516228];
  }

  v15 = [*(a1 + 40) dictationOptions];
  v16 = [v15 transcriptionMode];

  if (v16 != 3)
  {
    v18 = [*(a1 + 40) dictationLanguages];
    v19 = [v18 firstObject];

    v20 = *(a1 + 48);
    if (v20[379] == 1)
    {
      if (v20[376] == 1)
      {
        v21 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v51 = "[ADCommandCenter speechManager:didRecognizePackage:sessionUUID:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Ignoring and canceling final local recognition because server results have arrived", buf, 0xCu);
        }

        [*(a1 + 40) cancelLocalRecognitionIfActive];
        goto LABEL_21;
      }

      if ((v20[378] & 1) == 0)
      {
        if (v20[656] == 1)
        {
          v26 = _AFPreferencesMultilingualDictationTimeoutInMilliSeconds();
          v27 = v26;
          if (v26)
          {
            [v26 doubleValue];
            v29 = v28;
          }

          else
          {
            v29 = 2000.0;
          }
        }

        else
        {
          v29 = 2000.0;
        }

        if (![*(a1 + 40) isLocallyRecognizingInDictationMode])
        {
          v29 = 1000.0;
        }

        v30 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v51 = "[ADCommandCenter speechManager:didRecognizePackage:sessionUUID:]_block_invoke";
          v52 = 2048;
          v53 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s Deferring final local recognition results for %f seconds while waiting for the server", buf, 0x16u);
        }

        v31 = [*(*(a1 + 48) + 336) currentRequestId];
        v35 = [v31 copy];

        v32 = dispatch_time(0, (v29 * 1000000.0));
        v33 = *(a1 + 48);
        v36 = *(v33 + 8);
        v37 = v32;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001F2C34;
        block[3] = &unk_100516278;
        v39 = v35;
        v40 = v33;
        v41 = v19;
        v42 = v2;
        v49 = v11;
        v43 = *(a1 + 40);
        v44 = v3;
        v45 = v6;
        v46 = v4;
        v47 = v7;
        v48 = *(a1 + 56);
        v34 = v35;
        dispatch_after(v37, v36, block);

        goto LABEL_21;
      }
    }

    [v20 _handleLocalSpeechRecognitionForOfflineSupport:v2 logText:v11 ^ 1];
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    v24 = *(v22 + 40);
    v25 = [*(v22 + 304) aceId];
    [v24 adSpeechRecordingDidRecognizePhrases:v3 rawPhrases:v6 utterances:v4 rawUtterances:v7 nluResult:0 sessionUUID:v23 refId:v25];

LABEL_21:
    goto LABEL_22;
  }

  v17 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v51 = "[ADCommandCenter speechManager:didRecognizePackage:sessionUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Not handling phraseRecognition because this is a phoneme transcription request", buf, 0xCu);
  }

LABEL_22:
}

void sub_1001F2C34(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 336) currentRequestId];
  LOBYTE(v2) = [v2 isEqualToString:v3];

  if ((v2 & 1) == 0)
  {
    v4 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315138;
    v15 = "[ADCommandCenter speechManager:didRecognizePackage:sessionUUID:]_block_invoke";
    v5 = "%s Ignoring final local recognition because the previous request has already finished";
    goto LABEL_7;
  }

  if (*(*(a1 + 40) + 376) == 1)
  {
    v4 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 136315138;
    v15 = "[ADCommandCenter speechManager:didRecognizePackage:sessionUUID:]_block_invoke";
    v5 = "%s Ignoring final local recognition because the server won the race";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, buf, 0xCu);
    return;
  }

  [AFAggregator logLocalRecognitionWonForLanguage:*(a1 + 48)];
  [*(a1 + 40) _handleLocalSpeechRecognitionForOfflineSupport:*(a1 + 56) logText:(*(a1 + 112) & 1) == 0];
  if ([*(a1 + 64) isLocallyRecognizingInDictationMode])
  {
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[ADCommandCenter speechManager:didRecognizePackage:sessionUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Giving up on final server recognition because local won the race", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001F2EB8;
    v8[3] = &unk_100516250;
    v8[4] = v7;
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
    v12 = *(a1 + 96);
    v13 = *(a1 + 104);
    [v7 _handleSpeechRecognizedWithDelegateBlock:v8];
  }
}

void sub_1001F2EB8(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = *(v1 + 40);
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v8 = [*(v1 + 304) aceId];
  [v3 adSpeechRecordingDidRecognizePhrases:v2 rawPhrases:v4 utterances:v5 rawUtterances:v6 nluResult:0 sessionUUID:v7 refId:v8];
}

void sub_1001F2F40(id a1, AFSpeechUtterance *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADCommandCenter speechManager:didRecognizePackage:sessionUUID:]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Utterance[%lu]=%@", &v7, 0x20u);
  }
}

void sub_1001F3018(id a1, AFSpeechPhrase *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADCommandCenter speechManager:didRecognizePackage:sessionUUID:]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Phrase[%lu]=%@", &v7, 0x20u);
  }
}

void sub_1001F3188(uint64_t a1)
{
  [*(a1 + 32) _metrics_markLocalEagerRecognitionCandidate:*(a1 + 40)];
  v2 = objc_alloc_init(SASServerBoundConfusionNetwork);
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];
  [v2 setAceId:v4];

  v5 = [*(*(a1 + 32) + 304) aceId];
  [v2 setRefId:v5];

  v6 = [*(a1 + 40) aceRecognition];
  [v2 setRawRecognition:v6];

  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADCommandCenter speechManager:didRecognizeRawEagerRecognitionCandidate:sessionUUID:]_block_invoke";
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Sending raw recognition to server %@", &v8, 0x16u);
  }

  [*(a1 + 32) _sendCommandToServer:v2];
}

void sub_1001F33D0(id *a1)
{
  v2 = [a1[4] lastObject];
  [v2 endTime];
  v4 = v3;
  v5 = [a1[5] dictationOptions];
  v6 = [v5 secureOfflineOnly];

  if (v6)
  {
    v7 = [a1[6] canLogWithSpeechManager:a1[5]];
    v8 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    if (v7)
    {
      v9 = a1[4];
    }

    else
    {
      v9 = @"<REDACTED>";
    }

    *buf = 136315394;
    v17 = "[ADCommandCenter speechManager:didRecognizeTokens:sessionUUID:]_block_invoke";
    v18 = 2112;
    v19 = v9;
  }

  else
  {
    v8 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v10 = a1[4];
    *buf = 136315394;
    v17 = "[ADCommandCenter speechManager:didRecognizeTokens:sessionUUID:]_block_invoke";
    v18 = 2112;
    v19 = v10;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
LABEL_10:
  [a1[6] _metrics_markLocalPartialSpeechRecognition];
  v11 = a1[6];
  if (v11[379] == 1)
  {
    v12 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[ADCommandCenter speechManager:didRecognizeTokens:sessionUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Ignoring partial local recognitions because server results have arrived", buf, 0xCu);
    }
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001F3638;
    v13[3] = &unk_10051DB68;
    v13[4] = v11;
    v14 = a1[4];
    v15 = a1[7];
    [v11 _handlePartialSpeechRecognitionForElapsedTime:v13 WithDelegateBlock:v4];
  }
}

void sub_1001F3714(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKey:@"ModelInfo"];
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 40) + 40) adSpeechDidBeginLocalRecognitionWithModelInfo:v2 sessionUUID:*(a1 + 48)];
  }

  [*(a1 + 40) _metrics_markLocalSpeechStartedWithContext:*(a1 + 32)];
}

void sub_1001F3920(void *a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1[4] + 48) adAudioFileFinishedWriting:a1[5] error:a1[6] context:a1[7]];
    v2 = a1[4];
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;
  }
}

void sub_1001F3BC0(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 40) + 336);
    v13 = 136315650;
    v14 = "[ADCommandCenter speechManager:didFailWithError:context:]_block_invoke_2";
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %@ %@", &v13, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v2 || !v5[42])
  {
    v6 = [v5[42] currentRequestId];
    v7 = [v2 aceId];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      [*(a1 + 40) _sendCancelSpeechForCommand:v2];
      v9 = *(a1 + 40);
      v10 = [v9[42] currentRequestId];
      v11 = NSStringFromSelector(*(a1 + 56));
      [v9 _removeOutstandingRequestId:v10 forReason:v11];
    }

    if (v2)
    {
      v12 = [*(a1 + 40) _sessionManager];
      [v12 endRetryableRequestForCommand:v2];
    }

    [*(a1 + 40) _completeRequestForCurrentDelegate:0 error:*(a1 + 48)];
    [*(a1 + 40) _setCurrentRequest:0];
    [*(a1 + 40) _requestDidEnd];
    [*(a1 + 32) setContext:0];
    v5 = *(a1 + 40);
  }

  [v5 _clearSpeechDelegateState];
  [*(a1 + 40) _speechCaptureCompleted];
}

void sub_1001F3F60(uint64_t a1)
{
  v5 = [*(a1 + 32) context];
  if (v5)
  {
    v2 = [*(*(a1 + 40) + 336) currentRequestId];
    v3 = [v5 aceId];
    v4 = [v2 isEqualToString:v3];

    if (v4)
    {
      [*(a1 + 40) _requestDidEnd];
      [*(a1 + 40) _sendCancelSpeechForCommand:v5];
    }

    [*(a1 + 32) setContext:0];
  }

  [*(a1 + 40) _clearSpeechDelegateState];
  [*(a1 + 40) _speechCaptureCompleted];
}

id sub_1001F4284(uint64_t a1)
{
  v2 = +[NSProcessInfo processInfo];
  [v2 systemUptime];
  *(*(a1 + 32) + 544) = v3;

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 40);

  return [v5 adSpeechRecordingDidEndWithContext:v4];
}

void sub_1001F42E0(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 aceId];

  if (v3)
  {
    [*(a1 + 32) setContext:0];
  }

  [*(a1 + 40) _speechCaptureCompleted];
  if (*(a1 + 48) == 4)
  {
    [*(a1 + 40) _requestDidEnd];
    [*(a1 + 40) _completeRequestForCurrentDelegate:1 error:0];
  }
}

void sub_1001F4584(uint64_t a1)
{
  if ((*(*(a1 + 32) + 382) & 1) == 0 && AFIsInternalInstall() && AFIsHorseman())
  {
    v2 = +[ADMultiUserTestSupport sharedService];
    v3 = [v2 getDebugVoiceIdScores];

    if (v3)
    {
      v4 = [*(a1 + 32) _handleConfidenceScores:&__NSDictionary0__struct classification:3 classifiedUser:kCSSpeakerIdentificationVTInvocationScoreThresholdingType unknownUserScore:&stru_10051F508 duration:? version:? thresholdingType:? assetVersion:?];
    }
  }
}

void sub_1001F463C(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 aceId];

  if (v3)
  {
    v4 = objc_alloc_init(SASFinishSpeech);
    [v4 setPacketCount:*(a1 + 56)];
    [v4 setRefId:v3];
    [v4 ad_setAFEndpointMode:*(a1 + 64)];
    [v4 ad_setCSEndpointerMetrics:*(a1 + 40)];
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = [v4 packetCount];
      [v4 totalAudioRecorded];
      v13 = 136315906;
      v14 = "[ADCommandCenter speechManager:didReceiveLastAudioBufferWithEndpointMode:totalPacketCount:endpointerMetrics:context:]_block_invoke_2";
      v15 = 2112;
      v16 = v4;
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Sending %@ (packetCount = %zd, totalAudioRecorded = %f)...", &v13, 0x2Au);
    }

    [*(a1 + 48) _sendCommandToServer:v4];
    v9 = *(a1 + 48);
    v10 = *(v9 + 320);
    *(v9 + 320) = v4;
    v11 = v4;

    v12 = +[SNNetworkActivityTracing sharedInstance];

    [v12 networkActivityStop:3 withReason:2 andError:0 completion:0];
  }
}

void sub_1001F4C28(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 378) == 1)
  {
    if ([*(a1 + 40) isLocallyRecognizing])
    {
      v3 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = "[ADCommandCenter speechManager:capturedPackets:atTimestamp:totalCount:context:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Not sending audio packet to session because it has already failed and local recognition has taken over", buf, 0xCu);
      }

      return;
    }

    v2 = *(a1 + 32);
  }

  v4 = *(a1 + 56);
  if ([*(v2 + 296) usePrelisteningMode])
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 32);
    v7 = *(v6 + 416);
    if (v5 < v7)
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v15 = "[ADCommandCenter speechManager:capturedPackets:atTimestamp:totalCount:context:]_block_invoke";
        v16 = 2048;
        v17 = v5;
        v18 = 2048;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Ignoring prelistening speech data from %lf. Threshold is %lf", buf, 0x20u);
        v6 = *(a1 + 32);
      }

      *(v6 + 424) = *(a1 + 56);
      return;
    }

    v4 = *(a1 + 56) - *(v6 + 424);
  }

  v9 = [*(a1 + 40) context];
  v13 = [v9 aceId];

  v10 = [*(*(a1 + 32) + 336) currentRequestId];
  v11 = [v13 isEqualToString:v10];

  if (v11)
  {
    v12 = objc_alloc_init(SiriCoreSpeechPacket);
    [v12 setPackets:*(a1 + 48)];
    [v12 setPacketNumber:v4];
    [v12 setRefId:v13];
    [*(a1 + 32) _sendSessionObject:v12 opportunistically:0];
  }
}

void sub_1001F4FE8(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 aceId];

  v4 = [*(a1[5] + 42) currentRequestId];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    if (([a1[6] isEndAlertInfo] & 1) == 0)
    {
      v6 = objc_alloc_init(SASUpdateAudioInfo);
      [v6 ad_updateWithRecordingInfo:a1[6] speechRequestOptions:*(a1[5] + 37) clientConfiguration:*(a1[5] + 65)];
      [v6 setRefId:v3];
      [a1[5] _sendCommandToServer:v6];
    }

    v7 = [a1[6] audioSessionSetActiveEndHostTime];
    v8 = [a1[6] firstBufferHostTime];
    if (v7 > v8)
    {
      v9 = v8;
      if (v8)
      {
        v10 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v14 = 136315650;
          v15 = "[ADCommandCenter speechManager:didUpdateRecordingWithInfo:context:]_block_invoke";
          v16 = 2048;
          v17 = v9;
          v18 = 2048;
          v19 = v7;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s firstBufferHostTime = %llu, audioSessionSetActiveEndHostTime = %llu", &v14, 0x20u);
        }

        v11 = objc_alloc_init(SASSetAudioDuckingDelay);
        v12 = [NSNumber numberWithUnsignedLongLong:AFMachAbsoluteTimeGetMilliseconds()];
        [v11 setPreTriggerToDuckingEndDuration:v12];

        mach_absolute_time();
        v13 = [NSNumber numberWithUnsignedLongLong:AFMachAbsoluteTimeGetMilliseconds()];
        [v11 setDuckingEventSyncDelay:v13];

        [v11 setRefId:v3];
        [a1[5] _sendCommandToServer:v11];
      }
    }
  }
}

void sub_1001F5210(uint64_t a1)
{
  v2 = [*(a1 + 32) route];
  v3 = +[ADBluetoothManager sharedInstance];
  v4 = [v3 deviceWithRecordingInfo:*(a1 + 32)];

  v5 = [*(a1 + 32) isDucking];
  v6 = [*(a1 + 32) triggeredTwoShotBorealis];
  v7 = [*(a1 + 32) estimatedSpeechEndHostTime];
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = 136316418;
    v12 = "[ADCommandCenter speechManager:didUpdateRecordingWithInfo:context:]_block_invoke";
    v13 = 2112;
    v14 = v2;
    v15 = 2112;
    v16 = v4;
    v17 = 1024;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    v21 = 2048;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s recordRoute = %@, bluetoothDevice = %@, isDucking = %d, isTwoShot = %d, speechEndHostTime = %llu", &v11, 0x36u);
  }

  v9 = *(*(a1 + 40) + 40);
  v10 = [*(a1 + 32) route];
  [v9 adSpeechRecordingDidChangeAVRecordRoute:v10 bluetoothDevice:v4 isDucking:objc_msgSend(*(a1 + 32) isTwoShot:"isDucking") speechEndHostTime:objc_msgSend(*(a1 + 32) context:{"triggeredTwoShotBorealis"), objc_msgSend(*(a1 + 32), "estimatedSpeechEndHostTime"), *(a1 + 48)}];
}

void sub_1001F5634(id *a1)
{
  v2 = *(a1[4] + 5);
  v10 = [a1[5] route];
  v3 = [a1[5] audioSessionID];
  v4 = +[ADBluetoothManager sharedInstance];
  v5 = [v4 deviceWithRecordingInfo:a1[5]];
  v6 = [a1[4] _sessionManager];
  v7 = [a1[6] sessionUUID];
  v8 = [v6 sessionRequestIdForRefId:v7];
  v9 = [a1[7] dictationOptions];
  [v2 adSpeechRecordingDidBeginOnAVRecordRoute:v10 audioSessionID:v3 bluetoothDevice:v5 sessionRequestUUID:v8 dictationOptions:v9 context:a1[6]];
}

void sub_1001F5750(uint64_t a1)
{
  *(*(a1 + 32) + 544) = 0;
  v2 = [*(a1 + 40) route];
  if (AFRecordRouteIsHearst())
  {
  }

  else
  {
    v3 = *(*(a1 + 32) + 558);

    if (v3 == 1)
    {
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v6 = v4;
        v7 = [v5 route];
        v16 = 136315394;
        v17 = "[ADCommandCenter speechManager:didStartRecordingWithInfo:context:]_block_invoke";
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s 🎧 Recording route %@ != BluetoothDoAP, ignoring headphones' authenticated state", &v16, 0x16u);
      }

      [*(a1 + 32) _setHeadphonesAuthenticated:0];
    }
  }

  if ([*(a1 + 40) isFingerprintOnly])
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[ADCommandCenter speechManager:didStartRecordingWithInfo:context:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Fingerprint only request not sending start speech", &v16, 0xCu);
    }
  }

  else if ([*(a1 + 40) isSecureOfflineOnly])
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[ADCommandCenter speechManager:didStartRecordingWithInfo:context:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Secure offline request not sending start speech", &v16, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = [*(a1 + 48) sessionUUID];
    [v10 _setCurrentRequestWithRequestId:v11];
  }

  else
  {
    v12 = *(a1 + 32);
    if (v12[38])
    {
      v13 = objc_alloc_init(SASUpdateAudioInfo);
      [v13 ad_updateWithRecordingInfo:*(a1 + 40) speechRequestOptions:*(*(a1 + 32) + 296) clientConfiguration:*(*(a1 + 32) + 520)];
      v14 = [*(*(a1 + 32) + 304) aceId];
      [v13 setRefId:v14];

      if ([v13 ad_isDifferentFromStartSpeech:*(*(a1 + 32) + 304)])
      {
        [*(a1 + 32) _sendCommandToServer:v13];
      }

      else
      {
        v15 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v16 = 136315138;
          v17 = "[ADCommandCenter speechManager:didStartRecordingWithInfo:context:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Recording Info didn't change, not sending update audio", &v16, 0xCu);
        }
      }
    }

    else
    {
      [v12 _sendStartSpeechCommandWithSpeechManager:*(a1 + 56) info:*(a1 + 40) context:*(a1 + 48)];
    }
  }
}

void sub_1001F605C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = &stru_10051F508;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    if (v6)
    {
      v8 = v6;
    }

    v11 = 136316162;
    v12 = "[ADCommandCenter _trySendingShowRequestHandlingStatusForAsrOnDevice:startSpeechRequestId:]_block_invoke";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v8;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #AsrOnServer Sent SAUIShowRequestHandlingStatus with asrStatus = %@ for startSpeechRequestId = %@ response = %@ error = %@", &v11, 0x34u);
  }
}

void sub_1001F75A8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = sub_1000105F4(v6);
    if (v8)
    {
      v9 = objc_alloc_init(ORCHSchemaORCHServerFallbackInitiated);
      [v9 setFallbackReason:1];
      if (AFIsSpeechAssetAvailableFromUodStatus())
      {
        v10 = 0;
      }

      else
      {
        v10 = 1;
        [v9 addMissingAsset:1];
      }

      if ((AFIsMorphunAssetAvailableFromUodStatus() & 1) == 0)
      {
        [v9 addMissingAsset:3];
        v10 |= 4uLL;
      }

      if ((AFIsNLAssetAvailableFromUodStatus() & 1) == 0)
      {
        [v9 addMissingAsset:2];
        v10 |= 2uLL;
      }

      if (!AFIsNLRouterAssetAvailableFromUodStatus())
      {
        v10 |= 0x10uLL;
      }

      if (!AFIsAttentionAssetAvailableFromUodStatus())
      {
        v10 |= 8uLL;
      }

      v12 = objc_alloc_init(ORCHSchemaORCHServerFallbackContext);
      [v12 setStartedOrChanged:v9];
      v13 = v12;
      v14 = v8;
      v15 = objc_alloc_init(ORCHSchemaORCHClientEvent);
      [v15 setServerFallbackContext:v13];

      v16 = objc_alloc_init(ORCHSchemaORCHClientEventMetadata);
      [v16 setRequestId:v14];

      [v15 setEventMetadata:v16];
      v17 = +[AssistantSiriAnalytics sharedStream];
      [v17 emitMessage:v15];

      v18 = [a1 _requestDispatcherService];
      [v18 emitAIREventsForSiriRequestWithRequestId:v7 missingAssets:v10];
    }

    else
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315394;
        v20 = "[ADCommandCenter _emitServerFallbackMessageForMissingAssets:requestId:]";
        v21 = 2112;
        v22 = v7;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s The requestId=%@ is malformed for request", &v19, 0x16u);
      }
    }
  }
}

void sub_1001F7818(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 audioSource];
  [v4 setAudioSource:v5];

  v6 = [*(a1 + 32) audioDestination];
  [v4 setAudioDestination:v6];

  [v4 setResponseMode:*(a1 + 40)];
  [v4 setIsEyesFree:{objc_msgSend(*(*(a1 + 48) + 296), "isEyesFree")}];
  [v4 setIsVoiceTriggerEnabled:sub_10000F1C0()];
  [v4 setIsTextToSpeechEnabled:{objc_msgSend(*(*(a1 + 48) + 16), "adTextToSpeechIsMuted") ^ 1}];
  [v4 setIsTriggerlessFollowup:*(a1 + 56)];
  v7 = [*(a1 + 48) _bargeInModes];
  [v4 setBargeInModes:v7];

  v8 = [*(a1 + 48) _approximatePreviousTTSInterval:0];
  [v4 setApproximatePreviousTTSInterval:v8];

  v9 = [*(a1 + 48) _restrictedCommands];
  [v4 setDeviceRestrictions:v9];

  v10 = [*(a1 + 32) voiceTriggerEventInfo];
  [v4 setVoiceTriggerEventInfo:v10];

  [v4 setVoiceAudioSessionId:{objc_msgSend(*(a1 + 48), "_sharedVoiceAudioSessionID")}];
  [v4 setIsSystemApertureEnabled:{objc_msgSend(*(*(a1 + 48) + 296), "isSystemApertureEnabled")}];
  [v4 setIsLiveActivitiesSupported:{objc_msgSend(*(*(a1 + 48) + 296), "isLiveActivitiesSupported")}];
  [v4 setIsInAmbient:{objc_msgSend(*(*(a1 + 48) + 296), "isInAmbient")}];
  [v4 setIsDeviceShowingLockScreen:*(*(a1 + 48) + 529)];
  [v4 setIsDeviceLocked:*(*(a1 + 48) + 528)];
  v14 = objc_alloc_init(SMTUserProfileMetadata);
  [v14 setHeadphoneConnected:{objc_msgSend(*(*(a1 + 48) + 296), "userProfileHeadphoneConnected")}];
  [v14 setConfidence:{objc_msgSend(*(*(a1 + 48) + 296), "userProfileConfidence")}];
  v11 = [*(*(a1 + 48) + 296) userProfilePersonaId];
  [v14 setUserProfileIdentifier:v11];

  [v4 setUserProfileMetadata:v14];
  [v4 setActivationTime:{objc_msgSend(*(*(a1 + 48) + 296), "computedActivationEventMachAbsoluteTime")}];
  v12 = [*(a1 + 48) _locationManager];
  v13 = [v12 knownLocation];
  [v4 setLocation:v13];
}

uint64_t sub_1001F7ABC(uint64_t a1, void *a2, uint64_t a3)
{
  isKindOfClass = a2;
  v6 = isKindOfClass;
  if (!a3)
  {
    v8 = isKindOfClass;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v8;
    if (isKindOfClass)
    {
      isKindOfClass = [*(a1 + 32) _saSetMultilingualDictationConfig:v8 completion:0];
      v6 = v8;
    }
  }

  return _objc_release_x1(isKindOfClass, v6);
}

void sub_1001F7C30(uint64_t a1)
{
  v2 = [*(a1 + 32) codec];

  if (v2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    [v3 _sendStartSpeechCommandWithSpeechManager:v5 info:v4 context:v6];
  }
}

uint64_t sub_1001F7DB4(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 40);

    return [v4 adSpeechRecognitionWillBeginRecognitionUpdateForTask:v3];
  }

  return result;
}

void sub_1001F9084(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = objc_retainBlock(v2);
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001F9290;
    v17[3] = &unk_100515DF8;
    v4 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v4;
    v3 = objc_retainBlock(v17);
  }

  if (!*(a1 + 48))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [*(a1 + 40) description];
    }
  }

  if (AFSupportsHALDeviceRouting())
  {
    v6 = *(a1 + 40);
    v7 = +[ADPreferences sharedPreferences];
    v8 = [v7 sharedUserIdentifier];

    v9 = [*(a1 + 32) _deviceRouter];
    v10 = *(a1 + 48);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001F92A4;
    v12[3] = &unk_100516180;
    v12[4] = *(a1 + 32);
    v13 = v6;
    v14 = v10;
    v15 = *(a1 + 40);
    v16 = v3;
    v11 = v6;
    [v9 getPreferredDeviceToHandleCommand:v11 logNearbyDeviceMetrics:1 executionContext:v14 sharedUserID:v8 completion:v12];
  }

  else
  {
    [*(a1 + 32) _handleCommand:*(a1 + 40) executionContext:*(a1 + 48) completion:v3];
  }
}

void sub_1001F92A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F93D4;
  block[3] = &unk_100517EA8;
  v17 = v5;
  v15 = *(a1 + 32);
  v8 = *(&v15 + 1);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v18 = v15;
  v19 = v11;
  v12 = *(a1 + 64);
  v20 = v6;
  v21 = v12;
  v13 = v6;
  v14 = v5;
  dispatch_async(v7, block);
}

void sub_1001F93D4(uint64_t a1)
{
  v2 = [*(a1 + 32) peerInfo];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) commandRelayProxyIdentifier];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001F9604;
    v25[3] = &unk_100516130;
    v6 = *(a1 + 56);
    v18 = *(a1 + 40);
    v7 = *(a1 + 64);
    v8 = *(a1 + 56);
    v31 = *(a1 + 80);
    v9 = *(a1 + 48);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    *&v11 = v18;
    *(&v11 + 1) = v7;
    v26 = v11;
    v27 = v10;
    v28 = v2;
    v29 = *(a1 + 32);
    v30 = *(a1 + 72);
    [v3 _remoteExecute_remoteDeviceExecuteCommand:v4 onPeer:v28 allowsRelay:1 throughProxyDevice:v5 executionContext:v6 completion:v25];

    v12 = *(&v26 + 1);
  }

  else
  {
    v14 = *(a1 + 56);
    v13 = *(a1 + 64);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001F977C;
    v19[3] = &unk_100516158;
    v24 = *(a1 + 80);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = *(a1 + 72);
    [v3 _handleCommand:v13 executionContext:v14 completion:v19];

    v12 = v24;
  }
}

void sub_1001F9604(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001F984C;
  v18[3] = &unk_100516108;
  v18[4] = v8;
  v19 = v5;
  v20 = v6;
  v10 = v7;
  v11 = *(a1 + 48);
  v25 = *(a1 + 88);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v21 = v15;
  v22 = v14;
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  v16 = v6;
  v17 = v5;
  dispatch_async(v9, v18);
}

void sub_1001F977C(void *a1, void *a2, void *a3)
{
  v5 = a1[8];
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5, v8, v7);
  v9 = a1[4];
  if (v9)
  {
    v10 = [v9 proximity];
  }

  else
  {
    v10 = 4000;
  }

  v11 = a1[5];
  v12 = a1[6];
  v13 = AFProductType();
  [v11 _logCrossDeviceCommandEndedMetricsForCommand:v12 targetProductType:v13 targetDeviceID:0 targetDeviceContextIdentifier:0 targetProximity:v10 coreAnalyticsEvent:a1[7] response:v8 error:v7];
}

void sub_1001F984C(uint64_t a1)
{
  [*(a1 + 32) _handleCommandResponse:*(a1 + 40) error:*(a1 + 48) forCommand:*(a1 + 56) executionContext:*(a1 + 64) completion:*(a1 + 104)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  v6 = [*(a1 + 80) productType];
  v4 = [*(a1 + 80) idsDeviceUniqueIdentifier];
  v5 = [*(a1 + 88) contextIdentifier];
  [v2 _logCrossDeviceCommandEndedMetricsForCommand:v3 targetProductType:v6 targetDeviceID:v4 targetDeviceContextIdentifier:v5 targetProximity:objc_msgSend(*(a1 + 88) coreAnalyticsEvent:"proximity") response:*(a1 + 96) error:{*(a1 + 40), *(a1 + 48)}];
}

void sub_1001F9C28(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_alloc_init(SAPerformDataDetectionMatch);
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 range]);
  [v3 setLocation:v4];

  [v9 range];
  v6 = [NSNumber numberWithUnsignedInteger:v5];
  [v3 setLength:v6];

  if ([v9 resultType] == 32)
  {
    [v3 setDataDetectionType:SAPerformDataDetectionMatchDataDetectionTypeLinkValue];
    v7 = [v9 URL];
    v8 = [v7 absoluteString];
    [v3 setValue:v8];
  }

  [*(a1 + 32) addObject:v3];
}

void sub_1001F9E80(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 672);
    v4 = v2;
    v5 = objc_retainBlock(v3);
    v10 = 136315394;
    v11 = "[ADCommandCenter _startLanguageDetectionWaitTimer]_block_invoke";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s _languageDetectionWaitTimer fired. Executing _multilingualSpeechRecognizedCommandHandlerBlock %@", &v10, 0x16u);
  }

  v6 = *(*(a1 + 32) + 672);
  if (v6)
  {
    v7 = objc_retainBlock(v6);
    v8 = *(a1 + 32);
    v9 = *(v8 + 672);
    *(v8 + 672) = 0;

    v7[2](v7);
  }
}

void sub_1001FAA60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(SASExtractSpeechDataCompleted);
  v5 = [v3 absoluteString];
  [v4 setSpeechDataUrl:v5];

  if (*(a1 + 32) && [*(a1 + 40) isFromRemote])
  {
    v6 = [NSData dataWithContentsOfURL:v3];
    [v4 setSpeechData:v6];
  }

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v4 speechDataUrl];
    v10 = [v4 speechData];
    v11 = 136315906;
    v12 = "[ADCommandCenter _sasExtractSpeechData:executionContext:completion:]_block_invoke";
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s extractSpeechDataCompleted = %@ (speechDataUrl = %@), (speechData = %@)", &v11, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1001FAEE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v8 = v3;
    if (v3)
    {
      v5 = [SACommandFailed alloc];
      v6 = [v8 localizedDescription];
      v7 = [v5 initWithReason:v6];
      (*(v4 + 16))(v4, v7, 0);
    }

    else
    {
      v6 = objc_alloc_init(SACommandSucceeded);
      (*(v4 + 16))(v4, v6, 0);
    }

    v3 = v8;
  }
}

void sub_1001FB190(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADCommandCenter _saPostUpdatePersonalRequestSettingsNotification:executionContext:completion:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Posting update-PR notification for accessory category = %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) objectForKey:v3];
  [v5 _postUpdatePersonalRequestSettingsNotification:v6 forLocalizationKey:v7 executionContext:*(a1 + 56) completion:*(a1 + 64)];
}

void sub_1001FB6E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = &stru_10051F508;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[ADCommandCenter _postPersonalDomainActivityNotificationWithBody:command:executionContext:completion:]_block_invoke";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Posting activity notification for accessory category = %@", buf, 0x16u);
  }

  if ([*(a1 + 32) length])
  {
    v8 = +[AFLocalization sharedInstance];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v8 localizedStringForKey:@"ASSISTANT_SERVICES_HOMEPOD_ACTIVITY_NOTIFICATION_TITLE" table:0 bundle:v9 languageCode:0];

    v11 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@%@" error:0, *(a1 + 32), v6];
    [*(a1 + 40) setTitle:v11];
  }

  v12 = [UNNotificationRequest requestWithIdentifier:*(a1 + 48) content:*(a1 + 40) trigger:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001FB914;
  v14[3] = &unk_10051D2F0;
  v13 = *(a1 + 56);
  v15 = *(a1 + 64);
  [v13 postNotificationRequest:v12 completion:v14];
}

void sub_1001FB914(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v8 = v3;
    if (v3)
    {
      v5 = [SACommandFailed alloc];
      v6 = [v8 localizedDescription];
      v7 = [v5 initWithReason:v6];
      (*(v4 + 16))(v4, v7, 0);
    }

    else
    {
      v6 = objc_alloc_init(SACommandSucceeded);
      (*(v4 + 16))(v4, v6, 0);
    }

    v3 = v8;
  }
}

void sub_1001FBEC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [*(a1 + 32) sourceAppId];
  v21 = a1;
  v6 = [*(a1 + 32) notificationType];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        if (v5)
        {
          v13 = [*(*(&v22 + 1) + 8 * v11) sectionID];
          v14 = [v13 isEqualToString:v5];

          if ((v14 & 1) == 0)
          {
            v15 = AFSiriLogContextDaemon;
            if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_14;
            }

            v16 = v15;
            v17 = [v12 bulletinID];
            v18 = [v12 sectionID];
            *buf = 136315906;
            v27 = "[ADCommandCenter _saNotificationSearch:completion:]_block_invoke_2";
            v28 = 2112;
            v29 = v17;
            v30 = 2112;
            v31 = v18;
            v32 = 2112;
            v33 = v5;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Filtered notification %@ due to app match %@ vs %@", buf, 0x2Au);

            goto LABEL_17;
          }
        }

        if (!v6 || ([v12 contentTypeMatchesNotificationType:v6] & 1) != 0)
        {
          [v4 addObject:v12];
          goto LABEL_14;
        }

        v19 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v16 = v19;
          v17 = [v12 bulletinID];
          *buf = 136315650;
          v27 = "[ADCommandCenter _saNotificationSearch:completion:]_block_invoke";
          v28 = 2112;
          v29 = v17;
          v30 = 2112;
          v31 = v6;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Filtered notification %@ due to content type not matching %@", buf, 0x20u);
LABEL_17:
        }

LABEL_14:
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v20 = [v7 countByEnumeratingWithState:&v22 objects:v34 count:16];
      v9 = v20;
    }

    while (v20);
  }

  [*(v21 + 40) _completeNotificationSearch:*(v21 + 32) bulletins:v4 completion:*(v21 + 48)];
}

void sub_1001FC798(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = v3;
    if (v3)
    {
      (*(v4 + 16))(v4, 0, v3);
    }

    else
    {
      v5 = objc_alloc_init(SACommandSucceeded);
      v6 = [*(a1 + 32) aceId];
      [v5 setRefId:v6];

      (*(*(a1 + 40) + 16))();
    }

    v3 = v7;
  }
}

void sub_1001FCB64(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    if (v5)
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "[ADCommandCenter _saTTSGetSpeechSynthesisVolume:completion:]_block_invoke";
        v15 = 2112;
        v16 = v6;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Error occurred while getting the volume. Error=%@", &v13, 0x16u);
        v7 = *(a1 + 40);
      }

      (*(v7 + 16))(v7, 0, v6);
    }

    else
    {
      v9 = objc_alloc_init(SATTSGetSpeechSynthesisVolumeResponse);
      v10 = [*(a1 + 32) aceId];
      [v9 setRefId:v10];

      *&v11 = a3;
      v12 = [NSNumber numberWithFloat:v11];
      [v9 setVolumeLevel:v12];

      (*(*(a1 + 40) + 16))();
    }
  }
}

uint64_t sub_1001FD2B4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void sub_1001FD428(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADCommandCenter _saGetAssistantData:executionContext:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, 0);
  }
}

void sub_1001FD7A8(uint64_t a1, void *a2)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v23 + 1) + 8 * v7) content];
        v9 = [v8 locationSnapshot];
        if (v9)
        {
          v12 = v9;
          v13 = [v9 ace_setRequestOrigin];
          v14 = [v8 locationMetadata];
          v15 = [v14 deliveryDate];
          [v15 timeIntervalSinceNow];
          v17 = fabs(v16);

          v18 = [NSNumber numberWithInt:v17];
          [v13 setAge:v18];

          v19 = [*(a1 + 32) desiredAccuracy];
          [v13 setDesiredAccuracy:v19];

          v20 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v21 = v20;
            v22 = [v13 status];
            *buf = 136315650;
            v28 = "[ADCommandCenter _saGetRequestOrigin:executionContext:completion:]_block_invoke";
            v29 = 2112;
            v30 = v22;
            v31 = 2112;
            v32 = v12;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s SetRequestOrigin status: %@, for %@", buf, 0x20u);
          }

          (*(*(a1 + 40) + 16))();

          v11 = v3;
          goto LABEL_15;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v28 = "[ADCommandCenter _saGetRequestOrigin:executionContext:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unable to get location from context cache", buf, 0xCu);
  }

  v11 = objc_alloc_init(SASetRequestOrigin);
  [v11 setStatus:SASetRequestOriginStatusUnknownValue];
  (*(*(a1 + 40) + 16))();
LABEL_15:
}

void sub_1001FDA9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (!v3)
  {
    v3 = [[SACommandFailed alloc] initWithReason:@"Failed getting request origin"];
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, 0);
  }
}

uint64_t sub_1001FE024(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADCommandCenter _endSpeechRequestForCommand:withError:suppressAlert:secureOfflineOnlyDictation:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Clearing speech delegate in recording completion", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _clearSpeechDelegateState];

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001FE6A4(uint64_t a1, double a2, double a3)
{
  v6 = objc_alloc_init(SASEndpointStatus);
  v7 = a2 > 0.0 && *(a1 + 40) > a2;
  v10 = v6;
  [v6 setConfirmed:v7];
  v8 = [NSNumber numberWithDouble:a3 * 1000.0];
  [v10 setEndpointConfirmationTimestamp:v8];

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, 0);
  }
}

id sub_1001FF5A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v5 = @"bestTextInterpretation";
    v2 = [v1 af_bestTextInterpretation];
    v6 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001FF654(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) adSpeechRecognizedPartialResult:*(a1 + 40)];
  v3 = *(a1 + 32);
  if ((*(v3 + 377) & 1) == 0)
  {
    *(v3 + 377) = 1;
  }

  return result;
}

void sub_1001FF83C(uint64_t a1)
{
  if (*(*(a1 + 32) + 256) == 2)
  {
    v5 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:5];
    v3 = [*(*(a1 + 32) + 296) activationDeviceIdentifier];
    [v5 setActivationDeviceIdentifier:v3];

    [v5 setIsOnPhoneCall:{objc_msgSend(*(a1 + 32), "_isInCall")}];
    v4 = [*(a1 + 32) _speechManager];
    [v4 stopSpeechCaptureWithOptions:v5];
  }
}

uint64_t sub_1001FFB8C(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 40);

    return [v4 adPronunciationRecognized:v3 usingSpeechModel:0 sessionUUID:0];
  }

  return result;
}

void sub_1001FFF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001FFFB0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ADCommandCenter _sasSpeechMultilingualSpeechRecognized:executionContext:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Dispatching SASMultilingualSpeechRecognized command", &buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[38] ad_languageModel];
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = objc_alloc_init(NSMutableArray);
    v10 = [v6 speechRecognizedByLanguage];
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v26 = sub_1002002E0;
    v27 = &unk_100516B00;
    v28 = v7;
    v11 = v8;
    v29 = v11;
    v12 = v9;
    v30 = v12;
    v13 = v7;
    [v10 enumerateKeysAndObjectsUsingBlock:&buf];

    if ([v12 count])
    {
      [v11 setObject:v12 forKey:@"secondaryLanguages"];
    }

    v14 = AFAnalyticsContextCreateWithCommand();
    v24[0] = v14;
    v24[1] = v11;
    v15 = [NSArray arrayWithObjects:v24 count:2];
    v16 = AFAnalyticsContextsMerge();

    v17 = +[AFAnalytics sharedAnalytics];
    [v17 logEventWithType:1102 context:v16];

    v18 = objc_loadWeakRetained((a1 + 48));
    [v18 _setSpeechRecognizedContext:v16];

    [v4 _cancelLocalRecognitionIfRequired];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100200394;
    v21[3] = &unk_10051E010;
    v22 = v4;
    v23 = *(a1 + 32);
    [v22 _handleSpeechRecognizedWithDelegateBlock:v21];
    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = objc_alloc_init(SACommandSucceeded);
      (*(v19 + 16))(v19, v20, 0);
    }
  }
}

void sub_1002002E0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  LODWORD(v5) = [v7 isEqualToString:v5];
  v9 = sub_1002003F4(v6, v7);

  if (v5)
  {
    v8 = v9;
    if (!v9)
    {
      goto LABEL_7;
    }

    [*(a1 + 40) addEntriesFromDictionary:v9];
  }

  else
  {
    v8 = v9;
    if (!v9)
    {
      goto LABEL_7;
    }

    [*(a1 + 48) addObject:v9];
  }

  v8 = v9;
LABEL_7:
}

uint64_t sub_100200394(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 40);

    return [v4 adSpeechMultilingualSpeechRecognized:v3 sessionUUID:0];
  }

  return result;
}

id sub_1002003F4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v3 ad_leadingSilence];
  if (v6)
  {
    [v5 setObject:v6 forKey:@"leadingSilence"];
  }

  v7 = [v3 ad_trailingSilence];
  if (v7)
  {
    [v5 setObject:v7 forKey:@"trailingSilence"];
  }

  v8 = [v3 ad_endTime];
  if (v8)
  {
    [v5 setObject:v8 forKey:@"endTime"];
  }

  v9 = [v3 resultId];
  if (v9)
  {
    [v5 setObject:v9 forKey:@"resultId"];
  }

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 eager]);
  [v5 setObject:v10 forKey:@"eager"];

  if ((AFIsInternalInstall() & 1) != 0 || (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 shouldLogForQA], v11, v12))
  {
    v13 = [v3 af_bestTextInterpretation];
    if (v13)
    {
      [v5 setObject:v13 forKey:@"bestTextInterpretation"];
    }
  }

  if (v4)
  {
    [v5 setObject:v4 forKey:@"languageCode"];
  }

  v14 = AFAnalyticsContextCreateWithCommand();
  v18[0] = v14;
  v18[1] = v5;
  v15 = [NSArray arrayWithObjects:v18 count:2];
  v16 = AFAnalyticsContextsMerge();

  return v16;
}

void sub_100200B08(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _sasSpeechRecognized:executionContext:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Logging audio topology", &v10, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [NSUUID alloc];
  v5 = [*(*(a1 + 32) + 336) currentRequestId];
  v6 = [v4 initWithUUIDString:v5];
  [v3 _logAudioTopologyForRequestId:v6];

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADCommandCenter _sasSpeechRecognized:executionContext:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Logging nearby devices reported", &v10, 0xCu);
  }

  v8 = +[ADCompanionService sharedInstance];
  v9 = [*(*(a1 + 32) + 336) currentRequestId];
  [v8 _logPersonalDevicesDiscoveredNearbyForRequestId:v9];
}

void sub_100200C98(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100200D64;
  v5[3] = &unk_100515F78;
  v6 = *(a1 + 32);
  v3 = a2;
  v4 = [AFSpeechInfo newWithBuilder:v5];
  [v3 setSpeechInfo:v4];
}

void sub_100200E70(uint64_t a1)
{
  v2 = [FSFCurareInteractionStream alloc];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 initWithStreamId:v4];

  v6 = [FSFCurareInteractionAsJsonStr alloc];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) refId];
  v9 = [v6 initWithJsonStr:v7 interactionId:v8 dataVersion:0];

  v19 = 0;
  LODWORD(v8) = [v5 insert:v9 error:&v19];
  v10 = v19;
  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v13 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v16 = a1 + 32;
      v14 = *(a1 + 32);
      v15 = *(v16 + 8);
      v17 = v13;
      v18 = [v14 refId];
      *buf = 136315906;
      v21 = "[ADCommandCenter _logToFeatureStore:speechRecgonized:]_block_invoke";
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v18;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Error: %@ inserting %@ into FeatureStore for id: %@", buf, 0x2Au);
    }
  }
}

void sub_100202030(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[ADCommandCenter _sasResultCandidate:completion:]_block_invoke";
    v24 = 1024;
    v25 = a2;
    v26 = 1024;
    v27 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s accepted = %d, mitigated = %d", buf, 0x18u);
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002021C8;
  block[3] = &unk_100515F28;
  v20 = a2;
  block[4] = v10;
  v15 = v9;
  v19 = *(a1 + 64);
  v18 = *(a1 + 56);
  v12 = *(a1 + 48);
  v21 = a3;
  v16 = v12;
  v17 = v7;
  v13 = v7;
  dispatch_async(v11, block);
}

id sub_1002021C8(uint64_t a1)
{
  v2 = +[AFAnalytics sharedAnalytics];
  [v2 logEventWithType:309 context:0];

  if (*(a1 + 80) == 1 && [*(a1 + 32) _refIdIsSpeechStart:*(a1 + 40)])
  {
    *(*(a1 + 32) + 380) = 1;
    *(*(a1 + 32) + 392) = *(a1 + 72);
    v3 = *(a1 + 32);
    if (v3[381])
    {
      v4 = *(a1 + 81);
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v7 = *(a1 + 64);

      return [v3 _acceptResultCandidate:v5 isMitigated:v4 featuresToLog:v6 completion:v7];
    }

    else
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v11 = 136315138;
        v12 = "[ADCommandCenter _sasResultCandidate:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s This is a race between a network layer RollbackRequest retry and Speech Endpointing. Ignore the RC.", &v11, 0xCu);
      }

      result = *(a1 + 64);
      if (result)
      {
        return (*(result + 2))(result, 0, 0);
      }
    }
  }

  else
  {
    result = *(a1 + 64);
    if (result)
    {
      v8 = *(result + 2);

      return v8();
    }
  }

  return result;
}

uint64_t sub_100202604()
{
  if (AFSupportsSCDAFramework())
  {
    v0 = SCDAPreferencesChangedNotifyStatePublisher();
    v1 = qword_1005904F8;
    qword_1005904F8 = v0;
  }

  else
  {
    v0 = AFMyriadPreferencesChangedNotifyStatePublisher();
    v1 = qword_1005904F0;
    qword_1005904F0 = v0;
  }

  return _objc_release_x1(v0, v1);
}

void sub_100202D9C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setTimestamp:v2];
  [v3 setSource:12];
  [v3 setEvent:18];
}

uint64_t sub_100202F60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_100203090(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1002036D4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v8)
    {
      (*(v6 + 16))(v6, v8, v5);
    }

    else
    {
      v7 = objc_alloc_init(SACommandSucceeded);
      (*(v6 + 16))(v6, v7, v5);
    }
  }
}

void sub_100203780(uint64_t a1)
{
  if ([*(a1 + 32) invokeWithValue:0 andValue:0])
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 40);
      v4 = 136315394;
      v5 = "[ADCommandCenter _saWaitForCommands:completion:]_block_invoke_2";
      v6 = 2112;
      v7 = v3;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s %@ timed out.", &v4, 0x16u);
    }
  }
}

void sub_100203854(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADCommandCenter _saWaitForCommands:completion:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Stop waiting for command %@.", &v4, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100203924(uint64_t a1)
{
  [*(a1 + 32) cancel];
  if ([*(a1 + 40) invokeWithValue:0 andValue:0])
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48);
      v4 = 136315394;
      v5 = "[ADCommandCenter _saWaitForCommands:completion:]_block_invoke";
      v6 = 2112;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Done %@", &v4, 0x16u);
    }
  }
}

void sub_100203F04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SACommandSucceeded_ptr;
  v8 = v3;
  if (v3)
  {
    v4 = SACommandFailed_ptr;
  }

  v5 = objc_alloc_init(*v4);
  v6 = [*(a1 + 32) aceId];
  [v5 setRefId:v6];

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v8);
  }
}

void sub_100203FB4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }

  else
  {
    [*(a1 + 32) startRemoteRequest:*(a1 + 40) onTargetDevice:v7 completion:*(a1 + 48)];
  }
}

void sub_1002046FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 136315650;
      v14 = "[ADCommandCenter _emitTriggerWithCachingForUUID:namespace:requestID:]_block_invoke";
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unable to cache trial experiment IDs for codePathID: %@ and namespace: %@", buf, 0x20u);
    }
  }

  else
  {
    v7 = [*(a1 + 48) _experimentationAnalyticsManager];
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100204880;
    v10[3] = &unk_10051C9D0;
    v11 = v8;
    v12 = *(a1 + 40);
    [v7 emitTriggerFromCacheForCodePathID:v11 requestID:v9 completionHandler:v10];
  }
}

void sub_100204880(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v9 = 136315650;
      v10 = "[ADCommandCenter _emitTriggerWithCachingForUUID:namespace:requestID:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unable to emit trigger from cache for codePathID: %@ and namespace: %@", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 136315650;
    v10 = "[ADCommandCenter _emitTriggerWithCachingForUUID:namespace:requestID:]_block_invoke";
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Emitted trigger log successfully for codePathID: %@ and namespace: %@", &v9, 0x20u);
  }
}

id sub_100205C70(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[ADCommandCenter adCallStateChangedCallIncoming:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got call state changed; call is incoming: %d", &v5, 0x12u);
  }

  result = [*(a1 + 32) _hasIncomingCall];
  if (*(a1 + 40) != result)
  {
    return [*(a1 + 32) _setHasIncomingCall:?];
  }

  return result;
}

id sub_100205DC0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[ADCommandCenter adCallStateChangedCallInProcess:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got call state changed; call is in process: %d", &v5, 0x12u);
  }

  result = [*(a1 + 32) _isInCall];
  if (*(a1 + 40) != result)
  {
    result = [*(a1 + 32) _setIsInCall:?];
    if ((*(a1 + 40) & 1) == 0)
    {
      return [*(a1 + 32) _sync_continueIfConditionsMet];
    }
  }

  return result;
}

id sub_100205EA8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 608) isEqual:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _cancelCallKeepAlive];
  }

  return result;
}

void sub_100206280(uint64_t a1)
{
  v6 = [*(a1 + 32) _requestDispatcherService];
  v2 = [*(a1 + 32) _account];
  v3 = [v2 assistantIdentifier];
  v4 = [*(a1 + 32) _currentRequest];
  v5 = [v4 currentRequestId];
  [v6 postTestResultSelectedWithAssistantId:v3 requestId:v5 rcId:*(a1 + 40)];
}

void sub_1002063FC(uint64_t a1)
{
  v6 = [*(a1 + 32) _requestDispatcherService];
  v2 = [*(a1 + 32) _account];
  v3 = [v2 assistantIdentifier];
  v4 = [*(a1 + 32) _currentRequest];
  v5 = [v4 currentRequestId];
  [v6 postTestResultCandidateWithAssistantId:v3 requestId:v5 rcId:*(a1 + 40) recognitionSausage:*(a1 + 48)];
}

void sub_1002066C0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAudioSource:0];
  [v3 setAudioDestination:0];
  [v3 setResponseMode:*(a1 + 32)];
  [v3 setIsEyesFree:{objc_msgSend(*(a1 + 40), "eyesFree")}];
  [v3 setIsVoiceTriggerEnabled:sub_10000F1C0()];
  [v3 setIsTextToSpeechEnabled:{objc_msgSend(*(*(a1 + 48) + 16), "adTextToSpeechIsMuted") ^ 1}];
  [v3 setIsTriggerlessFollowup:*(a1 + 64)];
  v4 = [*(a1 + 48) _bargeInModes];
  [v3 setBargeInModes:v4];

  v5 = [*(a1 + 48) _approximatePreviousTTSInterval:0];
  [v3 setApproximatePreviousTTSInterval:v5];

  v6 = [*(a1 + 48) _restrictedCommands];
  [v3 setDeviceRestrictions:v6];

  [v3 setVoiceTriggerEventInfo:0];
  [v3 setVoiceAudioSessionId:{objc_msgSend(*(a1 + 48), "_sharedVoiceAudioSessionID")}];
  [v3 setIsSystemApertureEnabled:{objc_msgSend(*(*(a1 + 48) + 296), "isSystemApertureEnabled")}];
  [v3 setIsLiveActivitiesSupported:{objc_msgSend(*(*(a1 + 48) + 296), "isLiveActivitiesSupported")}];
  [v3 setIsInAmbient:{objc_msgSend(*(*(a1 + 48) + 296), "isInAmbient")}];
  [v3 setIsDeviceShowingLockScreen:*(*(a1 + 48) + 529)];
  [v3 setIsDeviceLocked:*(*(a1 + 48) + 528)];
  v10 = objc_alloc_init(SMTUserProfileMetadata);
  [v10 setHeadphoneConnected:{objc_msgSend(*(*(a1 + 48) + 296), "userProfileHeadphoneConnected")}];
  [v10 setConfidence:{objc_msgSend(*(*(a1 + 48) + 296), "userProfileConfidence")}];
  v7 = [*(*(a1 + 48) + 296) userProfilePersonaId];
  [v10 setUserProfileIdentifier:v7];

  [v3 setUserProfileMetadata:v10];
  [v3 setActivationTime:{objc_msgSend(*(*(a1 + 48) + 296), "computedActivationEventMachAbsoluteTime")}];
  [v3 setSuggestionRequestType:{objc_msgSend(*(a1 + 56), "suggestionRequestType")}];
  v8 = [*(a1 + 48) _locationManager];
  v9 = [v8 knownLocation];
  [v3 setLocation:v9];
}

void sub_1002069F4(id *a1)
{
  v2 = [a1[4] encodedClassName];
  v3 = [a1[4] groupIdentifier];
  v4 = [a1[5] _serviceManager];
  v5 = [v4 serviceForDomain:v3 command:v2];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = a1[4];
    v8 = v6;
    v9 = [v5 identifier];
    *buf = 136315650;
    v19 = "[ADCommandCenter _sendServiceCommand:completion:]_block_invoke";
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Dispatching out of band service command %@ to service %@", buf, 0x20u);
  }

  if (v5)
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = [v10 refId];
    v13 = [v11 _rootExecutionContextForRequestID:v12];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100206C24;
    v16[3] = &unk_10051CD88;
    v17 = a1[6];
    [v5 handleCommand:v10 forDomain:v3 executionContext:v13 reply:v16];

    v14 = v17;
LABEL_7:

    goto LABEL_8;
  }

  v15 = a1[6];
  if (v15)
  {
    v14 = [AFError errorWithCode:100];
    v15[2](v15, 0, v14);
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100206C24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [AceObject aceObjectWithGenericCommand:a2];
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v10 = 136315394;
    v11 = "[ADCommandCenter _sendServiceCommand:completion:]_block_invoke";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Reply for out of band command %@", &v10, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v6, v5);
  }
}

void sub_100207548(uint64_t a1)
{
  v2 = [*(a1 + 32) _shouldIgnoreCommand:*(a1 + 40) executionContext:*(a1 + 48)];
  v3 = [*(*(a1 + 32) + 336) currentRequestId];
  v4 = [*(a1 + 40) encodedClassName];
  v5 = AFShouldEmitAceCommandContextSELFLog();

  if (!v2)
  {
    if ([*(a1 + 40) ad_shouldLogToMetrics])
    {
      v10 = AFAnalyticsContextCreateWithCommand();
      v11 = +[AFAnalytics sharedAnalytics];
      [v11 logEventWithType:401 context:v10 contextNoCopy:1];

      if (v5)
      {
        v12 = [*(*(a1 + 32) + 336) currentRequestId];
        v13 = *(a1 + 56);
        v14 = [*(a1 + 40) aceId];
        sub_100014010(v12, v13, v14, 1);
      }
    }

    else
    {
      v10 = 0;
    }

    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100207A98;
    v30[3] = &unk_100515E68;
    v30[4] = *(a1 + 32);
    v31 = v17;
    v19 = v10;
    v32 = v19;
    v34 = v5;
    v33 = *(a1 + 80);
    [v15 handleCommand:v31 forDomain:v16 executionContext:v18 reply:v30];
    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 40);
      *buf = 136315394;
      *&buf[4] = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s Dispatched command: %@", buf, 0x16u);
    }

    v21 = *(a1 + 40);
    v22 = [v21 groupIdentifier];
    v23 = [v21 encodedClassName];
    v24 = v23;
    if (!v22 || !v23)
    {
      v28 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "ADRecordCoreDuetEventForServiceCommandIfNeeded";
        *&buf[12] = 2112;
        *&buf[14] = v22;
        v39 = 2112;
        v40 = v24;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Duet domain and command must be non-nil: %@, %@", buf, 0x20u);
      }

      goto LABEL_23;
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [v21 domainFromSADObject];

      v22 = v25;
    }

    if (qword_100590578 == -1)
    {
      if (v22)
      {
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once(&qword_100590578, &stru_100516C50);
      if (v22)
      {
LABEL_17:
        if ([qword_100590570 containsObject:v22])
        {
          if (qword_100590588 != -1)
          {
            dispatch_once(&qword_100590588, &stru_100516C70);
          }

          v36 = @"domain";
          v37 = v22;
          v26 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          AFRecordCoreDuetEventWithStream();

          v35[0] = @"domain";
          v35[1] = @"command";
          *buf = v22;
          *&buf[8] = v24;
          v27 = [NSDictionary dictionaryWithObjects:buf forKeys:v35 count:2];
          AFRecordCoreDuetContext();
        }
      }
    }

LABEL_23:

    return;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);

  [v6 _handleIgnoredCommand:v7 executionContext:v8 completion:v9];
}

void sub_1002079F0(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 32) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100207A88;
    block[3] = &unk_10051CF58;
    v4 = *(a1 + 40);
    dispatch_async(v2, block);
  }
}

void sub_100207A98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100207BA8;
  block[3] = &unk_100517E80;
  v13 = *(a1 + 40);
  v14 = v5;
  v15 = v6;
  v8 = *(a1 + 48);
  v19 = *(a1 + 64);
  v9 = *(a1 + 32);
  v16 = v8;
  v17 = v9;
  v18 = *(a1 + 56);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void sub_100207BA8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 encodedClassName];
    v6 = [*(a1 + 40) encodedClassName];
    v7 = v6;
    v8 = *(a1 + 48);
    v66 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]_block_invoke_3";
    *buf = 136315906;
    if (!v8)
    {
      v8 = &stru_10051F508;
    }

    v67 = 2112;
    v68 = v5;
    v69 = 2112;
    v70 = v6;
    v71 = 2112;
    v72 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Service reply for %@ %@ %@", buf, 0x2Au);
  }

  if ([*(a1 + 32) ad_shouldLogToMetrics])
  {
    if (*(a1 + 40))
    {
      v9 = AFAnalyticsContextCreateWithCommand();
    }

    else
    {
      v9 = &__NSDictionary0__struct;
    }

    if (*(a1 + 48))
    {
      v10 = AFAnalyticsContextCreateWithError();
    }

    else
    {
      v10 = &__NSDictionary0__struct;
    }

    v11 = [*(a1 + 40) resultCallbackCode];
    if (v11)
    {
      v63 = @"resultCallbackCode";
      v12 = [NSNumber numberWithInteger:v11];
      v64 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    }

    else
    {
      v13 = &__NSDictionary0__struct;
    }

    v62[0] = *(a1 + 56);
    v62[1] = v9;
    v62[2] = v10;
    v62[3] = v13;
    v14 = [NSArray arrayWithObjects:v62 count:4];
    v15 = AFAnalyticsContextsMerge();

    v16 = +[AFAnalytics sharedAnalytics];
    [v16 logEventWithType:402 context:v15 contextNoCopy:1];

    if (*(a1 + 80) == 1)
    {
      v17 = [*(*(a1 + 64) + 336) currentRequestId];
      v18 = [*(a1 + 32) aceId];
      v19 = v17;
      v20 = sub_1000105F4(v19);
      if (v20)
      {
        v60 = v19;
        v21 = objc_alloc_init(ORCHSchemaORCHClientEvent);
        v22 = objc_alloc_init(ORCHSchemaORCHClientEventMetadata);
        [v22 setRequestId:v20];
        [v21 setEventMetadata:v22];
        v23 = objc_alloc_init(ORCHSchemaORCHAceCommandContext);
        v59 = v20;
        v24 = objc_alloc_init(ORCHSchemaORCHAceCommandEnded);
        [v24 setExists:1];
        [v24 setAceCommandType:1];
        [v23 setEnded:v24];
        sub_1000105F4(v18);
        v61 = v13;
        v25 = v18;
        v26 = v10;
        v28 = v27 = v9;
        [v23 setAceId:v28];

        [v21 setAceCommandContext:v23];
        v29 = +[AssistantSiriAnalytics sharedStream];
        [v29 emitMessage:v21];

        v9 = v27;
        v10 = v26;
        v18 = v25;
        v13 = v61;

        v30 = v59;
        v19 = v60;
      }

      else
      {
        v30 = 0;
        v31 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v66 = "_EmitAceCommandEndedEvent";
          v67 = 2112;
          v68 = v19;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s The requestId=%@ is malformed, unable to log SELF command", buf, 0x16u);
        }
      }
    }
  }

  v32 = [*(a1 + 40) encodedClassName];
  v33 = SACommandFailedClassIdentifier;

  v34 = *(a1 + 48);
  if (v32 != v33)
  {
    v35 = (*(a1 + 64) + 480);
LABEL_24:
    objc_storeStrong(v35, v34);
LABEL_25:
    v36 = 1;
    goto LABEL_40;
  }

  if ([*(a1 + 48) code] == 1307)
  {
    v37 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v56 = *(a1 + 48);
      *buf = 136315394;
      v66 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]_block_invoke";
      v67 = 2112;
      v68 = v56;
      _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%s Notified of timeout error: %@", buf, 0x16u);
    }

    objc_storeStrong((*(a1 + 64) + 480), *(a1 + 48));
  }

  else
  {
    v38 = [*(a1 + 48) code];
    v39 = AFSiriLogContextDaemon;
    v40 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    if (v38 == 1399)
    {
      if (v40)
      {
        v57 = *(a1 + 48);
        *buf = 136315394;
        v66 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]_block_invoke";
        v67 = 2112;
        v68 = v57;
        _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%s Notified of request did finish for intent, error: %@", buf, 0x16u);
      }

      v41 = [*(a1 + 64) _errorAggregation:*(a1 + 48)];
      v42 = *(a1 + 64);
      v43 = *(v42 + 480);
      *(v42 + 480) = v41;

      v44 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v45 = *(*(a1 + 64) + 480);
        *buf = 136315394;
        v66 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]_block_invoke";
        v67 = 2112;
        v68 = v45;
        _os_log_debug_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "%s Notified of errorOnion: %@", buf, 0x16u);
      }

      goto LABEL_25;
    }

    if (v40)
    {
      v58 = *(a1 + 48);
      *buf = 136315394;
      v66 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]_block_invoke";
      v67 = 2112;
      v68 = v58;
      _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%s Notified of routing status, error: %@", buf, 0x16u);
    }

    v46 = *(a1 + 64);
    if (!v46[60])
    {
      v35 = v46 + 60;
      v34 = *(a1 + 48);
      goto LABEL_24;
    }

    v47 = [v46 _errorAggregation:*(a1 + 48)];
    v48 = *(a1 + 64);
    v49 = *(v48 + 480);
    *(v48 + 480) = v47;
  }

  v36 = 0;
LABEL_40:
  v50 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v55 = @"NO";
    if (v36)
    {
      v55 = @"YES";
    }

    *buf = 136315394;
    v66 = "[ADCommandCenter _handleServiceCommand:afterMyriadDecision:executionContext:completion:]_block_invoke";
    v67 = 2112;
    v68 = v55;
    _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "%s After notification, sending completion: %@", buf, 0x16u);
  }

  v51 = *(a1 + 72);
  v52 = v36 ^ 1;
  if (!v51)
  {
    v52 = 1;
  }

  if ((v52 & 1) == 0)
  {
    (*(v51 + 16))(v51, *(a1 + 40), *(*(a1 + 64) + 480));
    v53 = *(a1 + 64);
    v54 = *(v53 + 480);
    *(v53 + 480) = 0;
  }
}

void sub_100208A70(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  v7 = *(a1 + 32);
  v2 = *(v7 + 8);
  block[1] = 3221225472;
  block[2] = sub_100208B60;
  block[3] = &unk_1005180D8;
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  dispatch_async(v2, block);
}

void sub_100209024(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5 && *(a1 + 32) && [*(a1 + 40) _hasOutstandingRequestId:?])
  {
    [*(a1 + 48) adRequestEncounteredIntermediateError:v5];
  }

  (*(*(a1 + 64) + 16))();
  [*(*(a1 + 40) + 96) delegateDidHandleCommand:*(a1 + 56)];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 56) ad_getNetworkActivityTracingLabel];
  if (v5)
  {
    v8 = 4;
    v9 = v5;
  }

  else
  {
    v8 = 2;
    v9 = 0;
  }

  [v6 _addNetworkActivityTracingForLabel:v7 start:0 withCompletionReason:v8 andError:v9];
}

void sub_1002099A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100209A18;
  v4[3] = &unk_10051D770;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_100209A18(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = objc_alloc_init(SAUpdateRestrictions);
    v4 = SADeviceRestrictionSPOKEN_NOTIFICATIONS_OVER_DOAPValue;
    v3 = [NSArray arrayWithObjects:&v4 count:1];
    [v2 setRestrictionsToAdd:v3];

    [*(a1 + 32) _sendCommandToServer:v2];
  }
}

id sub_100209DB8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40) * 0.5;
    v5 = 136315394;
    v6 = "[ADCommandCenter _shutdownAfterDelay:]_block_invoke";
    v7 = 2048;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Start sending metrics for %f seconds before shutting down...", &v5, 0x16u);
  }

  return [*(a1 + 32) sendMetricsToServerWithTimeout:0 requiresUnlimitedPower:1 requiresActiveSession:0 purgesOversizedStorage:0 ignoresMetricsSenderDisabledSetting:0 scheduledActivity:&stru_100515E18 completion:*(a1 + 40) * 0.5];
}

void sub_100209EB8(id a1)
{
  v1 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[ADCommandCenter _shutdownAfterDelay:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s Done sending metrics before shutting down.", &v2, 0xCu);
  }
}

void sub_10020A2FC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = AFSiriLogContextDaemon;
  if (a3 || (isKindOfClass & 1) != 0)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 136315650;
      v11 = "[ADCommandCenter _cancelCrossDeviceRequestOperationsForRemoteRequest]_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to cancel cross device request %@ on %@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter _cancelCrossDeviceRequestOperationsForRemoteRequest]_block_invoke";
    v12 = 2112;
    v13 = v5;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s response: %@", &v10, 0x16u);
  }
}

void sub_10020A5A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _executionDevicesForLocalRequestWithId:v3];
  v5 = [v4 copy];

  v20 = a1;
  [*(a1 + 32) _removeExecutionDevicesForLocalRequestWithId:v3];
  if ([v5 count])
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v30 = "[ADCommandCenter _cancelCrossDeviceRequestOperationsForLocalRequestWithId:]_block_invoke";
      v31 = 2112;
      v32 = v3;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
    }

    v7 = [*(a1 + 32) _executionContextMatchingExecutionInfo:0 fallbackRequestID:v3];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v5;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = objc_alloc_init(SACancelCrossDeviceRequest);
          v14 = +[NSUUID UUID];
          v15 = [v14 UUIDString];
          [v13 setAceId:v15];

          [v13 setRequestId:v3];
          v16 = *(v20 + 32);
          v17 = [[ADPeerInfo alloc] initWithAFPeerInfo:v12];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_10020A87C;
          v21[3] = &unk_100515DF8;
          v22 = v3;
          v23 = v12;
          [v16 _remoteExecute_remoteDeviceExecuteCommand:v13 onPeer:v17 allowsRelay:0 throughProxyDevice:0 executionContext:v7 completion:v21];
        }

        v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    v5 = v18;
  }
}

void sub_10020A87C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = AFSiriLogContextDaemon;
  if (a3 || (isKindOfClass & 1) != 0)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 136315650;
      v11 = "[ADCommandCenter _cancelCrossDeviceRequestOperationsForLocalRequestWithId:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to cancel cross device request %@ on %@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "[ADCommandCenter _cancelCrossDeviceRequestOperationsForLocalRequestWithId:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s response: %@", &v10, 0x16u);
  }
}

id sub_10020B2EC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCommandCenter _handleNextCallbacksForReply:forCommand:forRequestId:withExecutionContext:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s missing refs resolved", &v4, 0xCu);
  }

  return [*(a1 + 32) _handleNextCallbacksForReply:*(a1 + 40) forCommand:*(a1 + 48) forRequestId:*(a1 + 56) withExecutionContext:*(a1 + 64)];
}

void sub_10020B3A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) hasBeenFulfilled])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      *buf = 136315394;
      v32 = "[ADCommandCenter _handleNextCallbacksForReply:forCommand:forRequestId:withExecutionContext:]_block_invoke";
      v33 = 2112;
      v34 = v8;
      v9 = "%s missing refs for %@ have already been fulfilled";
      v10 = v7;
      v11 = 22;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = AFSiriLogContextDaemon;
    if (isKindOfClass)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v32 = "[ADCommandCenter _handleNextCallbacksForReply:forCommand:forRequestId:withExecutionContext:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s GetResultObjects Response, trying to handle callbacks again.", buf, 0xCu);
      }

      v14 = *(a1 + 48);
      v15 = [*(*(a1 + 56) + 336) currentRequestId];
      LODWORD(v14) = [v14 isEqualToString:v15];

      if (v14)
      {
        v16 = *(a1 + 48);
        v17 = v5;
        [v17 setRefId:v16];
        v18 = *(a1 + 56);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10020B718;
        v26[3] = &unk_100515DA8;
        v27 = *(a1 + 32);
        v19 = *(a1 + 48);
        v20 = *(a1 + 56);
        v21 = *(a1 + 64);
        v28 = v19;
        v29 = v20;
        v30 = v21;
        [v18 _saAddResultObjects:v17 completion:v26];

        goto LABEL_18;
      }

      v23 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      *buf = 136315138;
      v32 = "[ADCommandCenter _handleNextCallbacksForReply:forCommand:forRequestId:withExecutionContext:]_block_invoke";
      v9 = "%s Ignore ARO for past requests";
      v10 = v23;
      v11 = 12;
      goto LABEL_4;
    }

    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 48);
      *buf = 136315650;
      v32 = "[ADCommandCenter _handleNextCallbacksForReply:forCommand:forRequestId:withExecutionContext:]_block_invoke";
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = v25;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed getting result objects, error %@ request Id %@", buf, 0x20u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v5;
    }

    else
    {
      v22 = objc_alloc_init(SACommandFailed);
      v24 = SiriCoreUUIDStringCreate();
      [v22 setAceId:v24];
    }

    [v22 setRefId:*(a1 + 48)];
    [*(a1 + 56) _handleCommand:v22 executionContext:*(a1 + 64) completion:0];
  }

LABEL_18:
}

void sub_10020B718(uint64_t a1)
{
  if (([*(a1 + 32) hasBeenFulfilled] & 1) == 0)
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[ADCommandCenter _handleNextCallbacksForReply:forCommand:forRequestId:withExecutionContext:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Missing references still not fulfilled, failing", &v5, 0xCu);
    }

    v3 = objc_alloc_init(SACommandFailed);
    v4 = SiriCoreUUIDStringCreate();
    [v3 setAceId:v4];

    [v3 setRefId:*(a1 + 40)];
    [*(a1 + 48) _handleCommand:v3 executionContext:*(a1 + 56) completion:0];
  }
}

void sub_10020BAC8(uint64_t a1)
{
  v2 = [*(a1 + 40) _ad_speechRequestOptionsWithClientConfiguration:*(*(a1 + 32) + 520)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 296);
  *(v3 + 296) = v2;

  [*(a1 + 32) _reallyHandleNewStartLocalRequest:*(a1 + 48) withRequestInfo:*(a1 + 40)];
  v5 = [*(a1 + 48) aceId];
  v6 = [*(a1 + 40) turnIdentifier];
  v7 = AFSiriLogContextDaemon;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = "[ADCommandCenter _startLocalRequest:withRequestInfo:forDelegate:suppressCancelationAlertIfCapturingSpeech:completion:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Logging RequestLink for StartLocalRequest with requestId=%@", &v11, 0x16u);
    }

    sub_100013EC0(v5, v6);
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "[ADCommandCenter _startLocalRequest:withRequestInfo:forDelegate:suppressCancelationAlertIfCapturingSpeech:completion:]_block_invoke";
    v13 = 2112;
    v14 = v5;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s TurnId nil for local request with requestId=%@", &v11, 0x16u);
  }

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = 136315650;
    v12 = "[ADCommandCenter _startLocalRequest:withRequestInfo:forDelegate:suppressCancelationAlertIfCapturingSpeech:completion:]_block_invoke";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Leaving request group %@ (%@)...", &v11, 0x20u);
  }

  dispatch_group_leave(*(a1 + 56));
}

uint64_t sub_10020D5F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _clearSpeechDelegateState];
    objc_storeStrong(v7 + 5, *(a1 + 32));
    [v7 _setSpeechCapturingContext:0];
    v4 = v7;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v4);
    v4 = v7;
  }

  return _objc_release_x1(v5, v4);
}

uint64_t sub_10020DF10(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id sub_10020E394(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10020E408;
  v3[3] = &unk_10051E150;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 getContextSnapshotForCurrentRequestWithCompletion:v3];
}

void sub_10020E408(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10020E4A4;
  v7[3] = &unk_10051E010;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10020E4A4(uint64_t a1)
{
  v2 = [*(a1 + 32) _deviceRouter];
  [v2 updateContext:*(a1 + 40)];
}

void sub_10020EA78(id a1)
{
  v1 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315138;
    v3 = "[ADCommandCenter _stopUpdatingMotionActivity]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s Motion activity manager stopped", &v2, 0xCu);
  }
}

void sub_10020FF70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[ADCommandCenter _addCompletion:forCommand:forKey:]_block_invoke";
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Calling command completion block for command %@ with error %@)", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10021100C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained || !WeakRetained[59])
  {
    v7 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v12 = 136315138;
    v13 = "[ADCommandCenter _createRootExecutionContextForRequestID:]_block_invoke";
    v11 = "%s _mostRecentRootExecutionContext already nil";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v11, &v12, 0xCu);
    goto LABEL_12;
  }

  v3 = +[NSDate now];
  v4 = [v2[59] creationDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  v7 = AFSiriLogContextDaemon;
  v8 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v6 <= 300.0)
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    v12 = 136315138;
    v13 = "[ADCommandCenter _createRootExecutionContextForRequestID:]_block_invoke";
    v11 = "%s Not clearing _mostRecentRootExecutionContext, due to more recent request";
    goto LABEL_11;
  }

  if (v8)
  {
    v9 = v2[59];
    v12 = 136315394;
    v13 = "[ADCommandCenter _createRootExecutionContextForRequestID:]_block_invoke";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Clearing _mostRecentRootExecutionContext %@", &v12, 0x16u);
  }

  v10 = v2[59];
  v2[59] = 0;

LABEL_12:
}

void sub_1002118CC(uint64_t a1)
{
  if (AFIsNano() && ((*(a1 + 40) & 1) != 0 || (*(a1 + 41) & 1) != 0) || AFIsHorseman())
  {
    if (AFIsHorseman())
    {
      v2 = [*(a1 + 32) _getPreheatOptionsForHorseman];
    }

    else
    {
      v2 = 0;
    }

    v3 = [*(a1 + 32) _speechManager];
    [v3 preheatWithOptions:v2];

    v4 = [*(a1 + 32) _speechManager];
    [v4 endSession];

    *(*(a1 + 32) + 256) = 0;
    v5 = +[CSSiriVibrationManager sharedManager];
    v6 = [*(a1 + 32) _sessionManager];
    [v6 preheatSessions];

    v7 = [*(a1 + 32) _locationManager];
    [*(a1 + 32) _preheatAllServices];
    if (AFIsHorseman())
    {
      v8 = +[ADHomeInfoManager sharedInfoManager];
      v9 = +[ADClockService sharedService];
      v10 = +[ADHomeAnnouncementService sharedService];
      v11 = [*(a1 + 32) _deviceSyncCoordinator];
    }

    else if (!AFIsNano())
    {
LABEL_12:

      goto LABEL_13;
    }

    v12 = [*(a1 + 32) _contextManager];
    [v12 preheatBackgroundContext];

    goto LABEL_12;
  }

LABEL_13:
  if (AFSupportsMultiUser())
  {
    v13 = +[ADMultiUserService sharedService];
    v14 = +[ADUserProfileService sharedService];
  }

  v15 = [*(a1 + 32) _contextManager];
  v16 = +[ADDeviceCircleManager sharedInstance];
  v17 = [[ADDeviceResolutionServiceListener alloc] initWithInstanceContext:*(*(a1 + 32) + 696) deviceCircleManager:v16];
  v18 = *(a1 + 32);
  v19 = *(v18 + 224);
  *(v18 + 224) = v17;

  v20 = objc_alloc_init(NSMapTable);
  v21 = *(a1 + 32);
  v22 = *(v21 + 904);
  *(v21 + 904) = v20;

  v23 = objc_alloc_init(NSMapTable);
  v24 = *(a1 + 32);
  v25 = *(v24 + 896);
  *(v24 + 896) = v23;

  if (AFDeviceSupportsCarPlay())
  {
    v26 = [(AFSiriAnnouncementRequestCapabilityManager *)[ADSiriAnnouncementRequestCapabilityManager alloc] initWithPlatform:2];
    v27 = *(a1 + 32);
    v28 = *(v27 + 216);
    *(v27 + 216) = v26;
  }

  v29 = [*(a1 + 32) _flowServiceListener];
  [v29 setupListener];

  v30 = _AFPreferencesValueForKey();
  *(*(a1 + 32) + 561) = _AFPreferencesBoolFromValueWithDefault();

  v31 = objc_alloc_init(ADMotionManager);
  v32 = *(a1 + 32);
  v33 = *(v32 + 144);
  *(v32 + 144) = v31;

  v34 = [ADDynamicContextEmitter alloc];
  v35 = *(*(a1 + 32) + 144);
  v36 = +[ADHomeInfoManager sharedInfoManager];
  v37 = [(ADDynamicContextEmitter *)v34 initWithMotionManager:v35 soundAnalysisPredicate:v36];
  v38 = *(a1 + 32);
  v39 = *(v38 + 240);
  *(v38 + 240) = v37;

  v40 = +[ADAssetManager sharedInstance];
  v41 = *(a1 + 32);
  v42 = *(v41 + 232);
  *(v41 + 232) = v40;

  v43 = +[ADSiriCapabilitiesStore sharedStore];
  v44 = *(a1 + 32);
  v45 = *(v44 + 920);
  *(v44 + 920) = v43;

  v46 = objc_alloc_init(ADSAEAssetsAvailabilityObserver);
  [*(*(a1 + 32) + 232) addAvailabilityObserver:v46];
  v47 = +[ADSyncConfigAssetManager sharedInstance];
  if (+[AFFeatureFlags isNLServerFallbackDisabledWithExperiment])
  {
    v48 = +[ADServerFallbackConfigManager sharedInstance];
  }

  [*(a1 + 32) _setupUIBridgeServiceListener];
  if (AFDeviceSupportsSiriUOD())
  {
    v49 = objc_alloc_init(ADVoiceTriggerInCallDiscoverabilitySignalManager);
    v50 = *(a1 + 32);
    v51 = *(v50 + 248);
    *(v50 + 248) = v49;
  }

  v52 = *(*(a1 + 32) + 8);
  v53 = +[ADQueueMonitor sharedMonitor];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100211D3C;
  v55[3] = &unk_10051C2E0;
  v56 = v52;
  v54 = v52;
  [v53 addQueue:v54 heartBeatInterval:v55 timeoutInterval:5.0 timeoutHandler:5.0];
}

void sub_100211D3C(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADCommandCenter init]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s %@", buf, 0x16u);
  }

  v5 = AFIsInternalInstall();
  if (a2 <= 3 && v5)
  {
    WriteStackshotReport_async();
  }
}

void sub_100211EA4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1005904E0;
  qword_1005904E0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1002121E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 isFiring] & 1) == 0)
  {
    [*(a1 + 32) removeObjectForKey:v5];
  }
}

void sub_100212638(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ADPreferences sharedPreferences];
  v5 = [v4 languageCode];
  v6 = v5;
  v7 = &stru_10051F508;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v25 = objc_alloc_init(NSMutableArray);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v31;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = *(a1 + 32);
        v17 = [v15 sectionID];
        LODWORD(v16) = [v16 isFirstPartyApplicationWithBundleId:v17];

        if (v16)
        {
          [*(a1 + 32) _emitAnnounceEnablementEventFromSectionInfo:v15 siriLocale:v8];
        }

        else
        {
          v18 = [NSNumber numberWithUnsignedInteger:v12];
          [v25 addObject:v18];
        }

        ++v12;
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v19 = [*(a1 + 32) _randomlySampleWithoutReplacementNumSamples:5 fromArray:v25];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [v9 objectAtIndex:{objc_msgSend(*(*(&v26 + 1) + 8 * j), "unsignedIntegerValue")}];
        [*(a1 + 32) _emitAnnounceEnablementEventFromSectionInfo:v24 siriLocale:v8];
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v21);
  }
}

id sub_1002128C8()
{
  if (qword_100590508 != -1)
  {
    dispatch_once(&qword_100590508, &stru_100516B90);
  }

  v1 = qword_100590510;

  return v1;
}

void sub_10021291C(id a1)
{
  if (qword_100590518 != -1)
  {
    dispatch_once(&qword_100590518, &stru_100516BB0);
  }

  qword_100590510 = objc_getClass("BBSettingsGateway");
  off_10058CB20 = sub_100212980;
}

id sub_100213C90(uint64_t a1)
{
  [*(a1 + 32) _updateAudioRouteOnMainThread];
  v2 = *(a1 + 32);
  v3 = sub_100004CAC();

  return [v2 _notifyObservers:v3];
}

id sub_100213DFC(uint64_t a1)
{
  [*(a1 + 32) _cleanupAudioRouteOnMainThread];
  v2 = *(a1 + 32);
  v3 = sub_100004CAC();

  return [v2 _notifyObservers:v3];
}

id sub_100213F68(uint64_t a1)
{
  [*(a1 + 32) _updateAudioRouteOnMainThread];
  v2 = *(a1 + 32);
  v3 = sub_100004CAC();

  return [v2 _notifyObservers:v3];
}

void *sub_100214048(uint64_t a1)
{
  CFBagRemoveValue(*(*(a1 + 32) + 8), *(a1 + 40));
  result = CFBagGetCount(*(*(a1 + 32) + 8));
  if (!result)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *(a1 + 32), kAFPreferencesDidChangeDarwinNotification, 0);
    result = *(a1 + 32);
    if (result[2] == 1)
    {

      return [result _stopListeningForMuteStateChanges];
    }
  }

  return result;
}

void *sub_100214164(uint64_t a1)
{
  CFBagAddValue(*(*(a1 + 32) + 8), *(a1 + 40));
  result = CFBagGetCount(*(*(a1 + 32) + 8));
  if (result == 1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), sub_100214224, kAFPreferencesDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = +[AFPreferences sharedPreferences];
    *(*(a1 + 32) + 16) = [v4 useDeviceSpeakerForTTS];

    result = *(a1 + 32);
    if (result[2] == 1)
    {

      return [result _listenForMuteStateChanges];
    }
  }

  return result;
}

void sub_100214224(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100214298;
  block[3] = &unk_10051E200;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100214774(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100004CAC();

  return [v1 _notifyObservers:v2];
}

id sub_10021493C(uint64_t a1)
{
  [*(a1 + 32) _listenForAudioRouteChanges];
  v2 = *(a1 + 32);

  return [v2 _updateAudioRouteOnMainThread];
}

void sub_100214978(id a1)
{
  v1 = objc_alloc_init(ADTTSMutingObserver);
  v2 = qword_100590538;
  qword_100590538 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100214B1C(id a1)
{
  v1 = objc_alloc_init(ADSystemLanguagePreferencesObserver);
  v2 = qword_1005905A8;
  qword_1005905A8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100214B58()
{
  v0 = SiriCoreUUIDStringCreate();
  v1 = [[NSString alloc] initWithFormat:@"amos://%@", v0];
  v2 = [[NSURL alloc] initWithString:v1];

  return v2;
}

void sub_100214C38(id a1)
{
  v4 = AFUserSupportDirectoryPath();
  v1 = [[NSURL alloc] initFileURLWithPath:v4 isDirectory:1];
  v2 = qword_100590528;
  qword_100590528 = v1;

  v3 = +[NSFileManager defaultManager];
  [v3 createDirectoryAtURL:qword_100590528 withIntermediateDirectories:1 attributes:0 error:0];
}

id sub_100214CD0(void *a1)
{
  v2 = AFApplicationStateUnknown;
  if (a1)
  {
    v3 = a1;
    v4 = objc_alloc_init(BKSApplicationStateMonitor);
    [v4 applicationStateForApplication:v3];

    [v4 invalidate];
    v5 = AFDescriptionOfBKSApplicationState();

    v2 = v5;
  }

  return v2;
}

uint64_t sub_100214D74()
{
  if (AFIsNano())
  {

    return _AFPreferencesShouldCensorSpeechInternal();
  }

  else
  {
    v1 = AFIsHorseman();
    v2 = +[MCProfileConnection sharedConnection];
    v3 = v2;
    if (v1)
    {
      v4 = [v2 effectiveRestrictedBoolValueForSetting:MCFeatureExplicitContentAllowed] != 1;
    }

    else
    {
      v4 = [v2 effectiveBoolValueForSetting:MCFeatureAssistantProfanityFilterForced] == 1;
    }

    return v4;
  }
}

uint64_t sub_100214E18()
{
  if (AFIsHorseman() & 1) != 0 || (AFIsATV())
  {
    return 0;
  }

  else
  {
    return AFIsNano() ^ 1;
  }
}

uint64_t sub_100214E4C(void *a1)
{
  v1 = a1;
  v2 = +[SFEntitledAssetManager onDeviceDictationLocales];
  v3 = [NSSet setWithArray:v2];

  v4 = [v1 enabledDictationLocales];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        if ([v10 BOOLValue])
        {
          v11 = [v3 containsObject:v9];

          if ((v11 & 1) == 0)
          {
            v6 = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

LABEL_12:

  return v6;
}

void sub_100214FE4(int a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = @"+";
  }

  else
  {
    v4 = @"-";
  }

  v5 = a3;
  v6 = a2;
  [v6 appendString:v4];
  [v6 appendString:v5];
}

void sub_100215068(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  if (v4)
  {
    v5 = [v4 objectForKey:v3];
    v6 = [v5 BOOLValue];

    v3 = v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = [@"AssetStatus_" stringByAppendingString:v3];
  sub_100214FE4(v6, v7, v8);
}

id sub_100215118(void *a1)
{
  v7 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v8 = &__kCFBooleanTrue;
  v1 = a1;
  v2 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v3 = v1;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [v4 openSensitiveURL:v3 withOptions:v2 error:0];

  return v5;
}

void sub_100215208(void *a1)
{
  v1 = a1;
  v2 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002152B4;
  block[3] = &unk_10051DFE8;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void sub_1002152CC(id a1)
{
  v1 = CFPreferencesCopyAppValue(@"StoreDemoMode", @"com.apple.demo-settings");
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v1 = [v1 BOOLValue];
    v2 = v3;
  }

  byte_100590549 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10021532C()
{
  memset(&v3, 0, sizeof(v3));
  pthread_attr_init(&v3);
  v2 = 0;
  pthread_attr_getschedparam(&v3, &v2);
  v2.sched_priority = 46;
  pthread_attr_setschedpolicy(&v3, 2);
  pthread_attr_setschedparam(&v3, &v2);
  pthread_attr_setinheritsched(&v3, 2);
  v0 = dispatch_pthread_root_queue_create();
  pthread_attr_destroy(&v3);

  return v0;
}

void sub_100215408(id a1)
{
  memset(v15, 0, sizeof(v15));
  v10 = 37;
  v1 = sysctlbyname("kern.bootsessionuuid", v15, &v10, 0, 0);
  if (v1)
  {
    v2 = v1;
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = v3;
      v9 = strerror(v2);
      *buf = 136315394;
      v12 = "ADSystemGetBootSessionUUID_block_invoke";
      v13 = 2080;
      v14 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed getting kern.bootsessionuuid with sysctlbyname() %s", buf, 0x16u);
    }

    v4 = qword_100590560;
    qword_100590560 = 0;
  }

  else
  {
    v5 = [[NSString alloc] initWithUTF8String:v15];
    v6 = qword_100590560;
    qword_100590560 = v5;

    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "ADSystemGetBootSessionUUID_block_invoke";
      v13 = 2112;
      v14 = qword_100590560;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s kern.bootsessionuuid is %@", buf, 0x16u);
    }
  }
}

void sub_1002155AC(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v3 = dispatch_queue_create("com.apple.siri.duet", v2);
  v4 = qword_100590580;
  qword_100590580 = v3;
}

void sub_100215628(id a1)
{
  v1 = [NSSet alloc];
  v2 = [v1 initWithObjects:{SAAlarmGroupIdentifier, SAPhoneGroupIdentifier, SAReminderGroupIdentifier, SATimerGroupIdentifier, SAMPGroupIdentifier, SALocalSearchGroupIdentifier, 0}];
  v3 = qword_100590570;
  qword_100590570 = v2;

  _objc_release_x1(v2, v3);
}

void sub_1002156C4(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 isStart];
  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "ADCarPlayHasBeenActiveInLast24Hours_block_invoke";
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Received CarPlay event isStart: %d", &v6, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) |= v4;
}

void sub_1002157B4(id a1, BPSCompletion *a2)
{
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = a2;
    v6 = [(BPSCompletion *)v5 state];
    v7 = [(BPSCompletion *)v5 error];

    v8 = 136315650;
    v9 = "ADCarPlayHasBeenActiveInLast24Hours_block_invoke";
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s CarPlayPublisher completed with state: %ld; error: %@", &v8, 0x20u);
  }
}

id sub_1002158B4()
{
  if (qword_1005905B8 != -1)
  {
    dispatch_once(&qword_1005905B8, &stru_100516D38);
  }

  v1 = qword_1005905C0;

  return v1;
}

void sub_100215940(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  v3 = +[ADBluetoothManager sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100215A18;
  v6[3] = &unk_10051DD70;
  v7 = v2;
  v8 = v1;
  v4 = v1;
  v5 = v2;
  [v3 getPairedDevicesWithCompletion:v6];
}

void sub_100215A18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_group_create();
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.assistant.settings-client.paired-bluetooth-devices", v5);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        dispatch_group_enter(v4);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100215C70;
        v16[3] = &unk_10051D088;
        v17 = v6;
        v18 = *(a1 + 32);
        v19 = v4;
        [v11 getDeviceInfo:v16];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100215D38;
  block[3] = &unk_10051E038;
  v15 = *(a1 + 40);
  v14 = *(a1 + 32);
  dispatch_group_notify(v4, v6, block);
}

void sub_100215C70(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100215D58;
  block[3] = &unk_10051DB68;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v4 = v6;
  dispatch_async(v3, block);
}

uint64_t sub_100215D38(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100215D58(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

id sub_100215D9C(void *a1)
{
  v1 = a1;
  *md = 0;
  v27 = 0;
  v28 = 0;
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v23 = "ADSHAAnchorForData";
    v24 = 2113;
    v25 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Generating anchor for values %{private}@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = +[NSNull null];

        if (v8 != v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v8 UTF8String];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [v8 stringValue];
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                [v8 _ad_SADHash];
              }

              else
              {
                [v8 description];
              }
              v11 = ;
            }

            v12 = v11;
            v10 = [v11 UTF8String];
          }

          v13 = strlen(v10);
          CC_SHA1_Update(&c, v10, v13);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v5);
  }

  CC_SHA1_Final(md, &c);
  v14 = [NSString hexStringFromBytes:md length:20];

  return v14;
}

void sub_100216038(void *a1)
{
  v1 = sub_10000A9B0(a1);
  v2 = +[NSFileManager defaultManager];
  if ([v2 fileExistsAtPath:v1])
  {
    v5 = NSFileModificationDate;
    v3 = +[NSDate date];
    v6 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

    [v2 setAttributes:v4 ofItemAtPath:v1 error:0];
  }

  else
  {
    [v2 createFileAtPath:v1 contents:0 attributes:0];
  }
}

void sub_100216140(id a1)
{
  v3 = CPSharedResourcesDirectory();
  v1 = [v3 stringByAppendingPathComponent:@"Library/Assistant"];
  v2 = qword_100590590;
  qword_100590590 = v1;
}

id sub_10021619C()
{
  v0 = +[ADSystemLanguagePreferencesObserver sharedObserver];
  v1 = [v0 systemLanguagePreferenceHasChanged];

  return v1;
}

void sub_1002161DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[AFPreferences sharedPreferences];
    v8 = [v7 assistantIsEnabled];

    if ((v8 & 1) == 0)
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "ADVoiceTriggerSetEnabled";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Enabling Assistant alongside voice trigger", &v12, 0xCu);
      }

      v10 = +[AFPreferences sharedPreferences];
      [v10 setAssistantIsEnabled:1];
    }
  }

  v11 = +[VTPreferences sharedPreferences];
  [v11 setVoiceTriggerEnabled:a1];

  if (v6)
  {
    v6[2](v6, 0);
  }
}

BOOL sub_100216330()
{
  v0 = +[MCProfileConnection sharedConnection];
  v1 = [v0 effectiveBoolValueForSetting:MCFeatureAppAnalyticsAllowed] == 1;

  return v1;
}

id sub_100216380(uint64_t a1)
{
  v1 = [LSBundleProxy bundleProxyForIdentifier:a1];
  v2 = CFBundleCreate(0, [v1 bundleURL]);
  if (v2)
  {
    cf = v2;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = TCCAccessCopyInformationForBundle();
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = [v8 objectForKey:{kTCCInfoService, cf}];
          v10 = [v8 objectForKey:kTCCInfoGranted];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && v9 && ([v9 isEqualToString:kTCCServiceSiri])
            {
              CFRelease(cf);
              v11 = [v10 BOOLValue];

              goto LABEL_16;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    CFRelease(cf);
    v11 = 0;
LABEL_16:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1002166C8(uint64_t a1)
{
  v1 = [*(a1 + 32) _homeManager];
  v2 = [v1 currentHome];
  v3 = [v2 uniqueIdentifier];

  if (v3)
  {
    v4 = objc_alloc_init(HOMESchemaHOMEClientEventMetadata);
    v5 = [SISchemaUUID alloc];
    v6 = +[NSUUID UUID];
    v7 = [v5 initWithNSUUID:v6];
    [v4 setHomeComponentId:v7];

    v8 = [@"com.apple.assistant.homemetric.seed.value" dataUsingEncoding:4];
    v9 = [NSUUID hmf_UUIDWithNamespace:v3 data:v8];

    v10 = [[SISchemaUUID alloc] initWithNSUUID:v9];
    v11 = objc_alloc_init(HOMESchemaHOMEAssistantInfoReported);
    [v11 setHashedHomeId:v10];
    v12 = objc_alloc_init(HOMESchemaHOMEClientEvent);
    [v12 setEventMetadata:v4];
    [v12 setAssistantInfoReported:v11];
    v13 = +[AssistantSiriAnalytics sharedAnalytics];
    v14 = [v13 defaultMessageStream];
    v15 = +[NSUUID UUID];
    [v14 emitMessage:v12 isolatedStreamUUID:v15];
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "[ADHomeInfoManager emitHomeMetricInvocationEvent]_block_invoke";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Current Home UUID is nil, so not emitting home metric SELF event", &v17, 0xCu);
    }
  }
}

void sub_100216E2C(uint64_t a1)
{
  v2 = [*(a1 + 32) _getAccessoryCategoryForExecutionInfo:*(a1 + 40)];
  v4 = [v2 categoryType];

  if ([v4 isEqualToString:HMAccessoryCategoryTypeHomePod])
  {
    v3 = *(*(a1 + 48) + 16);
LABEL_5:
    v3();
    goto LABEL_7;
  }

  if ([v4 isEqualToString:HMAccessoryCategoryTypeSpeaker])
  {
    v3 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  [v4 isEqualToString:HMAccessoryCategoryTypeAudioReceiver];
  (*(*(a1 + 48) + 16))();
LABEL_7:
}

void sub_100216FF8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = [*(a1 + 32) _getAccessoryCategoryForExecutionInfo:*(a1 + 40)];
  v2 = [v3 localizedDescription];
  (*(v1 + 16))(v1, v2);
}