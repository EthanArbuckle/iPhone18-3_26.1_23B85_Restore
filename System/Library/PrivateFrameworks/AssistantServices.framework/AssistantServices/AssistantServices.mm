void sub_100003E54(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _houseKeeperArrived];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100004988()
{
  if (AFIsATVOnly())
  {
    return 0;
  }

  if (!AFIsNano())
  {
    return 1;
  }

  return _AFSupportsSiriSpeaks();
}

uint64_t sub_100004CAC()
{
  if (!sub_100004988())
  {
    return 0;
  }

  v0 = +[AFPreferences sharedPreferences];
  v1 = [v0 useDeviceSpeakerForTTS];

  if (v1 != 2)
  {
    v2 = +[ADTTSMutingObserver sharedInstance];
    v3 = [v2 _currentRouteIsHandsFree];

    if ((v3 & 1) == 0)
    {
      if (v1 != 3)
      {
        v6 = +[ADSystemMuteModeObserver sharedInstance];
        v4 = [v6 muteMode] != 1;

        return v4;
      }

      return 0;
    }
  }

  return 1;
}

id sub_100005120(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (v4)
  {
    v15 = 0;
    v6 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:&v15];
    v7 = v15;
    if (v7)
    {
      v8 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v17 = "_AFAnalyticsEventCreate";
        v18 = 2112;
        v19 = v4;
        v20 = 2112;
        v21 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to serialize context %@ to JSON due to error %@.", buf, 0x20u);
      }

      v6 = 0;
    }

    if ([v6 length])
    {
      v9 = [NSData alloc];
      v10 = v6;
      v11 = [v9 initWithBytes:objc_msgSend(v6 length:{"bytes"), objc_msgSend(v6, "length")}];
      v12 = 2;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  objc_autoreleasePoolPop(v5);
  v13 = [[AFAnalyticsEvent alloc] initWithDeliveryStream:0 type:a1 timestamp:AFMachAbsoluteTimeGetNanoseconds() contextDataType:v12 contextData:v11];

  return v13;
}

void sub_100005D88(id a1, BOOL a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v5 = 136315394;
    v6 = "[ADCommandCenter _startUpdatingMotionActivity]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Motion activity manager started: %@", &v5, 0x16u);
  }
}

void sub_100006D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006DD4(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [qword_100590B68 copy];

  return _objc_release_x1();
}

id sub_100006F4C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 2))(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000076F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_10000775C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000088E0;
  v6[3] = &unk_10051C650;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void sub_100007E00(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  v3 = HIDWORD(v2);
  if (HIDWORD(v2) >= 3)
  {
    if ((HIDWORD(v2) - 3) < 2)
    {
      v5 = *(a1 + 32);

      [v5 startLocationPrefetchRoutine];
    }
  }

  else
  {
    v4 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[ADLocationManager prefetchCurrentLocation]_block_invoke";
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Location prefetch is skipped due to lack of authorization, status: %d", &v6, 0x12u);
    }
  }
}

void sub_1000081B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _account];
  v5 = [v4 assistantIdentifier];
  [v3 setAssistantId:v5];

  v6 = [*(a1 + 32) _sessionManager];
  v7 = [v6 languageCode];
  [v3 setLanguageCode:v7];

  [v3 setUnderstandingOnDevice:*(*(a1 + 32) + 872)];
  [v3 setIsSystemAssistantExperienceEnabled:AFDeviceSupportsSAE()];
  v8 = +[ADMultiUserService sharedService];
  v9 = [v8 getDeviceOwnerSharedUserId];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = AFMultiUserDefaultSharedUserId;
  }

  [v3 setSharedUserId:v11];

  v12 = *(*(a1 + 32) + 16);
  if (v12)
  {
    [v12 adClientConnectionAuditToken];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  [v3 setClientAuditToken:v13];
}

id sub_1000087BC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) automotive];
  if (result & 1) != 0 || (result = [*(*(a1 + 32) + 16) walking], (result) || (result = objc_msgSend(*(*(a1 + 32) + 16), "running"), (result) || (result = objc_msgSend(*(*(a1 + 32) + 16), "cycling"), result))
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 3;
  }

  else
  {
    result = [*(*(a1 + 32) + 16) stationary];
    v3 = *(*(a1 + 40) + 8);
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  *(v3 + 24) = v4;
  return result;
}

void sub_1000088E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleHomeAnnouncementSnapshotUpdate:*(a1 + 32)];
}

id sub_1000090A4(void *a1, uint64_t a2)
{
  v3 = a1;
  v10 = @"didChange";
  v4 = [NSNumber numberWithBool:a2];
  v11 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  if (v3)
  {
    v9[0] = v3;
    v9[1] = v5;
    v6 = [NSArray arrayWithObjects:v9 count:2];
    v7 = AFAnalyticsContextsMerge();
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

uint64_t sub_10000952C(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [qword_100590138 copy];

  return _objc_release_x1();
}

void sub_100009638(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cancelSynchronously:0];
    WeakRetained = v2;
    *(v2 + 7) = 0;
  }
}

uint64_t sub_100009F40()
{
  if (!sub_10000A094())
  {
    return 0;
  }

  if ((AFHasUnlockedSinceBoot() & 1) == 0)
  {
    v4 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "ADShouldAllowSync";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Sync disallowed because device has not unlocked.", &v6, 0xCu);
    }

    return 0;
  }

  if (![ADAssistantProperties _getIsServerUserDataSyncEnabled]_0())
  {
    return 0;
  }

  v0 = +[AFPreferences sharedPreferences];
  v1 = [v0 isDictationHIPAACompliant];
  if (v1)
  {
    v2 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "ADShouldAllowSync";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Sync disallowd because we have HIPAA On-Device Dictation enabled.", &v6, 0xCu);
    }
  }

  v3 = v1 ^ 1;

  return v3;
}

uint64_t sub_10000A094()
{
  IsRunningAsInstance = AFProcessIsRunningAsInstance();
  if (IsRunningAsInstance)
  {
    v1 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "ADCanEverAllowSync";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s Sync never allowed because this process is running as an instance of a multi-instance service.", &v3, 0xCu);
    }
  }

  return IsRunningAsInstance ^ 1u;
}

id sub_10000A500()
{
  v0 = +[ADPreferences sharedPreferences];
  v1 = [v0 languageCode];

  v2 = +[ADAssetManager sharedInstance];
  v3 = [v2 assetsAvailableStatusForLanguage:v1];
  v4 = [AFUtilitiesWrapper uodStatusSupportedFull:v3 languageCode:v1];

  v5 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "ADIsFullUodCapable";
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s isFullUod=%d", &v7, 0x12u);
  }

  return v4;
}

BOOL sub_10000A630()
{
  v0 = +[AFPreferences sharedPreferences];
  v1 = sub_10000A500();
  v2 = [v0 isSyncNeededForWatch];
  v3 = [v0 deviceHasAtvInHome];
  v4 = [v0 deviceHasHomePodInHome];
  v5 = +[ADSyncConfigAssetManager sharedInstance];
  v6 = [v5 isInactiveDeviceSyncDisabled];
  v7 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    v14 = 136316418;
    v15 = "ADShouldAllowInactiveDeviceSync";
    v16 = 1024;
    v17 = v1;
    v18 = 1024;
    v19 = v3;
    v20 = 1024;
    v21 = v4;
    v22 = 1024;
    v23 = v2;
    v24 = 1024;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s fullUodCapable=%d, deviceHasAtvInHome: %d, deviceHasHomePodInHome: %d, isSyncNeededForWatch: %d, inactiveDeviceSyncDisabledViaAssets: %d", &v14, 0x2Au);
  }

  v8 = v3 | ~v1 | v4 | v2;
  v9 = 1;
  if ((v8 & 1) == 0 && ((v6 ^ 1) & 1) == 0)
  {
    v10 = [ADUtilitiesWrapper lastTimestampForFileName:@"session_did_finish_timestamp"];
    if (v10 || ([ADUtilitiesWrapper lastTimestampForFileName:@"session_created_siri_timestamp"], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v10;
      [v10 timeIntervalSinceNow];
      v9 = -v12 < (86400 * [v5 inactiveDeviceThreshold]);
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

id sub_10000A928(void *a1)
{
  v1 = sub_10000A9B0(a1);
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 attributesOfItemAtPath:v1 error:0];

  v4 = [v3 fileModificationDate];

  return v4;
}

id sub_10000A9B0(void *a1)
{
  v1 = a1;
  v2 = NSHomeDirectoryForUser(@"mobile");
  v3 = [v2 stringByAppendingPathComponent:@"Library/Assistant"];

  v4 = [v3 stringByAppendingPathComponent:v1];

  return v4;
}

uint64_t sub_10000ABF4(void *a1)
{
  v1 = a1;
  v2 = +[AFPreferences sharedPreferences];
  if ((AFIsIOS() & 1) != 0 || (AFIsVision() & 1) != 0 || AFIsMac())
  {
    if ([v1 isEqualToString:@"ko-KR"])
    {
      v3 = [v2 shouldDisableServerFallbackNL];
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v4 = +[ADServerFallbackConfigManager sharedInstance];
    if ([v4 assistantSyncDisabled])
    {
      v3 = [v2 shouldDisableServerFallbackNL];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

id sub_10000AD00(uint64_t a1)
{
  [*(a1 + 32) setRefId:*(a1 + 40)];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 description];
    v7 = 136315394;
    v8 = "[ADCommandCenter(Context) _setBackgroundContext]_block_invoke_2";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s SetBackgroundContext: %@", &v7, 0x16u);
  }

  return [*(a1 + 48) _sendCommandToServer:*(a1 + 32)];
}

void sub_10000B17C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AD00;
  block[3] = &unk_10051DB68;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

id sub_10000B3A0(void *a1)
{
  v1 = a1;
  v2 = [v1 text];
  if (!v2 || (v3 = v2, [v1 expectedSpeakerSharedUserID], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [v1 text];
    if (v5)
    {
      v6 = v5;
      v7 = [v1 expectedSpeakerSharedUserID];
      if (v7 && (AFIsInternalInstall() & 1) != 0)
      {
        v8 = AFSupportsMultiUser();

        if (v8)
        {
          v9 = objc_alloc_init(SAStartMultiUserTestRequest);
          v10 = [v1 expectedSpeakerSharedUserID];
          [v9 setExpectedSelectedSharedUserId:v10];

          v11 = [v1 text];
          [v9 setUtterance:v11];

          if ([v1 activationEvent] == 5)
          {
            [v9 setOrigin:SAInputOriginAssistantTextInputValue];
          }

          v12 = objc_alloc_init(SAConfidenceScores);
          [v12 setProcessedAudioDurationMilliseconds:4000];
          [v12 setThresholdType:SAVoiceIDConfidenceScoresThresholdTypeVOICE_TRIGGERValue];
          [v12 setAssetVersion:@"12.216.PremiumTests"];
          [v12 setScoringSchemeVersion:&off_100533D28];
          v13 = [v1 expectedSpeakerSharedUserID];
          [v12 setClassifiedUser:v13];

          v14 = +[ADMultiUserTestSupport sharedService];
          v15 = [v14 getDebugVoiceIdScores];

          v16 = AFSiriLogContextDaemon;
          v17 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
          if (v15)
          {
            v73 = v12;
            v74 = v9;
            if (v17)
            {
              *buf = 136315138;
              *&buf[4] = "_RequestForInfo";
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Using debug voiceID scores", buf, 0xCu);
            }

            *buf = 0;
            v18 = +[ADMultiUserService sharedService];
            v83 = 0;
            v72 = v15;
            v19 = [v18 validateAndReturnScores:v15 classifiedUser:0 donatedScores:&__NSDictionary0__struct unknownUserSharedId:&v83 totalUsers:buf ghostVoiceProfileDetected:0];
            v71 = v83;

            v20 = objc_alloc_init(NSMutableArray);
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v21 = v19;
            v22 = [v21 countByEnumeratingWithState:&v79 objects:v85 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v80;
              do
              {
                for (i = 0; i != v23; i = i + 1)
                {
                  if (*v80 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v79 + 1) + 8 * i);
                  v27 = [v21 objectForKey:{v26, v71}];
                  v28 = objc_alloc_init(SAUserConfidenceScore);
                  [v28 setConfidenceScore:{objc_msgSend(v27, "integerValue")}];
                  [v28 setSharedUserId:v26];
                  [v20 addObject:v28];
                }

                v23 = [v21 countByEnumeratingWithState:&v79 objects:v85 count:16];
              }

              while (v23);
            }

            v29 = v71;
            if (v71)
            {
              v30 = objc_alloc_init(SAUserConfidenceScore);
              [v30 setConfidenceScore:0];
              [v30 setSharedUserId:v71];
              [v20 addObject:v30];
            }

            v12 = v73;
            [v73 setScores:{v20, v71}];

            v9 = v74;
            v15 = v72;
          }

          else
          {
            if (v17)
            {
              *buf = 136315138;
              *&buf[4] = "_RequestForInfo";
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Constructing voiceID scores", buf, 0xCu);
            }

            v61 = +[ADMultiUserService sharedService];
            v62 = [v1 expectedSpeakerSharedUserID];
            v63 = [v1 expectedSpeakerConfidenceScore];
            v64 = [v1 nonspeakerConfidenceScores];
            v29 = [v61 confidenceScoresForMultiUserTestingExpectedSpeakerSharedUserID:v62 expectedSpeakerConfidenceScore:v63 nonspeakerConfidenceScores:v64];

            [v12 setScores:v29];
          }

          [v9 setVoiceIDConfidenceScores:v12];
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v65 = [v12 scores];
          v66 = [v65 countByEnumeratingWithState:&v75 objects:v84 count:16];
          if (v66)
          {
            v67 = v66;
            v68 = *v76;
            while (2)
            {
              for (j = 0; j != v67; j = j + 1)
              {
                if (*v76 != v68)
                {
                  objc_enumerationMutation(v65);
                }

                if ([*(*(&v75 + 1) + 8 * j) confidenceScore])
                {

                  goto LABEL_61;
                }
              }

              v67 = [v65 countByEnumeratingWithState:&v75 objects:v84 count:16];
              if (v67)
              {
                continue;
              }

              break;
            }
          }

          v70 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            *&buf[4] = "_RequestForInfo";
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "%s All provided scores are 0, defaulting to unknown user", buf, 0xCu);
          }

          [v9 setExpectedSelectedSharedUserId:@"unknown"];
LABEL_61:

          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    v31 = [v1 legacyDirectActionIdentifier];

    if (v31)
    {
      v9 = objc_alloc_init(SAStartDirectActionRequest);
      v32 = [v1 legacyDirectActionIdentifier];
      [v9 setDirectAction:v32];
    }

    else
    {
      v33 = [v1 handoffRequestData];

      if (v33)
      {
        v9 = objc_alloc_init(SAStartHandoffRequest);
        v32 = [v1 handoffRequestData];
        [v9 setHandoffData:v32];
      }

      else
      {
        v35 = [v1 correctedSpeech];

        if (!v35)
        {
          v60 = [v1 startRequest];

          if (v60)
          {
            v9 = [v1 startRequest];
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_33;
        }

        v9 = objc_alloc_init(SASStartCorrectedSpeechRequest);
        v36 = [v1 correctedSpeech];
        [v9 setUtterance:v36];

        v37 = [v1 correctedSpeechContext];
        [v9 ad_setAFCorrectionContext:v37];

        v38 = [v1 combinedRank];
        [v9 setCombinedRank:{objc_msgSend(v38, "integerValue")}];

        v39 = [v1 combinedScore];
        [v39 doubleValue];
        [v9 setCombinedScore:?];

        v40 = [v1 interactionId];
        [v9 setInteractionId:v40];

        v41 = [v1 onDeviceUtterancesPresent];
        [v9 setOnDeviceUtterancesPresent:{objc_msgSend(v41, "BOOLValue")}];

        v42 = [v1 originalRank];
        [v9 setOriginalRank:{objc_msgSend(v42, "integerValue")}];

        v43 = [v1 originalScore];
        [v43 doubleValue];
        [v9 setOriginalScore:?];

        v44 = [v1 previousUtterance];
        [v9 setPreviousUtterance:v44];

        v45 = [v1 sessionId];
        [v9 setSessionId:v45];

        v32 = [v1 utteranceSource];
        [v9 setUtteranceSource:v32];
      }
    }

LABEL_32:

    goto LABEL_33;
  }

  v9 = objc_alloc_init(SAStartRequest);
  v34 = [v1 text];
  [v9 setUtterance:v34];

  if ([v1 activationEvent] == 5 || objc_msgSend(v1, "activationEvent") == 11)
  {
    [v9 setOrigin:SAInputOriginAssistantTextInputValue];
    goto LABEL_33;
  }

  if ([v1 activationEvent] == 8)
  {
    v51 = [v1 speechRequestOptions];
    v52 = [v51 activationEvent];

    if (v52)
    {
      v53 = sub_10000EF08(v52);
      [v9 setOrigin:v53];
    }

    v54 = [v1 testRequestOptions];
    v32 = v54;
    if (v54)
    {
      v55 = [v54 inputOrigin];
      v56 = [v55 length];

      if (v56)
      {
        v57 = [v32 inputOrigin];
        [v9 setOrigin:v57];
      }

      v58 = [v32 isEyesFree];

      if (v58)
      {
        v59 = [v32 isEyesFree];
        [v9 setEyesFree:{objc_msgSend(v59, "BOOLValue")}];
      }
    }

    goto LABEL_32;
  }

LABEL_33:
  v46 = [v1 requestIdentifier];
  v47 = [v46 UUIDString];
  [v9 setAceId:v47];

  v48 = [v1 turnIdentifier];
  v49 = AFTurnIdentifierGetString();
  [v9 setTurnId:v49];

  return v9;
}

void sub_10000C36C(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADResponseModeProvider _computeMode]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s #modes Computing mode for iOS", &v8, 0xCu);
  }

  v3 = [*(a1 + 32) _computeModeForiOS];
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = v3;

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(a1 + 32) + 56);
    v8 = 136315394;
    v9 = "[ADResponseModeProvider _computeMode]_block_invoke";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s #modes Computed mode: %@", &v8, 0x16u);
  }
}

void sub_10000C4F0(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 120) allServices];
  [v1 makeObjectsPerformSelector:"clearDomainObjects"];
}

void sub_10000CB14(char a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000CC04;
  v3[3] = &unk_10051CBD8;
  v4 = 0;
  v5 = a1;
  dispatch_async(v2, v3);
}

void sub_10000CC04(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    _SBSSetStatusBarShowsActivityForApplication(v2);
    return;
  }

  os_unfair_lock_lock(&stru_1005905B0);
  if (*(a1 + 40))
  {
    v3 = 1;
LABEL_9:
    dword_1005905B4 += v3;
    os_unfair_lock_unlock(&stru_1005905B0);
    v4 = *(a1 + 40);

    _SBSSetAllApplicationsShowProgress(v4, 2000);
    return;
  }

  if (dword_1005905B4 > 0)
  {
    v3 = -1;
    goto LABEL_9;
  }

  os_unfair_lock_unlock(&stru_1005905B0);
}

uint64_t sub_10000D144(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 16))
  {
    v2 = (*(v1 + 48) & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  else
  {
    v2 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

void sub_10000D2A4(uint64_t a1)
{
  v1 = [*(a1 + 32) _serviceDelegate];
  [v1 invalidateCurrentUserActivity];
}

void sub_10000DEB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[20];
  if (!v3)
  {
    v4 = [v2 _audioRouteMonitor];
    v5 = [v4 currentAudioRoute];
    v6 = *(a1 + 32);
    v7 = *(v6 + 160);
    *(v6 + 160) = v5;

    v3 = *(*(a1 + 32) + 160);
  }

  v8 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v8, v3);
}

id sub_10000E10C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = 0;
    goto LABEL_48;
  }

  v3 = [v1 count];
  if (v3 <= 1)
  {
    v4 = [v2 copy];
    goto LABEL_48;
  }

  v5 = v3;
  v41 = [[NSMutableSet alloc] initWithCapacity:v3];
  v6 = [[NSMutableSet alloc] initWithCapacity:v5];
  v37 = v2;
  v39 = [[NSMutableArray alloc] initWithCapacity:v5];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v2;
  v7 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_33;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v47;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v47 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v46 + 1) + 8 * i);
      v13 = sub_10001AD98(v12);
      v14 = sub_10001AEC8(v12);
      v15 = v14;
      if (v13)
      {
        v16 = [v41 containsObject:v13];
        if (v15)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v16 = 0;
        if (v14)
        {
LABEL_12:
          v17 = [v6 containsObject:{v15, v37}];
          goto LABEL_15;
        }
      }

      v17 = 0;
LABEL_15:
      if ((v16 | v17) == 1)
      {
        v18 = v9;
        if (!v9)
        {
          v18 = objc_alloc_init(NSMutableArray);
          v9 = v18;
        }
      }

      else
      {
        v18 = v39;
      }

      [v18 addObject:{v12, v37}];
      if (v13)
      {
        v19 = v16;
      }

      else
      {
        v19 = 1;
      }

      if ((v19 & 1) == 0)
      {
        [v41 addObject:v13];
      }

      if (v15)
      {
        v20 = v17;
      }

      else
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        [v6 addObject:v15];
      }
    }

    v8 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
  }

  while (v8);
LABEL_33:

  v21 = [v9 count];
  if (v21)
  {
    v22 = v21;
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v35 = v23;
      v36 = [obj count];
      *buf = 136315650;
      v52 = "ADDeviceContextDeduplicateTuples";
      v53 = 2048;
      v54 = v22;
      v55 = 2048;
      v56 = v36;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s Rejected %tu/%tu device context tuples.", buf, 0x20u);
    }

    if (AFIsInternalInstall())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v24 = v9;
      v25 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v43;
        do
        {
          for (j = 0; j != v26; j = j + 1)
          {
            if (*v43 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              v30 = *(*(&v42 + 1) + 8 * j);
              v31 = v29;
              v32 = [v30 content];
              v33 = [v30 info];
              *buf = 136315650;
              v52 = "ADDeviceContextDeduplicateTuples";
              v53 = 2112;
              v54 = v32;
              v55 = 2112;
              v56 = v33;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s Rejected %@ from %@.", buf, 0x20u);
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v26);
      }
    }
  }

  v4 = [v39 copy];

  v2 = v38;
LABEL_48:

  return v4;
}

void sub_10000E5B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 128) == 2)
  {
    if ([*(v4 + 120) containsObject:*(v4 + 144)])
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "[ADContextManager _fetchContextSnapshotForCurrentRequest]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s #hal context snapshot fetch timed out and snapshot has been accessed by client, clear the snapshot", buf, 0xCu);
      }

      [*(a1 + 32) _logContextCollectorFetchFailed:*(a1 + 40)];
      v6 = *(a1 + 32);
      if (!*(v6 + 144) && ![*(v6 + 136) count])
      {
        v7 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          *&buf[4] = "[ADContextManager _fetchContextSnapshotForCurrentRequest]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal context snapshot cleared", buf, 0xCu);
        }

        v8 = *(a1 + 32);
        v9 = *(v8 + 136);
        *(v8 + 136) = 0;
      }

      goto LABEL_25;
    }

    v4 = *(a1 + 32);
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
    goto LABEL_14;
  }

  if ([v10 isEqual:*(v4 + 144)])
  {
    v4 = *(a1 + 32);
LABEL_14:
    if (([*(v4 + 120) containsObject:*(v4 + 144)] & 1) == 0 && *(*(a1 + 32) + 128) == 2)
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[ADContextManager _fetchContextSnapshotForCurrentRequest]_block_invoke";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s #hal context snapshot fetch timed out but snapshot hasn't been accessed by client, proceeed to setting the snapshot", buf, 0xCu);
      }
    }

    v12 = sub_10000E10C(v3);
    v13 = *(a1 + 32);
    v14 = *(v13 + 152);
    if (v14)
    {
      v15 = v14;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10001CE64;
      v38 = &unk_100519D08;
      v39 = v15;
      v16 = v15;
      v17 = [v12 af_mappedArray:buf];

      v13 = *(a1 + 32);
      v12 = v17;
    }

    objc_storeStrong((v13 + 136), v12);
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(*(a1 + 32) + 136);
      v29 = v18;
      v30 = [v28 count];
      *buf = 136315394;
      *&buf[4] = "[ADContextManager _fetchContextSnapshotForCurrentRequest]_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = v30;
      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s #hal context snapshot set with %tu contexts.", buf, 0x16u);
    }

    if (AFIsInternalInstall())
    {
      [*(*(a1 + 32) + 136) enumerateObjectsUsingBlock:&stru_100511D70];
    }

    v19 = [AFWatchdogTimer alloc];
    v20 = *(a1 + 32);
    v21 = *(v20 + 200);
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_100115E30;
    v34 = &unk_10051E010;
    v35 = v20;
    v36 = v3;
    v22 = [v19 initWithTimeoutInterval:v21 onQueue:&v31 timeoutHandler:20.0];
    v23 = *(a1 + 32);
    v24 = *(v23 + 160);
    *(v23 + 160) = v22;

    [*(*(a1 + 32) + 160) start];
    goto LABEL_25;
  }

  v25 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v26 = *(a1 + 48);
    v27 = *(*(a1 + 32) + 144);
    *buf = 136315650;
    *&buf[4] = "[ADContextManager _fetchContextSnapshotForCurrentRequest]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v26;
    *&buf[22] = 2112;
    v38 = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s #hal skip setting context snapshot as the request has changed: %@ -> %@", buf, 0x20u);
  }

LABEL_25:
}

BOOL sub_10000EE68()
{
  v0 = +[MCProfileConnection sharedConnection];
  v1 = [v0 effectiveBoolValueForSetting:MCFeatureAllowVoiceDialing] == 2;

  return v1;
}

BOOL sub_10000EEB8()
{
  v0 = +[MCProfileConnection sharedConnection];
  v1 = [v0 effectiveBoolValueForSetting:MCFeatureLockScreenControlCenterAllowed] == 2;

  return v1;
}

id sub_10000EF08(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) <= 0x23 && ((0xE64E1F7BFuLL >> v2))
  {
    v3 = **(&off_10051D790 + v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10000F0E0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
  }

  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 136315394;
    v6 = "[ADResponseModeProvider fetchCurrentMode]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #modes Fetching current mode: %@", &v5, 0x16u);
  }
}

id sub_10000F1C0()
{
  v0 = +[VTPreferences sharedPreferences];
  v1 = [v0 voiceTriggerEnabled];

  return v1;
}

void sub_100010158(uint64_t a1)
{
  v1 = [*(a1 + 32) _serviceDelegate];
  [v1 networkDidBecomeActive];
}

void sub_10001019C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = @"context_collector_available";
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a2 count] != 0);
  v9[1] = @"local_is_collector";
  v10[0] = v6;
  v7 = [NSNumber numberWithBool:a3];
  v10[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v4 logEventWithType:4525 machAbsoluteTime:v5 context:v8];
}

id sub_1000105F4(void *a1)
{
  v1 = a1;
  v2 = [[NSUUID alloc] initWithUUIDString:v1];

  if (v2)
  {
    v3 = [[SISchemaUUID alloc] initWithNSUUID:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1000109A8(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _cachedKeychainStringForKey:@"User Identifier"];

  return _objc_release_x1();
}

uint64_t sub_100010A0C(void *a1)
{
  v1 = a1;
  v2 = qword_100590428;
  if (!qword_100590428)
  {
    v42 = objc_opt_class();
    v41 = objc_opt_class();
    v40 = objc_opt_class();
    v39 = objc_opt_class();
    v38 = objc_opt_class();
    v37 = objc_opt_class();
    v36 = objc_opt_class();
    v35 = objc_opt_class();
    v34 = objc_opt_class();
    v33 = objc_opt_class();
    v32 = objc_opt_class();
    v31 = objc_opt_class();
    v30 = objc_opt_class();
    v29 = objc_opt_class();
    v28 = objc_opt_class();
    v27 = objc_opt_class();
    v26 = objc_opt_class();
    v25 = objc_opt_class();
    v24 = objc_opt_class();
    v23 = objc_opt_class();
    v22 = objc_opt_class();
    v21 = objc_opt_class();
    v20 = objc_opt_class();
    v19 = objc_opt_class();
    v18 = objc_opt_class();
    v17 = objc_opt_class();
    v16 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0];
    v13 = qword_100590428;
    qword_100590428 = v12;

    v2 = qword_100590428;
  }

  v14 = [v2 containsObject:objc_opt_class()];

  return v14 ^ 1;
}

void sub_100010DD0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 200);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = *(a1 + 48);
  v7 = v4;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  (*(v5 + 16))(v5, v6);

  [*(a1 + 32) _logFetchLocalContextEnded:*(a1 + 40)];
}

void sub_100010E8C(id a1, AFPeerContentTuple *a2, unint64_t a3, BOOL *a4)
{
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = [(AFPeerContentTuple *)a2 content];
    v9 = 136315650;
    v10 = "[ADContextManager _fetchContextSnapshotForCurrentRequest]_block_invoke";
    v11 = 2048;
    v12 = a3;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal context snapshot %tu: %@", &v9, 0x20u);
  }
}

AFSiriAudioRoute *sub_10001136C(uint64_t a1)
{
  v2 = _AFPreferencesAnnounceNotificationsOnHearingAidsEnabled();
  v3 = _AFPreferencesAnnounceNotificationsOnBuiltInSpeakerEnabled();
  v4 = [sub_100019F2C() sharedAVSystemController];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v5 = qword_100590280;
  v28 = qword_100590280;
  if (!qword_100590280)
  {
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1001349A0;
    v23 = &unk_10051E1C8;
    v24 = &v25;
    v6 = sub_1001349F0();
    v26[3] = dlsym(v6, "AVSystemController_PickableRoutesAttribute");
    qword_100590280 = *(v24[1] + 24);
    v5 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v5)
  {
    v14 = +[NSAssertionHandler currentHandler];
    v15 = [NSString stringWithUTF8String:"NSString *getAVSystemController_PickableRoutesAttribute(void)"];
    [v14 handleFailureInFunction:v15 file:@"AFSiriAudioRouteMonitor.m" lineNumber:38 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v7 = [v4 attributeForKey:*v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v29 count:16];
  if (v9)
  {
    v10 = *v17;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = [[AFSiriAudioRoute alloc] initWithRouteDescription:*(*(&v16 + 1) + 8 * v11) hearingAidsAnnounceEnabled:v2 builtInSpeakerAnnounceEnabled:v3 ringerSwitchState:a1];
      if ([(AFSiriAudioRoute *)v12 isRouteCurrentlyPicked])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v29 count:16];
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  return v12;
}

void sub_1000115FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000122F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100012328()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_10058FF10;
  v9 = qword_10058FF10;
  if (!qword_10058FF10)
  {
    v1 = sub_1000A0638();
    v7[3] = dlsym(v1, "AVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectEnabled");
    qword_10058FF10 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectEnabled(void)"];
    [v4 handleFailureInFunction:v5 file:@"AFSiriAudioRoute.m" lineNumber:30 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100012474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000127F4(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  if (result)
  {
    result = [result length];
    if (result == 17)
    {
      v3 = *(a1 + 32);
      v4 = v3[10];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100012AF4;
      v5[3] = &unk_1005124B8;
      v5[4] = v3;
      return [v3 _fetchInEarDetectionStateAndStartObservingFromSourceForBTAddress:v4 withCompletion:v5];
    }
  }

  return result;
}

void sub_100012AF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012BBC;
  block[3] = &unk_10051DB68;
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

void sub_100012BBC(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 != *(v2 + 24))
  {
    v4 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(v2 + 80);
      v8 = a1[6];
      v9 = 136315906;
      v10 = "[AFSiriHeadphonesMonitor _updateInEarDetectionStateAndObserve]_block_invoke_3";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v1;
      v15 = 2112;
      v16 = v8;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s In-ear detection state for %@: %@, error: %@", &v9, 0x2Au);
      v1 = a1[4];
      v2 = a1[5];
    }

    objc_storeStrong((v2 + 24), v1);
    v5 = a1[5];
    v6 = objc_opt_new();
    [v5 _broadcastInEarDetectionStateChangesFrom:v6 to:a1[4]];
  }
}

void sub_100012D84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[3] outputDevices];
    *(v2 + 66) = 0;
    *(v2 + 32) = 0;
    if ([v3 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v20;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v20 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v19 + 1) + 8 * i);
            v10 = [v9 deviceType];
            if (v10 <= 4 && ((1 << v10) & 0x13) != 0)
            {
              *(v2 + 64) = 1;
              if (v10 == 1)
              {
                v12 = +[ADBluetoothManager sharedInstance];
                v13 = [v9 deviceID];
                v14 = [v12 deviceWithAddress:v13];

                v15 = [v14 deviceInfo];
                LOBYTE(v13) = [v15 isAdvancedAppleAudioDevice];

                v16 = AFSiriLogContextConnection;
                v17 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
                if (v13)
                {
                  v18 = v2 + 66;
                  if (v17)
                  {
                    *buf = 136315138;
                    v24 = "[ADResponseModeProvider _fetchConnectedAudioAccessoryState]_block_invoke";
                    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s #modes Wx output route detected", buf, 0xCu);
                    v18 = v2 + 66;
                  }
                }

                else
                {
                  v18 = v2 + 65;
                  if (v17)
                  {
                    *buf = 136315138;
                    v24 = "[ADResponseModeProvider _fetchConnectedAudioAccessoryState]_block_invoke";
                    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s #modes Third party bluetooth device detected", buf, 0xCu);
                    v18 = v2 + 65;
                  }
                }

                *v18 = 1;
              }
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v6);
      }
    }

    else
    {
      *(v2 + 32) = 0;
      *(v2 + 66) = 0;
    }
  }
}

uint64_t sub_1000133E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  if (!v2)
  {
    v2 = *(v1 + 64);
  }

  v3 = *(*(a1 + 40) + 8);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100013EC0(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [SISchemaUUID alloc];
  v6 = [[NSUUID alloc] initWithUUIDString:v4];

  v12 = [v5 initWithNSUUID:v6];
  v7 = objc_alloc_init(SISchemaRequestLinkInfo);
  [v7 setUuid:v12];
  [v7 setComponent:1];
  v8 = [[SISchemaUUID alloc] initWithNSUUID:v3];

  v9 = objc_alloc_init(SISchemaRequestLinkInfo);
  [v9 setUuid:v8];
  [v9 setComponent:2];
  v10 = objc_alloc_init(SISchemaRequestLink);
  [v10 setSource:v7];
  [v10 setTarget:v9];
  v11 = +[AssistantSiriAnalytics sharedStream];
  [v11 emitMessage:v10];
}

void sub_100014010(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = sub_1000105F4(v7);
  if (v10)
  {
    v11 = objc_alloc_init(ORCHSchemaORCHClientEvent);
    v12 = objc_alloc_init(ORCHSchemaORCHClientEventMetadata);
    [v12 setRequestId:v10];
    [v11 setEventMetadata:v12];
    v13 = objc_alloc_init(ORCHSchemaORCHAceCommandContext);
    v14 = objc_alloc_init(ORCHSchemaORCHAceCommandStarted);
    [v14 setAceCommandType:a4];
    [v14 setAceCommandName:v8];
    [v13 setStartedOrChanged:v14];
    v15 = sub_1000105F4(v9);
    [v13 setAceId:v15];

    [v11 setAceCommandContext:v13];
    v16 = +[AssistantSiriAnalytics sharedStream];
    [v16 emitMessage:v11];
  }

  else
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "_EmitAceCommandStartedEvent";
      v20 = 2112;
      v21 = v7;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s The requestId=%@ is malformed, unable to log SELF command", &v18, 0x16u);
    }
  }
}

void sub_100014268(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 200));
  v7 = *(a1 + 56);
  v8 = [v5 copy];
  (*(v7 + 16))(v7, v8);

  v9 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100014620;
  v12[3] = &unk_100511F70;
  v13 = v5;
  v14 = v9;
  v19 = *(a1 + 64);
  v15 = v6;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v10 = v6;
  v11 = v5;
  [v9 _getDevicesWithContexts:v11 passingTest:&stru_100511E00 capabilitesPassingTest:&stru_100511E40 completion:v12];
}

BOOL sub_1000143C4(id a1, AFDeviceContext *a2)
{
  v2 = a2;
  v3 = [(AFDeviceContext *)v2 alarmSnapshot];
  if ([v3 hasFiringAlarms])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(AFDeviceContext *)v2 timerSnapshot];
    if ([v5 hasFiringTimers])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(AFDeviceContext *)v2 playbackStateSnapshot];
      if ([v6 playbackState] == 1)
      {
        v4 = 0;
      }

      else
      {
        v7 = [(AFDeviceContext *)v2 playbackStateSnapshot];
        if ([v7 playbackState] == 2)
        {
          v8 = [(AFDeviceContext *)v2 playbackStateSnapshot];
          v9 = [v8 nowPlayingTimestamp];
          if (v9)
          {
            v14 = +[NSDate date];
            v10 = [(AFDeviceContext *)v2 playbackStateSnapshot];
            v11 = [v10 nowPlayingTimestamp];
            [v14 timeIntervalSinceDate:v11];
            v4 = v12 >= 300.0;
          }

          else
          {
            v4 = 1;
          }
        }

        else
        {
          v4 = 1;
        }
      }
    }
  }

  LOBYTE(v3) = 0;
  if (([(AFDeviceContext *)v2 fromLocalDevice]& 1) == 0 && !v4)
  {
    LODWORD(v3) = [(AFDeviceContext *)v2 af_didHearVoiceTrigger]^ 1;
  }

  return v3;
}

void sub_100014620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(NSMutableArray);
  }

  v7 = v6;

  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v52[3] = 0;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = sub_10010CAC0;
  v50[4] = sub_10010CAD0;
  v51 = 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100014A6C;
  v40[3] = &unk_100511EA8;
  v8 = *(a1 + 80);
  v9 = *(a1 + 48);
  v40[4] = *(a1 + 40);
  v49 = v8;
  v41 = v9;
  v10 = v7;
  v42 = v10;
  v43 = *(a1 + 56);
  v44 = *(a1 + 64);
  v46 = &v53;
  v47 = v52;
  v48 = v50;
  v45 = *(a1 + 72);
  v11 = objc_retainBlock(v40);
  if ([v3 count])
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_10010CAC0;
    v38 = sub_10010CAD0;
    v39 = 0;
    v12 = [AFSafetyBlock alloc];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100115958;
    v30[3] = &unk_100511ED0;
    v32 = &v34;
    v33 = v50;
    v31 = v11;
    v13 = [v12 initWithBlock:v30];
    v14 = [AFWatchdogTimer alloc];
    v15 = *(*(a1 + 40) + 200);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001159D8;
    v27[3] = &unk_10051E010;
    v16 = v3;
    v28 = v16;
    v17 = v13;
    v29 = v17;
    v18 = [v14 initWithTimeoutInterval:v15 onQueue:v27 timeoutHandler:0.5];
    v19 = v35[5];
    v35[5] = v18;

    [v35[5] start];
    v54[3] = mach_absolute_time();
    v20 = *(*(a1 + 40) + 256);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100115AA4;
    v22[3] = &unk_100511F48;
    v23 = v10;
    v25 = v52;
    v26 = v50;
    v21 = v17;
    v24 = v21;
    [v20 fetchContextSnapshotFromDevicesWithPeerInfo:v16 completion:v22];

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    (v11[2])(v11);
  }

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v53, 8);
}

void sub_100014A28(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100014A6C(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 200));
  mach_absolute_time();
  v2 = AFMachAbsoluteTimeGetMilliseconds() - *(a1 + 104);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v19 = v3;
    v20 = [NSNumber numberWithUnsignedLongLong:v2];
    *buf = 136315394;
    v32 = "[ADContextManager _fetchContextSnapshotForCurrentRequest]_block_invoke_7";
    v33 = 2112;
    v34 = v20;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s #hal context fetch duration_in_ms: %@", buf, 0x16u);
  }

  v29[0] = @"success";
  if (*(a1 + 40))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*(a1 + 32) + 128) != 2;
  }

  v5 = [NSNumber numberWithInt:v4];
  v30[0] = v5;
  v29[1] = @"timedOut";
  v6 = [NSNumber numberWithInt:*(*(a1 + 32) + 128) == 2];
  v30[1] = v6;
  v29[2] = @"duration_in_ms";
  v7 = [NSNumber numberWithUnsignedLongLong:v2];
  v30[2] = v7;
  v29[3] = @"devices_count";
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) count]);
  v30[3] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];

  [*(a1 + 56) logEventWithType:4526 context:v9];
  if (*(a1 + 40))
  {
    [*(a1 + 32) _logContextCollectorFetchFailed:*(a1 + 64)];
  }

  else
  {
    [*(a1 + 32) _logContextCollectorFetchEnded:*(a1 + 64) numDeviceContextsFetched:{objc_msgSend(*(a1 + 48), "count")}];
  }

  v10 = *(*(*(a1 + 80) + 8) + 24);
  if (v10)
  {
    [*(a1 + 32) _logForceFetchWithStartTime:v10 forceFetchCount:*(*(*(a1 + 88) + 8) + 24) forceFetchError:*(*(*(a1 + 96) + 8) + 40) halMetricsId:*(a1 + 64)];
  }

  (*(*(a1 + 72) + 16))();
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(*(a1 + 32) + 112);
    v22 = v11;
    v23 = [v21 count];
    *buf = 136315394;
    v32 = "[ADContextManager _fetchContextSnapshotForCurrentRequest]_block_invoke";
    v33 = 2048;
    v34 = v23;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s #hal dequeuing %tu snapshot completions", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = *(*(a1 + 32) + 112);
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v24 + 1) + 8 * i) invoke];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v17 = *(a1 + 32);
  v18 = *(v17 + 112);
  *(v17 + 112) = 0;
}

void sub_100014FBC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) stationary] && (objc_msgSend(*(*(a1 + 32) + 16), "automotive") & 1) != 0)
  {
    v2 = &SAMotionActivityInVehicleStationaryValue;
  }

  else if ([*(*(a1 + 32) + 16) stationary])
  {
    v2 = &SAMotionActivityStationaryValue;
  }

  else if ([*(*(a1 + 32) + 16) walking])
  {
    v2 = &SAMotionActivityWalkingValue;
  }

  else if ([*(*(a1 + 32) + 16) running])
  {
    v2 = &SAMotionActivityRunningValue;
  }

  else if ([*(*(a1 + 32) + 16) automotive])
  {
    v2 = &SAMotionActivityInVehicleMovingValue;
  }

  else if ([*(*(a1 + 32) + 16) cycling])
  {
    v2 = &SAMotionActivityCyclingValue;
  }

  else
  {
    if (![*(*(a1 + 32) + 16) unknown])
    {
      return;
    }

    v2 = &SAMotionActivityUnknownValue;
  }

  v3 = *v2;
  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

id sub_100015560(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 count])
    {
      v3 = [v2 af_lenientMappedArray:&stru_100519CB8];
    }

    else
    {
      v3 = &__NSArray0__struct;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100015BD4(void *a1)
{
  v1 = a1;
  if (AFIsInternalInstall())
  {
    v2 = _AFPreferencesHardCodedBluetoothProximityNumber();
    v3 = v2;
    if (v2)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1001C5D24;
      v6[3] = &unk_1005157F0;
      v7 = v2;
      v4 = [v1 af_mappedArray:v6];
    }

    else
    {
      v4 = v1;
    }
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

id sub_100015CBC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = 0;
  v34 = v6;
  v35 = v7;
  if (v6 && v7)
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001C69AC;
    v43[3] = &unk_100515240;
    v44 = v6;
    v8 = [v35 af_lenientMappedDictionary:v43];
  }

  v9 = v5;
  v10 = objc_alloc_init(NSMutableArray);
  v57 = 0u;
  v58 = 0u;
  memset(buf, 0, sizeof(buf));
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:buf objects:&v52 count:16];
  if (!v12)
  {

LABEL_18:
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v47) = 136315138;
      *(&v47 + 4) = "_ADProximityTuplesForDeviceContexts";
    }

    v13 = 0;
    goto LABEL_21;
  }

  v13 = 0;
  v14 = **&buf[16];
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (**&buf[16] != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*&buf[8] + 8 * i);
      v17 = [v16 deviceInfo];
      if ([v16 fromLocalDevice])
      {
        v18 = v17;

        v13 = v18;
      }

      else if (v17)
      {
        [v10 addObject:v17];
      }
    }

    v12 = [v11 countByEnumeratingWithState:buf objects:&v52 count:16];
  }

  while (v12);

  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_21:
  v20 = sub_100016244(v13, v10);
  v21 = objc_alloc_init(NSMutableArray);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1001C6B14;
  v45[3] = &unk_100515778;
  v22 = v21;
  v46 = v22;
  v23 = [v11 af_lenientMappedArray:v45];
  *&v47 = _NSConcreteStackBlock;
  *(&v47 + 1) = 3221225472;
  v48 = sub_1001C6B9C;
  v49 = &unk_1005157A0;
  v50 = v22;
  v51 = v23;
  v24 = v22;
  v25 = v23;
  v26 = [v20 af_mappedArray:&v47];

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1001C6DE0;
  v41[3] = &unk_100515268;
  v27 = objc_alloc_init(NSMutableDictionary);
  v42 = v27;
  [v26 enumerateObjectsUsingBlock:v41];
  if ([v8 count])
  {
    v28 = [v26 mutableCopy];
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1001C6E94;
    v36[3] = &unk_1005152B8;
    v37 = v27;
    v29 = v26;
    v38 = v29;
    v40 = &v52;
    v30 = v28;
    v39 = v30;
    [v8 enumerateKeysAndObjectsUsingBlock:v36];
    v26 = [v30 copy];

    v31 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v33 = v53[3];
      *buf = 136315650;
      *&buf[4] = "ADProximityTuplesForProximitySignals";
      *&buf[12] = 2048;
      *&buf[14] = v33;
      *&buf[22] = 2112;
      *&buf[24] = v26;
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s #hal Incorporated %lu from RP proximity: %@", buf, 0x20u);
    }

    _Block_object_dispose(&v52, 8);
  }

  return v26;
}

id sub_100016244(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 roomName];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v46 = "_ADProximityTuplesForPeerInfo";
    v47 = 2112;
    v48 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s #hal Primary Device Room Name: %@", buf, 0x16u);
  }

  v34 = v5;
  v33 = v3;
  if ([v5 length])
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v39 + 1) + 8 * i) roomName];
          if (v13)
          {
            if (([v7 objectForKeyedSubscript:v13], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "integerValue"), v14, objc_msgSend(v34, "isEqual:", v13)) && (v15 = AFDeviceProximityCompare(), v16 = &off_100533B60, v15 == 1) || (v17 = AFDeviceProximityCompare(), v16 = &off_100533B78, v17 == 1))
            {
              [v7 setObject:v16 forKeyedSubscript:v13];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v10);
    }

    v3 = v33;
  }

  else
  {
    v7 = 0;
  }

  v18 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v46 = "_ADProximityTuplesForPeerInfo";
    v47 = 2112;
    v48 = v7;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s Proximity by Room Name: %@", buf, 0x16u);
  }

  v19 = objc_alloc_init(NSMutableArray);
  if (v3)
  {
    v20 = [[AFPeerContentTuple alloc] initWithInfo:v3 content:&off_100533B90];
    [v19 addObject:v20];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = v4;
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v35 + 1) + 8 * j);
        v27 = [v26 roomName];
        if (v27 && ([v7 objectForKeyedSubscript:v27], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v29 = v28;
          v30 = [[AFPeerContentTuple alloc] initWithInfo:v26 content:v28];
        }

        else
        {
          v30 = [[AFPeerContentTuple alloc] initWithInfo:v26 content:&off_100533BA8];
        }

        [v19 addObject:v30];
      }

      v23 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v23);
  }

  v31 = [v19 copy];

  return v31;
}

void sub_100016E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  [*(a1 + 32) _startConnectionPreferringWWAN:*(*(a1 + 32) + 276) skipPeer:a2 skipPeerError:*(*(a1 + 32) + 280) useWiFiHint:a3 forceReconnect:*(*(a1 + 32) + 288)];
  *(*(a1 + 32) + 277) = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 280);
  *(v5 + 280) = 0;

  *(*(a1 + 32) + 288) = 0;
  *(*(a1 + 32) + 321) = v3;
}

uint64_t sub_100017820()
{
  result = AFIsNano();
  if (result)
  {
    v1 = [ADSharedPeerStreamConnection sharedPeerStreamConnectionWithServiceIdentifier:@"com.apple.private.alloy.siri.proxy" listener:0];
    v2 = [v1 deviceIsNearby];

    return v2;
  }

  return result;
}

uint64_t sub_100018A18(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentAccessoryInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100018AB0(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[ADCompanionService _setupClientLink]_block_invoke";
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s remote request success %d, error: %@", &v8, 0x1Cu);
  }

  if (a1[4])
  {
    [*(a1[5] + 48) removeObjectForKey:?];
  }

  if (!v5 && (a2 & 1) == 0)
  {
    v5 = [AFError errorWithCode:0];
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  (*(a1[6] + 16))(a1[6], 0, 0, v7);
}

void sub_100018E0C(id a1)
{
  if (qword_1005905C8 != -1)
  {
    dispatch_once(&qword_1005905C8, &stru_100516D58);
  }

  qword_1005905C0 = objc_getClass("BMStreams");
  off_10058CB28 = sub_100215908;
}

void sub_100019D3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[ADUserNotificationServiceProvider _snoozeNotifications]_block_invoke";
      v8 = 2112;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to snooze notification %@ with error %@", &v6, 0x20u);
    }
  }
}

id sub_100019F2C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100590270;
  v7 = qword_100590270;
  if (!qword_100590270)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100134BB8;
    v3[3] = &unk_10051E1C8;
    v3[4] = &v4;
    sub_100134BB8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100019FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001A01C(unsigned int a1)
{
  v4[0] = *&off_10051C7F8;
  v4[1] = *&off_10051C808;
  v5 = @"ADSpeechStateCanceling";
  v1 = *(v4 + a1);
  for (i = 32; i != -8; i -= 8)
  {
  }

  return v1;
}

void sub_10001A0C8()
{
  v0 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v1 = 136315138;
    v2 = "ADHideNetworkActivityIndicatorForApplicationIdentifier";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "%s *** Turning off data spinny", &v1, 0xCu);
  }

  sub_10000CB14(0);
}

id sub_10001A2F8(uint64_t a1)
{
  if (!a1)
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"BOOL ADVolumeServiceSupportsSmartSiriVolume(AFInstanceContext *__strong)"];
    [v2 handleFailureInFunction:v3 file:@"ADVolumeService.m" lineNumber:738 description:{@"Invalid parameter not satisfying: %@", @"instanceContext != nil"}];
  }

  return +[CSSpeechController isSmartSiriVolumeAvailable];
}

id sub_10001A3B0(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001A48C;
    v5[3] = &unk_10051D9B8;
    v6 = v1;
    v2 = [AFPeerInfo newWithBuilder:v5];
    v3 = sub_10001A498(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10001A498(void *a1, _BYTE *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    *a2 = 0;
  }

  if (v3)
  {
    v5 = +[ADDeviceCircleManager sharedInstance];
    v6 = [v5 managedPeerInfoMatchingPeerInfo:v4];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001A6E8;
    v18[3] = &unk_1005144F8;
    v7 = v5;
    v19 = v7;
    v8 = v4;
    v20 = v8;
    v9 = v6;
    v21 = v9;
    v10 = [AFPeerInfo newWithBuilder:v18];
    v11 = AFPeerInfoMerge();
    v12 = AFPeerInfoMerge();

    if (([v12 isEqual:v8] & 1) == 0)
    {
      if (a2)
      {
        *a2 = 1;
      }

      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v15 = v13;
        v16 = AFPeerInfoGetCompactDescription();
        v17 = AFPeerInfoGetCompactDescription();
        *buf = 136315650;
        v23 = "ADDeviceCircleGetBestPeerInfo";
        v24 = 2112;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s %@ -> %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_10001A6E8(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) idsDeviceUniqueIdentifier];
  v5 = [v3 assistantIdForDeviceWithIdsDeviceUniqueIdentifier:v4];
  if (v5)
  {
    [v15 setAssistantIdentifier:v5];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 48) idsDeviceUniqueIdentifier];
    v8 = [v6 assistantIdForDeviceWithIdsDeviceUniqueIdentifier:v7];
    [v15 setAssistantIdentifier:v8];
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) assistantIdentifier];
  v11 = [v9 idsDeviceUniqueIdentifierForDeviceWithAssistantId:v10];
  if (v11)
  {
    [v15 setIdsDeviceUniqueIdentifier:v11];
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = [*(a1 + 48) assistantIdentifier];
    v14 = [v12 idsDeviceUniqueIdentifierForDeviceWithAssistantId:v13];
    [v15 setIdsDeviceUniqueIdentifier:v14];
  }
}

uint64_t sub_10001A834(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if (sub_10001AA08(v3, v4))
    {
      v6 = 1;
    }

    else
    {
      v11 = 0;
      v7 = sub_10001A498(v3, &v11);
      v10 = 0;
      v8 = sub_10001A498(v5, &v10);
      if ((v11 & 1) != 0 || v10 == 1)
      {
        v6 = sub_10001AA08(v7, v8);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

uint64_t sub_10001AA08(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 idsDeviceUniqueIdentifier];
  v6 = [v4 idsDeviceUniqueIdentifier];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
    v10 = v7 != 0;
  }

  else
  {
    if (!v7 || !v8)
    {

      goto LABEL_9;
    }

    v10 = [v7 isEqual:v8];
  }

  if (v10)
  {
    goto LABEL_23;
  }

LABEL_9:
  v11 = [v3 rapportEffectiveIdentifier];
  v12 = [v4 rapportEffectiveIdentifier];
  v13 = v11;
  v14 = v12;
  v15 = v14;
  if (v13 == v14)
  {
    v16 = v13 != 0;
  }

  else
  {
    if (!v13 || !v14)
    {

      goto LABEL_17;
    }

    v16 = [v13 isEqual:v14];
  }

  if (v16)
  {
    goto LABEL_23;
  }

LABEL_17:
  v17 = [v3 homeKitAccessoryIdentifier];
  v18 = [v4 homeKitAccessoryIdentifier];
  v19 = v17;
  v20 = v18;
  v21 = v20;
  if (v19 == v20)
  {
    v22 = v19 != 0;
  }

  else
  {
    if (!v19 || !v20)
    {

      goto LABEL_25;
    }

    v22 = [v19 isEqual:v20];
  }

  if (v22)
  {
LABEL_23:
    v23 = 1;
    goto LABEL_31;
  }

LABEL_25:
  v24 = [v3 assistantIdentifier];
  v25 = [v24 uppercaseString];
  v26 = [v4 assistantIdentifier];
  v27 = [v26 uppercaseString];
  v28 = v25;
  v29 = v27;
  v30 = v29;
  if (v28 == v29)
  {
    v23 = v28 != 0;
  }

  else
  {
    v23 = 0;
    if (v28 && v29)
    {
      v23 = [v28 isEqual:v29];
    }
  }

LABEL_31:
  return v23;
}

id sub_10001AD98(void *a1)
{
  v1 = a1;
  v2 = [v1 content];
  v3 = [v2 deviceInfo];
  v4 = sub_10001AE44(v3);
  if (v4)
  {
    v5 = v4;
    v6 = v5;
  }

  else
  {
    v7 = [v1 info];
    v6 = sub_10001AE44(v7);

    v5 = 0;
  }

  return v6;
}

id sub_10001AE44(void *a1)
{
  v1 = a1;
  v2 = [v1 assistantIdentifier];
  if (![v2 length])
  {
    v3 = sub_10001A498(v1, 0);
    v4 = [v3 assistantIdentifier];

    v2 = v4;
  }

  return v2;
}

id sub_10001AEC8(void *a1)
{
  v1 = a1;
  v2 = [v1 content];
  v3 = [v2 deviceInfo];
  v4 = sub_10001AF74(v3);
  if (v4)
  {
    v5 = v4;
    v6 = v5;
  }

  else
  {
    v7 = [v1 info];
    v6 = sub_10001AF74(v7);

    v5 = 0;
  }

  return v6;
}

id sub_10001AF74(void *a1)
{
  v1 = a1;
  v2 = [v1 idsDeviceUniqueIdentifier];
  if (![v2 length])
  {
    v3 = sub_10001A498(v1, 0);
    v4 = [v3 idsDeviceUniqueIdentifier];

    v2 = v4;
  }

  return v2;
}

void sub_10001B2C4(void *a1)
{
  v2 = @"ClientConnection";
  v3 = a1;
  v4 = dispatch_get_global_queue(17, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006BB88;
  v7[3] = &unk_10051E010;
  v8 = @"ClientConnection";
  v9 = v3;
  v5 = v3;
  v6 = @"ClientConnection";
  dispatch_async(v4, v7);
}

id sub_10001B398(uint64_t a1)
{
  v2 = SADataSharingOptInStatusUnknownValue;
  if ((a1 - 1) <= 2)
  {
    v3 = **(&off_100512900 + a1 - 1);

    v2 = v3;
  }

  return v2;
}

void sub_10001B7D4(void *a1)
{
  v1 = a1;
  if (AFIsInternalInstall())
  {
    if ([v1 activationEvent] == 1)
    {
      v2 = +[NSProcessInfo processInfo];
      [v2 systemUptime];
      v4 = v3;

      [v1 expectedActivationEventTime];
      v6 = v5;
      [v1 activationEventTime];
      v8 = v7;
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v10 = 136315650;
        v11 = "_LogActivationDeltasForOptions";
        v12 = 2048;
        v13 = v4 - v6;
        v14 = 2048;
        v15 = v4 - v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Current delta from expected activation: %lf activation: %lf", &v10, 0x20u);
      }
    }
  }
}

void sub_10001BB8C(CC_SHA1_CTX *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = 0;
    v6[1] = 0;
    [v3 getUUIDBytes:v6];
    v4 = [NSData dataWithBytes:v6 length:16];
LABEL_7:
    v5 = v4;
    CC_SHA1_Update(a1, [v4 bytes], [v4 length]);
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 dataUsingEncoding:4];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_7;
  }

  v5 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v6[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Only NSUUID, NSString and NSData are supported. Other input types are ignored", v6, 2u);
  }

LABEL_8:
}

uint64_t sub_10001C03C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _cachedKeychainStringForKey:@"Internal Auth AppleConnect Service Ticket"];

  return _objc_release_x1();
}

uint64_t sub_10001C180(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _cachedKeychainStringForKey:@"Internal Auth Session Token"];

  return _objc_release_x1();
}

void sub_10001C22C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 208);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CA78;
  v7[3] = &unk_10051E010;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10001C2D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[34])
  {
    v3 = [*(a1 + 40) dataUsingEncoding:4];
    v4 = [v2 _onQueueSetKeychainValue:v3 forKey:@"Assistant Identifier"];

    v2 = *(a1 + 32);
    if (v4)
    {
      v2[34] &= ~1u;
      v2 = *(a1 + 32);
    }
  }

  if ((v2[34] & 2) != 0)
  {
    v5 = [*(a1 + 48) dataUsingEncoding:4];
    v6 = [v2 _onQueueSetKeychainValue:v5 forKey:@"Logging Assistant Identifier"];

    v2 = *(a1 + 32);
    if (v6)
    {
      v2[34] &= ~2u;
      v2 = *(a1 + 32);
    }
  }

  if ((v2[34] & 4) != 0)
  {
    v7 = [*(a1 + 56) dataUsingEncoding:4];
    v8 = [v2 _onQueueSetKeychainValue:v7 forKey:@"Speech Identifier"];

    if (v8)
    {
      *(*(a1 + 32) + 68) &= ~4u;
    }
  }

  if ((AFIsNano() & 1) != 0 || AFIsHorseman())
  {
    v9 = *(a1 + 32);
    if ((v9[34] & 8) != 0)
    {
      v10 = [*(a1 + 64) dataUsingEncoding:4];
      v11 = [v9 _onQueueSetKeychainValue:v10 forKey:@"Peer Assistant Identifier"];

      v9 = *(a1 + 32);
      if (v11)
      {
        v9[34] &= ~8u;
        v9 = *(a1 + 32);
      }
    }

    if ((v9[34] & 0x10) != 0)
    {
      v12 = [*(a1 + 72) dataUsingEncoding:4];
      v13 = [v9 _onQueueSetKeychainValue:v12 forKey:@"Peer Logging Assistant Identifier"];

      v9 = *(a1 + 32);
      if (v13)
      {
        v9[34] &= ~0x10u;
        v9 = *(a1 + 32);
      }
    }

    if ((v9[34] & 0x20) != 0)
    {
      v14 = [*(a1 + 80) dataUsingEncoding:4];
      v15 = [v9 _onQueueSetKeychainValue:v14 forKey:@"Peer Speech Identifier"];

      v9 = *(a1 + 32);
      if (v15)
      {
        v9[34] &= ~0x20u;
        v9 = *(a1 + 32);
      }
    }

    if ((v9[34] & 0x40) != 0)
    {
      v16 = [*(a1 + 88) dataUsingEncoding:4];
      v17 = [v9 _onQueueSetKeychainValue:v16 forKey:@"Peer User Agent String"];

      v9 = *(a1 + 32);
      if (v17)
      {
        v9[34] &= ~0x40u;
        v9 = *(a1 + 32);
      }
    }

    if ((v9[34] & 0x80) != 0)
    {
      v18 = [*(a1 + 96) dataUsingEncoding:4];
      v19 = [v9 _onQueueSetKeychainValue:v18 forKey:@"Peer Language Code"];

      v9 = *(a1 + 32);
      if (v19)
      {
        v9[34] &= ~0x80u;
        v9 = *(a1 + 32);
      }
    }

    if ((v9[34] & 0x100) != 0)
    {
      v20 = [NSNumber numberWithBool:*(a1 + 112)];
      v21 = [NSKeyedArchiver archivedDataWithRootObject:v20 requiringSecureCoding:1 error:0];
      v22 = [v9 _onQueueSetKeychainValue:v21 forKey:@"Peer Siri Enabled"];

      if (v22)
      {
        *(*(a1 + 32) + 68) &= ~0x100u;
      }
    }
  }

  if (AFSupportsPairedDevice() && (AFIsNano() & 1) == 0 && (*(*(a1 + 32) + 68) & 0x200) != 0)
  {
    v23 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 104) requiringSecureCoding:1 error:0];
    if ([*(a1 + 32) _onQueueSetKeychainValue:? forKey:?])
    {
      *(*(a1 + 32) + 68) &= ~0x200u;
    }
  }
}

id sub_10001C820(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableString string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v8 identifier];
        v11 = [v10 absoluteString];
        [v2 appendFormat:@"\n    %@/%@", v9, v11, v14];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = [v2 copy];

  return v12;
}

void sub_10001CA84(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 16) & 1) != 0 || *(v2 + 17) == 1)
  {
    AFBackedUpPreferencesSynchronize();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, AFInternalPreferencesDidChangeDarwinNotification, 0, 0, 1u);
  v4 = *(a1 + 32);
  if (*(v4 + 16) == 1)
  {
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v5, AFLanguageCodeDidChangeDarwinNotification, 0, 0, 1u);
    *(*(a1 + 32) + 16) = 0;
    v4 = *(a1 + 32);
  }

  if (*(v4 + 17) == 1)
  {
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v6, AFOutputLanguageDidChangeDarwinNotification, 0, 0, 1u);
    *(*(a1 + 32) + 17) = 0;
  }
}

id sub_10001CE64(uint64_t a1, void *a2)
{
  v18 = a2;
  v2 = [v18 content];
  v20 = objc_alloc_init(NSMutableDictionary);
  v19 = objc_alloc_init(NSMutableArray);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v2 allContextKeys];
  v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [v2 contextMetadataForKey:v7];
        v9 = [v2 serializedHistoricalContextForKey:v7];
        v10 = [v2 historicalContextMetadataForKey:v7];
        if ([v9 count])
        {
          v11 = [v8 deliveryDate];
          v12 = [v11 compare:*(a1 + 32)];

          if (v12 == 1)
          {
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_10001D170;
            v23[3] = &unk_100519CE0;
            v24 = *(a1 + 32);
            v25 = v9;
            v26 = v20;
            v27 = v7;
            v28 = v19;
            [v10 enumerateObjectsWithOptions:2 usingBlock:v23];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v4);
  }

  if ([v20 count])
  {
    v13 = [v2 updatedContextWithSerializedContextByKey:v20 metadata:v19];

    v2 = v13;
  }

  v14 = [AFPeerContentTuple alloc];
  v15 = [v18 info];
  v16 = [v14 initWithInfo:v15 content:v2];

  return v16;
}

void sub_10001D170(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 deliveryDate];
  v9 = [v8 compare:*(a1 + 32)];

  if (v9 != 1)
  {
    v10 = [*(a1 + 40) objectAtIndex:a3];
    [*(a1 + 48) setObject:v10 forKey:*(a1 + 56)];
    [*(a1 + 64) addObject:v7];
    v11 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "ADDeviceContextTuplesAdjustedForDate_block_invoke_2";
      v14 = 2112;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s #hal Adjusted context for %@", &v12, 0x16u);
    }

    *a4 = 1;
  }
}

void sub_10001D398(uint64_t a1)
{
  v4 = [*(a1 + 32) assistantIdentifier];
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 sharedUserIdentifier];

  (*(*(a1 + 40) + 16))();
}

void sub_10001D42C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v19 = 136315650;
    v20 = "[ADDeviceCircleManager _updateAssistantIdentifierAndSharedUserIdentifier]_block_invoke";
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s assistantIdentifier = %@, sharedUserIdentifier = %@", &v19, 0x20u);
  }

  v8 = *(*(a1 + 32) + 128);
  if (v8 == v5 || ([v8 isEqualToString:v5] & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v5 copy];
    v11 = *(a1 + 32);
    v12 = *(v11 + 128);
    *(v11 + 128) = v10;

    v9 = 1;
  }

  v13 = *(*(a1 + 32) + 136);
  if (v13 == v6 || ([v13 isEqualToString:v6] & 1) != 0)
  {
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = [v6 copy];
    v15 = *(a1 + 32);
    v16 = *(v15 + 136);
    *(v15 + 136) = v14;
  }

  v17 = [*(a1 + 32) _syncCompanionLinkDeviceLocalPeerData];
  if (v17)
  {
    v18 = v17;
    [*(a1 + 32) _updateSiriInfoWithLocalPeerData:v17];
  }

LABEL_14:
}

id sub_10001DBF4(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = [v1 timeUntilOpen];
    [v3 doubleValue];
    v5 = [NSNumber numberWithDouble:v4 * 1000.0];

    if (v5)
    {
      [v2 setObject:v5 forKey:@"openTime"];
    }

    v6 = [v1 timeUntilFirstByteRead];
    [v6 doubleValue];
    v8 = [NSNumber numberWithDouble:v7 * 1000.0];

    if (v8)
    {
      [v2 setObject:v8 forKey:@"firstByteTime"];
    }

    v9 = [v1 attemptCount];
    if (v9)
    {
      [v2 setObject:v9 forKey:@"attemptCount"];
    }

    v10 = [v1 metricsCount];
    if (v10)
    {
      [v2 setObject:v10 forKey:@"metricsCount"];
    }

    v11 = [v1 meanPing];
    [v11 doubleValue];
    v13 = [NSNumber numberWithDouble:v12 * 1000.0];

    if (v13)
    {
      [v2 setObject:v13 forKey:@"meanPing"];
    }

    v14 = [v1 pingCount];
    if (v14)
    {
      [v2 setObject:v14 forKey:@"pingCount"];
    }

    v15 = [v1 unacknowledgedPingCount];
    if (v15)
    {
      [v2 setObject:v15 forKey:@"unacknowledgedPingCount"];
    }

    v16 = [v1 providerStyle];
    if (v16)
    {
      [v2 setObject:v16 forKey:@"provider"];
    }

    v17 = [v1 policyId];
    if (v17)
    {
      [v2 setObject:v17 forKey:@"policyId"];
    }

    v18 = [v1 tcpInfoMetricsByInterfaceName];
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_10001E620;
    v75[3] = &unk_100510FF0;
    v19 = v2;
    v76 = v19;
    [v18 enumerateKeysAndObjectsUsingBlock:v75];

    v20 = [v1 subflowCount];
    if (v20)
    {
      [v19 setObject:v20 forKey:@"subflowCount"];
    }

    v21 = [v1 connectedSubflowCount];
    if (v21)
    {
      [v19 setObject:v21 forKey:@"connectedSubflowCount"];
    }

    v22 = [v1 primarySubflowInterfaceName];
    if (v22)
    {
      [v19 setObject:v22 forKey:@"primarySubflowInterfaceName"];
    }

    v23 = [v1 subflowSwitchCounts];
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_1000DD978;
    v73[3] = &unk_1005162C8;
    v24 = v19;
    v74 = v24;
    [v23 enumerateKeysAndObjectsUsingBlock:v73];

    v25 = [v1 connectionMethod];
    v26 = &CRCopyCountryCode_ptr;
    if (v25)
    {
      v68 = v25;
      v27 = [[NSString alloc] initWithFormat:@"%@.%@", @"ConnectionMethod", v25];
      [v24 setObject:&off_100533890 forKey:v27];

      v28 = objc_alloc_init(NSMutableArray);
      v67 = v1;
      v29 = [v1 connectionMethodHistory];
      [v28 addObjectsFromArray:v29];

      if ([v28 count] >= 2)
      {
        do
        {
          v30 = [v28 objectAtIndex:0];
          [v30 stringByAppendingString:@"To"];
          v32 = v31 = v26;

          v33 = [v28 objectAtIndex:1];
          v34 = [v32 stringByAppendingString:v33];

          v26 = v31;
          [v28 removeObjectAtIndex:0];
          v35 = [objc_alloc(v31[400]) initWithFormat:@"%@.%@", @"ConnectionFallbackFrom", v34];
          [v24 setObject:&off_100533890 forKey:v35];
        }

        while ([v28 count] > 1);
      }

      v1 = v67;
      v25 = v68;
    }

    v36 = [v1 connectionEdgeID];
    v37 = [objc_alloc(v26[400]) initWithFormat:@"%@.%@", @"ConnectionEdgeId", v36];
    [v24 setObject:&off_100533890 forKey:v37];

    v38 = [v1 connectionEdgeType];
    v39 = [objc_alloc(v26[400]) initWithFormat:@"%@.%@", @"ConnectionEdgeType", v38];
    [v24 setObject:&off_100533890 forKey:v39];

    v40 = [v1 connectionFallbackReason];
    if (v40)
    {
      [v24 setObject:v40 forKey:@"NSPConnectionFallbackReason"];
    }

    v41 = [v1 connectionDelay];
    if (v41)
    {
      [v24 setObject:v41 forKey:@"TuscanyConnectionDelay"];
    }

    v42 = [v1 firstTxByteDelay];
    if (v42)
    {
      [v24 setObject:v42 forKey:@"TuscanyFirstTxByteDelay"];
    }

    v43 = objc_alloc(v26[400]);
    v44 = [v1 carrierName];
    v45 = [v43 initWithFormat:@"%@.%@", @"CarrierName", v44];
    [v24 setObject:&off_100533890 forKey:v45];

    v46 = [v1 signalStrengthBars];
    if (v46)
    {
      [v24 setObject:v46 forKey:@"SignalStrengthBars"];
    }

    v47 = [v1 rssi];
    if (v47)
    {
      [v24 setObject:v47 forKey:@"RSSI"];
    }

    v48 = [v1 snr];
    if (v48)
    {
      [v24 setObject:v48 forKey:@"SNR"];
    }

    v49 = [v1 wifiPhyMode];
    if (v49)
    {
      [v24 setObject:v49 forKey:@"WiFiPhyMode"];
    }

    v50 = [v1 wifiChannelInfo];
    if (v50)
    {
      [v24 setObject:v50 forKey:@"WiFiChannelInfo"];
    }

    v51 = [v1 isCaptive];
    if (v51)
    {
      [v24 setObject:v51 forKey:@"Captive"];
    }

    v52 = [v1 dnsResolutionTime];
    if (v52)
    {
      [v24 setObject:v52 forKey:@"dnsResolutionTime"];
    }

    v53 = [v1 connectionStartTimeToDNSResolutionTimeMsec];
    if (v53)
    {
      [v24 setObject:v53 forKey:@"startToDNSResolution"];
    }

    v54 = [v1 connectionEstablishmentTimeMsec];
    if (v54)
    {
      [v24 setObject:v54 forKey:@"connectionEstablishmentTime"];
    }

    v55 = [v1 connectionStartTimeToConnectionEstablishmentTimeMsec];
    if (v55)
    {
      [v24 setObject:v55 forKey:@"connectionStartToEstablishmentTime"];
    }

    v56 = [v1 tlsHandshakeTimeMsec];
    if (v56)
    {
      [v24 setObject:v56 forKey:@"tlsHandshakeTime"];
    }

    v57 = [v1 connectionStartTimeToTLSHandshakeTimeMsec];
    if (v57)
    {
      [v24 setObject:v57 forKey:@"connectionStartToTLSHandshake"];
    }

    v58 = [v1 tlsVersion];
    if (v58)
    {
      [v24 setObject:v58 forKey:@"tlsVersion"];
    }

    v59 = [v1 simSubscriptions];
    if (v59)
    {
      [v24 setObject:v59 forKey:@"simSubscriptions"];
    }

    v60 = [v1 flowNetworkInterfaceType];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10001EBAC;
    v71[3] = &unk_10051C210;
    v61 = v24;
    v72 = v61;
    [v60 enumerateKeysAndObjectsUsingBlock:v71];

    v62 = [v1 symptomsBasedNetworkQuality];
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_10001EC58;
    v69[3] = &unk_10051C210;
    v63 = v61;
    v70 = v63;
    [v62 enumerateKeysAndObjectsUsingBlock:v69];

    v64 = v70;
    v65 = v63;
  }

  else
  {
    v65 = &__NSDictionary0__struct;
  }

  return v65;
}

void sub_10001E620(uint64_t a1, void *a2, void *a3)
{
  v51 = a2;
  v5 = a3;
  v6 = [v5 rttCurrent];
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [[NSString alloc] initWithFormat:@"%@.%@", @"rttCurrent", v51];
    [v7 setObject:v6 forKey:v8];
  }

  v9 = [v5 rttSmoothed];
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = [[NSString alloc] initWithFormat:@"%@.%@", @"rttSmoothed", v51];
    [v10 setObject:v9 forKey:v11];
  }

  v12 = [v5 rttVariance];
  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = [[NSString alloc] initWithFormat:@"%@.%@", @"rttVariance", v51];
    [v13 setObject:v12 forKey:v14];
  }

  v15 = [v5 rttBest];
  if (v15)
  {
    v16 = *(a1 + 32);
    v17 = [[NSString alloc] initWithFormat:@"%@.%@", @"rttBest", v51];
    [v16 setObject:v15 forKey:v17];
  }

  v18 = [v5 packetsSent];
  if (v18)
  {
    v19 = *(a1 + 32);
    v20 = [[NSString alloc] initWithFormat:@"%@.%@", @"packetsSent", v51];
    [v19 setObject:v18 forKey:v20];
  }

  v21 = [v5 bytesSent];
  if (v21)
  {
    v22 = *(a1 + 32);
    v23 = [[NSString alloc] initWithFormat:@"%@.%@", @"bytesSent", v51];
    [v22 setObject:v21 forKey:v23];
  }

  v24 = [v5 bytesRetransmitted];
  if (v24)
  {
    v25 = *(a1 + 32);
    v26 = [[NSString alloc] initWithFormat:@"%@.%@", @"bytesRetransmitted", v51];
    [v25 setObject:v24 forKey:v26];
  }

  v27 = [v5 bytesUnacked];
  if (v27)
  {
    v28 = *(a1 + 32);
    v29 = [[NSString alloc] initWithFormat:@"%@.%@", @"bytesUnacked", v51];
    [v28 setObject:v27 forKey:v29];
  }

  v30 = [v5 packetsReceived];
  if (v30)
  {
    v31 = *(a1 + 32);
    v32 = [[NSString alloc] initWithFormat:@"%@.%@", @"packetsReceived", v51];
    [v31 setObject:v30 forKey:v32];
  }

  v33 = [v5 bytesReceived];
  if (v33)
  {
    v34 = *(a1 + 32);
    v35 = [[NSString alloc] initWithFormat:@"%@.%@", @"bytesReceived", v51];
    [v34 setObject:v33 forKey:v35];
  }

  v36 = [v5 duplicateBytesReceived];
  if (v36)
  {
    v37 = *(a1 + 32);
    v38 = [[NSString alloc] initWithFormat:@"%@.%@", @"duplicateBytesReceived", v51];
    [v37 setObject:v36 forKey:v38];
  }

  v39 = [v5 outOfOrderBytesReceived];
  if (v39)
  {
    v40 = *(a1 + 32);
    v41 = [[NSString alloc] initWithFormat:@"%@.%@", @"outOfOrderBytesReceived", v51];
    [v40 setObject:v39 forKey:v41];
  }

  v42 = [v5 sendBandwidth];
  if (v42)
  {
    v43 = *(a1 + 32);
    v44 = [[NSString alloc] initWithFormat:@"%@.%@", @"sendBandwidth", v51];
    [v43 setObject:v42 forKey:v44];
  }

  v45 = [v5 synRetransmits];
  if (v45)
  {
    v46 = *(a1 + 32);
    v47 = [[NSString alloc] initWithFormat:@"%@.%@", @"synRetransmits", v51];
    [v46 setObject:v45 forKey:v47];
  }

  v48 = [v5 tfoSynDataAcked];
  if (v48)
  {
    v49 = *(a1 + 32);
    v50 = [[NSString alloc] initWithFormat:@"%@.%@", @"tfoSynDataAcked", v51];
    [v49 setObject:v48 forKey:v50];
  }
}

void sub_10001EBAC(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v6 = a2;
    v7 = [[NSString alloc] initWithFormat:@"%@.%@.%@", @"InterfaceNetworkType", v6, v5];

    [v4 setObject:&off_100533890 forKey:v7];
  }
}

void sub_10001EC58(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [[NSString alloc] initWithFormat:@"%@.%@.%@", @"Symptoms", v6, v5];

  [v4 setObject:&off_100533890 forKey:v7];
}

uint64_t sub_10001ED18(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = NDR_record;
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = *&v35.mig_vers;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_10001EF78(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = NDR_record;
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_10001F10C(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = NDR_record;
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_10001F300(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_10001F480(uint64_t a1)
{
  v1 = *(&off_10050ED90 + ((-109 * ((qword_10058A758 - dword_10058A918) ^ 0x95)) ^ byte_1003EC990[byte_1003E86E0[(-109 * ((qword_10058A758 - dword_10058A918) ^ 0x95))] ^ 0x7D]) + 22);
  v2 = *(v1 - 4);
  v3 = *(&off_10050ED90 + ((-109 * ((qword_10058A758 + v2) ^ 0x95)) ^ byte_1003E4D90[byte_1003EFC70[(-109 * ((qword_10058A758 + v2) ^ 0x95))] ^ 0x7D]) - 65);
  v4 = v2 - &v6 + *(v3 - 4);
  *(v1 - 4) = (665663891 * v4) ^ 0xED30A8472429C395;
  *(v3 - 4) = 665663891 * (v4 ^ 0xED30A8472429C395);
  v8 = 1383 - 210068311 * ((2 * (&v7 & 0x39E8DAB0) - &v7 + 1175921996) ^ 0xD4C11AE8);
  v7 = a1;
  LOBYTE(v3) = -109 * (*(v1 - 4) ^ 0x95 ^ *(v3 - 4));
  return (*(*(&off_10050ED90 + ((-109 * (dword_10058A918 ^ 0x95 ^ qword_10058A758)) ^ byte_1003E5090[byte_1003EFD70[(-109 * (dword_10058A918 ^ 0x95 ^ qword_10058A758))] ^ 0xAA]) - 222) + (byte_1003E509C[(byte_1003EFD78[v3 - 8] ^ 0xAA) - 12] ^ v3) + 2156))(&v7);
}

uint64_t sub_10001F7EC(uint64_t a1)
{
  v1 = *(&off_10050ED90 + ((-109 * ((qword_10058A758 + dword_10058A770) ^ 0x95)) ^ byte_1003E4D90[byte_1003EFC70[(-109 * ((qword_10058A758 + dword_10058A770) ^ 0x95))] ^ 0x6B]) - 199);
  v2 = *(&off_10050ED90 + (byte_1003E5090[byte_1003EFD70[(-109 * ((qword_10058A758 - *v1) ^ 0x95))] ^ 0xAA] ^ (-109 * ((qword_10058A758 - *v1) ^ 0x95))) - 231);
  v3 = *(v2 - 4) - *v1 - &v5;
  *v1 = 665663891 * v3 + 0x12CF57B8DBD63C6BLL;
  *(v2 - 4) = 665663891 * (v3 ^ 0xED30A8472429C395);
  v6[0] = (2066391179 * ((878467565 - (v6 | 0x345C59ED) + (v6 | 0xCBA3A612)) ^ 0x6484240A)) ^ 0x1E5;
  v7 = a1;
  LOBYTE(v2) = -109 * (*v1 ^ 0x95 ^ *(v2 - 4));
  (*(*(&off_10050ED90 + ((-109 * (dword_10058A770 ^ 0x95 ^ qword_10058A758)) ^ byte_1003E85E0[byte_1003E4E90[(-109 * (dword_10058A770 ^ 0x95 ^ qword_10058A758))] ^ 0x7E]) - 41) + (v2 ^ byte_1003E5090[byte_1003EFD70[v2] ^ 0x16]) + 2254))(v6);
  return v6[1];
}

uint64_t sub_10001FB68(uint64_t a1)
{
  v1 = *(&off_10050ED90 + (byte_1003E5194[(byte_1003EFE70[(-109 * ((qword_10058A758 - dword_10058A760) ^ 0x95))] ^ 0xE1) - 4] ^ (-109 * ((qword_10058A758 - dword_10058A760) ^ 0x95))) - 157);
  v2 = *(&off_10050ED90 + (byte_1003E5090[byte_1003EFD70[(-109 * ((qword_10058A758 - *v1) ^ 0x95))] ^ 0x8F] ^ (-109 * ((qword_10058A758 - *v1) ^ 0x95))) - 5);
  v3 = *(v2 - 4) - *v1 - &v5;
  *v1 = 665663891 * v3 + 0x12CF57B8DBD63C6BLL;
  *(v2 - 4) = 665663891 * (v3 ^ 0xED30A8472429C395);
  v6 = a1;
  v7 = 2080 - 1388665877 * (((&v6 | 0x87EB4F9F) + (~&v6 | 0x7814B060)) ^ 0xA462D72);
  LOBYTE(v2) = -109 * (*v1 ^ 0x95 ^ *(v2 - 4));
  return (*(*(&off_10050ED90 + ((-109 * (dword_10058A760 ^ 0x95 ^ qword_10058A758)) ^ byte_1003E5090[byte_1003EFD70[(-109 * (dword_10058A760 ^ 0x95 ^ qword_10058A758))] ^ 0x15]) - 117) + (v2 ^ byte_1003E5090[byte_1003EFD70[v2] ^ 0x8F]) + 2349))(&v6);
}

void sub_10001FEA0(uint64_t a1)
{
  v1 = 1082434553 * (a1 ^ 0x9B47F68A);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10001FFF4@<X0>(int a1@<W8>)
{
  v7 = v3 - 1;
  *(v6 + v7) = *(v1 + v7);
  return (*(v5 + 8 * ((2158 * (v7 == ((v4 - a1 - 1213) ^ 0x181))) ^ (v2 + v4 + 150))))();
}

uint64_t sub_100020038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, __int16 a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char *a21, char *a22)
{
  v26 = 2 * (v22 ^ 0x371);
  LODWORD(a19) = (v22 + 803) ^ ((&a19 ^ 0x142F9D9B) * v25);
  a20 = a17;
  a22 = &a14;
  (*(v24 + 8 * (v22 ^ 0x98C)))(&a19);
  a22 = &a18;
  a20 = a17;
  a21 = &a16;
  HIDWORD(a19) = v26 - 143681137 * (((&a19 | 0xB95E86D2) - &a19 + (&a19 & 0x46A17928)) ^ 0xD8060D02) - 519;
  (*(v24 + 8 * (v26 + 384)))(&a19);
  a20 = a17;
  a22 = &a12;
  LODWORD(a19) = (v26 - 1005) ^ ((&a19 ^ 0x142F9D9B) * v25);
  (*(v24 + 8 * (v26 ^ 0xE9C)))(&a19);
  a19 = a17;
  HIDWORD(a20) = (v26 - 1606) ^ (1388665877 * (&a19 ^ 0x8DAD62EC));
  v27 = (*(v24 + 8 * (v26 + 437)))(&a19);
  return (*(v24 + 8 * ((4027 * (a20 == (((v26 - 1978) | 0x108) ^ (v23 - 201)) + v26 - 1513)) ^ v26)))(v27);
}

uint64_t sub_100020090@<X0>(char a1@<W2>, int8x16_t *a2@<X4>, uint64_t a3@<X8>, int8x16_t a4@<Q4>, int8x16_t a5@<Q5>, uint64_t a6)
{
  v8 = (a6 + a3);
  v9 = vaddq_s8(vsubq_s8(a2[1], vandq_s8(vaddq_s8(a2[1], a2[1]), a4)), a5);
  v8[-1] = vaddq_s8(vsubq_s8(*a2, vandq_s8(vaddq_s8(*a2, *a2), a4)), a5);
  *v8 = v9;
  return (*(v7 + 8 * ((((a1 & 0x60) == 32) * (((v6 - 1053592443) & 0x3ECC8FEE) + 919)) ^ v6)))();
}

uint64_t sub_100020104@<X0>(int a1@<W2>, int a2@<W8>)
{
  v6 = *(v4 + 48 * v2 + 36);
  v8 = v6 != a1 && v6 + 1370294288 < v5;
  return (*(v3 + 8 * ((49 * ((((a2 - 277361224) ^ v8) & 1) == 0)) ^ a2)))();
}

uint64_t sub_10002015C()
{
  v2 = STACK[0x328];
  v3 = STACK[0x4F8];
  STACK[0x528] = *(v1 + 8 * (v0 - 1373));
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v1 + 8 * ((v5 * (((v0 + 131631639) & 0xF82775E8) - 1391)) ^ (((v0 + 131631639) & 0xF82775E8) - 1302))))();
}

uint64_t sub_10002024C(int8x16_t a1, double a2, double a3, int8x16_t a4, uint64_t a5, int a6, int8x16_t *a7)
{
  v11 = (v10 + v7);
  v12 = vaddq_s8(vsubq_s8(v11[1], vandq_s8(vaddq_s8(v11[1], v11[1]), a4)), a1);
  *a7 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a4)), a1);
  a7[1] = v12;
  return (*(v9 + 8 * (a6 + v8 + 666)))();
}

uint64_t sub_1000202B4(unsigned int a1)
{
  v7 = v1 + v4 - v2;
  v8 = *(v7 - 31);
  v9 = v5 + v4 - v2;
  *(v9 - 15) = *(v7 - 15);
  *(v9 - 31) = v8;
  return (*(v6 + 8 * ((107 * ((((v3 - 1191) | a1) ^ 0x588) + v2 != 320)) ^ v3)))();
}

uint64_t sub_100020304@<X0>(uint64_t a1@<X8>)
{
  v8 = (v5 - 838) | 0x320;
  v9 = *(v6 + 8);
  v10 = ((2 * (*(v9 + ((&_mh_execute_header + (a1 << 32)) >> 30)) ^ v1)) << ~((v8 + 94) ^ v4)) | ((v9[a1] ^ (v1 + v8 + 653 - 1589)) >> ((v8 + 94) ^ v4));
  *v9 = v10 + v1 - (v2 & (2 * v10));
  return (*(v7 + 8 * ((102 * (v3 != 1)) ^ v8)))(&_mh_execute_header);
}

uint64_t sub_100020394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = (a11 + v13);
  *(v16 - 1) = v15;
  *v16 = v15;
  return (*(v14 + 8 * ((((v12 & 0x30) == 16) * (v11 ^ 0x5FA)) ^ v11)))();
}

uint64_t sub_1000203DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, int a16)
{
  v20 = 843532609 * (((&a13 | 0x868DA39C) - &a13 + (&a13 & 0x79725C60)) ^ 0xDAC0F719);
  a13 = a11;
  a15 = v16 - ((2 * v16) & 0x15776F42) - v20 + (v19 ^ 0x8ABBBFAD);
  a16 = (v19 - 581) ^ v20;
  v21 = (*(v18 + 8 * (v19 + 295)))(&a13);
  return (*(v18 + 8 * (((a14 != v17) * ((v19 + 24) ^ 0x80C)) ^ v19)))(v21);
}

uint64_t sub_100020568@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v11.val[1].i64[0] = (v6 + 13) & 0xF;
  v11.val[1].i64[1] = (v6 + 12) & 0xF;
  v11.val[2].i64[0] = (v6 + 11) & 0xF;
  v11.val[2].i64[1] = (v6 + 10) & 0xF;
  v11.val[3].i64[0] = (v6 + 9) & 0xF;
  v11.val[3].i64[1] = v6 & 0xF ^ 8;
  v12.val[0].i64[0] = (v6 + 7) & 0xF;
  v12.val[0].i64[1] = (v6 + 6) & 0xF;
  v12.val[1].i64[0] = (v6 + 5) & 0xF;
  v12.val[1].i64[1] = (v6 + 4) & 0xF;
  v12.val[2].i64[0] = (v6 + 3) & 0xF;
  v12.val[2].i64[1] = (v6 + 2) & 0xF;
  v12.val[3].i64[0] = (v6 + 1) & 0xF;
  v12.val[3].i64[1] = v6 & 0xF;
  v8 = vqtbl4q_s8(v12, xmmword_1003EFF70).u64[0];
  v9.i64[0] = 0x7373737373737373;
  v9.i64[1] = 0x7373737373737373;
  v11.val[0].i64[0] = (a1 ^ 0x25CLL) & v7;
  v11.val[0].i64[1] = (v6 + 14) & 0xF;
  v12.val[1].i64[0] = vqtbl4q_s8(v11, xmmword_1003EFF70).u64[0];
  v12.val[1].i64[1] = v8;
  v12.val[0] = vrev64q_s8(vmulq_s8(v12.val[1], v9));
  *(v6 + a2 - 16) = veorq_s8(veorq_s8(veorq_s8(*(v4 + v11.val[0].i64[0] - 15), *(v6 + a2 - 16)), veorq_s8(*(v5 + v11.val[0].i64[0] - 15), *(v11.val[0].i64[0] + v3 - 14))), vextq_s8(v12.val[0], v12.val[0], 8uLL));
  return (*(v2 + 8 * ((1086 * ((v6 & 0x10) == 16)) ^ a1)))();
}

uint64_t sub_100020724@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W8>, int w6_0@<W6>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(void))
{
  v17 = (((HIDWORD(a12) ^ 0x70811358) - 1887507288) ^ ((HIDWORD(a12) ^ 0x4566147) - 72769863) ^ ((HIDWORD(a12) ^ 0x781FCB6B) - 2015349611)) + 1741448759 + (((w6_0 ^ 0xB6360BD8) + 1237972008) ^ ((w6_0 ^ 0x93B20C68) + 1817047960) ^ (((v16 + 906731801) ^ 0xE0B8E7D3) + (w6_0 ^ 0x294CBEC4)));
  LODWORD(STACK[0x2C4]) = v17 ^ ((v17 ^ 0x117E91AF) - 1598317280) ^ ((v17 ^ 0x2E900BD7) - 1621817496) ^ ((v17 ^ 0x1A2B9348) - 1410424839) ^ ((v17 ^ 0x6BFFFA7F) - 633669936) ^ 0x42F24A3B;
  return sub_10004E7C8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_10002088C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x520] = a63 - 1712;
  LODWORD(STACK[0x4AC]) = v64;
  v65 = *(STACK[0x2A0] + 360) > 1u;
  return (*(v63 + 8 * (((4 * ((((a1 - 1009) ^ v65) & 1) == 0)) & 0xF7 | (8 * (((a1 + 15) ^ ~v65) & 1))) ^ a1)))();
}

uint64_t sub_100020944@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFD5ELL ^ (v4 - 865)) + v2;
  *(a1 - 7 + v6) = vadd_s8(vadd_s8(*(v1 - 7 + v6), 0xA8A8A8A8A8A8A8A8), vmvn_s8(vand_s8(vadd_s8(*(v1 - 7 + v6), *(v1 - 7 + v6)), 0x4E4E4E4E4E4E4E4ELL)));
  return (*(v5 + 8 * ((39 * ((v2 & 0x1F8) - 8 == v3)) ^ v4)))();
}

void sub_1000209B0(uint64_t a1)
{
  v1 = 1082434553 * (((a1 | 0x1AAF5C21) - a1 + (a1 & 0xE550A3DE)) ^ 0x81E8AAAB);
  v2 = **(a1 + 40) + 2048196473;
  v3 = *(a1 + 12) - v1 + 1975474529;
  v4 = v2 < 0xE2259321;
  v5 = v2 > v3;
  if (v3 < 0xE2259321 != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

void sub_100020D28(uint64_t a1, int a2)
{
  v10 = *(v7 + 8);
  v11 = (*(v10 + 4 * (v9 - 1)) ^ v3) >> v4;
  *(v10 + 4 * v6) = v11 + v3 - (v5 & (2 * v11));
  if (*(*(v7 + 8) + 4 * v6) == v3)
  {
    v12 = -613421125;
  }

  else
  {
    v12 = -613421124;
  }

  v13 = v12 + v2;
  if (*(v7 + 4) + v8 >= ((a2 - 790) ^ 0x7FFFFCE0u))
  {
    v14 = -1306604704 - v13;
  }

  else
  {
    v14 = v13;
  }

  *(v7 + 4) = v14;
}

uint64_t sub_100020E90(uint64_t a1)
{
  v1 = 2066391179 * (a1 ^ 0xAF278218);
  v2 = *a1 + v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 4) + v1;
  v5 = v4 - 2083296424 + *(v3 + 68);
  *(v3 + 68) = v5;
  v4 += 478443033;
  v6 = v4 < 0x98B10AC1;
  v7 = v5 - 1733227839 < v4;
  if (v6 != v5 > 0x674EF53E)
  {
    v7 = v6;
  }

  return (*(*(&off_10050ED90 + v2 - 340) + ((15 * v7) ^ v2) - 1))();
}

uint64_t sub_100020FA8()
{
  v0 = *(&off_10050ED90 + ((-109 * ((qword_10058A758 - dword_10058A768) ^ 0x95)) ^ byte_1003EC990[byte_1003E86E0[(-109 * ((qword_10058A758 - dword_10058A768) ^ 0x95))] ^ 0x7D]) + 29);
  v1 = *(v0 - 4);
  v2 = *(&off_10050ED90 + (byte_1003E85EC[(byte_1003E4E98[(-109 * ((qword_10058A758 - v1) ^ 0x95)) - 8] ^ 0xE9) - 12] ^ (-109 * ((qword_10058A758 - v1) ^ 0x95))) - 141);
  v3 = *(v2 - 4) - v1 - &v7;
  *(v0 - 4) = 665663891 * (v3 + 0x12CF57B8DBD63C6BLL);
  *(v2 - 4) = 665663891 * (v3 ^ 0xED30A8472429C395);
  v8[0] = (2066391179 * ((2 * (v8 & 0x118B56D8) - v8 + 1853139236) ^ 0xC1532B3C)) ^ 0x1E5;
  LOBYTE(v3) = -109 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x95);
  v9 = *(&off_10050ED90 + (byte_1003E87E8[(byte_1003E4F94[v3 - 4] ^ 0xA3) - 8] ^ v3) + 59);
  LOBYTE(v3) = -109 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x95);
  v4 = *(&off_10050ED90 + ((-109 * ((qword_10058A758 + dword_10058A768) ^ 0x95)) ^ byte_1003E5190[byte_1003EFE70[(-109 * ((qword_10058A758 + dword_10058A768) ^ 0x95))] ^ 0x2B]) - 87) - 8;
  (*&v4[8 * (byte_1003E509C[(byte_1003EFD78[v3 - 8] ^ 0x15) - 12] ^ v3) + 18280])(v8);
  v8[0] = (2066391179 * (((v8 | 0xE6F360F1) - (v8 & 0xE6F360F1)) ^ 0x49D4E2E9)) ^ 0x1E5;
  v9 = *(&off_10050ED90 + (byte_1003E4D90[byte_1003EFC70[(-109 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x95))] ^ 0x6B] ^ (-109 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x95))) - 194);
  (*&v4[8 * (byte_1003E5194[(byte_1003EFE70[(-109 * (*(v0 - 4) ^ 0x95 ^ *(v2 - 4)))] ^ 0xCE) - 4] ^ (-109 * (*(v0 - 4) ^ 0x95 ^ *(v2 - 4)))) + 19368])(v8);
  v5 = 50899313 * ((~v8 & 0x9A052509 | v8 & 0x65FADAF6) ^ 0x8E2AB892);
  LOBYTE(v8[0]) = 63 - v5;
  v8[1] = 1047 - v5;
  return (*&v4[8 * ((-109 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x95)) ^ byte_1003E4D90[byte_1003EFC70[(-109 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x95))] ^ 0xB7]) + 17528])(v8);
}

void sub_100021428(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (1785193651 * ((-2 - ((~a1 | 0x59E8E831) + (a1 | 0xA61717CE))) ^ 0x4A340411));
  v2 = (*a1 - 77 * ((-2 - ((~a1 | 0x31) + (a1 | 0xCE))) ^ 0x11));
  v3 = *(&off_10050ED90 + (v1 & 0x4AAA0066)) - 8;
  (*&v3[8 * v1 + 11056])(*(&off_10050ED90 + (v1 ^ 0x3FC)) - 8, sub_100020FA8);
  v4 = **(&off_10050ED90 + (v1 ^ 0x3DF));
  v6 = v1 - 210068311 * ((&v5 & 0xDA643CC1 | ~(&v5 | 0xDA643CC1)) ^ 0xB74DFC9A) + 430;
  v5 = v4;
  (*&v3[8 * v1 + 11664])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100021628()
{
  v2 = (v1 ^ 0xBF77FFBE) - 709035156 + ((2 * v1) & 0x37C);
  v3 = (v2 ^ 0xD489B686) & (2 * (v2 & 0x4D6)) ^ v2 & 0x4D6;
  v4 = ((2 * (v2 ^ 0xDAE92279)) ^ 0x60444D5E) & (v2 ^ 0xDAE92279) ^ (2 * (v2 ^ 0xDAE92279)) & 0xB02226AE;
  v5 = v4 ^ 0x902222A1;
  v6 = (v4 ^ 0x20020409) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xC0889ABC) & v5 ^ (4 * v5) & 0xB02226AC;
  v8 = (v7 ^ 0x800002A3) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x30222403)) ^ 0x2226AF0) & (v7 ^ 0x30222403) ^ (16 * (v7 ^ 0x30222403)) & 0xB02226A0;
  return (*(v0 + 8 * ((27 * ((v2 ^ (2 * ((((v9 ^ 0xB000040F) << 8) & 0xB0222600 ^ 0x202200AF ^ (((v9 ^ 0xB000040F) << 8) ^ 0x2226AF00) & (v9 ^ 0xB000040F)) & (((v9 ^ 0x22220F) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0x22220F) & (v8 << 8) ^ v8))) != 1791689942)) ^ 0x407u)))();
}

uint64_t sub_100021800@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = v63 + 1168;
  v69 = a1 + 528;
  v70 = a1 + 800;
  switch(v65)
  {
    case 32:
      LODWORD(STACK[0x2D8]) = 0;
      v71 = 19;
      break;
    case 20:
      LODWORD(STACK[0x2D8]) = 0;
      v71 = 15;
      break;
    case 16:
      LODWORD(STACK[0x2D8]) = 0;
      v71 = 18;
      break;
    default:
      LODWORD(STACK[0x2E0]) = 0;
      LODWORD(STACK[0x2E8]) = 0;
      LODWORD(STACK[0x2D8]) = 1;
      goto LABEL_9;
  }

  LODWORD(STACK[0x2E8]) = v71;
  LODWORD(STACK[0x2E0]) = 1;
LABEL_9:
  v72 = STACK[0x304];
  v73 = (LODWORD(STACK[0x304]) - 1056) | 0x11;
  v74 = LODWORD(STACK[0x304]) - 126;
  v75 = 1785193651 * ((v67 + 115191039 - 2 * ((v67 - 200) & 0x6DDADC7)) ^ 0x150141E7);
  *(v67 - 176) = &STACK[0x45C];
  *(v67 - 144) = &STACK[0x590] + a63;
  *(v67 - 136) = v69;
  *(v67 - 168) = (v72 - 422) ^ v75;
  *(v67 - 184) = (v64 ^ 0xF6BF4A5C) - v75 + ((2 * v64) & 0xED7E94B8) + 1332461056;
  *(v67 - 160) = v70;
  *(v67 - 152) = 0;
  *(v67 - 128) = v68;
  *(v67 - 192) = 0;
  v76 = (*(v66 + 8 * (v72 + 937)))(v67 - 200);
  return (*(v66 + 8 * ((126 * (*(v67 - 200) != v73 + 972359295)) ^ v74)))(v76);
}

uint64_t sub_100021A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x2D8] = (*(v75 + 8 * a72))(a73 + STACK[0x200]);
  v76 = (*(v75 + 8 * a71))();
  *v73 = v76;
  v73[1] = 1812433253 * (v76 ^ (v76 >> 30)) + 1;
  return (*(v75 + 8 * (v74 - 409)))();
}

uint64_t sub_100021AC4()
{
  v6 = v0 ^ (v4 + 52);
  *v1 = (v6 - 1611341676) ^ v10;
  v12 = v9;
  v11 = v6 + 1711267207 - (((&v11 | 0x94932B54) - &v11 + (&v11 & 0x6B6CD4A8)) ^ 0x193E49B8) * v5;
  (*(v3 + 8 * (v6 + 1711268295)))(&v11);
  v12 = v8;
  v11 = 1711267207 - (((&v11 | 0x818B4E0E) - &v11 + (&v11 & 0x7E74B1F0)) ^ 0xC262CE2) * v5 + v6;
  (*(v3 + 8 * (v6 ^ (v4 + 2665))))(&v11);
  return v2 ^ 0x39F50818u;
}

uint64_t sub_100021BE8()
{
  v4 = *(v2 + 8 * (((((v1 - 544298781) & 0x20714F7F) - 262) * (v0 != 442539394)) ^ v1));
  STACK[0x228] = v3;
  return v4();
}

uint64_t sub_100021C8C()
{
  v6 = v5[1];
  *(v3 + v0) = *v5;
  *(v3 + v0 + 16) = v6;
  return (*(v4 + 8 * ((((v1 & 0x60) == 32) * (((v2 + 37895453) & 0x3DBDC357) + 740)) ^ v2)))();
}

void sub_100021E10(uint64_t a1)
{
  v1 = *(a1 + 4) + 143681137 * ((-2 - ((a1 | 0xE35D4AC9) + (~a1 | 0x1CA2B536))) ^ 0x7DFA3EE6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100021F60@<X0>(int a1@<W8>)
{
  v9 = v4 - 2;
  v10 = v1 + 2;
  *(v3 - 2 + v5) = (v10 ^ v6) * (v10 + 17);
  *(v2 + v9) = (v10 ^ 0xBB) * (v10 + 18);
  return (*(v8 + 8 * (((v9 == 0) * v7) ^ a1)))();
}

uint64_t sub_100021FB8@<X0>(uint64_t a1@<X8>)
{
  v9 = v3 - 5;
  v10 = (*(*(v7 + 8) + 4 * v1) ^ 0x67BC8414) + v2;
  *(*(a1 + 8) + 4 * v1) = v10 + v4 - ((v6 + v9 + 1696 - 2018) & (2 * v10));
  return (*(v5 + 8 * ((v8 > (v1 + 1)) | (4 * (v8 > (v1 + 1))) | v9)))();
}

uint64_t sub_100022020@<X0>(int a1@<W5>, int a2@<W8>)
{
  v5 = STACK[0x304];
  if (v2 <= 0x18 && (v5 = STACK[0x304], ((1 << v2) & 0x1000521) != 0))
  {
    return sub_100022090();
  }

  else
  {
    return (*(v4 + 8 * ((((*(v3 + 48 * a2 + 40) & 8) == ((v5 - 1414) | 0x100) - 290) * (((v5 - 1414) ^ a1) + 2157)) ^ (v5 + 215))))();
  }
}

uint64_t sub_100022090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  LODWORD(STACK[0x3F0]) = v6;
  v10 = (*(v7 + 48 * a5 + 40) & ((v5 ^ 0x1D7) - 1150)) == (((v5 - 1318) | 0x100) ^ 0x182);
  return (*(v9 + 8 * (((4 * v10) | (8 * v10)) ^ (v5 - 372))))(a1, a2, a3, a4, 1446922884, v8);
}

uint64_t sub_100022144@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x278] + a1 + 72);
  v6 = ((2 * a1) & 0xFDD3F9F8) + (a1 ^ 0x7EE9FCFF) + v1;
  *(v3 + v6) = v5 ^ 0xD3;
  *(v3 + v6 + 1) = ((v2 - 71) ^ BYTE1(v5)) - ((2 * ((v2 - 71) ^ BYTE1(v5))) & 0x4E) - 89;
  *(v3 + v6 + 2) = (BYTE2(v5) ^ 0xC8) - ((v5 >> 15) & 0x4E) - 89;
  *(v3 + v6 + 3) = (HIBYTE(v5) ^ 0xC) - ((2 * (HIBYTE(v5) ^ 0xC)) & 0x4E) - 89;
  return (*(v4 + 8 * ((3576 * (a1 + 4 < LODWORD(STACK[0x2D4]))) ^ v2)))();
}

uint64_t sub_100022324@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18)
{
  v25 = ((a3 - 493) | 0x40) + v19 - 67;
  *(&a18 + v18) = *(v23 + v19) + (~(2 * *(v23 + v19)) | 0xB1) - 88;
  v26 = a2 + v19 + 69 < v20;
  if (v20 < v21 != v25 > a1)
  {
    v26 = v20 < v21;
  }

  return (*(v24 + 8 * ((!v26 * v22) ^ a3)))();
}

uint64_t sub_10002239C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + v3 + 4) = **(a2 + 8);
  v4 = *(a2 + 4) - 640894628;
  v5 = v4 > 0x34839978;
  if (v4 < 0x34839977)
  {
    v5 = 1;
  }

  return (*(a3 + 8 * ((2847 * v5) ^ 0x3BCu)))();
}

void sub_100022440()
{
  v4 = *(v0 + 16);
  *(*(v0 + 24) - 0x7E1AE0F446D02EFDLL) = *v1;
  *(v4 - 0x5085E76DB9DAF378) = *v2 - ((v3 - 759294019) & (2 * *v2)) - 379646449;
  *(v0 + 8) = 972359704;
}

uint64_t sub_10002251C(uint64_t a1, int a2)
{
  v7 = a2 - 1330;
  v8 = v2 + v4 + (((v6 ^ 0xCCC628C1) + 859428671) ^ ((v6 ^ 0xC4C8930D) + 993488115) ^ (((((a2 - 429555517) & 0x199A78DD) + 838579011) ^ v6) - 838579156)) - 594774721;
  v9 = v5 + 198205936;
  v10 = (v9 < 0x34D7E954) ^ (v8 < 0x34D7E954);
  v11 = v8 > v9;
  if (v10)
  {
    v11 = v8 < 0x34D7E954;
  }

  return (*(v3 + 8 * ((122 * !v11) ^ v7)))();
}

uint64_t sub_1000225F4@<X0>(int a1@<W1>, int a2@<W4>, int a3@<W5>, int a4@<W6>, uint64_t a5@<X8>)
{
  v8 = (v6 | 4) + 333;
  v9 = (*(a5 + 1128) ^ a1) - (*(v5 + 1148) ^ (v8 + 70));
  return (*(v7 + 8 * (((v9 + a2 - (a3 & (2 * v9)) != a2) * a4) ^ v8)))();
}

uint64_t sub_100022670@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x858u));

  return v3(v1);
}

uint64_t sub_100022778(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v7 = vdupq_n_s32(0x98437BEB);
  *&STACK[0x250] = v7;
  *&STACK[0x260] = v7;
  return (*(v6 + 8 * ((3004 * (((a6 - 1513) ^ 0x174) == (a4 & 0xFFFFFFF8))) ^ (a6 - 1115))))();
}

uint64_t sub_1000227C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  *(v63 - 128) = *(v63 - 164) ^ 0xCE5920C4;
  *(v63 - 132) = *(v63 - 160) ^ 0x1978C64A;
  *(v63 - 136) = *(v63 - 168) ^ 0x8AA361C;
  *(v63 - 140) = *(v63 - 156) ^ 0xDCB3F494;
  return sub_100041FBC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100022CDC@<X0>(char a1@<W1>, int a2@<W4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v58 = STACK[0x4B0];
  v59 = *(a3 + 72);
  v60 = a2 - 51323414;
  *(v58 + v60) = (HIBYTE(v59) ^ 0xC) + (a1 | ~(2 * (HIBYTE(v59) ^ 0xC))) - 88;
  *(v58 + v60 + 1) = (BYTE2(v59) ^ 0xC8) - (v56 & (v59 >> 15)) - 89;
  *(v58 + v60 + 2) = (BYTE1(v59) ^ 0xB9) - (v56 & (2 * (BYTE1(v59) ^ 0xB9))) - 89;
  *(v58 + v60 + 3) = v59 ^ 0xD3;
  return (*(v57 + 8 * ((945 * (*(a3 + 92) > 4u)) ^ a56)))();
}

uint64_t sub_100022F40@<X0>(uint64_t a1@<X8>)
{
  v7 = (v3 & 0x9C3F8373) + 50899313 * ((((2 * &v5) | 0x67D7691E) - &v5 + 1276398449) ^ 0xA7C42914) - 471;
  v5 = a1;
  v6 = v2;
  v8 = v2;
  return (*(v1 + 8 * ((v3 & 0x9C3F8373) + 1799)))(&v5);
}

uint64_t sub_1000230FC()
{
  v3 = STACK[0x390];
  STACK[0x320] = *(v1 + 8 * (v0 - 1363));
  STACK[0x568] = v3;
  LODWORD(STACK[0x574]) = 1722939934;
  STACK[0x438] = v2;
  return (*(v1 + 8 * ((1978 * ((((v0 + 196) ^ ((*(v3 + 68) & 0x3Fu) - 50 < 0xFFFFFFC0)) & 1) == 0)) ^ (v0 - 429))))();
}

uint64_t sub_10002315C(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v6 = ((((v5 ^ 0x69) + 14) ^ v5 ^ ((v5 ^ 0x28) + 77) ^ ((v5 ^ 0x25) + 66)) ^ (a4 - a2 + 7 * (a4 ^ 0xED) + 30)) & 0x7F;
  v8 = v6 != 27 && (v6 ^ 0x1Bu) < 5;
  return (*(v4 + 8 * ((163 * v8) ^ a4)))();
}

uint64_t sub_1000231E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27)
{
  v31 = a27;
  v32 = (v28 ^ 0x23) - 336;
  *(v30 - 120) = v32 ^ (1785193651 * ((((v30 - 144) | 0x96772157) - (v30 - 144) + ((v30 - 144) & 0x6988DEA8)) ^ 0x85ABCD77));
  *(v30 - 136) = &a22;
  *(v30 - 128) = &a26;
  *(v30 - 144) = v31;
  *(v30 - 112) = &a22;
  *(v30 - 104) = v29;
  (*(v27 + 8 * (v28 ^ 0xFCD)))(v30 - 144);
  *(v30 - 120) = v32 ^ (1785193651 * ((((v30 - 144) | 0x476A9A8) - ((v30 - 144) & 0x476A9A8)) ^ 0x17AA4588));
  *(v30 - 136) = a14;
  *(v30 - 128) = &a26;
  *(v30 - 144) = &a22;
  *(v30 - 112) = &a22;
  *(v30 - 104) = v29;
  (*(v27 + 8 * (v28 ^ 0xFCD)))(v30 - 144);
  *(v30 - 136) = a19;
  *(v30 - 128) = &a22;
  *(v30 - 144) = ((v28 ^ 0x23) - 875955837) ^ (1082434553 * (((v30 - 144) & 0x9270CB0F | ~((v30 - 144) | 0x9270CB0F)) ^ 0xF6C8C27A));
  (*(v27 + 8 * ((v28 ^ 0x23) + 679)))(v30 - 144);
  *(v30 - 144) = (v28 ^ 0x23) + 1082434553 * ((-357967769 - ((v30 - 144) | 0xEAA9D867) + ((v30 - 144) | 0x15562798)) ^ 0x8E11D112) - 1161;
  *(v30 - 136) = &a24;
  *(v30 - 128) = &a22;
  (*(v27 + 8 * (v28 ^ 0xFE2)))(v30 - 144);
  *(v30 - 144) = &a22;
  *(v30 - 136) = ((v28 ^ 0x23) - 776) ^ (1785193651 * ((v30 - 883954858 - 2 * ((v30 - 144) & 0xCB4FEBE6)) ^ 0xD89307C6));
  *(v30 - 128) = &a24;
  v33 = (*(v27 + 8 * (v28 ^ 0xFA0)))(v30 - 144);
  return (*(v27 + 8 * ((((v28 ^ 0x23) - 1739) * (a18 == 0)) ^ ((v28 ^ 0x23) - 1230))))(v33);
}

uint64_t sub_100023524@<X0>(int a1@<W0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = v8 + 1007;
  v17 = (v13 + 4 * v9);
  v18 = HIDWORD(v15) + (*v17 ^ a2) + HIDWORD(v10) + v11 * (*(*(a7 + 8) + 4 * v9) ^ a2);
  *(v17 - 1) = a2 + v16 - 417 + v18 - (a1 & (2 * v18)) - 1476;
  return (*(v12 + 8 * (((v9 + 1 == v7) * v14) ^ (v16 - 1630))))();
}

uint64_t sub_10002359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, unsigned int a14, uint64_t a15)
{
  *(v19 - 112) = v15;
  *(v19 - 104) = a13;
  *(v19 - 136) = (v18 + 1309) ^ (1037613739 * ((~(v17 | 0x7DB29869) + (v17 & 0x7DB29869)) ^ 0x534F4AE9));
  *(v19 - 128) = v15;
  *(v19 - 120) = a15;
  v20 = (*(v16 + 8 * (v18 + 1752)))(v19 - 136);
  return (*(v16 + 8 * ((252 * (((a14 >> (v18 ^ 0x49)) & a12) == (((v18 - 406) | 0x148) ^ 0x1FA))) ^ (v18 + 273))))(v20);
}

uint64_t sub_1000235A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  a17 = v18 - 1388665877 * (&a17 ^ 0x8DAD62EC) - 542397579;
  v21 = (*(v19 + 8 * (v18 + 1191)))(&a17);
  return (*(v19 + 8 * (((a18 == 972359704) * (((v18 ^ 0xF) - 2124586811) ^ (v20 + 2021))) ^ v18)))(v21);
}

uint64_t sub_100023994(uint64_t a1, signed int a2, int a3, uint64_t a4, int a5)
{
  v7 = v5 - a3 + (a5 ^ 0x269) - 1893;
  if (a2 > v7)
  {
    v7 = a2;
  }

  return (*(v6 + 8 * ((30 * (v7 > ((a5 - 1716903189) & 0x6655DF6D ^ 0x7FFFF89Bu))) ^ a5)))();
}

uint64_t sub_1000239F8(uint64_t a1, uint64_t a2, int a3)
{
  v7 = (v6 + a1 - 12);
  v8.i64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v8.i64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v9.i64[0] = 0xA8A8A8A8A8A8A8A8;
  v9.i64[1] = 0xA8A8A8A8A8A8A8A8;
  v10 = vaddq_s8(vaddq_s8(*(v6 + v4 - 16), v9), vmvnq_s8(vandq_s8(vaddq_s8(*(v6 + v4 - 16), *(v6 + v4 - 16)), v8)));
  v7[-1] = vaddq_s8(vaddq_s8(*(v6 + v4 - 32), v9), vmvnq_s8(vandq_s8(vaddq_s8(*(v6 + v4 - 32), *(v6 + v4 - 32)), v8)));
  *v7 = v10;
  return (*(v3 + 8 * ((((v6 & 0xFFFFFFE0) == 32) * (((v5 + a3 + 543) | 0x104) ^ 0x66)) ^ (v5 + a3 + 1149))))();
}

void sub_100023AD0()
{
  *v5 = *v1;
  *v4 = v0;
  *v1 = 0;
  *(v1 + 8) = 0x2907876429078764;
  v2 = *(v1 + 24);
  v3 = *(v1 + 20) & 0xFFFFFFFE;
  *(v1 + 16) = 1481339933;
  *(v1 + 20) = v3;
  *(v6 + 24) = v2;
}

uint64_t sub_100023B50(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = ((a6 + 31) ^ (v6 - 1268)) - a3;
  if (a2 > v8)
  {
    v8 = a2;
  }

  return (*(v7 + 8 * ((504 * ((a6 + 632 + v8 - 1892) < 0x24)) ^ a6)))();
}

uint64_t sub_100023BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v24 - 144) = v18;
  *(v24 - 136) = &a18;
  *(v24 - 128) = v22;
  *(v24 - 112) = v18;
  *(v24 - 104) = v21;
  *(v24 - 120) = (v19 + 1096) ^ (1785193651 * ((v24 + 2108271482 - 2 * ((v24 - 144) & 0x7DA9AC0A)) ^ 0x6E75402A));
  v25 = (*(v20 + 8 * (v19 + 2046)))(v24 - 144);
  return (*(v20 + 8 * ((122 * (v23 - 540231017 < ((((v19 - 1803645374) & 0x6B8178F1) - 2036) ^ 0x7FFFFB2C ^ (599 * ((v19 - 1803645374) & 0x6B8178F1 ^ 0x873u))))) ^ (((v19 - 1803645374) & 0x6B8178F1) - 973))))(v25);
}

uint64_t sub_100023C64(int8x16_t a1)
{
  v8 = (v3 - 32);
  v9 = (v4 - 32);
  v10 = veorq_s8(*v9, a1);
  v8[-1] = veorq_s8(v9[-1], a1);
  *v8 = v10;
  return (*(v7 + 8 * (((v1 != v5 + 32) * v6) ^ v2)))();
}

uint64_t sub_100023CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  if (v11)
  {
    v13 = a11 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  return (*(v12 + 8 * ((116 * v14) ^ 0x594)))();
}

uint64_t sub_100023D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = STACK[0x360];
  v10 = *(STACK[0x360] + 96);
  if (v10 == 2)
  {
    return (*(v8 + 8 * ((v7 + 799) | (8 * (((*(v9 + 92) == 0) ^ (v7 - 1)) & 1)))))(a1, 177, &off_10050ED90, a4, 51323414);
  }

  if (v10 == 1)
  {
    return (*(v8 + 8 * ((120 * (((*(v9 + 92) == 0) ^ (v7 - 35)) & 1)) ^ (v7 - 117))))(a1, a2, &off_10050ED90);
  }

  STACK[0x350] = 91;
  *(v9 + 91) = (&STACK[0x350] ^ a7) * (&STACK[0x350] + 17);
  return (*(v8 + 8 * ((((STACK[0x350] == 0) << 7) | ((STACK[0x350] == 0) << 11)) ^ (v7 - 1276))))(a1, a2, &off_10050ED90);
}

uint64_t sub_100023FBC(uint64_t a1)
{
  v3 = STACK[0x460];
  v4 = ((2 * LODWORD(STACK[0x3D0])) & 0x1659F1FAALL) - 0x63B5EFF7B2CF8FD6 + (LODWORD(STACK[0x3D0]) ^ ((v1 - 1439) | 0x440u) ^ 0x63B5EFF7B2CF893DLL) + 1;
  STACK[0x388] = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((v1 - 868808904) & 0x33C8F1A1 ^ 0x1EE)) ^ v1)))(a1, v3);
}

void sub_1000240FC(uint64_t a1)
{
  v1 = *a1 + 1388665877 * ((-2 - ((a1 | 0xF3824F06) + (~a1 | 0xC7DB0F9))) ^ 0x81D0D215);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v9[0] = 0x590F65B000000082;
  v9[1] = &v12;
  v10[0] = 0x590F65B000000082;
  v10[1] = &v11;
  v6 = v3[1];
  v16 = (1785193651 * ((-1528289165 - (&v13 | 0xA4E82873) + (&v13 | 0x5B17D78C)) ^ 0x48CB3BAC)) ^ (v1 + 820);
  v14 = v2;
  v15 = v3;
  v17 = v9;
  v18 = v5;
  v13 = v6;
  v7 = *(&off_10050ED90 + (v1 ^ 0x271)) - 8;
  (*&v7[8 * v1 + 14160])(&v13);
  v8 = *v3;
  v15 = v10;
  v13 = v8;
  LODWORD(v14) = (1785193651 * ((-132549561 - (&v13 | 0xF8197447) + (&v13 | 0x7E68BB8)) ^ 0x143A6798)) ^ (v1 + 380);
  (*&v7[8 * v1 + 14376])(&v13);
  v14 = v4;
  HIDWORD(v13) = v1 + 1388665877 * ((&v13 & 0xA5B1E8F | ~(&v13 | 0xA5B1E8F)) ^ 0x7809839C) + 688;
  (*&v7[8 * v1 + 14272])(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10002432C@<X0>(unsigned int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(v9 - 120) = v8 & 0xF;
  v15.val[1].i64[0] = (v8 + 13) & 0xF;
  v15.val[1].i64[1] = (v8 + 12) & 0xF;
  v15.val[2].i64[0] = (v8 + 11) & 0xF;
  v15.val[2].i64[1] = (v8 + 10) & 0xF;
  v15.val[3].i64[0] = (v8 + 9) & 0xF;
  v15.val[3].i64[1] = a2 & 0xF ^ 1;
  v16.val[0].i64[0] = (v8 + 7) & 0xF;
  v16.val[0].i64[1] = (v8 + 6) & 0xF;
  v16.val[1].i64[0] = (v8 + 5) & 0xF;
  v16.val[1].i64[1] = (v8 + 4) & 0xF;
  v16.val[2].i64[0] = (v8 + 3) & 0xF;
  v16.val[2].i64[1] = (v8 + 2) & 0xF;
  v16.val[3].i64[0] = (v8 + 1) & 0xF;
  v16.val[3].i64[1] = *(v9 - 120);
  v10.i64[0] = 0x5959595959595959;
  v10.i64[1] = 0x5959595959595959;
  v11.i64[0] = 0xA7A7A7A7A7A7A7A7;
  v11.i64[1] = 0xA7A7A7A7A7A7A7A7;
  v12 = (a1 ^ 0x5DD) - 1784 + v8;
  v15.val[0].i64[0] = v12 & 0xF;
  v15.val[0].i64[1] = (v8 + 14) & 0xF;
  v13.i64[0] = vqtbl4q_s8(v15, xmmword_1003EFF70).u64[0];
  v13.i64[1] = vqtbl4q_s8(v16, xmmword_1003EFF70).u64[0];
  v16.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*(v4 - 15 + v12), *(v6 + v15.val[0].i64[0] - 15)), veorq_s8(*(v15.val[0].i64[0] + v7 - 10), *(v15.val[0].i64[0] + v5 - 13))));
  v16.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v16.val[0], v16.val[0], 8uLL), v11), vmulq_s8(v13, v10)));
  *(a3 - 15 + v12) = vextq_s8(v16.val[0], v16.val[0], 8uLL);
  return (*(v3 + 8 * ((3064 * ((v8 & 0x10) == 16)) ^ a1)))();
}

void sub_1000244A0(int a1@<W8>)
{
  v4 = v3 ^ 0x7E9;
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((2 * v2) & 0x3086F7D6) + v4 - 1740409133;
  *(v1 + 4) = a1 + 1;
}

void sub_1000244E4(int a1@<W8>)
{
  if (a1 == ((v2 + 1491315579) & 0xA71C57EB ^ (v4 + 1498)))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  *v1 = v7;
  *(v3 + 8) = *(v5 + 24);
}

uint64_t sub_100024554(unint64_t a1)
{
  STACK[0x508] = a1;
  LODWORD(STACK[0x3C4]) = v2;
  v4 = STACK[0x3B0];
  STACK[0x490] = 335;
  *(v4 + 335) = (&STACK[0x490] ^ 0xBA) * (&STACK[0x490] + 17);
  return (*(v3 + 8 * (((STACK[0x490] == 0) * ((59 * ((v1 + 656) ^ 0x5AC) + 318) ^ 0x157)) ^ (59 * ((v1 + 656) ^ 0x5AC)))))();
}

uint64_t sub_1000245EC@<X0>(int a1@<W8>)
{
  v5 = *(v2 + 4 * (v1 - 1));
  *(v2 + 4 * v1) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v2 + 4 * v1)) - v1;
  v6 = STACK[0x2F0];
  v7 = -LODWORD(STACK[0x2F0]);
  *(v4 - 160) = 1212454120 - STACK[0x2F0] + a1;
  *(v4 - 168) = 623 - v6;
  *(v4 - 176) = ((a1 - 998188499) ^ 0x7C) - v6;
  *(v4 - 172) = a1 - 998188499 - v6;
  *(v4 - 184) = v1 + 1 - v6;
  *(v4 - 200) = v7;
  *(v4 - 196) = ((a1 - 998188499) ^ 0x3B) + v6;
  v8 = (*(v3 + 8 * (a1 ^ 0xCEE)))(v4 - 200);
  return (*(v3 + 8 * *(v4 - 192)))(v8);
}

void sub_10002469C(uint64_t a1)
{
  v1 = *(a1 + 8) + 210068311 * ((1549542908 - (a1 | 0x5C5C25FC) + (a1 | 0xA3A3DA03)) ^ 0x3175E5A7);
  v2 = *a1;
  v3 = *(&off_10050ED90 + v1 - 1351) - 8;
  (*&v3[8 * v1 + 7616])(*(&off_10050ED90 + v1 - 1280) - 8, sub_1000537E0);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100024828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, _BYTE *a13, uint64_t a14, _BYTE *a15, _BYTE *a16, _BYTE *a17, _BYTE *a18, _BYTE *a19, unsigned __int8 **a20, int a21, _BYTE *a22, _BYTE *a23, uint64_t a24, _BYTE *a25, uint64_t a26, _BYTE *a27, uint64_t a28, _BYTE *a29, uint64_t a30, uint64_t a31, _BYTE *a32, _BYTE *a33, _BYTE *a34, _BYTE *a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  *a13 = (a2 + (~(a2 << (5 * (a39 ^ 0x49) + 122)) | 0x1F) + 113) ^ 0x70;
  *a16 = BYTE3(a2);
  a13[1] = ((BYTE6(a2) ^ 0xE2) - ((2 * (BYTE6(a2) ^ 0xE2)) & 0x58) - 84) ^ 0xAC;
  a12[1] = (BYTE4(a2) - ((2 * BYTE4(a2)) & 0x5C) + 46) ^ 0x1E;
  a15[20] = v44 ^ 0x22;
  *a17 = BYTE5(a2) ^ 0xF9;
  a15[64] = (BYTE2(a2) - ((2 * BYTE2(a2)) & 0xD2) - 23) ^ 0xE9;
  a15[50] = (BYTE3(a4) - ((2 * BYTE3(a4)) & 0xD2) + 105) ^ 0x69;
  *a19 = BYTE1(a2);
  *a18 = a4;
  a15[26] = (BYTE6(a4) - ((2 * BYTE6(a4)) & 0x2A) + 21) ^ 0x15;
  *a27 = BYTE4(a4);
  a12[2] = BYTE1(v42);
  a15[45] = (BYTE5(a4) + (~(2 * BYTE5(a4)) | 0xE3) - 113) ^ 0x8E;
  *a33 = HIBYTE(a4);
  a15[11] = (BYTE2(v42) - ((2 * BYTE2(v42)) & 0xE8) + 116) ^ 0x74;
  *a34 = BYTE1(v44) ^ 0x69;
  *a12 = HIBYTE(a2) ^ 0xCA;
  *a23 = BYTE2(v44) ^ 1;
  a15[52] = BYTE4(v44) ^ 0x61;
  *a25 = BYTE3(v44) ^ 0xA7;
  v45 = *(a10 + 526 + (((v44 >> 33) & 0x80 | (v44 >> 41) & 0x7F) ^ 0x26));
  a15[9] = BYTE6(v44) ^ 0xE;
  *a22 = (((v45 >> 4) | (16 * v45)) ^ 0xB ^ (((v45 >> 4) | (16 * v45)) >> 1) & 0x55) + 95;
  v46 = *(a11 + (((v44 >> 51) & 0xE0 | (v44 >> 59)) ^ 0x93));
  a15[39] = v43 ^ 0x53;
  *a32 = (v46 ^ 0xBC) + 74;
  v47 = *(a11 + (((v43 >> 3) & 0xE0 | (v43 >> 11)) ^ 0xEF));
  a15[49] = BYTE5(v43) ^ 0xBB;
  a15[63] = BYTE3(v43) ^ 0xC1;
  v48 = (a8 >> 38) ^ 0xB0;
  a15[13] = BYTE6(v43) ^ 0x15;
  *a29 = BYTE2(v43) ^ 0x1D;
  *a35 = (v47 ^ 0xBC) + 74;
  a15[36] = BYTE4(v43) ^ 0xF2;
  a15[60] = BYTE1(a8) ^ 0x54;
  a15[27] = BYTE2(a8) ^ 0x11;
  v49 = (v43 ^ 0x4F15BBF2C11DE053) >> (v42 & 0x38) >> (v42 & 0x38 ^ 0x38u);
  a15[40] = (v49 - ((2 * v49) & 0x48) + 36) ^ 0x24;
  a15[53] = BYTE3(a8) ^ 5;
  a15[59] = a8 ^ 0x4C;
  a15[22] = BYTE4(a8) ^ 0x2D;
  v50 = *(a14 + ((v48 & 0xFC | (a8 >> 46) & 3) ^ 0x97));
  v51 = ((v48 & 0xFC | (a8 >> 46) & 3) ^ 0x86) - ((2 * v48) & 0xD0) + (v50 ^ 0xB2) + ((2 * v50) & 0x64) + 79;
  a15[37] = -35 * (((v51 ^ 0x7A) + 92) ^ ((v51 ^ 0x6F) + 79) ^ ((v51 ^ 0x90) - 78)) - 113;
  v52 = *(a10 + 526 + (((a8 >> 41) & 0x80 | (a8 >> 49) & 0x7F) ^ 0x56));
  a15[29] = HIBYTE(a8) ^ 0x30;
  v53 = ((((v52 >> 4) | (16 * v52)) >> 1) & 0x55) + (((v52 >> 4) | (16 * v52)) ^ 0xB) - 2 * ((((v52 >> 4) | (16 * v52)) >> 1) & 0x55 & (((v52 >> 4) | (16 * v52)) ^ 0xB));
  a15[57] = (v53 ^ 0x67) + ((2 * v53) & 0xCF) - 8;
  v54 = a20;
  **a20 = a21 + 1;
  v55 = *a20;
  v56 = __ROR8__(v55[54] - ((2 * v55[54]) & 0xA8) - 0x62D8686CF7D430ACLL, 5);
  v57 = ((v55[6] - ((2 * v55[6]) & 0xD6u) + 536451232) << 35) - 0x1A800000000;
  v58 = ((((v55[35] - ((2 * v55[35]) & 0x44u) + 1605468) << 43) - 0x1D00000000000) ^ 0xBBF7A92E835B3433) & (v57 ^ 0x3338E7C35F757FLL) ^ v57 & 0x87C046D000000000;
  v59 = ((((*v54)[30] - ((2 * (*v54)[30]) & 0x1C4u) + 38376) << 48) - 0x6000000000000) ^ ((((*v54)[16] - ((2 * (*v54)[16]) & 0x38u) + 5661267) << 40) - 0x370000000000) ^ (((v55[17] - ((2 * v55[17]) & 0xFFDFu) + 39902239) << 32) - 0x3000000000) ^ (((v55[42] - ((2 * v55[42]) & 0xDAu) + 35) << 56) - 0x3600000000000000) ^ __ROR8__(v56 & 0x70000024804009CALL ^ 0x7D0C8A40052421C8 ^ (v58 & 0xF139901A03191430 ^ 0x70C7D625D556A40ALL ^ (v58 ^ 0x30048164A0420CLL) & ((((v55[21] - ((2 * v55[21]) & 0x28u) + 807) << 51) - 0x98000000000000) ^ 0x16666FE5E4E2620FLL)) & (v56 ^ 0x5B16C34367BEA185), 35) ^ 0x6D34269450FB5624;
  v60 = ((v55[61] - ((2 * v55[61]) & 0xA2u) + 8021112) << 40) - 0x270000000000;
  v61 = ((v55[34] - ((2 * v55[34]) & 0xD6)) << 24) + 0x7B455D36B000000;
  v62 = ((v55[7] - ((2 * v55[7]) & 0x10)) << 16) - 0x429CB60E2AF80000;
  v63 = v55[15] - ((2 * v55[15]) & 0x9E) + 0x69E5B45A61DFB84FLL;
  v64 = v60 & 0x7225510000000000 ^ 0xFB7EFFE3D53382E9 ^ (v61 & 0x4305594D6000000 ^ 0xA6E6D918BEF33183 ^ (v62 & 0x502480041690000 ^ 0x966FC99EF65E8975 ^ (v63 & 0x5000043E44 ^ 0xDC243B222D4983E0 ^ ((((v55[32] - ((2 * v55[32]) & 0x15C)) << 8) - 0x5E29D49D67B35200) ^ 0xC513B3E52B972FBBLL) & (v63 ^ 0x961A4BA59E2047F4)) & (v62 ^ 0x429CB60E2AF7FFFFLL)) & (v61 ^ 0xF84BAA2C94FFFFFFLL)) & (v60 ^ 0x859BAEFFFFFFFFFFLL);
  v65 = (69 * (*a20)[55]) > 0xE1u;
  LOBYTE(v58) = 69 * (*a20)[55] + 30;
  v66 = v58 & 0x2E ^ 0x26;
  v67 = (v58 ^ (2 * ((v58 ^ 0x60) & (2 * ((v58 ^ 0x60) & (2 * ((v58 ^ 0x60) & (2 * ((v58 ^ 0x60) & (2 * (v58 & (2 * v66) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66))) ^ 0x81;
  v68 = *(&off_10050ED90 + (a39 ^ 0x574));
  v69 = (*(v68 + 10 + (((v58 | (v65 << 8)) - 101 + (((v58 | (v65 << 8)) - 101 - (((v67 ^ 0x52585D30) - 1381522736) ^ ((v67 ^ 0xC357967D) + 1017670019) ^ ((v67 ^ 0x910FCB0A) + 1861235958))) ^ 0xFFFFFFF0) + 71) ^ 0xD5)) - 18) ^ 0x57;
  v70 = (v69 >> 2) | (v69 << 6);
  v71 = ((((*v54)[51] - ((2 * (*v54)[51]) & 0xCu) + 45) << 56) - 0x2700000000000000) ^ ((((*v54)[56] - ((2 * (*v54)[56]) & 0x3333u) + 62165) << 48) - 0x3C000000000000) ^ 0xF72666619A52F05 ^ (((0xFFFFFFFF00000000 * v70) ^ ((v70 << 32) - ((v70 << 33) & 0x12800000000) - 0x3D55786B8C977650) ^ (v64 - (v64 ^ (v70 << 32))) ^ 0xC2AA8794736889B0) + v64);
  LOBYTE(v54) = 69 * (*a20)[31] + 44;
  LOBYTE(v61) = v54 & 0x8C ^ 0x7C;
  v73 = *(v68 + 10 + ((v54 ^ (2 * ((v54 ^ 0x54) & (2 * ((v54 ^ 0x54) & (2 * ((v54 ^ 0x54) & (2 * ((v54 ^ 0x54) & (2 * v61) ^ v61)) ^ v61)) ^ v61)) ^ v61))) ^ 0xB1u)) + 6;
  LODWORD(v63) = (v55[4] >> 4) | (16 * v55[4]);
  v72 = ((v55[46] - ((2 * v55[46]) & 0x84u) + 243) << 56) - 0x3100000000000000;
  v78 = v55[19] - ((2 * v55[19]) & 0xFFFB);
  LODWORD(v63) = *(v68 + 541 + ((v63 + (~(2 * v63) | 3) + 127) ^ 0x22));
  LOBYTE(v54) = v73 & 0x36 ^ 0x27;
  v74 = v73 ^ (2 * ((v73 ^ 0x68) & (2 * ((v73 ^ 0x68) & (2 * ((v73 ^ 0x68) & (2 * ((v73 ^ 0x68) & (2 * ((v73 ^ 0x68) & (2 * (v54 ^ v73 & 0x1E)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ 0x2F;
  v75 = ((((((v74 >> 2) | (v74 << 6)) ^ 0xB6) - 65) ^ ((((v74 >> 2) | (v74 << 6)) ^ 0x5C) + 85) ^ ((((v74 >> 2) | (v74 << 6)) ^ 0x79) + 114)) + 100) << 32;
  v76 = ((v55[8] - ((2 * v55[8]) & 0x140)) << 24) + 0x3B28C29AA0000000;
  v77 = ((v55[33] - ((2 * v55[33]) & 0x14C)) << 16) + 0x773543C318A60000;
  v79 = (v75 & 0x6400000000 | (v76 & 0xB28829340000000 ^ 0xF5A11B0512312132 ^ (v77 & 0x65354042193A0000 ^ 0x72E2BEFA14B0F6FLL ^ ((v78 + 0xFD52930C694BEFDLL) & 0x200204B394 ^ 0x16373C5CE41006B4 ^ (((((v63 >> 5) | (8 * v63)) - ((16 * v63) & 0x40) + 32) << 8) ^ 0x43D27DDE0D1A56BLL) & ((v78 + 0xFD52930C694BEFDLL) ^ 0x8BA81ECF256F4196)) & (v77 ^ 0x8CABC3CE759FFFFLL)) & (v76 ^ 0xC4D73D655FFFFFFFLL)) & ~v75) ^ (((v55[38] << 40) | ((v55[43] - ((2 * v55[43]) & 0x1AAu) + 62441) << 48)) - 0x14000000000000);
  return (*(a42 + 8 * (((5 * (a39 ^ 0x549) != 127) * ((5 * (a39 ^ 0x549)) ^ 0xC3)) ^ (5 * (a39 ^ 0x549)))))(v59, 0x4627F530C8401877, v71, ((v79 & 0x4AF54021979D7FCDLL ^ v72 & 0x4A00000000000000 ^ 0xF5AABFFE7A6280FALL) & (v72 & 0xB500000000000000 ^ 0xDCECEF3A1FDC16DALL ^ v79 & 0xB50ABFDE68628032) | (v79 & 0x4AF54021979D7FCDLL ^ v72 & 0x4A00000000000000) & 0x211000180016905) ^ 0x6BE546A1B7DDDECCLL, 0);
}

uint64_t sub_100026130(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = (*(v14 + 4 * v13) ^ (v7 - 309) ^ (a6 + 1557) ^ v11) + v9 + a3 * (*(*(v10 + 8) + a2) ^ v7);
  *(v14 + 4 * v13) = v15 + v7 - (v8 & (2 * v15));
  return (*(v6 + 8 * ((a6 + 80) ^ ((a4 == 0) * v12))))();
}

uint64_t sub_100026178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, char *a21, unsigned int a22)
{
  if ((a11 - 1323568843) >= 0x2BF953AF)
  {
    v25 = 1908478089;
  }

  else
  {
    v25 = 1908478090;
  }

  v26 = 1564307779 * (((&a17 ^ 0x8955A581) & 0x6EE4A5DF | ~(&a17 ^ 0x8955A581 | 0x6EE4A5DF)) ^ 0x8F4333B2);
  a22 = v25 - v26;
  a17 = a14;
  a21 = &a15;
  a19 = v23 - v26 - 2013066925;
  a20 = -1815814329 - v26;
  v27 = (*(v24 + 8 * (v23 ^ 0x89C)))(&a17);
  return (*(v24 + 8 * (((a18 == v22 + ((v23 + 257) | 0x10C) - 910) * ((v23 + 502247037) & 0x105577 ^ 0x22D)) ^ v23)))(v27);
}

uint64_t sub_100026330()
{
  v4 = v0;
  v5 = v1 + v0 + 4726784;
  v6 = LODWORD(STACK[0x49C])++;
  *STACK[0x2A8] = v6 + 1562827101;
  v7 = *STACK[0x2C8];
  v8 = v5 ^ 0xE4;
  v9 = STACK[0x238];
  v10 = -LODWORD(STACK[0x238]);
  *(v3 - 160) = 1212454120 - STACK[0x238] + v4;
  *(v3 - 184) = v7 - v9;
  v11 = v5 - v9;
  *(v3 - 176) = v11 - 135;
  *(v3 - 172) = v11;
  *(v3 - 200) = v10;
  *(v3 - 196) = v8 + v9;
  *(v3 - 168) = STACK[0x230];
  v12 = (*(v2 + 8 * (v4 ^ 0xCEEu)))(v3 - 200);
  return (*(v2 + 8 * *(v3 - 192)))(v12);
}

uint64_t sub_1000263D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v13 = *(v6 + 4 * (a6 + v9 - 14));
  HIDWORD(v14) = *(v6 + 4 * (a6 + v9 - 8)) ^ *(v6 + 4 * (a6 + v9 - 3)) ^ v13 ^ *(v6 + 4 * (a6 + v9 - 16)) ^ (a5 + v8 + 947 - 1792);
  LODWORD(v14) = *(v6 + 4 * (a6 + v9 - 8)) ^ *(v6 + 4 * (a6 + v9 - 3)) ^ v13 ^ *(v6 + 4 * (a6 + v9 - 16));
  *(v6 + 4 * (v7 + a6)) = (v14 >> 31) ^ v10;
  return (*(v12 + 8 * ((((v7 + 1 + a6) < 0x50) * v11) ^ v8)))();
}

uint64_t sub_100026450(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = v8 + 2;
  v14 = v10 + 2;
  v15 = vaddq_s8(vsubq_s8(*v13, vandq_s8(vaddq_s8(*v13, *v13), a1)), a2);
  v14[-1] = vaddq_s8(vsubq_s8(v13[-1], vandq_s8(vaddq_s8(v13[-1], v13[-1]), a1)), a2);
  *v14 = v15;
  return (*(v12 + 8 * (((v9 == 32) * v11) ^ (a7 + v7 + 300))))();
}

uint64_t sub_100026460(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1000266AC(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

void sub_1000266C4(_DWORD *a1)
{
  v1 = *a1 - 843532609 * (((a1 ^ 0x88EA6F2) & 0xE4B4B0D1 | ~(a1 ^ 0x88EA6F2 | 0xE4B4B0D1)) ^ 0x4F88BD59);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100026788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v24 = 843532609 * ((((2 * &a15) | 0x4BB7A15A) - &a15 - 635162797) ^ 0x79968428);
  a15 = a10;
  HIDWORD(a16) = v21 - ((2 * v21) & 0x15776F42) - v24 - 1967409247;
  LODWORD(a17) = v24 ^ 0x5C7;
  (*(v23 + 18840))(&a15);
  v25 = 1037613739 * (((~&a15 & 0x715C5662) - (~&a15 | 0x715C5663)) ^ 0xA05E7B1C);
  a18 = v25 ^ 0x131;
  a19 = (v20 ^ 0xEFF9B7F7) + ((2 * v20) & 0xDFF36FEE) + 510655103 + v25;
  a16 = a10;
  a17 = v19;
  v26 = (*(v23 + 19072))(&a15);
  return (*(v23 + 8 * ((934 * (a15 == v22)) ^ 0x1D5u)))(v26);
}

uint64_t sub_1000268C4(int a1, int a2, unsigned int a3, unsigned int a4)
{
  *(v10 + (v4 + 1)) = *(v7 + v9);
  v12 = a4 + v9 + 1 < v5;
  if (v5 < a4 != (v8 & a2 ^ 0x5A9) + v9 > a3)
  {
    v12 = v5 < a4;
  }

  return (*(v11 + 8 * ((v12 * a1) ^ v6)))();
}

uint64_t sub_1000268D0()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 != 0) * v1) ^ v0)))();
}

uint64_t sub_10002697C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4 - 1;
  *(v6 + v8) = *(a3 + v8) + (v5 | ~(2 * *(a3 + v8))) - 88;
  return (*(v7 + 8 * ((2 * (((v3 - 55) ^ (v8 == 0)) & 1)) & 0xDF | (32 * (((v3 - 311) ^ (v8 == 0)) & 1)) | (v3 - 728))))();
}

uint64_t sub_1000269D8()
{
  v6 = ((v1 + 1849) ^ v3) + v2;
  *(v4 + v6) = *(v0 + v6);
  return (*(v5 + 8 * (((2 * (v6 == 0)) | (32 * (v6 == 0))) ^ v1)))();
}

uint64_t sub_100026BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  v42 = (*a3 + 0x48A124310A752B7ALL - ((2 * *a3) & 0xF4)) ^ 0x48A124310A752B7ALL;
  v41 = a2 ^ 0x417A3CF7A2409DB3;
  v43 = (((v41 ^ 0x6E57AD37D75288E2) - 0x6E57AD37D75288E2) ^ ((v41 ^ 0x716A4FA6CAFA5E47) - 0x716A4FA6CAFA5E47) ^ ((v41 ^ 0x94A52756BFE84B16) + 0x6B5AD8A94017B4EALL)) + (((v42 ^ 0xE352F4A5B4410A26) - 0x7D5068FF7774102ELL) ^ ((v42 ^ 0xEFE0ABD1FCF4D425) - 0x71E2378B3FC1CE2DLL) ^ ((v42 ^ 0xCB25F7448B5DE03) + 0x6D4F3CD1747F3BF5)) - ((((2 * (v42 & (v41 ^ 0xB98C5C7A2409DB3))) ^ 0x90280DDF9F6498BALL) + 0x7E3368F5DE215BCALL) ^ (((2 * (v42 & (v41 ^ 0xB98C5C7A2409DB3))) ^ 0xB1D453488E60A67CLL) + 0x5FCF3662CF256510) ^ (((2 * (v42 & (v41 ^ 0xB98C5C7A2409DB3))) ^ 0x21FC5E9711043EC6) - 0x3018C442AFBE024ALL)) + 0x583FB92F4BEF3AE7;
  v44 = (v43 ^ 0xBE674FDC58AC2420) & (2 * (v43 & 0xBF770E1D5ACC4048)) ^ v43 & 0xBF770E1D5ACC4048;
  v45 = ((2 * (v43 ^ 0xFE4957F65CBCA430)) ^ 0x827CB3D60CE1C8F0) & (v43 ^ 0xFE4957F65CBCA430) ^ (2 * (v43 ^ 0xFE4957F65CBCA430)) & v40;
  v46 = v45 ^ 0x4102482902102408;
  v47 = (v45 ^ 0x3C10C204600060) & (4 * v44) ^ v44;
  v48 = ((4 * v46) ^ 0x4F967AC19C391E0) & v46 ^ (4 * v46) & v40;
  v49 = (v48 ^ 0x3841A800408060) & (16 * v47) ^ v47;
  v50 = ((16 * (v48 ^ 0x4106184306306418)) ^ 0x13E59EB0670E4780) & (v48 ^ 0x4106184306306418) ^ (16 * (v48 ^ 0x4106184306306418)) & (v40 - 8);
  v51 = (v50 ^ 0x12418A006004400) & (v49 << 8) ^ v49;
  v52 = (((v50 ^ 0x401A414B0070A078) << 8) ^ 0x3E59EB0670E47800) & (v50 ^ 0x401A414B0070A078) ^ ((v50 ^ 0x401A414B0070A078) << 8) & (v40 - 120);
  v53 = v51 ^ v40 ^ (v52 ^ 0x18490200600000) & (v51 << 16);
  return (*(v38 + 8 * (((a36 - 803) | 0x5C) ^ 1)))(a1, v43 ^ (2 * ((v53 << 32) & 0x413E59EB00000000 ^ v53 ^ ((v53 << 32) ^ v37) & (((v52 ^ 0x412610E906108478) << 16) & 0x413E59EB00000000 ^ v36 ^ (((v52 ^ 0x412610E906108478) << 16) ^ v39) & (v52 ^ 0x412610E906108478)))));
}

uint64_t sub_100026D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = LOBYTE(STACK[0x2D8]);
  if (v22 == 2)
  {
    return (*(v21 + 8 * ((503 * (LODWORD(STACK[0x2D4]) == ((v20 + 1233) ^ 0x4F7))) ^ (v20 + 1233))))(a20);
  }

  if (v22 != 1)
  {
    JUMPOUT(0x100026E10);
  }

  return (*(v21 + 8 * ((90 * (((v20 ^ (LODWORD(STACK[0x2D4]) == 0)) & 1) == 0)) ^ (v20 + 1685))))();
}

uint64_t sub_100027224(uint64_t result)
{
  v1 = 742307843 * ((((2 * result) | 0xDB1F010A29036638) - result - 0x6D8F80851481B31CLL) ^ 0xDE135DEE0AA33E49);
  v2 = *(result + 8);
  v3 = v2 - v1;
  v4 = *(result + 24) - v1;
  v5 = *(result + 16) - v1;
  v6 = *result ^ v1;
  v7 = *(result + 28) + v1;
  v8 = *(result + 32);
  v9 = v2 == v8;
  v10 = v3 > v8 - v1;
  if ((v5 & 1) == 0)
  {
    v10 = v9;
  }

  if (v10)
  {
    v11 = v4;
  }

  else
  {
    v11 = v7;
  }

  *(result + 40) = v6 ^ v11;
  return result;
}

void sub_1000272C8(uint64_t a1)
{
  v1 = 1785193651 * ((a1 & 0xCB705029 | ~(a1 | 0xCB705029)) ^ 0x275343F6);
  if (*(a1 + 8) | *(a1 + 72))
  {
    v3 = *(a1 + 16) + v1 == 1177225308;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  v2 = *(a1 + 32) ^ v1;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100027410(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = -542396526 - 1388665877 * (((&a15 | 0x70B6400A) - (&a15 & 0x70B6400A)) ^ 0xFD1B22E6);
  v18 = (*(v17 + 17952))(&a15);
  return (*(v17 + 8 * ((35 * (a16 == v16)) | 0x98u)))(v18);
}

uint64_t sub_1000274F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = *(a1 + 32) + 1785193651 * (((a1 | 0xE1E68334) - a1 + (a1 & 0x1E197CCB)) ^ 0xF23A6F14);
  v19 = 1785193651 * ((v27 & 0x1F6DFA69 | ~(v27 | 0x1F6DFA69)) ^ 0xF34EE9B6);
  v28 = v18 + v19 - 562358890;
  v29 = v26;
  v30 = v19 ^ 0x79AE6FE9;
  v20 = (*(*(&off_10050ED90 + (v18 & 0x62C16BA0)) + (v18 ^ 0x942) - 1))(v27);
  return sub_1000453F8(v20, v26, v21, 167, v22, v23, v24, 4080486027, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_100027910@<X0>(uint64_t a1@<X0>, int a2@<W4>, uint64_t a3@<X8>)
{
  v8 = a1 - 1;
  *(a3 + v8) = *(v4 + v8) ^ *(v6 + (v8 & 0xF)) ^ *((v8 & 0xF) + v7 + 5) ^ (89 * (v8 & 0xF)) ^ *((v8 & 0xF) + v5 + 2) ^ 0xA7;
  return (*(v3 + 8 * ((a2 + 187) | (32 * (v8 == (((a2 - 1109) | 0x584u) ^ 0x7B4))))))();
}

uint64_t sub_100027984@<X0>(int a1@<W8>)
{
  v4 = a1 ^ 0x1C;
  STACK[0x4C0] = 0;
  v5 = 1388665877 * ((863776325 - (v1 | 0x337C2E45) + (v1 | 0xCC83D1BA)) ^ 0x412EB356);
  *(v3 - 168) = 0;
  *(v3 - 184) = v5 + v4 - 28;
  *(v3 - 180) = v5 - 1742635050;
  *(v3 - 200) = &STACK[0x4C0];
  *(v3 - 192) = &STACK[0x31C];
  v6 = (*(v2 + 8 * (v4 + 2065)))(v3 - 200);
  return (*(v2 + 8 * ((31 * (((v4 + 38) ^ (*(v3 - 176) == 972359704)) & 1)) ^ v4)))(v6);
}

uint64_t sub_100027A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v35 - 120) = &a30;
  *(v35 - 112) = v33;
  *(v35 - 144) = (v34 + 137) ^ (1037613739 * ((((v35 - 144) | 0x2CB222C3) - (v35 - 144) + ((v35 - 144) & 0xD34DDD38)) ^ 0xFDB00FBC));
  *(v35 - 136) = &a30;
  *(v35 - 128) = v32;
  (*(v31 + 8 * ((v34 - 804) ^ 0xA98)))(v35 - 144);
  *(v35 - 144) = (v34 + 137) ^ (1037613739 * ((v35 - 1443153448 - 2 * ((v35 - 144) & 0xA9FB3A68)) ^ 0x78F91717));
  *(v35 - 136) = &a30;
  *(v35 - 128) = v32;
  *(v35 - 120) = &a30;
  *(v35 - 112) = v33;
  (*(v31 + 8 * (v34 + 580)))(v35 - 144);
  v36 = 210068311 * ((((v35 - 144) | 0x76D20A) - (v35 - 144) + ((v35 - 144) & 0xFF892DF0)) ^ 0x92A0EDAE);
  *(v35 - 128) = a13;
  *(v35 - 144) = v36 + ((v30 - 540231018) ^ 0xEEBDFAE7) + ((v34 + 425384673) & 0xE6A51F7F) + 1073139266 + ((((v34 - 1483) | 0x2C) - 579079023) & (2 * (v30 - 540231018)));
  *(v35 - 136) = v34 - 804 - v36 - 802;
  v37 = (*(v31 + 8 * (v34 + 587)))(v35 - 144);
  return (*(v31 + 8 * ((127 * (*(v35 - 140) == 529483433)) ^ (v34 - 804))))(v37);
}

uint64_t sub_100027C20@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  a4 = (v8 - 89) ^ (50899313 * ((&a4 + 1394801720 - 2 * (&a4 & 0x5322FC38)) ^ 0x470D61A3));
  a7 = a1;
  a5 = a3;
  v9 = (*(v7 + 8 * (v8 ^ 0xD08)))(&a4);
  return (*(v7 + 8 * (((a6 != 972359704) * ((v8 ^ 0x4FC) - 197)) ^ v8)))(v9);
}

uint64_t sub_100027E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = ((~((v18 - 144) | 0x4E6BB728) + ((v18 - 144) & 0x4E6BB728)) ^ 0x23427773) * v17;
  *(v18 - 144) = v13 + 243369210 + v19 + 1;
  *(v18 - 136) = v15 - v19 - 1606;
  *(v18 - 128) = a13;
  v20 = (*(v14 + 8 * (v15 ^ 0xFFB)))(v18 - 144);
  return (*(v14 + 8 * ((453 * ((((v15 - 1740) ^ (*(v18 - 140) == v16)) & 1) == 0)) ^ v15)))(v20);
}

uint64_t sub_1000281FC@<X0>(int a1@<W8>, uint64_t a2, int a3, __int16 a4, char a5, char a6, char a7, int a8, int a9, char a10, uint64_t a11, int a12, char *a13, char *a14, char *a15, char a16, unsigned int a17, int a18)
{
  v21 = *(v18 + 32);
  v22 = 742307843 * (&a11 ^ 0x1E228D55);
  a17 = (((a1 ^ 0xB653C13B) + 1236025029) ^ ((a1 ^ 0x43568E09) - 1129745929) ^ ((a1 ^ 0x6C2430E2) - 1814311138)) - v22 + ((v20 + 1246849458) & 0xB5AE95FC) - 1683916716;
  a18 = v20 - v22 - 473373993;
  a11 = v21;
  a13 = &a10;
  a14 = &a7;
  a15 = &a6;
  a16 = (3 * (&a11 ^ 0x55)) ^ 0x70;
  v23 = (*(v19 + 8 * (v20 + 2123)))(&a11);
  return (*(v19 + 8 * ((1529 * (a12 == 972359704)) ^ v20)))(v23);
}

uint64_t sub_100028314@<X0>(uint64_t a1@<X1>, char a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, unint64_t *, uint64_t))
{
  v18 = (a1 + v14);
  *v18 = v15;
  *(v14 + v17 + a1 - 27) = a2;
  v18[2] = v13;
  v18[3] = v16;
  return sub_10002D9C0(a1, v17, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_100028388()
{
  *(v7 - 136) = v6;
  *(v7 - 128) = v3;
  *(v7 - 120) = v6;
  *(v7 - 112) = v2;
  *(v7 - 144) = (v0 + 1449) ^ (1037613739 * ((((2 * (v7 - 144)) | 0xF40167C0) - (v7 - 144) + 100617248) ^ 0x2B029E9F));
  (*(v4 + 8 * (v0 + 1892)))(v7 - 144);
  v8 = 210068311 * ((v7 + 265681887 - 2 * ((v7 - 144) & 0xFD5FC6F)) ^ 0x9D03C3CB);
  *(v7 - 128) = v1;
  *(v7 - 144) = v8 + v5 + 243369213;
  *(v7 - 136) = v0 - v8 - 294;
  v9 = (*(v4 + 8 * (v0 ^ 0x89B)))(v7 - 144);
  return (*(v4 + 8 * ((102 * (((v0 - 107) ^ (*(v7 - 140) == 529483433)) & 1)) ^ v0)))(v9);
}

uint64_t sub_100028494(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int8x16_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int8x16_t a37)
{
  *(&STACK[0x590] + v38) = veorq_s8(*a14, a37);
  STACK[0x540] = ((v37 + 1029622445) ^ 0x3D5ECDADu) + STACK[0x540] - 850;
  STACK[0x548] = a1;
  STACK[0x550] = a1;
  return (*(v39 + 8 * (((((v37 + 1029622445) & 0xC2A1357D) - 1006) * ((&STACK[0x590] + v38) != a1)) ^ v37)))();
}

uint64_t sub_100028514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v28 = 843532609 * (&a19 ^ 0x5C4D5485);
  HIDWORD(a20) = v26 - v28 - 1967409247 - ((2 * v26) & 0x15776F42);
  LODWORD(a21) = v28 ^ 0x5C7;
  a19 = a17;
  (*(v27 + 18840))(&a19);
  LODWORD(a19) = 843532609 * (((&a19 | 0xF52813C9) - &a19 + (&a19 & 0xAD7EC30)) ^ 0xA965474C) + 1418;
  a22 = v25;
  a20 = a17;
  (*(v27 + 18944))(&a19);
  v29 = 843532609 * (((&a19 ^ 0xE26F550F) & 0x2BAB8AA9 | ~(&a19 ^ 0xE26F550F | 0x2BAB8AA9)) ^ 0x6A7674DC);
  a19 = a17;
  HIDWORD(a20) = v24 - ((2 * v24) & 0x15776F42) - 1967409247 - v29;
  LODWORD(a21) = v29 ^ 0x5C7;
  (*(v27 + 18840))(&a19);
  v30 = 1037613739 * ((2 * (&a19 & 0x5D5E1310) - &a19 + 581037289) ^ 0xF3A3C196);
  a20 = a17;
  a21 = v22;
  LODWORD(a22) = v30 ^ 0x131;
  HIDWORD(a22) = (v23 ^ 0x7EFBBEFF) + ((2 * v23) & 0xFDF77DFE) - 1888619657 + v30;
  v31 = (*(v27 + 19072))(&a19);
  return (*(v27 + 8 * ((1960 * (a19 == 972359704)) ^ 0x215u)))(v31);
}

uint64_t sub_1000287B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = v9 + v8 + 1510222016;
  v11 = v9 - 1262811790 + ((a7 + 311) ^ 0x1F0) > v10;
  if (v9 > 0x4B44F724 != v10 < 0xB4BB08DB)
  {
    v11 = v9 > 0x4B44F724;
  }

  return (*(v7 + 8 * (((4 * v11) | (16 * v11)) ^ a7)))();
}

uint64_t sub_100028864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v59 = (*(v57 + 8 * ((v53 | 0x528) ^ 0xC97)))(LODWORD(STACK[0x4C8]), a2, a53);
  v60 = v58 - 200;
  if (v59)
  {
    if (v59 == 268435459)
    {
      LODWORD(STACK[0x4AC]) = -972401888;
      return (*(v57 + 8 * ((((v56 - 1245658597) & 0x4A3F3CFD ^ 0x48A) * (STACK[0x4D0] == 0)) ^ (v56 + 517))))();
    }

    else
    {
      v63 = 843532609 * (v60 ^ 0x5C4D5485);
      *(v58 - 184) = 972359704 - v63 + v59 - ((2 * v59) & 0x73EA1030);
      *(v58 - 200) = v56 - v63 + 222;
      *(v58 - 192) = &STACK[0x4AC];
      v64 = (*(v57 + 8 * (v56 + 964)))(v58 - 200);
      return (*(v57 + 8 * ((((v56 - 1245658597) & 0x4A3F3CFD ^ 0x48A) * (STACK[0x4D0] == 0)) ^ (v56 + 517))))(v64);
    }
  }

  else
  {
    STACK[0x368] = &STACK[0x590] + v54;
    LODWORD(STACK[0x404]) = 798124000;
    STACK[0x520] = v55 - 80;
    STACK[0x508] = 0;
    LODWORD(STACK[0x3C4]) = 1521934363;
    *(v58 - 196) = v56 - 742307843 * ((((v60 | 0xDD9CB152) ^ 0xFFFFFFFE) - (~v60 | 0x22634EAD)) ^ 0x3C41C3F8) + 68670485;
    (*(v57 + 8 * (v56 + 879)))(v58 - 200);
    v62 = (*(v57 + 8 * (v56 + 911)))(336) == 0;
    return (*(v57 + 8 * ((943 * v62) ^ (v56 - 956))))();
  }
}

uint64_t sub_100028A84()
{
  v3 = STACK[0x390];
  v4 = 1785193651 * ((((v2 - 200) | 0xE8F3167C) - (v2 - 200) + ((v2 - 200) & 0x170CE980)) ^ 0xFB2FFA5C);
  *(v2 - 184) = v4 ^ 0x79AE6FE9;
  *(v2 - 192) = v3;
  *(v2 - 196) = v0 - 562358948 + v4 + 13;
  v5 = (*(v1 + 8 * (v0 ^ 0x937)))(v2 - 200);
  STACK[0x320] = *(v1 + 8 * v0);
  v6 = STACK[0x2E8];
  STACK[0x568] = v3;
  LODWORD(STACK[0x574]) = 1722939937;
  STACK[0x438] = v6;
  return (*(v1 + 8 * ((1978 * ((((((v0 + 311) | 0x271) + 625) ^ ((*(v3 + 68) & 0x3Fu) - 47 < 0xFFFFFFC0)) & 1) == 0)) ^ ((v0 + 311) | 0x271))))(v5);
}

uint64_t sub_100028C50(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = a5 - 8;
  v14 = (v11 + v13 + v12 + 84) & 0xF;
  v16.val[0].i64[0] = v14;
  v16.val[0].i64[1] = (v11 + v13 + 22) & 0xF;
  v16.val[1].i64[0] = (v11 + v13 + 21) & 0xF;
  v16.val[1].i64[1] = (v11 + v13 + 20) & 0xF;
  v16.val[2].i64[0] = (v11 + v13 + 19) & 0xF;
  v16.val[2].i64[1] = (v11 + v13 + 18) & 0xF;
  v16.val[3].i64[0] = (v11 + v13 + 17) & 0xF;
  v16.val[3].i64[1] = (v11 + v13 + 8) & 0xF ^ 8;
  *(a6 + v13 + v12 - 691) = veor_s8(veor_s8(veor_s8(*(v9 + v14 - 7), *(a6 + v13 + v12 - 691)), veor_s8(*(v10 + v14 - 7), *(v14 + v8 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a1), a2)));
  return (*(v7 + 8 * ((7 * (a4 == v13)) ^ a7)))();
}

uint64_t sub_100028C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * ((-311835188 - (&a14 | 0xED69C5CC) + (&a14 | 0x12963A33)) ^ 0xCB4B766);
  a17 = &a11;
  a18 = v19;
  a15 = v22 + v21 - 358;
  a16 = v22 + 411415298;
  a14 = &a13;
  v23 = (*(v20 + 8 * (v21 ^ 0x8DB)))(&a14);
  return (*(v20 + 8 * ((884 * (*(v19 + 24) != ((v21 + 1011) ^ (v18 - 1762)) + v21 + 325)) ^ v21)))(v23);
}

uint64_t sub_100028E34@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  if (*(a1 + 56) | *(a1 + 40))
  {
    v4 = *(a1 + 24) + a2 == (((v2 + 1313) | 0x40) ^ 0x2F926F04);
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((4 * (((v2 - 46) ^ v5) & 1)) & 0xF7 | (8 * (((v2 - 46) ^ v5) & 1)) | v2)))();
}

uint64_t sub_1000290A8(uint64_t a1)
{
  v8 = (*(v3 + 8 * (v6 ^ 0x874)))(a1, 0);
  if (v8 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v9 = v8;
  result = a1;
  if (v9 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 1852)))(result);
    goto LABEL_8;
  }

  if (v9)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 4) = v5;
  return result;
}

uint64_t sub_10002924C()
{
  v3 = (v0 + 1056) | 0x188;
  *v1 = v3 ^ 0x800005A8 | (((STACK[0x290] - v0) | (v0 - STACK[0x290])) >> 31);
  (*(v2 + 8 * (v0 ^ 0x921)))(STACK[0x2D8]);
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(&STACK[0x18A8] + (v5 & 1));
  v7 = v1[398];
  *v1 = v1[397] ^ 0xE3E9F631 ^ ((v4 & 0x7FFFFFFE | *v1 & 0x80000000) >> 1) ^ *(&STACK[0x18A8] + (v4 & 1));
  v1[(v3 ^ 0x31C) - 1715] = v7 ^ 0xE3E9F631 ^ ((v5 & 0x7FFFFFFE | v4 & 0x80000000) >> 1) ^ v6;
  return (*(v2 + 8 * (v3 ^ 0x31C)))();
}

uint64_t sub_1000293E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, unsigned int a21, uint64_t a22, char *a23, char *a24)
{
  a24 = &a16;
  a22 = a19;
  a23 = &a14;
  a21 = v24 - 143681137 * ((&a20 - 1022370825 - 2 * (&a20 & 0xC30FDBF7)) ^ 0xA2575027) + 1142;
  v28 = (*(v27 + 8 * (v24 + 2045)))(&a20);
  return (*(v27 + 8 * ((((v24 ^ 0x2CE) + 29) * (v25 < v26)) ^ v24)))(v28);
}

uint64_t sub_100029478(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1000294B8()
{
  v5 = (v2 + v4 - 228);
  *v5 = 0xA7A7A7A7A7A7A7A7;
  v5[1] = 0xA7A7A7A7A7A7A7A7;
  return (*(v3 + 8 * ((((v0 & 0x30) == 16) * ((v1 - 449) ^ 0xAA9)) ^ v1)))();
}

uint64_t sub_100029504@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = (a1 - 67530788 + 9 * (v4 ^ 0x28C)) & 0xFFFFF000;
  v6 = (*(v3 + 8 * (v4 + 1701)))(**(v2 + 8 * (v4 - 543)), va, (((v5 ^ 0x18A1CF4) - 1216588127) ^ ((v5 ^ 0xA18D1767) + 393960756) ^ ((v5 ^ 0xA0070B93) + (v4 ^ 0x16F1437F))) + 1225373099, 1) != 0;
  return (*(v3 + 8 * ((122 * v6) ^ v4)))();
}

uint64_t sub_100029628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = (v18 - 595) | 0x612;
  v21 = 1037613739 * ((((v19 - 136) | 0xF3BE6B6C) - ((v19 - 136) & 0xF3BE6B6C)) ^ 0x22BC4613);
  *(v19 - 136) = ((v15 ^ 0x69FD7DFF) - 30691472 + ((v15 << (((v18 - 83) | 0x12) + 15)) & 0xD3FAFBFE)) ^ v21;
  *(v19 - 128) = &a15;
  *(v19 - 120) = v21 + v18 - 309;
  (*(v17 + 8 * (v18 ^ 0xA51)))(v19 - 136);
  *(v19 - 136) = (v20 - 889) ^ (843532609 * ((v19 - 1669286860 - 2 * ((v19 - 136) & 0x9C80B4BC)) ^ 0xC0CDE039));
  *(v19 - 128) = v16;
  *(v19 - 120) = a14;
  v22 = (*(v17 + 8 * (v20 ^ 0xE24)))(v19 - 136);
  return (*(v17 + 8 * (((*(v19 - 132) > 0x23B3030Du) * (((691 * (v20 ^ 0x6F0) - 1276) | 0x190) ^ 0x2E)) ^ v20)))(v22);
}

void sub_100029788(int a1@<W8>)
{
  if (a1 == 546664647)
  {
    v2 = 972359704;
  }

  else
  {
    v2 = -972401728;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_1000297F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = *v63;
  STACK[0x430] = *(v64 + 8 * a8);
  return sub_1000389BC(v65, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100029898@<X0>(int a1@<W8>)
{
  v7 = v2 ^ 0x55D;
  v8 = STACK[0x3E0];
  *(v8 + 392) = v1;
  *(v8 + 396) = STACK[0x3EC];
  *(v8 + 400) = STACK[0x3A8];
  *(v8 + 408) = 2073475255 - v4 + LODWORD(STACK[0x4DC]);
  *(v8 + 416) = v6 + (v4 - 1745916841);
  v9 = (*(v3 + 48 * a1 + 8))(STACK[0x2B8], v8 + 392);
  return (*(v5 + 8 * ((1141 * (v9 + 972359704 - ((((v7 - 1937668981) & 0x737E7FFA) + 1944717960) & (2 * v9)) == 972359704)) ^ v7)))();
}

uint64_t sub_10002996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = v7 + 792127191 + ((v5 - 1388) | 2);
  v10 = (v9 < ((v5 - 1517) | 0x283u) + v8) ^ (a5 + 1016109832 < (v8 + 675));
  v11 = v9 < a5 + 1016109832;
  if (v10)
  {
    v11 = a5 + 1016109832 < (v8 + 675);
  }

  return (*(v6 + 8 * ((67 * !v11) ^ v5)))();
}

uint64_t sub_1000299E4@<X0>(int a1@<W8>)
{
  v8 = v5 + v3;
  v9 = v5 - 1;
  *(*v6 + (v2 + v9)) = *(*v6 + v8);
  return (*(v7 + 8 * (((v9 == a1) * v4) ^ v1)))();
}

uint64_t sub_100029A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v15 = (v8 ^ 0x98437BEB) + v10;
  *(v13 + 4 * v14) = v15 + v8 - (v9 & (2 * v15));
  return (*(v7 + 8 * (((((((v12 + 102) ^ a5) * a7 + 1) ^ (HIDWORD(v15) == 0)) & 1) * v11) ^ (v12 + 614))))();
}

uint64_t sub_100029A9C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = (a2 + 261) ^ (a2 + 18);
  v5 = (*(v2 + 19504))();
  if (v5 == (v3 ^ 0x363))
  {
    v6 = -42029;
  }

  else
  {
    v6 = -42030;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  (*(v2 + 18696))(a1);
  return v7;
}

void sub_100029B68(uint64_t a1)
{
  v1 = *(a1 + 16) - 2066391179 * (((a1 | 0xC3204B52) - a1 + (a1 & 0x3CDFB4AD)) ^ 0x6C07C94A);
  v2 = *(&off_10050ED90 + v1 - 1478) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * v1 + 6792])(32) == 0) * (v1 - 504)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100029C04@<X0>(int a1@<W8>)
{
  v6 = a1 - v3 + 188;
  v7 = v5 + a1 + 1995;
  v8 = v4 - 1413590416 < (v1 - 1189607938);
  if ((v4 - 1413590416) < 0x13CEE619 != (v1 - 1189607938) < 0x13CEE619)
  {
    v8 = (v1 - 1189607938) < 0x13CEE619;
  }

  return (*(v2 + 8 * (((((v6 ^ v8) & 1) == 0) | (8 * (((v6 ^ v8) & 1) == 0))) ^ v7)))();
}

uint64_t sub_100029CBC@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x40C]) = a2;
  LODWORD(STACK[0x4CC]) = a1;
  LODWORD(STACK[0x48C]) = v3;
  LODWORD(STACK[0x514]) = v2;
  LODWORD(STACK[0x47C]) = v4 + 64;
  return sub_10006A02C();
}

void sub_100029D74(uint64_t a1)
{
  v1 = *(a1 + 16) - 50899313 * ((2 * (a1 & 0x166522FE) - a1 - 375726847) ^ 0xFDB5409A);
  v2 = *(a1 + 8);
  if (*(v2 + 4) - 1494181296 >= 0)
  {
    v3 = *(v2 + 4) - 1494181296;
  }

  else
  {
    v3 = 1494181296 - *(v2 + 4);
  }

  if (*(*a1 + 4) - 1494181296 >= 0)
  {
    v4 = *(*a1 + 4) - 1494181296;
  }

  else
  {
    v4 = 1494181296 - *(*a1 + 4);
  }

  v7[1] = v1 + 1564307779 * ((v7 + 671139632 - 2 * (v7 & 0x2800C730)) ^ 0xBF0D0B23) + 2036;
  v8 = v2;
  v5 = *(&off_10050ED90 + v1 - 60) - 8;
  (*&v5[8 * (v1 ^ 0x90B)])(v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_100029F64@<X0>(uint64_t a1@<X8>)
{
  v8 = (LODWORD(STACK[0x51C]) ^ 0xFBD7B7DF) + 2125201152 + ((2 * LODWORD(STACK[0x51C])) & 0xF7AF6FBE);
  v9 = 1785193651 * ((((2 * v5) | 0x9667AAFA) - v5 + 885795459) ^ 0xD8EF395D);
  *(v7 - 160) = a1;
  *(v7 - 168) = v9 + 2 * v2 + (((v1 ^ 0x4CE) + 2013261399) ^ v2) - 1360343592;
  *(v7 - 148) = v8 ^ v9;
  *(v7 - 176) = STACK[0x278];
  v10 = STACK[0x280];
  *(v7 - 200) = v4;
  *(v7 - 192) = v10;
  *(v7 - 184) = v9 + v1 + 1421512155;
  v11 = (*(v6 + 8 * (v1 ^ 0x8E6)))(v7 - 200);
  v12 = *(v7 - 152);
  LODWORD(STACK[0x444]) = v12;
  v13 = *(v6 + 8 * ((2422 * (v12 == 972359704)) ^ v1));
  LODWORD(STACK[0x2B4]) = v3;
  return v13(v11);
}

uint64_t sub_10002A3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v18 - 128) = (v15 + 319) ^ (((((v18 - 128) | 0xA94F27FD) - ((v18 - 128) & 0xA94F27FD)) ^ 0xF5027378) * v17);
  *(v18 - 120) = &a15;
  *(v18 - 112) = &a13;
  v19 = (*(v16 + 8 * (v15 + 1692)))(v18 - 128);
  return (*(v16 + 8 * (((*(v18 - 124) > 0x23B3030Du) * ((v15 + 869) ^ (v15 - 10) ^ 0x2BE)) ^ v15)))(v19);
}

uint64_t sub_10002A494()
{
  *(v2 + 4) = v0;
  *(v5 - 144) = &v7;
  *(v5 - 136) = (v1 + 848) ^ (((((v5 - 144) | 0x88C1202A) - ((v5 - 144) & 0x88C1202A)) ^ 0x9B1DCC0A) * v3);
  *(v5 - 128) = v2;
  return (*(v4 + 8 * (v1 + 2265)))(v5 - 144);
}

uint64_t sub_10002A8CC@<X0>(uint64_t a1@<X1>, const char *a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q1>, int32x4_t a9@<Q2>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v102 = *(v35 + 8 * a6);
  v42 = *(v40 - 156);
  v43 = *(v40 - 152);
  v45 = *(v40 - 148);
  v44 = *(v40 - 144);
  v46 = *(v40 - 132);
  if (v46 == 2)
  {
    v103 = vld4q_s8(a2);
    v82 = veorq_s8(v103.val[1], a7);
    _Q21 = vmovl_high_u8(v82);
    _Q20 = vmovl_u8(*v82.i8);
    v85 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v86 = vmovl_u8(*&veorq_s8(v103.val[2], a7)).u64[0];
    v103.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v103.val[3], a7)));
    v87 = vorrq_s8(vorrq_s8(vorrq_s8(v85, vshll_n_u16(v86, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v103.val[0], a7))), 0x18uLL)), v103.val[2]);
    v103.val[2] = veorq_s8(vandq_s8(v87, a8), (*&v103.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    *v33 = vaddq_s32(vsubq_s32(v87, vaddq_s32(v103.val[2], v103.val[2])), a9).u32[0];
    v88 = &v33[v37 + 662480027];
    v89 = *(v88 - 16);
    *v88 = v39 ^ __ROR4__(*(v88 - 8) ^ *(v88 - 3) ^ *(v88 - 14) ^ v89, 31);
    return (*(v35 + 8 * (((v34 ^ (v38 + 251)) == 662480028) | (4 * ((v34 ^ (v38 + 251)) == 662480028)) | 0x6A0u)))(v89, a1, a2, v42, a3, a4, a5, v43, a10, a11, a12, a13, a14, a15, a16, v102, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  }

  else if (v46 == 1)
  {
    v104 = vld4q_s8(a2);
    v47 = a1 + v41 + 196;
    v48 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v104.val[0], a7)));
    v49 = veorq_s8(v104.val[2], a7);
    _Q25 = vmovl_u8(*v49.i8);
    _Q24 = vmovl_high_u8(v49);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v104.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v104.val[3], a7))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v104.val[1], a7)), 8uLL), v48));
    v58 = veorq_s8(vandq_s8(v104.val[2], vdupq_n_s32(0x39F5081Fu)), (*&v48 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    *v33 = vaddq_s32(vsubq_s32(v104.val[2], vaddq_s32(v58, v58)), a9).u32[0];
    v59 = v42 ^ v36;
    v60 = v44;
    v61 = *(&off_10050ED90 + v47 - 271) - 8;
    v62 = *(&off_10050ED90 + v47 - 303) - 4;
    v63 = (v43 & 0x5DC8EBB8 ^ 0x51004288 ^ (v43 ^ 0xF337468B) & (v44 ^ 0x510052CC) | v45 & 0xF2EDDB ^ 0xC0A950 ^ (v43 ^ 0xC3A54AF) & (v45 ^ v36)) + v59 + *&v62[4 * a18 + 4 * v37] + (v33[(v61[a18 + v37] - 69)] ^ v39);
    v64 = (v63 ^ 0xB3708599) & (2 * (v63 & 0xBB8021C1)) ^ v63 & 0xBB8021C1;
    v65 = ((2 * (v63 ^ 0x8570871B)) ^ 0x7DE14DB4) & (v63 ^ 0x8570871B) ^ (2 * (v63 ^ 0x8570871B)) & 0x3EF0A6DA;
    v66 = v65 ^ 0x210A24A;
    v67 = (v65 ^ 0x3C102440) & (4 * v64) ^ v64;
    v68 = ((4 * v66) ^ 0xFBC29B68) & v66 ^ (4 * v66) & 0x3EF0A6D8;
    v69 = (v68 ^ 0x3AC08240) & (16 * v67) ^ v67;
    v70 = ((16 * (v68 ^ 0x4302492)) ^ 0xEF0A6DA0) & (v68 ^ 0x4302492) ^ (16 * (v68 ^ 0x4302492)) & 0x3EF0A6D0;
    v71 = v69 ^ 0x3EF0A6DA ^ (v70 ^ 0x2E002400) & (v69 << 8);
    v72 = (v71 << 16) & 0x3EF00000 ^ v71 ^ ((v71 << 16) ^ 0x26DA0000) & (((v70 ^ 0x10F0825A) << 8) & 0x3EF00000 ^ 0xE500000 ^ (((v70 ^ 0x10F0825A) << 8) ^ 0x70A60000) & (v70 ^ 0x10F0825A));
    v73 = *(*(&off_10050ED90 + (v47 ^ 0x124)) + a18 + v37 - 12);
    v74 = (v73 + 1602598733) ^ (((v73 + 1602598733) ^ 0x603CD24Eu) - 1069114819);
    LOBYTE(v70) = (v73 + 77) ^ (((v73 + 77) ^ 0x4E) + 61) ^ (((v73 + 77) ^ 0xD) + 0x80) ^ (((v73 + 77) ^ 0x31) + 68) ^ (-(v73 + 77) - 115) ^ 0xED;
    v75 = (((v43 ^ 0x110BBEFF) - 285982463) ^ ((v43 ^ 0xF4388DFC) + 197620228) ^ ((v43 ^ 0xE9FB8A77) + 369390985)) + 905047894 + (((v63 ^ (2 * v72) ^ 0x8BC16C75) << (v70 & 0x14) << (v70 & 0xB)) | ((v63 ^ (2 * v72) ^ 0x8BC16C75) >> -v73));
    v76 = (v75 ^ 0xC686C89D) & (2 * (v75 & 0xD6D6CA1E)) ^ v75 & 0xD6D6CA1E;
    v77 = ((2 * (v75 ^ 0x43275C89)) ^ 0x2BE32D2E) & (v75 ^ 0x43275C89) ^ (2 * (v75 ^ 0x43275C89)) & 0x95F19696;
    v78 = v77 ^ 0x94109291;
    v79 = (v77 ^ 0x1E10000) & (4 * v76) ^ v76;
    v80 = ((4 * v78) ^ 0x57C65A5C) & v78 ^ (4 * v78) & 0x95F19694;
    return (*(v35 + 8 * ((125 * (a18 + 1 != v38)) ^ v47)))((((v80 ^ 0x15C01200) & (16 * v79) ^ v79 ^ 0x95F19697 ^ (((16 * (v80 ^ 0x80318483)) ^ 0x5F196970) & (v80 ^ 0x80318483) ^ (16 * (v80 ^ 0x80318483)) & 0x95F19690 ^ 0x15110000) & (((v80 ^ 0x15C01200) & (16 * v79) ^ v79) << 8)) << 16) ^ 0x16970000, v61, v74, v60, a3, v62, a5, v43, a10, a11, a12, a13, a14, a15, a16, v102, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  }

  else
  {
    v90 = (((v42 ^ 0xA3431CC2) + 1555882814) ^ ((v42 ^ 0xA4BCD0E1) + 1531129631) ^ ((v42 ^ 0xB377557) - 188183895)) + (((*(v40 - 156) ^ 0x33721810) - 863115280) ^ ((*(v40 - 156) ^ 0xCDA5E08E) + 844767090) ^ ((*(v40 - 156) ^ 0xF21F41EA) + 232832534)) + 2011253149;
    v91 = (((v43 ^ 0xAEA5BE94) + 1364869484) ^ ((v43 ^ 0xBD21A7CA) + 1121867830) ^ ((v43 ^ 0x1F4CA02A) - 525115434)) + (((*(v40 - 152) ^ 0x744BCEC4) - 1951125188) ^ ((*(v40 - 152) ^ 0x3EC034DE) - 1052783838) ^ ((*(v40 - 152) ^ 0x4643436E) - 1178813294)) + 1784124952;
    *(v40 - 156) = v90 ^ ((v90 ^ 0xD18CAC8C) + 1883014599) ^ ((v90 ^ 0x112676FD) - 1332322376) ^ ((v90 ^ 0x511CF73B) - 257106318) ^ ((v90 ^ 0xCFF9FBFF) + 1850331830) ^ 0x52876FC1;
    *(v40 - 152) = v91 ^ ((v91 ^ 0x7E584CC0) - 782135280) ^ ((v91 ^ 0xFEF32AE4) + 1372255788) ^ ((v91 ^ 0xC7923AEB) + 1756096037) ^ ((v91 ^ 0x17FF7FFF) - 1194941647) ^ 0x5C0E9A44;
    v92 = (((v45 ^ 0xEED7B306) + 287853818) ^ ((v45 ^ 0x7BF18748) - 2079426376) ^ ((v45 ^ 0x99EE8D3A) + 1712419526)) + (((*(v40 - 148) ^ 0xD9270B7C) + 651752580) ^ ((*(v40 - 148) ^ 0x75E1E774) - 1977739124) ^ ((*(v40 - 148) ^ 0xA00E557C) + 1609673348)) + 1005235981;
    v93 = (((v44 ^ 0x6E6F4347) - 1852785479) ^ ((v44 ^ 0x5FEC4173) - 1609318771) ^ ((v44 ^ 0x3D4BBB40) - 1028373312)) + (((*(v40 - 144) ^ 0xE73545FA) + 415939078) ^ ((*(v40 - 144) ^ 0x7E788356) - 2121827158) ^ ((*(v40 - 144) ^ 0x95857FD8) + 1786413096)) + 1940001566;
    v94 = (v93 ^ 0x21CF1FAB) & (2 * (v93 & 0xA5EF5FCA)) ^ v93 & 0xA5EF5FCA;
    v95 = ((2 * (v93 ^ 0x68858FBB)) ^ 0x9AD5A0E2) & (v93 ^ 0x68858FBB) ^ (2 * (v93 ^ 0x68858FBB)) & 0xCD6AD070;
    v96 = v95 ^ 0x452A5011;
    v97 = (v95 ^ 0xC8408061) & (4 * v94) ^ v94;
    v98 = ((4 * v96) ^ 0x35AB41C4) & v96 ^ (4 * v96) & 0xCD6AD070;
    v99 = (v98 ^ 0x52A4040) & (16 * v97) ^ v97;
    v100 = ((16 * (v98 ^ 0xC8409031)) ^ 0xD6AD0710) & (v98 ^ 0xC8409031) ^ (16 * (v98 ^ 0xC8409031)) & 0xCD6AD070;
    v101 = v99 ^ 0xCD6AD071 ^ (v100 ^ 0xC4280000) & (v99 << 8);
    *(v40 - 148) = v92 ^ ((v92 ^ 0x4D7A9114) - 1864609073) ^ ((v92 ^ 0xE68E5C22) + 992518137) ^ ((v92 ^ 0xF6000EE8) + 732351795) ^ ((v92 ^ 0x7FADFFFB) - 1576322014) ^ 0x2E918551;
    *(v40 - 144) = v93 ^ (2 * ((v101 << 16) & 0x4D6A0000 ^ v101 ^ ((v101 << 16) ^ 0x50710000) & (((v100 ^ 0x942D061) << 8) & 0x4D6A0000 ^ 0x52A0000 ^ (((v100 ^ 0x942D061) << 8) ^ 0x6AD00000) & (v100 ^ 0x942D061)))) ^ 0xB332465C;
    return v102(3359670369, a1, a2, v42, a3, a4, a5, v43);
  }
}

void sub_10002B094(int a1@<W8>)
{
  v3 = (((v1 ^ 0x89CC5361) + 1983098015) ^ ((v1 ^ 0x57D1E192) - 1473372562) ^ ((v1 ^ 0xD2D50B87) + 757789817)) + 1031522346 + (((*(v2 - 140) ^ 0xB2C51FEB) + 1295704085) ^ ((*(v2 - 140) ^ 0xCE7D25A4) + 830659164) ^ (a1 + (*(v2 - 140) ^ 0x7070833B) - 1886423861));
  *(v2 - 140) = v3 ^ ((v3 ^ 0x3E5586E5) - 499110823) ^ ((v3 ^ 0x9ADB3EA5) + 1187943449) ^ ((v3 ^ 0x789310EC) - 1534674350) ^ ((v3 ^ 0xFFF7FDEE) + 602036052) ^ 0x2F22EC36;
  JUMPOUT(0x10002B1E0);
}

uint64_t sub_10002B7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  a13 = -542396526 - 1388665877 * (((&a13 | 0x50BA22F9) - (&a13 & 0x50BA22F9)) ^ 0xDD174015);
  v16 = (*(v15 + 17952))(&a13);
  return (*(v15 + 8 * ((254 * (a14 == v14)) ^ 0x26F)))(v16);
}

void sub_10002B8E4()
{
  if (v0 == 1726759932)
  {
    v2 = 972359704;
  }

  else
  {
    v2 = -972401728;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_10002BA40@<X0>(int a1@<W4>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned int a29)
{
  v33 = *(&a17 + a2 + 72);
  v34 = ((v29 ^ (a1 - 103) ^ 0x26615817) & (2 * a2)) + (a2 ^ 0x7EFED7AE) + v30;
  *(v31 + v34) = (HIBYTE(v33) ^ 0xC) + (~(2 * (HIBYTE(v33) ^ 0xC)) | 0xB1) - 88;
  *(v31 + v34 + 1) = (BYTE2(v33) ^ 0xC8) - ((v33 >> 15) & 0x4E) - 89;
  *(v31 + v34 + 2) = (BYTE1(v33) ^ 0xB9) - ((2 * (BYTE1(v33) ^ 0xB9)) & 0x4E) - 89;
  *(v31 + v34 + 3) = v33 ^ 0xD3;
  return (*(v32 + 8 * ((862 * (a2 + 4 < a29)) ^ v29)))();
}

void sub_10002BB08(_DWORD *a1)
{
  v1 = *a1 ^ (1037613739 * ((827773174 - (a1 | 0x3156D0F6) + (a1 | 0xCEA92F09)) ^ 0x1FAB0276));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10002BC2C@<X0>(uint64_t a1@<X8>)
{
  v8 = (**(v7 + 8) ^ v3) - (**(v6 + 8) ^ v3);
  **(a1 + 8) = v8 + v3 - ((v5 + ((v2 - 992) | 0x240) - 756) & (2 * v8));
  return (*(v4 + 8 * ((413 * (v1 == 1)) ^ v2)))(0xFFFFFFFFLL);
}

uint64_t sub_10002BD20@<X0>(uint64_t a1@<X8>)
{
  v10 = v1 - 1 + (*(*(v8 + 8) + 4 * v2) ^ v5);
  *(*(a1 + 8) + 4 * v2) = v5 + (v4 ^ 0x3A1) + v10 - (v7 & (2 * v10)) - 322;
  return (*(v6 + 8 * (((v2 + 1 == v9) * v3) ^ v4)))(0xFFFFFFFFLL);
}

uint64_t sub_10002BD88@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v9 = (v8 - v3 + ((a1 + 34) ^ 0x58)) & 0xF;
  v12.val[0].i64[0] = v9;
  v12.val[0].i64[1] = (v8 - v3 + 14) & 0xF;
  v12.val[1].i64[0] = (v8 - v3 + 13) & 0xF;
  v12.val[1].i64[1] = (v8 - v3 + 12) & 0xF;
  v12.val[2].i64[0] = (v8 - v3 + 11) & 0xF;
  v12.val[2].i64[1] = (v8 - v3 + 10) & 0xF;
  v12.val[3].i64[0] = (v8 - v3 + 9) & 0xF;
  v12.val[3].i64[1] = (v8 - v3) & 0xF ^ 8;
  *(a2 + -7 - v3 + v8 + ((a1 + 1570) ^ 0xFFFFFFFFFFFFF958)) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v4 + -7 - v3 + v8 + ((a1 + 1570) ^ 0xFFFFFFFFFFFFF958)), *(v6 + v9 - 7)), veor_s8(*(v9 + v7 - 2), *(v9 + v5 - 5)))), 0xA7A7A7A7A7A7A7A7), vmul_s8(*&vqtbl4q_s8(v12, xmmword_1003EFF80), 0x5959595959595959)));
  v10 = 8 - (v8 & 0x18) == -v3;
  return (*(v2 + 8 * ((2 * v10) | (8 * v10) | a1)))(v8 & 7, xmmword_1003EFF80);
}

uint64_t sub_10002BF2C()
{
  v4 = v0 - 1927655755;
  v5 = (v4 < 0xF9808875) ^ ((v3 - 1630951334) < 0xF9808875);
  v6 = v3 - 1630951334 > v4;
  if (v5)
  {
    v6 = (v3 - 1630951334) < 0xF9808875;
  }

  return (*(v1 + 8 * ((((203 * (((v2 - 312) | 0x208) ^ 0x361)) ^ 0x65A) * v6) | v2)))();
}

uint64_t sub_10002BFBC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = ((v5 - a2 - 1468) ^ 0xFFFFFFFFFFFFFF33) + v4;
  v8 = *(v3 + v7 - 15);
  v9 = *(v3 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((1189 * ((v4 & 0xFFFFFFE0) == 32)) ^ (v2 + v5 + 777))))();
}

uint64_t sub_10002C088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = *(STACK[0x2A0] + 52);
  v77 = 210068311 * (((v73 | 0x9DF8A46D) - v73 + (v73 & 0x62075B90)) ^ 0xF2E9BC9);
  *(v75 - 176) = ((v71 ^ 0xFFF07FFB) + 2100297216 + ((v71 << ((v70 + 66) ^ 0xA9)) & 0xFFE0FFF6)) ^ v77;
  *(v75 - 160) = v77 + 705056782 + v76;
  *(v75 - 184) = &STACK[0x1898];
  *(v75 - 192) = v70 - v77 - 330;
  *(v75 - 188) = a70 ^ v77;
  *(v75 - 168) = STACK[0x288];
  *(v75 - 200) = v72;
  v78 = (*(v74 + 8 * (v70 + 2092)))(v75 - 200);
  v79 = *(v75 - 156);
  LODWORD(STACK[0x444]) = v79;
  v80 = *(v74 + 8 * ((250 * (v79 == 972359704)) ^ v70));
  LODWORD(STACK[0x2B4]) = v71;
  return v80(v78);
}

void sub_10002C1A0(int a1@<W8>)
{
  v6 = ((v2 ^ 0x6D0) + 660) ^ 0x40000331 | v1;
  v7 = *(v3 + 4) + a1;
  v8 = *v3;
  *(*v3 + v7) = (HIBYTE(v6) ^ 0x2F) + (~(2 * (HIBYTE(v6) ^ 0x2F)) | 0xB1) - 88;
  *(v8 + v7 + 1) = (BYTE2(v6) ^ 0xF9) - ((2 * (BYTE2(v6) ^ 0xF9)) & 0x4E) - 89;
  *(v8 + v7 + 2) = (BYTE1(v6) ^ 0x75) - ((2 * (BYTE1(v6) ^ 0x75)) & 0x4E) - 89;
  *(v8 + v7 + 3) = v6 ^ 0x15;
  v9 = *v3;
  v10 = ((v4 ^ 0x5D42A4BE) - 1078196344) ^ v4 ^ ((v4 ^ 0xC5F7323E) + 654938376) ^ ((v4 ^ 0x5A4B3D28) - 1196057070) ^ ((v4 ^ 0xDFFFF76E) + 1023497304);
  v11 = ((2 * (a1 + *(v3 + 4) + 4)) & 0xF9F7B954) + ((a1 + *(v3 + 4) + 4) ^ 0x7CFBDCAA) - 2096880810;
  *(*v3 + v11) = (HIBYTE(v10) ^ 0x1D) + (~(2 * (HIBYTE(v10) ^ 0x1D)) | 0xB1) - 88;
  *(v9 + v11 + 1) = (BYTE2(v10) ^ 1) - ((2 * (BYTE2(v10) ^ 1)) & 0x4E) - 89;
  *(v9 + v11 + 2) = (BYTE1(v10) ^ 0x5C) - ((2 * (BYTE1(v10) ^ 0x5C)) & 0x4E) - 89;
  *(v9 + v11 + 3) = ((v4 ^ 0xBE) - 120) ^ v4 ^ ((v4 ^ 0x3E) + 8) ^ ((v4 ^ 0x28) + 18) ^ ((v4 ^ 0x6E) + 88) ^ 0x61;
  *(v3 + 4) = v5 - 486628542;
  sub_10005E298();
}

uint64_t sub_10002C84C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = ((a12 ^ 0x65F5F0FD) - 709506519) ^ a12 ^ ((a12 ^ 0xFBC6CC6A) + 1267136192) ^ ((a12 ^ v13 ^ 0xAA720105) + 439500216) ^ ((a12 ^ (a3 + 34) ^ 0x7BFEF909) - 876690421);
  v16 = v14 == 1337967914 || (((16 * (a3 + 34)) ^ 0x7D6F) & v14) != 10;
  return (*(v12 + 8 * (((4 * v16) | (32 * v16)) ^ (a3 + 34))))();
}

uint64_t sub_10002CB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  LODWORD(STACK[0x400]) = -1244670490;
  LODWORD(STACK[0x398]) = 128;
  v60 = 1785193651 * ((((v59 - 200) | 0x880AA2D6) - (v59 - 200) + ((v59 - 200) & 0x77F55D28)) ^ 0x9BD64EF6);
  *(v59 - 184) = 1177225436 - v60;
  *(v59 - 176) = &STACK[0x398];
  *(v59 - 168) = (v57 - 308) ^ v60;
  *(v59 - 136) = a57 + 656;
  *(v59 - 128) = a57;
  *(v59 - 160) = a57 + 928;
  *(v59 - 152) = a53;
  *(v59 - 144) = 0;
  *(v59 - 192) = 0;
  v61 = (*(v58 + 8 * (v57 ^ 0xC67)))(v59 - 200);
  return (*(v58 + 8 * (((*(v59 - 200) == 972359704) * ((((v57 - 1190755642) & 0x46F97DAB) + 476) ^ 0xAA9)) ^ v57)))(v61);
}

uint64_t sub_10002D058@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v8 = (STACK[0x3B0] + 31);
  a7[12] = ((a1 - 99) ^ 0x45) + (~(2 * ((a1 - 99) ^ 0x45)) | 0xB1) - 88;
  a7[13] = -89;
  a7[14] = -89;
  a7[15] = -90;
  *(v8 - 15) ^= *a7 ^ 0xA7;
  *(v8 - 14) ^= a7[1] ^ 0xA7;
  *(v8 - 13) ^= a7[2] ^ 0xA7;
  *(v8 - 12) ^= a7[3] ^ 0xA7;
  *(v8 - 11) ^= a7[4] ^ 0xA7;
  *(v8 - 10) ^= a7[5] ^ 0xA7;
  *(v8 - 9) ^= a7[6] ^ 0xA7;
  *(v8 - 8) ^= a7[7] ^ 0xA7;
  *(v8 - 7) ^= a7[8] ^ 0xA7;
  *(v8 - 6) ^= a7[9] ^ 0xA7;
  *(v8 - 5) ^= a7[10] ^ 0xA7;
  *(v8 - 4) ^= a7[11] ^ 0xA7;
  *(v8 - 3) ^= a7[12] ^ 0xA7;
  *(v8 - 2) ^= a7[13] ^ 0xA7;
  *(v8 - 1) ^= a7[14] ^ 0xA7;
  *v8 ^= a7[15] ^ 0xA7;
  return (*(v7 + 8 * (a1 + 734)))(2773032933, 4294967215, 182, 390, 175332898, 78);
}

uint64_t sub_10002D254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = a18 - 362467034 > a15;
  if (a15 < a14 != a18 - 362467034 < ((v22 + 1607) ^ 0xEA652E44) + v22 + 2211)
  {
    v23 = a18 - 362467034 < ((v22 + 1607) ^ 0xEA652E44) + v22 + 2211;
  }

  return (*(v21 + 8 * ((25 * v23) ^ (v22 + 808))))(197, a2, 78, 486, a21);
}

uint64_t sub_10002D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(a56) = 0;
  LODWORD(STACK[0x400]) = -1244670722;
  v71 = &STACK[0x590] + a68;
  v72 = (v68 ^ 0x45BLL) + a68;
  STACK[0x520] = v72;
  *v71 = 0x6370646600;
  v71[8] = 1;
  STACK[0x220] = &STACK[0x590] + v72;
  v73 = ~(16 * (&STACK[0x590] + v72)) & 0x10;
  STACK[0x2D8] = STACK[0x3C8];
  STACK[0x228] = &STACK[0x590] + a68 + 9;
  v74 = *(v70 + 8 * (((((v68 ^ 0x78B) + 2139408456) & 0x807B37FF) - 1278) ^ (249 * (v68 ^ 0x2E8)) ^ v68 ^ 0x78B));
  STACK[0x2E8] = *(&off_10050ED90 + ((v68 ^ 0x78B) - 1187));
  STACK[0x2E0] = *(&off_10050ED90 + (v68 ^ 0x241)) - 4;
  return v74(a1, a2, a3, a4, &STACK[0x590] + a68 + 9, v73, 119, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v69, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a64 + 2304, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a64 + 2176, 0, &STACK[0x590] + a68 + 128, a56, &STACK[0x590] + a68, a58, a59, a60, a61, a62);
}

uint64_t sub_10002D864(uint64_t a1, int a2)
{
  v14 = (v12 + 4 * v8);
  v15 = HIDWORD(v3) + v5 * (*(v6 + 4 * v8) ^ v2) + (*v14 ^ v2) + HIDWORD(v4) + v7 * (*(v13 + 4 * v8) ^ (v2 + v11 + 1482 - 1875));
  *(v14 - 1) = v15 + v2 - (a2 & (2 * v15));
  return (*(v9 + 8 * (v11 | (2 * (v8 + 1 != v10)))))();
}

uint64_t sub_10002D934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t (*a24)(void))
{
  v28 = (((v27 ^ 0xC0C7816E) + 1060667026) ^ ((v27 ^ 0x3E085CE8) - 1040735464) ^ ((v27 ^ 0xF20764F2) + 234396430)) + (((LODWORD(STACK[0x2C0]) ^ 0xC166D9D3) + 1050224173) ^ ((LODWORD(STACK[0x2C0]) ^ 0x66F2F76B) - 1727199083) ^ ((LODWORD(STACK[0x2C0]) ^ 0xAB5C97CC) + 1419995188)) + 872838907;
  v29 = (((v25 ^ 0x404449AC) - 1078217132) ^ ((v25 ^ 0x4D425412) - 1296192530) ^ ((v25 ^ 0x1CEA4CA) - 30319818)) + (((LODWORD(STACK[0x2C4]) ^ 0x3CE75113) - 1021792531) ^ ((LODWORD(STACK[0x2C4]) ^ 0xC10D9B37) + 1056072905) ^ ((LODWORD(STACK[0x2C4]) ^ 0xF1227350) + 249400496)) + 1909073635;
  v30 = (v29 ^ 0x37A66F41) & (2 * (v29 & 0xA7C74C05)) ^ v29 & 0xA7C74C05;
  v31 = ((2 * (v29 ^ 0x7F246F4B)) ^ 0xB1C6469C) & (v29 ^ 0x7F246F4B) ^ (2 * (v29 ^ 0x7F246F4B)) & 0xD8E3234E;
  v32 = v31 ^ 0x48212142;
  v33 = (v31 ^ 0x9002000C) & (4 * v30) ^ v30;
  v34 = ((4 * v32) ^ 0x638C8D38) & v32 ^ (4 * v32) & 0xD8E3234C;
  v35 = (v34 ^ 0x40800100) & (16 * v33) ^ v33;
  v36 = ((16 * (v34 ^ 0x98632246)) ^ 0x8E3234E0) & (v34 ^ 0x98632246) ^ (16 * (v34 ^ 0x98632246)) & 0xD8E32340;
  v37 = v35 ^ 0xD8E3234E ^ (v36 ^ 0x88222000) & (v35 << 8);
  LODWORD(STACK[0x2C0]) = v28 ^ ((v28 ^ 0xFBA9C86B) + 505623432) ^ ((v28 ^ 0x4826A3C3) - 1381214160) ^ ((v28 ^ 0xDC05F045) + 965675946) ^ ((v28 ^ 0x75FF9FFE) - 1871354861) ^ 0x16BDBD67;
  LODWORD(STACK[0x2C4]) = v29 ^ (2 * ((v37 << 16) & 0x58E30000 ^ v37 ^ ((v37 << 16) ^ 0x234E0000) & (((v36 ^ 0x50C1030E) << 8) & 0x58E30000 ^ 0x18C00000 ^ (((v36 ^ 0x50C1030E) << 8) ^ 0x63230000) & (v36 ^ 0x50C1030E)))) ^ 0x1A4DB3ED;
  v38 = (((v26 ^ 0xDCDDFA6B) + 589432213) ^ ((v26 ^ 0x68931EA0) - 1754472096) ^ ((v26 ^ 0xB8865DBF) + 1199153729)) + (((LODWORD(STACK[0x2C8]) ^ 0x230BFD39) - 587988281) ^ ((LODWORD(STACK[0x2C8]) ^ 0x75758351) - 1970635601) ^ ((LODWORD(STACK[0x2C8]) ^ 0x5AB6C71C) - 1521927964)) + 1995407564;
  v39 = (((v24 ^ 0x74685B8) - 122062264) ^ ((v24 ^ 0x4BF6F872) - 1274476658) ^ ((v24 ^ 0x4078C4BE) - 1081656510)) + (((LODWORD(STACK[0x2CC]) ^ 0xDF4254D) - 234104141) ^ ((LODWORD(STACK[0x2CC]) ^ 0x6A9240B2) - 1787969714) ^ ((LODWORD(STACK[0x2CC]) ^ 0x6BAEDC8B) - 1806621835)) + 1169113745;
  v40 = (v39 ^ 0xC3E0BA56) & (2 * (v39 & 0xD3E23057)) ^ v39 & 0xD3E23057;
  v41 = ((2 * (v39 ^ 0xE4209AFE)) ^ 0x6F855552) & (v39 ^ 0xE4209AFE) ^ (2 * (v39 ^ 0xE4209AFE)) & 0x37C2AAA8;
  v42 = v41 ^ 0x1042AAA9;
  v43 = v40 ^ 0x37C2AAA9 ^ (v41 ^ 0x7800000) & (4 * v40);
  v44 = ((4 * v42) ^ 0xDF0AAAA4) & v42 ^ (4 * v42) & 0x37C2AAA8;
  v45 = v44 & 0x80D45E4 ^ v43 ^ (v44 ^ 0x1702AAA9) & ((16 * v43) ^ 0x7427EF74);
  v46 = ((16 * v44) ^ 0x7827EFE4) & (v44 ^ 0x1702AAA9) ^ v44 & 0x80D45E4;
  v47 = v46 & 0x80D45E4 ^ v45 ^ ((v45 << 8) ^ 0xCAA74CE4) & (v46 ^ 0xA9);
  LODWORD(STACK[0x2C8]) = v38 ^ ((v38 ^ 0xE728F2B7) + 1166606509) ^ ((v38 ^ 0x2FA0F64B) - 1929313199) ^ ((v38 ^ 0x6809E7B6) - 894954066) ^ ((v38 ^ 0xFDDFEEAE) + 1602100406) ^ 0x5196B490;
  LODWORD(STACK[0x2CC]) = v39 ^ (2 * (v47 ^ (((v46 << 8) ^ 0x80DE5E4) & (v46 ^ 0xA9) ^ v46 & 0x80D45E4) & 0x80D45E4 ^ ((v47 << 16) ^ 0xA2A445E6) & (((v46 << 8) ^ 0x80DE5E4) & (v46 ^ 0xA9) ^ v46 & 0x80D45E4 ^ 0x37C20000) ^ ((v47 << 16) ^ 0xA2A445E6) & 0x37C200A0)) ^ 0xB0AFDD31;
  return a24();
}

uint64_t sub_10002D9C0@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, unint64_t *, uint64_t))
{
  v15 = 2066391179 * ((v14 + 299908024 - 2 * ((v14 - 176) & 0x11E03C68)) ^ 0xBEC7BE70);
  *(v14 - 168) = a1;
  *(v14 - 176) = a2 - v15 + 344;
  *(v14 - 172) = 2083296428 - v15;
  v16 = (*(v13 + 8 * (a2 + 2313)))(v14 - 176);
  return a13(v16, &STACK[0x22C], 78);
}

uint64_t sub_10002DA48()
{
  v4 = v2 + 1120;
  if ((v1 - 1) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((v4 - 97863309) & 0x5D5471E ^ 0xFFFFF8E8) - v0 >= v1 - 1;
  }

  v6 = !v5;
  return (*(v3 + 8 * ((90 * v6) ^ v4)))();
}

uint64_t sub_10002DBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = (v4 + 1014) - v3 - 1010;
  v9 = *(a3 + v8 - 15);
  v10 = *(a3 + v8 - 31);
  v11 = v6 + v8;
  v12.i64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v12.i64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v13.i64[0] = 0xA8A8A8A8A8A8A8A8;
  v13.i64[1] = 0xA8A8A8A8A8A8A8A8;
  *(v11 - 15) = vaddq_s8(vaddq_s8(v9, v13), vmvnq_s8(vandq_s8(vaddq_s8(v9, v9), v12)));
  *(v11 - 31) = vaddq_s8(vaddq_s8(v10, v13), vmvnq_s8(vandq_s8(vaddq_s8(v10, v10), v12)));
  return (*(v7 + 8 * (((v3 != 96) * v5) ^ v4)))();
}

uint64_t sub_10002DCC0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v64 = a1 + v59;
  *(v63 - 200) = (v59 - 224640684) ^ (1785193651 * ((2 * ((v63 - 200) & 0x1ABA3B0) - (v63 - 200) - 28025782) ^ 0xED88B06A));
  (*(v62 + 8 * (a1 + v59 + 2344)))(v63 - 200);
  if (((v60 - v59) | (v59 - v60)) > ((v64 + 391) | 0x420) - 1449)
  {
    v65 = 86;
  }

  else
  {
    v65 = 87;
  }

  *(v63 - 200) = (v59 ^ 0xC3) - -77 * ((v63 + 56) ^ 0x20) + v65;
  *(v63 - 196) = (v64 + 952) ^ (1785193651 * ((v63 - 200) ^ 0x13DCEC20));
  *(v63 - 184) = a58;
  *(v63 - 176) = a59;
  v66 = (*(v62 + 8 * (v59 ^ (v61 + 1739))))(v63 - 200);
  return sub_10004FD4C(v66);
}

uint64_t sub_10002DDAC(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = -15;
  }

  else
  {
    v2 = -17;
  }

  *(a1 + 88) = ((**(a2 + 8) != 0) ^ 0x53) + v2;
  return 0;
}

uint64_t sub_10002DE14@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, int a6, unsigned int a7)
{
  v11 = ((-2076228419 - (&a3 | 0x843F44BD) + (&a3 | 0x7BC0BB42)) ^ 0xAAC2963D) * a1;
  a3 = v11 + 262583610;
  a6 = (v10 + 244) ^ v11;
  a7 = 486628562 - v11;
  a4 = v7;
  a5 = &a2;
  v12 = (*(v8 + 8 * (v10 + 1826)))(&a3);
  return (*(v8 + 8 * (((*(v7 + 24) == v9) * ((((v10 + 76990664) & 0xFB6937FE) - 647) ^ (5 * (v10 ^ 0x200)))) ^ v10)))(v12);
}

void sub_10002DEE0(uint64_t a1)
{
  v1 = 2066391179 * (((a1 | 0x20DD57A5) - (a1 & 0x20DD57A5)) ^ 0x8FFAD5BD);
  v2 = *(*(a1 + 8) + 12) + 2089713947;
  v3 = (*(a1 + 4) ^ v1) - 1584428433;
  v4 = (v3 < 0xA596087F) ^ (v2 < 0xA596087F);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0xA596087F;
  }

  __asm { BRAA            X11, X17 }
}

uint64_t sub_10002E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  v27 = 843532609 * (((&a17 | 0x5F5F372) - &a17 + (&a17 & 0xFA0A0C88)) ^ 0x59B8A7F7);
  HIDWORD(a18) = v23 - ((2 * v23) & 0x15776F42) - v27 - 1967409247;
  LODWORD(a19) = v27 ^ 0x5C7;
  a17 = a14;
  (*(v25 + 18840))(&a17);
  v28 = 1037613739 * (&a17 ^ 0xD1022D7F);
  a18 = a14;
  a19 = v21;
  a20 = v28 ^ 0x131;
  a21 = (v22 ^ 0x6FEBBAF6) + v28 - 1635911808;
  (*(v25 + 19072))(&a17);
  v29 = 1037613739 * (((&a17 | 0xDBFB7556) - &a17 + (&a17 & 0x24048AA8)) ^ 0xAF95829);
  a20 = v29 ^ 0x131;
  a21 = ((2 * v26) & 0xBDF776EC) + (v26 ^ 0x5EFBBB76) - 1351747840 + v29;
  a18 = a14;
  a19 = v24;
  v30 = (*(v25 + 19072))(&a17);
  return (*(v25 + 8 * ((223 * (a17 != 972359704)) ^ 0x15Eu)))(v30);
}

uint64_t sub_10002E34C@<X0>(int a1@<W8>)
{
  v5 = v1 + a1;
  v6 = **(&off_10050ED90 + v1 + a1 - 517);
  v7 = 143681137 * ((((v4 - 152) | 0x18F845A27F2F7E20) - ((v4 - 152) & 0x18F845A27F2F7E20)) ^ 0xA97177161E77F5F0);
  *(v4 - 112) = v7;
  *(v3 + 1072) = v6 - v7;
  *(v4 - 144) = (a1 + 2078544719) ^ v7;
  *(v4 - 140) = a1 + 511999040 - v7;
  *(v4 - 152) = (a1 + 511999114) ^ v7;
  *(v4 - 148) = ((a1 + 511999040) | 4) + v7;
  *(v3 + 1056) = v7;
  v8 = (*(v2 + 8 * (v5 + 1752)))(v4 - 152);
  return (*(v2 + 8 * *(v4 - 128)))(v8);
}

uint64_t sub_10002E358()
{
  *(v2 - 184) = &STACK[0x5085E76DB9DAF690];
  *(v2 - 176) = &STACK[0x7E1AE0F446D033F1];
  *(v2 - 200) = 86 - -77 * (((~(v2 + 56) | 0x36) + ((v2 + 56) | 0xC9)) ^ 0xE8);
  *(v2 - 196) = (v0 + 668) ^ (1785193651 * (((~(v2 - 200) | 0x10E18F36) + ((v2 - 200) | 0xEF1E70C9)) ^ 0xFCC29CE8));
  v3 = (*(v1 + 8 * (v0 + 2097)))(v2 - 200);
  v4 = *(v2 - 192);
  LODWORD(STACK[0x444]) = v4;
  return (*(v1 + 8 * ((52 * (v4 != (((v0 - 273) | 0x421) ^ 0x39F50C35))) ^ v0)))(v3);
}

void sub_10002E8DC(_DWORD *a1)
{
  v5 = v4 + v1;
  *a1 = v5 + 1;
  v6 = a1 + 1;
  *(v6 + v2) = v3;
  *(v6 + v1) = 47;
  *(v6 + v5) = 61;
  *(v6 + v5 + 1) = 0;
  JUMPOUT(0x10005582CLL);
}

uint64_t sub_10002EB00@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 - 1 - 31);
  v6 = v3 + v1 - 1;
  *(v6 - 15) = *(a1 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((31 * (17 * ((v2 + 1250) ^ 0x581u) - 665 == (v1 & 0xFFFFFFE0))) ^ (v2 + 579))))();
}

uint64_t sub_10002EBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, int a17, uint64_t a18)
{
  a15 = v22 + 843532609 * ((&a15 + 1141174831 - 2 * (&a15 & 0x4404F22F)) ^ 0x1849A6AA) + 606;
  a16 = a11;
  a18 = v18;
  v23 = (*(v20 + 8 * (v22 + 1556)))(&a15);
  return (*(v20 + 8 * (((a17 == v19) * ((((v22 - 804) | 0x320) - 1711266724) ^ (v21 + 2062))) ^ v22)))(v23);
}

uint64_t sub_10002EC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 128) = &a15;
  *(v18 - 120) = a14;
  *(v18 - 136) = (v17 + 70) ^ (((~((v18 - 136) | 0xAA17C6F5) + ((v18 - 136) & 0xAA17C6F5)) ^ 0x9A56D8F) * v15);
  v19 = (*(v16 + 8 * (v17 ^ 0xBE5)))(v18 - 136);
  return (*(v16 + 8 * ((2007 * (*(v18 - 132) == (((v17 - 289) | 0x4E0) ^ 0x23B305FD))) ^ v17)))(v19);
}

uint64_t sub_10002ED2C(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  v6 = v5 == (v2 - 656) - 792;
  return (*(v4 + 8 * (((8 * v6) | (v6 << 8)) ^ (v2 - 723))))();
}

uint64_t sub_10002ED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == ((v7 + 1132) ^ 0x74C))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return (*(v9 + 8 * ((v10 * ((v7 ^ 0x89) - 605)) ^ v7)))();
}

uint64_t sub_10002F2AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v11 - 132);
  if (v13 == 2)
  {
    return (*(v10 + 8 * ((969 * (*(v11 - 136) != v12 + a2 - 241)) ^ (v12 + a2))))(a10, -659594938);
  }

  if (v13 == 1)
  {
    return (*(v10 + 8 * (((*(v11 - 136) == 0) * (a2 + v12 - 194)) ^ (a2 + v12 - 19))))(a10, -659594938);
  }

  return sub_10002F384(a1, -659594938);
}

uint64_t sub_10002F384@<X0>(char a1@<W1>, int a2@<W8>)
{
  v9 = v5 - v2;
  *(v9 + 91) = ((v2 + v3) ^ v4) * (v2 + v3 + 17);
  *(v9 + 90) = ((v8 + a2 + a1 - 38) ^ (v2 + v3)) * (v2 + v3 + 18);
  return (*(v7 + 8 * (((v2 == 90) * v6) ^ a2)))(0);
}

void sub_10002F3DC(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1037613739 * ((~a1 & 0xB8C3CEDE | a1 & 0x473C3121) ^ 0x69C1E3A1));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10002F49C@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(*(v5 + 8) + 4 * v2) ^ v4) + v1;
  *(*(a1 + 8) + 4 * v2) = (v8 - ((2 * v8) & 0xA6E310F0) - 747534216) ^ 0x4B32F393;
  return (*(v7 + 8 * ((1716 * (v6 > (((17 * (v3 ^ 0x64D)) ^ 0x84C) + v2))) ^ ((v3 ^ 0x66C) + 328))))(2017545039);
}

uint64_t sub_10002F5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = v9 ^ 0x74;
  v14 = (a3 + (v9 ^ 0x74) + a8 + 800) | v11;
  v15 = v8 + 1;
  if (v10)
  {
    v16 = v15 == 200;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  return (*(v12 + 8 * ((((v17 ^ ((v13 + a8) & a3)) & 1) * (v14 - 1932)) ^ v13)))();
}

uint64_t sub_10002F654@<X0>(int a1@<W8>, uint64_t a2, int a3, unsigned int a4, int a5, int a6)
{
  v7 = (((a6 ^ 0xD1E6244D) + 773446579) ^ ((a6 ^ 0x1449BED4) - 340377300) ^ (((((a1 + 462143511) & 0xE474399D) - 61173504) ^ a6) + 61173119)) - 1759074296;
  v8 = v7 < 0x5D319FF0;
  v9 = v7 > a4 + 1563533296;
  if (a4 > 0xA2CE600F != v8)
  {
    v9 = v8;
  }

  return (*(v6 + 8 * (((4 * !v9) | (16 * !v9)) ^ a1)))();
}

uint64_t sub_10002F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unsigned int a38, uint64_t a39, int a40, uint64_t a41, uint64_t a42)
{
  v47 = (681 * (v44 ^ 0x447u) - 0x3BF5368C43002049) ^ __ROR8__(__ROR8__(a8, 37) ^ 0x714465D33AFA5C0FLL, 27);
  v48 = (v47 - (((v44 + 224) + 0x17318B8F44813641) & (2 * v47)) - 0x74673A385DBF624DLL) ^ a2;
  v49 = v45 ^ a37 ^ 0x5E8CC683F9A37215;
  v50 = v47 ^ v46 ^ 0x3AE2EC8A0DA5A276;
  v51 = (v49 + v42 - 2 * (v49 & 0x267505BF27BB3B3FLL ^ (v45 ^ a37) & 0x22)) ^ v43;
  v52 = v51 ^ 0x629A61E2FE92CDE4;
  v53 = v48 ^ 0x8ABB7B075CE8A96ELL ^ (v51 ^ 0x629A61E2FE92CDE4) & (v45 ^ a37 ^ 0xA173397C065C8DEALL);
  v54 = v47 & (v46 ^ 0xC51D1375F25A5D89);
  v55 = (v51 ^ 0x9D659E1D016D321BLL) & (v46 ^ 0x3AE2EC8A0DA5A276);
  v56 = (v53 ^ v49) & 1;
  if ((v56 & v55) != 0)
  {
    v56 = -v56;
  }

  v57 = (v53 ^ v49) & 0xFFFFFFFFFFFFFFFELL ^ 0x8ABEF87C8808CCB5 ^ (v56 + v55);
  v58 = v54 ^ v52;
  v59 = (v57 ^ (8 * v57) | (v57 >> 61)) ^ (v57 >> 39) ^ ((v57 >> 61) & v57 | (v57 << 25));
  v60 = v48 ^ 0x754484F8A3175691;
  v61 = (v48 ^ 0x8ABB7B075CE8A96ELL | ~v50) - (v48 ^ 0x754484F8A3175691 ^ v50);
  v62 = v60 & v49 ^ v50;
  v63 = v62 ^ 0xB73927F7504FC0F2 ^ ((v62 ^ 0xB73927F7504FC0F2) >> 7);
  v64 = v53 ^ v62 ^ 0xF38BFF733C051F6;
  v65 = v58 ^ 0x92CFC162FD513143 ^ ((v58 ^ 0x92CFC162FD513143) >> 1) ^ (((v58 ^ 0x92CFC162FD513143) >> 6) | ((v58 ^ 0x92CFC162FD513143) << 63)) ^ (v59 + ((v58 ^ 0x92CFC162FD513143) << 58) - 2 * (v59 & ((v58 ^ 0x92CFC162FD513143) << 58)));
  v66 = v46 ^ v61 ^ 0x8B7D0EBE2630C5A1 ^ v58 ^ ((v46 ^ v61 ^ 0x8B7D0EBE2630C5A1 ^ v58) >> 10) ^ ((v46 ^ v61 ^ 0x8B7D0EBE2630C5A1 ^ v58) << 47) ^ ((v46 ^ v61 ^ 0x8B7D0EBE2630C5A1 ^ v58) >> 17) ^ ((v46 ^ v61 ^ 0x8B7D0EBE2630C5A1 ^ v58) << 54);
  *(&v67 + 1) = v62 ^ 0xB73927F7504FC0F2;
  *&v67 = v62;
  v68 = ((v62 ^ 0xB73927F7504FC0F2) << 57) ^ ((v62 ^ 0xB73927F7504FC0F2) << 23) ^ __ROR8__((v67 >> 44) & 0xE0000000000FFFFFLL ^ __ROR8__(v63, 3) ^ 0xAFA235EACE6B4032, 61) ^ 0x7D11AF5673019D05;
  v69 = v64 ^ __ROR8__(v64, 19) ^ (v64 << 36) ^ (v64 >> 28) ^ v68;
  v70 = v68 ^ v66;
  v71 = v69 & ~v70;
  v72 = v66 & ~v65;
  v73 = (~(2 * v69) + v69) & v59;
  v74 = v65 & ~v59 ^ v69;
  v75 = v65 ^ (__ROR8__(__ROR8__(v66, 62) ^ 0x25DA1EB034059543, 2) ^ 0x36897853F2FE9AAFLL) & v70;
  if ((v73 & &_mh_execute_header & v70) != 0)
  {
    v76 = -(v73 & &_mh_execute_header);
  }

  else
  {
    v76 = v73 & &_mh_execute_header;
  }

  v77 = (v76 + v70) ^ v73 & 0xFFFFFFFEFFFFFFFFLL;
  v78 = v59 ^ v72 ^ v74 ^ 0x5747C156E755AED6;
  v79 = (v75 ^ 0x6F45779FA95FC03AuLL) >> 1;
  v80 = v77 ^ 0x9A383CF881807545;
  v81 = (v77 ^ 0x9A383CF881807545) << (v79 & 0x17);
  v82 = v74 ^ v77;
  v83 = v82 ^ 0xAC7C0FF4012565E3;
  v84 = v66 ^ 0x28FA59BDD48D0B6 ^ v71 ^ v75;
  v85 = v78 ^ __ROR8__(v78, 61) ^ (v78 << 25) ^ (v78 >> 39);
  if ((v82 & 0x8000) != 0)
  {
    v86 = -32768;
  }

  else
  {
    v86 = 0x8000;
  }

  v87 = v86 + v83;
  v88 = v84 ^ __ROR8__(v84, 10) ^ (v84 << 47) ^ (v84 >> 17);
  v89 = v80 ^ (v80 >> 7) ^ ((v80 >> 41) | (v80 << 57)) ^ (v81 << (v79 & 0x17 ^ 0x17));
  *(&v90 + 1) = v75 ^ 0x6F45779FA95FC03ALL;
  *&v90 = v75;
  v91 = v79 ^ (v90 >> 6) ^ ((v75 ^ 0x6F45779FA95FC03ALL) & 0x9B6535C14F352826 ^ (v75 << 63) | (v75 ^ 0x6F45779FA95FC03ALL) & 0x649ACA3EB0CAD7D9) ^ v85;
  v92 = v83 ^ (v83 >> 19) ^ (v87 >> 28) ^ ((v87 ^ 0x8000) << 36) ^ ((v87 ^ 0x8000) << 45) ^ v89;
  v93 = v89 ^ v88;
  v94 = v91 ^ 0x1BD15DE7EA57F00 ^ v89 & ~v88;
  v95 = v92 ^ (v91 ^ 0x1BD15DE7EA57F00) & ~v85;
  v96 = v85 & ~v92 ^ v93;
  v97 = v95 + v85 - 2 * (v92 & v85);
  v98 = (v63 >> 3) & 1;
  v99 = v95 ^ 0x6E04C15915AB860ALL ^ v96;
  v100 = v99 >> 19;
  *(&v90 + 1) = (v99 >> 19) & v99 & 0x1A36E0206AEDLL ^ (v99 >> 28) ^ (((v99 >> 19) | v99) & 0xD8807A36E0206AEDLL | (v99 >> 19) & 0x5C91FDF9512 ^ v99 & 0x277F85C91FDF9512);
  *&v90 = (v99 << 36) ^ (v99 << 45) ^ *(&v90 + 1);
  v101 = v97 ^ (v91 ^ 0xFE42EA21815A80FFLL) & v88;
  v102 = v94 ^ v88 ^ ((v93 - ((2 * v93) & 0x4BCF7563A6B4D67ELL) - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) & v92 ^ 0x7370AC685030CB36;
  v103 = (v101 >> 39) ^ (v101 >> 61) ^ (8 * (v101 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v101 ^ 0x3278F838FE43D2BCLL) - (((v101 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v101 ^ 0x3278F838FE43D2BCLL))));
  v104 = v103 ^ 0x64F1F1;
  v105 = v96 ^ 0x26974B18501E2B14 ^ ((v96 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v96 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v96 ^ 0x26974B18501E2B14) << 23) ^ ((v96 ^ 0x26974B18501E2B14) << 57);
  v106 = v94 ^ 0x7955EAEC4D48B80CLL ^ (v94 << 63) ^ __ROR8__(v94 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v94 ^ 0x7955EAEC4D48B80CuLL) >> v98 >> (v98 ^ 1u));
  v107 = v103 ^ 0x64F1F1 ^ v106;
  v108 = (v102 >> 17) ^ __ROR8__(v102, 10) ^ __ROR8__(__ROR8__(v102, 14) & 0xFFFC000000000007 ^ __ROR8__(v102, 61), 3);
  *&v90 = __ROR8__(__ROR8__(v105, 7) ^ __ROR8__(__ROR8__(v90 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v109 = v105 & ~v108 ^ v107;
  v110 = v90 ^ 0xBBDB0FB7A00B9120 ^ (v103 ^ 0xFFFFFFFFFF9B0E0ELL) & v106;
  v111 = v103 ^ (((v107 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v107 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v108 ^ 0x425764BB58132BD4 ^ v110;
  v112 = (v90 ^ 0x4424F0485FF46EDFLL) & v104 ^ v108 ^ v105;
  v113 = (v112 ^ -v112 ^ (0x70C7A8D3F3643DFDLL - (v112 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v114 = v110 ^ 0x97F6A7E5F6E8F58ALL ^ v112;
  v115 = v108 ^ 0x44C9D571A5C4A51CLL ^ v109 ^ (v90 ^ 0xBBDB0FB7A00B9120) & ~(v108 ^ v105);
  v116 = v109 ^ 0xD3DA1E3360BF843ALL ^ ((v109 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v109 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v118 = __ROR8__(__ROR8__(v111, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v111 ^ (8 * v111) ^ ((v111 >> 61) | (v111 << 25)), 23) ^ 0x735302FC48340548, 41);
  v119 = (v113 >> 7) ^ (v113 >> 41) ^ (v113 << 23) ^ (v113 << 57);
  v120 = v119 ^ v113;
  v121 = v114 ^ (v114 >> 28) ^ (v114 >> 19) ^ (v114 << 36) ^ (v114 << 45) ^ v119 ^ v113;
  v122 = v116 & 0xFFFFFFF7FFFFFFFFLL ^ (v109 << 63) ^ (v116 & 0x800000000 | ((v109 ^ 0xD3DA1E3360BF843ALL) << (v100 & 0x12) << (v100 & 0x12 ^ 0x3A))) ^ v118;
  if (v119 == v113)
  {
    v123 = 0;
  }

  else
  {
    v123 = v115 << 47;
  }

  v124 = v118 ^ 0x7E241A02A439A981;
  v117 = (v115 ^ (v115 >> 10) | (v115 << 54)) ^ (v115 << 54) & v115;
  v125 = (v123 ^ v117 | (v115 << 47)) ^ (v117 & (v115 << 47) & 0xFFFF800000000000 | (v115 >> 17));
  v126 = v122 ^ 0x7E241A02A439A981;
  v127 = v125 ^ v120 ^ v124 & ~v121;
  v128 = (~(2 * v124) + v124) & (v122 ^ 0x7E241A02A439A981) ^ v121;
  v129 = v127 ^ v128;
  v130 = v127 ^ v128 ^ 0x93C23431B76D41FLL;
  *(&v131 + 1) = v130;
  *&v131 = v127 ^ v128;
  v132 = v124 ^ 0x6005BE354A5BB0B2 ^ v128 ^ v125 & (v122 ^ 0x81DBE5FD5BC6567ELL);
  v133 = v120 & ~v125 ^ v126;
  v134 = v121 & ~(v125 ^ v120) ^ v125 ^ v133;
  v135 = (v131 >> 62) ^ (4 * (v130 >> 28)) ^ 0x406FF36C296024B3;
  v136 = (v132 << (v120 & 3) << (v120 & 3 ^ 3)) ^ v132 ^ ((v132 >> 39) ^ (v132 >> 61) | (v132 << 25));
  *(&v131 + 1) = v130;
  *&v131 = v129;
  v137 = ((v131 >> 19) ^ __ROR8__(v135, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v138 = v133 ^ 0x6DC4FB0BD4FFFF44 ^ ((v133 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (((v133 ^ 0x6DC4FB0BD4FFFF44) >> 1) ^ ((v133 ^ 0x6DC4FB0BD4FFFF44) >> 6) | (v133 << 63));
  v139 = v127 ^ 0x2DB5B6AF87F64351 ^ ((v127 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v127 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v127 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v127 ^ 0x2DB5B6AF87F64351) >> 41);
  v140 = __ROR8__(v134 ^ 0xF374A001D380BDC2, 17) ^ ((v134 ^ 0xF374A001D380BDC2) >> 10) ^ (((v134 ^ 0xF374A001D380BDC2) << 54) | (v134 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v134 ^ 0xF374A001D380BDC2) << 54) & (v134 ^ 0xF374A001D380BDC2) | v134 & 0x20);
  v141 = v139 ^ (v130 << 36) ^ (((2 * v137) & 0xFFFFFFFF18D20D4ALL) + (v137 ^ 0xFFFFFFFF8C6906A5));
  v142 = v141 ^ v138 & ~v136;
  v143 = v136 & ~v141 ^ v140 ^ v139;
  v144 = v136 ^ v140 & ~(v136 ^ v138) ^ 0x62030E578F798D5ALL ^ v142;
  *(&v131 + 1) = (v143 ^ -v143 ^ (v142 - (v143 ^ v142))) + v142;
  *&v131 = *(&v131 + 1) ^ 0x69309AC4CAE2F93;
  return (*(a42 + 8 * (v44 ^ (13 * (a38 > 2 * (a40 & 1) + (a40 ^ 1u))))))(a1, *(&v131 + 1) ^ 0x69309AC4CAE2F93 ^ __ROR8__(*(&v131 + 1) ^ 0x69309AC4CAE2F93, 19) ^ (v131 >> 28), a3, (8 * v144) ^ (v144 >> 39) ^ ((v144 >> 61) | v144) ^ ((v144 >> 61) & v144 | (v144 << 25)));
}

void sub_100030398(_DWORD *a1)
{
  v1 = *a1 ^ (210068311 * ((a1 & 0x333F3DED | ~(a1 | 0x333F3DED)) ^ 0x5E16FDB6));
  __asm { BRAA            X13, X17 }
}

void sub_100030618(uint64_t a1)
{
  v1 = 1361651671 * ((a1 - 2 * (a1 & 0x40C2D223) + 1086509603) ^ 0x93E022AF);
  if (*(a1 + 32))
  {
    v2 = *a1 - v1 == 688359268;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000308A0@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v8 = (v4 - 214) | 0xD0;
  v9 = (v3 ^ 0xFFFFFFFFFFFFFEC6 ^ v8 ^ 0x5E8u) + v2;
  *(a2 - 7 + v9) = vadd_s8(vsub_s8(*(a1 - 7 + v9), vand_s8(vadd_s8(*(a1 - 7 + v9), *(a1 - 7 + v9)), v6)), v7);
  LODWORD(v9) = ((v8 ^ 0xFFFFFB29) & v2) - 8 != v3;
  return (*(v5 + 8 * (((2 * v9) | (4 * v9)) ^ v8)))();
}

uint64_t sub_100030984@<X0>(unsigned int a1@<W8>)
{
  v8 = (v3 - 2);
  v9 = v2 + 2;
  *v8 = (v9 ^ v5) * (v9 + 17);
  *(v8 - 1) = (v9 + v6) * (v9 ^ 0xBB);
  return (*(v7 + 8 * ((v4 != 2) | ((v4 != 2) << 6) | a1)))();
}

uint64_t sub_1000309D8@<X0>(int a1@<W4>, int a2@<W8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q3>)
{
  v8 = (v7 + v4);
  v9 = vaddq_s8(vsubq_s8(v8[1], vandq_s8(vaddq_s8(v8[1], v8[1]), a4)), a3);
  *v5 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a4)), a3);
  v5[1] = v9;
  return (*(v6 + 8 * (a1 + a2 + 985)))();
}

uint64_t sub_100030ADC@<X0>(int a1@<W4>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v62 = v60[396] ^ ((*v60 & (v61 + a2 - 1768863086) | v60[623] & 0x80000000) >> 1);
  v60[623] = (v62 + v58 - ((a2 - a1 - 1772722701) & (2 * v62))) ^ *(&a58 + (*v60 & 1));
  return (*(v59 + 8 * (a2 ^ (16 * (a40 > 0x26F)))))();
}

uint64_t sub_100030B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x3B8] = -v63;
  v64 = STACK[0x430];
  STACK[0x520] = a9 - 112;
  return v64(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

void sub_100030C7C()
{
  v3 = 4 * v1;
  v4 = (STACK[0x2D8] + v3);
  v5 = *v4;
  LODWORD(v4) = 1109941777 * ((*(*STACK[0x2E0] + (*STACK[0x2E8] & 0x7F119944)) ^ v4) & 0x7FFFFFFF);
  LODWORD(v4) = (v4 >> (LODWORD(STACK[0x2D0]) - 49)) ^ v4;
  v6 = 1109941777 * v4;
  *(v0 + v3) ^= v5 ^ (v2 - 1445) ^ ((((v2 - 1445) ^ v1) & v1) >> (__clz((v2 - 1445) ^ v1 | 1) ^ 0x1F)) & 1 ^ *(*(&off_10050ED90 + v2 - 1335) + HIBYTE(v6)) ^ *(*(&off_10050ED90 + v2 - 1390) + HIBYTE(v6) - 2) ^ *(*(&off_10050ED90 + v2 - 1363) + HIBYTE(v6) + 1) ^ (1578172416 * v4) ^ v6 ^ (-471850983 * HIBYTE(v6)) ^ 3;
  JUMPOUT(0x100030D84);
}

uint64_t sub_100030DC0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x440]) = 2;
  STACK[0x4D0] = 0;
  LODWORD(STACK[0x39C]) = 0;
  LODWORD(STACK[0x4C8]) = 0;
  return (*(v2 + 8 * (((((a1 - 583) | 0xAA) - 708) * ((v1 & 2) == 0)) ^ a1)))();
}

uint64_t sub_100030F2C()
{
  v4 = (&STACK[0x26C] + v2 + 8);
  *(v4 - 1) = 0xA7A7A7A7A7A7A7A7;
  *v4 = 0xA7A7A7A7A7A7A7A7;
  return (*(v3 + 8 * ((((v1 & 0x30) == 16) * (v0 - 151)) ^ v0)))();
}

uint64_t sub_100030FB0@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = v2 < v4;
  *(&STACK[0x26C] + a2) = *(v8 + v3) - ((2 * *(v8 + v3)) & 0x4E) - 89;
  if (v9 == (((v7 - 694) | 0x45) ^ 0x44) + v3 > a1)
  {
    v9 = v5 + v3 + 70 < v2;
  }

  return (*(v6 + 8 * (((2 * v9) | (8 * v9)) ^ v7)))();
}

uint64_t sub_10003102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7)
{
  v14 = a2 - 8;
  v16.val[0].i64[0] = (v10 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v10 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v10 + v14 + (v11 ^ 0xFD)) & 0xF;
  v16.val[1].i64[1] = (v10 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v10 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v10 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v10 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v10 + v14) & 0xF ^ 8;
  *(a3 - 8 + v10) = veor_s8(veor_s8(veor_s8(*(v7 + v16.val[0].i64[0] - 7), *(a4 - 8 + v10)), veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(v8 + v16.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a6), a7)));
  return (*(v13 + 8 * (((a1 == v14) * a5) | v12)))();
}

uint64_t sub_10003103C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = (v14 - 409550636) & 0x18693BE7;
  v22 = 1037613739 * ((1273259283 - (v18 | 0x4BE46513) + (v18 | 0xB41B9AEC)) ^ 0x6519B793);
  *(v20 - 120) = v22 + v14 - 1259;
  *(v20 - 128) = v17;
  *(v20 - 136) = ((v19 ^ 0xFC7F7F6F) + 1806282240 + ((v19 << (((v14 - 44) & 0xE7) + 92)) & 0xF8FEFEDE)) ^ v22;
  (*(v15 + 8 * (v14 ^ 0xF8B)))(v20 - 136);
  *(v20 - 136) = (v21 - 44) ^ (843532609 * ((v18 + 757858084 - 2 * (v18 & 0x2D2BFF24)) ^ 0x7166ABA1));
  *(v20 - 128) = v16;
  *(v20 - 120) = a14;
  v23 = (*(v15 + 8 * (v21 ^ 0xB73u)))(v20 - 136);
  return (*(v15 + 8 * (((*(v20 - 132) > 0x23B3030Du) * (((v21 - 483) | 0x38) ^ ((v21 ^ 0x5AA) + 390))) ^ v21)))(v23);
}

uint64_t sub_100031204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = &STACK[0x590] + v5;
  *v8 = 2073475255;
  *(v8 + 1) = 0;
  *(v8 + 4) = 1828645408;
  *(v8 + 6) = 1521934363;
  *(v8 + 4) = 0;
  *(v8 + 10) = 1521934363;
  STACK[0x330] = &STACK[0x590] + v5 + 40;
  *(v8 + 6) = 0;
  *(v8 + 14) = 1521934363;
  STACK[0x380] = &STACK[0x590] + v5 + 48;
  STACK[0x4E8] = &STACK[0x590] + v5 + 56;
  *(v8 + 8) = 0;
  STACK[0x470] = &STACK[0x590] + v5 + 64;
  *(v8 + 18) = 1521934363;
  *(v8 + 10) = 0;
  STACK[0x338] = &STACK[0x590] + v5 + 72;
  STACK[0x308] = &STACK[0x590] + v5 + 80;
  v8[88] = 66;
  *v6 = 2073475255;
  memset((v6 + 4), 167, 20);
  *(v6 + 24) = 1521934363;
  *(v6 + 28) = 0;
  STACK[0x2A8] = v6 + 28;
  *(v6 + 232) = 0;
  STACK[0x290] = v6 + 232;
  memset((v6 + 436), 167, 40);
  memset((v6 + 1128), 167, 40);
  *(v6 + 1168) = 0u;
  *(v6 + 1184) = 0u;
  return (*(v7 + 8 * ((3645 * ((((v4 ^ 0x7ED) - 1725518449) & 0x66D94C3F ^ 0x37) == 256)) ^ v4 ^ 0x7ED)))(a1, a2, a3, a4, 1446922884);
}

uint64_t sub_1000315C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  v25 = (a17 & 0xDCCF3033) - 678519151 + (((a23 ^ 0x8FAB261D) + 1884608995) ^ ((a23 ^ 0x5A83139C) - 1518539676) ^ (((3 * a18 - 321046766) ^ a23) + 321045095));
  v26 = (v25 ^ 0x52564016) & (2 * (v25 & 0x62666956)) ^ v25 & 0x62666956;
  v27 = ((2 * (v25 ^ 0xD2DE0236)) ^ 0x6170D6C0) & (v25 ^ 0xD2DE0236) ^ (2 * (v25 ^ 0xD2DE0236)) & a7;
  v28 = v27 ^ 0x90882920;
  v29 = (v27 ^ 0x304240) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0xC2E1AD80) & v28 ^ (4 * v28) & a7;
  v31 = (v30 ^ 0x80A02900) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x30184260)) ^ 0xB86B600) & (v30 ^ 0x30184260) ^ (16 * (v30 ^ 0x30184260)) & a7;
  return (*(v23 + 8 * ((v24 + 1125) | (4 * ((v25 ^ (2 * ((((v32 ^ 0xB0384960) << 8) & 0x30B80000 ^ 0x30280000 ^ (((v32 ^ 0xB0384960) << 8) ^ 0xB86B0000) & (v32 ^ 0xB0384960)) & (((v32 ^ 0x802200) & (v31 << 8) ^ v31) << 16) ^ (v32 ^ 0x802200) & (v31 << 8) ^ v31))) == 1650878806)))))();
}

uint64_t sub_1000317C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  *(v19 - 112) = &a16;
  *(v19 - 104) = &a14;
  *(v19 - 120) = (v16 + 636) ^ (((((2 * (v19 - 120)) | 0xE09E9A4A) - (v19 - 120) + 263238363) ^ 0xAC0219A0) * v18);
  v20 = (*(v17 + 8 * (v16 + 2009)))(v19 - 120);
  return (*(v17 + 8 * ((2292 * (*(v19 - 116) - 598934286 < 9 * (v16 ^ 0xE6u) - 162561389)) ^ v16)))(v20);
}

uint64_t sub_10003199C()
{
  v6 = (*(v2 + 8 * (11 * (v0 ^ 0x25B) + 1913)))(*v3, *v1, *(v1 + 8) + (((11 * (v0 ^ 0x25B) + 55) | 3) ^ 0xD6F87A8F));
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 12) = v4;
  return sub_1000319E8(v6);
}

uint64_t sub_100031A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  HIDWORD(a18) = HIDWORD(a14) + 372715612;
  v28.i64[0] = 0xA7A7A7A7A7A7A7A7;
  v28.i64[1] = 0xA7A7A7A7A7A7A7A7;
  return sub_10004DFDC(820794494, a4, a5, a6, 390, 78, a5 + v26 - 25, v28, vdupq_n_s32(0x39F5081Cu), vdupq_n_s32(0x39F50818u), a9, a10, a11, a12, a13, a14, a3, a16, a2 + a12, a18, a19, v27 - 16, a21, a22, a23, a24, a25, a26);
}

void sub_100031A7C()
{
  *(v4 - 136) = v2;
  *(v4 - 128) = v3;
  *(v4 - 144) = v1 - 33 + 1082434553 * ((((v4 - 144) | 0x754D8A2E) - (v4 - 144) + ((v4 - 144) & 0x8AB275D0)) ^ 0xEE0A7CA4) - 1161;
  (*(v0 + 8 * ((v1 - 33) ^ 0xFC1)))(v4 - 144);
  JUMPOUT(0x1000231FCLL);
}

uint64_t sub_100031AE8@<X0>(int a1@<W8>)
{
  v7 = *(v3 + 4 * (v1 - 1));
  *(v3 + 4 * v1) = ((1566083941 * (v7 ^ (v7 >> 30))) ^ *(v3 + 4 * v1)) - v1;
  v8 = 1361651671 * ((((v6 - 152) | 0xF07A883A91530C94) - ((v6 - 152) & 0xF07A883A91530C94)) ^ 0x23D7FB034271FC18);
  *(v6 - 128) = a1 + 593683607 - v8 - 95;
  *(v6 - 124) = a1 + 593683607 - v8;
  *(v4 + 1072) = 623 - v8;
  *(v4 + 1056) = v1 + 1 - v8;
  *(v6 - 112) = 1591077704 - v8 + a1;
  *(v6 - 152) = -1361651671 * ((((v6 - 152) | 0x91530C94) - ((v6 - 152) & 0x91530C94)) ^ 0x4271FC18);
  *(v6 - 148) = v8 + a1 + 593683607 + 8;
  v9 = (*(v2 + 8 * (a1 ^ (v5 - 2362))))(v6 - 152);
  return (*(v2 + 8 * *(v6 - 144)))(v9);
}

uint64_t sub_100031BE0()
{
  *(v6 - 120) = (v0 + 748) ^ (((((2 * (v6 - 120)) | 0x863BCDD2) - (v6 - 120) - 1126033129) ^ 0x1F50B26C) * v2);
  *(v6 - 112) = v5;
  *(v6 - 104) = v4;
  v7 = (*(v1 + 8 * (v0 + 2121)))(v6 - 120);
  return (*(v1 + 8 * (((*(v6 - 116) > v3) * (233 * (v0 ^ 0x8F) + 356)) ^ v0)))(v7);
}

uint64_t sub_100031D5C@<X0>(int a1@<W4>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v7 = v3 - 1;
  *(a3 + v7) = *(a2 + v7) - (v6 & (2 * *(a2 + v7))) - 89;
  return (*(v5 + 8 * (((v7 == 0) * (v4 ^ a1)) ^ v4)))();
}

uint64_t sub_100031EEC@<X0>(int a1@<W8>)
{
  v6 = *(v9 + 24);
  if ((a1 + v4) >= 0x7FFFFFFF)
  {
    v7 = -1306604704 - v1;
  }

  else
  {
    v7 = v1;
  }

  v10[1] = v7;
  *(v5 - 112) = v6;
  *(v5 - 120) = (v2 + 227) ^ (1785193651 * (((v5 - 128) & 0x298ECF33 | ~((v5 - 128) | 0x298ECF33)) ^ 0xC5ADDCEC));
  *(v5 - 128) = v10;
  return (*(v3 + 8 * (v2 ^ 0xBBC)))(v5 - 128);
}

uint64_t sub_1000320DC(double a1, int8x16_t a2, double a3, int8x16_t a4, uint64_t a5, int8x16_t *a6, uint64_t a7, int a8)
{
  v12 = (v10 + v9);
  v13 = vaddq_s8(vsubq_s8(v12[1], vandq_s8(vaddq_s8(v12[1], v12[1]), a4)), a2);
  *a6 = vaddq_s8(vsubq_s8(*v12, vandq_s8(vaddq_s8(*v12, *v12), a4)), a2);
  a6[1] = v13;
  return (*(v11 + 8 * (((((v8 - 1291) ^ 0x1FLL) == 64) * a8) ^ v8)))();
}

void sub_100032140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v34 - 112) = &a30;
  *(v34 - 104) = a12;
  *(v34 - 136) = &a26;
  *(v34 - 128) = v33;
  *(v34 - 144) = &a30;
  *(v34 - 120) = (v31 + 1096) ^ (((((2 * (v34 - 144)) | 0x3AF343A2) - (v34 - 144) - 494510545) ^ 0xEA54DF1) * v30);
  (*(v32 + 8 * (v31 ^ 0x806u)))(v34 - 144);
  JUMPOUT(0x100032C6CLL);
}

uint64_t sub_1000321F0@<X0>(char a1@<W1>, uint64_t a2@<X2>, int a3@<W7>, uint64_t a4@<X8>)
{
  v10 = (v6 - 1);
  *(v8 + v10) = *(a2 + v10) ^ *(v4 + (v10 & 0xF)) ^ *((v10 & 0xF) + v5 + 5) ^ ((v7 + 69) * (v10 & 0xF)) ^ *((v10 & 0xF) + a4 + 1) ^ a1;
  return (*(v9 + 8 * (((((v10 == 0) ^ (v7 - 117)) & 1) * a3) ^ (v7 + 2166))))();
}

uint64_t sub_1000322B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned int a32, unsigned int a33, unsigned int a34, unsigned int a35, int a36, int a37, int a38, char a39, __int16 a40, char a41)
{
  if (a39 == 1)
  {
    BYTE4(a30) = (((a32 - 2 * (a32 & 1) + 8) << (a3 + a5 + 112)) - 56) ^ 0xAF;
    BYTE5(a30) = (a32 >> 5) ^ 0xA7;
    BYTE6(a30) = (a32 >> 13) ^ 0xA7;
    HIBYTE(a30) = (a32 >> 21) ^ 0xA7;
    LOBYTE(a31) = ((__PAIR64__(HIDWORD(a31), a32) >> 29) - ((2 * (__PAIR64__(HIDWORD(a31), a32) >> 29)) & 0x92) - 55) ^ 0x6E;
    BYTE1(a31) = (HIDWORD(a31) >> 5) ^ 0xA7;
    BYTE2(a31) = (HIDWORD(a31) >> 13) ^ 0xA7;
    v41 = (HIDWORD(a31) >> 21) ^ 0xFFFFFFA7;
    goto LABEL_5;
  }

  if (a39 == 2)
  {
    BYTE4(a30) = (HIDWORD(a31) >> 21) - (((a3 + a5 - 119) ^ 0x52) & (2 * (HIDWORD(a31) >> 21))) - 89;
    BYTE5(a30) = (HIDWORD(a31) >> 13) - ((HIDWORD(a31) >> 12) & 0x4E) - 89;
    BYTE6(a30) = (~(HIDWORD(a31) >> 4) | 0xB1) + (HIDWORD(a31) >> 5) - 88;
    HIBYTE(a30) = (__PAIR64__(HIDWORD(a31), a32) >> 29) - ((2 * (__PAIR64__(HIDWORD(a31), a32) >> 29)) & 0x4E) - 89;
    LOBYTE(a31) = (a32 >> 21) - ((a32 >> 20) & 0x4E) - 89;
    BYTE1(a31) = (a32 >> 13) - ((a32 >> 12) & 0x4E) - 89;
    BYTE2(a31) = (a32 >> 5) - ((a32 >> 4) & 0x4E) - 89;
    LOBYTE(v41) = (8 * ((a32 ^ 0x10) - ((2 * a32) & 0x12)) - 56) ^ 0xEF;
LABEL_5:
    BYTE3(a31) = v41;
  }

  return sub_10005EE94(a1, a2, a3, a4, a5, a6, 3121378010, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_100032720@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xDB5u));

  return v3(v1);
}

uint64_t sub_100032754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v12 = v9 < 0x3A933762;
  if (v12 == (((v10 - 64) | a8) ^ 0x5C3uLL) + v8 > 0xFFFFFFFFC56CC89DLL)
  {
    v12 = v8 + 982726499 < v9;
  }

  return (*(v11 + 8 * ((44 * v12) ^ v10)))();
}

void sub_1000329DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1494181296;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v10 = *(a1 + 96) + 528;
  v11 = *(a2 + 8) + (*(a2 + 4) - v9);
  v12 = 1082434553 * ((2 * (&a5 & 0x5CB62928) - &a5 - 1555441965) ^ 0x380E2059);
  a8 = v12 ^ 0x517;
  a9 = v9 - v12 - 701133053;
  a5 = v10;
  a7 = v11;
  (*(a3 + 19064))(&a5);
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v9);
  JUMPOUT(0x100032AECLL);
}

void sub_100032B1C()
{
  LODWORD(STACK[0x518]) = STACK[0x3EC];
  STACK[0x480] = STACK[0x3A8];
  LODWORD(STACK[0x4DC]) = 1745916841;
  JUMPOUT(0x1000295F0);
}

uint64_t sub_100032B90@<X0>(int a1@<W4>, _DWORD *a2@<X5>, unint64_t a3@<X6>, int a4@<W7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12)
{
  v19 = ((a1 - 357) ^ a11 ^ a2[1]) + (v15 ^ HIDWORD(a3)) + v18 * (*(*(a12 + 8) + 4) ^ v12);
  *a2 = (v19 + v14 - (v13 & (2 * v19))) ^ a4;
  return (*(v17 + 8 * (((a5 == 2) * v16) | a1)))();
}

void sub_100032C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v33 - 144) = &a30;
  *(v33 - 136) = &a22;
  *(v33 - 120) = (v32 - 748) ^ ((((v33 - 144) & 0x1210EEA9 | ~((v33 - 144) | 0x1210EEA9)) ^ 0xFE33FD76) * v30);
  *(v33 - 128) = v31;
  *(v33 - 112) = &a30;
  *(v33 - 104) = a12;
  JUMPOUT(0x100032C60);
}

uint64_t sub_100032CC8()
{
  v3 = LODWORD(STACK[0x4DC]) + 1464734422;
  v4 = ((v1 - 421671582) & 0x19222F26 ^ 0x64A7C746) + v0;
  v5 = (v4 < 262 * (v1 ^ 0x49Bu) - 1084316557) ^ (v3 < 0xBF5EA67F);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 262 * (v1 ^ 0x49Bu) - 1084316557;
  }

  return (*(v2 + 8 * ((51 * !v6) ^ v1)))();
}

uint64_t sub_100032DA8@<X0>(uint64_t a1@<X8>)
{
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  v6 = ((139 * (v3 ^ 0x644u)) ^ 0xFFFFFFFFFFFFFC32) + v5;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * ((3664 * (v6 == 0)) ^ v3)))();
}

uint64_t sub_100032DF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = 843532609 * ((v17 - 128) ^ 0x5C4D5485);
  *(v17 - 120) = &a15;
  *(v17 - 128) = (((a3 << 6) & 0x96F7FDC0) + ((32 * a3) ^ 0xCB7BFEEF) + 2145201120) ^ v18;
  *(v17 - 124) = v15 - v18 - 195;
  v19 = (*(v16 + 8 * (v15 ^ 0xF17)))(v17 - 128);
  return (*(v16 + 8 * ((13 * (((v15 - 58) ^ ((*(a10 + 4) - 1494181297) < 0x7FFFFFFF)) & 1)) ^ v15)))(v19);
}

uint64_t sub_100032EB8()
{
  v5 = *(*(v1 + 40) + v0) - *(v4 + v0);
  v6 = (v5 ^ 0xF65FBCFF) - 337117256 + ((2 * v5) & 0xECBF79FE);
  v8 = v0 + (v2 - 1544) != 53 && v6 == -498615113;
  return (*(v3 + 8 * ((125 * v8) ^ v2)))();
}

uint64_t sub_100032F28()
{
  *(v3 - 104) = v5;
  *(v3 - 120) = v2;
  *(v3 - 112) = (v0 + 89) ^ (1785193651 * ((2 * ((v3 - 120) & 0x32ADCBD0) - (v3 - 120) - 850250711) ^ 0xDE8ED809));
  return (*(v1 + 8 * (v0 + 1506)))(v3 - 120);
}

uint64_t sub_100033018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v25 = 1037613739 * ((&a18 + 1030843666 - 2 * (&a18 & 0x3D716D12)) ^ 0xEC73406D);
  a21 = (v24 - 1089) ^ v25;
  a22 = (a11 ^ 0x2EEDBE76) + ((2 * a11) & 0x5DDB7CEC) - 545524736 + v25;
  a19 = a14;
  a20 = v22;
  v26 = (*(v23 + 8 * (v24 + 990)))(&a18);
  return (*(v23 + 8 * ((3386 * (a18 == ((v24 - 341) ^ 0x39F50C05))) ^ v24)))(v26);
}

uint64_t sub_100033214(uint64_t a1)
{
  v6 = *(v1 + v3 - 1 - 31);
  v7 = a1 + v3 - 1;
  *(v7 - 15) = *(v1 + v3 - 1 - 15);
  *(v7 - 31) = v6;
  return (*(v5 + 8 * ((117 * (((v2 + v4 + 1858) | 0x68u) - 1996 != (v3 & 0xFFFFFFE0))) ^ (v2 + v4 + 1404))))();
}

uint64_t sub_100033330(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v20 = a15 + 1894650040 > a19;
  if (a19 < 0x70EE1078 != (a15 + 1894650040) < 0x70EE1078)
  {
    v20 = (a15 + 1894650040) < 0x70EE1078;
  }

  return (*(v19 + 8 * (v20 ^ (a5 + a4 + 431))))();
}

uint64_t sub_10003333C(__n128 a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v10 = (a3 + 4 * a6);
  *v10 = a1;
  v10[1] = a1;
  return (*(v9 + 8 * (((a4 + a6 == v8) * a7) ^ v7)))();
}

void sub_1000333A8()
{
  v4 = STACK[0x368] + 128;
  STACK[0x390] = v4;
  v5 = 1785193651 * ((((v3 - 200) | 0x4B93831A) - ((v3 - 200) & 0x4B93831A)) ^ 0x584F6F3A);
  *(v3 - 196) = v5 + v0 - 562358948;
  *(v3 - 184) = v5 ^ 0x79AE6FE9;
  *(v3 - 192) = v4;
  (*(v1 + 8 * (v0 | 0x904)))(v3 - 200);
  STACK[0x320] = *(v1 + 8 * v0);
  STACK[0x2E8] = v2;
  JUMPOUT(0x100028B2CLL);
}

uint64_t sub_100033690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32)
{
  v36 = (((v32 ^ 0x309E9492) - 815699090) ^ ((v32 ^ 0x786F887C) - 2020575356) ^ ((v32 ^ 0x710414F6) - 1896092918)) + (((LODWORD(STACK[0x55C]) ^ 0x9A414691) + 1706998127) ^ ((LODWORD(STACK[0x55C]) ^ 0x98C41EB4) + 1731977548) ^ (a32 + (LODWORD(STACK[0x55C]) ^ 0x3B70503D))) + 1944719408;
  *(STACK[0x2A0] + 52) = ((v36 % 0x2710) ^ 0x735CFDFE) - 1091047576 + ((2 * (v36 % 0x2710)) & 0x7BFC);
  v37 = STACK[0x564];
  STACK[0x520] -= 1616;
  LODWORD(STACK[0x4AC]) = v37;
  return (*(v34 + 8 * ((774 * (v37 == v35)) ^ (v33 - 939))))();
}

uint64_t sub_1000337BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, int a17, unsigned int a18, char *a19, unsigned int a20)
{
  v25 = 1564307779 * ((&a15 & 0x6428632 | ~(&a15 | 0x6428632)) ^ 0x6EB0B5DE);
  a19 = &a13;
  a17 = v23 - v25 - 2013067348;
  a18 = -2097641450 - v25;
  a20 = 1908478090 - v25;
  a15 = a11;
  v26 = (*(v21 + 8 * (v23 ^ 0xA35)))(&a15);
  return (*(v21 + 8 * (((a16 != v20) * ((((v23 - 808) | 0x301) - v24 + 522) ^ (v22 + 794))) | v23)))(v26);
}

uint64_t sub_1000338C0(_DWORD *a1)
{
  v2 = *a1 + 1388665877 * ((-2 - ((a1 | 0xAD68937B) + (~a1 | 0x52976C84))) ^ 0xDF3A0E68);
  v3 = v2 + 542396693;
  result = (*(*(&off_10050ED90 + (v2 ^ 0xDFABAFB2)) + (v2 + 542398861) - 1))(*(&off_10050ED90 + (v2 ^ 0xDFABAF30)) - 8, sub_10005856C);
  v5 = **(&off_10050ED90 + v3);
  if (result)
  {
    v5 = -972402010;
  }

  a1[1] = v5;
  return result;
}

uint64_t sub_100033BCC()
{
  v7 = v3 - 1;
  *(v5 + v7) ^= *(v1 + (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 5) ^ 0xA7;
  return (*(v6 + 8 * ((2651 * (v7 == 0)) ^ (v4 - 108))))();
}

uint64_t sub_100033C8C()
{
  v4 = (*(v3 + 8 * (v0 ^ 0xC89)))();
  LODWORD(STACK[0x4AC]) = v1;
  return (*(v3 + 8 * (((58 * (v0 ^ 0x5BC) - 924) * (v2 ^ 1)) ^ (v0 - 830))))(v4);
}

uint64_t sub_100033CE4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v13 = v11 + 1215979521 < a11 - 857495734;
  if (a11 - 857495734 < (a7 ^ 0x1B5u) + 1215979453 != v11 > 0xB7859FFE)
  {
    v13 = a11 - 857495734 < (a7 ^ 0x1B5u) + 1215979453;
  }

  return (*(v12 + 8 * ((13 * !v13) ^ a7)))(3078987774, 1215979453, a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100033D60(uint64_t a1)
{
  v1 = 210068311 * ((a1 - 205837158 - 2 * (a1 & 0xF3BB2C9A)) ^ 0x616D133E);
  v2 = *a1 - v1;
  v3 = *(a1 + 28) - v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 1494181296;
  v5 = v4 - 1494181296 < 0;
  v7 = 1494181296 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_10050ED90 + v2 - 187) + ((((v3 - 57082292) >= (4 * v7)) * (v2 ^ 0x119)) ^ v2) - 1))();
}

void sub_100033EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (v64 + 154174791) & 0xFA06A7B7;
  v69 = *a32;
  if (((((v64 + 53946823) & (v67 + 130) ^ 0xFFFFFFFF16915206) + v68) & *a32) != 0 || (v70 = *(&off_10050ED90 + (v64 ^ 0xFCC8D51C)), v72 = *(v70 - 4), v71 = (v70 - 4), v72))
  {
    *a19 = -972401753;
    sub_10004A118();
  }

  else
  {
    v73 = v68 + 875;
    *v71 = v69;
    **(&off_10050ED90 + (v68 ^ 0x208)) = 255;
    *v69 |= ~v69[*v69 & 0x3ELL] << 16;
    v69[4] |= ~v69[v69[4] & 0x3ELL] << 16;
    v69[8] |= ~v69[v69[8] & ((v68 + 875) ^ 0x61E)] << 16;
    v69[12] |= ~v69[v69[12] & 0x3ELL] << 16;
    v69[16] |= ~v69[v69[16] & 0x3ELL] << 16;
    v69[20] |= ~v69[v69[20] & 0x3ELL] << 16;
    v69[24] |= ~v69[v69[24] & 0x3ELL] << 16;
    v69[28] |= ~v69[v69[28] & 0x3ELL] << 16;
    v69[32] |= ~v69[v69[32] & 0x3ELL] << 16;
    v69[36] |= ~v69[v69[36] & 0x3ELL] << 16;
    v69[40] |= ~v69[v69[40] & 0x3ELL] << 16;
    v69[44] |= ~v69[v69[44] & 0x3ELL] << 16;
    v69[48] |= ~v69[v69[48] & 0x3ELL] << 16;
    v69[52] |= ~v69[v69[52] & 0x3ELL] << 16;
    v69[56] |= ~v69[v69[56] & 0x3ELL] << 16;
    v69[60] |= ~v69[v69[60] & 0x3ELL] << 16;
    v74 = (*(v65 + 8 * (v68 + 1593)))(&a64, 0, 1024);
    *v66 = &a64;
    v75 = ((v73 - 875) ^ (v67 - 331)) == -378622136;
    (*(v65 + 8 * (((2 * v75) | (4 * v75)) ^ v73)))(v74);
  }
}

uint64_t sub_1000342D4@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v5.i64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v6.i64[0] = 0xA8A8A8A8A8A8A8A8;
  v6.i64[1] = 0xA8A8A8A8A8A8A8A8;
  v7 = *(v1 + v2 - 1 - 31);
  v8 = a1 + v2 - 1;
  *(v8 - 15) = vaddq_s8(vaddq_s8(*(v1 + v2 - 1 - 15), v6), vmvnq_s8(vandq_s8(vaddq_s8(*(v1 + v2 - 1 - 15), *(v1 + v2 - 1 - 15)), v5)));
  *(v8 - 31) = vaddq_s8(vaddq_s8(v7, v6), vmvnq_s8(vandq_s8(vaddq_s8(v7, v7), v5)));
  return (*(v4 + 8 * ((394 * (((v3 + 248) | 0x141u) - 1981 == (v2 & 0x1E0))) ^ (v3 - 176))))();
}

uint64_t sub_100034368(uint64_t a1)
{
  v2 = 1388665877 * ((((2 * (a1 ^ 0x17587DCA)) | 0xAD7A4B42) - (a1 ^ 0x17587DCA) - 1455236513) ^ 0xCC483A87);
  v3 = *(a1 + 44) ^ v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v8 = 1564307779 * ((&v10 & 0x46C11C45 | ~(&v10 | 0x46C11C45)) ^ 0x2E332FA9);
  v13 = (1931002555 * (*a1 ^ v2) + 1057619391) ^ v8;
  v16 = v4;
  v14 = v6;
  v12 = v7;
  v10 = v5;
  v15 = v3 + 1776823313 + v8 + 680;
  result = (*(*(&off_10050ED90 + v3 + 1776823313) + (v3 ^ 0x9617DD51) - 1))(&v10);
  *(a1 + 40) = v11;
  return result;
}

uint64_t sub_1000344C8(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) ^ (-6989 * ((2 * (result & 0xEB8A) - result + 5237) ^ 0xF855));
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x1EB;
  v3 = v2 ^ 0xEB;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = -820356988;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0xE30512FD6B8D9A75;
    *(v1 + 80) = 0x1CFAED029472658ALL;
    *(v1 + 92) = v4;
  }

  *result = 803265288;
  return result;
}

void sub_10003458C(uint64_t a1)
{
  v1 = 1388665877 * ((2 * (a1 & 0x2EF7D36D) - a1 + 1359490194) ^ 0xDCA54E7E);
  v2 = *(a1 + 16) - v1;
  v3 = *(a1 + 20) - v1;
  v5 = (~v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 402653184;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10003471C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v6 + 1424) = 0;
  memset((v6 + 1432), 167, 104);
  *(v7 + 96) = v6;
  STACK[0x410] = v7 + 96;
  STACK[0x228] = v6;
  *(v6 + 476) = 1;
  v9 = STACK[0x4A0];
  STACK[0x450] = *(v8 + 8 * v5);
  STACK[0x220] = v7;
  STACK[0x2B8] = v7;
  v10 = STACK[0x520];
  STACK[0x3E0] = &STACK[0x590] + STACK[0x520];
  STACK[0x520] = v10 + 432;
  v11 = (v5 + 169) | 0x502;
  LODWORD(STACK[0x2E0]) = a1;
  LODWORD(STACK[0x518]) = a1;
  STACK[0x480] = v9;
  LODWORD(STACK[0x3FC]) = 1964545717;
  LODWORD(STACK[0x3EC]) = 1521934363;
  STACK[0x3A8] = 0;
  LODWORD(STACK[0x4DC]) = 1745916841;
  LODWORD(STACK[0x3F0]) = a5 + 1;
  *(&STACK[0x590] + v10) = 1893636603;
  LODWORD(STACK[0x2D8]) = 1775568947;
  LODWORD(STACK[0x2E8]) = (v11 ^ 0xA0B35BEA) + 735514484;
  LODWORD(STACK[0x2C0]) = 1213160799;
  LODWORD(STACK[0x2C8]) = 805923159;
  v13 = *(&STACK[0x590] + v10) != (v11 ^ 0x6A) + 1893635155 || LODWORD(STACK[0x3F0]) != ((v11 + 1434492925) & 0xAA7F5B6B ^ (a5 + 299));
  return (*(v8 + 8 * ((3518 * v13) ^ v11)))();
}

uint64_t sub_1000348D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, unsigned int a22, uint64_t a23)
{
  v26 = (v23 ^ 0x15660EEC) + v25;
  v27 = v26 < v23 + 359009892;
  v28 = v26 > a22;
  if (a22 < a21 != v27)
  {
    v28 = v27;
  }

  return (*(v24 + 8 * ((4078 * v28) ^ (v23 + 2006))))(a1, a2, a3, a4, a23);
}

uint64_t sub_100034954()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_10003497C@<X0>(int8x16_t *a1@<X4>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, uint64_t a4)
{
  v7 = (a4 + a2);
  v8.i64[0] = 0xA8A8A8A8A8A8A8A8;
  v8.i64[1] = 0xA8A8A8A8A8A8A8A8;
  v9 = vaddq_s8(vaddq_s8(a1[1], v8), vmvnq_s8(vandq_s8(vaddq_s8(a1[1], a1[1]), a3)));
  v7[-1] = vaddq_s8(vaddq_s8(*a1, v8), vmvnq_s8(vandq_s8(vaddq_s8(*a1, *a1), a3)));
  *v7 = v9;
  return (*(v6 + 8 * ((((v5 & 0x60) == 32) * (((v4 - 22) | 0x281) ^ 0x27F)) ^ (v4 + 1030))))();
}

void sub_100034A44(int a1)
{
  v2 = (((v1 ^ 0x3BAFFD69) - 1001389417) ^ ((v1 ^ 0x346DE533) - 879617331) ^ ((v1 ^ 0x30AA12E) - 51028270)) + 515205532 + (((LODWORD(STACK[0x2D0]) ^ 0xD487E997) + 729290345) ^ ((LODWORD(STACK[0x2D0]) ^ 0x8FF3D4A5) + 1879845723) ^ ((((a1 - 1668) | 0x22) ^ 0xA8437B9C) + (LODWORD(STACK[0x2D0]) ^ 0x57BC8446)));
  LODWORD(STACK[0x2D0]) = v2 ^ ((v2 ^ 0xA5170C57) + 1607140637) ^ ((v2 ^ 0xC0C37E95) + 975140831) ^ ((v2 ^ 0x1B0A63A9) - 506041629) ^ ((v2 ^ 0x7BFDE7DF) - 2128482667) ^ 0x9EB4FC0;
  JUMPOUT(0x100034B8CLL);
}

uint64_t sub_1000353A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5 + 8;
  *(v8 + v12) = vadd_s8(vsub_s8(*(a5 + v12), vand_s8(vadd_s8(*(a5 + v12), *(a5 + v12)), v10)), v11);
  return (*(v9 + 8 * (((2 * ((((v6 - 663) ^ (v7 == v12)) & 1) == 0)) & 0xFB | (4 * (((v6 + 105) ^ ~(v7 == v12)) & 1))) ^ v6)))();
}

uint64_t sub_100035514(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12, int8x16_t a13)
{
  v19 = a4 & (a2 - 16);
  v20 = v17;
  v21.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v21.i64[1] = a11;
  v22 = vrev64q_s8(veorq_s8(veorq_s8(*a1, *(v14 + v19 - 15)), veorq_s8(*(v19 + v15 - 12), *(v19 + v13 - 10))));
  v23 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v22, v22, 8uLL), a13), vmulq_s8(v21, a12)));
  *a1 = vextq_s8(v23, v23, 8uLL);
  return (*(v18 + 8 * (((a3 == 16) * a5) ^ v16)))(a1 - 1);
}

uint64_t sub_100035548(uint64_t a1, uint64_t a2)
{
  *(v3 + 1424) = v2;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

void sub_100035620(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v8 = 1037613739 * ((((2 * &a3) | 0x56098DD2) - &a3 - 721733353) ^ 0xFA06EB96);
  a5 = v5;
  a3 = (269503522 - v6 - (((v7 + 1061) ^ 0x896E4704) & (-1766697570 - 2 * v6))) ^ v8;
  a4 = (v7 + 1499) ^ v8;
  (*(a1 + 8 * (v7 ^ 0x83Fu)))(&a3);
  sub_100068CFC();
}

uint64_t sub_1000356B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, char a19, int a20, char a21, char *a22, int a23, int a24, char *a25, int a26, char *a27, int *a28, uint64_t a29)
{
  a20 = 1745916841;
  v31 = *(a2 + 4);
  v32 = *(a2 + 8);
  v33 = 1082434553 * ((&a22 - 993738773 - 2 * (&a22 & 0xC4C4BFEB)) ^ 0x5F834961);
  a25 = &a19;
  a22 = &a16;
  a29 = v32;
  a26 = v33 + v29 + 655;
  a27 = &a21;
  a28 = &a20;
  a24 = (v29 ^ 0x312) + 296703505 + v31 + v33 - 52;
  v35 = (*(v30 + 8 * (v29 ^ 0x9BF)))(&a22);
  return (*(v30 + 8 * ((1175 * (a23 == 972359704)) ^ v29)))(v35, a2);
}

uint64_t sub_1000357B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = *(a1 + 8) + 210068311 * ((2 * (a1 & 0x9D6ACF85) - a1 + 1653944442) ^ 0xF0430FDE);
  v19 = 1785193651 * ((((v28 | 0x80BA0A3A) ^ 0xFFFFFFFE) - (~v28 | 0x7F45F5C5)) ^ 0x6C9919E5);
  v29 = v18 + v19 - 562358880;
  v30 = v27;
  v31 = v19 ^ 0x79AE6FE9;
  (*(*(&off_10050ED90 + v18 + 4) + v18 + 2375))(v28);
  return sub_10004DCC8(&v26, v27, 78, v20, v21, v22, v23, v24, v18, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_100035B68()
{
  v3 = *(v0 + 16) - 1006341418;
  v4 = (v1 ^ 7) + *(v0 + 12) - 213361129;
  v5 = v4 < 0x1C4FE6F3;
  v6 = v3 < v4;
  if (v3 < 0x1C4FE6F3 != v5)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((1629 * v6) ^ v1)))();
}

uint64_t sub_100035CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, char *a21, unsigned int a22)
{
  v24 = 1564307779 * (((&a17 | 0x2A7BB3C0) - &a17 + (&a17 & 0xD5844C38)) ^ 0xBD767FD3);
  a22 = 1908478090 - v24;
  a17 = a13;
  a21 = &a14;
  a19 = v23 - v24 - 2013067934;
  a20 = 1736966016 - v24;
  v25 = (*(v22 + 8 * (v23 + 939)))(&a17);
  return (*(v22 + 8 * (((a18 == 972359704) * ((((v23 - 814) | 0x4A2) ^ 0xFFFFFA89) + ((v23 + 158341005) & 0xF68FE71D))) | v23)))(v25);
}

uint64_t sub_100036090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v17 = (a2 + v12);
  *v17 = v13;
  *(v12 + (a12 ^ 0x53Fu) + a2 - 37) = v14;
  v17[2] = v15;
  v17[3] = v16;
  return sub_1000360B8();
}

uint64_t sub_1000360B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, unint64_t *, uint64_t, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = 2066391179 * (((v18 - 160) & 0x70241125 | ~((v18 - 160) | 0x70241125)) ^ 0x20FC6CC2);
  *(v18 - 152) = a1;
  *(v18 - 160) = a3 - v19 + 334;
  *(v18 - 156) = 2083296428 - v19;
  v20 = (*(v17 + 8 * (a3 + 2303)))(v18 - 160);
  return a10(v20, &STACK[0x278], a2, 167, a17);
}

uint64_t sub_100036208()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x8AF)))(1576);
  STACK[0x4F8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 - 1977750980) & 0x75E21CFF) - 745) ^ v0 ^ 0x430)) ^ v0)))();
}

void sub_100036274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30)
{
  v35 = 143681137 * ((((v34 - 144) | 0x1A3D6251) - ((v34 - 144) & 0x1A3D6251)) ^ 0x7B65E981);
  *(v34 - 144) = v35 ^ 0x22DC9984;
  *(v34 - 136) = &a28;
  *(v34 - 128) = v35 + v33 + 1179;
  (*(v30 + 8 * (v33 + 2264)))(v34 - 144);
  *(v34 - 136) = &a28;
  *(v34 - 128) = v32;
  *(v34 - 120) = (v33 + 1288) ^ (1785193651 * ((v34 - 1673515695 - 2 * ((v34 - 144) & 0x9C402DE1)) ^ 0x8F9CC1C1));
  *(v34 - 112) = &a30;
  *(v34 - 104) = v31;
  *(v34 - 144) = &a30;
  (*(v30 + 8 * (v33 ^ 0x946)))(v34 - 144);
  JUMPOUT(0x10002A49CLL);
}

uint64_t sub_10003641C@<X0>(unsigned int a1@<W2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v8 = (v7 - 1) & 0xF;
  v12 = (v5 - a3 - v7 + v8 + 1) < 0x10 || a2 < (a1 ^ 0xECF) - 2121 || (v6 - a3 - v7 + v8 + 6) < 0x10 || v4 - a3 - v7 + v8 + (a1 - 17) - 1666 < 0x10;
  return (*(v3 + 8 * ((49 * v12) ^ a1)))(v7);
}

uint64_t sub_10003651C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  v21 = a18 < 0x76D4BEDB;
  if (v21 == v18 > 0x892B4124)
  {
    v21 = v18 + 1993653979 < a18;
  }

  return (*(v20 + 8 * ((v21 * (v19 - 1898)) ^ v19)))(1934, a2, 65);
}

uint64_t sub_100036580@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W8>)
{
  *(*(a1 + 16) + (a4 + a5)) = (a3 ^ v7) >> v8;
  v9 = a4 - 1 != (((a2 ^ 0x15B) - 541) ^ (v6 + 150));
  return (*(v5 + 8 * ((v9 | (4 * v9)) ^ a2)))();
}

uint64_t sub_1000365D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v21 - 120) = (v18 + 1192) ^ (210068311 * ((2 * ((v21 - 120) & 0x3818568) - (v21 - 120) + 2088663696) ^ 0xEEA84534));
  *(v21 - 112) = &a18;
  *(v21 - 104) = &a16;
  v22 = (*(v19 + 8 * (v18 ^ 0x87A)))(v21 - 120);
  return (*(v19 + 8 * (((v20 == ((v18 + 299742578) & 0xEE224BD2) - 465) * (v18 - 105)) ^ v18)))(v22);
}

uint64_t sub_100036684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v17 - 112) = &a14;
  *(v17 - 104) = a13;
  *(v17 - 120) = (v14 - 333) ^ (((~((v17 - 120) | 0x23070613) + ((v17 - 120) & 0x23070613)) ^ 0x80B5AD69) * v16);
  v18 = (*(v15 + 8 * (v14 ^ 0xC10)))(v17 - 120);
  return (*(v15 + 8 * ((472 * (*(v17 - 116) - 598934287 < (v14 ^ 0x1E9u) - 254595077)) ^ v14)))(v18);
}

uint64_t sub_100036734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = (v13 + 130) | 5;
  v15 = ((((v14 + 280) ^ 0x1AF) + 917949066 + (a12 ^ 0xC949315E)) ^ ((a12 ^ 0x304BE3F9) - 810279929) ^ ((a12 ^ 0xC0F7DABF) + 1057498433)) + 182292310;
  v16 = v15 < 0xD0E8873E;
  v17 = v15 > 0xD0E8873E;
  if (v16)
  {
    v17 = v16;
  }

  return (*(v12 + 8 * ((50 * v17) ^ v14)))(3237468863, 1057498433, 182292310, 790067393);
}

uint64_t sub_100036874@<X0>(uint64_t a1@<X8>)
{
  v10 = (*(*(v8 + 8) + 4 * v2) ^ v5) + v1;
  *(*(a1 + 8) + 4 * v2) = v10 + v5 - (v6 & (2 * v10));
  return (*(v7 + 8 * (((v2 + 1 == v9) * v4) ^ v3)))();
}

uint64_t sub_100036988@<X0>(uint64_t a1@<X0>, int a2@<W6>, int a3@<W8>)
{
  v10 = v6 + 32;
  v11 = (((v5 ^ (a3 + 1691)) - 1452) ^ v10) + v4;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v7 == v10) * v8) ^ (a2 + v5 + 1786))))();
}

uint64_t sub_100036B5C(_DWORD *a1)
{
  v1 = *a1 ^ (1785193651 * (a1 ^ 0x13DCEC20));
  v2 = **(&off_10050ED90 + (v1 ^ 0xB8A69570));
  v5 = v1 - 1388665877 * (((&v4 | 0x894FA8B5) - &v4 + (&v4 & 0x76B05748)) ^ 0x4E2CA59) + 1197044490;
  v4 = v2;
  return (*(*(&off_10050ED90 + (v1 ^ 0xB8A69536)) + (v1 ^ 0xB8A69C5C) - 1))(&v4);
}

void sub_100036C58(uint64_t a1)
{
  v1 = 843532609 * ((a1 - 935319884 - 2 * (a1 & 0xC84026B4)) ^ 0x940D7231);
  v2 = *(a1 + 4) + v1;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_100036D30()
{
  v3 = (*(v2 + 8 * (v0 + 889)))();
  v4 = v1 == 23 * (v0 ^ 0x592) + 972358370;
  return (*(v2 + 8 * (((2 * v4) | (4 * v4)) ^ (v0 - 1238))))(v3);
}

uint64_t sub_100036D8C@<X0>(int a1@<W2>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
{
  v9 = v7 - 1;
  *(v5 + v9) = *(a4 + v9) ^ (15 * (v9 & 0xF)) ^ *(*(a3 + 8 * (a5 - 1497)) + (v9 & 0xF) - 12) ^ *(*(a3 + 8 * (a5 - 1512)) + (v9 & 0xF) - 10) ^ *(*(a3 + 8 * v6) + (v9 & 0xF) - 5) ^ a2;
  return (*(v8 + 8 * (((v9 != 0) * a1) ^ a5)))();
}

uint64_t sub_100036D94()
{
  *(v1 + 52) += ((v0 ^ 0x294) + 1565) ^ 0x778 ^ (179 * (v0 ^ 0x294));
  LODWORD(STACK[0x46C]) = *(v1 + 360);
  STACK[0x520] -= 2432;
  LODWORD(STACK[0x444]) = v3;
  return (*(v2 + 8 * ((81 * (STACK[0x4B8] == 0)) ^ v0)))();
}

uint64_t sub_100036F88@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  STACK[0x448] = v3;
  v18 = (&STACK[0x590] + v4 + (a1 ^ 0xFFFFFFFFFFFFF9E4));
  *v18 = 0x5858585858585858;
  v18[1] = 0xA7A7A7A7A1A7A7B5;
  v8 = 1388665877 * ((2 * (v5 & 0x784B060) - v5 + 2021347225) ^ 0xF5D62D75);
  *(v7 - 200) = v8 ^ 0x98FC9C60;
  *(v7 - 192) = (v2 + 1986156097) ^ v8;
  (*(v6 + 8 * (v2 + 222)))(v7 - 200);
  LODWORD(STACK[0x344]) = 1521934699;
  v9 = (*(v6 + 8 * (v2 ^ 0x1B4)))(336);
  STACK[0x3B0] = v9;
  return (*(v6 + 8 * ((((((v2 - 105 + v2 + 117 + 1) ^ (v9 == 0)) & 1) << 7) | ((((v2 - 105 + v2 + 117 + 1) ^ (v9 == 0)) & 1) << 8)) ^ v2)))(v9, v10, v11, v12, v13, v14, v15, v16, a2);
}

uint64_t sub_100037334@<X0>(int a1@<W8>)
{
  v3 = *(v7 + 16);
  v4 = *(v7 + 32);
  v9[0] = 0xA7A7A7A7A7A7A7A7;
  v9[1] = 0xA7A7A7A7A7A7A7A7;
  v5 = 1037613739 * ((-69914562 - ((v2 - 176) | 0xFBD5303E) + ((v2 - 176) | 0x42ACFC1)) ^ 0xD528E2BE);
  *(v2 - 160) = v4;
  *(v2 - 152) = &v8;
  *(v2 - 168) = v9;
  *(v2 - 144) = (a1 + 1641) ^ v5;
  *(v2 - 136) = v3;
  *(v2 - 176) = v5 + 1337967930;
  result = (*(v1 + 8 * (a1 ^ 0x976)))(v2 - 176);
  *(v7 + 44) = *(v2 - 140);
  return result;
}

uint64_t sub_100037484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, int a45)
{
  *(STACK[0x2A0] + 360) = v46;
  v54 = (*(v52 + 8 * (v45 + 1694)))(v49, 2, &STACK[0x440], v50, (v48 - 1521934363), v47, &STACK[0x4D0], &STACK[0x39C]);
  if (v54 == 268435459)
  {
    LODWORD(STACK[0x4AC]) = -972401888;
    return (*(v52 + 8 * (((a44 & 0x4A3F3CFD ^ 0x48A) * (STACK[0x4D0] == 0)) ^ (v51 + 517))))(v54, STACK[0x4D0], v55, 3322565569);
  }

  else
  {
    if (!v54)
    {
      JUMPOUT(0x10002D738);
    }

    v57 = 843532609 * ((-1420875763 - ((v53 - 200) | 0xAB4F280D) + ((v53 - 200) | 0x54B0D7F2)) ^ 0x8FD8377);
    *(v53 - 184) = 972359704 - v57 + v54 - ((2 * v54) & 0x73EA1030);
    *(v53 - 192) = &STACK[0x4AC];
    *(v53 - 200) = v51 - v57 + 222;
    v58 = (*(v52 + 8 * a45))(v53 - 200);
    return (*(v52 + 8 * ((((v51 - 1245658597) & 0x4A3F3CFD ^ 0x48A) * (STACK[0x4D0] == 0)) ^ (v51 + 517))))(v58);
  }
}

uint64_t sub_100037688@<X0>(int a1@<W8>)
{
  v8 = ((((v7 - 144) | 0x9E517E0) - (v7 - 144) + ((v7 - 144) & 0xF61AE818)) ^ 0x9B332844) * v6;
  *(v7 - 128) = v4;
  *(v7 - 136) = v2 - v8 - 1057;
  *(v7 - 144) = v8 + (a1 & 0xDF6D94EE) + 1056833519 + ((((v2 - 926) | 0x24) - 273233606) ^ v1);
  v9 = (*(v3 + 8 * (v2 + 1136)))(v7 - 144);
  return (*(v3 + 8 * (((*(v7 - 140) == v5) * ((v2 - 453872376) & 0x1B0D877D ^ 0x15E)) ^ v2)))(v9);
}

uint64_t sub_1000378F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, _DWORD *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46)
{
  *a35 = a46 + 1562827101;
  v52 = *v48;
  v53 = 1361651671 * ((((2 * (v51 - 152)) | 0x79A42FB5B505D2ECLL) - (v51 - 152) + 0x432DE825257D168ALL) ^ 0x6F7F64E309A019FALL);
  *(v49 + 1072) = 5119 - v53;
  *(v51 - 112) = 1591077704 - v53 + v46 - 949;
  *(v51 - 128) = ((v46 + 1586751060) ^ 0x75) - v53;
  *(v51 - 124) = v46 + 1586751060 - v53;
  *(v51 - 152) = -1361651671 * ((((2 * (v51 - 152)) | 0xB505D2EC) - (v51 - 152) + 628954762) ^ 0x9A019FA);
  *(v51 - 148) = v53 + v46 + 1586751060 - 61;
  *(v49 + 1056) = v52 - v53;
  v54 = (*(v47 + 8 * ((v46 - 949) ^ (v50 - 2362))))(v51 - 152);
  return (*(v47 + 8 * *(v51 - 144)))(v54);
}

uint64_t sub_1000379F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char *a14, unsigned int a15)
{
  a14 = &a11;
  a15 = v17 + 2066391179 * ((831678737 - (&a13 | 0x31926911) + (&a13 | 0xCE6D96EE)) ^ 0x614A14F6) + 887;
  v18 = (*(v16 + 8 * (v17 + 1748)))(&a13);
  return (*(v16 + 8 * ((1529 * (a13 == v15 + (v17 ^ 0xA63) - 2060)) ^ v17)))(v18);
}

uint64_t sub_100037A90(void *a1)
{
  if (*a1)
  {
    v3 = (a1[6] | a1[2]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((((((v1 + 1588839834) ^ v4) & 1) == 0) * (((v1 - 911) | 0x200) - 1552)) ^ v1)))();
}

uint64_t sub_100037B28()
{
  v4 = STACK[0x304];
  v5 = v0 - (LODWORD(STACK[0x304]) - 825) >= ~(LODWORD(STACK[0x304]) - 825);
  v6 = STACK[0x304];
  v7 = 1361651671 * ((~((v3 - 200) | 0xA62E3BB3CABC43) + ((v3 - 200) & 0xA62E3BB3CABC43)) ^ 0x2CF4A2FD9F17B330);
  *(v3 - 160) = 1212454120 - v7 + LODWORD(STACK[0x304]);
  *(v3 - 184) = (v2 - v6 + v5 + 1448) - v7;
  *(v3 - 200) = -1361651671 * ((~((v3 - 200) | 0xB3CABC43) + ((v3 - 200) & 0xB3CABC43)) ^ 0x9F17B330);
  *(v3 - 196) = v7 + v4 + 463466442 - 1;
  *(v3 - 168) = 3 - v7;
  *(v3 - 176) = ((v4 + 463466442) ^ 0x65) - v7;
  *(v3 - 172) = v4 + 463466442 - v7;
  v8 = (*(v1 + 8 * (v6 + 926)))(v3 - 200);
  return (*(v1 + 8 * *(v3 - 192)))(v8);
}

_DWORD *sub_100037C20@<X0>(_DWORD *result@<X0>, int a2@<W8>)
{
  v5 = ((v4 + 976106226) & 0xC5D1CEC7 ^ 0xC655FFC1) + v3;
  v6 = v2 + 1855795004;
  v7 = v6 < 0xC655F984;
  v8 = v5 < v6;
  if (v3 > 0x39AA067B != v7)
  {
    v8 = v7;
  }

  if (v8)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 + 1;
  }

  *result = v9;
  return result;
}

uint64_t sub_100037C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v19 - 112) = &a13;
  *(v19 - 104) = v16;
  *(v19 - 144) = &a13;
  *(v19 - 136) = &a11;
  *(v19 - 128) = v15;
  *(v19 - 120) = (v13 + 969) ^ (1785193651 * ((v19 - 1075359130 - 2 * ((v19 - 144) & 0xBFE752F6)) ^ 0xAC3BBED6));
  v20 = (*(v17 + 8 * (v13 ^ 0x887)))(v19 - 144);
  return (*(v17 + 8 * ((7 * ((v18 - 540231018) > 0x7FFFFFFE)) ^ v14)))(v20);
}

uint64_t sub_100037D7C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x22C] + a2 + 72);
  v7 = ((2 * a2) & 0xBB7ACBC0) + (a2 ^ 0x5DBD65E3) + v2;
  *(a1 + v7) = (HIBYTE(v6) ^ 0xC) + ((4 * v3) ^ 0x14) + (~(2 * (HIBYTE(v6) ^ 0xC)) | 0xB1);
  *(a1 + v7 + 1) = (BYTE2(v6) ^ 0xC8) - ((v6 >> 15) & 0x4E) - 89;
  *(a1 + v7 + 2) = (BYTE1(v6) ^ 0xB9) - ((2 * (BYTE1(v6) ^ 0xB9)) & 0x4E) - 89;
  *(a1 + v7 + 3) = v6 ^ 0xD3;
  return (*(v5 + 8 * (((a2 + 4 < LODWORD(STACK[0x288])) * v4) ^ v3)))();
}

void sub_100037E48(uint64_t a1)
{
  v1 = *a1 ^ (843532609 * ((((2 * a1) | 0x4B562ACC) - a1 - 631969126) ^ 0x79E641E3));
  if (*(*(a1 + 24) + 4) - 1494181296 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 1494181296;
  }

  else
  {
    v2 = 1494181296 - *(*(a1 + 24) + 4);
  }

  if (*(*(a1 + 8) + 4) - 1494181296 >= 0)
  {
    v3 = *(*(a1 + 8) + 4) - 1494181296;
  }

  else
  {
    v3 = 1494181296 - *(*(a1 + 8) + 4);
  }

  v7 = *(a1 + 24);
  v6[1] = v1 + 1564307779 * (v6 ^ 0x970DCC13) + 839;
  v4 = *(&off_10050ED90 + v1 - 1257) - 8;
  (*&v4[8 * (v1 ^ 0xC5E)])(v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X15, X17 }
}

void sub_100037F94(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a4 = v6 - ((&a4 & 0x29BF5941 | ~(&a4 | 0x29BF5941)) ^ 0x5BEDC452) * v5 + 1077;
  a5 = a1;
  (*(v7 + 8 * (v6 ^ 0x99D)))(&a4);
  sub_100045E00();
}

uint64_t sub_100038064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * ((((2 * &a14) | 0x544CD5D2) - &a14 + 1440322839) ^ 0xB404E7BC);
  a17 = &a13;
  a18 = v18;
  a15 = v22 + v21 - 1318;
  a16 = v22 + 408714310;
  a14 = &a10;
  v23 = (*(v19 + 8 * (v21 + 885)))(&a14);
  return (*(v19 + 8 * ((868 * (*(v18 + 24) == ((v21 - 415) ^ (v20 + 1000)))) ^ v21)))(v23);
}

uint64_t sub_100038108(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6)
{
  v13 = v12 + 4 * v10;
  a6.i32[0] = *(v12 + 4 * (v7 | v10));
  a6.i32[1] = *(v13 + 8);
  a6.i32[2] = *(v13 + 12);
  v14 = vextq_s8(a1, a6, 0xCuLL);
  v15 = a6;
  v15.i32[3] = *(v12 + 4 * (v10 + 4));
  v16 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v15, a3), vandq_s8(v14, a2)), 1uLL), *(v13 + 1588));
  v14.i32[0] = *(v8 + 4 * (*(v12 + 4 * (v7 | v10)) & 1));
  v14.i32[1] = *(v8 + 4 * (*(v13 + 8) & 1));
  v14.i32[2] = *(v8 + 4 * (*(v13 + 12) & 1));
  v14.i32[3] = *(v8 + 4 * (v15.i8[12] & 1));
  *v13 = veorq_s8(vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), a4)), a5), v14);
  return (*(v11 + 8 * (((v10 == 220) * v9) ^ (v6 + 779))))();
}

uint64_t sub_100038190(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x444]) = a4 + 54;
  LODWORD(STACK[0x2B4]) = v4;
  return sub_10004FD3C();
}

uint64_t sub_100038200()
{
  STACK[0x520] = v0 - 1616;
  LODWORD(STACK[0x4AC]) = v2;
  return (*(v3 + 8 * ((((v1 - 1245658597) & 0x4A3F3CFD ^ 0x48A) * (STACK[0x4D0] == 0)) ^ (v1 + 517))))();
}

uint64_t sub_100038254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *v8 = (((v6 - 265) | 0x100) ^ 0xFFFFFEDD) + v5;
  v10 = &v8[6 * (v5 - 1893636604)];
  v11 = v10[2];
  LODWORD(STACK[0x518]) = v10[3];
  STACK[0x480] = *(v10 + 2);
  LODWORD(STACK[0x4DC]) = v10[6];
  v12 = *(v7 + 48 * (v11 - 1446922885) + 36);
  LODWORD(STACK[0x3F0]) = v12;
  return (*(v9 + 8 * ((1787 * (v12 == a5)) ^ v6)))();
}

uint64_t sub_100038304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a19 = 2066391179 * ((((2 * &a17) | 0x1326A244) - &a17 - 160649506) ^ 0xA6B4D33A) + 1510;
  a18 = &a13;
  v22 = (*(v21 + 18968))(&a17);
  return (*(v21 + 8 * ((832 * (a17 == v19)) | v20)))(v22);
}

uint64_t sub_100038480@<X0>(int a1@<W8>)
{
  v7 = STACK[0x4DC];
  v8 = STACK[0x480];
  v9 = STACK[0x518];
  v10 = &v5[6 * v1];
  v10[2] = v4;
  v10[3] = v9;
  *(v10 + 2) = v8;
  v10[6] = v7;
  *v5 = a1 + 1;
  LODWORD(STACK[0x3F0]) = v3;
  v12 = v3 - 233762112 > (((v2 ^ 0x126) + 1444) ^ 0xC84F58EC) && v3 - 233762112 < SLODWORD(STACK[0x2C0]);
  return (*(v6 + 8 * ((v12 * ((163 * (v2 ^ 0x126)) ^ 0x164)) ^ v2)))();
}

uint64_t sub_100038938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, uint64_t a57)
{
  STACK[0x3D8] = v58;
  STACK[0x3C8] = STACK[0x2D8];
  STACK[0x430] = *(v59 + 8 * (v57 ^ 0xBA4));
  return sub_1000389BC(((2 * a56) & 0xFF7FF2BE) + 1526130364 + (((v57 ^ 0xBA4) - 4196009) ^ a56), 167, a3, a4, 522786748, 3772181759, 2146434026, 2073, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a57 + 160);
}

uint64_t sub_1000389BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x520] = ((8 * (v70 ^ 0x110u)) ^ 0x5D8) + a70;
  STACK[0x4A0] = v71;
  if (v71)
  {
    v74 = v72 == 0;
  }

  else
  {
    v74 = 1;
  }

  v75 = !v74;
  return (*(v73 + 8 * ((v75 * (v70 ^ 0x1B9)) ^ v70)))();
}

void sub_100038A08()
{
  v0 = __chkstk_darwin();
  v1 = *v0 - 50899313 * ((v0 & 0xEEFB953D | ~(v0 | 0xEEFB953D)) ^ 0x52BF759);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100038BAC()
{
  v3 = (*(v2 + 8 * (v0 ^ 0xC89)))();
  STACK[0x520] += ((v0 - 1437) | 0x100u) ^ 0xFFFFFFFFFFFFFEFBLL;
  return (*(v2 + 8 * ((v0 - 1232) ^ (467 * (v1 != 972359704)))))(v3);
}

uint64_t sub_100038CAC(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = (a11 + (v13 + v11));
  v19 = *v18;
  v20 = v18[1];
  v21 = (a8 + v13);
  *v21 = vaddq_s8(vsubq_s8(v19, vandq_s8(vaddq_s8(v19, v19), a5)), a6);
  v21[1] = vaddq_s8(vsubq_s8(v20, vandq_s8(vaddq_s8(v20, v20), a5)), a6);
  return (*(v17 + 8 * (((v13 + 32 == (((v12 - 647) | v14) ^ v15)) * v16) ^ v12)))();
}

uint64_t sub_100038D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v20 = 143681137 * (((v19 - 144) & 0xE1729D49 | ~((v19 - 144) | 0xE1729D49)) ^ 0x7FD5E966);
  *(v19 - 136) = &a16;
  *(v19 - 128) = v20 + v18 - 672 + 278;
  *(v19 - 144) = v20 ^ 0x22DD9984;
  v21 = (*(v16 + 8 * (v18 + 691)))(v19 - 144);
  return (*(v16 + 8 * (((v18 + 227 + ((v18 - 672) ^ 0x387) - 3826) * (v17 == 0)) ^ (v18 + 167))))(v21);
}

uint64_t sub_100038E18@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int8x16_t a20, int8x16_t a21, uint64_t a22, uint64_t a23, int8x16_t a24, int8x16_t a25)
{
  v31 = (v28 + a1);
  v32 = veorq_s8(*v26, *v31);
  v33 = veorq_s8(v26[1], v31[1]);
  return (*(v30 + 8 * ((((v29 & 0xFFFFFFE0) == 32) * (21 * (v27 ^ 0x12E) + 74)) ^ v27)))(vorrq_s8(vqtbl1q_s8(v32, a25), v25), vorrq_s8(vqtbl1q_s8(v32, a24), 0), vorrq_s8(vqtbl1q_s8(v32, a21), 0), vorrq_s8(vqtbl1q_s8(v32, a20), 0), vorrq_s8(vqtbl1q_s8(v33, a25), 0), vorrq_s8(vqtbl1q_s8(v33, a21), 0), vorrq_s8(vqtbl1q_s8(v33, a24), 0), vorrq_s8(vqtbl1q_s8(v33, a20), 0));
}

uint64_t sub_100038F54(uint64_t a1, unint64_t a2, int a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v16 = HIDWORD(a2) + a4 * (*(a7 + 4 * a6) ^ v8) + (*(v13 + 4 * a5) ^ v8);
  *(v13 + 4 * a5) = v16 + v8 - ((v16 << (v11 & v12 ^ v14)) & v9);
  return (*(v10 + 8 * (((a6 + 1 == v7) * v15) ^ a3)))();
}

uint64_t sub_10003903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, _DWORD *a16)
{
  v20 = (*a16 ^ 0x98437BEB) * *(*(a11 + 32) + 16);
  v21 = 50899313 * ((v18 - 636211487 - 2 * ((v18 - 128) & 0xDA142F61)) ^ 0xCE3BB2FA);
  *(v18 - 128) = v16 - v21 + 145;
  *(v18 - 124) = v21 ^ 0x590F65B0;
  *(v18 - 120) = ((v16 - 871573102) & 0x33F32767 ^ 0xD3F7A9BE) - v21 + (v20 ^ 0x7EEFDEE5) + ((2 * v20) & 0xFDDFBDCA);
  *(v18 - 104) = &a15;
  *(v18 - 112) = a12;
  v22 = (*(v17 + 8 * (v16 + 978)))(v18 - 128);
  return (*(v17 + 8 * ((680 * (a3 == 1)) ^ v16)))(v22);
}

uint64_t sub_100039170@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x1A7;
  v4 = 1388665877 * (((v2 - 200) & 0x5BA628ED | ~((v2 - 200) | 0x5BA628ED)) ^ 0x29F4B5FE);
  *(v2 - 184) = v4 + v3 + 185;
  *(v2 - 180) = v4 - 1742635055;
  *(v2 - 168) = 0;
  *(v2 - 192) = &STACK[0x358];
  *(v2 - 200) = &STACK[0x418];
  v5 = (*(v1 + 8 * (v3 ^ 0x9E6u)))(v2 - 200);
  v6 = *(v1 + 8 * (((*(v2 - 176) == ((v3 - 1380436271) ^ 0x944D3F79)) * (((v3 - 1380436271) & 0x5247C8DF) + 26)) ^ v3));
  STACK[0x2E8] = *(&off_10050ED90 + (v3 | 5u)) - 8;
  return v6(v5);
}

uint64_t sub_1000392B0()
{
  LODWORD(STACK[0x4AC]) = v2;
  STACK[0x520] = v1;
  LODWORD(STACK[0x444]) = v2;
  return sub_100022258();
}

uint64_t sub_100039378@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x49C]) = a1;
  v6 = (*(v4 + 8 * (v1 ^ 0xC6E)))(v3 + 4, 0);
  v7 = v3[4] + 46231500 - ((2 * v3[4]) & 0x582DF98);
  v3[1] = v3[6] + 46231500 - ((v3[6] << ((v1 + 73) ^ 0xA9)) & 0x582DF98);
  v3[2] = v7;
  v8 = (*(v4 + 8 * (v1 + 994)))(v6);
  v3[3] = v8 + 46231500 - ((2 * v8) & 0x582DF98);
  v9 = (*(v4 + 8 * (v1 ^ 0xC1E)))();
  *v3 = v9 + 46231500 - ((2 * v9) & 0x582DF98);
  v10 = (1664525 * (*v2 ^ (*v2 >> 30))) ^ v2[1];
  v2[1] = (((*v3 ^ 0xE8B2B5A0) + 390941280) ^ ((*v3 ^ 0x843B4A58) + 2076489128) ^ ((*v3 ^ 0x6E489034) - 1850249268)) - 1319224355 + (((v10 ^ 0x1FC83426) + 1319831497) ^ ((v10 ^ 0x4E1168AF) + 527588162) ^ ((v10 ^ 0x51D95C89) + 12218216));
  v11 = 1361651671 * ((0xFD58B8C0232C4E9 - ((v5 - 200) | 0xFD58B8C0232C4E9) + STACK[0x2F8]) ^ 0x2387074A2EEFCB9ALL);
  *(v5 - 184) = 2 - v11;
  *(v5 - 160) = 1212454120 - v11 + v1 + 73;
  *(v5 - 200) = -v11;
  *(v5 - 196) = v11 + v1 - 839977131 + 1;
  *(v5 - 168) = 623 - v11;
  *(v5 - 176) = ((v1 - 839977131) ^ 0x76) - v11;
  *(v5 - 172) = v1 - 839977131 - v11;
  v12 = (*(v4 + 8 * ((v1 + 73) ^ 0xCEE)))(v5 - 200);
  return (*(v4 + 8 * *(v5 - 192)))(v12);
}

uint64_t sub_1000395F0@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, unsigned int a5@<W8>)
{
  v11 = v9 < v8;
  v12 = *(a4 + v5);
  v13 = v5 + 1;
  *(a2 + a5) = v12 + ~(((3 * (v6 ^ a1)) ^ a3) & (2 * v12)) - 88;
  if (v11 == v13 > v7)
  {
    v11 = v13 + v8 < v9;
  }

  return (*(v10 + 8 * ((v11 | (32 * v11)) ^ v6)))();
}

uint64_t sub_100039658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, char a17, __int16 a18, char a19, __int16 a20, char a21)
{
  v25 = 1082434553 * ((2 * ((v24 - 152) & 0x60425370) - (v24 - 152) + 532524172) ^ 0x84FA5A06);
  *(v24 - 136) = &a21;
  *(v24 - 152) = &a14;
  *(v24 - 140) = v25 + v21 + 296704421;
  *(v24 - 112) = &a19;
  *(v24 - 104) = a12;
  *(v24 - 120) = &a17;
  *(v24 - 128) = v25 + v23 + 685;
  v26 = (*(v22 + 8 * (v23 + 2217)))(v24 - 152);
  return (*(v22 + 8 * (((*(v24 - 144) == v23 + 972359516) * (v23 + 187)) ^ v23)))(v26);
}

uint64_t sub_1000397A4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16)
{
  v19 = &a16 + a1;
  *v19 = 0xA7A7A7A7A7A7A7A7;
  *(v19 + 1) = 0xA7A7A7A7A7A7A7A7;
  return (*(v18 + 8 * ((113 * (((v17 - 665) ^ 0xA0) != (((v17 - 665) ^ 0xFFFFFFFFFFFFFF40) & v16))) ^ (v17 - 665))))();
}

void sub_100039818(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 4) - 1494181296;
  if (v2 < 0)
  {
    v2 = 1494181296 - *(*(a1 + 16) + 4);
  }

  v1 = *a1 ^ (1388665877 * ((113357547 - (a1 | 0x6C1B2EB) + (a1 | 0xF93E4D14)) ^ 0x74932FF8));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100039930()
{
  v6 = *(v9 + 16);
  v7 = 143681137 * ((((v5 - 144) | 0xEBC3CB05) + (~(v5 - 144) | 0x143C34FA)) ^ 0x8A9B40D4);
  *(v5 - 128) = v7 + v0 + 711;
  *(v5 - 136) = v10;
  *(v5 - 144) = v7 ^ 0x22DC9984;
  (*(v3 + 8 * (v0 ^ 0xB04)))(v5 - 144);
  *(v5 - 136) = v10;
  *(v5 - 128) = v1;
  *(v5 - 120) = (v0 + 820) ^ (1785193651 * ((2 * ((v5 - 144) & 0x27F97488) - (v5 - 144) + 1476823923) ^ 0x4BDA6753));
  *(v5 - 112) = v4;
  *(v5 - 104) = v2;
  *(v5 - 144) = v4;
  (*(v3 + 8 * (v0 + 1770)))(v5 - 144);
  *(v5 - 144) = v4;
  *(v5 - 136) = (v0 + 380) ^ (1785193651 * ((-148316720 - ((v5 - 144) | 0xF728DDD0) + ((v5 - 144) | 0x8D7222F)) ^ 0x1B0BCE0F));
  *(v5 - 128) = v6;
  return (*(v3 + 8 * (v0 + 1797)))(v5 - 144);
}

uint64_t sub_100039C24(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35)
{
  if (a35 == 2)
  {
    return (*(v35 + 8 * (((a34 != 0) * ((a5 - 962457936) & 0x5DC0FBA7 ^ 0x2F9)) ^ (a3 + a5 + 20))))(3684497231);
  }

  if (a35 != 1)
  {
    JUMPOUT(0x100039D20);
  }

  return (*(v35 + 8 * ((52 * (a34 == ((a5 + a3) ^ 0x193))) ^ (a5 + a3))))(3684497231, a9);
}

uint64_t sub_100039D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v20 = 1037613739 * ((((2 * (v19 - 120)) | 0x3451313E) - (v19 - 120) - 438868127) ^ 0xCB2AB5E0);
  *(v19 - 104) = v20 + v17 + 44;
  *(v19 - 120) = ((v16 ^ 0xECBBEFEF) + 2070756736 + ((v17 - 646455796) & (2 * v16))) ^ v20;
  *(v19 - 112) = &a16;
  v21 = (*(v18 + 8 * (v17 ^ 0x8B0)))(v19 - 120);
  return sub_100039DFC(v21);
}

uint64_t sub_100039DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v22 - 112) = &a18;
  *(v22 - 104) = a15;
  *(v22 - 120) = (v21 + 84) ^ (((((v22 - 120) | 0xEC47E9E1) - (v22 - 120) + ((v22 - 120) & 0x13B81618)) ^ 0xB00ABD64) * v19);
  v23 = (*(v18 + 8 * (v21 ^ 0xBF3)))(v22 - 120);
  return (*(v18 + 8 * (((*(v22 - 116) > (((v21 - 21) | 0x64) ^ (v20 - 660))) * (v21 - 725)) | v21)))(v23);
}

uint64_t sub_100039EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v38 = (((a35 - 995914010) ^ 0xAD5D83CE) + 1584773725) ^ (a35 - 995914010) ^ (((a35 - 995914010) ^ 0xC34D8984) + 811970583) ^ (((a35 - 995914010) ^ 0x7EFF7BDD) - 1915272624) ^ (((a35 - 995914010) ^ 0x1C38B7FA) + v35 - 1076 + *(v37 - 172) - 284128874);
  *(v37 - 172) = (v35 - 1076) ^ 0x2A3;
  v40 = v38 != 215467629 && (((v35 - 1076) ^ 0x137) & v38) == 13;
  v41 = *(v36 + 8 * ((v40 * ((v35 - 931) ^ 0x1CD)) | (v35 - 1076)));
  *(v37 - 176) = -42899;
  return v41();
}

uint64_t sub_10003A08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v24 = 1037613739 * ((v23 - 985299371 - 2 * ((v23 - 120) & 0xC54586CD)) ^ 0x1447ABB2);
  *(v23 - 112) = &a14;
  *(v23 - 104) = v24 + v16 - 712;
  *(v23 - 120) = ((v19 ^ 0xFD6DEDEF) + 1790656384 + ((v16 - 86255848) & (2 * v19))) ^ v24;
  (*(v18 + 8 * (v16 + 1180)))(v23 - 120);
  *(v23 - 120) = (v16 - 333) ^ ((((v20 | (v23 - 120)) - ((v23 - 120) & v20)) ^ 0x7DEBBFE0) * v21);
  *(v23 - 112) = &a16;
  *(v23 - 104) = a13;
  v25 = (*(v18 + 8 * ((v16 + 105) ^ 0xDF9)))(v23 - 120);
  return (*(v18 + 8 * ((31 * (*(v23 - 116) > ((v16 + 348129337) & (v22 + 70)) + v17 + ((v16 + 348129337 + v22) | 9u))) ^ (v16 + 105))))(v25);
}

uint64_t sub_10003A1C8@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) + (v4 | ~(2 * *(v2 + v7))) - 88;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

void sub_10003A1FC()
{
  v3 = v0;
  v4 = (*(v0 + 8 * (v1 ^ 0xD7F)))(3);
  v5 = *(&off_10050ED90 + (v1 ^ 0x4D5));
  *v5 = v4;
  (*(v3 + 8 * (v1 ^ 0xCA6)))();
  v6 = (*(v3 + 8 * (v1 + 1263)))(66);
  v7 = *(&off_10050ED90 + (v1 ^ 0x4D3));
  *(v7 - 4) = v6;
  v7 = (v7 - 4);
  (*(v3 + 8 * (v1 ^ 0xCA6)))();
  v8 = (*(v3 + 8 * (v1 ^ 0xD7F)))(2);
  v9 = *(&off_10050ED90 + v1 - 1047);
  *(v9 - 4) = v8;
  *v8 = 7196;
  **v7 = 0;
  **(&off_10050ED90 + (v1 ^ 0x4C9)) = 0;
  v10 = *(v9 - 4);
  v11 = *v7;
  v12 = *v5;
  v11[64] = 1;
  **(&off_10050ED90 + v1 - 1045) = 51;
  v11[9] = -15;
  v10[1] = 79;
  **(&off_10050ED90 + v1 - 932) = v2;
  **(&off_10050ED90 + v1 - 1039) = -77;
  *v10 = -22;
  v11[11] = 73;
  *v12 = 68;
  v11[20] = -44;
  **(&off_10050ED90 + v1 - 1095) = -121;
  v11[36] = -11;
  v11[45] = -113;
  v11[49] = 25;
  *(v12 + 1) = 6695;
  **(&off_10050ED90 + v1 - 1087) = -122;
  **(&off_10050ED90 + (v1 ^ 0x4C1)) = 88;
  v11[26] = -34;
  v11[60] = -5;
  **(&off_10050ED90 + (v1 ^ 0x4C0)) = 96;
  **(&off_10050ED90 + (v1 ^ 0x41A)) = v2;
  **(&off_10050ED90 + v1 - 1085) = 17;
  **(&off_10050ED90 + (v1 ^ 0x414)) = 119;
  v11[52] = 47;
  v11[50] = 102;
  v11[59] = -59;
  v11[22] = -36;
  v11[29] = 59;
  v11[27] = 34;
  v11[40] = -80;
  v11[13] = 23;
  **(&off_10050ED90 + (v1 ^ 0x409)) = 99;
  v11[53] = 3;
  **(&off_10050ED90 + v1 - 980) = -109;
  v11[39] = 54;
  v11[57] = 73;
  **(&off_10050ED90 + (v1 ^ 0x4E8)) = 83;
  v11[37] = -52;
  v11[63] = -72;
  v13 = *v7;
  *(v13 + 65) = -85;
  *(v13 + 5) = -14;
  *(v13 + 54) = 32;
  *(v13 + 58) = 113;
  *(v13 + 8) = 16909;
  *(v13 + 28) = -39;
  *(v13 + 47) = -4065;
  *(v13 + 21) = 15;
  *(v13 + 41) = -29527;
  *(v13 + 38) = -121;
  *(v13 + 31) = 8824;
  *(v13 + 10) = -98;
  *(v13 + 7) = 27031;
  *(v13 + 23) = -86;
  *(v13 + 14) = -90;
  *(v13 + 62) = -105;
  *(v13 + 35) = 52;
  *(v13 + 33) = 15089;
  *(v13 + 55) = -30385;
  *(v13 + 46) = -17;
  *(v13 + 4) = -92;
  *(v13 + 15) = 72;
  *(v13 + 51) = -15;
  *(v13 + 12) = -15;
  *(v13 + 61) = 73;
  *(v13 + 30) = 36;
  *(v13 + 25) = 69;
  *(v13 + 9) = -9761;
  *(v13 + 43) = 19744;
  *(v13 + 6) = 45;
  *(v13 + 24) = -72;
  JUMPOUT(0x10003C648);
}

uint64_t sub_10003CAA8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * (((((v3 - 328) | 0x43) ^ (v3 - 1035604809) & 0x3DBA0FCD ^ 0x58D) * (v4 == 1494181296)) | v3)))();
}

uint64_t sub_10003CBB0()
{
  v5 = *(v1 + v2) - (*(v3 + v2) - 101);
  v6 = ((2 * v5) & 0x5C63B7FE) + (v5 ^ 0x2E31DBFF) == ((2 * (((v0 - 258) | 0x588) ^ 0x569)) ^ 0x2E31DA7D);
  return (*(v4 + 8 * (((2 * v6) | (4 * v6)) ^ v0)))();
}

uint64_t sub_10003CC70(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v25 = LOBYTE(STACK[0x2D8]);
  if (v25 == 2)
  {
    v37 = LODWORD(STACK[0x2D0]);
    v38 = (v16 + v22 + 1068559148);
    v39 = ((v38[1] ^ a4) << 16) | (((((v17 + 149499864) & 0xF716D3F9) - 81) ^ *v38) << 24) | ((v38[2] ^ a4) << 8);
    *v18 = (v39 | v38[3] ^ a4) + v20 - 2 * ((v39 | v38[3] ^ a4) & (v20 + 4) ^ (v38[3] ^ a4) & 4);
    return (*(v19 + 8 * ((259 * ((v22 + 1068559152) < 0x40)) ^ (v17 + 1023))))(v37);
  }

  else
  {
    if (v25 != 1)
    {
      JUMPOUT(0x100034B90);
    }

    v26 = (v16 + v22 + 1068559148);
    v27 = *v26 ^ a4;
    LODWORD(v26) = ((v26[2] ^ a4) << 16) | ((v26[3] ^ a4) << 24) | v27 | ((v26[1] ^ (v21 - 29)) << 8);
    LODWORD(v26) = v26 + v20 - 2 * (v26 & (v20 + 7) ^ v27 & 7);
    v28 = ((2 * ((v23 + 5) ^ 4)) ^ 0x8209008) & 0x1BE7B3FD | (v23 + 5) ^ 4;
    v29 = (4 * v28) & 0x64184C04 ^ v28 ^ ((4 * v28) ^ (v24 + 20)) & 0x1BE7B3F0;
    v30 = (v24 ^ 0x6F9ECFC0) & 0x1BE7B3F0 ^ 5;
    v31 = (16 * v29) & v23 ^ v29 ^ ((16 * v29) ^ 0x4184C010) & v30;
    v32 = (16 * v30) & v23 ^ 0xA4180C05 ^ ((16 * v30) ^ 0x4184C050) & v30;
    v33 = v31 ^ (v31 << 8) & v23 ^ ((v31 << 8) ^ 0x180C0100) & v32 ^ 0x40084004;
    v34 = (v33 << 16) ^ 0x4C050000u;
    v35 = (v33 << 16) & 0x64180000;
    v18[(((2 * (v35 ^ v33 ^ v34 & ((v32 << 8) & 0x64180000 ^ 0x64100000 ^ ((v32 << 8) ^ 0x184C0000) & v32))) ^ 0x3FB0EB2C) >> 2) ^ 0x201FE337] = v26;
    return (*(v19 + 8 * ((126 * ((v22 + 1068559152) > 0x3F)) ^ (v17 + 1684))))(v35, v34, 1679294464, 1068559148, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

void sub_10003CFC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = LOBYTE(STACK[0x2CC]);
  if (v4 == 1)
  {
    v9 = STACK[0x2B0];
    v10 = STACK[0x2AC];
    LOBYTE(STACK[0x2A4]) = ((8 * (LOBYTE(STACK[0x2B0]) - ((2 * LOBYTE(STACK[0x2B0])) & 0xAA)) - 72) ^ 0xF) - 16;
    LOBYTE(STACK[0x2A5]) = (((a4 - 120) & 0xDF) + 80) ^ (v9 >> 5);
    LOBYTE(STACK[0x2A6]) = (v9 >> 13) ^ 0xA7;
    LOBYTE(STACK[0x2A7]) = (v9 >> 21) ^ 0xA7;
    LOBYTE(STACK[0x2A8]) = ((__PAIR64__(v10, v9) >> 29) - ((2 * (__PAIR64__(v10, v9) >> 29)) & 4) - 126) ^ 0x25;
    LOBYTE(STACK[0x2A9]) = (v10 >> 5) ^ 0xA7;
    LOBYTE(STACK[0x2AA]) = (v10 >> 13) ^ 0xA7;
    v8 = (v10 >> 21) ^ 0xFFFFFFA7;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    v5 = STACK[0x2AC];
    v6 = STACK[0x2B0];
    v7 = (LODWORD(STACK[0x2AC]) >> 12) & 0x4E;
    LOBYTE(STACK[0x2A4]) = 95 * (a4 ^ (a4 - 9)) + (LODWORD(STACK[0x2AC]) >> 21) - ((LODWORD(STACK[0x2AC]) >> 20) & 0x4E) + 80;
    LOBYTE(STACK[0x2A5]) = (v5 >> 13) - v7 - 89;
    LOBYTE(STACK[0x2A6]) = (v5 >> 5) - ((v5 >> 4) & 0x4E) - 89;
    LOBYTE(STACK[0x2A7]) = (__PAIR64__(v5, v6) >> 29) - ((2 * (__PAIR64__(v5, v6) >> 29)) & 0x4E) - 89;
    LOBYTE(STACK[0x2A8]) = (v6 >> 21) - ((v6 >> 20) & 0x4E) - 89;
    LOBYTE(STACK[0x2A9]) = (v6 >> 13) - ((v6 >> 12) & 0x4E) - 89;
    LOBYTE(STACK[0x2AA]) = (v6 >> 5) - ((v6 >> 4) & 0x4E) - 89;
    LOBYTE(v8) = (8 * (v6 - ((2 * v6) & 4)) + 16) ^ 0xB7;
  }

  LOBYTE(STACK[0x2AB]) = v8;
LABEL_6:
  JUMPOUT(0x100031A0CLL);
}

uint64_t sub_10003D16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v22 = 2066391179 * ((((v21 - 176) | 0x5256CFDD) + (~(v21 - 176) | 0xADA93022)) ^ 0xFD714DC4);
  *(v21 - 168) = a2;
  *(v21 - 176) = v20 - v22 + 330;
  *(v21 - 172) = a19 - v22;
  v23 = (*(v19 + 8 * (v20 ^ 0x90F)))(v21 - 176);
  v24 = STACK[0x270] & ((v20 + 1850703060) & 0x91B0831D ^ 0x23);
  *(&STACK[0x22C] + v24) = 39;
  return (*(v19 + 8 * ((1273 * (v24 > 0x37)) ^ v20)))(v23);
}

uint64_t sub_10003D258@<X0>(int a1@<W4>, int a2@<W8>)
{
  v9 = (v3 - 2);
  v10 = v2 + 2;
  *v9 = (v10 ^ v5) * (v10 + 17);
  *(v9 - 1) = (v10 + v6) * (v10 ^ 0xBB);
  return (*(v8 + 8 * (((v4 == 2) * v7) ^ (a1 + a2 + 1878))))();
}

uint64_t sub_10003D32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v18 = ((v17 + 1969876289) & 0x8A96104D) + v15 - 448042347 < a15 - 1969976642;
  if ((a15 - 1969976642) < 0xE54B6ADA != v15 > 0x1AB49525)
  {
    v18 = (a15 - 1969976642) < 0xE54B6ADA;
  }

  return (*(v16 + 8 * (((2 * v18) | (8 * v18)) ^ v17)))();
}

uint64_t sub_10003D3AC(uint64_t a1)
{
  v2 = 1785193651 * (((a1 | 0xC645374) - a1 + (a1 & 0xF39BAC8B)) ^ 0x1FB8BF54);
  v3 = *(a1 + 16) - v2;
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = 1037613739 * ((&v10 + 587612579 - 2 * (&v10 & 0x230641A3)) ^ 0xF2046CDC);
  v10 = (*(a1 + 52) ^ v2) + v8 - 717484469;
  v16 = v7;
  v11 = v6;
  v12 = v4;
  v13 = v5;
  v14 = v8 ^ (v3 - 1421510844);
  result = (*(*(&off_10050ED90 + (v3 ^ 0x54BA8F61)) + v3 - 1421510104))(&v10);
  *(a1 + 48) = v15;
  return result;
}

uint64_t sub_10003D4F8(uint64_t a1)
{
  v1 = 742307843 * (((a1 | 0xB9F25DC1) - (a1 & 0xB9F25DC1)) ^ 0xA7D0D094);
  v2 = *(a1 + 12) + v1;
  v3 = *(*(&off_10050ED90 + v2 - 1557) + 83);
  v4 = *(a1 + 4) - v1 - 534564827;
  v5 = v3 + 1293221649 > v4;
  if (v4 < 0x4D14FF11 != v3 > 0xB2EB00EE)
  {
    v5 = v3 > 0xB2EB00EE;
  }

  return (*(*(&off_10050ED90 + v2 - 1573) + ((v5 * ((v2 ^ 0x23F) - 1095)) ^ v2) - 1))();
}

uint64_t sub_10003D6B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, unsigned int a16)
{
  v19 = v16 + 975105834 > a16;
  if (a16 < a15 != v16 + 975105834 < (((v18 ^ (v18 - 1429)) - 1201) ^ 0x3A1EEC04u))
  {
    v19 = v16 + 975105834 < (((v18 ^ (v18 - 1429)) - 1201) ^ 0x3A1EEC04u);
  }

  return (*(v17 + 8 * ((55 * v19) ^ (a2 + v18 + 863))))();
}

uint64_t sub_10003D720(_DWORD *a1)
{
  v1 = a1[3] + 2066391179 * ((-2078713933 - (a1 | 0x841957B3) + (a1 | 0x7BE6A84C)) ^ 0xD4C12A54) - 9;
  v2 = v1 + *(*a1 + 4);
  v4 = v2 - 1494182017;
  v3 = (v2 - 1494182017) < 0;
  v5 = 1494182017 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  return (*(*(&off_10050ED90 + (v1 - 689)) + (((v5 > 0) * (v1 + 684)) ^ v1) - 1))();
}

uint64_t sub_10003D7D8(int8x16_t a1, int8x16_t a2)
{
  v8 = v2 + 2;
  v9 = v4 + 2;
  v10 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a1)), a2);
  v9[-1] = vaddq_s8(vsubq_s8(v8[-1], vandq_s8(vaddq_s8(v8[-1], v8[-1]), a1)), a2);
  *v9 = v10;
  return (*(v7 + 8 * (((v3 == 32) * ((v5 + 296) ^ v6)) ^ (v5 + 8))))();
}

uint64_t sub_10003D858@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 + 1287) ^ (843532609 * (((&v5 | 0x61CCF40C) - &v5 + (&v5 & 0x9E330BF0)) ^ 0x3D81A089));
  v7 = v3;
  v8 = v3;
  v6 = a1;
  return (*(v1 + 8 * (v2 + 2431)))(&v5);
}

void sub_10003DA38(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1037613739 * ((2 * (a1 & 0xDA3B98A6) - a1 + 633628505) ^ 0xF4C64A26));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10003DB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v35 - 136) = &a30;
  *(v35 - 128) = v33;
  *(v35 - 144) = ((v30 ^ 0x56B) + 1326) ^ (1037613739 * ((456763020 - ((v35 - 144) | 0x1B39A68C) + ((v35 - 144) | 0xE4C65973)) ^ 0x35C4740C));
  *(v35 - 120) = &a30;
  *(v35 - 112) = v34;
  (*(v32 + 8 * ((v30 ^ 0x56B) + 1769)))(v35 - 144);
  *(v35 - 136) = &a30;
  *(v35 - 128) = v33;
  *(v35 - 144) = ((v30 ^ 0x56B) + 1326) ^ (1037613739 * ((-238397004 - ((v35 - 144) | 0xF1CA59B4) + ((v35 - 144) | 0xE35A64B)) ^ 0xDF378B34));
  *(v35 - 120) = &a30;
  *(v35 - 112) = v34;
  (*(v32 + 8 * ((v30 ^ 0x56B) + 1769)))(v35 - 144);
  *(v35 - 144) = ((v30 ^ 0x56B) + 1326) ^ (1037613739 * ((((2 * (v35 - 144)) | 0x513584F4) - (v35 - 144) - 681230970) ^ 0xF998EF05));
  *(v35 - 136) = &a30;
  *(v35 - 128) = v33;
  *(v35 - 120) = &a30;
  *(v35 - 112) = v34;
  (*(v32 + 8 * ((v30 ^ 0x56B) + 1769)))(v35 - 144);
  v36 = 210068311 * ((((v35 - 144) | 0x57D1837) + (~(v35 - 144) | 0xFA82E7C8)) ^ 0x97AB2792);
  *(v35 - 144) = v36 + ((2 * (v31 - 540231018)) & 0x7D7DD5DC) - 269099144 + ((((708 * (v30 ^ 0x75F) + 694875763) & 0xD69505F7) + 1052698167) ^ (v31 - 540231018));
  *(v35 - 136) = (v30 ^ 0x56B) - v36 - 417;
  *(v35 - 128) = a13;
  v37 = (*(v32 + 8 * ((v30 ^ 0x56B) + 1776)))(v35 - 144);
  return (*(v32 + 8 * ((101 * (*(v35 - 140) == 529483433)) ^ v30 ^ 0x56B)))(v37);
}

uint64_t sub_10003DD9C()
{
  v6 = (((v0 | 0x9F94708F) - (v0 & 0x9F94708F)) ^ 0x12391263) * v4;
  *(v5 - 184) = v6 + v1 + 185;
  *(v5 - 180) = v6 - 1742635053;
  *(v5 - 200) = &STACK[0x418];
  *(v5 - 192) = &STACK[0x358];
  *(v5 - 168) = 0;
  v7 = (*(v3 + 8 * (v1 + 2278)))(v5 - 200);
  return (*(v3 + 8 * ((91 * (*(v5 - 176) == v2 + v1 - 79 + 5 * (v1 ^ 0x9D) - 130)) ^ v1)))(v7);
}

uint64_t sub_10003DE4C()
{
  v4 = v2 + 568077492 > (v0 + 495355547);
  if ((v0 + 495355547) < 0x89ECC05B != (v2 + 568077492) < 0x89ECC05B)
  {
    v4 = (v2 + 568077492) < 0x89ECC05B;
  }

  return (*(v1 + 8 * (((((v3 - 1202) | 0x369) - 434) * v4) ^ v3)))();
}

uint64_t sub_10003DEBC@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x22C] + a1 + 72);
  v6 = ((a1 << (v2 + 82)) & 0xBE9BFDF8) + (a1 ^ 0xDF4DFEFF) + v1;
  *(v3 + v6) = v5 ^ 0xD3;
  *(v3 + v6 + 1) = (BYTE1(v5) ^ 0xB9) - ((2 * (BYTE1(v5) ^ 0xB9)) & 0x4E) - 89;
  *(v3 + v6 + 2) = (BYTE2(v5) ^ 0xC8) - ((v5 >> 15) & 0x4E) - 89;
  *(v3 + v6 + 3) = (HIBYTE(v5) ^ 0xC) - ((2 * (HIBYTE(v5) ^ 0xC)) & 0x4E) - 89;
  return (*(v4 + 8 * ((2885 * (a1 + 4 < LODWORD(STACK[0x288]))) ^ v2)))();
}

uint64_t sub_10003DFD0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v56 = STACK[0x460];
  v57 = (LODWORD(STACK[0x3D0]) ^ 0x6F7E7DFE) - 105513046 + (((v53 ^ 0xA9F) - 553847883) & (2 * LODWORD(STACK[0x3D0])));
  v58 = 1388665877 * ((2 * ((v55 - 200) & 0x15764768) - (v55 - 200) - 360073068) ^ 0x6724DA78);
  v59 = STACK[0x278];
  *(v55 - 200) = a53;
  *(v55 - 192) = v59;
  *(v55 - 160) = v53 - v58 - 514;
  *(v55 - 180) = -22 - 21 * ((2 * ((v55 + 56) & 0x68) - (v55 + 56) - 108) ^ 0x78);
  *(v55 - 152) = STACK[0x280];
  *(v55 - 144) = v56;
  *(v55 - 184) = v57 ^ v58;
  *(v55 - 176) = (a1 ^ 0x7BDFF70E) - v58 + (((3 * (v53 ^ 0xA)) ^ 0x872) & (2 * a1)) - 537567744;
  *(v55 - 168) = &STACK[0x37C];
  v60 = (*(v54 + 8 * (v53 ^ 0xB53)))(v55 - 200);
  v61 = *(v55 - 172);
  LODWORD(STACK[0x444]) = v61;
  return (*(v54 + 8 * ((43 * (v61 == 972359704)) ^ v53)))(v60);
}

uint64_t sub_10003E10C@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v5.i64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v6.i64[0] = 0xA8A8A8A8A8A8A8A8;
  v6.i64[1] = 0xA8A8A8A8A8A8A8A8;
  v7 = vaddq_s8(vaddq_s8(*(v1 + a1 - 16), v6), vmvnq_s8(vandq_s8(vaddq_s8(*(v1 + a1 - 16), *(v1 + a1 - 16)), v5)));
  *(v1 + v2 + 1420) = vaddq_s8(vaddq_s8(*(v1 + a1 - 32), v6), vmvnq_s8(vandq_s8(vaddq_s8(*(v1 + a1 - 32), *(v1 + a1 - 32)), v5)));
  *(v1 + v2 + 1436) = v7;
  return (*(v4 + 8 * ((((((v3 - 4) ^ 0xFFFFFD37) & v1) != 32) * (((v3 - 205100296) & 0xC3996EF) - 1207)) ^ (v3 - 4))))(32);
}

uint64_t sub_10003E1EC()
{
  v2 = v0 & 0x860EAFF6;
  v3 = ((v0 & 0x860EAFF6) - 1078) | 0x4A8;
  v4 = 12 * (v0 & 0x860EAFF6 ^ 0x514);
  v5 = (*(v1 + 8 * (v0 & 0x860EAFF6 ^ 0xC01)))(1576);
  STACK[0x328] = v5;
  return (*(v1 + 8 * (((v5 != 0) * ((v4 ^ 0xFFFFFB33) + v3)) ^ v2)))();
}

void sub_10003E288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v6 = *(&off_10050ED90 + ((-109 * (dword_10058A970 ^ 0x95 ^ qword_10058A758)) ^ byte_1003E85E0[byte_1003E4E90[(-109 * (dword_10058A970 ^ 0x95 ^ qword_10058A758))] ^ 0xE9]) - 53);
  v7 = *(v6 - 4);
  v8 = *(&off_10050ED90 + (byte_1003E85EC[(byte_1003E4E98[(-109 * ((qword_10058A758 + v7) ^ 0x95)) - 8] ^ 0x11) - 12] ^ (-109 * ((qword_10058A758 + v7) ^ 0x95))) - 81);
  v9 = (*(v8 - 4) + v7) ^ &v11;
  *(v6 - 4) = (665663891 * v9) ^ 0xED30A8472429C395;
  *(v8 - 4) = 665663891 * (v9 ^ 0xED30A8472429C395);
  *a5 = 0;
  *a6 = 0;
  v12[0] = -542396526 - 1388665877 * (((v12 | 0x1A1A5330) - v12 + (v12 & 0xE5E5ACC8)) ^ 0x97B731DC);
  LOBYTE(v8) = -109 * (*(v6 - 4) ^ 0x95 ^ *(v8 - 4));
  v10 = *(&off_10050ED90 + ((-109 * (dword_10058A970 ^ 0x95 ^ qword_10058A758)) ^ byte_1003E85E0[byte_1003E4E90[(-109 * (dword_10058A970 ^ 0x95 ^ qword_10058A758))] ^ 0x7E]) - 41) - 8;
  (*&v10[8 * (byte_1003E4D90[byte_1003EFC74[v8 - 4] ^ 0x6B] ^ v8) + 16040])(v12);
  __asm { BRAA            X8, X17 }
}

void sub_10003E4B0(int a1@<W8>)
{
  v3 = (a1 - 1129392952) & 0x43512FDF;
  (*(v1 + 8 * (a1 + 2089)))(*STACK[0x218]);
  *(v2 - 200) = (v3 - 1197043899) ^ (1785193651 * (((v2 - 200) & 0x12C320D9 | ~((v2 - 200) | 0x12C320D9)) ^ 0xFEE03306));
  (*(v1 + 8 * (v3 + 856)))(v2 - 200);
  JUMPOUT(0x10003E544);
}

uint64_t sub_10003E58C()
{
  v0.n128_u64[0] = 0xA7A7A7A7A7A7A7A7;
  v0.n128_u64[1] = 0xA7A7A7A7A7A7A7A7;
  return sub_10003E5B8(428, v0);
}

uint64_t sub_10003E5B8(int a1, int8x16_t a2)
{
  v10 = ~v6 + v4;
  v11 = *(v3 + v10 - 15);
  v12 = *(v3 + v10 - 31);
  v13 = v2 + v10;
  *(v13 - 15) = veorq_s8(v11, a2);
  *(v13 - 31) = veorq_s8(v12, a2);
  return (*(v9 + 8 * (((v8 + v6 == v5) * a1) ^ v7)))();
}

uint64_t sub_10003E6A8()
{
  v5 = 2066391179 * ((((v4 - 200) | 0x4B7D2B48) - (v4 - 200) + ((v4 - 200) & 0xB482D4B0)) ^ 0xE45AA950);
  *(v4 - 192) = v2;
  *(v4 - 200) = v1 - v5 - 1076;
  *(v4 - 196) = v0 - v5 + 360356504;
  v6 = (*(v3 + 8 * (v1 ^ 0xC8D)))(v4 - 200);
  return (STACK[0x320])(v6);
}

uint64_t sub_10003E73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (v4 + 4 * (a3 + v7));
  *v9 = v6 ^ __ROR4__(*(v9 - 8) ^ *(v9 - 3) ^ *(v9 - 14) ^ *(v9 - 16), 31);
  return (*(v5 + 8 * ((2013 * (a3 + 1 != v8 + 80)) ^ v3)))(a1, 1068559148);
}

uint64_t sub_10003E8A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X4>, uint64_t a3@<X7>, unsigned int a4@<W8>)
{
  v14 = (((v13 ^ 0x372u) - 298 + v6) ^ HIDWORD(a2)) + (*(a3 + 4 * v7) ^ a4);
  v15 = v14 - ((2 * v14) & 0xA4879CB4) + v9;
  *(a3 + 4 * a1) = v15 ^ v10;
  *(a3 + 4 * v7) = HIDWORD(v15) ^ v11;
  return (*(v8 + 8 * (v13 ^ ((v5 + 1 == v4) * v12))))();
}

uint64_t sub_10003E940@<X0>(uint64_t a1@<X8>)
{
  v6 = (v5 - 490);
  *(a1 - 7 + (v4 ^ 0xFFFFFFFFFFFFFE15 ^ v6) + v3) = vadd_s8(vadd_s8(*(v2 - 7 + (v4 ^ 0xFFFFFFFFFFFFFE15 ^ v6) + v3), 0xA8A8A8A8A8A8A8A8), vmvn_s8(vand_s8(vadd_s8(*(v2 - 7 + (v4 ^ 0xFFFFFFFFFFFFFE15 ^ v6) + v3), *(v2 - 7 + (v4 ^ 0xFFFFFFFFFFFFFE15 ^ v6) + v3)), 0x4E4E4E4E4E4E4E4ELL)));
  return (*(v1 + 8 * ((2010 * ((v3 & 0xFFFFFFF8) - 8 == v4)) ^ v5)))();
}

uint64_t sub_10003E9E8(uint64_t result)
{
  **result = 0;
  *(result + 8) = -849707923;
  return result;
}

void sub_10003EA00()
{
  STACK[0x2B8] = STACK[0x290];
  STACK[0x450] = *(v1 + 8 * v0);
  JUMPOUT(0x1000347A4);
}

uint64_t sub_10003EB24(uint64_t a1)
{
  v2 = 1564307779 * ((1158644730 - (a1 | 0x450F83FA) + (a1 | 0xBAF07C05)) ^ 0x2DFDB016);
  v3 = *(a1 + 12) + v2;
  v4 = *(a1 + 16) + v2;
  v5 = *(a1 + 32) + v2;
  v6 = *a1;
  v7 = *(a1 + 24);
  v8 = (v4 ^ 0xE543C00B) & (2 * (v4 & 0xC84BE92C)) ^ v4 & 0xC84BE92C;
  v9 = ((2 * (v4 ^ 0x75574203)) ^ 0x7A39565E) & (v4 ^ 0x75574203) ^ (2 * (v4 ^ 0x75574203)) & 0xBD1CAB2E;
  v10 = v9 ^ 0x8504A921;
  v11 = (v9 ^ 0x20180000) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0xF472ACBC) & v10 ^ (4 * v10) & 0xBD1CAB2C;
  v13 = (v12 ^ 0xB410A820) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x90C0303)) ^ 0xD1CAB2F0) & (v12 ^ 0x90C0303) ^ (16 * (v12 ^ 0x90C0303)) & 0xBD1CAB20;
  v15 = v13 ^ 0xBD1CAB2F ^ (v14 ^ 0x9108A200) & (v13 << 8);
  v16 = v4 ^ (2 * ((v15 << 16) & 0x3D1C0000 ^ v15 ^ ((v15 << 16) ^ 0x2B2F0000) & (((v14 ^ 0x2C14090F) << 8) & 0x3D1C0000 ^ 0x21140000 ^ (((v14 ^ 0x2C14090F) << 8) ^ 0x1CAB0000) & (v14 ^ 0x2C14090F)))) ^ 0x27EA4DD6;
  v17 = 2066391179 * ((2 * (v19 & 0x1D1179B8) - v19 - 487684543) ^ 0x4DC90459);
  v19[1] = v16 + v17;
  v23 = v6;
  v20 = v7;
  v21 = v17 - 1592094861 + (((v5 ^ 0x6231BC94) - 1647426708) ^ ((v5 ^ 0x4E76CE3C) - 1316408892) ^ ((v5 ^ 0x5D866223) - 1569088035));
  v22 = v17 ^ (v3 + 2013067988);
  result = (*(*(&off_10050ED90 + (v3 ^ 0x88030AF4)) + v3 + 2013068964))(v19);
  *(a1 + 8) = v19[0];
  return result;
}

uint64_t sub_10003F2AC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x534]) = a1 + 64;
  v3 = LODWORD(STACK[0x574]) + (((v1 - 2200) | 0x441) ^ 0x2ABF2D42);
  v4 = a1 - 1854856365 > v3;
  if ((a1 - 1854856365) < 0x91712313 != v3 < ((v1 + 85254014) & 0xFAEB17FF ^ 0x91712305))
  {
    v4 = (a1 - 1854856365) < 0x91712313;
  }

  return (*(v2 + 8 * ((54 * v4) ^ v1)))();
}

void sub_10003F344(uint64_t a1)
{
  v1 = *(a1 + 12) - 50899313 * ((-2 - ((a1 | 0xB0C40541) + (~a1 | 0x4F3BFABE))) ^ 0x5B146725);
  v2 = *a1;
  v6 = v1 - 2066391179 * ((((&v4 | 0x8D705BB8) ^ 0xFFFFFFFE) - (~&v4 | 0x728FA447)) ^ 0xDDA8265F) - 69;
  v4 = v2;
  v3 = *(&off_10050ED90 + v1 - 767) - 8;
  (*&v3[8 * v1 + 12400])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10003F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *a25, char *a26, uint64_t a27, char a28)
{
  v44 = v29;
  v34 = ((((v33 - 144) | 0x9E95CF1) + (~(v33 - 144) | 0xF616A30E)) ^ 0x92AEAA7A) * v29;
  *(v33 - 128) = v32;
  *(v33 - 144) = &a20;
  *(v33 - 120) = (v28 - 622) ^ v34;
  *(v33 - 116) = v30 - v34 - 356424205 + 23 * (v28 ^ 0x78C);
  v35 = (*(v31 + 8 * (v28 + 458)))(v33 - 144);
  return sub_10005BB94(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_10003F5B8(uint64_t a1)
{
  v1 = *(a1 + 4) - 1388665877 * ((a1 & 0xF983F256 | ~(a1 | 0xF983F256)) ^ 0x8BD16F45);
  v2 = v1 ^ 0x46F;
  v3 = (v1 ^ 0xA6F09F51) + *(*(a1 + 8) + 4);
  if (v3 < 0)
  {
    v3 = -v3;
  }

  return (*(*(&off_10050ED90 + (v2 & 0x66297830)) + ((248 * (((v3 > 0) ^ ((v2 ^ 0x6F) - 58)) & 1)) ^ v2) - 1))();
}

uint64_t sub_10003F724@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, int a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = (v12 ^ a5) * a3;
  v15 = (v11 - 1);
  *(a7 + v15) = *(a8 + v15) ^ *(v9 + ((v14 - 1433) & v15)) ^ *(((v14 - 1433) & v15) + v10 + 5) ^ *(((v14 - 1433) & v15) + a9 + 1) ^ (((v14 + 103) & v15) * a4) ^ a6;
  return (*(v13 + 8 * (((((v15 == 0) ^ (((v14 + 93) ^ a1) + 1)) & 1) * a2) ^ (v14 - 556))))();
}

uint64_t sub_10003F7A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) + (~(2 * *(*(a1 + 8) + 12)) | 0xB1) - 88;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((123 * v4) ^ 0x439u)))(0);
}

uint64_t sub_10003F7F8@<X0>(uint64_t a1@<X0>, char a2@<W2>, unint64_t a3@<X3>, int a4@<W4>, char a5@<W5>, unsigned int a6@<W6>, uint64_t a7@<X8>)
{
  v13 = v10 - 1;
  *(a1 + v13) = *(v11 + v13) ^ *(a7 + (v13 & 0xF)) ^ *((v13 & 0xF) + v7 + 2) ^ ((v13 & 0xF) * a5) ^ *(v8 + (v13 & 0xF)) ^ a2;
  return (*(v12 + 8 * (((v13 == ((3 * (v9 ^ a6)) ^ a3)) * a4) ^ v9)))();
}

void sub_10003F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10003F9A8@<X0>(unsigned __int8 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v30 - 120) = v29 - 145;
  v31 = a1[5] ^ 0xE2;
  v32 = *(&off_10050ED90 + v29 - 447);
  *(v30 - 152) = v28;
  v33 = v32 - 8;
  LODWORD(v32) = *(v32 - 8 + v31);
  v34 = *(&off_10050ED90 + v29 - 350) - 12;
  v35 = v34[a1[15] ^ 0x92];
  v36 = v29;
  v37 = ((*(v33 + (((v29 + 111) ^ a1[13]) ^ 0x81u)) << 16) ^ 0xFB969779) & (v35 ^ 0xFFFFD79C);
  v38 = v34[(a1[7] ^ 0x379E8D4EC6A37F07) & 0x44004026 ^ 0x3200894C002233B4 ^ ((a1[7] ^ 0x379E8D4EC6A37F07) & 0x3200894C44227319 | a1[7] & 0xC0)];
  v39 = *(&off_10050ED90 + (v36 ^ 0x165)) - 4;
  v40 = (v38 ^ 0xFFFFFFF3) & ((v32 << 16) ^ 0x6613D89D);
  v41 = ((-1459617792 * v39[a1[4] ^ 0x57] + 1107296256) ^ 0x3D71697B) & ((v40 | v38 & 0x62) ^ 0x997C2126);
  LODWORD(v32) = -87 * v39[a1[12] ^ 0x68] - 62;
  v42 = ((-87 * v39[a1[8] ^ 0xB9] - 62) ^ 0x74) << 24;
  v43 = *(&off_10050ED90 + v36 - 325) - 12;
  LOBYTE(v38) = v43[a1[14] ^ 0xD6] + 37;
  v44 = ((((v38 << 8) ^ 0xFFFFDFFF) & ((v32 << 24) ^ 0x8A98E002) & 0xFFFFE0FF | ((v38 & 0x1F) << 8)) ^ 0xFCAFFD85) & ((v37 | v35 & 0x86) ^ 0x4C968F8) ^ v37 & 0xA1C88078;
  v45 = (v43[a1[6] ^ 0x87] + 37) << 8;
  v46 = v45 & 0x7400 ^ 0xD63C3120 ^ (v45 ^ 0xFFFFCBFF) & ((v41 | v40 & 0x8E8084) ^ 0x1ED16290);
  v47 = v34[a1[3] ^ 0x29];
  v48 = (v47 ^ 0xFFFFF003) & ((*(v33 + (a1[1] ^ 8)) << 16) ^ 0xDA1390A7) | v47 & 0x58;
  LOWORD(v34) = v34[a1[11] ^ 0x62];
  LODWORD(v33) = ((((*(v33 + (a1[9] ^ 0x3BLL)) << 16) ^ 0x15E310D7) & (v42 ^ 0xDFFF7ADF) | v42 & 0xEA000000) ^ 0xF99E2A2B) & (v34 | 0xFFFF7A00);
  LODWORD(v39) = v39[*a1 ^ 0xE1];
  LODWORD(v39) = ((-73 * v39 - 121 * (-82 - 2 * v39)) ^ 0x82) << 24;
  v49 = (v39 ^ 0x23FF88FF) & (v48 ^ 0xAB401841);
  LOBYTE(v48) = v43[a1[2] ^ 0x8FLL] + 37;
  v50 = v43[a1[10] ^ 0xB7] + 37;
  v51 = v44 ^ 0x941EEFBA;
  LODWORD(v43) = (v48 << 8) & 0xEEEE ^ 0xBA6BD9F8 ^ (v39 & 0x8E000000 ^ 0xC326991D ^ v49) & ((v48 << 8) ^ 0xFFFF27FF);
  v52 = (((v50 ^ 0xE7) << 8) & 0x1000 | ((v33 & 0xFFFFFFFC | v34 & 3) ^ 0x37A3D573) & ~((v50 ^ 0xE7) << 8)) ^ 0x1331EF8C;
  v53 = *(&off_10050ED90 + v36 - 322) - 8;
  v54 = *&v53[4 * (BYTE2(v44) ^ 0x9C)];
  v55 = *(&off_10050ED90 + (v36 ^ 0x166)) - 12;
  v56 = v32 ^ 0x88u;
  LODWORD(v34) = *&v55[4 * (v38 ^ 0x7E)] ^ 0x8BEB537A;
  *(v30 - 144) = v36;
  v57 = *(&off_10050ED90 + v36 - 304) - 4;
  v58 = (v54 ^ v34) - ((2 * (v54 ^ v34)) & 0xEE4F534E) - 148395609;
  v59 = *(&off_10050ED90 + (v36 ^ 0x1DC)) - 12;
  LODWORD(v39) = *&v59[4 * (v35 ^ 0x22)];
  v60 = (v58 ^ *&v57[4 * v56]) - ((2 * (v58 ^ *&v57[4 * v56])) & 0x77AA03FC) + 1003815422;
  *(v30 - 208) = v52;
  *(v30 - 204) = v43;
  v61 = v43 ^ v39 ^ v60;
  *(v30 - 196) = v46;
  v62 = (v61 - ((2 * v61) & 0x1C21149E) + 235965007) ^ v46;
  LODWORD(v39) = ((v62 ^ v52) - ((2 * (v62 ^ v52)) & 0x9A7165D6) + 1295561451) ^ v44 ^ 0x941EEFBA;
  v63 = *&v59[4 * ((((v62 ^ v52) - ((2 * (v62 ^ v52)) & 0xD6) - 21) ^ v44 ^ 0xBA) ^ 0x35)] ^ 0x3751DCDB;
  LODWORD(v39) = v39 ^ 0xF83672DE;
  *(v30 - 160) = BYTE1(v39);
  v64 = v63 ^ *&v55[4 * (BYTE1(v39) ^ 0x9E)];
  v65 = (v64 - ((2 * v64) & 0xEE4F534E) - 148395609) ^ *&v57[4 * ((v39 >> 24) ^ 0x86)];
  v66 = v61 ^ *&v53[4 * (BYTE2(v39) ^ 0xBA)] ^ (v65 - ((2 * v65) & 0xEDF1CBE) - 2022732193);
  v249 = v66 ^ v62 ^ 0xA25B684D;
  *(v30 - 200) = v51;
  LODWORD(v39) = ((v249 ^ 0xF73EC34E) - ((2 * (v249 ^ 0xF73EC34E)) & 0x9A7165D6) + 1295561451) ^ v51;
  v67 = v39 ^ 0x7E4FB786;
  v257 = (v39 ^ 0x7E4FB786) >> 24;
  v248 = ((v39 ^ 0x7E4FB786) >> 16);
  v68 = *&v57[4 * (v257 ^ 0x86)] ^ *&v53[4 * (v248 ^ 0xBA)];
  v241 = ((v39 ^ 0xB786) >> 8);
  v69 = ((v68 ^ 0x704827F8) - ((2 * (v68 ^ 0x704827F8)) & 0x1909BA4A) + 210033957) ^ *&v55[4 * (v241 ^ 0x9E)];
  *(v30 - 156) = v39;
  v70 = v66 ^ *&v59[4 * (v39 ^ 0x6D)] ^ (v69 - ((2 * v69) & 0x77AA03FC) + 1003815422);
  *(v30 - 124) = v70;
  v70 ^= 0xFEB4AEEu;
  LODWORD(v39) = v70 ^ v62 ^ v52 ^ 0xF83672DE;
  v182 = v62 ^ v52 ^ 0xF83672DE;
  v71 = v70;
  *(v30 - 232) = v39;
  v72 = v67 ^ v39;
  LODWORD(v39) = ((v67 ^ v39) >> 16);
  *(v30 - 252) = v39;
  LODWORD(v39) = *&v53[4 * (v39 ^ 0xBA)];
  *(v30 - 224) = BYTE1(v72);
  LODWORD(v39) = v39 ^ *&v55[4 * (BYTE1(v72) ^ 0x9E)] ^ 0x8BEB537A;
  *(v30 - 240) = HIBYTE(v72);
  LODWORD(v39) = (v39 - ((2 * v39) & 0xEE4F534E) - 148395609) ^ *&v57[4 * (HIBYTE(v72) ^ 0x86)];
  *(v30 - 164) = v72;
  v73 = v71;
  v255 = BYTE2(v71);
  v74 = v71 ^ *&v59[4 * (v72 ^ 0xEB)] ^ (v39 - ((2 * v39) & 0x77AA03FC) + 1003815422);
  v224 = v249 ^ 0xF73EC34E ^ v182;
  *(v30 - 136) = v74 ^ v224;
  LODWORD(v35) = v74 ^ v224 ^ 0x598844C8;
  v193 = v74 ^ v249 ^ 0x4E ^ v182 ^ 0xC8;
  v216 = v193 ^ v72;
  v219 = (v35 ^ v72 ^ 0xCD2CB9A0) >> 24;
  LODWORD(v39) = *&v59[4 * ((v35 ^ v72) ^ 0x83)] ^ *&v57[4 * (v219 ^ 0x86)] ^ 0xCCF2A859;
  v75 = v39 - ((2 * v39) & 0xEDF1CBE);
  LODWORD(v39) = v35 ^ v72 ^ 0xCD5DCD68;
  v201 = BYTE2(v39);
  v76 = (v75 - 2022732193) ^ *&v53[4 * (BYTE2(v39) ^ 0xBA)];
  v213 = BYTE1(v39);
  v77 = (v76 - ((2 * v76) & 0x1909BA4A) + 210033957) ^ *&v55[4 * (BYTE1(v39) ^ 0x9E)];
  v256 = v73 ^ v249 ^ 0xF73EC34E;
  *(v30 - 140) = v256 ^ 0x7E4FB786;
  v254 = v77 ^ v256 ^ 0x7E4FB786;
  v78 = v254 ^ 0xF39A3E26 ^ v72;
  v79 = *&v57[4 * ((v78 >> (v74 & 0x18) >> (v74 & 0x18 ^ 0x18)) ^ 0x86)] ^ *&v53[4 * (BYTE2(v78) ^ 0xBA)] ^ 0x704827F8;
  v80 = (v79 - ((2 * v79) & 0x1909BA4A) + 210033957) ^ *&v55[4 * (BYTE1(v78) ^ 0x9E)];
  v253 = v77 ^ v74;
  v252 = v254 ^ 0xF39A3E26 ^ v35;
  v185 = v77 ^ v74 ^ *&v59[4 * (v254 ^ 0x26 ^ v35 ^ v39 ^ 0x83)] ^ (v80 - ((2 * v80) & 0x77AA03FC) + 1003815422);
  v81 = v185 ^ 0x53DB0D92 ^ v254 ^ 0xF39A3E26;
  *(v30 - 256) = v185 ^ 0x53DB0D92;
  v82 = v81 ^ 0xF73EC34E;
  *(v30 - 148) = v81;
  LODWORD(v39) = v81 ^ 0xF73EC34E ^ v39;
  v83 = v39 ^ 0xBF7FF0FA;
  v84 = *&v53[4 * (((v39 ^ 0xBF7FF0FA) >> 16) ^ 0xBA)];
  *(v30 - 248) = v39;
  LODWORD(v39) = *&v59[4 * (v39 ^ 0x11)] ^ v84;
  v184 = HIBYTE(v83);
  v85 = ((v39 ^ 0xBCBA8FA1) - 2 * ((v39 ^ 0xBCBA8FA1) & 0x7727A9BF ^ v39 & 0x18) - 148395609) ^ *&v57[4 * (HIBYTE(v83) ^ 0x86)];
  v187 = BYTE1(v83);
  LODWORD(v39) = v185 ^ 0x53DB0D92 ^ *&v55[4 * (BYTE1(v83) ^ 0x9E)] ^ (v85 - ((2 * v85) & 0x1909BA4A) + 210033957);
  *(v30 - 132) = v39;
  v86 = v82 ^ v252 ^ 0xCD5DCD68;
  v231 = v39 ^ 0x85DB0D92 ^ v185 ^ 0x53DB0D92 ^ v254 ^ 0xF39A3E26;
  v204 = v39 ^ 0x85DB0D92;
  v236 = v231 ^ 0x484133B4 ^ v86;
  LODWORD(v39) = v236 ^ 0xBDE5CEDC ^ v83;
  LOBYTE(v49) = v39 ^ 0x26;
  v244 = (v39 ^ 0x29A3E26) >> 24;
  v251 = ((v39 ^ 0x3E26) >> 8);
  v87 = *&v57[4 * (v244 ^ 0x86)] ^ *&v55[4 * (v251 ^ 0x9E)] ^ 0xFBA37482;
  v239 = ((v39 ^ 0x29A3E26) >> 16);
  v88 = (v87 - ((2 * v87) & 0xEDF1CBE) - 2022732193) ^ *&v53[4 * (v239 ^ 0xBA)];
  v222 = v39;
  v207 = (v88 + 1003815422 + (~(2 * v88) | 0x8855FC03) + 1) ^ *&v59[4 * (v39 ^ 0xCD)];
  v209 = v231 ^ 0x484133B4 ^ v207 ^ v204;
  *(v30 - 128) = v207 ^ v204;
  v198 = v236 ^ 0xBDE5CEDC ^ v209 ^ 0x19868409;
  *(v30 - 176) = v209 ^ 0x19868409;
  LODWORD(v39) = v198 ^ 0xC130088F ^ v39 ^ 0x29A3E26;
  v89 = *&v57[4 * (((v39 ^ 0x7B68C86) >> 24) ^ 0x86)] ^ *&v55[4 * (((v39 ^ 0x8C86) >> 8) ^ 0x9E)] ^ 0xFBA37482;
  *(v30 - 212) = v39 ^ 0x7B68C86;
  v90 = (v89 - ((2 * v89) & 0xEDF1CBE) - 2022732193) ^ *&v53[4 * (((v39 ^ 0x7B68C86) >> 16) ^ 0xBA)];
  v232 = v207 ^ v204 ^ *&v59[4 * (v198 ^ 0x8F ^ v49 ^ 0x6D)] ^ (v90 - ((2 * v90) & 0x77AA03FC) + 1003815422);
  *(v30 - 168) = v232 ^ 0x7B68C86;
  v228 = v232 ^ 0x7B68C86 ^ v209 ^ 0x19868409 ^ v198 ^ 0xC130088F;
  *(v30 - 172) = v228 ^ 0xC104CD8D;
  LODWORD(v56) = v228 ^ 0xC104CD8D ^ v39 ^ 0x7B68C86;
  v247 = v228 ^ 0x8D ^ v39 ^ 0x86;
  v91 = *&v59[4 * (v247 ^ 0x49)];
  v246 = (v56 ^ 0xA91877A2) >> 24;
  LODWORD(v57) = *&v57[4 * (v246 ^ 0x86)];
  *(v30 - 116) = 0;
  LODWORD(v57) = ((v91 ^ 0xCCF2A859 ^ v57) - ((2 * (v91 ^ 0xCCF2A859 ^ v57)) & 0x1909BA4A) + 210033957) ^ *&v55[4 * (((v56 ^ 0x77A2) >> 8) ^ 0x9E)];
  v174 = ((v56 ^ 0xA91877A2) >> 16);
  HIDWORD(v181) = (v57 - ((2 * v57) & 0xEDF1CBE) - 2022732193) ^ *&v53[4 * (v174 ^ 0xBA)];
  v92 = *(v30 - 144);
  v93 = *(&off_10050ED90 + (v92 ^ 0x1B3)) - 4;
  LODWORD(v57) = (BYTE2(v182) ^ 0xFD84E2EE) - 2042320752 + *&v93[4 * (BYTE2(v182) ^ 0x7E)];
  v94 = *(&off_10050ED90 + v92 - 430);
  LODWORD(v59) = ((BYTE2(v62) ^ 0xFD84E228) - 2042320752 + *&v93[4 * (BYTE2(v62) ^ 0xB8)]) ^ (-1974868763 * *(v94 + 4 * (HIBYTE(v62) ^ 0xE7)) - 1944452531);
  v95 = *(&off_10050ED90 + (v92 ^ 0x1D8));
  LODWORD(v57) = (v57 - ((2 * v57) & 0xECE1818C) + 1987100870) ^ *(v95 + 4 * ((v62 ^ v52) ^ 0x33u));
  v96 = *(&off_10050ED90 + (v92 ^ 0x18A)) - 8;
  LODWORD(v59) = (v59 - ((2 * v59) & 0xCC13F682) - 435553471) ^ *&v96[4 * ((((v61 - ((2 * v61) & 0x149E) - 30129) ^ v46) >> 8) ^ 0x4B)];
  v191 = v59 - ((2 * v59) & 0xECE1818C);
  HIDWORD(v192) = *&v96[4 * (((v62 ^ v52) >> 8) ^ 0xE4)] ^ (-1974868763 * *(v94 + 4 * (((v62 ^ v52) >> 24) ^ 0x54)) - 1944452531) ^ (v57 - ((2 * v57) & 0xCC13F682) - 435553471);
  LODWORD(v59) = (((v185 ^ 0xB89A99EC) >> 16) ^ 0xFD84E2A4) - 2042320752 + *&v93[4 * (((v185 ^ 0xB89A99EC) >> 16) ^ 0x34)];
  v179 = v86 ^ 0xBFAB50FA;
  v97 = ((BYTE2(v179) ^ 0xFD84E2EB) - 2042320752 + *&v93[4 * (BYTE2(v179) ^ 0x7B)]) ^ *(v95 + 4 * (v86 ^ 0x5Fu)) ^ (-1974868763 * *(v94 + 4 * (HIBYTE(v86) ^ 0xD2)) - ((345229770 * *(v94 + 4 * (HIBYTE(v86) ^ 0xD2)) + 406062234) & 0xECE1818C) + 42648339);
  LODWORD(v43) = (-1974868763 * *(v94 + 4 * (v184 ^ 0xB6)) - ((345229770 * *(v94 + 4 * (v184 ^ 0xB6)) + 406062234) & 0xCC13F682) + 1914961294) ^ *&v96[4 * (v187 ^ 0x25)];
  v189 = v43 - ((2 * v43) & 0xECE1818C);
  LODWORD(v57) = *&v96[4 * ((v185 ^ 0x99EC) >> 8)] ^ (v59 - ((2 * v59) & 0xCC13F682) - 435553471);
  LODWORD(v35) = *(v30 - 148);
  LODWORD(v43) = (((v35 ^ 0xE14101D4) >> 16) ^ 0xFD84E2EA) - 2042320752 + *&v93[4 * (((v35 ^ 0xE14101D4) >> 16) ^ 0x7A)];
  HIDWORD(v186) = v57 - ((2 * v57) & 0xECE1818C);
  LODWORD(v186) = v97 - ((2 * v97) & 0xCC13F682);
  LODWORD(v57) = (v43 - ((2 * v43) & 0xECE1818C) + 1987100870) ^ *(v95 + 4 * (v35 ^ 0xA4u)) ^ (-1974868763 * *(v94 + 4 * (BYTE3(v35) ^ 0x40)) - 1944452531);
  v178 = v57 - ((2 * v57) & 0xCC13F682);
  LODWORD(v57) = (((v74 ^ 0xFC9A360D) >> 16) ^ 0xFD84E279) - 2042320752 + *&v93[4 * (((v74 ^ 0xFC9A360D) >> 16) ^ 0xE9)];
  v176 = v74 ^ *(v30 - 140);
  LODWORD(v59) = *(v94 + 4 * (HIBYTE(v176) ^ 0x39));
  LODWORD(v59) = (-1974868763 * v59 - ((345229770 * v59 + 406062234) & 0xCC13F682) + 1914961294) ^ *&v96[4 * ((v176 ^ 0xDA26) >> 8)];
  LODWORD(v43) = v57 - ((2 * v57) & 0xECE1818C);
  LODWORD(v57) = (v201 ^ 0xFD84E284) - 2042320752 + *&v93[4 * (v201 ^ 0x14)];
  LODWORD(v43) = (v43 + 1987100870) ^ *(v95 + 4 * (v74 ^ 0x7Du)) ^ (-1974868763 * *(v94 + 4 * (HIBYTE(v74) ^ 0x5D)) - 1944452531);
  v170 = *(v30 - 136) ^ 0xAF58D76C;
  v98 = (BYTE2(v170) ^ 0xFD84E2EB) - 2042320752 + *&v93[4 * (BYTE2(v170) ^ 0x7B)];
  HIDWORD(v188) = v59 - ((2 * v59) & 0xECE1818C);
  LODWORD(v59) = (v98 - ((2 * v98) & 0xECE1818C) + 1987100870) ^ *(v95 + 4 * (v193 ^ 0xD4u));
  LODWORD(v194) = v59 - ((2 * v59) & 0xCC13F682);
  v202 = (((v176 ^ 0xEA49DA26) >> 16) ^ 0xFD84E2EB) - 2042320752 + *&v93[4 * (((v176 ^ 0xEA49DA26) >> 16) ^ 0x7B)];
  LODWORD(v59) = (v57 - ((2 * v57) & 0xCC13F682) - 435553471) ^ *&v96[4 * (v213 ^ 0xE5)] ^ (-1974868763 * *(v94 + 4 * (v219 ^ 0xF0)) - 1944452531);
  v172 = v43 - ((2 * v43) & 0xCC13F682);
  v214 = v216 ^ 0xC3;
  v220 = v59 - ((2 * v59) & 0xECE1818C);
  v99 = (v248 ^ 0xFD84E219) - 2042320752 + *&v93[4 * (v248 ^ 0x89)];
  LODWORD(v59) = (v99 - ((2 * v99) & 0xCC13F682) - 435553471) ^ *&v96[4 * (v241 ^ 0x93)];
  v217 = v59 - ((2 * v59) & 0xECE1818C);
  v100 = *(v94 + 4 * (HIBYTE(v224) ^ 0xDE));
  LODWORD(v43) = (((v249 ^ 0x47E1030D) >> 16) ^ 0xFD84E2EB) - 2042320752 + *&v93[4 * (((v249 ^ 0x47E1030D) >> 16) ^ 0x7B)];
  LODWORD(v59) = (v43 - ((2 * v43) & 0xCC13F682) - 435553471) ^ *&v96[4 * ((v249 ^ 0x30D) >> 8)];
  v101 = ((BYTE2(v224) ^ 0xFD84E243) - 2042320752 + *&v93[4 * (BYTE2(v224) ^ 0xD3)]) ^ *&v96[4 * (BYTE1(v224) ^ 0xDB)] ^ (-1974868763 * v100 - ((345229770 * v100 + 406062234) & 0xCC13F682) + 1914961294);
  LODWORD(v169) = v59 - ((2 * v59) & 0xECE1818C);
  v168 = v224 ^ 0x6A;
  v225 = v101 - ((2 * v101) & 0xECE1818C);
  LODWORD(v59) = (BYTE2(v198) ^ 0xFD84E256) - 2042320752 + *&v93[4 * (BYTE2(v198) ^ 0xC6)];
  LODWORD(v43) = v59 - ((2 * v59) & 0xECE1818C);
  v102 = *(v30 - 128) ^ 0xDDA7A6D4;
  LODWORD(v59) = *(v94 + 4 * ((v207 ^ ~v204) >> 24));
  v103 = (-1974868763 * v59 - ((345229770 * v59 + 406062234) & 0xCC13F682) + 1914961294) ^ *&v96[4 * BYTE1(v102)];
  HIDWORD(a28) = v198 ^ 0x8F ^ v49 ^ 0xF9;
  LODWORD(v43) = (v43 + 1987100870) ^ *(v95 + 4 * (v236 ^ 0xDC ^ v209 ^ 9 ^ 0x67u)) ^ (-1974868763 * *(v94 + 4 * (HIBYTE(v198) ^ 0x3E)) - 1944452531);
  v196 = v103 - ((2 * v103) & 0xECE1818C);
  v164 = BYTE1(v209) ^ 0x9E;
  v104 = *(v94 + 4 * (HIBYTE(v209) ^ 0xCD));
  v105 = *(v95 + 4 * (v231 ^ 0xB4 ^ (v207 ^ v204) ^ 0xC9u)) ^ (-1974868763 * v104 - ((345229770 * v104 + 406062234) & 0xECE1818C) + 42648339);
  v195 = v105 - ((2 * v105) & 0xCC13F682);
  v235 = (BYTE2(v102) ^ 0xFD84E2A5) - 2042320752 + *&v93[4 * (BYTE2(v102) ^ 0x35)];
  v162 = BYTE1(v198) ^ 0x4F;
  v199 = v43 - ((2 * v43) & 0xCC13F682);
  v242 = (BYTE2(v209) ^ 0xFD84E2FB) - 2042320752 + *&v93[4 * (BYTE2(v209) ^ 0x6B)];
  LODWORD(v43) = (BYTE2(v231) ^ 0xFD84E271) - 2042320752 + *&v93[4 * (BYTE2(v231) ^ 0xE1)];
  LODWORD(v43) = (v43 - 435553471 + (~(2 * v43) | 0x33EC097D) + 1) ^ *&v96[4 * (BYTE1(v231) ^ 0x28)];
  v106 = *(v94 + 4 * (HIBYTE(v236) ^ 0x22));
  v107 = (-1974868763 * v106 - ((345229770 * v106 + 406062234) & 0xCC13F682) + 1914961294) ^ *&v96[4 * ((v236 ^ 0x4AFA) >> 8)];
  v166 = v236 ^ 0xE4;
  v210 = v107 - ((2 * v107) & 0xECE1818C);
  v237 = (((v236 ^ 0xBF864AFA) >> 16) ^ 0xFD84E2A5) - 2042320752 + *&v93[4 * (((v236 ^ 0xBF864AFA) >> 16) ^ 0x35)];
  v159 = v244 ^ 0x67;
  v240 = (v239 ^ 0xFD84E291) - 2042320752 + *&v93[4 * (v239 ^ 1)];
  LODWORD(v35) = *(v30 - 132);
  LODWORD(v59) = *(v94 + 4 * (BYTE3(v35) ^ 0x82));
  LODWORD(v59) = (-1974868763 * v59 - ((345229770 * v59 + 406062234) & 0xCC13F682) + 1914961294) ^ *&v96[4 * (BYTE1(v35) ^ 5)] ^ ((BYTE2(v204) ^ 0xFD84E2FE) - 2042320752 + *&v93[4 * (BYTE2(v204) ^ 0x6E)]);
  v245 = v59 - ((2 * v59) & 0xECE1818C);
  v153 = BYTE1(v228) ^ 0x4E;
  v108 = *(v94 + 4 * (HIBYTE(v228) ^ 0x27));
  v109 = (-1974868763 * v108 - ((345229770 * v108 + 406062234) & 0xECE1818C) + 42648339) ^ *(v95 + 4 * (v228 ^ 0x5Au));
  v158 = BYTE1(v232) ^ 0x82;
  LODWORD(v59) = (((v232 ^ 0xC1698200) >> 16) ^ 0xFD84E2EB) - 2042320752 + *&v93[4 * (((v232 ^ 0xC1698200) >> 16) ^ 0x7B)];
  v110 = (-1974868763 * *(v94 + 4 * (HIBYTE(v232) ^ 0x60)) - 1944452531) ^ *(v95 + 4 * (v232 ^ 0x72u)) ^ (v59 - ((2 * v59) & 0xECE1818C) + 1987100870);
  v111 = *(v94 + 4 * (v246 ^ 0x21));
  v112 = *(v95 + 4 * (v247 ^ 0x12u)) ^ ((v174 ^ 0xFD84E2A2) - 2042320752 + *&v93[4 * (v174 ^ 0x32)]) ^ (-1974868763 * v111 - ((345229770 * v111 + 406062234) & 0xECE1818C) + 42648339);
  v113 = HIBYTE(v249) ^ 0xE6;
  v160 = v249 ^ 0x7D;
  v155 = v110 - ((2 * v110) & 0xCC13F682);
  HIDWORD(v154) = v112 - ((2 * v112) & 0xCC13F682);
  LODWORD(v154) = v109 - ((2 * v109) & 0xCC13F682);
  v250 = (((v228 ^ 0x68D34E2A) >> 16) ^ 0xFD84E2EB) - 2042320752 + *&v93[4 * (((v228 ^ 0x68D34E2A) >> 16) ^ 0x7B)];
  v114 = (BYTE2(v253) ^ 0xFD84E2A2) - 2042320752 + *&v93[4 * (BYTE2(v253) ^ 0x32)];
  v115 = (BYTE2(v252) ^ 0xFD84E24B) - 2042320752 + *&v93[4 * (BYTE2(v252) ^ 0xDB)];
  v116 = (v115 - ((2 * v115) & 0xECE1818C) + 1987100870) ^ *(v95 + 4 * (v252 ^ 0x15u));
  LODWORD(v57) = (((v254 ^ 0xF39A3E26) >> 16) ^ 0xFD84E2B1) - 2042320752 + *&v93[4 * (((v254 ^ 0xF39A3E26) >> 16) ^ 0x21)];
  v117 = (v114 - ((2 * v114) & 0xECE1818C) + 1987100870) ^ *(v95 + 4 * (v253 ^ 0x54u)) ^ (-1974868763 * *(v94 + 4 * (HIBYTE(v253) ^ 0xEA)) - 1944452531);
  HIDWORD(v150) = v117 - ((2 * v117) & 0xCC13F682);
  HIDWORD(a2) = BYTE1(v252) ^ 0xCC;
  LODWORD(v150) = v116 - ((2 * v116) & 0xCC13F682);
  HIDWORD(v151) = v78 ^ 0x81;
  LODWORD(v151) = v254 ^ 0xB;
  LODWORD(v57) = (v57 - ((2 * v57) & 0xCC13F682) - 435553471) ^ *&v96[4 * (BYTE1(v254) ^ 0x56)] ^ (-1974868763 * *(v94 + 4 * (HIBYTE(v254) ^ 0x6D)) - 1944452531);
  HIDWORD(v152) = v57 - ((2 * v57) & 0xECE1818C);
  v205 = (BYTE2(v78) ^ 0xFD84E2DC) - 2042320752 + *&v93[4 * (BYTE2(v78) ^ 0x4C)];
  LODWORD(v57) = (*(v30 - 252) ^ 0xFD84E246) - 2042320752 + *&v93[4 * (*(v30 - 252) ^ 0xD6)];
  *(v30 - 252) = v57 - ((2 * v57) & 0xCC13F682);
  v118 = *(v30 - 124);
  LODWORD(v57) = (-1974868763 * *(v94 + 4 * (HIBYTE(v118) ^ 0x41)) - 1944452531) ^ ((v255 ^ 0xFD84E273) - 2042320752 + *&v93[4 * (v255 ^ 0xE3)]);
  v119 = (v57 - ((2 * v57) & 0xCC13F682) - 435553471) ^ *&v96[4 * (BYTE1(v118) ^ 0x6F)];
  LODWORD(v57) = BYTE2(*(v30 - 140));
  v120 = (v57 ^ 0xFD84E2B8) - 2042320752 + *&v93[4 * (v57 ^ 0x28)];
  v121 = (v120 - ((2 * v120) & 0xECE1818C) + 1987100870) ^ *(v95 + 4 * (v256 ^ 0xCEu));
  v122 = v121 - ((2 * v121) & 0xCC13F682);
  LODWORD(v39) = *(v30 - 232);
  v123 = *(v94 + 4 * ((v39 >> 24) ^ 0x18));
  v124 = *(v94 + 4 * (*(v30 - 240) ^ 7u));
  HIDWORD(v180) = -1974868763 * *(v94 + 4 * v113) - 1944452531;
  v125 = -1974868763 * *(v94 + 4 * (v257 ^ 0x32)) - 1944452531;
  v233 = -1974868763 * *(v94 + 4 * v159) - 1944452531;
  v229 = -1974868763 * *(v94 + 4 * (HIBYTE(v252) ^ 0x5B)) - 1944452531;
  LODWORD(v171) = -1974868763 * *(v94 + 4 * (HIBYTE(v78) ^ 0x17)) - 1944452531;
  LODWORD(v175) = -1974868763 * *(v94 + 4 * (HIBYTE(v256) ^ 0x2E)) - 1944452531;
  HIDWORD(v175) = -1974868763 * *(v94 + 4 * (HIBYTE(*(v30 - 136)) ^ 0xEu)) - 1944452531;
  LODWORD(v57) = (-1974868763 * v123 - ((345229770 * v123 + 406062234) & 0xECE1818C) + 42648339) ^ *(v95 + 4 * (v39 ^ 0xBCu));
  *(v30 - 160) = *&v96[4 * BYTE1(v179)];
  v227 = *&v96[4 * (BYTE1(*(v30 - 148)) ^ 0x2D)];
  *(v30 - 148) = *&v96[4 * BYTE1(v170)];
  LODWORD(v165) = *&v96[4 * v164];
  HIDWORD(v169) = *&v96[4 * v162];
  LODWORD(v167) = *&v96[4 * (v251 ^ 0x72)];
  HIDWORD(v161) = *&v96[4 * v158];
  v126 = *&v96[4 * v153];
  LODWORD(v180) = *&v96[4 * (BYTE1(v78) ^ 0x6E)];
  LODWORD(v35) = (*(v30 - 252) - 435553471) ^ *&v96[4 * (*(v30 - 224) ^ 0xB0)] ^ (-1974868763 * v124 - 1944452531);
  HIDWORD(v173) = *&v96[4 * (BYTE1(v253) ^ 0x83)];
  LODWORD(v163) = *&v96[4 * HIDWORD(a2)];
  LODWORD(v188) = *&v96[4 * (BYTE1(v256) ^ 0x74)];
  HIDWORD(v163) = *&v96[4 * (BYTE1(v39) ^ 0xF4)];
  LODWORD(v96) = *&v93[4 * (BYTE2(v39) ^ 0xF4)];
  LODWORD(v186) = v186 - 435553471;
  HIDWORD(v183) = v178 - 435553471;
  LODWORD(v194) = v194 - 435553471;
  LODWORD(v152) = v172 - 435553471;
  HIDWORD(v157) = v195 - 435553471;
  HIDWORD(v171) = v199 - 435553471;
  HIDWORD(v156) = v155 - 435553471;
  LODWORD(v157) = HIDWORD(v154) - 435553471;
  LODWORD(v183) = HIDWORD(v150) - 435553471;
  HIDWORD(v177) = v150 - 435553471;
  v200 = v122 - 435553471;
  HIDWORD(v194) = v57 - ((2 * v57) & 0xCC13F682) - 435553471;
  LODWORD(v177) = *(v95 + 4 * (v176 ^ 0x3Du));
  LODWORD(v57) = (BYTE2(v39) ^ 0xFD84E264) - 2042320752;
  v215 = *(v95 + 4 * v214);
  LODWORD(v39) = *(v95 + 4 * (*(v30 - 156) ^ 0xC9u));
  LODWORD(v181) = *(v95 + 4 * v160);
  *(v30 - 156) = *(v95 + 4 * v168);
  LODWORD(v161) = *(v95 + 4 * HIDWORD(a28));
  v127 = *(v95 + 4 * (*(v30 - 128) ^ 0x1Cu));
  LODWORD(v156) = *(v95 + 4 * (v222 ^ 0x97u));
  v128 = *(v95 + 4 * (v231 ^ 0xAEu));
  LODWORD(v173) = *(v95 + 4 * v166);
  HIDWORD(v165) = *(v95 + 4 * (*(v30 - 132) ^ 0x33u));
  HIDWORD(a28) = v57 + v96;
  v223 = *(v95 + 4 * HIDWORD(v151));
  HIDWORD(v167) = *(v95 + 4 * v151);
  LODWORD(v192) = *(v95 + 4 * (*(v30 - 124) ^ 0x45u));
  *(v30 - 164) = *(v95 + 4 * (*(v30 - 164) ^ 0xF2u));
  v129 = v191 + 1987100870;
  v130 = v189 + 1987100870;
  HIDWORD(v188) += 1987100870;
  LODWORD(v190) = v169 + 1987100870;
  HIDWORD(v190) = v225 + 1987100870;
  v131 = v196 + 1987100870;
  v132 = v43 - ((2 * v43) & 0xECE1818C) + 1987100870;
  v133 = v210 + 1987100870;
  v134 = v245 + 1987100870;
  v208 = v35 - ((2 * v35) & 0xECE1818C) + 1987100870;
  v211 = v119 - ((2 * v119) & 0xECE1818C) + 1987100870;
  v135 = (v154 - 435553471) ^ v126 ^ v250 ^ 0xC38F08C7;
  LODWORD(v94) = v39 ^ v125 ^ 0xADE18B96 ^ (v217 + 1987100870);
  v136 = *(v30 - 144);
  v137 = *(&off_10050ED90 + (v136 ^ 0x1E2)) - 12;
  v138 = *(&off_10050ED90 + (v136 ^ 0x1B2));
  LODWORD(v39) = (((v137[*(v30 - 111) ^ 0xD5] - 20) ^ 0xED) << 16) | ((*(v138 + (*(v30 - 112) ^ 1)) ^ 0x6F) << 24);
  v139 = *(&off_10050ED90 + v136 - 398);
  v140 = ((*(v139 + (*(v30 - 102) ^ 0x49)) ^ 0x80) << 8) & 0xFF00FFFF | (((v137[*(v30 - 103) ^ 0xB3] - 20) ^ 0x59) << 16);
  v141 = (((v137[*(v30 - 99) ^ 0xDLL] - 20) ^ 0xA9) << 16) | ((*(v138 + (*(v30 - 100) ^ 0xCALL)) ^ 0xFFFFFFFD) << 24);
  v142 = *(v30 - 107) ^ 0x45;
  LODWORD(v43) = ((*(v139 + (*(v30 - 106) ^ 0xD5)) ^ 0xA3) << 8) | ((*(v138 + (*(v30 - 108) ^ 0xC2)) ^ 0xA5) << 24);
  *(v30 - 224) = v137;
  LODWORD(v43) = v43 & 0xFF00FFFF | (((v137[v142] - 20) ^ 0x16) << 16);
  v143 = *(v30 - 110) ^ 0xE7;
  LODWORD(v142) = v141 | ((*(v139 + (*(v30 - 98) ^ 0xC6)) ^ 0xDD) << 8);
  *(v30 - 240) = v139;
  v144 = *(v139 + v143) ^ 0x39u;
  v145 = *(&off_10050ED90 + v136 - 367) - 12;
  LODWORD(v142) = v142 & 0xFFFFFF00 | (53 * v145[*(v30 - 97) ^ 0xCBLL] + 113) ^ 0x79;
  LODWORD(v39) = v39 & 0xFFFFFF00 | (v144 << 8) | (53 * v145[*(v30 - 109) ^ 0x8ALL] + 113) ^ 0xC9;
  LODWORD(v43) = v43 & 0xFFFFFF00 | (53 * v145[*(v30 - 105) ^ 0xB9] + 113) ^ 0x3C;
  v146 = *(v30 - 104) ^ 0x8ALL;
  v147 = *(v30 - 101) ^ 6;
  *(v30 - 248) = v145;
  LOBYTE(v147) = v145[v147];
  *(v30 - 252) = 113;
  *(v30 - 232) = v138;
  v148 = v140 & 0xFFFFFF00 | (53 * v147 + 113) ^ 0x87 | ((*(v138 + v146) ^ 0x82) << 24);
  *(v30 - 136) = v39 ^ 0x37373737;
  *(v30 - 132) = v142 ^ 0x37373737;
  *(v30 - 128) = v43 ^ 0x37373737;
  *(v30 - 140) = v148 ^ 0x37373737;
  *(v30 - 256) = v131 ^ v127 ^ v235;
  *(v30 - 124) = (((*(v30 - 152) ^ 0x79B10127) - 527706914) ^ ((*(v30 - 152) ^ 0x13F92989) - 1966867340) ^ ((*(v30 - 152) ^ 0x669FEEC3) - 5948614)) - 958531474;
  HIDWORD(v243) = v165 ^ HIDWORD(v157) ^ v242;
  LODWORD(v243) = HIDWORD(v171) ^ HIDWORD(v169);
  HIDWORD(v238) = v156 ^ v167 ^ v233 ^ v240;
  LODWORD(v238) = v173 ^ v237 ^ v133;
  HIDWORD(v234) = HIDWORD(v165) ^ v134;
  LODWORD(v234) = v186 ^ *(v30 - 160);
  HIDWORD(v230) = v227 ^ HIDWORD(v183);
  LODWORD(v230) = v163 ^ (v150 - 435553471) ^ v229;
  HIDWORD(v226) = HIDWORD(v167) ^ (HIDWORD(v152) + 1987100870);
  LODWORD(v226) = v180 ^ v223 ^ v171 ^ v205;
  HIDWORD(v221) = HIDWORD(v173) ^ (HIDWORD(v150) - 435553471);
  LODWORD(v221) = v215 ^ (v220 + 1987100870);
  HIDWORD(v218) = v177 ^ HIDWORD(v188) ^ v202;
  LODWORD(v218) = *(v30 - 148) ^ HIDWORD(v175) ^ v194;
  HIDWORD(v212) = v192 ^ v211;
  LODWORD(v212) = HIDWORD(v163) ^ HIDWORD(a28) ^ HIDWORD(v194);
  HIDWORD(v206) = *(v30 - 164) ^ v208;
  LODWORD(v206) = v188 ^ v200 ^ v175;
  HIDWORD(v203) = v181 ^ (v169 + 1987100870) ^ HIDWORD(v180);
  LODWORD(v203) = *(v30 - 156) ^ HIDWORD(v190);
  *(v30 - 212) = v94;
  LODWORD(v197) = HIDWORD(v192) - ((2 * HIDWORD(v192)) & 0xF0F6071E) - 126155889;
  HIDWORD(v197) = 46032142 - v94 - v135;
  HIDWORD(a28) = HIDWORD(v197) ^ v135;
  return sub_100041FBC(v144, 163, v135, v131, v132, v130, v129, v128, a2, v150, v151, v152, v154, v156, v157, v161, v163, v165, v167, v169, v171, v173, v175, v177, v180, v181, v183, v186, v188, v190, v192, v194, a26, a27, a28, v197, v203, v206, v212, v218, v221, v226, v230, v234, v238, v243);
}