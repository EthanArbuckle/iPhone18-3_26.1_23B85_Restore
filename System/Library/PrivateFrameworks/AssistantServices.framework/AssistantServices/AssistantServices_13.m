uint64_t sub_100304094(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) isEqual:*(a1 + 40)];
  v3 = AFSiriLogContextSession;
  v4 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = *(a1 + 40);
    v12 = 136315394;
    v13 = "[ADAssistantDataManager _updateVoice:]_block_invoke";
    v14 = 2112;
    v15 = v5;
    v6 = "%s Cached voice for assistant data is still %@.";
    v7 = v3;
    v8 = 22;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 40);
    v10 = *(*(a1 + 32) + 80);
    v12 = 136315650;
    v13 = "[ADAssistantDataManager _updateVoice:]_block_invoke_2";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v9;
    v6 = "%s Cached voice for assistant data updated from %@ to %@.";
    v7 = v3;
    v8 = 32;
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, &v12, v8);
LABEL_7:
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, v2 ^ 1);
  }

  return result;
}

void sub_100304580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose((v56 - 232), 8);
  _Block_object_dispose((v56 - 200), 8);
  _Block_object_dispose((v56 - 168), 8);
  _Block_object_dispose((v56 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003045F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10030460C(void *a1)
{
  v14 = +[MCProfileConnection sharedConnection];
  if ([v14 effectiveBoolValueForSetting:MCFeatureSafariAllowed] == 2)
  {
    v2 = a1[4];
    v3 = SAWebGroupIdentifier;
    v4 = [NSString stringWithFormat:@"%@#%@", SAWebGroupIdentifier, SAWebSearchClassIdentifier];
    [v2 addObject:v4];

    v5 = a1[4];
    v6 = [NSString stringWithFormat:@"%@#%@", v3, SAWebSiteSearchClassIdentifier];
    [v5 addObject:v6];
  }

  if ([v14 effectiveBoolValueForSetting:MCFeatureVideoConferencingAllowed] == 2)
  {
    v7 = a1[4];
    v8 = [NSString stringWithFormat:@"%@#%@", SAPhoneGroupIdentifier, SAPhoneCallFaceTimeRestrictionKeyValue];
    [v7 addObject:v8];
  }

  if ([v14 effectiveBoolValueForSetting:MCFeatureBluetoothModificationAllowed] == 2)
  {
    v9 = a1[4];
    v10 = [NSString stringWithFormat:@"%@#%@", SASettingGroupIdentifier, SASettingSetBluetoothClassIdentifier];
    [v9 addObject:v10];
  }

  *(*(a1[5] + 8) + 24) = sub_100214D74();
  *(*(a1[6] + 8) + 24) = [v14 effectiveBoolValueForSetting:MCFeatureAssistantUserGeneratedContentAllowed] == 1;
  *(*(a1[7] + 8) + 24) = [v14 effectiveBoolValueForSetting:MCFeatureExplicitContentAllowed] == 1;
  v11 = [v14 effectiveValueForSetting:MCFeatureMaximumMoviesRating];
  *(*(a1[8] + 8) + 24) = [v11 integerValue];

  v12 = [v14 effectiveValueForSetting:MCFeatureMaximumTVShowsRating];
  *(*(a1[9] + 8) + 24) = [v12 integerValue];

  v13 = [v14 effectiveValueForSetting:MCFeatureMaximumAppsRating];
  *(*(a1[10] + 8) + 24) = [v13 integerValue];
}

uint64_t sub_1003048E0(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = *(a1 + 32);
    v3 = [NSString stringWithFormat:@"%@#%@", SAGroupIdentifier, SAGetRequestOriginLocationRestrictionKeyValue];
    [v2 addObject:v3];
  }

  v4 = CRCopyCountryCode();
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(*(a1 + 40) + 48) isEqual:*(a1 + 32)];
  v8 = *(a1 + 40);
  if (v7)
  {
    if (*(v8 + 56) == *(*(*(a1 + 72) + 8) + 24) && *(v8 + 57) == *(*(*(a1 + 80) + 8) + 24) && *(v8 + 89) == *(*(*(a1 + 88) + 8) + 24))
    {
      v9 = [*(v8 + 96) movieRestriction];
      v8 = *(a1 + 40);
      if (v9 == *(*(*(a1 + 96) + 8) + 24))
      {
        v10 = [*(v8 + 96) tvRestriction];
        v8 = *(a1 + 40);
        if (v10 == *(*(*(a1 + 104) + 8) + 24))
        {
          v11 = [*(v8 + 96) appRestriction];
          v8 = *(a1 + 40);
          if (v11 == *(*(*(a1 + 112) + 8) + 24))
          {
            v12 = [*(v8 + 96) countryCode];
            v13 = v12;
            if (*(*(*(a1 + 64) + 8) + 40))
            {
              v14 = *(*(*(a1 + 64) + 8) + 40);
            }

            else
            {
              v14 = &stru_10051F508;
            }

            [v12 isEqualToString:v14];

            v8 = *(a1 + 40);
          }
        }
      }
    }
  }

  objc_storeStrong((v8 + 48), *(a1 + 32));
  *(*(a1 + 40) + 56) = *(*(*(a1 + 72) + 8) + 24);
  *(*(a1 + 40) + 57) = *(*(*(a1 + 80) + 8) + 24);
  *(*(a1 + 40) + 89) = *(*(*(a1 + 88) + 8) + 24);
  [*(*(a1 + 40) + 96) setMovieRestriction:*(*(*(a1 + 96) + 8) + 24)];
  [*(*(a1 + 40) + 96) setTvRestriction:*(*(*(a1 + 104) + 8) + 24)];
  [*(*(a1 + 40) + 96) setAppRestriction:*(*(*(a1 + 112) + 8) + 24)];
  [*(*(a1 + 40) + 96) setCountryCode:*(*(*(a1 + 64) + 8) + 40)];
  [*(a1 + 40) _setAllowExplicitContent:*(*(*(a1 + 88) + 8) + 24)];
  result = *(a1 + 48);
  if (result)
  {
    v16 = *(result + 16);

    return v16();
  }

  return result;
}

uint64_t sub_100304C28(uint64_t a1)
{
  AFDictationRestricted();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100304D2C(uint64_t a1)
{
  _AFPreferencesForceOnDeviceOnlyDictationEnabled();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100304DD4(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create(0, v1);

  v3 = qword_1005909B8;
  qword_1005909B8 = v2;
}

uint64_t sub_100304FF4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_100305308(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 1;
  if (([*(*(a1 + 32) + 64) isEqualToString:*(a1 + 40)] & 1) == 0)
  {
    v2 = [*(a1 + 40) copy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    *(v3 + 64) = v2;

    v5 = +[ADPreferences sharedPreferences];
    [v5 setCountryCode:*(a1 + 40)];
  }

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void sub_100305428(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003054A0;
  v4[3] = &unk_10051CBD8;
  v4[4] = v2;
  v5 = a2;
  dispatch_async(v3, v4);
}

void sub_1003054A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 106);
  v4 = *(a1 + 40);
  v5 = AFSiriLogContextSession;
  v6 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO);
  if (v3 == v4)
  {
    if (v6)
    {
      v8 = 136315394;
      v9 = "[ADAssistantDataManager _updateDictationAllowedStatus]_block_invoke";
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Dictation Allowed status: %d", &v8, 0x12u);
    }
  }

  else
  {
    if (v6)
    {
      v8 = 136315650;
      v9 = "[ADAssistantDataManager _updateDictationAllowedStatus]_block_invoke_2";
      v10 = 1024;
      v11 = v3;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Dictation Allowed status changed from %d -> %d", &v8, 0x18u);
      LOBYTE(v4) = *(a1 + 40);
      v2 = *(a1 + 32);
    }

    *(v2 + 106) = v4;
    v7 = +[AFPreferences sharedPreferences];
    [v7 _setDictationIsAllowed:*(*(a1 + 32) + 106)];
  }
}

void sub_100305670(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003056E8;
  v4[3] = &unk_10051CBD8;
  v5 = a2;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

void sub_1003056E8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 1)
  {
    v3 = +[ADPreferences sharedPreferences];
    [v3 setSiriDataSharingOptInStatus:2 propagateToHomeAccessories:0 source:10 reason:@"HIPAA MDM profile installed" completion:0];

    v2 = *(a1 + 40);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 105);
  v6 = AFSiriLogContextSession;
  v7 = os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO);
  if (v5 == v2)
  {
    if (v7)
    {
      *buf = 136315394;
      v20 = "[ADAssistantDataManager _notifyObserversOfDictationHIPAAMDMStatus]_block_invoke";
      v21 = 1024;
      v22 = v2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Dictation HIPAA MDM status enabled: %d", buf, 0x12u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 136315650;
      v20 = "[ADAssistantDataManager _notifyObserversOfDictationHIPAAMDMStatus]_block_invoke_2";
      v21 = 1024;
      v22 = v5;
      v23 = 1024;
      v24 = v2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Dictation HIPAA MDM status changed from %d -> %d", buf, 0x18u);
      LOBYTE(v2) = *(a1 + 40);
      v4 = *(a1 + 32);
    }

    *(v4 + 105) = v2;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = *(*(a1 + 32) + 16);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v13 assistantDataManagerDictationHIPAAMDMStatusDidChange];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

id sub_100306300(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100306370;
  v3[3] = &unk_10051B778;
  v3[4] = v1;
  return [v1 _updateRestrictions:v3];
}

id *sub_100306370(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _generateAssistantData];
  }

  return result;
}

id sub_1003063F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100306464;
  v3[3] = &unk_10051B778;
  v3[4] = v1;
  return [v1 _updateVoiceOverStatus:v3];
}

id *sub_100306464(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _generateAssistantData];
  }

  return result;
}

id sub_1003064E8(uint64_t a1)
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADAssistantDataManager _safeGenerateAssistantDataForVoiceTriggerEnabled]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got voice trigger enabled changed notification, updating assistant data", &v5, 0xCu);
  }

  result = sub_10000F1C0();
  v4 = *(a1 + 32);
  if (*(v4 + 73) != result)
  {
    *(v4 + 73) = result;
    return [*(a1 + 32) _generateAssistantData];
  }

  return result;
}

void sub_1003066B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[GEOCountryConfiguration sharedConfiguration];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100306760;
  v4[3] = &unk_10051B778;
  v4[4] = *(a1 + 32);
  [v2 _onMainThreadUpdateCountryCodeWithCountryConfiguration:v3 completion:v4];
}

id *sub_100306760(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _generateAssistantData];
  }

  return result;
}

id sub_100306870(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003068E0;
  v3[3] = &unk_10051B778;
  v3[4] = v1;
  return [v1 _updateVoice:v3];
}

id sub_1003068E0(id result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = os_signpost_id_generate(AFSiriLogContextMultiUser);
    v4 = AFSiriLogContextMultiUser;
    v5 = v4;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MultiUserService", "Start the download of HQ TTS assets for personal requests", v6, 2u);
    }

    *(*(v2 + 4) + 40) = v3;
    return [*(v2 + 4) _generateAssistantData];
  }

  return result;
}

id sub_100306A98(uint64_t a1)
{
  +[NSTimeZone resetSystemTimeZone];
  v2 = *(a1 + 32);

  return [v2 _generateAssistantData];
}

id sub_100306C60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100306CD0;
  v3[3] = &unk_10051B778;
  v3[4] = v1;
  return [v1 _updateItunesStoreIdentifier:v3];
}

void sub_100306CD0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 128);
      v6 = 136315395;
      v7 = "[ADAssistantDataManager _storeFrontDidChange:]_block_invoke_2";
      v8 = 2113;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Current store front has changed to %{private}@; updating assistant data", &v6, 0x16u);
    }

    [*(a1 + 32) _generateAssistantData];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"ADAssistantDataManageriTunesStoreFrontIdentifierDidChangeNotification" object:0];
  }
}

id sub_100306EC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100306F34;
  v3[3] = &unk_10051B778;
  v3[4] = v1;
  return [v1 _updateRestrictions:v3];
}

id *sub_100306F34(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _generateAssistantData];
  }

  return result;
}

id sub_100307174(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003071E4;
  v3[3] = &unk_10051B778;
  v3[4] = v1;
  return [v1 _updateVoice:v3];
}

void sub_1003071E4(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _generateAssistantData];
    v3 = AFSiriLogContextMultiUser;
    v4 = v3;
    v5 = *(*(a1 + 32) + 40);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v5, "MultiUserService", "HQV Download finished", v6, 2u);
    }
  }
}

void sub_100307474(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v11 = *(a1 + 32);
    v2 = [NSArray arrayWithObjects:&v11 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(*(a1 + 40) + 24);
  if (v2 | v3 && ![v3 isEqualToArray:v2])
  {
    v5 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADAssistantDataManager addressBookManagerDidUpdateData:meCard:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Updating assistant data for me card change notification", &v9, 0xCu);
    }

    v6 = [v2 copy];
    v7 = *(a1 + 40);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;

    [*(a1 + 40) _generateAssistantData];
  }

  else
  {
    v4 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADAssistantDataManager addressBookManagerDidUpdateData:meCard:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s No actual change, ignoring me card change notification", &v9, 0xCu);
    }
  }
}

id sub_1003076F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100307780;
  v4[3] = &unk_10051B778;
  v4[4] = v2;
  [v2 _updateRestrictions:v4];
  [*(a1 + 32) _notifyObserversOfDictationHIPAAMDMStatus];
  return [*(a1 + 32) _updateDictationAllowedStatus];
}

id *sub_100307780(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _generateAssistantData];
  }

  return result;
}

id *sub_100307890(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _generateAssistantData];
  }

  return result;
}

void sub_100307948(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 88) != 1 || *(v2 + 32))
  {
    v3 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[ADAssistantDataManager getAssistantDataWithCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s result is incomplete or missing", &v6, 0xCu);
      v2 = *(a1 + 32);
    }
  }

  v4 = *(a1 + 40);
  v5 = [*(v2 + 144) copy];
  (*(v4 + 16))(v4, v5);
}

uint64_t sub_100307BBC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 152) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100307CB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[22])
  {
    v8 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v19 = "[ADAssistantDataManager getMeCardsWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Using local store", buf, 0xCu);
    }

    v9 = +[ADLocalMeCardStore sharedStore];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100307F78;
    v16[3] = &unk_10051B7A0;
    v17 = *(a1 + 40);
    [v9 meCard:v16];

    v10 = v17;
    goto LABEL_13;
  }

  v3 = v2[3];
  if (!v3)
  {
    v11 = v2[4];
    if (v11)
    {
      v12 = AFSiriLogContextSession;
      if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v19 = "[ADAssistantDataManager getMeCardsWithCompletion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Waiting for initial meCard fetch to complete", buf, 0xCu);
        v2 = *(a1 + 32);
        v11 = v2[4];
      }

      v13 = v2[1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003080B0;
      block[3] = &unk_10051E038;
      block[4] = v2;
      v15 = *(a1 + 40);
      dispatch_group_notify(v11, v13, block);
      v10 = v15;
LABEL_13:

      return;
    }
  }

  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    *buf = 136315394;
    v19 = "[ADAssistantDataManager getMeCardsWithCompletion:]_block_invoke";
    v20 = 2048;
    v21 = [v3 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Returning %lu meCards", buf, 0x16u);

    v3 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);
  v7 = [v3 copy];
  (*(v6 + 16))(v6, v7);
}

void sub_100307F78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v5 = @"a";
    if (!v3)
    {
      v5 = @"NO";
    }

    *buf = 136315394;
    v10 = "[ADAssistantDataManager getMeCardsWithCompletion:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Found %@ meCard locally", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v3)
  {
    v8 = v3;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }
}

void sub_1003080B0(uint64_t a1)
{
  v2 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 24);
    v4 = v2;
    v7 = 136315394;
    v8 = "[ADAssistantDataManager getMeCardsWithCompletion:]_block_invoke";
    v9 = 2048;
    v10 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s meCard fetch complete, got %lu meCards", &v7, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = [*(*(a1 + 32) + 24) copy];
  (*(v5 + 16))(v5, v6);
}

void sub_10030825C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[16];
  if (v3)
  {
    v4 = *(a1 + 40);
    v6 = [v3 copy];
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10030833C;
    v7[3] = &unk_10051C718;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v5;
    [v2 _updateItunesStoreIdentifier:v7];
  }
}

void sub_10030833C(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 128) copy];
  (*(v3 + 16))(v3, v4);

  if (a2)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"ADAssistantDataManageriTunesStoreFrontIdentifierDidChangeNotification" object:0];
  }
}

id sub_100308544(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[18])
  {
    return [v1 _notifyObserversOfSAD:?];
  }

  else
  {
    return [v1 _generateAssistantData];
  }
}

void sub_1003090EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100309768;
  block[3] = &unk_10051DB68;
  v8 = v4;
  v9 = v3;
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, block);
}

void sub_1003091B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100309690;
  block[3] = &unk_10051DB68;
  v8 = v4;
  v9 = v3;
  v10 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, block);
}

void sub_10030927C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100309688;
  v2[3] = &unk_10051B778;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _updateVoice:v2];
}

void sub_10030930C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100309680;
  v2[3] = &unk_10051B778;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _updateVoiceOverStatus:v2];
}

void sub_100309394(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100309678;
  v2[3] = &unk_10051B778;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _updateItunesStoreIdentifier:v2];
}

void sub_10030941C(uint64_t a1)
{
  v2 = +[GEOCountryConfiguration sharedConfiguration];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100309670;
  v4[3] = &unk_10051B778;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _onMainThreadUpdateCountryCodeWithCountryConfiguration:v2 completion:v4];
}

void *sub_1003094D4(void *result)
{
  v1 = result[4];
  if ((*(v1 + 88) & 1) == 0)
  {
    v2 = result;
    v3 = AFSiriLogContextSession;
    if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[ADAssistantDataManager initWithInstanceContext:]_block_invoke_15";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Initial fetch took too long, timing out.", &v4, 0xCu);
      v1 = v2[4];
    }

    *(v1 + 88) = 1;
    return [v2[4] _generateAssistantData];
  }

  return result;
}

void sub_1003095BC(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = v3[1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100309660;
  v5[3] = &unk_10051CBD8;
  v6 = v3;
  v7 = a2;
  dispatch_async(v4, v5);
}

void sub_100309690(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v1 = [*(a1 + 40) copy];
    v7 = v1;
    v4 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 24), v4);
  if (v3)
  {
  }

  dispatch_group_leave(*(a1 + 48));
  dispatch_group_leave(*(*(a1 + 32) + 32));
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;
}

void sub_100309768(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v1 = [*(a1 + 40) copy];
    v7 = v1;
    v4 = [NSArray arrayWithObjects:&v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 24), v4);
  if (v3)
  {
  }

  dispatch_group_leave(*(a1 + 48));
  dispatch_group_leave(*(*(a1 + 32) + 32));
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;
}

void sub_10030988C(id a1)
{
  v1 = objc_alloc_init(ADAssistantDataManager);
  v2 = qword_1005909A0;
  qword_1005909A0 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10030A128(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[533])
  {
    return [v1 _restartConnectionProviders];
  }

  else
  {
    return [v1 _closeNetworkConnection];
  }
}

void sub_10030A1F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextProxy;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[ADSiriConnectionRemote _writeDataToNetwork:]_block_invoke";
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s %{public}@", &v6, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[ADSiriConnectionRemote _writeDataToNetwork:]_block_invoke";
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Wrote: %lu", &v6, 0x16u);
  }
}

void sub_10030A770(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (*(a1 + 32) == v7[5])
  {
    if (v6)
    {
      [v7 _networkConnectionErrorOccurred:v6];
    }

    else if (v5)
    {
      [v7 _networkConnectionReceivedData:v5];
      [*(a1 + 40) _waitForNetworkData];
    }

    else
    {
      v8 = AFSiriLogContextProxy;
      if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "[ADSiriConnectionRemote _waitForNetworkData]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s no data or error, possibly an already canceled connection", &v9, 0xCu);
      }
    }
  }
}

void sub_10030A910(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextProxy;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[ADSiriConnectionRemote _writeDataToPeer:]_block_invoke";
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s %{public}@", &v6, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[ADSiriConnectionRemote _writeDataToPeer:]_block_invoke";
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Wrote: %lu", &v6, 0x16u);
  }
}

void sub_10030AF38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7[3] == *(a1 + 40))
  {
    v8 = AFSiriLogContextProxy;
    v9 = os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO);
    if (!v5 || v6)
    {
      if (v9)
      {
        v10 = 136315394;
        v11 = "[ADSiriConnectionRemote _waitForPeerData]_block_invoke";
        v12 = 2112;
        size = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s error: %@", &v10, 0x16u);
        v7 = *(a1 + 32);
      }

      [v7 _peerReadStreamErrorOccurred:v6];
    }

    else
    {
      if (v9)
      {
        v10 = 136315394;
        v11 = "[ADSiriConnectionRemote _waitForPeerData]_block_invoke";
        v12 = 2048;
        size = dispatch_data_get_size(v5);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s read %lu bytes", &v10, 0x16u);
        v7 = *(a1 + 32);
      }

      [v7 _peerConnectionReceivedData:v5];
      [*(a1 + 32) _waitForPeerData];
    }
  }
}

void sub_10030B1FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[5] == v3)
  {
    v7 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADSiriConnectionRemote connectionProvider:receivedError:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Network Provider", &v8, 0xCu);
      v2 = *(a1 + 32);
    }

    [v2 _networkConnectionFailure];
  }

  else
  {
    v4 = v2[3];
    v5 = AFSiriLogContextProxy;
    v6 = os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO);
    if (v4 == v3)
    {
      if (v6)
      {
        v8 = 136315138;
        v9 = "[ADSiriConnectionRemote connectionProvider:receivedError:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Peer Provider", &v8, 0xCu);
        v2 = *(a1 + 32);
      }

      [v2 _peerConnectionFailure];
    }

    else if (v6)
    {
      v8 = 136315394;
      v9 = "[ADSiriConnectionRemote connectionProvider:receivedError:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Unexpected %@", &v8, 0x16u);
    }
  }
}

void sub_10030B500(uint64_t a1)
{
  v2 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADSiriConnectionRemote _setupStaleNetworkTimerForProvider:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Stale network timer firing", &v6, 0xCu);
  }

  dispatch_source_cancel(*(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(v3 + 56);
  if (*(a1 + 32) == v4)
  {
    *(v3 + 56) = 0;

    v3 = *(a1 + 40);
  }

  if (*(v3 + 40) == *(a1 + 48) && (*(v3 + 48) & 1) == 0)
  {
    v5 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[ADSiriConnectionRemote _setupStaleNetworkTimerForProvider:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Closing potentially stale network streams", &v6, 0xCu);
      v3 = *(a1 + 40);
    }

    [v3 _closeNetworkConnection];
  }
}

void sub_10030C180(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 56);
    *buf = 136315394;
    v19 = "[ADSiriConnectionRemote _establishNetworkConnectionToURL:connectionId:withPOP:countAgainstFallbacksAllowed:]_block_invoke";
    v20 = 2048;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s open complete %ld", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10030C2F0;
  v12[3] = &unk_10051B948;
  v9 = *(a1 + 56);
  v12[4] = v7;
  v16 = v9;
  v13 = v6;
  v10 = *(a1 + 48);
  v17 = *(a1 + 64);
  v14 = v10;
  v15 = v3;
  v11 = v3;
  dispatch_async(v8, v12);
}

void sub_10030C2F0(void *a1)
{
  v2 = a1[4];
  v3 = v2[522];
  v4 = a1[8];
  if (v3 != v4)
  {
    v9 = AFSiriLogContextProxy;
    if (!os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v10 = 136315650;
    v11 = "[ADSiriConnectionRemote _establishNetworkConnectionToURL:connectionId:withPOP:countAgainstFallbacksAllowed:]_block_invoke";
    v12 = 2048;
    v13 = v4;
    v14 = 2048;
    v15 = v3;
    v6 = "%s sequence number %ld doesn't match current %ld. Ignoring";
    v7 = v9;
    v8 = 32;
    goto LABEL_7;
  }

  if (v2[5] != a1[5])
  {
    v5 = AFSiriLogContextProxy;
    if (!os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v10 = 136315138;
    v11 = "[ADSiriConnectionRemote _establishNetworkConnectionToURL:connectionId:withPOP:countAgainstFallbacksAllowed:]_block_invoke";
    v6 = "%s Provider doesn't match our current provider. Ignoring";
    v7 = v5;
    v8 = 12;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, &v10, v8);
    return;
  }

  [v2 _didEstablishNetworkConnectionForProvider:? initialPayload:? ofLength:? error:?];
}

void sub_10030C5D0(uint64_t a1)
{
  v2 = AFSiriLogContextProxy;
  if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[ADSiriConnectionRemote peerStreamConnection:requestMetrics:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10030C6E0;
  v4[3] = &unk_10051B920;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _connectionMetricsWithCompletion:v4];
}

uint64_t sub_10030C6E0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10030C7F8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) isEstablishing];
  if ([*(a1 + 32) _hasPeerConnection] & 1) != 0 || (v2)
  {
    v3 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      v4 = @"have active";
      if (v2)
      {
        v4 = @"establishing";
      }

      v10 = 136315394;
      v11 = "[ADSiriConnectionRemote peerStreamConnectionHasIncomingPeer:]_block_invoke";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Already %@ peer streams", &v10, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) _establishPeerConnection];
  }

  if ([*(a1 + 32) _hasOrIsEstablishingNetworkConnection])
  {
    v5 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 40);
      v7 = v5;
      v8 = [v6 isEstablishing];
      v9 = @"have active";
      if (v8)
      {
        v9 = @"establishing";
      }

      v10 = 136315394;
      v11 = "[ADSiriConnectionRemote peerStreamConnectionHasIncomingPeer:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Already %@ network connection", &v10, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) _establishNetworkConnectionToURL:*(*(a1 + 32) + 4160) connectionId:0 withPOP:0];
  }
}

void sub_10030D0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10030D0C8(uint64_t a1, int a2, int a3, UInt8 *newBytes, CFIndex numBytes)
{
  appended = CFHTTPMessageAppendBytes(*(a1 + 40), newBytes, numBytes);
  if (appended)
  {
    *(*(*(a1 + 32) + 8) + 24) += numBytes;
  }

  return appended != 0;
}

void sub_10030D754(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[3] == *(a1 + 40))
  {
    v6 = AFSiriLogContextProxy;
    if (v3)
    {
      if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "[ADSiriConnectionRemote _establishPeerConnection]_block_invoke";
        v10 = 2114;
        v11 = v3;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Error: %{public}@", &v8, 0x16u);
        v4 = *(a1 + 32);
      }

      [v4 _closePeerConnection];
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
      {
        v8 = 136315138;
        v9 = "[ADSiriConnectionRemote _establishPeerConnection]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Peer Provider open complete", &v8, 0xCu);
        v4 = *(a1 + 32);
      }

      v7 = v4[533];
      v4[533] = 0;

      objc_storeStrong((*(a1 + 32) + 32), &_dispatch_data_empty);
      *(*(a1 + 32) + 4168) = CFHTTPMessageCreateEmpty(0, 1u);
      [*(a1 + 32) _waitForPeerData];
    }
  }

  else
  {
    v5 = AFSiriLogContextProxy;
    if (os_log_type_enabled(AFSiriLogContextProxy, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADSiriConnectionRemote _establishPeerConnection]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Ignoring completion from stale provider", &v8, 0xCu);
    }
  }
}

id sub_10030DD7C(uint64_t a1)
{
  [*(a1 + 32) _preheat];
  v2 = *(a1 + 32);

  return [v2 _registerForSleepNotification];
}

void sub_10030FFAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (v5)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 136315394;
      v16 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]_block_invoke";
      v17 = 2112;
      v18 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to save keys: %@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 136315394;
      v16 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]_block_invoke";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Successfully saved keys: %@", buf, 0x16u);
    }

    if ([*(a1 + 40) dataStoreShouldMirrorData])
    {
      v10 = +[ADCloudKitManager sharedManager];
      v11 = *(a1 + 48);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1003101A0;
      v13[3] = &unk_10051D5B0;
      v14 = *(a1 + 32);
      [v10 saveKeyValueRecordsWithDictionary:v11 mirror:1 completion:v13];
    }
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, v5);
  }
}

void sub_1003101A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  v8 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v12 = 136315394;
      v13 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      v10 = "%s Failed to save mirror keys: %@";
LABEL_7:
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v10, &v12, 0x16u);
    }
  }

  else if (v8)
  {
    v11 = *(a1 + 32);
    v12 = 136315394;
    v13 = "[ADCloudKitKeyValueDataStore _mergeDataWithModifiedRecords:deletedRecordIDs:containsAllChanges:completion:]_block_invoke";
    v14 = 2112;
    v15 = v11;
    v10 = "%s Successfully saved mirror keys: %@";
    goto LABEL_7;
  }
}

void sub_100310828(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (v5)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 136315394;
      v15 = "[ADCloudKitKeyValueDataStore synchronizeKeychainPreferencesWithCompletion:]_block_invoke";
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to save keys: %@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 136315394;
      v15 = "[ADCloudKitKeyValueDataStore synchronizeKeychainPreferencesWithCompletion:]_block_invoke";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Successfully saved keys: %@", buf, 0x16u);
    }

    if ([*(a1 + 40) dataStoreShouldMirrorData])
    {
      v10 = +[ADCloudKitManager sharedManager];
      v11 = *(a1 + 48);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100310A04;
      v12[3] = &unk_10051D5B0;
      v13 = *(a1 + 32);
      [v10 saveKeyValueRecordsWithDictionary:v11 mirror:1 completion:v12];
    }
  }
}

void sub_100310A04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 136315394;
      v10 = "[ADCloudKitKeyValueDataStore synchronizeKeychainPreferencesWithCompletion:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to save mirror keys: %@", &v9, 0x16u);
    }
  }
}

void sub_100311CAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (v5)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 136315650;
      v19 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]_block_invoke";
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to save keys (%@) with error: %@", buf, 0x20u);
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_12:
      v9();
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 136315394;
      v19 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]_block_invoke";
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Successfully saved keys: %@", buf, 0x16u);
    }

    if ([*(a1 + 40) dataStoreShouldMirrorData])
    {
      v11 = +[ADCloudKitManager sharedManager];
      v12 = *(a1 + 48);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100311FDC;
      v15[3] = &unk_10051D600;
      v16 = *(a1 + 32);
      v17 = *(a1 + 56);
      [v11 saveKeyValueRecordsWithDictionary:v12 mirror:1 completion:v15];
    }

    else
    {
      v13 = *(a1 + 56);
      if (v13)
      {
        v9 = *(v13 + 16);
        goto LABEL_12;
      }
    }
  }
}

void sub_100311ED8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 136315650;
    v11 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]_block_invoke";
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to save keys (%@) with error: %@", &v10, 0x20u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, 0);
  }
}

void sub_100311FDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 136315394;
      v11 = "[ADCloudKitKeyValueDataStore synchronizeWithCompletion:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to save mirror keys: %@", &v10, 0x16u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, 1);
  }
}

void sub_10031243C(id a1, NSException *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitKeyValueDataStore setServerChangeToken:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error encountered while encoding key-value store server change token: %@", &v4, 0x16u);
  }
}

void sub_100312588(id a1, NSException *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitKeyValueDataStore serverChangeToken]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error encountered while decoding key-value store server change token: %@", &v4, 0x16u);
  }
}

void sub_100312FB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  _Block_object_dispose((v2 - 120), 8);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_100312FE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100313000(uint64_t a1, uint64_t a2)
{
  if (a2 == -2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained timeoutDetected];
  }
}

void sub_100313058(uint64_t a1)
{
  [*(a1 + 32) invokeWithSignal:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003130E0;
  block[3] = &unk_10051E1C8;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 48);
  dispatch_async(v2, block);
}

void sub_1003133B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003133E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained heartBeatFiredWithQueue:*(a1 + 32)];
}

void sub_100313838(id a1)
{
  v1 = objc_alloc_init(ADQueueMonitor);
  v2 = qword_1005909D8;
  qword_1005909D8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100313D60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setUUID:v3];
  [v4 setProperties:*(a1 + 40)];
}

id sub_100314870()
{
  if (qword_100590A08 != -1)
  {
    dispatch_once(&qword_100590A08, &stru_10051BB68);
  }

  v1 = qword_1005909E8;

  return v1;
}

void sub_1003148C4(id a1)
{
  if (qword_1005909F8 != -1)
  {
    dispatch_once(&qword_1005909F8, &stru_10051BB48);
  }

  v1 = dlsym(qword_100590A00, "ANUserInfoLatestAnnouncementIDKey");
  if (v1)
  {
    objc_storeStrong(&qword_1005909E8, *v1);
  }

  off_10058E8D0 = sub_10031493C;
}

id sub_100314974()
{
  if (qword_1005909F0 != -1)
  {
    dispatch_once(&qword_1005909F0, &stru_10051BB28);
  }

  v1 = qword_1005909E0;

  return v1;
}

void sub_1003149C8(id a1)
{
  if (qword_1005909F8 != -1)
  {
    dispatch_once(&qword_1005909F8, &stru_10051BB48);
  }

  v1 = dlsym(qword_100590A00, "ANUserInfoNotificationTypeKey");
  if (v1)
  {
    objc_storeStrong(&qword_1005909E0, *v1);
  }

  off_10058E8C8 = sub_100314A40;
}

void sub_10031534C(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    v3 = +[AFPreferences sharedPreferences];
    v4 = [v3 languageCode];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1003158F4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[ADIntentVocabularyUpdateConnection _deleteEverythingOnBehalfOf:withDataStorageManager:]_block_invoke";
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s User-vocabulary updates are throttled for %{public}@ not pushing delete", &v7, 0x16u);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v4 _triggerUserVocabularySyncAttributingApp:v5 vocabType:@"RESET"];
  }
}

void sub_100315AF0(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    [v3 _triggerUserVocabularySyncAttributingApp:v4 vocabType:v5];
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      v8 = a1[6];
      v9 = 136315650;
      v10 = "[ADIntentVocabularyUpdateConnection _askToSyncSlot:onBehalfOf:]_block_invoke";
      v11 = 2114;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Ignoring attempt by %{public}@ to update %{public}@", &v9, 0x20u);
    }
  }
}

uint64_t sub_100315E14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100315FCC;
    v14[3] = &unk_10051BB90;
    v13 = *(a1 + 48);
    v6 = v13.i64[0];
    v15 = vextq_s8(v13, v13, 8uLL);
    v16 = *(a1 + 64);
    [v4 writeLatestVocabularyItems:v5 forIntentSlot:v6 completion:v14];
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = v7;
      v11 = [v9 appBundleID];
      v12 = *(a1 + 48);
      *buf = 136315650;
      v18 = "[ADIntentVocabularyUpdateConnection _recordVocabulary:forIntentSlot:onBehalfOf:withDataStorageManager:withValidationCompletion:]_block_invoke";
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %{public}@ is not allowed to sync user vocabulary of type %{public}@", buf, 0x20u);
    }
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100315FCC(void *a1, int a2)
{
  if (a2)
  {
    if ([_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:*(a1[4] + 8) intentSlot:a1[5]]== 3)
    {
      notify_post(INVoocabularyChangedNotification);
      v3 = a1[4];
      v4 = a1[5];
      v5 = a1[6];

      [v3 askToSyncSlot:v4 onBehalfOf:v5];
    }

    else
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1[4] + 8);
        v8 = 136315394;
        v9 = "[ADIntentVocabularyUpdateConnection _recordVocabulary:forIntentSlot:onBehalfOf:withDataStorageManager:withValidationCompletion:]_block_invoke_2";
        v10 = 2112;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Vocabulary updates are disabled for %@, acting as-if there are no changes.", &v8, 0x16u);
      }
    }
  }
}

id sub_100316A08()
{
  if (qword_100590A50 != -1)
  {
    dispatch_once(&qword_100590A50, &stru_10051BCA8);
  }

  v1 = qword_100590A58;

  return v1;
}

void sub_100316A5C(id a1)
{
  if (qword_100590A30 != -1)
  {
    dispatch_once(&qword_100590A30, &stru_10051BC68);
  }

  qword_100590A58 = objc_getClass("ANAnnounceFeatureStatus");
  off_10058E9A8 = sub_100316AC0;
}

uint64_t sub_100316C8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100316CA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  v5 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v11 = 136315394;
      v12 = "[ADHomeAnnouncementService _stopPlayback]_block_invoke";
      v13 = 2112;
      v14 = v3;
      v6 = "%s Failed asking Announce to stop playing due to error %@.";
      v7 = v4;
      v8 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, &v11, v8);
    }
  }

  else if (v5)
  {
    v11 = 136315138;
    v12 = "[ADHomeAnnouncementService _stopPlayback]_block_invoke";
    v6 = "%s Done asking Announce to stop playing.";
    v7 = v4;
    v8 = 12;
    goto LABEL_6;
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

id sub_100316DC8()
{
  if (qword_100590A40 != -1)
  {
    dispatch_once(&qword_100590A40, &stru_10051BC88);
  }

  v1 = qword_100590A48;

  return v1;
}

void sub_100316E1C(id a1)
{
  if (qword_100590A30 != -1)
  {
    dispatch_once(&qword_100590A30, &stru_10051BC68);
  }

  qword_100590A48 = objc_getClass("ANLocalPlaybackSession");
  off_10058E9A0 = sub_100316E80;
}

void sub_100316F8C(uint64_t a1, uint64_t a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADHomeAnnouncementService _stopPlaybackIfNeeded]_block_invoke";
    v7 = 2048;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Announce state is %llu.", &v5, 0x16u);
  }

  if (a2 == 1)
  {
    [*(a1 + 32) _stopPlayback];
  }
}

id sub_1003170DC(uint64_t a1)
{
  result = +[AFFeatureFlags isAnnounceEnabled];
  if (result)
  {
    result = [*(a1 + 32) _shouldStopPlaybackWhenRequestBegins];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 _stopPlaybackIfNeeded];
    }
  }

  return result;
}

id sub_10031730C()
{
  if (qword_100590A28 != -1)
  {
    dispatch_once(&qword_100590A28, &stru_10051BC48);
  }

  v1 = qword_100590A20;

  return v1;
}

void sub_100317360(id a1)
{
  if (qword_100590A30 != -1)
  {
    dispatch_once(&qword_100590A30, &stru_10051BC68);
  }

  v1 = dlsym(qword_100590A38, "kANAnnounceStateNotificationKey");
  if (v1)
  {
    objc_storeStrong(&qword_100590A20, *v1);
  }

  off_10058E998 = sub_1003173D8;
}

void sub_1003174B4(id a1)
{
  v1 = [ADHomeAnnouncementService alloc];
  v4 = +[AFInstanceContext currentContext];
  v2 = [(ADHomeAnnouncementService *)v1 initWithInstanceContext:v4];
  v3 = qword_100590A18;
  qword_100590A18 = v2;
}

void sub_1003183E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = WeakRetained[2];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) availableAnnouncementRequestTypesChanged:*(a1 + 48) onPlatform:{objc_msgSend(objc_opt_class(), "platform", v9)}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

void sub_100318680(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = WeakRetained[2];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) eligibleAnnouncementRequestTypesChanged:*(a1 + 48) onPlatform:{objc_msgSend(objc_opt_class(), "platform", v9)}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

void sub_10031887C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_1003189A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] addObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_1003196A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1003196C8(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100590A68)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100319B14;
    v6[4] = &unk_10051E200;
    v6[5] = v6;
    v7 = off_10051BCF0;
    v8 = 0;
    qword_100590A68 = _sl_dlopen();
  }

  if (!qword_100590A68)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *CoreServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"AFSiriAnnouncementRequestCapabilityManager.m" lineNumber:18 description:{@"%s", v6[0]}];

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
    [v3 handleFailureInFunction:v5 file:@"AFSiriAnnouncementRequestCapabilityManager.m" lineNumber:19 description:{@"Unable to find class %s", "LSApplicationRecord"}];

LABEL_10:
    __break(1u);
  }

  qword_100590A60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1003198B4(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100590A78)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100319AA0;
    v6[4] = &unk_10051E200;
    v6[5] = v6;
    v7 = off_10051BD08;
    v8 = 0;
    qword_100590A78 = _sl_dlopen();
  }

  if (!qword_100590A78)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *IntentsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"AFSiriAnnouncementRequestCapabilityManager.m" lineNumber:24 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("INAppInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getINAppInfoClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"AFSiriAnnouncementRequestCapabilityManager.m" lineNumber:25 description:{@"Unable to find class %s", "INAppInfo"}];

LABEL_10:
    __break(1u);
  }

  qword_100590A70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100319AA0()
{
  result = _sl_dlopen();
  qword_100590A78 = result;
  return result;
}

uint64_t sub_100319B14()
{
  result = _sl_dlopen();
  qword_100590A68 = result;
  return result;
}

void sub_10031A4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10031A520(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10031A538(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v13 = v3;
  v5 = [v3 firedDate];
  v6 = v5;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  if (v4)
  {
    [v5 timeIntervalSinceDate:v8];
    v10 = v9;

    if (v10 <= 0.0)
    {
      goto LABEL_6;
    }

    v11 = [v13 firedDate];
    v12 = *(*(a1 + 40) + 8);
    v8 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    *(v7 + 40) = v5;
  }

LABEL_6:
}

void sub_10031A600(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v13 = v3;
  v5 = [v3 firedDate];
  v6 = v5;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  if (v4)
  {
    [v5 timeIntervalSinceDate:v8];
    v10 = v9;

    if (v10 <= 0.0)
    {
      goto LABEL_6;
    }

    v11 = [v13 firedDate];
    v12 = *(*(a1 + 40) + 8);
    v8 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    *(v7 + 40) = v5;
  }

LABEL_6:
}

void sub_10031A8DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) _halDeviceFromContext:v5 proximity:{objc_msgSend(a3, "integerValue")}];

  [*(a1 + 40) addObject:v6];
}

id sub_10031AD70(void *a1)
{
  v1 = a1;
  v2 = [CKContainer containerWithIdentifier:v1];
  v3 = objc_opt_new();
  [v3 setUseZoneWidePCS:1];
  v4 = [CKContainer alloc];
  v5 = [v2 containerID];
  v6 = [v4 initWithContainerID:v5 options:v3];

  return v6;
}

void sub_10031AFE0(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = [[CKRecordZone alloc] initWithZoneID:v7];
    v12 = v11;
    if (a3)
    {
      v13 = 11;
    }

    else
    {
      v13 = 3;
    }

    [v11 setCapabilities:v13];
    v14 = [CKModifyRecordZonesOperation alloc];
    v28 = v12;
    v15 = [NSArray arrayWithObjects:&v28 count:1];
    v16 = [v14 initWithRecordZonesToSave:v15 recordZoneIDsToDelete:0];

    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10031B258;
    v23 = &unk_10051BDC0;
    v24 = v7;
    v25 = v10;
    [v16 setModifyRecordZonesCompletionBlock:&v20];
    v17 = objc_alloc_init(CKOperationConfiguration);
    [v17 setDiscretionaryNetworkBehavior:{0, v20, v21, v22, v23}];
    [v17 setAutomaticallyRetryNetworkFailures:0];
    [v16 setConfiguration:v17];
    [v16 setQualityOfService:17];
    v18 = [v8 privateCloudDatabase];
    [v18 addOperation:v16];

LABEL_10:
    goto LABEL_11;
  }

  if (v9)
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "ADCloudKitCreateRecordZoneWithID";
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s No container specified", buf, 0xCu);
    }

    v12 = [AFError errorWithCode:4023];
    (v10)[2](v10, v12, 0);
    goto LABEL_10;
  }

LABEL_11:
}

void sub_10031B258(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = v10;
      v15 = [v13 zoneName];
      v16 = 136315650;
      v17 = "ADCloudKitCreateRecordZoneWithID_block_invoke";
      v18 = 2112;
      v19 = v15;
      v20 = 2112;
      v21 = v9;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Error creating zone (%@): (%@)", &v16, 0x20u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [v7 firstObject];
    (*(v11 + 16))(v11, v9, v12);
  }
}

uint64_t sub_10031B3B4(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:CKErrorDomain];

  if (!v3)
  {
    goto LABEL_14;
  }

  if ([v1 code] == 26)
  {
    v4 = 1;
    goto LABEL_15;
  }

  if ([v1 code] != 2)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v5 = [v1 userInfo];
  v6 = [v5 objectForKey:CKPartialErrorsByItemIDKey];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = [v6 allValues];
  v4 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v11 + 1) + 8 * i) code] == 26)
        {
          v4 = 1;
          goto LABEL_17;
        }
      }

      v4 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

LABEL_15:
  return v4;
}

uint64_t sub_10031B554(void *a1)
{
  v1 = a1;
  if (CKCanRetryForError() && ([v1 userInfo], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "objectForKey:", CKErrorRetryAfterKey), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 domain];
    v6 = [v5 isEqualToString:CKErrorDomain];

    if (v6)
    {
      v7 = [v1 code];
      if (v7 <= 0x17)
      {
        v4 = 0x8000C0u >> v7;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 & 1;
}

BOOL sub_10031B61C(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:CKErrorDomain] && objc_msgSend(v1, "code") == 21)
  {
    v3 = 1;
  }

  else
  {
    v4 = [v1 domain];
    if ([v4 isEqualToString:CKInternalErrorDomain])
    {
      v3 = [v1 code] == 2026;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t sub_10031B6CC(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:CKErrorDomain];

  if (v3)
  {
    if ([v1 code] == 112)
    {
LABEL_17:
      v15 = +[AFAnalytics sharedAnalytics];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10031B924;
      v17[3] = &unk_10051DF78;
      v18 = v1;
      [v15 logEventWithType:6103 contextProvider:v17];

      v14 = 1;
      v5 = v18;
LABEL_18:

      goto LABEL_19;
    }

    if ([v1 code] == 2)
    {
      v4 = [v1 userInfo];
      v5 = [v4 objectForKey:CKPartialErrorsByItemIDKey];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = [v5 allValues];
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v20;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            v12 = [v11 domain];
            if ([v12 isEqualToString:CKErrorDomain])
            {
              v13 = [v11 code];

              if (v13 == 112)
              {

                goto LABEL_17;
              }
            }

            else
            {
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v8);
      }

      v14 = 0;
      goto LABEL_18;
    }
  }

  v14 = 0;
LABEL_19:

  return v14;
}

id sub_10031B92C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 code] == 2)
  {
    if (v4)
    {
      v5 = [v3 userInfo];
      v6 = [v5 objectForKey:CKPartialErrorsByItemIDKey];

      v7 = [v6 objectForKey:v4];
      v8 = [v7 userInfo];
      v9 = [v8 objectForKey:NSUnderlyingErrorKey];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = [v3 userInfo];
    v9 = [v10 objectForKey:NSUnderlyingErrorKey];

    if (!v9)
    {
      v9 = v3;
    }
  }

  return v9;
}

BOOL sub_10031BA50(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:kAFAssistantErrorDomain])
  {
    v3 = [v1 code] == 4020;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_10031BAC0(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKey:NSUnderlyingErrorKey];

  v4 = [v1 domain];
  if ([v4 isEqualToString:CKErrorDomain] && objc_msgSend(v1, "code") == 2)
  {

    goto LABEL_6;
  }

  v5 = [v3 domain];
  if (([v5 isEqualToString:CKErrorDomain] & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v6 = [v3 code];

  if (v6 == 2)
  {
LABEL_6:
    v7 = [v1 userInfo];
    v4 = [v7 objectForKey:CKPartialErrorsByItemIDKey];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v4 allValues];
    v8 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 domain];
          if ([v13 isEqualToString:CKErrorDomain])
          {
            v14 = [v12 code];

            if (v14 == 111)
            {

              v15 = +[AFAnalytics sharedAnalytics];
              v18[0] = _NSConcreteStackBlock;
              v18[1] = 3221225472;
              v18[2] = sub_10031BD6C;
              v18[3] = &unk_10051DF78;
              v19 = v1;
              [v15 logEventWithType:4103 contextProvider:v18];

              v16 = 1;
              goto LABEL_19;
            }
          }

          else
          {
          }
        }

        v9 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    goto LABEL_17;
  }

LABEL_18:
  v16 = 0;
LABEL_19:

  return v16;
}

BOOL sub_10031BD74(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:CKErrorDomain];

  if (v3)
  {
    v4 = [v1 code] == 3 || objc_msgSend(v1, "code") == 4;
    v5 = [v1 userInfo];
    v6 = [v5 objectForKey:NSUnderlyingErrorKey];

    if (!v4 && [v1 code] == 2)
    {
LABEL_11:
      v9 = [v1 userInfo];
      v10 = [v9 objectForKey:CKPartialErrorsByItemIDKey];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = v10;
      v11 = [v10 allValues];
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v12)
      {
        goto LABEL_24;
      }

      v13 = v12;
      v14 = *v22;
      while (1)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = [v16 domain];
          if (![v17 isEqualToString:CKErrorDomain])
          {

            continue;
          }

          if ([v16 code] == 3)
          {
          }

          else
          {
            v18 = [v1 code];

            if (v18 != 4)
            {
              continue;
            }
          }

          v4 = 1;
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (!v13)
        {
LABEL_24:

          goto LABEL_26;
        }
      }
    }

    v7 = [v6 domain];
    if ([v7 isEqualToString:CKErrorDomain])
    {
      v8 = [v6 code];

      if (v8 != 2)
      {
        goto LABEL_26;
      }

      goto LABEL_11;
    }

LABEL_26:
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10031BFF0(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:CKErrorDomain];

  if (v3)
  {
    v4 = [v1 code];
    v5 = [v1 userInfo];
    v6 = [v5 objectForKey:NSUnderlyingErrorKey];

    v7 = v4 == 14;
    if (v4 != 14 && [v1 code] == 2)
    {
      goto LABEL_6;
    }

    v8 = [v6 domain];
    if ([v8 isEqualToString:CKErrorDomain])
    {
      v9 = [v6 code];

      if (v9 == 2)
      {
LABEL_6:
        v10 = [v1 userInfo];
        v11 = [v10 objectForKey:CKPartialErrorsByItemIDKey];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v21 = v11;
        v12 = [v11 allValues];
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v22 + 1) + 8 * i);
              v18 = [v17 domain];
              if ([v18 isEqualToString:CKErrorDomain])
              {
                v19 = [v17 code] == 14;

                v7 |= v19;
              }

              else
              {
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v14);
        }
      }
    }

    else
    {
    }

    goto LABEL_20;
  }

  v7 = 0;
LABEL_20:

  return v7 & 1;
}

uint64_t sub_10031C238(void *a1)
{
  v1 = a1;
  if ((sub_10031B554(v1) & 1) != 0 || sub_10031BD74(v1))
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_10031BFF0(v1);
  }

  return v2;
}

id sub_10031C4B8(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 32) count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _stopObserving];
  }

  return result;
}

id sub_10031C5AC(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 32) count];
  if (result == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _startObserving];
  }

  return result;
}

void sub_10031C680(uint64_t a1)
{
  v2 = +[VTPreferences sharedPreferences];
  v3 = [v2 voiceTriggerEnabled];

  v4 = +[AFPreferences sharedPreferences];
  v5 = [v4 languageCode];

  v6 = *(a1 + 32);
  v7 = *(v6 + 9);
  if (v7 != v3)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = @"disabled";
      if (v3)
      {
        v9 = @"enabled";
      }

      v18 = 136315394;
      v19 = "[ADVoiceTriggerInCallAvailabilityObserver _voiceTriggerEnabledDidChange]_block_invoke";
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Voice Trigger is now %@", &v18, 0x16u);
      v6 = *(a1 + 32);
    }

    *(v6 + 9) = v3;
    v6 = *(a1 + 32);
  }

  v10 = *(v6 + 16);
  if (v10)
  {
    if ([v10 isEqualToString:v5])
    {
      if (v7 == v3)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }

    v6 = *(a1 + 32);
  }

  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v12 = *(v6 + 16);
    v18 = 136315650;
    v19 = "[ADVoiceTriggerInCallAvailabilityObserver _voiceTriggerEnabledDidChange]_block_invoke";
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Siri Language changed from %@ to %@", &v18, 0x20u);
    v6 = *(a1 + 32);
  }

  objc_storeStrong((v6 + 16), v5);
LABEL_15:
  v13 = AFSupportsCallHangUp();
  v14 = *(a1 + 32);
  if (*(v14 + 8) != v13)
  {
    v15 = v13;
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v17 = @"unavailable";
      if (v15)
      {
        v17 = @"available";
      }

      v18 = 136315394;
      v19 = "[ADVoiceTriggerInCallAvailabilityObserver _voiceTriggerEnabledDidChange]_block_invoke";
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Voice Trigger in-call is now %@", &v18, 0x16u);
      v14 = *(a1 + 32);
    }

    *(v14 + 8) = v15;
    [*(a1 + 32) notifyDelegates];
  }

LABEL_21:
}

void sub_10031CAB4(id a1)
{
  v1 = objc_alloc_init(ADVoiceTriggerInCallAvailabilityObserver);
  v2 = qword_100590A88;
  qword_100590A88 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10031CCC8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) automotive];
  if (result)
  {
    result = [*(*(a1 + 32) + 16) stationary];
    v3 = result ^ 1;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

uint64_t sub_10031CEA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10031CEC0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) confidence];
  v3 = v2;
  if (v2 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSNumber numberWithDouble:dbl_1003F07A0[v2]];
  }

  v5 = v4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (v3 <= 2)
  {
  }
}

uint64_t sub_10031D0B0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[ADMotionManager stopUpdatingMotionActivityForReason:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Stopping activity updates", &v4, 0xCu);
  }

  [*(*(a1 + 32) + 8) stopActivityUpdates];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10031D2C8(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8) && +[CMMotionActivityManager isActivityAvailable])
  {
    v2 = objc_alloc_init(CMMotionActivityManager);
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;
  }

  v5 = *(a1 + 32);
  if (v5[1])
  {
    objc_initWeak(&location, v5);
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = "[ADMotionManager startUpdatingMotionActivityForReason:completion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Starting activity updates", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v9 = *(v7 + 24);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10031D4D4;
    v13[3] = &unk_10051BE08;
    objc_copyWeak(&v14, &location);
    [v8 startActivityUpdatesToQueue:v9 withHandler:v13];
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 1);
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = *(v11 + 16);

      v12();
    }
  }
}

void sub_10031D4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10031D4D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10031D588;
    v7[3] = &unk_10051E010;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

id sub_10031D588(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ADMotionManager startUpdatingMotionActivityForReason:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v4;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s motionActivity updated = %@", &v5, 0x16u);
  }

  return [*(a1 + 40) _setMotionActivity:*(a1 + 32)];
}

void sub_10031D7D8(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADMotionManager init]_block_invoke";
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

void sub_10031DC5C(id val)
{
  objc_initWeak(&location, val);
  v3 = _NSConcreteStackBlock;
  v4 = 3221225472;
  v5 = sub_10031DD28;
  v6 = &unk_10051C100;
  objc_copyWeak(&v7, &location);
  v2 = [val _serviceDelegateWithErrorHandler:&v3];
  [v2 endWaitingForEmergency];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_10031DD0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10031DD28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 136315650;
    v8 = "[ADClientConnection endWaitingForEmergency]_block_invoke";
    v9 = 2048;
    v10 = WeakRetained;
    v11 = 2114;
    v12 = v3;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s %p Failure sending endWaitingForEmergency to client %{public}@", &v7, 0x20u);
  }
}

void sub_10031E32C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADClientConnection _fetchAppContextForApplicationInfo:reply:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Sending context to tool %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10031E5C4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:AceObjectGroupPListKey];
  v3 = [*(a1 + 32) objectForKey:AceObjectClassPListKey];
  v4 = +[ADCommandCenter sharedCommandCenter];
  v5 = [v4 _serviceManager];

  v6 = [v5 serviceForIdentifier:*(a1 + 40)];
  if (v6 || ([v5 serviceForDomain:v2 command:v3], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [NSString stringWithFormat:@"SA%@", v3];
    v9 = [objc_alloc(NSClassFromString(v8)) initWithDictionary:*(a1 + 32)];
    v10 = [[SAGenericCommand alloc] initWithDictionary:*(a1 + 32)];
    v11 = [v10 groupIdentifier];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10031E7B8;
    v13[3] = &unk_10051CD88;
    v14 = *(a1 + 48);
    [v7 handleCommand:v9 forDomain:v11 executionContext:0 reply:v13];
  }

  else
  {
    v12 = *(a1 + 48);
    v7 = [AFError errorWithCode:100];
    (*(v12 + 16))(v12, 0, v7);
  }
}

void sub_10031E7B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = &stru_10051F508;
    *v11 = 136315650;
    *&v11[4] = "[ADClientConnection _performTaskCommandDictionary:forBundleIdentifier:reply:]_block_invoke_2";
    *&v11[12] = 2112;
    if (v6)
    {
      v8 = v6;
    }

    *&v11[14] = v5;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s returning bundle reply %@ %@", v11, 0x20u);
  }

  v9 = *(a1 + 32);
  v10 = [v5 dictionary];
  (*(v9 + 16))(v9, v10, v6);
}

void sub_10031E9E0(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:AceObjectGroupPListKey];
  v3 = [*(a1 + 32) objectForKey:AceObjectClassPListKey];
  v4 = +[ADCommandCenter sharedCommandCenter];
  v5 = [v4 _serviceManager];

  v6 = [v5 serviceForIdentifier:*(a1 + 40)];
  if (v6 || ([v5 serviceForDomain:v2 command:v3], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [SAGenericCommand aceObjectWithDictionary:*(a1 + 32)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = +[ADCommandCenter sharedCommandCenter];
      v10 = [v8 refId];
      v11 = NSStringFromSelector(*(a1 + 56));
      [v9 _addOutstandingRequestId:v10 forReason:v11];
    }

    v12 = [v8 groupIdentifier];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10031EC04;
    v14[3] = &unk_10051CD88;
    v15 = *(a1 + 48);
    [v7 handleCommand:v8 forDomain:v12 executionContext:0 reply:v14];
  }

  else
  {
    v13 = *(a1 + 48);
    v7 = [AFError errorWithCode:100];
    (*(v13 + 16))(v13, 0, v7);
  }
}

void sub_10031EC04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = &stru_10051F508;
    *v11 = 136315650;
    *&v11[4] = "[ADClientConnection _performCommandDictionary:forBundleIdentifier:reply:]_block_invoke_2";
    *&v11[12] = 2112;
    if (v6)
    {
      v8 = v6;
    }

    *&v11[14] = v5;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s returning bundle reply %@ %@", v11, 0x20u);
  }

  v9 = *(a1 + 32);
  v10 = [v5 dictionary];
  (*(v9 + 16))(v9, v10, v6);
}

void sub_10031EEAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dictionary];
  (*(v2 + 16))(v2, v3);
}

void sub_10031F594(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10031F6D8;
  v10[3] = &unk_10051DD20;
  v4 = objc_alloc_init(NSMutableDictionary);
  v11 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v10];

  v5 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10031F738;
  v8[3] = &unk_10051DD48;
  v9 = v4;
  v6 = v4;
  v7 = [AFClockTimerSnapshot newWithBuilder:v8];
  (*(v5 + 16))(v5, v7, 0);
}

void sub_10031F6D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 timersByID];
  if ([v4 count])
  {
    [*(a1 + 32) addEntriesFromDictionary:v4];
  }
}

void sub_10031F738(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = +[NSDate date];
  [v4 setDate:v3];

  [v4 setTimersByID:*(a1 + 32)];
}

void sub_10031F980(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v10 identifier];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100320AEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100320B88;
  v7[3] = &unk_10051E038;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100320B88(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 88))
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[ADClientConnection startRecordingForPendingSpeechRequestWithOptions:requestId:sessionUUID:completion:]_block_invoke_2";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Shouldn't have a pending request, continuing and canceling it now.", &v10, 0xCu);
      v3 = *(a1 + 32);
    }

    [v3 _continuePendingSpeechRequestFromTimestamp:0.0];
    v3 = *(a1 + 32);
  }

  if (*(v3 + 129) == 1)
  {
    a2.n128_u64[0] = *(v3 + 80);
    v5 = *(a1 + 40);
    if (a2.n128_f64[0] >= 0.0)
    {
      v5[2](a2);
    }

    else
    {
      v6 = objc_retainBlock(v5);
      v7 = *(a1 + 32);
      v8 = *(v7 + 88);
      *(v7 + 88) = v6;
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      a2.n128_u64[0] = 0;
      (*(v9 + 16))(a2);
    }
  }
}

uint64_t sub_100320E58(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = *(v4 + 24);
  v8 = v3;
  if (v5 == a1[5])
  {
    *(v4 + 24) = 0;

    v3 = v8;
  }

  v6 = a1[6];
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v8);
    v3 = v8;
  }

  return _objc_release_x1(v6, v3);
}

uint64_t sub_1003217EC(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100321B7C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100321C7C;
  block[3] = &unk_10051DB68;
  block[4] = v10;
  v12 = v7;
  v16 = v12;
  v13 = v8;
  v17 = v13;
  dispatch_async(v11, block);
  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v9);
  }
}

id sub_100321C7C(uint64_t a1)
{
  [*(a1 + 32) _addAudioSessionAssertion:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _setBluetoothDevice:v3];
}

void sub_100322124(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 136))
  {
    if ([*(a1 + 48) primaryInEarStatus] == 3 && objc_msgSend(*(a1 + 56), "primaryInEarStatus") != 3)
    {
      v3 = AFSiriLogContextDaemon;
      v2 = 1;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 32);
        *buf = 136315394;
        v15 = "[ADClientConnection bluetoothDevice:headphoneInEarDetectionStateDidChangeFrom:to:]_block_invoke";
        v16 = 2112;
        v17 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %@ primary earbud becomes out of ear.", buf, 0x16u);
      }
    }

    else
    {
      v2 = 0;
    }

    if ([*(a1 + 48) secondaryInEarStatus] == 3 && objc_msgSend(*(a1 + 56), "secondaryInEarStatus") != 3)
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        *buf = 136315394;
        v15 = "[ADClientConnection bluetoothDevice:headphoneInEarDetectionStateDidChangeFrom:to:]_block_invoke";
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@ secondary earbud becomes out of ear.", buf, 0x16u);
      }
    }

    else if (!v2)
    {
      return;
    }

    v7 = +[ADCommandCenter sharedCommandCenter];
    v8 = [v7 _queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100322358;
    block[3] = &unk_10051E128;
    v13 = *(a1 + 64);
    v10 = *(a1 + 32);
    v9 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    dispatch_async(v8, block);
  }
}

void sub_100322358(void *a1)
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v3 = [v2 _currentClient];
  v4 = a1[4];

  if (v3 == v4)
  {
    v7 = [*(a1[4] + 24) activationEvent];
    v9 = v7 == 6 || v7 == 9;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10032258C;
    v14[3] = &unk_10051BFD0;
    v10 = a1[5];
    v16 = a1[6];
    v15 = v10;
    v17 = v9;
    v11 = [AFSiriActivationContext newWithBuilder:v14];
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v19 = "[ADClientConnection bluetoothDevice:headphoneInEarDetectionStateDidChangeFrom:to:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Asking activation service to deactivate...", buf, 0xCu);
    }

    v13 = +[AFSiriActivationConnection sharedConnection];
    [v13 deactivateForReason:2 options:0 context:v11 completion:&stru_10051BFF0];

    [0 deactivateForReason:2 options:0 context:v11 completion:&stru_10051C010];
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = a1[4];
      *buf = 136315394;
      v19 = "[ADClientConnection bluetoothDevice:headphoneInEarDetectionStateDidChangeFrom:to:]_block_invoke";
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@ is not the current client.", buf, 0x16u);
    }
  }
}

void sub_10032258C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setTimestamp:v3];
  [v4 setSource:4];
  [v4 setEvent:11];
  v5 = [*(a1 + 32) identifier];
  [v4 setDeviceID:v5];

  v11 = AFSiriActivationUserInfoKey[3];
  v9 = @"inSpokenNotification";
  v6 = [NSNumber numberWithBool:*(a1 + 48)];
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v4 setUserInfo:v8];
}

void sub_1003226C8(id a1, AFSiriActivationResult *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADClientConnection bluetoothDevice:headphoneInEarDetectionStateDidChangeFrom:to:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s result = %@", &v4, 0x16u);
  }
}

void sub_100322788(id a1, AFSiriActivationResult *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADClientConnection bluetoothDevice:headphoneInEarDetectionStateDidChangeFrom:to:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s result = %@", &v4, 0x16u);
  }
}

void sub_100322A1C(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 audioPlaybackRequestDidStop:*(a1 + 40) error:*(a1 + 48)];
}

void sub_100322B08(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 audioPlaybackRequestDidStart:*(a1 + 40)];
}

void sub_100322BF4(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 audioPlaybackRequestWillStart:*(a1 + 40)];
}

void sub_100322D68(uint64_t a1)
{
  v2 = +[ADSpeechManager sharedManager];
  v3 = [v2 audioSessionController];
  v4 = [v3 getAudioSessionID];

  v5 = [*(a1 + 32) _serviceDelegate];
  [v5 audioSessionIDChanged:v4];
}

void sub_100322F14(uint64_t a1)
{
  v1 = [*(a1 + 32) _serviceDelegate];
  [v1 audioSessionIDChanged:0];
}

void sub_10032307C(uint64_t a1)
{
  v2 = +[ADSpeechManager sharedManager];
  v3 = [v2 audioSessionController];
  v4 = [v3 getAudioSessionID];

  v5 = [*(a1 + 32) _serviceDelegate];
  [v5 audioSessionIDChanged:v4];
}

void sub_100323228(uint64_t a1)
{
  v1 = [*(a1 + 32) _serviceDelegate];
  [v1 audioSessionIDChanged:0];
}

void sub_1003234C0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if (v2 != 1)
    {
      return;
    }

    v4 = [*(a1 + 32) _serviceDelegate];
    [v4 audioSessionDidBeginInterruptionWithUserInfo:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = [*(a1 + 32) _serviceDelegate];
    [v4 audioSessionDidEndInterruption:v3 & 1 userInfo:*(a1 + 40)];
  }
}

id sub_1003235D0(uint64_t a1)
{
  [*(a1 + 32) _setADShouldSpeak:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _logShouldSpeakState:v3];
}

void sub_100323728(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v2 = dispatch_group_create();
    objc_storeStrong((*(a1 + 32) + 48), v2);
  }

  dispatch_group_enter(v2);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "[ADClientConnection adSpeechRecordingPerformTwoShotPromptWithType:context:completion:]_block_invoke";
    v23 = 2112;
    v24 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Entered request group %@.", buf, 0x16u);
  }

  v4 = [AFSafetyBlock alloc];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100323998;
  v19[3] = &unk_10051BF08;
  v20 = v2;
  v5 = v2;
  v6 = [v4 initWithBlock:v19];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100323A78;
  v16[3] = &unk_10051DD98;
  v7 = *(a1 + 32);
  v18 = *(a1 + 40);
  v8 = v6;
  v17 = v8;
  v9 = [v7 _serviceDelegateWithErrorHandler:v16];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100323ACC;
  v13[3] = &unk_10051BF80;
  v10 = *(a1 + 48);
  v11 = *(a1 + 40);
  v14 = v8;
  v15 = v11;
  v12 = v8;
  [v9 speechRecordingPerformTwoShotPromptWithType:v10 reply:v13];
}

void sub_100323998(uint64_t a1, uint64_t a2)
{
  dispatch_group_leave(*(a1 + 32));
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADClientConnection adSpeechRecordingPerformTwoShotPromptWithType:context:completion:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Left request group %@ (signal = %ld).", &v6, 0x20u);
  }
}

id sub_100323A78(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(0.0, 0.0);
  }

  v3 = *(a1 + 32);

  return [v3 invokeWithSignal:0];
}

id sub_100323ACC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invokeWithSignal:0];
}

void sub_100323B8C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v2 = dispatch_group_create();
    objc_storeStrong((*(a1 + 32) + 48), v2);
  }

  dispatch_group_enter(v2);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "[ADClientConnection adSpeechRecordingDidDetectStartPointWithContext:]_block_invoke";
    v19 = 2112;
    v20 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Entered request group %@.", buf, 0x16u);
  }

  v4 = [AFSafetyBlock alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100323DD4;
  v15[3] = &unk_10051BF08;
  v16 = v2;
  v5 = v2;
  v6 = [v4 initWithBlock:v15];

  v7 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100323EB4;
  v13[3] = &unk_10051C498;
  v8 = v6;
  v14 = v8;
  v9 = [v7 _serviceDelegateWithErrorHandler:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100323EC0;
  v11[3] = &unk_10051DFE8;
  v12 = v8;
  v10 = v8;
  [v9 speechRecordingStartpointDetectedWithReply:v11];
}

void sub_100323DD4(uint64_t a1, uint64_t a2)
{
  dispatch_group_leave(*(a1 + 32));
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADClientConnection adSpeechRecordingDidDetectStartPointWithContext:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Left request group %@ (signal = %ld).", &v6, 0x20u);
  }
}

void sub_100323F68(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ADClientConnection adSpeechRecognitionDidFail:sessionUUID:]_block_invoke";
    v7 = 2114;
    v8 = v4;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Sending speech recognition failed %{public}@", &v5, 0x16u);
  }

  v3 = [*(a1 + 40) _serviceDelegate];
  [v3 speechRecognitionDidFail:*(a1 + 32)];
}

void sub_1003240DC(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 speechRecordingWillBeginRecognitionUpdateForTask:*(a1 + 40)];
}

void sub_1003241D4(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[ADClientConnection adSpeechRecognizedPartialResult:]_block_invoke";
    v8 = 2048;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %p Sending speech partial result %@...", &v6, 0x20u);
  }

  v5 = [*(a1 + 32) _serviceDelegate];
  [v5 speechRecognizedPartialResult:*(a1 + 40)];
}

void sub_100324350(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[ADClientConnection adSpeechRecognized:usingSpeechModel:sessionUUID:]_block_invoke";
    v8 = 2048;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s %p Sending speech recognized %@...", &v6, 0x20u);
  }

  v5 = [*(a1 + 32) _serviceDelegate];
  [v5 speechRecognized:*(a1 + 40)];
}

void sub_1003244A8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v2 = dispatch_group_create();
    objc_storeStrong((*(a1 + 32) + 48), v2);
  }

  dispatch_group_enter(v2);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "[ADClientConnection adSpeechRecordingWillStopWithSignpostID:]_block_invoke";
    v19 = 2112;
    v20 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Entered request group %@.", buf, 0x16u);
  }

  v4 = [AFSafetyBlock alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10032469C;
  v15[3] = &unk_10051BF08;
  v16 = v2;
  v5 = v2;
  v6 = [v4 initWithBlock:v15];

  v7 = *(a1 + 32);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10032477C;
  v13 = &unk_10051C498;
  v14 = v6;
  v8 = v6;
  v9 = [v7 _serviceDelegateWithErrorHandler:&v10];
  [v9 willStopRecordingWithSignpostID:{*(a1 + 40), v10, v11, v12, v13}];
}

void sub_10032469C(uint64_t a1, uint64_t a2)
{
  dispatch_group_leave(*(a1 + 32));
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADClientConnection adSpeechRecordingWillStopWithSignpostID:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Left request group %@ (signal = %ld).", &v6, 0x20u);
  }
}

void sub_1003248A0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    *buf = 136315394;
    v21 = "[ADClientConnection adSpeechRecordingDidFail:context:]_block_invoke";
    v22 = 2114;
    v23 = v13;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Sending recording failed %{public}@", buf, 0x16u);
  }

  v3 = *(*(a1 + 40) + 48);
  if (!v3)
  {
    v3 = dispatch_group_create();
    objc_storeStrong((*(a1 + 40) + 48), v3);
  }

  dispatch_group_enter(v3);
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "[ADClientConnection adSpeechRecordingDidFail:context:]_block_invoke";
    v22 = 2112;
    v23 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Entered request group %@.", buf, 0x16u);
  }

  v5 = [AFSafetyBlock alloc];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100324B60;
  v18[3] = &unk_10051BF08;
  v19 = v3;
  v6 = v3;
  v7 = [v5 initWithBlock:v18];

  [*(a1 + 40) _speechRecordingDidFinish];
  v8 = *(a1 + 40);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100324C40;
  v16[3] = &unk_10051C498;
  v9 = v7;
  v17 = v9;
  v10 = [v8 _serviceDelegateWithErrorHandler:v16];
  v11 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100324C4C;
  v14[3] = &unk_10051DFE8;
  v15 = v9;
  v12 = v9;
  [v10 speechRecordingDidFail:v11 reply:v14];
}

void sub_100324B60(uint64_t a1, uint64_t a2)
{
  dispatch_group_leave(*(a1 + 32));
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADClientConnection adSpeechRecordingDidFail:context:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Left request group %@ (signal = %ld).", &v6, 0x20u);
  }
}

void sub_100324D4C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v2 = dispatch_group_create();
    objc_storeStrong((*(a1 + 32) + 48), v2);
  }

  dispatch_group_enter(v2);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "[ADClientConnection adSpeechRecordingDidCancelWithContext:]_block_invoke";
    v19 = 2112;
    v20 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Entered request group %@.", buf, 0x16u);
  }

  v4 = [AFSafetyBlock alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100324F9C;
  v15[3] = &unk_10051BF08;
  v16 = v2;
  v5 = v2;
  v6 = [v4 initWithBlock:v15];

  [*(a1 + 32) _speechRecordingDidFinish];
  v7 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10032507C;
  v13[3] = &unk_10051C498;
  v8 = v6;
  v14 = v8;
  v9 = [v7 _serviceDelegateWithErrorHandler:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100325088;
  v11[3] = &unk_10051DFE8;
  v12 = v8;
  v10 = v8;
  [v9 speechRecordingDidCancelWithReply:v11];
}

void sub_100324F9C(uint64_t a1, uint64_t a2)
{
  dispatch_group_leave(*(a1 + 32));
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADClientConnection adSpeechRecordingDidCancelWithContext:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Left request group %@ (signal = %ld).", &v6, 0x20u);
  }
}

void sub_100325188(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v2 = dispatch_group_create();
    objc_storeStrong((*(a1 + 32) + 48), v2);
  }

  dispatch_group_enter(v2);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "[ADClientConnection adSpeechRecordingDidEndWithContext:]_block_invoke";
    v19 = 2112;
    v20 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Entered request group %@.", buf, 0x16u);
  }

  v4 = [AFSafetyBlock alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003253D8;
  v15[3] = &unk_10051BF08;
  v16 = v2;
  v5 = v2;
  v6 = [v4 initWithBlock:v15];

  [*(a1 + 32) _speechRecordingDidFinish];
  v7 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003254B8;
  v13[3] = &unk_10051C498;
  v8 = v6;
  v14 = v8;
  v9 = [v7 _serviceDelegateWithErrorHandler:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003254C4;
  v11[3] = &unk_10051DFE8;
  v12 = v8;
  v10 = v8;
  [v9 speechRecordingDidEndWithReply:v11];
}

void sub_1003253D8(uint64_t a1, uint64_t a2)
{
  dispatch_group_leave(*(a1 + 32));
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADClientConnection adSpeechRecordingDidEndWithContext:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Left request group %@ (signal = %ld).", &v6, 0x20u);
  }
}

void sub_1003255E0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v2 = dispatch_group_create();
    objc_storeStrong((*(a1 + 32) + 48), v2);
  }

  dispatch_group_enter(v2);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "[ADClientConnection adSpeechRecordingDidChangeAVRecordRoute:bluetoothDevice:isDucking:isTwoShot:speechEndHostTime:context:]_block_invoke";
    v23 = 2112;
    v24 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Entered request group %@.", buf, 0x16u);
  }

  v4 = [AFSafetyBlock alloc];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100325860;
  v19[3] = &unk_10051BF08;
  v20 = v2;
  v5 = v2;
  v6 = [v4 initWithBlock:v19];

  [*(a1 + 32) _setBluetoothDevice:*(a1 + 40)];
  [*(a1 + 32) _addSpeechCapturingContext:*(a1 + 48)];
  v7 = *(a1 + 32);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100325940;
  v17[3] = &unk_10051C498;
  v8 = v6;
  v18 = v8;
  v9 = [v7 _serviceDelegateWithErrorHandler:v17];
  v10 = *(a1 + 72);
  v11 = *(a1 + 73);
  v13 = *(a1 + 56);
  v12 = *(a1 + 64);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10032594C;
  v15[3] = &unk_10051DFE8;
  v16 = v8;
  v14 = v8;
  [v9 speechRecordingDidChangeAVRecordRoute:v13 isDucking:v10 isTwoShot:v11 speechEndHostTime:v12 reply:v15];
}

void sub_100325860(uint64_t a1, uint64_t a2)
{
  dispatch_group_leave(*(a1 + 32));
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADClientConnection adSpeechRecordingDidChangeAVRecordRoute:bluetoothDevice:isDucking:isTwoShot:speechEndHostTime:context:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Left request group %@ (signal = %ld).", &v6, 0x20u);
  }
}

void sub_100325B04(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v2 = dispatch_group_create();
    objc_storeStrong((*(a1 + 32) + 48), v2);
  }

  dispatch_group_enter(v2);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v20 = "[ADClientConnection adSpeechRecordingDidBeginOnAVRecordRoute:audioSessionID:bluetoothDevice:sessionRequestUUID:dictationOptions:context:]_block_invoke";
    v21 = 2112;
    v22 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Entered request group %@.", buf, 0x16u);
  }

  v4 = [AFSafetyBlock alloc];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100325D70;
  v17[3] = &unk_10051BF08;
  v18 = v2;
  v5 = v2;
  v6 = [v4 initWithBlock:v17];

  [*(a1 + 32) _setBluetoothDevice:*(a1 + 40)];
  [*(a1 + 32) _addSpeechCapturingContext:*(a1 + 48)];
  v7 = *(a1 + 32);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100325E50;
  v15[3] = &unk_10051C498;
  v8 = v6;
  v16 = v8;
  v9 = [v7 _serviceDelegateWithErrorHandler:v15];
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100325E5C;
  v13[3] = &unk_10051DFE8;
  v14 = v8;
  v12 = v8;
  [v9 speechRecordingDidBeginOnAVRecordRoute:v10 audioSessionID:v11 reply:v13];
}

void sub_100325D70(uint64_t a1, uint64_t a2)
{
  dispatch_group_leave(*(a1 + 32));
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADClientConnection adSpeechRecordingDidBeginOnAVRecordRoute:audioSessionID:bluetoothDevice:sessionRequestUUID:dictationOptions:context:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Left request group %@ (signal = %ld).", &v6, 0x20u);
  }
}

void sub_100325F2C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v2 = dispatch_group_create();
    objc_storeStrong((*(a1 + 32) + 48), v2);
  }

  dispatch_group_enter(v2);
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v19 = "[ADClientConnection adSpeechRecordingWillBeginWithInputAudioPowerXPCWrapper:context:]_block_invoke";
    v20 = 2112;
    v21 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Entered request group %@.", buf, 0x16u);
  }

  v4 = [AFSafetyBlock alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100326188;
  v16[3] = &unk_10051BF08;
  v17 = v2;
  v5 = v2;
  v6 = [v4 initWithBlock:v16];

  v7 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100326268;
  v14[3] = &unk_10051C498;
  v8 = v6;
  v15 = v8;
  v9 = [v7 _serviceDelegateWithErrorHandler:v14];
  v10 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100326274;
  v12[3] = &unk_10051DFE8;
  v13 = v8;
  v11 = v8;
  [v9 speechRecordingWillBeginWithInputAudioPowerXPCWrapper:v10 reply:v12];

  [*(a1 + 32) _addSpeechCapturingContext:*(a1 + 48)];
}

void sub_100326188(uint64_t a1, uint64_t a2)
{
  dispatch_group_leave(*(a1 + 32));
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADClientConnection adSpeechRecordingWillBeginWithInputAudioPowerXPCWrapper:context:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    v10 = 2048;
    v11 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Left request group %@ (signal = %ld).", &v6, 0x20u);
  }
}

void sub_1003264DC(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 appLaunchFailedWithBundleIdentifier:*(a1 + 40)];
}

void sub_1003265C8(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 willProcessAppLaunchWithBundleIdentifier:*(a1 + 40)];
}

void sub_100326694(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 audioSessionDidBecomeActive:*(a1 + 40)];
}

void sub_100326760(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 audioSessionWillBecomeActive:*(a1 + 40)];
}

void sub_100326888(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10032699C;
  v8[3] = &unk_10051D2F0;
  v9 = *(a1 + 48);
  v3 = [v2 _serviceDelegateWithErrorHandler:v8];
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003269BC;
  v6[3] = &unk_10051BEB8;
  v5 = *(a1 + 56);
  v7 = *(a1 + 48);
  [v3 willProcessStartPlayback:v5 intent:v4 completion:v6];
}

uint64_t sub_10032699C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t sub_1003269BC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100326A48(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 startPlaybackDidFail:*(a1 + 40)];
}

void sub_100326BBC(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 aceConnectionWillRetryOnError:*(a1 + 40)];
}

void sub_100326CD4(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 setUserActivityInfo:*(a1 + 40) webpageURL:*(a1 + 48)];
}

void sub_100326DA0(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 acousticIDRequestDidFinishWithSuccess:*(a1 + 40)];
}

void sub_100326E68(uint64_t a1)
{
  v1 = [*(a1 + 32) _serviceDelegate];
  [v1 musicWasDetected];
}

void sub_100326F20(uint64_t a1)
{
  v1 = [*(a1 + 32) _serviceDelegate];
  [v1 acousticIDRequestWillStart];
}

void sub_100326FD8(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 quickStopWasHandledWithActions:*(a1 + 40)];
}

void sub_1003270C4(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 requestSetReplayOverridePath:*(a1 + 40)];
}

void sub_100327190(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 requestSetReplayEnabled:*(a1 + 40)];
}

void sub_10032728C(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 requestReplayRecordedViewAt:*(a1 + 48) with:*(a1 + 40)];
}

void sub_100327388(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 requestReplayAllRecordedViews:*(a1 + 48) with:*(a1 + 40)];
}

void sub_100327450(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 requestRequestedDismissAssistantWithReason:*(a1 + 40)];
}

void sub_100327518(uint64_t a1)
{
  v1 = [*(a1 + 32) _serviceDelegate];
  [v1 requestRequestedDismissAssistant];
}

void sub_100327620(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 extensionRequestFinishedForApplication:*(a1 + 40) error:*(a1 + 48)];
}

void sub_10032770C(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 extensionRequestWillStartForApplication:*(a1 + 40)];
}

void sub_1003277F8(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegateWithErrorHandler:&stru_10051BE90];
  [v2 cacheImage:*(a1 + 40)];
}

void sub_100327854(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[ADClientConnection adWantsToCacheImage:]_block_invoke_2";
    v6 = 2114;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s failed with Error %{public}@", &v4, 0x16u);
  }
}

void sub_1003279B0(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100327A50;
  v4[3] = &unk_10051D2F0;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _serviceDelegateWithErrorHandler:v4];
  [v3 getBulletinContext:*(a1 + 40)];
}

void sub_100327A50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[ADClientConnection adGetBulletinContext:]_block_invoke_2";
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s failed with Error %{public}@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void sub_100327C00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100327CB4;
  v6[3] = &unk_10051D2F0;
  v7 = *(a1 + 48);
  v3 = [v2 _serviceDelegateWithErrorHandler:v6];
  v4 = v3;
  if (*(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  else
  {
    v5 = &stru_10051BE70;
  }

  [v3 requestRequestedOpenURL:*(a1 + 40) reply:v5];
}

void sub_100327CB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[ADClientConnection adRequestRequestedOpenURL:completion:]_block_invoke_2";
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s failed with Error %{public}@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void sub_100327E90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100327F38;
  v4[3] = &unk_10051D2F0;
  v5 = *(a1 + 56);
  v3 = [v2 _serviceDelegateWithErrorHandler:v4];
  [v3 requestRequestedOpenApplicationWithBundleID:*(a1 + 40) URL:*(a1 + 48) reply:*(a1 + 56)];
}

void sub_100327F38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[ADClientConnection adRequestRequestedOpenApplicationWithBundleID:URL:completion:]_block_invoke_2";
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s failed with Error %{public}@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void sub_1003280E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003281F4;
  v7[3] = &unk_10051D2F0;
  v8 = *(a1 + 48);
  v3 = [v2 _serviceDelegateWithErrorHandler:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003282DC;
  v5[3] = &unk_10051E100;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 startUIRequestWithText:v4 completion:v5];
}

void sub_1003281F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[ADClientConnection adStartUIRequestWithText:completion:]_block_invoke_2";
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s failed with Error %{public}@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

uint64_t sub_1003282DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100328414(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 requestDidAskForTimeoutExtension:*(a1 + 40)];
}

void sub_1003285A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _serviceDelegate];
  [v2 aceConnectionWillRetryOnError:*(a1 + 40)];
}

void sub_10032874C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v4 = AFSiriLogContextDaemon;
  v5 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      *buf = 136315394;
      v17 = "[ADClientConnection adRequestDidCompleteWithSuccess:error:]_block_invoke";
      v18 = 2048;
      v19 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %p commandGroup exists, waiting until commandGroup is done...", buf, 0x16u);
      v2 = *(a1 + 32);
    }

    v6 = *(v2 + 56);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 48);
    v10 = *(v8 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100328924;
    block[3] = &unk_10051DB68;
    block[4] = v8;
    v14 = v6;
    v15 = v7;
    v11 = v6;
    dispatch_group_notify(v9, v10, block);
  }

  else
  {
    if (v5)
    {
      v12 = *(v2 + 56);
      *buf = 136315650;
      v17 = "[ADClientConnection adRequestDidCompleteWithSuccess:error:]_block_invoke";
      v18 = 2048;
      v19 = v2;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s %p commandGroup does not exist, handling request completed with UUID %@...", buf, 0x20u);
      v2 = *(a1 + 32);
    }

    [v2 _handleRequestCompletedWithUUID:*(v2 + 56) error:*(a1 + 40)];
  }
}

id sub_100328924(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[ADClientConnection adRequestDidCompleteWithSuccess:error:]_block_invoke";
    v8 = 2048;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %p commandGroup is done, handling request completed with UUID %@...", &v6, 0x20u);
  }

  return [*(a1 + 32) _handleRequestCompletedWithUUID:*(a1 + 40) error:*(a1 + 48)];
}

void sub_100328DA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 136315906;
    v15 = "[ADClientConnection adRequestDidReceiveCommand:reply:]_block_invoke";
    v16 = 2048;
    v17 = v8;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s %p Received reply %@ for command %@.", buf, 0x2Au);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100329154;
  block[3] = &unk_10051DFE8;
  v10 = *(a1 + 48);
  v13 = *(a1 + 40);
  dispatch_async(v10, block);
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }
}

void sub_100328F14(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136315650;
    v14 = "[ADClientConnection adRequestDidReceiveCommand:reply:]_block_invoke_2";
    v15 = 2048;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %p Sending command %@...", buf, 0x20u);
  }

  v5 = *(a1 + 32);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10032905C;
  v10 = &unk_10051DD98;
  v11 = v5;
  v12 = *(a1 + 48);
  v6 = [v5 _serviceDelegateWithErrorHandler:&v7];
  [v6 requestHandleCommand:*(a1 + 40) reply:{*(a1 + 48), v7, v8, v9, v10, v11}];
}

void sub_10032905C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADClientConnection adRequestDidReceiveCommand:reply:]_block_invoke";
    v8 = 2048;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s %p Failure sending ace command to client %{public}@", &v6, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1003291F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100329284;
  v4[3] = &unk_10051C498;
  v4[4] = v2;
  v3 = [v2 _serviceDelegateWithErrorHandler:v4];
  [v3 requestDidUpdateResponseMode:*(a1 + 40)];
}

void sub_100329284(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADClientConnection adRequestDidUpdateResponseMode:]_block_invoke_2";
    v8 = 2048;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s #modes %p Failure sending response modde to client %{public}@", &v6, 0x20u);
  }
}

id sub_1003293FC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = dispatch_group_create();
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  v6 = *(a1 + 40);

  return [v6 adClientConnection_enterRequestGroup:v2];
}

void sub_100329778(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTimestamp:mach_absolute_time()];
  [v3 setReason:*(a1 + 32)];
  v7[0] = @"processIdentifier";
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 40) + 8) processIdentifier]);
  v7[1] = @"client";
  v8[0] = v4;
  v5 = [[NSString alloc] initWithFormat:@"%@", *(a1 + 40)];
  v8[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v3 setUserInfo:v6];
}

void sub_100329B9C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTimestamp:mach_absolute_time()];
  [v3 setReason:*(a1 + 32)];
  v7[0] = @"processIdentifier";
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(a1 + 40) + 8) processIdentifier]);
  v7[1] = @"client";
  v8[0] = v4;
  v5 = [[NSString alloc] initWithFormat:@"%@", *(a1 + 40)];
  v8[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v3 setUserInfo:v6];
}

void sub_10032A304(uint64_t a1)
{
  [*(a1 + 32) _removeAllSpeechCapturingContextsForReason:*(a1 + 40)];
  [*(a1 + 32) _removeAllAudioSessionAssertionsForReason:*(a1 + 40)];
  [*(a1 + 32) _setBluetoothDevice:0];
  [*(a1 + 32) _continuePendingSpeechRequestFromTimestamp:0.0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = 0;

  *(*(a1 + 32) + 129) = 0;
  v8 = *(a1 + 32);
  v9 = *(v8 + 64);
  *(v8 + 64) = 0;

  *(*(a1 + 32) + 96) = 0;
  v10 = *(a1 + 32);
  v11 = *(v10 + 112);
  *(v10 + 112) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 104);
  *(v12 + 104) = 0;

  [*(*(a1 + 32) + 160) cancel];
  v14 = *(a1 + 32);
  v15 = *(v14 + 160);
  *(v14 + 160) = 0;
}

void sub_10032A77C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v12 = "[ADClientConnection initWithXPCConnection:]_block_invoke";
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Long lived client connection (%lf seconds) triggered", buf, 0x16u);
  }

  v4 = +[SiriCoreSymptomsReporter sharedInstance];
  v5 = [NSNumber numberWithDouble:*(a1 + 32), @"long_lived_duration"];
  v10 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = +[NSProcessInfo processInfo];
  v8 = [v7 processIdentifier];
  [v4 reportIssueForType:@"client_connection" subType:@"long_lived_connection" context:v6 processIdentifier:v8 walkboutStatus:byte_100590548];
}

void sub_10032AA84(uint64_t a1, uint64_t a2)
{
  dispatch_group_leave(*(a1 + 32));
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 136315906;
    v8 = "[AceObject(ADClientConnectionSupport) adClientConnection_enterRequestGroup:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    v14 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Left request group %@ for command %@ (signal = %ld).", &v7, 0x2Au);
  }
}

uint64_t sub_10032B370(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100590A98;
  qword_100590A98 = v1;

  return _objc_release_x1(v1, v2);
}

id sub_10032B948(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (AFIsInternalInstall())
    {
      v2 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = 136315394;
        v8 = "[ADDictationConnection localSpeechRecognizer:didCompletionRecognitionWithStatistics:error:]_block_invoke";
        v9 = 2114;
        v10 = v6;
        _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Speech recognition encountered error: %{public}@", &v7, 0x16u);
      }
    }
  }

  [*(*(a1 + 40) + 8) invalidate];
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  result = [*(*(a1 + 40) + 24) speechRecognitionDidFinishWithError:*(a1 + 32)];
  *(*(a1 + 40) + 48) = 0;
  *(*(a1 + 40) + 16) = 0;
  return result;
}

void sub_10032CF6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10032D050;
    v7[3] = &unk_10051C210;
    v8 = objc_alloc_init(NSMutableArray);
    v6 = v8;
    [v5 enumerateKeysAndObjectsUsingBlock:v7];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10032D050(uint64_t a1, void *a2)
{
  v3 = a2;
  if (AFOfflineDictationStatusStringIsInstalled())
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t sub_10032D974(void *a1, uint64_t a2)
{
  v3 = a1;
  if (AFConnectionHasEntitlement())
  {
    v4 = 1;
  }

  else
  {
    if (v3)
    {
      [v3 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v5 = [NSNumber numberWithBool:a2, kTCCAccessCheckOptionPrompt];
    v13 = v5;
    [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v6 = TCCAccessCheckAuditToken();

    if (v6)
    {
      v7 = objc_alloc_init(BKSApplicationStateMonitor);
      v8 = [v7 mostElevatedApplicationStateForPID:{objc_msgSend(v3, "processIdentifier")}];
      [v7 invalidate];
      v4 = (v8 >> 3) & 1;
      if ((v8 & 8) == 0)
      {
        v9 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "CheckPrerecordedConnectionAccess";
          *&buf[12] = 2114;
          *&buf[14] = v3;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Connection (%{public}@) cannot use pre-recorded speech recognition; cannot start from the background", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CheckPrerecordedConnectionAccess";
        *&buf[12] = 2114;
        *&buf[14] = v3;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Connection (%{public}@) cannot use pre-recorded dictation; needs dictation prerecorded entitlement or speech recognition entitlement", buf, 0x16u);
      }

      v4 = 0;
    }
  }

  return v4;
}

void *sub_10032DB98(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = result;
    result = [*(result[4] + 24) speechRecognitionDidFinishWithError:a4];
    *(v4[4] + 48) = 0;
    *(v4[4] + 16) = 0;
  }

  return result;
}

void sub_10032E214(uint64_t a1)
{
  v2 = +[CSSpeechController sharedController];
  [v2 languageDetectorSetMostRecentRecognitionLanguage:*(a1 + 32)];
}

BOOL sub_10032E474(void *a1)
{
  if (a1)
  {
    [a1 auditToken];
  }

  return TCCAccessCheckAuditToken() != 0;
}

void sub_10032E4D4(void *a1)
{
  v1 = a1;
  if (AFConnectionHasEntitlement())
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v3 = v2;
      v6 = 136315650;
      v7 = "SanitizeAFSpeechRequestOptions";
      v8 = 1024;
      v9 = [v1 suppressStartAlert];
      v10 = 1024;
      v11 = [v1 suppressStopAlert];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Client has entitlement, so skipping sanitization of speech options (suppressStartAlert: %d, suppressStopAlert: %d)", &v6, 0x18u);
    }
  }

  else
  {
    if ([v1 suppressStopAlert])
    {
      v4 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v6 = 136315138;
        v7 = "SanitizeAFSpeechRequestOptions";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Ignoring suppressStopAlert from client", &v6, 0xCu);
      }

      [v1 setSuppressStopAlert:0];
    }

    if ([v1 suppressStartAlert])
    {
      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v6 = 136315138;
        v7 = "SanitizeAFSpeechRequestOptions";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Ignoring suppressStartAlert from client", &v6, 0xCu);
      }

      [v1 setSuppressStartAlert:0];
    }
  }
}

void sub_10032EF54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 80))
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[ADDictationConnection startRecordingForPendingDictationWithLanguageCode:options:speechOptions:reply:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Shouldn't have a pending request, continuing and canceling it now.", &v14, 0xCu);
      v4 = *(a1 + 32);
    }

    [v4 _continuePendingSpeechRequestFromTimestamp:0.0];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 88))
  {
    (*(*(a1 + 40) + 16))();
    if (v3)
    {
      v3[2](v3, 0.0);
    }
  }

  else
  {
    v6 = objc_retainBlock(v3);
    v7 = *(a1 + 32);
    v8 = *(v7 + 80);
    *(v7 + 80) = v6;

    v9 = +[NSXPCListener anonymousListener];
    v10 = *(a1 + 32);
    v11 = *(v10 + 64);
    *(v10 + 64) = v9;

    [*(*(a1 + 32) + 64) setDelegate:?];
    [*(*(a1 + 32) + 64) resume];
    v12 = *(a1 + 40);
    v13 = [*(*(a1 + 32) + 64) endpoint];
    (*(v12 + 16))(v12, v13);
  }
}

void sub_10032F278(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[ADDictationConnection startRequestActivityWithCompletion:]_block_invoke";
    v9 = 2048;
    v10 = v6;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s %p", &v7, 0x16u);
  }

  [*(a1 + 32) _invokeRequestCompletion];
  v3 = objc_retainBlock(*(a1 + 40));
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  *(v4 + 96) = v3;
}

uint64_t sub_10032FB64()
{
  state64 = 0;
  state = notify_get_state(dword_100590AA8, &state64);
  if (!state)
  {
    return state64 & 1;
  }

  v1 = state;
  v2 = AFSiriLogContextDaemon;
  result = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315394;
    v6 = "_GetKeyboardIsVisible";
    v7 = 1024;
    v8 = v1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Could not read keyboard visibility status: %ud", buf, 0x12u);
    return 0;
  }

  return result;
}

uint64_t sub_10032FC44()
{
  state64 = 0;
  state = notify_get_state(dword_100590AAC, &state64);
  if (!state)
  {
    return state64 & 1;
  }

  v1 = state;
  v2 = AFSiriLogContextDaemon;
  result = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315394;
    v6 = "_GetHardwareKeyboardAttached";
    v7 = 1024;
    v8 = v1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Could not read hw keyboard attached status: %ud", buf, 0x12u);
    return 0;
  }

  return result;
}

id sub_10032FEE0(uint64_t a1)
{
  [*(*(a1 + 32) + 24) speechDidRecognizeMultilingualSpeech:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 24);

  return [v2 speechRecognitionDidFinishWithError:0];
}

void sub_100330270(uint64_t a1)
{
  *(*(a1 + 32) + 50) = 0;
  v4 = [[NSString alloc] initWithFormat:@"audio file finished writing; file handle: %@; error: %@", *(a1 + 40), *(a1 + 48)];
  v2 = *(*(a1 + 32) + 56);
  v3 = [*(a1 + 56) sessionUUID];
  [v2 notifyAudioFileIOTransactionStoppedForReason:v4 sessionUUID:v3];
}

void sub_1003303E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 48) == 1)
  {
    *(v1 + 48) = 0;
    v3 = objc_opt_new();
    v4 = [*(a1 + 40) pronunciationData];
    v5 = [v4 orthography];
    [v3 setOrthography:v5];

    v6 = [*(a1 + 40) pronunciationData];
    v7 = [v6 language];
    [v3 setLanguage:v7];

    v8 = [*(a1 + 40) pronunciationData];
    v9 = [v8 ttsPronunciations];
    [v3 setPhonemeSuggestions:v9];

    v10 = *(*(a1 + 32) + 24);
    v13 = v3;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
    [v10 speechDidRecognizeTranscriptionObjects:v11 usingSpeechModel:*(a1 + 48)];

    [*(*(a1 + 32) + 24) speechRecognitionDidFinishWithError:0];
    v12 = *(a1 + 32);
    if ((*(v12 + 49) & 1) == 0)
    {
      [*(v12 + 56) notifySpeechRecognitionTransactionStoppedForReason:@"dictation speech was recognized remotely and we're not waiting for structured results" sessionUUID:*(a1 + 56)];
    }
  }
}

void *sub_100330690(void *result)
{
  v1 = result[4];
  if (*(v1 + 104) == 1 && (*(v1 + 106) & 1) == 0)
  {
    v2 = result;
    *(v1 + 106) = 1;
    v3 = result[4];
    if (*(v3 + 48) == 1)
    {
      *(v3 + 48) = 0;
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v6 = 136315138;
        v7 = "[ADDictationConnection adSpeechLocalRecognitionDidSucceedWithSessionUUID:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Dictation transaction for utterance detection request ended in local recognition", &v6, 0xCu);
      }

      [v2[4] _invokeRequestCompletion];
      [*(v2[4] + 24) speechRecognitionDidFinishWithError:0];
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v6 = 136315138;
        v7 = "[ADDictationConnection adSpeechLocalRecognitionDidSucceedWithSessionUUID:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Local Speech Recognition succeeded! resuming idle timer", &v6, 0xCu);
      }

      [v2[4] invalidateDictationAssertion];
      return [*(v2[4] + 56) notifySpeechRecognitionTransactionStoppedForReason:@"dictation local speech recognition succeeded" sessionUUID:v2[5]];
    }
  }

  return result;
}

id *sub_100330954(id *result)
{
  v1 = result;
  v2 = result[4];
  if ((v2[48] & 1) != 0 || v2[49] == 1)
  {
    v2[48] = 0;
    *(result[4] + 49) = 0;
    [result[4] _invokeRequestCompletion];
    [*(v1[4] + 3) speechRecognitionDidFinishWithError:v1[5]];
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[ADDictationConnection adSpeechRecognitionDidFail:sessionUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Speech Recognition failed! resuming idle timer", &v4, 0xCu);
    }

    [v1[4] invalidateDictationAssertion];
    return [*(v1[4] + 7) notifySpeechRecognitionTransactionStoppedForReason:@"dictation speech recognition failed" sessionUUID:v1[6]];
  }

  return result;
}

void *sub_100330C64(void *result)
{
  v1 = result[4];
  if (*(v1 + 49) == 1)
  {
    v2 = result;
    *(v1 + 49) = 0;
    result = [*(result[4] + 24) speechDidRecognizeTranscriptionObjects:result[5] usingSpeechModel:result[6]];
    v3 = v2[4];
    if ((*(v3 + 48) & 1) == 0)
    {
      v4 = *(v3 + 56);
      v5 = v2[7];

      return [v4 notifySpeechRecognitionTransactionStoppedForReason:@"dictation structured result was returned and we're not recording an audio file" sessionUUID:v5];
    }
  }

  return result;
}

void sub_100330DF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[104] == 1)
  {
    if (v2[105] != 1 || (v2[106] & 1) != 0)
    {
      v3 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v22 = "[ADDictationConnection adSpeechRecordingDidRecognizePhrases:rawPhrases:utterances:rawUtterances:nluResult:sessionUUID:refId:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Did recognize phrases in utterance detection mode. Recognition might not be finished yet.", buf, 0xCu);
      }

      return;
    }

    v2[106] = 1;
  }

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v22 = "[ADDictationConnection adSpeechRecordingDidRecognizePhrases:rawPhrases:utterances:rawUtterances:nluResult:sessionUUID:refId:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Dictation transaction ended in local recognition", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if ((*(v5 + 48) & 1) != 0 || *(v5 + 49) == 1)
  {
    *(v5 + 48) = 0;
    [*(a1 + 32) _invokeRequestCompletion];
    v6 = *(a1 + 32);
    if (*(v6 + 49) == 1)
    {
      v7 = objc_alloc_init(NSMutableString);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = *(a1 + 40);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v16 + 1) + 8 * v12) interpretations];
            v14 = [v13 firstObject];
            v15 = [v14 text];
            [v7 appendString:v15];

            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      [*(*(a1 + 32) + 24) speechDidReceiveSearchResults:&__NSArray0__struct recognitionText:v7 stable:1 final:1];
      *(*(a1 + 32) + 49) = 0;

      v6 = *(a1 + 32);
    }

    [*(v6 + 24) speechRecognitionDidFinishWithError:{0, v16}];
    [*(*(a1 + 32) + 56) notifySpeechRecognitionTransactionStoppedForReason:@"dictation speech was recognized locally and we're not waiting for search results or structured results" sessionUUID:*(a1 + 48)];
  }
}

void sub_10033116C(uint64_t a1)
{
  *(*(a1 + 32) + 49) = 0;
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) voiceSearchResults];
  v4 = [*(a1 + 40) recognitionText];
  [v2 speechDidReceiveSearchResults:v3 recognitionText:v4 stable:1 final:1];

  v5 = *(a1 + 32);
  if ((*(v5 + 48) & 1) == 0)
  {
    v6 = *(v5 + 56);

    [v6 notifySpeechRecognitionTransactionStoppedForReason:@"voice search final result result was returned and we're not recording an audio file" sessionUUID:0];
  }
}

void sub_1003312B4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v4 = [*(a1 + 40) voiceSearchResults];
  v3 = [*(a1 + 40) recognitionText];
  [v2 speechDidReceiveSearchResults:v4 recognitionText:v3 stable:objc_msgSend(*(a1 + 40) final:{"stable"), 0}];
}

void sub_1003313D8(uint64_t a1)
{
  v2 = [*(a1 + 32) language];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[ADDictationConnection adSpeechRecognizedPartialResult:]_block_invoke";
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Partial result %@, Speech model %@", &v9, 0x20u);
  }

  v5 = *(a1 + 40);
  if (*(v5 + 51) != 1)
  {
    goto LABEL_7;
  }

  if (sub_10032FB64() & 1) != 0 || (sub_10032FC44())
  {
    *(*(a1 + 40) + 51) = 0;
    v5 = *(a1 + 40);
LABEL_7:
    [*(v5 + 24) speechDidRecognizePartialResult:*(a1 + 32)];
    goto LABEL_8;
  }

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315138;
    v10 = "[ADDictationConnection adSpeechRecognizedPartialResult:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s No keyboard visible during dictation; cancelling recognition", &v9, 0xCu);
  }

  v7 = *(*(a1 + 40) + 24);
  v8 = [NSError errorWithDomain:kAFAssistantErrorDomain code:223 userInfo:&__NSDictionary0__struct];
  [v7 speechRecognitionDidFinishWithError:v8];

  [*(a1 + 40) cancelSpeech];
LABEL_8:
}

id sub_100331678(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 48) == 1)
  {
    v2 = result;
    *(v1 + 48) = 0;
    [*(result + 4) _invokeRequestCompletion];
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[ADDictationConnection adSpeechRecognized:usingSpeechModel:sessionUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Dictation transaction ended in remote recognition", buf, 0xCu);
    }

    v4 = *(*(v2 + 4) + 24);
    v5 = [*(v2 + 5) recognition];
    v6 = [v5 af_speechPhrases];
    v7 = [*(v2 + 5) recognition];
    v8 = [v7 af_speechUtterances];
    v9 = *(v2 + 6);
    v10 = [*(v2 + 5) af_correctionContext];
    v11 = [*(v2 + 5) audioAnalytics];
    v12 = [v11 af_audioAnalytics];
    [v4 speechDidRecognizePhrases:v6 rawPhrases:0 utterances:v8 rawUtterances:0 nluResult:0 usingSpeechModel:v9 correctionContext:v10 audioAnalytics:v12];

    result = [*(*(v2 + 4) + 24) speechRecognitionDidFinishWithError:0];
    v13 = *(v2 + 4);
    if ((*(v13 + 49) & 1) == 0)
    {
      return [*(v13 + 56) notifySpeechRecognitionTransactionStoppedForReason:@"dictation speech was recognized remotely and we're not waiting for structured results" sessionUUID:*(v2 + 7)];
    }
  }

  return result;
}

void sub_100331980(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 48) & 1) != 0 || *(v2 + 49) == 1)
  {
    *(v2 + 48) = 0;
    *(*(a1 + 32) + 49) = 0;
    [*(a1 + 32) _invokeRequestCompletion];
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v7 = 136315394;
      v8 = "[ADDictationConnection adSpeechRecordingDidFail:context:]_block_invoke";
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Sending recording failed %{public}@", &v7, 0x16u);
    }

    [*(a1 + 32) invalidateDictationAssertion];
    [*(*(a1 + 32) + 24) speechRecordingDidFail:*(a1 + 40)];
    v4 = *(*(a1 + 32) + 56);
    v5 = [*(a1 + 48) sessionUUID];
    [v4 notifySpeechRecognitionTransactionStoppedForReason:@"dictation audio recording failed and an audio file is not being written" sessionUUID:v5];
  }
}

void sub_100331BD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 48) & 1) != 0 || *(v2 + 49) == 1)
  {
    *(v2 + 48) = 0;
    *(*(a1 + 32) + 49) = 0;
    [*(a1 + 32) _invokeRequestCompletion];
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADDictationConnection adSpeechRecordingDidCancelWithContext:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Dictation transaction cancelled! resuming idle timer", &v8, 0xCu);
    }

    [*(a1 + 32) invalidateDictationAssertion];
    [*(*(a1 + 32) + 24) speechRecordingDidCancel];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 56);
    v6 = [v4 sessionUUID];
    [v5 notifySpeechRecognitionTransactionStoppedForReason:@"dictation audio recording was cancelled" sessionUUID:v6];
  }

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADDictationConnection adSpeechRecordingDidCancelWithContext:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Dictation transaction ended in cancel", &v8, 0xCu);
  }
}

void sub_100332198(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTimestamp:mach_absolute_time()];
  [v3 setReason:*(a1 + 32)];
  v9 = @"client";
  v4 = [NSString alloc];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 initWithFormat:@"%@ %p", v6, *(a1 + 40)];
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v3 setUserInfo:v8];
}

void sub_100332474(uint64_t a1)
{
  if ([*(*(a1 + 32) + 32) releaseAudioSessionOnRecordingCompletion])
  {
    [*(a1 + 32) _removeAllAudioSessionAssertionsForReason:@"Dictation Options Specified Release Audio Session On Recording Completion"];
    v2 = +[ADCommandCenter sharedCommandCenter];
    [v2 forceAudioSessionInactiveWithOptions:*(a1 + 40) completion:0];
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;
}

id sub_1003325D0(uint64_t a1)
{
  [*(a1 + 32) _removeAllAudioSessionAssertionsForReason:@"Dictation Connection Disconnected"];
  [*(a1 + 32) _continuePendingSpeechRequestFromTimestamp:0.0];
  v2 = *(a1 + 32);

  return [v2 _invokeRequestCompletion];
}

void sub_10033289C(id a1)
{
  v1 = notify_register_check("com.apple.keyboard.isOnScreen", &dword_100590AA8);
  if (v1)
  {
    v2 = v1;
    dword_100590AA8 = -1;
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[ADDictationConnection initWithServiceDelegate:]_block_invoke";
      v9 = 1024;
      v10 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Could not register keyboard notify: %ud", &v7, 0x12u);
    }
  }

  v4 = notify_register_check("GSEventHardwareKeyboardAttached", &dword_100590AAC);
  if (v4)
  {
    v5 = v4;
    dword_100590AAC = -1;
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[ADDictationConnection initWithServiceDelegate:]_block_invoke";
      v9 = 1024;
      v10 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Could not register hw keyboard notify: %ud", &v7, 0x12u);
    }
  }
}

uint64_t sub_1003330F0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t sub_100333238(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void sub_100333514(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 44))
  {
    WeakRetained = objc_loadWeakRetained((v1 + 80));
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [*(v4 + 64) sessionUUID];
    [WeakRetained speechManager:v4 didRecognizeTokens:v3 sessionUUID:v5];
  }

  else
  {
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "[ADSpeechManager asrBridgeReceivedPartialResult:language:tokens:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", buf, 0xCu);
    }
  }
}

void sub_100333724(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 44))
  {
    WeakRetained = objc_loadWeakRetained((v1 + 80));
    [WeakRetained speechManager:a1[4] didRecognizePackage:a1[5] sessionUUID:a1[6]];
  }

  else
  {
    v3 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "[ADSpeechManager asrBridgeReceivedFinalResult:speechPackage:sessionUUID:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", buf, 0xCu);
    }
  }
}

void sub_100333908(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 48) == 3)
  {
    v2 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "[ADSpeechManager asrBridgeReceivedEagerRecognitionCandidate:rawRecognitionResult:duration:sessionUUID:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Speech skipping sending raw eager recognition candidate callback", buf, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v1 + 80));
    [WeakRetained speechManager:a1[4] didRecognizeRawEagerRecognitionCandidate:a1[5] sessionUUID:a1[6]];
  }
}

void sub_100333B20(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[ADSpeechManager _getAdjustedSiriOutputVolumeLevelForAudioRoute:withCompletion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to get Siri volume: %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))(a3);
  }

  else if (a3 < 0.3 || a3 > 0.7)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[ADSpeechManager _getAdjustedSiriOutputVolumeLevelForAudioRoute:withCompletion:]_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Siri volume: %f", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v29 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v25 = a3;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("_getAdjustedSiriOutputVolumeLevelForAudioRoute", v8);

    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    v11 = [*(a1 + 32) _volumeService];
    v12 = *(a1 + 40);
    v13 = [v12 name];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100333F18;
    v21[3] = &unk_10051C788;
    v23 = v26;
    v14 = v10;
    v22 = v14;
    [v11 getMusicOutputVolumeForAudioRoute:v12 withName:v13 completion:v21];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10033400C;
    block[3] = &unk_10051E1C8;
    block[4] = buf;
    dispatch_group_async(v14, v9, block);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100334074;
    v15[3] = &unk_10051C7B0;
    v17 = buf;
    v18 = v24;
    v19 = v26;
    v16 = *(a1 + 48);
    dispatch_group_notify(v14, v9, v15);

    _Block_object_dispose(v24, 8);
    _Block_object_dispose(v26, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    (*(*(a1 + 48) + 16))(a3);
  }
}

void sub_100333EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100333F18(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[ADSpeechManager _getAdjustedSiriOutputVolumeLevelForAudioRoute:withCompletion:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to get Media volume: %@", &v7, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10033400C(uint64_t a1)
{
  v2 = +[SOMediaNowPlayingObserver defaultObserver];
  *(*(*(a1 + 32) + 8) + 24) = [v2 playbackState] == 1;
}

uint64_t sub_100334074(void *a1)
{
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    *(*(a1[6] + 8) + 24) = *(*(a1[7] + 8) + 24);
  }

  v2 = *(*(a1[6] + 8) + 24);
  v3 = 0.3;
  if (v2 >= 0.3)
  {
    v8 = AFSiriLogContextDaemon;
    v9 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
    v3 = 0.7;
    if (v2 <= 0.7)
    {
      if (v9)
      {
        v12 = *(*(a1[5] + 8) + 24);
        v13 = v8;
        v14 = [NSNumber numberWithBool:v12];
        v15 = 136315906;
        v16 = "[ADSpeechManager _getAdjustedSiriOutputVolumeLevelForAudioRoute:withCompletion:]_block_invoke";
        v17 = 2048;
        v18 = v2;
        v19 = 2048;
        v20 = v2;
        v21 = 2112;
        v22 = v14;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Reference volume: %f, adjusted Siri volume: %f, Media volume used: %@", &v15, 0x2Au);

        v3 = *(*(a1[6] + 8) + 24);
      }

      else
      {
        v3 = v2;
      }
    }

    else if (v9)
    {
      v10 = *(*(a1[5] + 8) + 24);
      v6 = v8;
      v7 = [NSNumber numberWithBool:v10];
      v15 = 136315906;
      v16 = "[ADSpeechManager _getAdjustedSiriOutputVolumeLevelForAudioRoute:withCompletion:]_block_invoke";
      v17 = 2048;
      v18 = v2;
      v19 = 2048;
      v20 = 0.699999988;
      v21 = 2112;
      v22 = v7;
      goto LABEL_9;
    }
  }

  else
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(*(a1[5] + 8) + 24);
      v6 = v4;
      v7 = [NSNumber numberWithBool:v5];
      v15 = 136315906;
      v16 = "[ADSpeechManager _getAdjustedSiriOutputVolumeLevelForAudioRoute:withCompletion:]_block_invoke_2";
      v17 = 2048;
      v18 = v2;
      v19 = 2048;
      v20 = 0.300000012;
      v21 = 2112;
      v22 = v7;
LABEL_9:
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Reference volume: %f, adjusted Siri volume: %f, Media volume used: %@", &v15, 0x2Au);
    }
  }

  return (*(a1[4] + 16))(v3);
}

void sub_1003343F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100334484;
  v3[3] = &unk_10051C760;
  v3[4] = v2;
  v4 = v1;
  [v2 _getAdjustedSiriOutputVolumeLevelForAudioRoute:v4 withCompletion:v3];
}

void sub_100334484(uint64_t a1, char a2, void *a3, float a4)
{
  v7 = COERCE_DOUBLE(a3);
  if (v7 == 0.0)
  {
    if (a2)
    {
      v9 = [*(a1 + 32) _volumeService];
      v10 = *(a1 + 40);
      v11 = [v10 name];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10033466C;
      v13[3] = &unk_10051C738;
      v14 = a4;
      [v9 setSiriOutputVolume:v10 forAudioRoute:v11 withName:1 operationType:v13 completion:COERCE_DOUBLE(LODWORD(a4))];
    }

    else
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v16 = "[ADSpeechManager adjustSiriOutputVolumeForRouteIfNeeded:]_block_invoke";
        v17 = 2048;
        v18 = a4;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s No need to adjust the volume: %f", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[ADSpeechManager adjustSiriOutputVolumeForRouteIfNeeded:]_block_invoke_2";
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Error: %@", buf, 0x16u);
    }
  }
}

void sub_10033466C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  v5 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v11 = 136315650;
      v12 = "[ADSpeechManager adjustSiriOutputVolumeForRouteIfNeeded:]_block_invoke";
      v13 = 2048;
      v14 = v6;
      v15 = 2112;
      v16 = v3;
      v7 = "%s Failed to adjust volume to %f, reason: %@";
      v8 = v4;
      v9 = 32;
LABEL_7:
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, v7, &v11, v9);
    }
  }

  else if (v5)
  {
    v10 = *(a1 + 32);
    v11 = 136315394;
    v12 = "[ADSpeechManager adjustSiriOutputVolumeForRouteIfNeeded:]_block_invoke";
    v13 = 2048;
    v14 = v10;
    v7 = "%s Volume adjusted to %f";
    v8 = v4;
    v9 = 22;
    goto LABEL_7;
  }
}

uint64_t sub_100334950(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 240);
    LODWORD(v3) = *(v3 + 241);
    v6 = 136315650;
    v7 = "[ADSpeechManager _updateSiriOutputVolume:completion:]_block_invoke";
    v8 = 1024;
    v9 = v4;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s hasFetchedSmartSiriVolume = %d, hasUpdatedSiriOutputVolume = %d", &v6, 0x18u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100334DC8(uint64_t a1)
{
  v3 = [*(a1 + 32) _speechRecorder];
  v2 = [*(a1 + 40) copy];
  [v3 setEARLanguageDetectorSpeechRequestId:v2];
}

uint64_t sub_100334F18(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100335138(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechRecorder];
  [v2 setEndpointerThreshold:*(a1 + 40)];
}

void sub_100335224(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechRecorder];
  [v2 updateSpeechSynthesisRecord:*(a1 + 40)];
}

void sub_10033531C(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentSpeechCaptureSource];
  [v2 getLastStartpointTimestampAndCurrentTime:*(a1 + 40)];
}

void sub_1003353E8(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentSpeechCaptureSource];
  v3 = v2;
  if (*(a1 + 40) == 1)
  {
    [v2 forceSuccessAudioAlertOnStop];
    v2 = v3;
  }

  [v2 setFingerprintingEnabled:0];
}

void sub_10033559C(uint64_t a1)
{
  v1 = [*(a1 + 32) _currentSpeechCaptureSource];
  [v1 playRecordingStartAlert];
}

id sub_100335678(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ADSpeechManager setSpeechRecognizedContext:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s context = %@", &v5, 0x16u);
  }

  return [*(*(a1 + 40) + 160) setSpeechRecognizedContext:*(a1 + 32)];
}

void sub_1003357B4(uint64_t a1)
{
  v1 = [*(a1 + 32) _currentSpeechCaptureSource];
  [v1 enforcePreviousEndpointHint];
}

void sub_1003358C4(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentSpeechCaptureSource];
  [v2 updateEndpointHintForRC:*(a1 + 40) forceAccept:*(a1 + 56) completion:*(a1 + 48)];
}

void sub_100335A48(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentSpeechCaptureSource];
  [v2 updateASRFeatures:*(a1 + 40)];
}

void sub_100335B14(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentSpeechCaptureSource];
  [v2 suspendAutomaticEndpointingInRange:{*(a1 + 40), *(a1 + 48)}];
}

void sub_100335C5C(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[ADSpeechManager deactivateAudioSessionIfNoActiveAssertions]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
  }

  v3 = [*(*(a1 + 32) + 312) hasActiveAudioSessionAssertions];
  v4 = AFSiriLogContextSpeech;
  v5 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (!v5)
    {
      return;
    }

    v6 = *(*(a1 + 32) + 312);
    v12 = 136315394;
    v13 = "[ADSpeechManager deactivateAudioSessionIfNoActiveAssertions]_block_invoke";
    v14 = 2112;
    v15 = v6;
    v7 = "%s Skipped releasing audio session because %@ has active assertions.";
    v8 = v4;
    v9 = 22;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v7, &v12, v9);
    return;
  }

  if (v5)
  {
    v12 = 136315138;
    v13 = "[ADSpeechManager deactivateAudioSessionIfNoActiveAssertions]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s No active assertions, releasing audio session...", &v12, 0xCu);
  }

  v10 = [*(a1 + 32) _releaseSession];
  v11 = AFSiriLogContextSpeech;
  if (v10)
  {
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v12 = 136315138;
    v13 = "[ADSpeechManager deactivateAudioSessionIfNoActiveAssertions]_block_invoke";
    v7 = "%s Done releasing audio session.";
    v8 = v11;
    v9 = 12;
    goto LABEL_11;
  }

  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315138;
    v13 = "[ADSpeechManager deactivateAudioSessionIfNoActiveAssertions]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed releasing audio session.", &v12, 0xCu);
  }
}

uint64_t sub_100335F10(uint64_t a1)
{
  [*(*(a1 + 32) + 160) setSuppressInterruptionEndedNotifications:1];
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSpeechManager suppressAudioInterruptionEndedNotificationsAndEndSessionIfIdle:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Notifications suppressed", &v4, 0xCu);
  }

  if (AFIsHorseman())
  {
    [*(*(a1 + 32) + 312) relinquishLocalAssertions];
  }

  [*(a1 + 32) _endSessionIfIdle];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100336584(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    v3 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[ADSpeechManager _cancelRecordingIfNeededAndEndSessionWhenIdleWithCompletion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Completion is invoked by the deallocation of the safety block. Something went wrong.", &v5, 0xCu);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100336650(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 10) == 2)
    {
      *(WeakRetained + 104) = 1;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1003367C4;
      v5[3] = &unk_10051DFE8;
      v6 = *(a1 + 32);
      [v3 _addRecordStoppedCompletion:v5];
      [v3 _cancelRecordingWithError:0 suppressAlert:1];
    }

    else
    {
      v4 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v8 = "[ADSpeechManager _cancelRecordingIfNeededAndEndSessionWhenIdleWithCompletion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Recording failed to start releasing session in completion", buf, 0xCu);
      }

      [v3 _releaseSession];
      [*(a1 + 32) invoke];
    }
  }
}

intptr_t sub_100336A08(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void sub_100336C04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 32);
  v4 = v3[10];
  if ((v4 - 3) < 2)
  {
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[ADSpeechManager endSession]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Stopping, waiting for did stop to release session", buf, 0xCu);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1003370BC;
    v19[3] = &unk_10051DFE8;
    v20 = v2;
    v11 = objc_retainBlock(v19);
    v12 = *(a1 + 32);
    v13 = *(v12 + 96);
    *(v12 + 96) = v11;

    v9 = v20;
    goto LABEL_13;
  }

  if (v4 == 2)
  {
    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[ADSpeechManager endSession]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Recording, stopping record to release session", buf, 0xCu);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003370B4;
    v21[3] = &unk_10051DFE8;
    v22 = v2;
    v15 = objc_retainBlock(v21);
    v16 = *(a1 + 32);
    v17 = *(v16 + 96);
    *(v16 + 96) = v15;

    [*(a1 + 32) _cancelRecordingWithError:0 suppressAlert:1];
    v9 = v22;
    goto LABEL_13;
  }

  if (v4 == 1)
  {
    v5 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[ADSpeechManager endSession]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Started, waiting for did start to stop recording then release session", buf, 0xCu);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100336F58;
    v23[3] = &unk_10051DFE8;
    v24 = v2;
    v6 = objc_retainBlock(v23);
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = v6;

    v9 = v24;
LABEL_13:

    goto LABEL_14;
  }

  v18 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[ADSpeechManager endSession]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Asking AVVoiceController to release its audio session now", buf, 0xCu);
    v3 = *(a1 + 32);
  }

  [v3 _releaseSession];
LABEL_14:
}

void sub_100336F58(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[10] == 2)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003370C4;
    v8[3] = &unk_10051DFE8;
    v9 = v2;
    v3 = v9;
    v4 = objc_retainBlock(v8);
    v5 = *(a1 + 32);
    v6 = *(v5 + 96);
    *(v5 + 96) = v4;

    [*(a1 + 32) _cancelRecordingWithError:0 suppressAlert:1];
  }

  else
  {
    v7 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[ADSpeechManager endSession]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Recording failed to start releasing session in completion", buf, 0xCu);
      v2 = *(a1 + 32);
    }

    [v2 _releaseSession];
  }
}

void sub_1003373DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  v4 = AFSiriLogContextSpeech;
  v5 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
  if (v3 == 2)
  {
    if (v5)
    {
      v7 = 136315138;
      v8 = "[ADSpeechManager _stopSpeechCaptureWithOptions:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Stopping speech capture in completion", &v7, 0xCu);
      v2 = *(a1 + 32);
    }

    v6 = [v2 _currentSpeechCaptureSource];
    [v6 stopSpeechCaptureForEvent:*(a1 + 40) suppressAlert:*(a1 + 56) hostTime:*(a1 + 48)];

    [*(a1 + 32) _updateSpeechState:3];
  }

  else if (v5)
  {
    v7 = 136315138;
    v8 = "[ADSpeechManager _stopSpeechCaptureWithOptions:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Recording failed to start, ignoring stop in completion", &v7, 0xCu);
  }
}

void *sub_100337668(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[6] == 4)
  {
    return [result _stopSpeechCaptureWithOptions:*(a1 + 40)];
  }

  return result;
}

void sub_100337940(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  v4 = AFSiriLogContextSpeech;
  if (v3 == 1)
  {
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[ADSpeechManager cancelSpeechCaptureSuppressingAlert:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Recording started canceling in record start completion", buf, 0xCu);
      v2 = *(a1 + 32);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100337B90;
    v12[3] = &unk_10051CBD8;
    v13 = v2;
    v14 = *(a1 + 40);
    v6 = v13;
    v7 = objc_retainBlock(v12);
    v8 = *(a1 + 32);
    v9 = *(v8 + 88);
    *(v8 + 88) = v7;
  }

  else if (v3 == 2)
  {
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[ADSpeechManager cancelSpeechCaptureSuppressingAlert:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Canceling speech capture", buf, 0xCu);
      v2 = *(a1 + 32);
    }

    v5 = [v2 _currentSpeechCaptureSource];
    [v5 cancelSpeechCaptureSuppressingAlert:*(a1 + 40)];

    [*(*(a1 + 32) + 128) cancelCurrentSpeechLog];
    [*(a1 + 32) _updateSpeechState:4];
  }

  else if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v10 = v4;
    v11 = sub_10001A01C(v3);
    *buf = 136315394;
    v16 = "[ADSpeechManager cancelSpeechCaptureSuppressingAlert:]_block_invoke";
    v17 = 2112;
    v18 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Asked to cancel when we're in state %@", buf, 0x16u);
  }
}

void sub_100337B90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  v4 = AFSiriLogContextSpeech;
  v5 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
  if (v3 == 2)
  {
    if (v5)
    {
      v7 = 136315138;
      v8 = "[ADSpeechManager cancelSpeechCaptureSuppressingAlert:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Canceling speech capture in completion", &v7, 0xCu);
      v2 = *(a1 + 32);
    }

    v6 = [v2 _currentSpeechCaptureSource];
    [v6 cancelSpeechCaptureSuppressingAlert:*(a1 + 40)];

    [*(*(a1 + 32) + 128) cancelCurrentSpeechLog];
    [*(a1 + 32) _updateSpeechState:4];
  }

  else if (v5)
  {
    v7 = 136315138;
    v8 = "[ADSpeechManager cancelSpeechCaptureSuppressingAlert:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Recording failed to start, ignoring cancel in completion", &v7, 0xCu);
  }
}

id sub_100337DD4(uint64_t a1)
{
  *(*(a1 + 32) + 44) = 1;
  *(*(a1 + 32) + 256) = 0;
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  if (*(a1 + 56))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *(*(a1 + 32) + 48) = v2;
  v3 = [ADSpeechPlaybackSimulator alloc];
  v4 = *(a1 + 32);
  v5 = v4[3];
  v6 = v4[17];
  v7 = v4[18];
  v8 = v4[24];
  v9 = +[ADExperimentManager sharedManager];
  v10 = [v9 context];
  v11 = [(ADSpeechPlaybackSimulator *)v3 initWithQueue:v5 speechController:v6 audioSessionController:v7 audioPlaybackService:v8 experimentContext:v10];
  v12 = *(a1 + 32);
  v13 = *(v12 + 168);
  *(v12 + 168) = v11;

  objc_storeStrong((*(a1 + 32) + 152), *(*(a1 + 32) + 168));
  v14 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v15 = *(*(a1 + 32) + 152);
    *buf = 136315394;
    v26 = "[ADSpeechManager startSpeechCaptureWithURL:isNarrowBand:isDictation:sessionUUID:]_block_invoke";
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Speech capturing set to %@.", buf, 0x16u);
  }

  [*(*(a1 + 32) + 168) setDelegate:?];
  v16 = *(a1 + 32);
  v17 = *(v16 + 168);
  v18 = *(a1 + 48);
  v19 = *(a1 + 57);
  v20 = *(a1 + 56);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100338010;
  v24[3] = &unk_10051DFE8;
  v24[4] = v16;
  [v17 startPlaybackWithURL:v18 narrowBand:v19 dictation:v20 completion:v24];
  v21 = *(a1 + 32);
  v22 = +[NSProcessInfo processInfo];
  [v22 systemUptime];
  [v21 _tellDelegateSpeechWillBeginWithTimestamp:1 isFromFile:1 isAudioPowerUpdateDisabled:?];

  return [*(a1 + 32) _updateSpeechState:1];
}

void sub_100338010(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100338084;
  block[3] = &unk_10051DFE8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_100338084(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 152), *(*(a1 + 32) + 160));
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  *(v2 + 168) = 0;

  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(a1 + 32) + 152);
    v6 = 136315394;
    v7 = "[ADSpeechManager startSpeechCaptureWithURL:isNarrowBand:isDictation:sessionUUID:]_block_invoke_2";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Speech capturing set to %@.", &v6, 0x16u);
  }
}

void sub_1003381FC(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechCompressor];
  [v2 addAudioSampleData:*(a1 + 40)];
}

void sub_100338330(uint64_t a1)
{
  *(*(a1 + 32) + 44) = 1;
  *(*(a1 + 32) + 256) = 0;
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = 2;
  if (*(a1 + 48))
  {
    v3 = 3;
  }

  *(*(a1 + 32) + 48) = v3;
  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v18 = 136315394;
    v19 = "[ADSpeechManager startRecordedDictationCaptureWithSessionUUID:narrowband:secureOfflineOnly:]_block_invoke";
    v20 = 1024;
    LODWORD(v21) = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s secureOfflineOnly is %d", &v18, 0x12u);
  }

  v5 = [*(a1 + 32) _speechCompressor];
  [v5 reset];
  objc_storeStrong((*(a1 + 32) + 152), v5);
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(a1 + 32) + 152);
    v18 = 136315394;
    v19 = "[ADSpeechManager startRecordedDictationCaptureWithSessionUUID:narrowband:secureOfflineOnly:]_block_invoke";
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Speech capturing set to %@.", &v18, 0x16u);
  }

  [v5 startCompressionNarrowband:*(a1 + 49)];
  [*(*(a1 + 32) + 8) invalidate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = 0;

  if (AFOfflineDictationCapable() && ([*(*(a1 + 32) + 288) applicationName], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"OnDeviceDictationAudioData"), v10, (v11 & 1) == 0))
  {
    objc_storeStrong((*(a1 + 32) + 16), CoreEmbeddedSpeechRecognizerTaskDictation);
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    *(v12 + 16) = 0;

    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v15 = *(*(a1 + 32) + 272);
      v18 = 136315394;
      v19 = "[ADSpeechManager startRecordedDictationCaptureWithSessionUUID:narrowband:secureOfflineOnly:]_block_invoke";
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Not using local speech recognition for recorded %@", &v18, 0x16u);
    }
  }

  v16 = *(a1 + 32);
  v17 = +[NSProcessInfo processInfo];
  [v17 systemUptime];
  [v16 _tellDelegateSpeechWillBeginWithTimestamp:0 isFromFile:1 isAudioPowerUpdateDisabled:?];

  [*(a1 + 32) _updateSpeechState:1];
}

void sub_100338EBC(uint64_t a1)
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1003393BC;
  v33[3] = &unk_10051C588;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v35 = &v36;
  v33[4] = v4;
  v34 = v5;
  v32 = 0;
  LODWORD(v3) = [v2 startSpeechCaptureWithContext:v3 willStartHandler:v33 error:&v32];
  v6 = v32;
  v7 = +[NSProcessInfo processInfo];
  [v7 systemUptime];
  v9 = v8;

  if (v3)
  {
    if (*(a1 + 64) == 1 && [*(a1 + 56) isInitialBringUp])
    {
      v10 = v37[3];
      [*(a1 + 56) expectedActivationEventTime];
      [AFAggregator logTimeToBeepWithDuration:v10 - v11];
    }

    if (*(*(a1 + 48) + 304))
    {
      v12 = *(a1 + 56);
      if (v12 && [v12 disableInputAudioPowerUpdate])
      {
        v13 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v41 = "[ADSpeechManager _startCaptureForMode:options:context:]_block_invoke";
          v14 = "%s Audio power updater disabled.";
LABEL_29:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
        }
      }

      else
      {
        v31 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v41 = "[ADSpeechManager _startCaptureForMode:options:context:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s Audio power updater enabled.", buf, 0xCu);
        }

        [*(*(a1 + 48) + 304) beginUpdate];
      }
    }

    else
    {
      v13 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v41 = "[ADSpeechManager _startCaptureForMode:options:context:]_block_invoke";
        v14 = "%s Audio power updater not supported.";
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (v37[3] == 0.0)
    {
      v15 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v41 = "[ADSpeechManager _startCaptureForMode:options:context:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Inserting will start on speech failure", buf, 0xCu);
      }

      [*(a1 + 48) _tellDelegateSpeechWillBeginWithTimestamp:0 isFromFile:objc_msgSend(*(a1 + 56) isAudioPowerUpdateDisabled:{"disableInputAudioPowerUpdate"), v9}];
    }

    [*(a1 + 48) _tellDelegateSpeechFailedWithError:v6];
    if ([*(a1 + 56) audioFileType])
    {
      [*(a1 + 48) _tellDelegateAudioFileDidFinish:0 error:v6];
    }

    [*(a1 + 48) _updateSpeechState:0];
    v16 = *(a1 + 48);
    v17 = *(v16 + 88);
    if (v17)
    {
      v18 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v19 = *(v16 + 40);
        v20 = v18;
        v21 = sub_10001A01C(v19);
        *buf = 136315394;
        v41 = "[ADSpeechManager _startCaptureForMode:options:context:]_block_invoke";
        v42 = 2112;
        v43 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Invoking recording started completion (state = %@)", buf, 0x16u);

        v17 = *(*(a1 + 48) + 88);
      }

      (*(v17 + 16))(v17);
      v22 = *(a1 + 48);
      v23 = *(v22 + 88);
      *(v22 + 88) = 0;

      v16 = *(a1 + 48);
    }

    v24 = *(v16 + 96);
    if (v24)
    {
      v25 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v26 = *(v16 + 40);
        v27 = v25;
        v28 = sub_10001A01C(v26);
        *buf = 136315394;
        v41 = "[ADSpeechManager _startCaptureForMode:options:context:]_block_invoke";
        v42 = 2112;
        v43 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Invoking recording stopped completion (state = %@)", buf, 0x16u);

        v24 = *(*(a1 + 48) + 96);
      }

      (*(v24 + 16))(v24);
      v29 = *(a1 + 48);
      v30 = *(v29 + 96);
      *(v29 + 96) = 0;
    }
  }

  _Block_object_dispose(&v36, 8);
}

void sub_100339388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1003393BC(uint64_t a1)
{
  v2 = +[NSProcessInfo processInfo];
  [v2 systemUptime];
  *(*(*(a1 + 48) + 8) + 24) = v3;

  v4 = *(*(*(a1 + 48) + 8) + 24);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) disableInputAudioPowerUpdate];

  return [v5 _tellDelegateSpeechWillBeginWithTimestamp:0 isFromFile:v6 isAudioPowerUpdateDisabled:v4];
}

void sub_1003395A0(uint64_t a1)
{
  [*(a1 + 32) _startCaptureForMode:*(a1 + 56) options:*(a1 + 40) context:*(a1 + 48)];
  v1 = +[AFAnalytics sharedAnalytics];
  [v1 logEventWithType:302 context:0];
}

void sub_1003397A4(uint64_t a1)
{
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

void sub_1003398E4(uint64_t a1)
{
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [*(a1 + 40) copy];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  objc_storeStrong((*(a1 + 32) + 272), v5);
  if (v4)
  {
  }
}

id sub_100339AE0(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  [*(*(a1 + 32) + 160) setClientConfiguration:*(a1 + 40)];
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 184);

  return [v6 setClientConfiguration:v5];
}

void sub_10033A390(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    if (*(*(a1 + 32) + 120) != 1 || ([AFError errorWithCode:29], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v17 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v18 = *(*(a1 + 32) + 40);
        v19 = v17;
        v20 = sub_10001A01C(v18);
        *buf = 136315394;
        v47 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
        v48 = 2112;
        v49 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s End preparing audio system. (speechState = %@)", buf, 0x16u);
      }

      v8 = [*(a1 + 40) fetchAudioSessionID];
      v21 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v47 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
        v48 = 2048;
        v49 = v8;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s audioSessionID = %lu", buf, 0x16u);
      }

      if ((AFSupportsRecordFromBluetoothDevice() & 1) != 0 || AFSupportsPlaybackToBluetoothDevice())
      {
        v22 = [*(a1 + 40) fetchRecordingInfo];
        v23 = *(a1 + 32);
        v24 = [v22 route];
        v25 = [v22 deviceIdentifier];
        [v23 _updateRecordRoute:v24 andDeviceIdentifier:v25];

        v26 = +[ADBluetoothManager sharedInstance];
        v7 = [v26 deviceWithRecordingInfo:v22];

        [v7 getDeviceInfo:&stru_10051C3A8];
      }

      else
      {
        v30 = [*(*(a1 + 32) + 216) recordDeviceInfo];
        if (v30)
        {
          v22 = v30;
        }

        else if ((objc_opt_respondsToSelector() & 1) == 0 || (([*(*(a1 + 32) + 136) performSelector:"fetchAudioDeviceInfo"], v38 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v39 = 0) : (v39 = v38), v38, objc_msgSend(v39, "recordDeviceInfo"), v22 = objc_claimAutoreleasedReturnValue(), v39, !v22))
        {
          v7 = 0;
LABEL_20:
          v6 = 1;
          v4 = 0;
          if ([*(a1 + 48) reason] == 3)
          {
            *(*(a1 + 32) + 211) = 1;
          }

          goto LABEL_5;
        }

        v31 = *(a1 + 32);
        v32 = [v22 route];
        v33 = [v22 remoteDeviceUID];
        v34 = [v33 UUIDString];
        [v31 _updateRecordRoute:v32 andDeviceIdentifier:v34];

        v7 = 0;
      }

      goto LABEL_20;
    }
  }

  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v35 = *(*(a1 + 32) + 40);
    v36 = v5;
    v37 = sub_10001A01C(v35);
    *buf = 136315650;
    v47 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
    v48 = 2112;
    v49 = v4;
    v50 = 2112;
    v51 = v37;
    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s End preparing audio system with error %@. (speechState = %@)", buf, 0x20u);
  }

  [*(a1 + 56) relinquishWithError:v3 options:0];
  v6 = 0;
  v7 = 0;
  v8 = 0;
LABEL_5:
  v45[0] = *(a1 + 64);
  v9 = AFAnalyticsContextCreateWithError();
  v45[1] = v9;
  v10 = *(*(a1 + 32) + 224);
  if (!v10)
  {
    v10 = @"Unknown";
  }

  v43 = @"recordRoute";
  v44 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v45[2] = v11;
  v12 = [NSArray arrayWithObjects:v45 count:3];
  v13 = AFAnalyticsContextsMerge();

  v14 = +[AFAnalytics sharedAnalytics];
  [v14 logEventWithType:245 context:v13 contextNoCopy:1];

  v15 = *(a1 + 72);
  if (v15)
  {
    if (v6)
    {
      v16 = *(a1 + 56);
    }

    else
    {
      v16 = 0;
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10033B8B4;
    v40[3] = &unk_10051C3D0;
    v42 = v8;
    v41 = v4;
    v27 = [AFSetAudioSessionActiveResult newWithBuilder:v40];
    (*(v15 + 16))(v15, v16, v7, v27);
  }

  --*(*(a1 + 32) + 112);
  v28 = *(a1 + 32);
  if (!*(v28 + 112) && *(v28 + 120) == 1)
  {
    v29 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v47 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s Release audio session now because releasing audio session was requested during audio system preparation.", buf, 0xCu);
      v28 = *(a1 + 32);
    }

    [v28 _releaseSession];
  }
}

void sub_10033A9AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 32) + 40);
      v6 = v4;
      v7 = sub_10001A01C(v5);
      *buf = 136315394;
      v19 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Begin waiting for speech recording to stop. (speechState = %@)", buf, 0x16u);
    }

    v8 = mach_absolute_time();
    v9 = [AFSafetyBlock alloc];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10033B7B4;
    v15[3] = &unk_10051C420;
    v17 = v8;
    v16 = v3;
    v10 = [v9 initWithBlock:v15];
    v11 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10033B8AC;
    v13[3] = &unk_10051DFE8;
    v14 = v10;
    v12 = v10;
    [v11 _addRecordStoppedCompletion:v13];
  }
}

void sub_10033AB8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 32) + 40);
      v6 = v4;
      v7 = sub_10001A01C(v5);
      *buf = 136315394;
      v20 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke_2";
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Begin waiting for alerts to stop. (speechState = %@)", buf, 0x16u);
    }

    v8 = mach_absolute_time();
    v9 = [AFOneArgumentSafetyBlock alloc];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10033B62C;
    v16[3] = &unk_10051C470;
    v18 = v8;
    v17 = v3;
    v10 = [AFError errorWithCode:224 description:@"Safety continuation is dropped unexpectedly." underlyingError:0];
    v11 = [v9 initWithBlock:v16 defaultValue:v10];

    v12 = *(a1 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10033B7A8;
    v14[3] = &unk_10051C498;
    v15 = v11;
    v13 = v11;
    [v12 performBlockAfterAlerts:v14 timeout:0.5];
  }
}

id sub_10033ADA0(uint64_t a1)
{
  v2 = [*(a1 + 32) reason];
  if ((v2 - 1) > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1003F07B8[(v2 - 1)];
  }

  v4 = *(a1 + 40);
  if (*(v4 + 120) == 1)
  {
    v5 = [AFError errorWithCode:29];
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(a1 + 40) + 40);
      v8 = v6;
      v9 = sub_10001A01C(v7);
      *buf = 136315394;
      v25 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke_2";
      v26 = 2112;
      v27 = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Skip speech recorder preparation because releasing audio session was requested. (speechState = %@)", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if (*(v4 + 211) == 1 && [*(a1 + 32) reason] == 3)
  {
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Skipped speech recorder preparation because audio system has prepared for playback.", buf, 0xCu);
    }

LABEL_18:
    v5 = 0;
    goto LABEL_19;
  }

  v11 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v12 = *(*(a1 + 40) + 40);
    v13 = v11;
    v14 = sub_10001A01C(v12);
    *buf = 136315394;
    v25 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Begin speech recorder preparation. (speechState = %@)", buf, 0x16u);
  }

  mach_absolute_time();
  v15 = *(a1 + 48);
  v23 = 0;
  [v15 prepareSpeechCaptureWithOptions:v3 error:&v23];
  v16 = v23;
  v17 = AFSiriLogContextSpeech;
  if (!v16)
  {
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v20 = v17;
      mach_absolute_time();
      AFMachAbsoluteTimeGetTimeInterval();
      *buf = 136315394;
      v25 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
      v26 = 2048;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s End speech recorder preparation. (duration = %f)", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v5 = v16;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v18 = v17;
    mach_absolute_time();
    AFMachAbsoluteTimeGetTimeInterval();
    *buf = 136315650;
    v25 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
    v26 = 2112;
    v27 = v5;
    v28 = 2048;
    v29 = v19;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s End speech recorder preparation with error %@. (duration = %f)", buf, 0x20u);
  }

LABEL_19:

  return v5;
}

void sub_10033B120(uint64_t a1)
{
  v2 = [*(a1 + 32) speechRequestOptions];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) speechRequestOptions];
    [v3 setSpeechRequestOptions:v4];
  }

  if ([*(a1 + 32) options])
  {
    if (*(*(a1 + 48) + 40))
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10033B4C4;
      v12[3] = &unk_10051C510;
      v5 = *(a1 + 64);
      v14 = *(a1 + 72);
      v15 = *(a1 + 80);
      v13 = *(a1 + 56);
      (*(v5 + 16))(v5, v12);

      v6 = v14;
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10033B56C;
      v9[3] = &unk_10051E038;
      v7 = *(a1 + 72);
      v11 = *(a1 + 80);
      v10 = *(a1 + 56);
      (*(v7 + 16))(v7, v9);

      v6 = v11;
    }
  }

  else
  {
    v8 = (*(*(a1 + 80) + 16))();
    [*(a1 + 56) invokeWithValue:v8];
  }
}

uint64_t sub_10033B310(void *a1, int a2)
{
  if (!a2)
  {
    v8 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      return (*(a1[5] + 16))();
    }

    v10 = a1[6];
    v6 = v8;
    mach_absolute_time();
    AFMachAbsoluteTimeGetTimeInterval();
    v12 = 136315650;
    v13 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
    v14 = 2048;
    v15 = v10;
    v16 = 2048;
    v17 = v11;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s End waiting for Siri output volume to update after host time %llu due to timed out. (duration = %f)", &v12, 0x20u);
    goto LABEL_6;
  }

  v3 = a1[4];
  if (a1[6] == *(v3 + 248))
  {
    *(v3 + 248) = 0;
  }

  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v5 = a1[6];
    v6 = v4;
    mach_absolute_time();
    AFMachAbsoluteTimeGetTimeInterval();
    v12 = 136315650;
    v13 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
    v14 = 2048;
    v15 = v5;
    v16 = 2048;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s End waiting for Siri output volume to update after host time %llu. (duration = %f)", &v12, 0x20u);
LABEL_6:
  }

  return (*(a1[5] + 16))();
}

void sub_10033B4C4(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10033B5CC;
  v3[3] = &unk_10051E038;
  v2 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  (*(v2 + 16))(v2, v3);
}

void sub_10033B56C(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invokeWithValue:v2];
}

void sub_10033B5CC(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invokeWithValue:v2];
}

void sub_10033B62C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextSpeech;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      mach_absolute_time();
      AFMachAbsoluteTimeGetTimeInterval();
      v8 = 136315650;
      v9 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      v12 = 2048;
      v13 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s End waiting for alerts to stop with error %@. (duration = %f)", &v8, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    mach_absolute_time();
    AFMachAbsoluteTimeGetTimeInterval();
    v8 = 136315394;
    v9 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s End waiting for alerts to stop. (duration = %f)", &v8, 0x16u);
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10033B7B4(uint64_t a1, uint64_t a2)
{
  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    mach_absolute_time();
    AFMachAbsoluteTimeGetTimeInterval();
    v8 = 136315650;
    v9 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s End waiting for speech recording to stop. (signal = %ld, duration = %f)", &v8, 0x20u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10033B8B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setAudioSessionID:v3];
  [v4 setError:*(a1 + 32)];
}

void sub_10033B910(id a1, AFBluetoothDeviceInfo *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADSpeechManager _prepareAudioSystemWithContext:audioSessionAssertion:completion:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s bluetoothDevice = %@", &v4, 0x16u);
  }
}

void sub_10033BB44(uint64_t a1, void *a2)
{
  v9 = a2;
  [v9 setTimestamp:mach_absolute_time()];
  [v9 setReason:@"Prepare Audio System"];
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [*(a1 + 32) speechRequestOptions];
  if (v4)
  {
    [v3 setObject:v4 forKey:AFAudioSessionAssertionUserInfoKey[0]];
  }

  v5 = [*(a1 + 32) options];
  if (v5)
  {
    v6 = [NSNumber numberWithUnsignedInteger:v5];
    [v3 setObject:v6 forKey:AFAudioSessionAssertionUserInfoKey[1]];
  }

  v7 = [*(a1 + 32) reason];
  if (v7)
  {
    v8 = [NSNumber numberWithInteger:v7];
    [v3 setObject:v8 forKey:AFAudioSessionAssertionUserInfoKey[2]];
  }

  [v3 setObject:&__kCFBooleanTrue forKey:AFAudioSessionAssertionUserInfoKey[3]];

  [v9 setUserInfo:v3];
}

id sub_10033BDCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[10])
  {
    v3 = [v2 _speechRecorder];
    [v3 preheatRecognizerWithOption:*(a1 + 40)];
  }

  v4 = *(a1 + 40);

  return [v4 isTest];
}

void sub_10033BF58(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _speechRecorder];
    [v2 setSpeechRequestOptions:*(a1 + 32)];
  }

  v3 = *(a1 + 40);
  if (!*(v3 + 40))
  {
    *(v3 + 210) = 1;
    v4 = [*(a1 + 40) _speechRecorder];
    [v4 preheatWithOption:*(a1 + 32)];
  }
}

void sub_10033C164(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32) == *(v1 + 8))
  {
    if (*(v1 + 16))
    {
      IsOfflineOnly = CSSiriSpeechRecordingModeIsOfflineOnly();
    }

    else
    {
      IsOfflineOnly = 0;
    }

    v5 = *(a1 + 48);
    v6 = AFSiriLogContextSpeech;
    if (v5 && os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[ADSpeechManager localSpeechRecognizer:didCompletionRecognitionWithStatistics:error:]_block_invoke";
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Speech recognition encountered error: %{public}@", &v12, 0x16u);
      v6 = AFSiriLogContextSpeech;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[ADSpeechManager localSpeechRecognizer:didCompletionRecognitionWithStatistics:error:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Invalidating local speech recognizer connection for finish", &v12, 0xCu);
    }

    [*(a1 + 40) resetLocalRecognizer];
    v7 = *(a1 + 40);
    if (*(v7 + 44) == 1)
    {
      WeakRetained = objc_loadWeakRetained((v7 + 80));
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = [*(v9 + 64) sessionUUID];
      [WeakRetained speechManager:v9 recognitionDidCompleteWithError:v10 secureOfflineOnlyRecognition:IsOfflineOnly sessionUUID:v11 statistics:*(a1 + 56)];
    }
  }

  else
  {
    v2 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[ADSpeechManager localSpeechRecognizer:didCompletionRecognitionWithStatistics:error:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Ignoring completion from previous recognizer", &v12, 0xCu);
    }
  }
}

void sub_10033C430(void *a1)
{
  v1 = a1[5];
  if (a1[4] == *(v1 + 8))
  {
    if (*(v1 + 44))
    {
      WeakRetained = objc_loadWeakRetained((v1 + 80));
      v5 = a1[5];
      v4 = a1[6];
      v6 = [*(v5 + 64) sessionUUID];
      [WeakRetained speechManager:v5 didProduceLocalLoggablePackage:v4 sessionUUID:v6];
    }

    else
    {
      v7 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v10 = "[ADSpeechManager localSpeechRecognizer:didProduceLoggablePackage:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[ADSpeechManager localSpeechRecognizer:didProduceLoggablePackage:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Ignoring package from previous recognizer", buf, 0xCu);
    }
  }
}

void sub_10033C698(void *a1)
{
  v1 = a1[5];
  if (a1[4] == *(v1 + 8))
  {
    if (*(v1 + 44))
    {
      WeakRetained = objc_loadWeakRetained((v1 + 80));
      v5 = a1[5];
      v4 = a1[6];
      v6 = [*(v5 + 64) sessionUUID];
      [WeakRetained speechManager:v5 didRecognizePackage:v4 sessionUUID:v6];
    }

    else
    {
      v7 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v10 = "[ADSpeechManager localSpeechRecognizer:didRecognizePackage:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", buf, 0xCu);
      }
    }
  }

  else
  {
    v2 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[ADSpeechManager localSpeechRecognizer:didRecognizePackage:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Ignoring phrases from previous recognizer", buf, 0xCu);
    }
  }
}

void sub_10033C8D4(uint64_t a1)
{
  if (CSSiriSpeechRecordingModeIsOfflineOnly())
  {
    v2 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "[ADSpeechManager localSpeechRecognizer:didRecognizeRawEagerRecognitionCandidate:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Speech skipping sending raw eager recognition candidate callback", buf, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [*(v4 + 64) sessionUUID];
    [WeakRetained speechManager:v4 didRecognizeRawEagerRecognitionCandidate:v3 sessionUUID:v5];
  }
}

void sub_10033CB9C(void *a1)
{
  if (AFSupportsASROnDevice())
  {
    v2 = a1[5];
    goto LABEL_6;
  }

  v2 = a1[5];
  if (a1[4] == *(v2 + 8))
  {
LABEL_6:
    if (*(v2 + 44))
    {
      WeakRetained = objc_loadWeakRetained((v2 + 80));
      v5 = a1[5];
      v4 = a1[6];
      v6 = [*(v5 + 64) sessionUUID];
      [WeakRetained speechManager:v5 didRecognizeTokens:v4 sessionUUID:v6];
    }

    else
    {
      v7 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v10 = "[ADSpeechManager localSpeechRecognizer:didRecognizeTokens:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Speech finished dropping callback", buf, 0xCu);
      }
    }

    return;
  }

  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADSpeechManager localSpeechRecognizer:didRecognizeTokens:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Ignoring tokens from previous recognizer", buf, 0xCu);
  }
}

uint64_t sub_10033CEA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10033CEB8(uint64_t a1)
{
  v2 = [*(a1 + 32) _recordingInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10033CFA8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _recordingInfo];
  (*(v1 + 16))(v1, v2);
}

void sub_10033D0A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _volumeService];
  (*(v1 + 16))(v1, v2);
}

void sub_10033D178(uint64_t a1)
{
  if (sub_10001A2F8(*(*(a1 + 32) + 32)))
  {
    v2 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v4 = 136315394;
      v5 = "[ADSpeechManager setDirtySiriOutputVolumeHostTime:]_block_invoke";
      v6 = 2048;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s dirtySiriOutputVolumeHostTime = %llu", &v4, 0x16u);
    }

    *(*(a1 + 32) + 248) = *(a1 + 40);
  }
}

void sub_10033D39C(uint64_t a1)
{
  v2 = [*(a1 + 32) hasActiveAudioSessionAssertions];
  v3 = AFSiriLogContextSpeech;
  v4 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (!v4)
    {
      return;
    }

    v5 = *(a1 + 32);
    v11 = 136315394;
    v12 = "[ADSpeechManager audioSessionCoordinator:releaseAudioSessionWithContext:]_block_invoke";
    v13 = 2112;
    v14 = v5;
    v6 = "%s Skipped releasing audio session because %@ has active assertions.";
    v7 = v3;
    v8 = 22;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v6, &v11, v8);
    return;
  }

  if (v4)
  {
    v11 = 136315138;
    v12 = "[ADSpeechManager audioSessionCoordinator:releaseAudioSessionWithContext:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Releasing audio session...", &v11, 0xCu);
  }

  v9 = [*(a1 + 40) _releaseSession];
  v10 = AFSiriLogContextSpeech;
  if (v9)
  {
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v11 = 136315138;
    v12 = "[ADSpeechManager audioSessionCoordinator:releaseAudioSessionWithContext:]_block_invoke";
    v6 = "%s Done releasing audio session.";
    v7 = v10;
    v8 = 12;
    goto LABEL_9;
  }

  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315138;
    v12 = "[ADSpeechManager audioSessionCoordinator:releaseAudioSessionWithContext:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed releasing audio session.", &v11, 0xCu);
  }
}

void sub_10033D6B0(uint64_t a1)
{
  v2 = [*(a1 + 32) hasActiveAudioSessionAssertions];
  v3 = AFSiriLogContextSpeech;
  v4 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v8 = 136315138;
      v9 = "[ADSpeechManager audioSessionCoordinator:prepareAudioSessionWithContext:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Preparing audio session...", &v8, 0xCu);
    }

    v5 = *(a1 + 40);
    v6 = [AFSetAudioSessionActiveContext newWithBuilder:&stru_10051C300];
    [v5 _prepareAudioSystemWithContext:v6 audioSessionAssertion:0 completion:&stru_10051C340];
  }

  else if (v4)
  {
    v7 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[ADSpeechManager audioSessionCoordinator:prepareAudioSessionWithContext:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Skipped preparing audio session because %@ has no active assertions.", &v8, 0x16u);
  }
}

void sub_10033D800(id a1, AFRelinquishableAssertion *a2, AFBluetoothDevice *a3, AFSetAudioSessionActiveResult *a4)
{
  v4 = [(AFSetAudioSessionActiveResult *)a4 error];
  v5 = AFSiriLogContextSpeech;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[ADSpeechManager audioSessionCoordinator:prepareAudioSessionWithContext:]_block_invoke_2";
      v8 = 2112;
      v9 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed preparing audio session with error %@.", &v6, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADSpeechManager audioSessionCoordinator:prepareAudioSessionWithContext:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Done preparing audio session.", &v6, 0xCu);
  }
}

void sub_10033D91C(id a1, AFSetAudioSessionActiveContextMutating *a2)
{
  v3 = a2;
  [(AFSetAudioSessionActiveContextMutating *)v3 setOptions:2];
  [(AFSetAudioSessionActiveContextMutating *)v3 setReason:3];
  if (AFIsHorseman())
  {
    v2 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:1];
  }

  else
  {
    v2 = 0;
  }

  [(AFSetAudioSessionActiveContextMutating *)v3 setSpeechRequestOptions:v2];
}

void sub_1003408CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 16);
  *(v2 + 16) = 0;
}

void sub_10034099C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v3 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[ADSpeechManager cancelLocalRecognitionIfActive]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Canceling local recognition because servers results have arrived.", &v8, 0xCu);
      v1 = *(a1 + 32);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(a1 + 32);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;

      v1 = *(a1 + 32);
    }

    v7 = *(v1 + 16);
    *(v1 + 16) = 0;
  }
}

void sub_100340BEC(uint64_t a1)
{
  v2 = [*(a1 + 32) _interactiveLocalSpeechRecognizer];
  [v2 resetDESWithCompletion:*(a1 + 40)];
}

void sub_100340CD8(uint64_t a1)
{
  v2 = +[SFEntitledAssetManager sharedInstance];
  v3 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
  v4 = [v2 detailedInstallationStatusForLanguagesWithAssetType:3 subscriberId:v3];

  (*(*(a1 + 32) + 16))();
}

void sub_100340EFC(uint64_t a1)
{
  v2 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[ADSpeechManager dictationSessionDidComplete]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Dictation session did complete, enabling asset fetch in subsequent requests if needed", buf, 0xCu);
  }

  if (AFOfflineDictationCapable())
  {
    v3 = objc_alloc_init(NSMutableSet);
    v4 = v3;
    v5 = *(a1 + 32);
    if (*(v5 + 272))
    {
      [v3 addObject:?];
      v5 = *(a1 + 32);
    }

    if (*(v5 + 280))
    {
      [v4 addObjectsFromArray:?];
    }

    v6 = +[ADDictationOfflineStatusObserver sharedDictationOfflineStatusObserver];
    v7 = [v6 offlineDictationStatus];

    v8 = [v7 allKeys];
    v9 = [NSSet setWithArray:v8];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = AFOfflineDictationLanguageForKeyboardLanguage();
          if (v15)
          {
            v16 = [[SFEntitledAssetConfig alloc] initWithLanguage:v15 assetType:3];
            v17 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
            [SFEntitledAssetManager subscribeToAssetWithConfig:v16 regionId:0 subscriberId:v17 expiration:0];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

void sub_100341CA4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) _speechRecorder];
  v2 = [v3 currentVTSatScore];
  (*(v1 + 16))(v1, v2);
}

void sub_1003420A0(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADSpeechManager _initWithInstanceContext:]_block_invoke_2";
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

void sub_1003421BC(id a1)
{
  v1 = [ADSpeechManager alloc];
  v4 = +[AFInstanceContext currentContext];
  v2 = [(ADSpeechManager *)v1 _initWithInstanceContext:v4];
  v3 = qword_100590AC0;
  qword_100590AC0 = v2;
}

void sub_100342AF8(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentRequest];
  v3 = [v2 requestInfo];
  v4 = [v3 startLocalRequest];
  v5 = [v4 aceId];

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 40);
    v10 = v6;
    v11 = [v9 userInfo];
    v12 = 136315650;
    v13 = "[ADExternalNotificationRequestHandler audioPlaybackService:didStartRequest:]_block_invoke";
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v5;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s playback request: %@, current request: %@", &v12, 0x20u);
  }

  v7 = [*(a1 + 40) UUID];
  v8 = [v7 isEqualToString:v5];

  if (v8)
  {
    [*(a1 + 32) _clearCurrentNotificationTimer];
    [*(a1 + 32) _completeNotificationsWithSuccess:1 forReason:1 shouldEmitInstrumentationEvent:1];
  }
}

void sub_100342CEC(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentState];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = AFExternalNotificationRequestHandlerStateGetName();
    v6 = 136315394;
    v7 = "[ADExternalNotificationRequestHandler speechManager:didStopUnexpectlyWithError:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s CSOSL stopped listening unexpectedly, current state: %@", &v6, 0x16u);
  }

  if ((v2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [*(a1 + 32) _stopCurrentRequestWithReason:18 shouldCancelRequest:1];
    [*(a1 + 32) _completeNotificationsWithSuccess:0 forReason:16 shouldEmitInstrumentationEvent:1];
  }
}

void sub_100342EC4(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    if (v3 > 4)
    {
      v5 = @"(unknown)";
    }

    else
    {
      v5 = *(&off_100519EA8 + v3);
    }

    v6 = v5;
    v7 = *(a1 + 60);
    *buf = 136315650;
    v29 = "[ADExternalNotificationRequestHandler speechManager:detectedSpeechForListeningType:atHostTime:shouldHandleActivation:]_block_invoke";
    v30 = 2112;
    v31 = v6;
    v32 = 1024;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s type = %@ shouldHandleActivation: %d", buf, 0x1Cu);
  }

  v8 = [*(*(a1 + 32) + 112) requestType];
  if (v8 == 2)
  {
    v13 = *(a1 + 32);
    if (*(v13 + 40) != 5)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      return;
    }

    v14 = *(v13 + 80);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003432BC;
    v21[3] = &unk_10051CB88;
    v15 = *(a1 + 48);
    v21[4] = v13;
    v21[5] = v15;
    v22 = *(a1 + 56);
    v12 = v21;
    goto LABEL_20;
  }

  if (v8 != 1)
  {
    return;
  }

  if (!_os_feature_enabled_impl() || *(a1 + 60) == 1)
  {
    v9 = [*(a1 + 32) _currentState];
    v10 = *(a1 + 32);
    if (v9 != 3)
    {
      if ([v10 _currentState] != 5)
      {
        return;
      }

      v16 = *(a1 + 32);
      v14 = *(v16 + 80);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100343260;
      v25[3] = &unk_10051CB88;
      v17 = *(a1 + 48);
      v25[4] = v16;
      v25[5] = v17;
      v26 = *(a1 + 56);
      v12 = v25;
      goto LABEL_20;
    }

    v11 = v10[10];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100343250;
    v27[3] = &unk_10051DFE8;
    v27[4] = v10;
    v12 = v27;
    goto LABEL_19;
  }

  v18 = [*(a1 + 32) _currentState];
  v19 = *(a1 + 32);
  if (v18 == 3)
  {
    v11 = v19[10];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100343270;
    block[3] = &unk_10051DFE8;
    block[4] = v19;
    v12 = block;
LABEL_19:
    v14 = v11;
LABEL_20:
    dispatch_async(v14, v12);
    return;
  }

  if ([v19 _currentState] == 5)
  {
    v20 = *(a1 + 32);
    v14 = *(v20 + 80);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10034327C;
    v23[3] = &unk_10051DFE8;
    v23[4] = v20;
    v12 = v23;
    goto LABEL_20;
  }
}

id sub_10034327C(uint64_t a1)
{
  [*(a1 + 32) _clearTriggerlessUserReplyTimer];
  v2 = *(a1 + 32);

  return [v2 _changeCurrentStateToState:6];
}

void sub_100343398(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [*(a1 + 40) _currentRequest];
  v4 = [v3 requestInfo];
  v5 = [v4 uuid];
  if ([v2 isEqual:v5] && *(a1 + 48))
  {
    v6 = *(*(a1 + 40) + 40);

    if (v6 == 3)
    {
      v7 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = v7;
        [v8 uuid];
        v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 136315394;
        v47 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
        v48 = 2112;
        v49 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Announcement request finished for request %@", buf, 0x16u);
      }

      [*(a1 + 40) _clearCurrentNotificationTimer];
      v11 = [*(a1 + 40) _currentRequest];
      v12 = [v11 requestWasInterrupted];

      if ((v12 & 1) == 0)
      {
        v13 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1 + 32);
          v15 = v13;
          [v14 uuid];
          v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 136315394;
          v47 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
          v48 = 2112;
          v49 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Record positive feedback signal for request %@", buf, 0x16u);
        }

        [*(a1 + 40) _completeNotificationsWithSuccess:1 forReason:1 shouldEmitInstrumentationEvent:1];
        v17 = [*(a1 + 40) _currentRequest];
        v18 = *(*(a1 + 40) + 104);
        *(*(a1 + 40) + 104) = v17;

        if ((*(*(a1 + 40) + 34) & 1) != 0 || ([*(a1 + 40) _requestQueue], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "nextAnnouncementRequest"), v20 = objc_claimAutoreleasedReturnValue(), v19, !v20))
        {
          v30 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v47 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s Announcement request ended and the queue is empty and/or we are waiting for user input before reading the next announcement", buf, 0xCu);
          }

          v31 = [*(a1 + 40) _currentRequest];
          v32 = [v31 shouldSkipTriggerlessReply];

          if (v32)
          {
            v33 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v47 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
              _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s Skipping triggerless reply state for announce platform by going from reading state to idle state.", buf, 0xCu);
            }

            v34 = 1;
          }

          else
          {
            _AFPreferencesSpokenNotificationTriggerlessReplyWindow();
            v36 = v35;
            v37 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v47 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
              v48 = 2048;
              v49 = v36;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s Starting timer for triggerless reply with time window of %f seconds", buf, 0x16u);
            }

            objc_initWeak(buf, *(a1 + 40));
            v38 = [AFWatchdogTimer alloc];
            v39 = *(*(a1 + 40) + 80);
            v44[0] = _NSConcreteStackBlock;
            v44[1] = 3221225472;
            v44[2] = sub_100343A24;
            v44[3] = &unk_10051CB60;
            v45[1] = *&v36;
            objc_copyWeak(v45, buf);
            v40 = [v38 initWithTimeoutInterval:v39 onQueue:v44 timeoutHandler:v36];
            v41 = *(a1 + 40);
            v42 = *(v41 + 24);
            *(v41 + 24) = v40;

            [*(*(a1 + 40) + 24) start];
            objc_destroyWeak(v45);
            objc_destroyWeak(buf);
            v34 = 5;
          }

          [*(a1 + 40) _changeCurrentStateToState:v34];
        }

        else
        {
          ++*(*(a1 + 40) + 120);
          v21 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v22 = *(*(a1 + 40) + 120);
            *buf = 136315394;
            v47 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
            v48 = 2048;
            v49 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Announcement request ended and we have another in the queue, reading it out now, syncBurstIndex = %lu", buf, 0x16u);
          }

          [*(a1 + 40) _changeCurrentStateToState:2];
          [*(a1 + 40) _startAnnouncementRequest:v20];
        }
      }

      return;
    }
  }

  else
  {
  }

  v43 = [*(a1 + 32) uuid];
  v23 = [*(a1 + 40) _currentRequest];
  v24 = [v23 requestInfo];
  v25 = [v24 uuid];
  if ([v43 isEqual:v25] && *(a1 + 48))
  {
    v26 = *(*(a1 + 40) + 40);

    if (v26 == 4)
    {
      v27 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v47 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Announcement ended while barged in, transitioning to user replying and canceling reply timer", buf, 0xCu);
      }

      v29 = *(a1 + 40);
      v28 = (a1 + 40);
      [v29 _clearTriggerlessUserReplyTimer];
      [*v28 _changeCurrentStateToState:6];
      [*v28 _startTimerToResetStateFrom:6];
    }
  }

  else
  {
  }
}

void sub_1003439E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100343A24(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s triggerless reply, time window of %f seconds timed out", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _triggerlessListeningTimerEnded];
  }
}

void sub_100343CEC(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [*(a1 + 40) _currentRequest];
  v4 = [v3 requestInfo];
  v5 = [v4 uuid];
  if ([v2 isEqual:v5] && *(a1 + 48))
  {
    v6 = *(*(a1 + 40) + 40);
    if (v6 == 3)
    {

LABEL_12:
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v17 = v16;
        v18 = AFRequestCancellationReasonGetName();
        v22 = 136315394;
        v23 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWasCancelledWithInfo:forReason:origin:client:successorInfo:]_block_invoke";
        v24 = 2112;
        v25 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Request cancelled while reading for reason %@", &v22, 0x16u);
      }

      v19 = [*(a1 + 40) _currentRequest];
      [v19 setRequestWasInterrupted:1];

      if (*(a1 + 56) == 14)
      {
        v20 = *(a1 + 40);
        v21 = [v20 _currentRequest];
        [v20 _markThreadCancellationForCurrentRequest:v21];
      }

      return;
    }

    if (v6 == 4)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(*(a1 + 40) + 40) >= 5)
  {
    v7 = [*(a1 + 32) speechRequestOptions];
    v8 = [v7 activationEvent];

    if (v8 == 17)
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 40);
        v11 = v9;
        v12 = [v10 _currentRequest];
        v13 = [v12 requestInfo];
        v14 = [v13 uuid];
        v15 = AFExternalNotificationRequestHandlerStateGetName();
        v22 = 136315650;
        v23 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWasCancelledWithInfo:forReason:origin:client:successorInfo:]_block_invoke";
        v24 = 2112;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Triggerless listening request cancelled: %@ during %@ phase", &v22, 0x20u);
      }

      [*(a1 + 40) _changeCurrentStateToState:1];
    }
  }
}

void sub_1003440BC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v19 = [*(a1 + 40) speechRequestOptions];
      v20 = [v19 activationEvent];

      if (v20 != 17)
      {
        return;
      }

      v21 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v52 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Triggerless Reply starting from Barge-In state", buf, 0xCu);
      }

      goto LABEL_22;
    }

    if (v2 != 5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      return;
    }

LABEL_7:
    v3 = [*(a1 + 56) speechRequestOptions];
    v4 = [v3 activationEvent];

    if (v4 == 17)
    {
      return;
    }

    v5 = [*(a1 + 56) activationEvent];
    v6 = AFSiriLogContextDaemon;
    v7 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
    if (v5 == 10)
    {
      if (v7)
      {
        *buf = 136315138;
        v52 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Head Gesture request acting upon notification content, moving to userReplying", buf, 0xCu);
      }

      [*(a1 + 32) _clearTriggerlessUserReplyTimer];
LABEL_22:
      v22 = *(a1 + 32);
      v23 = 6;
LABEL_29:
      [v22 _changeCurrentStateToState:v23];
      return;
    }

    if (v7)
    {
      *buf = 136315138;
      v52 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Unrelated request started during reading/triggerless window transition to idle", buf, 0xCu);
    }

LABEL_28:
    v22 = *(a1 + 32);
    v23 = 1;
    goto LABEL_29;
  }

  v8 = [*(a1 + 40) uuid];
  v9 = [*(a1 + 32) _currentRequest];
  v10 = [v9 requestInfo];
  v11 = [v10 uuid];
  if (![v8 isEqual:v11])
  {

LABEL_26:
    v24 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 40);
      v26 = v24;
      v27 = [v25 uuid];
      *buf = 136315394;
      v52 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
      v53 = 2112;
      v54 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Request started for unrelated request: %@", buf, 0x16u);
    }

    goto LABEL_28;
  }

  v12 = *(a1 + 48);

  if (!v12)
  {
    goto LABEL_26;
  }

  v13 = [*(a1 + 32) _currentRequest];
  if ([v13 requestType] == 2)
  {
    v14 = [*(a1 + 32) _currentRequest];
    v15 = [v14 requestWasInterrupted];

    if (v15)
    {
      v16 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v52 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Call ended while setting up announcement request, cancelling announcement", buf, 0xCu);
      }

      v17 = *(a1 + 32);
      v18 = 13;
      goto LABEL_44;
    }
  }

  else
  {
  }

  v28 = [*(a1 + 32) _currentRequest];
  v29 = [v28 platform];

  if (v29 == 2)
  {
    v30 = [*(a1 + 32) _currentRequest];
    v31 = [v30 requestWasInterrupted];

    if (v31)
    {
      v32 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v52 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s CarPlay's audio session voice prompt style changed while setting up announcement request, cancelling announcement.", buf, 0xCu);
      }

      v33 = 16;
    }

    else
    {
      v33 = 0;
    }

    v34 = +[AVSystemController sharedAVSystemController];
    v35 = [v34 attributeForKey:AVSystemController_CarPlayIsPlayingLongerDurationSession];
    v36 = [v35 BOOLValue];

    if (v36)
    {
      v37 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v52 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s CarPlay's audio session is not available for announce being it's being used by something else, cancelling announcement.", buf, 0xCu);
      }

      v33 = 17;
    }

    if (AFSiriDeactivationReasonGetIsValidAndSpecified())
    {
      [*(a1 + 32) _completeNotificationsWithSuccess:0 forReason:11 shouldEmitInstrumentationEvent:1];
      v17 = *(a1 + 32);
      v18 = v33;
LABEL_44:
      [v17 _deactivateCurrentAnnouncementRequestForReason:v18];
      return;
    }
  }

  v38 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v39 = *(a1 + 40);
    v40 = v38;
    v41 = [v39 uuid];
    *buf = 136315394;
    v52 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
    v53 = 2112;
    v54 = v41;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s Announcement request began for request: %@", buf, 0x16u);
  }

  [*(a1 + 32) _changeCurrentStateToState:3];
  AFSpokenMessagesExecutionTimeout();
  v43 = v42 + -2.0;
  v44 = [AFWatchdogTimer alloc];
  v45 = *(a1 + 32);
  v46 = *(v45 + 80);
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100344710;
  v50[3] = &unk_10051DFE8;
  v50[4] = v45;
  v47 = [v44 initWithTimeoutInterval:v46 onQueue:v50 timeoutHandler:v43];
  v48 = *(a1 + 32);
  v49 = *(v48 + 8);
  *(v48 + 8) = v47;

  [*(*(a1 + 32) + 8) start];
}

id sub_100344710(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 _currentRequest];
    v7 = 136315394;
    v8 = "[ADExternalNotificationRequestHandler requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Timed out announcing the request for %@", &v7, 0x16u);
  }

  return [*(a1 + 32) _completeNotificationsWithSuccess:0 forReason:12 shouldEmitInstrumentationEvent:1];
}

uint64_t sub_100344AF0(uint64_t a1)
{
  result = [*(a1 + 32) _currentState];
  if (result >= 2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = 136315394;
      v6 = "[ADExternalNotificationRequestHandler inEarDetectionStateDidChangeForBTAddress:fromState:toState:]_block_invoke";
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s 🎧 [%@] bud went out of ear, shutting down the request", &v5, 0x16u);
    }

    return [*(a1 + 32) _deactivateCurrentAnnouncementRequestForReason:2];
  }

  return result;
}

uint64_t sub_100344C60(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentRequest];
  v3 = [v2 requestType];

  if (v3 == 2)
  {
    v4 = ([*(a1 + 40) availableAnnouncementRequestTypes] >> 1) & 1;
  }

  else
  {
    v5 = [*(a1 + 32) _currentRequest];
    v6 = [v5 requestType];

    if (v6 == 1)
    {
      LOBYTE(v4) = [*(a1 + 40) availableAnnouncementRequestTypes];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  result = [*(a1 + 32) _currentState];
  if (result >= 2 && (v4 & 1) == 0)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v10 = v8;
      v11 = [v9 avscRouteDescription];
      v12 = 136315394;
      v13 = "[ADExternalNotificationRequestHandler currentAudioRouteDidChange:]_block_invoke";
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s 🎧 Audio route changed, shutting down the request; route: %@", &v12, 0x16u);
    }

    return [*(a1 + 32) _deactivateCurrentAnnouncementRequestForReason:2];
  }

  return result;
}

void sub_100344E44(uint64_t a1)
{
  v2 = +[(AFSiriHeadphonesMonitor *)ADSiriHeadphonesMonitor];
  [v2 removeDelegate:*(a1 + 32)];
}

void sub_100344F10(uint64_t a1)
{
  v2 = +[(AFSiriHeadphonesMonitor *)ADSiriHeadphonesMonitor];
  [v2 addDelegate:*(a1 + 32)];
}

void sub_100345188(uint64_t a1)
{
  v2 = [*(a1 + 32) _requestQueue];

  if (v2)
  {
    v3 = [*(a1 + 32) _requestQueue];
    [v3 markNotificationAsReadWithIdentifer:*(a1 + 40)];
  }
}

void sub_1003452C8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    [v3 _currentState];
    v6 = AFExternalNotificationRequestHandlerStateGetName();
    v12 = 136315650;
    v13 = "[ADExternalNotificationRequestHandler fetchUnreadNotificationsFromThreadAfterNotificationWithID:completion:]_block_invoke";
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Fetching notifications after notification with id: %@, in state: %@ ", &v12, 0x20u);
  }

  v7 = [*(a1 + 40) _requestQueue];
  if (v7 && (v8 = v7, v9 = [*(a1 + 40) _currentState], v8, v9 != 4))
  {
    v11 = [*(a1 + 40) _requestQueue];
    [v11 fetchUnreadNotificationsFromThreadAfterNotificationWithID:*(a1 + 32) completion:*(a1 + 48)];
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = objc_alloc_init(NSMutableArray);
    (*(v10 + 16))(v10, v11);
  }
}

void sub_100345528(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v9 audioSessionID];
    v13 = [v9 error];
    *buf = 136315906;
    v30 = "[ADExternalNotificationRequestHandler _startTriggerlessFollowupRequestForSpeechObservingType:hostTime:]_block_invoke_2";
    v31 = 2048;
    v32 = v12;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Audio session taken over because user began speaking, audioSessionID = %lu, bluetoothDevice = %@, error = %@", buf, 0x2Au);
  }

  v14 = *(a1 + 32);
  if (*(v14 + 32) != 1)
  {
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100345894;
    v26 = &unk_10051CB10;
    v27 = v14;
    v28 = v7;
    v16 = objc_retainBlock(&v23);
    v17 = *(a1 + 40);
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v22 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v30 = "[ADExternalNotificationRequestHandler _startTriggerlessFollowupRequestForSpeechObservingType:hostTime:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s Activating with non-BT triggerless path", buf, 0xCu);
        }

        AFSiriActivationTriggerless();
        goto LABEL_18;
      }

      if (v17 != 4)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      if ((v17 - 1) < 2)
      {
        [ADAnnounceSpeechManager lookbackTimeForSpeechObservingType:v23, v24, v25, v26, v27];
        v18 = [v8 deviceInfo];
        v19 = [v18 deviceUID];
        v20 = [v19 UUIDString];
        AFSiriActivationBluetoothDeviceTriggerless();

        goto LABEL_18;
      }

      if (v17)
      {
        goto LABEL_18;
      }
    }

    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "[ADExternalNotificationRequestHandler _startTriggerlessFollowupRequestForSpeechObservingType:hostTime:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Unspecified request delay type", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[ADExternalNotificationRequestHandler _startTriggerlessFollowupRequestForSpeechObservingType:hostTime:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Time window for triggerless user reply has passed, not starting new request for user reply", buf, 0xCu);
  }

LABEL_19:
  [*(a1 + 32) _clearTriggerlessUserReplyTimer];
}

void sub_100345894(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  v5 = AFSiriLogContextDaemon;
  v6 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = v5;
      v8 = [v3 error];
      v9 = 136315650;
      v10 = "[ADExternalNotificationRequestHandler _startTriggerlessFollowupRequestForSpeechObservingType:hostTime:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Triggerless reply activation error: %@, result: %@", &v9, 0x20u);
    }

    [*(a1 + 32) _changeCurrentStateToState:1];
  }

  else
  {
    if (v6)
    {
      v9 = 136315138;
      v10 = "[ADExternalNotificationRequestHandler _startTriggerlessFollowupRequestForSpeechObservingType:hostTime:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Triggerless reply activation complete", &v9, 0xCu);
    }

    [*(a1 + 32) _startTimerToResetStateFrom:6];
  }

  [*(a1 + 40) relinquishWithContext:0 options:0];
}

uint64_t sub_100345B14(uint64_t a1)
{
  result = [*(a1 + 32) _currentState];
  if (result >= 2)
  {
    *(*(a1 + 32) + 34) = 1;
  }

  return result;
}

void sub_100345C50(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentState];
  v3 = *(a1 + 32);
  if (v2 == 4)
  {

    [v3 _changeCurrentStateToState:3];
  }

  else if ([v3 _currentState] == 6)
  {
    v4 = *(a1 + 32);

    [v4 _processAnyQueuedAnnouncementsAfterUserSpeech];
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      [v6 _currentState];
      v8 = AFExternalNotificationRequestHandlerStateGetName();
      v9 = 136315394;
      v10 = "[ADExternalNotificationRequestHandler notifySpeechDetectedIsUndirected]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Unexpected state when mitigation result result arrived: %@", &v9, 0x16u);
    }
  }
}

void sub_100346630(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setTimestamp:v3];
  [v4 setSource:a1[5]];
  [v4 setEvent:a1[6]];
}

void sub_100346828(uint64_t a1, char a2)
{
  v4 = AFSiriLogContextDaemon;
  v5 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 136315650;
      v15 = "[ADExternalNotificationRequestHandler _deactivateCarPlayNotificationAnnouncementRequestForReason:notification:sourceAppId:completion:]_block_invoke";
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Issuing deactivate request for appId: %@, notification: %@.", buf, 0x20u);
    }

    v8 = *(a1 + 64);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003469E0;
    v12[3] = &unk_10051CA60;
    v9 = *(a1 + 48);
    v13 = *(a1 + 56);
    [v9 _deactivateForReason:v8 source:5 event:7 completion:v12];
  }

  else
  {
    if (v5)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 136315650;
      v15 = "[ADExternalNotificationRequestHandler _deactivateCarPlayNotificationAnnouncementRequestForReason:notification:sourceAppId:completion:]_block_invoke";
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Deactivation was requested, but announcement requests are currently not permitted while the current presentation is active. Ignoring deactivation. appId: %@, notification: %@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1003469E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [v3 error];
    v7 = v6;
    v8 = &stru_10051F508;
    if (v6)
    {
      v8 = v6;
    }

    v9 = 136315394;
    v10 = "[ADExternalNotificationRequestHandler _deactivateCarPlayNotificationAnnouncementRequestForReason:notification:sourceAppId:completion:]_block_invoke";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Deactivate announcement request %@", &v9, 0x16u);
  }

  [v3 error];

  (*(*(a1 + 32) + 16))();
}

void sub_1003471E8(void *a1)
{
  v2 = a1[4];
  if (v2[5] == 6)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315138;
      v7 = "[ADExternalNotificationRequestHandler deactivateWorkoutAnnouncementWithIdentifier:completion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s User interacted with the workout notification, aborting deactivation", &v6, 0xCu);
    }
  }

  else
  {
    [v2 _deactivateWorkoutAnnouncementWithIdentifier:a1[5]];
    v4 = a1[6];
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }
}

void sub_100347554(id a1, AFSiriActivationResult *a2)
{
  v2 = a2;
  v3 = [(AFSiriActivationResult *)v2 error];

  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [(AFSiriActivationResult *)v2 error];
      v7 = 136315394;
      v8 = "[ADExternalNotificationRequestHandler _stopCurrentRequestWithReason:shouldCancelRequest:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Error dismissing Siri UI client: %@", &v7, 0x16u);
    }
  }
}

void *sub_100347744(void *result)
{
  v1 = result[4];
  if (v1[5] == result[5])
  {
    v2 = result;
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = AFExternalNotificationRequestHandlerStateGetName();
      v6 = 136315394;
      v7 = "[ADExternalNotificationRequestHandler _startTimerToResetStateFrom:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s We are stuck in %@ state, resetting", &v6, 0x16u);

      v1 = v2[4];
    }

    return [v1 _changeCurrentStateToState:1];
  }

  return result;
}

void sub_100347BC0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 80);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100347DE8;
  block[3] = &unk_10051CF58;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void sub_100347C50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100347DD4;
  v7[3] = &unk_10051E038;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_100347D08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 80);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100347DC0;
  v7[3] = &unk_10051E038;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_100348090(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 || (v4 = *(a1 + 32), v4[5] != 2))
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = AFExternalNotificationRequestHandlerStateGetName();
      v8 = 136315650;
      v9 = "[ADExternalNotificationRequestHandler _startAnnouncementRequest:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Error starting announcement request, current state: %@, error: %@", &v8, 0x20u);
    }

    [*(a1 + 32) _changeCurrentStateToState:1];
    [*(a1 + 32) _completeNotificationsWithSuccess:0 forReason:objc_msgSend(*(a1 + 32) shouldEmitInstrumentationEvent:{"_getAnnouncementRequestFailureReasonFromError:", v3), 1}];
  }

  else
  {
    [v4 _startAnnouncementRequestWithRequestInfo:*(a1 + 40)];
  }
}

void sub_1003482E4(uint64_t a1)
{
  if ([*(a1 + 32) requestType] == 1)
  {
    v2 = +[SOMediaNowPlayingObserver defaultObserver];
    v3 = [v2 playbackState];

    v4 = *(a1 + 40);
    if (v3 == 1)
    {
      v9 = *(a1 + 32);
      AFGetNowPlayingInfoDictionary();
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = [v4[19] copy];
      [v4 _emitInstrumentationEventsForRequest:v7 currentlyPlayingMediaType:v8];
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v5 _emitInstrumentationEventsForRequest:v6 currentlyPlayingMediaType:0];
  }
}

void sub_100348430(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:kMRMediaRemoteNowPlayingInfoMediaType];
  v10 = v3;
  if (v3)
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = &stru_10051F508;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 152);
  *(v5 + 152) = v4;

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [v8[19] copy];
  [v8 _emitInstrumentationEventsForRequest:v7 currentlyPlayingMediaType:v9];
}

void sub_100348590(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 80);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100348650;
  v10[3] = &unk_10051C958;
  v14 = a2;
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v9 = v5;
  dispatch_async(v8, v10);
}

void sub_100348650(uint64_t a1)
{
  if (*(a1 + 56) == 1 && !*(a1 + 32))
  {
    goto LABEL_13;
  }

  if (!*(*(a1 + 40) + 160))
  {
    goto LABEL_7;
  }

  v2 = [*(a1 + 48) uuid];
  v3 = *(*(a1 + 40) + 160);

  if (v2 != v3)
  {
    if ((*(a1 + 56) & 1) != 0 && !*(a1 + 32))
    {
      goto LABEL_13;
    }

LABEL_7:
    if ([*(a1 + 40) _currentState] != 6)
    {
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        v19 = 136315394;
        v20 = "[ADExternalNotificationRequestHandler _startAnnouncementRequestWithRequestInfo:]_block_invoke";
        v21 = 2112;
        v22 = v17;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s request failed with error: %@", &v19, 0x16u);
      }

      [*(a1 + 40) _changeCurrentStateToState:1];
    }

    goto LABEL_13;
  }

  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(*(a1 + 40) + 160);
    v19 = 136315394;
    v20 = "[ADExternalNotificationRequestHandler _startAnnouncementRequestWithRequestInfo:]_block_invoke_2";
    v21 = 2112;
    v22 = v18;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Ignoring activation failures caused by gesture invocation, associated with request UUID: %@", &v19, 0x16u);
  }

LABEL_13:
  v6 = [*(a1 + 40) _currentRequest];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 40) _currentRequest];
    v9 = [v8 requestWasInterrupted];

    if (v9)
    {
      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 40);
        v12 = v10;
        v13 = [v11 _currentRequest];
        v14 = [v13 requestWasInterrupted];
        v19 = 136315394;
        v20 = "[ADExternalNotificationRequestHandler _startAnnouncementRequestWithRequestInfo:]_block_invoke";
        v21 = 1024;
        LODWORD(v22) = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s request was interrupted: %d", &v19, 0x12u);
      }
    }
  }

  v15 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 40) _completeNotificationsWithSuccess:1 forReason:10 shouldEmitInstrumentationEvent:1];
  }

  else
  {
    v16 = [*(a1 + 40) _currentRequest];
    [v15 _completeNotificationsWithSuccess:objc_msgSend(v16 forReason:"requestWasInterrupted") shouldEmitInstrumentationEvent:{10, 1}];
  }
}

id sub_100348CF8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _clearCurrentNotificationTimer];
}

uint64_t sub_100348D6C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADExternalNotificationRequestHandler _handleNotificationWithRequiresOpportuneTime:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Timed out waiting for a decision from Opportune Speaking Module", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100348E2C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 80);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100348EFC;
  block[3] = &unk_10051C908;
  v14 = a2;
  block[4] = v6;
  v12 = v5;
  v10 = *(a1 + 40);
  v8 = v10;
  v13 = v10;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_100348EFC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    v4 = v2;
    v5 = AFExternalNotificationRequestHandlerStateGetName();
    v6 = *(a1 + 40);
    v8 = 136315906;
    v9 = "[ADExternalNotificationRequestHandler _handleNotificationWithRequiresOpportuneTime:completion:]_block_invoke_2";
    v10 = 1024;
    v11 = v3;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Pause detected: %d current state: %@ error: %@", &v8, 0x26u);
  }

  if (!*(a1 + 40) && *(a1 + 64) == 1 && *(*(a1 + 32) + 40) == 2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_100349214(uint64_t a1, int a2)
{
  v3 = AFSiriLogContextDaemon;
  if (a2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[ADExternalNotificationRequestHandler _startAnnouncementRequestIfOpportune:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Client conditions permit announcing", buf, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) requiresOpportuneTime];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003493B0;
    v7[3] = &unk_10051C868;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    [v4 _handleNotificationWithRequiresOpportuneTime:v5 completion:v7];
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[ADExternalNotificationRequestHandler _startAnnouncementRequestIfOpportune:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Ongoing Siri session or presentation not permitting announcments", buf, 0xCu);
    }

    [*(a1 + 40) completeRequestWithSuccess:0 forReason:5 shouldEmitInstrumentationEvent:1];
    [*(a1 + 32) _changeCurrentStateToState:1];
  }
}

void sub_1003493B0(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 80);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034944C;
  block[3] = &unk_10051C890;
  v9 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  dispatch_async(v3, block);
}

id sub_10034944C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) platform];
    v3 = *(a1 + 40);
    if (v2 == 1)
    {
      [v3 _startObservingRouteChanges];
    }

    else
    {
      [v3 _stopObservingRouteChanges];
    }

    v7 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v6 _startAnnouncementRequest:v7];
  }

  else
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = v4;
      v10 = [v8 notification];
      v11 = 136315394;
      v12 = "[ADExternalNotificationRequestHandler _startAnnouncementRequestIfOpportune:]_block_invoke_2";
      v13 = 2112;
      v14 = v10;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Not reading the notification: %@", &v11, 0x16u);
    }

    [*(a1 + 40) _completeNotificationsWithSuccess:0 forReason:2 shouldEmitInstrumentationEvent:1];
    return [*(a1 + 40) _changeCurrentStateToState:1];
  }
}

void sub_10034A4B4(uint64_t a1, int a2)
{
  v3 = AFSiriLogContextDaemon;
  if (a2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Either no active client, or presentation allows announcements. Enqueueing request.", &v5, 0xCu);
    }

    v4 = [*(a1 + 32) _requestQueue];
    [v4 enqueueAnnouncementRequest:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADExternalNotificationRequestHandler _handleAnnounceNotificationRequest:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Ongoing Siri session, not reading announce request", &v5, 0xCu);
    }

    [*(a1 + 40) completeRequestWithSuccess:0 forReason:5 shouldEmitInstrumentationEvent:1];
  }
}

void sub_10034A850(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315138;
    v11 = "[ADExternalNotificationRequestHandler announcementRequestReadyToBeAnnounced:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s ", &v10, 0xCu);
  }

  v3 = [*(a1 + 32) _currentState];
  if (v3 <= 5 && ((1 << v3) & 0x2E) != 0)
  {
    v5 = [*(a1 + 32) _currentRequest];
    v6 = *(a1 + 40);

    if (v5 == v6)
    {
      v8 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v10 = 136315138;
      v11 = "[ADExternalNotificationRequestHandler announcementRequestReadyToBeAnnounced:]_block_invoke";
      v9 = "%s Not starting announcement: request has already been started";
      goto LABEL_13;
    }

    v7 = *(a1 + 32);
    if (v7[34] == 1)
    {
      v8 = AFSiriLogContextDaemon;
      if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v10 = 136315138;
      v11 = "[ADExternalNotificationRequestHandler announcementRequestReadyToBeAnnounced:]_block_invoke";
      v9 = "%s Not starting announcement: waiting for user input";
LABEL_13:
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, v9, &v10, 0xCu);
      return;
    }

    [v7 _startAnnouncementRequestIfOpportune:*(a1 + 40)];
  }
}

void sub_10034B1D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 152);
  *(v1 + 152) = 0;
}

void sub_10034B1E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 160);
  *(v1 + 160) = 0;
}

void sub_10034B898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10034B8B8(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100590AE0)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_10034BACC;
    v6[4] = &unk_10051E200;
    v6[5] = v6;
    v7 = off_10051CBF8;
    v8 = 0;
    qword_100590AE0 = _sl_dlopen();
  }

  if (!qword_100590AE0)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *BulletinBoardLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ADExternalNotificationRequestHandler.m" lineNumber:81 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("BBSettingsGateway");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getBBSettingsGatewayClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ADExternalNotificationRequestHandler.m" lineNumber:82 description:{@"Unable to find class %s", "BBSettingsGateway"}];

LABEL_10:
    __break(1u);
  }

  qword_100590AD8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10034BAA4(id a1)
{
  v1 = _AFPreferencesAnnounceNotificationThreadCancellationStaleThreshold();

  __AFPreferencesRemoveThreadCancellationsOlderThanTimeInterval(v1);
}

uint64_t sub_10034BACC()
{
  result = _sl_dlopen();
  qword_100590AE0 = result;
  return result;
}

void sub_10034BB40(id a1)
{
  v1 = [[ADExternalNotificationRequestHandler alloc] _init];
  v2 = qword_100590AD0;
  qword_100590AD0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10034BFD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = v4;
      v8 = [v3 localizedDescription];
      v9 = 136315394;
      v10 = "[ADSettingsClient createRadarForCrashWithReason:process:completion:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s File-A-Radar failed creating a radar - error: %@", &v9, 0x16u);
    }

    v5 = *(a1 + 32);
    v6 = [AFError errorWithCode:0 description:@"Radar creation failed" underlyingError:v3];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10034C53C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSAERequiredAssets();
  v5 = AFAssetsAvailabilityMatchesRequiredAssets();

  v6 = AFSiriLogContextConnection;
  v7 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v9 = 136315138;
      v10 = "[ADSettingsClient areSiriSAEAssetsAvailable:]_block_invoke";
      v8 = "%s All SAE assets are available";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v8, &v9, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = 136315138;
    v10 = "[ADSettingsClient areSiriSAEAssetsAvailable:]_block_invoke";
    v8 = "%s Not all SAE assets are available";
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5);
}

void sub_10034CC20(void *a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v11 = 136315394;
    v12 = "[ADSettingsClient triggerABCForType:subType:context:completionHandler:]_block_invoke";
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  v4 = a1[7];
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }

  v5 = +[SiriCoreSymptomsReporter sharedInstance];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[4];
  v9 = +[NSProcessInfo processInfo];
  v10 = [v9 processIdentifier];
  [v5 reportIssueForType:v7 subType:v6 context:v8 processIdentifier:v10 walkboutStatus:byte_100590548];
}

uint64_t sub_10034D84C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10034DD7C(uint64_t a1)
{
  +[AFDictationSamplingUtilities deleteAllSamplingData];
  +[AFAssistantSamplingUtilities deleteAllSamplingData];
  +[SSRRPISampler deleteAllRPISampledData];
  v5 = 0;
  [CSDADataAnalyticsController cleanupData:&v5];
  v2 = v5;
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "[ADSettingsClient setSiriDataSharingOptInStatus:propagateToHomeAccessories:source:reason:completion:]_block_invoke";
      v8 = 2112;
      v9 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error cleaning up CoreSpeech analytics data: %@", buf, 0x16u);
    }
  }

  v4 = [*(a1 + 32) _localSpeechRecognizer];
  [v4 deleteAllDESRecordsForDictationPersonalization];
}

void sub_10034DEA4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[ADSettingsClient setSiriDataSharingOptInStatus:propagateToHomeAccessories:source:reason:completion:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Propagation completed with error=%@", &v4, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADSettingsClient setSiriDataSharingOptInStatus:propagateToHomeAccessories:source:reason:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Propagation completed without error", &v4, 0xCu);
  }
}

void sub_10034DFB8(id a1)
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v1 = [v2 _sessionManager];
  [v1 resetSessionsAtNextRequestBoundary];
}

uint64_t sub_10034E248(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10034F0B4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10034F2E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[ADSettingsClient getInEarDetectionStateForBTAddress:withCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s In-ear detection state for %@: %@", &v7, 0x20u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

uint64_t sub_10034F540(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10034F638(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_group_create();
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.assistant.settings-client.connected-bluetooth-devices", v5);

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
        v16[2] = sub_10034F890;
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
  block[2] = sub_10034F958;
  block[3] = &unk_10051E038;
  v15 = *(a1 + 40);
  v14 = *(a1 + 32);
  dispatch_group_notify(v4, v6, block);
}

void sub_10034F890(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034F978;
  block[3] = &unk_10051DB68;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v4 = v6;
  dispatch_async(v3, block);
}

uint64_t sub_10034F958(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10034F978(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

uint64_t sub_10034FA98(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10034FB8C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10034FCEC(uint64_t a1)
{
  v2 = sub_10001136C(0);
  v3 = [v2 btAddress];
  v4 = +[ADBluetoothManager sharedInstance];
  v6 = [v4 deviceWithAddress:v3];

  if (v6)
  {
    v5 = [v6 deviceInfo];
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v5 supportsLiveTranslationCapability]);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100350338(id a1, AFBluetoothDeviceBooleanSettingResponseMutating *a2)
{
  v2 = a2;
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setValue:0];
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setStatus:4];
}

uint64_t sub_100350464(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100350548(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10035060C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t sub_1003506D4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t sub_1003507B8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100350880(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10035090C;
  v3[3] = &unk_10051CE00;
  v4 = *(a1 + 32);
  [a2 resetWithCompletion:v3];
}

uint64_t sub_10035090C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_1003509D4(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100350A60;
  v3[3] = &unk_10051CE00;
  v4 = *(a1 + 32);
  [a2 purgeWithCompletion:v3];
}

uint64_t sub_100350A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_100351408(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v2 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v2 objectForKey:v9];
        v11 = [v10 buildDictionaryRepresentation];
        v12 = [v11 mutableCopy];

        v13 = [v12 copy];
        [v3 setObject:v13 forKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100351B70(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 assistantIdentifier];
  [v3 setAssistantIdentifier:v4];
}

void sub_100352044(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_100352A74(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [AFError errorWithCode:0];
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
    v4 = (*(v4 + 16))();
    v3 = v6;
  }

  return _objc_release_x1(v4, v3);
}

void sub_100352BB4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 indexOfObjectPassingTest:&stru_10051CE68];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || ([v9 objectAtIndexedSubscript:v3], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = objc_alloc_init(ADAccount);
    [(ADAccount *)v5 setHostname:kAssistantMockServerHostname];
    [(ADAccount *)v5 setLabel:kAssistantMockServerLabel];
    [*(a1 + 32) _saveAccount:v5 setActive:1];
  }

  else
  {
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = [(ADAccount *)v4 identifier];
    [v6 setActiveAccountIdentifier:v7];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

BOOL sub_100352CB0(id a1, ADAccount *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(ADAccount *)a2 label:a3];
  v5 = [v4 isEqualToString:kAssistantMockServerLabel];

  return v5;
}

void sub_100352DE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100352EC0;
  v6[3] = &unk_10051D2A0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  v5 = v3;
  [v4 _createMockServerIfNeededAndSetActiveWithCompletion:v6];
}

void sub_100352EC0(uint64_t a1)
{
  v2 = +[ADMockServer sharedServer];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100352FF0;
  v8[3] = &unk_10051DDE8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 64);
  [v2 replayWithFileURL:v3 completion:v8];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100353064;
  v6[3] = &unk_10051DFE8;
  v7 = *(a1 + 56);
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_100352FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32))
  {
    [*(a1 + 40) setActiveAccountIdentifier:?];
    v3 = v6;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v4 = (*(v4 + 16))(v4, v6);
    v3 = v6;
  }

  return _objc_release_x1(v4, v3);
}

void sub_100353064(uint64_t a1)
{
  v2 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:19];
  [*(a1 + 32) handleRemoteSpeechRequest:v2 completion:0];
}

uint64_t sub_100353458(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = v4;
    v5 = (*(v5 + 16))();
    v4 = v7;
  }

  return _objc_release_x1(v5, v4);
}

void sub_1003538A8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v8 = v5;
    if (a2)
    {
      (*(v6 + 16))(v6, 0);
    }

    else
    {
      v7 = [NSError errorWithDomain:kAFAssistantErrorDomain code:5 userInfo:0];
      (*(v6 + 16))(v6, v7);
    }

    v5 = v8;
  }
}

void sub_100353A24(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v8 = v5;
    if (a2)
    {
      (*(v6 + 16))(v6, 0);
    }

    else
    {
      v7 = [NSError errorWithDomain:kAFAssistantErrorDomain code:5 userInfo:0];
      (*(v6 + 16))(v6, v7);
    }

    v5 = v8;
  }
}

void sub_100354210(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = +[SiriTTSLanguages availableLanguages];
  v4 = AFPreferencesSupportedLanguages();
  v5 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = AFOutputVoiceLanguageForRecognitionLanguage();
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  [v5 intersectSet:v3];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

        v17 = [[AFVoiceInfo alloc] initWithLanguageCode:*(*(&v24 + 1) + 8 * v16) gender:0 isCustom:0];
        [v2 addObject:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v14);
  }

  v18 = +[SiriTTSDaemonSession afSharedSession];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1003544F0;
  v20[3] = &unk_10051CDB0;
  v23 = *(a1 + 40);
  v21 = v2;
  v22 = *(a1 + 32);
  v19 = v2;
  [v18 downloadedVoicesMatching:0 reply:v20];
}

void sub_1003544F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v17)
  {
    v4 = *v19;
    v16 = a1;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = [v6 type];
        if (v7 <= 6 && ((1 << v7) & 0x58) != 0)
        {
          v9 = [AFVoiceInfo alloc];
          v10 = [v6 language];
          v11 = [v6 AFVoiceGender];
          v12 = [v6 name];
          if (*(a1 + 48) == 1)
          {
            v13 = [v6 AFVoiceFootprint];
            if (*(a1 + 48))
            {
              a1 = v16;
              v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 version]);
              v15 = [v9 initWithLanguageCode:v10 gender:v11 isCustom:1 name:v12 footprint:v13 contentVersion:v14 masteredVersion:0];

LABEL_15:
              [*(a1 + 32) addObject:v15];

              continue;
            }
          }

          else
          {
            v13 = 0;
          }

          v15 = [v9 initWithLanguageCode:v10 gender:v11 isCustom:1 name:v12 footprint:v13 contentVersion:0 masteredVersion:0];
          goto LABEL_15;
        }
      }

      v17 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v17);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10035493C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32))
  {
    v6 = [a2 dictionary];
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 136315650;
      v9 = "[ADSettingsClient handleCommand:completion:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Responding %@ %@", &v8, 0x20u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_100354B70(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100354D38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[ADSettingsClient getExperimentForConfigurationIdentifier:completion:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Experiment: %@, Error: %@", &v8, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100354F1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ADDeviceProximityManager sharedManager];
  v5 = sub_100015560(v3);

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100354FF4;
  v6[3] = &unk_10051CD10;
  v7 = *(a1 + 32);
  [v4 getDeviceProximityRelativeToLocalDeviceWithDeviceContexts:v5 includesAllReachableDevices:1 completion:v6];
}

void sub_1003550B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 info];
        v12 = [v10 content];
        v13 = [v12 af_lenientMappedArray:&stru_10051CCE8];
        v14 = v13;
        if (v11 && [v13 count])
        {
          [v4 setObject:v14 forKey:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100355388(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableArray);
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
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = +[ADPeerCloudService sharedInstance];
        v12 = [v11 peerInfoForIDSDeviceUniqueIdentifier:v10 allowNonPeers:1];

        [v12 setIdsDeviceUniqueIdentifier:v10];
        v13 = [v12 afPeerInfo];
        [v4 addObject:v13];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_100355748(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

void sub_100355CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100355D1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100355D34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ADSettingsClient _syncDataWithAnchorKeys:forceReset:reason:reply:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Got sync finished notification %@", &v7, 0x16u);
  }

  v5 = [v3 object];
  (*(*(a1 + 32) + 16))();
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_1003561BC(id a1)
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  v1 = [v2 _sessionManager];
  [v1 resetSessionsAtNextRequestBoundary];
}

void sub_1003567D4(uint64_t a1)
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 dictationIsEnabled];

  if ((v3 & 1) == 0)
  {
    v4 = +[NSSet set];
    v5 = +[SFEntitledAssetManager subscriberIdForDictationAssets];
    v6 = [SFEntitledAssetManager unsubscribeFromAssetsWithAssetType:3 exceptLanguages:v4 subscriberId:v5];

    v7 = +[ADDictationOfflineStatusObserver sharedDictationOfflineStatusObserver];
    [v7 fetchOfflineDictationStatusIgnoringCache:1 asynchronously:1];
  }

  +[AFDictationSamplingUtilities deleteAllSamplingData];
  v8 = [*(a1 + 32) _localSpeechRecognizer];
  [v8 deleteAllDESRecordsForDictationPersonalization];
}

void sub_100356A88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [v3 description];
    v9 = 136315395;
    v10 = "[ADSettingsClient fetchActiveAccount:]_block_invoke";
    v11 = 2113;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %{private}@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = [v3 messageDictionary];
  (*(v7 + 16))(v7, v8, 0);
}

void sub_10035706C(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100357120;
  v5[3] = &unk_10051D6C8;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = v6;
  [v3 fetchActiveAccountIdentifier:v5];
}

void sub_100357120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = a1;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = kAFAccountInfoIsActiveKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 messageDictionary];
        v13 = [v11 identifier];
        v14 = [v13 isEqualToString:v3];

        if (v14)
        {
          v15 = [v12 mutableCopy];

          v16 = [NSNumber numberWithBool:1];
          [v15 setObject:v16 forKey:v9];

          v12 = v15;
        }

        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  (*(*(v17 + 40) + 16))();
}

void sub_100357DF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDeviceIDPair:v3];
  [v4 setProximity:*(a1 + 48)];
  [v4 setObservationDate:*(a1 + 40)];
}

uint64_t sub_100358760(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_ADPBDeviceStringKeyValuePair);
        [a1 addPairs:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100359A58(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100359A58(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR____ADPBDeviceStringKeyValuePair__value;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR____ADPBDeviceStringKeyValuePair__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_10035A5B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10035A678;
  v8[3] = &unk_10051D408;
  v13 = *(a1 + 64);
  v9 = v3;
  v10 = v5;
  v12 = *(a1 + 48);
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, v8);
}

uint64_t sub_10035A678(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 volumeCategoryForAudioCategory:@"VoiceCommand"];
    v4 = AFSiriLogContextSpeech;
    if (v3)
    {
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 72);
        *buf = 136315394;
        v30 = "[ADVolumeService _updateSiriVolume:completion:]_block_invoke_2";
        v31 = 2048;
        v32 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Updating Siri volume to %f.", buf, 0x16u);
      }

      LODWORD(v5) = *(a1 + 72);
      v7 = [*(a1 + 40) _updateSystemVolumeForCategory:v3 andMode:@"SpeechRecognition" audioRoute:0 withName:0 usingSystemController:*(a1 + 32) volume:1 operationType:v5];
      v8 = AFSiriLogContextSpeech;
      if (v7)
      {
        v9 = 1;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          v10 = *(a1 + 72);
          *buf = 136315394;
          v30 = "[ADVolumeService _updateSiriVolume:completion:]_block_invoke";
          v31 = 2048;
          v32 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Updated Siri volume to %f.", buf, 0x16u);
        }

        goto LABEL_15;
      }

      if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        v9 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v23 = *(a1 + 72);
      *buf = 136315394;
      v30 = "[ADVolumeService _updateSiriVolume:completion:]_block_invoke";
      v31 = 2048;
      v32 = v23;
      v12 = "%s Failed to update Siri volume to %f.";
      v13 = v8;
    }

    else
    {
      if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      v30 = "[ADVolumeService _updateSiriVolume:completion:]_block_invoke";
      v31 = 2112;
      v32 = COERCE_DOUBLE(@"VoiceCommand");
      v12 = "%s Unable to get the volume category for audio category '%@'";
      v13 = v4;
    }

    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
    goto LABEL_14;
  }

  v11 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v30 = "[ADVolumeService _updateSiriVolume:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to fetch AVSystemController. Unable to update Siri volume.", buf, 0xCu);
  }

  v9 = 0;
LABEL_16:
  v14 = AFSiriLogContextSpeech;
  v15 = v14;
  v16 = *(a1 + 56);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v16, "SiriUpdateOutputVolume", &unk_100468A0D, buf, 2u);
  }

  if (v9)
  {
    *(*(a1 + 40) + 64) = *(a1 + 64);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = *(*(a1 + 40) + 72);
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v24 + 1) + 8 * i) invoke];
        }

        v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }

    [*(*(a1 + 40) + 72) removeAllObjects];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, v9);
  }

  return result;
}

void sub_10035B2B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10035B3C0;
  block[3] = &unk_10051D3B8;
  v14 = v3;
  v5 = *(a1 + 40);
  v18 = *(a1 + 72);
  *&v6 = v5;
  *(&v6 + 1) = *(a1 + 32);
  v12 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v17 = *(a1 + 64);
  v9 = v8;
  *&v10 = v7;
  *(&v10 + 1) = v9;
  v15 = v12;
  v16 = v10;
  v11 = v3;
  dispatch_async(v4, block);
}

void sub_10035B3C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 volumeCategoryForAudioCategory:*(a1 + 40)];
    if (v3)
    {
      LODWORD(v4) = *(a1 + 80);
      [*(a1 + 48) _handleSystemVolumeChangeForCategory:v3 volume:*(a1 + 40) audioCategory:*(a1 + 56) reason:v4];
      v5 = +[AFAnalytics sharedAnalytics];
      v7 = *(a1 + 72);
      if (*(a1 + 56))
      {
        v29[0] = v3;
        v28[0] = @"category";
        v28[1] = @"volume";
        LODWORD(v6) = *(a1 + 80);
        v8 = [NSNumber numberWithFloat:v6];
        v28[2] = @"reason";
        v9 = *(a1 + 56);
        v29[1] = v8;
        v29[2] = v9;
        v10 = v29;
        v11 = v28;
        v12 = 3;
      }

      else
      {
        v26[1] = @"volume";
        v27[0] = v3;
        v26[0] = @"category";
        LODWORD(v6) = *(a1 + 80);
        v8 = [NSNumber numberWithFloat:v6];
        v27[1] = v8;
        v10 = v27;
        v11 = v26;
        v12 = 2;
      }

      v19 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:v12];
      [v5 logEventWithType:4601 machAbsoluteTime:v7 context:v19];
    }

    else
    {
      v16 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 40);
        v18 = *(a1 + 64);
        v20 = 136315650;
        v21 = "[ADVolumeService systemVolumeChanged:]_block_invoke_2";
        v22 = 2112;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Unable to get the volume category for audio category '%@' in the notification %@.", &v20, 0x20u);
      }
    }
  }

  else
  {
    v13 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 64);
      v20 = 136315650;
      v21 = "[ADVolumeService systemVolumeChanged:]_block_invoke";
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed to fetch AVSystemController. Unable to get volume category for audio category '%@' in the notification %@.", &v20, 0x20u);
    }
  }
}

void sub_10035C634(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10035C6D0;
  v7[3] = &unk_10051E010;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10035C6D0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = *(a1 + 40);

    [v1 _fetchSystemVolumesUsingSystemController:?];
  }

  else
  {
    v2 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "[ADVolumeService _fetchSystemVolumes]_block_invoke_2";
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Failed to fetch AVSystemController. Unable to fetch system volumes.", &v3, 0xCu);
    }
  }
}

_BYTE *sub_10035CA4C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[40] == 1)
  {
    [result _stopObservingSystemVolumes];
    [*(*(a1 + 32) + 48) removeAllObjects];
    [*(a1 + 32) _startObservingSystemVolumes];
    v3 = *(a1 + 32);

    return [v3 _fetchSystemVolumes];
  }

  return result;
}

_BYTE *sub_10035CB28(uint64_t a1)
{
  [*(a1 + 32) _stopObservingSystemControllerLifecycle];
  result = *(a1 + 32);
  if (result[40] == 1)
  {
    [result _stopObservingSystemVolumes];
    [*(*(a1 + 32) + 48) removeAllObjects];
    v3 = *(*(a1 + 32) + 72);

    return [v3 removeAllObjects];
  }

  return result;
}

void sub_10035CD4C(uint64_t a1)
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10035CE9C;
  v14[3] = &unk_10051D2F0;
  v15 = *(a1 + 56);
  v2 = objc_retainBlock(v14);
  v3 = +[ADAVSystemControllerLifecycleManager sharedManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10035CEB4;
  v8[3] = &unk_10051D340;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  v5 = *(a1 + 48);
  v13 = *(a1 + 72);
  v6 = *(a1 + 64);
  v11 = v2;
  v12 = v6;
  v10 = v5;
  v7 = v2;
  [v3 getAVSystemControllerWithTimeout:v8 completion:2.0];
}

uint64_t sub_10035CE9C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10035CEB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10035CFB4;
  block[3] = &unk_10051D318;
  v13 = v3;
  v11 = *(a1 + 32);
  v5 = *(&v11 + 1);
  v6 = *(a1 + 48);
  v17 = *(a1 + 72);
  v7 = *(a1 + 56);
  v16 = *(a1 + 64);
  v8 = v7;
  *&v9 = v6;
  *(&v9 + 1) = v8;
  v14 = v11;
  v15 = v9;
  v10 = v3;
  dispatch_async(v4, block);
}

void sub_10035CFB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = AFSiriLogContextSpeech;
  if (!v2)
  {
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[ADVolumeService setSiriOutputVolume:forAudioRoute:withName:operationType:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s AVSystemController is unavailable.", &v10, 0xCu);
    }

    v7 = *(a1 + 64);
    v8 = 2603;
    goto LABEL_14;
  }

  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADVolumeService setSiriOutputVolume:forAudioRoute:withName:operationType:completion:]_block_invoke_4";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Updating Siri volume...", &v10, 0xCu);
    v2 = *(a1 + 32);
  }

  LODWORD(v4) = *(a1 + 80);
  v5 = [*(a1 + 40) _updateSystemVolumeForCategory:@"VoiceCommand" andMode:@"SpeechRecognition" audioRoute:*(a1 + 48) withName:*(a1 + 56) usingSystemController:v2 volume:*(a1 + 72) operationType:v4];
  v6 = AFSiriLogContextSpeech;
  if (!v5)
  {
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[ADVolumeService setSiriOutputVolume:forAudioRoute:withName:operationType:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to update Siri volume.", &v10, 0xCu);
    }

    v7 = *(a1 + 64);
    v8 = 2605;
LABEL_14:
    v9 = [AFError errorWithCode:v8];
    (*(v7 + 16))(v7, v9);

    return;
  }

  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[ADVolumeService setSiriOutputVolume:forAudioRoute:withName:operationType:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Updated Siri volume.", &v10, 0xCu);
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10035D374(uint64_t a1)
{
  v2 = +[ADAVSystemControllerLifecycleManager sharedManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10035D45C;
  v8[3] = &unk_10051D2C8;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 getAVSystemControllerWithTimeout:v8 completion:2.0];
}

void sub_10035D45C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10035D550;
  block[3] = &unk_10051D2A0;
  v12 = v3;
  v10 = *(a1 + 32);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, block);
}

void sub_10035D550(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[ADVolumeService getSiriOutputVolumeForAudioRoute:withName:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s AVSystemController is unavailable.", buf, 0xCu);
    }

    v7 = *(a1 + 64);
    v8 = 2603;
    goto LABEL_14;
  }

  v10 = 0.0;
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADVolumeService getSiriOutputVolumeForAudioRoute:withName:completion:]_block_invoke_3";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Fetching Siri volume...", buf, 0xCu);
    v2 = *(a1 + 32);
  }

  v4 = [*(a1 + 40) _fetchSystemVolumeForCategory:@"VoiceCommand" andMode:@"SpeechRecognition" audioRoute:*(a1 + 48) withName:*(a1 + 56) usingSystemController:v2 volume:&v10];
  v5 = AFSiriLogContextSpeech;
  if (!v4)
  {
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[ADVolumeService getSiriOutputVolumeForAudioRoute:withName:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed to fetch Siri volume.", buf, 0xCu);
    }

    v7 = *(a1 + 64);
    v8 = 2604;
LABEL_14:
    v9 = [AFError errorWithCode:v8];
    (*(v7 + 16))(v7, v9, 0.0);

    return;
  }

  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADVolumeService getSiriOutputVolumeForAudioRoute:withName:completion:]_block_invoke";
    v13 = 2048;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Fetched Siri volume is %f.", buf, 0x16u);
  }

  (*(*(a1 + 64) + 16))(v10);
}

void sub_10035D93C(uint64_t a1)
{
  v2 = +[ADAVSystemControllerLifecycleManager sharedManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10035DA24;
  v8[3] = &unk_10051D2C8;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 getAVSystemControllerWithTimeout:v8 completion:2.0];
}

void sub_10035DA24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10035DB18;
  block[3] = &unk_10051D2A0;
  v12 = v3;
  v10 = *(a1 + 32);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, block);
}

void sub_10035DB18(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v13 = 0.0;
    v3 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[ADVolumeService getMusicOutputVolumeForAudioRoute:withName:completion:]_block_invoke_3";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Fetching Media volume...", buf, 0xCu);
      v2 = *(a1 + 32);
    }

    v4 = [v2 volumeCategoryForAudioCategory:@"Audio/Video"];
    v5 = [*(a1 + 40) _fetchSystemVolumeForCategory:v4 andMode:0 audioRoute:*(a1 + 48) withName:*(a1 + 56) usingSystemController:*(a1 + 32) volume:&v13];
    v6 = AFSiriLogContextSpeech;
    if (v5)
    {
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "[ADVolumeService getMusicOutputVolumeForAudioRoute:withName:completion:]_block_invoke";
        v16 = 2048;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Fetched Media volume is %f.", buf, 0x16u);
      }

      v7.n128_f32[0] = v13;
      (*(*(a1 + 64) + 16))(v7);
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v15 = "[ADVolumeService getMusicOutputVolumeForAudioRoute:withName:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to fetch Media volume.", buf, 0xCu);
      }

      v11 = *(a1 + 64);
      v12 = [AFError errorWithCode:2604];
      (*(v11 + 16))(v11, v12, 0.0);
    }
  }

  else
  {
    v8 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[ADVolumeService getMusicOutputVolumeForAudioRoute:withName:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s AVSystemController is unavailable.", buf, 0xCu);
    }

    v9 = *(a1 + 64);
    v4 = [AFError errorWithCode:2603];
    v10.n128_u64[0] = 0;
    (*(v9 + 16))(v10);
  }
}

void sub_10035DE44(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 32);
    v7 = 136315394;
    v8 = "[ADVolumeService setClientConfiguration:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %@", &v7, 0x16u);
  }
}

void sub_10035E118(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) >= *(a1 + 48) || (mach_absolute_time(), AFMachAbsoluteTimeGetTimeInterval(), v3 = v2, v2 >= *(a1 + 56)))
  {
    v8 = *(a1 + 40);

    [v8 invoke];
  }

  else
  {
    [*(*(a1 + 32) + 72) addObject:*(a1 + 40)];
    v4 = dispatch_time(0, ((*(a1 + 56) - v3) * 1000000000.0));
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 8);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10035E250;
    v9[3] = &unk_10051E010;
    v9[4] = v6;
    v10 = v5;
    dispatch_after(v4, v7, v9);
  }
}

id sub_10035E250(uint64_t a1)
{
  [*(*(a1 + 32) + 72) removeObject:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 invoke];
}

id sub_10035E658(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[40] == 1)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v6 = objc_alloc_init(NSMutableSet);
    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;

    [*(a1 + 32) _startObservingSystemVolumes];
    [*(a1 + 32) _fetchSystemVolumes];
    v2 = *(a1 + 32);
  }

  return [v2 _startObservingSystemControllerLifecycle];
}

void sub_10035ED94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10035EDB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[ADSyncConfigAssetManager _registerUpdateHandler]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s New Siri Memory asset update", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] refresh];
    [v6 _populateConfiguration];
  }
}

void sub_10035F00C(id a1)
{
  v1 = objc_alloc_init(ADSyncConfigAssetManager);
  v2 = qword_100590AE8;
  qword_100590AE8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100360090(uint64_t a1)
{
  v2 = [*(a1 + 32) _locationManager];
  v3 = [v2 knownLocation];

  (*(*(a1 + 40) + 16))();
}

void sub_1003601B4(uint64_t a1)
{
  v2 = [*(a1 + 32) _locationManager];
  [v2 dismissedAllVisibleAssistantUIForReason:*(a1 + 40)];
  [v2 drainRequestsWithErrorCode:1 clearLocationCache:1 dismissDialog:1];
}

void sub_1003602F4(uint64_t a1)
{
  v2 = [*(a1 + 32) _locationManager];
  [v2 showingVisibleAssistantUIForReason:*(a1 + 40) completion:*(a1 + 48)];
  [v2 prefetchCurrentLocation];
}

void sub_100360408(uint64_t a1)
{
  v2 = [*(a1 + 32) _locationManager];
  [v2 fetchLocationAuthorization:*(a1 + 40)];
}

void sub_100361400(id a1)
{
  v1 = [[ADBluetoothManager alloc] _init];
  v2 = qword_100590AF8;
  qword_100590AF8 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100361B84(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([*(a1 + 32) dataStoreShouldMirrorData])
  {
    v3 = +[ADCloudKitManager sharedManager];
    [v3 saveCloudSyncEnabledRecord:1 mirror:1 completion:0];
  }

  v4 = *(a1 + 40);
  v5 = v7;
  if (v4)
  {
    v4 = (*(v4 + 16))(v4, v7);
    v5 = v7;
  }

  return _objc_release_x1(v4, v5);
}

void sub_100361D94(uint64_t a1)
{
  if ([*(a1 + 32) dataStoreShouldMirrorData])
  {
    v1 = +[ADCloudKitManager sharedManager];
    [v1 saveCloudSyncEnabledRecord:1 mirror:1 completion:&stru_10051D588];
  }
}

uint64_t sub_100361E04(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

void sub_100361E24(id a1, NSError *a2, NSArray *a3)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[ADCloudKitAccountStatusDataStore synchronizeWithCompletion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Cloud Sync record mirrored with error (%@)", &v5, 0x16u);
  }
}

void sub_100361FA4(id a1, NSException *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitAccountStatusDataStore setServerChangeToken:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error encountered while encoding account status server change token: %@", &v4, 0x16u);
  }
}

void sub_1003620F0(id a1, NSException *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[ADCloudKitAccountStatusDataStore serverChangeToken]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Error encountered while decoding acount status server change token: %@", &v4, 0x16u);
  }
}

id sub_100362334(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = 0;
    goto LABEL_30;
  }

  v2 = [SACommandFailed alloc];
  v3 = [v1 description];
  v4 = [v2 initWithReason:v3];

  v5 = [v1 domain];
  if ([v5 isEqualToString:kAFAssistantErrorDomain])
  {
    v6 = [v1 code];
    if (v6 <= 1010)
    {
      if (v6 <= 1000)
      {
        if (v6 == 103)
        {
          v8 = &SARequestTimeoutErrorCode;
          goto LABEL_28;
        }

        if (v6 != 1000)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }

      if (v6 == 1001)
      {
        v8 = &SACompanionCannotReachSiriErrorCode;
        goto LABEL_28;
      }

      if (v6 == 1007)
      {
        v8 = &SACompanionTimeoutErrorCode;
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v6 > 1018)
    {
      if (v6 == 1019)
      {
        v9 = +[AFFeatureFlags isPersonalRequestDefinedErrorDialogsServerEnabled];
        v8 = &SACompanionUnavailableErrorCode;
        v10 = &SACompanionNetworkMismatchErrorCode;
      }

      else
      {
        if (v6 != 1020)
        {
          goto LABEL_21;
        }

        v9 = +[AFFeatureFlags isPersonalRequestDefinedErrorDialogsServerEnabled];
        v8 = &SACompanionUnavailableErrorCode;
        v10 = &SACompanionWifiDisabledErrorCode;
      }
    }

    else
    {
      if (v6 != 1011)
      {
        if (v6 == 1017)
        {
LABEL_14:
          v8 = &SACompanionUnavailableErrorCode;
LABEL_28:
          v7 = *v8;
          goto LABEL_29;
        }

LABEL_21:
        v8 = &SACompanionExecutionFailedErrorCode;
        goto LABEL_28;
      }

      v9 = +[AFFeatureFlags isPersonalRequestDefinedErrorDialogsServerEnabled];
      v8 = &SACompanionUnavailableErrorCode;
      v10 = &SACompanionNotFoundErrorCode;
    }

    if (v9)
    {
      v8 = v10;
    }

    goto LABEL_28;
  }

  if (![v5 isEqualToString:AFSiriAceErrorDomain])
  {
    goto LABEL_21;
  }

  v7 = [v1 code];
LABEL_29:
  [v4 setErrorCode:v7];

LABEL_30:

  return v4;
}

void sub_1003626D8(void *a1, void *a2)
{
  v4 = a2;
  v3 = +[NSDate date];
  [v4 setDate:v3];

  [v4 setAccessoryIdentifier:a1[4]];
  [v4 setPropagationEvent:a1[7]];
  [v4 setPropagationEventReason:a1[5]];
  [v4 setAssociatedChangeLogEventIdentifier:a1[6]];
}

void sub_100362904(void *a1, void *a2)
{
  v3 = a1[4];
  v7 = a2;
  [v7 setLogEventIdentifier:v3];
  v4 = +[NSDate date];
  [v7 setDate:v4];

  [v7 setPreviousOptInStatus:0];
  [v7 setNewOptInStatus:a1[6]];
  [v7 setChangeSource:a1[7]];
  [v7 setChangeReason:a1[5]];
  v5 = AFBuildVersion();
  [v7 setBuildVersion:v5];

  v6 = AFProductVersion();
  [v7 setProductVersion:v6];

  [v7 setSchemaVersion:kAFSiriDataSharingOptInStatusHistorySchemaVersion];
}

void sub_100362DE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 136315650;
    v9 = "[ADHeadphonesAnnouncementRequestCapabilityProvider fetchCurrentlyRoutedHeadphonesCBUUIDWithCompletion:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s CBDiscovery found CBUUID: %@ for device with address: %@", &v8, 0x20u);
  }

  v5 = *(a1 + 40);
  v6 = [v3 copy];
  (*(v5 + 16))(v5, v6);
}

id sub_100362F44()
{
  if (qword_100590B30 != -1)
  {
    dispatch_once(&qword_100590B30, &stru_10051D708);
  }

  v1 = qword_100590B38;

  return v1;
}

void sub_100362F98(id a1)
{
  sub_100362FFC();
  qword_100590B38 = objc_getClass("FMDFMIPManager");
  if (!qword_100590B38)
  {
    __assert_rtn("initFMDFMIPManager_block_invoke", "ADFMDMonitor.m", 22, "classFMDFMIPManager");
  }

  off_10058F7A0 = sub_10036305C;
}

void *sub_100362FFC()
{
  result = qword_100590B28;
  if (!qword_100590B28)
  {
    result = dlopen("/System/Library/PrivateFrameworks/FindMyDevice.framework/FindMyDevice", 2);
    qword_100590B28 = result;
    if (!result)
    {
      __assert_rtn("FindMyDeviceLibrary", "ADFMDMonitor.m", 20, "frameworkLibrary");
    }
  }

  return result;
}

void sub_1003630DC(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchLostModeState];
  v3 = *(a1 + 32);
  if (*(v3 + 8) != v2)
  {
    v4 = v2;
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = @"disabled";
      if (v4)
      {
        v6 = @"enabled";
      }

      v8 = 136315394;
      v9 = "[ADFMDMonitor _updateLostModeState]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Lost mode is now %@", &v8, 0x16u);
      v3 = *(a1 + 32);
    }

    *(v3 + 8) = v4;
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"ADLostModeStateDidChangeNotification" object:0];
  }
}

id sub_100363280()
{
  if (qword_100590B20 != -1)
  {
    dispatch_once(&qword_100590B20, &stru_10051D6E8);
  }

  v1 = qword_100590B18;

  return v1;
}

void sub_1003632D4(id a1)
{
  v1 = sub_100362FFC();
  v2 = dlsym(v1, "kLostModeChangedRestrictedNotification");
  if (!v2)
  {
    __assert_rtn("initkLostModeChangedRestrictedNotification_block_invoke", "ADFMDMonitor.m", 21, "constant");
  }

  objc_storeStrong(&qword_100590B18, *v2);
  off_10058F798 = sub_100363340;
}

uint64_t sub_1003634E0(uint64_t a1)
{
  qword_100590B10 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void *sub_100363820(void *result)
{
  v1 = result[4];
  if (*(v1 + 8))
  {
    --*(v1 + 16);
    result = result[4];
    if (!result[2])
    {
      return [result _invalidate];
    }
  }

  return result;
}

id sub_1003638C0(uint64_t a1)
{
  v2 = +[ADBluetoothManager sharedInstance];
  v3 = [v2 wirelessSplitterSession];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;

  v6 = *(a1 + 32);
  result = *(v6 + 8);
  if (result)
  {
    v8 = *(v6 + 16);
    if (!v8)
    {
      result = [result addObserver:?];
      v6 = *(a1 + 32);
      v8 = *(v6 + 16);
    }

    *(v6 + 16) = v8 + 1;
  }

  return result;
}

void sub_100363A68(id a1)
{
  v1 = [[ADBluetoothWirelessSplitterSessionObserver alloc] _init];
  v2 = qword_100590B48;
  qword_100590B48 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100363CC8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v4 = [v2 member:v3];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
    [v5 removeObject:v6];

    v7 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_6;
    }

    v8 = *(a1 + 40);
    v9 = v7;
    v10 = [NSNumber numberWithUnsignedInteger:v8];
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(*(a1 + 32) + 16) count]);
    v17 = 136315650;
    v18 = "[ADBluetoothInEarDetectionStateObserver stopObservingForObserverID:]_block_invoke";
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Removed observerID:%@ from observers, count: %@ observer(s)", &v17, 0x20u);

    goto LABEL_4;
  }

  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 40);
    v9 = v12;
    v10 = [NSNumber numberWithUnsignedInteger:v15];
    v16 = *(*(a1 + 32) + 16);
    v17 = 136315650;
    v18 = "[ADBluetoothInEarDetectionStateObserver stopObservingForObserverID:]_block_invoke";
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v16;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Invalid call to stopObserving, no active observer with observerID: %@ in observers %@", &v17, 0x20u);
LABEL_4:
  }

LABEL_6:
  result = [*(*(a1 + 32) + 16) count];
  if (!result)
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "[ADBluetoothInEarDetectionStateObserver stopObservingForObserverID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s No IED state observers, stop observing Bluetooth device", &v17, 0xCu);
    }

    return [*(a1 + 32) _invalidate];
  }

  return result;
}

void sub_100363FF8(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 32))
  {
    v3 = [*(v2 + 32) identifier];
    v4 = [v3 isEqualToString:a1[5]];

    v2 = a1[4];
    if ((v4 & 1) == 0)
    {
      [v2 _invalidate];
      v2 = a1[4];
    }
  }

  if (!*(v2 + 32))
  {
    v5 = +[ADBluetoothManager sharedInstance];
    v6 = [v5 deviceWithAddress:a1[5]];

    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[ADBluetoothInEarDetectionStateObserver startObservingForBTAddress:forObserverID:]_block_invoke";
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Starting to observer in ear state for device: %@", &v18, 0x16u);
    }

    v8 = a1[4];
    v9 = *(v8 + 32);
    *(v8 + 32) = v6;
    v10 = v6;

    [*(a1[4] + 32) addObserver:?];
    v2 = a1[4];
  }

  v11 = *(v2 + 16);
  v12 = [NSNumber numberWithUnsignedInteger:a1[6]];
  [v11 addObject:v12];

  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = a1[6];
    v15 = v13;
    v16 = [NSNumber numberWithUnsignedInteger:v14];
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1[4] + 16) count]);
    v18 = 136315650;
    v19 = "[ADBluetoothInEarDetectionStateObserver startObservingForBTAddress:forObserverID:]_block_invoke";
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Added observerID:%@ to observers, count: %@ observer(s)", &v18, 0x20u);
  }
}

void sub_100364334(id a1)
{
  v1 = [[ADBluetoothInEarDetectionStateObserver alloc] _init];
  v2 = qword_100590B58;
  qword_100590B58 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100367354(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setIsDeviceOwnedByCurrentUser:*(*(a1 + 32) + 8)];
  [v4 setAssistantIdentifier:*(*(a1 + 32) + 56)];
  [v4 setIdsIdentifier:*(*(a1 + 32) + 16)];
  [v4 setIdsDeviceUniqueIdentifier:*(*(a1 + 32) + 48)];
  [v4 setMediaSystemIdentifier:*(*(a1 + 32) + 96)];
  [v4 setRapportEffectiveIdentifier:*(*(a1 + 32) + 80)];
  [v4 setHomeKitAccessoryIdentifier:*(*(a1 + 32) + 88)];
  [v4 setRoomName:*(*(a1 + 32) + 104)];
  [v4 setUserInterfaceIdiom:*(*(a1 + 32) + 120)];
  [v4 setAceVersion:*(*(a1 + 32) + 128)];
  [v4 setName:*(*(a1 + 32) + 40)];
  [v4 setProductType:*(*(a1 + 32) + 24)];
  [v4 setBuildVersion:*(*(a1 + 32) + 32)];
  if ([*(*(a1 + 32) + 72) count])
  {
    v3 = [*(*(a1 + 32) + 72) firstObject];
    [v4 setMediaRouteIdentifier:v3];
  }

  [v4 setAssistantIdentifier:*(*(a1 + 32) + 56)];
}

uint64_t sub_100367AE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100367AF8(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("ADPeerInfo", v1);

  v3 = qword_100590B70;
  qword_100590B70 = v2;
}

void sub_1003689CC(void *a1, void *a2)
{
  v3 = a1[10];
  v4 = a2;
  [v4 setHostTime:v3];
  [v4 setType:a1[11]];
  [v4 setPayloadBeginAudioSessionRequest:a1[4]];
  [v4 setPayloadBeginAudioSessionResponse:a1[5]];
  [v4 setPayloadKeepAudioSessionAliveRequest:a1[6]];
  [v4 setPayloadKeepAudioSessionAliveResponse:a1[7]];
  [v4 setPayloadEndAudioSessionRequest:a1[8]];
  [v4 setPayloadEndAudioSessionResponse:a1[9]];
}

void sub_1003698BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v3 = AFSiriLogContextDaemon;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v50 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Local alarm snapshot is available, use it for alarm dismissal.", buf, 0xCu);
      v1 = *(a1 + 32);
      v2 = *(v1 + 24);
    }

    v5 = *(v1 + 80);
    v6 = v2;
    v7 = v5;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    [v6 notifiedFiringAlarmIDs];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v8 = v31 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:buf count:16];
    if (v9)
    {
      v11 = *v31;
      *&v10 = 136315394;
      v29 = v10;
      do
      {
        v12 = 0;
        do
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * v12);
          v14 = [v6 alarmsByID];
          v15 = [v14 objectForKey:v13];
          v16 = [v15 type];

          v17 = AFSiriLogContextDaemon;
          if (v16)
          {
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              *v44 = v29;
              *&v44[4] = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke_2";
              *&v44[12] = 2112;
              *&v44[14] = v13;
              _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Not dismissing media alarm: %@", v44, 0x16u);
            }
          }

          else
          {
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *v44 = v29;
              *&v44[4] = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
              *&v44[12] = 2112;
              *&v44[14] = v13;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Dismissing firing alarm %@...", v44, 0x16u);
            }

            v18 = [v13 UUIDString];
            v19 = [v7 dismissAlarmWithIdentifier:v18];

            ++v35[3];
          }

          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [v8 countByEnumeratingWithState:&v30 objects:buf count:16];
      }

      while (v9);
    }

    v20 = [v6 alarmsByID];
    *v44 = _NSConcreteStackBlock;
    *&v44[8] = 3221225472;
    *&v44[16] = sub_10036A41C;
    v45 = &unk_10051DF00;
    v21 = v8;
    v46 = v21;
    v22 = v7;
    v47 = v22;
    v48 = &v34;
    [v20 enumerateKeysAndObjectsUsingBlock:v44];

    v23 = v35[3];
    if (v23 < 2)
    {
      v24 = AFSiriLogContextDaemon;
      v26 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
      if (v23 == 1)
      {
        if (v26)
        {
          *v38 = 136315650;
          v39 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
          v40 = 2112;
          v41 = v22;
          v42 = 2048;
          v43 = 1;
          v25 = "%s Asked %@ to dismiss %tu firing alarm.";
          goto LABEL_25;
        }
      }

      else if (v26)
      {
        *v38 = 136315138;
        v39 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
        v25 = "%s There is no firing alarms to dismiss.";
        v27 = v24;
        v28 = 12;
        goto LABEL_28;
      }
    }

    else
    {
      v24 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *v38 = 136315650;
        v39 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
        v40 = 2112;
        v41 = v22;
        v42 = 2048;
        v43 = v23;
        v25 = "%s Asked %@ to dismiss %tu firing alarms.";
LABEL_25:
        v27 = v24;
        v28 = 32;
LABEL_28:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, v25, v38, v28);
      }
    }

    _Block_object_dispose(&v34, 8);
    return;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v50 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Local alarm snapshot is not available, skip alarm dismissal.", buf, 0xCu);
  }
}

void sub_100369DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100369DE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3 = AFSiriLogContextDaemon;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v46 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Local timer snapshot is available, use it for timer dismissal.", buf, 0xCu);
      v1 = *(a1 + 32);
      v2 = *(v1 + 32);
    }

    v5 = *(v1 + 88);
    v6 = v2;
    v7 = v5;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v25 = v6;
    [v6 notifiedFiringTimerIDs];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v8 = v27 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:buf count:16];
    if (v9)
    {
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *v40 = 136315394;
            *&v40[4] = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke_2";
            *&v40[12] = 2112;
            *&v40[14] = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Dismissing firing timer %@...", v40, 0x16u);
          }

          v14 = [v12 UUIDString];
          v15 = [v7 dismissTimerWithIdentifier:v14];

          ++v31[3];
        }

        v9 = [v8 countByEnumeratingWithState:&v26 objects:buf count:16];
      }

      while (v9);
    }

    v16 = [v25 timersByID];
    *v40 = _NSConcreteStackBlock;
    *&v40[8] = 3221225472;
    *&v40[16] = sub_10036A280;
    v41 = &unk_10051DF28;
    v17 = v8;
    v42 = v17;
    v18 = v7;
    v43 = v18;
    v44 = &v30;
    [v16 enumerateKeysAndObjectsUsingBlock:v40];

    v19 = v31[3];
    if (v19 < 2)
    {
      v20 = AFSiriLogContextDaemon;
      v22 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO);
      if (v19 == 1)
      {
        if (v22)
        {
          *v34 = 136315650;
          v35 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
          v36 = 2112;
          v37 = v18;
          v38 = 2048;
          v39 = 1;
          v21 = "%s Asked %@ to dismiss %tu firing timer.";
          goto LABEL_21;
        }
      }

      else if (v22)
      {
        *v34 = 136315138;
        v35 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
        v21 = "%s There is no firing timers to dismiss.";
        v23 = v20;
        v24 = 12;
        goto LABEL_24;
      }
    }

    else
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *v34 = 136315650;
        v35 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
        v36 = 2112;
        v37 = v18;
        v38 = 2048;
        v39 = v19;
        v21 = "%s Asked %@ to dismiss %tu firing timers.";
LABEL_21:
        v23 = v20;
        v24 = 32;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v21, v34, v24);
      }
    }

    _Block_object_dispose(&v30, 8);
    return;
  }

  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v46 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Local timer snapshot is not available, skip timer dismissal.", buf, 0xCu);
  }
}

void sub_10036A254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10036A280(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 isFiring] && (objc_msgSend(*(a1 + 32), "containsObject:", v5) & 1) == 0)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Timer %@ is not in notifiedFiringTimerIDs, but isFiring is YES.", &v11, 0x16u);
      v7 = AFSiriLogContextDaemon;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Dismissing firing timer %@... (fail-safe)", &v11, 0x16u);
    }

    v8 = *(a1 + 40);
    v9 = [v5 UUIDString];
    v10 = [v8 dismissTimerWithIdentifier:v9];

    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void sub_10036A41C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 isFiring] && (objc_msgSend(*(a1 + 32), "containsObject:", v5) & 1) == 0 && (objc_msgSend(v6, "type") & 1) == 0)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Alarm %@ is not in notifiedFiringAlarmIDs, but isFiring is YES.", &v11, 0x16u);
      v7 = AFSiriLogContextDaemon;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[ADClockService _dismissFiringItemsWithOptions:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Dismissing firing alarm %@... (fail-safe)", &v11, 0x16u);
    }

    v8 = *(a1 + 40);
    v9 = [v5 UUIDString];
    v10 = [v8 dismissAlarmWithIdentifier:v9];

    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void sub_10036A85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10036A880(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10036AABC;
  v3[3] = &unk_10051DEB0;
  objc_copyWeak(&v7, (a1 + 64));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v7);
}

void sub_10036A954(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 136315650;
    v13 = "[ADClockService _removeTimer:completion:]_block_invoke";
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to remove timer %@ due to error %@.", buf, 0x20u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10036AAA4;
  v9[3] = &unk_10051E038;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  dispatch_async(v5, v9);
}

void sub_10036AABC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036AB78;
  v4[3] = &unk_10051DE88;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [WeakRetained _fetchTimerWithID:v3 completion:v4];
}

void sub_10036AB78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v15 = 136315650;
      v16 = "[ADClockService _removeTimer:completion:]_block_invoke_3";
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to remove timer %@ because it still exists %@ after removal.", &v15, 0x20u);
    }

    v8 = *(a1 + 40);
    v9 = [AFError errorWithCode:2119];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (v6)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v15 = 136315650;
        v16 = "[ADClockService _removeTimer:completion:]_block_invoke";
        v17 = 2112;
        v18 = v14;
        v19 = 2112;
        v20 = v6;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to validate the removed timer %@ due to error %@.", &v15, 0x20u);
      }

      v11 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v15 = 136315394;
        v16 = "[ADClockService _removeTimer:completion:]_block_invoke";
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s removedTimer = %@", &v15, 0x16u);
      }

      v11 = *(*(a1 + 40) + 16);
    }

    v11();
  }
}

void sub_10036AEF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[ADClockService _removeTimerWithID:completion:]_block_invoke";
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Found timer to remove %@.", &v15, 0x16u);
    }

    [*(a1 + 32) _removeTimer:v5 completion:*(a1 + 48)];
  }

  else
  {
    v8 = AFSiriLogContextDaemon;
    v9 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v9)
      {
        v13 = *(a1 + 40);
        v15 = 136315650;
        v16 = "[ADClockService _removeTimerWithID:completion:]_block_invoke";
        v17 = 2112;
        v18 = v13;
        v19 = 2112;
        v20 = v6;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to find the timer to remove with ID %@ due to error %@.", &v15, 0x20u);
      }

      v10 = *(a1 + 48);
      if (v10)
      {
        (*(v10 + 16))(v10, 0, v6);
      }
    }

    else
    {
      if (v9)
      {
        v14 = *(a1 + 40);
        v15 = 136315394;
        v16 = "[ADClockService _removeTimerWithID:completion:]_block_invoke";
        v17 = 2112;
        v18 = v14;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Unable to find the timer to remove with ID %@.", &v15, 0x16u);
      }

      v11 = *(a1 + 48);
      if (v11)
      {
        v12 = [AFError errorWithCode:2118];
        (*(v11 + 16))(v11, 0, v12);
      }
    }
  }
}

void sub_10036B470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10036B494(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10036B6D0;
  v3[3] = &unk_10051DEB0;
  objc_copyWeak(&v7, (a1 + 64));
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v7);
}

void sub_10036B568(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 136315650;
    v13 = "[ADClockService _updateTimer:completion:]_block_invoke";
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to update timer %@ due to error %@.", buf, 0x20u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10036B6B8;
  v9[3] = &unk_10051E038;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  dispatch_async(v5, v9);
}

void sub_10036B6D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036B790;
  v4[3] = &unk_10051DE88;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [WeakRetained _fetchTimerWithID:v3 completion:v4];
}

void sub_10036B790(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[ADClockService _updateTimer:completion:]_block_invoke_3";
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s updatedTimer = %@", &v15, 0x16u);
    }

    v8 = *(*(a1 + 40) + 16);
LABEL_9:
    v8();
    goto LABEL_10;
  }

  v9 = AFSiriLogContextDaemon;
  v10 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v10)
    {
      v13 = *(a1 + 32);
      v15 = 136315650;
      v16 = "[ADClockService _updateTimer:completion:]_block_invoke";
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to validate the updated timer %@ due to error %@.", &v15, 0x20u);
    }

    v8 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  if (v10)
  {
    v14 = *(a1 + 32);
    v15 = 136315394;
    v16 = "[ADClockService _updateTimer:completion:]_block_invoke";
    v17 = 2112;
    v18 = v14;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Unable to find the updated timer %@.", &v15, 0x16u);
  }

  v11 = *(a1 + 40);
  v12 = [AFError errorWithCode:2117];
  (*(v11 + 16))(v11, 0, v12);

LABEL_10:
}

void sub_10036BB2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v25 = v6;
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v33 = "[ADClockService _updateTimerWithID:changes:completion:]_block_invoke";
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Found timer to update %@.", buf, 0x16u);
    }

    v9 = [v5 mutableCopy];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = a1;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        v14 = 0;
        do
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * v14);
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_10036BED4;
          v26[3] = &unk_10051DE10;
          v27 = v9;
          [v15 enumerateKeysAndObjectsUsingBlock:v26];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v12);
    }

    v16 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v33 = "[ADClockService _updateTimerWithID:changes:completion:]_block_invoke";
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Prepared timer to update %@.", buf, 0x16u);
    }

    [*(v24 + 40) _updateTimer:v9 completion:*(v24 + 56)];

    v7 = v25;
  }

  else
  {
    v17 = AFSiriLogContextDaemon;
    v18 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v18)
      {
        v22 = *(a1 + 48);
        *buf = 136315650;
        v33 = "[ADClockService _updateTimerWithID:changes:completion:]_block_invoke";
        v34 = 2112;
        v35 = v22;
        v36 = 2112;
        v37 = v7;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Failed to find the timer to update with ID %@ due to error %@.", buf, 0x20u);
      }

      v19 = *(a1 + 56);
      if (v19)
      {
        (*(v19 + 16))(v19, 0, v7);
      }
    }

    else
    {
      if (v18)
      {
        v23 = *(a1 + 48);
        *buf = 136315394;
        v33 = "[ADClockService _updateTimerWithID:changes:completion:]_block_invoke";
        v34 = 2112;
        v35 = v23;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Unable to find the timer to update with ID %@.", buf, 0x16u);
      }

      v20 = *(a1 + 56);
      if (v20)
      {
        v21 = [AFError errorWithCode:2116];
        (*(v20 + 16))(v20, 0, v21);
      }
    }
  }
}

void sub_10036BED4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[ADClockService _updateTimerWithID:changes:completion:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s [*] %@: %@", &v8, 0x20u);
  }

  [*(a1 + 32) setValue:v6 forKey:v5];
}

void sub_10036C358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10036C37C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10036C5B8;
  v3[3] = &unk_10051DEB0;
  objc_copyWeak(&v7, (a1 + 64));
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v7);
}

void sub_10036C450(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 136315650;
    v13 = "[ADClockService _addTimer:completion:]_block_invoke";
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed to add timer %@ due to error %@.", buf, 0x20u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10036C5A0;
  v9[3] = &unk_10051E038;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  dispatch_async(v5, v9);
}

void sub_10036C5B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10036C678;
  v4[3] = &unk_10051DE88;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [WeakRetained _fetchTimerWithID:v3 completion:v4];
}

void sub_10036C678(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[ADClockService _addTimer:completion:]_block_invoke_3";
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s addedTimer = %@", &v15, 0x16u);
    }

    v8 = *(*(a1 + 40) + 16);
LABEL_9:
    v8();
    goto LABEL_10;
  }

  v9 = AFSiriLogContextDaemon;
  v10 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v10)
    {
      v13 = *(a1 + 32);
      v15 = 136315650;
      v16 = "[ADClockService _addTimer:completion:]_block_invoke";
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed to validate the added timer %@ due to error %@.", &v15, 0x20u);
    }

    v8 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  if (v10)
  {
    v14 = *(a1 + 32);
    v15 = 136315394;
    v16 = "[ADClockService _addTimer:completion:]_block_invoke";
    v17 = 2112;
    v18 = v14;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Unable to find the added timer %@.", &v15, 0x16u);
  }

  v11 = *(a1 + 40);
  v12 = [AFError errorWithCode:2115];
  (*(v11 + 16))(v11, 0, v12);

LABEL_10:
}

void sub_10036C948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 timerID];
        v13 = [v12 isEqual:*(a1 + 32)];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  (*(*(a1 + 40) + 16))();
}

void sub_10036CC14(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10036CD8C;
  v7[3] = &unk_10051E038;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_10036CCC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10036CD74;
  v7[3] = &unk_10051E038;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_10036D078(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 timersByID];
  if ([v6 count])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = 136315650;
      v10 = "[ADClockService _mergedClockTimerSnapshot]_block_invoke";
      v11 = 2048;
      v12 = [v6 count];
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Adding %tu timers (remote %@)...", &v9, 0x20u);
    }

    [*(a1 + 32) addEntriesFromDictionary:v6];
  }
}

void sub_10036D190(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = +[NSDate date];
  [v4 setDate:v3];

  [v4 setTimersByID:*(a1 + 32)];
}

void sub_10036D4DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 alarmsByID];
  if ([v6 count])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = 136315650;
      v10 = "[ADClockService _mergedClockAlarmSnapshot]_block_invoke";
      v11 = 2048;
      v12 = [v6 count];
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Adding %tu alarms (remote %@)...", &v9, 0x20u);
    }

    [*(a1 + 32) addEntriesFromDictionary:v6];
  }
}

void sub_10036D5F4(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = +[NSDate date];
  [v4 setDate:v3];

  [v4 setAlarmsByID:*(a1 + 32)];
}

void sub_10036D704(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 timersByID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10036D7CC;
  v9[3] = &unk_10051DC80;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
}

void sub_10036D940(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 alarmsByID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10036DA08;
  v9[3] = &unk_10051DC08;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
}

void sub_10036DDB4(void *a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = a1[6];
    v4 = a1[4];
    v7 = 136315650;
    v8 = "[ADClockService requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
    v9 = 2048;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s origin = %ld, client = %@", &v7, 0x20u);
  }

  if (a1[6] == 5)
  {
    v5 = a1[5];
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;
  }
}

id sub_10036DF8C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    *buf = 136315650;
    v32 = "[ADClockService requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
    v33 = 2048;
    v34 = v3;
    v35 = 2112;
    v36 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s origin = %ld, client = %@", buf, 0x20u);
  }

  if (*(a1 + 56) == 5)
  {
    v5 = dispatch_group_create();
    v6 = *(a1 + 40);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v8 = *(*(a1 + 40) + 16);
    v9 = *(a1 + 40);
    v10 = *(v9 + 56);
    *(v9 + 56) = 0;

    v11 = *(a1 + 40);
    v12 = *(v11 + 64);
    *(v11 + 64) = 0;

    dispatch_group_enter(v8);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10036E254;
    v29[3] = &unk_10051DB40;
    v13 = *(a1 + 48);
    v29[4] = *(a1 + 40);
    v14 = v8;
    v30 = v14;
    [v13 getLocalContextWithPrivacyClass:10 completion:v29];
    dispatch_group_enter(v14);
    v15 = *(a1 + 40);
    v16 = *(v15 + 48);
    *(v15 + 48) = 0;

    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v32 = "[ADClockService requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Fetching remote timer snapshots...", buf, 0xCu);
    }

    v18 = *(a1 + 40);
    v19 = *(v18 + 72);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_10036E434;
    v26 = &unk_10051DB90;
    v27 = v18;
    v28 = v14;
    v20 = v14;
    [v19 getSnapshotsByDeviceIdentifierWithCompletion:&v23];
  }

  v21 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "[ADClockService requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Dismissing firing alarms and timers...", buf, 0xCu);
  }

  return [*(a1 + 40) _dismissFiringItemsWithOptions:{3, v23, v24, v25, v26, v27}];
}

void sub_10036E254(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 alarmSnapshot];
  v5 = [v3 timerSnapshot];

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[ADClockService requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Fetched local alarm snapshot %@.", buf, 0x16u);
    v6 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v17 = "[ADClockService requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Fetched local timer snapshot %@.", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10036E658;
  v12[3] = &unk_10051DB18;
  v12[4] = v8;
  v13 = v4;
  v14 = v5;
  v15 = v7;
  v10 = v5;
  v11 = v4;
  dispatch_async(v9, v12);
}

void sub_10036E434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[ADClockService requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Fetched remote timer snapshots %@.", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10036E57C;
  block[3] = &unk_10051DB68;
  block[4] = v6;
  v10 = v3;
  v11 = v5;
  v8 = v3;
  dispatch_async(v7, block);
}

void sub_10036E57C(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  *(v5 + 64) = 0;

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[ADClockService requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Done fetching remote timer snapshots.", &v8, 0xCu);
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10036E658(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = 0;

  v7 = [*(a1 + 48) copy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  v10 = *(a1 + 32);
  v11 = *(v10 + 64);
  *(v10 + 64) = 0;

  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[ADClockService requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Done fetching local alarm and timer snapshots.", &v13, 0xCu);
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_10036E884(uint64_t a1)
{
  v2 = [*(a1 + 32) _mergedClockAlarmSnapshot];
  v3 = [*(a1 + 32) _mergedClockTimerSnapshot];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADClockService getSnapshotsWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s mergedClockAlarmSnapshot = %@.", &v5, 0x16u);
    v4 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ADClockService getSnapshotsWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s mergedClockTimerSnapshot = %@.", &v5, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10036EB0C(uint64_t a1)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v2 = [*(*(a1 + 32) + 24) notifiedFiringAlarmIDs];
  v3 = [v2 count] != 0;

  v27 = v3;
  v4 = v25;
  if ((v25[3] & 1) == 0)
  {
    v5 = [*(*(a1 + 32) + 24) alarmsByID];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10036EFC0;
    v23[3] = &unk_10051DA28;
    v23[4] = &v24;
    [v5 enumerateKeysAndObjectsUsingBlock:v23];

    v4 = v25;
  }

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(v4 + 24);
    *buf = 136315394;
    *&buf[4] = "[ADClockService getFiringStatesWithCompletion:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s hasFiringAlarms = %d (local)", buf, 0x12u);
    v4 = v25;
  }

  if ((v4[3] & 1) == 0)
  {
    v8 = *(*(a1 + 32) + 40);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10036F0B0;
    v22[3] = &unk_10051DA78;
    v22[4] = &v24;
    [v8 enumerateKeysAndObjectsUsingBlock:v22];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = *(v25 + 24);
      *buf = 136315394;
      *&buf[4] = "[ADClockService getFiringStatesWithCompletion:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s hasFiringAlarms = %d (remote)", buf, 0x12u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v11 = [*(*(a1 + 32) + 32) notifiedFiringTimerIDs];
  v12 = [v11 count] != 0;

  v33 = v12;
  v13 = *&buf[8];
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v14 = [*(*(a1 + 32) + 32) timersByID];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10036F190;
    v21[3] = &unk_10051DAA0;
    v21[4] = buf;
    [v14 enumerateKeysAndObjectsUsingBlock:v21];

    v13 = *&buf[8];
  }

  v15 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = *(v13 + 24);
    *v28 = 136315394;
    v29 = "[ADClockService getFiringStatesWithCompletion:]_block_invoke";
    v30 = 1024;
    v31 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s hasFiringTimers = %d (local)", v28, 0x12u);
    v13 = *&buf[8];
  }

  if ((*(v13 + 24) & 1) == 0)
  {
    v17 = *(*(a1 + 32) + 48);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10036F280;
    v20[3] = &unk_10051DAF0;
    v20[4] = buf;
    [v17 enumerateKeysAndObjectsUsingBlock:v20];
    v18 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v19 = *(*&buf[8] + 24);
      *v28 = 136315394;
      v29 = "[ADClockService getFiringStatesWithCompletion:]_block_invoke";
      v30 = 1024;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s hasFiringTimers = %d (remote)", v28, 0x12u);
    }
  }

  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v24, 8);
}

void sub_10036EFC0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 isFiring])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[ADClockService getFiringStatesWithCompletion:]_block_invoke_2";
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Alarm %@ is not in notifiedFiringAlarmIDs, but isFiring is YES.", &v8, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10036F0B0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [a3 alarmsByID];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10036F460;
  v11[3] = &unk_10051DA50;
  v9 = *(a1 + 32);
  v12 = v7;
  v13 = v9;
  v10 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void sub_10036F190(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 isFiring])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[ADClockService getFiringStatesWithCompletion:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Timer %@ is not in notifiedFiringTimerIDs, but isFiring is YES.", &v8, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10036F280(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [a3 timersByID];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10036F360;
  v11[3] = &unk_10051DAC8;
  v9 = *(a1 + 32);
  v12 = v7;
  v13 = v9;
  v10 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void sub_10036F360(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 isFiring])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[ADClockService getFiringStatesWithCompletion:]_block_invoke_2";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Found firing timer %@ from device %@.", &v9, 0x20u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10036F460(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 isFiring])
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[ADClockService getFiringStatesWithCompletion:]_block_invoke_2";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Found firing alarm %@ from device %@.", &v9, 0x20u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10036F7F0(id a1)
{
  v1 = objc_alloc_init(ADClockService);
  v2 = qword_100590B88;
  qword_100590B88 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10036FD20(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setDataType:v3];
  [v4 setGeneration:a1[5]];
  [v4 setLimit:a1[6]];
}

id sub_100370270(uint64_t a1)
{
  v5[0] = @"hour";
  v2 = [NSNumber numberWithInteger:*(a1 + 40)];
  v5[1] = @"storageSize";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

id sub_1003703D8(uint64_t a1)
{
  v5[0] = @"hour";
  v2 = [NSNumber numberWithInteger:*(a1 + 40)];
  v5[1] = @"storageSize";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

uint64_t sub_1003711D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100371870(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10037190C;
  v7[3] = &unk_10051E010;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10037190C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(*(a1 + 40) + 40) = 1;
    v2 = *(a1 + 32);
  }

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
        if ([v8 availableOnLockScreen])
        {
          v9 = *(*(a1 + 40) + 32);
          v10 = [v8 internalID];
          [v9 setObject:v8 forKey:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(*(a1 + 40) + 16));
}

id sub_100371B94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  [*(a1 + 32) _setUpBBObserver];
  v4 = *(a1 + 32);

  return [v4 _fetchInitialState];
}

void sub_100371D00(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 56))
  {
    v2 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v9 = "[ADNotificationManager observer:updateSectionInfo:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Batched update pending", buf, 0xCu);
    }
  }

  else
  {
    *(v1 + 56) = 1;
    v4 = dispatch_time(0, 5000000000);
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100371E30;
    block[3] = &unk_10051DFE8;
    block[4] = v5;
    dispatch_after(v4, v6, block);
  }
}

void sub_100371FDC(uint64_t a1)
{
  v2 = [AFBulletin internalIDForBBBulletinID:*(a1 + 32)];
  v3 = [*(*(a1 + 40) + 24) bulletinForInternalID:v2];
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[ADNotificationManager observer:purgeReferencesToBulletinID:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s removed %@", &v8, 0x16u);
    }

    [*(*(a1 + 40) + 24) removeBulletinWithInternalID:v2];
    [*(*(a1 + 40) + 32) removeObjectForKey:v2];
    [*(a1 + 40) _notifyDelegatesDidRemoveBulletin:v3];
    [*(a1 + 40) _bulletinsDidChange];
  }

  else
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[ADNotificationManager observer:purgeReferencesToBulletinID:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Asked to remove a bulletin %@ that I don't already have.", &v8, 0x16u);
    }
  }
}

void sub_100372228(uint64_t a1)
{
  v2 = [*(a1 + 32) bulletinID];
  v3 = [AFBulletin internalIDForBBBulletinID:v2];
  v4 = [*(*(a1 + 40) + 24) bulletinForInternalID:v3];
  v5 = v4;
  if (v4)
  {
    [v4 wasRemovedFromFeed:*(a1 + 48)];
  }

  if ((*(a1 + 48) & 8) != 0)
  {
    v6 = [*(*(a1 + 40) + 32) objectForKey:v3];

    v7 = AFSiriLogContextConnection;
    if (v6)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        v9 = 136315394;
        v10 = "[ADNotificationManager observer:removeBulletin:forFeed:]_block_invoke";
        v11 = 2112;
        v12 = v8;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s %@ removed from lock screen feed", &v9, 0x16u);
      }

      [*(*(a1 + 40) + 32) removeObjectForKey:v3];
      [*(a1 + 40) _bulletinsDidChange];
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[ADNotificationManager observer:removeBulletin:forFeed:]_block_invoke";
      v11 = 2112;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Asked to remove a bulletin from lock screen %@ that I don't already have.", &v9, 0x16u);
    }
  }
}

void sub_100372508(uint64_t a1)
{
  v2 = [*(a1 + 32) _afbulletinForBBBulletin:*(a1 + 40) forFeed:*(a1 + 48)];
  v3 = [v2 internalID];
  v4 = [*(*(a1 + 32) + 24) bulletinForInternalID:v3];

  if (v4)
  {
    [*(*(a1 + 32) + 24) setBulletin:v2 forInternalID:v3];
    v5 = [*(*(a1 + 32) + 32) objectForKey:v3];

    if (v5)
    {
      [*(*(a1 + 32) + 32) setObject:v2 forKey:v3];
    }

    [*(a1 + 32) _bulletinsDidChange];
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v8 = v6;
      v9 = [v7 bulletinID];
      v10 = 136315394;
      v11 = "[ADNotificationManager observer:modifyBulletin:forFeed:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Trying to modify a bulletin %@ that I don't already have.", &v10, 0x16u);
    }
  }
}

void sub_100372730(uint64_t a1)
{
  v2 = [*(a1 + 32) isHighlight];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v3;
    v9 = [v7 sound];
    v10 = [*(a1 + 32) contentType];
    v14 = 136316162;
    v15 = "[ADNotificationManager observer:addBulletin:forFeed:]_block_invoke";
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 1024;
    v23 = v2;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s %@ added with sound %@ and contentType %@ and isHighlight %d", &v14, 0x30u);
  }

  v4 = [*(a1 + 40) _afbulletinForBBBulletin:*(a1 + 32) forFeed:*(a1 + 48)];
  v5 = [v4 internalID];
  if ((*(a1 + 48) & 8) != 0)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = v6;
      v13 = [v11 publisherBulletinID];
      v14 = 136315394;
      v15 = "[ADNotificationManager observer:addBulletin:forFeed:]_block_invoke";
      v16 = 2112;
      v17 = v13;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s %@ added to lock screen feed", &v14, 0x16u);
    }

    [v4 setAvailableOnLockScreen:1];
    [*(*(a1 + 40) + 32) setObject:v4 forKey:v5];
  }

  if (v2)
  {
    [v4 setIsHighlight:1];
  }

  [*(*(a1 + 40) + 24) setBulletin:v4 forInternalID:v5];
  [*(a1 + 40) _notifyDelegatesDidAddBulletin:v4];
  [*(a1 + 40) _bulletinsDidChange];
}

uint64_t sub_10037310C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1003732C4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) bulletinWithNotificationID:*(a1 + 40)];
  [*(a1 + 32) _performActionWithIdentifier:*(a1 + 48) forAFBulletin:v2 completion:*(a1 + 56)];
}

void sub_1003734C0(uint64_t a1)
{
  v3 = [AFBulletin internalIDForBBBulletinID:*(a1 + 32)];
  v2 = [*(*(a1 + 40) + 24) bulletinForInternalID:v3];
  [*(a1 + 40) _performActionWithIdentifier:*(a1 + 48) forAFBulletin:v2 completion:*(a1 + 56)];
}

void sub_1003735E8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 actions];
  (*(v2 + 16))(v2, v3);
}

void sub_10037370C(void *a1)
{
  v2 = [AFBulletin internalIDForBBBulletinID:a1[4]];
  v3 = [*(a1[5] + 24) bulletinForInternalID:v2];
  if (!v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[ADNotificationManager fetchBulletinWithID:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s No Bulletin found", &v5, 0xCu);
    }
  }

  (*(a1[6] + 16))();
}

void sub_1003738D8(void *a1)
{
  if (a1[4])
  {
    v2 = [NSMutableArray alloc];
    v3 = [*(a1[5] + 24) allBulletins];
    v4 = [v2 initWithCapacity:{objc_msgSend(v3, "count")}];

    v5 = a1[4];
    v6 = *(a1[5] + 24);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100373A54;
    v12[3] = &unk_10051E060;
    v13 = v4;
    v7 = v4;
    [v6 enumerateBulletinsAfterBulletinWithNotificationID:v5 usingBlock:v12];
    (*(a1[6] + 16))();
  }

  else if (AFIsDeviceUnlocked())
  {
    v8 = a1[6];
    v11 = [*(a1[5] + 24) allBulletins];
    (*(v8 + 16))(v8, v11);
  }

  else
  {
    v9 = a1[5];
    v10 = a1[6];

    [v9 fetchBulletinsOnLockScreenWithCompletion:v10];
  }
}

void sub_100373B08(uint64_t a1)
{
  [*(a1 + 32) _fetchFromDataSourceIfNecessary];
  v2 = *(a1 + 32);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100373BB4;
  v6[3] = &unk_10051E038;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  dispatch_group_notify(v3, v4, v6);
}

void sub_100373BB4(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADNotificationManager fetchBulletinsOnLockScreenWithCompletion:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 32) allValues];
  (*(v3 + 16))(v3, v4);
}

void sub_100373D30(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[ADNotificationManager fetchAllBulletinsWithCompletion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 24) allBulletins];
  (*(v3 + 16))(v3, v4);
}

void sub_100373EA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  v3 = *(a1 + 40);

  if (WeakRetained != v3)
  {
    objc_storeWeak((*(a1 + 32) + 104), *(a1 + 40));
    *(*(a1 + 32) + 40) = 0;
    v4 = *(a1 + 32);

    [v4 _fetchFromDataSourceIfNecessary];
  }
}

void sub_100374274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10037428C(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100590BA8)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100374478;
    v6[4] = &unk_10051E200;
    v6[5] = v6;
    v7 = off_10051E1E8;
    v8 = 0;
    qword_100590BA8 = _sl_dlopen();
  }

  if (!qword_100590BA8)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *BulletinBoardLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ADNotificationManager.m" lineNumber:50 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("BBObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getBBObserverClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ADNotificationManager.m" lineNumber:51 description:{@"Unable to find class %s", "BBObserver"}];

LABEL_10:
    __break(1u);
  }

  qword_100590BA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100374478()
{
  result = _sl_dlopen();
  qword_100590BA8 = result;
  return result;
}

void sub_1003744EC(id a1)
{
  v1 = [[ADNotificationManager alloc] _init];
  v2 = qword_100590B98;
  qword_100590B98 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100374A74(uint64_t a1, xpc_object_t xdict)
{
  if (xdict)
  {
    xpc_dictionary_get_BOOL(xdict, AFExternalRequestReplyKeyResult);
  }

  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  xpc_connection_cancel(v3);
}

void sub_100374F48(uint64_t a1, xpc_object_t xdict)
{
  if (xdict)
  {
    xpc_dictionary_get_BOOL(xdict, AFExternalRequestReplyKeyResult);
  }

  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  xpc_connection_cancel(v3);
}

void sub_100375630(id a1)
{
  v1 = [[ADUserNotificationServiceProvider alloc] initWithConnection:0 bundleIdentifier:0 notificationCategories:0];
  v2 = qword_100590BB8;
  qword_100590BB8 = v1;

  _objc_release_x1(v1, v2);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}