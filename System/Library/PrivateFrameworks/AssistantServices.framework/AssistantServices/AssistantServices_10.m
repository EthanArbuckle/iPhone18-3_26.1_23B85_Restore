void sub_10025DDC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025DE9C;
  block[3] = &unk_100517F98;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_10025DE9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) firstObject];
  v4 = [v2 _companionLinkDeviceForUniqueIDSIdentifier:v3];

  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315138;
      v7 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke_2";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal Sending command via context collector", &v6, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10025DFB0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = 136315394;
    v13 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke_2";
    v14 = 2112;
    v15 = v11;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s heartbeat timeout for message %@", &v12, 0x16u);
  }

  if (AFIsInternalInstall())
  {
    v3 = AFSiriLogContextPerformance;
    v4 = os_signpost_id_generate(AFSiriLogContextPerformance);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(v3))
      {
        LOWORD(v12) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, v5, "CompanionCouldNotReach", "_executeRemoteRequest", &v12, 2u);
      }
    }
  }

  [*(a1 + 40) setDidConnectionTimeOut:1];
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = [v6 _getExecutionIdFromRequest:*(a1 + 56)];
  [v6 _logCompanionDeviceCommunicationContextFor:v7 executionId:v8];

  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = [AFError errorWithCode:1007];
    (*(v9 + 16))(v9, 0, v10);
  }
}

void sub_10025E164(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    *buf = 136316162;
    v52 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
    v53 = 2112;
    v54 = v11;
    v55 = 2112;
    v56 = v7;
    v57 = 2112;
    v58 = v8;
    v59 = 2112;
    v60 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s request response : %@ %@ %@ %@", buf, 0x34u);
  }

  if (*(a1 + 88) == 1 && ([*(a1 + 40) _cancelTimerForMessage:*(a1 + 32)] & 1) == 0)
  {
    v23 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v52 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
      v53 = 2112;
      v54 = v9;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s message timed out, ignoring error %@", buf, 0x16u);
    }

    v24 = AFSiriLogContextPerformance;
    v22 = v24;
    v25 = *(a1 + 80);
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, v25, "CompanionService", "Message timed out", buf, 2u);
    }
  }

  else
  {
    v12 = AFSiriLogContextPerformance;
    v13 = v12;
    v14 = *(a1 + 80);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "CompanionService", "Received response", buf, 2u);
    }

    if (*(a1 + 72))
    {
      if (v9)
      {
        v15 = [v9 domain];
        v16 = [v15 isEqualToString:RPErrorDomain];

        if (v16)
        {
          v17 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            v43 = *(a1 + 32);
            *buf = 136315650;
            v52 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
            v53 = 2112;
            v54 = v9;
            v55 = 2112;
            v56 = v43;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s rapport error %@ for message %@", buf, 0x20u);
          }

          if ([v9 code] == -6714)
          {
            v18 = 1018;
          }

          else
          {
            if (AFIsInternalInstall())
            {
              v29 = AFSiriLogContextPerformance;
              v30 = os_signpost_id_generate(AFSiriLogContextPerformance);
              if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v31 = v30;
                if (os_signpost_enabled(v29))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_EVENT, v31, "CompanionRapportTransportError", "ADCompanionService _executeRemoteRequest", buf, 2u);
                }
              }
            }

            v18 = 1000;
          }

          v28 = [AFError errorWithCode:v18 description:0 underlyingError:v9];
        }

        else
        {
          v28 = v9;
        }
      }

      else
      {
        v26 = [v7 objectForKey:@"commandResponse"];
        if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v27 = 0;
          goto LABEL_38;
        }

        v32 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v52 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s received malformed response", buf, 0xCu);
        }

        v28 = [AFError errorWithCode:11];
      }

      v27 = v28;
      v26 = 0;
LABEL_38:
      v33 = [v7 objectForKey:@"waitForMessageIDs"];
      if (v33)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = [v33 firstObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v36 = v33;
            v37 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v52 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
              v53 = 2112;
              v54 = v36;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s Waiting for IDs %@", buf, 0x16u);
            }

            goto LABEL_46;
          }
        }

        v38 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v52 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s Malformed waitfor IDs. dispatching invoking completion immediately", buf, 0xCu);
        }
      }

      v36 = 0;
LABEL_46:
      v40 = *(a1 + 40);
      v39 = *(a1 + 48);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10025E870;
      v44[3] = &unk_100517EA8;
      v44[4] = v40;
      v45 = v39;
      v46 = v27;
      v47 = *(a1 + 56);
      v48 = *(a1 + 64);
      v41 = *(a1 + 72);
      v49 = v26;
      v50 = v41;
      v42 = v26;
      v22 = v27;
      [v40 _waitForMessageIDs:v36 withContext:v45 timeout:v44 completion:3.0];

      goto LABEL_47;
    }

    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v52 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s No completion returning", buf, 0xCu);
    }

    [*(a1 + 40) _cleanUpMessageWaitContext:*(a1 + 48)];
    v20 = *(a1 + 40);
    v21 = *(a1 + 56);
    v22 = [v20 _getExecutionIdFromRequest:*(a1 + 64)];
    [v20 _logCompanionDeviceCommunicationContextFor:v21 executionId:v22];
  }

LABEL_47:
}

uint64_t sub_10025E870(uint64_t a1)
{
  [*(a1 + 32) _cleanUpMessageWaitContext:*(a1 + 40)];
  if (*(a1 + 48))
  {
    [*(a1 + 56) setDidConnectionTimeOut:1];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = [v2 _getExecutionIdFromRequest:*(a1 + 64)];
  [v2 _logCompanionDeviceCommunicationContextFor:v3 executionId:v4];

  v5 = *(*(a1 + 80) + 16);

  return v5();
}

void sub_10025EAE8(uint64_t a1)
{
  v8 = [*(a1 + 32) _newRequestDictionary];
  v2 = [*(a1 + 40) dictionary];
  [v8 setObject:v2 forKey:@"command"];

  if (*(a1 + 80) == 1)
  {
    v3 = [*(a1 + 48) assistantIdentifier];
    if ([v3 length])
    {
      [v8 setObject:v3 forKey:@"forwardsToAssistantId"];
    }

    v4 = [*(a1 + 48) idsDeviceUniqueIdentifier];
    if ([v4 length])
    {
      [v8 setObject:v4 forKey:@"forwardsToIDSDeviceId"];
    }
  }

  v5 = [*(a1 + 56) info];
  v6 = [v5 buildDictionaryRepresentation];

  v7 = v8;
  if (v6)
  {
    [v8 setObject:v6 forKey:@"executionContext"];
    v7 = v8;
  }

  [*(a1 + 32) _executeRemoteRequest:v7 onPeer:*(a1 + 48) allowsRelay:*(a1 + 80) allowFallbackOnAWDL:0 throughProxyDevice:*(a1 + 64) completion:*(a1 + 72)];
}

void sub_10025EDDC(uint64_t a1)
{
  v7 = [*(a1 + 32) _newRequestDictionary];
  [v7 setObject:*(a1 + 40) forKey:@"serializedCommand"];
  v2 = [*(a1 + 48) info];
  v3 = [v2 buildDictionaryRepresentation];

  if (v3)
  {
    [v7 setObject:v3 forKey:@"executionContext"];
  }

  if (*(a1 + 72) == 1)
  {
    v4 = [*(a1 + 56) assistantIdentifier];
    if ([v4 length])
    {
      [v7 setObject:v4 forKey:@"forwardsToAssistantId"];
    }

    v5 = [*(a1 + 56) idsDeviceUniqueIdentifier];
    if ([v5 length])
    {
      [v7 setObject:v5 forKey:@"forwardsToIDSDeviceId"];
    }

    v6 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) _executeRemoteRequest:v7 onPeer:*(a1 + 56) allowsRelay:v6 & 1 allowFallbackOnAWDL:*(a1 + 73) throughProxyDevice:0 completion:*(a1 + 64)];
}

void sub_10025F080(void *a1)
{
  if (*(a1[4] + 64))
  {
    v1 = a1[5];
    v2 = a1[6];
    v3 = a1[4];

    [v3 sendMessage:v1 messageType:v2 toDeviceWithIDSIdentifier:? completion:?];
  }

  else
  {
    v4 = a1[7];
    if (v4)
    {
      v5 = [AFError errorWithCode:1000];
      (*(v4 + 16))(v4, 0, v5);
    }
  }
}

void sub_10025F268(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 64) copy];
  (*(v1 + 16))(v1, v2);
}

id sub_10025FBEC(void *a1)
{
  v2 = *(a1[4] + 72);
  if (!v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    v4 = a1[4];
    v5 = *(v4 + 72);
    *(v4 + 72) = v3;

    v2 = *(a1[4] + 72);
  }

  v6 = a1[5];
  v7 = a1[6];

  return [v2 setObject:v6 forKey:v7];
}

void sub_1002601B0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[ADCompanionService _sendMessage:messageType:toTargetDevice:completion:]_block_invoke";
    v11 = 2112;
    v12 = v8;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s heartbeat timeout for message %@", &v9, 0x16u);
  }

  if (AFIsInternalInstall())
  {
    v3 = AFSiriLogContextPerformance;
    v4 = os_signpost_id_generate(AFSiriLogContextPerformance);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(v3))
      {
        LOWORD(v9) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, v5, "CompanionCouldNotReach", "_sendMessage", &v9, 2u);
      }
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [AFError errorWithCode:1000];
    (*(v6 + 16))(v6, 0, v7);
  }
}

void sub_10026032C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v29 = 136316162;
    v30 = "[ADCompanionService _sendMessage:messageType:toTargetDevice:completion:]_block_invoke";
    v31 = 2112;
    v32 = v11;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v8;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s generic request response : %@ %@ %@ %@", &v29, 0x34u);
  }

  v12 = [v7 objectForKey:@"assistantId"];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([*(a1 + 40) idsDeviceIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
    {
      v14 = +[ADDeviceCircleManager sharedInstance];
      v15 = [*(a1 + 40) idsDeviceIdentifier];
      [v14 _setAssistantId:v12 forDeviceWithIdsDeviceUniqueIdentifier:v15];
    }

    else
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v29 = 136315138;
        v30 = "[ADCompanionService _sendMessage:messageType:toTargetDevice:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s received malformed assistant id", &v29, 0xCu);
      }
    }
  }

  if (*(a1 + 64) == 1 && ([*(a1 + 48) _cancelTimerForMessage:*(a1 + 32)] & 1) == 0)
  {
    v24 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315394;
      v30 = "[ADCompanionService _sendMessage:messageType:toTargetDevice:completion:]_block_invoke";
      v31 = 2112;
      v32 = v9;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s message timed out, ignoring error %@", &v29, 0x16u);
    }
  }

  else if (*(a1 + 56))
  {
    if (v9)
    {
      v17 = [v9 domain];
      v18 = [v17 isEqualToString:RPErrorDomain];

      if (v18)
      {
        v19 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 32);
          v29 = 136315650;
          v30 = "[ADCompanionService _sendMessage:messageType:toTargetDevice:completion:]_block_invoke";
          v31 = 2112;
          v32 = v9;
          v33 = 2112;
          v34 = v28;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s rapport error %@ for message %@", &v29, 0x20u);
        }

        if (AFIsInternalInstall())
        {
          v20 = AFSiriLogContextPerformance;
          v21 = os_signpost_id_generate(AFSiriLogContextPerformance);
          if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v22 = v21;
            if (os_signpost_enabled(v20))
            {
              LOWORD(v29) = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, v22, "CompanionRapportTransportError", "ADCompanionService _sendMessage", &v29, 2u);
            }
          }
        }

        v23 = [AFError errorWithCode:1000 description:0 underlyingError:v9];
      }

      else
      {
        v23 = v9;
      }
    }

    else
    {
      v25 = [v7 objectForKey:@"payload"];
      if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v26 = 0;
LABEL_32:
        (*(*(a1 + 56) + 16))();

        goto LABEL_33;
      }

      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v29 = 136315138;
        v30 = "[ADCompanionService _sendMessage:messageType:toTargetDevice:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s received malformed response", &v29, 0xCu);
      }

      v23 = [AFError errorWithCode:11];
    }

    v26 = v23;
    v25 = 0;
    goto LABEL_32;
  }

LABEL_33:
}

void sub_100260958(uint64_t a1)
{
  v2 = [*(a1 + 32) _companionLinkDeviceForHkIdentifier:*(a1 + 40)];
  [*(a1 + 32) _sendMessage:*(a1 + 48) messageType:*(a1 + 56) toTargetDevice:v2 completion:*(a1 + 64)];
}

void sub_100260B54(uint64_t a1)
{
  v2 = [*(a1 + 32) _companionLinkDeviceForUniqueIDSIdentifier:*(a1 + 40)];
  [*(a1 + 32) _sendMessage:*(a1 + 48) messageType:*(a1 + 56) toTargetDevice:v2 completion:*(a1 + 64)];
}

void sub_100260C50(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 152) activeDevices];
  if ([v2 count])
  {
    v3 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v2 count]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 idsDeviceIdentifier];
          if (v10)
          {
            v11 = v10;
            v12 = [*(*(a1 + 32) + 152) localDevice];
            v13 = [v9 hasValidDiscoveryTypeForLocalDevice:v12];

            if (v13)
            {
              v14 = [v9 idsDeviceIdentifier];
              [v3 addObject:v14];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v2 = v17;
  }

  else
  {
    v3 = 0;
  }

  v15 = *(a1 + 40);
  if ([v3 count])
  {
    v16 = [v3 allObjects];
    (*(v15 + 16))(v15, v16);
  }

  else
  {
    (*(v15 + 16))(v15, 0);
  }
}

void sub_100261610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10026163C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _musicPersonalizationTokenChanged];
}

id *sub_100261830(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _updateSiriInfoDictionary];
  }

  return result;
}

id *sub_100261A48(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _updateSiriInfoDictionary];
  }

  return result;
}

void sub_10026205C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 152))
  {
    if (*(v1 + 13) == 1)
    {
      v3 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v11 = "[ADCompanionService _updateSiriInfoDictionary]_block_invoke";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s initializing Siri Info dictionary", buf, 0xCu);
        v1 = *(a1 + 32);
      }

      *(v1 + 13) = 0;
      [*(a1 + 32) _startObservingDataChangedNotifications];
      v1 = *(a1 + 32);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100262214;
    v9[3] = &unk_10051DFE8;
    v9[4] = v1;
    v4 = objc_retainBlock(v9);
    v5 = v4;
    v6 = *(a1 + 32);
    if (v6[11])
    {
      (v4[2])(v4);
    }

    else
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100262560;
      v7[3] = &unk_10051E100;
      v8 = v4;
      [v6 _updateSharedDataWithCompletion:v7];
    }
  }
}

void sub_100262214(uint64_t a1)
{
  if (*(*(a1 + 32) + 152))
  {
    v2 = dispatch_group_create();
    if (AFSupportsAirPlayEndpointRoute())
    {
      v3 = [*(*(a1 + 32) + 152) localDevice];
      v4 = [v3 mediaRouteIdentifier];

      if (v4)
      {
        [*(*(a1 + 32) + 88) setAirplayRouteId:v4];
      }

      else
      {
        v5 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "[ADCompanionService _updateSiriInfoDictionary]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s unable to retrieve AirPlay route identifier", &buf, 0xCu);
        }
      }
    }

    if (AFSupportsPlayThisOnThatPlayback())
    {
      dispatch_group_enter(v2);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2050000000;
      v6 = qword_100590708;
      v21 = qword_100590708;
      if (!qword_100590708)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v23 = sub_100262570;
        v24 = &unk_10051E1C8;
        v25 = &v18;
        sub_100262570(&buf);
        v6 = v19[3];
      }

      v7 = v6;
      _Block_object_dispose(&v18, 8);
      v8 = [v6 sharedProvider];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10026275C;
      v16[3] = &unk_100517E08;
      v16[4] = *(a1 + 32);
      v9 = v2;
      v17 = v9;
      [v8 getTokenForcingRefresh:0 completion:v16];

      if (*(*(a1 + 32) + 96))
      {
        [*(*(a1 + 32) + 88) setStoreFrontId:?];
      }

      else
      {
        dispatch_group_enter(v9);
        v10 = *(a1 + 32);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100262838;
        v14[3] = &unk_10051C868;
        v14[4] = v10;
        v15 = v9;
        [v10 _updateStoreFrontIdentifierWithCompletion:v14];
      }
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 144);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100262878;
    block[3] = &unk_10051DFE8;
    block[4] = v11;
    dispatch_group_notify(v2, v12, block);
  }
}

Class sub_100262570(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100590710)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100262A34;
    v6[4] = &unk_10051E200;
    v6[5] = v6;
    v7 = off_100518170;
    v8 = 0;
    qword_100590710 = _sl_dlopen();
  }

  if (!qword_100590710)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *iTunesCloudLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ADCompanionService.m" lineNumber:84 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("ICLibraryAuthServiceClientTokenProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getICLibraryAuthServiceClientTokenProviderClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ADCompanionService.m" lineNumber:85 description:{@"Unable to find class %s", "ICLibraryAuthServiceClientTokenProvider"}];

LABEL_10:
    __break(1u);
  }

  qword_100590708 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10026275C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 144);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100262958;
  v12[3] = &unk_10051DB18;
  v13 = v5;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void sub_100262838(uint64_t a1)
{
  [*(*(a1 + 32) + 88) setStoreFrontId:*(*(a1 + 32) + 96)];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void sub_100262878(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 152))
  {
    v2 = [*(v1 + 88) data];
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[ADCompanionService _updateSiriInfoDictionary]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Siri Info updated", &v4, 0xCu);
    }

    [ADRapportLink updateSiriInfoWithObject:v2 forKey:@"sharedDataProtoBuf"];
  }
}

void sub_100262958(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 136315650;
    v6 = "[ADCompanionService _updateSiriInfoDictionary]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s userToken: %@, error: %@", &v5, 0x20u);
  }

  [*(*(a1 + 48) + 88) setUserToken:*(a1 + 32)];
  dispatch_group_leave(*(a1 + 56));
}

uint64_t sub_100262A34()
{
  result = _sl_dlopen();
  qword_100590710 = result;
  return result;
}

void sub_100262C70(void *a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v9 = "[ADCompanionService _activateAWDLMessageLink:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Activating client", buf, 0xCu);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100262D8C;
  v5[3] = &unk_10051C470;
  v4 = a1[4];
  v3 = a1[5];
  v7 = a1[6];
  v6 = v3;
  [v4 activateWithCompletion:v5];
}

void sub_100262D8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[ADCompanionService _activateAWDLMessageLink:completion:]_block_invoke";
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s message link activation error: %@", &v13, 0x16u);
    }

    if (*(a1 + 40))
    {
      v5 = AFSiriLogContextPerformance;
      v6 = v5;
      v7 = *(a1 + 40);
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
      {
        v13 = 138412290;
        v14 = v3;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "CompanionServiceAWDLClientLink", "AWDL companion link activation failed with error: %@", &v13, 0xCu);
      }
    }

    v8 = *(a1 + 32);
    v9 = [AFError errorWithCode:1021];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[ADCompanionService _activateAWDLMessageLink:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s message link activated successfully.", &v13, 0xCu);
    }

    if (*(a1 + 40))
    {
      v10 = AFSiriLogContextPerformance;
      v11 = v10;
      v12 = *(a1 + 40);
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        LOWORD(v13) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "CompanionServiceAWDLClientLink", "AWDL companion link activated successfully", &v13, 2u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100263298(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[ADCompanionService _prepAWDLClientLinkIfMessageReceivedOverAWDL:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to activate message link in advance. error: %@", &v7, 0x16u);
    }
  }

  else
  {
    objc_storeStrong(a1[4] + 17, a1[5]);
    objc_storeStrong(a1[4] + 16, a1[6]);
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1[4] + 17);
      v7 = 136315394;
      v8 = "[ADCompanionService _prepAWDLClientLinkIfMessageReceivedOverAWDL:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s _clientAWDLTransportLinkDestinationId set value:%@ ", &v7, 0x16u);
    }

    [a1[4] _scheduleOrExtendAWDLClientLinkTimer];
  }
}

void sub_100264820(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIdsDeviceUniqueIdentifier:v3];
  [v4 setAssistantIdentifier:*(a1 + 40)];
}

void sub_10026487C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315394;
    v12 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Forwarding response: %@", &v11, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100264990(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100264ACC;
  block[3] = &unk_100517D90;
  v18 = v6;
  v19 = v5;
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *(a1 + 32);
  v16 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v20 = v16;
  v21 = v11;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v22 = v12;
  v23 = v13;
  v14 = v5;
  v15 = v6;
  dispatch_async(v7, block);
}

void sub_100264ACC(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(a1 + 32);
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]_block_invoke_2";
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s error executing remote command: %@", &v12, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v12 = 136315394;
      v13 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s got command response: %@", &v12, 0x16u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      [v2 setObject:v6 forKey:@"commandResponse"];
    }
  }

  if ([*(a1 + 48) count])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 48);
      v12 = 136315394;
      v13 = "[ADCompanionService _handleAceCommandRequest:messageID:options:responseHandler:]_block_invoke";
      v14 = 2112;
      v15 = v11;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s intermediateMessageIDs set: %@", &v12, 0x16u);
    }

    [v2 setObject:*(a1 + 48) forKey:@"waitForMessageIDs"];
  }

  [*(a1 + 56) _tearDownIntermediateMessageIDs:*(a1 + 48) forPeer:*(a1 + 64)];
  if (![v2 count])
  {

    v2 = 0;
  }

  if (*(a1 + 72))
  {
    [*(*(a1 + 56) + 48) removeObjectForKey:?];
  }

  (*(*(a1 + 80) + 16))();
  v8 = AFSiriLogContextPerformance;
  v9 = v8;
  v10 = *(a1 + 88);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CompanionService", "Finished processing message", &v12, 2u);
  }
}

void sub_100265048(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = [v9 objectForKey:@"messageID"];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = RPOptionSenderID;
    v13 = v11;
    v14 = [v7 objectForKey:v12];
    v15 = [*(*(a1 + 32) + 128) localDevice];
    v16 = [v15 identifier];
    v17 = 136315906;
    v18 = "[ADCompanionService _setupClientAWDLTransportLinkForDestination:]_block_invoke";
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s received message: %@ from source: %@ (local: %@)", &v17, 0x2Au);
  }

  [*(a1 + 32) _handleAceCommandRequest:v9 messageID:v10 options:v7 responseHandler:v8];

  [*(a1 + 32) _unblockWaitingForMessageIDs:v10];
}

void sub_1002651F0(id a1, ADRapportLinkConfigurationMutating *a2)
{
  v2 = a2;
  v3 = [ADRapportLinkTransportOptions newWithBuilder:&stru_100517D40];
  [(ADRapportLinkConfigurationMutating *)v2 setTransportOptions:v3];
}

void sub_10026525C(id a1, ADRapportLinkTransportOptionsMutating *a2)
{
  v2 = a2;
  [(ADRapportLinkTransportOptionsMutating *)v2 setAllowsForceAWDL:2];
  [(ADRapportLinkTransportOptionsMutating *)v2 setNoL2Cap:2];
}

void sub_10026566C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = [v9 objectForKey:@"messageID"];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = RPOptionSenderID;
    v13 = v11;
    v14 = [v7 objectForKey:v12];
    v15 = [*(*(a1 + 32) + 152) localDevice];
    v16 = [v15 identifier];
    v17 = 136315906;
    v18 = "[ADCompanionService _setupClientLink]_block_invoke";
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s received message: %@ from source: %@ (local: %@)", &v17, 0x2Au);
  }

  [*(a1 + 32) _handleAceCommandRequest:v9 messageID:v10 options:v7 responseHandler:v8];

  [*(a1 + 32) _unblockWaitingForMessageIDs:v10];
}

void sub_100265814(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 objectForKey:@"messageID"];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v45 = "[ADCompanionService _setupClientLink]_block_invoke";
    v46 = 2112;
    v47 = v10;
    v48 = 2112;
    v49 = v7;
    v50 = 2112;
    v51 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s incoming remote request: %@ %@ %@", buf, 0x2Au);
  }

  v12 = +[ADFMDMonitor sharedManager];
  v13 = [v12 isLostModeActive];

  if (v13)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v45 = "[ADCompanionService _setupClientLink]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Lost mode is active, rejecting incoming request", buf, 0xCu);
    }

    v15 = [AFError errorWithCode:1003];
    (*(v9 + 2))(v9, 0, 0, v15);
  }

  else
  {
    v16 = *(a1 + 32);
    v42 = 0;
    v43 = 0;
    v40 = 0;
    v41 = 0;
    v17 = [v16 _validateIncomingRequest:v7 options:v8 error:&v43 assistantId:&v42 idsDeviceId:&v41 homeKitId:&v40];
    v15 = v43;
    v18 = v42;
    v19 = v41;
    v35 = v40;
    if (v17)
    {
      v20 = [*(a1 + 32) _newRequestInfoWithRequestDictionary:v7];
      if (v20)
      {
        if (v18 && v19)
        {
          +[ADDeviceCircleManager sharedInstance];
          v22 = v21 = v19;
          [v22 _setAssistantId:v18 forDeviceWithIdsDeviceUniqueIdentifier:v21];

          v19 = v21;
        }

        v34 = v18;
        if (v10)
        {
          v33 = v19;
          v23 = *(*(a1 + 32) + 48);
          v24 = +[NSProcessInfo processInfo];
          [v24 systemUptime];
          v25 = [NSNumber numberWithDouble:?];
          v26 = v23;
          v19 = v33;
          [v26 setObject:v25 forKey:v10];
        }

        v27 = +[ADCommandCenter sharedCommandCenter];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100018AB0;
        v36[3] = &unk_100517CB0;
        v28 = v10;
        v29 = *(a1 + 32);
        v37 = v28;
        v38 = v29;
        v39 = v9;
        [v27 handleExternalActivationRequest:v20 completion:v36];

        v30 = v37;
        v18 = v34;
      }

      else
      {
        v32 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v45 = "[ADCompanionService _setupClientLink]_block_invoke";
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s malformed remote request", buf, 0xCu);
        }

        v30 = [AFError errorWithCode:0];
        (*(v9 + 2))(v9, 0, 0, v30);
      }
    }

    else
    {
      v31 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v45 = "[ADCompanionService _setupClientLink]_block_invoke";
        v46 = 2112;
        v47 = v15;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s validation error %@", buf, 0x16u);
      }

      (*(v9 + 2))(v9, 0, 0, v15);
    }
  }
}

void sub_100265CB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 objectForKey:@"messageID"];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v39 = "[ADCompanionService _setupClientLink]_block_invoke";
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v7;
    v44 = 2112;
    v45 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s incoming shared data request: %@ %@ %@", buf, 0x2Au);
  }

  v12 = +[ADFMDMonitor sharedManager];
  v13 = [v12 isLostModeActive];

  if (v13)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v39 = "[ADCompanionService _setupClientLink]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Lost mode is active, rejecting incoming request", buf, 0xCu);
    }

    v15 = [AFError errorWithCode:1003];
    (*(v9 + 2))(v9, 0, 0, v15);
  }

  else
  {
    v16 = *(a1 + 32);
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v17 = [v16 _validateIncomingRequest:v7 options:v8 error:&v37 assistantId:&v36 idsDeviceId:&v35 homeKitId:&v34];
    v15 = v37;
    v18 = v36;
    v19 = v35;
    v29 = v34;
    if (v17)
    {
      if (v18 && v19)
      {
        v20 = +[ADDeviceCircleManager sharedInstance];
        [v20 _setAssistantId:v18 forDeviceWithIdsDeviceUniqueIdentifier:v19];
      }

      v28 = v18;
      if (v10)
      {
        v21 = *(*(a1 + 32) + 48);
        v22 = +[NSProcessInfo processInfo];
        [v22 systemUptime];
        v23 = [NSNumber numberWithDouble:?];
        [v21 setObject:v23 forKey:v10];
      }

      v24 = +[ADCommandCenter sharedCommandCenter];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100266E54;
      v30[3] = &unk_100518200;
      v25 = v10;
      v26 = *(a1 + 32);
      v31 = v25;
      v32 = v26;
      v33 = v9;
      [v24 getSharedDataForPeer:v30];

      v18 = v28;
    }

    else
    {
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "[ADCompanionService _setupClientLink]_block_invoke";
        v40 = 2112;
        v41 = v15;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s validation error %@", buf, 0x16u);
      }

      (*(v9 + 2))(v9, 0, 0, v15);
    }
  }
}

void sub_100266098(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 objectForKey:@"messageID"];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v51 = "[ADCompanionService _setupClientLink]_block_invoke_2";
    v52 = 2112;
    v53 = v10;
    v54 = 2112;
    v55 = v7;
    v56 = 2112;
    v57 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s incoming generic request: %@ %@ %@", buf, 0x2Au);
  }

  v12 = +[ADFMDMonitor sharedManager];
  v13 = [v12 isLostModeActive];

  if (!v13)
  {
    v15 = [*(a1 + 32) _newRequestDictionary];
    [v15 removeObjectForKey:@"messageID"];
    v16 = *(a1 + 32);
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v17 = [v16 _validateIncomingRequest:v7 options:v8 error:&v49 assistantId:&v48 idsDeviceId:&v47 homeKitId:&v46];
    v41 = v49;
    v18 = v48;
    v19 = v47;
    v40 = v46;
    if ((v17 & 1) == 0)
    {
      v33 = AFSiriLogContextDaemon;
      v32 = v41;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v51 = "[ADCompanionService _setupClientLink]_block_invoke";
        v52 = 2112;
        v53 = v41;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s validation error %@", buf, 0x16u);
      }

      v9[2](v9, v15, 0, v41);
      goto LABEL_36;
    }

    if (v18 && v19)
    {
      v20 = +[ADDeviceCircleManager sharedInstance];
      [v20 _setAssistantId:v18 forDeviceWithIdsDeviceUniqueIdentifier:v19];
    }

    v21 = [v7 objectForKey:@"type"];
    objc_opt_class();
    v39 = v21;
    isKindOfClass = objc_opt_isKindOfClass();
    v23 = AFSiriLogContextDaemon;
    if ((isKindOfClass & 1) == 0)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v51 = "[ADCompanionService _setupClientLink]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s received malformed message type", buf, 0xCu);
      }

      v31 = [AFError errorWithCode:11];
      v9[2](v9, v15, 0, v31);
      v32 = v41;
      goto LABEL_35;
    }

    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v51 = "[ADCompanionService _setupClientLink]_block_invoke";
      v52 = 2112;
      v53 = v39;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s incoming request type: %@", buf, 0x16u);
    }

    v24 = [v7 objectForKey:@"payload"];
    objc_opt_class();
    v38 = v24;
    v25 = objc_opt_isKindOfClass();
    v26 = AFSiriLogContextDaemon;
    if (v25)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v27 = *(*(a1 + 32) + 72);
        *buf = 136315394;
        v51 = "[ADCompanionService _setupClientLink]_block_invoke";
        v52 = 2112;
        v53 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s _handlerForMessageType: %@", buf, 0x16u);
      }

      v28 = [*(*(a1 + 32) + 72) objectForKey:v39];
      if (v28)
      {
        v29 = v28;
        if (v10)
        {
          v37 = *(*(a1 + 32) + 48);
          v36 = +[NSProcessInfo processInfo];
          [v36 systemUptime];
          v30 = [NSNumber numberWithDouble:?];
          [v37 setObject:v30 forKey:v10];
        }

        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100266CDC;
        v42[3] = &unk_100517CD8;
        v42[4] = *(a1 + 32);
        v43 = v15;
        v44 = v10;
        v45 = v9;
        v31 = v38;
        [v29 handleMessage:v38 messageType:v39 fromDeviceWithIdentifier:v19 completion:v42];

        v32 = v41;
        goto LABEL_34;
      }

      v34 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v51 = "[ADCompanionService _setupClientLink]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s unsupported message type", buf, 0xCu);
      }

      v35 = [AFError errorWithCode:1004];
      v9[2](v9, v15, 0, v35);

      v29 = 0;
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v51 = "[ADCompanionService _setupClientLink]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s received malformed message payload", buf, 0xCu);
      }

      v29 = [AFError errorWithCode:11];
      v9[2](v9, v15, 0, v29);
    }

    v32 = v41;
    v31 = v38;
LABEL_34:

LABEL_35:
LABEL_36:

    goto LABEL_37;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v51 = "[ADCompanionService _setupClientLink]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Lost mode is active, rejecting incoming request", buf, 0xCu);
  }

  v15 = [AFError errorWithCode:1003];
  v9[2](v9, 0, 0, v15);
LABEL_37:
}

void sub_1002667BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 objectForKey:@"messageID"];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v21 = 136315906;
    v22 = "[ADCompanionService _setupClientLink]_block_invoke_3";
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s incoming heartbeat request: %@ %@ %@", &v21, 0x2Au);
  }

  if (v10)
  {
    v12 = *(*(a1 + 32) + 48);
    v13 = +[NSProcessInfo processInfo];
    [v13 systemUptime];
    v14 = [NSNumber numberWithDouble:?];
    [v12 setObject:v14 forKey:v10];
  }

  v15 = [v7 objectForKey:@"hbMessageID"];
  if (v15)
  {
    v16 = [*(*(a1 + 32) + 48) objectForKey:v15];

    if (v16)
    {
      v17 = 0;
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v21 = 136315394;
      v22 = "[ADCompanionService _setupClientLink]_block_invoke";
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s unknown message id: %@", &v21, 0x16u);
    }

    v19 = 1008;
  }

  else
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315138;
      v22 = "[ADCompanionService _setupClientLink]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s received malformed response", &v21, 0xCu);
    }

    v19 = 11;
  }

  v17 = [AFError errorWithCode:v19];
  if (v10)
  {
LABEL_16:
    [*(*(a1 + 32) + 48) removeObjectForKey:v10];
  }

LABEL_17:
  (*(v9 + 2))(v9, 0, 0, v17);
}

void sub_100266A90(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 8) = 1;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[ADCompanionService _setupClientLink]_block_invoke";
      v18 = 2112;
      v19 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s companion link activation error: %@", buf, 0x16u);
    }

    v5 = AFSiriLogContextPerformance;
    v6 = v5;
    v7 = *(a1 + 40);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 138412290;
      v17 = v3;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "CompanionServiceClientLink", "companion link activation failed with error: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = AFSiriLogContextPerformance;
    v9 = v8;
    v10 = *(a1 + 40);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "CompanionServiceClientLink", "companion link activated successfully", buf, 2u);
    }

    if (AFIsHorseman())
    {
      v11 = +[AFAnalytics sharedAnalytics];
      if (*(*(a1 + 32) + 11))
      {
        v12 = &off_100533D58;
      }

      else
      {
        v12 = &off_100533D70;
      }

      v14 = @"deviceCount";
      v15 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [v11 logEventWithType:5101 context:v13];
    }

    *(*(a1 + 32) + 13) = 1;
  }
}

void sub_100266CDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 144);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100266DE4;
  v13[3] = &unk_1005183C8;
  v14 = v5;
  v15 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v16 = v8;
  v17 = v9;
  v10 = *(a1 + 56);
  v18 = v6;
  v19 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, v13);
}

uint64_t sub_100266DE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) setObject:v2 forKey:@"payload"];
  }

  if (*(a1 + 48))
  {
    [*(*(a1 + 56) + 48) removeObjectForKey:?];
  }

  v3 = *(*(a1 + 72) + 16);

  return v3();
}

void sub_100266E54(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(_ADPBDeviceSetDataRequest);
  [(_ADPBDeviceSetDataRequest *)v4 _ad_setData:v3];

  v5 = [(_ADPBDeviceSetDataRequest *)v4 data];
  v6 = v5;
  if (v5)
  {
    v9 = @"sharedDataProtoBuf";
    v10 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = 0;
  }

  else
  {
    v8 = [AFError errorWithCode:0];
    v7 = 0;
  }

  if (a1[4])
  {
    [*(a1[5] + 48) removeObjectForKey:?];
  }

  (*(a1[6] + 16))();
}

void sub_100266F84(id a1, ADRapportLinkConfigurationMutating *a2)
{
  v2 = a2;
  v3 = [ADRapportLinkDiscoveryOptions newWithBuilder:&stru_100517C40];
  [(ADRapportLinkConfigurationMutating *)v2 setDiscoveryOptions:v3];

  v4 = [ADRapportLinkTransportOptions newWithBuilder:&stru_100517C60];
  [(ADRapportLinkConfigurationMutating *)v2 setTransportOptions:v4];
}

void sub_100267018(id a1, ADRapportLinkTransportOptionsMutating *a2)
{
  v2 = a2;
  if (_AFPreferencesBLECompanionConnectionsEnabled())
  {
    [(ADRapportLinkTransportOptionsMutating *)v2 setAllowsBLE:2];
  }

  if (AFIsHorseman() && +[AFFeatureFlags isForceBLEDiscoveryForCompanionLinkEnabled])
  {
    [(ADRapportLinkTransportOptionsMutating *)v2 setAllowsForceBLE:2];
  }
}

void sub_100267088(id a1, ADRapportLinkDiscoveryOptionsMutating *a2)
{
  v2 = a2;
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesHome:2];
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesFamily:0];
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesRemoraDevices:2];
}

void sub_100267648(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!v10 || v5)
  {
    if (*(a1 + 72) == 1)
    {
      v8 = [*(a1 + 32) _updateSharedDataFromIDSWithIdentifier:*(a1 + 48)];
      goto LABEL_7;
    }
  }

  else
  {
    [*(a1 + 32) _updateSharedData:v10 forDevice:*(a1 + 40)];
    v6 = *(*(a1 + 32) + 56);
    v7 = [NSNumber numberWithDouble:*(a1 + 64)];
    [v6 setObject:v7 forKey:*(a1 + 48)];
  }

  v8 = 0;
LABEL_7:
  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }
}

void *sub_100267AF8(void *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = result[4];
    v4 = +[NSDate now];
    [v3 setLastCompanionRemoteDataFetchDate:v4];

    v5 = v2[4];

    return [v5 synchronize];
  }

  return result;
}

void sub_10026871C(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADCompanionService init]_block_invoke";
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

uint64_t sub_100268838(uint64_t a1)
{
  qword_1005906F8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100268954(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if ((+[AFFeatureFlags isSCDATrialEnabled]& 1) != 0)
    {
      v2 = AFIsInternalInstall();
      v3 = *(a1 + 32);
      if (!v2 || (*(v3 + 24) & 1) != 0)
      {
        v4 = [*(v3 + 16) levelForFactor:@"SIDEKICK_BOOSTS_FILE" withNamespaceName:@"MYRIAD_BOOSTS"];
        v5 = v4;
        if (v4)
        {
          v6 = [v4 fileValue];
          v7 = v6;
          if (v6 && [v6 hasPath] && (objc_msgSend(v7, "path"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
          {
            v9 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v10 = v9;
              v11 = [v7 path];
              v18 = 136315394;
              v19 = "[ADMyriadSettingsManager getSidekickBoostsFileWithCompletion:]_block_invoke";
              v20 = 2112;
              v21 = v11;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s #myriad Trial Myriad Sidekick Boosts File path read from Trial: %@", &v18, 0x16u);
            }

            v12 = *(a1 + 40);
            v13 = [v7 path];
            (*(v12 + 16))(v12, v13, 0);
          }

          else
          {
            v16 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              v18 = 136315138;
              v19 = "[ADMyriadSettingsManager getSidekickBoostsFileWithCompletion:]_block_invoke";
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s #myriad Trial Myriad Sidekick Boosts File value undefined.", &v18, 0xCu);
            }

            v13 = [NSError errorWithDomain:kAFAssistantErrorDomain code:31 userInfo:0];
            (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v13);
          }
        }

        else
        {
          v17 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            v18 = 136315138;
            v19 = "[ADMyriadSettingsManager getSidekickBoostsFileWithCompletion:]_block_invoke";
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s #myriad Error reading Myriad Sidekick Boosts File from Trial framework", &v18, 0xCu);
          }

          v7 = [NSError errorWithDomain:kAFAssistantErrorDomain code:44 userInfo:0];
          (*(*(a1 + 40) + 16))();
        }

        return;
      }

      v15 = *(*(a1 + 40) + 16);
    }

    else
    {
      v15 = *(*(a1 + 40) + 16);
    }

    v15();
  }

  else
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[ADMyriadSettingsManager getSidekickBoostsFileWithCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s #myriad sidekick boosts file value read without completion", &v18, 0xCu);
    }
  }
}

void sub_100268E08(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if ((+[AFFeatureFlags isSCDATrialEnabled]& 1) != 0)
    {
      if ([*(a1 + 32) count] || objc_msgSend(*(a1 + 40), "count"))
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v21 = 0x3032000000;
        v22 = sub_100269260;
        v23 = sub_100269270;
        v24 = objc_alloc_init(NSMutableDictionary);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100269278;
        v19[3] = &unk_1005181B0;
        v2 = *(a1 + 40);
        v19[4] = *(a1 + 48);
        v19[5] = &buf;
        [v2 enumerateObjectsUsingBlock:v19];
        v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 48) trialTreatmentMultiDeviceConsensus]);
        [*(*(&buf + 1) + 40) setObject:v3 forKeyedSubscript:@"MULTI_DEVICE_TRIAL_TREATMENT_CONSENSUS"];

        v13 = 0;
        v14 = &v13;
        v15 = 0x3032000000;
        v16 = sub_100269260;
        v17 = sub_100269270;
        v18 = objc_alloc_init(NSMutableDictionary);
        v4 = *(a1 + 32);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1002693B4;
        v12[3] = &unk_1005181B0;
        v12[4] = *(a1 + 48);
        v12[5] = &v13;
        [v4 enumerateObjectsUsingBlock:v12];
        if (AFIsInternalInstall())
        {
          if ((*(*(a1 + 48) + 24) & 1) == 0)
          {
            [v14[5] setObject:&off_100533DA0 forKeyedSubscript:@"HOMEPOD_BOOST"];
          }
        }

        v5 = *(a1 + 56);
        v6 = [NSDictionary dictionaryWithDictionary:*(*(&buf + 1) + 40)];
        v7 = [NSDictionary dictionaryWithDictionary:v14[5]];
        (*(v5 + 16))(v5, v6, v7, 0);

        _Block_object_dispose(&v13, 8);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v10 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "[ADMyriadSettingsManager getTrialEnables:doubleFactors:withCompletion:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s #myriad Trial fetch with no factors to query", &buf, 0xCu);
        }

        v11 = [NSError errorWithDomain:kAFAssistantErrorDomain code:47 userInfo:0];
        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v9 = *(*(a1 + 56) + 16);

      v9();
    }
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[ADMyriadSettingsManager getTrialEnables:doubleFactors:withCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s #myriad Trial fetch with nil completion", &buf, 0xCu);
    }
  }
}

uint64_t sub_100269260(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100269278(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) levelForFactor:v3 withNamespaceName:@"MYRIAD_BOOSTS"];
  v5 = v4;
  if (v4)
  {
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 BOOLeanValue]);
    [*(*(*(a1 + 40) + 8) + 40) setObject:v6 forKeyedSubscript:v3];
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[ADMyriadSettingsManager getTrialEnables:doubleFactors:withCompletion:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #myriad Trial BOOLean factor not found: %@", &v8, 0x16u);
    }
  }
}

void sub_1002693B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) levelForFactor:v3 withNamespaceName:@"MYRIAD_BOOSTS"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v6 = [NSNumber numberWithDouble:?];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v6 forKeyedSubscript:v3];
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[ADMyriadSettingsManager getTrialEnables:doubleFactors:withCompletion:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #myriad Trial double factor not found: %@", &v8, 0x16u);
    }
  }
}

void sub_100269560(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADMyriadSettingsManager refreshTrial]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Refreshing Trial Myriad Boosts", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 16) refresh];
  v3 = [*(*(a1 + 32) + 16) factorLevelsWithNamespaceName:@"MYRIAD_BOOSTS"];
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 postNotificationName:@"AFMyriadTrialBoostsUpdatedNotification" object:0];
}

void sub_1002697A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002697CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADMyriadSettingsManager _setupTrialRefresh]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Myriad Trial boosts updated: %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained refreshTrial];
  }
}

void sub_100269B0C(id a1)
{
  v1 = [[ADMyriadSettingsManager alloc] _init];
  v2 = qword_100590718;
  qword_100590718 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10026A698(void *a1)
{
  v1 = a1;
  v2 = [[NSString alloc] initWithFormat:@"%@.plist", v1];

  return v2;
}

void sub_10026B3A4(uint64_t a1)
{
  v2 = objc_alloc_init(ADSharedData);
  v3 = +[AFPreferences sharedPreferences];
  v4 = [v3 assistantIsEnabled];
  [(ADSharedData *)v2 setSiriEnabled:v4];
  -[ADSharedData setDictationEnabled:](v2, "setDictationEnabled:", [v3 dictationIsEnabled]);
  v5 = [v3 languageCode];
  [(ADSharedData *)v2 setLanguageCode:v5];

  v6 = [v3 outputVoice];
  [(ADSharedData *)v2 setOutputVoice:v6];

  v7 = +[ADPreferences sharedPreferences];
  v8 = [v7 sharedUserIdentifier];
  [(ADSharedData *)v2 setSharedUserId:v8];

  v9 = [v7 loggingSharedUserIdentifier];
  [(ADSharedData *)v2 setLoggingSharedUserId:v9];

  v10 = [v7 productTypePrefix];
  v11 = SiriCoreUserAgentStringCreate();
  [(ADSharedData *)v2 setUserAgent:v11];

  v12 = [*(a1 + 32) _account];
  v13 = [v12 speechIdentifier];
  [(ADSharedData *)v2 setSpeechId:v13];

  v14 = [v12 assistantIdentifier];
  [(ADSharedData *)v2 setAssistantId:v14];
  v15 = [v12 loggingAssistantIdentifier];
  [(ADSharedData *)v2 setLoggingAssistantId:v15];

  v16 = [v12 hostname];
  [(ADSharedData *)v2 setHostname:v16];

  [(ADSharedData *)v2 setCloudSyncEnabled:_AFPreferencesCloudSyncEnabled()];
  [(ADSharedData *)v2 setShouldCensorSpeech:sub_100214D74()];
  v17 = +[NSLocale currentLocale];
  v18 = [v17 af_aceTemperatureUnit];
  [(ADSharedData *)v2 setTemperatureUnit:v18];

  v19 = sub_10001B398([v7 siriDataSharingOptInStatus]);
  [(ADSharedData *)v2 setDataSharingOptInStatus:v19];

  v20 = AFUserAssignedDeviceName();
  [(ADSharedData *)v2 setUserAssignedName:v20];

  [(ADSharedData *)v2 setIsRemotePlaybackDevice:AFSupportsPlayThisOnThatPlayback()];
  [(ADSharedData *)v2 setIsFullUodEnabled:sub_10000A500()];
  if (v4 && !v14)
  {
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[ADCommandCenter(SharedDataRemote) getSharedDataForPeer:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s requesting preheat because assistantId is not configured", buf, 0xCu);
    }

    v22 = [*(a1 + 32) _sessionManager];
    [v22 preheatAndMakeQuiet:0];
  }

  v23 = +[ADNotificationManager sharedManager];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10026B780;
  v25[3] = &unk_10051DD70;
  v26 = v2;
  v27 = *(a1 + 40);
  v24 = v2;
  [v23 fetchSiriRelatedNotificationPreviewRestrictedAppsWithCompletion:v25];
}

uint64_t sub_10026B780(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setNotificationPreviewRestrictedApps:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10026BA4C(uint64_t a1)
{
  v2 = +[ADPreferences sharedPreferences];
  if (AFIsNano())
  {
    if (_AFPreferencesCloudSyncEnabled())
    {
      if ([*(a1 + 32) cloudSyncEnabled])
      {
        ShouldCensorSpeechInternal = _AFPreferencesShouldCensorSpeechInternal();
        if (ShouldCensorSpeechInternal != [*(a1 + 32) shouldCensorSpeech])
        {
          _AFPreferencesSetShouldCensorSpeechInternal();
          AFBackedUpPreferencesSynchronize();
          v4 = +[NSNotificationCenter defaultCenter];
          [v4 postNotificationName:@"ADShouldCensorSpeechDidChangeNotification" object:0];
        }
      }
    }
  }

  if (AFIsHorseman())
  {
    v5 = [v2 companionIdentifier];
    v6 = +[ADPeerCloudService sharedInstance];
    v7 = [v6 uniqueIdentifierForPeer:*(a1 + 40)];

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADCommandCenter(SharedDataClient) updateSharedDataWithCloudData:fromPeer:]_block_invoke";
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s unique device id for peer: %@", &v10, 0x16u);
    }

    if (v5 && ![v5 caseInsensitiveCompare:v7])
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        v11 = "[ADCommandCenter(SharedDataClient) updateSharedDataWithCloudData:fromPeer:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s resetting peer account...", &v10, 0xCu);
      }

      [*(a1 + 48) _resetPeerAccountSettingsWithSharedData:*(a1 + 32)];
    }
  }
}

void sub_10026BDB0(uint64_t *a1)
{
  if ([a1[4] count])
  {
    v2 = +[ADPeerCloudService sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10026BF10;
    v7[3] = &unk_10051D188;
    v3 = a1[4];
    v4 = a1[6];
    v7[4] = a1[5];
    v8 = v4;
    [v2 getSharedDataFromPeers:v3 completion:v7];
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[ADCommandCenter(SharedDataClient) _updateSharedDataFromPeers:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s unable to sync data from empty peer set", buf, 0xCu);
    }

    v6 = a1[6];
    if (v6)
    {
      (*(v6 + 16))();
    }
  }
}

void sub_10026BF10(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [v3 objectForKey:v8];
        [v9 updateSharedDataWithCloudData:v10 fromPeer:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

void sub_10026CA84(uint64_t a1)
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 companionIdentifier];

  if (v3)
  {
    v4 = +[ADPeerCloudService sharedInstance];
    v5 = +[ADDeviceCircleManager sharedInstance];
    v6 = [v5 assistantIdForDeviceWithIdsDeviceUniqueIdentifier:v3];

    if (v6 && ([*(a1 + 32) _account], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "peerAssistantIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isEqualToString:", v8), v8, v7, v9))
    {
      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v17 = 136315138;
        v18 = "[ADCommandCenter(SharedDataClient) updateSharedDataFromCompanion]_block_invoke";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s companion identifier is already set in account", &v17, 0xCu);
      }

      v11 = 0;
    }

    else
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v17 = 136315138;
        v18 = "[ADCommandCenter(SharedDataClient) updateSharedDataFromCompanion]_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s resetting peer account...", &v17, 0xCu);
      }

      v13 = [v4 cachedSharedDataForUniqueId:v3];
      if (v13)
      {
        v14 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v17 = 136315138;
          v18 = "[ADCommandCenter(SharedDataClient) updateSharedDataFromCompanion]_block_invoke";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s using cached data for companion identifier", &v17, 0xCu);
        }
      }

      [*(a1 + 32) _resetPeerAccountSettingsWithSharedData:v13];

      v11 = 1;
    }

    v15 = +[ADCompanionService sharedInstance];
    [v15 updateSharedDataForCompanionDeviceWithRemoteFetchAllowed:v11];
  }

  else
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "[ADCommandCenter(SharedDataClient) updateSharedDataFromCompanion]_block_invoke";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s unable to sync because there is no configured companion device", &v17, 0xCu);
    }

    [*(a1 + 32) _resetPeerAccountSettingsWithSharedData:0];
  }
}

void sub_10026CDA0(id a1)
{
  if (((AFIsHorseman() & 1) != 0 || AFIsATV()) && (_AFPreferencesCloudSyncEnabled() & 1) == 0)
  {
    v1 = +[ADHomeInfoManager sharedInfoManager];
    v2 = [v1 infoForThisDevice];
    v3 = [v2 personalDomainsIsEnabled];

    if ((v3 & 1) == 0)
    {
      v4 = +[ADPreferences sharedPreferences];
      [v4 setSharedUserIdentifier:0 loggingSharedUserIdentifier:0];
    }
  }
}

void sub_10026CFEC(id a1, ADPeerInfo *a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADCommandCenter(SharedDataClient) listenForSharedDataFromCloud]_block_invoke";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ is requesting shared data", &v8, 0x16u);
  }

  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 getSharedDataForPeer:v5];
}

void sub_10026D39C(uint64_t a1)
{
  v2 = [*(a1 + 32) _sharedDataService];
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 57);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10026D488;
    v8[3] = &unk_100518200;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    v11 = *(a1 + 48);
    [v2 getSharedDataFromPeerUseCache:v3 allowCloudMessaging:v4 completion:v8];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

void sub_10026D488(void *a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026D540;
  block[3] = &unk_10051E088;
  v4 = a1[4];
  v5 = a1[6];
  block[4] = a1[5];
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_10026D540(uint64_t a1)
{
  [*(a1 + 32) _updateSharedDataWithPairedPeerData:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10026DDF4(id *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a1[4] _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10026E0E0;
    block[3] = &unk_10051DB68;
    v8 = a1[5];
    v9 = a1[6];
    v10 = v5;
    dispatch_async(v6, block);
  }
}

id sub_10026DED4()
{
  if (qword_100590760 != -1)
  {
    dispatch_once(&qword_100590760, &stru_100518338);
  }

  v1 = qword_100590738;

  return v1;
}

void sub_10026DF28(id a1)
{
  if (qword_100590750 != -1)
  {
    dispatch_once(&qword_100590750, &stru_100518318);
  }

  v1 = dlsym(qword_100590758, "NRDevicePropertySystemBuildVersion");
  if (!v1)
  {
    __assert_rtn("initNRDevicePropertySystemBuildVersion_block_invoke", "ADCommandCenter_SharedData.m", 43, "constant");
  }

  objc_storeStrong(&qword_100590738, *v1);
  off_10058D5C0 = sub_10026DFC0;
}

id sub_10026DFF8()
{
  if (qword_100590740 != -1)
  {
    dispatch_once(&qword_100590740, &stru_1005182F8);
  }

  v1 = qword_100590748;

  return v1;
}

void sub_10026E04C(id a1)
{
  if (qword_100590750 != -1)
  {
    dispatch_once(&qword_100590750, &stru_100518318);
  }

  qword_100590748 = objc_getClass("NRPairedDeviceRegistry");
  if (!qword_100590748)
  {
    __assert_rtn("initNRPairedDeviceRegistry_block_invoke", "ADCommandCenter_SharedData.m", 42, "classNRPairedDeviceRegistry");
  }

  off_10058D5B8 = sub_10026E0D4;
}

void sub_10026F374(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v11 = 1;
    if (!a2)
    {
      goto LABEL_49;
    }

    goto LABEL_19;
  }

  v7 = [v5 domain];
  v8 = kSiriAnalyticsErrorDomain;
  if (![v7 isEqualToString:kSiriAnalyticsErrorDomain])
  {

LABEL_9:
    v14 = [v6 domain];
    if ([v14 isEqualToString:v8])
    {
      v15 = [v6 code];

      if (v15 == 4)
      {
        v16 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 40);
          v18 = *(*(a1 + 32) + 40);
          *v47 = 136315906;
          *&v47[4] = "[ADSpeechSamplingSendAudioData enqueueAudioDataWithAudioFileName:audioMetadataDict:folderPath:]_block_invoke";
          *&v47[12] = 2112;
          *&v47[14] = v18;
          *&v47[22] = 2112;
          v48 = v17;
          LOWORD(v49) = 2112;
          *(&v49 + 2) = v6;
LABEL_32:
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v19, v47, 0x2Au);
          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v16 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v45 = *(a1 + 40);
      v46 = *(*(a1 + 32) + 40);
      *v47 = 136315906;
      *&v47[4] = "[ADSpeechSamplingSendAudioData enqueueAudioDataWithAudioFileName:audioMetadataDict:folderPath:]_block_invoke";
      *&v47[12] = 2112;
      *&v47[14] = v46;
      *&v47[22] = 2112;
      v48 = v45;
      LOWORD(v49) = 2112;
      *(&v49 + 2) = v6;
      v19 = "%s %@ Sampling: Failed while uploading audio file: %@, error: %@";
      goto LABEL_32;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v9 = [v6 code];

  if (v9 != 3)
  {
    goto LABEL_9;
  }

  v10 = AFSiriLogContextSpeech;
  v11 = 1;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 32) + 40);
    *v47 = 136315906;
    *&v47[4] = "[ADSpeechSamplingSendAudioData enqueueAudioDataWithAudioFileName:audioMetadataDict:folderPath:]_block_invoke";
    *&v47[12] = 2112;
    *&v47[14] = v13;
    *&v47[22] = 2112;
    v48 = v12;
    LOWORD(v49) = 2112;
    *(&v49 + 2) = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s %@ Sampling: Suppression requested while uploading audio file: %@, error: %@", v47, 0x2Au);
  }

LABEL_16:
  v20 = *(a1 + 48);
  v21 = *(*(a1 + 32) + 40);
  v22 = v20;
  v23 = v6;
  v24 = objc_alloc_init(ASRSchemaASRSampledAudioFileEnqueueFailed);
  v25 = [[SISchemaUUID alloc] initWithNSUUID:v22];

  [v24 setOriginalAsrId:v25];
  [v24 setErrorCode:{objc_msgSend(v23, "code")}];
  v26 = [v23 domain];
  [v24 setErrorDomain:v26];

  v27 = [v23 userInfo];

  v28 = [v27 objectForKey:NSUnderlyingErrorKey];

  if (v28)
  {
    [v24 setUnderlyingErrorCode:{objc_msgSend(v28, "code")}];
    v29 = [v28 domain];
    [v24 setUnderlyingErrorDomain:v29];
  }

  sub_10026F9CC(v24, v21);

  if (a2)
  {
LABEL_19:
    v30 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(*(a1 + 32) + 40);
      v42 = *(a1 + 56);
      v43 = v30;
      v44 = [v42 lastPathComponent];
      *v47 = 136315650;
      *&v47[4] = "[ADSpeechSamplingSendAudioData enqueueAudioDataWithAudioFileName:audioMetadataDict:folderPath:]_block_invoke";
      *&v47[12] = 2112;
      *&v47[14] = v41;
      *&v47[22] = 2112;
      v48 = v44;
      _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "%s %@ Sampling: Successfully enqueued audio file: %@", v47, 0x20u);
    }

    v31 = *(a1 + 48);
    v32 = [*(a1 + 64) codec];
    v33 = *(*(a1 + 32) + 40);
    v34 = v32;
    v35 = v33;
    v36 = v31;
    v37 = objc_alloc_init(ASRSchemaASRSampledAudioFileEnqueued);
    v38 = [[SISchemaUUID alloc] initWithNSUUID:v36];

    [v37 setOriginalAsrId:v38];
    v39 = v34;
    if ([v39 isEqualToString:@"MHASRAUDIOCODEC_UNKNOWN"])
    {
      v40 = 0;
    }

    else if ([v39 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_8000HZ_VALUE"])
    {
      v40 = 1;
    }

    else if ([v39 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_11025HZ_VALUE"])
    {
      v40 = 2;
    }

    else if ([v39 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_16000HZ_VALUE"])
    {
      v40 = 3;
    }

    else if ([v39 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_22050HZ_VALUE"])
    {
      v40 = 4;
    }

    else if ([v39 isEqualToString:@"MHASRAUDIOCODEC_PCM_MONO_16BIT_32000HZ_VALUE"])
    {
      v40 = 5;
    }

    else if ([v39 isEqualToString:@"MHASRAUDIOCODEC_SPEEX_NB_QUALITY7_VALUE"])
    {
      v40 = 6;
    }

    else if ([v39 isEqualToString:@"MHASRAUDIOCODEC_SPEEX_WB_QUALITY8_VALUE"])
    {
      v40 = 7;
    }

    else if ([v39 isEqualToString:@"MHASRAUDIOCODEC_ALAC_MONO_8000HZ_VALUE"])
    {
      v40 = 8;
    }

    else if ([v39 isEqualToString:@"MHASRAUDIOCODEC_ALAC_MONO_16000HZ_VALUE"])
    {
      v40 = 9;
    }

    else if ([v39 isEqualToString:@"MHASRAUDIOCODEC_OPUS_MONO_8000HZ_VALUE"])
    {
      v40 = 10;
    }

    else if ([v39 isEqualToString:@"MHASRAUDIOCODEC_OPUS_MONO_16000HZ_VALUE"])
    {
      v40 = 11;
    }

    else
    {
      v40 = 0;
    }

    [v37 setAudioCodec:v40];
    sub_10026F9CC(v37, v35);
  }

LABEL_49:
  if (v11)
  {
    [objc_opt_class() deleteItemAtFilePath:*(a1 + 56) error:0];
    sub_10026FCAC(*(a1 + 72), *(a1 + 80), *(*(a1 + 32) + 32));
  }
}

void sub_10026F9CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(ASRSchemaASRClientEventMetadata);
  v6 = +[NSUUID UUID];
  v7 = [[SISchemaUUID alloc] initWithNSUUID:v6];
  [v5 setAsrId:v7];
  v8 = objc_alloc_init(ASRSchemaASRClientEvent);
  [v8 setEventMetadata:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setSampledAudioFileEnqueued:v3];
LABEL_9:
    v9 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v12 = v9;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v6 UUIDString];
      v16 = 136315906;
      v17 = "_wrapAndEmitTopLevelSelfEvent";
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s %@ Sampling: Wrapping and logging an ASR SELF event of type: %@, asrId: %@", &v16, 0x2Au);
    }

    v10 = +[AssistantSiriAnalytics sharedStream];
    [v10 emitMessage:v8];

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setSampledAudioFileEnqueueFailed:v3];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setSampledAudioFileDeleted:v3];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setSampledAudioFileDeletionFailed:v3];
    goto LABEL_9;
  }

  v11 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "_wrapAndEmitTopLevelSelfEvent";
    v18 = 2112;
    v19 = v4;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Failed to wrap and emit top-level ASR SELF event. The event type was not mapped to a loggable message type in the ASR SELF schema.", &v16, 0x16u);
  }

LABEL_12:
}

void sub_10026FCAC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = sub_100270078(a3);
  v8 = [v6 stringByAppendingPathComponent:v5];
  v9 = [v5 lastPathComponent];

  v10 = [v9 stringByDeletingPathExtension];

  v11 = [v10 stringByAppendingPathExtension:@"plist"];
  v12 = [v6 stringByAppendingPathComponent:v11];

  v13 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v23 = 136315650;
    v24 = "ADSpeechSamplingDeleteSample";
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Deleting audio sample (audio and metadata): %@", &v23, 0x20u);
  }

  v14 = sub_10027018C(a3);
  v15 = [objc_opt_class() deleteItemAtFilePath:v8 error:0];
  v16 = AFSiriLogContextSpeech;
  if (v15)
  {
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v17 = v16;
    v18 = [v8 lastPathComponent];
    v23 = 136315650;
    v24 = "ADSpeechSamplingDeleteSample";
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Successfully deleted audio: %@", &v23, 0x20u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v17 = v16;
    v18 = [v8 lastPathComponent];
    v23 = 136315650;
    v24 = "ADSpeechSamplingDeleteSample";
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v18;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s %@ Sampling - Deletion: Failed to delete audio: %@", &v23, 0x20u);
LABEL_6:
  }

LABEL_8:
  v19 = [objc_opt_class() deleteItemAtFilePath:v12 error:0];
  v20 = AFSiriLogContextSpeech;
  if ((v19 & 1) == 0)
  {
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v21 = v20;
    v22 = [v12 lastPathComponent];
    v23 = 136315650;
    v24 = "ADSpeechSamplingDeleteSample";
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v22;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s %@ Sampling - Deletion: Failed to delete audio metadata: %@", &v23, 0x20u);
    goto LABEL_11;
  }

  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    v22 = [v12 lastPathComponent];
    v23 = 136315650;
    v24 = "ADSpeechSamplingDeleteSample";
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Successfully deleted audio metadata: %@", &v23, 0x20u);
LABEL_11:
  }

LABEL_13:
}

__CFString *sub_100270078(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v2 = AFLocalSpeechRecognitionSamplingUtilities;
      goto LABEL_7;
    case 1:
      v2 = AFAssistantSamplingUtilities;
      goto LABEL_7;
    case 0:
      v2 = AFDictationSamplingUtilities;
LABEL_7:
      v3 = [v2 component];
      goto LABEL_11;
  }

  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "ADSpeechSamplingComponentForSamplingType";
    v8 = 2048;
    v9 = a1;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unsupported ADSpeechSamplingType: %ld", &v6, 0x16u);
  }

  v3 = @"Unknown";
LABEL_11:

  return v3;
}

id sub_10027018C(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v2 = AFLocalSpeechRecognitionSamplingUtilities;
      goto LABEL_7;
    case 1:
      v2 = AFAssistantSamplingUtilities;
      goto LABEL_7;
    case 0:
      v2 = AFDictationSamplingUtilities;
LABEL_7:
      v3 = objc_alloc_init(v2);
      goto LABEL_11;
  }

  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "ADSpeechSamplingUtilitiesForSamplingType";
    v8 = 2048;
    v9 = a1;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unsupported ADSpeechSamplingType: %ld", &v6, 0x16u);
  }

  v3 = 0;
LABEL_11:

  return v3;
}

void sub_10027030C(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 136315650;
    v17 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = [v8 stringByDeletingLastPathComponent];
        if (*(*(a1 + 32) + 8) & 1) != 0 || ([objc_opt_class() isFileOlderThanAgeInSeconds:v8 filePath:*(*(a1 + 32) + 40) samplingComponent:900.0])
        {
          v10 = [v8 lastPathComponent];
          v11 = [v10 stringByDeletingPathExtension];
          v12 = sub_100270550(v9, v11, *(*(a1 + 32) + 32));
          v13 = *(a1 + 32);
          if (v12)
          {
            [v13 enqueueAudioDataWithAudioFileName:v10 audioMetadataDict:v12 folderPath:v9];
          }

          else
          {
            sub_10026FCAC(v9, v10, v13[4]);
          }
        }

        else
        {
          v14 = AFSiriLogContextSpeech;
          if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
          {
            v15 = *(*(a1 + 32) + 40);
            *buf = v17;
            v23 = "[ADSpeechSamplingSendAudioData sendAudioDataToServer]_block_invoke";
            v24 = 2112;
            v25 = v15;
            v26 = 2112;
            v27 = v8;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s %@ Sampling - Upload: Audio sample folder ineligible for upload (too recent): %@", buf, 0x20u);
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v16 = [v2 countByEnumeratingWithState:&v18 objects:v28 count:16];
      v5 = v16;
    }

    while (v16);
  }
}

id sub_100270550(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 stringByAppendingPathExtension:@"plist"];
  v7 = [v5 stringByAppendingPathComponent:v6];

  v8 = [NSURL fileURLWithPath:v7];
  v15 = 0;
  v9 = [NSDictionary dictionaryWithContentsOfURL:v8 error:&v15];
  v10 = v15;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = sub_100270078(a3);
    v13 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "ADSpeechSamplingAudioMetadataForSample";
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v10;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Failed to read audio metadata (%@), error: %@", buf, 0x2Au);
    }
  }

  return v9;
}

void sub_10027101C(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 40);
    *buf = 136315650;
    v12 = "[ADSpeechSamplingDictationAudioDataHandler adSpeechRecordingDidFail:context:]_block_invoke";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v8;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: adSpeechRecordingDidFail for file: %@, error: %@", buf, 0x20u);
  }

  [*(a1 + 32) setShouldStopAddingSamples:1];
  v3 = [*(*(a1 + 32) + 56) valueForKey:@"dictationUIInteractionIdentifier"];
  sub_100271208(1, v3, *(a1 + 40));

  [*(*(a1 + 32) + 32) removeObjectAtIndex:0];
  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADSpeechSamplingDictationAudioDataHandler adSpeechRecordingDidFail:context:]_block_invoke";
    v13 = 2048;
    v14 = 0x405E000000000000;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Dictation Sampling: Uploading the next audio sample in %f seconds.", buf, 0x16u);
  }

  v5 = dispatch_time(0, 120000000000);
  v6 = *(a1 + 32);
  v7 = *(v6 + 80);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002714E4;
  block[3] = &unk_10051DFE8;
  block[4] = v6;
  dispatch_after(v5, v7, block);
}

void sub_100271208(uint64_t a1, void *a2, void *a3)
{
  v23 = a3;
  v5 = a2;
  v6 = +[NSMutableDictionary dictionary];
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &stru_10051F508;
  }

  [v6 setObject:v8 forKey:@"dictationUIInteractionIdentifier"];

  [v7 setObject:@"OnDeviceDictationAudioData" forKey:@"applicationName"];
  if (a1 == 2)
  {
    v19 = @"success";
  }

  else if (a1 == 1)
  {
    if (v23)
    {
      v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v23 code]);
      [v7 setObject:v9 forKey:@"errorCode"];

      v10 = [v23 domain];

      if (v10)
      {
        v11 = [v23 domain];
        [v7 setObject:v11 forKey:@"errorDomain"];
      }

      v12 = [v23 localizedDescription];

      if (v12)
      {
        v13 = [v23 localizedDescription];
        [v7 setObject:v13 forKey:@"description"];
      }

      v14 = [v23 userInfo];
      v15 = [v14 objectForKey:NSUnderlyingErrorKey];

      if (v15)
      {
        v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 code]);
        [v7 setObject:v16 forKey:@"underlyingErrorCode"];

        v17 = [v15 domain];

        if (v17)
        {
          v18 = [v15 domain];
          [v7 setObject:v18 forKey:@"underlyingErrorDomain"];
        }
      }
    }

    v19 = @"failed";
  }

  else
  {
    [v7 setObject:@"Data older than maximum retention period." forKey:@"description"];
    v19 = @"deleted";
  }

  [v7 setObject:v19 forKey:@"status"];
  v20 = +[NSDate date];
  [v20 timeIntervalSince1970];
  v21 = [NSNumber numberWithDouble:?];
  [v7 setObject:v21 forKey:@"unixTime"];

  v22 = +[AFAnalytics sharedAnalytics];
  [v22 logEventWithType:2223 context:v7];
}

void sub_1002714FC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a4;
  v11 = a5;
  v12 = sub_100270078(a2);
  v13 = [v10 shouldAbort];
  v14 = AFSiriLogContextSpeech;
  v15 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    if (v15)
    {
      v24 = 136315394;
      v25 = "ADSpeechSamplingUploadSamples";
      v26 = 2112;
      v27 = v12;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s %@ Sampling: Aborting further sampling upload due to permit monitor relay status.", &v24, 0x16u);
    }

    goto LABEL_15;
  }

  if (v15)
  {
    v20 = v14;
    v24 = 136315650;
    v25 = "ADSpeechSamplingUploadSamples";
    v26 = 2112;
    v27 = v12;
    v28 = 2048;
    v29 = [v9 count];
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s %@ Sampling - Upload: %lu audio file(s) to be sent to the server.", &v24, 0x20u);
  }

  if (+[ADSpeechSamplingSendAudioData isUserOptedIn])
  {
    if ([v9 count])
    {
      if (a2)
      {
        v16 = [[ADSpeechSamplingSendAudioData alloc] initWithFilePaths:v9 samplingType:1 ignoreMinimumSampleAge:a3];
        v17 = v16;
      }

      else
      {
        v16 = [[ADSpeechSamplingDictationAudioDataHandler alloc] initWithFilePaths:v9 ignoreMinimumSampleAge:a3 permitMonitor:v10 completionHandler:v11];
        v17 = v16;
        if (!v16)
        {
          v21 = AFSiriLogContextSpeech;
          if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
          {
            v22 = v21;
            v23 = [v9 firstObject];
            v24 = 136315650;
            v25 = "ADSpeechSamplingUploadSamples";
            v26 = 2112;
            v27 = v12;
            v28 = 2112;
            v29 = v23;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s %@ Sampling - Upload: Failed to initialize Dictation audio data handler, skipping audio file: %@", &v24, 0x20u);
          }

          [v9 removeObjectAtIndex:0];
          sub_1002714FC(v9, 0, a3, v10, v11);
          goto LABEL_20;
        }
      }

      [(ADSpeechSamplingSendAudioData *)v16 sendAudioDataToServer];
LABEL_20:

      goto LABEL_21;
    }

    v18 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v24 = 136315394;
      v25 = "ADSpeechSamplingUploadSamples";
      v26 = 2112;
      v27 = v12;
      v19 = "%s %@ Sampling - Upload: Done uploading audio data to the server.";
      goto LABEL_14;
    }
  }

  else
  {
    v18 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v24 = 136315394;
      v25 = "ADSpeechSamplingUploadSamples";
      v26 = 2112;
      v27 = v12;
      v19 = "%s %@ Sampling - Upload: Cancelling audio upload because the user has opted-out.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v19, &v24, 0x16u);
    }
  }

LABEL_15:
  if (!a2 && v11)
  {
    v11[2](v11);
  }

LABEL_21:
}

void sub_100271C04(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 40);
    v10 = *(a1 + 48);
    *buf = 136315906;
    v13 = "[ADSpeechSamplingDictationAudioDataHandler adSpeechRecognitionDidFail:sessionUUID:]_block_invoke";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v10;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: adSpeechRecognitionDidFail for file: %@, session: %@, error: %@", buf, 0x2Au);
  }

  [*(a1 + 32) setShouldStopAddingSamples:1];
  v3 = [*(*(a1 + 32) + 56) valueForKey:@"dictationUIInteractionIdentifier"];
  sub_100271208(1, v3, *(a1 + 48));

  [*(*(a1 + 32) + 32) removeObjectAtIndex:0];
  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[ADSpeechSamplingDictationAudioDataHandler adSpeechRecognitionDidFail:sessionUUID:]_block_invoke";
    v14 = 2048;
    v15 = 0x405E000000000000;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Dictation Sampling: Uploading the next audio sample in %f seconds.", buf, 0x16u);
  }

  v5 = dispatch_time(0, 120000000000);
  v6 = *(a1 + 32);
  v7 = *(v6 + 80);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100271DFC;
  block[3] = &unk_10051DFE8;
  block[4] = v6;
  dispatch_after(v5, v7, block);
}

void sub_1002722A4(uint64_t a1)
{
  [*(*(a1 + 32) + 72) setApplicationName:@"OnDeviceDictationAudioData"];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  v4 = *(v2 + 56);
  if (v4)
  {
    v17 = 0;
    v5 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:&v17];
    v6 = v17;
    if (v5)
    {
      v7 = [[NSString alloc] initWithData:v5 encoding:4];
    }

    else
    {
      v9 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "ADSpeechSamplingJSONStringFromDictionary";
        v20 = 2112;
        v21 = v6;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to convert dictionary to JSON data, error: %@", buf, 0x16u);
      }

      v7 = &stru_10051F508;
    }
  }

  else
  {
    v8 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "ADSpeechSamplingJSONStringFromDictionary";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s dict cannot be nil.", buf, 0xCu);
    }

    v7 = &stru_10051F508;
  }

  [v3 setSamplingInfo:v7];
  v10 = [*(*(a1 + 32) + 56) valueForKey:@"language"];
  v11 = [*(*(a1 + 32) + 56) valueForKey:@"samplingRate"];
  v12 = [v11 integerValue];

  *(*(a1 + 32) + 88) = (v12 * 5.0 + v12 * 5.0);
  v13 = [*(*(a1 + 32) + 64) startSessionForReason:@"send on device dictation audio data" languageCode:v10 options:*(*(a1 + 32) + 72) speechRequestOptions:0];
  v14 = +[ADCommandCenter sharedCommandCenter];
  [v14 startRecordedDictationWithLanguage:v10 options:*(*(a1 + 32) + 72) sessionUUID:v13 narrowband:v12 == 8000 delegate:?];

  v15 = dispatch_get_global_queue(0, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002725B0;
  v16[3] = &unk_10051DFE8;
  v16[4] = *(a1 + 32);
  dispatch_async(v15, v16);
}

void sub_1002725B0(uint64_t a1)
{
  v2 = [NSFileHandle fileHandleForReadingAtPath:*(*(a1 + 32) + 40)];
  [*(a1 + 32) addAudioSamplesOnQueue:v2];
}

id sub_100272A50(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[NSFileManager defaultManager];
  v12 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:&v12];
  v6 = v12;

  v7 = sub_100270078(a2);
  if (v5)
  {
    if (![v5 count])
    {
      v8 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v14 = "ADSpeechSamplingFilesInDirectory";
        v15 = 2112;
        v16 = v7;
        v17 = 2112;
        v18 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ Sampling: Empty directory: %@", buf, 0x20u);
      }
    }

    v9 = v5;
  }

  else
  {
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v14 = "ADSpeechSamplingFilesInDirectory";
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %@ Sampling: Failed to get the contents of the directory: %@, error: %@", buf, 0x2Au);
    }
  }

  return v5;
}

BOOL sub_100272C28(void *a1)
{
  v1 = a1;
  v2 = [objc_opt_class() calculateFileNameAgeInDays:v1];

  return v2 > 7;
}

void sub_100272C70(void *a1, uint64_t a2)
{
  v3 = a1;
  v73 = sub_100270078(a2);
  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v90 = "ADSpeechSamplingDeleteFolderAndLogResult";
    v91 = 2112;
    v92 = v73;
    v93 = 2112;
    v94 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Deleting audio sample folder: %@", buf, 0x20u);
  }

  v5 = sub_10027018C(a2);
  if (v5)
  {
    if (a2)
    {
      v65 = v3;
      obj = v3;
      v6 = sub_100272A50(obj, a2);
      v67 = v5;
      if ([v6 count])
      {
        v71 = +[NSMutableArray array];
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v83 objects:buf count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v84;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v84 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v83 + 1) + 8 * i);
              if ([v12 hasSuffix:{@"plist", v65}])
              {
                v13 = [v12 lastPathComponent];
                v14 = [v13 stringByDeletingPathExtension];

                v15 = sub_100270550(obj, v14, a2);
                v16 = [v15 objectForKey:@"asrSelfComponentIdentifier"];
                v17 = v16;
                if (v16)
                {
                  v18 = v16;
                }

                else
                {
                  v18 = @"unknown";
                }

                [v71 addObject:v18];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v83 objects:buf count:16];
          }

          while (v9);
        }
      }

      else
      {
        v71 = &__NSArray0__struct;
      }

      v82 = 0;
      v31 = [objc_opt_class() deleteItemAtFilePath:obj error:&v82];
      v32 = v82;
      v33 = AFSiriLogContextSpeech;
      v72 = v32;
      if (v31)
      {
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v90 = "ADSpeechSamplingDeleteFolderAndLogResult";
          v91 = 2112;
          v92 = v73;
          v93 = 2112;
          v94 = obj;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Successfully deleted audio sample folder: %@", buf, 0x20u);
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v34 = v71;
        v35 = [v34 countByEnumeratingWithState:&v74 objects:v87 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v75;
          do
          {
            for (j = 0; j != v36; j = j + 1)
            {
              if (*v75 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = [[NSUUID alloc] initWithUUIDString:*(*(&v74 + 1) + 8 * j)];
              v40 = v73;
              v41 = objc_alloc_init(ASRSchemaASRSampledAudioFileDeleted);
              if (v39)
              {
                v42 = [[SISchemaUUID alloc] initWithNSUUID:v39];
                [v41 setOriginalAsrId:v42];
              }

              sub_10026F9CC(v41, v40);
            }

            v36 = [v34 countByEnumeratingWithState:&v74 objects:v87 count:16];
          }

          while (v36);
        }
      }

      else
      {
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v90 = "ADSpeechSamplingDeleteFolderAndLogResult";
          v91 = 2112;
          v92 = v73;
          v93 = 2112;
          v94 = obj;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s %@ Sampling - Deletion: Failed to delete audio sample folder: %@", buf, 0x20u);
        }

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        obja = v71;
        v43 = [obja countByEnumeratingWithState:&v78 objects:v88 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v79;
          do
          {
            for (k = 0; k != v44; k = k + 1)
            {
              if (*v79 != v45)
              {
                objc_enumerationMutation(obja);
              }

              v47 = [[NSUUID alloc] initWithUUIDString:*(*(&v78 + 1) + 8 * k)];
              v48 = v73;
              v49 = v72;
              v50 = objc_alloc_init(ASRSchemaASRSampledAudioFileDeletionFailed);
              if (v47)
              {
                v51 = [[SISchemaUUID alloc] initWithNSUUID:v47];
                [v50 setOriginalAsrId:v51];
              }

              [v50 setErrorCode:{-[__CFString code](v49, "code", v65)}];
              v52 = [(__CFString *)v49 domain];
              [v50 setErrorDomain:v52];

              v53 = [(__CFString *)v49 userInfo];

              v54 = [v53 objectForKey:NSUnderlyingErrorKey];

              if (v54)
              {
                [v50 setUnderlyingErrorCode:{objc_msgSend(v54, "code")}];
                v55 = [v54 domain];
                [v50 setUnderlyingErrorDomain:v55];
              }

              sub_10026F9CC(v50, v48);
            }

            v44 = [obja countByEnumeratingWithState:&v78 objects:v88 count:16];
          }

          while (v44);
        }
      }

      v3 = v65;
      v5 = v67;
      v21 = v72;
    }

    else
    {
      v19 = v3;
      v20 = sub_100272A50(v19, 0);
      v21 = &stru_10051F508;
      if ([v20 count])
      {
        v66 = v3;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v83 objects:buf count:16];
        if (v23)
        {
          v24 = v23;
          v68 = v5;
          v25 = *v84;
          while (2)
          {
            for (m = 0; m != v24; m = m + 1)
            {
              if (*v84 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v83 + 1) + 8 * m);
              v28 = [v27 pathExtension];
              v29 = [v28 isEqual:@"pcm"];

              if (v29)
              {
                v56 = [v27 lastPathComponent];
                v57 = [v56 stringByDeletingPathExtension];

                v58 = sub_100270550(v19, v57, 0);
                v59 = [v58 objectForKey:@"dictationUIInteractionIdentifier"];
                v60 = v59;
                if (v59)
                {
                  v61 = v59;
                }

                else
                {
                  v61 = &stru_10051F508;
                }

                v30 = v61;

                v5 = v68;
                goto LABEL_62;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v83 objects:buf count:16];
            if (v24)
            {
              continue;
            }

            break;
          }

          v30 = 0;
          v5 = v68;
        }

        else
        {
          v30 = 0;
        }

LABEL_62:

        if (v30)
        {
          v62 = v30;
        }

        else
        {
          v62 = &stru_10051F508;
        }

        v21 = v62;

        v3 = v66;
      }

      sub_100271208(0, v21, 0);
      v63 = [objc_opt_class() deleteItemAtFilePath:v19 error:0];
      v64 = AFSiriLogContextSpeech;
      if ((v63 & 1) == 0 && os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v90 = "ADSpeechSamplingDeleteFolderAndLogResult";
        v91 = 2112;
        v92 = v73;
        v93 = 2112;
        v94 = v19;
        _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%s %@ Sampling - Deletion: Failed to delete audio sample folder: %@", buf, 0x20u);
        v64 = AFSiriLogContextSpeech;
      }

      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v90 = "ADSpeechSamplingDeleteFolderAndLogResult";
        v91 = 2112;
        v92 = v73;
        v93 = 2112;
        v94 = v19;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Successfully deleted audio sample folder: %@", buf, 0x20u);
      }
    }
  }
}

void sub_100273594(uint64_t a1)
{
  v29 = sub_100270078(a1);
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v41 = "ADSpeechSamplingDeleteExpiredSamplesForSamplingType";
    v42 = 2112;
    v43 = v29;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: Processing sampled request audio for deletion...", buf, 0x16u);
  }

  v3 = sub_10027018C(a1);
  if (!v3)
  {
    goto LABEL_36;
  }

  v4 = [objc_opt_class() sampledLibraryDirectoryPath];
  v5 = sub_100272A50(v4, a1);
  if (![v5 count])
  {
    goto LABEL_35;
  }

  v30 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v28 = v5;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *v36;
  do
  {
    v10 = 0;
    do
    {
      if (*v36 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v35 + 1) + 8 * v10);
      if (([objc_opt_class() isFileNameValid:v11] & 1) == 0)
      {
        v12 = AFSiriLogContextSpeech;
        if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_16;
        }

        *buf = 136315650;
        v41 = "ADSpeechSamplingDeleteExpiredSamplesForSamplingType";
        v42 = 2112;
        v43 = v29;
        v44 = 2112;
        v45 = v11;
        v13 = v12;
        v14 = "%s %@ Sampling - Deletion: File has invalid filename: %@";
        goto LABEL_19;
      }

      if (sub_100272C28(v11))
      {
        [v30 addObject:v11];
        goto LABEL_16;
      }

      v15 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v41 = "ADSpeechSamplingDeleteExpiredSamplesForSamplingType";
        v42 = 2112;
        v43 = v29;
        v44 = 2112;
        v45 = v11;
        v13 = v15;
        v14 = "%s %@ Sampling - Deletion: Audio sample folder ineligible for deletion (too recent): %@";
LABEL_19:
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, v14, buf, 0x20u);
      }

LABEL_16:
      v10 = v10 + 1;
    }

    while (v8 != v10);
    v16 = [v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
    v8 = v16;
  }

  while (v16);
LABEL_21:

  v17 = [v30 count];
  v18 = AFSiriLogContextSpeech;
  v19 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v19)
    {
      v20 = v18;
      v21 = [v30 count];
      *buf = 136315650;
      v41 = "ADSpeechSamplingDeleteExpiredSamplesForSamplingType";
      v42 = 2112;
      v43 = v29;
      v44 = 2048;
      v45 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: %lu audio sample folder(s) pending deletion.", buf, 0x20u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = v30;
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [v4 stringByAppendingPathComponent:*(*(&v31 + 1) + 8 * i)];
          sub_100272C70(v27, a1);
        }

        v24 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v24);
    }
  }

  else if (v19)
  {
    *buf = 136315394;
    v41 = "ADSpeechSamplingDeleteExpiredSamplesForSamplingType";
    v42 = 2112;
    v43 = v29;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s %@ Sampling - Deletion: No audio sample folders are eligible for deletion.", buf, 0x16u);
  }

  v5 = v28;
LABEL_35:

LABEL_36:
}

void sub_100273A20(uint64_t a1, char a2, unsigned int a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v65 = sub_100270078(a1);
  v11 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v93 = "ADSpeechSamplingUploadSamplesForSamplingType";
    v94 = 2112;
    v95 = v65;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@ Sampling - Upload: Processing sampled request audio for upload...", buf, 0x16u);
  }

  v12 = sub_10027018C(a1);
  if (v12)
  {
    v69 = [objc_opt_class() sampledLibraryDirectoryPath];
    v13 = sub_100272A50(v69, a1);
    if ([v13 count])
    {
      v60 = a3;
      v76 = a1;
      v62 = v10;
      v63 = v9;
      v64 = +[NSMutableArray array];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v61 = v13;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v82 objects:v91 count:16];
      v74 = v12;
      if (!v15)
      {
        goto LABEL_24;
      }

      v16 = v15;
      v17 = *v83;
      while (1)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v83 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v82 + 1) + 8 * i);
          if (([objc_opt_class() isFileNameValid:v19] & 1) == 0)
          {
            v23 = AFSiriLogContextSpeech;
            if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_22;
            }

            *buf = 136315650;
            v93 = "ADSpeechSamplingUploadSamplesForSamplingType";
            v94 = 2112;
            v95 = v65;
            v96 = 2112;
            v97 = v19;
            v21 = v23;
            v22 = "%s %@ Sampling - Upload: File has invalid filename: %@";
            goto LABEL_16;
          }

          if (sub_100272C28(v19))
          {
            v20 = AFSiriLogContextSpeech;
            if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_22;
            }

            *buf = 136315650;
            v93 = "ADSpeechSamplingUploadSamplesForSamplingType";
            v94 = 2112;
            v95 = v65;
            v96 = 2112;
            v97 = v19;
            v21 = v20;
            v22 = "%s %@ Sampling - Upload: Audio sample folder ineligible for upload (too old): %@";
            goto LABEL_16;
          }

          v24 = v19;
          v25 = [objc_opt_class() calculateFileNameAgeInDays:v24];

          if (v25 > 0 || (a2 & 1) != 0)
          {
            [v64 addObject:v24];
          }

          else
          {
            v26 = AFSiriLogContextSpeech;
            if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v93 = "ADSpeechSamplingUploadSamplesForSamplingType";
              v94 = 2112;
              v95 = v65;
              v96 = 2112;
              v97 = v24;
              v21 = v26;
              v22 = "%s %@ Sampling - Upload: Audio sample folder ineligible for upload (too recent): %@";
LABEL_16:
              _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, v22, buf, 0x20u);
            }
          }

LABEL_22:
          v12 = v74;
        }

        v16 = [v14 countByEnumeratingWithState:&v82 objects:v91 count:16];
        if (!v16)
        {
LABEL_24:

          v27 = [v64 count];
          v28 = AFSiriLogContextSpeech;
          v29 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
          if (v27)
          {
            if (v29)
            {
              v30 = v28;
              v31 = [v64 count];
              *buf = 136315650;
              v93 = "ADSpeechSamplingUploadSamplesForSamplingType";
              v94 = 2112;
              v95 = v65;
              v96 = 2048;
              v97 = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s %@ Sampling - Upload: %lu audio sample folder(s) pending upload.", buf, 0x20u);
            }

            v32 = +[NSMutableArray array];
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            obj = v64;
            v33 = v76;
            v70 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
            if (v70)
            {
              v68 = *v79;
              v34 = @"pcm";
              v67 = v32;
              do
              {
                for (j = 0; j != v70; j = j + 1)
                {
                  if (*v79 != v68)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v71 = *(*(&v78 + 1) + 8 * j);
                  v36 = [v69 stringByAppendingPathComponent:?];
                  v37 = sub_100272A50(v36, v33);
                  if ([v37 count])
                  {
                    v73 = j;
                    v75 = +[NSMutableArray array];
                    v86 = 0u;
                    v87 = 0u;
                    v88 = 0u;
                    v89 = 0u;
                    v72 = v37;
                    v77 = v37;
                    v38 = [v77 countByEnumeratingWithState:&v86 objects:buf count:16];
                    if (v38)
                    {
                      v39 = v38;
                      v40 = *v87;
                      do
                      {
                        for (k = 0; k != v39; k = k + 1)
                        {
                          if (*v87 != v40)
                          {
                            objc_enumerationMutation(v77);
                          }

                          v42 = *(*(&v86 + 1) + 8 * k);
                          v43 = [v42 pathExtension];
                          v44 = [v43 isEqual:v34];

                          if (v44)
                          {
                            v45 = v34;
                            v46 = [v42 lastPathComponent];
                            v47 = [v46 stringByDeletingPathExtension];

                            v48 = sub_100270550(v36, v47, v33);
                            v49 = [v48 valueForKey:@"language"];
                            v50 = [v48 valueForKey:@"samplingRate"];
                            v51 = [v50 integerValue];

                            if (v48)
                            {
                              v52 = v49 == 0;
                            }

                            else
                            {
                              v52 = 1;
                            }

                            if (!v52 && v51 != 0)
                            {
                              v54 = [v36 stringByAppendingPathComponent:v47];
                              [v75 addObject:v54];
                            }

                            v33 = v76;
                            v34 = v45;
                          }
                        }

                        v39 = [v77 countByEnumeratingWithState:&v86 objects:buf count:16];
                      }

                      while (v39);
                    }

                    j = v73;
                    v12 = v74;
                    v32 = v67;
                    v55 = v75;
                    v37 = v72;
                  }

                  else
                  {
                    v55 = v37;
                  }

                  if ([v55 count])
                  {
                    [v32 addObjectsFromArray:v55];
                  }

                  else
                  {
                    v56 = AFSiriLogContextSpeech;
                    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315906;
                      v57 = @"empty";
                      if (!v55)
                      {
                        v57 = @"invalid";
                      }

                      v93 = "ADSpeechSamplingUploadSamplesForSamplingType";
                      v94 = 2112;
                      v95 = v65;
                      v96 = 2112;
                      v97 = v71;
                      v98 = 2112;
                      v99 = v57;
                      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s %@ Sampling - Upload: The audio sample folder (%@) is %@ and will be deleted.", buf, 0x2Au);
                    }

                    sub_100272C70(v36, v33);
                  }
                }

                v70 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
              }

              while (v70);
            }

            if ([v32 count])
            {
              v10 = v62;
              v9 = v63;
              sub_1002714FC(v32, v33, v60, v63, v62);
            }

            else
            {
              v59 = AFSiriLogContextSpeech;
              v10 = v62;
              v9 = v63;
              if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v93 = "ADSpeechSamplingUploadSamplesForSamplingType";
                v94 = 2112;
                v95 = v65;
                _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%s %@ Sampling - Upload: No valid audio samples found.", buf, 0x16u);
              }

              if (!v33 && v62)
              {
                v62[2](v62);
              }
            }

            v13 = v61;
          }

          else
          {
            v9 = v63;
            if (v29)
            {
              *buf = 136315394;
              v93 = "ADSpeechSamplingUploadSamplesForSamplingType";
              v94 = 2112;
              v95 = v65;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s %@ Sampling - Upload: No audio sample folders are eligible for upload.", buf, 0x16u);
            }

            v13 = v61;
            if (!v76 && v10)
            {
              v10[2](v10);
            }
          }

          goto LABEL_83;
        }
      }
    }

    v58 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v93 = "ADSpeechSamplingUploadSamplesForSamplingType";
      v94 = 2112;
      v95 = v65;
      v96 = 2112;
      v97 = v69;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%s %@ Sampling - Upload: Empty sampling directory: %@", buf, 0x20u);
    }

    if (!a1 && v10)
    {
      v10[2](v10);
    }

LABEL_83:
  }

  else if (!a1 && v10)
  {
    v10[2](v10);
  }
}

void sub_1002743D8(char a1, unsigned int a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  sub_100273A20(0, a1, a2, v8, v7);
  sub_100273A20(1, a1, a2, v8, v7);
}

void sub_100274654(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  v3 = +[ADCommandCenter sharedCommandCenter];
  (*(v2 + 16))(v2, [v3 isTimeoutSuspended]);
}

void sub_1002747DC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void sub_100274938(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 isWatchAuthenticatedWithCompletion:*(a1 + 40)];
}

void sub_100274A7C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  v3 = +[ADCommandCenter sharedCommandCenter];
  (*(v2 + 16))(v2, [v3 isInStarkMode]);
}

void sub_100274BD4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 isInCarDNDModeWithCompletion:*(a1 + 40)];
}

void sub_100274D18(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  v3 = +[ADCommandCenter sharedCommandCenter];
  (*(v2 + 16))(v2, [v3 isDeviceLocked]);
}

uint64_t sub_100274E84(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_10027500C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100275024(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) allKeys];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 136315394;
    v21 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = [*(*(a1 + 32) + 112) countForObject:{v12, v21}];
        v14 = AFSiriLogContextDaemon;
        v15 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
        if (v13)
        {
          if (!v15)
          {
            goto LABEL_10;
          }

          *buf = 136315650;
          v27 = "[ADServiceConnection _stopTimersWithContinuation]_block_invoke";
          v28 = 2112;
          v29 = v12;
          v30 = 2048;
          v31 = v13;
          v16 = v14;
          v17 = "%s Timer %@ was already stopped %lu times, add one more time.";
          v18 = 32;
        }

        else
        {
          if (!v15)
          {
            goto LABEL_10;
          }

          *buf = v21;
          v27 = "[ADServiceConnection _stopTimersWithContinuation]_block_invoke";
          v28 = 2112;
          v29 = v12;
          v16 = v14;
          v17 = "%s Stopping timer %@ now...";
          v18 = 22;
        }

        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, v17, buf, v18);
LABEL_10:
        v19 = [*(*(a1 + 32) + 104) objectForKey:v12];
        [v19 stop];

        [*(*(a1 + 32) + 112) addObject:v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v20 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
      v9 = v20;
    }

    while (v20);
  }
}

void sub_100275270(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 8);
  v3[1] = 3221225472;
  v3[2] = sub_1002752E8;
  v3[3] = &unk_10051D4A0;
  v4 = v1;
  dispatch_async(v2, v3);
}

void sub_1002752E8(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    *&v4 = 136315394;
    v13 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [*(*(a1 + 32) + 112) removeObject:{v8, v13}];
        v9 = [*(*(a1 + 32) + 112) countForObject:v8];
        v10 = AFSiriLogContextDaemon;
        v11 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
        if (v9)
        {
          if (v11)
          {
            *buf = 136315650;
            v19 = "[ADServiceConnection _stopTimersWithContinuation]_block_invoke";
            v20 = 2112;
            v21 = v8;
            v22 = 2048;
            v23 = v9;
            _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Timer %@ was still stopped %lu times.", buf, 0x20u);
          }
        }

        else
        {
          if (v11)
          {
            *buf = v13;
            v19 = "[ADServiceConnection _stopTimersWithContinuation]_block_invoke_2";
            v20 = 2112;
            v21 = v8;
            _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Resetting timer %@ now...", buf, 0x16u);
          }

          v12 = [*(*(a1 + 32) + 104) objectForKey:v8];
          [v12 reset];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v5);
  }
}

uint64_t sub_100275708(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100275BC0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[ADServiceConnection sendBeginSyncWithInfo:chunkHandler:completion:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Plugin timed out for sync with info %@", &v6, 0x16u);
  }

  [*(a1 + 40) clearSyncRequestWithUUID:*(a1 + 48)];
  [*(a1 + 56) serviceConnectionTimedoutForSync];
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = [AFError errorWithCode:103];
    (*(v3 + 16))(v3, v4);
  }
}

void sub_100275CD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100275EEC;
  v7[3] = &unk_10051E0D8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = *(a1 + 56);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_100275DB8(void *a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_ERROR))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = 136315906;
    v10 = "[ADServiceConnection sendBeginSyncWithInfo:chunkHandler:completion:]_block_invoke";
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s %@ Sync failed for info %@: %@", &v9, 0x2Au);
  }

  v5 = a1[6];
  v6 = [AFError errorWithCode:101 description:0 underlyingError:v3];
  (*(v5 + 16))(v5, v6);
}

void sub_100275EEC(uint64_t a1)
{
  v2 = [*(a1 + 32) syncRequestForUUID:*(a1 + 40)];
  if ([v2 timedout])
  {
    v3 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[ADServiceConnection sendBeginSyncWithInfo:chunkHandler:completion:]_block_invoke_3";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Plugin already timed out for sync", &v5, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) clearSyncRequestWithUUID:*(a1 + 40)];
    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, *(a1 + 48));
    }
  }
}

void sub_1002764EC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    *buf = 136315394;
    v9 = "[ADServiceConnection sendClientBoundCommand:domain:executionContext:reply:]_block_invoke";
    v10 = 2114;
    v11 = v7;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Plugin timed out for message %{public}@", buf, 0x16u);
  }

  [*(a1 + 40) _removeTimerForUUID:*(a1 + 48)];
  v3 = *(a1 + 56);
  v4 = [AFError errorWithCode:103];
  (*(v3 + 16))(v3, 0, 0, v4);

  if (AFIsInternalInstall())
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "[ADServiceConnection sendClientBoundCommand:domain:executionContext:reply:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Taking stackshot for timedout plugin", buf, 0xCu);
    }

    v6 = [NSString stringWithFormat:@"Siri plugin timed out for plugin: %@ %@", *(*(a1 + 40) + 32), *(a1 + 32)];
    WriteStackshotReport_async();
  }
}

void sub_10027668C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100276AC0;
  v8[3] = &unk_1005183C8;
  v8[4] = v5;
  v9 = v4;
  v10 = *(a1 + 48);
  v11 = v3;
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v7 = v3;
  dispatch_async(v6, v8);
}

void sub_100276780(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(v11 + 8);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002768BC;
  v17[3] = &unk_1005184B8;
  v17[4] = v11;
  v18 = v10;
  v19 = *(a1 + 48);
  v20 = v7;
  v21 = *(a1 + 56);
  v22 = v9;
  v13 = *(a1 + 64);
  v23 = v8;
  v24 = v13;
  v14 = v8;
  v15 = v9;
  v16 = v7;
  dispatch_async(v12, v17);
}

void sub_1002768BC(uint64_t a1)
{
  [*(a1 + 32) _removeTimerForUUID:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (!v2 || ([v2 cancelIfNotAlreadyCanceled] & 1) != 0)
  {
    [*(*(a1 + 32) + 56) markResponseForCommand:*(a1 + 64)];
    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = v3;
      v5 = 0;
LABEL_16:
      (*(*(a1 + 88) + 16))();

      return;
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v5 = [[SAGenericCommand alloc] initWithDictionary:v8];
      v9 = [v5 className];

      if (v9)
      {
        v4 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "[ADServiceConnection sendClientBoundCommand:domain:executionContext:reply:]_block_invoke";
        v13 = 2112;
        v14 = v8;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Bad plugin response %@", &v11, 0x16u);
      }

      v4 = [AFError errorWithCode:102];
    }

    else
    {
      v4 = 0;
    }

    v5 = 0;
    goto LABEL_15;
  }

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 56);
    v11 = 136315394;
    v12 = "[ADServiceConnection sendClientBoundCommand:domain:executionContext:reply:]_block_invoke_2";
    v13 = 2112;
    v14 = v7;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s message timed out, ignoring plugin reply %@", &v11, 0x16u);
  }
}

void sub_100276AC0(uint64_t a1)
{
  [*(a1 + 32) _removeTimerForUUID:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2 && ([v2 cancelIfNotAlreadyCanceled] & 1) == 0)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 56);
      v8 = 136315394;
      v9 = "[ADServiceConnection sendClientBoundCommand:domain:executionContext:reply:]_block_invoke_2";
      v10 = 2114;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s message timed out, ignoring provider service error %{public}@", &v8, 0x16u);
    }
  }

  else
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 56);
      v5 = *(a1 + 64);
      v8 = 136315650;
      v9 = "[ADServiceConnection sendClientBoundCommand:domain:executionContext:reply:]_block_invoke";
      v10 = 2114;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Plugin failed for message %{public}@: %{public}@", &v8, 0x20u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_100276FDC(id a1)
{
  v1 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[ADServiceConnection _connection]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s Assistant Service Connection Invalidated", &v2, 0xCu);
  }
}

void sub_100277084(id a1)
{
  v1 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[ADServiceConnection _connection]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s Assistant Service Connection Interrupted", &v3, 0xCu);
  }

  v2 = +[AFAnalytics sharedAnalytics];
  [v2 logEventWithType:4002 context:0];
}

void sub_100277ABC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  [v2 invalidateTimer];
  v3 = [v2 syncChunkHandler];
  if (v3)
  {
    v4 = objc_alloc_init(ADSyncChunkInfo);
    [(ADSyncChunkInfo *)v4 setPre:*(a1 + 48)];
    [(ADSyncChunkInfo *)v4 setPost:*(a1 + 56)];
    [(ADSyncChunkInfo *)v4 setToAdd:*(a1 + 64)];
    [(ADSyncChunkInfo *)v4 setToRemove:*(a1 + 72)];
    [(ADSyncChunkInfo *)v4 setValidity:*(a1 + 80)];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100277CB0;
    v11[3] = &unk_10051E100;
    v12 = *(a1 + 88);
    (v3)[2](v3, v4, v11);
  }

  else
  {
    v5 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v9 = *(a1 + 72);
      v8 = *(a1 + 80);
      v10 = *(a1 + 64);
      *buf = 136316418;
      v14 = "[ADServiceConnectionProviderServiceDelegate syncChunksWithPreAnchor:postAnchor:updates:deletes:validity:forRequestUUID:reply:]_block_invoke";
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Ignoring sync chunks as we have no chunk handler. (pre=%@, post=%@, validity=%@, updates=%@, deletes=%@)", buf, 0x3Eu);
    }

    (*(*(a1 + 88) + 16))();
  }
}

uint64_t sub_100278A38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100278CD8(uint64_t a1)
{
  v8 = [*(a1 + 32) _keychainCache];
  v2 = [v8 objectForKey:*(a1 + 40)];
  v3 = +[NSNull null];
  if (v2 == v3 && !*(a1 + 48))
  {
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_7:
    v5 = *(a1 + 48);
    if (v5)
    {
      [v8 setValue:v5 forKey:*(a1 + 40)];
    }

    else
    {
      v6 = +[NSNull null];
      [v8 setValue:v6 forKey:*(a1 + 40)];
    }

    v3 = [*(a1 + 48) dataUsingEncoding:4];
    AFKeychainSetValueForAccountAndKey();
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))();
    }

    goto LABEL_12;
  }

  v4 = [*(a1 + 48) isEqualToString:v2];

  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
}

void sub_100279A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100279A30(uint64_t a1)
{
  v3 = +[NSNotificationCenter defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"ADPreferencesCompanionIdentifierDidChangeNotification" object:WeakRetained];
}

uint64_t sub_100279B94(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedKeychainStringForKey:@"Companion Identifier"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100279CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100279CF4(uint64_t a1)
{
  v3 = +[NSNotificationCenter defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"ADPreferencesSharedUserIdentifierDidChangeNotification" object:WeakRetained];
}

uint64_t sub_100279E78(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedKeychainStringForKey:@"Logging User Identifier"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10027BE24(id a1)
{
  v1 = [ADPreferences alloc];
  v4 = +[AFInstanceContext currentContext];
  v2 = [(ADPreferences *)v1 initWithInstanceContext:v4];
  v3 = qword_100590770;
  qword_100590770 = v2;
}

void sub_10027C4A4(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = a2;
  [v4 setGeneration:v3];
  [v4 setDate:a1[4]];
  [v4 setInsertedOrUpdatedItems:a1[5]];
  [v4 setDeletedItemUUIDs:a1[6]];
}

void sub_10027DA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose((v51 - 176), 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10027DB0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10027DB24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027DC0C;
  block[3] = &unk_1005185C0;
  v11 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v15 = *(a1 + 64);
  v9 = *(a1 + 48);
  v7 = v9;
  v14 = v9;
  v8 = v3;
  dispatch_async(v4, block);
}

void sub_10027DC0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AFSiriLogContextDaemon;
  v4 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      *buf = 136315394;
      v22 = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]_block_invoke_2";
      v23 = 2112;
      v24 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Error in updating shared store (%@)", buf, 0x16u);
    }
  }

  else
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = v3;
      v7 = [v5 description];
      *buf = 136315394;
      v22 = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]_block_invoke";
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s succeeded in writing dictionary: %@", buf, 0x16u);
    }

    v8 = *(a1 + 48);
    v9 = +[ADAssistantDataManager sharedDataManager];
    v10 = [v9 unredactedAnchor];
    [v8 _saveCachedAssistantDataAnchor:v10];

    v11 = *(a1 + 48);
    v12 = *(*(*(a1 + 72) + 8) + 40);
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      [v11 _saveIdentifiersAnchor:v12];
    }

    else
    {
      [v11 _saveBackupIdentifiersAnchor:v12];
    }

    v13 = +[ADPreferences sharedPreferences];
    [v13 setIsMultiUserSyncerMeDevice:*(*(*(a1 + 64) + 8) + 24)];

    *(*(a1 + 48) + 66) = *(*(*(a1 + 64) + 8) + 24);
    if ([*(a1 + 56) count])
    {
      v14 = +[ADCloudKitManager sharedManager];
      v15 = *(a1 + 56);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10027DE7C;
      v18[3] = &unk_100518570;
      v16 = v15;
      v17 = *(a1 + 48);
      v19 = v16;
      v20 = v17;
      [v14 fetchValuesForKeysFromSharedStore:v16 withQOS:17 completion:v18];
    }
  }
}

void sub_10027DE7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 count];
  v10 = AFSiriLogContextDaemon;
  if (v9)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = v7;
      v12 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      v16 = 136315650;
      v17 = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]_block_invoke";
      v18 = 2048;
      v19 = [v13 count];
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Deletion failed, %ld records still exist, error %@", &v16, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v16 = 136315395;
      v17 = "[ADMultiUserCloudKitSyncer _syncIdentifiersToCloud:forceUpdate:voiceIDChangedToEnabled:]_block_invoke";
      v18 = 2113;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Deletion successful, record fetch yielded no records for record keys (%{private}@)", &v16, 0x16u);
    }

    v15 = [*(a1 + 40) _homeMembershipsToDelete];
    [v15 removeAllObjects];
  }
}

void sub_10027E54C(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[ADMultiUserCloudKitSyncer _deleteHomeMemberShipsFromCloud:]_block_invoke";
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Error deleting home memberships (%@)", buf, 0x16u);
    }

    v5 = a1[6];
    if (v5 >= 5)
    {
      v6 = ((v5 >> 1) * 60.0 * 1000000000.0);
    }

    else
    {
      v6 = 60000000000;
    }

    v11 = dispatch_time(0, v6);
    v12 = a1[4];
    v13 = *(v12 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10027E74C;
    block[3] = &unk_10051D770;
    v14 = a1[6];
    block[4] = v12;
    block[5] = v14;
    dispatch_after(v11, v13, block);
  }

  else
  {
    v7 = +[ADCloudKitManager sharedManager];
    v8 = a1[5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10027E800;
    v15[3] = &unk_100518570;
    v9 = v8;
    v10 = a1[4];
    v16 = v9;
    v17 = v10;
    [v7 fetchValuesForKeysFromSharedStore:v9 withQOS:17 completion:v15];
  }
}

id sub_10027E74C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADMultiUserCloudKitSyncer _deleteHomeMemberShipsFromCloud:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Retrying deletion", &v4, 0xCu);
  }

  return [*(a1 + 32) _deleteHomeMemberShipsFromCloud:*(a1 + 40)];
}

void sub_10027E800(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 count];
  v10 = AFSiriLogContextDaemon;
  if (v9)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = v7;
      v12 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      v16 = 136315650;
      v17 = "[ADMultiUserCloudKitSyncer _deleteHomeMemberShipsFromCloud:]_block_invoke";
      v18 = 2048;
      v19 = [v13 count];
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Deletion failed, %ld records still exist, error %@", &v16, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v16 = 136315395;
      v17 = "[ADMultiUserCloudKitSyncer _deleteHomeMemberShipsFromCloud:]_block_invoke";
      v18 = 2113;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Deletion successful, record fetch yielded no records for record keys (%{private}@)", &v16, 0x16u);
    }

    v15 = [*(a1 + 40) _homeMembershipsToDelete];
    [v15 removeAllObjects];
  }
}

void sub_10027F9CC(id *a1)
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[ADMultiUserCloudKitSyncer assistantDataManager:didUpdateAssistantData:meCards:unredactedAnchor:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got updated assistant data", &v17, 0xCu);
  }

  objc_storeStrong(a1[4] + 9, a1[5]);
  objc_storeStrong(a1[4] + 13, a1[6]);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = +[ADPreferences sharedPreferences];
    v6 = [v5 multiUserSyncerSADAnchor];
    v7 = *(a1[4] + 10);
    v8 = a1[7];
    v17 = 136315906;
    v18 = "[ADMultiUserCloudKitSyncer assistantDataManager:didUpdateAssistantData:meCards:unredactedAnchor:]_block_invoke";
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s saved anchor:%@\tcached anchor:%@\tnew anchor:%@", &v17, 0x2Au);
  }

  v9 = *(a1[4] + 10);
  v10 = a1[7];
  if (v9)
  {
    if ([v9 isEqualToString:a1[7]])
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = +[ADPreferences sharedPreferences];
    v13 = [v12 multiUserSyncerSADAnchor];
    if ([v10 isEqualToString:v13])
    {
      v14 = *(a1[4] + 10);
      if (!v14)
      {

        goto LABEL_7;
      }

      v15 = [v14 isEqualToString:a1[7]];

      if (v15)
      {
LABEL_7:
        v11 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          v17 = 136315138;
          v18 = "[ADMultiUserCloudKitSyncer assistantDataManager:didUpdateAssistantData:meCards:unredactedAnchor:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Me Card info already synced", &v17, 0xCu);
        }

        objc_storeStrong(a1[4] + 10, a1[7]);
        return;
      }
    }

    else
    {
    }
  }

  v16 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[ADMultiUserCloudKitSyncer assistantDataManager:didUpdateAssistantData:meCards:unredactedAnchor:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Syncing Me Card info", &v17, 0xCu);
  }

  [a1[4] _syncMeCard:0 anchorToSave:a1[7]];
}

void sub_10027FE58(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10027FF10;
  block[3] = &unk_10051DB68;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_10027FF10(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[ADMultiUserCloudKitSyncer _syncMeCard:anchorToSave:]_block_invoke_2";
      v7 = 2112;
      v8 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Error in updating Me Card (%@)", &v5, 0x16u);
    }
  }

  else
  {
    v3 = a1[6];
    v4 = a1[5];

    [v4 _saveCachedAssistantDataAnchor:v3];
  }
}

void sub_1002800AC(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v21 = v20;
    v25 = 136315394;
    v26 = "[ADMultiUserCloudKitSyncer meDeviceChanged:]_block_invoke";
    v27 = 2112;
    v28 = objc_opt_class();
    v22 = v28;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s MeDeviceChangedNotification with incorrect object type %@", &v25, 0x16u);

    goto LABEL_20;
  }

  v3 = [v2 BOOLValue];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = @"NOT meDevice";
    if (v3)
    {
      v5 = @"meDevice";
    }

    v25 = 136315394;
    v26 = "[ADMultiUserCloudKitSyncer meDeviceChanged:]_block_invoke";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s (%@)", &v25, 0x16u);
  }

  v6 = *(a1 + 40);
  if (*(v6 + 65) != v3)
  {
    *(v6 + 65) = v3;
    if (v3)
    {
      v7 = +[ADMultiUserMeDevice sharedInstance];
      v8 = [v7 meDeviceIDSIdentifier];
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = v8;

      v11 = *(a1 + 40);
      if (!*(v11 + 56))
      {
        v12 = +[ADAccount activeAccount];
        v13 = [v12 assistantIdentifier];
        v14 = *(a1 + 40);
        v15 = *(v14 + 56);
        *(v14 + 56) = v13;

        v11 = *(a1 + 40);
      }

      if ((*(v11 + 64) & 1) == 0)
      {
        v16 = +[AFPreferences sharedPreferences];
        *(*(a1 + 40) + 64) = [v16 assistantIsEnabled];
      }

      v17 = AFIsMultiUserCompanion();
      v18 = *(a1 + 40);
      if (v17 && (!*(v18 + 56) || (*(v18 + 64) & 1) == 0))
      {
        v19 = +[ADHomeInfoManager sharedInfoManager];
        [v19 setRecognizeMyVoiceEnabled:0];

        v18 = *(a1 + 40);
      }

      [v18 _syncIdentifiersToCloud:0 forceUpdate:0];
      goto LABEL_21;
    }

    *(*(a1 + 40) + 66) = 0;
    v23 = *(a1 + 40);
    v24 = *(v23 + 32);
    *(v23 + 32) = 0;

    v21 = +[ADPreferences sharedPreferences];
    [v21 setIsMultiUserSyncerMeDevice:0];
LABEL_20:
  }

LABEL_21:
}

void sub_1002803F8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADMultiUserCloudKitSyncer primaryUserSharedUserIdentifierDidChangeNotification:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  v3 = +[ADPreferences sharedPreferences];
  v4 = [v3 sharedUserIdentifier];

  v5 = *(a1 + 32);
  if (*(v5 + 40))
  {
    if ([v4 isEqualToString:?])
    {
      goto LABEL_8;
    }

    v5 = *(a1 + 32);
  }

  objc_storeStrong((v5 + 40), v4);
  v6 = *(a1 + 32);
  if (v6[5])
  {
    [v6 _syncIdentifiersToCloud:0 forceUpdate:0];
  }

LABEL_8:
}

void sub_100280594(uint64_t a1)
{
  v2 = +[ADAccount activeAccount];
  v3 = [v2 assistantIdentifier];

  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v8 = 136315395;
    v9 = "[ADMultiUserCloudKitSyncer accountDidChange:]_block_invoke";
    v10 = 2113;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %{private}@", &v8, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 56), v3);
  v5 = *(a1 + 32);
  if (!*(v5 + 56))
  {
    v6 = AFIsMultiUserCompanion();
    v5 = *(a1 + 32);
    if (v6)
    {
      if (*(v5 + 65) == 1)
      {
        v7 = +[ADHomeInfoManager sharedInfoManager];
        [v7 setRecognizeMyVoiceEnabled:0];

        v5 = *(a1 + 32);
      }
    }
  }

  [v5 _syncIdentifiersToCloud:0 forceUpdate:0];
}

void sub_1002807E4(uint64_t a1)
{
  v10 = +[AFPreferences sharedPreferences];
  v2 = [v10 assistantIsEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    if (*(v3 + 64))
    {
      if (*(v3 + 56))
      {
        goto LABEL_11;
      }

      v4 = +[ADAccount activeAccount];
      v5 = [v4 assistantIdentifier];
      v6 = *(a1 + 32);
      v7 = *(v6 + 56);
      *(v6 + 56) = v5;

      v8 = *(a1 + 32);
      if (!v8[7])
      {
        goto LABEL_11;
      }
    }

    else
    {
      *(v3 + 64) = 1;
      v8 = *(a1 + 32);
    }

    [v8 _gatherIdentifiersForMultiUser];
    goto LABEL_11;
  }

  *(v3 + 64) = 0;
  if (AFIsMultiUserCompanion() && *(*(a1 + 32) + 65) == 1)
  {
    v9 = +[ADHomeInfoManager sharedInfoManager];
    [v9 setRecognizeMyVoiceEnabled:0];
  }

LABEL_11:
}

void sub_100280A10(uint64_t a1, CFStringRef theString1)
{
  if (theString1 && CFStringCompare(theString1, @"UserAssignedDeviceName", 0) == kCFCompareEqualTo)
  {
    v3 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v8 = "[ADMultiUserCloudKitSyncer _setupMGQUserAssignedDeviceNameNotificationHandler]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s kMGQUserAssignedDeviceName changed.", buf, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100280B34;
    block[3] = &unk_10051DFE8;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

void sub_100280C9C(uint64_t a1)
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v32 = 136315395;
    v33 = "[ADMultiUserCloudKitSyncer setHomeMemberships:homeMembershipsToDelete:voiceIDSetting:]_block_invoke";
    v34 = 2113;
    v35 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s memberships: %{private}@", &v32, 0x16u);
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 67);
  v6 = *(a1 + 56);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 ^ 1) & v6;
    *(v4 + 67) = v6;
  }

  v8 = [*(a1 + 48) count];
  if (v5 == v6 && v8 == 0)
  {
    v10 = *(*(a1 + 40) + 16);
    if (v10)
    {
      v11 = [v10 allKeys];
      v12 = [NSSet setWithArray:v11];

      v13 = [*(a1 + 32) allKeys];
      v14 = [NSSet setWithArray:v13];

      if ([v14 isEqual:v12])
      {
        v15 = [*(*(a1 + 40) + 16) allValues];
        v16 = [NSSet setWithArray:v15];

        v17 = [*(a1 + 32) allValues];
        v18 = [NSSet setWithArray:v17];

        if ([v18 isEqual:v16])
        {

          v19 = AFSiriLogContextSession;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
          {
            v20 = *(*(a1 + 40) + 16);
            v32 = 136315395;
            v33 = "[ADMultiUserCloudKitSyncer setHomeMemberships:homeMembershipsToDelete:voiceIDSetting:]_block_invoke";
            v34 = 2113;
            v35 = v20;
            _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s No change in (%{private}@). No home memberships marked for deletion", &v32, 0x16u);
          }

          return;
        }

        v21 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          v32 = 136315651;
          v33 = "[ADMultiUserCloudKitSyncer setHomeMemberships:homeMembershipsToDelete:voiceIDSetting:]_block_invoke";
          v34 = 2113;
          v35 = v18;
          v36 = 2113;
          v37 = v16;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s (%{private}@), (%{private}@)", &v32, 0x20u);
        }
      }
    }
  }

  v22 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v23 = *(a1 + 48);
    v32 = 136315395;
    v33 = "[ADMultiUserCloudKitSyncer setHomeMemberships:homeMembershipsToDelete:voiceIDSetting:]_block_invoke";
    v34 = 2113;
    v35 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Home memberships marked for deletion (%{private}@)", &v32, 0x16u);
  }

  v24 = [*(a1 + 40) _homeMembershipsToDelete];
  [v24 addEntriesFromDictionary:*(a1 + 48)];

  v25 = [*(a1 + 32) mutableCopy];
  v26 = [*(*(a1 + 40) + 24) allKeys];
  [v25 removeObjectsForKeys:v26];

  v27 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v28 = *(*(a1 + 40) + 16);
    v32 = 136315651;
    v33 = "[ADMultiUserCloudKitSyncer setHomeMemberships:homeMembershipsToDelete:voiceIDSetting:]_block_invoke";
    v34 = 2113;
    v35 = v28;
    v36 = 2113;
    v37 = v25;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Changed (%{private}@) to (%{private}@)", &v32, 0x20u);
  }

  v29 = *(a1 + 40);
  v30 = *(v29 + 16);
  *(v29 + 16) = v25;
  v31 = v25;

  [*(a1 + 40) _saveCachedAssistantDataAnchor:0];
  [*(a1 + 40) _syncIdentifiersToCloud:0 forceUpdate:1 voiceIDChangedToEnabled:v7];
}

void sub_100281164(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v9 = 136315395;
    v10 = "[ADMultiUserCloudKitSyncer markHomeMembershipsForDeletion:]_block_invoke";
    v11 = 2113;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Home memberships marked for deletion (%{private}@)", &v9, 0x16u);
  }

  v4 = [*(a1 + 40) _homeMembershipsToDelete];
  [v4 addEntriesFromDictionary:*(a1 + 32)];

  v5 = [*(*(a1 + 40) + 16) mutableCopy];
  v6 = [*(*(a1 + 40) + 24) allKeys];
  [v5 removeObjectsForKeys:v6];

  objc_storeStrong((*(a1 + 40) + 16), v5);
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = *(*(a1 + 40) + 16);
    v9 = 136315395;
    v10 = "[ADMultiUserCloudKitSyncer markHomeMembershipsForDeletion:]_block_invoke";
    v11 = 2113;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s _homeMemberships are: (%{private}@)", &v9, 0x16u);
  }

  [*(a1 + 40) _deleteHomeMemberShipsFromCloud:0];
}

void sub_1002817BC(id a1)
{
  v1 = [[ADMultiUserCloudKitSyncer alloc] _init];
  v2 = qword_100590778;
  qword_100590778 = v1;

  _objc_release_x1(v1, v2);
}

NSData *__cdecl sub_1002817FC(id a1, SVDCapability *a2)
{
  v2 = a2;
  v8 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v10 = "ADSerializedSVDCapabilities_block_invoke";
      v11 = 2112;
      v12 = v2;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal Failed to serialize %@", buf, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

id sub_100281928(void *a1)
{
  v15 = a1;
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0];
  if (+[AFFeatureFlags isLassoEnabled])
  {
    v11 = [NSMutableSet setWithSet:v10];
    [v11 addObject:objc_opt_class()];
    v12 = [v11 copy];

    v10 = v12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100281B44;
    v16[3] = &unk_100518630;
    v17 = v10;
    v13 = [v15 af_lenientMappedArray:v16];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_100281B44(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v10 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v3 error:&v10];
    v6 = v10;
    if (v6 || !v5)
    {
      v8 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v12 = "ADDeserializedSVDCapabilities_block_invoke";
        v13 = 2112;
        v14 = v3;
        v15 = 2112;
        v16 = v6;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal Unable to deserialize %@: %@", buf, 0x20u);
      }

      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *sub_1002822F0(void *result)
{
  if (result[4])
  {
    return [*(result[5] + 32) removeObject:?];
  }

  return result;
}

void *sub_1002823A0(void *result)
{
  if (result[4])
  {
    return [*(result[5] + 32) addObject:?];
  }

  return result;
}

void sub_100282450(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADLocalMeCardStore meCard:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Returning MeCard:%@", &v4, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002825D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    if ([v3 isEqualToData:*(a1 + 40)])
    {
      return;
    }

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 16), *(a1 + 40));
  v4 = [AceObject aceObjectWithPlistData:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 24), v4);
  v5 = +[ADPreferences sharedPreferences];
  [v5 setSingleUserMeCard:*(a1 + 40)];
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(a1 + 32) + 24);
    *buf = 136315394;
    v21 = "[ADLocalMeCardStore storeMeCard:]_block_invoke";
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Saved MeCard:%@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [*(*(a1 + 32) + 32) allObjects];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = [*(*(a1 + 32) + 24) copy];
        [v13 localMeCardDidUpdate:v14];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

void sub_1002828C8(uint64_t a1)
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 singleUserMeCard];
  objc_storeStrong((*(a1 + 32) + 16), v3);
  if (*(*(a1 + 32) + 16))
  {
    v4 = [AceObject aceObjectWithPlistData:?];
    objc_storeStrong((*(a1 + 32) + 24), v4);
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADLocalMeCardStore _init]_block_invoke";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Reading stored MeCard: (%@)", &v10, 0x16u);
    }
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADLocalMeCardStore _init]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s No stored MeCard found", &v10, 0xCu);
    }
  }

  v7 = objc_alloc_init(NSMutableSet);
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;
}

void sub_100282AC8(id a1)
{
  v1 = [[ADLocalMeCardStore alloc] _init];
  v2 = qword_100590788;
  qword_100590788 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100282D38(uint64_t a1)
{
  v6 = *(a1 + 32);
  v2 = *(v6 + 72);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100282E24;
  v7[3] = &unk_1005186C8;
  v3 = *(&v6 + 1);
  v4 = *(a1 + 56);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 getSiriRequestForClientBoundAceCommand:v3 completionHandler:v7];
}

void sub_100282E24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[ADCommandCenter sharedCommandCenter];
    v5 = [*(a1 + 40) refId];
    [v4 _prepareForAppLaunchForRequest:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(a1 + 32);
      v7 = +[ADCommandCenter sharedCommandCenter];
      v8 = [v6 _informCommandCenter:v7 willPerformLaunchApp:*(a1 + 40)];
    }

    else
    {
      v8 = 0;
    }

    v14 = [*(a1 + 40) refId];
    [v3 _setRefId:v14];

    v15 = [*(a1 + 48) info];
    v16 = [v15 turnId];
    [v3 _setTurnId:v16];

    v17 = *(*(a1 + 32) + 88);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1002830D4;
    v20[3] = &unk_1005186A0;
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v21 = v18;
    v22 = v19;
    v23 = *(a1 + 56);
    v24 = v8;
    v13 = v8;
    [v17 handleSiriRequest:v3 deliveryHandler:0 completionHandler:v20];

    goto LABEL_10;
  }

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 32) + 72);
    *buf = 136315650;
    v26 = "[ADSiriTaskService handleCommand:forDomain:executionContext:reply:]_block_invoke_2";
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s No transformed requests returned from request transformer %@ for command %@", buf, 0x20u);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = +[NSError ad_siriTaskHandlerAceTranslationFailureError];
    (*(v12 + 16))(v12, 0, v13);
LABEL_10:
  }
}

void sub_1002830D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 aceId];
    v11 = *(a1 + 40);
    *buf = 136316162;
    v24 = "[ADSiriTaskService handleCommand:forDomain:executionContext:reply:]_block_invoke";
    v25 = 2112;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Got response %@ (error=%@) for command: %@, handled by service: %@", buf, 0x34u);
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(v13 + 56);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002832B8;
  v17[3] = &unk_100518678;
  v17[4] = v13;
  v18 = v5;
  v19 = v6;
  v20 = v12;
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v15 = v6;
  v16 = v5;
  dispatch_async(v14, v17);
}

void sub_1002832B8(void *a1)
{
  v5 = [*(a1[4] + 80) aceCommandForSiriResponse:a1[5] responseError:a1[6] forRequestCommand:a1[7]];
  if (v5)
  {
    v2 = 0;
  }

  else
  {
    v2 = +[NSError ad_siriTaskHandlerAceTranslationFailureError];
  }

  v3 = a1[8];
  if (v3)
  {
    (*(v3 + 16))(v3, v5, v2);
  }

  v4 = a1[9];
  if (v4)
  {
    (*(v4 + 16))(v4, v5, v2);
  }
}

void sub_1002836B4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5 || ([v9 encodedClassName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", SACommandFailedClassIdentifier), v6, v7))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained failedToLaunchAppWithBundleIdentifier:*(a1 + 32)];
  }
}

void sub_100284490(id *a1)
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002846DC;
  v17[3] = &unk_100518750;
  v18 = a1[8];
  v2 = objc_retainBlock(v17);
  v3 = a1[4];
  if (v3[7])
  {
    if ([v3 _shouldWakeSystemForHandlingCommand:a1[5] executionContext:a1[6]])
    {
      [a1[4] _wakeSystemForHandlingCommand];
    }

    v4 = *(a1[4] + 7);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002846FC;
    v12[3] = &unk_100518778;
    v5 = a1[5];
    v6 = a1[7];
    v7 = a1[6];
    v8 = a1[8];
    *&v9 = v7;
    *(&v9 + 1) = a1[4];
    v15 = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v13 = v10;
    v14 = v9;
    v16 = v2;
    [v4 adRequestDidReceiveCommand:v5 reply:v12];
  }

  else
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[ADUIService handleCommand:forDomain:executionContext:reply:]_block_invoke_2";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s No request delegate to handle command", buf, 0xCu);
    }

    (v2[2])(v2, a1[5], 0);
  }
}

uint64_t sub_1002846DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, 0);
  }

  return result;
}

void sub_1002846FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 code] == 26)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[ADUIService handleCommand:forDomain:executionContext:reply:]_block_invoke_3";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Request delegate unable to handle command. Allowing fallback handler a chance", buf, 0xCu);
    }

    v9 = objc_alloc_init(ADFauxUIService);
    [(ADFauxUIService *)v9 handleCommand:*(a1 + 32) forDomain:*(a1 + 40) executionContext:*(a1 + 48) reply:*(a1 + 64)];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 64));
    if (WeakRetained)
    {
      v11 = WeakRetained;
      v12 = [*(a1 + 32) _adui_presentsUIResponseInTranscript];

      if (v12)
      {
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        v15 = *(v14 + 80);
        v20 = _NSConcreteStackBlock;
        v21 = 3221225472;
        v22 = sub_100284918;
        v23 = &unk_10051E010;
        v24 = v14;
        v25 = v13;
        dispatch_async(v15, &v20);
        v16 = objc_loadWeakRetained((*(a1 + 56) + 64));
        v17 = *(a1 + 32);
        v18 = *(a1 + 56);
        v19 = [*(a1 + 48) info];
        [v16 UIService:v18 didPresentUIResponseForCommand:v17 withExecutionInfo:v19];
      }
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_100284A64(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = *(*(a1 + 40) + 72);
    v15 = 136315906;
    v16 = "[ADUIService cancelOperationsForRequestID:forAssistantID:fromRemote:reason:]_block_invoke";
    v17 = 2112;
    v18 = v13;
    v19 = 1024;
    LODWORD(v20[0]) = v12;
    WORD2(v20[0]) = 2112;
    *(v20 + 6) = v14;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s RequestId: %@, fromRemote: %d, Last handled context: %@", &v15, 0x26u);
  }

  if ([*(*(a1 + 40) + 72) isFromRemote])
  {
    if (*(a1 + 48) == 1)
    {
      v3 = [*(*(a1 + 40) + 72) info];
      v4 = [v3 requestID];
      v5 = [v4 isEqualToString:*(a1 + 32)];

      if (v5)
      {
        v6 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v7 = *(a1 + 32);
          v8 = *(*(a1 + 40) + 72);
          v15 = 136315650;
          v16 = "[ADUIService cancelOperationsForRequestID:forAssistantID:fromRemote:reason:]_block_invoke";
          v17 = 2112;
          v18 = v7;
          v19 = 2112;
          v20[0] = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Dismissing UI for remote request %@: %@", &v15, 0x20u);
        }

        v9 = objc_alloc_init(SAUICloseAssistant);
        v10 = *(a1 + 40);
        v11 = [v9 groupIdentifier];
        [v10 handleCommand:v9 forDomain:v11 executionContext:*(*(a1 + 40) + 72) reply:&stru_100518728];
      }
    }
  }
}

void sub_100284C60(id a1, SAAceCommand *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "[ADUIService cancelOperationsForRequestID:forAssistantID:fromRemote:reason:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s response: %@, error: %@", &v7, 0x20u);
    }
  }
}

void sub_100285784(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v10 = 136315906;
    v11 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]_block_invoke";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Handled command %@ with response %@ and error %@.", &v10, 0x2Au);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

void sub_100285890(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setItemURL:v3];
  [v4 setNumberOfLoops:0];
  LODWORD(v5) = 1.0;
  [v4 setVolume:v5];
  [v4 setFadeInDuration:0.0];
  [v4 setFadeOutDuration:0.0];
  v6 = [*(a1 + 40) refId];
  [v4 setUUID:v6];
}

void sub_100285938(uint64_t a1)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100285A8C;
  v12[3] = &unk_1005187C8;
  v2 = *(a1 + 32);
  v13 = *(a1 + 40);
  v3 = [AFSetAudioSessionActiveContext newWithBuilder:v12];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100285AF0;
  v6[3] = &unk_100518840;
  v4 = *(a1 + 48);
  v11 = *(a1 + 72);
  v5 = *(a1 + 64);
  v7 = v4;
  v10 = v5;
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  [v2 forceAudioSessionActiveWithContext:v3 completion:v6];
}

void sub_100285A8C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setOptions:2];
  [v3 setReason:3];
  [v3 setSpeechRequestOptions:*(a1 + 32)];
}

void sub_100285AF0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [a4 error];
  v8 = AFSiriLogContextDaemon;
  if (v7)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]_block_invoke_3";
      v33 = 2112;
      v34 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Error activating audio session: %@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = AFAudioPlaybackOptionsGetNames();
      *buf = 136315650;
      v32 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]_block_invoke";
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Enqueued playback %@ with %@", buf, 0x20u);
    }

    v12 = +[ADSpeechManager sharedManager];
    v13 = [v12 audioPlaybackService];
    v14 = *(a1 + 32);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100285E34;
    v29[3] = &unk_10051DFE8;
    v30 = v14;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100285EF0;
    v23[3] = &unk_1005187F0;
    v15 = *(a1 + 32);
    v28 = *(a1 + 64);
    v16 = *(a1 + 56);
    v24 = v15;
    v27 = v16;
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002860B0;
    v17[3] = &unk_100518818;
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    v20 = v6;
    v22 = *(a1 + 64);
    v21 = *(a1 + 40);
    [v13 startRequest:v30 options:0 preparationHandler:v29 executionHandler:v23 finalizationHandler:v17];
  }
}

void sub_100285E34(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Starting playback %@", &v4, 0x16u);
  }
}

void sub_100285EF0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v14 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Started playback %@", buf, 0x16u);
  }

  if (*(a1 + 64))
  {
    v4 = *(a1 + 48);
    v5 = objc_alloc_init(SACommandSucceeded);
    [v4 invokeWithValue:v5 andValue:0];
  }

  else
  {
    if (*(a1 + 56) == 3)
    {
      v6 = 2.0;
    }

    else
    {
      v6 = 1.0;
    }

    v7 = dispatch_time(0, (v6 * 1000000000.0));
    v8 = [*(a1 + 40) _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10028629C;
    block[3] = &unk_10051B618;
    v12 = v6;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    dispatch_after(v7, v8, block);

    v5 = v10;
  }
}

void sub_1002860B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 136315650;
      v11 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed playback %@: %@", &v10, 0x20u);
    }

    v5 = *(a1 + 40);
    v6 = objc_alloc_init(SACommandFailed);
    [v5 invokeWithValue:v6 andValue:v3];
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]_block_invoke";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Finished playback %@", &v10, 0x16u);
  }

  [*(a1 + 48) relinquishWithContext:0 options:0];
  if (*(a1 + 64) == 1)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Forcing Audio session inactive", &v10, 0xCu);
    }

    [*(a1 + 56) forceAudioSessionInactiveWithOptions:0 completion:0];
  }
}

void sub_10028629C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[SAUIPlayNotificationSound(ADUIService) _adui_handleWithCompletion:]_block_invoke";
    v9 = 2048;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Calling completion %f second after playback started: %@", &v7, 0x20u);
  }

  v3 = *(a1 + 40);
  v4 = objc_alloc_init(SACommandSucceeded);
  [v3 invokeWithValue:v4 andValue:0];
}

void sub_1002867E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v10 = 136315906;
    v11 = "[SAUIPerformNotificationAction(ADUIService) _adui_handleWithCompletion:]_block_invoke";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Handled command %@ with response %@ and error %@.", &v10, 0x2Au);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

void sub_1002868EC(uint64_t a1, int a2)
{
  v2 = SACommandSucceeded_ptr;
  v3 = *(a1 + 32);
  if (!a2)
  {
    v2 = SACommandFailed_ptr;
  }

  v4 = objc_alloc_init(*v2);
  [v3 invokeWithValue:v4 andValue:0];
}

void sub_100286BDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "ADRegisterSyncNowActivity_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s sync now xpc activity handled", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  if (v6)
  {
    v6[2](v6);
  }
}

void sub_100286CD4(const char *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a2)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100286DA8;
    v10[3] = &unk_1005188B8;
    v11 = v8;
    v12 = v7;
    xpc_activity_register(a1, a2, v10);
  }

  else
  {
    xpc_activity_unregister(a1);
  }
}

void sub_100286DA8(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state)
  {
    if (state == 2)
    {
      if (!*(a1 + 32))
      {
        goto LABEL_12;
      }

      if (!xpc_activity_set_state(v3, 4))
      {
        v5 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v14 = "_RegisterXPCActivity_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed setting activity state to continue", buf, 0xCu);
        }
      }

      v6 = *(a1 + 32);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100286FC4;
      v11[3] = &unk_10051DFE8;
      v12 = v3;
      (*(v6 + 16))(v6, v12, v11);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v3);
    }
  }

  if (xpc_activity_should_defer(v3))
  {
    v8 = xpc_activity_set_state(v3, 3);
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v10 = @"No";
      *buf = 136315650;
      v14 = "_RegisterXPCActivity_block_invoke";
      v15 = 2112;
      v16 = v3;
      if (v8)
      {
        v10 = @"Yes";
      }

      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Deferring activity:%@ deferred:%@", buf, 0x20u);
    }
  }

LABEL_12:
}

void sub_100286FC4(uint64_t a1)
{
  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    v1 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v2 = 136315138;
      v3 = "_RegisterXPCActivity_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s Failed setting activity state to done", &v2, 0xCu);
    }
  }
}

void sub_100287080(void *a1)
{
  v1 = a1;
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "_ADRegisterSiriDataSharingHomeDeviceRetryActivity";
    v5 = 2080;
    v6 = "com.apple.siri.xpc_activity.data.sharing.retry";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Registering %s activity", &v3, 0x16u);
  }

  sub_100286CD4("com.apple.siri.xpc_activity.data.sharing.retry", v1, &stru_1005188F8, &stru_100518958);
}

void sub_100287168(id a1, OS_xpc_object *a2, id a3)
{
  v3 = a3;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "_ADRegisterSiriDataSharingHomeDeviceRetryActivity_block_invoke";
    v11 = 2080;
    v12 = "com.apple.siri.xpc_activity.data.sharing.retry";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Running '%s' activity", buf, 0x16u);
  }

  v5 = +[ADHomeDataSharingRepromptManager sharedManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002872AC;
  v7[3] = &unk_10051D2F0;
  v8 = v3;
  v6 = v3;
  [v5 propagateDataSharingStatusToAccessoriesWithCompletion:v7];
}

uint64_t sub_1002872AC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1002872C4(id a1, OS_xpc_object *a2)
{
  v2 = xpc_activity_copy_criteria(a2);
  if (!v2)
  {
    v3 = +[ADHomeDataSharingRepromptManager sharedManager];
    [v3 propagateDataSharingStatusToAccessoriesWithCompletion:&stru_100518918];

    v2 = 0;
  }
}

void sub_100287330(id a1, NSError *a2)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "_ADRegisterSiriDataSharingHomeDeviceRetryActivity_block_invoke_2";
    v5 = 2080;
    v6 = "com.apple.siri.xpc_activity.data.sharing.retry";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Check in complete for %s", &v3, 0x16u);
  }
}

void sub_1002873EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 taskFromActivity:a2];
  [v6 runWithCompletion:v5];
}

void sub_10028745C(uint64_t a1, void *a2)
{
  activity = a2;
  v3 = xpc_activity_copy_criteria(activity);
  if (!v3)
  {
    xpc_activity_set_criteria(activity, *(a1 + 32));
  }
}

void sub_1002874BC(id a1, OS_xpc_object *a2, id a3)
{
  v5 = a3;
  v3 = +[ADSiriAnalyticsServiceHost sharedSiriAnalyticsServiceHost];
  [v3 writeLogViewerIdentifierDefaults];

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

void sub_10028752C(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_POST_INSTALL, 1);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 0);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_100287618(id a1, OS_xpc_object *a2, id a3)
{
  v5 = a3;
  v3 = dispatch_get_global_queue(9, 0);
  dispatch_async(v3, &stru_100518E18);

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

void sub_100287690(id a1)
{
  v1 = +[NSFileManager defaultManager];
  v2 = [v1 URLsForDirectory:13 inDomains:1];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 URLByAppendingPathComponent:@"com.apple.pommes" isDirectory:1];
    v5 = +[NSFileManager defaultManager];
    v8 = 0;
    [v5 removeItemAtURL:v4 error:&v8];
    v6 = v8;

    if (v6)
    {
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v10 = "_clearSiriInformationCache";
        v11 = 2112;
        v12 = v4;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Failure while deleting POMMES cache at %@ with error %@", buf, 0x20u);
      }
    }
  }
}

void sub_1002877F0(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_POST_INSTALL, 1);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_5_MIN);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 0);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_1002878FC(id a1, OS_xpc_object *a2, id a3)
{
  v3 = a3;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "_RegisterMultiUserMetricsActivity_block_invoke_2";
    v11 = 2080;
    v12 = "com.apple.siri.apc_activity.multi-user.metrics";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Running '%s' activity", buf, 0x16u);
  }

  v5 = +[ADMultiUserService sharedService];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100287A40;
  v7[3] = &unk_10051D2F0;
  v8 = v3;
  v6 = v3;
  [v5 triggerMultiUserMetricsWithCompletion:v7];
}

void sub_100287A40(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "_RegisterMultiUserMetricsActivity_block_invoke";
      v8 = 2080;
      v9 = "com.apple.siri.apc_activity.multi-user.metrics";
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s %s activity error: %@", &v6, 0x20u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void sub_100287B3C(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_100287C18(id a1, OS_xpc_object *a2, id a3)
{
  v5 = a3;
  v3 = +[ADDeviceCircleManager sharedInstance];
  [v3 reelectContextCollectorWithBestScore];

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

void sub_100287C88(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_4_HOURS);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_100287D84(id a1, OS_xpc_object *a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.siri.speech-personalized-lm", v6);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100226A1C;
  v11[3] = &unk_10051E038;
  v8 = v4;
  v12 = v8;
  v9 = v5;
  v13 = v9;
  dispatch_async(v7, v11);
  v10 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "ADTrainSpeechPersonalizedLM";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s PLM: Started training", buf, 0xCu);
  }
}

void sub_100287EF8(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 0);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_100288004(id a1, OS_xpc_object *a2, id a3)
{
  v8 = a3;
  v3 = +[AFPreferences sharedPreferences];
  if ([v3 assistantIsEnabled])
  {
  }

  else
  {
    v4 = +[AFPreferences sharedPreferences];
    v5 = [v4 dictationIsEnabled];

    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 runBootTimeServiceMaintenanceWithCompletion:0];

LABEL_5:
  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
    v7 = v8;
  }
}

void sub_1002880C8(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 0);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, 0);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 300);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_10028819C(id a1, OS_xpc_object *a2, id a3)
{
  v4 = a3;
  +[ADExternalNotificationInstrumentationEmitter emitCoreAnalyticsAnnounceNotificationApplicationEnablementEvents];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
    v3 = v4;
  }
}

void sub_1002881F4(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_1002882B8(id a1, OS_xpc_object *a2, id a3)
{
  v4 = a3;
  notify_post([@"AFSiriUserNotificationRequestCapabilityForceUpdate" UTF8String]);
  v3 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
    v3 = v4;
  }
}

void sub_100288314(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_4_HOURS);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_100288410(id a1, OS_xpc_object *a2, id a3)
{
  v6 = a3;
  v4 = a2;
  v5 = +[ADCommandCenter sharedCommandCenter];
  [v5 startCloudKitSyncWeeklyForActivity:v4];

  v6[2]();
}

void sub_100288494(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_7_DAYS);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_1002885A0(id a1, OS_xpc_object *a2, id a3)
{
  v5 = a3;
  v3 = dispatch_get_global_queue(9, 0);
  dispatch_async(v3, &stru_100518BF8);

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

void sub_10028861C(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_1002886E0(id a1, OS_xpc_object *a2, id a3)
{
  v3 = a3;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "_RegisterMetricsActivity_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Running 'com.apple.siri.xpc_activity.metrics-sender' activity", buf, 0xCu);
  }

  v5 = +[ADCommandCenter sharedCommandCenter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10028882C;
  v7[3] = &unk_10051CF58;
  v8 = v3;
  v6 = v3;
  [v5 sendMetricsToServerWithTimeout:1 requiresUnlimitedPower:0 requiresActiveSession:1 purgesOversizedStorage:1 ignoresMetricsSenderDisabledSetting:1 scheduledActivity:v7 completion:600.0];
}

uint64_t sub_10028882C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100288844(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_100288950(id a1, OS_xpc_object *a2, id a3)
{
  v8 = a3;
  v3 = +[AFPreferences sharedPreferences];
  if ([v3 assistantIsEnabled])
  {
  }

  else
  {
    v4 = +[AFPreferences sharedPreferences];
    v5 = [v4 dictationIsEnabled];

    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v6 = +[ADCommandCenter sharedCommandCenter];
  [v6 runServiceMaintenanceWithCompletion:0];

LABEL_5:
  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
    v7 = v8;
  }
}

void sub_100288A14(id a1, OS_xpc_object *a2)
{
  activity = a2;
  v2 = xpc_activity_copy_criteria(activity);
  if (!v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
    xpc_activity_set_criteria(activity, v3);
  }
}

void sub_100288B08(id a1, OS_xpc_object *a2, id a3)
{
  v3 = a3;
  v4 = +[AFPreferences sharedPreferences];
  if ([v4 assistantIsEnabled])
  {
  }

  else
  {
    v5 = +[AFPreferences sharedPreferences];
    v6 = [v5 dictationIsEnabled];

    if (!v6)
    {
      v9 = +[ADDaemon sharedDaemon];
      [v9 keepAlive];

      v8 = +[ADCommandCenter sharedCommandCenter];
      [v8 destroyActiveAccount];
      goto LABEL_8;
    }
  }

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "_RegisterDestroyActivity_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Assistant is now enabled, clearing destroy job", &v10, 0xCu);
  }

  v8 = +[ADDaemon sharedDaemon];
  [v8 unscheduleDestroyJob];
LABEL_8:

  if (v3)
  {
    v3[2](v3);
  }
}

void sub_100288C78(id a1, OS_xpc_object *a2, id a3)
{
  v4 = a3;
  sub_100288CF8(a2, XPC_ACTIVITY_INTERVAL_15_MIN, 2 * XPC_ACTIVITY_INTERVAL_1_HOUR);
  sub_100288E2C(v4);
}

void sub_100288CF8(void *a1, int64_t a2, int64_t a3)
{
  v5 = a1;
  v6 = xpc_activity_copy_criteria(v5);
  int64 = xpc_dictionary_get_int64(v6, XPC_ACTIVITY_INTERVAL);
  if (int64 < a3)
  {
    v8 = int64;
    if (2 * int64 > a2)
    {
      a2 = 2 * int64;
    }

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315650;
      v11 = "_BackoffFromShortInterval";
      v12 = 2048;
      v13 = a2;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Backing off to new interval %lld from %lld", &v10, 0x20u);
    }

    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_INTERVAL, a2);
    xpc_activity_set_criteria(v5, v6);
  }
}

void sub_100288E2C(void *a1)
{
  v1 = a1;
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "_RefreshValidationWithCompletion";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  v3 = +[AFPreferences sharedPreferences];
  if ([v3 assistantIsEnabled])
  {
  }

  else
  {
    v4 = +[AFPreferences sharedPreferences];
    v5 = [v4 dictationIsEnabled];

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v6 = +[ADDaemon sharedDaemon];
  [v6 keepAlive];

  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 refreshAssistantValidation];

LABEL_7:
  if (v1)
  {
    v1[2](v1);
  }
}

void sub_100288F7C(id a1, OS_xpc_object *a2)
{
  v2 = xpc_activity_copy_criteria(a2);
  if (!v2)
  {
    v3 = +[ADCommandCenter sharedCommandCenter];
    [v3 rescheduleValidationRefresh];

    v4 = +[ADDaemon sharedDaemon];
    [v4 scheduleUnlockedWork:&stru_100518A98];

    v2 = 0;
  }
}

void sub_10028900C(id a1, OS_xpc_object *a2, id a3)
{
  v6 = a3;
  sub_100288CF8(a2, XPC_ACTIVITY_INTERVAL_1_DAY, XPC_ACTIVITY_INTERVAL_1_DAY);
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 updateSharedDataFromCompanion];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

void sub_100289098(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = xpc_activity_copy_criteria(v2);
  v4 = v3;
  if (!v3 || xpc_dictionary_get_int64(v3, XPC_ACTIVITY_INTERVAL))
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "_RegisterCompanionFetchActivity_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s setting new companion fetch interval on initial checkin", &v8, 0xCu);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_GRACE_PERIOD, 0);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_activity_set_criteria(v2, v6);

    if (!v4)
    {
      v7 = +[ADDaemon sharedDaemon];
      [v7 scheduleUnlockedWork:&stru_100518A38];
    }
  }
}

void sub_100289244(id a1)
{
  v1 = +[ADCommandCenter sharedCommandCenter];
  [v1 updateSharedDataFromCompanion];
}

void sub_10028928C(id a1, OS_xpc_object *a2, id a3)
{
  v6 = a3;
  sub_100288CF8(a2, XPC_ACTIVITY_INTERVAL_1_DAY, XPC_ACTIVITY_INTERVAL_1_DAY);
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 updateSharedDataFromPeerUseCache:1 completion:0];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

void sub_100289320(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = xpc_activity_copy_criteria(v2);
  v4 = v3;
  if (!v3 || xpc_dictionary_get_int64(v3, XPC_ACTIVITY_INTERVAL))
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "_RegisterPeerFetchActivity_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s setting new peer fetch interval on initial checkin", &v8, 0xCu);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_int64(v6, XPC_ACTIVITY_GRACE_PERIOD, 0);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_activity_set_criteria(v2, v6);

    if (!v4)
    {
      v7 = +[ADDaemon sharedDaemon];
      [v7 scheduleUnlockedWork:&stru_1005189D8];
    }
  }
}

void sub_1002894CC(id a1)
{
  v1 = +[ADCommandCenter sharedCommandCenter];
  [v1 updateSharedDataFromPeerUseCache:1 completion:0];
}

void sub_10028951C(id a1, OS_xpc_object *a2, id a3)
{
  v5 = a3;
  v3 = +[ADDaemon sharedDaemon];
  [v3 syncForReason:@"daily_sync" withCoalescing:0];

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

void sub_100289598(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = xpc_activity_copy_criteria(v2);
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v4, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  if (!v3 || !xpc_equal(v3, v4))
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "_RegisterDailySyncActivity_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s setting new daily criteria due to difference from checkin criteria", &v6, 0xCu);
    }

    xpc_activity_set_criteria(v2, v4);
  }
}

void sub_10028982C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 _serviceManager];
  v2 = [v3 servicesThatRequireBootMaintenance];
  [v1 _runMaintenanceForServices:v2 completion:0];
}

void sub_1002899A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 _serviceManager];
  v2 = [v3 allServices];
  [v1 _runMaintenanceForServices:v2 completion:0];
}

void sub_100289CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 + 40));
  _Unwind_Resume(a1);
}

void sub_100289D10(uint64_t a1, int a2)
{
  if (*(a1 + 64) > a2)
  {
    dispatch_group_enter(*(a1 + 32));
    v4 = [AFSafetyBlock alloc];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10028A0B0;
    v27[3] = &unk_100518E80;
    v29 = *(a1 + 56);
    v30 = a2;
    v28 = *(a1 + 32);
    v5 = [v4 initWithBlock:v27];
    v6 = [*(a1 + 40) objectAtIndex:a2];
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [v6 identifier];
      v10 = *(a1 + 64);
      *buf = 136315906;
      v32 = "[ADCommandCenter(ServiceMaintenance) _runMaintenanceForServices:completion:]_block_invoke";
      v33 = 2112;
      v34 = v9;
      v35 = 1024;
      v36 = a2;
      v37 = 1024;
      v38 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s service %@ at index %d of count %d", buf, 0x22u);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10028A12C;
    v21[3] = &unk_100518EA8;
    v11 = v6;
    v26 = a2;
    v25 = *(a1 + 64);
    v12 = *(a1 + 48);
    v22 = v11;
    v23 = v12;
    v13 = v5;
    v24 = v13;
    [v11 runMaintenanceWorkWithCompletion:v21];
    objc_initWeak(buf, v13);
    v14 = [v11 identifier];
    v15 = dispatch_time(0, 30000000000);
    v16 = [*(a1 + 48) _queue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10028A2A4;
    v18[3] = &unk_10051C650;
    objc_copyWeak(&v20, buf);
    v19 = v14;
    v17 = v14;
    dispatch_after(v15, v16, v18);

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

uint64_t sub_10028A040(uint64_t a1)
{
  v2 = +[AFAnalytics sharedAnalytics];
  [v2 logEventWithType:1205 context:0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10028A0B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
    v3[2](v3, (*(a1 + 48) + 1));
  }

  v4 = *(a1 + 32);

  dispatch_group_leave(v4);
}

void sub_10028A12C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    v6 = *(a1 + 64);
    v7 = *(a1 + 56);
    *buf = 136315906;
    v12 = "[ADCommandCenter(ServiceMaintenance) _runMaintenanceForServices:completion:]_block_invoke";
    v13 = 2112;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s service %@ at index %d of count %d complete", buf, 0x22u);
  }

  v8 = [*(a1 + 40) _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10028A388;
  block[3] = &unk_10051DFE8;
  v10 = *(a1 + 48);
  dispatch_async(v8, block);
}

void sub_10028A2A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v6 = 136315394;
      v7 = "[ADCommandCenter(ServiceMaintenance) _runMaintenanceForServices:completion:]_block_invoke_2";
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Service %@ still has safety block, timing out", &v6, 0x16u);
    }
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 invoke];
}

void sub_10028A5C0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setHostTime:mach_absolute_time()];
  [v3 setType:5];
  [v3 setPayloadEndAudioSessionRequest:*(a1 + 32)];
}

void sub_10028A62C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v5)
    {
      (*(v6 + 16))(v6, 0, v5);
    }

    else if ([v13 type] == 6)
    {
      v7 = [v13 payloadEndAudioSessionResponse];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v9 = *(a1 + 32);
      if (isKindOfClass)
      {
        v10 = [AFError errorWithCode:1015 description:@"Unexpected response in reply message."];
        (*(v9 + 16))(v9, 0, v10);
      }

      else
      {
        (*(v9 + 16))(v9, v7, 0);
      }
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = [AFError errorWithCode:1014 description:@"Unexpected reply message type."];
      (*(v11 + 16))(v11, 0, v12);
    }
  }
}

void sub_10028A9C0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setHostTime:mach_absolute_time()];
  [v3 setType:3];
  [v3 setPayloadKeepAudioSessionAliveRequest:*(a1 + 32)];
}

void sub_10028AA2C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v5)
    {
      (*(v6 + 16))(v6, 0, v5);
    }

    else if ([v13 type] == 4)
    {
      v7 = [v13 payloadKeepAudioSessionAliveResponse];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v9 = *(a1 + 32);
      if (isKindOfClass)
      {
        v10 = [AFError errorWithCode:1015 description:@"Unexpected response in reply message."];
        (*(v9 + 16))(v9, 0, v10);
      }

      else
      {
        (*(v9 + 16))(v9, v7, 0);
      }
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = [AFError errorWithCode:1014 description:@"Unexpected reply message type."];
      (*(v11 + 16))(v11, 0, v12);
    }
  }
}

void sub_10028ADC0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setHostTime:mach_absolute_time()];
  [v3 setType:1];
  [v3 setPayloadBeginAudioSessionRequest:*(a1 + 32)];
}

void sub_10028AE2C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v5)
    {
      (*(v6 + 16))(v6, 0, v5);
    }

    else if ([v13 type] == 2)
    {
      v7 = [v13 payloadBeginAudioSessionResponse];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v9 = *(a1 + 32);
      if (isKindOfClass)
      {
        v10 = [AFError errorWithCode:1015 description:@"Unexpected response in reply message."];
        (*(v9 + 16))(v9, 0, v10);
      }

      else
      {
        (*(v9 + 16))(v9, v7, 0);
      }
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = [AFError errorWithCode:1014 description:@"Unexpected reply message type."];
      (*(v11 + 16))(v11, 0, v12);
    }
  }
}

uint64_t sub_10028B320(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10028B338(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(*(a1[6] + 8) + 40) cancel];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (v5 && (v9 = AFSiriLogContextDaemon, os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG)))
  {
    v12 = a1[4];
    v14 = 136315650;
    v15 = "[ADAudioSessionCoordinator(Messaging) _sendMessage:toDeviceWithID:replyHandler:]_block_invoke";
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v5;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s %@ ---> %@", &v14, 0x20u);
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else if (!v6)
  {
    goto LABEL_6;
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v13 = a1[4];
    v14 = 136315650;
    v15 = "[ADAudioSessionCoordinator(Messaging) _sendMessage:toDeviceWithID:replyHandler:]_block_invoke";
    v16 = 2112;
    v17 = v13;
    v18 = 2112;
    v19 = v6;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %@ ---> %@", &v14, 0x20u);
  }

LABEL_6:
  v11 = a1[5];
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }
}

void sub_10028B4E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [AFError errorWithCode:1007];
  [v1 invokeWithValue:0 andValue:v2];
}

void sub_10028B548(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if (a3)
  {
    [*(a1 + 32) invokeWithValue:0 andValue:a3];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[ADAudioSessionCoordinationMessage alloc] initWithDictionaryRepresentation:v12];
    v6 = *(a1 + 32);
    if (!v5)
    {
      v11 = [AFError errorWithCode:30 description:@"Unable to create reply message from response dictionary."];
      [v6 invokeWithValue:0 andValue:v11];

      goto LABEL_8;
    }

    v7 = v6;
    v8 = v5;
    v9 = 0;
  }

  else
  {
    v10 = *(a1 + 32);
    v5 = [AFError errorWithCode:30 description:@"Unexpected response dictionary."];
    v7 = v10;
    v8 = 0;
    v9 = v5;
  }

  [v7 invokeWithValue:v8 andValue:v9];
LABEL_8:

LABEL_9:
}

void sub_10028C31C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (v7 = AFSiriLogContextDaemon, os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG)))
  {
    v10 = *(a1 + 32);
    v12 = 136315650;
    v13 = "[ADAudioSessionCoordinator(Messaging) _handleMessage:fromDeviceWithID:replyHandler:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s %@ <--- %@", &v12, 0x20u);
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  else if (!v6)
  {
    goto LABEL_6;
  }

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = 136315650;
    v13 = "[ADAudioSessionCoordinator(Messaging) _handleMessage:fromDeviceWithID:replyHandler:]_block_invoke";
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %@ <--- %@", &v12, 0x20u);
  }

LABEL_6:
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

void sub_10028C4A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) invokeWithValue:0 andValue:a3];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = *(a1 + 32);
    if (isKindOfClass)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10028C90C;
      v10[3] = &unk_100518F70;
      v11 = v5;
      v8 = [ADAudioSessionCoordinationMessage newWithBuilder:v10];
      [v7 invokeWithValue:v8 andValue:0];
    }

    else
    {
      v9 = [AFError errorWithCode:1015 description:@"Unexpected response for reply message."];
      [v7 invokeWithValue:0 andValue:v9];
    }
  }
}

void sub_10028C5D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) invokeWithValue:0 andValue:a3];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = *(a1 + 32);
    if (isKindOfClass)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10028C8A0;
      v10[3] = &unk_100518F70;
      v11 = v5;
      v8 = [ADAudioSessionCoordinationMessage newWithBuilder:v10];
      [v7 invokeWithValue:v8 andValue:0];
    }

    else
    {
      v9 = [AFError errorWithCode:1015 description:@"Unexpected response for reply message."];
      [v7 invokeWithValue:0 andValue:v9];
    }
  }
}

void sub_10028C704(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) invokeWithValue:0 andValue:a3];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = *(a1 + 32);
    if (isKindOfClass)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10028C834;
      v10[3] = &unk_100518F70;
      v11 = v5;
      v8 = [ADAudioSessionCoordinationMessage newWithBuilder:v10];
      [v7 invokeWithValue:v8 andValue:0];
    }

    else
    {
      v9 = [AFError errorWithCode:1015 description:@"Unexpected response for reply message."];
      [v7 invokeWithValue:0 andValue:v9];
    }
  }
}

void sub_10028C834(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setHostTime:mach_absolute_time()];
  [v3 setType:6];
  [v3 setPayloadEndAudioSessionResponse:*(a1 + 32)];
}

void sub_10028C8A0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setHostTime:mach_absolute_time()];
  [v3 setType:4];
  [v3 setPayloadKeepAudioSessionAliveResponse:*(a1 + 32)];
}

void sub_10028C90C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setHostTime:mach_absolute_time()];
  [v3 setType:2];
  [v3 setPayloadBeginAudioSessionResponse:*(a1 + 32)];
}

void sub_10028CB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10028CB8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [[ADAudioSessionCoordinationMessage alloc] initWithDictionaryRepresentation:v7];
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10028CD28;
      v13[3] = &unk_100518EF8;
      v14 = v9;
      [WeakRetained _handleMessage:v10 fromDeviceWithID:v8 replyHandler:v13];
    }

    else if (v9)
    {
      v12 = [AFError errorWithCode:30 description:@"Unable to create message from request dictionary."];
      (*(v9 + 2))(v9, 0, v12);
    }

    goto LABEL_8;
  }

  if (v9)
  {
    v10 = [AFError errorWithCode:30 description:@"Unexpected request dictionary."];
    (*(v9 + 2))(v9, 0, v10);
LABEL_8:
  }
}

void sub_10028CD28(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v5)
    {
      (*(v6 + 16))(v6, 0, v5);
    }

    else
    {
      v7 = [v10 buildDictionaryRepresentation];
      v8 = *(a1 + 32);
      if (v7)
      {
        (*(v8 + 16))(v8, v7, 0);
      }

      else
      {
        v9 = [AFError errorWithCode:30 description:@"Unable to create response dictionary from reply message."];
        (*(v8 + 16))(v8, 0, v9);
      }
    }
  }
}

void sub_10028CED8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    *buf = 136315394;
    v33 = "[ADCommandCenter(Metrics) _metrics_recordSNNetworkSnapshotForEvent:completion:]_block_invoke";
    v34 = 1024;
    v35 = [v3 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s SN Connection metrics count %d", buf, 0x12u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = +[AFAnalytics sharedAnalytics];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10028D1F4;
        v26[3] = &unk_10051DFA0;
        v12 = *(a1 + 40);
        v26[4] = v10;
        v26[5] = v12;
        [v11 logEventWithType:902 contextProvider:v26];

        v13 = [v10 connectionSnapshot];
        if (v13)
        {
          v14 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
          [v14 logSessionConnectionSnapshotCaptured:v13];
        }

        v15 = [v10 debugConnectionSnapshot];
        if (v15)
        {
          v16 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
          [v16 logDebugSessionConnectionSnapshotCaptured:v15];
        }

        v17 = [v10 remoteMetrics];
        if (v17)
        {
          v18 = +[AFAnalytics sharedAnalytics];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10028D318;
          v23[3] = &unk_10051DFA0;
          v19 = v17;
          v20 = *(a1 + 40);
          v24 = v19;
          v25 = v20;
          [v18 logEventWithType:903 contextProvider:v23];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    (*(v21 + 16))();
  }
}

id sub_10028D1F4(uint64_t a1)
{
  v2 = sub_10001DBF4(*(a1 + 32));
  v12[0] = v2;
  v10 = @"snapshotEvent";
  v3 = *(a1 + 40);
  if (v3 > 3)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = *(&off_10051B3B0 + v3);
  }

  v5 = v4;
  v11 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v12[1] = v6;
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v8 = AFAnalyticsContextsMerge();

  return v8;
}

id sub_10028D318(uint64_t a1)
{
  v2 = sub_10001DBF4(*(a1 + 32));
  v12[0] = v2;
  v10 = @"snapshotEvent";
  v3 = *(a1 + 40);
  if (v3 > 3)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = *(&off_10051B3B0 + v3);
  }

  v5 = v4;
  v11 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v12[1] = v6;
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v8 = AFAnalyticsContextsMerge();

  return v8;
}

uint64_t sub_10028DA5C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10028DE3C(uint64_t a1, char a2)
{
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10028E9B4;
  v6[3] = &unk_1005192E8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = a2;
  [v5 countQueuedEventRecordsForDeliveryStream:v4 withCompletion:v6];
}

void sub_10028DEF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 96);
      *buf = 136315650;
      v38 = "[ADCommandCenter(Metrics) _metrics_processEventRecordsFromStore:batch:deliveryStream:eventStreamUID:streamSpeechId:untilLimit:uploadRecords:completion:]_block_invoke_3";
      v39 = 2048;
      v40 = v25;
      v41 = 2112;
      v42 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to fetch analytics events in delivery stream %tu due to error %@", buf, 0x20u);
    }

    v8 = *(a1 + 32);
    v9 = 2;
LABEL_5:
    [v8 markFailedWithType:v9];
    v10 = *(a1 + 72);
LABEL_6:
    (*(v10 + 16))(v10, 0);
    goto LABEL_7;
  }

  if ([v5 count])
  {
    v11 = +[NSProcessInfo processInfo];
    [v11 systemUptime];
    v13 = v12;
    v14 = *(a1 + 104);

    v15 = AFSiriLogContextDaemon;
    if (v13 >= v14)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v38 = "[ADCommandCenter(Metrics) _metrics_processEventRecordsFromStore:batch:deliveryStream:eventStreamUID:streamSpeechId:untilLimit:uploadRecords:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Attempted to send analytics event stream when time limit is reached.", buf, 0xCu);
      }

      v8 = *(a1 + 32);
      v9 = 1;
      goto LABEL_5;
    }

    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = [v5 count];
      v18 = *(a1 + 40);
      v19 = *(a1 + 96);
      *buf = 136315906;
      v38 = "[ADCommandCenter(Metrics) _metrics_processEventRecordsFromStore:batch:deliveryStream:eventStreamUID:streamSpeechId:untilLimit:uploadRecords:completion:]_block_invoke";
      v39 = 2048;
      v40 = v17;
      v41 = 2112;
      v42 = v18;
      v43 = 2048;
      v44 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Fetched %tu analytics events from event stream with UID %@ in delivery stream %tu.", buf, 0x2Au);
    }

    v20 = [*(a1 + 48) _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10028E2D0;
    block[3] = &unk_1005193B0;
    v35 = *(a1 + 104);
    v28 = *(a1 + 32);
    v33 = *(a1 + 72);
    v34 = *(a1 + 88);
    v29 = v5;
    v30 = *(a1 + 56);
    v31 = *(a1 + 64);
    v26 = *(a1 + 40);
    v21 = v26.i64[0];
    v32 = vextq_s8(v26, v26, 8uLL);
    v36 = *(a1 + 96);
    dispatch_async(v20, block);
  }

  else
  {
    v22 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 40);
      v24 = *(a1 + 96);
      *buf = 136315650;
      v38 = "[ADCommandCenter(Metrics) _metrics_processEventRecordsFromStore:batch:deliveryStream:eventStreamUID:streamSpeechId:untilLimit:uploadRecords:completion:]_block_invoke";
      v39 = 2112;
      v40 = v23;
      v41 = 2048;
      v42 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s No analytics events was fetched from event stream with UID %@ in delivery stream %tu.", buf, 0x20u);
    }

    v10 = *(a1 + 80);
    if (v10)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

void sub_10028E2D0(uint64_t a1)
{
  v2 = +[NSProcessInfo processInfo];
  [v2 systemUptime];
  v4 = v3;
  v5 = *(a1 + 96);

  if (v4 >= v5)
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[ADCommandCenter(Metrics) _metrics_processEventRecordsFromStore:batch:deliveryStream:eventStreamUID:streamSpeechId:untilLimit:uploadRecords:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Attempted to send analytics event stream when time limit is reached.", buf, 0xCu);
    }

    [*(a1 + 32) markFailedWithType:1];
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v6 = *(a1 + 88);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10028E4D4;
    v16[3] = &unk_100519388;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v20 = *(a1 + 80);
    *&v11 = *(a1 + 56);
    *(&v11 + 1) = *(a1 + 64);
    *&v12 = v9;
    *(&v12 + 1) = v10;
    v17 = v12;
    v18 = v11;
    v13 = *(a1 + 72);
    v14 = *(a1 + 104);
    v19 = v13;
    v21 = v14;
    (*(v6 + 16))(v6, v7, v8, v16);
  }
}

void sub_10028E4D4(uint64_t a1, char a2)
{
  [*(a1 + 32) setProcessedCount:{objc_msgSend(*(a1 + 40), "count")}];
  v4 = *(a1 + 32);
  if (a2)
  {
    [v4 markSucceeded];
    v5 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v21 + 1) + 8 * i) recordId];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10028E73C;
    v16[3] = &unk_100519360;
    v12 = *(a1 + 48);
    v16[4] = *(a1 + 56);
    v19 = *(a1 + 72);
    v17 = *(a1 + 40);
    v13 = *(a1 + 64);
    v14 = *(a1 + 80);
    v18 = v13;
    v20 = v14;
    [v12 deleteEventRecordsWithRecordIDs:v5 completion:v16];
  }

  else
  {
    if (([v4 hasFailureType] & 1) == 0)
    {
      [*(a1 + 32) markFailedWithType:6];
    }

    v15 = *(*(a1 + 72) + 16);

    v15();
  }
}