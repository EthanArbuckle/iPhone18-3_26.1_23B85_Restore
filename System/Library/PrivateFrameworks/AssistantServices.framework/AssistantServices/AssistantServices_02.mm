uint64_t sub_100080C0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100080C24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081018;
  block[3] = &unk_100514EA8;
  v6 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v11 = v3;
  v12 = v4;
  v13 = v6;
  v9 = *(a1 + 56);
  v7 = v9;
  v14 = v9;
  v8 = v3;
  dispatch_async(v5, block);
}

uint64_t sub_100080D04(uint64_t a1)
{
  if (![*(a1 + 32) count])
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315138;
      v19 = "[ADHomeDataSharingRepromptManager _propagateDataSharingStatusToAccessoriesWithPropagationEvent:propagationReason:completion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Successfully propagated Siri Data Sharing setting to all accessories.", &v18, 0xCu);
    }

    goto LABEL_8;
  }

  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  v4 = *(a1 + 64);
  if (v3 >= v4)
  {
    if ([*(v2 + 24) BOOLValue])
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 40);
        v8 = *(v6 + 24);
        v7 = *(v6 + 32);
        v18 = 136315651;
        v19 = "[ADHomeDataSharingRepromptManager _propagateDataSharingStatusToAccessoriesWithPropagationEvent:propagationReason:completion:]_block_invoke";
        v20 = 2113;
        *v21 = v8;
        *&v21[8] = 2113;
        *v22 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Max retries reached and user's choice was %{private}@. Not scheduling retry for accessories %{private}@", &v18, 0x20u);
      }

LABEL_8:
      [*(a1 + 40) _clearPropagationStatusFromLocalStorage];
      goto LABEL_16;
    }

    v2 = *(a1 + 40);
    v3 = *(v2 + 40);
    v4 = *(a1 + 64);
  }

  if (v3 >= v4)
  {
    v10 = 86400;
  }

  else
  {
    v10 = dbl_1003F0380[v3];
  }

  *(v2 + 40) = v3 + 1;
  objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
  [*(a1 + 40) _writePropagationStatusToLocalStorage];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    v13 = *(v12 + 40);
    v15 = *(v12 + 24);
    v14 = *(v12 + 32);
    v18 = 136316163;
    v19 = "[ADHomeDataSharingRepromptManager _propagateDataSharingStatusToAccessoriesWithPropagationEvent:propagationReason:completion:]_block_invoke";
    v20 = 1024;
    *v21 = v13;
    *&v21[4] = 1024;
    *&v21[6] = v10;
    *v22 = 2113;
    *&v22[2] = v15;
    v23 = 2113;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Scheduling retry number %d for %d seconds from now to propagate %{private}@ to accessories %{private}@", &v18, 0x2Cu);
  }

  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v16, XPC_ACTIVITY_DELAY, v10);
  xpc_dictionary_set_int64(v16, XPC_ACTIVITY_GRACE_PERIOD, 0);
  xpc_dictionary_set_BOOL(v16, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(v16, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v16, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v16, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  sub_100287080(v16);

LABEL_16:
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 56) + 8) + 40));
  }

  return result;
}

void sub_100081018(uint64_t a1)
{
  v2 = [*(a1 + 32) uniqueIdentifier];
  v3 = [v2 UUIDString];

  v4 = *(a1 + 40);
  v5 = AFSiriLogContextDaemon;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(a1 + 48) + 24);
      v10 = *(a1 + 32);
      v11 = 136315907;
      v12 = "[ADHomeDataSharingRepromptManager _propagateDataSharingStatusToAccessoriesWithPropagationEvent:propagationReason:completion:]_block_invoke_2";
      v13 = 2113;
      v14 = v9;
      v15 = 2113;
      v16 = v10;
      v17 = 2112;
      v18 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed to set Siri Data Sharing to %{private}@ on accessory %{private}@, with error %@", &v11, 0x2Au);
    }

    [*(a1 + 56) addObject:v3];
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 40));
    v6 = 4;
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(a1 + 48) + 24);
      v8 = *(a1 + 32);
      v11 = 136315651;
      v12 = "[ADHomeDataSharingRepromptManager _propagateDataSharingStatusToAccessoriesWithPropagationEvent:propagationReason:completion:]_block_invoke";
      v13 = 2113;
      v14 = v7;
      v15 = 2113;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Successfully set Siri Data Sharing to %{private}@ on accessory %{private}@", &v11, 0x20u);
    }

    v6 = 3;
  }

  [*(*(a1 + 48) + 48) logSiriDataSharingPropagationAccessoryIdentifier:v3 propagationEvent:v6 propagationReason:@"Reprompt" associatedLogEventIdentifier:*(*(a1 + 48) + 56)];
  dispatch_group_leave(*(a1 + 64));
}

void sub_100081274(uint64_t a1)
{
  [*(a1 + 32) _loadStoredPropagationStatus];
  v2 = [*(*(a1 + 32) + 32) count];
  v3 = AFSiriLogContextDaemon;
  v4 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      *buf = 136315138;
      v11 = "[ADHomeDataSharingRepromptManager propagateDataSharingStatusToAccessoriesWithCompletion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Attempting Siri Data Sharing propagation.", buf, 0xCu);
    }

    v5 = +[ADHomeInfoManager sharedInfoManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100081428;
    v8[3] = &unk_10050F870;
    v6 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v6;
    [v5 getHomeManagerWithCompletion:v8];
  }

  else
  {
    if (v4)
    {
      *buf = 136315138;
      v11 = "[ADHomeDataSharingRepromptManager propagateDataSharingStatusToAccessoriesWithCompletion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s No accessories require Siri Data Sharing to be propagated.", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }
}

void sub_100081428(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000814E0;
  block[3] = &unk_10051E088;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t (**sub_1000814E0(uint64_t a1))(id, void)
{
  if (([*(a1 + 32) isDataSyncInProgress] & 1) != 0 || (objc_msgSend(*(a1 + 32), "homes"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, !v3))
  {
    *(*(a1 + 40) + 17) = 1;
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "[ADHomeDataSharingRepromptManager propagateDataSharingStatusToAccessoriesWithCompletion:]_block_invoke_2";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s HomeKit datasync is not complete.  Waiting for HomeKit data sync to complete before starting propagation.", &v8, 0xCu);
    }

    result = *(a1 + 48);
    if (result)
    {
      return result[2](result, 0);
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v4 _propagateDataSharingStatusToAccessoriesWithPropagationEvent:2 propagationReason:@"Reprompt" completion:v5];
  }

  return result;
}

void sub_100081774(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[NSMutableArray array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v2;
  obj = [v2 homes];
  v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v32)
  {
    v31 = *v42;
    v4 = HMAccessoryCategoryTypeHomePod;
    do
    {
      v5 = 0;
      do
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v5;
        v6 = *(*(&v41 + 1) + 8 * v5);
        v7 = [v6 owner];
        v8 = [v7 uniqueIdentifier];
        v9 = [v8 UUIDString];
        v10 = [v6 currentUser];
        v11 = [v10 uniqueIdentifier];
        v12 = [v11 UUIDString];
        v13 = [v9 isEqualToString:v12];

        if (v13)
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v14 = [v6 accessories];
          v15 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (!v15)
          {
            goto LABEL_18;
          }

          v16 = v15;
          v17 = *v38;
          while (1)
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v38 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v37 + 1) + 8 * i);
              v20 = [v19 category];
              v21 = [v20 categoryType];
              if ([v21 isEqual:v4])
              {
              }

              else
              {
                v22 = [v19 siriEndpointProfile];

                if (!v22)
                {
                  continue;
                }
              }

              v23 = [v19 uniqueIdentifier];
              v24 = [v23 UUIDString];
              [v3 addObject:v24];
            }

            v16 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (!v16)
            {
LABEL_18:

              break;
            }
          }
        }

        v5 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v32);
  }

  v25 = *(a1 + 32);
  v26 = *(v25 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081AD8;
  block[3] = &unk_10051E088;
  block[4] = v25;
  v35 = v3;
  v36 = *(a1 + 40);
  v27 = v3;
  dispatch_async(v26, block);
}

id sub_100081AD8(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  *(*(a1 + 32) + 40) = 0;
  [*(a1 + 32) _writePropagationStatusToLocalStorage];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _propagateDataSharingStatusToAccessoriesWithPropagationEvent:1 propagationReason:@"Reprompt" completion:v3];
}

void sub_100081C1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081CD4;
  block[3] = &unk_10051E088;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_100081CD4(uint64_t a1)
{
  if (([*(a1 + 32) isDataSyncInProgress] & 1) != 0 || (objc_msgSend(*(a1 + 32), "homes"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, !v3))
  {
    *(*(a1 + 40) + 16) = 1;
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v15 = "[ADHomeDataSharingRepromptManager _propagateToAllHomeAccessoriesAfterReprompt:completion:]_block_invoke_2";
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s HomeKit datasync is not complete.  Waiting for HomeKit data sync to complete before starting propagation.", buf, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }
  }

  else
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(*(a1 + 40) + 64);
      *buf = 136315394;
      v15 = "[ADHomeDataSharingRepromptManager _propagateToAllHomeAccessoriesAfterReprompt:completion:]_block_invoke_2";
      v16 = 2048;
      v17 = v11;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Dispatching propagation kickoff in %llu seconds.", buf, 0x16u);
    }

    v5 = dispatch_time(0, 1000000000 * *(*(a1 + 40) + 64));
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(v7 + 8);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100081EE0;
    v12[3] = &unk_10051E038;
    v12[4] = v7;
    v13 = v6;
    dispatch_after(v5, v8, v12);
  }
}

id sub_10008205C(void *a1)
{
  v2 = [*(a1[4] + 48) logSiriDataSharingRepromptOptInStatus:a1[7] source:a1[8] reason:a1[5]];
  v3 = a1[4];
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  v5 = a1[4];
  v7 = a1[6];
  v6 = a1[7];

  return [v5 _propagateToAllHomeAccessoriesAfterReprompt:v6 completion:v7];
}

void sub_1000821F4(id a1)
{
  qword_10058FDF0 = [[ADHomeDataSharingRepromptManager alloc] initWithPropagationDelay:60];

  _objc_release_x1();
}

void sub_1000838DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[ADPeerConnection service:account:incomingUnhandledProtobuf:fromID:context:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Error for request id %@ %{public}@", &v9, 0x20u);
    }
  }

  [*(a1 + 40) _sendResponse:v5 forRequestId:*(a1 + 32)];
}

void sub_100083D50(uint64_t a1)
{
  v2 = [IDSProtobuf alloc];
  v3 = [*(a1 + 32) data];
  v4 = [v2 initWithProtobufData:v3 type:0 isResponse:1];

  v5 = *(a1 + 40);
  v19 = IDSSendMessageOptionPeerResponseIdentifierKey;
  v20 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v7 = [*(a1 + 48) _service];
  v8 = [*(a1 + 48) _destination];
  v13 = 0;
  v14 = 0;
  v9 = [v7 sendProtobuf:v4 toDestinations:v8 priority:300 options:v6 identifier:&v14 error:&v13];
  v10 = v14;
  v11 = v13;

  if ((v9 & 1) == 0)
  {
    v12 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[ADPeerConnection _sendResponse:forRequestId:]_block_invoke";
      v17 = 2114;
      v18 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Error sending response %{public}@", buf, 0x16u);
    }
  }
}

id sub_100083FB8(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  result = objc_storeWeak((*(a1 + 32) + 56), *(a1 + 40));
  *(*(a1 + 32) + 72) = *(a1 + 48);
  return result;
}

void sub_1000841C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 16;
  if (*(a1 + 74))
  {
    v3 = (a1 + 75);
  }

  v4 = *v3;
  if (v4 != 1 || ([v2 _hasConnectedPeer] & 1) != 0)
  {
    v5 = [IDSProtobuf alloc];
    v6 = [*(a1 + 40) data];
    v7 = [v5 initWithProtobufData:v6 type:*(a1 + 72) isResponse:0];

    if (v4)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      [v8 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionForceLocalDeliveryKey];
    }

    else
    {
      if ((*(a1 + 76) & 1) == 0 && *(a1 + 56) <= 0.0 && (*(a1 + 77) & 1) == 0 && !*(a1 + 48))
      {
        v8 = 0;
LABEL_20:
        v10 = [*(a1 + 32) _service];
        v11 = [*(a1 + 32) _destination];
        v29 = 0;
        v30 = 0;
        v12 = [v10 sendProtobuf:v7 toDestinations:v11 priority:300 options:v8 identifier:&v30 error:&v29];
        v13 = v30;
        v14 = v29;

        if (v14)
        {
          v15 = AFSiriLogContextIDS;
          if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v32 = "[ADPeerConnection _sendRequest:responseClass:fireAndForget:timeout:overrideRequireConnectedPeer:to:allowCloud:completion:]_block_invoke";
            v33 = 2114;
            v34 = v14;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Error sending request %{public}@", buf, 0x16u);
          }
        }

        v16 = *(a1 + 48);
        if (v16)
        {
          if (v12)
          {
            if (v13)
            {
              v17 = *(*(a1 + 32) + 40);
              if (!v17)
              {
                v18 = objc_alloc_init(NSMutableDictionary);
                v19 = *(a1 + 32);
                v20 = *(v19 + 40);
                *(v19 + 40) = v18;

                v21 = objc_alloc_init(NSMutableDictionary);
                v22 = *(a1 + 32);
                v23 = *(v22 + 48);
                *(v22 + 48) = v21;

                v17 = *(*(a1 + 32) + 40);
                v16 = *(a1 + 48);
              }

              v24 = objc_retainBlock(v16);
              [v17 setObject:v24 forKey:v13];

              v25 = *(a1 + 64);
              if (v25)
              {
                [*(*(a1 + 32) + 48) setObject:v25 forKey:v13];
              }
            }

            else
            {
              v16[2](*(a1 + 48), 0, 0);
            }
          }

          else
          {
            v27 = [*(a1 + 32) _wrappedSendFailureError:v14];
            (v16)[2](v16, 0, v27);
          }
        }

        return;
      }

      v8 = objc_alloc_init(NSMutableDictionary);
    }

    if (*(a1 + 76) == 1)
    {
      [v8 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionFireAndForgetKey];
    }

    if (*(a1 + 56) > 0.0)
    {
      v9 = [NSNumber numberWithDouble:?];
      [v8 setObject:v9 forKey:IDSSendMessageOptionTimeoutKey];
    }

    if (*(a1 + 77) == 1)
    {
      [v8 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionAllowCloudDeliveryKey];
    }

    if (*(a1 + 48))
    {
      [v8 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionExpectsPeerResponseKey];
    }

    goto LABEL_20;
  }

  v26 = *(a1 + 48);
  if (v26)
  {
    v28 = [[NSError alloc] initWithDomain:@"ADRemoteConnectionErrorDomain" code:4 userInfo:&__NSDictionary0__struct];
    (*(v26 + 16))(v26, 0);
  }
}

void sub_10008552C(void *a1, void *a2)
{
  v3 = a1[12];
  v4 = a2;
  [v4 setSequence:v3];
  [v4 setType:a1[13]];
  [v4 setCommandPushGenerationsRequest:a1[4]];
  [v4 setCommandPushGenerationsResponse:a1[5]];
  [v4 setCommandPullGenerationsRequest:a1[6]];
  [v4 setCommandPullGenerationsResponse:a1[7]];
  [v4 setCommandPullDeltaRequest:a1[8]];
  [v4 setCommandPullDeltaResponse:a1[9]];
  [v4 setCommandPullSnapshotRequest:a1[10]];
  [v4 setCommandPullSnapshotResponse:a1[11]];
}

void sub_1000862E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[ADDailyDeviceStatusActivity fetchICUserIdentityForSharedUser:completion:]_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Error ic_storeAccountForHomeUserIdentifier %{public}@", buf, 0x16u);
    }

LABEL_11:
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

  v8 = [v5 ic_DSID];

  if (!v8)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      *buf = 136315395;
      *&buf[4] = "[ADDailyDeviceStatusActivity fetchICUserIdentityForSharedUser:completion:]_block_invoke_2";
      *&buf[12] = 2113;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s no DSID for home ID : %{private}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  v9 = *(a1 + 40);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v10 = qword_10058FE50;
  v19 = qword_10058FE50;
  if (!qword_10058FE50)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100086574;
    v21 = &unk_10051E1C8;
    v22 = &v16;
    sub_100086574(buf);
    v10 = v17[3];
  }

  v11 = v10;
  _Block_object_dispose(&v16, 8);
  v12 = [v5 ic_DSID];
  v13 = [v10 specificAccountWithDSID:v12];
  (*(v9 + 16))(v9, v13);

LABEL_12:
}

void sub_100086574(uint64_t a1)
{
  sub_10008663C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICUserIdentity");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10058FE50 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getICUserIdentityClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ADDailyDeviceStatusActivity.m" lineNumber:85 description:{@"Unable to find class %s", "ICUserIdentity"}];

    __break(1u);
  }
}

void sub_10008663C()
{
  v3[0] = 0;
  if (!qword_10058FE48)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10008678C;
    v3[4] = &unk_10051E200;
    v3[5] = v3;
    v4 = off_10050FBA0;
    v5 = 0;
    qword_10058FE48 = _sl_dlopen();
  }

  if (!qword_10058FE48)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *iTunesCloudLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ADDailyDeviceStatusActivity.m" lineNumber:83 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10008678C()
{
  result = _sl_dlopen();
  qword_10058FE48 = result;
  return result;
}

void sub_100086958(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  v5 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      *buf = 136315395;
      v11 = "[ADDailyDeviceStatusActivity fetchAppleMusicSubscriptionForSharedUser:completion:]_block_invoke";
      v12 = 2113;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Fetching Apple Music subscription status for ICUserIdentity: %{private}@", buf, 0x16u);
    }

    v6 = [sub_100086B0C() sharedStatusController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100086BEC;
    v8[3] = &unk_10050FAE0;
    v9 = *(a1 + 40);
    [v6 getSubscriptionStatusForUserIdentity:v3 withCompletionHandler:v8];
  }

  else
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      *buf = 136315395;
      v11 = "[ADDailyDeviceStatusActivity fetchAppleMusicSubscriptionForSharedUser:completion:]_block_invoke";
      v12 = 2113;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s No userIdentity for sharedUser: %{private}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

id sub_100086B0C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10058FE40;
  v7 = qword_10058FE40;
  if (!qword_10058FE40)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100086D04;
    v3[3] = &unk_10051E1C8;
    v3[4] = &v4;
    sub_100086D04(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100086BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100086BEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[ADDailyDeviceStatusActivity fetchAppleMusicSubscriptionForSharedUser:completion:]_block_invoke";
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Error fetching AppleMusic subscription status: %{public}@", &v9, 0x16u);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    [v5 statusType];
    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

void sub_100086D04(uint64_t a1)
{
  sub_10008663C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICMusicSubscriptionStatusController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10058FE40 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getICMusicSubscriptionStatusControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ADDailyDeviceStatusActivity.m" lineNumber:84 description:{@"Unable to find class %s", "ICMusicSubscriptionStatusController"}];

    __break(1u);
  }
}

void sub_10008723C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008725C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100087274(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 40)];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = AFGradingOptInStateChangeWithHistoryEntry();
  [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
}

void sub_100087784(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAppleMusicSubscriber:a2];
  [*(a1 + 40) setPersonalization:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000878BC;
  block[3] = &unk_10051DB68;
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  dispatch_async(v3, block);
}

void sub_100087854(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [NSArray arrayWithArray:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

void sub_1000878BC(uint64_t a1)
{
  [*(a1 + 32) addObject:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

id sub_100087E5C(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  v3 = objc_alloc_init(BMSQLDatabase);
  v4 = [NSString stringWithFormat:@"%@ %@", @"SELECT * FROM ", v1];
  v5 = [v3 executeQuery:{@"%@", v4}];
  if ([v5 next])
  {
    do
    {
      v6 = [v5 row];
      [v2 addObject:v6];
    }

    while (([v5 next] & 1) != 0);
  }

  return v2;
}

void sub_1000899C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(SISchemaMultiUserState);
  [v4 setEnrolledUsers:v3];

  [*(a1 + 32) setMultiUserState:v4];
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADDailyDeviceStatusActivity buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:onLockscreen:dictationEnabled:voiceTriggerEnabled:starkHasBeenActiveWithin24Hours:raiseToSpeakEnabled:activeAppleAudioDevices:spokenNotificationsEnabled:announceNotificationsEnabledOnHeadphones:carplayAnnounceEnablementType:isAnnounceNotificationsMutedForCarPlay:shouldSkipTriggerlessReplyConfirmation:spokenNotificationsProxCardSeen:spokenNotificationsControlCenterModuleEnabled:spokenNotificationsAllowSettings:announceCallsEnabled:preciseLocationEnabled:locationAccessPermission:adaptiveSiriVolumeEnabled:adaptiveSiriVolumePermanentOffsetEnabled:adaptiveSiriVolumePermanentOffsetFactor:adaptiveSiriVolumeMostRecentIntent:isRemoteDarwinVoiceTriggerEnabled:autoSendSettings:siriInCallEnablementState:hangUpEnablementState:heartbeatQueuedTime:siriVoiceTriggerSettings:isShowAppsBehindSiriEnabledOnCarPlay:isSiriCapableDigitalCarKeyAvailable:connectedBTCarHeadunits:withCompletion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Multi user state fetched", &v6, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100089ABC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 footprint] >= 2)
        {
          v11 = [v10 name];
          v12 = [SiriTTSSynthesisVoice voiceEnumForName:v11];

          v13 = [NSNumber numberWithInt:v12];
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) setInstalledVoices:v4];
  dispatch_group_leave(*(a1 + 40));
}

void sub_100089C50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[ADDailyDeviceStatusActivity buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:onLockscreen:dictationEnabled:voiceTriggerEnabled:starkHasBeenActiveWithin24Hours:raiseToSpeakEnabled:activeAppleAudioDevices:spokenNotificationsEnabled:announceNotificationsEnabledOnHeadphones:carplayAnnounceEnablementType:isAnnounceNotificationsMutedForCarPlay:shouldSkipTriggerlessReplyConfirmation:spokenNotificationsProxCardSeen:spokenNotificationsControlCenterModuleEnabled:spokenNotificationsAllowSettings:announceCallsEnabled:preciseLocationEnabled:locationAccessPermission:adaptiveSiriVolumeEnabled:adaptiveSiriVolumePermanentOffsetEnabled:adaptiveSiriVolumePermanentOffsetFactor:adaptiveSiriVolumeMostRecentIntent:isRemoteDarwinVoiceTriggerEnabled:autoSendSettings:siriInCallEnablementState:hangUpEnablementState:heartbeatQueuedTime:siriVoiceTriggerSettings:isShowAppsBehindSiriEnabledOnCarPlay:isSiriCapableDigitalCarKeyAvailable:connectedBTCarHeadunits:withCompletion:]_block_invoke";
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Error fetching AppleMusic subscription status for the active account: %{public}@", &v13, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v9 = [v5 statusType];
    v8 = v9 == 1;
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [NSNumber numberWithBool:v9 == 1];
      v13 = 136315394;
      v14 = "[ADDailyDeviceStatusActivity buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:onLockscreen:dictationEnabled:voiceTriggerEnabled:starkHasBeenActiveWithin24Hours:raiseToSpeakEnabled:activeAppleAudioDevices:spokenNotificationsEnabled:announceNotificationsEnabledOnHeadphones:carplayAnnounceEnablementType:isAnnounceNotificationsMutedForCarPlay:shouldSkipTriggerlessReplyConfirmation:spokenNotificationsProxCardSeen:spokenNotificationsControlCenterModuleEnabled:spokenNotificationsAllowSettings:announceCallsEnabled:preciseLocationEnabled:locationAccessPermission:adaptiveSiriVolumeEnabled:adaptiveSiriVolumePermanentOffsetEnabled:adaptiveSiriVolumePermanentOffsetFactor:adaptiveSiriVolumeMostRecentIntent:isRemoteDarwinVoiceTriggerEnabled:autoSendSettings:siriInCallEnablementState:hangUpEnablementState:heartbeatQueuedTime:siriVoiceTriggerSettings:isShowAppsBehindSiriEnabledOnCarPlay:isSiriCapableDigitalCarKeyAvailable:connectedBTCarHeadunits:withCompletion:]_block_invoke";
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Apple Music subscription status for the active account is %@", &v13, 0x16u);
    }
  }

  [*(a1 + 32) setAppleMusicSubscriber:v8];
  [*(a1 + 40) setPersonalization:*(a1 + 32)];
  dispatch_group_leave(*(a1 + 48));
}

void sub_100089E14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADDailyDeviceStatusActivity buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:onLockscreen:dictationEnabled:voiceTriggerEnabled:starkHasBeenActiveWithin24Hours:raiseToSpeakEnabled:activeAppleAudioDevices:spokenNotificationsEnabled:announceNotificationsEnabledOnHeadphones:carplayAnnounceEnablementType:isAnnounceNotificationsMutedForCarPlay:shouldSkipTriggerlessReplyConfirmation:spokenNotificationsProxCardSeen:spokenNotificationsControlCenterModuleEnabled:spokenNotificationsAllowSettings:announceCallsEnabled:preciseLocationEnabled:locationAccessPermission:adaptiveSiriVolumeEnabled:adaptiveSiriVolumePermanentOffsetEnabled:adaptiveSiriVolumePermanentOffsetFactor:adaptiveSiriVolumeMostRecentIntent:isRemoteDarwinVoiceTriggerEnabled:autoSendSettings:siriInCallEnablementState:hangUpEnablementState:heartbeatQueuedTime:siriVoiceTriggerSettings:isShowAppsBehindSiriEnabledOnCarPlay:isSiriCapableDigitalCarKeyAvailable:connectedBTCarHeadunits:withCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s StoreFrontID is %@", &v5, 0x16u);
  }

  [*(a1 + 32) setStorefrontId:v3];
  dispatch_group_leave(*(a1 + 40));
}

id sub_100089F08(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADDailyDeviceStatusActivity buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:onLockscreen:dictationEnabled:voiceTriggerEnabled:starkHasBeenActiveWithin24Hours:raiseToSpeakEnabled:activeAppleAudioDevices:spokenNotificationsEnabled:announceNotificationsEnabledOnHeadphones:carplayAnnounceEnablementType:isAnnounceNotificationsMutedForCarPlay:shouldSkipTriggerlessReplyConfirmation:spokenNotificationsProxCardSeen:spokenNotificationsControlCenterModuleEnabled:spokenNotificationsAllowSettings:announceCallsEnabled:preciseLocationEnabled:locationAccessPermission:adaptiveSiriVolumeEnabled:adaptiveSiriVolumePermanentOffsetEnabled:adaptiveSiriVolumePermanentOffsetFactor:adaptiveSiriVolumeMostRecentIntent:isRemoteDarwinVoiceTriggerEnabled:autoSendSettings:siriInCallEnablementState:hangUpEnablementState:heartbeatQueuedTime:siriVoiceTriggerSettings:isShowAppsBehindSiriEnabledOnCarPlay:isSiriCapableDigitalCarKeyAvailable:connectedBTCarHeadunits:withCompletion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Timed out on async data fetches for heartbeat", &v4, 0xCu);
  }

  AnalyticsSendEvent();
  return [*(a1 + 32) invoke];
}

id sub_100089FD0(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    [v2 cancel];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 136315395;
    v9 = "[ADDailyDeviceStatusActivity buildDailyDeviceStatusHeartbeatMetricsWithSiriEnabled:onLockscreen:dictationEnabled:voiceTriggerEnabled:starkHasBeenActiveWithin24Hours:raiseToSpeakEnabled:activeAppleAudioDevices:spokenNotificationsEnabled:announceNotificationsEnabledOnHeadphones:carplayAnnounceEnablementType:isAnnounceNotificationsMutedForCarPlay:shouldSkipTriggerlessReplyConfirmation:spokenNotificationsProxCardSeen:spokenNotificationsControlCenterModuleEnabled:spokenNotificationsAllowSettings:announceCallsEnabled:preciseLocationEnabled:locationAccessPermission:adaptiveSiriVolumeEnabled:adaptiveSiriVolumePermanentOffsetEnabled:adaptiveSiriVolumePermanentOffsetFactor:adaptiveSiriVolumeMostRecentIntent:isRemoteDarwinVoiceTriggerEnabled:autoSendSettings:siriInCallEnablementState:hangUpEnablementState:heartbeatQueuedTime:siriVoiceTriggerSettings:isShowAppsBehindSiriEnabledOnCarPlay:isSiriCapableDigitalCarKeyAvailable:connectedBTCarHeadunits:withCompletion:]_block_invoke";
    v10 = 2113;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s heartbeat wrapper: %{private}@", &v8, 0x16u);
  }

  return [*(a1 + 40) invoke];
}

Class sub_10008ABD8(uint64_t a1)
{
  if (!qword_10058FE28)
  {
    qword_10058FE28 = _sl_dlopen();
  }

  result = objc_getClass("UNNotificationSettingsCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FE20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10008ACD8(uint64_t a1)
{
  if (!qword_10058FE38)
  {
    qword_10058FE38 = _sl_dlopen();
  }

  result = objc_getClass("CCSControlCenterService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FE30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10008ADF4(id a1, SISchemaDailyDeviceStatus *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADDailyDeviceStatusActivity runWithCompletion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Running completion", &v5, 0xCu);
  }

  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 metrics_publishDailyDeviceStatus:v2 completion:&stru_10050FA48];
}

void sub_10008AED0(id a1)
{
  v1 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[ADDailyDeviceStatusActivity runWithCompletion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s DailyDeviceStatus published", &v2, 0xCu);
  }
}

uint64_t sub_10008AF78()
{
  result = _sl_dlopen();
  qword_10058FE38 = result;
  return result;
}

uint64_t sub_10008AFEC()
{
  result = _sl_dlopen();
  qword_10058FE28 = result;
  return result;
}

Class sub_10008B790(uint64_t a1)
{
  if (!qword_10058FE60)
  {
    qword_10058FE60 = _sl_dlopen();
  }

  result = objc_getClass("UNNotificationSettingsCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FE58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10008B890()
{
  result = _sl_dlopen();
  qword_10058FE60 = result;
  return result;
}

uint64_t sub_10008BB9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008BBB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10008BC68;
    v4[3] = &unk_10050FC20;
    v4[4] = v2;
    sub_10008BDCC(1u, 0x676C6F62644F7574, 0, v4);
    v3 = *(*(a1 + 32) + 24);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

void sub_10008BC68(uint64_t a1, AudioObjectID *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    while (1)
    {
      v7 = *a2++;
      v6 = v7;
      if (sub_10008BFF8(v7))
      {
        break;
      }

      if (!--v3)
      {
        return;
      }
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_10008C0C8;
    v20 = sub_10008C0F4;
    v21 = 0;
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008C0FC;
    v15[3] = &unk_10051D4A0;
    v15[4] = v8;
    v15[5] = &v16;
    v10 = sub_10008C1D4(0x676C6F62644F7574, 0, v9, v15);
    v11 = v17[5];
    v17[5] = v10;

    v12 = [[ADAudioRoute alloc] initWithAudioDeviceID:v6];
    v13 = *(a1 + 32);
    v14 = *(v13 + 24);
    *(v13 + 24) = v12;

    _Block_object_dispose(&v16, 8);
  }
}

void sub_10008BDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008BDCC(AudioObjectID a1, uint64_t a2, AudioObjectPropertyElement a3, void *a4)
{
  *&inAddress.mSelector = a2;
  inAddress.mElement = a3;
  v5 = a4;
  if (v5)
  {
    outDataSize = 0;
    PropertyDataSize = AudioObjectGetPropertyDataSize(a1, &inAddress, 0, 0, &outDataSize);
    if (PropertyDataSize)
    {
      v7 = PropertyDataSize;
      v8 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v17 = "_AudioObjectGetScalarArray";
        v18 = 1042;
        v19 = 4;
        v20 = 2082;
        p_inAddress = &inAddress;
        v22 = 1024;
        v23 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed getting audio property size %{public}.4s %d{public}", buf, 0x22u);
      }
    }

    else if (outDataSize && (v9 = malloc_type_malloc(outDataSize, 0xC2D70981uLL)) != 0)
    {
      v10 = v9;
      PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &outDataSize, v9);
      if (PropertyData)
      {
        v12 = PropertyData;
        v13 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v17 = "_AudioObjectGetScalarArray";
          v18 = 1042;
          v19 = 4;
          v20 = 2082;
          p_inAddress = &inAddress;
          v22 = 1026;
          v23 = v12;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed getting audio property %{public}.4s %{public}d", buf, 0x22u);
        }
      }

      else
      {
        v5[2](v5, v10, outDataSize >> 2);
      }

      free(v10);
    }

    else
    {
      outDataSize = 0;
      v5[2](v5, 0, 0);
    }
  }
}

uint64_t sub_10008BFF8(AudioObjectID a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10008CFD0;
  v3[3] = &unk_10050FC48;
  v3[4] = &v4;
  sub_10008BDCC(a1, 0x6F75747073746D23, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10008C0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10008C0C8(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_10008C0FC(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADAudioSession currentOutputRoute]_block_invoke_3";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Output route changed", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *sub_10008C1D4(uint64_t a1, AudioObjectPropertyElement a2, void *a3, void *a4)
{
  *&inAddress.mSelector = a1;
  inAddress.mElement = a2;
  v5 = a3;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008CF7C;
  v19[3] = &unk_10050FC70;
  v6 = a4;
  v20 = v6;
  v7 = objc_retainBlock(v19);
  v8 = AudioObjectAddPropertyListenerBlock(1u, &inAddress, v5, v7);
  if (v8)
  {
    v9 = v8;
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v23 = "_AudioDeviceRegisterForChangedNotification";
      v24 = 1042;
      v25 = 4;
      v26 = 2082;
      p_inAddress = &inAddress;
      v28 = 1026;
      v29 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed registering for property listener %{public}.4s %{public}d", buf, 0x22u);
    }

    v11 = 0;
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008CF94;
    v14[3] = &unk_100517610;
    v17 = inAddress;
    v18 = 1;
    v15 = v5;
    v16 = v7;
    v11 = objc_retainBlock(v14);
  }

  v12 = objc_retainBlock(v11);

  return v12;
}

void sub_10008CA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeID sub_10008CACC(CFTypeID result, void *cf)
{
  if (cf)
  {
    v3 = result;
    v4 = CFGetTypeID(cf);
    result = CFStringGetTypeID();
    if (v4 == result)
    {
      *(*(*(v3 + 32) + 8) + 40) = [cf copy];

      return _objc_release_x1();
    }
  }

  return result;
}

void sub_10008CB4C(AudioObjectID a1, uint64_t a2, AudioObjectPropertyElement a3, void *a4)
{
  *&inAddress.mSelector = a2;
  inAddress.mElement = a3;
  v5 = a4;
  outData = 0;
  ioDataSize = 8;
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v7 = PropertyData;
    v8 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v13 = "_AudioObjectGetCFTypeRef";
      v14 = 1042;
      v15 = 4;
      v16 = 2082;
      p_inAddress = &inAddress;
      v18 = 1026;
      v19 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed getting audio property %{public}.4s %{public}d", buf, 0x22u);
    }
  }

  else
  {
    v5[2](v5, outData);
    if (outData)
    {
      CFRelease(outData);
    }
  }
}

CFTypeID sub_10008CC94(CFTypeID result, void *cf)
{
  if (cf)
  {
    v3 = result;
    v4 = CFGetTypeID(cf);
    result = CFStringGetTypeID();
    if (v4 == result)
    {
      *(*(*(v3 + 32) + 8) + 40) = [cf copy];

      return _objc_release_x1();
    }
  }

  return result;
}

void sub_10008CD24(AudioObjectID a1, uint64_t a2, AudioObjectPropertyElement a3, void *a4)
{
  *&inAddress.mSelector = a2;
  inAddress.mElement = a3;
  v5 = a4;
  ioDataSize = 4;
  outData = 0;
  PropertyData = AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v7 = PropertyData;
    v8 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v13 = "_AudioObjectGetIntValue";
      v14 = 1042;
      v15 = 4;
      v16 = 2082;
      p_inAddress = &inAddress;
      v18 = 1026;
      v19 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed getting audio property %{public}.4s %{public}d", buf, 0x22u);
    }
  }

  else
  {
    v5[2](v5, outData);
  }
}

uint64_t sub_10008CE5C(AudioObjectID a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10008CF64;
  v3[3] = &unk_10050FC48;
  v3[4] = &v4;
  sub_10008BDCC(a1, 0x696E707473746D23, 0, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10008CF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008CF7C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10008CF94(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v4.mSelector = *(a1 + 48);
  v2 = *(a1 + 60);
  v4.mElement = *(a1 + 56);
  return AudioObjectRemovePropertyListenerBlock(v2, &v4, *(a1 + 32), v1);
}

void sub_10008D0D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10008D190;
    v4[3] = &unk_10050FBF8;
    v5 = 0;
    v4[4] = v2;
    v4[5] = 0x676C6F6264657623;
    sub_10008BDCC(1u, 0x676C6F6264657623, 0, v4);
    v3 = *(*(a1 + 32) + 16);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

void sub_10008D190(uint64_t a1, AudioObjectID *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    while (1)
    {
      v7 = *a2++;
      v6 = v7;
      if (sub_10008CE5C(v7))
      {
        break;
      }

      if (!--v3)
      {
        return;
      }
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_10008C0C8;
    v21 = sub_10008C0F4;
    v22 = 0;
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(v9 + 8);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10008D2E4;
    v16[3] = &unk_10051D4A0;
    v16[4] = v9;
    v16[5] = &v17;
    v11 = sub_10008C1D4(v8, *(a1 + 48), v10, v16);
    v12 = v18[5];
    v18[5] = v11;

    v13 = [[ADAudioRoute alloc] initWithAudioDeviceID:v6];
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    *(v14 + 16) = v13;

    _Block_object_dispose(&v17, 8);
  }
}

void sub_10008D2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008D2E4(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADAudioSession currentInputRoute]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Input route changed", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10008D498(id a1)
{
  qword_10058FE68 = objc_alloc_init(ADAudioSession);

  _objc_release_x1();
}

void sub_10008DB04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 56);
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 136315906;
      v9 = "[ADOnDemandAssetSubscriber requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
      v10 = 2048;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s origin = %ld client = %@ requestInfo = %@", &v8, 0x2Au);
    }

    if (*(a1 + 56) != 1 && *(a1 + 40))
    {
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v8 = 136315138;
        v9 = "[ADOnDemandAssetSubscriber requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Allowing on demand asset subscription", &v8, 0xCu);
      }

      [WeakRetained[2] allowAssistantOnDemandAssetSubscription];
      [WeakRetained _invalidate];
    }
  }
}

void sub_10008DD0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[2] assistantOnDemandAssetSubscriptionAllowed])
    {
      v3 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v5 = 136315138;
        v6 = "[ADOnDemandAssetSubscriber _setupIfNecessary]_block_invoke";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s On demand asset subscription already allowed", &v5, 0xCu);
      }

      [v2 _invalidate];
    }

    else
    {
      v4 = +[ADRequestLifecycleObserver sharedObserver];
      [v4 addListener:v2];
    }
  }
}

id sub_10008DFBC(uint64_t a1)
{
  [*(a1 + 32) _close];
  v2 = *(a1 + 32);

  return [v2 _delete];
}

void sub_10008E090(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    if (v2[11])
    {
LABEL_5:
      v9 = 0;
      goto LABEL_12;
    }

    v4 = [v3 path];
    v5 = open([v4 fileSystemRepresentation], 0);

    if ((v5 & 0x80000000) == 0)
    {
      v6 = [[NSFileHandle alloc] initWithFileDescriptor:v5 closeOnDealloc:1];
      v7 = *(a1 + 32);
      v8 = *(v7 + 88);
      *(v7 + 88) = v6;

      goto LABEL_5;
    }

    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = __error();
      v17 = strerror(*v16);
      v18 = 136315394;
      v19 = "[ADAudioFileWriter flushWithCompletion:]_block_invoke";
      v20 = 2082;
      v21 = v17;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Failed opening fd for flushed audio file %{public}s", &v18, 0x16u);
    }

    v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
  }

  else
  {
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[ADAudioFileWriter flushWithCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s No file url on flush", &v18, 0xCu);
      v2 = *(a1 + 32);
    }

    v11 = v2[12];
    if (v11)
    {
      v22 = NSUnderlyingErrorKey;
      v23 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    }

    else
    {
      v12 = 0;
    }

    v9 = [[NSError alloc] initWithDomain:@"ADAudioFileWriterErrorDomain" code:1 userInfo:v12];
  }

LABEL_12:
  [*(a1 + 32) _close];
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, *(*(a1 + 32) + 88), *(*(a1 + 32) + 24), v9);
  }
}

void sub_10008E3A4(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = [*(a1 + 40) length];
    *&ioData.mNumberBuffers = 1;
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 72);
    ioData.mBuffers[0].mNumberChannels = *(v4 + 76);
    v6 = v2 / v5;
    ioData.mBuffers[0].mDataByteSize = [v3 length];
    ioData.mBuffers[0].mData = [*(a1 + 40) bytes];
    v7 = ExtAudioFileWrite(*(*(a1 + 32) + 40), v6, &ioData);
    if (v7)
    {
      v8 = v7;
      v9 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315394;
        v16 = "[ADAudioFileWriter appendAudioData:]_block_invoke";
        v17 = 1026;
        v18 = v8;
        v10 = "%s Failed writing audio file %{public}d";
        p_ioData = &v15;
        v12 = v9;
        v13 = 18;
LABEL_8:
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v10, p_ioData, v13);
      }
    }
  }

  else
  {
    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      ioData.mNumberBuffers = 136315138;
      *(&ioData.mNumberBuffers + 1) = "[ADAudioFileWriter appendAudioData:]_block_invoke";
      v10 = "%s No audio file to append data";
      p_ioData = &ioData;
      v12 = v14;
      v13 = 12;
      goto LABEL_8;
    }
  }
}

void *sub_10008E674(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    v30 = +[NSAssertionHandler currentHandler];
    [v30 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ADAudioFileWriter.m" lineNumber:210 description:@"AudioFile Already configured"];

    v2 = *(a1 + 32);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  *(v2 + 80) = *(a1 + 80);
  *(v2 + 48) = v3;
  *(v2 + 64) = v4;
  v5 = *(*(a1 + 32) + 32);
  if (v5)
  {
    [NSURL fileURLWithPath:v5 isDirectory:0];
  }

  else
  {
    [objc_opt_class() _generateTemporaryFileURL];
  }
  v6 = ;
  objc_storeStrong((*(a1 + 32) + 24), v6);

  v7 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v8 = *(*(a1 + 32) + 24);
    *buf = 136315394;
    v35 = "[ADAudioFileWriter configureWithAudioStreamBasicDescription:]_block_invoke";
    v36 = 2112;
    *v37 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Creating audio file at URL %@", buf, 0x16u);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  memset(&v31.mFormatID, 0, 32);
  v11 = *(v9 + 76);
  v31.mChannelsPerFrame = v11;
  if (!v11)
  {
    v12 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "_AudioStreamBasicDescriptionForAFAudioFileType";
      v36 = 2048;
      *v37 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s inASBD->mChannelsPerFrame = %lu", buf, 0x16u);
    }

    v11 = 1;
    v31.mChannelsPerFrame = 1;
  }

  v31.mSampleRate = *(v9 + 48);
  switch(v10)
  {
    case 3:
      v31.mSampleRate = 24000.0;
      v31.mFormatID = 1869641075;
      v31.mFramesPerPacket = 480;
      v31.mChannelsPerFrame = 1;
      break;
    case 2:
      *&v31.mFormatID = 0xC6C70636DLL;
      v31.mBitsPerChannel = 16;
      v31.mFramesPerPacket = 1;
      v31.mBytesPerFrame = 2 * v11;
      v31.mBytesPerPacket = 2 * v11;
      break;
    case 1:
      v31.mSampleRate = 0.0;
      v31.mFormatID = 1935764850;
      break;
    default:
      goto LABEL_21;
  }

  ioPropertyDataSize = 40;
  Property = AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &v31);
  if (Property)
  {
    v13 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v35 = "_AudioStreamBasicDescriptionForAFAudioFileType";
      v36 = 1042;
      *v37 = 4;
      *&v37[4] = 2082;
      *&v37[6] = &v31.mFormatID;
      v38 = 1042;
      v39 = 4;
      v40 = 2082;
      p_Property = &Property;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Error getting format info for type %{public}.4s %{public}.4s", buf, 0x2Cu);
    }
  }

LABEL_21:
  v14 = *(a1 + 32);
  v15 = *(v14 + 16);
  if ((v15 - 1) > 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = dword_1003F03B0[v15 - 1];
  }

  if (v15 == 3)
  {
    v17 = 3;
  }

  else
  {
    v17 = 1;
  }

  v18 = ExtAudioFileCreateWithURL(*(v14 + 24), v16, &v31, 0, v17, (v14 + 40));
  if (v18)
  {
    v19 = v18;
    v20 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v29 = *(*(a1 + 32) + 24);
      *buf = 136315650;
      v35 = "[ADAudioFileWriter configureWithAudioStreamBasicDescription:]_block_invoke";
      v36 = 2114;
      *v37 = v29;
      *&v37[8] = 1026;
      *&v37[10] = v19;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Failed creating audio file at url %{public}@ %{public}d", buf, 0x1Cu);
    }

    v21 = *(a1 + 32);
    if (!*(v21 + 96) && *(v21 + 88))
    {
      v22 = [NSError alloc];
      v23 = [v22 initWithDomain:@"ADAudioFileWriterExtAudioFileErrorDomain" code:v19 userInfo:{0, *&v31.mSampleRate, *&v31.mFormatID, *&v31.mBytesPerFrame}];
      v24 = *(a1 + 32);
      v25 = *(v24 + 96);
      *(v24 + 96) = v23;
    }
  }

  else
  {
    result = ExtAudioFileSetProperty(*(*(a1 + 32) + 40), 0x63666D74u, 0x28u, (*(a1 + 32) + 48));
    if (!result)
    {
      return result;
    }

    v27 = result;
    v28 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[ADAudioFileWriter configureWithAudioStreamBasicDescription:]_block_invoke";
      v36 = 1026;
      *v37 = v27;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Error setting input format %{public}d", buf, 0x12u);
    }
  }

  result = *(a1 + 32);
  if (result[5])
  {
    [result _close];
    return [*(a1 + 32) _delete];
  }

  return result;
}

void sub_10008EF58(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 56);
  v3 = *(a1 + 40);
  if (v3)
  {
    if (fcntl([v3 fileDescriptor], 50, v19) == -1)
    {
      v9 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v18 = "[ADAudioFileWriter _initWithType:pathGenerator:xorFileHandle:priority:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Error getting file path from provided file handle; will create our own path and handle", buf, 0xCu);
      }
    }

    else
    {
      v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v19, +[NSString defaultCStringEncoding]);
      v5 = *(a1 + 32);
      v6 = *(v5 + 32);
      *(v5 + 32) = v4;

      objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v1 = (*(v7 + 16))(*(a1 + 48));
      v8 = [v1 copy];
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong((*(a1 + 32) + 32), v8);
    if (v7)
    {
    }
  }

  if ((AFIsInternalInstall() & 1) == 0)
  {
    v11 = +[AFPreferences sharedPreferences];
    if ([v11 shouldLogForQA])
    {
      v12 = *(*(a1 + 32) + 32);

      if (v12)
      {
        v10 = *(*(a1 + 32) + 32);
        goto LABEL_17;
      }
    }

    else
    {
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v10 = *(*(a1 + 32) + 32);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_17:
  v15 = @"path";
  v16 = v10;
  v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
LABEL_20:
  v14 = +[AFAnalytics sharedAnalytics];
  [v14 logEventWithType:238 context:v13];
}

void sub_10008F660(id a1)
{
  v3 = +[ADSiriCapabilitiesStore sharedStore];
  v1 = [[ADSiriCapabilitiesService alloc] initWithSiriConfiguration:v3];
  v2 = qword_10058FE80;
  qword_10058FE80 = v1;
}

void sub_10008F8A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = a2;
  [v4 setIsEnabled:v3];
  [v4 setPrimaryEarbudSide:*(a1 + 32)];
  [v4 setPrimaryInEarStatus:*(a1 + 40)];
  [v4 setSecondaryInEarStatus:*(a1 + 48)];
}

void sub_10008F914(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = a2;
  [v4 setIsEnabled:v3];
  [v4 setPrimaryEarbudSide:*(a1 + 32)];
  [v4 setPrimaryInEarStatus:*(a1 + 40)];
  [v4 setSecondaryInEarStatus:*(a1 + 48)];
}

uint64_t sub_1000912DC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (2)
    {
      if (([a2 hasError] & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v111 = 0;
          v8 = [a2 position] + 1;
          if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
          {
            v10 = [a2 data];
            [v10 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v7 |= (v111 & 0x7F) << v5;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v12 = 0;
            goto LABEL_15;
          }
        }

        v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
        if (([a2 hasError] & 1) == 0 && (v12 & 7) != 4)
        {
          switch((v12 >> 3))
          {
            case 0xAu:
              v13 = 0;
              v14 = 0;
              v15 = 0;
              *(a1 + 112) |= 0x400u;
              while (1)
              {
                v111 = 0;
                v16 = [a2 position] + 1;
                if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
                {
                  v18 = [a2 data];
                  [v18 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v111 & 0x7F) << v13;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v13 += 7;
                v11 = v14++ >= 9;
                if (v11)
                {
                  v19 = 0;
LABEL_168:
                  v109 = 92;
                  goto LABEL_218;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v15;
              }

              goto LABEL_168;
            case 0xBu:
              v66 = 0;
              v67 = 0;
              v68 = 0;
              *(a1 + 112) |= 0x800u;
              while (1)
              {
                v111 = 0;
                v69 = [a2 position] + 1;
                if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
                {
                  v71 = [a2 data];
                  [v71 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v68 |= (v111 & 0x7F) << v66;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v66 += 7;
                v11 = v67++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_192;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v68;
              }

LABEL_192:
              v109 = 96;
              goto LABEL_218;
            case 0xCu:
              v54 = 0;
              v55 = 0;
              v56 = 0;
              *(a1 + 112) |= 0x1000u;
              while (1)
              {
                v111 = 0;
                v57 = [a2 position] + 1;
                if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
                {
                  v59 = [a2 data];
                  [v59 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v56 |= (v111 & 0x7F) << v54;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                v11 = v55++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_184;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v56;
              }

LABEL_184:
              v109 = 100;
              goto LABEL_218;
            case 0xDu:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 112) |= 0x200u;
              while (1)
              {
                v111 = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v44 |= (v111 & 0x7F) << v42;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                v11 = v43++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_176;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v44;
              }

LABEL_176:
              v109 = 88;
              goto LABEL_218;
            case 0xEu:
            case 0xFu:
            case 0x10u:
            case 0x11u:
            case 0x12u:
            case 0x13u:
            case 0x18u:
            case 0x19u:
            case 0x1Au:
            case 0x1Bu:
            case 0x1Cu:
            case 0x1Du:
            case 0x22u:
            case 0x23u:
            case 0x24u:
            case 0x25u:
            case 0x26u:
            case 0x27u:
              goto LABEL_29;
            case 0x14u:
              v60 = 0;
              v61 = 0;
              v62 = 0;
              *(a1 + 112) |= 0x40u;
              while (1)
              {
                v111 = 0;
                v63 = [a2 position] + 1;
                if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
                {
                  v65 = [a2 data];
                  [v65 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v62 |= (v111 & 0x7F) << v60;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v60 += 7;
                v11 = v61++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_188;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v62;
              }

LABEL_188:
              v108 = 56;
              goto LABEL_213;
            case 0x15u:
              v84 = 0;
              v85 = 0;
              v86 = 0;
              *(a1 + 112) |= 0x20u;
              while (1)
              {
                v111 = 0;
                v87 = [a2 position] + 1;
                if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
                {
                  v89 = [a2 data];
                  [v89 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v86 |= (v111 & 0x7F) << v84;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v84 += 7;
                v11 = v85++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_204;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v86;
              }

LABEL_204:
              v108 = 48;
              goto LABEL_213;
            case 0x16u:
              v36 = 0;
              v37 = 0;
              v38 = 0;
              *(a1 + 112) |= 0x80u;
              while (1)
              {
                v111 = 0;
                v39 = [a2 position] + 1;
                if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
                {
                  v41 = [a2 data];
                  [v41 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v38 |= (v111 & 0x7F) << v36;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v11 = v37++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_172;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v38;
              }

LABEL_172:
              v108 = 64;
              goto LABEL_213;
            case 0x17u:
              v48 = 0;
              v49 = 0;
              v50 = 0;
              *(a1 + 112) |= 0x100u;
              while (1)
              {
                v111 = 0;
                v51 = [a2 position] + 1;
                if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
                {
                  v53 = [a2 data];
                  [v53 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v50 |= (v111 & 0x7F) << v48;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v48 += 7;
                v11 = v49++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_180;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v50;
              }

LABEL_180:
              v108 = 72;
              goto LABEL_213;
            case 0x1Eu:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 112) |= 8u;
              while (1)
              {
                v111 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v111 & 0x7F) << v23;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_160;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v25;
              }

LABEL_160:
              v108 = 32;
              goto LABEL_213;
            case 0x1Fu:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 112) |= 1u;
              while (1)
              {
                v111 = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v111 & 0x7F) << v30;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_164;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v32;
              }

LABEL_164:
              v108 = 8;
              goto LABEL_213;
            case 0x20u:
              v72 = 0;
              v73 = 0;
              v74 = 0;
              *(a1 + 112) |= 2u;
              while (1)
              {
                v111 = 0;
                v75 = [a2 position] + 1;
                if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
                {
                  v77 = [a2 data];
                  [v77 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v74 |= (v111 & 0x7F) << v72;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v72 += 7;
                v11 = v73++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_196;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v74;
              }

LABEL_196:
              v108 = 16;
              goto LABEL_213;
            case 0x21u:
              v90 = 0;
              v91 = 0;
              v92 = 0;
              *(a1 + 112) |= 4u;
              while (1)
              {
                v111 = 0;
                v93 = [a2 position] + 1;
                if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
                {
                  v95 = [a2 data];
                  [v95 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v92 |= (v111 & 0x7F) << v90;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v90 += 7;
                v11 = v91++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_208;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v92;
              }

LABEL_208:
              v108 = 24;
              goto LABEL_213;
            case 0x28u:
              v96 = 0;
              v97 = 0;
              v98 = 0;
              *(a1 + 112) |= 0x10u;
              while (1)
              {
                v111 = 0;
                v99 = [a2 position] + 1;
                if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
                {
                  v101 = [a2 data];
                  [v101 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v98 |= (v111 & 0x7F) << v96;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v96 += 7;
                v11 = v97++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_212;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v98;
              }

LABEL_212:
              v108 = 40;
LABEL_213:
              *(a1 + v108) = v29;
              goto LABEL_219;
            case 0x29u:
              v102 = 0;
              v103 = 0;
              v104 = 0;
              *(a1 + 112) |= 0x2000u;
              while (1)
              {
                v111 = 0;
                v105 = [a2 position] + 1;
                if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
                {
                  v107 = [a2 data];
                  [v107 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v104 |= (v111 & 0x7F) << v102;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v102 += 7;
                v11 = v103++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_217;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v104;
              }

LABEL_217:
              v109 = 104;
              goto LABEL_218;
            case 0x2Au:
              v78 = 0;
              v79 = 0;
              v80 = 0;
              *(a1 + 112) |= 0x4000u;
              while (1)
              {
                v111 = 0;
                v81 = [a2 position] + 1;
                if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
                {
                  v83 = [a2 data];
                  [v83 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v80 |= (v111 & 0x7F) << v78;
                if ((v111 & 0x80) == 0)
                {
                  break;
                }

                v78 += 7;
                v11 = v79++ >= 9;
                if (v11)
                {
                  v19 = 0;
                  goto LABEL_200;
                }
              }

              if ([a2 hasError])
              {
                v19 = 0;
              }

              else
              {
                v19 = v80;
              }

LABEL_200:
              v109 = 108;
LABEL_218:
              *(a1 + v109) = v19;
              goto LABEL_219;
            default:
              if ((v12 >> 3) == 1)
              {
                v20 = PBReaderReadString();
                v21 = *(a1 + 80);
                *(a1 + 80) = v20;
              }

              else
              {
LABEL_29:
                result = PBReaderSkipValueWithTag();
                if (!result)
                {
                  return result;
                }
              }

LABEL_219:
              v110 = [a2 position];
              if (v110 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              continue;
          }
        }
      }

      break;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_100093B14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(_ADPBProxyGetMetricsResponse);
  [(_ADPBProxyGetMetricsResponse *)v4 _ad_setMetrics:v3];

  v5 = [IDSProtobuf alloc];
  v6 = [(_ADPBProxyGetMetricsResponse *)v4 data];
  v7 = [v5 initWithProtobufData:v6 type:0 isResponse:1];

  v8 = [*(a1 + 32) outgoingResponseIdentifier];
  v9 = v8;
  if (v8)
  {
    v22 = IDSSendMessageOptionPeerResponseIdentifierKey;
    v23 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 40) _service];
  v12 = [*(a1 + 40) _destination];
  v16 = 0;
  v17 = 0;
  [v11 sendProtobuf:v7 toDestinations:v12 priority:300 options:v10 identifier:&v17 error:&v16];
  v13 = v17;
  v14 = v16;

  if (v14)
  {
    v15 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[ADSharedPeerStreamConnection _handleGetMetricsMessage:context:]_block_invoke";
      v20 = 2114;
      v21 = v14;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Error sending metrics response %{public}@", buf, 0x16u);
    }
  }
}

void sub_1000943B8(uint64_t a1)
{
  v2 = [*(a1 + 32) _failureMetricsContextDictionary];
  v3 = [v2 mutableCopy];

  (*(*(a1 + 40) + 16))();
}

void sub_100094A28(uint64_t a1)
{
  v2 = [*(a1 + 32) _pairedDevice];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isNearby];
}

void sub_100094E70(uint64_t a1)
{
  v2 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[ADSharedPeerStreamConnection getRemoteMetrics:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v3 = objc_alloc_init(_ADPBProxyGetMetricsRequest);
  v4 = [IDSProtobuf alloc];
  v5 = [(_ADPBProxyGetMetricsRequest *)v3 data];
  v6 = [v4 initWithProtobufData:v5 type:objc_msgSend(objc_opt_class() isResponse:{"_ADPBProxyRequestType"), 0}];

  v7 = [*(a1 + 32) _service];
  v8 = [*(a1 + 32) _destination];
  v31[0] = IDSSendMessageOptionTimeoutKey;
  v31[1] = IDSSendMessageOptionExpectsPeerResponseKey;
  v32[0] = &off_1005343B0;
  v32[1] = &__kCFBooleanTrue;
  v31[2] = IDSSendMessageOptionForceLocalDeliveryKey;
  v32[2] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
  v25 = 0;
  v26 = 0;
  [v7 sendProtobuf:v6 toDestinations:v8 priority:300 options:v9 identifier:&v26 error:&v25];
  v10 = v26;
  v11 = v25;

  if (v11 || !v10)
  {
    v21 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[ADSharedPeerStreamConnection getRemoteMetrics:]_block_invoke";
      v29 = 2114;
      v30 = v11;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Wake up message failed %{public}@", buf, 0x16u);
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      (*(v22 + 16))(v22, 0);
    }
  }

  else
  {
    v12 = *(*(a1 + 32) + 56);
    if (!v12)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = *(a1 + 32);
      v15 = *(v14 + 56);
      *(v14 + 56) = v13;

      v12 = *(*(a1 + 32) + 56);
    }

    v16 = objc_retainBlock(*(a1 + 40));
    [v12 setObject:v16 forKey:v10];

    v17 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[ADSharedPeerStreamConnection getRemoteMetrics:]_block_invoke";
      v29 = 2112;
      v30 = v10;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Sending getRemoteMetrics request for id %@", buf, 0x16u);
    }

    v18 = dispatch_time(0, 8000000000);
    v19 = *(a1 + 32);
    v20 = *(v19 + 32);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10009522C;
    v23[3] = &unk_10051E010;
    v23[4] = v19;
    v24 = v10;
    dispatch_after(v18, v20, v23);
  }
}

id sub_10009522C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];

  if (v2)
  {
    v3 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADSharedPeerStreamConnection getRemoteMetrics:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Metrics response timed out", &v5, 0xCu);
    }
  }

  return [*(a1 + 32) _invokeMetricsCompletionWithMetrics:0 forIdentifier:*(a1 + 40)];
}

void sub_10009547C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v3 = *(a1 + 40);
  v4 = AFSiriLogContextIDS;
  v5 = os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO);
  if (v3 == WeakRetained)
  {
    if (v5)
    {
      v11 = 136315138;
      v12 = "[ADSharedPeerStreamConnection closeForConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v11, 0xCu);
    }

    objc_storeWeak((*(a1 + 32) + 48), 0);
    [*(a1 + 32) _setPreferBTClassic:0];
    v9 = *(a1 + 32);
    if (*(v9 + 73) == 1)
    {
      *(v9 + 73) = 0;
      [*(a1 + 32) _getSocketFromDevice];
    }

    else
    {
      v10 = AFSiriLogContextIDS;
      if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
      {
        v11 = 136315138;
        v12 = "[ADSharedPeerStreamConnection closeForConnection:]_block_invoke";
        v6 = "%s Ignoring close request since current streams have not been vended";
        v7 = v10;
        v8 = 12;
        goto LABEL_10;
      }
    }
  }

  else if (v5)
  {
    v11 = 136315650;
    v12 = "[ADSharedPeerStreamConnection closeForConnection:]_block_invoke";
    v13 = 2048;
    v14 = v3;
    v15 = 2048;
    v16 = WeakRetained;
    v6 = "%s Ignoring close request because connection %p did not open current stream %p";
    v7 = v4;
    v8 = 32;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, &v11, v8);
  }
}

void sub_100095B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100095B44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100095B5C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = AFSiriLogContextIDS;
  if (v5)
  {
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      *buf = 136315650;
      v26 = "[ADSharedPeerStreamConnection _getSocketFromDeviceForStreamIdentifier:]_block_invoke";
      v27 = 2112;
      v28 = v23;
      v29 = 2114;
      v30 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s got device connection completion for identifier %@ with error=%{public}@", buf, 0x20u);
    }

    *(*(a1 + 40) + 192) = [v5 code];
  }

  else if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    *buf = 136315394;
    v26 = "[ADSharedPeerStreamConnection _getSocketFromDeviceForStreamIdentifier:]_block_invoke";
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s got device connection completion for %@", buf, 0x16u);
  }

  v8 = *(a1 + 40);
  v9 = *(*(*(a1 + 48) + 8) + 40);
  v10 = *(v8 + 80);
  if (v9 == v10)
  {
    *(v8 + 72) = 0;
    objc_storeStrong((*(a1 + 40) + 64), *(a1 + 32));
    if (v5)
    {
      v14 = *(a1 + 40);
      v15 = *(v14 + 80);
      *(v14 + 80) = 0;

LABEL_21:
      [*(*(*(a1 + 48) + 8) + 40) close];
      v16 = *(*(a1 + 48) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = 0;

      *(*(a1 + 40) + 184) = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v11 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v26 = "[ADSharedPeerStreamConnection _getSocketFromDeviceForStreamIdentifier:]_block_invoke";
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s device connection was closed while we were getting socket (expected %@; found %@); returning an error", buf, 0x20u);
      v8 = *(a1 + 40);
    }

    if (!(v5 | *(v8 + 96)) && !*(v8 + 80))
    {
      v12 = AFSiriLogContextIDS;
      if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v26 = "[ADSharedPeerStreamConnection _getSocketFromDeviceForStreamIdentifier:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Optimistically trying eager fetch again on socket success after wake up timeout", buf, 0xCu);
        v8 = *(a1 + 40);
      }

      [v8 _initiateOptimisticEagerStreamFetchRetry];
    }

    v13 = [objc_opt_class() _deviceConnectionClosedErrorWithUnderlyingError:v5];

    v5 = v13;
    if (v13)
    {
      goto LABEL_21;
    }
  }

  if (*(*(a1 + 40) + 72) == 1)
  {
    v5 = 0;
    goto LABEL_21;
  }

  if (a2 != -1)
  {
    *buf = 800;
    setsockopt(a2, 0xFFFF, 4230, buf, 4u);
    v24 = 1;
    setsockopt(a2, 6, 1, &v24, 4u);
    *(*(a1 + 40) + 88) = dup(a2);
    v20 = +[NSProcessInfo processInfo];
    [v20 systemUptime];
    *(*(a1 + 40) + 184) = v21 - *(a1 + 56);

    v22 = +[ADPreferences sharedPreferences];
    [v22 setLastKnownProxyStreamId:*(a1 + 32)];
    [v22 synchronize];
  }

  v5 = 0;
LABEL_22:
  v18 = *(a1 + 40);
  if (v18[72] == 1)
  {
    v19 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[ADSharedPeerStreamConnection _getSocketFromDeviceForStreamIdentifier:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Not completing socket fetch since we have a new one outstanding", buf, 0xCu);
    }
  }

  else
  {
    [v18 _invokeSocketCompletionWithCurrentSocketOrError:v5];
  }
}

void sub_10009604C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[ADSharedPeerStreamConnection _streamPairInterruptedError];
  [v2 _invokeSocketCompletionWithCurrentSocketOrError:v3];

  objc_storeWeak((*(a1 + 32) + 48), *(a1 + 40));
  v4 = objc_retainBlock(*(a1 + 48));
  v5 = *(a1 + 32);
  v6 = *(v5 + 96);
  *(v5 + 96) = v4;

  v7 = *(a1 + 32);
  if (*(v7 + 88) == -1)
  {
    v9 = *(v7 + 72);
    v10 = AFSiriLogContextIDS;
    v11 = os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO);
    if (v9 == 1)
    {
      if (v11)
      {
        v12 = 136315138;
        v13 = "[ADSharedPeerStreamConnection getSocketForConnection:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Already getting device socket, waiting for completion", &v12, 0xCu);
      }
    }

    else
    {
      if (v11)
      {
        v12 = 136315138;
        v13 = "[ADSharedPeerStreamConnection getSocketForConnection:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Asking for socket now", &v12, 0xCu);
        v7 = *(a1 + 32);
      }

      [v7 _getSocketFromDevice];
    }
  }

  else
  {
    v8 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[ADSharedPeerStreamConnection getSocketForConnection:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Already have valid socket, returning immediately", &v12, 0xCu);
      v7 = *(a1 + 32);
    }

    [v7 _invokeSocketCompletionWithCurrentSocketOrError:0];
  }
}

void sub_100096338(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[10])
  {
    v2 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "[ADSharedPeerStreamConnection _initiateOptimisticEagerStreamFetchRetry]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Canceling optimistic socket fetch since we already have a _deviceConnection", &v3, 0xCu);
    }
  }

  else
  {

    [v1 _getSocketFromDevice];
  }
}

id sub_100096560(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void sub_100096ACC(uint64_t a1)
{
  v2 = [qword_10058FE98 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [[ADSharedPeerStreamConnection alloc] _initWithServiceIdentifier:*(a1 + 32) listener:*(a1 + 48)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = qword_10058FE98;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

void sub_100096B7C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("ADPeerStreamConnectionFactory", v1);

  v3 = qword_10058FE90;
  qword_10058FE90 = v2;

  qword_10058FE98 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_100096FE0(uint64_t a1, void *a2, int a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (*(a1 + 40))
  {
    objc_storeStrong((*(a1 + 32) + 24), a2);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = AFSiriLogContextIDS;
    if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[ADPeerStreamConnection getSocket:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s No completion, closing down.", &v11, 0xCu);
    }

    [v8 close];
    if (a3 != -1)
    {
      close(a3);
    }

    [*(*(a1 + 32) + 8) closeForConnection:?];
  }
}

id sub_100097574()
{
  if (AFIsNano())
  {
    v0 = [ADSharedPeerStreamConnection sharedPeerStreamConnectionWithServiceIdentifier:@"com.apple.private.alloy.siri.proxy" listener:0];
    v1 = [v0 _pairedDevice];

    v2 = [v1 destination];
    v3 = [v2 destinationURIs];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100097664(id a1)
{
  qword_10058FEB0 = [[AFSiriActivationConnection alloc] initWithServicePort:AFSiriActivationServiceGetPort()];

  _objc_release_x1();
}

uint64_t sub_1000976BC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    buf.st_dev = 136315138;
    *&buf.st_mode = "_ADCloudKitCompressDirectoryToArchive";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ", &buf, 0xCu);
  }

  memset(&buf, 0, sizeof(buf));
  v6 = [v3 cStringUsingEncoding:4];
  if (stat(v6, &buf))
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v19 = v7;
      v20 = __error();
      v21 = strerror(*v20);
      *v26 = 136315650;
      *&v26[4] = "_ADCloudKitCompressDirectoryToArchive";
      *&v26[12] = 2080;
      *&v26[14] = v6;
      *&v26[22] = 2080;
      *&v26[24] = v21;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Failed to stat source path %s: %s", v26, 0x20u);
    }

LABEL_6:
    StreamableZip = 0;
    goto LABEL_17;
  }

  v9 = [v4 cStringUsingEncoding:4];
  v10 = fopen(v9, "w+");
  if (!v10)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = __error();
      v17 = strerror(*v16);
      *v26 = 136315650;
      *&v26[4] = "_ADCloudKitCompressDirectoryToArchive";
      *&v26[12] = 2080;
      *&v26[14] = v9;
      *&v26[22] = 2080;
      *&v26[24] = v17;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Failed to open output archive at %s: %s", v26, 0x20u);
    }

    goto LABEL_6;
  }

  v11 = v10;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v27 = 0;
  v29 = 0u;
  memset(v26, 0, sizeof(v26));
  v28 = v10;
  if ((buf.st_mode & 0xF000) == 0x4000)
  {
    v24[0] = kSZArchiverOptionCompressionOptions;
    v24[1] = kSZArchiverOptionZlibCompressionLevel;
    v25[0] = kSZArchiverCompressionOptionTryRecompress;
    v25[1] = &off_100533830;
    v24[2] = kSZArchiverOptionSkipPrescan;
    v24[3] = kSZArchiverOptionUncompressBloatedFiles;
    v25[2] = &__kCFBooleanFalse;
    v25[3] = &__kCFBooleanTrue;
    v24[4] = kSZArchiverOptionNoCache;
    v25[4] = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:5];
    StreamableZip = SZArchiverCreateStreamableZip();
    if ((StreamableZip & 1) == 0)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315138;
        v23 = "_ADCloudKitCompressDirectoryToArchive";
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Archive operation failed.", &v22, 0xCu);
      }
    }
  }

  else
  {
    StreamableZip = 0;
  }

  fclose(v11);
LABEL_17:

  return StreamableZip;
}

uint64_t sub_100097A48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100097A60(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100097ADC(uint64_t a1, void *a2, char a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100097B54(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void *sub_100097BB4(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  objc_opt_class();
  v3 = objc_opt_class();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v4 = v1;
  v5 = [v4 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v46;
    v35 = v3;
    v36 = v4;
    v34 = *v46;
    do
    {
      v8 = 0;
      v37 = v6;
      do
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v39 = v8;
        v40 = [v4 objectForKey:{*(*(&v45 + 1) + 8 * v8), v34, v35, v36}];
        v9 = [v40 objectForKey:@"productType"];
        isKindOfClass = objc_opt_isKindOfClass();
        v11 = AFSiriLogContextDaemon;
        v12 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
        if (isKindOfClass)
        {
          if (v12)
          {
            *buf = 136315394;
            v51 = "_ADCloudKitCreateLanguageManifestFromAssetManifest";
            v52 = 2112;
            v53 = v9;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s productType = %@", buf, 0x16u);
          }

          v13 = [v40 objectForKey:@"languages"];
          v38 = v13;
          if (objc_opt_isKindOfClass())
          {
            v14 = v2;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v15 = v13;
            v16 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
            if (!v16)
            {
              goto LABEL_31;
            }

            v17 = v16;
            v18 = *v42;
            while (1)
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v42 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v41 + 1) + 8 * i);
                v21 = AFSiriLogContextDaemon;
                if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  v51 = "_ADCloudKitCreateLanguageManifestFromAssetManifest";
                  v52 = 2112;
                  v53 = v20;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s language = %@", buf, 0x16u);
                }

                if (objc_opt_isKindOfClass())
                {
                  v22 = [v14 objectForKey:v20];
                  if (v22)
                  {
                    v23 = v22;
                    if (([v22 containsObject:v9] & 1) == 0)
                    {
                      v24 = AFSiriLogContextDaemon;
                      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315394;
                        v51 = "_ADCloudKitCreateLanguageManifestFromAssetManifest";
                        v52 = 2112;
                        v53 = v9;
                        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s adding productType = %@", buf, 0x16u);
                      }

                      [v23 addObject:v9];
                    }

                    v25 = AFSiriLogContextDaemon;
                    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315394;
                      v51 = "_ADCloudKitCreateLanguageManifestFromAssetManifest";
                      v52 = 2112;
                      v53 = v23;
                      v26 = v25;
                      v27 = "%s productTypeArray = %@";
                      goto LABEL_27;
                    }
                  }

                  else
                  {
                    v23 = objc_opt_new();
                    [v23 addObject:v9];
                    [v14 setValue:v23 forKey:v20];
                    v28 = AFSiriLogContextDaemon;
                    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315394;
                      v51 = "_ADCloudKitCreateLanguageManifestFromAssetManifest";
                      v52 = 2112;
                      v53 = v23;
                      v26 = v28;
                      v27 = "%s !productTypeArray = %@";
LABEL_27:
                      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, v27, buf, 0x16u);
                    }
                  }

                  continue;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
              if (!v17)
              {
LABEL_31:

                v2 = v14;
                v4 = v36;
                v6 = v37;
                v7 = v34;
                v29 = v39;
                goto LABEL_36;
              }
            }
          }

          v30 = AFSiriLogContextDaemon;
          v29 = v39;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v51 = "_ADCloudKitCreateLanguageManifestFromAssetManifest";
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s language is not string type", buf, 0xCu);
          }

LABEL_36:
        }

        else
        {
          v29 = v39;
          if (v12)
          {
            *buf = 136315138;
            v51 = "_ADCloudKitCreateLanguageManifestFromAssetManifest";
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s productType is not string type", buf, 0xCu);
          }
        }

        v8 = v29 + 1;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v6);
  }

  if ([v2 count])
  {
    v31 = v2;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  return v31;
}

void sub_100098144(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = @"new";
      v10 = *(a1 + 40);
      v12 = "_ADCloudKitSaveAssetManifest_block_invoke";
      v11 = 136315650;
      v13 = 2112;
      if (v10)
      {
        v9 = @"legacy";
      }

      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to save %@ PHS language manifest with error: %@", &v11, 0x20u);
    }
  }

  if (AFIsMultiUserCompanion())
  {
    v8 = +[ADCloudKitManager sharedManager];
    [v8 saveKeyValueRecordsWithDictionary:*(a1 + 32) mirror:1 completion:0];
  }
}

void sub_10009844C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  *(*(a1 + 32) + 16) = 0;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[ADDeviceRouter requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #hal _currentDeviceContextTuples cleared", &v5, 0xCu);
  }
}

void sub_100098584(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000985FC;
  v4[3] = &unk_10051CBD8;
  v4[4] = v2;
  v5 = a2;
  dispatch_async(v3, v4);
}

void sub_1000985FC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = 1;
  if (*(a1 + 40))
  {
    v2 = 2;
  }

  *(*(a1 + 32) + 16) = v2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "[ADDeviceRouter requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke_2";
    v6 = 1024;
    v7 = v1;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #hal local device is a follower in a stereo pair? %d", &v4, 0x12u);
  }
}

void sub_1000988DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v5 = v4 == 2;
  if (!v4)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[ADDeviceRouter getPreferredDeviceToHandleCommand:logNearbyDeviceMetrics:executionContext:sharedUserID:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s #hal local device follower status not ready", buf, 0xCu);
    }
  }

  if ([*(a1 + 40) ad_requiresProximityInformationForDeviceContextTuples:v3])
  {
    v7 = sub_100015560(v3);
    v8 = *(*(a1 + 32) + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100098B84;
    v14[3] = &unk_10050FF38;
    v15 = v7;
    v16 = *(a1 + 40);
    v17 = v3;
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v21 = v5;
    v20 = *(a1 + 64);
    v9 = v7;
    [v8 getDeviceProximityRelativeToLocalDeviceWithDeviceContexts:v9 includesAllReachableDevices:0 completion:v14];

    v10 = v15;
  }

  else
  {
    v9 = [*(a1 + 40) ad_executionDeviceForDeviceContextTuples:v3 executionContext:*(a1 + 48) proximityMap:0 sharedUserID:*(a1 + 56) localDeviceIsFollower:v4 == 2];
    v10 = [(__CFString *)v9 peerInfo];
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = @"local device";
      v13 = *(a1 + 40);
      if (v10)
      {
        v12 = v10;
      }

      *buf = 136315650;
      v23 = "[ADDeviceRouter getPreferredDeviceToHandleCommand:logNearbyDeviceMetrics:executionContext:sharedUserID:completion:]_block_invoke";
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s #hal Preferred handling device is %@ for command: %@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_100098B84(uint64_t a1, void *a2)
{
  v3 = sub_1002BC5A4(a2);
  v4 = AFCoreAnalyticsEventCreateForDeviceContexts();
  v5 = [*(a1 + 40) ad_executionDeviceForDeviceContextTuples:*(a1 + 48) executionContext:*(a1 + 56) proximityMap:v3 sharedUserID:*(a1 + 64) localDeviceIsFollower:*(a1 + 80)];
  v6 = [v5 peerInfo];
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = @"local device";
    v9 = *(a1 + 40);
    if (v6)
    {
      v8 = v6;
    }

    v10 = 136315650;
    v11 = "[ADDeviceRouter getPreferredDeviceToHandleCommand:logNearbyDeviceMetrics:executionContext:sharedUserID:completion:]_block_invoke";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s #hal Preferred handling device is %@ for prox-based command: %@", &v10, 0x20u);
  }

  (*(*(a1 + 72) + 16))();
}

void sub_100098E48(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = *(v4 + 24);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100098F08;
  v8[3] = &unk_10051C0D8;
  v6 = a1[5];
  v11 = a1[6];
  v8[4] = v4;
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

uint64_t sub_100098F08(uint64_t a1)
{
  mach_absolute_time();
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = v2;
    v5 = 136315394;
    v6 = "[ADDeviceRouter _fetchCurrentDeviceContextTuplesIfNecessaryWithCompletion:]_block_invoke_2";
    v7 = 2048;
    Milliseconds = AFMachAbsoluteTimeGetMilliseconds();
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #hal context updated after %llu milliseconds", &v5, 0x16u);
  }

  [*(a1 + 32) _updateContext:*(a1 + 40)];
  return (*(*(a1 + 48) + 16))();
}

void sub_1000991AC(id a1, AFPeerContentTuple *a2, unint64_t a3, BOOL *a4)
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = v5;
    v7 = [(AFPeerContentTuple *)a2 content];
    v8 = 136315394;
    v9 = "[ADDeviceRouter _updateContext:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s #hal %@", &v8, 0x16u);
  }
}

void sub_1000993C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315138;
      v6 = "[ADDeviceRouter updateContext:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #hal context already updated", &v5, 0xCu);
    }
  }

  else
  {
    v4 = *(a1 + 40);

    [v2 _updateContext:v4];
  }
}

uint64_t sub_100099960(uint64_t a1, void *a2)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a2 timerSnapshot];
  v4 = [v3 timersByID];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(a1 + 32);
        v11 = [*(*(&v14 + 1) + 8 * v9) timerURL];
        LOBYTE(v10) = [v10 containsObject:v11];

        if (v10)
        {
          v12 = 1;
          goto LABEL_11;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

id sub_10009A0E0(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10009A5B4;
    v21[3] = &unk_10050FF60;
    v7 = [[NSSet alloc] initWithArray:v6];
    v22 = v7;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10009A730;
    v19[3] = &unk_10050FF88;
    v8 = objc_retainBlock(v21);
    v20 = v8;
    v9 = [v5 indexesOfObjectsPassingTest:v19];
    if (![v9 count])
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10009A744;
      v17[3] = &unk_10050FF88;
      v18 = v8;
      v10 = [v5 indexesOfObjectsPassingTest:v17];

      v9 = v10;
    }

    v11 = [v5 objectsAtIndexes:v9];
    v12 = v11;
    if (a3)
    {
      v13 = &stru_10050FFC8;
    }

    else
    {
      v13 = &stru_10050FFE8;
    }

    v14 = [v11 indexOfObjectPassingTest:v13];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 firstObject];
    }

    else
    {
      [v12 objectAtIndexedSubscript:v14];
    }
    v15 = ;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

ADDeviceRouterResult *sub_10009A328(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if ([v7 fromLocalDevice])
    {
      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v23 = 136315650;
        v24 = "ADDeviceRouterResultForDeviceContextWithFiringAlarm";
        v25 = 2112;
        v26 = v9;
        v27 = 2112;
        v28 = v8;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #hal %@ local alarms: %@", &v23, 0x20u);
      }

      v11 = 0;
    }

    else
    {
      v13 = [v7 deviceInfo];
      v14 = sub_10001A498(v13, 0);

      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v20 = v15;
        v21 = AFPeerInfoGetCompactDescription();
        v22 = AFDeviceProximityGetName();
        v23 = 136316162;
        v24 = "ADDeviceRouterResultForDeviceContextWithFiringAlarm";
        v25 = 2112;
        v26 = v9;
        v27 = 2112;
        v28 = v8;
        v29 = 2112;
        v30 = v21;
        v31 = 2112;
        v32 = v22;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s #hal %@ alarms: %@ on %@, proximity: %@", &v23, 0x34u);
      }

      v11 = [[ADPeerInfo alloc] initWithAFPeerInfo:v14];
    }

    v16 = [ADDeviceRouterResult alloc];
    v17 = [v7 identifier];
    v18 = [v7 contextCollectorSource];
    v12 = [(ADDeviceRouterResult *)v16 initWithPeerInfo:v11 contextIdentifier:v17 proximity:a2 commandRelayProxyIdentifier:v18 error:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_10009A5B4(uint64_t a1, void *a2, char a3)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [a2 alarmSnapshot];
  v6 = [v5 alarmsByID];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v11 = a3 ^ 1;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = *(a1 + 32);
        v15 = [v13 alarmURL];
        if ([v14 containsObject:v15])
        {
          v16 = [v13 isFiring] | v11;

          if (v16)
          {
            v17 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = 0;
LABEL_13:

  return v17;
}

void sub_10009B708(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009B7DC;
  block[3] = &unk_10051E088;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_10009B7DC(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v3 = a1[4];
    if (v3 || (v8 = a1[5]) == 0)
    {
      v4 = [v3 objectForKey:@"timer-data"];
      if (v4)
      {
        v5 = off_10058ABC0();
        if (v5)
        {
          v17 = 0;
          v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:v5 fromData:v4 error:&v17];
          v7 = v17;
          if (v6)
          {
            (*(a1[6] + 16))();
          }

          else
          {
            v14 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v19 = "[ADRemoteTimerManager _sendStereoPartnerAction:timerID:changes:completion:]_block_invoke";
              v20 = 2112;
              v21 = v7;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Failed to deserialize reply time data (error = %@).", buf, 0x16u);
            }

            v15 = a1[6];
            v16 = [AFError errorWithCode:2110 description:0 underlyingError:v7];
            (*(v15 + 16))(v15, 0, v16);
          }
        }

        else
        {
          v12 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v19 = "[ADRemoteTimerManager _sendStereoPartnerAction:timerID:changes:completion:]_block_invoke";
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Unable to get MTTimer class.", buf, 0xCu);
          }

          v13 = a1[6];
          v7 = [AFError errorWithCode:2110 description:@"Unable to get MTTimer class." underlyingError:0];
          (*(v13 + 16))(v13, 0, v7);
        }
      }

      else
      {
        v10 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v19 = "[ADRemoteTimerManager _sendStereoPartnerAction:timerID:changes:completion:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s No reply timer data.", buf, 0xCu);
        }

        v11 = a1[6];
        v7 = [AFError errorWithCode:2112 description:0 underlyingError:a1[5]];
        (*(v11 + 16))(v11, 0, v7);
      }
    }

    else
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[ADRemoteTimerManager _sendStereoPartnerAction:timerID:changes:completion:]_block_invoke_2";
        v20 = 2112;
        v21 = v8;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s No reply message (error = %@).", buf, 0x16u);
        v8 = a1[5];
        v1 = a1[6];
      }

      (*(v1 + 16))(v1, 0, v8);
    }
  }
}

id sub_10009BB34()
{
  if (qword_10058FEB8 != -1)
  {
    dispatch_once(&qword_10058FEB8, &stru_100510080);
  }

  v1 = qword_10058FEC0;

  return v1;
}

void sub_10009BB88(id a1)
{
  if (qword_10058FEC8 != -1)
  {
    dispatch_once(&qword_10058FEC8, &stru_1005100A0);
  }

  qword_10058FEC0 = objc_getClass("MTTimer");
  off_10058ABC0 = sub_10009BBEC;
}

void sub_10009C1B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5)
    {
      v14 = 0;
      v8 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v14];
      v9 = v14;
      if (v8)
      {
        v10 = *(a1 + 32);
        v19 = @"timer-data";
        v20 = v8;
        v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        (*(v10 + 16))(v10, v11, v6);
      }

      else
      {
        v12 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v16 = "[ADRemoteTimerManager handleMessage:messageType:fromDeviceWithIdentifier:completion:]_block_invoke";
          v17 = 2112;
          v18 = v9;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Failed to serialize time data (error = %@)", buf, 0x16u);
        }

        v13 = *(a1 + 32);
        if (v6)
        {
          (*(v13 + 16))(v13, 0, v6);
          goto LABEL_11;
        }

        v11 = [AFError errorWithCode:2109 description:0 underlyingError:v9];
        (*(v13 + 16))(v13, 0, v11);
      }

LABEL_11:
      goto LABEL_12;
    }

    (*(v7 + 16))(v7, 0, v6);
  }

LABEL_12:
}

void sub_10009C3AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5)
    {
      v14 = 0;
      v8 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v14];
      v9 = v14;
      if (v8)
      {
        v10 = *(a1 + 32);
        v19 = @"timer-data";
        v20 = v8;
        v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        (*(v10 + 16))(v10, v11, v6);
      }

      else
      {
        v12 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v16 = "[ADRemoteTimerManager handleMessage:messageType:fromDeviceWithIdentifier:completion:]_block_invoke";
          v17 = 2112;
          v18 = v9;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Failed to serialize time data (error = %@)", buf, 0x16u);
        }

        v13 = *(a1 + 32);
        if (v6)
        {
          (*(v13 + 16))(v13, 0, v6);
          goto LABEL_11;
        }

        v11 = [AFError errorWithCode:2109 description:0 underlyingError:v9];
        (*(v13 + 16))(v13, 0, v11);
      }

LABEL_11:
      goto LABEL_12;
    }

    (*(v7 + 16))(v7, 0, v6);
  }

LABEL_12:
}

void sub_10009C6B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009C74C;
  v3[3] = &unk_100510060;
  v4 = *(a1 + 48);
  [v1 _sendStereoPartnerAction:@"remove-timer" timerID:v2 changes:0 completion:v3];
}

uint64_t sub_10009C74C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10009C848(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009C8EC;
  v4[3] = &unk_100510060;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _sendStereoPartnerAction:@"update-timer" timerID:v2 changes:v3 completion:v4];
}

uint64_t sub_10009C8EC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10009C9CC(uint64_t a1)
{
  v2 = [*(a1 + 32) _storageForDeviceWithIdentifier:*(a1 + 40)];
  [v2 beginGrouping];
  (*(*(a1 + 48) + 16))();
  [v2 endGroupingWithOptions:0];
}

void sub_10009CC68(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(*(a1 + 32) + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009CD3C;
  v7[3] = &unk_100510038;
  v8 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(a1 + 40);
  v6 = [v4 copy];
  (*(v5 + 16))(v5, v6);
}

void sub_10009CD3C(uint64_t a1, void *a2, void *a3)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009CE08;
  v8[3] = &unk_10051DD48;
  v9 = a3;
  v5 = v9;
  v6 = a2;
  v7 = [AFClockTimerSnapshot newWithBuilder:v8];
  [*(a1 + 32) setObject:v7 forKey:v6];
}

void sub_10009CE08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setGeneration:{objc_msgSend(v3, "generation")}];
  v5 = [*(a1 + 32) date];
  [v4 setDate:v5];

  v6 = [*(a1 + 32) itemsByID];
  [v4 setTimersByID:v6];
}

void sub_10009CF90(uint64_t a1)
{
  v2 = [*(a1 + 32) _storageForDeviceWithIdentifier:*(a1 + 40)];
  v3 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009D060;
  v6[3] = &unk_10051DD48;
  v7 = v2;
  v4 = v2;
  v5 = [AFClockTimerSnapshot newWithBuilder:v6];
  (*(v3 + 16))(v3, v5);
}

void sub_10009D060(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setGeneration:{objc_msgSend(v3, "generation")}];
  v5 = [*(a1 + 32) date];
  [v4 setDate:v5];

  v6 = [*(a1 + 32) itemsByID];
  [v4 setTimersByID:v6];
}

void sub_10009D528(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[ADUserNotificationAnnouncementSpeakingStatePublisher connectionProxy]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error retrieving remote object proxy: %@", &v4, 0x16u);
  }
}

void sub_10009DE64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      *buf = 136315650;
      v20 = "[ADUserNotificationAnnouncementSpeakingStatePublisher listener:shouldAcceptNewConnection:]_block_invoke";
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s New connection: %@ while one exists: %@. Invalidating old connection", buf, 0x20u);
      v2 = *(a1 + 32);
    }

    [v2 _invalidateConnection];
  }

  v6 = *(a1 + 40);
  v7 = AFUserNotificationAnnouncementSpeakingStateServiceGetXPCInterface();
  [v6 setExportedInterface:v7];

  [*(a1 + 40) setExportedObject:*(a1 + 32)];
  v8 = *(a1 + 40);
  v9 = AFUserNotificationAnnouncementSpeakingStateServiceDelegateGetXPCInterface();
  [v8 setRemoteObjectInterface:v9];

  objc_initWeak(buf, *(a1 + 32));
  v10 = *(a1 + 40);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009E0CC;
  v17[3] = &unk_10051B5F0;
  objc_copyWeak(&v18, buf);
  [v10 setInvalidationHandler:v17];
  v11 = *(a1 + 40);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10009E10C;
  v15 = &unk_10051B5F0;
  objc_copyWeak(&v16, buf);
  [v11 setInterruptionHandler:&v12];
  [*(a1 + 40) resume];
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void sub_10009E094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009E0CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInvalidated];
}

void sub_10009E10C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionInterrupted];
}

void sub_10009E738(id a1)
{
  v1 = [ADUserNotificationAnnouncementSpeakingStatePublisher alloc];
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.assistant.announcement-state-manager", v2);

  v3 = [(ADUserNotificationAnnouncementSpeakingStatePublisher *)v1 _initWithQueue:v5];
  v4 = qword_10058FEE0;
  qword_10058FEE0 = v3;
}

void sub_10009EC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009EC8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 eventBody];
  v5 = [v4 json];
  [v3 appendData:v5];

  ++*(*(*(a1 + 40) + 8) + 24);
}

void sub_10009ECFC(id a1, BPSCompletion *a2)
{
  v3 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = a2;
    v6 = [(BPSCompletion *)v5 state];
    v7 = [(BPSCompletion *)v5 error];

    v8 = 136315650;
    v9 = "[ADAssistantStateDumpManager _getEventsDataForStream:numEvents:]_block_invoke";
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Publisher completed with state: %ld; error: %@", &v8, 0x20u);
  }
}

void sub_10009F95C()
{
  objc_end_catch();
  objc_destroyWeak(&v0);
  objc_destroyWeak(&v1);
  JUMPOUT(0x10009F98CLL);
}

void sub_10009F994(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315394;
    v20 = "[ADAssistantStateDumpManager _dumpAssistantState]_block_invoke";
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Provider finished: %@", buf, 0x16u);
  }

  if (v3 && (v6 = objc_loadWeakRetained((a1 + 48))) != 0 && (v7 = v6, v8 = objc_loadWeakRetained((a1 + 56)), v8, v7, v8))
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [v3 description];
      *buf = 136315394;
      v20 = "[ADAssistantStateDumpManager _dumpAssistantState]_block_invoke";
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s State chunk retrieved: %@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009FD44;
    block[3] = &unk_1005177E8;
    objc_copyWeak(&v18, (a1 + 56));
    v16 = v3;
    v17 = *(a1 + 32);
    dispatch_sync(WeakRetained, block);

    objc_destroyWeak(&v18);
  }

  else
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 136315394;
      v20 = "[ADAssistantStateDumpManager _dumpAssistantState]_block_invoke_2";
      v21 = 2112;
      v22 = v14;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Invalid state chunk from provider: %@", buf, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_10009FC1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009FC34(uint64_t a1)
{
  v2 = [*(a1 + 32) description];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADAssistantStateDumpManager _dumpAssistantState]_block_invoke";
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Result: %@", &v7, 0x16u);
  }

  v4 = [NSDictionary dictionaryWithDictionary:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(a1 + 40) _writeTextToDisk:v2 withFileName:@"assistant_dump.log"];
}

void sub_10009FD44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setValue:*(a1 + 32) forKey:*(a1 + 40)];
}

void *sub_1000A05E8(uint64_t a1)
{
  v2 = sub_1000A0638();
  result = dlsym(v2, "AVSystemController_RouteDescriptionKey_IsGenuineAppleAccessory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FEE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000A0638()
{
  v4[0] = 0;
  if (!qword_10058FEF0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000A0A5C;
    v4[4] = &unk_10051E200;
    v4[5] = v4;
    v5 = off_100510170;
    v6 = 0;
    qword_10058FEF0 = _sl_dlopen();
  }

  v0 = qword_10058FEF0;
  if (!qword_10058FEF0)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *MediaExperienceLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"AFSiriAudioRoute.m" lineNumber:27 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *sub_1000A078C(uint64_t a1)
{
  v2 = sub_1000A0638();
  result = dlsym(v2, "AVSystemController_RouteDescriptionKey_RouteCurrentlyPicked");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FEF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000A07DC(uint64_t a1)
{
  v2 = sub_1000A0638();
  result = dlsym(v2, "AVSystemController_RouteDescriptionKey_BTDetails_SupportsDoAP");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FF00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000A082C(uint64_t a1)
{
  v2 = sub_1000A0638();
  result = dlsym(v2, "AVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_IsActive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FF08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000A087C(uint64_t a1)
{
  v2 = sub_1000A0638();
  result = dlsym(v2, "AVSystemController_RouteDescriptionKey_BTDetails_ProductID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FF18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000A08CC(uint64_t a1)
{
  v2 = sub_1000A0638();
  result = dlsym(v2, "AVSystemController_RouteDescriptionKey_RouteUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FF20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000A091C(uint64_t a1)
{
  v2 = sub_1000A0638();
  result = dlsym(v2, "AVSystemController_RouteDescriptionKey_BTDetails_IsBTManaged");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FF28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000A096C(uint64_t a1)
{
  v2 = sub_1000A0638();
  result = dlsym(v2, "AVSystemController_RouteDescriptionKey_OtherDevicesConnected");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FF30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000A09BC(uint64_t a1)
{
  v2 = sub_1000A0638();
  result = dlsym(v2, "AVSystemController_RouteDescriptionKey_AVAudioRouteName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FF38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000A0A0C(uint64_t a1)
{
  v2 = sub_1000A0638();
  result = dlsym(v2, "AVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10058FF10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000A0A5C()
{
  result = _sl_dlopen();
  qword_10058FEF0 = result;
  return result;
}

uint64_t sub_1000A0E34(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000A0F50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[ADMockServer _establishConnectionIfNeeded]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s MockServer XPC proxy error: %@", &v7, 0x16u);
  }

  [*(*(a1 + 32) + 8) invalidate];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = 0;
}

void sub_1000A1090(id a1)
{
  qword_10058FF48 = objc_alloc_init(ADMockServer);

  _objc_release_x1();
}

void sub_1000A1D98(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2;
  [v4 setGeneration:v3];
  [v4 setDate:a1[4]];
  [v4 setItems:a1[5]];
}

void sub_1000A3154(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v20 = a1[4];
    v21 = a1[5];
    v22 = 136316162;
    v23 = "[ADRapportLink _sendRequestID:messageType:messagePayload:destinationID:options:completion:]_block_invoke";
    v24 = 2112;
    v25 = v20;
    v26 = 2112;
    v27 = v21;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Received response for requestID=%@, messageType=%@ : %@, error: %@", &v22, 0x34u);
  }

  if (a1[6])
  {
    if (v9)
    {
      v11 = [v9 domain];
      v12 = [v11 isEqualToString:RPErrorDomain];

      if (v12)
      {
        if (AFIsInternalInstall())
        {
          v13 = AFSiriLogContextPerformance;
          v14 = os_signpost_id_generate(AFSiriLogContextPerformance);
          if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v15 = v14;
            if (os_signpost_enabled(v13))
            {
              LOWORD(v22) = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, v15, "CompanionRapportTransportError", "ADRapportLink _sendRequestID", &v22, 2u);
            }
          }
        }

        v16 = [AFError errorWithCode:1000 description:0 underlyingError:v9];
      }

      else
      {
        v16 = v9;
      }
    }

    else
    {
      v17 = [v7 objectForKey:@"payload"];
      if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v18 = 0;
LABEL_20:
        (*(a1[6] + 16))();

        goto LABEL_21;
      }

      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315138;
        v23 = "[ADRapportLink _sendRequestID:messageType:messagePayload:destinationID:options:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s received malformed response", &v22, 0xCu);
      }

      v16 = [AFError errorWithCode:11];
    }

    v18 = v16;
    v17 = 0;
    goto LABEL_20;
  }

LABEL_21:
}

void sub_1000A3E14(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setIdsDeviceUniqueIdentifier:v3];
  [v4 setRapportEffectiveIdentifier:a1[5]];
  [v4 setHomeKitAccessoryIdentifier:a1[6]];
  [v4 setAssistantIdentifier:a1[7]];
}

void sub_1000A3E88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = RPOptionSenderIDSDeviceID;
  v5 = a2;
  v6 = [v3 objectForKey:v4];
  [v5 setIdsDeviceUniqueIdentifier:v6];

  v7 = [*(a1 + 32) objectForKey:RPOptionSenderID];
  [v5 setRapportEffectiveIdentifier:v7];
}

void sub_1000A4360(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 objectForKey:@"messageID"];
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315906;
    v19 = "[ADRapportLink _registerRequestID:options:handler:]_block_invoke";
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s incoming generic request: %@ %@ %@", &v18, 0x2Au);
  }

  v12 = [v7 objectForKeyedSubscript:@"handoffTurnIdentifier"];
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = 136315394;
    v19 = "[ADRapportLink _registerRequestID:options:handler:]_block_invoke";
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s ADRapportLink incoming handoffTurnIdentifier %@ ", &v18, 0x16u);
  }

  if (v12)
  {
  }

  v14 = +[ADFMDMonitor sharedManager];
  v15 = [v14 isLostModeActive];

  if (v15)
  {
    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[ADRapportLink _registerRequestID:options:handler:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Lost mode is active, rejecting incoming request", &v18, 0xCu);
    }

    v17 = [AFError errorWithCode:1003];
    (*(v9 + 2))(v9, 0, 0, v17);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000A479C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 rapportLink:*(a1 + 32) didLoseDevice:*(a1 + 40)];
  }
}

void sub_1000A4898(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 rapportLink:*(a1 + 32) didUpdateDevice:*(a1 + 40) changes:*(a1 + 48)];
  }
}

void sub_1000A4990(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 rapportLink:*(a1 + 32) didFindDevice:*(a1 + 40)];
  }
}

void sub_1000A4A84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 rapportLink:*(a1 + 32) didUpdateLocalDevice:*(a1 + 40)];
  }
}

void sub_1000A4B50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 rapportLinkDidInvalidate:*(a1 + 32)];
  }
}

void sub_1000A4C1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 rapportLinkDidInterrupt:*(a1 + 32)];
  }
}

void sub_1000A4EE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [NSNumber numberWithBool:v5];
    v8 = 136315650;
    v9 = "[ADRapportLink updateLocalDeviceIsContextCollector:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s updated local context collector status to:%@ error:%@", &v8, 0x20u);
  }
}

void sub_1000A4FE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [NSNumber numberWithBool:v5];
    v8 = 136315650;
    v9 = "[ADRapportLink updateLocalDeviceIsContextCollector:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s updated local context collector status to:%@ error:%@", &v8, 0x20u);
  }
}

uint64_t sub_1000A52F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

uint64_t sub_1000A5474(uint64_t a1)
{
  v2 = [*(a1 + 32) _destinationIDForPeerInfo:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _sendRequestID:*(a1 + 48) messageType:*(a1 + 56) messagePayload:*(a1 + 64) destinationID:v2 options:*(a1 + 72) completion:*(a1 + 80)];
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = [AFError errorWithCode:44];
      (*(v3 + 16))(v3, 0, v4);
    }
  }

  return _objc_release_x1();
}

uint64_t sub_1000A5690(uint64_t a1)
{
  v2 = [*(a1 + 32) _destinationIDForDeviceAssistantIdentifier:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _sendRequestID:*(a1 + 48) messageType:*(a1 + 56) messagePayload:*(a1 + 64) destinationID:v2 options:*(a1 + 72) completion:*(a1 + 80)];
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = [AFError errorWithCode:44];
      (*(v3 + 16))(v3, 0, v4);
    }
  }

  return _objc_release_x1();
}

uint64_t sub_1000A58AC(uint64_t a1)
{
  v2 = [*(a1 + 32) _destinationIDForDeviceHomeKitAccessoryIdentifier:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _sendRequestID:*(a1 + 48) messageType:*(a1 + 56) messagePayload:*(a1 + 64) destinationID:v2 options:*(a1 + 72) completion:*(a1 + 80)];
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = [AFError errorWithCode:44];
      (*(v3 + 16))(v3, 0, v4);
    }
  }

  return _objc_release_x1();
}

uint64_t sub_1000A5AC8(uint64_t a1)
{
  v2 = [*(a1 + 32) _destinationIDForDeviceIDSIdentifier:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _sendRequestID:*(a1 + 48) messageType:*(a1 + 56) messagePayload:*(a1 + 64) destinationID:v2 options:*(a1 + 72) completion:*(a1 + 80)];
  }

  else
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = [AFError errorWithCode:44];
      (*(v3 + 16))(v3, 0, v4);
    }
  }

  return _objc_release_x1();
}

void sub_1000A5E6C(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  if (!v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    [*(a1[4] + 32) setObject:v3 forKey:a1[5]];
    v2 = v3;
  }

  v4 = v2;
  [v2 setObject:a1[6] forKey:a1[7]];
}

void sub_1000A5FB4(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A604C;
  v4[3] = &unk_100510278;
  v4[4] = v2;
  v5 = v1;
  [v2 _registerRequestID:v5 options:v3 handler:v4];
}

void sub_1000A604C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = a2;
  v11 = [v8 _buildResponse];
  v12 = *(a1 + 32);
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v13 = [v12 _validateIncomingRequest:v10 options:v9 error:&v35 messageID:&v34 messageType:&v33 messagePayload:&v32 senderPeerInfo:&v31];

  v14 = v35;
  v27 = v34;
  v15 = v33;
  v16 = v32;
  v17 = v31;
  v18 = AFSiriLogContextDaemon;
  if (v13)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v37 = "[ADRapportLink registerRequestID:options:]_block_invoke";
      v38 = 2112;
      v39 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s incoming request type: %@", buf, 0x16u);
      v18 = AFSiriLogContextDaemon;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v37 = "[ADRapportLink registerRequestID:options:]_block_invoke";
      v38 = 2112;
      v39 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s incoming request sender: %@", buf, 0x16u);
    }

    v19 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
    v20 = [v19 objectForKey:v15];

    if (v20)
    {
      v21 = *(a1 + 32);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000A644C;
      v28[3] = &unk_1005173D8;
      v28[4] = v21;
      v29 = v11;
      v30 = v7;
      [v20 rapportLink:v21 didReceiveMessage:v16 ofType:v15 fromPeer:v17 completion:v28];
    }

    else
    {
      v22 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 40);
        *buf = 136315650;
        v37 = "[ADRapportLink registerRequestID:options:]_block_invoke";
        v38 = 2112;
        v39 = v26;
        v40 = 2112;
        v41 = v15;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Unexpected message type for requestID: %@: %@", buf, 0x20u);
      }

      v23 = [AFError errorWithCode:1014];
      (*(v7 + 2))(v7, v11, 0, v23);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v24 = v18;
      v25 = [v14 localizedDescription];
      *buf = 136315394;
      v37 = "[ADRapportLink registerRequestID:options:]_block_invoke_2";
      v38 = 2112;
      v39 = v25;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    (*(v7 + 2))(v7, v11, 0, v14);
  }
}

void sub_1000A644C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A653C;
  v11[3] = &unk_10051E0D8;
  v12 = v5;
  v13 = *(a1 + 40);
  v8 = *(a1 + 48);
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t sub_1000A653C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) setObject:v2 forKey:@"payload"];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void sub_1000A667C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A6720;
  v6[3] = &unk_100510250;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _registerRequestID:v3 options:v4 handler:v6];
}

void sub_1000A6720(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A67E0;
  v11[3] = &unk_100510228;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v7;
  v9 = *(v8 + 16);
  v10 = v7;
  v9(v8, a2, a3, v11);
}

void sub_1000A67E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A68E4;
  v15[3] = &unk_10051E0D8;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

void sub_1000A6D2C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000A6DB4;
  v2[3] = &unk_10051D2F0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _activateWithCompletion:v2];
}

uint64_t sub_1000A6DB4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000A7D10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v7 - 176));
  _Unwind_Resume(a1);
}

void sub_1000A7D84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidInterrupt];
}

void sub_1000A7DC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidInvalidate];
}

void sub_1000A7E04(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidUpdateLocalDevice:v3];
}

void sub_1000A7E60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidLoseDevice:v3];
}

void sub_1000A7EBC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidFindDevice:v3];
}

void sub_1000A7F18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidUpdateDevice:v5 changes:a3];
}

void sub_1000A80E8(id a1)
{
  qword_10058FF58 = objc_alloc_init(_ADSiriInfoBroadcastLink);

  _objc_release_x1();
}

id sub_1000A82B0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(*(a1 + 32) + 16);
    v5 = 136315394;
    v6 = "[_ADSiriInfoBroadcastLink _broadcastSiriInfo:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Broadcasting SiriInfo: %@", &v5, 0x16u);
  }

  return [*(*(a1 + 32) + 8) _setSiriInfo:*(*(a1 + 32) + 16)];
}

void *sub_1000A8380(void *result)
{
  if (*(result[4] + 24) == result[6])
  {
    return (*(result[5] + 16))();
  }

  return result;
}

void sub_1000A89CC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = 136315650;
    v15 = "[_ADSiriInfoBroadcastLink updateSiriInfoWithObject:forKey:]_block_invoke";
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Updating SiriInfo with key %@, value %@", &v14, 0x20u);
  }

  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 48) + 16) objectForKey:*(a1 + 32)];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if ((v5 != 0) == (v6 == 0))
    {

LABEL_11:
      [*(*(a1 + 48) + 16) setObject:*(a1 + 40) forKey:*(a1 + 32)];
      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(*(a1 + 48) + 16);
        v14 = 136315394;
        v15 = "[_ADSiriInfoBroadcastLink updateSiriInfoWithObject:forKey:]_block_invoke";
        v16 = 2112;
        v17 = v13;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Current SiriInfo: %@", &v14, 0x16u);
      }

      [*(a1 + 48) _broadcastSiriInfo:1];
      return;
    }

    v8 = [v5 isEqual:v6];

    if (!v8)
    {
      goto LABEL_11;
    }
  }

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "[_ADSiriInfoBroadcastLink updateSiriInfoWithObject:forKey:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Skipped because an identical key-value pair already exists in cache.", &v14, 0xCu);
  }
}

uint64_t sub_1000A8CF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000A8D08(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 16) copy];

  return _objc_release_x1();
}

id sub_1000A8EA0(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 0;
  v2 = [ADRapportLink alloc];
  v3 = *(*(a1 + 32) + 32);
  v4 = [ADRapportLinkConfiguration newWithBuilder:&stru_1005103C8];
  v5 = [(ADRapportLink *)v2 initWithQueue:v3 configuration:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  [*(*(a1 + 32) + 8) addListener:?];
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A8FB0;
  v11[3] = &unk_10051C498;
  v11[4] = v8;
  return [v9 activateWithCompletion:v11];
}

uint64_t sub_1000A8F90(uint64_t result)
{
  if (!*(*(result + 32) + 8))
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

void sub_1000A8FB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[_ADSiriInfoBroadcastLink _configureRapportLinkAndReconnectNow:]_block_invoke_5";
      v7 = 2112;
      v8 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s SiriInfo broadcast link activation error: %@", &v5, 0x16u);
    }
  }

  [*(a1 + 32) _broadcastSiriInfo:1];
}

void sub_1000A9090(id a1, ADRapportLinkConfigurationMutating *a2)
{
  v2 = a2;
  v3 = [ADRapportLinkDiscoveryOptions newWithBuilder:&stru_1005103E8];
  [(ADRapportLinkConfigurationMutating *)v2 setDiscoveryOptions:v3];

  v4 = [ADRapportLinkTransportOptions newWithBuilder:&stru_100510408];
  [(ADRapportLinkConfigurationMutating *)v2 setTransportOptions:v4];
}

void sub_1000A9124(id a1, ADRapportLinkTransportOptionsMutating *a2)
{
  v2 = a2;
  if (_AFPreferencesBLECompanionConnectionsEnabled())
  {
    [(ADRapportLinkTransportOptionsMutating *)v2 setAllowsBLE:2];
  }

  if (AFSupportsPairedDevice())
  {
    [(ADRapportLinkTransportOptionsMutating *)v2 setAllowsBTPipe:2];
  }
}

void sub_1000A9184(id a1, ADRapportLinkDiscoveryOptionsMutating *a2)
{
  v2 = a2;
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesHome:2];
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesFamily:0];
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesRemoraDevices:2];
}

void sub_1000A9730(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000A974C(uint64_t a1)
{
  v2 = +[SFEntitledAssetManager sharedInstance];
  v3 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
  v5 = [v2 detailedInstallationStatusForLanguagesWithAssetType:3 subscriberId:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateOfflineDictationStatus:v5 error:0];
}

void sub_1000A9B58(uint64_t a1, void *a2, void *a3)
{
  v15 = *(a1 + 32);
  v16[0] = AFOfflineDictationStatusInstalledKey;
  v4 = a3;
  v5 = a2;
  v6 = [NSNumber numberWithBool:AFOfflineDictationStatusStringIsInstalled()];
  v17[0] = v6;
  v16[1] = AFOfflineDictationStatusHighQualityKey;
  v7 = [NSNumber numberWithBool:AFOfflineDictationStatusStringIsHighQualityModelSupported()];
  v17[1] = v7;
  v16[2] = AFOfflineDictationStatusContinuousListeningKey;
  v8 = [NSNumber numberWithBool:AFOfflineDictationStatusStringIsContinuousListeningSupported()];
  v17[2] = v8;
  v16[3] = AFOfflineDictationStatusOnDeviceSearchKey;
  v9 = [NSNumber numberWithBool:AFOfflineDictationStatusStringIsOnDeviceSearchSupported()];
  v17[3] = v9;
  v16[4] = AFOfflineDictationStatusAutoPunctuationKey;
  v10 = [NSNumber numberWithBool:AFOfflineDictationStatusStringIsAutoPunctuationSupported()];
  v17[4] = v10;
  v16[5] = AFOfflineDictationStatusEmojiRecognitionKey;
  v11 = [NSNumber numberWithBool:AFOfflineDictationStatusStringIsEmojiRecognitionSupported()];
  v17[5] = v11;
  v16[6] = AFOfflineDictationStatusVoiceCommandsKey;
  IsVoiceCommandsSupported = AFOfflineDictationStatusStringIsVoiceCommandsSupported();

  v13 = [NSNumber numberWithBool:IsVoiceCommandsSupported];
  v17[6] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:7];
  [v15 setObject:v14 forKey:v5];
}

void sub_1000A9E04(id a1)
{
  if (AFOfflineDictationCapable())
  {
    v1 = objc_alloc_init(ADDictationOfflineStatusObserver);
    v2 = qword_10058FF60;
    qword_10058FF60 = v1;

    v3 = qword_10058FF60;

    [v3 fetchOfflineDictationStatusIgnoringCache:0 asynchronously:1];
  }

  else
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "+[ADDictationOfflineStatusObserver sharedDictationOfflineStatusObserver]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Offline Dictation is not supported.", &v5, 0xCu);
    }
  }
}

void sub_1000AA180(uint64_t a1)
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 _isInCall];

  v4 = *(a1 + 32);
  if (*(v4 + 72) != v3)
  {
    *(v4 + 72) = v3;
    v5 = *(a1 + 32);
    if (v5[72] == 1)
    {

      [v5 _processPendingCallResultBlocks];
    }
  }
}

void sub_1000AA4B0(id a1, SAAceCommand *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADCompanionRoutingService preheatDomain:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s received response: %@ error: %@", &v7, 0x20u);
  }
}

void sub_1000AA590(id a1)
{
  v3[0] = SASmsGroupIdentifier;
  v3[1] = SAReminderGroupIdentifier;
  v4[0] = SAAceDomainSignalDomainMESSAGESValue;
  v4[1] = SAAceDomainSignalDomainREMINDERSValue;
  v3[2] = SAABGroupIdentifier;
  v3[3] = SAPhoneGroupIdentifier;
  v4[2] = SAAceDomainSignalDomainCONTACTValue;
  v4[3] = SAAceDomainSignalDomainPHONEValue;
  v3[4] = SACalendarGroupIdentifier;
  v3[5] = SAEmailGroupIdentifier;
  v4[4] = SAAceDomainSignalDomainCALENDARValue;
  v4[5] = SAAceDomainSignalDomainEMAILValue;
  v3[6] = SAStockGroupIdentifier;
  v4[6] = SAAceDomainSignalDomainSTOCKValue;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7];
  v2 = qword_10058FF78;
  qword_10058FF78 = v1;
}

void sub_1000AA978(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AAA68;
  block[3] = &unk_100519D50;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v16 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_1000AAA68(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(a1 + 32);
    if (!*(a1 + 32))
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        v4 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v20 = "[ADCompanionRoutingService _handleCommand:forDomain:executionContext:reply:]_block_invoke_2";
          v21 = 2112;
          v22 = v3;
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Constructing failure response due to remote execution error %@", buf, 0x16u);
          v3 = *(a1 + 40);
        }

        v5 = sub_100362334(v3);

        v2 = v5;
      }
    }

    if (*(a1 + 64) == 1 && (*(*(a1 + 48) + 72) & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v20 = "[ADCompanionRoutingService _handleCommand:forDomain:executionContext:reply:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Waiting for Call to route to complete the request...", buf, 0xCu);
      }

      v7 = *(*(a1 + 48) + 64);
      if (!v7)
      {
        v8 = objc_alloc_init(NSMutableArray);
        v9 = *(a1 + 48);
        v10 = *(v9 + 64);
        *(v9 + 64) = v8;

        v7 = *(*(a1 + 48) + 64);
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000AAD4C;
      v16[3] = &unk_10051E038;
      v18 = *(a1 + 56);
      v17 = v2;
      v11 = objc_retainBlock(v16);
      [v7 addObject:v11];

      v12 = dispatch_time(0, 3000000000);
      v13 = *(a1 + 48);
      v14 = *(v13 + 56);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000AAD64;
      block[3] = &unk_10051DFE8;
      block[4] = v13;
      dispatch_after(v12, v14, block);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

id sub_1000AAD64(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCompanionRoutingService _handleCommand:forDomain:executionContext:reply:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Timed out waiting for Call to route", &v4, 0xCu);
  }

  return [*(a1 + 32) _processPendingCallResultBlocks];
}

void sub_1000AC4DC(id a1)
{
  v1 = [NSSet alloc];
  qword_10058FF88 = [v1 initWithObjects:{SAGroupIdentifier, SASGroupIdentifier, SASyncGroupIdentifier, SADIAGGroupIdentifier, SAAIGroupIdentifier, SATTSGroupIdentifier, 0}];

  _objc_release_x1();
}

uint64_t sub_1000AC7DC(uint64_t a1)
{
  [*(a1 + 32) invalidateTimer];
  *(*(a1 + 32) + 16) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_1000AD5A4(uint64_t a1)
{
  if (sub_10031B3B4(*(a1 + 32)))
  {
    v2 = 60000000000;
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[ADCloudKitManager handleSharedDBCloudKitError:operationType:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Zone not found on shared zone. Unexpected error.", buf, 0xCu);
    }

    v4 = 0;
    v5 = 4104;
  }

  else if (sub_10031B6CC(*(a1 + 32)))
  {
    v2 = 60000000000;
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[ADCloudKitManager handleSharedDBCloudKitError:operationType:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Missing Manatee Identity. Handled on private database.", buf, 0xCu);
    }

    v4 = 0;
    v5 = 6103;
  }

  else if (sub_10031BAC0(*(a1 + 32)))
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      *buf = 136315394;
      v28 = "[ADCloudKitManager handleSharedDBCloudKitError:operationType:]_block_invoke";
      v29 = 2112;
      v30 = v19;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Keychain sync incomplete (%@)", buf, 0x16u);
    }

    v4 = 0;
    v2 = 60000000000;
    *(*(a1 + 40) + 49) = 1;
    v5 = 4103;
  }

  else if (sub_10031B554(*(a1 + 32)))
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      *buf = 136315394;
      v28 = "[ADCloudKitManager handleSharedDBCloudKitError:operationType:]_block_invoke";
      v29 = 2112;
      v30 = v20;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Rate limited (%@)", buf, 0x16u);
    }

    v2 = 60000000000;
    if (CKCanRetryForError())
    {
      v9 = [*(a1 + 32) userInfo];
      v10 = [v9 objectForKey:CKErrorRetryAfterKey];

      v4 = v10 != 0;
      if (v10)
      {
        v11 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 32);
          *buf = 136315650;
          v28 = "[ADCloudKitManager handleSharedDBCloudKitError:operationType:]_block_invoke";
          v29 = 2112;
          v30 = v22;
          v31 = 2048;
          v32 = 0x404E000000000000;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Rate limiting initiated for error (%@). Retrying in %f seconds", buf, 0x20u);
        }

        [v10 doubleValue];
        v2 = (fmax(v12, 60.0) * 1000000000.0);
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = 4106;
  }

  else if (sub_10031BD74(*(a1 + 32)))
  {
    v2 = 60000000000;
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      *buf = 136315394;
      v28 = "[ADCloudKitManager handleSharedDBCloudKitError:operationType:]_block_invoke";
      v29 = 2112;
      v30 = v21;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Network failure (%@)", buf, 0x16u);
    }

    v4 = 1;
    v5 = 4107;
  }

  else
  {
    if (!sub_10031BFF0(*(a1 + 32)))
    {
      return;
    }

    v2 = 60000000000;
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      *buf = 136315394;
      v28 = "[ADCloudKitManager handleSharedDBCloudKitError:operationType:]_block_invoke";
      v29 = 2112;
      v30 = v23;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Server Changed Record failure (%@). Unexpected error. But retry.", buf, 0x16u);
    }

    v4 = 1;
    v5 = 4108;
  }

  v14 = +[AFAnalytics sharedAnalytics];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000ADB28;
  v25[3] = &unk_10051DF78;
  v26 = *(a1 + 32);
  [v14 logEventWithType:v5 contextProvider:v25];

  [*(a1 + 40) _emitCloudKitSELFError:v5];
  if (v4)
  {
    v15 = dispatch_time(0, v2);
    v16 = *(a1 + 40);
    v17 = *(v16 + 112);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000ADB30;
    v24[3] = &unk_10051DFE8;
    v24[4] = v16;
    dispatch_after(v15, v17, v24);
  }
}

void sub_1000ADCC4(uint64_t a1)
{
  v2 = [*(a1 + 32) _trackedCKContainerForiCloudAltDSID:*(a1 + 40)];
  if (v2)
  {
    v19 = *(a1 + 48);
    v17[0] = @"rmvTVSetting";
    v3 = [NSNumber numberWithBool:*(a1 + 64)];
    v17[1] = @"syncRequestTime";
    v18[0] = v3;
    v4 = [NSNumber numberWithLong:mach_absolute_time()];
    v18[1] = v4;
    v5 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v20 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    v7 = [[ADCloudKitSharedZoneUpdater alloc] initWithQueue:*(*(a1 + 32) + 112) container:v2 sharedZone:*(*(a1 + 32) + 216) zoneOwner:1 delegate:0];
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[ADCloudKitManager syncSiriRMVSetting:iCloudAltDSID:homeUniqueIdentifier:completion:]_block_invoke";
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #multi-user-atv Syncing %@ to user profile companion.", buf, 0x16u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000ADFB8;
    v15[3] = &unk_10051D2F0;
    v16 = *(a1 + 56);
    [(ADCloudKitSharedZoneUpdater *)v7 addDictionaryToSharedStore:v6 completion:v15];
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v11 = *(*(a1 + 32) + 152);
      v12 = v9;
      v13 = [v11 allKeys];
      *buf = 136315651;
      v22 = "[ADCloudKitManager syncSiriRMVSetting:iCloudAltDSID:homeUniqueIdentifier:completion:]_block_invoke";
      v23 = 2113;
      v24 = v10;
      v25 = 2113;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s No container found for iCloud ID %{private}@ %{private}@", buf, 0x20u);
    }

    v14 = *(a1 + 56);
    v6 = [AFError errorWithCode:4022 description:@"No container found for given iCloud ID"];
    (*(v14 + 16))(v14, v6);
  }
}

void sub_1000ADFB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v6 = [a2 description];
    v3 = [AFError errorWithCode:4021 description:v6];
    (*(v2 + 16))(v2, v3);
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = *(a1 + 32);

    v4(v5);
  }
}

void sub_1000AE318(uint64_t a1)
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 languageCode];
  v4 = v3;
  v5 = AFDefaultLanguageCode;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    *buf = 136315650;
    v15 = "[ADCloudKitManager hasVoiceProfileAvailableForiCloudAltDSID:deviceType:completion:]_block_invoke";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Querying devices with assets for language:%@, deviceType:%@", buf, 0x20u);
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AE4B0;
  v11[3] = &unk_10051D600;
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  [v9 _devicesWithAvailablePHSAssetsForLanguage:v6 iCloudAltDSID:v10 completion:v11];
}

void sub_1000AE4B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = AFSiriLogContextDaemon;
  v9 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      *buf = 136315650;
      v26 = "[ADCloudKitManager hasVoiceProfileAvailableForiCloudAltDSID:deviceType:completion:]_block_invoke";
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Case insensitive prefix check of deviceType:%@ for %@", buf, 0x20u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v15 rangeOfString:*(a1 + 32) options:9];
          v17 = AFSiriLogContextDaemon;
          v18 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v18)
            {
              *buf = 136315394;
              v26 = "[ADCloudKitManager hasVoiceProfileAvailableForiCloudAltDSID:deviceType:completion:]_block_invoke";
              v27 = 2112;
              v28 = v15;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s NO MATCH: device: %@", buf, 0x16u);
            }
          }

          else
          {
            if (v18)
            {
              *buf = 136315394;
              v26 = "[ADCloudKitManager hasVoiceProfileAvailableForiCloudAltDSID:deviceType:completion:]_block_invoke";
              v27 = 2112;
              v28 = v15;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s MATCH: device: %@", buf, 0x16u);
            }

            (*(*(a1 + 40) + 16))();
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    (*(*(a1 + 40) + 16))();
    v6 = v19;
  }

  else
  {
    if (v9)
    {
      *buf = 136315394;
      v26 = "[ADCloudKitManager hasVoiceProfileAvailableForiCloudAltDSID:deviceType:completion:]_block_invoke";
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s deviceType was not provided. devices = %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), [v6 count] != 0, v5);
  }
}

void sub_1000AE8EC(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"com.apple.assistant.multiuser.shared"])
  {
    v2 = *(a1 + 40);
    if (*(a1 + 72))
    {
      v3 = [*(v2 + 136) multiUserRecordZoneInfo];
      goto LABEL_14;
    }

    v5 = *(v2 + 216);
  }

  else if ([*(a1 + 32) isEqualToString:@"com.apple.assistant.backedup"])
  {
    v4 = *(a1 + 40);
    if (*(a1 + 72))
    {
      v3 = [*(v4 + 136) keyValueRecordZoneInfo];
      goto LABEL_14;
    }

    v5 = *(v4 + 184);
  }

  else
  {
    if (![*(a1 + 32) isEqualToString:@"com.apple.assistant.account.status"])
    {
      goto LABEL_18;
    }

    v6 = *(a1 + 40);
    if (*(a1 + 72))
    {
      v3 = [*(v6 + 136) accountStatusRecordZoneInfo];
      goto LABEL_14;
    }

    v5 = *(v6 + 176);
  }

  v3 = v5;
LABEL_14:
  v7 = v3;
  if (v3)
  {
    if (sub_10031B3B4(*(a1 + 48)))
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 48);
        v33 = *(a1 + 32);
        v34 = @"not mirror";
        if (*(a1 + 72))
        {
          v34 = @"mirror";
        }

        *buf = 136315906;
        v83 = "[ADCloudKitManager handleCloudKitError:forZone:mirror:operationType:]_block_invoke";
        v84 = 2112;
        v85 = v32;
        v86 = 2112;
        v87 = v33;
        v88 = 2112;
        v89 = v34;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s resetting zone for error (%@) for zone (%@) (%@)", buf, 0x2Au);
      }

      [*(a1 + 40) _prepareZoneForResetWithZoneInfo:v7];
      [*(a1 + 40) _resetZoneWithZoneInfo:v7];
      v9 = 4104;
    }

    else
    {
      v11 = *(a1 + 48);
      v12 = [v7 zone];
      v13 = [v12 zoneID];
      v14 = sub_10031B92C(v11, v13);
      v15 = sub_10031B61C(v14);

      if (v15)
      {
        v16 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v43 = *(a1 + 48);
          v44 = *(a1 + 32);
          v45 = @"not mirror";
          if (*(a1 + 72))
          {
            v45 = @"mirror";
          }

          *buf = 136315906;
          v83 = "[ADCloudKitManager handleCloudKitError:forZone:mirror:operationType:]_block_invoke";
          v84 = 2112;
          v85 = v43;
          v86 = 2112;
          v87 = v44;
          v88 = 2112;
          v89 = v45;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s token expired (%@) for zone (%@) (%@)", buf, 0x2Au);
        }

        [v7 setServerChangeToken:0];
        if ((*(a1 + 72) & 1) == 0)
        {
          [*(a1 + 40) _fetchChangesWithZoneInfo:v7 retryCount:1 useSharedDatabase:0 activity:0 container:0 mirror:0];
        }

        v9 = 4105;
      }

      else if (sub_10031B6CC(*(a1 + 48)))
      {
        v17 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v50 = @"not mirror";
          if (*(a1 + 72))
          {
            v50 = @"mirror";
          }

          *buf = 136315394;
          v83 = "[ADCloudKitManager handleCloudKitError:forZone:mirror:operationType:]_block_invoke";
          v84 = 2112;
          v85 = v50;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Missing Manatee Identity : (%@)", buf, 0x16u);
        }

        [*(a1 + 40) _prepareZoneForResetWithZoneInfo:v7];
        v18 = *(a1 + 40);
        v80[0] = _NSConcreteStackBlock;
        v80[1] = 3221225472;
        v80[2] = sub_1000AF2D0;
        v80[3] = &unk_10051C9D0;
        v80[4] = v18;
        v81 = v7;
        [v18 _deleteRecordZoneWithZoneInfo:v81 completion:v80];

        v9 = 6103;
      }

      else if (sub_10031BAC0(*(a1 + 48)))
      {
        v19 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v51 = *(a1 + 48);
          *buf = 136315394;
          v83 = "[ADCloudKitManager handleCloudKitError:forZone:mirror:operationType:]_block_invoke_3";
          v84 = 2112;
          v85 = v51;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s Keychain sync incomplete (%@)", buf, 0x16u);
        }

        *(*(a1 + 40) + 49) = 1;
        v9 = 4103;
      }

      else if (sub_10031B554(*(a1 + 56)))
      {
        v20 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v52 = *(a1 + 48);
          *buf = 136315394;
          v83 = "[ADCloudKitManager handleCloudKitError:forZone:mirror:operationType:]_block_invoke";
          v84 = 2112;
          v85 = v52;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Rate limited (%@)", buf, 0x16u);
        }

        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        v23 = *(v22 + 112);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000AF388;
        block[3] = &unk_10051D650;
        block[4] = v22;
        v76 = v21;
        v77 = *(a1 + 48);
        v24 = v7;
        v25 = *(a1 + 64);
        v78 = v24;
        v79 = v25;
        dispatch_async(v23, block);

        v9 = 4106;
      }

      else if (sub_10031BD74(*(a1 + 56)))
      {
        v26 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v53 = *(a1 + 48);
          *buf = 136315394;
          v83 = "[ADCloudKitManager handleCloudKitError:forZone:mirror:operationType:]_block_invoke_2";
          v84 = 2112;
          v85 = v53;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Network failure (%@)", buf, 0x16u);
        }

        v27 = *(a1 + 32);
        v28 = *(a1 + 40);
        v29 = *(v28 + 112);
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_1000AF3E4;
        v70[3] = &unk_10051D650;
        v70[4] = v28;
        v30 = v27;
        v31 = *(a1 + 64);
        v71 = v30;
        v74 = v31;
        v72 = v7;
        v73 = *(a1 + 48);
        dispatch_async(v29, v70);

        v9 = 4107;
      }

      else
      {
        if (!sub_10031BFF0(*(a1 + 56)))
        {
          if ([*(a1 + 56) code] != 6)
          {
            goto LABEL_50;
          }

          v46 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            v55 = *(a1 + 48);
            *buf = 136315394;
            v83 = "[ADCloudKitManager handleCloudKitError:forZone:mirror:operationType:]_block_invoke_2";
            v84 = 2112;
            v85 = v55;
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s Assistant not ready error thrown (%@)", buf, 0x16u);
          }

          v47 = *(a1 + 40);
          v48 = *(v47 + 112);
          v61[0] = _NSConcreteStackBlock;
          v61[1] = 3221225472;
          v61[2] = sub_1000AF4A4;
          v61[3] = &unk_10051DBB8;
          v49 = *(a1 + 64);
          v61[4] = v47;
          v64 = v49;
          v7 = v7;
          v62 = v7;
          v63 = *(a1 + 48);
          dispatch_async(v48, v61);

          v42 = v62;
          goto LABEL_49;
        }

        v35 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v54 = *(a1 + 48);
          *buf = 136315394;
          v83 = "[ADCloudKitManager handleCloudKitError:forZone:mirror:operationType:]_block_invoke_2";
          v84 = 2112;
          v85 = v54;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s Server Changed Record failure (%@)", buf, 0x16u);
        }

        v36 = *(a1 + 32);
        v37 = *(a1 + 40);
        v38 = *(v37 + 112);
        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_1000AF444;
        v65[3] = &unk_10051D650;
        v65[4] = v37;
        v39 = v36;
        v40 = *(a1 + 64);
        v66 = v39;
        v69 = v40;
        v67 = v7;
        v68 = *(a1 + 48);
        dispatch_async(v38, v65);

        v9 = 4108;
      }
    }

    v41 = +[AFAnalytics sharedAnalytics];
    v56 = _NSConcreteStackBlock;
    v57 = 3221225472;
    v58 = sub_1000AF4C0;
    v59 = &unk_10051DF78;
    v60 = *(a1 + 48);
    [v41 logEventWithType:v9 contextProvider:&v56];

    [*(a1 + 40) _emitCloudKitSELFError:{v9, v56, v57, v58, v59}];
    v42 = v60;
LABEL_49:

    goto LABEL_50;
  }

LABEL_18:
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v83 = "[ADCloudKitManager handleCloudKitError:forZone:mirror:operationType:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s There is no zoneInfo - do nothing & return", buf, 0xCu);
  }

  v7 = 0;
LABEL_50:
}

void sub_1000AF2D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 112);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF4C8;
  block[3] = &unk_10051DB68;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

id sub_1000AF388(uint64_t a1)
{
  result = [*(a1 + 32) _isCloudSyncEnabledForZone:*(a1 + 40)];
  if (result)
  {
    v3 = *(*(a1 + 32) + 56);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);

    return [v3 handleRateLimitedError:v4 forZoneInfo:v5 operationType:v6];
  }

  return result;
}

id sub_1000AF3E4(uint64_t a1)
{
  result = [*(a1 + 32) _isCloudSyncEnabledForZone:*(a1 + 40)];
  if (result)
  {
    v3 = *(*(a1 + 32) + 56);
    v5 = *(a1 + 56);
    v4 = *(a1 + 64);
    v6 = *(a1 + 48);

    return [v3 retryForTypeOnRetryManagerQueue:v4 zoneInfo:v6 error:v5 retryAfterInterval:0.0];
  }

  return result;
}

id sub_1000AF444(uint64_t a1)
{
  result = [*(a1 + 32) _isCloudSyncEnabledForZone:*(a1 + 40)];
  if (result)
  {
    v3 = *(*(a1 + 32) + 56);
    v5 = *(a1 + 56);
    v4 = *(a1 + 64);
    v6 = *(a1 + 48);

    return [v3 retryForTypeOnRetryManagerQueue:v4 zoneInfo:v6 error:v5 retryAfterInterval:0.0];
  }

  return result;
}

id sub_1000AF4C8(uint64_t a1)
{
  result = sub_10031BA50(*(a1 + 32));
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v3 _resetZoneWithZoneInfo:v4];
  }

  return result;
}

void sub_1000AF79C(uint64_t a1)
{
  if (!AFIsATV())
  {
    goto LABEL_35;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 40) + 152);
    v5 = v3;
    v6 = [v4 allKeys];
    *buf = 136315651;
    v55 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke";
    v56 = 2113;
    v57 = v2;
    v58 = 2112;
    v59 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s iCloud AltDSID is specified, choosing container for %{private}@ from %@", buf, 0x20u);

    v2 = *(a1 + 32);
  }

  v7 = [*(a1 + 40) _trackedCKContainerForiCloudAltDSID:v2];
  v8 = v7;
  if (*(a1 + 72) == 1)
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v55 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Apple TV only supports download.", buf, 0xCu);
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = [AFError errorWithCode:13];
      (*(v10 + 16))(v10, v11);
    }

    goto LABEL_25;
  }

  if (!v7)
  {
LABEL_35:
    if ([*(a1 + 40) _isCloudSyncEnabledForZone:@"com.apple.assistant.multiuser.shared"])
    {
      v17 = *(a1 + 73);
      if (*(a1 + 72) == 1)
      {
        v18 = AFSiriLogContextDaemon;
        v19 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
        if (v17)
        {
          if (v19)
          {
            *buf = 136315138;
            v55 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke";
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s upload & download", buf, 0xCu);
          }

          v20 = [*(*(a1 + 40) + 216) dataStore];
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_1000B0028;
          v45[3] = &unk_100519060;
          v21 = *(a1 + 48);
          v45[4] = *(a1 + 40);
          v46 = v21;
          v47 = 0;
          v48 = *(a1 + 56);
          [v20 synchronizeUsingActivity:v46 completion:v45];

          v22 = v46;
        }

        else
        {
          if (v19)
          {
            *buf = 136315138;
            v55 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke_3";
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s upload only", buf, 0xCu);
          }

          v34 = [*(*(a1 + 40) + 216) dataStore];
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_1000B01DC;
          v43[3] = &unk_10051C718;
          v35 = *(a1 + 48);
          v43[4] = *(a1 + 40);
          v44 = *(a1 + 56);
          [v34 synchronizeUsingActivity:v35 completion:v43];

          v22 = v44;
        }
      }

      else
      {
        if (!*(a1 + 73))
        {
          goto LABEL_24;
        }

        v29 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v55 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s download only", buf, 0xCu);
        }

        v30 = +[ADPreferences sharedPreferences];
        [v30 setMultiUserSharedDataServerChangeToken:0];

        v31 = *(a1 + 40);
        v32 = *(a1 + 48);
        v33 = v31[27];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_1000B036C;
        v41[3] = &unk_10051DD98;
        v41[4] = v31;
        v42 = *(a1 + 56);
        [v31 _fetchChangesWithZoneInfo:v33 retryCount:0 useSharedDatabase:0 activity:v32 container:0 mirror:0 completion:v41];
        v22 = v42;
      }
    }

    else
    {
      v23 = dispatch_time(0, 120000000000);
      v24 = *(a1 + 40);
      v25 = *(v24 + 112);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B0474;
      block[3] = &unk_100510B88;
      v26 = *(a1 + 64);
      block[4] = v24;
      v39 = v26;
      v40 = *(a1 + 72);
      v37 = *(a1 + 48);
      v38 = *(a1 + 56);
      dispatch_after(v23, v25, block);
      v27 = *(a1 + 56);
      if (v27)
      {
        v28 = [AFError errorWithCode:4016];
        (*(v27 + 16))(v27, v28);
      }

      v22 = v37;
    }

LABEL_24:
    v8 = 0;
    goto LABEL_25;
  }

  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [v8 containerIdentifier];
    *buf = 136315394;
    v55 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke";
    v56 = 2112;
    v57 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Found container: %@", buf, 0x16u);
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000AFE70;
  v49[3] = &unk_100510B60;
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  v53 = v15;
  v49[4] = v16;
  v8 = v8;
  v50 = v8;
  v51 = *(a1 + 32);
  v52 = *(a1 + 48);
  [v8 accountInfoWithCompletionHandler:v49];

LABEL_25:
}

void sub_1000AFE70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(v10 + 112);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B06AC;
    v12[3] = &unk_1005183C8;
    v12[4] = v10;
    v13 = v9;
    v14 = v5;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    dispatch_async(v11, v12);

    goto LABEL_7;
  }

  *buf = 136315394;
  v19 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke";
  v20 = 2112;
  v21 = v6;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Fetch account Info with Error %@", buf, 0x16u);
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *(a1 + 64);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }

LABEL_7:
}

void sub_1000B0028(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke";
    v18 = 1024;
    v19 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s result %d", buf, 0x12u);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B05DC;
    block[3] = &unk_10051E0D8;
    v12 = *(a1 + 32);
    v5 = *(v12 + 112);
    v6 = *(&v12 + 1);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v14 = v12;
    v15 = v9;
    dispatch_async(v5, block);

    return;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = [AFError errorWithCode:4016 description:@"data store failed to sync"];
    (*(v10 + 16))(v10, v11);
  }
}

void sub_1000B01DC(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke";
    v16 = 1024;
    v17 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s result %d", &v14, 0x12u);
  }

  v5 = *(a1 + 32);
  v6 = v5[17];
  if (v6)
  {
    v7 = [v6 keyValueRecordZoneInfo];
    [v5 _synchronizeMirroredContainer:v7];

    v8 = *(a1 + 32);
    v9 = [v8[17] multiUserRecordZoneInfo];
    [v8 _synchronizeMirroredContainer:v9];

    v10 = *(a1 + 32);
    v11 = [v10[17] accountStatusRecordZoneInfo];
    [v10 _synchronizeMirroredContainer:v11];
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    if (a2)
    {
      (*(v12 + 16))(v12, 0);
    }

    else
    {
      v13 = [AFError errorWithCode:4016 description:@"data store failed to sync"];
      (*(v12 + 16))(v12, v13);
    }
  }
}

void sub_1000B036C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFIsHorseman();
  if (v3 || !v4)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_9;
    }
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s fetching data from shared DB", &v9, 0xCu);
    }

    [*(*(a1 + 32) + 40) fetchSharedZones];
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_9:
      v7();
    }
  }
}

void sub_1000B0474(uint64_t a1)
{
  if ([*(a1 + 32) _isCloudSyncEnabledForZone:@"com.apple.assistant.multiuser.shared"])
  {
    v2 = *(a1 + 56);
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v7 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke";
      v8 = 2048;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Retrying because CloudKit was not ready on try (%lu)", buf, 0x16u);
    }

    [*(a1 + 32) _forceMultiUserSync:*(a1 + 64) download:*(a1 + 65) retryCount:v2 + 1 activity:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = [AFError errorWithCode:4016];
      (*(v4 + 16))(v4);
    }
  }
}

void sub_1000B05DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v1[27];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B0694;
  v5[3] = &unk_10051D2F0;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v1 _fetchChangesWithZoneInfo:v3 retryCount:1 useSharedDatabase:0 activity:v2 container:v4 mirror:0 completion:v5];
}

uint64_t sub_1000B0694(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000B06AC(uint64_t a1)
{
  [*(a1 + 32) _trackCKContainer:*(a1 + 40) accountInfo:*(a1 + 48) foriCloudAltDSID:*(a1 + 56)];
  if ([*(a1 + 32) _isCloudSyncEnabledForZone:@"com.apple.assistant.multiuser.shared" accountInfo:*(a1 + 48)])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = v2[27];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B07D4;
    v8[3] = &unk_10051DD98;
    v8[4] = v2;
    v5 = *(a1 + 64);
    v9 = *(a1 + 72);
    [v2 _fetchChangesWithZoneInfo:v4 retryCount:0 useSharedDatabase:0 activity:v5 container:v3 mirror:0 completion:v8];
  }

  else
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

void sub_1000B07D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFIsHorseman();
  if (v3 || !v4)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v9 = 136315394;
        v10 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke";
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s fetching data failed with error %@", &v9, 0x16u);
        v7 = *(a1 + 40);
      }

      (*(v7 + 16))(v7, v3);
    }
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADCloudKitManager _forceMultiUserSync:download:retryCount:activity:iCloudAltDSID:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s fetching data from shared DB", &v9, 0xCu);
    }

    [*(*(a1 + 32) + 40) fetchSharedZones];
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }
}

void sub_1000B0C6C(uint64_t a1)
{
  v2 = [*(a1 + 32) _verifyAccountWithManateeRequired:0];
  if (v2)
  {
    v3 = [*(*(a1 + 32) + 120) accountStatus];
    v4 = AFSiriLogContextDaemon;
    if (v3 == 3)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v26 = "[ADCloudKitManager hasEverSetLanguageCodeWithCompletion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s No iCloud account signed in", buf, 0xCu);
      }

      v5 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "[ADCloudKitManager hasEverSetLanguageCodeWithCompletion:]_block_invoke";
        v27 = 2112;
        v28 = v2;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error encountered (%@)", buf, 0x16u);
      }

      v5 = *(*(a1 + 40) + 16);
    }

    v5();
  }

  else
  {
    v6 = kAFSessionLanguage;
    v7 = [[CKRecordZoneID alloc] initWithZoneName:@"com.apple.assistant.backedup" ownerName:CKCurrentUserDefaultName];
    v8 = [[CKRecordID alloc] initWithRecordName:v6 zoneID:v7];
    v9 = [CKFetchRecordsOperation alloc];
    v24 = v8;
    v10 = [NSArray arrayWithObjects:&v24 count:1];
    v11 = [v9 initWithRecordIDs:v10];

    [v11 setDesiredKeys:&__NSArray0__struct];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B10B0;
    v21[3] = &unk_100514DE0;
    v12 = v8;
    v22 = v12;
    v23 = *(a1 + 40);
    [v11 setFetchRecordsCompletionBlock:v21];
    v13 = [*(*(a1 + 32) + 128) privateCloudDatabase];

    if (v13)
    {
      v14 = objc_alloc_init(CKOperationConfiguration);
      [v14 setTimeoutIntervalForRequest:10.0];
      [v11 setConfiguration:v14];
      [v11 setQualityOfService:25];
      v15 = [*(*(a1 + 32) + 128) privateCloudDatabase];
      [v15 addOperation:v11];

      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v26 = "[ADCloudKitManager hasEverSetLanguageCodeWithCompletion:]_block_invoke";
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Dispatched operation %@", buf, 0x16u);
      }

      v17 = dispatch_time(0, 10000000000);
      v18 = *(*(a1 + 32) + 112);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000B1400;
      v19[3] = &unk_10051DFE8;
      v20 = v11;
      dispatch_after(v17, v18, v19);
    }

    else
    {
      v14 = [AFError errorWithCode:4015];
      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_1000B10B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v20 = 136315394;
    v21 = "[ADCloudKitManager hasEverSetLanguageCodeWithCompletion:]_block_invoke";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Operation callback %@", &v20, 0x16u);
  }

  if (!v6)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_25;
  }

  v8 = [AFError errorWithCode:4021];
  v9 = [v6 domain];
  if (![v9 isEqualToString:CKErrorDomain])
  {
    goto LABEL_19;
  }

  v10 = [v6 code];

  if (v10 != 2)
  {
    goto LABEL_20;
  }

  v11 = [v6 userInfo];
  v9 = [v11 objectForKey:CKPartialErrorsByItemIDKey];

  v12 = [v9 objectForKey:*(a1 + 32)];
  v13 = [v12 domain];
  if ([v13 isEqualToString:CKErrorDomain])
  {
    v14 = [v12 code];

    if (v14 != 11)
    {
      goto LABEL_12;
    }

    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[ADCloudKitManager hasEverSetLanguageCodeWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Language Session Record not found", &v20, 0xCu);
    }

    v13 = v8;
    v8 = 0;
  }

LABEL_12:
  v16 = [v12 domain];
  if (![v16 isEqualToString:CKErrorDomain])
  {
LABEL_17:

    goto LABEL_18;
  }

  v17 = [v12 code];

  if (v17 == 26)
  {
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[ADCloudKitManager hasEverSetLanguageCodeWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Zone not found", &v20, 0xCu);
    }

    v16 = v8;
    v8 = 0;
    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
LABEL_20:
  if (v8)
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[ADCloudKitManager hasEverSetLanguageCodeWithCompletion:]_block_invoke";
      v22 = 2112;
      v23 = v6;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s %@", &v20, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();

LABEL_25:
}

id sub_1000B1400(uint64_t a1)
{
  result = [*(a1 + 32) isFinished];
  if ((result & 1) == 0)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 136315394;
      v6 = "[ADCloudKitManager hasEverSetLanguageCodeWithCompletion:]_block_invoke";
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Cancelling %@", &v5, 0x16u);
    }

    return [*(a1 + 32) cancel];
  }

  return result;
}

void sub_1000B1728(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v42 = v5;
  if ([v4 count])
  {
    if (v5)
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v41 = v6;
        *buf = 136315650;
        v65 = "[ADCloudKitManager _fetchManifest:legacy:language:completion:]_block_invoke";
        v66 = 2048;
        v67 = [v4 count];
        v68 = 2112;
        v69 = v5;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%s (%lu) Devices found but there was an error. Continuing as it is likely a partial error. Error: (%@)", buf, 0x20u);
      }
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = *(a1 + 32);
    v7 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (!v7)
    {
      v9 = 0;
      goto LABEL_52;
    }

    v8 = v7;
    v9 = 0;
    v10 = *v58;
    v11 = &RPOptionStatusFlags_ptr;
    v43 = v4;
    v46 = *v58;
    while (1)
    {
      v12 = 0;
      v44 = v8;
      do
      {
        if (*v58 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v57 + 1) + 8 * v12);
        v14 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v65 = "[ADCloudKitManager _fetchManifest:legacy:language:completion:]_block_invoke";
          v66 = 2112;
          v67 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Processing %@", buf, 0x16u);
        }

        v15 = [v4 objectForKey:v13];
        v16 = v15;
        if (v15)
        {
          v17 = v4;
          v50 = v12;
          v18 = v15;
          v62[0] = objc_opt_class();
          v19 = v11;
          v62[1] = objc_opt_class();
          v62[2] = objc_opt_class();
          v20 = [v11[124] arrayWithObjects:v62 count:3];
          v21 = [NSSet setWithArray:v20];
          v49 = v18;
          v22 = [v18 _ad_dataOfClasses:v21];

          objc_opt_class();
          v48 = v22;
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;
          v25 = [v24 objectForKey:*(a1 + 40)];
          v51 = v25;
          v52 = v24;
          if (v25)
          {
            v26 = v25;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              v53 = 0u;
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v27 = v26;
              v28 = [v27 countByEnumeratingWithState:&v53 objects:v61 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v54;
                do
                {
                  for (i = 0; i != v29; i = i + 1)
                  {
                    if (*v54 != v30)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v32 = *(*(&v53 + 1) + 8 * i);
                    if (objc_opt_isKindOfClass())
                    {
                      if (!v9)
                      {
                        v9 = objc_opt_new();
                      }

                      [v9 addObject:v32];
                      v33 = AFSiriLogContextDaemon;
                      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315650;
                        v65 = "[ADCloudKitManager _fetchManifest:legacy:language:completion:]_block_invoke";
                        v66 = 2112;
                        v67 = v32;
                        v68 = 2112;
                        v69 = v13;
                        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Added a maybeDevice: %@ for %@", buf, 0x20u);
                      }
                    }

                    else
                    {
                      v34 = AFSiriLogContextDaemon;
                      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315394;
                        v65 = "[ADCloudKitManager _fetchManifest:legacy:language:completion:]_block_invoke";
                        v66 = 2112;
                        v67 = v32;
                        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s Malformed device in manifest: %@", buf, 0x16u);
                      }
                    }
                  }

                  v29 = [v27 countByEnumeratingWithState:&v53 objects:v61 count:16];
                }

                while (v29);
              }

              v4 = v43;
              v8 = v44;
              v10 = v46;
              v11 = &RPOptionStatusFlags_ptr;
              v16 = v49;
              v12 = v50;
              v35 = v48;
              goto LABEL_40;
            }

            v11 = v19;
            v37 = AFSiriLogContextDaemon;
            v4 = v17;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v65 = "[ADCloudKitManager _fetchManifest:legacy:language:completion:]_block_invoke";
              _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s Language manifest record is malformed", buf, 0xCu);
            }

            v16 = v49;
            v12 = v50;
          }

          else
          {
            v36 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              v39 = *(a1 + 40);
              *buf = 136315650;
              v65 = "[ADCloudKitManager _fetchManifest:legacy:language:completion:]_block_invoke";
              v66 = 2112;
              v67 = v39;
              v68 = 2112;
              v69 = v24;
              _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s Language manifest record does not contain language %@ %@", buf, 0x20u);
            }

            v11 = &RPOptionStatusFlags_ptr;
            v16 = v49;
            v4 = v17;
          }

          v35 = v48;
          v10 = v46;
LABEL_40:
          if (![v9 count])
          {
            v38 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v65 = "[ADCloudKitManager _fetchManifest:legacy:language:completion:]_block_invoke";
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s No devices found", buf, 0xCu);
            }

            v9 = 0;
          }
        }

        v12 = v12 + 1;
      }

      while (v12 != v8);
      v8 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
      if (!v8)
      {
LABEL_52:

        goto LABEL_53;
      }
    }
  }

  v40 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v65 = "[ADCloudKitManager _fetchManifest:legacy:language:completion:]_block_invoke";
    v66 = 2112;
    v67 = v5;
    _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s No devices were found. Failed to fetch language manifest with error: (%@)", buf, 0x16u);
  }

  v9 = 0;
LABEL_53:
  (*(*(a1 + 48) + 16))();
}

void sub_1000B1F14(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) _fetchManifest:*(a1 + 40) legacy:1 language:*(a1 + 48) completion:*(a1 + 56)];
  }
}

void sub_1000B2030(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCloudKitManager getDevicesWithAvailablePHSAssetsOnDeviceCheck:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  v3 = [*(a1 + 32) _verifyAccountWithManateeRequired:1];
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[ADCloudKitManager getDevicesWithAvailablePHSAssetsOnDeviceCheck:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error encountered (%@)", &v6, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [*(*(a1 + 32) + 216) dataStore];
    [v5 fetchDeviceTypesForAllLanguages:*(a1 + 40)];
  }
}

void sub_1000B2334(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 40) + 152);
      v5 = v3;
      v6 = [v4 allKeys];
      *buf = 136315651;
      v21 = "[ADCloudKitManager _devicesWithAvailablePHSAssetsForLanguage:iCloudAltDSID:completion:]_block_invoke";
      v22 = 2113;
      v23 = v2;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Choosing container for %{private}@ from %@", buf, 0x20u);

      v2 = *(a1 + 32);
    }

    v2 = [*(a1 + 40) _trackedCKContainerForiCloudAltDSID:v2];
  }

  v7 = +[AFPreferences sharedPreferences];
  v8 = [v7 bestSupportedLanguageCodeForLanguageCode:*(a1 + 48)];

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 48);
    *buf = 136315650;
    v21 = "[ADCloudKitManager _devicesWithAvailablePHSAssetsForLanguage:iCloudAltDSID:completion:]_block_invoke";
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Resolved best language '%@' for provided language '%@'", buf, 0x20u);
  }

  v11 = [*(a1 + 40) _verifyAccountWithManateeRequired:1];
  if (v11)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    objc_initWeak(buf, *(*(a1 + 40) + 112));
    v12 = [*(*(a1 + 40) + 216) dataStore];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B2624;
    v15[3] = &unk_100510B10;
    objc_copyWeak(&v19, buf);
    v13 = *(a1 + 56);
    v14 = *(a1 + 40);
    v18 = v13;
    v15[4] = v14;
    v16 = v2;
    v17 = v8;
    [v12 fetchDeviceTypesForLanguage:v17 completion:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

void sub_1000B25F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B2624(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B2720;
  block[3] = &unk_10051D2A0;
  v11 = v3;
  v5 = *(a1 + 56);
  v9 = *(a1 + 32);
  v6 = *(&v9 + 1);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  dispatch_async(WeakRetained, block);
}

void sub_1000B2720(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) privateCloudDatabase];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B2814;
    v6[3] = &unk_10051CD10;
    v5 = *(a1 + 56);
    v7 = *(a1 + 64);
    [v3 _fetchManifest:v4 language:v5 completion:v6];
  }
}

void sub_1000B28D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[ADCloudKitManager getDevicesWithAvailablePHSAssetsForLanguage:iCloudAltDSID:completion:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Error encountered (%@)", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000B2EB0(uint64_t a1)
{
  [*(a1 + 32) _triggerVoiceProfileUploadPostBuddyOrCloudSyncChange];
  v2 = [*(*(a1 + 32) + 216) zone];

  if (v2)
  {
    [*(a1 + 32) _startVoiceTriggerSyncTimerWithInterval:0.0];
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[ADCloudKitManager triggerVoiceProfileUploadWithCompletion:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s zone is nil", &v8, 0xCu);
    }

    v6 = [AFError errorWithCode:4020];
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }
  }
}

void sub_1000B3138(uint64_t a1)
{
  v2 = +[AFPreferences sharedPreferences];
  [v2 setCloudSyncEnabled:0];

  [objc_opt_class() _setAppleAccountSiriStateEnabled:0 withCompletion:0];
  v3 = +[ADPreferences sharedPreferences];
  [v3 setHasSetUpAccountStatusRecordZoneSubscription:0];
  [v3 setAccountStatusServerChangeToken:0];
  [v3 setHasSetUpKeyValueRecordZoneSubscription:0];
  [v3 setKeyValueServerChangeToken:0];
  [v3 setHasSetUpVoiceTriggerRecordZoneSubscription:0];
  [v3 setVoiceTriggerServerChangeToken:0];
  [v3 setPhsAssetManifest:0 onSharedZone:1];
  [v3 setPhsAssetManifest:0 onSharedZone:0];
  [v3 setHasSetupMultiUserSharedRecordZoneSubscription:0];
  [v3 setMultiUserSharedDataNeedsSync:1];
  [v3 setMultiUserSharedDataServerChangeToken:0];
  [*(*(a1 + 32) + 40) reset];
  [v3 synchronize];
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = sub_1000B36D4;
  v40[4] = sub_1000B36E4;
  v41 = 0;
  v5 = *(a1 + 32);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000B36EC;
  v37[3] = &unk_100510A98;
  v37[4] = v5;
  v39 = v40;
  v6 = v4;
  v38 = v6;
  [v5 _saveCloudSyncEnabledRecord:0 mirror:0 qualityOfService:25 completion:v37];
  dispatch_group_enter(v6);
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_1000B36D4;
  v35[4] = sub_1000B36E4;
  v36 = 0;
  v7 = [[CKRecordZoneID alloc] initWithZoneName:@"com.apple.assistant.backedup" ownerName:CKCurrentUserDefaultName];
  v8 = *(a1 + 32);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000B37D4;
  v32[3] = &unk_100510AC0;
  v34 = v35;
  v9 = v6;
  v33 = v9;
  [v8 _deleteRecordZoneWithZoneID:v7 qualityOfService:25 completion:v32];
  dispatch_group_enter(v9);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_1000B36D4;
  v30[4] = sub_1000B36E4;
  v31 = 0;
  v10 = +[CKKnowledgeStore defaultSynchedKnowledgeStore];
  if (v10)
  {
    dispatch_group_enter(v9);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000B3834;
    v27[3] = &unk_100510AC0;
    v29 = v30;
    v28 = v9;
    [v10 disableSyncAndDeleteCloudDataWithCompletionHandler:v27];
  }

  dispatch_group_enter(v9);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_1000B36D4;
  v25[4] = sub_1000B36E4;
  v26 = 0;
  v11 = [[CKRecordZoneID alloc] initWithZoneName:@"com.apple.assistant.multiuser.shared" ownerName:CKCurrentUserDefaultName];
  v12 = *(a1 + 32);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B3894;
  v22[3] = &unk_100510AC0;
  v24 = v25;
  v13 = v9;
  v23 = v13;
  [v12 _deleteRecordZoneWithZoneID:v11 qualityOfService:25 completion:v22];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAFCloudStorageDeletedByUserDarwinNotification, 0, 0, 1u);
  v15 = *(*(a1 + 32) + 112);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B38F4;
  v16[3] = &unk_100510AE8;
  v17 = *(a1 + 40);
  v18 = v40;
  v19 = v35;
  v20 = v30;
  v21 = v25;
  dispatch_group_notify(v13, v15, v16);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v40, 8);
}

uint64_t sub_1000B36D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B36EC(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = AFIsMultiUserCompanion();
  if (v4 || !v5)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B39AC;
    block[3] = &unk_10051C588;
    block[4] = v6;
    v9 = *(a1 + 40);
    v8 = v9;
    v11 = v9;
    dispatch_async(v7, block);
  }
}

void sub_1000B37D4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000B3834(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000B3894(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000B38F4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(*(a1[5] + 8) + 40);
    if (v3 || (v3 = *(*(a1[6] + 8) + 40)) != 0 || (v3 = *(*(a1[7] + 8) + 40)) != 0 || (v3 = *(*(a1[8] + 8) + 40)) != 0)
    {
      v4 = v3;
      v2 = a1[4];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    (*(v2 + 16))();
  }
}

void sub_1000B39AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B3A50;
  v4[3] = &unk_100510A70;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _saveCloudSyncEnabledRecord:0 mirror:1 qualityOfService:25 completion:v4];
}

void sub_1000B3A50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADCloudKitManager disableAndDeleteCloudSyncWithCompletion:]_block_invoke_4";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s synced cloud sync status to mirror with error (%@)", &v8, 0x16u);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000B3BB4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  if (v2)
  {
    v4 = [v2 dataStore];
    [v4 synchronizeWithCompletion:0];
    [v4 synchronizeKeychainPreferencesWithCompletion:0];
    v3 = [*(*(a1 + 32) + 176) dataStore];
    [v3 synchronizeWithCompletion:0];
  }
}

void sub_1000B3DA8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B3EC4;
  v12[3] = &unk_100510A20;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v13 = v3;
  v14 = v4;
  [v2 fetchZoneShare:v12];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B40B4;
  v8[3] = &unk_100510A48;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  [v5 fetchValueForKeyFromSharedStore:@"ADCloudKitShareParticipants" completion:v8];
}

void sub_1000B3EC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (v6 && !a4)
  {
    [*(a1 + 32) setPermission:3];
    if ([*(a1 + 32) role] == 3 || objc_msgSend(*(a1 + 32), "role") == 2)
    {
      [v6 addParticipant:*(a1 + 32)];
      v7 = *(a1 + 40);
      v8 = *(v7 + 24);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000B4468;
      v15[3] = &unk_10051C9D0;
      v15[4] = v7;
      v16 = 0;
      [v8 saveZoneShare:v6 completion:v15];
    }

    else
    {
      v9 = [*(a1 + 32) role];
      v10 = @"You can only add PrivateUsers as participants on a share";
      if (v9 == 1)
      {
        v10 = @"You can have only one owner on a share";
      }

      v11 = v10;
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v14 = v12;
        *buf = 136315650;
        v18 = "[ADCloudKitManager saveParticipantsOnShare:forOwner:participants:]_block_invoke_2";
        v19 = 2112;
        v20 = v11;
        v21 = 2048;
        v22 = [v13 role];
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Error: %@, Participant Role: %lu", buf, 0x20u);
      }

      [*(a1 + 40) handleCloudKitError:0 forZone:@"com.apple.assistant.multiuser.shared" mirror:1 operationType:5];
    }
  }
}

void sub_1000B40B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(NSMutableDictionary);
  }

  v8 = v7;
  v9 = [*(a1 + 32) participantID];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"unknownParticipantID";
  }

  [v8 setObject:v11 forKey:*(a1 + 40)];
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v20 = "[ADCloudKitManager saveParticipantsOnShare:forOwner:participants:]_block_invoke_2";
    v21 = 2113;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s participantID (%{private}@)", buf, 0x16u);
  }

  v13 = [[NSDictionary alloc] initWithObjectsAndKeys:{v8, @"ADCloudKitShareParticipants", 0}];
  v14 = *(a1 + 48);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000B4290;
  v17[3] = &unk_10051C9D0;
  v17[4] = v14;
  v18 = v8;
  v15 = v8;
  v16 = v14;
  [v16 addDictionaryToSharedStore:v13 completion:v17];
}

void sub_1000B4290(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[ADCloudKitManager saveParticipantsOnShare:forOwner:participants:]_block_invoke";
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unable to save share participants list with (%@)", buf, 0x16u);
    }

    v5 = +[AFAnalytics sharedAnalytics];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B4460;
    v8[3] = &unk_10051DF78;
    v6 = v3;
    v9 = v6;
    [v5 logEventWithType:6104 contextProvider:v8];

    [*(a1 + 32) handleCloudKitError:v6 forZone:@"com.apple.assistant.multiuser.shared" mirror:1 operationType:5];
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    *buf = 136315395;
    v11 = "[ADCloudKitManager saveParticipantsOnShare:forOwner:participants:]_block_invoke_2";
    v12 = 2113;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Saved (%{private}@)", buf, 0x16u);
  }
}

id *sub_1000B4468(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] handleCloudKitError:result[5] forZone:@"com.apple.assistant.multiuser.shared" mirror:1 operationType:5];
  }

  return result;
}

void sub_1000B4664(uint64_t a1)
{
  if ([*(*(a1 + 32) + 120) accountStatus] != 1 || (objc_msgSend(*(*(a1 + 32) + 120), "supportsDeviceToDeviceEncryption") & 1) == 0 && (*(*(a1 + 32) + 16) & 1) == 0)
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v52 = "[ADCloudKitManager shareWithOwner:addShare:retryCount:homes:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Account not ready.", buf, 0xCu);
    }

    v13 = dispatch_time(0, 180000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B4B7C;
    block[3] = &unk_100519338;
    v35 = *(a1 + 32);
    v14 = *(v35 + 112);
    v15 = *(&v35 + 1);
    v50 = *(a1 + 72);
    v49 = *(a1 + 64);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    *&v18 = v16;
    *(&v18 + 1) = v17;
    v47 = v35;
    v48 = v18;
    dispatch_after(v13, v14, block);

    v11 = *(&v47 + 1);
    goto LABEL_13;
  }

  v2 = &AFSiriLogContextDaemon;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = @"delete";
    v5 = *(a1 + 40);
    if (*(a1 + 72))
    {
      v4 = @"add";
    }

    *buf = 136315650;
    v52 = "[ADCloudKitManager shareWithOwner:addShare:retryCount:homes:completion:]_block_invoke";
    v53 = 2112;
    v54 = v4;
    v55 = 2112;
    v56 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %@ for homeOwnerID (%@)", buf, 0x20u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  if (v7)
  {
LABEL_9:
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000B4D04;
    v37[3] = &unk_1005109F8;
    v40 = *(a1 + 72);
    v8 = *(a1 + 56);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v39 = v8;
    v37[4] = v9;
    v38 = v10;
    [v7 fetchZoneShare:v37];

    v11 = v39;
LABEL_13:

    return;
  }

  v19 = [*(v6 + 136) container];
  v20 = [*(*(a1 + 32) + 136) multiUserRecordZoneInfo];
  v21 = *(a1 + 32);
  if (*(v21 + 16) == 1)
  {
    v22 = *(v21 + 128);

    v19 = v22;
  }

  if (v19)
  {
    if (v20)
    {
      v23 = [v20 zone];

      if (v23)
      {
        v24 = [[ADCloudKitZoneShareCreator alloc] initWithQueue:*(*(a1 + 32) + 112) container:v19 sharedZone:v20];
        v25 = *(a1 + 32);
        v26 = *(v25 + 24);
        *(v25 + 24) = v24;

        v7 = *(*(a1 + 32) + 24);
        goto LABEL_9;
      }
    }
  }

  v27 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    if (v20)
    {
      v2 = [v20 zone];
      v34 = @"container";
      if (!v2)
      {
        v34 = @"[zoneInfo zone]";
      }
    }

    else
    {
      v34 = @"zone";
    }

    *buf = 136315394;
    v52 = "[ADCloudKitManager shareWithOwner:addShare:retryCount:homes:completion:]_block_invoke";
    v53 = 2112;
    v54 = v34;
    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s %@ not found.", buf, 0x16u);
    if (v20)
    {
    }
  }

  v28 = dispatch_time(0, 180000000000);
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000B4C40;
  v41[3] = &unk_100519338;
  v36 = *(a1 + 32);
  v29 = *(v36 + 112);
  v30 = *(&v36 + 1);
  v45 = *(a1 + 72);
  v44 = *(a1 + 64);
  v31 = *(a1 + 48);
  v32 = *(a1 + 56);
  *&v33 = v31;
  *(&v33 + 1) = v32;
  v42 = v36;
  v43 = v33;
  dispatch_after(v28, v29, v41);
}

id sub_1000B4B7C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitManager shareWithOwner:addShare:retryCount:homes:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Retrying sharing.", &v4, 0xCu);
  }

  return [*(a1 + 32) shareWithOwner:*(a1 + 40) addShare:*(a1 + 72) retryCount:*(a1 + 64) + 1 homes:*(a1 + 48) completion:*(a1 + 56)];
}

id sub_1000B4C40(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitManager shareWithOwner:addShare:retryCount:homes:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Retrying sharing.", &v4, 0xCu);
  }

  return [*(a1 + 32) shareWithOwner:*(a1 + 40) addShare:*(a1 + 72) retryCount:*(a1 + 64) + 1 homes:*(a1 + 48) completion:*(a1 + 56)];
}

void sub_1000B4D04(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v27 = "[ADCloudKitManager shareWithOwner:addShare:retryCount:homes:completion:]_block_invoke";
      v28 = 2112;
      v29 = v9;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Retrying for sharing error (%@)", buf, 0x16u);
    }

    if (*(a1 + 56))
    {
      v11 = 5;
    }

    else
    {
      v14 = +[ADPreferences sharedPreferences];
      v25 = *(a1 + 40);
      v15 = [NSArray arrayWithObjects:&v25 count:1];
      [v14 setMultiUserHomeUUIDsForDeletion:v15];

      v11 = 6;
    }

    [*(a1 + 32) handleCloudKitError:v9 forZone:@"com.apple.assistant.multiuser.shared" mirror:1 operationType:v11];
    v16 = *(a1 + 48);
    if (v16)
    {
      v13 = *(v16 + 16);
      goto LABEL_12;
    }
  }

  else
  {
    if (*(a1 + 56) != 1)
    {
      v18 = *(a1 + 32);
      v17 = *(a1 + 40);
      v19 = *(v18 + 112);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000B4F68;
      v20[3] = &unk_10051D2A0;
      v20[4] = v18;
      v21 = v17;
      v22 = v7;
      v23 = v8;
      v24 = *(a1 + 48);
      dispatch_async(v19, v20);

      goto LABEL_14;
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = *(v12 + 16);
LABEL_12:
      v13();
    }
  }

LABEL_14:
}

void sub_1000B50A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AFAnalytics sharedAnalytics];
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_1000B5A50;
    v91[3] = &unk_10051DF78;
    v8 = v6;
    v92 = v8;
    [v7 logEventWithType:6104 contextProvider:v91];

    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v100 = "[ADCloudKitManager removeHomeOwnerCKParticipantAssociation:onShare:onContainer:completion:]_block_invoke";
      v101 = 2112;
      v102 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to fetch participants with error (%@)", buf, 0x16u);
    }

    v10 = +[ADPreferences sharedPreferences];
    v98 = *(a1 + 32);
    v11 = [NSArray arrayWithObjects:&v98 count:1];
    [v10 setMultiUserHomeUUIDsForDeletion:v11];

    [*(a1 + 40) handleCloudKitError:v8 forZone:@"com.apple.assistant.multiuser.shared" mirror:1 operationType:6];
    v12 = *(a1 + 64);
    if (v12)
    {
      (*(v12 + 16))(v12, *(a1 + 48), *(a1 + 56), v8);
    }

    v13 = v92;
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v14 = [v5 countByEnumeratingWithState:&v87 objects:v97 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v88;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v88 != v17)
          {
            objc_enumerationMutation(v5);
          }

          v19 = [v5 objectForKey:*(*(&v87 + 1) + 8 * i)];
          v16 += [v19 isEqualToString:@"unknownParticipantID"];
        }

        v15 = [v5 countByEnumeratingWithState:&v87 objects:v97 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v20 = [v5 objectForKey:*(a1 + 32)];
    v13 = v20;
    if (v20 && [v20 isEqualToString:@"unknownParticipantID"])
    {
      v21 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v100 = "[ADCloudKitManager removeHomeOwnerCKParticipantAssociation:onShare:onContainer:completion:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s Removing an unknown association.", buf, 0xCu);
      }

      [*(a1 + 40) removeHomeOwnerCKParticipantAssociation:*(a1 + 32) participants:v5 completion:*(a1 + 64)];
      if (v16 == 1)
      {
        v62 = v13;
        v22 = [*(a1 + 48) participants];
        v61 = objc_alloc_init(NSMutableArray);
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        obj = v22;
        v23 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v84;
          v63 = *v84;
          do
          {
            v26 = 0;
            v64 = v24;
            do
            {
              if (*v84 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v83 + 1) + 8 * v26);
              v28 = [v27 participantID];
              if ([v27 role] == 1)
              {
                v29 = 0;
              }

              else
              {
                v30 = a1;
                v81 = 0u;
                v82 = 0u;
                v79 = 0u;
                v80 = 0u;
                v31 = v5;
                v32 = [v31 countByEnumeratingWithState:&v79 objects:v95 count:16];
                if (v32)
                {
                  v33 = v32;
                  v34 = *v80;
                  while (2)
                  {
                    for (j = 0; j != v33; j = j + 1)
                    {
                      if (*v80 != v34)
                      {
                        objc_enumerationMutation(v31);
                      }

                      v36 = [v31 objectForKey:*(*(&v79 + 1) + 8 * j)];
                      if ([v36 isEqualToString:v28])
                      {
                        v29 = v62;

                        goto LABEL_38;
                      }
                    }

                    v33 = [v31 countByEnumeratingWithState:&v79 objects:v95 count:16];
                    if (v33)
                    {
                      continue;
                    }

                    break;
                  }
                }

                [v61 addObject:v27];
                v29 = 0;
LABEL_38:
                a1 = v30;
                v25 = v63;
                v24 = v64;
              }

              v26 = v26 + 1;
            }

            while (v26 != v24);
            v24 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
          }

          while (v24);
        }

        v37 = [v61 count];
        v38 = AFSiriLogContextDaemon;
        v39 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
        if (v37)
        {
          v6 = 0;
          if (v39)
          {
            *buf = 136315394;
            v100 = "[ADCloudKitManager removeHomeOwnerCKParticipantAssociation:onShare:onContainer:completion:]_block_invoke";
            v101 = 2112;
            v102 = v61;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s Removing these participant IDs (%@)", buf, 0x16u);
          }

          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v40 = v61;
          v41 = [v40 countByEnumeratingWithState:&v75 objects:v94 count:16];
          v13 = v62;
          if (v41)
          {
            v42 = v41;
            v43 = *v76;
            do
            {
              for (k = 0; k != v42; k = k + 1)
              {
                if (*v76 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                [*(a1 + 48) removeParticipant:*(*(&v75 + 1) + 8 * k)];
              }

              v42 = [v40 countByEnumeratingWithState:&v75 objects:v94 count:16];
            }

            while (v42);
          }

          [*(*(a1 + 40) + 24) saveZoneShare:*(a1 + 48) completion:&stru_1005109D0];
        }

        else
        {
          v6 = 0;
          v13 = v62;
          if (v39)
          {
            *buf = 136315138;
            v100 = "[ADCloudKitManager removeHomeOwnerCKParticipantAssociation:onShare:onContainer:completion:]_block_invoke";
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s Nothing to remove", buf, 0xCu);
          }
        }
      }

      else
      {
        v60 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v100 = "[ADCloudKitManager removeHomeOwnerCKParticipantAssociation:onShare:onContainer:completion:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "%s Multiple unknown association. Cannot modify share participants as of now. Remove when unknown homeOwner association is removed.", buf, 0xCu);
        }
      }
    }

    else if (v16)
    {
      v45 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v100 = "[ADCloudKitManager removeHomeOwnerCKParticipantAssociation:onShare:onContainer:completion:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "%s Unknown associations exist, do not delete participant from share, but remove the association with homeOwnerID.", buf, 0xCu);
      }

      [*(a1 + 40) removeHomeOwnerCKParticipantAssociation:*(a1 + 32) participants:v5 completion:*(a1 + 64)];
    }

    else
    {
      v46 = [*(a1 + 48) participants];
      v47 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v100 = "[ADCloudKitManager removeHomeOwnerCKParticipantAssociation:onShare:onContainer:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s Removing participant and home owner association", buf, 0xCu);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v48 = v46;
      v49 = [v48 countByEnumeratingWithState:&v71 objects:v93 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v72;
        while (2)
        {
          for (m = 0; m != v50; m = m + 1)
          {
            if (*v72 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v53 = *(*(&v71 + 1) + 8 * m);
            v54 = [v53 participantID];
            if ([v13 isEqualToString:v54])
            {
              [*(a1 + 48) removeParticipant:v53];
              v56 = *(a1 + 48);
              v57 = *(*(a1 + 40) + 24);
              v66[0] = _NSConcreteStackBlock;
              v66[1] = 3221225472;
              v66[2] = sub_1000B5A58;
              v66[3] = &unk_100518440;
              v58 = *(a1 + 32);
              v59 = *(a1 + 40);
              v67 = v58;
              v68 = v59;
              v70 = *(a1 + 64);
              v69 = v5;
              [v57 saveZoneShare:v56 completion:v66];

              goto LABEL_70;
            }
          }

          v50 = [v48 countByEnumeratingWithState:&v71 objects:v93 count:16];
          if (v50)
          {
            continue;
          }

          break;
        }
      }

      v55 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v100 = "[ADCloudKitManager removeHomeOwnerCKParticipantAssociation:onShare:onContainer:completion:]_block_invoke_2";
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%s Did not find association", buf, 0xCu);
      }

      [*(a1 + 40) removeHomeOwnerCKParticipantAssociation:*(a1 + 32) participants:v5 completion:*(a1 + 64)];
LABEL_70:
      v6 = 0;
    }
  }
}