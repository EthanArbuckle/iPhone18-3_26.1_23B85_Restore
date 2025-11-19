void sub_100217280(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _homeManager];
  (*(v1 + 16))(v1, v2);
}

void sub_1002176B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[ADHomeInfoManager _startAcceptingCloudSharesForMultiUserService]_block_invoke";
      v8 = 2112;
      v9 = v3;
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Container registration unsuccessful with error (%@) for (%@)", &v6, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADHomeInfoManager _startAcceptingCloudSharesForMultiUserService]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Container registration successful", &v6, 0xCu);
  }
}

void sub_100217A3C(uint64_t *a1)
{
  v2 = +[ADCloudKitManager sharedManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100217B10;
  v5[3] = &unk_100516FA0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  v7 = a1[4];
  [v2 shareWithOwner:v3 addShare:1 homes:0 completion:v5];
}

void sub_100217B10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7)
  {
    if (v9)
    {
      [*(*(a1 + 32) + 80) setObject:&off_100533C08 forKey:*(a1 + 48)];
      v17 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      *buf = 136315394;
      v29 = "[ADHomeInfoManager _startCloudSharingForMultiUserService:]_block_invoke";
      v30 = 2112;
      v31 = v10;
      v18 = "%s Failed to create a share with error (%@)";
      v19 = v17;
      v20 = 22;
    }

    else
    {
      v21 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      *buf = 136315138;
      v29 = "[ADHomeInfoManager _startCloudSharingForMultiUserService:]_block_invoke";
      v18 = "%s Share already exists";
      v19 = v21;
      v20 = 12;
    }

    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, v18, buf, v20);
    goto LABEL_9;
  }

  v11 = [v7 participants];
  v12 = [NSSet setWithArray:v11];

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "[ADHomeInfoManager _startCloudSharingForMultiUserService:]_block_invoke_2";
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s participants are (%@)", buf, 0x16u);
  }

  v14 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100217DC0;
  block[3] = &unk_1005180D8;
  v23 = *(a1 + 40);
  v24 = v7;
  v15 = v8;
  v16 = *(a1 + 32);
  v25 = v15;
  v26 = v16;
  v27 = *(a1 + 48);
  dispatch_async(v14, block);

LABEL_9:
}

void sub_100217DC0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100217E7C;
  v6[3] = &unk_100516F78;
  v4 = a1[6];
  v5 = a1[8];
  v6[4] = a1[7];
  v7 = v5;
  v8 = a1[5];
  [v2 establishShareWithHomeOwner:v3 container:v4 completionHandler:v6];
}

void sub_100217E7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 ownerUser];
    v8 = [v5 participant];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      *buf = 136316163;
      v23 = "[ADHomeInfoManager _startCloudSharingForMultiUserService:]_block_invoke";
      v24 = 2113;
      v25 = v8;
      v26 = 2113;
      v27 = v7;
      v28 = 2112;
      v29 = v6;
      v30 = 2113;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s participant is (%{private}@) ownerUser is (%{private}@) error is (%@) ownerID (%{private}@)", buf, 0x34u);
    }

    v11 = *(*(a1 + 32) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002180D0;
    block[3] = &unk_1005180D8;
    v17 = v6;
    v18 = v8;
    v19 = *(a1 + 48);
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v20 = v12;
    v21 = v13;
    v14 = v8;
    dispatch_async(v11, block);
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[ADHomeInfoManager _startCloudSharingForMultiUserService:]_block_invoke_2";
      v24 = 2112;
      v25 = v6;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s No response in HMHomeCloudShareResponse. sharedinError: %@", buf, 0x16u);
    }

    [*(*(a1 + 32) + 80) setObject:&off_100533C08 forKey:*(a1 + 40)];
  }
}

void sub_1002180D0(void *a1)
{
  v2 = a1[4];
  if (v2 || (v7 = a1[5]) == 0)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[5];
      v12 = 136315650;
      v13 = "[ADHomeInfoManager _startCloudSharingForMultiUserService:]_block_invoke";
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Can't add a participant. Participant: (%@), Error: (%@)", &v12, 0x20u);
    }

    [*(a1[8] + 80) setObject:&off_100533C08 forKey:a1[7]];
    v4 = a1[4];
    v5 = +[ADCloudKitManager sharedManager];
    v6 = v5;
    if (v4)
    {
      [v5 handleSharingError:a1[4]];
    }

    else
    {
      v10 = [AFError errorWithCode:6];
      [v6 handleSharingError:v10];
    }
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = 136315395;
      v13 = "[ADHomeInfoManager _startCloudSharingForMultiUserService:]_block_invoke";
      v14 = 2113;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s This participant was added %{private}@", &v12, 0x16u);
    }

    v9 = +[ADCloudKitManager sharedManager];
    [v9 saveParticipantsOnShare:a1[6] forOwner:a1[7] participants:a1[5]];

    [*(a1[8] + 80) setObject:&off_100533C50 forKey:a1[7]];
  }
}

void sub_10021864C(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentAccessory];
  v3 = [v2 uniqueIdentifier];
  v4 = [*(a1 + 40) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    [v6 _updateCurrentAccessoryInfoWithAccessory:v7];
  }
}

void sub_10021897C(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentAccessory];
  v3 = [v2 uniqueIdentifier];
  v4 = [*(a1 + 40) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    [v6 _updateCurrentAccessoryInfoWithAccessory:v7];
  }
}

void sub_100218B94(uint64_t a1)
{
  v2 = +[ADHomeDataSharingRepromptManager sharedManager];
  [v2 removeAccessoryFromPropagationList:*(a1 + 32)];
}

void sub_100218ED0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "[ADHomeInfoManager home:didRemoveUser:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s User deletion status (%@)", &v4, 0x16u);
  }
}

void sub_1002190E4(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = [*(a1 + 32) userSettingsForHome:*(a1 + 48)];
  v3 = [v2 settings];

  [v3 setDelegate:*(a1 + 40)];
}

void sub_1002191F4(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[ADHomeInfoManager homeDidUpdateName:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [*(*(a1 + 32) + 16) homes];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(*(&v8 + 1) + 8 * i) == *(a1 + 40))
        {
          [*(a1 + 32) _updateHomeContext:*(*(a1 + 32) + 16)];
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_10021985C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 136315651;
      v9 = "[ADHomeInfoManager _propagateSiriDataSharingOptInStatus:toAccessory:]_block_invoke";
      v10 = 2113;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unable to set opt-in status for accessory (%{private}@), with error %@", &v8, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 136315651;
    v9 = "[ADHomeInfoManager _propagateSiriDataSharingOptInStatus:toAccessory:]_block_invoke";
    v10 = 2048;
    v11 = v6;
    v12 = 2113;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Success setting Siri data sharing status (%ld) for accessory (%{private}@)", &v8, 0x20u);
  }
}

void sub_1002199A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 136315651;
      v9 = "[ADHomeInfoManager _propagateSiriDataSharingOptInStatus:toAccessory:]_block_invoke";
      v10 = 2113;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unable to set opt-in status for accessory (%{private}@), with error %@", &v8, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 136315651;
    v9 = "[ADHomeInfoManager _propagateSiriDataSharingOptInStatus:toAccessory:]_block_invoke";
    v10 = 2048;
    v11 = v6;
    v12 = 2113;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Success setting Siri data sharing status (%ld) for accessory (%{private}@)", &v8, 0x20u);
  }
}

void sub_100219C80(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 48);
    v11 = 136315650;
    v12 = "[ADHomeInfoManager user:didUpdateAssistantAccessControl:forHome:]_block_invoke";
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s _currentHome (%@) home (%@)", &v11, 0x20u);
  }

  v5 = [*(a1 + 40) uniqueIdentifier];
  v6 = [*(*(a1 + 32) + 48) uniqueIdentifier];
  v7 = [v5 hmf_isEqualToUUID:v6];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    *(v8 + 56) = 0;

    v10 = [*(a1 + 32) _currentHomeInfo];
  }
}

void sub_100219F80(uint64_t a1)
{
  if ([*(a1 + 32) _updateHomeUserSettings])
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"ADHomeInfoForThisDeviceDidChangeNotification" object:0];
  }

  if (AFIsHorseman())
  {
    v23 = [*(a1 + 32) _homeManager];
    if ([v23 hasOptedToHH2])
    {

      return;
    }

    IsHomePodInHH2Mode = _AFPreferencesIsHomePodInHH2Mode();

    if (IsHomePodInHH2Mode)
    {
      return;
    }

    v4 = [*(a1 + 40) rootGroup];
    v5 = [ADHomeInfoManager findSettingWithKeyPath:@"root.general.analytics.shareSiriAnalytics" group:v4];

    v6 = AFSiriLogContextDaemon;
    v7 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (!v5)
    {
      if (v7)
      {
        *buf = 136315394;
        v27 = "[ADHomeInfoManager settingsDidUpdate:]_block_invoke";
        v28 = 2112;
        v29 = @"root.general.analytics.shareSiriAnalytics";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s %@ setting not found for this HomePod, ignoring", buf, 0x16u);
      }

      goto LABEL_27;
    }

    if (v7)
    {
      v8 = v6;
      v9 = [v5 value];
      *buf = 136315394;
      v27 = "[ADHomeInfoManager settingsDidUpdate:]_block_invoke";
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Siri data sharing status: %@", buf, 0x16u);
    }

    v10 = [v5 value];

    if (v10)
    {
      v11 = [v5 value];
      v12 = [v11 BOOLValue];

      if (v12)
      {
        v13 = +[ADPreferences sharedPreferences];
        v14 = v13;
        v15 = 1;
LABEL_25:
        [(__CFString *)v13 setSiriDataSharingOptInStatus:v15 propagateToHomeAccessories:0 source:4 reason:0 completion:0];
LABEL_26:

        goto LABEL_27;
      }

      v21 = [v5 value];
      v22 = [v21 BOOLValue];

      if ((v22 & 1) == 0)
      {
        v13 = +[ADPreferences sharedPreferences];
        v14 = v13;
        v15 = 2;
        goto LABEL_25;
      }
    }

    else
    {
      v16 = +[ADPreferences sharedPreferences];
      v17 = [v16 siriDataSharingOptInStatus];

      if ((v17 - 1) <= 1)
      {
        v18 = &off_100533BF0;
        if (v17 == 1)
        {
          v18 = &off_100533C20;
        }

        v19 = v18;
        v20 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v27 = "[ADHomeInfoManager settingsDidUpdate:]_block_invoke";
          v28 = 2112;
          v29 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Siri Data Sharing value is null in HomeKit. Setting to %@", buf, 0x16u);
        }

        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10021A354;
        v24[3] = &unk_10051C498;
        v25 = v19;
        v14 = v19;
        [v5 updateValue:v14 completionHandler:v24];

        goto LABEL_26;
      }
    }

LABEL_27:
  }
}

void sub_10021A354(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[ADHomeInfoManager settingsDidUpdate:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unable to initialize HomeKit Siri Data Sharing status to %@ with error: %@", &v7, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[ADHomeInfoManager settingsDidUpdate:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Success initializing HomeKit Siri Data Sharing status to %@", &v7, 0x16u);
  }
}

void *sub_10021A528(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADHomeInfoManager homeManagerDidUpdateAssistantIdentifiers:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  result = *(a1 + 40);
  if (*(a1 + 32) == result[2])
  {
    return [result _updateHomeContext:?];
  }

  return result;
}

void sub_10021A680(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADHomeInfoManager homeManagerDidUpdateDataSyncState:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  v3 = *(a1 + 40);
  if (*(a1 + 32) == v3[2])
  {
    v4 = [v3 _currentAccessory];
    v5 = [*(a1 + 40) _currentAccessoryInfo];
    v6 = [*(a1 + 40) _currentHome];
    v7 = [*(a1 + 40) _currentHomeInfo];
    [*(a1 + 40) _checkAndDisableVoiceIDIfRequired];
  }
}

void *sub_10021A828(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADHomeInfoManager homeManagerDidUpdateCurrentHome:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  result = *(a1 + 40);
  if (*(a1 + 32) == result[2])
  {
    return [result _updateHomeContext:?];
  }

  return result;
}

void sub_10021A980(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[ADHomeInfoManager homeManager:didUpdateStatus:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v3 = *(*(a1 + 40) + 16);
  if (*(a1 + 32) == v3)
  {
    if (![v3 status])
    {
      [*(a1 + 40) _startCloudKitActivityForHomes:*(a1 + 32) homesToDelete:0];
      v4 = [*(a1 + 40) _currentHomeInfo];
      [*(a1 + 40) _checkAndDisableVoiceIDIfRequired];
      [*(a1 + 40) _resolveSiriDataSharingStatusMismatch:*(a1 + 32)];
      [*(a1 + 40) _updateHomeContext:*(a1 + 32)];
    }

    v5 = +[AFPreferences sharedPreferences];
    v6 = [v5 hasPresentedCompactVoiceTriggerDisclosure];

    if (v6)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = [*(*(a1 + 40) + 16) homes];
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(a1 + 40) initializeHomeSiriPhraseOptions:? completion:?];
          }

          v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }
  }
}

void sub_10021ABA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 name];
    v8 = 136315650;
    v9 = "[ADHomeInfoManager homeManager:didUpdateStatus:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s phraseType in home %@ updated with error: %@", &v8, 0x20u);
  }
}

void sub_10021ADF4(uint64_t a1)
{
  v2 = [*(a1 + 32) owner];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315395;
    v19 = "[ADHomeInfoManager homeManager:didRemoveHome:]_block_invoke";
    v20 = 2113;
    v21 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s homeOwner is (%{private}@)", buf, 0x16u);
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  v6 = [*(a1 + 40) _homesWithMultiUserEnabled];
  v7 = [*(*(a1 + 40) + 80) objectForKey:v4];
  if (v7)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315395;
      v19 = "[ADHomeInfoManager homeManager:didRemoveHome:]_block_invoke";
      v20 = 2113;
      v21 = v4;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Resetting home sharing state for (%{private}@)", buf, 0x16u);
    }

    [*(*(a1 + 40) + 80) setObject:&off_100533C08 forKey:v4];
  }

  v9 = +[ADCloudKitManager sharedManager];
  [v9 shareWithOwner:v4 addShare:0 homes:v6 completion:&stru_100516F30];

  v10 = *(a1 + 40);
  v11 = *(v10 + 56);
  *(v10 + 56) = 0;

  v12 = *(a1 + 40);
  v13 = *(v12 + 48);
  *(v12 + 48) = 0;

  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v17 = *(a1 + 32);
  v16 = [NSArray arrayWithObjects:&v17 count:1];
  [v15 _homeManagerUpdatedHomes:v14 homesToDelete:v16];

LABEL_8:
}

void sub_10021B034(id a1, CKShare *a2, CKContainer *a3, NSError *a4)
{
  v4 = a4;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[ADHomeInfoManager homeManager:didRemoveHome:]_block_invoke";
    v8 = 2112;
    v9 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s error is (%@)", &v6, 0x16u);
  }
}

void sub_10021B274(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v4 = [*(a1 + 32) currentUser];
  [v4 setDelegate:*(a1 + 40)];
  v2 = [v4 userSettingsForHome:*(a1 + 32)];
  v3 = [v2 settings];

  [v3 setDelegate:*(a1 + 40)];
  [*(a1 + 40) _homeManagerUpdatedHomes:*(a1 + 48)];
  [*(a1 + 40) initializeHomeSiriPhraseOptions:*(a1 + 32) completion:&stru_100516EF0];
}

void sub_10021B328(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADHomeInfoManager homeManager:didAddHome:]_block_invoke_3";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s phraseType updated with error: %@", &v4, 0x16u);
  }
}

NSDictionary *__cdecl sub_10021B3E8(id a1)
{
  v5 = @"date";
  v1 = +[NSDate date];
  v2 = [NSDateFormatter localizedStringFromDate:v1 dateStyle:1 timeStyle:4];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void *sub_10021B55C(void *result)
{
  v1 = result[4];
  v2 = result[5];
  v3 = v2[2];
  if (v1 == v3)
  {
    v4 = result;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = 136315394;
      v8 = "[ADHomeInfoManager homeManagerDidUpdateHomes:]_block_invoke";
      v9 = 1024;
      v10 = [v3 status];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s status is %d", &v7, 0x12u);

      v1 = v4[4];
      v2 = v4[5];
    }

    return [v2 _homeManagerUpdatedHomes:v1];
  }

  return result;
}

void sub_10021C410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10021C440(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v17 = "[ADHomeInfoManager fetchMultiUserMetricsWithCompletion:]_block_invoke";
      v18 = 2112;
      v19 = v6;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Got metrics from homed %@", buf, 0x16u);
    }

    v8 = [v6 numSharedUsers];
    if (([v8 integerValue] & 0x8000000000000000) != 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    else
    {
      v9 = [v6 numSharedUsers];
      *(*(*(a1 + 64) + 8) + 24) = [v9 integerValue];
    }

    v10 = [v6 numUsersCloudShareTrustNotConfigured];
    if (([v10 integerValue] & 0x8000000000000000) != 0)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    else
    {
      v11 = [v6 numUsersCloudShareTrustNotConfigured];
      *(*(*(a1 + 72) + 8) + 24) = [v11 integerValue];
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10021CA08;
    v13[3] = &unk_10051DB90;
    v12 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    [v12 getVoiceSettingsForHomeMembers:v13];
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[ADHomeInfoManager fetchMultiUserMetricsWithCompletion:]_block_invoke";
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Could not fetch multiuser metrics due to error %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10021C6B8(uint64_t a1)
{
  v2 = +[ADMultiUserService sharedService];
  v3 = [v2 allUsersBySharedUserID];

  v20 = v3;
  v4 = [v3 count];
  v5 = +[ADMultiUserService sharedService];
  v6 = [v5 countVoiceProfiles];

  v7 = +[ADMultiUserService sharedService];
  v8 = [v7 countUsersWithPersonalRequestsEnabled];

  v9 = +[ADMultiUserService sharedService];
  v10 = [v9 countUsersWithSiriCloudSyncEnabled];

  v11 = +[ADMultiUserService sharedService];
  v12 = [v11 countUsersWithMatchingSiriLanguage];

  v13 = +[ADMultiUserService sharedService];
  v14 = [v13 countUsersWithLocationServicesEnabled];

  [*(a1 + 32) setNumGuestsAccepted:*(*(*(a1 + 48) + 8) + 24)];
  v15 = *(*(*(a1 + 48) + 8) + 24);
  v16 = *(*(*(a1 + 56) + 8) + 24);
  if (v15 <= v16)
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v22 = "[ADHomeInfoManager fetchMultiUserMetricsWithCompletion:]_block_invoke";
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Invalid participant data %ld/%ld", buf, 0x20u);
    }
  }

  else
  {
    [*(a1 + 32) setNumParticipantsWithTrust:(v15 - v16)];
  }

  [*(a1 + 32) setNumUsersWithRecognizeMyVoiceEnabled:v4];
  [*(a1 + 32) setNumVoiceProfilesAvailable:v6];
  [*(a1 + 32) setNumUsersWithPersonalRequestsEnabled:v8];
  [*(a1 + 32) setNumUsersWithSiriCloudSyncEnabled:v10];
  [*(a1 + 32) setNumUsersWithMatchingSiriLanguage:v12];
  [*(a1 + 32) setNumUsersWithLocationServicesEnabled:v14];
  v18 = [[NSString alloc] initWithFormat:@"{numGuestsAccepted = %d, numParticipantsWithTrust = %d, numUsersWhoSyncedRecognizeMyVoice = %d, numUsersWithRecognizeMyVoiceEnabled = %d, numVoiceProfilesAvailable = %d, numUsersWithPersonalRequestEnabled = %d, numUsersWithSiriCloudSyncEnabled = %d, numUsersWithMatchingSiriLanguage = %d, numUsersWithLocationServicesEnabled = %d}", objc_msgSend(*(a1 + 32), "numGuestsAccepted"), objc_msgSend(*(a1 + 32), "numParticipantsWithTrust"), objc_msgSend(*(a1 + 32), "numUsersWhoSyncedRecognizeMyVoice"), objc_msgSend(*(a1 + 32), "numUsersWithRecognizeMyVoiceEnabled"), objc_msgSend(*(a1 + 32), "numVoiceProfilesAvailable"), objc_msgSend(*(a1 + 32), "numUsersWithPersonalRequestsEnabled"), objc_msgSend(*(a1 + 32), "numUsersWithSiriCloudSyncEnabled"), objc_msgSend(*(a1 + 32), "numUsersWithMatchingSiriLanguage"), objc_msgSend(*(a1 + 32), "numUsersWithLocationServicesEnabled")];
  v19 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "[ADHomeInfoManager fetchMultiUserMetricsWithCompletion:]_block_invoke";
    v23 = 2112;
    v24 = v18;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s MultiUserSetup SELF metrics: %@", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10021CA08(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 count];
  }

  else
  {
    v3 = 0;
  }

  [*(a1 + 32) setNumUsersWhoSyncedRecognizeMyVoice:v3];
  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

void sub_10021CD7C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _currentAccessoryInfo];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_10021CEC8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10021CEE0(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _accessoryLoggingSalt];

  return _objc_release_x1();
}

void sub_10021D1C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 homeInfoManager:*(a1 + 32) didUpdateCurrentAccessoryInfo:*(a1 + 40)];
  }
}

void sub_10021D5B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v20 = a2;
  v4 = [v3 uniqueIdentifier];
  [v20 setUniqueIdentifier:v4];

  v5 = [*(a1 + 32) name];
  [v20 setName:v5];

  v6 = [*(a1 + 32) model];
  [v20 setModel:v6];

  v7 = [*(a1 + 32) room];
  v8 = [v7 name];
  [v20 setRoomName:v8];

  v9 = [*(a1 + 32) assistantIdentifier];
  [v20 setAssistantIdentifier:v9];

  [v20 setIsSpeaker:*(a1 + 56)];
  v10 = [*(a1 + 32) manufacturer];
  [v20 setManufacturer:v10];

  v11 = [*(a1 + 32) category];
  v12 = [v11 categoryType];
  [v20 setCategoryType:v12];

  [v20 setSchemaCategoryType:*(a1 + 48)];
  v13 = [*(*(a1 + 40) + 24) uniqueIdentifier];
  v14 = [*(a1 + 40) _accessoryLoggingSalt];
  v15 = v14;
  v16 = 0;
  if (v13 && v14)
  {
    v23 = 0uLL;
    [v13 getUUIDBytes:&v23];
    v22 = 0uLL;
    [v15 getUUIDBytes:&v22];
    v21 = veorq_s8(v22, v23);
    v16 = [[NSUUID alloc] initWithUUIDBytes:&v21];
  }

  [v20 setLoggingUniqueIdentifier:v16];
  v17 = +[MediaServiceConfiguration sharedInstance];
  v18 = [*(a1 + 32) home];
  v19 = [v17 thirdPartyMusicAvailable:v18];

  [v20 setHasActiveThirdPartyMusicSubscription:v19];
}

void sub_10021E1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021E1D8(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 16) homes];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(*(a1 + 40) + 8) + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) uniqueIdentifier];
        v9 = [v8 UUIDString];
        [v7 addObject:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_10021E418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021E430(uint64_t a1)
{
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [*(*(a1 + 32) + 16) homes];
  v19 = [obj countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v19)
  {
    v18 = *v26;
    do
    {
      v2 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v2;
        v3 = *(*(&v25 + 1) + 8 * v2);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v4 = [v3 accessories];
        v5 = [v4 countByEnumeratingWithState:&v21 objects:v35 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v22;
          do
          {
            for (i = 0; i != v6; i = i + 1)
            {
              if (*v22 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v21 + 1) + 8 * i);
              v10 = *(*(*(a1 + 40) + 8) + 40);
              v11 = [*(a1 + 32) _accessoryInfoForAccessory:v9];
              [v10 addObject:v11];

              v12 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
              {
                v13 = v12;
                v14 = [v9 uniqueIdentifier];
                v15 = [v14 UUIDString];
                v16 = [v9 configuredName];
                *buf = 136315650;
                v30 = "[ADHomeInfoManager accessoriesInHome]_block_invoke";
                v31 = 2112;
                v32 = v15;
                v33 = 2112;
                v34 = v16;
                _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Adding accessoryId=%@ with name=%@ as accessory in Home", buf, 0x20u);
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v21 objects:v35 count:16];
          }

          while (v6);
        }

        v2 = v20 + 1;
      }

      while ((v20 + 1) != v19);
      v19 = [obj countByEnumeratingWithState:&v25 objects:v36 count:16];
    }

    while (v19);
  }
}

void sub_10021E7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021E7DC(uint64_t a1)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [*(*(a1 + 32) + 16) homes];
  v20 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v20)
  {
    v19 = *v29;
    do
    {
      v2 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v2;
        v3 = *(*(&v28 + 1) + 8 * v2);
        v22 = [v3 currentUser];
        v4 = [v22 assistantAccessControlForHome:v3];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v21 = v4;
        v5 = [v4 accessories];
        v6 = [v5 countByEnumeratingWithState:&v24 objects:v38 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v25;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v25 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v24 + 1) + 8 * i);
              v11 = *(*(*(a1 + 40) + 8) + 40);
              v12 = [*(a1 + 32) _accessoryInfoForAccessory:v10];
              [v11 addObject:v12];

              v13 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
              {
                v14 = v13;
                v15 = [v10 uniqueIdentifier];
                v16 = [v15 UUIDString];
                v17 = [v10 configuredName];
                *buf = 136315650;
                v33 = "[ADHomeInfoManager accessoriesWithPersonalRequestsEnabled]_block_invoke";
                v34 = 2112;
                v35 = v16;
                v36 = 2112;
                v37 = v17;
                _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s Adding accessoryId=%@ with name=%@ as personal request enabled", buf, 0x20u);
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v24 objects:v38 count:16];
          }

          while (v7);
        }

        v2 = v23 + 1;
      }

      while ((v23 + 1) != v20);
      v20 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v20);
  }
}

void sub_10021EB18(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) status];
  v2 = AFSiriLogContextDaemon;
  v3 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (v1)
  {
    if (v3)
    {
      *buf = 136315138;
      v35 = "[ADHomeInfoManager setRecognizeMyVoiceEnabled:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s HMHomeManager not ready", buf, 0xCu);
    }

    *(*(a1 + 32) + 72) = *(a1 + 40) ^ 1;
  }

  else
  {
    if (v3)
    {
      *buf = 136315138;
      v35 = "[ADHomeInfoManager setRecognizeMyVoiceEnabled:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    v4 = *(*(a1 + 32) + 16);
    obj = [v4 homes];
    v26 = *(a1 + 40);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v5)
    {
      v6 = v5;
      v24 = v4;
      v7 = 0;
      v8 = 0;
      v9 = *v31;
      v10 = 2;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          v12 = v8;
          v13 = v7;
          if (*v31 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = [v14 currentUser];
          v16 = [v15 userSettingsForHome:v14];
          v7 = [v16 settings];

          v17 = [v7 rootGroup];
          v8 = [ADHomeInfoManager findSettingWithKeyPath:@"root.siri.identifyVoice" group:v17];

          if (v8)
          {
            v18 = [v8 value];
            v10 = [v18 BOOLValue];
          }

          v19 = AFSiriLogContextDaemon;
          v20 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
          if (v10 == v26)
          {
            if (v20)
            {
              v21 = *(a1 + 40);
              *buf = 136315394;
              v35 = "[ADHomeInfoManager setRecognizeMyVoiceEnabled:]_block_invoke";
              v36 = 1024;
              v37 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Setting is already VoiceID=%d", buf, 0x12u);
            }
          }

          else
          {
            if (v20)
            {
              v22 = *(a1 + 40);
              *buf = 136315394;
              v35 = "[ADHomeInfoManager setRecognizeMyVoiceEnabled:]_block_invoke";
              v36 = 1024;
              v37 = v22;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Setting VoiceID=%d", buf, 0x12u);
            }

            if (*(a1 + 40))
            {
              v23 = &__kCFBooleanTrue;
            }

            else
            {
              v23 = &__kCFBooleanFalse;
            }

            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_10021EF18;
            v28[3] = &unk_10051C498;
            v29 = v8;
            [v29 updateValue:v23 completionHandler:v28];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v6);

      v4 = v24;
    }
  }
}

void sub_10021EF18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) value];
  v5 = [v4 BOOLValue];

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADHomeInfoManager setRecognizeMyVoiceEnabled:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Settings operation completed with (%@) value (%d)", &v7, 0x1Cu);
  }
}

void sub_10021F080(uint64_t a1)
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 multiUserHomeUUIDsForDeletion];

  v4 = [*(a1 + 32) _homesWithMultiUserEnabled];
  if ([v3 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315395;
            v19 = "[ADHomeInfoManager restartShareDeletion]_block_invoke";
            v20 = 2113;
            v21 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Retrying deletion for UUID (%{private}@)", buf, 0x16u);
          }

          v11 = +[ADCloudKitManager sharedManager];
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_10021F2B8;
          v13[3] = &unk_100516E38;
          v13[4] = v9;
          [v11 shareWithOwner:v9 addShare:0 homes:v4 completion:v13];
        }

        v6 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v6);
    }
  }
}

void sub_10021F2B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "[ADHomeInfoManager restartShareDeletion]_block_invoke";
    v14 = 2112;
    v15 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s error is (%@)", &v12, 0x16u);
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!v9)
  {
LABEL_3:
    v11 = +[ADPreferences sharedPreferences];
    [v11 removeMultiUserHomeUUID:*(a1 + 32)];
  }

LABEL_4:
}

uint64_t sub_10021F500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

void sub_10021F650(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _currentAccessory];
  (*(v1 + 16))(v1, v2);
}

void sub_10021FBF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021FDFC;
  block[3] = &unk_10051DB68;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_10021FCAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 136315651;
      v8 = "[ADHomeInfoManager _onceSiriDataSharingAdjustment:]_block_invoke";
      v9 = 2049;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error while migrating Siri Data Sharing status from %{private}ld, error=%@", &v7, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 136315395;
      v8 = "[ADHomeInfoManager _onceSiriDataSharingAdjustment:]_block_invoke";
      v9 = 2049;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Successfully migrated Siri Data Sharing status to %{private}ld", &v7, 0x16u);
    }

    _AFPreferencesSetSiriDataSharingHomeAccessoryMigrated();
  }
}

void sub_10021FDFC(uint64_t a1)
{
  if ((_AFPreferencesHomePodPriorOptInValue2021IsPresentWithContext() & 1) == 0)
  {
    v2 = +[ADPreferences sharedPreferences];
    [v2 siriDataSharingOptInStatus];

    _AFPreferencesSetHomePodPriorOptInValue2021WithContext();
  }

  v3 = +[ADPreferences sharedPreferences];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100220154;
  v23[3] = &unk_10051C498;
  v24 = *(a1 + 40);
  [v3 setSiriDataSharingOptInStatus:2 propagateToHomeAccessories:0 source:11 reason:@"One-time adjustment" completion:v23];

  if (*(a1 + 40))
  {
    if (++qword_1005905F0 > 0x13)
    {
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v16 = v14;
        v17 = [v15 _currentAccessory];
        v18 = [v17 uniqueIdentifier];
        v19 = *(a1 + 40);
        *buf = 136315651;
        v26 = "[ADHomeInfoManager _onceSiriDataSharingAdjustment:]_block_invoke";
        v27 = 2113;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Error setting siriDataSharing for accessory %{private}@ in HomeKit: %@ - maximum retries reached", buf, 0x20u);
      }
    }

    else
    {
      v4 = dispatch_time(0, 30000000000);
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = *(v6 + 8);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100220290;
      v20[3] = &unk_10051DB68;
      v20[4] = v6;
      v21 = v5;
      v22 = *(a1 + 48);
      dispatch_after(v4, v7, v20);
    }
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = qword_1005905F0;
      v10 = *(a1 + 32);
      v11 = v8;
      v12 = [v10 _currentAccessory];
      v13 = [v12 uniqueIdentifier];
      *buf = 136315651;
      v26 = "[ADHomeInfoManager _onceSiriDataSharingAdjustment:]_block_invoke";
      v27 = 2048;
      v28 = v9;
      v29 = 2113;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Success (%lu retries) setting siriDataSharing for accessory %{private}@ in HomeKit", buf, 0x20u);
    }

    _AFPreferencesSetHomePodOptIn2021AdjustedWithContext();
  }
}

void sub_100220154(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 136315394;
      v7 = "[ADHomeInfoManager _onceSiriDataSharingAdjustment:]_block_invoke_3";
      v8 = 2112;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error performing one-time adjustment to local value, error=%@", &v6, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADHomeInfoManager _onceSiriDataSharingAdjustment:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Successfully performed one-time adjustment on local value", &v6, 0xCu);
    }

    _AFPreferencesSetSiriDataSharingHomeAccessoryMigrated();
  }

  if (+[AFFeatureFlags isSiriDataSharingRepromptEnabled])
  {
    _AFPreferencesSetSiriDataSharingHomeAccessoryMigrated();
  }
}

id sub_100220290(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 _currentAccessory];
    v7 = [v6 uniqueIdentifier];
    v8 = *(a1 + 40);
    v9 = 136315907;
    v10 = "[ADHomeInfoManager _onceSiriDataSharingAdjustment:]_block_invoke";
    v11 = 2113;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2048;
    v16 = qword_1005905F0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Error setting siriDataSharing for accessory %{private}@ in HomeKit: %@ - attempting retry %lu", &v9, 0x2Au);
  }

  return [*(a1 + 32) _onceSiriDataSharingAdjustment:*(a1 + 48)];
}

void sub_1002206C8(uint64_t a1)
{
  v38 = +[NSMutableArray array];
  v2 = [*(*(a1 + 32) + 16) homes];
  if (!v2 || (v3 = v2, [*(*(a1 + 32) + 16) homes], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, !v5))
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v48 = "[ADHomeInfoManager availableLanguagesInTheHome:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s No home found", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = a1;
  obj = [*(*(a1 + 32) + 16) homes];
  v7 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    v34 = *v44;
    do
    {
      v10 = 0;
      v35 = v8;
      do
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        v12 = [v11 accessories];
        if (v12 && (v13 = v12, [v11 accessories], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v13, v15))
        {
          v37 = v10;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v16 = [v11 accessories];
          v17 = [v16 countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v40;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v40 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = [*(*(&v39 + 1) + 8 * i) settings];
                v22 = [v21 rootGroup];
                v23 = [ADHomeInfoManager findSettingWithKeyPath:@"root.siri.language" group:v22];

                if (v23)
                {
                  v24 = [v23 value];
                  v25 = [v24 title];
                  v26 = [v25 componentsSeparatedByString:{@", "}];

                  if ([v26 count])
                  {
                    v27 = [v26 firstObject];
                    if (([v38 containsObject:v27] & 1) == 0)
                    {
                      [v38 addObject:v27];
                    }
                  }

                  else
                  {
                    v29 = AFSiriLogContextDaemon;
                    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136315138;
                      v48 = "[ADHomeInfoManager availableLanguagesInTheHome:]_block_invoke";
                      _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s Language component is empty", buf, 0xCu);
                    }
                  }
                }

                else
                {
                  v28 = AFSiriLogContextDaemon;
                  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315138;
                    v48 = "[ADHomeInfoManager availableLanguagesInTheHome:]_block_invoke";
                    _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s Siri language setting is nil", buf, 0xCu);
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v39 objects:v51 count:16];
            }

            while (v18);
          }

          v9 = v34;
          v8 = v35;
          v10 = v37;
        }

        else
        {
          v30 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v48 = "[ADHomeInfoManager availableLanguagesInTheHome:]_block_invoke";
            _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%s No accessories found for home", buf, 0xCu);
          }
        }

        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v8);
  }

  v31 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v48 = "[ADHomeInfoManager availableLanguagesInTheHome:]_block_invoke";
    v49 = 2112;
    v50 = v38;
    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%s Retrieved input language codes %@", buf, 0x16u);
  }

  v32 = [v38 copy];
  (*(*(v33 + 40) + 16))();
}

void sub_100220CF4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v8 = 0;
  v4 = [v2 _accessoryForIdentifier:v3 inHome:&v8];
  v5 = v8;
  v6 = a1[6];
  v7 = [v5 uniqueIdentifier];
  (*(v6 + 16))(v6, v7);
}

void sub_100220E14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v13}];
        v12 = [v11 objectForKey:@"allowVoiceID"];
        if (v12)
        {
          [v4 setObject:v12 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100221038(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    if ((*(a1 + 48) & 1) != 0 || (v3 = [*(v2 + 64) count], v2 = *(a1 + 32), !v3))
    {
      [v2 _updateHomeUserSettings];
      v5 = *(a1 + 40);
      v7 = [*(*(a1 + 32) + 64) mutableCopy];
      (*(v5 + 16))(v5, v7);
    }

    else
    {
      v4 = *(a1 + 40);
      v7 = [*(v2 + 64) mutableCopy];
      (*(v4 + 16))(v4, v7);
    }
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void sub_1002211C0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 48);
    *buf = 136315394;
    v28 = "[ADHomeInfoManager getCurrentHomeMemberIds:]_block_invoke";
    v29 = 2112;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s currentHome:%@", buf, 0x16u);
  }

  v4 = [*(a1 + 32) _currentHome];

  if (v4)
  {
    v5 = [*(a1 + 32) _currentHome];
    v21 = [v5 owner];
    v6 = objc_alloc_init(NSMutableArray);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v5 users];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v22 + 1) + 8 * i) uniqueIdentifier];
          v13 = [v12 UUIDString];
          v14 = [v13 copy];
          [v6 addObject:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    if (v21)
    {
      v15 = [v21 uniqueIdentifier];
      v16 = [v15 copy];
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a1 + 40);
    v18 = [v16 UUIDString];
    v19 = [v5 uniqueIdentifier];
    v20 = [v19 UUIDString];
    (*(v17 + 16))(v17, v18, v20, v6);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10022180C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002218EC;
  v12[3] = &unk_10051DB18;
  v13 = v6;
  v14 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void sub_1002218EC(void *a1)
{
  v2 = a1[4];
  if (!v2)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = a1[5];
      v9 = a1[6];
      v14 = 136315651;
      v15 = "[ADHomeInfoManager _setPreferredMediaUserForAccessory:]_block_invoke_2";
      v16 = 2113;
      v17 = v8;
      v18 = 2113;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Found sharedUserID (%{private}@) for homeUserID (%{private}@)", &v14, 0x20u);
    }

    [*(a1[7] + 112) setPreferredMediaUserHomeUserID:a1[6]];
    v5 = *(a1[7] + 112);
    v6 = a1[5];
    goto LABEL_9;
  }

  if ([v2 code] == 6001)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = a1[6];
      v14 = 136315651;
      v15 = "[ADHomeInfoManager _setPreferredMediaUserForAccessory:]_block_invoke";
      v16 = 2113;
      v17 = v4;
      v18 = 2113;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s sharedUserID not found for homeUserID (%{private}@), likely not enrolled in MultiUser, setting homeUserID (%{private}@) as preferred media user", &v14, 0x20u);
    }

    [*(a1[7] + 112) setPreferredMediaUserHomeUserID:a1[6]];
    v5 = *(a1[7] + 112);
    v6 = 0;
LABEL_9:
    [v5 setPreferredMediaUserSharedUserID:v6];
    goto LABEL_12;
  }

  [*(a1[7] + 112) setPreferredMediaUserHomeUserID:a1[6]];
  [*(a1[7] + 112) setPreferredMediaUserSharedUserID:0];
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v12 = a1[4];
    v13 = a1[6];
    v14 = 136315651;
    v15 = "[ADHomeInfoManager _setPreferredMediaUserForAccessory:]_block_invoke";
    v16 = 2112;
    v17 = v12;
    v18 = 2113;
    v19 = v13;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Error (%@) looking up sharedUserID for homeUserID (%{private}@). We will only set homeUserID", &v14, 0x20u);
  }

LABEL_12:
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:@"ADCurrentHomeKitHomeChanged" object:0];
}

uint64_t sub_100221E5C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100221F98(uint64_t a1)
{
  v5 = [*(a1 + 32) _currentHomeInfo];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

ADHomeInfo *sub_100222250(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(ADHomeInfo);
    v6 = v4;
    if (v6)
    {
      v7 = v6;
      v19 = v4;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [v3 accessories];
      v9 = [v8 countByEnumeratingWithState:&v20 objects:buf count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            v14 = [v7 uniqueIdentifier];
            v15 = [v13 uniqueIdentifier];
            v16 = [v14 isEqual:v15];

            if (v16)
            {

              -[ADHomeInfo setPersonalDomainsIsEnabled:](v5, "setPersonalDomainsIsEnabled:", [v3 isEnabled]);
              -[ADHomeInfo setSecurePersonalDomainsRequireAuth:](v5, "setSecurePersonalDomainsRequireAuth:", [v3 allowUnauthenticatedRequests] ^ 1);
              v4 = v19;
              goto LABEL_17;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v20 objects:buf count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v4 = v19;
    }

    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "_ADHomeGetInfoFromAccessControl";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Current accessory is not found in the access control list.", buf, 0xCu);
    }

    [(ADHomeInfo *)v5 setPersonalDomainsIsEnabled:0];
  }

  else
  {
    v5 = 0;
  }

LABEL_17:

  return v5;
}

void sub_100222BD8(uint64_t a1)
{
  v2 = _AFPreferencesSiriDataSharingOptInStatus();
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = AFSiriDataSharingOptInStatusGetName();
    *buf = 136315394;
    v37 = "[ADHomeInfoManager _siriDataSharingOptInStatusDidChange:]_block_invoke";
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Opt-in status: %@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) _homeManager];
  v7 = [v6 homes];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v23 = *v31;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 owner];
        v11 = [v10 uniqueIdentifier];
        v12 = [v11 UUIDString];
        v25 = v9;
        v13 = [v9 currentUser];
        v14 = [v13 uniqueIdentifier];
        v15 = [v14 UUIDString];
        v16 = [v12 isEqualToString:v15];

        if (v16)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v17 = [v25 accessories];
          v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v27;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v27 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                [*(a1 + 32) _propagateSiriDataSharingOptInStatus:v2 toAccessory:*(*(&v26 + 1) + 8 * j)];
              }

              v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v19);
          }
        }
      }

      v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }
}

void sub_1002236B8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _currentHome];
  (*(v1 + 16))(v1, v2);
}

void sub_1002242E4(uint64_t a1)
{
  v2 = [*(a1 + 32) _homeManager];
  v3 = [v2 homes];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v33 + 1) + 8 * v8);
      v10 = [v9 uniqueIdentifier];
      v11 = [v10 UUIDString];
      v12 = [v11 isEqualToString:*(a1 + 40)];

      if (v12)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[ADHomeInfoManager updateCurrentUserRMVSettingForHome:enabled:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Found Home", buf, 0xCu);
    }

    v14 = v9;

    if (v14)
    {
      v15 = [v14 currentUser];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 userSettingsForHome:v14];
        v18 = [v17 settings];

        v19 = [v18 rootGroup];
        v20 = [ADHomeInfoManager findSettingWithKeyPath:@"root.siri.identifyVoice" group:v19];

        v21 = [v18 rootGroup];
        v22 = [ADHomeInfoManager findSettingWithKeyPath:@"root.home.dismissedIdentifyVoiceOnboarding" group:v21];

        v23 = [NSNumber numberWithBool:*(a1 + 56)];
        v27 = _NSConcreteStackBlock;
        v28 = 3221225472;
        v29 = sub_100224688;
        v30 = &unk_10051DD98;
        v31 = *(a1 + 32);
        v32 = *(a1 + 48);
        [v20 updateValue:v23 completionHandler:&v27];

        v24 = [NSNumber numberWithBool:1, v27, v28, v29, v30, v31];
        [v22 updateValue:v24 completionHandler:&stru_100516DC0];
      }

      else
      {
        v26 = *(a1 + 48);
        v18 = [AFError errorWithCode:6001 description:@"No current user found"];
        (*(v26 + 16))(v26, v18);
      }

      goto LABEL_18;
    }
  }

  else
  {
LABEL_9:
  }

  v25 = *(a1 + 48);
  v14 = [AFError errorWithCode:6002 description:@"Invalid Home unique ID for this user"];
  (*(v25 + 16))(v25, v14);
LABEL_18:
}

void sub_100224688(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3 && [*(a1 + 32) _updateHomeUserSettings])
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"ADHomeInfoForThisDeviceDidChangeNotification" object:0];
  }

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADHomeInfoManager updateCurrentUserRMVSettingForHome:enabled:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Updated RMV setting with error %@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002247A0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADHomeInfoManager updateCurrentUserRMVSettingForHome:enabled:completion:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Updated dismissed onboarding setting with error %@", &v4, 0x16u);
  }
}

void sub_1002249BC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v3 = [v2 users];
    v4 = [v3 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v33;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        v9 = [v8 uniqueIdentifier];
        v10 = [v9 UUIDString];
        v11 = [v10 isEqualToString:*(a1 + 40)];

        if (v11)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v12 = v8;

      if (v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_10:
    }

    v13 = *(a1 + 40);
    v14 = [*(*(a1 + 32) + 48) owner];
    v15 = [v14 uniqueIdentifier];
    v16 = [v15 UUIDString];
    LODWORD(v13) = [v13 isEqualToString:v16];

    if (!v13)
    {
      goto LABEL_22;
    }

    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v37 = "[ADHomeInfoManager updateRMVSettingForUser:enabled:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s User is home owner", buf, 0xCu);
    }

    v18 = [*(*(a1 + 32) + 48) owner];
    if (v18)
    {
      v12 = v18;
LABEL_17:
      v19 = [v12 userSettingsForHome:*(*(a1 + 32) + 48)];
      v20 = [v19 settings];

      v21 = [v20 rootGroup];
      v22 = [ADHomeInfoManager findSettingWithKeyPath:@"root.siri.identifyVoice" group:v21];

      if (v22)
      {
        v23 = [NSNumber numberWithBool:*(a1 + 56)];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100224E24;
        v30[3] = &unk_10051DD98;
        v30[4] = *(a1 + 32);
        v31 = *(a1 + 48);
        [v22 updateValue:v23 completionHandler:v30];
      }

      else
      {
        v26 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v37 = "[ADHomeInfoManager updateRMVSettingForUser:enabled:completion:]_block_invoke";
          v38 = 2112;
          v39 = v12;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s No RmV setting found for user: %@", buf, 0x16u);
        }

        v27 = *(a1 + 48);
        v28 = [AFError errorWithCode:6008];
        (*(v27 + 16))(v27, v28);
      }
    }

    else
    {
LABEL_22:
      v25 = *(a1 + 48);
      v12 = [AFError errorWithCode:6001 description:@"No home user specified"];
      (*(v25 + 16))(v25, v12);
    }
  }

  else
  {
    v24 = *(a1 + 48);
    v29 = [AFError errorWithCode:31 description:@"No Current Home"];
    (*(v24 + 16))(v24);
  }
}

void sub_100224E24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3 && [*(a1 + 32) _updateHomeUserSettings])
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"ADHomeInfoForThisDeviceDidChangeNotification" object:0];
  }

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADHomeInfoManager updateRMVSettingForUser:enabled:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Updated RMV setting with error %@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002250E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2;
  if (!v2)
  {
    v3 = +[AFInstanceContext defaultContext];
  }

  objc_storeStrong((*(a1 + 32) + 88), v3);
  if (!v2)
  {
  }

  v4 = +[NSHashTable weakObjectsHashTable];
  v5 = *(a1 + 32);
  v6 = *(v5 + 96);
  *(v5 + 96) = v4;

  v7 = objc_alloc_init(ADPreferredMediaUserInfo);
  v8 = *(a1 + 32);
  v9 = *(v8 + 112);
  *(v8 + 112) = v7;

  v10 = [*(a1 + 32) _homeManager];
  v11 = [TRIClient clientWithIdentifier:124];
  v12 = [TRINamespace namespaceNameFromId:874];
  v13 = [v11 levelForFactor:@"ByPassServerFlow" withNamespaceName:v12];
  v14 = v13;
  v15 = @"NO";
  if (v13)
  {
    v16 = [v13 BOOLeanValue];
    v17 = +[ADPreferences sharedPreferences];
    [v17 setHomeAutomationServerFlowBypassed:v16];

    if (v16)
    {
      v15 = @"YES";
    }
  }

  v18 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v20 = 136315394;
    v21 = "fetchHomeContextTrialFactor";
    v22 = 2112;
    v23 = v15;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s Home Automation server flow by pass enabled: %@", &v20, 0x16u);
  }

  v19 = +[NSNotificationCenter defaultCenter];
  [v19 addObserver:*(a1 + 32) selector:"_siriDataSharingOptInStatusDidChange:" name:@"ADPreferencesSiriDataSharingOptInStatusDidChangeNotification" object:0];
  *(*(a1 + 32) + 120) = AFIsATV();
}

void sub_10022531C(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADHomeInfoManager _initWithContext:]_block_invoke_2";
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

void sub_100225838(id a1)
{
  v1 = [ADHomeInfoManager alloc];
  v4 = +[AFInstanceContext currentContext];
  v2 = [(ADHomeInfoManager *)v1 _initWithContext:v4];
  v3 = qword_1005905D8;
  qword_1005905D8 = v2;
}

uint64_t sub_100225C6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100225C84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(v4 + 8) + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002266E0;
  v7[3] = &unk_10051C8E0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  sub_1002743D8(0, 0, v5, v7);
}

void *sub_100225D40(void *a1, void *a2)
{
  v3 = a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10022637C;
  v8[3] = &unk_100517050;
  v9 = a2;
  v10 = v3;
  v4 = v3;
  v5 = v9;
  v6 = objc_retainBlock(v8);

  return v6;
}

void sub_100225E10(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[BGSystemTaskScheduler sharedScheduler];
  [v5 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v3];
}

void sub_100225E94(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[BGSystemTaskScheduler sharedScheduler];
  v6 = [v5 taskRequestForIdentifier:v3];

  v7 = AFSiriLogContextSpeech;
  v8 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 136315394;
      v15 = "_submitBGSTRequest";
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Skipping submission of existing task %@.", buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 136315394;
      v15 = "_submitBGSTRequest";
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Starting submission of task %@.", buf, 0x16u);
    }

    v6 = v4[2](v4, v3);
    v9 = +[BGSystemTaskScheduler sharedScheduler];
    v13 = 0;
    v10 = [v9 submitTaskRequest:v6 error:&v13];
    v11 = v13;

    v12 = AFSiriLogContextSpeech;
    if (v10)
    {
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "_submitBGSTRequest";
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s On-Device ASR: BGST: Successfully submitted task %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = "_submitBGSTRequest";
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s On-Device ASR: BGST: Failed to submit task %@. Error: %@", buf, 0x20u);
    }
  }
}

BGSystemTaskRequest *__cdecl sub_100226114(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:v2];

  [v3 setInterval:86400.0];
  [v3 interval];
  [v3 setMinDurationBetweenInstances:?];
  [v3 setPriority:1];
  [v3 setRequiresExternalPower:1];
  [v3 setRequiresNetworkConnectivity:1];

  return v3;
}

void sub_1002261B0(id a1, id a2)
{
  v5 = a2;
  sub_100273594(0);
  sub_100273594(1);
  sub_100273594(2);
  v6 = 0;
  [CSDADataAnalyticsController cleanupAudioAndLegacyData:&v6];
  v2 = v6;
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ADSpeechSamplingDeleteCoreSpeechDataCollectionSamples";
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s CoreSpeech data cleanup with error: %@", buf, 0x16u);
  }

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

BGSystemTaskRequest *__cdecl sub_1002262D4(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:v2];

  [v3 setInterval:86400.0];
  [v3 interval];
  [v3 setMinDurationBetweenInstances:?];
  [v3 setPriority:1];
  [v3 setRequiresExternalPower:1];
  [v3 setRequiresInexpensiveNetworkConnectivity:1];
  [v3 setRequiresUserInactivity:1];

  return v3;
}

void sub_10022637C(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002264DC;
  v11[3] = &unk_10051C8E0;
  v12 = *(a1 + 32);
  v13 = v14;
  [v3 setExpirationHandler:v11];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100226520;
  v8[3] = &unk_10051D4A0;
  v10 = v14;
  v4 = v3;
  v9 = v4;
  v5 = objc_retainBlock(v8);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7);

  _Block_object_dispose(v14, 8);
}

uint64_t sub_1002264DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_100226520(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = AFSiriLogContextSpeech;
  v4 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 136315138;
      v12 = "_buildLaunchHandlerWithFunction_block_invoke_3";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s On-Device ASR: BGST: ExpirationHandler called.", buf, 0xCu);
    }

    v5 = *(a1 + 32);
    v10 = 0;
    v6 = [v5 setTaskExpiredWithRetryAfter:&v10 error:0.0];
    v7 = v10;
    if ((v6 & 1) == 0)
    {
      v8 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v9 = @"Unknown";
        if (v7)
        {
          v9 = v7;
        }

        *buf = 136315394;
        v12 = "_buildLaunchHandlerWithFunction_block_invoke";
        v13 = 2112;
        v14 = v9;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s On-Device ASR: BGST: Failed to expire task with error: %@", buf, 0x16u);
      }

      [*(a1 + 32) setTaskCompleted];
    }
  }

  else
  {
    if (v4)
    {
      *buf = 136315138;
      v12 = "_buildLaunchHandlerWithFunction_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s On-Device ASR: BGST: Task completed before expiration.", buf, 0xCu);
    }

    [*(a1 + 32) setTaskCompleted];
  }
}

uint64_t sub_1002266E0(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) setShouldAbort:0];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100226A1C(uint64_t a1)
{
  v1 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v65 = "ADTrainSpeechPersonalizedLM_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s PLM: Training (and maintenance) start", buf, 0xCu);
  }

  v2 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
  [v2 removePersonalizedLMForFidesOnly:0];

  v3 = AFLibraryDirectoryWithSubPath();
  v4 = [v3 stringByAppendingPathComponent:@"SpeechPersonalizedLM"];

  if (![v4 length])
  {
    v24 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v65 = "ADTrainSpeechPersonalizedLM_block_invoke";
      v25 = "%s PLM: Empty path";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, v25, buf, 0xCu);
    }

LABEL_25:
    v26 = 0;
    goto LABEL_52;
  }

  v5 = +[AFPreferences sharedPreferences];
  v6 = [v5 dictationIsEnabled];

  if ((v6 & 1) == 0)
  {
    v24 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v65 = "ADTrainSpeechPersonalizedLM_block_invoke";
      v25 = "%s PLM: Dictation disabled";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_1002273C8;
  v56 = sub_1002273D8;
  v57 = 0;
  v7 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1002273E0;
  v49[3] = &unk_1005170F8;
  v51 = &v52;
  v9 = v8;
  v50 = v9;
  v42 = v7;
  [v7 getOfflineDictationStatusWithCompletion:v49];
  v10 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v9, v10);
  v11 = v53[5];
  v12 = objc_alloc_init(NSMutableSet);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v45 objects:buf count:16];
  if (v14)
  {
    v15 = *v46;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        v18 = [v13 objectForKeyedSubscript:v17];
        IsInstalled = AFOfflineDictationStatusStringIsInstalled();

        if (IsInstalled)
        {
          [v12 addObject:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v45 objects:buf count:16];
    }

    while (v14);
  }

  v20 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *v58 = 136315394;
    v59 = "getPersonalizedLMUserLanguage";
    v60 = 2112;
    v61 = v12;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s PLM: installedLanguages=%@", v58, 0x16u);
  }

  if (![v12 count])
  {
    v22 = 0;
    goto LABEL_37;
  }

  if ([v12 count] != 1)
  {
    v27 = +[ADPreferences sharedPreferences];
    v28 = [v27 languageCode];

    v29 = AFOfflineDictationLanguageForKeyboardLanguage();
    v30 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *v58 = 136315650;
      v59 = "getPersonalizedLMUserLanguage";
      v60 = 2112;
      v61 = v28;
      v62 = 2112;
      v63 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s PLM: Trying Siri language %@ result %@", v58, 0x20u);
    }

    if ([v29 length])
    {
      v31 = v28;
    }

    else
    {
      v32 = +[NSLocale currentLocale];
      v31 = [v32 localeIdentifier];

      v33 = AFOfflineDictationLanguageForKeyboardLanguage();

      v34 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *v58 = 136315650;
        v59 = "getPersonalizedLMUserLanguage";
        v60 = 2112;
        v61 = v31;
        v62 = 2112;
        v63 = v33;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s PLM: Trying system language %@ result %@", v58, 0x20u);
      }

      if (![v33 length])
      {
        v22 = 0;
        goto LABEL_36;
      }

      v29 = v33;
    }

    v33 = v29;
    v22 = v33;
LABEL_36:

    goto LABEL_37;
  }

  v21 = [v12 allObjects];
  v22 = [v21 firstObject];

  v23 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *v58 = 136315394;
    v59 = "getPersonalizedLMUserLanguage";
    v60 = 2112;
    v61 = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s PLM: Found one dictation language %@", v58, 0x16u);
  }

LABEL_37:

  _Block_object_dispose(&v52, 8);
  v35 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v65 = "ADTrainSpeechPersonalizedLM_block_invoke";
    v66 = 2112;
    v67 = v22;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s PLM: user language: %@", buf, 0x16u);
  }

  if (![v22 length])
  {
    v40 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v65 = "ADTrainSpeechPersonalizedLM_block_invoke";
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s PLM: Could not get user language", buf, 0xCu);
    }

    v26 = 0;
    goto LABEL_51;
  }

  v36 = objc_alloc_init(SpeechModelTrainingClient);
  v37 = v36;
  v26 = *(a1 + 32);
  if (v26)
  {
    v44 = v36;
    v26 = xpc_activity_add_eligibility_changed_handler();
    if (xpc_activity_should_defer(*(a1 + 32)))
    {
      v38 = xpc_activity_set_state(*(a1 + 32), 3);
      v39 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v65 = "ADTrainSpeechPersonalizedLM_block_invoke";
        v66 = 1024;
        LODWORD(v67) = v38;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s PLM: Deferred:%d", buf, 0x12u);
      }

      goto LABEL_50;
    }
  }

  [v37 trainPersonalizedLMWithLanguage:v22 directory:v4 completion:&stru_1005170D0];
LABEL_50:

LABEL_51:
LABEL_52:

  if (v26)
  {
    xpc_activity_remove_eligibility_changed_handler();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100227320(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exc_buf);
  }

  objc_begin_catch(exc_buf);
  if (!v31)
  {
    JUMPOUT(0x1002272B4);
  }

  JUMPOUT(0x1002272ACLL);
}

uint64_t sub_1002273C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002273E0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100227440(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_should_defer(v3))
  {
    v4 = xpc_activity_set_state(v3, 3);
    v5 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "ADTrainSpeechPersonalizedLM_block_invoke";
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s PLM: eligibilityHandler deferred: %d", &v6, 0x12u);
    }

    [*(a1 + 32) invalidate];
  }
}

void sub_10022752C(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "ADTrainSpeechPersonalizedLM_block_invoke";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s PLM: Training end", &v14, 0xCu);
  }

  if (v5)
  {
    v7 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "ADTrainSpeechPersonalizedLM_block_invoke";
      v16 = 2112;
      v17 = v5;
      v8 = "%s PLM: Training error %@";
      v9 = v7;
      v10 = 22;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, &v14, v10);
    }
  }

  else
  {
    v11 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDInteractive];
    [v11 invalidatePersonalizedLM];

    v12 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];
    [v12 invalidatePersonalizedLM];

    v13 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "ADTrainSpeechPersonalizedLM_block_invoke";
      v8 = "%s PLM: Invalidated previous PLM";
      v9 = v13;
      v10 = 12;
      goto LABEL_8;
    }
  }
}

unint64_t sub_1002277D8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFFFELL | *(a1 + 32);
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ADOpportuneSpeakingStateManager _listeningEdgeDetectorIDsChanged]_block_invoke";
    v8 = 2048;
    v9 = a2;
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s state: %llu -> %llu", &v6, 0x20u);
  }

  return v3;
}

id sub_1002279E8(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _listeningEdgeDetectorIDsChanged];
}

id sub_100227B60(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _listeningEdgeDetectorIDsChanged];
}

void sub_1002282C0(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 840));
  v2 = *(a1 + 32);
  v3 = *(v2 + 840);
  *(v2 + 840) = 0;

  if (([*(a1 + 32) _speechDelegateHasReceivedPartialResult] & 1) == 0)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[ADCommandCenter(AcousticId) _saAISearchCompleted:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Canceling speech request because we have an acoustic identification but no partial results", &v7, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = [v5 _speechDelegate];
    [v5 cancelSpeechForDelegate:v6];
  }
}

void sub_100229098(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 requestLifecycleObserver:a1[4] requestDidEndWithInfo:a1[5] origin:a1[7] client:a1[6]];
  }
}

void sub_100229320(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 requestLifecycleObserver:a1[4] requestWasCancelledWithInfo:a1[5] forReason:a1[8] origin:a1[9] client:a1[6] successorInfo:a1[7]];
  }
}

void sub_10022957C(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 requestLifecycleObserver:a1[4] requestWillBeginWithInfo:a1[5] origin:a1[7] client:a1[6]];
  }
}

void sub_1002296D8(id a1)
{
  v1 = objc_alloc_init(ADRequestLifecycleObserver);
  v2 = qword_100590600;
  qword_100590600 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10022B048(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = a2;
  [v4 setTimestamp:v3];
  [v4 setReason:*(a1 + 32)];
  [v4 setEffectiveDate:*(a1 + 40)];
  [v4 setExpirationDuration:*(a1 + 64)];
  [v4 setUserInfo:*(a1 + 48)];
}

void sub_10022BD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10022BD58(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateRingerMuteState:a2];
}

id sub_10022BFE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _ringerStateToken];

  return [v1 _updateRingerMuteState:v2];
}

void sub_10022C024(id a1)
{
  v1 = objc_alloc_init(ADSystemMuteModeObserver);
  v2 = qword_100590608;
  qword_100590608 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10022C208(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = objc_alloc_init(SISchemaLocation);
    [v3 setLocation:v5];

    v6 = [*(a1 + 32) location];
    [v4 coordinate];
    *&v7 = v7;
    [v6 setLatitude:v7];

    v8 = [*(a1 + 32) location];
    [v4 coordinate];
    *&v10 = v9;
    [v8 setLongitude:v10];

    v11 = [*(a1 + 32) location];
    [v4 horizontalAccuracy];
    v13 = v12;

    *&v14 = v13;
    [v11 setHorizontalAccuracyInMeters:v14];
  }

  v15 = *(*(a1 + 40) + 8);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10022C374;
  v16[3] = &unk_10051E038;
  v17 = *(a1 + 32);
  v18 = *(a1 + 48);
  dispatch_async(v15, v16);
}

void sub_10022C374(uint64_t a1)
{
  v4 = +[ADPreferences sharedPreferences];
  v2 = *(a1 + 32);
  v3 = [v4 countryCode];
  [v2 setCountryCode:v3];

  (*(*(a1 + 40) + 16))();
}

void sub_10022C5E0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = +[AFAnalytics sharedAnalytics];
    [v4 logInstrumentation:v3 machAbsoluteTime:*(a1 + 40) turnIdentifier:*(a1 + 32)];
  }
}

void sub_10022CDB0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setPeerInfo:v3];
  [v4 setContextIdentifier:a1[5]];
  [v4 setProximity:a1[8]];
  [v4 setCommandRelayProxyIdentifier:a1[6]];
  [v4 setError:a1[7]];
}

void sub_10022DFAC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10022E03C;
  v2[3] = &unk_100517360;
  v3 = *(a1 + 40);
  [v1 fetchNextMetricsUsingBlock:v2];
}

void sub_10022E03C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 setOfflineIdentifier:a3];
  (*(*(a1 + 32) + 16))();
}

void sub_10022E31C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 16);
  v3 = [v1 offlineIdentifier];
  v5 = v3;
  if (v3)
  {
    [v2 insertMetrics:v1 withOfflineIdentifier:v3];
  }

  else
  {
    v4 = SiriCoreUUIDStringCreate();
    [v2 insertMetrics:v1 withOfflineIdentifier:v4];
  }
}

uint64_t sub_10022E4B8(uint64_t a1)
{
  [objc_opt_class() _deleteLegacyOfflineMetricsFiles];
  v2 = [objc_opt_class() _buildOfflineMetricsMap];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100231644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100231668(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v11 = *(*(a1 + 32) + 8);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1002317C0;
  v18 = &unk_100517400;
  v12 = v7;
  v19 = v12;
  v13 = v8;
  v14 = *(a1 + 32);
  v20 = v13;
  v21 = v14;
  v22 = &v23;
  dispatch_async(v11, &v15);
  if (*(v24 + 24) == 1)
  {
    [WeakRetained clearUnsavedRecords];
  }

  _Block_object_dispose(&v23, 8);
}

void sub_1002317A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002317C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = AFSiriLogContextDaemon;
    v5 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v5)
      {
        v7 = 136315394;
        v8 = "[ADCloudKitSharedZoneUpdater _retryRecordSave]_block_invoke_2";
        v9 = 2112;
        v10 = v2;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Partial failure unhandled. File a bug for error (%@).", &v7, 0x16u);
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      if (v5)
      {
        v7 = 136315394;
        v8 = "[ADCloudKitSharedZoneUpdater _retryRecordSave]_block_invoke";
        v9 = 2112;
        v10 = v2;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Error even during retry (%@)", &v7, 0x16u);
      }

      [*(a1 + 48) _startRetryTimer];
    }
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[ADCloudKitSharedZoneUpdater _retryRecordSave]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Success in retry", &v7, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

id sub_100231A68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 _retryRecordSave];
}

void sub_100231B7C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v36 = "[ADCloudKitSharedZoneUpdater fetchValuesForKeysFromSharedStore:withQOS:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 56) zone];
  v5 = [v4 zoneID];
  v6 = sub_100125C7C(v3, v5);

  v7 = [v6 allValues];
  v8 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [v9 objectForKey:v14];
        [v8 setObject:v14 forKey:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
  }

  v16 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:v7];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100231E70;
  v25 = &unk_100517CD8;
  v26 = *(a1 + 32);
  v29 = *(a1 + 48);
  v17 = v7;
  v27 = v17;
  v18 = v8;
  v28 = v18;
  [v16 setFetchRecordsCompletionBlock:&v22];
  [v16 setQualityOfService:{*(a1 + 56), v22, v23, v24, v25}];
  v19 = *(a1 + 40);
  v20 = *(v19 + 24);
  if (*(v19 + 16) == 1)
  {
    [v20 privateCloudDatabase];
  }

  else
  {
    [v20 sharedCloudDatabase];
  }
  v21 = ;
  [v21 addOperation:v16];
}

void sub_100231E70(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      v23 = v6;
      v24 = [v5 debugDescription];
      *buf = 136315650;
      v33 = "[ADCloudKitSharedZoneUpdater fetchValuesForKeysFromSharedStore:withQOS:completion:]_block_invoke";
      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      v37 = v24;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Failed to fetch values for keys: (%@) - (%@)", buf, 0x20u);
    }

    if (sub_10031BAC0(v5))
    {
      v7 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
LABEL_20:
        v21 = *(a1 + 56);
        v8 = [AFError errorWithCode:4021];
        (*(v21 + 16))(v21, 0, v8);
        goto LABEL_23;
      }

      *buf = 136315138;
      v33 = "[ADCloudKitSharedZoneUpdater fetchValuesForKeysFromSharedStore:withQOS:completion:]_block_invoke";
    }

    else
    {
      if (!sub_10031B6CC(v5))
      {
        goto LABEL_20;
      }

      v7 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 136315138;
      v33 = "[ADCloudKitSharedZoneUpdater fetchValuesForKeysFromSharedStore:withQOS:completion:]_block_invoke";
    }

    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Keychain sync error", buf, 0xCu);
    goto LABEL_20;
  }

  v25 = 0;
  v8 = objc_alloc_init(NSMutableDictionary);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = a1;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v28;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v26 objectForKey:{v16, v25}];
        v18 = v17;
        if (v17)
        {
          v19 = sub_100125E60(v17);
          v20 = [*(v9 + 48) objectForKey:v16];
          [v8 setObject:v19 forKey:v20];
        }

        else
        {
          [AFError errorWithCode:4012];
          v13 = v19 = v13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  (*(*(v9 + 56) + 16))();
  v5 = v25;
LABEL_23:
}

void sub_1002322B8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[ADCloudKitSharedZoneUpdater fetchValueForKeyFromSharedStore:withQOS:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v3 = [*(*(a1 + 32) + 56) zone];
  v4 = [v3 zoneID];

  if (v4)
  {
    v5 = sub_100125DEC(*(a1 + 40), v4);
    v6 = [CKFetchRecordsOperation alloc];
    v30 = v5;
    v7 = [NSArray arrayWithObjects:&v30 count:1];
    v8 = [v6 initWithRecordIDs:v7];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100232660;
    v22[3] = &unk_1005173D8;
    v23 = *(a1 + 40);
    v25 = *(a1 + 48);
    v9 = v5;
    v24 = v9;
    [v8 setFetchRecordsCompletionBlock:v22];
    [v8 setQualityOfService:*(a1 + 56)];
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v12 = AFSiriLogContextDaemon;
    v13 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v11 == 1)
    {
      if (v13)
      {
        v14 = v12;
        v15 = [v8 operationID];
        *buf = 136315394;
        v27 = "[ADCloudKitSharedZoneUpdater fetchValueForKeyFromSharedStore:withQOS:completion:]_block_invoke";
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Fetching from private database for operation ID: %@", buf, 0x16u);

        v10 = *(a1 + 32);
      }

      v16 = [*(v10 + 24) privateCloudDatabase];
    }

    else
    {
      if (v13)
      {
        v19 = v12;
        v20 = [v8 operationID];
        *buf = 136315394;
        v27 = "[ADCloudKitSharedZoneUpdater fetchValueForKeyFromSharedStore:withQOS:completion:]_block_invoke";
        v28 = 2112;
        v29 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Fetching from shared database for operation ID: %@", buf, 0x16u);

        v10 = *(a1 + 32);
      }

      v16 = [*(v10 + 24) sharedCloudDatabase];
    }

    v21 = v16;
    [v16 addOperation:v8];
  }

  else
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[ADCloudKitSharedZoneUpdater fetchValueForKeyFromSharedStore:withQOS:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Zone ID is nil. Bailing.", buf, 0xCu);
    }

    v18 = *(a1 + 48);
    v9 = [AFError errorWithCode:4021 description:@"Zone ID is nil."];
    (*(v18 + 16))(v18, 0, v9);
  }
}

void sub_100232660(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v15 = a1[4];
      v16 = v7;
      v17 = [v6 debugDescription];
      *v18 = 136315650;
      *&v18[4] = "[ADCloudKitSharedZoneUpdater fetchValueForKeyFromSharedStore:withQOS:completion:]_block_invoke";
      *&v18[12] = 2112;
      *&v18[14] = v15;
      v19 = 2112;
      v20 = v17;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Failed to fetch value for key: (%@) (%@)", v18, 0x20u);
    }

    if (sub_10031BAC0(v6))
    {
      v8 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        v13 = a1[6];
        v10 = [AFError errorWithCode:4021, *v18];
        (*(v13 + 16))(v13, 0, v10);
        goto LABEL_14;
      }

      *v18 = 136315138;
      *&v18[4] = "[ADCloudKitSharedZoneUpdater fetchValueForKeyFromSharedStore:withQOS:completion:]_block_invoke";
    }

    else
    {
      if (!sub_10031B6CC(v6))
      {
        goto LABEL_11;
      }

      v8 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *v18 = 136315138;
      *&v18[4] = "[ADCloudKitSharedZoneUpdater fetchValueForKeyFromSharedStore:withQOS:completion:]_block_invoke";
    }

    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Keychain sync error", v18, 0xCu);
    goto LABEL_11;
  }

  v9 = [v5 objectForKey:a1[5]];
  v10 = v9;
  if (v9)
  {
    v11 = sub_100125E60(v9);
    v12 = *(a1[6] + 16);
  }

  else
  {
    v14 = a1[6];
    v11 = [AFError errorWithCode:4012];
    v12 = *(v14 + 16);
  }

  v12();

LABEL_14:
}

void sub_1002329DC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) zone];
  v3 = [v2 zoneID];

  if (v3)
  {
    v4 = *(a1 + 40);
    v26 = v3;
    v5 = v3;
    v6 = objc_alloc_init(NSMutableDictionary);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v30 objects:buf count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [v7 objectForKey:{v12, v26}];
          v14 = sub_1001259A0(v12, v13, v5);

          if (v14)
          {
            v15 = [v12 copy];
            [v6 setObject:v14 forKey:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:buf count:16];
      }

      while (v9);
    }

    v16 = sub_100125C7C(*(a1 + 48), v5);
    v17 = [v16 allValues];
    if ([v6 count] || objc_msgSend(v17, "count"))
    {
      v18 = [v6 allValues];
      v19 = *(a1 + 32);
      v20 = *(v19 + 24);
      v21 = *(v19 + 16);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100232D84;
      v27[3] = &unk_1005173B0;
      v27[4] = v19;
      v28 = v6;
      v29 = *(a1 + 56);
      sub_100125F7C(v18, v17, 25, v20, v21, 0, v27);
    }

    else
    {
      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v35 = "[ADCloudKitSharedZoneUpdater addDictionaryToSharedStore:recordKeysForDeletion:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Zero records created, and zero records deleted", buf, 0xCu);
      }

      v25 = *(a1 + 56);
      if (v25)
      {
        (*(v25 + 16))(v25, 0);
      }
    }

    v3 = v26;
    goto LABEL_19;
  }

  v22 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v35 = "[ADCloudKitSharedZoneUpdater addDictionaryToSharedStore:recordKeysForDeletion:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s zoneID is nil. Abort", buf, 0xCu);
  }

  v23 = *(a1 + 56);
  if (v23)
  {
    v6 = [AFError errorWithCode:4020];
    (*(v23 + 16))(v23, v6);
LABEL_19:
  }
}

void sub_100232D84(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100232E50;
  v8[3] = &unk_10051E0D8;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

uint64_t sub_100232E50(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AFSiriLogContextDaemon;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[ADCloudKitSharedZoneUpdater addDictionaryToSharedStore:recordKeysForDeletion:completion:]_block_invoke_2";
      v7 = 2112;
      v8 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Failed to save key,value pairs with error (%@)", &v5, 0x16u);
    }

    [*(*(a1 + 40) + 32) addEntriesFromDictionary:*(a1 + 48)];
    [*(a1 + 40) _notifyFailure:*(a1 + 32)];
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[ADCloudKitSharedZoneUpdater addDictionaryToSharedStore:recordKeysForDeletion:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Successfully uploaded", &v5, 0xCu);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100233088(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) zone];
  v3 = [v2 zoneID];

  v4 = sub_1001259A0(*(a1 + 40), *(a1 + 48), v3);
  v16 = v4;
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  v9 = *(v7 + 16);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10023320C;
  v11[3] = &unk_100517388;
  v11[4] = v7;
  v12 = v6;
  v13 = *(a1 + 48);
  v14 = v4;
  v15 = *(a1 + 56);
  v10 = v4;
  sub_100125F7C(v5, 0, 17, v8, v9, 0, v11);
}

void sub_10023320C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100233328;
  block[3] = &unk_1005183C8;
  v13 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v11 = *(a1 + 32);
  v7 = *(a1 + 56);
  *&v8 = v11;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v14 = v9;
  v15 = v8;
  v16 = *(a1 + 64);
  v10 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_100233328(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AFSiriLogContextDaemon;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = 136315906;
      v11 = "[ADCloudKitSharedZoneUpdater addKeyToSharedStore:value:completion:]_block_invoke_3";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Failed to save key (%@) value (%@) with error (%@)", &v10, 0x2Au);
    }

    v4 = *(a1 + 64);
    v5 = *(*(a1 + 56) + 32);
    v6 = [*(a1 + 40) copy];
    [v5 setObject:v4 forKey:v6];

    [*(a1 + 56) _notifyFailure:*(a1 + 32)];
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[ADCloudKitSharedZoneUpdater addKeyToSharedStore:value:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Successfully uploaded", &v10, 0xCu);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100233A50(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 stringValue];

      v6 = v7;
    }

    [*(a1 + 32) setObject:v6 forKey:v8];
  }
}

uint64_t sub_1002355A0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100235910(id a1, AFExperimentConfigurationMutating *a2)
{
  v2 = a2;
  [(AFExperimentConfigurationMutating *)v2 setType:1];
  [(AFExperimentConfigurationMutating *)v2 setIdentifier:AFInvocationFeedbacksExperimentConfigurationIdentifier];
  [(AFExperimentConfigurationMutating *)v2 setVersion:@"1.0.0"];
  [(AFExperimentConfigurationMutating *)v2 setSalt:@"DE3507E9-7F1D-4BC9-A2B1-E32FB56890D1"];
  v3 = [AFExperimentGroup newWithBuilder:&stru_1005174D0];
  [(AFExperimentConfigurationMutating *)v2 setControlGroup:v3];

  v4 = [AFExperimentGroup newWithBuilder:&stru_1005174F0];
  v9[0] = v4;
  v5 = [AFExperimentGroup newWithBuilder:&stru_100517510];
  v9[1] = v5;
  v6 = [AFExperimentGroup newWithBuilder:&stru_100517530];
  v9[2] = v6;
  v7 = [AFExperimentGroup newWithBuilder:&stru_100517550];
  v9[3] = v7;
  v8 = [NSArray arrayWithObjects:v9 count:4];
  [(AFExperimentConfigurationMutating *)v2 setExperimentGroups:v8];
}

void sub_100235A7C(id a1, AFExperimentGroupMutating *a2)
{
  v2 = a2;
  [(AFExperimentGroupMutating *)v2 setIdentifier:@"phase_four"];
  [(AFExperimentGroupMutating *)v2 setAllocation:0];
  v4 = AFInvocationFeedbacksExperimentGroupPropertyKeyFeatureGroups;
  v5 = &off_100533CE0;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [(AFExperimentGroupMutating *)v2 setProperties:v3];
}

void sub_100235B38(id a1, AFExperimentGroupMutating *a2)
{
  v2 = a2;
  [(AFExperimentGroupMutating *)v2 setIdentifier:@"phase_three"];
  [(AFExperimentGroupMutating *)v2 setAllocation:0];
  v4 = AFInvocationFeedbacksExperimentGroupPropertyKeyFeatureGroups;
  v5 = &off_100533CC8;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [(AFExperimentGroupMutating *)v2 setProperties:v3];
}

void sub_100235BF4(id a1, AFExperimentGroupMutating *a2)
{
  v2 = a2;
  [(AFExperimentGroupMutating *)v2 setIdentifier:@"phase_two"];
  [(AFExperimentGroupMutating *)v2 setAllocation:0];
  v4 = AFInvocationFeedbacksExperimentGroupPropertyKeyFeatureGroups;
  v5 = &off_100533CB0;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [(AFExperimentGroupMutating *)v2 setProperties:v3];
}

void sub_100235CB0(id a1, AFExperimentGroupMutating *a2)
{
  v2 = a2;
  [(AFExperimentGroupMutating *)v2 setIdentifier:@"phase_one"];
  [(AFExperimentGroupMutating *)v2 setAllocation:0];
  v4 = AFInvocationFeedbacksExperimentGroupPropertyKeyFeatureGroups;
  v5 = &off_100533C98;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [(AFExperimentGroupMutating *)v2 setProperties:v3];
}

void sub_100235D6C(id a1, AFExperimentGroupMutating *a2)
{
  v2 = a2;
  [(AFExperimentGroupMutating *)v2 setIdentifier:@"control"];
  [(AFExperimentGroupMutating *)v2 setAllocation:100];
  v4 = AFInvocationFeedbacksExperimentGroupPropertyKeyFeatureGroups;
  v5 = &off_100533C80;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [(AFExperimentGroupMutating *)v2 setProperties:v3];
}

void sub_100236028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100236040(void *a1)
{
  v5[0] = 0;
  if (!qword_100590620)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1002361C4;
    v5[4] = &unk_10051E200;
    v5[5] = v5;
    v6 = off_100517570;
    v7 = 0;
    qword_100590620 = _sl_dlopen();
  }

  v2 = qword_100590620;
  if (!qword_100590620)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *BulletinBoardLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"AFBulletin+SANotificationObject.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BBBulletinContentTypeIncomingCall");
  *(*(a1[4] + 8) + 24) = result;
  qword_100590618 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1002361C4()
{
  result = _sl_dlopen();
  qword_100590620 = result;
  return result;
}

void sub_100236B90(id a1)
{
  v1 = objc_alloc_init(AFAnalyticsConnection);
  v2 = qword_100590640;
  qword_100590640 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100236FD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002370D8;
  v7[3] = &unk_10051D278;
  v10 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100237078(uint64_t a1)
{
  v2 = sub_100005120(*(a1 + 40), *(a1 + 48), 0);
  [*(a1 + 32) _stageEvent:v2];
}

void sub_1002370D8(uint64_t a1)
{
  v2 = sub_100005120(*(a1 + 48), *(a1 + 56), *(a1 + 32));
  [*(a1 + 40) _stageEvent:v2];
}

void sub_10023726C(uint64_t a1)
{
  v2 = sub_100006F4C(*(a1 + 48), *(a1 + 56), *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100237390;
  v6[3] = &unk_10051D278;
  v9 = *(a1 + 48);
  v7 = v2;
  v8 = v3;
  v5 = v2;
  dispatch_async(v4, v6);
}

void sub_10023731C(uint64_t a1)
{
  v3 = sub_100006F4C(*(a1 + 48), *(a1 + 56), *(a1 + 40));
  v2 = sub_100005120(*(a1 + 48), *(a1 + 56), v3);
  [*(a1 + 32) _stageEvent:v2];
}

void sub_100237390(uint64_t a1)
{
  v2 = sub_100005120(*(a1 + 48), *(a1 + 56), *(a1 + 32));
  [*(a1 + 40) _stageEvent:v2];
  dispatch_group_leave(*(*(a1 + 40) + 16));
}

void sub_1002374D0(uint64_t a1)
{
  v2 = sub_100005120(*(a1 + 48), *(a1 + 56), *(a1 + 32));
  [*(a1 + 40) _stageEvent:v2];
}

uint64_t sub_100237714(uint64_t a1)
{
  v2 = AFSiriLogContextAnalytics;
  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = 136315394;
    v6 = "[AFAnalytics boostQueuedEvents:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Completed boosting event producer queue %@", &v5, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100237894(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 48));
  v2 = [*(a1 + 32) _service:1];
  [v2 logInstrumentationOfType:v3 machAbsoluteTime:*(a1 + 56) turnIdentifier:*(a1 + 40)];
}

void sub_1002379DC(uint64_t a1)
{
  v1 = [*(a1 + 32) _service:1];
  [v1 endEventsGrouping];
}

void sub_100237A98(uint64_t a1)
{
  v1 = [*(a1 + 32) _service:1];
  [v1 beginEventsGrouping];
}

void sub_100237DF4(uint64_t a1)
{
  v7 = objc_alloc_init(SISchemaClientEvent);
  v2 = [*(a1 + 32) turnID];
  v3 = objc_alloc_init(SISchemaClientEventMetadata);
  [v7 setEventMetadata:v3];

  v4 = [v7 eventMetadata];
  [v4 setTurnID:v2];

  [v7 setEventType:*(a1 + 40)];
  v5 = [*(a1 + 48) _service:1];
  v6 = [v7 data];
  [v5 stageUEIEventData:v6 timestamp:*(a1 + 56) completion:0];
}

void sub_100238568(id a1)
{
  v1 = [AFAnalytics alloc];
  v4 = +[AFInstanceContext currentContext];
  v2 = [(AFAnalytics *)v1 initWithInstanceContext:v4];
  v3 = qword_100590630;
  qword_100590630 = v2;
}

uint64_t sub_100238778(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100238E88(id a1)
{
  v1 = [ADLocationService alloc];
  v4 = +[ADCommandCenter sharedQueue];
  v2 = [(ADLocationService *)v1 initWithDispatchQueue:v4];
  v3 = qword_100590650;
  qword_100590650 = v2;
}

void sub_1002393EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = xpc_dictionary_get_BOOL(v3, AFExternalRequestReplyKeyResult);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  xpc_connection_cancel(*(a1 + 32));
}

void sub_100239830(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = xpc_dictionary_get_BOOL(v3, AFExternalRequestReplyKeyResult);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  xpc_connection_cancel(*(a1 + 32));
}

void sub_100239DF8(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_100239E1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = xpc_dictionary_get_BOOL(v3, AFExternalRequestReplyKeyResult);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  xpc_connection_cancel(*(a1 + 32));
}

void sub_10023A3EC(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

void sub_10023A410(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = xpc_dictionary_get_BOOL(v3, AFExternalRequestReplyKeyResult);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  xpc_connection_cancel(*(a1 + 32));
}

void sub_10023ADA8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10023AE38;
  v2[3] = &unk_1005176A0;
  v3 = *(a1 + 40);
  [v1 fetchAvailableAnnouncementRequestTypesWithCompletion:v2];
}

id sub_10023B16C(uint64_t a1, char a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  result = [*(a1 + 32) invoke];
  v4 = *(*(*(a1 + 48) + 8) + 24);
  if (v4 != *(a1 + 56))
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315138;
      v7 = "[AFSiriUserNotificationRequestCapabilityManager hasEligibleSetup]_block_invoke_2";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Eligible capabilities changed, notifying observers", &v6, 0xCu);
      LOBYTE(v4) = *(*(*(a1 + 48) + 8) + 24);
    }

    return [*(a1 + 40) notifyObserversOfCurrentEligibleSetupState:v4 & 1 onPlatform:{objc_msgSend(objc_opt_class(), "platform")}];
  }

  return result;
}

void sub_10023B324(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10023B3B4;
  v2[3] = &unk_1005176A0;
  v3 = *(a1 + 40);
  [v1 fetchEligibleAnnouncementRequestTypesWithCompletion:v2];
}

uint64_t sub_10023B7D4()
{
  v0 = [objc_alloc(objc_opt_class()) _initWithPlatform:1];
  v1 = qword_100590660;
  qword_100590660 = v0;

  return _objc_release_x1(v0, v1);
}

id sub_10023C0E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained peerLocationPolicySuggestsClearingCachedLocation:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 _cancelTimer];
}

void sub_10023C1F8(uint64_t a1)
{
  [*(a1 + 32) _cancelTimer];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained peerLocationPolicySuggestsClearingCachedLocation:*(a1 + 32)];
}

void sub_10023C8A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(SAUserState);
  [v7 setUserToken:v5];

  [v7 setSharedUserId:v6];
  [*(a1 + 32) addObject:v6];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
}

void sub_10023C94C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v9];
  v7 = v6;
  if (v6)
  {
    [v6 setUserTokenStatus:v5];
  }

  else
  {
    v8 = objc_alloc_init(SAUserState);
    [v8 setUserTokenStatus:v5];
    [v8 setSharedUserId:v9];
    [*(a1 + 40) addObject:v9];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

void sub_10023CA18(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  if (v5)
  {
    [v6 setSyncSharedUserId:v5];
  }

  [*(a1 + 40) addObject:v6];
}

void sub_10023D888(id a1)
{
  v1 = [[ADUserProfileService alloc] _init];
  v2 = qword_100590668;
  qword_100590668 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10023D8D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "ADFetchLanguageDetectorSupportedLocales_block_invoke";
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Fetched supported locales - %@", &v16, 0x16u);
  }

  if (v6 || ![v5 count])
  {
    if (AFIsInternalInstall() && [*(a1 + 32) shouldSimulateLanguageDetectorAssetsAvailability])
    {
      v8 = [*(a1 + 32) simulatingLanguageCodes];
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v16 = 136315394;
        v17 = "ADFetchLanguageDetectorSupportedLocales_block_invoke";
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Fetched supported locales (Simulated) - %@", &v16, 0x16u);
      }

      v10 = sub_10023DB00(v8);
      v11 = *(a1 + 40);
      if (v11)
      {
        (*(v11 + 16))(v11, v10, 0);
      }
    }

    else
    {
      if (v6)
      {
        v12 = @"Error fetching supported locales for language detection.";
      }

      else
      {
        v12 = @"Language detector returned 0 supported locales.";
      }

      v8 = [AFError errorWithCode:2801 description:v12 underlyingError:v6];
      v13 = *(a1 + 40);
      if (v13)
      {
        v14 = *(v13 + 16);
LABEL_19:
        v14();
      }
    }
  }

  else
  {
    v8 = sub_10023DB00(v5);
    v15 = *(a1 + 40);
    if (v15)
    {
      v14 = *(v15 + 16);
      goto LABEL_19;
    }
  }
}

id sub_10023DB00(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableSet);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = AFOverrideLanguageCode();
        if (v8)
        {
          [v2 addObject:{v8, v10}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_10023F4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  objc_destroyWeak((v29 + 40));
  _Unwind_Resume(a1);
}

uint64_t sub_10023F4DC(void *a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v7 = 136315394;
    v8 = "[ADCompanionRoutingPhoneService _hangUpHandler:completion:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s command timed out: %@", &v7, 0x16u);
  }

  v3 = a1[5];
  WeakRetained = objc_loadWeakRetained((*(a1[8] + 8) + 40));
  [v3 _removeTimer:WeakRetained];

  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[6], 0);
  }

  return result;
}

void sub_10023F5E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 56);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10023F6F0;
  v12[3] = &unk_1005183C8;
  v12[4] = v8;
  v13 = v7;
  v14 = v6;
  v15 = *(a1 + 48);
  v16 = v5;
  v17 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_10023F6F0(uint64_t a1)
{
  [*(a1 + 32) _removeTimer:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2 && ([v2 cancelIfNotAlreadyCanceled] & 1) == 0)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      v15 = 136315394;
      v16 = "[ADCompanionRoutingPhoneService _hangUpHandler:completion:]_block_invoke_2";
      v17 = 2112;
      v18 = v14;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s command timed out, ignoring error %@", &v15, 0x16u);
    }
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = [*(a1 + 64) objectForKey:@"response"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [SAGenericCommand aceObjectWithDictionary:v4];
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v15 = 136315394;
        v16 = "[ADCompanionRoutingPhoneService _hangUpHandler:completion:]_block_invoke";
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Received response: %@", &v15, 0x16u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v5;

        v3 = v10;
      }
    }

    else
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315138;
        v16 = "[ADCompanionRoutingPhoneService _hangUpHandler:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Received bad response", &v15, 0xCu);
      }
    }

    v12 = *(a1 + 72);
    if (v12)
    {
      (*(v12 + 16))(v12, v3, 0);
    }
  }
}

void sub_10023FCB8(uint64_t a1)
{
  v6 = [*(a1 + 32) encodedClassName];
  if ([v6 isEqualToString:SAPhoneAnswerClassIdentifier])
  {
    [*(a1 + 40) _answerHandler:*(a1 + 32) completion:*(a1 + 48)];
  }

  else if ([v6 isEqualToString:SAPhoneHangUpClassIdentifier])
  {
    [*(a1 + 40) _hangUpHandler:*(a1 + 32) completion:*(a1 + 48)];
  }

  else
  {
    v2 = [v6 isEqualToString:SAPhoneIncomingCallSearchClassIdentifier];
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    if (v2)
    {
      [v3 _incomingCallSearchHandler:v4 completion:v5];
    }

    else
    {
      [v3 _unhandledCommand:v4 completion:v5];
    }
  }
}

uint64_t sub_1002407C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1002414FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100241520(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        *buf = 136315650;
        v16 = "[ADAssetManager _subscribeToMorphunAssetStatusForLanguage:]_block_invoke";
        v17 = 2112;
        v18 = v5;
        v19 = 2112;
        v20 = v10;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Error getting Morphun asset status: %@ for language %@", buf, 0x20u);
      }
    }

    v8 = WeakRetained[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100241700;
    block[3] = &unk_100517810;
    objc_copyWeak(&v13, (a1 + 40));
    v14 = a2;
    v12 = *(a1 + 32);
    dispatch_async(v8, block);

    objc_destroyWeak(&v13);
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[ADAssetManager _subscribeToMorphunAssetStatusForLanguage:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s ADAssetManager is already deallocated, cannot update asset status", buf, 0xCu);
    }
  }
}

void sub_100241700(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (AFIsInternalInstall())
    {
      v3 = AFSiriLogContextDaemon;
      v4 = os_signpost_id_generate(AFSiriLogContextDaemon);
      if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = v4;
        if (os_signpost_enabled(v3))
        {
          LOWORD(v9) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, v5, "MorphunAssetCallback", &unk_100468A0D, &v9, 2u);
        }
      }
    }

    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      if (*(a1 + 48))
      {
        v8 = @"succeeded";
      }

      else
      {
        v8 = @"failed";
      }

      v9 = 136315650;
      v10 = "[ADAssetManager _subscribeToMorphunAssetStatusForLanguage:]_block_invoke";
      v11 = 2114;
      v12 = v8;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Morphun assets subscribe %{public}@ for %{public}@", &v9, 0x20u);
    }

    _AFPreferencesSiriXAssetsDidChange();
    [WeakRetained _checkAssetsStatusForIntervalRecording];
    [WeakRetained notifyObserversAssetAvailabilityChanged];
  }
}

void sub_1002421C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_signpost_id_generate(AFSiriLogContextDaemon);
    v3 = AFSiriLogContextDaemon;
    v4 = v3;
    if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "RegisterAssetASR", &unk_100468A0D, &v10, 2u);
    }

    if (!WeakRetained[9])
    {
      v5 = objc_alloc_init(SFEntitledAssetManager);
      v6 = WeakRetained[9];
      WeakRetained[9] = v5;
    }

    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[ADAssetManager _registerAssetStatusTrackers]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Registering ASR delegate", &v10, 0xCu);
    }

    [WeakRetained[9] registerAssetDelegate:WeakRetained assetType:3];
    v8 = AFSiriLogContextDaemon;
    v9 = v8;
    if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v2, "RegisterAssetASR", &unk_100468A0D, &v10, 2u);
    }
  }
}

void sub_10024237C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_signpost_id_generate(AFSiriLogContextDaemon);
    v3 = AFSiriLogContextDaemon;
    v4 = v3;
    if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "RegisterAssetAttention", &unk_100468A0D, &v10, 2u);
    }

    if (!WeakRetained[13])
    {
      v5 = objc_alloc_init(CSAttSiriAttentionAssetsStatusProvider);
      v6 = WeakRetained[13];
      WeakRetained[13] = v5;

      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        v11 = "[ADAssetManager _registerAssetStatusTrackers]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Registering Attention delegate", &v10, 0xCu);
      }

      [WeakRetained[13] setDelegate:WeakRetained];
    }

    v8 = AFSiriLogContextDaemon;
    v9 = v8;
    if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v2, "RegisterAssetAttention", &unk_100468A0D, &v10, 2u);
    }
  }
}

void sub_100242534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _registerCDMStatusTracker];
    WeakRetained = v2;
  }
}

void sub_100242578(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = os_signpost_id_generate(AFSiriLogContextDaemon);
    v3 = AFSiriLogContextDaemon;
    v4 = v3;
    if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "RegisterAssetMorphun", &unk_100468A0D, &v11, 2u);
    }

    if (!WeakRetained[15])
    {
      v5 = +[MorphunAssets get];
      v6 = WeakRetained[15];
      WeakRetained[15] = v5;
    }

    v7 = WeakRetained[1];
    if (v7)
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v11 = 136315138;
        v12 = "[ADAssetManager _registerAssetStatusTrackers]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Registering morphun delegate", &v11, 0xCu);
        v7 = WeakRetained[1];
      }

      [WeakRetained _subscribeToMorphunAssetStatusForLanguage:v7];
    }

    v9 = AFSiriLogContextDaemon;
    v10 = v9;
    if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v2, "RegisterAssetMorphun", &unk_100468A0D, &v11, 2u);
    }
  }
}

void sub_100242BB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (AFIsInternalInstall())
    {
      v2 = AFSiriLogContextDaemon;
      v3 = os_signpost_id_generate(AFSiriLogContextDaemon);
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v4 = v3;
        if (os_signpost_enabled(v2))
        {
          LOWORD(v6) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, v4, "NLAssetCallbackUnavailable", &unk_100468A0D, &v6, 2u);
        }
      }
    }

    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[ADAssetManager assetsUnavailableWithType:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s NL asset became unavailable for all locales", &v6, 0xCu);
    }

    [WeakRetained[10] removeAllObjects];
    _AFPreferencesSiriXAssetsDidChange();
    [WeakRetained notifyObserversAssetAvailabilityChanged];
  }
}

void sub_100242CF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (AFIsInternalInstall())
    {
      v2 = AFSiriLogContextDaemon;
      v3 = os_signpost_id_generate(AFSiriLogContextDaemon);
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v4 = v3;
        if (os_signpost_enabled(v2))
        {
          LOWORD(v6) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, v4, "NLRouterAssetCallbackUnavailable", &unk_100468A0D, &v6, 2u);
        }
      }
    }

    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[ADAssetManager assetsUnavailableWithType:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s NL router asset became unavailable for all locales", &v6, 0xCu);
    }

    [WeakRetained[11] removeAllObjects];
    _AFPreferencesSiriXAssetsDidChange();
    [WeakRetained notifyObserversAssetAvailabilityChanged];
  }
}

void sub_100243024(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) localeIdentifier];
    v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    if (AFIsInternalInstall())
    {
      v5 = AFSiriLogContextDaemon;
      v6 = os_signpost_id_generate(AFSiriLogContextDaemon);
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v5))
        {
          LOWORD(v9) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v7, "NLAssetCallbackAvailable", &unk_100468A0D, &v9, 2u);
        }
      }
    }

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[ADAssetManager assetsAvailableForLocale:withType:]_block_invoke";
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s NL asset became available for %{public}@", &v9, 0x16u);
    }

    [WeakRetained[10] setObject:&__kCFBooleanTrue forKeyedSubscript:v4];
    _AFPreferencesSiriXAssetsDidChange();
    [WeakRetained _checkAssetsStatusForIntervalRecording];
    [WeakRetained notifyObserversAssetAvailabilityChanged];
  }
}

void sub_1002431CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) localeIdentifier];
    v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    if (AFIsInternalInstall())
    {
      v5 = AFSiriLogContextDaemon;
      v6 = os_signpost_id_generate(AFSiriLogContextDaemon);
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v5))
        {
          LOWORD(v9) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v7, "NLRouterAssetCallbackAvailable", &unk_100468A0D, &v9, 2u);
        }
      }
    }

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[ADAssetManager assetsAvailableForLocale:withType:]_block_invoke";
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s NL router asset became available for %{public}@", &v9, 0x16u);
    }

    [WeakRetained[11] setObject:&__kCFBooleanTrue forKeyedSubscript:v4];
    _AFPreferencesSiriXAssetsDidChange();
    [WeakRetained notifyObserversAssetAvailabilityChanged];
  }
}

void sub_100243440(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (AFIsInternalInstall())
    {
      v3 = AFSiriLogContextDaemon;
      v4 = os_signpost_id_generate(AFSiriLogContextDaemon);
      if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = v4;
        if (os_signpost_enabled(v3))
        {
          LOWORD(v8) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, v5, "AttentionAssetCallback", &unk_100468A0D, &v8, 2u);
        }
      }
    }

    objc_storeStrong(WeakRetained + 12, *(a1 + 32));
    _AFPreferencesSiriXAssetsDidChange();
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[ADAssetManager attentionAssetStatus:]_block_invoke";
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Updating Attention asset status: %{public}@", &v8, 0x16u);
    }

    [WeakRetained _checkAssetsStatusForIntervalRecording];
    [WeakRetained notifyObserversAssetAvailabilityChanged];
  }
}

void sub_100243684(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (AFIsInternalInstall())
    {
      v3 = AFSiriLogContextDaemon;
      v4 = os_signpost_id_generate(AFSiriLogContextDaemon);
      if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = v4;
        if (os_signpost_enabled(v3))
        {
          LOWORD(v10) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, v5, "ASRAssetCallback", &unk_100468A0D, &v10, 2u);
        }
      }
    }

    objc_storeStrong(WeakRetained + 7, *(a1 + 32));
    if (AFIsNano() && AFDeviceSupportsFullSiriUOD())
    {
      v6 = [SFEntitledAssetManager modelTasksForLocaleWithInstallationStatus:*(a1 + 32)];
      v7 = WeakRetained[8];
      WeakRetained[8] = v6;
    }

    _AFPreferencesSiriXAssetsDidChange();
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 136315394;
      v11 = "[ADAssetManager assetStatus:]_block_invoke";
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Updating speech asset status: %{public}@", &v10, 0x16u);
    }

    [WeakRetained _checkAssetsStatusForIntervalRecording];
    [WeakRetained notifyObserversAssetAvailabilityChanged];
  }
}

void sub_10024391C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7) assetManager:WeakRetained didChangeLanguageCode:{*(a1 + 40), v8}];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

void sub_100243B0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7) assetManagerDidChangeAssetAvailability:{WeakRetained, v8}];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

void sub_100243CE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[17] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

uint64_t sub_100243E04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [WeakRetained[17] containsObject:*(a1 + 32)];
    v3 = v5;
    if ((WeakRetained & 1) == 0)
    {
      [v5[17] addObject:*(a1 + 32)];
      WeakRetained = [*(a1 + 32) assetManagerDidChangeAssetAvailability:v5];
      v3 = v5;
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

void sub_100243FE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _registerCDMStatusTracker];
    [v3 _subscribeToMorphunAssetStatusForLanguage:*(a1 + 32)];
    objc_storeStrong(v3 + 1, *(a1 + 32));
    v4 = *(v3 + 2);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002440B4;
    block[3] = &unk_10051B5F0;
    objc_copyWeak(&v6, (a1 + 40));
    dispatch_async(v4, block);
    objc_destroyWeak(&v6);
  }
}

void sub_1002440B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _recordAssetsNeededForLanguage:WeakRetained[1] resetPrevious:1];
    [v2 notifyObserversLanguageCodeChanged:v2[1]];
    WeakRetained = v2;
  }
}

void sub_100244468(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained _fetchAssetStatusForLanguage:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();

    WeakRetained = v4;
  }
}

void sub_1002446F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100244718(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100244730(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchAssetStatusForLanguage:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100244A34(id a1)
{
  v1 = objc_alloc_init(ADAssetManager);
  v2 = qword_100590678;
  qword_100590678 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100245008(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setEffectiveDate:v3];
  [v4 setExpirationDuration:*(a1 + 40)];
}

void sub_100245A54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100245A70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _continueSync];
}

void sub_100246308(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100246438;
  block[3] = &unk_100517EA8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v17 = v11;
  v18 = v12;
  v23 = v9;
  v19 = *(a1 + 48);
  v20 = v8;
  v21 = *(a1 + 56);
  v22 = v7;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  dispatch_async(v10, block);
}

uint64_t (**sub_100246438(void *a1))(id, void)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v2 + 72);
  if (v3 != v4)
  {
    v5 = AFSiriLogContextSync;
    if (!os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v14 = 136315650;
    v15 = "[ADSyncManager _continueSync]_block_invoke_2";
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    v6 = "%s Ignoring sync chunk for service %@ that's not our current service %@";
    goto LABEL_11;
  }

  if (([*(v2 + 96) isEqual:a1[6]] & 1) == 0)
  {
    v5 = AFSiriLogContextSync;
    if (!os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v10 = a1[6];
    v11 = *(a1[5] + 96);
    v14 = 136315650;
    v15 = "[ADSyncManager _continueSync]_block_invoke";
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v6 = "%s Ignoring sync chunk for ID %@ that's not our current ID %@";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, &v14, 0x20u);
LABEL_12:
    result = a1[10];
    if (result)
    {
      return result[2](result, 0);
    }

    return result;
  }

  v8 = a1[4];
  v7 = a1[5];
  if (a1[10])
  {
    v9 = a1[8];

    return [v7 _syncingService:v8 withSyncInfo:v9 receivedChunk:? continueBlock:?];
  }

  else
  {
    v12 = a1[7];

    return [v7 _syncFinishedForService:v8 error:v12];
  }
}

void sub_100247050(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADSyncManager initWithServiceManager:queue:]_block_invoke";
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

void sub_1002488AC(uint64_t a1)
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v15 = 136315394;
    v16 = "[ADSession assistantDataManager:didUpdateAssistantData:]_block_invoke";
    v17 = 1024;
    v18 = [v3 sessionType];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Got updated assistant data for session %d!", &v15, 0x12u);
  }

  v5 = [*(a1 + 32) _waitingForAssistantData];
  objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
  v6 = *(a1 + 32);
  if (v6[10] >= 8)
  {
    if (v6[14])
    {
      [v6 _sendAssistantDataChangedSinceAnchor:0 refId:?];
      v7 = *(a1 + 32);
      v8 = *(v7 + 112);
      *(v7 + 112) = 0;
    }

    else
    {
      if (![v6 _shouldSendAssistantData])
      {
        goto LABEL_12;
      }

      v9 = *(a1 + 32);
      v10 = *(v9 + 40);
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = [*(v9 + 16) lastAssistantDataAnchor];
      }

      v8 = v11;
      [*(a1 + 32) _sendAssistantDataChangedSinceAnchor:v11 refId:0];
    }

LABEL_12:
    if (v5)
    {
      v12 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        v15 = 136315138;
        v16 = "[ADSession assistantDataManager:didUpdateAssistantData:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Sending pending commands after SAD update", &v15, 0xCu);
      }

      [*(a1 + 32) _sendPendingCommands];
      v13 = *(a1 + 32);
      if (v13[10] == 11)
      {
        v14 = AFSiriLogContextSession;
        if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
        {
          v15 = 136315138;
          v16 = "[ADSession assistantDataManager:didUpdateAssistantData:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Session is active, clearing limbo now.", &v15, 0xCu);
          v13 = *(a1 + 32);
        }

        [v13 _clearLimbo];
      }
    }
  }
}

void sub_10024A488(id a1)
{
  v1 = objc_alloc_init(ADDictationOnDeviceSampling);
  v2 = qword_100590688;
  qword_100590688 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10024AB14(void *a1)
{
  v1 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = SAAlarmDayOfWeekForString();
        if (v7 <= 4)
        {
          switch(v7)
          {
            case 2:
              v4 |= 0x40uLL;
              break;
            case 3:
              v4 |= 1uLL;
              break;
            case 4:
              v4 |= 2uLL;
              break;
          }
        }

        else if (v7 > 6)
        {
          if (v7 == 7)
          {
            v4 |= 0x10uLL;
          }

          else if (v7 == 8)
          {
            v4 |= 0x20uLL;
          }
        }

        else if (v7 == 5)
        {
          v4 |= 4uLL;
        }

        else
        {
          v4 |= 8uLL;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10024AE44(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = +[NSCharacterSet URLPathAllowedCharacterSet];
    v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];

    v4 = [@"siri-alarm-internal:" stringByAppendingString:v3];
    v5 = [[NSURL alloc] initWithString:v4];
    if (!v5)
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "AFAlarmURLForAlarmIdentifier";
        v10 = 2112;
        v11 = v1;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed constructing URL identifier for %@", &v8, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10024B22C(void *a1)
{
  v1 = [a1 absoluteString];
  if ([v1 hasPrefix:@"siri-alarm-internal:"])
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(@"siri-alarm-internal:", "length")}];
    v3 = [v2 stringByRemovingPercentEncoding];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10024B2BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10024B364;
  v6[3] = &unk_100517970;
  v6[4] = v4;
  v5 = *(a1 + 48);
  v6[5] = *(a1 + 40);
  v7 = v5;
  [a2 fetchAlarmsWithIdentifiers:v4 completionHandler:v6];
}

void sub_10024B364(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v26 = v6;
    v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v14 = a1[5];
          v15 = [v13 identifier];
          v16 = [v14 objectForKey:v15];

          v17 = [v13 copy];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v18 = v16;
          v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v30;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v30 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                [v17 _ad_updateWithModification:*(*(&v29 + 1) + 8 * j)];
              }

              v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v20);
          }

          [v8 addObject:v17];
        }

        v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v10);
    }

    v23 = objc_alloc_init(AFUpdateAlarmRequest);
    [v23 setAlarms:v8];
    (*(a1[6] + 16))();

    v7 = v26;
    v5 = v27;
  }

  else
  {
    v24 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v25 = a1[4];
      *buf = 136315650;
      v40 = "[SAAlarmUpdate(ADAlarmTransformer) _ad_getAlarmRequestRepresentationWithCompletionHandler:]_block_invoke_2";
      v41 = 2112;
      v42 = v25;
      v43 = 2114;
      v44 = v7;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Unable to fetch alarms with identifiers %@: %{public}@", buf, 0x20u);
    }

    (*(a1[6] + 16))();
  }
}

id sub_10024B83C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:SAAlarmDayOfWeekMondayValue];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:SAAlarmDayOfWeekTuesdayValue];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 addObject:SAAlarmDayOfWeekWednesdayValue];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:SAAlarmDayOfWeekThursdayValue];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    [v3 addObject:SAAlarmDayOfWeekSaturdayValue];
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v4 = &SAAlarmDayOfWeekSundayValue;
    goto LABEL_17;
  }

LABEL_14:
  [v3 addObject:SAAlarmDayOfWeekFridayValue];
  if ((a1 & 0x20) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((a1 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (a1)
  {
    goto LABEL_18;
  }

  v4 = &SAAlarmDayOfWeekNeverValue;
LABEL_17:
  [v3 addObject:*v4];
LABEL_18:

  return v3;
}

void sub_10024C660(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _ad_internalAlarmIdentifiers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024C720;
  v7[3] = &unk_10051DDC0;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 fetchAlarmsWithIdentifiers:v5 completionHandler:v7];
}

void sub_10024C720(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(AFShowAlarmRequest);
    [v7 setAlarms:v5];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 _ad_internalAlarmIdentifiers];
      v12 = 136315650;
      v13 = "[SAAlarmAlarmShow(ADAlarmTransformer) _ad_getAlarmRequestRepresentationWithCompletionHandler:]_block_invoke_2";
      v14 = 2112;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unable to fetch alarms with identifiers %@: %{public}@", &v12, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10024CAFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56) != 7;
  v4 = a2;
  [v4 setIsEnabled:v3];
  [v4 setPrimaryInEarStatus:*(a1 + 32)];
  [v4 setSecondaryInEarStatus:*(a1 + 40)];
  [v4 setPrimaryEarbudSide:*(a1 + 48)];
}

void sub_10024CD9C(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothDevice:a1[4] deviceInfoDidChangeFrom:a1[5] to:a1[6]];
  }
}

id sub_10024CE5C(void *a1)
{
  v1 = a1;
  v2 = [v1 coreBluetoothDevice];
  v3 = v2;
  if (!v2)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v4 = [v2 vendorID];
  v5 = [v3 productID];
  v6 = [CBProductInfo productInfoWithProductID:v5];
  v7 = v5 - 10;
  v20 = v6;
  v19 = v4;
  if ((v5 - 8202) > 0x25)
  {
    goto LABEL_13;
  }

  v8 = 1;
  if (((1 << v7) & 0x200020033FLL) == 0)
  {
    if (((1 << v7) & 0x645A8400) != 0)
    {
LABEL_5:
      v8 |= ((v5 - 8210) < 0x14) & (0x300261u >> (v5 - 17));
      goto LABEL_6;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_5;
  }

LABEL_6:
  v18 = ([v3 deviceFlags] >> 26) & 1;
  v9 = ([v3 deviceFlags] >> 27) & 1;
  v10 = [v3 autoAncCapability] == 1;
  v11 = [v1 personalTranslatorCapability] != 0;
  v12 = sub_10024D178(v1);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10024D3B8;
  v21[3] = &unk_100517B08;
  v22 = v3;
  v27 = ((v5 - 8194) < 0x2E) & (0x207C7BB7FF9BuLL >> (v5 - 2));
  v25 = v19;
  v26 = v5;
  v13 = v20;
  v23 = v13;
  v28 = v8;
  v29 = ((v5 - 8212) < 0x15) & (0x1916A1u >> (v5 - 20));
  v30 = v18;
  v31 = v9;
  v32 = v10;
  v14 = v12;
  v24 = v14;
  v33 = v11;
  v15 = [AFBluetoothDeviceInfo newWithBuilder:v21];
  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v35 = "_ADCBV2BluetoothDeviceGetDeviceInfo";
    v36 = 2112;
    v37 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s deviceInfo: %@", buf, 0x16u);
  }

LABEL_10:

  return v15;
}

id sub_10024D178(void *a1)
{
  v1 = a1;
  v2 = [v1 bobbleCapability];
  v3 = [v1 headGestureToggle];
  v4 = [v1 acceptReplyPlayPauseConfig];
  v5 = [v1 declineDismissSkipConfig];

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    if (v2 > 2)
    {
      v7 = "?";
    }

    else
    {
      v7 = (&off_100517B28)[v2];
    }

    if (v3 > 2)
    {
      v8 = "?";
    }

    else
    {
      v8 = (&off_100517B40)[v3];
    }

    if (v4 - 1 > 2)
    {
      v9 = "?";
    }

    else
    {
      v9 = (&off_100517B58)[(v4 - 1)];
    }

    if (v5 - 1 > 2)
    {
      v10 = "?";
    }

    else
    {
      v10 = (&off_100517B58)[(v5 - 1)];
    }

    *buf = 136316162;
    v22 = "ADHeadGestureConfigurationForAA";
    v23 = 2080;
    v24 = v7;
    v25 = 2080;
    v26 = v8;
    v27 = 2080;
    v28 = v9;
    v29 = 2080;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s [AAD States] bobbleCapability: %s, headGestureToggle: %s, acceptReplyPlayPauseConfig: %s, declineDismissSkipConfig: %s", buf, 0x34u);
  }

  v11 = vceq_s32(__PAIR64__(v5, v4), 0x200000002);
  v12.i64[0] = v11.i32[0];
  v12.i64[1] = v11.i32[1];
  v13 = v12;
  v14 = vceq_s32(__PAIR64__(v5, v4), 0x100000001);
  v12.i64[0] = v14.i32[0];
  v12.i64[1] = v14.i32[1];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10024D564;
  v17[3] = &unk_100517AC8;
  v19 = v2;
  v20 = v3;
  v18 = vsubw_s32(vandq_s8(vbicq_s8(v13, v12), vdupq_n_s64(2uLL)), v14);
  v15 = [AFBluetoothHeadGestureConfiguration newWithBuilder:v17];

  return v15;
}

void sub_10024D3B8(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [NSUUID alloc];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 initWithUUIDString:v4];
  [v8 setDeviceUID:v5];

  v6 = [*(a1 + 32) name];
  [v8 setName:v6];

  [v8 setIsAdvancedAppleAudioDevice:*(a1 + 64)];
  [v8 setVendorID:*(a1 + 56)];
  [v8 setProductID:*(a1 + 60)];
  [v8 setIsAdvancedAppleAudioDevice:*(a1 + 64)];
  [v8 setSupportsInEarDetection:{(objc_msgSend(*(a1 + 40), "flags") >> 8) & 1}];
  [v8 setSupportsVoiceTrigger:*(a1 + 65)];
  [v8 setSupportsJustSiri:*(a1 + 66)];
  [v8 setSupportsListeningModeANC:*(a1 + 67)];
  [v8 setSupportsListeningModeTransparency:*(a1 + 68)];
  [v8 setSupportsListeningModeAutomatic:*(a1 + 69)];
  [v8 setSupportsConversationAwareness:{objc_msgSend(*(a1 + 32), "conversationDetectCapability") == 1}];
  [v8 setSupportsPersonalVolume:{objc_msgSend(*(a1 + 32), "adaptiveVolumeCapability") == 1}];
  [v8 setSupportsSpokenNotification:*(a1 + 65)];
  if (*(a1 + 65) == 1)
  {
    v7 = ([*(a1 + 40) flags] >> 8) & 1;
  }

  else
  {
    v7 = 0;
  }

  [v8 setSupportsAnnounceCall:v7];
  [v8 setHeadGestureConfiguration:*(a1 + 48)];
  [v8 setSupportsLiveTranslationCapability:*(a1 + 70)];
}

void sub_10024D564(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48) == 2;
  v4 = a2;
  [v4 setIsSupported:v3];
  [v4 setIsEnabled:*(a1 + 49) == 1];
  [v4 setAcceptGesture:*(a1 + 32)];
  [v4 setRejectGesture:*(a1 + 40)];
}

void sub_10024D9E0(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 isEqualToString:*(*(a1 + 40) + 64)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) bluetoothAddress];
    v5 = [v4 isEqualToString:*(*(a1 + 40) + 56)];

    if (!v5)
    {
      return;
    }

    v6 = [*(a1 + 32) identifier];
    v7 = *(a1 + 40);
    v8 = *(v7 + 64);
    *(v7 + 64) = v6;
  }

  v9 = [*(a1 + 32) bluetoothAddress];
  v10 = *(a1 + 40);
  v11 = *(v10 + 56);
  *(v10 + 56) = v9;

  _objc_release_x1(v9, v11);
}

void sub_10024DAAC(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothDevice:a1[4] headphoneInEarDetectionStateDidChangeFrom:a1[5] to:a1[6]];
  }
}

void sub_10024DB10(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothDevice:a1[4] headphoneListeningModeDidChangeFrom:a1[5] to:a1[6]];
  }
}

uint64_t sub_10024DCC0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _headphoneListeningModeFromDevice:*(*(a1 + 32) + 48)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_10024DDB0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _inEarDetectionStateFromCBDevice:*(*(a1 + 32) + 48)];
  (*(v1 + 16))(v1, v2);
}

void sub_10024DEC0(uint64_t a1)
{
  v2 = objc_alloc_init(off_10058D3D0());
  v3 = v2;
  if (*(a1 + 48))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [v2 setHeadGestureToggle:v4];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = *(*(a1 + 32) + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024DFAC;
  v7[3] = &unk_100517A10;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [WeakRetained sendDeviceConfig:v3 device:v6 completion:v7];
}

void sub_10024DFAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AFBluetoothDeviceBooleanSettingResponse alloc];
  if (v3)
  {
    v5 = 0;
    v6 = 2;
  }

  else
  {
    if (*(a1 + 40))
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = 1;
  }

  v7 = [v4 initWithValue:v5 status:v6];
  (*(*(a1 + 32) + 16))();
  v8 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADCoreBluetoothV2Device setHeadGestures:completion:]_block_invoke_2";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Set head gestures response %@", &v9, 0x16u);
  }
}

Class sub_10024E0C8()
{
  v4[0] = 0;
  if (!qword_1005906A0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10024E240;
    v4[4] = &unk_10051E200;
    v4[5] = v4;
    v5 = off_100517AE8;
    v6 = 0;
    qword_1005906A0 = _sl_dlopen();
  }

  if (!qword_1005906A0)
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *AudioAccessoryServicesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"ADCoreBluetoothV2Device.m" lineNumber:14 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  result = objc_getClass("AADeviceConfig");
  qword_100590698 = result;
  off_10058D3D0 = sub_10024E2B4;
  return result;
}

uint64_t sub_10024E240()
{
  result = _sl_dlopen();
  qword_1005906A0 = result;
  return result;
}

void sub_10024E368(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[ADCoreBluetoothV2Device getHeadGestures:]_block_invoke";
      v12 = 2048;
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s AADevice is unavailable to get head gestures state %p", &v10, 0x16u);
      v2 = *(*(a1 + 32) + 48);
    }

    else
    {
      v2 = 0;
    }
  }

  if ([v2 bobbleCapability] == 2)
  {
    v4 = [*(*(a1 + 32) + 48) headGestureToggle];
    if (v4 == 1)
    {
      v5 = 1;
      v6 = 2;
    }

    else if (v4 == 2)
    {
      v5 = 1;
      v6 = 1;
    }

    else
    {
      v7 = AFSiriLogContextLocation;
      v5 = 1;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        v11 = "[ADCoreBluetoothV2Device getHeadGestures:]_block_invoke";
        v5 = 1;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Head gestures state is unknown", &v10, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 3;
  }

  v8 = [[AFBluetoothDeviceBooleanSettingResponse alloc] initWithValue:v6 status:v5];
  v9 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[ADCoreBluetoothV2Device getHeadGestures:]_block_invoke";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Get head gestures response %@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10024E630(uint64_t a1)
{
  v2 = objc_alloc_init(off_10058D3D0());
  v3 = v2;
  if (*(a1 + 48))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [v2 setAdaptiveVolumeConfig:v4];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = *(*(a1 + 32) + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024E71C;
  v7[3] = &unk_100517A10;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [WeakRetained sendDeviceConfig:v3 device:v6 completion:v7];
}

void sub_10024E71C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AFBluetoothDeviceBooleanSettingResponse alloc];
  if (v3)
  {
    v5 = 0;
    v6 = 2;
  }

  else
  {
    if (*(a1 + 40))
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = 1;
  }

  v7 = [v4 initWithValue:v5 status:v6];
  (*(*(a1 + 32) + 16))();
  v8 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADCoreBluetoothV2Device setPersonalVolume:completion:]_block_invoke_2";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Set personal volume response %@", &v9, 0x16u);
  }
}

void sub_10024E8E0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) coreBluetoothDevice];

  if (!v2)
  {
    v3 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 48);
      v5 = v3;
      v6 = [v4 coreBluetoothDevice];
      v16 = 136315650;
      v17 = "[ADCoreBluetoothV2Device getPersonalVolume:]_block_invoke";
      v18 = 2048;
      v19 = v4;
      v20 = 2048;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s CBDevice is unavailable to get personal volume state %p %p", &v16, 0x20u);
    }
  }

  v7 = [*(*(a1 + 32) + 48) coreBluetoothDevice];
  v8 = [v7 adaptiveVolumeCapability];

  if (v8 == 1)
  {
    v9 = [*(*(a1 + 32) + 48) coreBluetoothDevice];
    v10 = [v9 adaptiveVolumeConfig];

    if (v10 == 1)
    {
      v11 = 2;
      v12 = 1;
    }

    else
    {
      v13 = AFSiriLogContextLocation;
      v12 = 1;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        v16 = 136315138;
        v17 = "[ADCoreBluetoothV2Device getPersonalVolume:]_block_invoke";
        v12 = 1;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Personal volume state is unknown", &v16, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 3;
  }

  v14 = [[AFBluetoothDeviceBooleanSettingResponse alloc] initWithValue:v11 status:v12];
  v15 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[ADCoreBluetoothV2Device getPersonalVolume:]_block_invoke";
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Get personal volume response %@", &v16, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10024EBF8(uint64_t a1)
{
  v2 = objc_alloc_init(off_10058D3D0());
  v3 = v2;
  if (*(a1 + 48))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [v2 setConversationDetectConfig:v4];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = *(*(a1 + 32) + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024ECE4;
  v7[3] = &unk_100517A10;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [WeakRetained sendDeviceConfig:v3 device:v6 completion:v7];
}

void sub_10024ECE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AFBluetoothDeviceBooleanSettingResponse alloc];
  if (v3)
  {
    v5 = 0;
    v6 = 2;
  }

  else
  {
    if (*(a1 + 40))
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = 1;
  }

  v7 = [v4 initWithValue:v5 status:v6];
  (*(*(a1 + 32) + 16))();
  v8 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADCoreBluetoothV2Device setConversationAwareness:completion:]_block_invoke_2";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Set conversation awareness response %@", &v9, 0x16u);
  }
}

void sub_10024EEA8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) coreBluetoothDevice];

  if (!v2)
  {
    v3 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 48);
      v5 = v3;
      v6 = [v4 coreBluetoothDevice];
      v16 = 136315650;
      v17 = "[ADCoreBluetoothV2Device getConversationAwareness:]_block_invoke";
      v18 = 2048;
      v19 = v4;
      v20 = 2048;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s CBDevice is unavailable to get conversation awareness state %p %p", &v16, 0x20u);
    }
  }

  v7 = [*(*(a1 + 32) + 48) coreBluetoothDevice];
  v8 = [v7 conversationDetectCapability];

  if (v8 == 1)
  {
    v9 = [*(*(a1 + 32) + 48) coreBluetoothDevice];
    v10 = [v9 conversationDetectConfig];

    if (v10 == 1)
    {
      v11 = 2;
      v12 = 1;
    }

    else
    {
      v13 = AFSiriLogContextLocation;
      v12 = 1;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        v16 = 136315138;
        v17 = "[ADCoreBluetoothV2Device getConversationAwareness:]_block_invoke";
        v12 = 1;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Conversation awareness state is unknown", &v16, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 3;
  }

  v14 = [[AFBluetoothDeviceBooleanSettingResponse alloc] initWithValue:v11 status:v12];
  v15 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[ADCoreBluetoothV2Device getConversationAwareness:]_block_invoke";
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Get conversation awareness response %@", &v16, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10024F1C0(uint64_t a1)
{
  v2 = objc_alloc_init(off_10058D3D0());
  v3 = v2;
  if ((*(a1 + 48) - 2) < 4)
  {
    v4 = (*(a1 + 48) - 1);
  }

  else
  {
    v4 = 0;
  }

  [v2 setListeningMode:v4];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = *(*(a1 + 32) + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024F2A4;
  v7[3] = &unk_10051D2F0;
  v8 = *(a1 + 40);
  [WeakRetained sendDeviceConfig:v3 device:v6 completion:v7];
}

void sub_10024F35C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) cbuuid];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_10024F3B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10024F478(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _deviceInfo];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_10024F5C4(uint64_t a1)
{
  v2 = [*(a1 + 32) _deviceInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10024F6B8(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 16) count])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

    v3 = *(a1 + 32);
    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(v3 + 1);
      v4 = [*(a1 + 32) address];
      v5 = [*(a1 + 32) cbuuid];
      [v6 invalidateDeviceWithAddress:v4 cbuuid:v5];
    }

    else
    {

      [v3 _invalidate];
    }
  }
}

id sub_10024F848(uint64_t a1)
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

void sub_10024F938(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothDeviceDidInvalidate:*(a1 + 32)];
  }
}

void sub_10024FCC4(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 64);

  objc_storeStrong(v3, v2);
}

void sub_10024FD0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained address];

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v5 = [WeakRetained address];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10024FEC4;
    v14[3] = &unk_1005179C0;
    v15 = *(a1 + 32);
    v16 = WeakRetained;
    [v4 fetchAudioAccessoryDeviceForBTAddress:v5 completion:v14];

    v6 = v15;
  }

  else
  {
    v7 = [WeakRetained cbuuid];

    v8 = *(a1 + 32);
    if (!v7)
    {
      dispatch_group_leave(*(v8 + 40));
      goto LABEL_6;
    }

    v9 = objc_loadWeakRetained((v8 + 8));
    v10 = [WeakRetained cbuuid];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10024FF98;
    v11[3] = &unk_1005179C0;
    v12 = *(a1 + 32);
    v13 = WeakRetained;
    [v9 fetchAudioAccessoryDeviceForCBUUID:v10 completion:v11];

    v6 = v12;
  }

LABEL_6:
}

void sub_10024FEC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = v4[4];
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1002500F4;
    v10 = &unk_10051E010;
    v11 = v4;
    v6 = v3;
    v12 = v6;
    dispatch_async(v5, &v7);
    [*(a1 + 40) updateDevice:{v6, v7, v8, v9, v10}];
  }

  dispatch_group_leave(*(*(a1 + 32) + 40));
}

void sub_10024FF98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100250074;
    block[3] = &unk_10051DB68;
    v7 = v3;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    dispatch_async(v5, block);
  }

  dispatch_group_leave(*(*(a1 + 32) + 40));
}

id sub_100250074(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = [result bluetoothAddress];
    v4 = *(a1 + 40);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v6 = [*(a1 + 32) identifier];
    v7 = *(a1 + 40);
    v8 = *(v7 + 64);
    *(v7 + 64) = v6;

    v9 = *(a1 + 48);
    v10 = *(a1 + 32);

    return [v9 updateDevice:v10];
  }

  return result;
}

uint64_t sub_1002500F4(uint64_t a1)
{
  v2 = [*(a1 + 40) identifier];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100250268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100250290(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "[ADCallNotificationObserver _resetCallNotificationTimer]_block_invoke";
    v6 = 2050;
    v7 = 0x403E000000000000;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Call notification ringtone timed out after %{public}.2f seconds", &v4, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeRingtoneTimeout];
}

void sub_10025087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1002508A8(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_1005906C0)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100250DC4;
    v6[4] = &unk_10051E200;
    v6[5] = v6;
    v7 = off_100517B88;
    v8 = 0;
    qword_1005906C0 = _sl_dlopen();
  }

  if (!qword_1005906C0)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *CoreServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ADCallNotificationObserver.m" lineNumber:28 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("LSApplicationRecord");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getLSApplicationRecordClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ADCallNotificationObserver.m" lineNumber:29 description:{@"Unable to find class %s", "LSApplicationRecord"}];

LABEL_10:
    __break(1u);
  }

  qword_1005906B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100250A94(uint64_t a1)
{
  sub_100250BAC();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("INAppInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1005906C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getINAppInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ADCallNotificationObserver.m" lineNumber:37 description:{@"Unable to find class %s", "INAppInfo"}];

    __break(1u);
  }
}

void *sub_100250B5C(uint64_t a1)
{
  v2 = sub_100250BAC();
  result = dlsym(v2, "INAnswerCallIntentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005906D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100250BAC()
{
  v4[0] = 0;
  if (!qword_1005906D0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100250D50;
    v4[4] = &unk_10051E200;
    v4[5] = v4;
    v5 = off_100517BA0;
    v6 = 0;
    qword_1005906D0 = _sl_dlopen();
  }

  v0 = qword_1005906D0;
  if (!qword_1005906D0)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *IntentsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"ADCallNotificationObserver.m" lineNumber:36 description:{@"%s", v4[0]}];

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

void *sub_100250D00(uint64_t a1)
{
  v2 = sub_100250BAC();
  result = dlsym(v2, "INHangUpCallIntentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005906E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100250D50()
{
  result = _sl_dlopen();
  qword_1005906D0 = result;
  return result;
}

uint64_t sub_100250DC4()
{
  result = _sl_dlopen();
  qword_1005906C0 = result;
  return result;
}

void sub_100250ED0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) bulletinID];
  LODWORD(v2) = [v2 containsObject:v3];

  if (v2)
  {
    v4 = *(*(a1 + 32) + 16);
    v5 = [*(a1 + 40) bulletinID];
    [v4 removeObject:v5];

    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      v8 = 136315394;
      v9 = "[ADCallNotificationObserver notificationManager:didRemoveBulletin:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Incoming call notification removed: %@", &v8, 0x16u);
    }

    if (![*(*(a1 + 32) + 16) count])
    {
      [*(a1 + 32) _cancelCallNotificationTimer];
    }
  }
}

void sub_100251098(uint64_t a1)
{
  v2 = [*(a1 + 32) bbBulletin];
  v3 = [v2 contentType];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v4 = qword_1005906A8;
  v22 = qword_1005906A8;
  if (!qword_1005906A8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1002513BC;
    v24 = &unk_10051E1C8;
    v25 = &v19;
    sub_1002513BC(buf);
    v4 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v4)
  {
    v17 = +[NSAssertionHandler currentHandler];
    v18 = [NSString stringWithUTF8String:"NSString *getBBBulletinContentTypeIncomingCall(void)"];
    [v17 handleFailureInFunction:v18 file:@"ADCallNotificationObserver.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }

  if ([v3 isEqualToString:*v4])
  {
    v5 = [v2 sound];
    v6 = [v5 alertType] == 1;

    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = [v2 sectionID];
      LODWORD(v7) = [v7 _answerAndHangUpIntentsSupportedByBundleID:v8];

      if (v7)
      {
        v9 = *(*(a1 + 40) + 16);
        v10 = [*(a1 + 32) bulletinID];
        [v9 addObject:v10];

        v11 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(a1 + 32);
          *buf = 136315394;
          *&buf[4] = "[ADCallNotificationObserver notificationManager:didAddBulletin:]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v16;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Incoming call notification added: %@", buf, 0x16u);
        }

        [*(a1 + 40) _resetCallNotificationTimer];
      }

      else
      {
        v12 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(a1 + 32);
          v14 = v12;
          v15 = [v13 sectionID];
          *buf = 136315394;
          *&buf[4] = "[ADCallNotificationObserver notificationManager:didAddBulletin:]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v15;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s Incoming call notification ignored by ADCallNotificationObserver because %@ does not support INAnswerCall or INHangUpCall intents", buf, 0x16u);
        }
      }
    }
  }

  else
  {
  }
}

void sub_10025139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1002513BC(void *a1)
{
  v5[0] = 0;
  if (!qword_1005906B0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100251540;
    v5[4] = &unk_10051E200;
    v5[5] = v5;
    v6 = off_100517B70;
    v7 = 0;
    qword_1005906B0 = _sl_dlopen();
  }

  v2 = qword_1005906B0;
  if (!qword_1005906B0)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *BulletinBoardLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"ADCallNotificationObserver.m" lineNumber:21 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BBBulletinContentTypeIncomingCall");
  *(*(a1[4] + 8) + 24) = result;
  qword_1005906A8 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_100251540()
{
  result = _sl_dlopen();
  qword_1005906B0 = result;
  return result;
}

id sub_10025176C()
{
  if (qword_1005906F0 != -1)
  {
    dispatch_once(&qword_1005906F0, &stru_100517BD8);
  }

  v1 = qword_1005906E8;

  return v1;
}

void sub_1002517C0(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[ADManagedStorageConnection resetKnowledgeStoreWithName:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }

  v4 = [*(a1 + 40) _defaultStoreSpecificKeyPrefixForName:*(a1 + 32)];
  v5 = [[CKGenericCondition alloc] initWithMatchType:0 value:v4 negated:0];
  v6 = [*(a1 + 40) _storeWithName:*(a1 + 32)];
  [v6 removeValuesMatching:v5 completionHandler:&stru_100517BB8];

  [*(*(a1 + 40) + 8) removeObjectForKey:*(a1 + 32)];
}

void sub_1002518FC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[ADManagedStorageConnection resetKnowledgeStoreWithName:completion:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s %@", &v4, 0x16u);
    }
  }
}

void sub_1002519C4(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("_ADGlobalKnowledgeStoreQueue_block_invoke", v1);

  v3 = qword_1005906E8;
  qword_1005906E8 = v2;
}

void sub_100251B24(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _defaultStoreSpecificKeyForName:*(a1 + 48) key:?];
    v3 = [*(a1 + 40) _storeWithName:*(a1 + 48)];
    v4 = [v3 valueForKey:v2];
  }

  else
  {
    v4 = 0;
  }

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 48);
    v7 = 136315650;
    v8 = "[ADManagedStorageConnection getKnowledgeStoreDataForKey:inStoreWithName:completion:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@ %@", &v7, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100251D70(uint64_t a1)
{
  (*(*(a1 + 64) + 16))();
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[ADManagedStorageConnection setKnowledgeStoreData:forKey:inStoreWithName:completion:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %@", &v8, 0x16u);
  }

  if (*(a1 + 40))
  {
    v4 = [*(a1 + 48) _defaultStoreSpecificKeyForName:*(a1 + 32) key:?];
    v5 = *(a1 + 56);
    v6 = [*(a1 + 48) _storeWithName:*(a1 + 32)];
    v7 = v6;
    if (v5)
    {
      [v6 setValue:*(a1 + 56) forKey:v4];
    }

    else
    {
      [v6 removeValueForKey:v4 error:0];
    }
  }
}

void sub_100252CCC(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
}

void sub_100252D30(uint64_t a1, void *a2)
{
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100252EE0;
    block[3] = &unk_10051DB68;
    v3 = *(a1 + 40);
    v7 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v8 = v4;
    v9 = v5;
    dispatch_async(v3, block);
  }

  dispatch_group_leave(*(a1 + 72));
}

uint64_t sub_100252DEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100252E04(uint64_t a1)
{
  v2 = [*(a1 + 32) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[ADCompanionService getDevicesDiscoveredNearbyForUserID:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s user specific devices: %@", &v7, 0x16u);
  }
}

id sub_1002533E0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADCompanionService _scheduleOrExtendAWDLClientLinkTimer]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s timer went off in _scheduleAWDLClientLinkTimer", &v4, 0xCu);
  }

  return [*(a1 + 32) invalidateClientAWDLTransportLink];
}

void sub_100254640(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v2[16];
  v5 = AFSiriLogContextDaemon;
  v6 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v3 == v4)
  {
    if (v6)
    {
      *buf = 136315138;
      v15 = "[ADCompanionService rapportLinkDidInvalidate:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s AWDL client link invalidated", buf, 0xCu);
      v2 = *(a1 + 40);
    }

    [v2 invalidateClientAWDLTransportLink];
  }

  else
  {
    if (v6)
    {
      *buf = 136315138;
      v15 = "[ADCompanionService rapportLinkDidInvalidate:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s companion service connection invalidated", buf, 0xCu);
      v2 = *(a1 + 40);
    }

    v7 = [v2 playbackDeviceIDs];
    [v7 removeAllObjects];

    [*(a1 + 32) removeListener:*(a1 + 40)];
    v8 = *(a1 + 40);
    v9 = *(v8 + 152);
    *(v8 + 152) = 0;

    v10 = dispatch_time(0, 20000000000);
    v11 = *(a1 + 40);
    v12 = *(v11 + 144);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002547FC;
    block[3] = &unk_10051DFE8;
    block[4] = v11;
    dispatch_after(v10, v12, block);
  }
}

id sub_10025492C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v2[16];
  v5 = AFSiriLogContextDaemon;
  v6 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v3 == v4)
  {
    if (v6)
    {
      v11 = 136315138;
      v12 = "[ADCompanionService rapportLinkDidInterrupt:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s AWDL client link interrupted", &v11, 0xCu);
      v2 = *(a1 + 40);
    }

    return [v2 invalidateClientAWDLTransportLink];
  }

  else
  {
    if (v6)
    {
      v11 = 136315138;
      v12 = "[ADCompanionService rapportLinkDidInterrupt:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s companion service connection interrupted", &v11, 0xCu);
      v2 = *(a1 + 40);
    }

    v7 = [v2 playbackDeviceIDs];
    [v7 removeAllObjects];

    [*(a1 + 32) removeListener:*(a1 + 40)];
    v8 = *(a1 + 40);
    v9 = *(v8 + 152);
    *(v8 + 152) = 0;

    return [*(a1 + 40) _setupClientLink];
  }
}

void sub_1002559F0(uint64_t a1, void *a2)
{
  v16 = a2;
  if (!v16)
  {
    (*(*(a1 + 56) + 16))();
  }

  v3 = dispatch_group_create();
  v4 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        dispatch_group_enter(v3);
        v10 = *(a1 + 40);
        v11 = [v9 homeKitIdentifier];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100255C7C;
        v20[3] = &unk_100518100;
        v20[4] = *(a1 + 48);
        v21 = v16;
        v22 = v4;
        v23 = v9;
        v24 = v3;
        [v10 getHomeIdForAccessoryId:v11 completion:v20];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v12 = *(*(a1 + 48) + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100255D7C;
  block[3] = &unk_10051E038;
  v13 = *(a1 + 56);
  v18 = v4;
  v19 = v13;
  v14 = v4;
  dispatch_group_notify(v3, v12, block);
}

void sub_100255C7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100255D90;
  block[3] = &unk_1005180D8;
  v12 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = *(a1 + 56);
  v7 = *(&v10 + 1);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v13 = v8;
  v14 = v10;
  v9 = v3;
  dispatch_async(v4, block);
}

void sub_100255D90(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:*(a1 + 40)])
  {
    [*(a1 + 48) addObject:*(a1 + 56)];
  }

  v2 = *(a1 + 64);

  dispatch_group_leave(v2);
}

void sub_10025842C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [AFError errorWithCode:1007];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_1002584A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v14 = 136316162;
    v15 = "[ADCompanionService _sendHeartbeatMessage:targetDeviceIdentifier:timeout:completion:]_block_invoke";
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s heartbeat request response : %@ %@ %@ %@", &v14, 0x34u);
  }

  if (*(a1 + 56) == 1 && ([*(a1 + 40) _cancelTimerForMessage:*(a1 + 32)] & 1) == 0)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[ADCompanionService _sendHeartbeatMessage:targetDeviceIdentifier:timeout:completion:]_block_invoke";
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s message timed out, ignoring error %@", &v14, 0x16u);
    }
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, v9);
    }
  }
}

void sub_100258C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100258C94(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v19 = "[ADCompanionService _startTimerForMessage:targetDevice:timeout:heartbeat:completion:]_block_invoke";
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s heartbeat fired: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained timerInfo];
  v6 = [v5 objectForKey:*(a1 + 32)];
  v7 = [v6 requestTimer];

  if (v7 && ([v7 isStopped] & 1) == 0)
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v12 = [*(a1 + 40) _newRequestDictionary];
    [v12 setObject:*(a1 + 32) forKey:@"hbMessageID"];
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100259010;
    v15[3] = &unk_100518060;
    objc_copyWeak(&v17, (a1 + 56));
    v16 = *(a1 + 32);
    [v13 _sendHeartbeatMessage:v12 targetDeviceIdentifier:v14 timeout:v15 completion:(v10 - v11) * 0.949999988];

    objc_destroyWeak(&v17);
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 136315394;
      v19 = "[ADCompanionService _startTimerForMessage:targetDevice:timeout:heartbeat:completion:]_block_invoke";
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s timer already fired: %@", buf, 0x16u);
    }
  }
}

uint64_t sub_100258F0C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[ADCompanionService _startTimerForMessage:targetDevice:timeout:heartbeat:completion:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s request timed out: %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained timerInfo];
  [v4 removeObjectForKey:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100259010(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained timerInfo];
    v5 = [v4 objectForKey:*(a1 + 32)];

    v6 = [v5 requestTimer];
    v7 = v6;
    if (v6 && ([v6 isStopped] & 1) == 0)
    {
      v11 = +[NSProcessInfo processInfo];
      [v11 systemUptime];
      v13 = v12;
      [v5 startTime];
      v15 = vabdd_f64(v13, v14);

      v8 = AFSiriLogContextDaemon;
      v16 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
      if (v15 < 300.0)
      {
        if (v16)
        {
          v17 = *(a1 + 32);
          v23 = 136315394;
          v24 = "[ADCompanionService _startTimerForMessage:targetDevice:timeout:heartbeat:completion:]_block_invoke";
          v25 = 2112;
          v26 = v17;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s resetting timer: %@", &v23, 0x16u);
        }

        [v7 reset];
        v18 = [v5 heartbeatTimer];
        if (v18)
        {
          v19 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v20 = *(a1 + 32);
            v23 = 136315394;
            v24 = "[ADCompanionService _startTimerForMessage:targetDevice:timeout:heartbeat:completion:]_block_invoke";
            v25 = 2112;
            v26 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s resetting heartbeat timer: %@", &v23, 0x16u);
          }

          v21 = [v18 copy];
          [v5 setHeartbeatTimer:v21];
          [v21 start];
        }

        goto LABEL_17;
      }

      if (v16)
      {
        v22 = *(a1 + 32);
        v23 = 136315394;
        v24 = "[ADCompanionService _startTimerForMessage:targetDevice:timeout:heartbeat:completion:]_block_invoke";
        v25 = 2112;
        v26 = v22;
        v10 = "%s timer exceeded max timeout: %@";
        goto LABEL_6;
      }
    }

    else
    {
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v23 = 136315394;
        v24 = "[ADCompanionService _startTimerForMessage:targetDevice:timeout:heartbeat:completion:]_block_invoke";
        v25 = 2112;
        v26 = v9;
        v10 = "%s timer already stopped: %@";
LABEL_6:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v10, &v23, 0x16u);
      }
    }

LABEL_17:
  }
}

void sub_100259400(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 152))
  {
    v3 = [*(v1 + 88) dictionaryRepresentation];
    (*(v2 + 16))(v2, v3, 0);
  }

  else
  {
    v3 = [AFError errorWithCode:1009];
    (*(v2 + 16))(v2, 0, v3);
  }
}

void sub_1002595C0(uint64_t a1)
{
  v16 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(*(a1 + 32) + 152) activeDevices];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = *(*(a1 + 32) + 80);
        v9 = [v7 identifier];
        v10 = [v8 objectForKey:v9];
        if (v10)
        {
          v11 = v10;
          v12 = [*(*(a1 + 32) + 152) localDevice];
          v13 = [v7 hasValidDiscoveryTypeForLocalDevice:v12];

          if (!v13)
          {
            continue;
          }

          v9 = [*(a1 + 32) _remotePlaybackDeviceForDevice:v7];
          if (v9)
          {
            [v16 addObject:v9];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v4);
  }

  v14 = [v16 count];
  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[ADCompanionService getPlaybackDeviceListWithCompletion:]_block_invoke";
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Found %lu playback device(s)", buf, 0x16u);
  }

  if (v14)
  {
    v14 = objc_alloc_init(SARemotePlaybackDeviceList);
    [v14 setRemotePlaybackDevices:v16];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100259A54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[ADCompanionService _updateHashedRouteIDForDevice:]_block_invoke";
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s unable to hash route id: %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = [v5 base64EncodedStringWithOptions:0];
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(v10 + 144);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100259C5C;
      v14[3] = &unk_10051DB18;
      v14[4] = v10;
      v15 = v9;
      v16 = *(a1 + 48);
      v17 = v8;
      dispatch_async(v11, v14);
    }

    else
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        *buf = 136315394;
        v19 = "[ADCompanionService _updateHashedRouteIDForDevice:]_block_invoke";
        v20 = 2112;
        v21 = v13;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s unable to hash route id for device: %@", buf, 0x16u);
      }
    }
  }
}

void sub_100259C5C(uint64_t a1)
{
  if (*(*(a1 + 32) + 152))
  {
    v2 = [*(a1 + 40) _ad_siriSharedDataProtobuf];
    v3 = *(a1 + 48);
    v4 = [v2 airplayRouteId];
    LODWORD(v3) = [v3 isEqualToString:v4];

    if (v3)
    {
      v5 = *(*(a1 + 32) + 80);
      v6 = [*(a1 + 40) identifier];
      v7 = [v5 objectForKey:v6];

      if (v7)
      {
        v8 = [v7 objectForKey:*(a1 + 48)];

        if (!v8)
        {
          v9 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v10 = *(a1 + 40);
            v12 = 136315394;
            v13 = "[ADCompanionService _updateHashedRouteIDForDevice:]_block_invoke";
            v14 = 2112;
            v15 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Updated hashed route id for device: %@", &v12, 0x16u);
          }

          [v7 setObject:*(a1 + 56) forKey:*(a1 + 48)];
          v11 = +[NSNotificationCenter defaultCenter];
          [v11 postNotificationName:@"ADCompanionServicePlaybackDevicesDidChangeNotification" object:0];
        }
      }
    }
  }
}

void sub_10025A11C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025A1D4;
  block[3] = &unk_10051E088;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t sub_10025A1D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 152))
  {
    v3 = *(a1 + 40);
    if (v3 != *(v2 + 96))
    {
      if (![v3 isEqualToString:?])
      {
        v7 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v12 = 136315138;
          v13 = "[ADCompanionService _updateStoreFrontIdentifierWithCompletion:]_block_invoke_2";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s store front identifier updated", &v12, 0xCu);
        }

        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v10 = *(v8 + 96);
        *(v8 + 96) = v9;
        v4 = 1;
        goto LABEL_17;
      }

      v2 = *(a1 + 32);
      v3 = *(v2 + 96);
    }

    if (v3)
    {
      v4 = 0;
      goto LABEL_18;
    }

    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[ADCompanionService _updateStoreFrontIdentifierWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s store front identifier with empty identifier", &v12, 0xCu);
      v2 = *(a1 + 32);
    }

    v4 = 0;
    v10 = *(v2 + 96);
    *(v2 + 96) = &stru_10051F508;
LABEL_17:

LABEL_18:
    result = *(a1 + 48);
    if (result)
    {
      return (*(result + 16))(result, v4);
    }

    return result;
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_10025A4F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025A5A8;
  block[3] = &unk_10051E088;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_10025A5A8(void *a1)
{
  obj = objc_alloc_init(_ADPBDeviceSetDataRequest);
  [(_ADPBDeviceSetDataRequest *)obj _ad_setData:a1[4]];
  objc_storeStrong((a1[5] + 88), obj);
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }
}

void sub_10025AA40(uint64_t a1)
{
  if (AFIsInternalInstall())
  {
    v2 = AFSiriLogContextPerformance;
    v3 = os_signpost_id_generate(AFSiriLogContextPerformance);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v3;
      if (os_signpost_enabled(v2))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, v4, "CompanionCouldNotReach", "_getSharedDataFromCompanionLinkDevice", v7, 2u);
      }
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [AFError errorWithCode:1000];
    (*(v5 + 16))(v5, 0, v6);
  }
}

void sub_10025AB24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v19 = 136316162;
    v20 = "[ADCompanionService _getSharedDataFromCompanionLinkDevice:completion:]_block_invoke";
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s request response : %@ %@ %@ %@", &v19, 0x34u);
  }

  if (*(a1 + 56) == 1 && ([*(a1 + 40) _cancelTimerForMessage:*(a1 + 32)] & 1) == 0)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[ADCompanionService _getSharedDataFromCompanionLinkDevice:completion:]_block_invoke";
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s message timed out, ignoring error %@", &v19, 0x16u);
    }
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      if (v9)
      {
        v13 = 0;
      }

      else
      {
        v15 = [v7 objectForKey:@"sharedDataProtoBuf"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [[_ADPBDeviceSetDataRequest alloc] initWithData:v15];
          v13 = [(_ADPBDeviceSetDataRequest *)v16 _ad_data];
          if (v13)
          {
            v9 = 0;
          }

          else
          {
            v18 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              v19 = 136315138;
              v20 = "[ADCompanionService _getSharedDataFromCompanionLinkDevice:completion:]_block_invoke";
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s received malformed protobuf", &v19, 0xCu);
            }

            v9 = [AFError errorWithCode:11];
          }
        }

        else
        {
          v17 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            v19 = 136315138;
            v20 = "[ADCompanionService _getSharedDataFromCompanionLinkDevice:completion:]_block_invoke";
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s received malformed data", &v19, 0xCu);
          }

          v9 = [AFError errorWithCode:11];
          v13 = 0;
        }

        v12 = *(a1 + 48);
      }

      (*(v12 + 16))(v12, v13, v9);
    }
  }
}

uint64_t sub_10025B3C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_10025B3E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v14 = 136316162;
    v15 = "[ADCompanionService _startRemoteRequest:onPeer:completion:]_block_invoke";
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s remote request response : %@ %@ %@ %@", &v14, 0x34u);
  }

  if (*(a1 + 56) == 1 && ([*(a1 + 40) _cancelTimerForMessage:*(a1 + 32)] & 1) == 0)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[ADCompanionService _startRemoteRequest:onPeer:completion:]_block_invoke";
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s message timed out, ignoring error %@", &v14, 0x16u);
    }
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, v9 == 0);
    }
  }
}

void sub_10025BB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10025BB88(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[ADCompanionService _waitForMessageIDs:withContext:timeout:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s MessageWaitContext timing out", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained waitingOnMessageIDs];
  v5 = [v4 copy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) _unblockWaitContext:WeakRetained forMessageID:{*(*(&v11 + 1) + 8 * v10), v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

void sub_10025D31C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 160));
  _Unwind_Resume(a1);
}

void sub_10025D350(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectForKey:@"messageID"];
  v7 = objc_alloc_init(HALSchemaHALCompanionDeviceCommunicationEnded);
  v8 = v7;
  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v7 setConnectionType:v9];
  v10 = *(a1 + 40);
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_10025DFB0;
  v55[3] = &unk_10051D2A0;
  v11 = v6;
  v56 = v11;
  v45 = v8;
  v57 = v45;
  v43 = *(a1 + 32);
  v12 = v43.i64[0];
  v58 = vextq_s8(v43, v43, 8uLL);
  v59 = *(a1 + 56);
  v44 = [v10 _startTimerForMessage:v11 targetDevice:v5 heartbeat:1 completion:v55];
  [*(a1 + 40) _recordIntermediateMessageID:v11 forPeer:*(a1 + 48)];
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [v5 identifier];
    v16 = [*(*(a1 + 40) + 152) localDevice];
    [v16 identifier];
    v18 = v17 = v5;
    *buf = 136315906;
    v63 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
    v64 = 2112;
    v65 = v11;
    v66 = 2112;
    v67 = v15;
    v68 = 2112;
    v69 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s sending message: %@ to destination: %@ (local: %@)", buf, 0x2Au);

    v5 = v17;
  }

  v19 = [*(a1 + 32) objectForKey:@"command"];
  if (!v19)
  {
    v20 = [*(a1 + 32) objectForKey:@"serializedCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [AceObject aceObjectWithPlistData:v20];
      v19 = [v21 dictionary];
    }

    else
    {
      v19 = 0;
    }
  }

  v22 = os_signpost_id_generate(AFSiriLogContextPerformance);
  v23 = AFSiriLogContextPerformance;
  v24 = v23;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v25 = [v19 valueForKey:@"$class"];
    *buf = 138412546;
    v63 = v25;
    v64 = 2112;
    v65 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "CompanionService", "Sending Execute Remote Request: Class=%@, MessageID=%@", buf, 0x16u);
  }

  v26 = 152;
  if (a3)
  {
    v26 = 128;
  }

  v27 = *(a1 + 32);
  v28 = *(*(a1 + 40) + v26);
  v29 = @"iWifi";
  if (a3)
  {
    v29 = @"AWDL";
  }

  v30 = v29;
  v31 = v28;
  v32 = [v27 mutableCopy];
  [v32 setObject:v30 forKey:@"messageLinkType"];
  v41 = v19;
  v33 = [v32 copy];
  v34 = [*(a1 + 40) _initializeNewMessageWaitContext];
  v35 = [v5 identifier];
  v60 = RPOptionStatusFlags;
  v61 = &off_100533D40;
  [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v36 = v42 = v5;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10025E164;
  v46[3] = &unk_100517ED0;
  v54 = v44;
  v37 = *(a1 + 40);
  v47 = v11;
  v48 = v37;
  v53 = v22;
  v52 = *(a1 + 56);
  v49 = v34;
  v50 = v45;
  v51 = *(a1 + 32);
  v38 = v45;
  v39 = v34;
  v40 = v11;
  [v31 sendRequestID:@"com.apple.siri.request.execute.ace.command" request:v33 destinationID:v35 options:v36 responseHandler:v46];
}

void sub_10025D898(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s setStateUpdateHandler checking if client link is using on demand connection.", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained usingOnDemandConnection])
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315138;
      v7 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s setStateUpdateHandler message link is usingOnDemandConnection. Sending message.", &v6, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10025D9D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to activate message link. error: %@", &v13, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [*(a1 + 40) identifier];
    v6 = *(a1 + 32);
    v7 = *(v6 + 136);
    *(v6 + 136) = v5;

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v9 = *(a1 + 32);
    v10 = *(v9 + 128);
    *(v9 + 128) = WeakRetained;

    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v12 = *(*(a1 + 32) + 136);
      v13 = 136315394;
      v14 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s _clientAWDLTransportLinkDestinationId set value:%@ ", &v13, 0x16u);
    }

    [*(a1 + 32) _scheduleOrExtendAWDLClientLinkTimer];
  }
}

void sub_10025DB70(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315138;
    v16 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s unable to find remote device for execution", &v15, 0xCu);
    v2 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 48))
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = v2;
    if (+[AFFeatureFlags isAWDLFallbackForPersonalRequestsEnabled])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = *(a1 + 50);
    if (*(a1 + 49))
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v15 = 136316162;
    v16 = "[ADCompanionService _executeRemoteRequest:onPeer:allowsRelay:allowFallbackOnAWDL:throughProxyDevice:completion:]_block_invoke";
    if (v12)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s allowFallbackOnAWDL: %@, isAWDLFallbackForPersonalRequestsEnabled: %@, isPeerIdsIDMatchingAWDLClientLinkDestinationId: %@, isDestinationDeviceDiscoveredOverWifiP2P:%@", &v15, 0x34u);
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
        LOWORD(v15) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_EVENT, v5, "CompanionDeviceNotFound", "ADCompanionService _executeRemoteRequest", &v15, 2u);
      }
    }
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v6)
  {
    (*(v7 + 16))(v7, 0);
  }

  else
  {
    v8 = [AFError errorWithCode:1000];
    (*(v7 + 16))(v7, 0, v8);
  }
}