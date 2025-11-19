void sub_1000B5A58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[ADCloudKitManager removeHomeOwnerCKParticipantAssociation:onShare:onContainer:completion:]_block_invoke";
      v20 = 2112;
      v21 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error while saving changes (%@)", buf, 0x16u);
    }

    v5 = +[ADPreferences sharedPreferences];
    v17 = *(a1 + 32);
    v6 = [NSArray arrayWithObjects:&v17 count:1];
    [v5 setMultiUserHomeUUIDsForDeletion:v6];

    [*(a1 + 40) handleCloudKitError:v3 forZone:@"com.apple.assistant.multiuser.shared" mirror:1 operationType:6];
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, 0, v3);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B5C64;
    block[3] = &unk_10051E0D8;
    *v13 = *(a1 + 32);
    v8 = *(v13[1] + 14);
    v9 = v13[0];
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v15 = vextq_s8(*v13, *v13, 8uLL);
    v16 = v12;
    dispatch_async(v8, block);
  }
}

void sub_1000B5C74(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[ADCloudKitManager removeHomeOwnerCKParticipantAssociation:onShare:onContainer:completion:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Failure to save share on sanitization (%@)", &v4, 0x16u);
    }
  }
}

void sub_1000B5E80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[ADCloudKitManager removeHomeOwnerCKParticipantAssociation:participants:completion:]_block_invoke";
      v21 = 2112;
      v22 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unable to save share participants list with (%@)", buf, 0x16u);
    }

    v5 = +[AFAnalytics sharedAnalytics];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000B60F0;
    v16 = &unk_10051DF78;
    v6 = v3;
    v17 = v6;
    [v5 logEventWithType:6104 contextProvider:&v13];

    v7 = [ADPreferences sharedPreferences:v13];
    v18 = *(a1 + 32);
    v8 = [NSArray arrayWithObjects:&v18 count:1];
    [v7 setMultiUserHomeUUIDsForDeletion:v8];

    [*(a1 + 40) handleCloudKitError:v6 forZone:@"com.apple.assistant.multiuser.shared" mirror:1 operationType:6];
  }

  else
  {
    v9 = +[ADPreferences sharedPreferences];
    [v9 removeMultiUserHomeUUID:*(a1 + 32)];

    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 136315395;
      v20 = "[ADCloudKitManager removeHomeOwnerCKParticipantAssociation:participants:completion:]_block_invoke_2";
      v21 = 2113;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Saved (%{private}@)", buf, 0x16u);
    }
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, 0, 0, v3);
  }
}

void sub_1000B636C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (!v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[ADCloudKitManager _acceptSharesForMetadatas:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Share acceptance on sharee side complete.", buf, 0xCu);
    }

    v5 = *(a1 + 40);
    v6 = *(v5 + 112);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000B686C;
    v9[3] = &unk_10051DFE8;
    v9[4] = v5;
    v7 = v9;
    goto LABEL_10;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "[ADCloudKitManager _acceptSharesForMetadatas:]_block_invoke";
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  if (!sub_10031C238(v3))
  {
    v8 = *(a1 + 40);
    v6 = *(v8 + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B67FC;
    block[3] = &unk_10051DFE8;
    block[4] = v8;
    v7 = block;
LABEL_10:
    dispatch_async(v6, v7);
    goto LABEL_11;
  }

  [*(a1 + 32) handleCloudKitError:v3 forZone:@"com.apple.assistant.multiuser.shared" mirror:*(*(a1 + 40) + 136) != 0 operationType:7];
LABEL_11:
}

void sub_1000B6570(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[ADCloudKitManager _acceptSharesForMetadatas:]_block_invoke_2";
      v20 = 2112;
      v21 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    if (sub_10031C238(v9))
    {
      [*(a1 + 32) handleCloudKitError:v9 forZone:@"com.apple.assistant.multiuser.shared" mirror:*(*(a1 + 40) + 136) != 0 operationType:7];
    }

    else
    {
      v12 = *(a1 + 40);
      v13 = *(v12 + 112);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000B6778;
      v17[3] = &unk_10051DFE8;
      v17[4] = v12;
      dispatch_async(v13, v17);
    }
  }

  else
  {
    v11 = *(*(a1 + 40) + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B67E8;
    block[3] = &unk_10051E010;
    v15 = v8;
    v16 = *(a1 + 48);
    dispatch_async(v11, block);
  }
}

void sub_1000B6778(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) dequeueObject];
  v3 = [*(*(a1 + 32) + 64) frontObject];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 continueShareAcceptanceOperations];
  }
}

id *sub_1000B67E8(id *result)
{
  if (result[4])
  {
    return [result[5] addObject:?];
  }

  return result;
}

void sub_1000B67FC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) dequeueObject];
  v3 = [*(*(a1 + 32) + 64) frontObject];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 continueShareAcceptanceOperations];
  }
}

void sub_1000B686C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) dequeueObject];
  v3 = [*(*(a1 + 32) + 64) frontObject];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 continueShareAcceptanceOperations];
  }
}

void sub_1000B69FC(uint64_t a1)
{
  if (*(a1 + 72) >= 4uLL)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v36 = v3;
        v37 = [v2 url];
        *buf = 136315394;
        v56 = "[ADCloudKitManager acceptShare:token:containerID:retryCount:object:]_block_invoke";
        v57 = 2112;
        v58 = v37;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s Giving up on object with URL (%@)", buf, 0x16u);
      }

      v4 = [*(*(a1 + 40) + 64) dequeueObject];
      [*(a1 + 40) continueShareAcceptanceOperations];
    }

    return;
  }

  if (*(*(a1 + 40) + 16) == 1)
  {
    v5 = [CKFetchShareMetadataOperation alloc];
    v54 = *(a1 + 48);
    v6 = [NSArray arrayWithObjects:&v54 count:1];
    v7 = [v5 initWithShareURLs:v6];
    goto LABEL_10;
  }

  if (*(a1 + 56))
  {
    v8 = [CKFetchShareMetadataOperation alloc];
    v53 = *(a1 + 48);
    v6 = [NSArray arrayWithObjects:&v53 count:1];
    v9 = *(a1 + 56);
    v51 = *(a1 + 48);
    v52 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v7 = [v8 initWithShareURLs:v6 invitationTokensByShareURL:v10];

LABEL_10:
    v11 = *(a1 + 32);
    v12 = v11;
    if (*(a1 + 32))
    {
      v13 = v11;
    }

    else
    {
      v13 = [[ADCloudKitShareAcceptanceParameters alloc] initWithURL:*(a1 + 48) token:*(a1 + 56) container:*(a1 + 64) retryCount:*(a1 + 72)];

      v29 = *(*(a1 + 40) + 64);
      if (!v29)
      {
        v30 = objc_alloc_init(AFQueue);
        v31 = *(a1 + 40);
        v32 = *(v31 + 64);
        *(v31 + 64) = v30;

        v29 = *(*(a1 + 40) + 64);
      }

      v33 = [v29 frontObject];

      if (v33)
      {
        v34 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v56 = "[ADCloudKitManager acceptShare:token:containerID:retryCount:object:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Another share accept operation in progress.", buf, 0xCu);
        }

        [*(*(a1 + 40) + 64) enqueueObject:v13];
        goto LABEL_35;
      }

      [*(*(a1 + 40) + 64) enqueueObject:v13];
    }

    if ([*(*(a1 + 40) + 120) accountStatus] == 1 && ((objc_msgSend(*(*(a1 + 40) + 120), "supportsDeviceToDeviceEncryption") & 1) != 0 || (*(*(a1 + 40) + 16) & 1) != 0))
    {
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 48);
        *buf = 136315394;
        v56 = "[ADCloudKitManager acceptShare:token:containerID:retryCount:object:]_block_invoke_2";
        v57 = 2112;
        v58 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Starting share accept for URL (%@)", buf, 0x16u);
      }

      v16 = *(a1 + 40);
      v17 = +[NSMutableArray array];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1000B7030;
      v45[3] = &unk_100510988;
      v46 = *(a1 + 48);
      v47 = v16;
      v48 = *(a1 + 40);
      v18 = v17;
      v49 = v18;
      [v7 setPerShareMetadataBlock:v45];
      v38 = _NSConcreteStackBlock;
      v39 = 3221225472;
      v40 = sub_1000B7240;
      v41 = &unk_100517DE0;
      v19 = *(a1 + 40);
      v42 = v16;
      v43 = v19;
      v20 = v18;
      v44 = v20;
      [v7 setFetchShareMetadataCompletionBlock:&v38];
      v21 = *(a1 + 40);
      v22 = *(v21 + 136);
      if (v22)
      {
        v23 = [v22 container];
        [v23 addOperation:v7];
      }

      else
      {
        [*(v21 + 128) addOperation:{v7, v38, v39, v40, v41, v42, v43}];
      }
    }

    else
    {
      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v25 = @"still";
        if (!*(a1 + 72))
        {
          v25 = @"is";
        }

        *buf = 136315394;
        v56 = "[ADCloudKitManager acceptShare:token:containerID:retryCount:object:]_block_invoke";
        v57 = 2112;
        v58 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Account %@ not ready to accept the share", buf, 0x16u);
      }

      v26 = dispatch_time(0, 180000000000);
      v27 = *(a1 + 40);
      v28 = *(v27 + 112);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B7028;
      block[3] = &unk_10051DFE8;
      block[4] = v27;
      dispatch_after(v26, v28, block);
    }

LABEL_35:

    return;
  }

  v35 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v56 = "[ADCloudKitManager acceptShare:token:containerID:retryCount:object:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s No token on shared Manatee container", buf, 0xCu);
  }
}

void sub_1000B7030(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      *buf = 136315650;
      v20 = "[ADCloudKitManager acceptShare:token:containerID:retryCount:object:]_block_invoke";
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Failed with error (%@) for URL (%@)", buf, 0x20u);
    }

    if (sub_10031C238(v9))
    {
      [*(a1 + 40) handleCloudKitError:v9 forZone:@"com.apple.assistant.multiuser.shared" mirror:*(*(a1 + 48) + 136) != 0 operationType:7];
    }

    else
    {
      v13 = *(a1 + 48);
      v14 = *(v13 + 112);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000B7540;
      v18[3] = &unk_10051DFE8;
      v18[4] = v13;
      dispatch_async(v14, v18);
    }
  }

  else
  {
    v12 = *(*(a1 + 48) + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B75B0;
    block[3] = &unk_10051E010;
    v16 = v8;
    v17 = *(a1 + 56);
    dispatch_async(v12, block);
  }
}

void sub_1000B7240(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[ADCloudKitManager acceptShare:token:containerID:retryCount:object:]_block_invoke";
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Failed to accept share with error (%@)", buf, 0x16u);
    }

    if (sub_10031C238(v3))
    {
      [*(a1 + 32) handleCloudKitError:v3 forZone:@"com.apple.assistant.multiuser.shared" mirror:*(*(a1 + 40) + 136) != 0 operationType:7];
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = *(v8 + 112);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000B7410;
      v13[3] = &unk_10051DFE8;
      v13[4] = v8;
      dispatch_async(v9, v13);
    }
  }

  else
  {
    v5 = *(*(a1 + 40) + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B7480;
    block[3] = &unk_10051E010;
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    v11 = v6;
    v12 = v7;
    dispatch_async(v5, block);
  }
}

void sub_1000B7410(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) dequeueObject];
  v3 = [*(*(a1 + 32) + 64) frontObject];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 continueShareAcceptanceOperations];
  }
}

id sub_1000B7480(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitManager acceptShare:token:containerID:retryCount:object:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s accepting share for meta data", &v4, 0xCu);
  }

  result = [*(a1 + 32) count];
  if (result)
  {
    return [*(a1 + 40) _acceptSharesForMetadatas:*(a1 + 32)];
  }

  return result;
}

void sub_1000B7540(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) dequeueObject];
  v3 = [*(*(a1 + 32) + 64) frontObject];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 continueShareAcceptanceOperations];
  }
}

void sub_1000B75B0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADCloudKitManager acceptShare:token:containerID:retryCount:object:]_block_invoke_2";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s adding share meta data (%@)", &v4, 0x16u);
  }

  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }
}

void sub_1000B79C8(uint64_t a1)
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
      v11 = "[ADCloudKitManager fetchSharedUserIdForiCloudAltDSID:completion:]_block_invoke";
      v12 = 2113;
      v13 = v2;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Choosing container for %{private}@ from %@", buf, 0x20u);

      v2 = *(a1 + 32);
    }

    v2 = [*(a1 + 40) _trackedCKContainerForiCloudAltDSID:v2];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B7B50;
  v8[3] = &unk_100510960;
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v7 fetchValueForKeyFromSharedStore:@"meDeviceSharedUserID" container:v2 completion:v8];
}

void sub_1000B7B50(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(*(a1 + 32) + 16);
LABEL_7:
    v6();
    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = AFSiriLogContextDaemon;
  v9 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
  if (isKindOfClass)
  {
    if (v9)
    {
      v12 = v8;
      v13 = [v5 debugDescription];
      v16 = 136315650;
      v17 = "[ADCloudKitManager fetchSharedUserIdForiCloudAltDSID:completion:]_block_invoke";
      v18 = 2112;
      v19 = @"meDeviceSharedUserID";
      v20 = 2112;
      v21 = v13;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Retrieved results for %@ : %@", &v16, 0x20u);
    }

    v6 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  if (v9)
  {
    v14 = v8;
    v15 = [v5 debugDescription];
    v16 = 136315650;
    v17 = "[ADCloudKitManager fetchSharedUserIdForiCloudAltDSID:completion:]_block_invoke";
    v18 = 2112;
    v19 = @"meDeviceSharedUserID";
    v20 = 2112;
    v21 = v15;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Invalid results for %@ : %@", &v16, 0x20u);
  }

  v10 = *(a1 + 32);
  v11 = [AFError errorWithCode:4012];
  (*(v10 + 16))(v10, v11, 0);

LABEL_8:
}

void sub_1000B7E64(void *a1)
{
  if (*(a1[4] + 32))
  {
    v2 = a1[6];
    v1 = a1[7];
    v3 = a1[5];
    v4 = *(a1[4] + 32);

    [v4 fetchValuesForKeysFromSharedStore:v3 withQOS:v1 completion:v2];
  }

  else
  {
    v5 = a1[6];
    if (v5)
    {
      v6 = [AFError errorWithCode:6];
      (*(v5 + 16))(v5, 0, v6);
    }
  }
}

void sub_1000B7FFC(void *a1)
{
  v2 = a1[4];
  if (v2[4])
  {
    [v2 _validateAndUpdateSharedZoneUpdater];
    v3 = a1[5];
    v4 = *(a1[4] + 32);
    v6 = a1[6];
    v5 = a1[7];

    [v4 fetchValueForKeyFromSharedStore:v3 withQOS:v5 completion:v6];
  }

  else
  {
    v7 = a1[6];
    if (v7)
    {
      v8 = [AFError errorWithCode:6];
      (*(v7 + 16))(v7, 0, v8);
    }
  }
}

void sub_1000B81BC(void *a1)
{
  v2 = [[ADCloudKitSharedZoneUpdater alloc] initWithQueue:*(a1[4] + 112) container:a1[5] sharedZone:*(a1[4] + 216) zoneOwner:1 delegate:?];
  [(ADCloudKitSharedZoneUpdater *)v2 fetchValueForKeyFromSharedStore:a1[6] withQOS:a1[8] completion:a1[7]];
}

void sub_1000B8360(void *a1)
{
  v2 = a1[4];
  if (v2[4])
  {
    [v2 _validateAndUpdateSharedZoneUpdater];
    v3 = a1[5];
    v4 = *(a1[4] + 32);
    v5 = a1[6];
    v6 = a1[7];

    [v4 addDictionaryToSharedStore:v3 recordKeysForDeletion:v5 completion:v6];
  }

  else
  {
    v7 = a1[7];
    if (v7)
    {
      v8 = [AFError errorWithCode:6];
      (*(v7 + 16))(v7, v8);
    }
  }
}

void sub_1000B8740(void *a1)
{
  if (*(a1[4] + 32))
  {
    v1 = a1[5];
    v2 = a1[6];
    v3 = a1[7];
    v4 = *(a1[4] + 32);

    [v4 addKeyToSharedStore:v1 value:v2 completion:v3];
  }

  else
  {
    v5 = a1[7];
    if (v5)
    {
      v6 = [AFError errorWithCode:6];
      (*(v5 + 16))(v5, v6);
    }
  }
}

void sub_1000B8A70(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 56);
  v3 = [AFError errorWithCode:6];
  [v2 retryForType:9 zoneInfo:v1 error:v3];
}

void sub_1000B8D40(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v5 = *(a1 + 40);
    v6 = [v5[17] keyValueRecordZoneInfo];
    [v5 _synchronizeMirroredContainer:v6];

    v7 = *(a1 + 40);
    v8 = [v7[17] accountStatusRecordZoneInfo];
    [v7 _synchronizeMirroredContainer:v8];

LABEL_5:
    v3 = *(a1 + 40);
    v4 = [v3[17] multiUserRecordZoneInfo];
    goto LABEL_8;
  }

  if (![v2 isEqualToString:@"com.apple.assistant.backedup"])
  {
    if ([*(a1 + 32) isEqualToString:@"com.apple.assistant.account.status"])
    {
      v3 = *(a1 + 40);
      v4 = [v3[17] accountStatusRecordZoneInfo];
      goto LABEL_8;
    }

    if (![*(a1 + 32) isEqualToString:@"com.apple.assistant.multiuser.shared"])
    {
      return;
    }

    goto LABEL_5;
  }

  v3 = *(a1 + 40);
  v4 = [v3[17] keyValueRecordZoneInfo];
LABEL_8:
  v9 = v4;
  [v3 _synchronizeMirroredContainer:?];
}

void sub_1000B9174(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADCloudKitManager _synchronizeMirroredContainer:]_block_invoke";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Completed synchronization of key,value zone with status (%d)", &v5, 0x12u);
  }

  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _scheduleMirrorSynchronizationAfterDelay:@"com.apple.assistant.backedup"];
  }
}

void sub_1000B924C(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADCloudKitManager _synchronizeMirroredContainer:]_block_invoke";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Completed synchronization of account status zone with status (%d)", &v5, 0x12u);
  }

  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _scheduleMirrorSynchronizationAfterDelay:@"com.apple.assistant.account.status"];
  }
}

void sub_1000B9324(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADCloudKitManager _synchronizeMirroredContainer:]_block_invoke";
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Completed synchronization of multi-user shared zone with status (%d)", &v6, 0x12u);
  }

  v5 = +[ADPreferences sharedPreferences];
  [v5 setMultiUserSharedDataNeedsSync:0];

  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _scheduleMirrorSynchronizationAfterDelay:@"com.apple.assistant.multiuser.shared"];
  }
}

void sub_1000B941C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitManager _synchronizeMirroredContainer:]_block_invoke";
    v6 = 1024;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Completed keychain synchronization of key,value zone with status (%d)", &v4, 0x12u);
  }
}

void sub_1000B9A50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = 136315650;
      v16 = "[ADCloudKitManager _createRecordZoneSubscriptionWithZoneID:name:recordTypes:container:completion:]_block_invoke";
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Zone subscription (%@) creation failed: (%@)", &v15, 0x20u);
    }
  }

  if (*(a1 + 40))
  {
    v11 = [v7 count];
    v12 = *(a1 + 40);
    if (v11)
    {
      v13 = [v7 mutableCopy];
      (*(v12 + 16))(v12, v9, v13);
    }

    else
    {
      (*(v12 + 16))(v12, v9, 0);
    }
  }
}

void sub_1000B9F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1000B9FC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 112);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BA0E8;
  block[3] = &unk_1005108F0;
  block[4] = v8;
  v10 = v7;
  v21 = *(a1 + 72);
  v16 = v10;
  v17 = v6;
  v14 = *(a1 + 56);
  v11 = v14;
  v20 = v14;
  v18 = v5;
  v22 = *(a1 + 80);
  v19 = *(a1 + 48);
  v12 = v5;
  v13 = v6;
  dispatch_async(v9, block);
}

void sub_1000BA0E8(uint64_t a1)
{
  [*(*(a1 + 32) + 56) cancelSubscriptionSetupTimerForZoneInfo:*(a1 + 40)];
  v2 = *(*(*(a1 + 88) + 8) + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) zoneName];
  if (v2)
  {
    v5 = [v3 _isCloudSyncEnabledForZone:v4 accountInfo:*(*(*(a1 + 88) + 8) + 40)];
  }

  else
  {
    v5 = [v3 _isCloudSyncEnabledForZone:v4];
  }

  *(*(*(a1 + 80) + 8) + 24) = v5;

  if (*(*(*(a1 + 80) + 8) + 24))
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v8 = v7;
        *buf = 136315394;
        v36 = "[ADCloudKitManager _setupRecordZoneSubscriptionWithZoneInfo:retryInterval:container:withCompletion:]_block_invoke";
        v37 = 1024;
        LODWORD(v38) = [v6 count];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Subscription created: (%d)", buf, 0x12u);

        v6 = *(a1 + 48);
      }

      [*(a1 + 40) setSubscriptionList:v6];
      [*(a1 + 40) setHasSetUpRecordZoneSubscription:1];
      v9 = *(a1 + 72);
      if (v9)
      {
        (*(v9 + 16))();
      }

      [*(a1 + 32) _fetchChangesWithZoneInfo:*(a1 + 40) useSharedDatabase:0];
    }

    else
    {
      v14 = sub_10031B3B4(*(a1 + 56));
      v15 = *(a1 + 40);
      if (v14)
      {
        v16 = [*(a1 + 40) zone];

        if (v16)
        {
          [*(a1 + 32) _prepareZoneForResetWithZoneInfo:*(a1 + 40)];
          v17 = *(a1 + 32);
          v18 = *(a1 + 40);

          [v17 _resetZoneWithZoneInfo:v18];
        }
      }

      else
      {
        v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 112));
        [v15 setSubscriptionSetupTimer:v19];

        v20 = [*(a1 + 40) subscriptionSetupTimer];
        v21 = dispatch_time(0, (*(a1 + 96) * 1000000000.0));
        dispatch_source_set_timer(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

        if (*(a1 + 96) + *(a1 + 96) <= 86400.0)
        {
          v22 = *(a1 + 96) + *(a1 + 96);
        }

        else
        {
          v22 = 86400.0;
        }

        v23 = [*(a1 + 40) subscriptionSetupTimer];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1000BA530;
        handler[3] = &unk_100519B60;
        v33 = *(a1 + 80);
        v24 = *(a1 + 40);
        v25 = *(a1 + 32);
        v30 = v24;
        v31 = v25;
        v34 = v22;
        v32 = *(a1 + 64);
        dispatch_source_set_event_handler(v23, handler);

        v26 = [*(a1 + 40) subscriptionSetupTimer];
        dispatch_resume(v26);

        v27 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 96);
          *buf = 136315394;
          v36 = "[ADCloudKitManager _setupRecordZoneSubscriptionWithZoneInfo:retryInterval:container:withCompletion:]_block_invoke_2";
          v37 = 2048;
          v38 = v28;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Subscription creation failed. Retrying in %f seconds", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = v10;
      v13 = [v11 zoneName];
      *buf = 136315394;
      v36 = "[ADCloudKitManager _setupRecordZoneSubscriptionWithZoneInfo:retryInterval:container:withCompletion:]_block_invoke_2";
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s iCloud sync is disabled. Will not attempt retry creating subscription for zone: (%@)", buf, 0x16u);
    }
  }
}

void sub_1000BA530(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = [*(a1 + 32) subscriptionList];
    if ([v2 count])
    {
      v3 = [*(a1 + 32) hasSetUpRecordZoneSubscription];

      if (v3)
      {
        return;
      }
    }

    else
    {
    }

    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 64);
    v7 = *(a1 + 48);

    [v4 _setupRecordZoneSubscriptionWithZoneInfo:v5 retryInterval:v7 container:v6];
  }
}

void sub_1000BA744(uint64_t a1)
{
  if ([*(a1 + 32) _isCloudSyncEnabledForZone:*(a1 + 40)])
  {
    v2 = [*(*(a1 + 32) + 136) container];
    v3 = [*(a1 + 32) _manateeRecordZoneInfoForName:*(a1 + 40)];
    v4 = [v3 zone];
    if (v4)
    {
      v5 = [*(a1 + 32) _createRecordsWithDictionary:*(a1 + 48) forZoneInfo:v3];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000BA9E4;
      v12[3] = &unk_1005173B0;
      v6 = *(a1 + 40);
      v12[4] = *(a1 + 32);
      v13 = v6;
      v14 = *(a1 + 56);
      sub_100125F7C(v5, 0, 25, v2, 1, 0, v12);
    }

    else
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v16 = "[ADCloudKitManager saveRecordsWithDictionary:inZone:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Zone not created", buf, 0xCu);
      }

      v10 = *(a1 + 56);
      if (!v10)
      {
        goto LABEL_13;
      }

      v5 = [AFError errorWithCode:4020];
      (*(v10 + 16))(v10, v5, 0);
    }

LABEL_13:
    goto LABEL_14;
  }

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 40);
    *buf = 136315394;
    v16 = "[ADCloudKitManager saveRecordsWithDictionary:inZone:completion:]_block_invoke";
    v17 = 2112;
    v18 = v11;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s iCloud sync is disabled. Unable to save records to zone: (%@)", buf, 0x16u);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v2 = [AFError errorWithCode:4014];
    (*(v8 + 16))(v8, v2, 0);
LABEL_14:
  }
}

void sub_1000BA9E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BAB58;
    block[3] = &unk_10051DB68;
    block[4] = v10;
    v19 = v7;
    v20 = *(a1 + 40);
    dispatch_async(v11, block);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(*(a1 + 32) + 112);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000BAB70;
    v14[3] = &unk_10051E088;
    v17 = v12;
    v15 = v7;
    v16 = v8;
    dispatch_async(v13, v14);
  }
}

void sub_1000BACAC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v31 = *(a1 + 32);
    *buf = 136315394;
    v48 = "[ADCloudKitManager saveFileAssetRecordsWithDictionary:mirror:onZone:activity:sharedUserId:completion:]_block_invoke";
    v49 = 2112;
    v50 = v31;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s file asset records = %@", buf, 0x16u);
  }

  if ([*(a1 + 40) _isCloudSyncEnabledForZone:@"com.apple.assistant.multiuser.shared"])
  {
    if (*(a1 + 72))
    {
      v3 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v48 = "[ADCloudKitManager saveFileAssetRecordsWithDictionary:mirror:onZone:activity:sharedUserId:completion:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s mirrored", buf, 0xCu);
      }

      v4 = [*(*(a1 + 40) + 136) multiUserRecordZoneInfo];
    }

    else
    {
      v4 = *(*(a1 + 40) + 216);
    }

    v7 = v4;
    v8 = [v4 zone];

    if (v8)
    {
      v9 = [v7 zone];
      v10 = [v9 zoneID];

      v11 = *(a1 + 48);
      if (v11)
      {
        v12 = [v11 zoneID];

        v10 = v12;
      }

      v13 = [v7 rateLimitTimer];

      if (v10 && !v13)
      {
        v14 = objc_alloc_init(NSMutableArray);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v15 = *(a1 + 32);
        v16 = [v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v43;
          while (2)
          {
            v20 = 0;
            v21 = v18;
            do
            {
              if (*v43 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v18 = [*(a1 + 40) _createFileAssetRecordWithDictionary:*(*(&v42 + 1) + 8 * v20) zone:v10 version:2];

              if (!v18)
              {
                v29 = *(a1 + 64);
                if (v29)
                {
                  v30 = [AFError errorWithCode:4012];
                  (*(v29 + 16))(v29, v30, 0);
                }

                v18 = 0;
                goto LABEL_47;
              }

              [v14 addObject:v18];
              v20 = v20 + 1;
              v21 = v18;
            }

            while (v17 != v20);
            v17 = [v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v18 = 0;
        }

        if ([v14 count])
        {
          v32 = *(a1 + 40);
          if (*(a1 + 72))
          {
            v33 = [*(v32 + 136) container];
          }

          else
          {
            v33 = *(v32 + 128);
          }

          v15 = v33;
          v35 = [*(a1 + 48) zoneID];
          v36 = [v35 ownerName];
          v37 = [v36 isEqualToString:CKCurrentUserDefaultName];

          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_1000BB2A4;
          v39[3] = &unk_1005108C8;
          v41 = *(a1 + 72);
          v39[4] = *(a1 + 40);
          v38 = *(a1 + 56);
          v40 = *(a1 + 64);
          sub_100125F7C(v14, 0, 17, v15, v37, v38, v39);
        }

        else
        {
          v34 = *(a1 + 64);
          if (!v34)
          {
LABEL_48:

LABEL_49:
            goto LABEL_50;
          }

          v15 = [AFError errorWithCode:4005];
          (*(v34 + 16))(v34, v15, 0);
        }

LABEL_47:

        goto LABEL_48;
      }

      v23 = *(a1 + 64);
      if (v23)
      {
        if (v13)
        {
          v24 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v25 = *(*(a1 + 40) + 216);
            v26 = v24;
            v27 = [v25 zoneName];
            *buf = 136315394;
            v48 = "[ADCloudKitManager saveFileAssetRecordsWithDictionary:mirror:onZone:activity:sharedUserId:completion:]_block_invoke";
            v49 = 2112;
            v50 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Unable to save records for zone because zone is rate limited: (%@)", buf, 0x16u);

            v23 = *(a1 + 64);
          }

          v28 = 4019;
        }

        else
        {
          v28 = 4020;
        }

        v18 = [AFError errorWithCode:v28];
        (*(v23 + 16))(v23, v18, 0);
        goto LABEL_49;
      }

LABEL_50:

      goto LABEL_51;
    }

    v22 = *(a1 + 64);
    if (v22)
    {
      v10 = [AFError errorWithCode:4020];
      (*(v22 + 16))(v22, v10, 0);
      goto LABEL_50;
    }

LABEL_51:

    return;
  }

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v48 = "[ADCloudKitManager saveFileAssetRecordsWithDictionary:mirror:onZone:activity:sharedUserId:completion:]_block_invoke";
    v49 = 2112;
    v50 = @"com.apple.assistant.multiuser.shared";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s iCloud sync is disabled. Unable to save records to zone: (%@)", buf, 0x16u);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = [AFError errorWithCode:4014];
    (*(v6 + 16))(v6, v7, 0);
    goto LABEL_51;
  }
}

void sub_1000BB2A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 48) != 1 || (v10 = AFSiriLogContextDaemon, !os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR)))
  {
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *buf = 136315394;
  v18 = "[ADCloudKitManager saveFileAssetRecordsWithDictionary:mirror:onZone:activity:sharedUserId:completion:]_block_invoke";
  v19 = 2112;
  v20 = v7;
  _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Encountered error (%@) on mirrored container", buf, 0x16u);
  if (v7)
  {
LABEL_4:
    [*(a1 + 32) handleCloudKitError:v7 forZone:@"com.apple.assistant.multiuser.shared" mirror:*(a1 + 48) operationType:2];
  }

LABEL_5:
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BB45C;
    block[3] = &unk_10051E088;
    v16 = v11;
    v14 = v7;
    v15 = v8;
    dispatch_async(v12, block);
  }
}

void sub_1000BB5E0(uint64_t a1)
{
  if ([*(a1 + 32) _isCloudSyncEnabledForZone:@"com.apple.assistant.backedup"])
  {
    if (*(a1 + 56))
    {
      v2 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v21 = "[ADCloudKitManager saveKeyValueRecordsWithDictionary:mirror:completion:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s mirrored", buf, 0xCu);
      }

      v3 = [*(*(a1 + 32) + 136) keyValueRecordZoneInfo];
      v4 = [v3 zone];

      if (v4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = [*(*(a1 + 32) + 184) zone];
      if (v4)
      {
LABEL_6:
        v5 = [*(a1 + 32) _createKeyValueRecordsWithDictionary:*(a1 + 40) mirror:*(a1 + 56)];
        v6 = *(a1 + 32);
        if (*(a1 + 56))
        {
          v7 = [*(v6 + 136) container];
        }

        else
        {
          v7 = *(v6 + 128);
        }

        v12 = v7;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000BB918;
        v15[3] = &unk_1005108A0;
        v13 = v4;
        v19 = *(a1 + 56);
        v14 = *(a1 + 32);
        v16 = v13;
        v17 = v14;
        v18 = *(a1 + 48);
        sub_100125F7C(v5, 0, 25, v12, 1, 0, v15);

LABEL_19:
        goto LABEL_20;
      }
    }

    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[ADCloudKitManager saveKeyValueRecordsWithDictionary:mirror:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Zone not created", buf, 0xCu);
    }

    v11 = *(a1 + 48);
    if (!v11)
    {
      v4 = 0;
      goto LABEL_20;
    }

    v5 = [AFError errorWithCode:4020];
    (*(v11 + 16))(v11, v5, 0);
    goto LABEL_19;
  }

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[ADCloudKitManager saveKeyValueRecordsWithDictionary:mirror:completion:]_block_invoke";
    v22 = 2112;
    v23 = @"com.apple.assistant.backedup";
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s iCloud sync is disabled. Unable to save records to zone: (%@)", buf, 0x16u);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v4 = [AFError errorWithCode:4014];
    (*(v9 + 16))(v9, v4, 0);
LABEL_20:
  }
}

void sub_1000BB918(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    *buf = 136315394;
    v26 = "[ADCloudKitManager saveKeyValueRecordsWithDictionary:mirror:completion:]_block_invoke";
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s zone = %@", buf, 0x16u);
    v10 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[ADCloudKitManager saveKeyValueRecordsWithDictionary:mirror:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s qualityOfService = NSQualityOfServiceUserInitiated;", buf, 0xCu);
    v10 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[ADCloudKitManager saveKeyValueRecordsWithDictionary:mirror:completion:]_block_invoke";
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s savedRecords -> %@", buf, 0x16u);
    v10 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[ADCloudKitManager saveKeyValueRecordsWithDictionary:mirror:completion:]_block_invoke";
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s deletedRecordIDs -> %@", buf, 0x16u);
  }

  if (*(a1 + 56) == 1)
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[ADCloudKitManager saveKeyValueRecordsWithDictionary:mirror:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s saveOnMirror = true;", buf, 0xCu);
    }
  }

  if (v7)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[ADCloudKitManager saveKeyValueRecordsWithDictionary:mirror:completion:]_block_invoke";
      v27 = 2112;
      v28 = v7;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Encountered error (%@) on mirrored container", buf, 0x16u);
    }

    v14 = *(a1 + 40);
    v15 = *(v14 + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BBCE0;
    block[3] = &unk_10051C890;
    block[4] = v14;
    v23 = v7;
    v24 = *(a1 + 56);
    dispatch_async(v15, block);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = *(*(a1 + 40) + 112);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000BBCFC;
    v18[3] = &unk_10051E088;
    v21 = v16;
    v19 = v7;
    v20 = v8;
    dispatch_async(v17, v18);
  }
}

void sub_1000BC0E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 48);
    *buf = 136315394;
    v21 = "[ADCloudKitManager _saveCloudSyncEnabledRecord:mirror:qualityOfService:completion:]_block_invoke";
    v22 = 2048;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s qualityOfService = %ld;", buf, 0x16u);
    v10 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[ADCloudKitManager _saveCloudSyncEnabledRecord:mirror:qualityOfService:completion:]_block_invoke";
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s savedRecords -> %@", buf, 0x16u);
    v10 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[ADCloudKitManager _saveCloudSyncEnabledRecord:mirror:qualityOfService:completion:]_block_invoke";
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s deletedRecordIDs -> %@", buf, 0x16u);
  }

  if (*(a1 + 56) == 1)
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[ADCloudKitManager _saveCloudSyncEnabledRecord:mirror:qualityOfService:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s saveOnMirror = true;", buf, 0xCu);
    }
  }

  if (v7)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[ADCloudKitManager _saveCloudSyncEnabledRecord:mirror:qualityOfService:completion:]_block_invoke";
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Encountered error (%@) on mirrored container", buf, 0x16u);
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BC3E0;
    block[3] = &unk_10051C890;
    block[4] = v14;
    v18 = v7;
    v19 = *(a1 + 56);
    dispatch_async(v15, block);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v7, v8);
  }
}

void sub_1000BCD68(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BCDE0;
  v4[3] = &unk_10051CBD8;
  v5 = a2;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

id sub_1000BCDE0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[ADCloudKitManager _synchronizeVoiceTriggerData]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Shared zone upload completed", &v7, 0xCu);
    }

    v3 = +[ADPreferences sharedPreferences];
    [v3 setMultiUserSharedDataNeedsSync:0];

    if (AFIsMultiUserCompanion())
    {
      v4 = +[ADPreferences sharedPreferences];
      [v4 setMirroredMultiUserSharedDataNeedsSync:0];
    }

    v5 = +[ADPreferences sharedPreferences];
    [v5 synchronize];
  }

  return [*(a1 + 32) _startVoiceTriggerSyncTimerWithInterval:86400.0];
}

id sub_1000BD1C8(uint64_t a1)
{
  v2 = +[ADPreferences sharedPreferences];
  if (([v2 multiUserSharedDataNeedsSync] & 1) == 0)
  {
    v4 = +[ADPreferences sharedPreferences];
    if ([v4 voiceTriggerNeedsDataSync])
    {
      v5 = [*(a1 + 32) cloudSyncEnabled];

      if (v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

LABEL_10:
    v7 = *(a1 + 32);

    return [v7 _startVoiceTriggerSyncTimerWithInterval:86400.0];
  }

  v3 = [*(a1 + 32) cloudSyncEnabled];

  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_6:
  v6 = *(a1 + 32);

  return [v6 _synchronizeVoiceTriggerData];
}

void sub_1000BD3F0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitManager _homeInfoDidChange:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  v3 = *(a1 + 32);
  if ((*(v3 + 48) & 1) == 0)
  {
    *(v3 + 48) = 1;
    [*(a1 + 32) _setupMultiUserSharedRecordZone];
  }
}

id sub_1000BDB7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[88] == 1)
  {
    return [v2 _forceVoiceProfileDownloadOfAllUsers:*(a1 + 40) + 1];
  }

  else
  {
    return [v2 _forceVoiceProfileDownloadOfAllUsers:0];
  }
}

void sub_1000BDC18(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADCloudKitManager _voiceTriggerPHSProfileDidChange]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Voice Trigger PHS data did change!", &v8, 0xCu);
  }

  v3 = +[ADPreferences sharedPreferences];
  if (([v3 multiUserSharedDataNeedsSync] & 1) == 0)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADCloudKitManager _voiceTriggerPHSProfileDidChange]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s multiUserSharedDataNeedsSync", &v8, 0xCu);
    }

    [v3 setMultiUserSharedDataNeedsSync:1];
    [v3 setVoiceTriggerNeedsDataSync:1];
    [v3 synchronize];
    v5 = [*(*(a1 + 32) + 216) zone];

    if (v5)
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136315138;
        v9 = "[ADCloudKitManager _voiceTriggerPHSProfileDidChange]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Start sync timer.", &v8, 0xCu);
      }

      [*(a1 + 32) _startVoiceTriggerSyncTimerWithInterval:0.0];
    }
  }

  if (AFSupportsMultiUser())
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "[ADCloudKitManager _voiceTriggerPHSProfileDidChange]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s synchronizeSharedZones", &v8, 0xCu);
    }

    [*(*(a1 + 32) + 40) synchronizeSharedZones];
  }
}

void sub_1000BDEC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 90) == v2)
  {
    return;
  }

  *(v1 + 90) = v2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    if (*(*(a1 + 32) + 90))
    {
      v5 = @"enabled";
    }

    else
    {
      v5 = @"disabled";
    }

    v10 = 136315394;
    v11 = "[ADCloudKitManager _voiceTriggerEnabledDidChange]_block_invoke";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Voice Trigger is now %@", &v10, 0x16u);
  }

  v6 = *(a1 + 32);
  if (*(v6 + 90) != 1)
  {
LABEL_13:
    v9 = [*(v6 + 216) dataStore];
    [v9 deleteUserData:0];

    [*(a1 + 32) _cancelVoiceTriggerSyncTimer];
    return;
  }

  v7 = [*(v6 + 216) zone];

  if (!v7)
  {
    v6 = *(a1 + 32);
    goto LABEL_13;
  }

  v8 = +[ADPreferences sharedPreferences];
  if (([v8 multiUserSharedDataNeedsSync] & 1) == 0)
  {
    [v8 setMultiUserSharedDataNeedsSync:1];
    [v8 setVoiceTriggerNeedsDataSync:1];
    [v8 synchronize];
    [*(a1 + 32) _startVoiceTriggerSyncTimerWithInterval:0.0];
  }
}

void sub_1000BE3D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[27] zoneName];
  LODWORD(v2) = [v2 _isCloudSyncEnabledForZone:v3];

  if (v2)
  {
    if (AFIsMultiUserCompanion())
    {
      v4 = +[ADPreferences sharedPreferences];
      v5 = [v4 multiUserVoiceIdentification];
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 32);
    if ((v6[90] & 1) != 0 || v5)
    {
      [v6 _setupVoiceTriggerSyncTimer];
      v6 = *(a1 + 32);
    }

    [v6 setupSharedZoneUpdaterForOwner];
    v7 = *(a1 + 32);

    [v7 _setupSharedZoneView];
  }
}

void sub_1000BE524(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && v8 || AFIsATV())
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BE5E8;
    block[3] = &unk_10051DFE8;
    block[4] = v10;
    dispatch_async(v11, block);
  }
}

void sub_1000BEA0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[ADCloudKitManager _setUpMirroredZoneWithZoneInfo:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Encountered (%@). Giving up.", buf, 0x16u);
    }
  }

  else
  {
    v5 = [*(a1 + 32) dataStore];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000BEB58;
    v6[3] = &unk_10051B778;
    v7 = *(a1 + 32);
    [v5 synchronizeWithCompletion:v6];
  }
}

void sub_1000BEB58(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 zoneName];
    v8 = 136315650;
    v9 = "[ADCloudKitManager _setUpMirroredZoneWithZoneInfo:]_block_invoke_2";
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Mirror sync result (%d) for (%@)", &v8, 0x1Cu);
  }

  if (a2)
  {
    [*(a1 + 32) setRetryState:0];
  }
}

void sub_1000BEF64(id a1)
{
  v1 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315138;
    v3 = "[ADCloudKitManager _resetZoneWithZoneInfo:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s Reset shared zone", &v2, 0xCu);
  }
}

void sub_1000BF478(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = v10;
      v14 = [v12 zoneName];
      v15 = 136315650;
      v16 = "[ADCloudKitManager _deleteRecordZoneWithZoneID:qualityOfService:completion:]_block_invoke";
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Error deleting zone (%@): (%@)", &v15, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  }

  v11 = *(a1 + 48);
  if (v11 && (*(a1 + 64) & 1) == 0)
  {
    (*(v11 + 16))(v11, v9);
  }

  if (*(a1 + 64) == 1)
  {
    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_1000BF5F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = v10;
      v16 = [v14 zoneName];
      v17 = 136315650;
      v18 = "[ADCloudKitManager _deleteRecordZoneWithZoneID:qualityOfService:completion:]_block_invoke";
      v19 = 2112;
      v20 = v16;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Error deleting zone (%@): (%@)", &v17, 0x20u);
    }

    v11 = *(*(a1 + 48) + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (!v13)
    {
      objc_storeStrong(v12, a4);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_1000BF740(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCloudKitManager _deleteRecordZoneWithZoneID:qualityOfService:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Two container zone deletion done", &v4, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_1000BFAFC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = v10;
      v14 = [v12 zoneName];
      v15 = 136315650;
      v16 = "[ADCloudKitManager _deleteRecordZoneWithZoneInfo:qualityOfService:completion:]_block_invoke";
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Error deleting zone (%@): (%@)", &v15, 0x20u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }
}

void sub_1000C0064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 112);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C0164;
  block[3] = &unk_100510790;
  block[4] = v8;
  v14 = v7;
  v10 = *(a1 + 48);
  v16 = v6;
  v17 = v10;
  v15 = v5;
  v19 = *(a1 + 64);
  v18 = *(a1 + 56);
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

void sub_1000C0164(uint64_t a1)
{
  [*(*(a1 + 32) + 56) cancelRecordZoneSetupTimerForZoneInfo:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) zoneName];
  LOBYTE(v2) = [v2 _isCloudSyncEnabledForZone:v3];

  if ((v2 & 1) == 0)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = v10;
      v13 = [v11 zoneName];
      *buf = 136315394;
      v35 = "[ADCloudKitManager _setupRecordZoneWithZoneInfo:retryInterval:completion:]_block_invoke_2";
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s iCloud sync is disabled. Will not attempt retry creating zone: (%@)", buf, 0x16u);
    }

    goto LABEL_12;
  }

  if (!*(*(a1 + 32) + 128))
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v35 = "[ADCloudKitManager _setupRecordZoneWithZoneInfo:retryInterval:completion:]_block_invoke_3";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Zone creation error - container no longer exists", buf, 0xCu);
    }

    [*(a1 + 40) setZone:0];
    goto LABEL_12;
  }

  if (!*(a1 + 48))
  {
    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v18 = v17;
        v19 = [v16 zoneID];
        v20 = [v19 zoneName];
        *buf = 136315394;
        v35 = "[ADCloudKitManager _setupRecordZoneWithZoneInfo:retryInterval:completion:]_block_invoke";
        v36 = 2112;
        v37 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Zone created: (%@)", buf, 0x16u);

        v16 = *(a1 + 56);
      }

      v21 = [*(a1 + 40) zone];
      v22 = [v16 isEqual:v21];

      if ((v22 & 1) == 0)
      {
        [*(a1 + 40) setZone:*(a1 + 56)];
        [*(a1 + 40) setServerChangeToken:0];
      }

      if (*(a1 + 80))
      {
        goto LABEL_12;
      }

      v23 = [*(a1 + 40) subscriptionList];
      if ([v23 count])
      {
        v24 = [*(a1 + 40) hasSetUpRecordZoneSubscription];

        if (v24)
        {
          [*(a1 + 32) _fetchChangesWithZoneInfo:*(a1 + 40) useSharedDatabase:0];
          goto LABEL_12;
        }
      }

      else
      {
      }

      [*(a1 + 32) _setupRecordZoneSubscriptionWithZoneInfo:*(a1 + 40) retryInterval:0 container:120.0];
LABEL_12:
      v15 = *(a1 + 64);
      if (v15)
      {
        (*(v15 + 16))();
      }

      return;
    }
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000C05A8;
  v28[3] = &unk_1005194E0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v29 = v4;
  v30 = v5;
  v33 = *(a1 + 72);
  v32 = *(a1 + 64);
  v31 = *(a1 + 48);
  v6 = objc_retainBlock(v28);
  v7 = *(a1 + 48);
  if (v7 && sub_10031B6CC(v7))
  {
    [*(a1 + 32) _prepareZoneForResetWithZoneInfo:*(a1 + 40)];
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000C07D0;
    v25[3] = &unk_10051DDE8;
    v25[4] = v9;
    v26 = v8;
    v27 = v6;
    [v9 _deleteRecordZoneWithZoneInfo:v26 completion:v25];
  }

  else
  {
    (v6[2])(v6);
  }
}

void sub_1000C05A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 40) + 112));
  [v2 setZoneSetupTimer:v3];

  v4 = [*(a1 + 32) zoneSetupTimer];
  v5 = dispatch_time(0, (*(a1 + 64) * 1000000000.0));
  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  if (*(a1 + 64) + *(a1 + 64) <= 86400.0)
  {
    v6 = *(a1 + 64) + *(a1 + 64);
  }

  else
  {
    v6 = 86400.0;
  }

  v7 = [*(a1 + 32) zoneSetupTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000C0908;
  handler[3] = &unk_10051C0D8;
  v13 = *(a1 + 32);
  v8 = v13.i64[0];
  v15 = vextq_s8(v13, v13, 8uLL);
  v17 = v6;
  v16 = *(a1 + 56);
  dispatch_source_set_event_handler(v7, handler);

  v9 = [*(a1 + 32) zoneSetupTimer];
  dispatch_resume(v9);

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    *buf = 136315650;
    v19 = "[ADCloudKitManager _setupRecordZoneWithZoneInfo:retryInterval:completion:]_block_invoke";
    v20 = 2112;
    v21 = v11;
    v22 = 2048;
    v23 = v12;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Zone creation failed: (%@) Retrying in %f seconds", buf, 0x20u);
  }
}

void sub_1000C07D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 112);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C089C;
  v8[3] = &unk_10051E0D8;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

uint64_t sub_1000C089C(uint64_t a1)
{
  result = sub_10031BA50(*(a1 + 32));
  if ((result & 1) == 0)
  {
    [*(*(a1 + 40) + 56) cancelRecordZoneSetupTimerForZoneInfo:*(a1 + 48)];
    [*(a1 + 48) setHasSetUpRecordZoneSubscription:0];
    v3 = *(*(a1 + 56) + 16);

    return v3();
  }

  return result;
}

void sub_1000C1584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1000C15F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = [v6 options];
  v9 = [v8 accountOverrideInfo];

  if (v9)
  {
    v10 = [*(a1 + 32) accountID];
    v11 = [v6 options];
    v12 = [v11 accountOverrideInfo];
    v13 = [v12 accountID];
    v14 = [v10 isEqualToString:v13];

    if (v14)
    {
      if (WeakRetained)
      {
        v15 = [WeakRetained _trackedCKAccountInfoForiCloudAltDSID:v5];
        v16 = *(*(a1 + 48) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        v18 = [*(a1 + 40) zoneName];
        *(*(*(a1 + 56) + 8) + 24) = [WeakRetained _isCloudSyncEnabledForZone:v18 accountInfo:*(*(*(a1 + 48) + 8) + 40)];

        v19 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v20 = *(*(*(a1 + 56) + 8) + 24);
          v22 = 136315650;
          v23 = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
          v24 = 1024;
          v25 = v20;
          v26 = 2112;
          v27 = v5;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s Updated accountInfo and isCloudSyncEnabledForZone = (%d) for %@", &v22, 0x1Cu);
        }
      }

      else
      {
        v21 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v22 = 136315138;
          v23 = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s ADCloudKitManager is deallocated unexpectedly while waiting for updating accountInfo and isCloudSyncEnabledForZone to complete.", &v22, 0xCu);
        }
      }
    }
  }
}

void sub_1000C1850(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = *(*(a1 + 32) + 112);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C19EC;
  block[3] = &unk_100510740;
  v25 = *(a1 + 40);
  v26 = v11;
  v36 = a5;
  v27 = v12;
  v28 = v13;
  v29 = *(a1 + 32);
  v30 = v14;
  v23 = *(a1 + 64);
  v16 = v23;
  v33 = v23;
  v37 = *(a1 + 96);
  v35 = *(a1 + 88);
  v31 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 80);
  v32 = v17;
  v34 = v18;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  dispatch_async(v15, block);
}

void sub_1000C19EC(uint64_t a1)
{
  v2 = [*(a1 + 32) zone];

  if (!v2)
  {
    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v52 = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Freeing zone fetch completion", buf, 0xCu);
    }

LABEL_19:
    [*(a1 + 32) setFetchInProgress:0];
    [*(a1 + 64) _executeZoneFetchCompletionBlock:0 zoneInfo:*(a1 + 32) completion:*(a1 + 96)];
    return;
  }

  if (!*(a1 + 40) && *(*(*(a1 + 104) + 8) + 24) == 1)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v52 = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]_block_invoke_2";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s No error", buf, 0xCu);
    }

    [*(a1 + 32) setRetryState:0];
    if ((*(a1 + 128) & 1) != 0 || [*(a1 + 48) count] || objc_msgSend(*(a1 + 56), "count"))
    {
      v4 = [*(a1 + 32) dataStore];
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v7 = *(a1 + 128);
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000C2150;
      v46[3] = &unk_1005106F8;
      v46[4] = *(a1 + 64);
      v47 = *(a1 + 32);
      v48 = *(a1 + 72);
      v49 = *(a1 + 96);
      v50 = *(a1 + 128);
      [v4 mergeDataWithModifiedRecords:v5 deletedRecordIDs:v6 containsAllChanges:v7 completion:v46];

      v8 = +[AFAnalytics sharedAnalytics];
      [v8 logEventWithType:4101 context:0];

      v9 = objc_alloc_init(CloudKitSchemaCKClientEvent);
      v10 = objc_alloc_init(CloudKitSchemaCKChangeReported);
      [v10 setChangeType:2];
      [v9 setCloudKitChangeReported:v10];
      v11 = +[AssistantSiriAnalytics sharedStream];
      [v11 emitMessage:v9];

      return;
    }

    v39 = [*(a1 + 32) rateLimitTimer];

    if (!v39)
    {
      [*(a1 + 32) setServerChangeToken:*(a1 + 72)];
    }

    goto LABEL_19;
  }

  [*(a1 + 32) setFetchInProgress:0];
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v52 = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
      v53 = 2112;
      v54 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Error during fetch: (%@)", buf, 0x16u);
    }

    v14 = [CKRecordZoneID alloc];
    v15 = [*(a1 + 32) zoneName];
    v16 = [*(a1 + 32) zone];
    v17 = [v16 zoneID];
    v18 = [v17 ownerName];
    v19 = [v14 initWithZoneName:v15 ownerName:v18];

    if (sub_10031B3B4(*(a1 + 40)))
    {
      if ((*(a1 + 129) & 1) == 0)
      {
        [*(a1 + 64) _prepareZoneForResetWithZoneInfo:*(a1 + 32)];
      }

      [*(a1 + 64) _resetZoneWithZoneInfo:*(a1 + 32)];
      goto LABEL_22;
    }

    v21 = sub_10031B92C(*(a1 + 40), v19);
    v22 = sub_10031B61C(v21);

    if (v22)
    {
      [*(a1 + 32) setServerChangeToken:0];
      [*(a1 + 64) _fetchChangesWithZoneInfo:*(a1 + 32) retryCount:*(a1 + 120) + 1 useSharedDatabase:*(a1 + 129) activity:*(a1 + 80) container:*(a1 + 88) mirror:0 completion:0];
LABEL_22:
      [*(a1 + 64) _executeZoneFetchCompletionBlock:*(a1 + 40) zoneInfo:*(a1 + 32) completion:*(a1 + 96)];

      return;
    }

    if (sub_10031B6CC(*(a1 + 40)))
    {
      v23 = [*(a1 + 32) zone];
      if (v23)
      {
        v24 = v23;
        v25 = [*(a1 + 32) zoneName];

        if (v25)
        {
          v26 = *(a1 + 129);
          v27 = AFSiriLogContextDaemon;
          v28 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
          if (v26)
          {
            if (v28)
            {
              *buf = 136315138;
              v52 = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
              _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s Deleting shared zone", buf, 0xCu);
            }

            v29 = [*(a1 + 32) zone];
            v30 = [v29 zoneID];

            if (v30)
            {
              v31 = [v30 ownerName];

              if (v31)
              {
                v32 = *(*(a1 + 64) + 40);
                v33 = [v30 ownerName];
                [v32 deleteShareForUser:v33 markForReinvitation:1 completion:&stru_100510718];
              }
            }
          }

          else
          {
            if (v28)
            {
              *buf = 136315138;
              v52 = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
              _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s Deleting private zone", buf, 0xCu);
            }

            [*(a1 + 64) _prepareZoneForResetWithZoneInfo:*(a1 + 32)];
            v40 = *(a1 + 64);
            v41 = *(a1 + 32);
            v44[0] = _NSConcreteStackBlock;
            v44[1] = 3221225472;
            v44[2] = sub_1000C223C;
            v44[3] = &unk_10051C9D0;
            v44[4] = v40;
            v45 = v41;
            [v40 _deleteRecordZoneWithZoneInfo:v45 completion:v44];
          }
        }
      }

      goto LABEL_22;
    }

    if (sub_10031BAC0(*(a1 + 40)))
    {
      v34 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a1 + 40);
        *buf = 136315394;
        v52 = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
        v53 = 2112;
        v54 = v43;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s Keychain sync incomplete (%@)", buf, 0x16u);
      }

      *(*(a1 + 64) + 49) = 1;
      goto LABEL_22;
    }

    v35 = *(a1 + 88);
    v36 = *(a1 + 64);
    v37 = [*(a1 + 32) zoneName];
    if (v35)
    {
      v38 = [v36 _isCloudSyncEnabledForZone:v37 accountInfo:*(*(*(a1 + 112) + 8) + 40)];

      if ((v38 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v42 = [v36 _isCloudSyncEnabledForZone:v37];

      if (!v42)
      {
        goto LABEL_22;
      }
    }

    [*(*(a1 + 64) + 56) handleRateLimitedError:*(a1 + 40) forZoneInfo:*(a1 + 32) operationType:1];
    goto LABEL_22;
  }
}

void sub_1000C2150(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 112);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C2464;
  v8[3] = &unk_100517E58;
  v9 = *(a1 + 40);
  v10 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v7 = v3;
  dispatch_async(v4, v8);
}

void sub_1000C223C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 112);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C23A0;
  block[3] = &unk_10051DB68;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_1000C22F4(id a1)
{
  v1 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315138;
    v3 = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s Deleted shared zone", &v2, 0xCu);
  }
}

void sub_1000C23A0(uint64_t a1)
{
  if (!sub_10031BA50(*(a1 + 32)))
  {
    [*(a1 + 40) _resetZoneWithZoneInfo:*(a1 + 48)];
  }

  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]_block_invoke_2";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Deleted private zone", &v3, 0xCu);
  }
}

id sub_1000C2464(uint64_t a1)
{
  [*(a1 + 32) setFetchInProgress:0];
  if (*(a1 + 40) || ([*(a1 + 32) rateLimitTimer], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    result = [*(a1 + 56) _resetZoneFetchCompletionBlock:*(a1 + 32)];
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]_block_invoke_2";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Setting server change token", &v7, 0xCu);
    }

    [*(a1 + 32) setServerChangeToken:*(a1 + 48)];
    result = [*(a1 + 56) _executeZoneFetchCompletionBlock:0 zoneInfo:*(a1 + 32) completion:*(a1 + 64)];
  }

  if (*(a1 + 72) == 1 && (*(a1 + 73) & 1) == 0)
  {
    v4 = *(a1 + 56);
    if (v4[17])
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v7 = 136315138;
        v8 = "[ADCloudKitManager _fetchChangesWithZoneInfo:retryCount:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Synchronizing with mirrored container, when downloading all changes", &v7, 0xCu);
        v4 = *(a1 + 56);
      }

      return [v4 _synchronizeMirroredContainer:*(a1 + 32)];
    }
  }

  return result;
}

void sub_1000C2E38(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    if (!sub_10031B61C(v13))
    {
      v21 = sub_10031B3B4(v14);
      v22 = AFSiriLogContextDaemon;
      v23 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
      if (!v21)
      {
        if (!v23)
        {
          goto LABEL_13;
        }

        v16 = v22;
        v17 = [v10 zoneName];
        v28 = *(a1 + 32);
        v29 = 136315906;
        v30 = "[ADCloudKitManager _fetchChangesFromZone:serverChangeToken:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
        v31 = 2112;
        v32 = v17;
        v33 = 2112;
        v34 = v14;
        v35 = 2112;
        v36 = v28;
        v18 = "%s Failed to fetch changes in zone (%@) with error (%@) for container %@";
        v24 = v16;
        v25 = 42;
        goto LABEL_15;
      }

      if (!v23)
      {
        goto LABEL_13;
      }

      v16 = v22;
      v17 = [v10 zoneName];
      v29 = 136315394;
      v30 = "[ADCloudKitManager _fetchChangesFromZone:serverChangeToken:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
      v31 = 2112;
      v32 = v17;
      v18 = "%s Zone does not exist (%@)";
LABEL_11:
      v24 = v16;
      v25 = 22;
LABEL_15:
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v18, &v29, v25);
      goto LABEL_7;
    }

    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      v17 = [v10 zoneName];
      v29 = 136315394;
      v30 = "[ADCloudKitManager _fetchChangesFromZone:serverChangeToken:useSharedDatabase:activity:container:mirror:completion:]_block_invoke_4";
      v31 = 2112;
      v32 = v17;
      v18 = "%s Change token expired for zone (%@)";
      goto LABEL_11;
    }
  }

  else
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = v19;
      v17 = [v10 zoneName];
      v20 = *(a1 + 32);
      v29 = 136315650;
      v30 = "[ADCloudKitManager _fetchChangesFromZone:serverChangeToken:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
      v31 = 2112;
      v32 = v17;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Fetched changes successfully in zone (%@) for container %@", &v29, 0x20u);
LABEL_7:
    }
  }

LABEL_13:
  v26 = *(*(a1 + 40) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v11;
}

void sub_1000C3108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    [v5 databaseScope];
    v7 = CKDatabaseScopeString();
    v8 = [*(a1 + 40) count];
    v9 = [*(a1 + 48) count];
    v19 = 136315906;
    v20 = "[ADCloudKitManager _fetchChangesFromZone:serverChangeToken:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
    v21 = 2112;
    v22 = v7;
    v23 = 2048;
    v24 = v8;
    v25 = 2048;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Finished fetching changes in database (%@), %zd modified records %zd deleted records", &v19, 0x2Au);
  }

  if (v3)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 56);
      v15 = v10;
      v16 = [v14 zoneID];
      v17 = [v16 zoneName];
      v18 = *(a1 + 64);
      v19 = 136315906;
      v20 = "[ADCloudKitManager _fetchChangesFromZone:serverChangeToken:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
      v21 = 2112;
      v22 = v3;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Failed to fetch changes with error (%@) on zone %@ for container %@", &v19, 0x2Au);
    }
  }

  if (sub_10031B3B4(v3))
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315138;
      v20 = "[ADCloudKitManager _fetchChangesFromZone:serverChangeToken:useSharedDatabase:activity:container:mirror:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Zone does not exist", &v19, 0xCu);
    }
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    if (v3)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(a1 + 88);
    }

    (*(v12 + 16))(v12, v3, *(a1 + 40), *(a1 + 48), v13, *(*(*(a1 + 80) + 8) + 40));
  }
}

void sub_1000C34D4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 recordName];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_1000C3A34(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v5 options];
  v7 = [v6 accountOverrideInfo];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v5 options];
    v10 = [v9 accountOverrideInfo];
    v11 = [v10 accountID];
    LODWORD(v8) = [v8 isEqualToString:v11];

    if (v8)
    {
      v12 = [*(a1 + 40) ckAcctInfo];
      v13 = [*(a1 + 48) _trackedCKAccountInfoForiCloudAltDSID:v14];

      if (v12 == v13)
      {
        [*(a1 + 48) _fetchChangesWithZoneInfo:*(a1 + 40) retryCount:0 useSharedDatabase:0 activity:0 container:*(a1 + 56) mirror:0];
      }
    }
  }
}

void sub_1000C3D18(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [*(a1 + 32) subscriptionList];
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      v5 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(a1 + 40) + 192);
        v7 = [*(*(&v13 + 1) + 8 * v5) subscriptionID];
        v8 = [*(a1 + 48) privateCloudDatabase];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1000C3EC0;
        v11[3] = &unk_100510590;
        v9 = *(a1 + 48);
        v11[4] = *(a1 + 40);
        v12 = v9;
        [v6 registerForSubscriptionWithID:v7 inDatabase:v8 handler:v11];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }
}

void sub_1000C3EC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 112);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3F78;
  block[3] = &unk_10051DB68;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_1000C4154(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  if ([*(a1 + 32) _isCloudSyncEnabledForZone:@"com.apple.assistant.backedup" accountInfo:*(a1 + 40)])
  {
    v3 = [ADCloudKitRecordZoneInfo alloc];
    v22 = qword_10058FFA8;
    v4 = [NSArray arrayWithObjects:&v22 count:1];
    v5 = [(ADCloudKitRecordZoneInfo *)v3 initWithZoneName:@"com.apple.assistant.backedup" subscriptionNames:v4 ckAccountInfo:*(a1 + 40)];

    [*(a1 + 32) _fetchChangesWithZoneInfo:v5 retryCount:0 useSharedDatabase:0 activity:0 container:*(a1 + 48) mirror:0];
    v6 = [*(*(a1 + 32) + 168) objectForKey:@"com.apple.assistant.backedup"];
    [v2 addObjectsFromArray:v6];

    [v2 addObject:v5];
    [*(*(a1 + 32) + 168) setValue:v2 forKey:@"com.apple.assistant.backedup"];
    v7 = objc_alloc_init(ADCloudKitKeyValueDataStore);
    [(ADCloudKitRecordZoneInfo *)v5 setDataStore:v7];

    [*(a1 + 32) _setupZoneSubscriptionsForSecondaryAccount:*(a1 + 48) zoneInfo:v5];
  }

  if ([*(a1 + 32) _isCloudSyncEnabledForZone:@"com.apple.assistant.account.status" accountInfo:*(a1 + 40)])
  {
    v8 = [ADCloudKitRecordZoneInfo alloc];
    v21 = qword_10058FFB0;
    v9 = [NSArray arrayWithObjects:&v21 count:1];
    v10 = [(ADCloudKitRecordZoneInfo *)v8 initWithZoneName:@"com.apple.assistant.account.status" subscriptionNames:v9 ckAccountInfo:*(a1 + 40)];

    [*(a1 + 32) _fetchChangesWithZoneInfo:v10 retryCount:0 useSharedDatabase:0 activity:0 container:*(a1 + 48) mirror:0];
    v11 = +[NSMutableArray array];

    v12 = [*(*(a1 + 32) + 168) objectForKey:@"com.apple.assistant.account.status"];
    [v11 addObjectsFromArray:v12];

    [v11 addObject:v10];
    [*(*(a1 + 32) + 168) setValue:v11 forKey:@"com.apple.assistant.account.status"];
    v13 = objc_alloc_init(ADCloudKitAccountStatusDataStore);
    [(ADCloudKitRecordZoneInfo *)v10 setDataStore:v13];

    [*(a1 + 32) _setupZoneSubscriptionsForSecondaryAccount:*(a1 + 48) zoneInfo:v10];
    v2 = v11;
  }

  if ([*(a1 + 32) _isCloudSyncEnabledForZone:@"com.apple.assistant.multiuser.shared" accountInfo:*(a1 + 40)])
  {
    *(*(a1 + 32) + 48) = 1;
    v14 = [ADCloudKitRecordZoneInfo alloc];
    v20[0] = qword_10058FFB8;
    v20[1] = qword_10058FFC0;
    v15 = [NSArray arrayWithObjects:v20 count:2];
    v16 = [(ADCloudKitRecordZoneInfo *)v14 initWithZoneName:@"com.apple.assistant.multiuser.shared" subscriptionNames:v15 ckAccountInfo:*(a1 + 40)];

    [*(a1 + 32) _fetchChangesWithZoneInfo:v16 retryCount:0 useSharedDatabase:0 activity:0 container:*(a1 + 48) mirror:0 completion:&stru_100510568];
    v17 = +[NSMutableArray array];

    v18 = [*(*(a1 + 32) + 168) objectForKey:@"com.apple.assistant.multiuser.shared"];
    [v17 addObjectsFromArray:v18];

    [v17 addObject:v16];
    [*(*(a1 + 32) + 168) setValue:v17 forKey:@"com.apple.assistant.multiuser.shared"];
    v19 = [[ADCloudKitMultiUserSharedDataStore alloc] initWithInstanceContext:*(*(a1 + 32) + 72)];
    [(ADCloudKitRecordZoneInfo *)v16 setDataStore:v19];
    [*(a1 + 32) _setupZoneSubscriptionsForSecondaryAccount:*(a1 + 48) zoneInfo:v16];

    v2 = v17;
  }
}

void sub_1000C4548(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitManager _setupZonesForSecondaryAccount:container:acctInfo:]_block_invoke_2";
    v6 = 2112;
    v7 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Finished setting up MU container with error %@", &v4, 0x16u);
  }
}

void sub_1000C46A4(uint64_t a1)
{
  v3 = [*(a1 + 32) _trackedCKContainerForiCloudAltDSID:*(a1 + 40)];
  v2 = [*(a1 + 32) _trackedCKAccountInfoForiCloudAltDSID:*(a1 + 40)];
  [*(a1 + 32) _setupZonesForSecondaryAccount:*(a1 + 40) container:v3 acctInfo:v2];
}

void sub_1000C5470(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 112);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C550C;
  v7[3] = &unk_10051E010;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

id sub_1000C550C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 160);
  if (v4 != v2)
  {
    v5 = [v4 isEqualToString:?];
    v3 = *(a1 + 32);
    if ((v5 & 1) == 0)
    {
      if (*(v3 + 160))
      {
        v6 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v16 = "[ADCloudKitManager _handleAccountStatusChange:]_block_invoke_2";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Deleting cached user data", buf, 0xCu);
          v3 = *(a1 + 32);
        }

        [v3 _deleteUserData];
      }

      v7 = [*(a1 + 40) copy];
      v8 = *(a1 + 32);
      v9 = *(v8 + 160);
      *(v8 + 160) = v7;

      _AFPreferencesSetCloudUserID();
      AFBackedUpPreferencesSynchronize();
      v3 = *(a1 + 32);
    }
  }

  *(v3 + 49) = 0;
  v10 = AFIsMultiUserCompanion();
  v11 = *(a1 + 32);
  if (!v10)
  {
    return [v11 _setupAccountState];
  }

  v12 = v11[17];
  if (!v12)
  {
    return [v11 _setupAccountState];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000C5690;
  v14[3] = &unk_10051C498;
  v14[4] = v11;
  return [v12 createMirroredZonesWithCompletion:v14];
}

void sub_1000C5690(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && sub_10031BAC0(v3))
  {
    *(*(a1 + 32) + 49) = 1;
  }

  [*(a1 + 32) _setupAccountState];
}

void sub_1000C5800(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 112);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C58CC;
  block[3] = &unk_10051DB68;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_1000C58CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[ADCloudKitManager _setupAccount]_block_invoke_2";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error while retrieving account status: %@", &v4, 0x16u);
    }
  }

  if (*(a1 + 40))
  {
    [*(a1 + 48) _handleAccountStatusChange:?];
  }
}

id sub_1000C5A40(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:kAFPreferencesDidChangeDarwinNotification];
  if (result)
  {
    v3 = 92;
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:@"ADPreferencesSharedUserIdentifierDidChangeNotification"];
    if (!result)
    {
      return result;
    }

    v3 = 96;
  }

  ++*(*(a1 + 40) + v3);
  return result;
}

void sub_1000C5BA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 92);
  if (v2)
  {
    *(v1 + 92) = v2 - 1;
  }

  else
  {
    v4 = _AFPreferencesCloudSyncEnabled();
    v5 = *(a1 + 32);
    if (*(v5 + 89) != v4)
    {
      *(v5 + 89) = v4;
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        if (*(*(a1 + 32) + 89))
        {
          v7 = @"enabled";
        }

        else
        {
          v7 = @"disabled";
        }

        v18 = 136315394;
        v19 = "[ADCloudKitManager _preferencesDidChange]_block_invoke";
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Cloud sync is now %@", &v18, 0x16u);
      }

      v8 = *(a1 + 32);
      if (v8[89] == 1)
      {
        [v8 _triggerVoiceProfileUploadPostBuddyOrCloudSyncChange];
        [*(a1 + 32) _initializeZones];
        [*(a1 + 32) _setupAccountState];
        [*(a1 + 32) _triggerMultiUserSharingPostBuddyOrCloudSyncChange];
      }

      else
      {
        [v8 _cleanUpRecordZonesAndSubscriptions];
        v9 = +[ADMultiUserMeDevice sharedInstance];
        v10 = [v9 isMeDevice];

        if (v10)
        {
          v11 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            v18 = 136315138;
            v19 = "[ADCloudKitManager _preferencesDidChange]_block_invoke";
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Disabling RMV since Siri-over-iCloud is disabled", &v18, 0xCu);
          }

          v12 = +[ADHomeInfoManager sharedInfoManager];
          [v12 setRecognizeMyVoiceEnabled:0];
        }
      }

      v13 = +[NSNotificationCenter defaultCenter];
      [v13 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];

      v5 = *(a1 + 32);
    }

    if (*(v5 + 176))
    {
      v14 = [v5 _isCloudSyncEnabledForZone:@"com.apple.assistant.account.status"];
      v5 = *(a1 + 32);
      if (v14)
      {
        v15 = [*(v5 + 176) dataStore];
        [v15 synchronizeWithCompletion:0];

        v5 = *(a1 + 32);
      }
    }

    if ([v5 _isCloudSyncEnabledForZone:@"com.apple.assistant.multiuser.shared"])
    {
      v16 = [*(*(a1 + 32) + 184) dataStore];
      [v16 synchronizeWithCompletion:0];
    }

    if ([*(a1 + 32) _isCloudSyncEnabledForZone:@"com.apple.assistant.multiuser.shared"])
    {
      v17 = [*(*(a1 + 32) + 216) dataStore];
      [v17 synchronizeWithCompletion:0];
    }
  }
}

void sub_1000C5F60(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 184) dataStore];
  [v1 synchronizeWithCompletion:0];
}

void sub_1000C60AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (v3)
  {
    *(v2 + 96) = v3 - 1;
  }

  else
  {
    v4 = [*(v2 + 184) dataStore];
    [v4 synchronizeKeychainPreferencesWithCompletion:0];
  }
}

void sub_1000C620C(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 184) dataStore];
  [v1 synchronizeWithCompletion:0];
}

void sub_1000C6358(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 184) dataStore];
  [v1 synchronizeWithCompletion:0];
}

void sub_1000C64A4(uint64_t a1)
{
  v2 = +[ADBuddyMonitor sharedManager];
  v3 = [v2 isPastBuddy];

  v4 = *(a1 + 32);
  if (*(v4 + 88) != v3)
  {
    *(v4 + 88) = v3;
    v5 = *(a1 + 32);
    if (v5[88] == 1)
    {
      [v5 _triggerVoiceProfileUploadPostBuddyOrCloudSyncChange];
      [*(a1 + 32) _initializeZones];
      [*(a1 + 32) _setupAccountState];
      v6 = *(a1 + 32);

      [v6 _triggerMultiUserSharingPostBuddyOrCloudSyncChange];
    }

    else
    {

      [v5 _cleanUpRecordZonesAndSubscriptions];
    }
  }
}

id sub_1000C6668(uint64_t a1)
{
  [*(a1 + 32) _setupAccount];
  result = AFIsATV();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _setupSecondaryAccounts];
  }

  return result;
}

void sub_1000C730C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  if (v3)
  {
    v5 = _AFBackedUpPreferencesBoolValueForKey();
    if (!v5)
    {
      v6 = +[AFPreferences sharedPreferences];
      [v6 setCloudSyncEnabled:1];
    }
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[ADCloudKitManager _setDefaultiCloudEnabledState]_block_invoke";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Enabling Siri account failed with error: %@", &v8, 0x16u);
    }
  }
}

void sub_1000C7BEC(uint64_t a1)
{
  [*(a1 + 32) _setDefaultiCloudEnabledState];
  v2 = *(*(a1 + 32) + 176);
  v3 = objc_alloc_init(ADCloudKitAccountStatusDataStore);
  [v2 setDataStore:v3];

  if ([*(a1 + 32) _zoneShouldUpdateMirroredZone])
  {
    v4 = [*(*(a1 + 32) + 176) dataStore];
    [v4 setDataStoreShouldMirrorData:1];
  }

  v5 = *(*(a1 + 32) + 184);
  v6 = objc_alloc_init(ADCloudKitKeyValueDataStore);
  [v5 setDataStore:v6];

  if ([*(a1 + 32) _zoneShouldUpdateMirroredZone])
  {
    v7 = [*(*(a1 + 32) + 184) dataStore];
    [v7 setDataStoreShouldMirrorData:1];
  }

  *(*(a1 + 32) + 90) = sub_10000F1C0();
  v8 = [[ADCloudKitMultiUserSharedDataStore alloc] initWithInstanceContext:*(*(a1 + 32) + 72)];
  [*(*(a1 + 32) + 216) setDataStore:v8];
  if ([*(a1 + 32) _zoneShouldUpdateMirroredZone])
  {
    v9 = [*(*(a1 + 32) + 216) dataStore];
    [v9 setDataStoreShouldMirrorData:1];
  }

  *(*(a1 + 32) + 89) = _AFPreferencesCloudSyncEnabled();
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    if (*(*(a1 + 32) + 89))
    {
      v11 = @"enabled";
    }

    else
    {
      v11 = @"disabled";
    }

    v19 = 136315394;
    v20 = "[ADCloudKitManager initWithInstanceContext:]_block_invoke";
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Cloud sync is %@", &v19, 0x16u);
  }

  v12 = +[ADBuddyMonitor sharedManager];
  *(*(a1 + 32) + 88) = [v12 isPastBuddy];

  [*(a1 + 32) _initializeZones];
  [*(a1 + 32) _setupAccount];
  if (AFIsATV())
  {
    v13 = [[CKNotificationListener alloc] initWithMachServiceName:@"com.apple.assistantd.aps"];
    v14 = *(a1 + 32);
    v15 = *(v14 + 192);
    *(v14 + 192) = v13;

    [*(a1 + 32) _setupSecondaryAccounts];
  }

  v16 = [[ADCloudKitRetryManager alloc] initWithQueue:*(*(a1 + 32) + 112)];
  v17 = *(a1 + 32);
  v18 = *(v17 + 56);
  *(v17 + 56) = v16;
}

id sub_1000C7E94(uint64_t a1, void *a2)
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "_ADCloudKitOutputLanguageDidChangeCallback";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  return [a2 _outputLanguageDidChange];
}

id sub_1000C7F48(uint64_t a1, void *a2)
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "_ADCloudKitLanguageCodeDidChangeCallback";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  return [a2 _languageCodeDidChange];
}

id sub_1000C7FFC(uint64_t a1, void *a2)
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "_ADCloudKitPreferencesDidChangeCallback";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  return [a2 _preferencesDidChange];
}

void sub_1000C8268(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [v5 setEnabled:*(a1 + 48) forDataclass:kAccountDataclassSiri];
    [*(a1 + 32) saveAccount:v5 withCompletionHandler:*(a1 + 40)];
  }

  else
  {
    if (v6)
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "+[ADCloudKitManager _setAppleAccountSiriStateEnabled:withCompletion:]_block_invoke";
        v12 = 2112;
        v13 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Error while retrieving primary account: %@", &v10, 0x16u);
      }
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v7);
    }
  }
}

uint64_t sub_1000C8564(uint64_t a1)
{
  qword_10058FFA0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_1000C89A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000C89C0(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _timeoutsExpiringAfter:*(a1 + 40)];

  return _objc_release_x1();
}

void sub_1000C8E04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [SASyncAnchor _af_normalizedKeyForKey:AFIntentSupportAndVocabSyncKey appBundleID:v5 syncSlotName:0];
  v8 = [SASyncAnchor _af_normalizedKeyForKey:AFIntentSupportAndVocabSyncNanoKey appBundleID:v5 syncSlotName:0];
  v21 = v8;
  v22 = v7;
  if (([*(a1 + 32) containsObject:v7] & 1) != 0 || objc_msgSend(*(a1 + 32), "containsObject:", v8))
  {
    [v6 count];
    v19 = 1;
  }

  else
  {
    if (![v6 count])
    {
      [*(a1 + 40) setObject:v6 forKey:v5];
      goto LABEL_19;
    }

    v19 = 0;
  }

  v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = v6;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    v14 = AFSynapseSyncAnchorKey;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [SASyncAnchor _af_normalizedKeyForKey:v14 appBundleID:v5 syncSlotName:v16];
        if (([*(a1 + 32) containsObject:v17] & 1) == 0)
        {
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v18 = 0;
  }

  else
  {
    v18 = v19;
  }

  v8 = v21;
  if ((v18 & 1) == 0)
  {
    [*(a1 + 40) setObject:v9 forKey:v5];
  }

  v6 = v20;
  v7 = v22;
LABEL_19:
}

void sub_1000C9548(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = [SASyncAnchor _af_normalizedKeyForKey:AFSynapseSyncAnchorKey appBundleID:*(a1 + 32) syncSlotName:*(a1 + 40)];
  v4 = [*(a1 + 48) _timeoutsExpiringAfter:v2];
  v5 = v4;
  if (v3)
  {
    [v4 objectForKey:v3];
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 136315650;
      v10 = "[ADSyncDeny checkPermissionToSyncSlot:forApp:completion:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s No normalized key could be computed for %@ %@", &v9, 0x20u);
    }
  }

  [*(a1 + 48) _saveTimeouts:v5];
  (*(*(a1 + 56) + 16))();
}

void sub_1000C9784(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = [*(a1 + 32) _timeoutsExpiringAfter:v2];
  [*(a1 + 32) _saveTimeouts:v3];
  +[_INVocabulary supportedVocabularyStringTypes];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v12 = v2;
    v7 = *v14;
    v8 = AFSynapseSyncAnchorKey;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [SASyncAnchor _af_normalizedKeyForKey:v8 appBundleID:*(a1 + 40) syncSlotName:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          v11 = [v3 objectForKey:v10];

          if (v11)
          {

            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

LABEL_12:
    v2 = v12;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000C9AC0(uint64_t a1)
{
  v2 = [*(a1 + 32) _storePath];
  v8 = [NSDictionary dictionaryWithContentsOfFile:v2];

  v3 = *(a1 + 32);
  v4 = +[NSDate date];
  v5 = [v3 _timeouts:v8 expiringAfter:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;
}

uint64_t sub_1000C9C14(uint64_t a1)
{
  qword_10058FFC8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000C9DCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9EA8;
  block[3] = &unk_10051E088;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_1000C9EA8(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

uint64_t sub_1000CA338(uint64_t a1)
{
  qword_10058FFE0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_1000CAABC(uint64_t a1)
{
  result = AFKeychainSetValueForAccountAndKey();
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

uint64_t sub_1000CAE1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000CAE34(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = AFKeychainValueForAccountAndKey();

  return _objc_release_x1();
}

uint64_t sub_1000CAEF8(uint64_t result)
{
  *(*(result + 32) + 68) |= 1u;
  *(*(result + 32) + 68) |= 2u;
  *(*(result + 32) + 68) |= 4u;
  *(*(result + 32) + 68) |= 8u;
  *(*(result + 32) + 68) |= 0x10u;
  *(*(result + 32) + 68) |= 0x20u;
  *(*(result + 32) + 68) |= 0x40u;
  *(*(result + 32) + 68) |= 0x80u;
  *(*(result + 32) + 68) |= 0x100u;
  *(*(result + 32) + 68) |= 0x200u;
  return result;
}

id sub_1000CB53C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isEqualToString:*(*(a1 + 32) + 144)];
  if (a4)
  {
    *a4 = result;
  }

  return result;
}

id sub_1000CE244(__int16 a1)
{
  if ((a1 - 1) > 3u)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

void sub_1000CE5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CE60C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000CE6C4;
    v7[3] = &unk_10051E010;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_1000CEC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CEC3C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000CECF4;
    v7[3] = &unk_10051E010;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_1000CECF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSSet alloc];
  if (*(a1 + 40))
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = [v3 initWithArray:v4];
  [v2 _setDeviceIdentifiers:v5];
}

void sub_1000CF1F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    *buf = 136315906;
    v17 = "[ADDeviceSyncMessagingServiceRapport _handleIncomingDictionary:fromDeviceWithIdentifier:completion:]_block_invoke";
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, replyMessage = %@, error = %@", buf, 0x2Au);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    if (v5)
    {
      v15 = 0;
      v10 = sub_1002EF120(v5, &v15);
      v11 = v15;
      if (v11)
      {
        v12 = *(*(a1 + 40) + 16);
      }

      else
      {
        v13 = AFSiriLogContextDeviceSync;
        if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1 + 32);
          *buf = 136315650;
          v17 = "[ADDeviceSyncMessagingServiceRapport _handleIncomingDictionary:fromDeviceWithIdentifier:completion:]_block_invoke";
          v18 = 2112;
          v19 = v14;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, replyDictionary = %@", buf, 0x20u);
        }

        v12 = *(*(a1 + 40) + 16);
      }

      v12();
    }

    else
    {
      (*(v9 + 16))(v9, 0, v6);
    }
  }
}

void sub_1000CF66C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CF75C;
  v10[3] = &unk_10051E0D8;
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_1000CF75C(void *a1)
{
  v2 = AFSiriLogContextDeviceSync;
  if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    *buf = 136315906;
    v15 = "[ADDeviceSyncMessagingServiceRapport _handleOutgoingMessage:toDeviceWithIdentifier:completion:]_block_invoke_2";
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, replyDictionary = %@, error = %@", buf, 0x2Au);
  }

  v6 = a1[7];
  if (v6)
  {
    v7 = a1[5];
    if (v7)
    {
      v13 = 0;
      v8 = sub_1002EF2E4(v7, &v13);
      v9 = v13;
      if (v9)
      {
        v10 = *(a1[7] + 16);
      }

      else
      {
        v11 = AFSiriLogContextDeviceSync;
        if (os_log_type_enabled(AFSiriLogContextDeviceSync, OS_LOG_TYPE_INFO))
        {
          v12 = a1[4];
          *buf = 136315650;
          v15 = "[ADDeviceSyncMessagingServiceRapport _handleOutgoingMessage:toDeviceWithIdentifier:completion:]_block_invoke";
          v16 = 2112;
          v17 = v12;
          v18 = 2112;
          v19 = v8;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s deviceIdentifier = %@, replyMessage = %@", buf, 0x20u);
        }

        v10 = *(a1[7] + 16);
      }

      v10();
    }

    else
    {
      (*(v6 + 16))(v6, 0, a1[6]);
    }
  }
}

id sub_1000D00BC(uint64_t a1)
{
  [*(a1 + 32) _handleCompanionServiceReadyStateDidChange];
  [*(a1 + 32) _handleCompanionServiceActiveDevicesDidChange];
  v2 = *(a1 + 32);

  return [v2 _handleCompanionServiceStereoConfigurationDidChange];
}

void sub_1000D02AC(uint64_t a1)
{
  if (AFIsInternalInstall())
  {
    if ([*(a1 + 32) _siriOrDictationIsEnabled])
    {
      v2 = +[AFPreferences sharedPreferences];
      v3 = [v2 longLivedIdentifierUploadingEnabled];

      if (v3)
      {
        v4 = +[ADCommandCenter sharedCommandCenter];
        [v4 fetchActiveAccount:&stru_100510D20];
      }
    }
  }
}

void sub_1000D0350(id a1, ADAccount *a2)
{
  v2 = a2;
  v4 = +[FLLogger sharedLogger];
  v3 = [(ADAccount *)v2 speechIdentifier];

  [v4 setValue:v3 forUploadHeaderNamed:@"userId"];
}

void sub_1000D05F0(id a1)
{
  qword_10058FFF0 = objc_alloc_init(ADSiriAnalyticsServiceHost);

  _objc_release_x1();
}

void sub_1000D0A04(uint64_t a1, xpc_object_t xdict)
{
  if (xdict)
  {
    xpc_dictionary_get_BOOL(xdict, AFExternalRequestReplyKeyResult);
  }

  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  xpc_connection_cancel(v3);
}

void sub_1000D0EA4(uint64_t a1, xpc_object_t xdict)
{
  if (xdict)
  {
    xpc_dictionary_get_BOOL(xdict, AFExternalRequestReplyKeyResult);
  }

  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  xpc_connection_cancel(v3);
}

void sub_1000D25C4(uint64_t a1, uint64_t a2)
{
  v4 = [ADServiceManager _serviceBundleIDFromServiceReloadNotification:a2];
  v3 = [*(*(a1 + 32) + 16) objectForKey:v4];
  [*(a1 + 40) addObject:v3];
}

void sub_1000D57EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  [*(a1 + 32) setObject:v7 forKey:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D5950;
  v9[3] = &unk_100510DB0;
  v10 = v7;
  v8 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
}

void sub_1000D58DC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [v4 setObject:v6 forKey:v5];
}

void sub_1000D5950(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [v4 setObject:v6 forKey:v5];
}

id sub_1000D5A5C(uint64_t a1)
{
  result = [*(a1 + 32) _pruneAppsCacheWithTruth:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _save];
  }

  return result;
}

void sub_1000D638C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) shouldIgnoreSyncKey:v5])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[ADSyncSnapshot _readFromDisk]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Dropping ignored sync data of type %@", &v9, 0x16u);
    }
  }

  else
  {
    v8 = [[_ADChunkInfo alloc] initWithDictionary:v6];
    if ([(_ADChunkInfo *)v8 isValid])
    {
      [*(a1 + 40) setObject:v8 forKey:v5];
    }
  }
}

void sub_1000D64B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (sub_1000D6628(v5) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000D6674;
    v8[3] = &unk_100513FF8;
    v9 = *(a1 + 32);
    v10 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v8];
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[ADSyncSnapshot _readFromDisk]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Saved %@ data is invalid, continuing...", buf, 0x16u);
    }
  }
}

uint64_t sub_1000D6628(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1000D6674(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [[_ADChunkInfo alloc] initWithDictionary:v5];

  if (sub_1000D6628(v8) && [(_ADChunkInfo *)v6 isValid])
  {
    v7 = [*(a1 + 32) objectForKey:*(a1 + 40)];
    if (!v7)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      [*(a1 + 32) setObject:v7 forKey:*(a1 + 40)];
    }

    [v7 setObject:v6 forKey:v8];
  }
}

id sub_1000D6820(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADSyncSnapshot deleteSavedSnapshots]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s ", &v4, 0xCu);
  }

  [*(*(a1 + 32) + 16) removeAllObjects];
  [*(*(a1 + 32) + 8) removeAllObjects];
  return [*(a1 + 32) _save];
}

void sub_1000D7280(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 anchorWithKey:a2 appID:0 syncType:0];
  [*(a1 + 32) addObject:v4];
}

void sub_1000D72E4(uint64_t a1, void *a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D73B0;
  v6[3] = &unk_100510DD8;
  v7 = a2;
  v8 = *(a1 + 32);
  v5 = v7;
  [a3 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_1000D73B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 anchorWithKey:AFSynapseSyncAnchorKey appID:*(a1 + 32) syncType:a2];
  [*(a1 + 40) addObject:v4];
}

uint64_t sub_1000D7664(uint64_t a1)
{
  qword_10058FFF8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000D8914(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) properties];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D8A3C;
  v6[3] = &unk_100517450;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_1000D89C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 UUID];
  [v5 setTimerID:v4];

  (*(*(a1 + 40) + 16))();
}

void sub_1000D8A3C(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if ([v30 isEqual:@"timerURL"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 32) setTimerURL:v6];
  }

  else if ([v30 isEqual:@"isFiring"])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = *(a1 + 32);
    if (isKindOfClass)
    {
      v9 = [v5 BOOLValue];
      v10 = v8;
    }

    else
    {
      v10 = v8;
      v9 = 0;
    }

    [v10 setIsFiring:v9];
  }

  else if ([v30 isEqual:@"title"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    [*(a1 + 32) setTitle:v11];
  }

  else if ([v30 isEqual:@"state"])
  {
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();
    v13 = *(a1 + 32);
    if (v12)
    {
      v14 = [v5 integerValue];
      v15 = v13;
    }

    else
    {
      v15 = v13;
      v14 = 0;
    }

    [v15 setState:v14];
  }

  else if ([v30 isEqual:@"duration"])
  {
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();
    v17 = *(a1 + 32);
    if (v16)
    {
      [v5 doubleValue];
    }

    else
    {
      v18 = 0.0;
    }

    [v17 setDuration:v18];
  }

  else if ([v30 isEqual:@"type"])
  {
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();
    v20 = *(a1 + 32);
    if (v19)
    {
      v21 = [v5 integerValue];
      v22 = v20;
    }

    else
    {
      v22 = v20;
      v21 = 0;
    }

    [v22 setType:v21];
  }

  else if ([v30 isEqual:@"fireTimeInterval"])
  {
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();
    v24 = *(a1 + 32);
    if (v23)
    {
      [v5 doubleValue];
    }

    else
    {
      v25 = 0.0;
    }

    [v24 setFireTimeInterval:v25];
  }

  else if ([v30 isEqual:@"fireDate"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v5;
    }

    else
    {
      v26 = 0;
    }

    [*(a1 + 32) setFireDate:v26];
  }

  else if ([v30 isEqual:@"firedDate"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v5;
    }

    else
    {
      v27 = 0;
    }

    [*(a1 + 32) setFiredDate:v27];
  }

  else if ([v30 isEqual:@"dismissedDate"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v5;
    }

    else
    {
      v28 = 0;
    }

    [*(a1 + 32) setDismissedDate:v28];
  }

  else if ([v30 isEqual:@"lastModifiedDate"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v5;
    }

    else
    {
      v29 = 0;
    }

    [*(a1 + 32) setLastModifiedDate:v29];
  }
}

void sub_1000D8DFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) timerID];
  [v3 setUUID:v4];

  v23[0] = @"timerURL";
  v22 = [*(a1 + 32) timerURL];
  if (v22)
  {
    [*(a1 + 32) timerURL];
  }

  else
  {
    +[NSNull null];
  }
  v21 = ;
  v24[0] = v21;
  v23[1] = @"isFiring";
  v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isFiring]);
  v24[1] = v20;
  v23[2] = @"title";
  v19 = [*(a1 + 32) title];
  if (v19)
  {
    [*(a1 + 32) title];
  }

  else
  {
    +[NSNull null];
  }
  v18 = ;
  v24[2] = v18;
  v23[3] = @"state";
  v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) state]);
  v24[3] = v17;
  v23[4] = @"type";
  v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) type]);
  v24[4] = v16;
  v23[5] = @"duration";
  [*(a1 + 32) duration];
  v15 = [NSNumber numberWithDouble:?];
  v24[5] = v15;
  v23[6] = @"fireTimeInterval";
  [*(a1 + 32) fireTimeInterval];
  v14 = [NSNumber numberWithDouble:?];
  v24[6] = v14;
  v23[7] = @"fireDate";
  v5 = [*(a1 + 32) fireDate];
  if (v5)
  {
    [*(a1 + 32) fireDate];
  }

  else
  {
    +[NSNull null];
  }
  v6 = ;
  v24[7] = v6;
  v23[8] = @"firedDate";
  v7 = [*(a1 + 32) firedDate];
  if (v7)
  {
    [*(a1 + 32) firedDate];
  }

  else
  {
    +[NSNull null];
  }
  v8 = ;
  v24[8] = v8;
  v23[9] = @"dismissedDate";
  v9 = [*(a1 + 32) dismissedDate];
  if (v9)
  {
    [*(a1 + 32) dismissedDate];
  }

  else
  {
    +[NSNull null];
  }
  v10 = ;
  v24[9] = v10;
  v23[10] = @"lastModifiedDate";
  v11 = [*(a1 + 32) lastModifiedDate];
  if (v11)
  {
    [*(a1 + 32) lastModifiedDate];
  }

  else
  {
    +[NSNull null];
  }
  v12 = ;
  v24[10] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:11];
  [v3 setProperties:v13];
}

void sub_1000D9EE4(id a1)
{
  qword_100590010 = objc_alloc_init(SOClockTimerObserver);

  _objc_release_x1();
}

void sub_1000DA0AC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000DA14C;
  v4[3] = &unk_10051D2F0;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v2 sendDeviceConfig:v1 device:v3 completion:v4];
}

void sub_1000DA258(void *a1)
{
  [*(a1[4] + 48) discoveredDevices];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 bluetoothAddress];
        v9 = AFNormalizeMacAddress();

        if ([v9 isEqualToString:a1[5]])
        {
          v11 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v12 = a1[6];
            *buf = 136315650;
            v19 = "[ADCoreBluetoothV2DeviceSource fetchAudioAccessoryDeviceForBTAddress:completion:]_block_invoke";
            v20 = 2112;
            v21 = v12;
            v22 = 2112;
            v23 = v7;
            _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s : %@ -> (%@)", buf, 0x20u);
          }

          (*(a1[7] + 16))();

          goto LABEL_15;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = a1[6];
    *buf = 136315394;
    v19 = "[ADCoreBluetoothV2DeviceSource fetchAudioAccessoryDeviceForBTAddress:completion:]_block_invoke";
    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s : %@ -> nil", buf, 0x16u);
  }

  (*(a1[7] + 16))();
LABEL_15:
}

void sub_1000DA578(void *a1)
{
  [*(a1[4] + 48) discoveredDevices];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [v8 isEqualToString:a1[5]];

        if (v9)
        {
          v11 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v12 = a1[5];
            *buf = 136315650;
            v19 = "[ADCoreBluetoothV2DeviceSource fetchAudioAccessoryDeviceForCBUUID:completion:]_block_invoke";
            v20 = 2112;
            v21 = v12;
            v22 = 2112;
            v23 = v7;
            _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s : %@ -> (%@)", buf, 0x20u);
          }

          (*(a1[6] + 16))();

          goto LABEL_15;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = a1[5];
    *buf = 136315394;
    v19 = "[ADCoreBluetoothV2DeviceSource fetchAudioAccessoryDeviceForCBUUID:completion:]_block_invoke";
    v20 = 2112;
    v21 = v13;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s : %@ -> nil", buf, 0x16u);
  }

  (*(a1[6] + 16))();
LABEL_15:
}

void sub_1000DA884(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKey:a1[5]];
  if ([v2 length])
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v4 = a1[5];
      v5 = 136315650;
      v6 = "[ADCoreBluetoothV2DeviceSource fetchAddressForDeviceWithCBUUID:completion:]_block_invoke";
      v7 = 2112;
      v8 = v4;
      v9 = 2112;
      v10 = v2;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s (cached): %@ -> (%@)", &v5, 0x20u);
    }

    (*(a1[6] + 16))();
  }
}

void sub_1000DAA54(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  if ([v2 length])
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      *buf = 136315650;
      v13 = "[ADCoreBluetoothV2DeviceSource fetchCBUUIDForDeviceWithAddress:completion:]_block_invoke";
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v2;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s (cached): %@ -> (%@)", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000DABE8;
    v8[3] = &unk_100510F88;
    v5 = v4;
    v6 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    v11 = *(a1 + 48);
    [ADCoreBluetoothManager fetchCBUUIDForConnectedDeviceWithAddress:v5 completion:v8];
  }
}

void sub_1000DABE8(void *a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v6 = 136315650;
    v7 = "[ADCoreBluetoothV2DeviceSource fetchCBUUIDForDeviceWithAddress:completion:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s (caching): %@ -> (%@)", &v6, 0x20u);
  }

  [*(a1[5] + 56) setObject:v3 forKey:a1[4]];
  (*(a1[6] + 16))();
}

void sub_1000DAD5C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[ADCoreBluetoothV2DeviceSource _aadConnectionInterrupted]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s AAd was interrupted, waiting for a client to set up aad again", &v5, 0xCu);
  }

  [*(a1 + 32) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;
}

void sub_1000DB050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DB074(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[ADCoreBluetoothV2DeviceSource _aadActivatingWithRetry:andError:]_block_invoke";
    v9 = 1024;
    v10 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s AudioAccessory daemon started, token: %d", &v7, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setupDiscoveryWithRetry:0];
  }
}

void sub_1000DBB20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 112));
  _Unwind_Resume(a1);
}

void sub_1000DBB74(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleDeviceFound:v5];
  }
}

void sub_1000DBBD8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleDeviceLost:v5];
  }
}

void sub_1000DBC3C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained aadActivatingWithRetry:*(a1 + 40) andError:v5];
  }
}

void sub_1000DBCA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _aadConnectionInterrupted];
    WeakRetained = v2;
  }
}

Class sub_1000DBCE8()
{
  v4[0] = 0;
  if (!qword_100590020)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000DBE60;
    v4[4] = &unk_10051E200;
    v4[5] = v4;
    v5 = off_100510FA8;
    v6 = 0;
    qword_100590020 = _sl_dlopen();
  }

  if (!qword_100590020)
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *AudioAccessoryServicesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"ADCoreBluetoothV2DeviceSource.m" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  result = objc_getClass("AADeviceManager");
  qword_100590018 = result;
  off_10058B0B0 = sub_1000DBED4;
  return result;
}

uint64_t sub_1000DBE60()
{
  result = _sl_dlopen();
  qword_100590020 = result;
  return result;
}

void sub_1000DC338(void *a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = 136315650;
    v8 = "[ADCoreBluetoothV2DeviceSource invalidateDeviceWithAddress:cbuuid:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s : %@ CBUUID: %@", &v7, 0x20u);
  }

  v3 = [*(a1[6] + 32) objectForKey:a1[4]];
  v4 = [*(a1[6] + 40) objectForKey:a1[5]];
  if (a1[4])
  {
    [*(a1[6] + 32) removeObjectForKey:?];
    [v3 invalidate];
  }

  if (a1[5])
  {
    [*(a1[6] + 40) removeObjectForKey:?];
    if (!a1[4])
    {
      [v4 invalidate];
    }
  }
}

void sub_1000DC6D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADCoreBluetoothV2DeviceSource _deviceWithUID:createsIfAbsent:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s (caching): %@ -> (%@)", &v6, 0x20u);
  }

  [*(*(a1 + 40) + 32) setObject:*(a1 + 32) forKey:v3];
}

void sub_1000DC9F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[ADCoreBluetoothV2DeviceSource _deviceWithAddress:createsIfAbsent:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      v10 = 2112;
      v11 = v5;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s (caching): %@ -> (%@)", &v6, 0x20u);
    }

    [*(*(a1 + 40) + 40) setObject:*(a1 + 32) forKey:v3];
  }
}

uint64_t sub_1000DCBF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000DCC0C(void *a1)
{
  v2 = AFNormalizeMacAddress();
  v3 = [*(a1[5] + 72) objectForKey:v2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = a1[4];
    v8 = *(*(a1[6] + 8) + 40);
    v9 = 136315650;
    v10 = "[ADCoreBluetoothV2DeviceSource headGestureConfigurationForBTAddress:]_block_invoke";
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s  %@: %@", &v9, 0x20u);
  }
}

void sub_1000DCE34(void *a1)
{
  v2 = a1[4];
  if (!v2[6])
  {
    v3 = v2[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DCF90;
    block[3] = &unk_10051DFE8;
    block[4] = v2;
    dispatch_async(v3, block);
    v2 = a1[4];
  }

  v4 = [v2 _deviceWithUID:a1[5] createsIfAbsent:1];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[5];
    v9 = *(*(a1[6] + 8) + 40);
    *buf = 136315650;
    v12 = "[ADCoreBluetoothV2DeviceSource deviceWithUID:]_block_invoke";
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s  %@: %@", buf, 0x20u);
  }
}

id sub_1000DCF90(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[ADCoreBluetoothV2DeviceSource deviceWithUID:]_block_invoke_2";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Setting up aaDeviceManager", &v4, 0xCu);
  }

  return [*(a1 + 32) _setupDiscoveryWithRetry:1];
}

void sub_1000DD15C(void *a1)
{
  v2 = a1[4];
  if (!v2[6])
  {
    v3 = v2[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DD2B8;
    block[3] = &unk_10051DFE8;
    block[4] = v2;
    dispatch_async(v3, block);
    v2 = a1[4];
  }

  v4 = [v2 _deviceWithAddress:a1[5] createsIfAbsent:1];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[5];
    v9 = *(*(a1[6] + 8) + 40);
    *buf = 136315650;
    v12 = "[ADCoreBluetoothV2DeviceSource deviceWithAddress:]_block_invoke";
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s  %@: %@", buf, 0x20u);
  }
}

id sub_1000DD2B8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[ADCoreBluetoothV2DeviceSource deviceWithAddress:]_block_invoke_2";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Setting up aaDeviceManager", &v4, 0xCu);
  }

  return [*(a1 + 32) _setupDiscoveryWithRetry:1];
}

id sub_1000DD540(uint64_t a1)
{
  v2 = +[NSMapTable strongToWeakObjectsMapTable];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = +[NSMapTable strongToWeakObjectsMapTable];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = +[NSMapTable strongToStrongObjectsMapTable];
  v9 = *(a1 + 32);
  v10 = *(v9 + 56);
  *(v9 + 56) = v8;

  v11 = +[NSMapTable strongToStrongObjectsMapTable];
  v12 = *(a1 + 32);
  v13 = *(v12 + 64);
  *(v12 + 64) = v11;

  v14 = +[NSMapTable strongToStrongObjectsMapTable];
  v15 = *(a1 + 32);
  v16 = *(v15 + 72);
  *(v15 + 72) = v14;

  v17 = *(a1 + 32);

  return [v17 _setupDiscoveryWithRetry:1];
}

void sub_1000DD608(uint64_t a1, void *a2)
{
  v3 = [a2 event];
  v4 = [v3 contextData];
  v5 = [v4 copy];

  [*(a1 + 32) addObject:v5];
  if (*(a1 + 40))
  {
    **(a1 + 40) += [v5 length];
  }
}

void sub_1000DD6A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SISchemaClientTurnBasedEvent alloc];
  v5 = [v3 event];
  v6 = [v5 contextData];
  v7 = [v4 initWithData:v6];

  v8 = [v7 event];
  [v8 eventType];
  v9 = [v7 event];
  v10 = [v9 eventData];
  v11 = SIReflectionHydrateProtoFromEventTypeAndData();

  if (v11)
  {
    v12 = objc_alloc_init(SISchemaClientEvent);
    [v12 setEventType:v11];
    v13 = objc_alloc_init(SISchemaClientEventMetadata);
    [v12 setEventMetadata:v13];

    v14 = [v12 eventMetadata];
    v15 = [v3 streamUID];
    [v14 setEventGeneratedTimestampRefId:v15];

    v16 = [v12 eventMetadata];
    v17 = [v3 event];
    [v16 setEventGeneratedRelativeToBootTimeTimestampNs:{objc_msgSend(v17, "timestamp")}];

    v18 = [v12 eventMetadata];
    v19 = [v7 turnContext];
    v20 = [v19 turnID];
    [v18 setTurnID:v20];

    v21 = [v12 data];
    [*(a1 + 32) addObject:v21];
    if (*(a1 + 40))
    {
      **(a1 + 40) += [v21 length];
    }
  }

  else
  {
    v22 = AFSiriLogContextAnalytics;
    if (!os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v23 = v22;
    v12 = [v7 event];
    v24 = 136315394;
    v25 = "ADAnalyticsSendInstrumentationForUEICreate_block_invoke";
    v26 = 1024;
    v27 = [v12 eventType];
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Unable to map event type %d to known instrumentation event class.", &v24, 0x12u);
  }

LABEL_7:
}

void sub_1000DD978(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 32);
    v9 = v5;
    v7 = a2;
    v8 = [[NSString alloc] initWithFormat:@"%@.%@", @"subflowSwitchCount", v7];

    [v6 setObject:v9 forKey:v8];
    v5 = v9;
  }
}

void sub_1000DDE84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained speechCapturingDidRecordPCMAudioData:*(a1 + 40)];
}

uint64_t sub_1000DDED8(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v8 = ([*(*(a1 + 32) + 24) length] - *(*(a1 + 32) + 40)) >> 1;
  v9 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    v13 = *a2;
    v16 = 136315650;
    v17 = "[ADSpeechCompressor addAudioSampleData:]_block_invoke_2";
    v18 = 1024;
    v19 = v13;
    v20 = 1024;
    v21 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Got asked for %u packets, have %u", &v16, 0x18u);
  }

  if (*a3 == 1)
  {
    if (!a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ADSpeechCompressor.m" lineNumber:196 description:@"Too many buffers"];

    if (!a4)
    {
      goto LABEL_5;
    }
  }

  v15 = +[NSAssertionHandler currentHandler];
  [v15 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"ADSpeechCompressor.m" lineNumber:197 description:@"Cannot produce ASPD for PCM"];

LABEL_5:
  *(a3 + 8) = 1;
  if (v8 >= *a2)
  {
    v11 = [*(*(a1 + 32) + 24) mutableBytes];
    result = 0;
    *(a3 + 16) = &v11[*(*(a1 + 32) + 40)];
    v12 = 2 * *a2;
    *(a3 + 12) = v12;
    *(*(a1 + 32) + 40) += v12;
  }

  else
  {
    *a2 = 0;
    *(a3 + 16) = 0;
    result = 1836086393;
    *(a3 + 12) = 0;
  }

  return result;
}

void sub_1000DE0C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained speechCapturingDidRecordSpeechPackets:*(a1 + 40) atTimestamp:*(*(a1 + 32) + 32) totalPacketCount:0.0];
}

uint64_t sub_1000DE120(int a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  v8 = objc_retainBlock(a5);
  v9 = v8[2](v8, a2, a3, a4);

  return v9;
}

void sub_1000DE3F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained speechCapturingDidStartRecordingSuccessfully:1 error:0 withInfo:*(a1 + 40)];
}

void sub_1000DE568(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained speechCapturingDidStopRecordingWithError:0 endpointMode:2 totalPacketCount:*(*(a1 + 32) + 32) endpointerMetrics:0];
}

void sub_1000DE640(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained speechCapturingDidStopRecordingWithError:0 endpointMode:2 totalPacketCount:*(*(a1 + 32) + 32) endpointerMetrics:0];
}

void sub_1000DEB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DEB94(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleHomeAnnouncementSnapshotUpdate:v3];
}

void sub_1000DED14(uint64_t a1)
{
  if (AFDeviceSupportsSpokenMessages())
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v5 = *(v3 + 40);
    v4 = *(v3 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DEE5C;
    v7[3] = &unk_10051E038;
    v7[4] = v3;
    v8 = v2;
    dispatch_group_notify(v4, v5, v7);
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[AFHeadphonesAnnouncementRequestCapabilityProvider fetchAvailableAnnouncementRequestTypesWithCompletion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Announcements not supported on this device", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000DEE5C(uint64_t a1)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DEF80;
  v10[3] = &unk_10051E038;
  v2 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v2;
  v3 = objc_retainBlock(v10);
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5[7])
  {
    v7 = v5[5];
    v6 = v5[6];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DF024;
    block[3] = &unk_10051CF58;
    v9 = v3;
    dispatch_group_notify(v6, v7, block);
  }

  else
  {
    (v3[2])(v3);
  }
}

void sub_1000DEF80(uint64_t a1)
{
  v2 = [*(a1 + 32) _headphonesMonitor];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000DF034;
  v4[3] = &unk_1005110E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 fetchPrivateSessionStateWithCompletion:v4];
}

void sub_1000DF034(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DF0F4;
  v10[3] = &unk_10051C0D8;
  v13 = a2;
  v10[4] = v7;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

uint64_t sub_1000DF0F4(void *a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1[4] + 56);
    v6 = a1[7];
    v7 = v2;
    v8 = [NSNumber numberWithUnsignedInteger:v6];
    v9 = 136315650;
    v10 = "[AFHeadphonesAnnouncementRequestCapabilityProvider fetchAvailableAnnouncementRequestTypesWithCompletion:]_block_invoke_4";
    v11 = 2048;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Available announcement requests: %lu, private session state: %@", &v9, 0x20u);
  }

  if (a1[5] || a1[7] != 1)
  {
    v3 = *(a1[6] + 16);
  }

  else
  {
    v3 = *(a1[6] + 16);
  }

  return v3();
}

void sub_1000DF4AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000DF798;
  v4[3] = &unk_1005110B8;
  v4[4] = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _fetchPairedBluetoothDevicesFromSourceWithCompletion:v4];
}

void sub_1000DF548(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000DF6F0;
  v2[3] = &unk_10051C868;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 fetchLocalVoiceAssetAvailabilityWithCompletion:v2];
}

uint64_t sub_1000DF5D8(void *a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(a1[6] + 8) + 24);
    v7 = *(a1[4] + 8);
    v8 = 136315650;
    v9 = "[AFHeadphonesAnnouncementRequestCapabilityProvider fetchEligibleAnnouncementRequestTypesWithCompletion:]_block_invoke_7";
    v10 = 2048;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Eligible Announcement Requests: %lu, Local Voice Asset Available: %d", &v8, 0x1Cu);
  }

  v3 = a1[4];
  if (*(v3 + 8) == 1)
  {
    v4 = *(*(a1[6] + 8) + 24);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 64) = v4;
  return (*(a1[5] + 16))();
}

void sub_1000DF6F0(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DF784;
  block[3] = &unk_10051C890;
  block[4] = v3;
  v7 = a2;
  v6 = v2;
  dispatch_async(v4, block);
}

void sub_1000DF798(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DF860;
  block[3] = &unk_10051C588;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_1000DF860(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 supportsSpokenNotification])
        {
          *(*(*(a1 + 48) + 8) + 24) |= 1uLL;
        }

        if ([v7 supportsAnnounceCall])
        {
          *(*(*(a1 + 48) + 8) + 24) |= 2uLL;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000DFABC(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[AFHeadphonesAnnouncementRequestCapabilityProvider _settingsConnectionDidDisconnect]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;
}

void sub_1000E00D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E00E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E0100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E01C0;
  block[3] = &unk_10051B688;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_1000E01C0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_1000E04B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E0538;
  v4[3] = &unk_10051C600;
  v4[5] = *(a1 + 40);
  v4[6] = a2;
  v5 = *(a1 + 48);
  v4[4] = v2;
  dispatch_async(v3, v4);
}

void *sub_1000E0538(void *result)
{
  v2 = result[5];
  v1 = result[6];
  if (v2 != v1)
  {
    v3 = result;
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(v3 + 56);
      v9 = 136315906;
      v10 = "[AFHeadphonesAnnouncementRequestCapabilityProvider _fetchEligibleAnnouncementRequestTypesAndNotifyObserversAndShouldRelyOnCachedStateIfIneligble:]_block_invoke_2";
      v11 = 2048;
      v12 = v2;
      v13 = 2048;
      v14 = v1;
      v15 = 1024;
      v16 = v7;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s previous announcement request eligibility: %lu, now updating to %lu shouldRelyOnCachedStateIfIneligbile: %d", &v9, 0x26u);
      v1 = v3[6];
      if (v1)
      {
        goto LABEL_11;
      }
    }

    else if (v1)
    {
      goto LABEL_11;
    }

    if (*(v3 + 56) == 1)
    {
      v5 = _AFPreferencesAnnounceOnHeadphonesCachedEligibility();
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136315394;
        v10 = "[AFHeadphonesAnnouncementRequestCapabilityProvider _fetchEligibleAnnouncementRequestTypesAndNotifyObserversAndShouldRelyOnCachedStateIfIneligble:]_block_invoke";
        v11 = 2048;
        v12 = v5;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s using cached announce notification eligiblity state: %lu", &v9, 0x16u);
      }

      if (v5)
      {
        v1 = v5;
      }

      return [v3[4] _notifyObserversOfEligibleAnnouncementRequestTypes:v1];
    }

LABEL_11:
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "[AFHeadphonesAnnouncementRequestCapabilityProvider _fetchEligibleAnnouncementRequestTypesAndNotifyObserversAndShouldRelyOnCachedStateIfIneligble:]_block_invoke";
      v11 = 1024;
      LODWORD(v12) = v1 & 1;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s updating cached announce notification eligiblity state to: %d", &v9, 0x12u);
    }

    _AFPreferencesSetAnnounceOnHeadphonesCachedEligibility();
    return [v3[4] _notifyObserversOfEligibleAnnouncementRequestTypes:v1];
  }

  return result;
}

void sub_1000E09EC()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100590038;
  v9 = qword_100590038;
  if (!qword_100590038)
  {
    v1 = sub_1000E0D04();
    v7[3] = dlsym(v1, "BluetoothPairedStatusChangedNotification");
    qword_100590038 = v7[3];
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
    v5 = [NSString stringWithUTF8String:"NSString *getBluetoothPairedStatusChangedNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"AFHeadphonesAnnouncementRequestCapabilityProvider.m" lineNumber:53 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1000E0B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E0B50()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100590048;
  v9 = qword_100590048;
  if (!qword_100590048)
  {
    v1 = sub_1000E0D04();
    v7[3] = dlsym(v1, "BluetoothFirstDeviceUnlockCompleted");
    qword_100590048 = v7[3];
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
    v5 = [NSString stringWithUTF8String:"NSString *getBluetoothFirstDeviceUnlockCompleted(void)"];
    [v4 handleFailureInFunction:v5 file:@"AFHeadphonesAnnouncementRequestCapabilityProvider.m" lineNumber:54 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1000E0C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000E0CB4(uint64_t a1)
{
  v2 = sub_1000E0D04();
  result = dlsym(v2, "BluetoothFirstDeviceUnlockCompleted");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590048 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000E0D04()
{
  v4[0] = 0;
  if (!qword_100590040)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000E0E58;
    v4[4] = &unk_10051E200;
    v4[5] = v4;
    v5 = off_100511100;
    v6 = 0;
    qword_100590040 = _sl_dlopen();
  }

  v0 = qword_100590040;
  if (!qword_100590040)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *BluetoothManagerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"AFHeadphonesAnnouncementRequestCapabilityProvider.m" lineNumber:50 description:{@"%s", v4[0]}];

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

uint64_t sub_1000E0E58()
{
  result = _sl_dlopen();
  qword_100590040 = result;
  return result;
}

void *sub_1000E0ECC(uint64_t a1)
{
  v2 = sub_1000E0D04();
  result = dlsym(v2, "BluetoothPairedStatusChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590038 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000E0F88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E0FFC;
  v4[3] = &unk_10051D770;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000E0FFC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 40);
    *buf = 136315394;
    v16 = "[AFHeadphonesAnnouncementRequestCapabilityProvider notifyObserversOfAvailableAnnouncementRequestTypes]_block_invoke_2";
    v17 = 2048;
    v18 = v9;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Notifying observers of available announcement requests: %lu", buf, 0x16u);
  }

  v3 = [*(*(a1 + 32) + 72) copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8) provider:*(a1 + 32) availableAnnouncementRequestTypesChanged:{*(a1 + 40), v10}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1000E15CC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 80);
  if (v1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v1);
  }
}

void sub_1000E169C(uint64_t a1)
{
  [*(a1 + 32) _updateAudioRouteAvailabilityAndBroadcast:0];
  v2 = _AFPreferencesAnnounceOnHeadphonesCachedEligibility();
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "[AFHeadphonesAnnouncementRequestCapabilityProvider _fetchInitialState]_block_invoke";
    v6 = 2048;
    v7 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s cached announce eligiblity state: %lu", &v4, 0x16u);
  }

  *(*(a1 + 32) + 64) = v2;
  dispatch_group_leave(*(*(a1 + 32) + 48));
}

void sub_1000E1E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E1E98()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100590050;
  v9 = qword_100590050;
  if (!qword_100590050)
  {
    v1 = sub_1000E204C();
    v7[3] = dlsym(v1, "INSearchForMessagesIntentIdentifier");
    qword_100590050 = v7[3];
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
    v5 = [NSString stringWithUTF8String:"NSString *getINSearchForMessagesIntentIdentifier(void)"];
    [v4 handleFailureInFunction:v5 file:@"AFHeadphonesAnnouncementRequestCapabilityProvider.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1000E1FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000E1FFC(uint64_t a1)
{
  v2 = sub_1000E204C();
  result = dlsym(v2, "INSendMessageIntentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590080 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000E204C()
{
  v4[0] = 0;
  if (!qword_100590058)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000E23F4;
    v4[4] = &unk_10051E200;
    v4[5] = v4;
    v5 = off_100511118;
    v6 = 0;
    qword_100590058 = _sl_dlopen();
  }

  v0 = qword_100590058;
  if (!qword_100590058)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *IntentsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"AFHeadphonesAnnouncementRequestCapabilityProvider.m" lineNumber:32 description:{@"%s", v4[0]}];

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

void sub_1000E21A0()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100590068;
  v9 = qword_100590068;
  if (!qword_100590068)
  {
    v1 = sub_1000E204C();
    v7[3] = dlsym(v1, "INSearchForNotebookItemsIntentIdentifier");
    qword_100590068 = v7[3];
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
    v5 = [NSString stringWithUTF8String:"NSString *getINSearchForNotebookItemsIntentIdentifier(void)"];
    [v4 handleFailureInFunction:v5 file:@"AFHeadphonesAnnouncementRequestCapabilityProvider.m" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1000E22EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000E2304(uint64_t a1)
{
  v2 = sub_1000E204C();
  result = dlsym(v2, "INAnswerCallIntentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590088 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000E2354(uint64_t a1)
{
  v2 = sub_1000E204C();
  result = dlsym(v2, "INHangUpCallIntentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590090 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000E23A4(uint64_t a1)
{
  v2 = sub_1000E204C();
  result = dlsym(v2, "INSearchForNotebookItemsIntentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590068 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000E23F4()
{
  result = _sl_dlopen();
  qword_100590058 = result;
  return result;
}

void *sub_1000E2468(uint64_t a1)
{
  v2 = sub_1000E204C();
  result = dlsym(v2, "INSearchForMessagesIntentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590050 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000E29C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000E29E8(uint64_t a1)
{
  v2 = sub_1000E204C();
  result = dlsym(v2, "INReadAnnouncementIntentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590060 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000E2A38(uint64_t a1)
{
  v2 = sub_1000E204C();
  result = dlsym(v2, "INPlayVoicemailIntentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590070 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000E2A88(uint64_t a1)
{
  v2 = sub_1000E204C();
  result = dlsym(v2, "INJoinCallIntentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100590078 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000E2B80()
{
  qword_100590030 = [objc_alloc(objc_opt_class()) _init];

  return _objc_release_x1();
}

void sub_1000E2EC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 isFiring] & 1) == 0)
  {
    [*(a1 + 32) removeObjectForKey:v5];
  }
}

id sub_1000E344C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (*(a1 + 40) == 1)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[ADOpportuneSpeakingModuleEdgeDetector opportuneSpeakListener:didStopUnexpectly:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s OPPSPK - Listening for speech stopped unexpectedly", &v6, 0xCu);
    }

    *(*(a1 + 32) + 112) = 1;
    [*(*(a1 + 32) + 120) cancel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 120);
    *(v3 + 120) = 0;

    result = [*(a1 + 32) _resetStateWithCompletion:*(*(a1 + 32) + 88)];
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADOpportuneSpeakingModuleEdgeDetector opportuneSpeakListener:didStopUnexpectly:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s OPPSPK - Listening for speech stopped normally", &v6, 0xCu);
    }

    result = [*(a1 + 32) _didStopListening];
  }

  *(*(a1 + 32) + 153) = 0;
  return result;
}

void sub_1000E3614(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[112] & 1) != 0 || (v1[153] & 1) == 0)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADOpportuneSpeakingModuleEdgeDetector opportuneSpeakListener:hasVADAvailable:withHostTime:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Has stopped listening", &v5, 0xCu);
    }
  }

  else
  {
    v1[17] = *(a1 + 44);
    *(*(a1 + 32) + 148) = *(a1 + 40);
    if ([*(*(a1 + 32) + 48) opportuneSpeakListeningType] == 1)
    {
      v3 = *(a1 + 32);

      [v3 _handleFrame:0];
    }
  }
}

void sub_1000E37B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[112] & 1) != 0 || (v1[153] & 1) == 0)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADOpportuneSpeakingModuleEdgeDetector opportuneSpeakListener:hasRemoteVADAvailable:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Has stopped listening", &v5, 0xCu);
    }
  }

  else
  {
    v1[16] = *(a1 + 40);
    if (![*(*(a1 + 32) + 48) opportuneSpeakListeningType])
    {
      v3 = *(a1 + 32);

      [v3 _handleFrame:1];
    }
  }
}

void sub_1000E3A1C(uint64_t a1, int a2, void *a3)
{
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [a3 localizedDescription];
    *buf = 136315650;
    v13 = "[ADOpportuneSpeakingModuleEdgeDetector _restartAndExtendListening]_block_invoke";
    v14 = 1026;
    v15 = a2;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s OPPSPK - stopListenWithCompletion : %{public}d, %{public}@", buf, 0x1Cu);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E3B68;
  block[3] = &unk_10051DFE8;
  block[4] = v9;
  dispatch_async(v10, block);
}

void sub_1000E3B68(uint64_t a1)
{
  [*(a1 + 32) _didStopListening];
  *(*(a1 + 32) + 112) = 0;
  v2 = objc_alloc_init(CSOpportuneSpeakListenerOption);
  [v2 setDeviceId:*(*(a1 + 32) + 128)];
  v3 = *(a1 + 32);
  LODWORD(v4) = v3[34];
  [v3 _scheduleTimerForMaxDelay:v4];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E3C28;
  v7[3] = &unk_10051B580;
  v7[4] = v5;
  [v6 startListenWithOption:v2 completion:v7];
}

void sub_1000E3C28(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    *buf = 136315650;
    v17 = "[ADOpportuneSpeakingModuleEdgeDetector _restartAndExtendListening]_block_invoke_2";
    v18 = 1026;
    v19 = a2;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s OPPSPK - startListenWithOption : %{public}d, %{public}@", buf, 0x1Cu);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E3D9C;
  block[3] = &unk_10051C890;
  v15 = a2;
  v13 = v5;
  v14 = v9;
  v11 = v5;
  dispatch_async(v10, block);
}

id *sub_1000E3D9C(id *result)
{
  if (*(result + 48) == 1 && !result[4])
  {
    return [result[5] _didStartListening];
  }

  return result;
}

id sub_1000E3E30(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADOpportuneSpeakingModuleEdgeDetector stopListening]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s OPPSPK - stopListening", &v4, 0xCu);
  }

  return [*(a1 + 32) _stopListeningWithCompletion:0];
}

void sub_1000E3FB4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 96);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E4074;
  v10[3] = &unk_10051C6C8;
  v14 = a2;
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

id sub_1000E4074(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 localizedDescription];
    v8 = 136315650;
    v9 = "[ADOpportuneSpeakingModuleEdgeDetector _stopListeningWithCompletion:]_block_invoke_2";
    v10 = 1026;
    v11 = v3;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s OPPSPK - stopListenWithCompletion : %{public}d, %{public}@", &v8, 0x1Cu);
  }

  return [*(a1 + 40) _resetStateWithCompletion:*(a1 + 48)];
}

void sub_1000E444C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000E446C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1000E44A0(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    return (*(result + 16))(*(*(a1 + 32) + 148));
  }

  return result;
}

void sub_1000E4950(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[6];
  if (v3)
  {
    v4 = *(a1 + 40);
    *(*(a1 + 32) + 72) = (v4 * [v2 _framesPerSecondForOpportuneSpeakListeningType:{objc_msgSend(v3, "opportuneSpeakListeningType")}]);
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v8 = 136315394;
      v9 = "[ADOpportuneSpeakingModuleEdgeDetector updateAttendingThreshold:]_block_invoke";
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Updated listening threshold to: %f", &v8, 0x16u);
    }
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[ADOpportuneSpeakingModuleEdgeDetector updateAttendingThreshold:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to update listening threshold", &v8, 0xCu);
    }
  }
}

void sub_1000E4D10(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    *buf = 136315650;
    v17 = "[ADOpportuneSpeakingModuleEdgeDetector listenForUserSpeechWithOptions:forVoice:maxDelay:stopOnDetection:executeOnSuccess:onFail:]_block_invoke";
    v18 = 1026;
    v19 = a2;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s OPPSPK - startListenWithOption : %{public}d, %{public}@", buf, 0x1Cu);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E4E84;
  block[3] = &unk_10051C890;
  v15 = a2;
  v13 = v5;
  v14 = v9;
  v11 = v5;
  dispatch_async(v10, block);
}

id *sub_1000E4E84(id *result)
{
  if (*(result + 48) == 1 && !result[4])
  {
    return [result[5] _didStartListening];
  }

  return result;
}

void sub_1000E510C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    *buf = 136315650;
    v17 = "[ADOpportuneSpeakingModuleEdgeDetector listenForPauseWithOptions:forPause:maxDelay:stopOnDetection:executeOnSuccess:onFail:]_block_invoke";
    v18 = 1026;
    v19 = a2;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s startListenWithOption : %{public}d, %{public}@", buf, 0x1Cu);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E5280;
  block[3] = &unk_10051C890;
  v15 = a2;
  v13 = v5;
  v14 = v9;
  v11 = v5;
  dispatch_async(v10, block);
}

id *sub_1000E5280(id *result)
{
  if (*(result + 48) == 1 && !result[4])
  {
    return [result[5] _didStartListening];
  }

  return result;
}

id sub_1000E534C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 60);
    v6 = 136315394;
    v7 = "[ADOpportuneSpeakingModuleEdgeDetector _scheduleTimerForMaxDelay:]_block_invoke";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s OPPSPK - TIMEOUT frame = %d", &v6, 0x12u);
  }

  v4 = *(a1 + 32);
  if (v4[13])
  {
    return [v4 _stopListeningWithCompletion:v4[11]];
  }

  else
  {
    return [v4 _restartAndExtendListening];
  }
}

id sub_1000E59A8()
{
  if (qword_1005900E0 != -1)
  {
    dispatch_once(&qword_1005900E0, &stru_1005113C0);
  }

  v1 = qword_1005900E8;

  return v1;
}

void sub_1000E59FC(id a1)
{
  if (!qword_1005900F0)
  {
    qword_1005900F0 = dlopen("/System/Library/PrivateFrameworks/ClarityFoundation.framework/ClarityFoundation", 2);
    if (!qword_1005900F0)
    {
      __assert_rtn("ClarityFoundationLibrary", "ADDaemon.m", 162, "frameworkLibrary");
    }
  }

  qword_1005900E8 = objc_getClass("CLFSystemShellSwitcher");
  if (!qword_1005900E8)
  {
    __assert_rtn("initCLFSystemShellSwitcher_block_invoke", "ADDaemon.m", 163, "classCLFSystemShellSwitcher");
  }

  off_10058B1E0 = sub_1000E5AA8;
}

void sub_1000E5B78(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 200))
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("UnlockedWorkQueue", v3);

    v5 = *(a1 + 32);
    v6 = *(v5 + 200);
    *(v5 + 200) = v4;

    v7 = AFHasUnlockedSinceBoot();
    v2 = *(a1 + 32);
    if ((v7 & 1) == 0)
    {
      dispatch_suspend(*(v2 + 200));
      *(*(a1 + 32) + 192) = 1;
      v2 = *(a1 + 32);
    }
  }

  v8 = *(v2 + 200);
  v9 = *(a1 + 40);

  dispatch_async(v8, v9);
}

void sub_1000E6560(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E65D4;
  block[3] = &unk_10051DFE8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_1000E65D4(uint64_t a1)
{
  *(*(a1 + 32) + 168) = 0;
  if ([*(*(a1 + 32) + 160) count])
  {
    v5 = [*(*(a1 + 32) + 160) allObjects];
    v2 = *(a1 + 32);
    v3 = *(v2 + 160);
    *(v2 + 160) = 0;

    v4 = +[ADCommandCenter sharedCommandCenter];
    [v4 syncAnchorKeys:0 forceReset:0 reasons:v5];
  }
}

void sub_1000E6BB0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 240);
    *buf = 136315394;
    *&buf[4] = "[ADDaemon _daemonDidLaunchWithContext:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Instance context set to %@", buf, 0x16u);
  }

  EffectiveNotification = AFNotifyGetEffectiveNotification();
  notify_post(EffectiveNotification);
  [*(a1 + 32) _setupSessionLanguage];
  [*(a1 + 32) _setupInternal];
  [*(a1 + 32) _setupClientListener];
  [*(a1 + 32) _setupOfflineDictationStatusObserver];
  [*(a1 + 32) _setupDictationListener];
  [*(a1 + 32) _setupExternalRequestListener];
  [*(a1 + 32) _setupClientLiteListener];
  [*(a1 + 32) _setupSettingsListener];
  [*(a1 + 32) _setupRapportServices];
  [*(a1 + 32) _setupLocationService];
  [*(a1 + 32) setupSiriCapabilitiesService];
  [*(a1 + 32) _setupFamilyCircleService];
  [*(a1 + 32) _setupIDSServices];
  [*(a1 + 32) _setupManagedStorageListener];
  [*(a1 + 32) _setupSynapseSyncListener];
  [*(a1 + 32) _setupAnalyticsListener];
  [*(a1 + 32) _setupSiriAnalyticsListener];
  [*(a1 + 32) _setupContextListener];
  [*(a1 + 32) _setupSecurityListener];
  [*(a1 + 32) _setupAnalyticsObservationListener];
  [*(a1 + 32) _setupLocationServiceListener];
  [*(a1 + 32) setupSiriCapabilitiesServiceListener];
  [*(a1 + 32) _deleteSyncItemsDatabase];
  [*(a1 + 32) _setupSyncListener];
  [*(a1 + 32) _registerForSyncNotifications];
  [*(a1 + 32) _setupTetherListener];
  [*(a1 + 32) _setupNotifyHandlers];
  [*(a1 + 32) _setupDistributedNotificationHandlers];
  [*(a1 + 32) _setupPairedSync];
  [*(a1 + 32) _setupHomeKit];
  [*(a1 + 32) _setupCloudKit];
  [*(a1 + 32) _setupMultiUserCloudSyncer];
  v5 = +[ADHomeInfoManager sharedInfoManager];
  [v5 startAcceptingCloudSharesForMultiUserService];

  [*(a1 + 32) _setupMemoryPressureObservation];
  [*(a1 + 32) _setupWirelessCoexManagerSubscription];
  [*(a1 + 32) _setupNanoPreferences];
  [*(a1 + 32) _setupNotificationServiceListener];
  [*(a1 + 32) _setupAudioSessionAssertionAcquisitionService];
  [*(a1 + 32) _setupAudioSessionAssertionServiceListener];
  [*(a1 + 32) _setupAnnouncementSpeakingStatePublisher];
  [*(a1 + 32) _setupAccessibility];
  [*(a1 + 32) _setupPommesSearchService];
  [*(a1 + 32) _setupBGSystemTasksForASRSubscriptionFromVoice];
  [*(a1 + 32) _setupMobileGestaltNotificationHandlers];
  if (AFProcessIsRunningAsInstance())
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "ADRegisterXPCActivities";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Skipped register XPC activities because the process is running as an instance of a multi-instance service.", buf, 0xCu);
    }

    goto LABEL_36;
  }

  if (sub_10000A094())
  {
    sub_100286CD4("com.apple.siri.xpc_activity.sync.daily", XPC_ACTIVITY_CHECK_IN, &stru_100518978, &stru_100518998);
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "_RegisterDailySyncActivity";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Skipped register XPC activitiy for daily sync because sync can never happen", buf, 0xCu);
    }
  }

  if ((AFIsNano() & 1) != 0 || AFSupportsPairedDevice())
  {
    sub_100286CD4("com.apple.siri.xpc_activity.peer_fetch", XPC_ACTIVITY_CHECK_IN, &stru_1005189B8, &stru_1005189F8);
  }

  if (AFIsHorseman())
  {
    sub_100286CD4("com.apple.siri.xpc_activity.companion_fetch", XPC_ACTIVITY_CHECK_IN, &stru_100518A18, &stru_100518A58);
  }

  sub_100286CD4("com.apple.siri.xpc_activity.refresh_validation", XPC_ACTIVITY_CHECK_IN, &stru_100518A78, &stru_100518AB8);
  sub_100286CD4("com.apple.siri.xpc_activity.destroy", XPC_ACTIVITY_CHECK_IN, &stru_100518AD8, &stru_100518AF8);
  sub_100286CD4("com.apple.siri.xpc_activity.service_maintenance", XPC_ACTIVITY_CHECK_IN, &stru_100518B18, &stru_100518B38);
  v8 = +[AFPreferences sharedPreferences];
  v9 = [v8 longLivedIdentifierUploadingEnabled];

  if (v9)
  {
    v10 = objc_opt_class();
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_1002873EC;
    v36 = &unk_100518B58;
    v37 = v10;
    v11 = objc_retainBlock(&v33);
    v12 = [v10 activityIdentifier];
    v13 = [v10 xpcCriteria];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10028745C;
    v41 = &unk_10051A6B0;
    v42 = v13;
    v14 = v13;
    v15 = objc_retainBlock(buf);
    v16 = objc_retainBlock(v15);

    sub_100286CD4(v12, XPC_ACTIVITY_CHECK_IN, v16, v11);
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "ADRegisterXPCActivities";
      v18 = "%s Register ADDailyDeviceStatusActivity as longLivedIdentifierUploadingEnabled is true";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v18, buf, 0xCu);
    }
  }

  else
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "ADRegisterXPCActivities";
      v18 = "%s Skipped registering ADDailyDeviceStatusActivity as longLivedIdentifierUploadingEnabled is false";
      goto LABEL_20;
    }
  }

  sub_100286CD4("com.apple.siri.xpc_activity.metrics-sender", XPC_ACTIVITY_CHECK_IN, &stru_100518B78, &stru_100518B98);
  if (AFIsInternalInstall())
  {
    sub_100286CD4("com.apple.siri.xpc_activity.internal-cleanup", XPC_ACTIVITY_CHECK_IN, &stru_100518BB8, &stru_100518BD8);
  }

  sub_100286CD4("com.apple.siri.xpc_activity.cloudkitsync.weekly", XPC_ACTIVITY_CHECK_IN, &stru_100518C18, &stru_100518C38);
  if (AFDeviceSupportsSpokenMessages())
  {
    sub_100286CD4("com.apple.siri.xpc_activity.announce-messages-eligibility", XPC_ACTIVITY_CHECK_IN, &stru_100518C58, &stru_100518C78);
  }

  if (AFDeviceSupportsSpokenMessages())
  {
    sub_100286CD4("com.apple.siri.xpc_activity.announce-notifications-enablement", XPC_ACTIVITY_CHECK_IN, &stru_100518C98, &stru_100518CB8);
  }

  sub_100286CD4("com.apple.siri.xpc_activity.service_boot_maintenance", XPC_ACTIVITY_CHECK_IN, &stru_100518CD8, &stru_100518CF8);
  sub_100286CD4("com.apple.siri.xpc_activity.speech-personalized-lm", XPC_ACTIVITY_CHECK_IN, &stru_100518D18, &stru_100518D38);
  if (AFSupportsHALContextCollectorElection())
  {
    sub_100286CD4("com.apple.siri.xpc_activity.context-collector-reelection", XPC_ACTIVITY_CHECK_IN, &stru_100518D58, &stru_100518D78);
  }

  v19 = AFSupportsMultiUser();
  v20 = AFSiriLogContextDaemon;
  v21 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v19)
  {
    if (v21)
    {
      *buf = 136315394;
      *&buf[4] = "_RegisterMultiUserMetricsActivity";
      *&buf[12] = 2080;
      *&buf[14] = "com.apple.siri.apc_activity.multi-user.metrics";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Registering %s activity", buf, 0x16u);
    }

    sub_100286CD4("com.apple.siri.apc_activity.multi-user.metrics", XPC_ACTIVITY_CHECK_IN, &stru_100518D98, &stru_100518DB8);
  }

  else if (v21)
  {
    *buf = 136315394;
    *&buf[4] = "_RegisterMultiUserMetricsActivity";
    *&buf[12] = 2080;
    *&buf[14] = "com.apple.siri.apc_activity.multi-user.metrics";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Device does not support MultiUser, skipping %s registration", buf, 0x16u);
  }

  sub_100286CD4("com.apple.siri.xpc_activity.siri-information-clear-cache", XPC_ACTIVITY_CHECK_IN, &stru_100518DD8, &stru_100518DF8);
  sub_100286CD4("com.apple.siri.xpc_activity.logviewer-identifier-defaults-write", XPC_ACTIVITY_CHECK_IN, &stru_100518E38, &stru_100518E58);
  sub_100287080(XPC_ACTIVITY_CHECK_IN);
LABEL_36:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = sub_100225C6C;
  v42 = sub_100225C7C;
  v43 = objc_alloc_init(ADSpeechSamplingRelayPermitMonitor);
  v32[4] = buf;
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_100225C84;
  v36 = &unk_100516FE8;
  v37 = buf;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100225D2C;
  v32[3] = &unk_10051E1C8;
  v22 = sub_100225D40(&v33, v32);
  sub_100225E10(@"com.apple.siri.bg_system_task.speech-audio-sampled", v22);
  sub_100225E94(@"com.apple.siri.bg_system_task.speech-audio-sampled", &stru_100517028);

  _Block_object_dispose(buf, 8);
  v23 = sub_100225D40(&stru_100517090, 0);
  sub_100225E10(@"com.apple.siri.bg_system_task.speech-audio-sample-delete", v23);
  sub_100225E94(@"com.apple.siri.bg_system_task.speech-audio-sample-delete", &stru_1005170B0);

  v24 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[ADDaemon _daemonDidLaunchWithContext:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s assistantd finished post launch setup", buf, 0xCu);
  }

  dispatch_activate(*(*(a1 + 32) + 8));
  v25 = +[ADCommandCenter sharedCommandCenter];
  sub_100004CAC();
  sub_100216038(@"assistantdDidLaunch");
  v26 = +[ADPreferences sharedPreferences];
  [v26 setIsSyncNeededForWatch:0];

  if (AFSupportsPairedDevice() && (AFIsNano() & 1) == 0)
  {
    dispatch_async(*(*(a1 + 32) + 8), &stru_100511360);
  }

  v27 = AFBuildVersion();
  v28 = +[AFAnalytics sharedAnalytics];
  v29 = v28;
  if (v27)
  {
    v38 = @"systemBuild";
    v39 = v27;
    v30 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    [v29 logEventWithType:102 context:v30];
  }

  else
  {
    [v28 logEventWithType:102 context:0];
  }

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotification(DistributedCenter, AFSiriDaemonLaunchedDistributedNotification, 0, 0, 1u);
  qword_1005900B8 = mach_absolute_time();
}

void sub_1000E769C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E76C0(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADDaemon _daemonDidLaunchWithContext:]_block_invoke_2";
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

void sub_1000E77DC(id a1)
{
  v1 = +[ADCommandCenter sharedCommandCenter];
  [v1 updateSharedDataFromPeerUseCache:0 completion:0];
}

AFAudioSessionAssertionAcquisitionService *__cdecl sub_1000E7890(id a1)
{
  v1 = +[ADSpeechManager sharedManager];
  v2 = [v1 audioSessionAssertionAcquisitionService];

  return v2;
}

void sub_1000E7C04(uint64_t a1)
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 _sharedDataService];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E7CC0;
  v4[3] = &unk_10051DFE8;
  v5 = *(a1 + 32);
  [v3 pushSharedDataToPeer:v4];
}

id sub_1000E7CC0(uint64_t a1)
{
  [*(a1 + 32) syncDidCompleteSending];
  v2 = *(a1 + 32);

  return [v2 syncDidComplete];
}

id sub_1000E7D60()
{
  if (qword_1005900C0 != -1)
  {
    dispatch_once(&qword_1005900C0, &stru_100511380);
  }

  v1 = qword_1005900C8;

  return v1;
}

void sub_1000E7DB4(id a1)
{
  if (qword_1005900D0 != -1)
  {
    dispatch_once(&qword_1005900D0, &stru_1005113A0);
  }

  qword_1005900C8 = objc_getClass("PSYSyncCoordinator");
  off_10058B1D8 = sub_1000E7E18;
}

void sub_1000E7FF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = +[ADDaemon sharedDaemon];
  v4 = sub_1002F3D78(a3);
  [v5 syncForReason:v4 withCoalescing:1];
}

void sub_1000E81FC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  type = xpc_get_type(v2);
  if (type == &_xpc_type_connection)
  {
    v7 = v2;
    v8 = dispatch_get_global_queue(0, 0);
    xpc_connection_set_target_queue(v7, v8);

    *v10 = _NSConcreteStackBlock;
    *&v10[8] = 3221225472;
    *&v10[16] = sub_1000E83F0;
    v11 = &unk_10051A6B0;
    v12 = v7;
    v9 = v7;
    xpc_connection_set_event_handler(v9, v10);
    xpc_connection_resume(v9);

LABEL_6:
    goto LABEL_8;
  }

  v4 = type;
  v5 = AFSiriLogContextDaemon;
  v6 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
  if (v4 == &_xpc_type_error)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v9 = v5;
    *v10 = 136315394;
    *&v10[4] = "[ADDaemon _setupSyncListener]_block_invoke";
    *&v10[12] = 2082;
    *&v10[14] = xpc_dictionary_get_string(v2, _xpc_error_key_description);
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Sync listener error %{public}s", v10, 0x16u);
    goto LABEL_6;
  }

  if (v6)
  {
    *v10 = 136315138;
    *&v10[4] = "[ADDaemon _setupSyncListener]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Ignoring unexpected event type on sync listener", v10, 0xCu);
  }

LABEL_8:
}

void sub_1000E83F0(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v3, "name");
    if (string)
    {
      v9 = string;
      if (!strcmp(string, "sync_now"))
      {
        v15 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v29 = 136315138;
          v30 = "_ADHandleNewSyncPeer_block_invoke";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Received sync now notification from UEA.", &v29, 0xCu);
        }

        v16 = xpc_dictionary_get_string(v3, "sync_reason");
        if (v16)
        {
          v17 = [NSString stringWithUTF8String:v16];
        }

        else
        {
          v17 = 0;
        }

        v26 = +[ADDaemon sharedDaemon];
        [v26 syncForReason:v17 withCoalescing:0];
      }

      else
      {
        v10 = strcmp(v9, "defrost");
        v11 = AFSiriLogContextDaemon;
        if (!v10)
        {
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v29 = 136315138;
            v30 = "_ADHandleNewSyncPeer_block_invoke";
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Received defrost XPC message", &v29, 0xCu);
          }

          v18 = +[ADCommandCenter sharedCommandCenter];
          [v18 defrost];

          uint64 = xpc_dictionary_get_uint64(v3, "mach_time");
          if (+[ADDaemon processLaunchMachTime]> uint64)
          {
            AFMachAbsoluteTimeGetTimeInterval();
            v21 = v20;
            v22 = AFSiriLogContextDaemon;
            if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              goto LABEL_32;
            }

            v29 = 136315394;
            v30 = "_ADHandleNewSyncPeer_block_invoke";
            v31 = 2048;
            v32 = v21;
            v23 = "%s Process launched %fs after sending defrost XPC message.";
            v24 = v22;
            v25 = 22;
          }

          else
          {
            v27 = AFSiriLogContextDaemon;
            if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              goto LABEL_32;
            }

            v29 = 136315138;
            v30 = "_ADHandleNewSyncPeer_block_invoke";
            v23 = "%s Process launched before sending defrost XPC message.";
            v24 = v27;
            v25 = 12;
          }

          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, v23, &v29, v25);
          goto LABEL_32;
        }

        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v29 = 136315394;
          v30 = "_ADHandleNewSyncPeer_block_invoke";
          v31 = 2080;
          v32 = v9;
          v6 = "%s Unexpected message on sync connection %s";
          v7 = v11;
          v12 = 22;
LABEL_16:
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v6, &v29, v12);
        }
      }
    }

    else
    {
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v29 = 136315138;
        v30 = "_ADHandleNewSyncPeer_block_invoke";
        v6 = "%s Unexpected nameless message on sync connection";
        v7 = v14;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (type == &_xpc_type_error)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v13 = v5;
        v29 = 136315394;
        v30 = "_ADHandleNewSyncPeer_block_invoke";
        v31 = 2080;
        v32 = xpc_dictionary_get_string(v3, _xpc_error_key_description);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Sync peer shutting down due to %s", &v29, 0x16u);
      }

      xpc_connection_cancel(*(a1 + 32));
    }

    else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315138;
      v30 = "_ADHandleNewSyncPeer_block_invoke";
      v6 = "%s Ignoring unexpected type on sync connection";
      v7 = v5;
LABEL_15:
      v12 = 12;
      goto LABEL_16;
    }
  }

LABEL_32:
}

void sub_1000E8B28(id a1, __CFString *a2, __CFDictionary *a3)
{
  if (a2 && CFStringCompare(a2, @"UserAssignedDeviceName", 0) == kCFCompareEqualTo)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"ADSharedDataDidChangeNotification" object:0];
  }
}

void sub_1000E8C20(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (string)
  {
    v5 = string;
    v6 = [[NSString alloc] initWithUTF8String:string];
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[ADDaemon _setupDistributedNotificationHandlers]_block_invoke";
      v20 = 2080;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Got xpc event for distributed notification %s", &v18, 0x16u);
    }

    if (!sub_1002F3A78(v6))
    {
      [AFSiriDaemonLaunchedDistributedNotification isEqualToString:v6];
LABEL_18:

      goto LABEL_19;
    }

    v8 = sub_1002F3D78(v6);
    v9 = xpc_dictionary_get_dictionary(v3, "UserInfo");
    if (AFIsIOS())
    {
      v10 = +[AFPreferences sharedPreferences];
      v11 = [v10 deviceHasHomePodInHome];

      if (v9)
      {
LABEL_7:
        v12 = xpc_copy_description(v9);
        if (v12)
        {
          v13 = v12;
          v14 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v18 = 136315394;
            v19 = "[ADDaemon _setupDistributedNotificationHandlers]_block_invoke";
            v20 = 2080;
            v21 = v13;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s Notification payload: %s", &v18, 0x16u);
          }

          free(v13);
        }

        v15 = sub_10000A500();
        v16 = v8;
        v17 = v9;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
      if (v9)
      {
        goto LABEL_7;
      }
    }

    v15 = sub_10000A500();
    v16 = v8;
    v17 = 0;
LABEL_15:
    if ((sub_1002F3E04(v16, v17, v6, v15, v11) & 1) == 0)
    {
      [*(a1 + 32) _syncForReason:v8 withCoalescing:1];
    }

    goto LABEL_18;
  }

LABEL_19:
}

void sub_1000E8EEC(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    v5 = [[NSString alloc] initWithUTF8String:string];
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[ADDaemon _setupNotifyHandlers]_block_invoke";
      v25 = 2080;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Got xpc event for notification %s", buf, 0x16u);
    }

    if (strcmp("com.apple.MobileAsset.VoiceServices.VoiceResources.new-asset-installed", v4) && strcmp("com.apple.voiceservices.notification.voice-update", v4))
    {
      if (!strcmp("com.apple.voicetrigger.EarlyDetect", v4))
      {
        v14 = +[ADCommandCenter sharedCommandCenter];
        v15 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:8];
        [v14 preheatWithStyle:2 forOptions:v15 completion:0];
      }

      else
      {
        if (strcmp("com.apple.siri.preheat.quiet", v4))
        {
          if (!strcmp("com.apple.nanoregistry.devicedidpair", v4) || !strcmp("com.apple.nanoregistry.watchdidbecomeactive", v4))
          {
            if ((AFIsNano() & 1) != 0 || AFSupportsPairedDevice())
            {
              v16 = +[ADCommandCenter sharedCommandCenter];
              v21[0] = _NSConcreteStackBlock;
              v21[1] = 3221225472;
              v21[2] = sub_1000E9444;
              v21[3] = &unk_10051E010;
              v21[4] = *(a1 + 32);
              v22 = v5;
              [v16 updateSharedDataFromPeerUseCache:0 completion:v21];
            }

            goto LABEL_24;
          }

          if (!strcmp("com.apple.mobile.keybagd.first_unlock", v4))
          {
            v17 = *(a1 + 32);
            if (*(v17 + 192) == 1 && *(v17 + 200))
            {
              *(v17 + 192) = 0;
              dispatch_resume(*(*(a1 + 32) + 200));
            }

            if (sub_1002F4800())
            {
              [*(a1 + 32) _syncForReason:@"Safety net" withCoalescing:0];
            }

            v14 = +[NSNotificationCenter defaultCenter];
            [v14 postNotificationName:@"ADFirstUnlockNotification" object:0];
            goto LABEL_23;
          }

          if (!strcmp("com.apple.assistant.sync_homekit_urgent", v4))
          {
            *(*(a1 + 32) + 152) = mach_absolute_time();
            dispatch_async(*(*(a1 + 32) + 8), &stru_1005112A0);
            goto LABEL_24;
          }

          if (sub_1002F3A78(v5))
          {
            v7 = [[NSString alloc] initWithUTF8String:v4];
            v8 = sub_1002F3D78(v7);

            if (AFIsIOS())
            {
              v9 = +[AFPreferences sharedPreferences];
              v10 = [v9 deviceHasHomePodInHome];
            }

            else
            {
              v10 = 0;
            }

            v18 = sub_10000A500();
            if ((sub_1002F3E04(v8, 0, v5, v18, v10) & 1) == 0)
            {
              [*(a1 + 32) _syncForReason:v8 withCoalescing:1];
            }

            goto LABEL_17;
          }

          if (!strcmp("com.apple.managedconfiguration.effectivesettingschanged", v4))
          {
            v19 = +[ADCommandCenter sharedCommandCenter];
            v20 = [v19 _sharedDataService];
            [v20 effectiveSettingsChanged];

            v14 = +[ADAnalyticsService sharedService];
            [v14 managedConfigurationEffectiveSettingsChanged];
            goto LABEL_23;
          }

          if ([ADServiceManager isReloadServiceNotification:v5])
          {
            v14 = +[ADCommandCenter sharedCommandCenter];
            [v14 reloadServiceForNotification:v5];
            goto LABEL_23;
          }

          if (!strcmp([kAssetTypeEmbeddedSpeechModelNewAssetInstalled UTF8String], v4) || !strcmp(objc_msgSend(kTrialSiriAssistantAssetNamespaceUpdate, "UTF8String"), v4) || !strcmp(objc_msgSend(kUAFSiriAssistantAssetNamespaceUpdate, "UTF8String"), v4) || !strcmp(objc_msgSend(kAFMAStartupActivatedNotification, "UTF8String"), v4))
          {
            v14 = +[ADDictationOfflineStatusObserver sharedDictationOfflineStatusObserver];
            [v14 fetchOfflineDictationStatusIgnoringCache:1 asynchronously:1];
            goto LABEL_23;
          }

          if (strcmp("com.apple.siri.inference.audio-app-signals-update", v4))
          {
            goto LABEL_24;
          }

          v11 = +[NSNotificationCenter defaultCenter];
          v8 = v11;
          v12 = *(a1 + 32);
          v13 = @"ADAudioAppSignalsDidChangeNotification";
LABEL_16:
          [v11 postNotificationName:v13 object:v12];
LABEL_17:

LABEL_24:
          return;
        }

        v14 = +[ADCommandCenter sharedCommandCenter];
        [v14 preheatWithStyle:1 forOptions:0 completion:0];
      }

LABEL_23:

      goto LABEL_24;
    }

    v11 = +[NSNotificationCenter defaultCenter];
    v8 = v11;
    v12 = *(a1 + 32);
    v13 = @"ADVoiceAssetsUpdatedNotification";
    goto LABEL_16;
  }
}

void sub_1000E9444(uint64_t a1)
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 _syncForReason:v5 withCoalescing:0];
  }
}

void sub_1000E94B8(id a1)
{
  v1 = +[ADCommandCenter sharedCommandCenter];
  [v1 syncAnchorKeys:0 forceReset:0 reasons:&off_100533650];
}

void sub_1000E9990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E99B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E99C8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[ADDaemon _audioSessionAssertionServiceListenerShouldAcceptNewConnection:]_block_invoke";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Audio Session Assertion Service Connection Invalidated (pid=%d)", &v6, 0x12u);
  }

  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_1000E9AA8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[ADDaemon _audioSessionAssertionServiceListenerShouldAcceptNewConnection:]_block_invoke";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Audio Session Assertion Service Connection Interrupted (pid=%d)", &v6, 0x12u);
  }

  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_1000E9E88(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADDaemon _notificationServiceListenerShouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Notification Service Connection Invalidated (pid=%d)", &v4, 0x12u);
  }
}

void sub_1000E9F44(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADDaemon _notificationServiceListenerShouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Notification Service Connection Interrupted (pid=%d)", &v4, 0x12u);
  }
}

void sub_1000EA2BC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADDaemon _securityListenerShouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Security Connection Invalidated (pid=%d)", &v4, 0x12u);
  }
}

void sub_1000EA378(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADDaemon _securityListenerShouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Security Connection Interrupted (pid=%d)", &v4, 0x12u);
  }
}

void sub_1000EA728(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ADDaemon _analyticsObservationListenerShouldAcceptNewConnection:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Analytics Observation Connection Invalidated (pid=%d)", &v5, 0x12u);
  }

  v4 = +[ADAnalyticsService sharedService];
  [v4 setObserverConnection:0];
}

void sub_1000EA804(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADDaemon _analyticsObservationListenerShouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Analytics Observation Connection Interrupted (pid=%d)", &v4, 0x12u);
  }
}

void sub_1000EABB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000EABF0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[ADDaemon _analyticsListenerShouldAcceptNewConnection:]_block_invoke";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Analytics Connection Invalidated (pid=%d)", &v6, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[ADAnalyticsService sharedService];
    [v5 connectionDisconnected:WeakRetained];
  }
}

void sub_1000EACE0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[ADDaemon _analyticsListenerShouldAcceptNewConnection:]_block_invoke";
    v8 = 1024;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Analytics Connection Interrupted (pid=%d)", &v6, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[ADAnalyticsService sharedService];
    [v4 connectionInterrupted:WeakRetained];
  }
}

void sub_1000EB098(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 136315650;
    v6 = "[ADDaemon _managedStorageListenerShouldAcceptNewConnection:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %@ Managed Storage Connection Disconnected (pid=%d)", &v5, 0x1Cu);
  }
}

void sub_1000EB5FC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADDaemon _synapseSyncListenerShouldAcceptNewConnection:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Synapse Sync Connection Disconnected (pid=%d)", &v4, 0x12u);
  }
}

id sub_1000EBE40(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[ADDaemon _settingsListenerShouldAcceptNewConnection:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %@ Settings Connection Disconnected (pid=%d)", &v6, 0x1Cu);
  }

  return [*(a1 + 32) connectionDisconnected];
}

void sub_1000EC2EC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    *buf = 136315906;
    v14 = "[ADDaemon _dictationListenerShouldAcceptNewConnection:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %@ Dictation Connection Disconnected (pid=%d])  %@", buf, 0x26u);
  }

  v5 = +[ADCommandCenter sharedCommandCenter];
  [v5 removeDelegate:*(a1 + 32)];

  [*(a1 + 32) connectionDisconnected];
  sub_100216038(@"session_did_finish_timestamp");
  v6 = +[ADAnalyticsService sharedService];
  [v6 endEventsGrouping];

  v7 = +[ADQueueMonitor sharedMonitor];
  [v7 endMonitoring];

  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(v9 + 208);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000EC498;
  v11[3] = &unk_10051E010;
  v11[4] = v9;
  v12 = v8;
  dispatch_async(v10, v11);
}

void sub_1000EC55C(uint64_t a1)
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  v3 = AFSiriStartUIRequestNotification;
  v4 = *(a1 + 32);

  CFNotificationCenterPostNotification(DistributedCenter, v3, 0, v4, 1u);
}

void sub_1000ECABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ECAE4(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v9 = 136315650;
    v10 = "[ADDaemon _clientListenerShouldAcceptNewConnection:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %@ Client Connection Disconnected (pid=%d)", &v9, 0x1Cu);
  }

  [*(a1 + 32) connectionDisconnected];
  [*(a1 + 40) removeDelegate:*(a1 + 32)];
  [*(a1 + 40) clientDisconnected:*(a1 + 32)];
  [*(a1 + 40) dismissedAllVisibleAssistantUIForReason:@"ADLocationInUseEndedReasonClientConnectionInvalidated"];
  v5 = +[ADAnalyticsService sharedService];
  [v5 endEventsGrouping];

  v6 = +[ADQueueMonitor sharedMonitor];
  [v6 endMonitoring];

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_1000ED570(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = "[ADDaemon _setupRapportServices]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Rapport requested launch", &v12, 0xCu);
    }

    if (!strcmp(v4, "WakeUpRequest"))
    {
      v11 = +[ADCommandCenter sharedCommandCenter];
    }

    else if (!strcmp(v4, "MessageCenterWakeUpRequest"))
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v12 = 136315138;
        v13 = "[ADDaemon _setupRapportServices]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Received MessageCenterWakeUpRequest...", &v12, 0xCu);
      }

      reply = +[ADCommandCenter sharedCommandCenter];
      v8 = [reply _requestDispatcherService];
      v9 = +[SRDRemoteIFClientWakeStore sharedInstance];
      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v12 = 136315650;
        v13 = "[ADDaemon _setupRapportServices]_block_invoke";
        v14 = 2048;
        v15 = v2;
        v16 = 2048;
        v17 = v9;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Storing xpc event %p in wake store %p", &v12, 0x20u);
      }

      [v9 setXPCEvent:v2];

LABEL_15:
      goto LABEL_16;
    }

    if (xpc_dictionary_get_BOOL(v2, "replyRequired"))
    {
      reply = xpc_dictionary_create_reply(v2);
      if (reply)
      {
        xpc_dictionary_send_reply();
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

void sub_1000ED990(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_1000EDC24(id a1)
{
  v1 = +[NSProcessInfo processInfo];
  [v1 systemUptime];
  qword_1005900A8 = v2;

  qword_1005900B0 = mach_absolute_time();
  qword_100590098 = objc_alloc_init(ADDaemon);

  _objc_release_x1();
}

void sub_1000EDF48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADSharedDataService _handleExecuteRequestOnRemoteWatch:completion:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s error executing remote command: %@", &v11, 0x16u);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADSharedDataService _handleExecuteRequestOnRemoteWatch:completion:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s got command response: %@", &v11, 0x16u);
    }

    v9 = objc_alloc_init(_ADPBDeviceExecuteOnRemoteResponse);
    v10 = [v5 plistData];
    [(_ADPBDeviceExecuteOnRemoteResponse *)v9 setContent:v10];

    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000EE1F4(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (!v5)
  {
    v6 = v11;
    v7 = v6;
    if (v6 && [v6 hasContent])
    {
      v8 = [v7 content];
      v9 = [NSDictionary dictionaryWithPlistData:v8];

      (*(*(a1 + 32) + 16))();
      goto LABEL_8;
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v5);
  }

LABEL_8:
}

void sub_1000EE4AC(uint64_t a1)
{
  v2 = objc_alloc_init(_ADPBDeviceStartRemoteRequest);
  [(_ADPBDeviceStartRemoteRequest *)v2 _ad_setRequestInfo:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 16);
  v4 = objc_opt_class();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000EE584;
  v5[3] = &unk_1005113E8;
  v6 = *(a1 + 48);
  [v3 sendRequest:v2 responseClass:v4 overrideRequireConnectedPeer:1 allowCloud:0 completion:v5];
}

void sub_1000EE584(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    if ([v7 success])
    {
      v5 = 0;
    }

    else
    {
      v5 = [AFError errorWithCode:1200];
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void sub_1000EE6B8(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained sharedDataConnection:*(a1 + 32) didUpdateSharedData:*(*(a1 + 32) + 32)];
}

void sub_1000EE800(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE8B8;
  block[3] = &unk_10051E088;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_1000EE8B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = v2;
  if (v2)
  {
    v3 = [v2 _ad_data];
    v4 = *(a1 + 40);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v6 = *(a1 + 48);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  else
  {
    v8 = *(a1 + 48);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *(v8 + 16);
  }

  v7();
LABEL_7:
}

uint64_t (**sub_1000EEAB8(uint64_t a1))(void)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 32) + 32);
    v7 = 136315650;
    v8 = "[ADSharedDataService getSharedDataFromPeerUseCache:allowCloudMessaging:completion:]_block_invoke";
    v9 = 1024;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s useCache=%d _remoteData=%@", &v7, 0x1Cu);
  }

  v5 = *(a1 + 32);
  if (*(a1 + 48) != 1 || !v5[4])
  {
    return [v5 _requestDataRemotelyAllowingCloudMessaging:*(a1 + 49) completion:*(a1 + 40)];
  }

  result = *(a1 + 40);
  if (result)
  {
    return result[2]();
  }

  return result;
}

void sub_1000EEC78(uint64_t a1)
{
  if ([*(a1 + 32) peerExportsSharedData])
  {
    v2 = *(*(a1 + 32) + 16);
    v5 = 0;
    [v2 deviceIsNearby:&v5];
    v3 = v5;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

uint64_t sub_1000EEE1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000EEE34(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 16) peerBuildVersion];

  return _objc_release_x1();
}

uint64_t sub_1000EEF74(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 16) peerType];

  return _objc_release_x1();
}

void sub_1000EF0B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32))
  {
    v9 = v5;
    v6 = objc_alloc_init(_ADPBDeviceStartRemoteResponse);
    [(_ADPBDeviceStartRemoteResponse *)v6 setSuccess:a2];
    v7 = *(a1 + 32);
    if (a2)
    {
      (*(v7 + 16))(v7, v6, 0);
    }

    else
    {
      v8 = [AFError errorWithCode:1200 description:0 underlyingError:v9];
      (*(v7 + 16))(v7, v6, v8);
    }

    v5 = v9;
  }
}

void sub_1000EF380(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  v4 = AFSiriLogContextDaemon;
  v5 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (!v3)
  {
    if (v5)
    {
      *buf = 136315138;
      v12 = "[ADSharedDataService _getDataWithPBCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Getting Peer Data from ADCommandCenter", buf, 0xCu);
      v2 = *(a1 + 32);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000EF524;
    v9[3] = &unk_100518010;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v2 _getDataWithCompletion:v9];
    v7 = v10;
    goto LABEL_9;
  }

  if (v5)
  {
    *buf = 136315138;
    v12 = "[ADSharedDataService _getDataWithPBCompletion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Already have Peer Data returning now!", buf, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [*(a1 + 32) _setDataFromSharedData:*(*(a1 + 32) + 24)];
    (*(v6 + 16))(v6, v7, 0);
LABEL_9:
  }
}

void sub_1000EF524(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADSharedDataService _getDataWithPBCompletion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Sending ADCC Peer Data now!", &v7, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [*(a1 + 32) _setDataFromSharedData:v3];
    (*(v5 + 16))(v5, v6, 0);
  }
}

void sub_1000EF80C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EF8C4;
  block[3] = &unk_10051E088;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t sub_1000EF8C4(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000EFB08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000EFBDC;
  v6[3] = &unk_10051E0D8;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1000EFBDC(uint64_t a1)
{
  if ((AFIsNano() & 1) == 0 && (AFIsHorseman() & 1) == 0)
  {
    sub_100214D74();
    _AFPreferencesSetLastPushedCensorSpeechSetting();
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 objectForKey:@"ADSharedDataDidChangePreviousLanguageCodeKey"];
    v4 = *(a1 + 40);
    v5 = +[NSNull null];
    if (v3 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3;
    }

    [v4 setPreviousLanguageCode:v6];

    v7 = [*(a1 + 32) objectForKey:@"ADSharedDataDidChangePreviousOutputVoiceKey"];
    v8 = *(a1 + 40);
    v9 = +[NSNull null];
    if (v7 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    [v8 setPreviousOutputVoice:v10];

    v11 = [*(a1 + 32) objectForKey:@"ADSharedDataDidChangePeerSetKey"];
    v12 = +[NSNull null];
    if (v11 == v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if ([*(*(a1 + 48) + 16) hasPeer])
  {
    [*(a1 + 48) _sendData:*(a1 + 40)];
  }

  if (sub_100214E18())
  {
    v14 = +[ADPeerCloudService sharedInstance];
    [v14 sendSharedData:*(a1 + 40) toPeers:v16];
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))();
  }
}

uint64_t sub_1000EFDE4(uint64_t a1)
{
  result = AFIsNano();
  if ((result & 1) == 0)
  {
    result = AFIsHorseman();
    if ((result & 1) == 0)
    {
      PushedCensorSpeechSetting = _AFPreferencesLastPushedCensorSpeechSetting();
      result = sub_100214D74();
      if (PushedCensorSpeechSetting != result)
      {
        v4 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v5 = 136315138;
          v6 = "[ADSharedDataService effectiveSettingsChanged]_block_invoke";
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Censor setting changed, pushing to peer.", &v5, 0xCu);
        }

        return [*(a1 + 32) _pushSharedDataToPeerFromNotification:0 completion:0];
      }
    }
  }

  return result;
}

void sub_1000F0FAC(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F1068;
  block[3] = &unk_100511478;
  v7 = a2;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_async(v2, block);
}

void sub_1000F1068(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

id sub_1000F12A4(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:*(a1 + 32) forKey:@"sessionType"];
  if (*(a1 + 40))
  {
    v3 = AFAnalyticsContextCreateWithError();
  }

  else
  {
    v3 = &__NSDictionary0__struct;
  }

  v7[0] = v2;
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = AFAnalyticsContextsMerge();

  return v5;
}

void sub_1000F138C(uint64_t a1, void *a2)
{
  v16 = a1;
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    *buf = 136315394;
    v26 = "[ADSessionManager _logMetricsForSessionFailure:withError:completion:]_block_invoke_2";
    v27 = 1024;
    v28 = [v2 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s SN Connection metrics count %d", buf, 0x12u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v2;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = +[AFAnalytics sharedAnalytics];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000F1680;
        v19[3] = &unk_10051DF78;
        v19[4] = v9;
        [v10 logEventWithType:902 contextProvider:v19];

        v11 = +[AFAnalytics sharedAnalytics];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000F1688;
        v18[3] = &unk_10051DF78;
        v18[4] = v9;
        [v11 logEventWithType:903 contextProvider:v18];

        v12 = [v9 connectionSnapshot];
        [v12 setSnapshotTriggerReason:2];
        if (v12)
        {
          v13 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
          [v13 logSessionConnectionSnapshotCaptured:v12];
        }

        v14 = [v9 debugConnectionSnapshot];
        if (v14)
        {
          v15 = +[SNNetworkAnalytics sharedSNNetworkAnalytics];
          [v15 logDebugSessionConnectionSnapshotCaptured:v14];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  dispatch_group_leave(*(v16 + 32));
}

uint64_t sub_1000F1668(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1000F1688(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteMetrics];
  v2 = sub_10001DBF4(v1);

  return v2;
}

id sub_1000F1AE4(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [NSNumber numberWithUnsignedLongLong:AFMachAbsoluteTimeGetNanoseconds()];
  [v2 setObject:v3 forKey:@"timestamp"];

  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"aceId"];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v2 setObject:v5 forKey:@"refId"];
  }

  v6 = [*(a1 + 48) _adSessionTypeString];
  [v2 setObject:v6 forKey:@"sessionType"];

  if (*(a1 + 56))
  {
    [v2 addEntriesFromDictionary:?];
  }

  return v2;
}

void sub_1000F1DF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) addObject:*(*(&v9 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 32) count])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [*(a1 + 40) currentSNConnectionPreCachedMetrics];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000F345C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[7] <= 0)
  {
    [v2 _startSessions:*(a1 + 48)];
  }

  v49 = [*(a1 + 40) aceId];
  if (!v49)
  {
    v49 = SiriCoreUUIDStringCreate();
    [*(a1 + 40) setAceId:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [*(a1 + 32) setRequestId:v49];
    v43 = [*(a1 + 40) turnId];
    v47 = 1;
  }

  else
  {
    v43 = 0;
    v47 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(a1 + 32) + 238) = 1;
  }

  v50 = [*(a1 + 40) refId];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = *(*(a1 + 32) + 88);
  v48 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  v4 = 0;
  if (v48)
  {
    v46 = *v52;
    v5 = v47;
    if (!v43)
    {
      v5 = 0;
    }

    v45 = v5;
    *&v3 = 136315650;
    v42 = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v51 + 1) + 8 * v6);
        v8 = [*(a1 + 40) encodedClassName];
        v9 = [v7 sessionId];
        if (([v7 canHandleRequest] & 1) == 0 && v50)
        {
          v10 = AFSiriLogContextSession;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v56 = "[ADSessionManager _sendCommand:opportunistically:logEvent:doSendPreProcessing:doSendPostProcessing:]_block_invoke";
            v57 = 2112;
            v58 = v9;
            v11 = v10;
            v12 = "%s session %@ cannot handle request or has non null refId";
            v13 = 22;
            goto LABEL_64;
          }

          goto LABEL_34;
        }

        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v16 = [v15 groupIdentifier];
        LOBYTE(v14) = [v14 _filterUnsupportedCommands:v15 inGroup:v16 onSession:v7];

        if ((v14 & 1) == 0)
        {
          v24 = AFSiriLogContextSession;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
          {
            v39 = *(a1 + 40);
            *buf = v42;
            v56 = "[ADSessionManager _sendCommand:opportunistically:logEvent:doSendPreProcessing:doSendPostProcessing:]_block_invoke";
            v57 = 2112;
            v58 = v39;
            v59 = 2112;
            v60 = v9;
            v11 = v24;
            v12 = "%s command %@ filtered for session %@";
            goto LABEL_63;
          }

          goto LABEL_34;
        }

        v17 = *(*(a1 + 32) + 168);
        if (v17 && ([v17 isEqualToString:v9] & 1) == 0 && (objc_msgSend(*(a1 + 32), "_allowAllowedCommands:", v8) & 1) == 0)
        {
          v37 = AFSiriLogContextSession;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
          {
            v38 = *(a1 + 40);
            *buf = v42;
            v56 = "[ADSessionManager _sendCommand:opportunistically:logEvent:doSendPreProcessing:doSendPostProcessing:]_block_invoke";
            v57 = 2112;
            v58 = v38;
            v59 = 2112;
            v60 = v9;
            v11 = v37;
            v12 = "%s not sending command %@ to session %@";
            goto LABEL_63;
          }

LABEL_34:
          v25 = 0;
          goto LABEL_35;
        }

        if (v50)
        {
          v18 = [*(*(a1 + 32) + 160) valueForKey:v50];
          v19 = v18;
          if (v18 && ([v18 isEqualToString:v9] & 1) == 0)
          {
            v36 = AFSiriLogContextSession;
            if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
            {
              v40 = *(a1 + 40);
              *buf = v42;
              v56 = "[ADSessionManager _sendCommand:opportunistically:logEvent:doSendPreProcessing:doSendPostProcessing:]_block_invoke";
              v57 = 2112;
              v58 = v40;
              v59 = 2112;
              v60 = v9;
              _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%s command %@ does not belong to session %@", buf, 0x20u);
            }

            goto LABEL_34;
          }
        }

        v20 = +[AFPreferences sharedPreferences];
        v21 = [v20 isDictationHIPAACompliant];

        if (v21)
        {
          v22 = AFSiriLogContextSession;
          if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_DEBUG))
          {
            v23 = *(a1 + 40);
            *buf = v42;
            v56 = "[ADSessionManager _sendCommand:opportunistically:logEvent:doSendPreProcessing:doSendPostProcessing:]_block_invoke";
            v57 = 2112;
            v58 = v23;
            v59 = 2112;
            v60 = v9;
            v11 = v22;
            v12 = "%s HIPAA compliance for On-Device Dictation, not sending command %@ to session %@";
LABEL_63:
            v13 = 32;
LABEL_64:
            _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v12, buf, v13);
          }

          goto LABEL_34;
        }

        v25 = 1;
LABEL_35:
        if (v45)
        {
          v26 = v43;
          v27 = ADCreateRequestLinkInfo();
          v28 = ADCreateRequestLinkInfo();

          ADEmitRequestLinkEventMessage();
        }

        if (v25)
        {
          v29 = [*(a1 + 40) copy];

          v30 = [*(a1 + 32) _mapADRequestIdToSessionRequestId:v49 forSession:v7];
          if (v30)
          {
            [v29 setAceId:v30];
          }

          if (v50)
          {
            v31 = [*(a1 + 32) _mapADRequestIdToSessionRequestId:v50 forSession:v7];
            if (v31)
            {
              v32 = v31;
              [v29 setRefId:v31];
            }
          }

          [*(a1 + 32) _convertEmbeddedRequestIds:v29 originalCommand:*(a1 + 40) session:v7];
          if (*(a1 + 49) == 1)
          {
            [*(a1 + 32) _logCommandToMetrics:v29 forSession:v7 outbound:1];
          }

          if (v47)
          {
            [v7 retryNakedCommandsIfNeeded];
            v33 = v30;
            v34 = ADCreateRequestLinkInfo();
            v35 = ADCreateRequestLinkInfo();

            ADEmitRequestLinkEventMessage();
          }

          if (*(a1 + 50) == 1)
          {
            [v7 doSendPreProcessing:v29];
          }

          [v7 sendCommand:v29 opportunistically:*(a1 + 48)];
          if (v47)
          {
            [v7 beginRetryableRequest:v29];
          }

          if (*(a1 + 51) == 1)
          {
            [v7 doSendPostProcessing:v29];
          }

          v4 = v29;
        }

        v6 = v6 + 1;
      }

      while (v48 != v6);
      v41 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      v48 = v41;
    }

    while (v41);
  }
}

void sub_1000F3B6C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F3C9C;
    block[3] = &unk_10051CF58;
    v7 = *(a1 + 48);
    dispatch_async(v3, block);
  }

  else
  {
    v4 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      *buf = 136315394;
      v9 = "[ADSessionManager _sendCommand:opportunistically:logEvent:doSendPreProcessing:doSendPostProcessing:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Dropped command: %@", buf, 0x16u);
    }
  }
}