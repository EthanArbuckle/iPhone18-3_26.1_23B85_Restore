void sub_1000F41BC(id a1)
{
  v1 = [NSSet alloc];
  qword_100590118 = [v1 initWithObjects:{SACFFetchScriptCommandClassIdentifier, SACFFetchScriptResponseClassIdentifier, 0}];

  _objc_release_x1();
}

void sub_1000F565C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained assistantSessionManager:*(a1 + 32) receivedError:*(a1 + 40) isRetryableError:*(a1 + 48)];
}

void sub_1000F59A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained assistantSessionManager:*(a1 + 32) receivedError:*(a1 + 40) isRetryableError:0];
}

void sub_1000F6DB4(id a1)
{
  v1 = [NSSet alloc];
  v2 = [v1 initWithObjects:{SAAddResultObjectsClassIdentifier, SAUIAppPunchOutClassIdentifier, SACFFlowCommandClassIdentifier, SADomainObjectCommitClassIdentifier, SAIntentGroupHandleIntentClassIdentifier, SARequestCompletedClassIdentifier, SAExecuteCallbacksClassIdentifier, 0}];
  v3 = qword_100590100;
  qword_100590100 = v2;

  v4 = [NSSet alloc];
  qword_100590108 = [v4 initWithObjects:{SAClientSetupInfoClassIdentifier, SASyncGetAnchorsResponseClassIdentifier, SAGuidanceGuideUpdateClassIdentifier, SAUIGetResponseAlternativesPlaybackClassIdentifier, SASyncChunkAcceptedClassIdentifier, 0}];

  _objc_release_x1();
}

void sub_1000F72D0(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resultObjectsTimerFired:*(a1 + 32)];
}

void *sub_1000F7EB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  v4 = [*(a1 + 32) _languageCode];
  v5 = AFSiriLogContextSession;
  if (os_log_type_enabled(AFSiriLogContextSession, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 80);
    v8 = 136315394;
    v9 = "[ADSessionManager _languageCodeDidChange:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s language code changed to %@", &v8, 0x16u);
  }

  result = *(a1 + 32);
  if (result[11])
  {
    return [result _resetSessionsAndMakeQuiet:1];
  }

  return result;
}

void sub_1000F80A4(uint64_t a1)
{
  v2 = +[AFPreferences sharedPreferences];
  obj = [v2 _ad_connectionModeFromEnabledState];

  v3 = *(a1 + 32);
  if (*(v3 + 72))
  {
    if ([obj isEqualToString:?])
    {
      goto LABEL_7;
    }

    v3 = *(a1 + 32);
  }

  objc_storeStrong((v3 + 72), obj);
  v4 = *(a1 + 32);
  if (*(v4 + 72) && [*(v4 + 88) count])
  {
    [*(a1 + 32) _resetSessionsAndMakeQuiet:0];
  }

LABEL_7:
}

id sub_1000F8364(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  *(*(a1 + 32) + 48) = 2;
  v6 = *(a1 + 32);

  return [v6 _updateSharedUserIdentifiers];
}

id sub_1000F9D38(id a1)
{
  if (a1)
  {
    v1 = a1;
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    AddressString = BTDeviceGetAddressString();
    if (AddressString)
    {
      v3 = AddressString;
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315650;
        v7 = "_ADBTDeviceGetAddress";
        v8 = 2048;
        v9 = v1;
        v10 = 1024;
        v11 = v3;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed getting address from BTDevice %p (result = %d).", &v6, 0x1Cu);
      }

      a1 = 0;
    }

    else
    {
      a1 = [[NSString alloc] initWithUTF8String:v12];
    }
  }

  return a1;
}

void sub_1000F9E74(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADMobileBluetoothDeviceDataSource _fetchPairedDeviceAddresses]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s     [%02tu] %@", &v7, 0x20u);
  }
}

void sub_1000FA4EC(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADMobileBluetoothDeviceDataSource _fetchConnectedDeviceAddresses]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s     [%02tu] %@", &v7, 0x20u);
  }
}

void sub_1000FA998(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothDeviceDidInvalidate:*(a1 + 32)];
  }
}

void sub_1000FACEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    *buf = 136315906;
    v14 = "[ADMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]_block_invoke";
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Got BTDevice %p and BTAccessoryManager %p for %@.", buf, 0x2Au);
  }

  v8 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FAFA4;
  block[3] = &unk_100511880;
  v10 = *(a1 + 40);
  v11 = a2;
  v12 = a3;
  dispatch_async(v8, block);
}

void sub_1000FAE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    *buf = 136315906;
    v14 = "[ADMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]_block_invoke_2";
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Got BTDevice %p and BTAccessoryManager %p for %@.", buf, 0x2Au);
  }

  v8 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FAF8C;
  block[3] = &unk_100511880;
  v10 = *(a1 + 40);
  v11 = a2;
  v12 = a3;
  dispatch_async(v8, block);
}

void sub_1000FB100(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !a3)
  {
    v7 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *v19 = 136315138;
    *&v19[4] = "_ADBTDeviceSetHeadphoneListeningMode";
    v8 = "%s Unable to set bluetooth device listening mode, found NULL handles";
    goto LABEL_8;
  }

  v6 = a1[6];
  if (v6 <= 1)
  {
    v7 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *v19 = 136315138;
    *&v19[4] = "_ADBTDeviceSetHeadphoneListeningMode";
    v8 = "%s Unable to set bluetooth device listening mode to undefined mode";
LABEL_8:
    v9 = v7;
    v10 = 12;
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, v19, v10);
    goto LABEL_12;
  }

  v11 = BTAccessoryManagerSendControlCommand();
  v12 = AFSiriLogContextDaemon;
  if (!v11)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v19 = 136315394;
      *&v19[4] = "_ADBTDeviceSetHeadphoneListeningMode";
      *&v19[12] = 2048;
      *&v19[14] = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Changed headphone listening mode to %ld.", v19, 0x16u);
      v12 = AFSiriLogContextDaemon;
    }

    goto LABEL_17;
  }

  v13 = v11;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *v19 = 136315906;
    *&v19[4] = "_ADBTDeviceSetHeadphoneListeningMode";
    *&v19[12] = 2048;
    *&v19[14] = a2;
    *&v19[22] = 2048;
    v20 = a3;
    LOWORD(v21) = 1024;
    *(&v21 + 2) = v13;
    v8 = "%s Unable to set listening mode for BTDevice %p via BTAccessoryManager %p (result = %d)";
    v9 = v12;
    v10 = 38;
    goto LABEL_9;
  }

LABEL_12:
  v14 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1801 userInfo:0, *v19, *&v19[16], v20, v21];
  v12 = AFSiriLogContextDaemon;
  if (v14)
  {
    v15 = v14;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315650;
      *&v19[4] = "[ADMobileBluetoothDeviceProxy _changeHeadphoneListeningMode:completion:]_block_invoke";
      *&v19[12] = 2048;
      *&v19[14] = a2;
      *&v19[22] = 2048;
      v20 = a3;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Unable to set listening mode for BTDevice %p via BTAccessoryManager %p", v19, 0x20u);
    }

    goto LABEL_20;
  }

LABEL_17:
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v16 = a1[6];
    v17 = a1[4];
    *v19 = 136315650;
    *&v19[4] = "[ADMobileBluetoothDeviceProxy _changeHeadphoneListeningMode:completion:]_block_invoke";
    *&v19[12] = 2048;
    *&v19[14] = v16;
    *&v19[22] = 2112;
    v20 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Changed headphone listening mode to %ld for %@.", v19, 0x20u);
  }

  v15 = 0;
LABEL_20:
  v18 = a1[5];
  if (v18)
  {
    (*(v18 + 16))(v18, v15);
  }
}

uint64_t sub_1000FB56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000FB660(a2, a3);
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 136315650;
    v9 = "[ADMobileBluetoothDeviceProxy _fetchHeadphoneListeningModeWithCompletion:]_block_invoke";
    v10 = 2048;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Fetched headphone listening mode %ld for %@.", &v8, 0x20u);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000FB660(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "_ADBTDeviceGetHeadphoneListeningMode";
      v7 = "%s Unable to get bluetooth device listening mode, found NULL handles";
      v8 = v10;
      v9 = 12;
      goto LABEL_12;
    }

    return 0;
  }

  ControlCommand = BTAccessoryManagerGetControlCommand();
  if (ControlCommand)
  {
    v5 = ControlCommand;
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v15 = "_ADBTDeviceGetHeadphoneListeningMode";
      v16 = 2048;
      v17 = a1;
      v18 = 2048;
      v19 = a2;
      v20 = 1024;
      v21 = v5;
      v7 = "%s Unable to determine listening mode for BTDevice %p via BTAccessoryManager %p (result = %d)";
      v8 = v6;
      v9 = 38;
LABEL_12:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
      return 0;
    }

    return 0;
  }

  v11 = 1;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "_ADBTDeviceGetHeadphoneListeningMode";
    v16 = 2048;
    v17 = a1;
    v18 = 2048;
    v19 = 1;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Listening mode for BTDevice %p is %ld", buf, 0x20u);
  }

  return v11;
}

void sub_1000FB978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000FBA70(a2, a3);
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[ADMobileBluetoothDeviceProxy _fetchHeadphoneInEarDetectionStateWithCompletion:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Fetched headphone in-ear detection state %@ for %@.", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

id sub_1000FBA70(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 && a2)
  {
    v15 = 3;
    v16 = 0;
    v13 = 3;
    v14 = 3;
    v4 = BTAccessoryManagerGetInEarDetectionEnable();
    if (v4)
    {
      v5 = v4;
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "_ADBTDeviceGetHeadphoneInEarDetectionState";
        v19 = 1024;
        v20 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed getting in-ear detection enable flag %d", buf, 0x12u);
      }

      v3 = 0;
    }

    else
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000FBCDC;
      v8[3] = &unk_1005119E0;
      v9 = v16;
      v10 = 3;
      v11 = 3;
      v12 = 3;
      v3 = [AFBluetoothHeadphoneInEarDetectionState newWithBuilder:v8];
    }
  }

  return v3;
}

void sub_1000FBCDC(_DWORD *a1, void *a2)
{
  v9 = a2;
  [v9 setIsEnabled:a1[8] == -1];
  if (a1[8] == -1)
  {
    v3 = a1[9];
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2 * (v3 == 2);
    }

    [v9 setPrimaryEarbudSide:v4];
    v5 = a1[10];
    if (v5 >= 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = 3 - v5;
    }

    [v9 setPrimaryInEarStatus:v6];
    v7 = a1[11];
    if (v7 >= 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = 3 - v7;
    }

    [v9 setSecondaryInEarStatus:v8];
  }
}

void sub_1000FBEC4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = &qword_1003F0000;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_48;
  }

  v49 = sub_1000F9D38(a2);
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  memset(buf, 0, sizeof(buf));
  Name = BTDeviceGetName();
  if (Name)
  {
    v8 = Name;
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *v60 = 136315650;
      v61 = "_ADBTDeviceGetName";
      v62 = 2048;
      v63 = a2;
      v64 = 1024;
      v65 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Failed getting name from BTDevice %p (result = %d).", v60, 0x1Cu);
    }

    v48 = 0;
  }

  else
  {
    v48 = [[NSString alloc] initWithUTF8String:buf];
  }

  *v60 = 0;
  v59 = 0;
  v58 = 0;
  DeviceId = BTDeviceGetDeviceId();
  v12 = DeviceId != 0;
  if (DeviceId)
  {
    v13 = DeviceId;
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_ADBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 1024;
      *&buf[24] = v13;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Failed getting vendor id and product id from BTDevice %p (result = %d).", buf, 0x1Cu);
    }
  }

  v57 = 0;
  IsAppleAudioDevice = BTDeviceIsAppleAudioDevice();
  if (IsAppleAudioDevice)
  {
    v16 = IsAppleAudioDevice;
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_ADBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 1024;
      *&buf[24] = v16;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Failed getting vendor id and product id from BTDevice %p (result = %d).", buf, 0x1Cu);
    }

    v12 = 1;
  }

  v56 = 0;
  v55 = 0;
  AACPCapabilityInteger = BTAccessoryManagerGetAACPCapabilityInteger();
  v19 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "_ADBTDeviceGetDeviceInfo";
    *&buf[12] = 1024;
    *&buf[14] = AACPCapabilityInteger == 0;
    *&buf[18] = 1024;
    *&buf[20] = 96;
    *&buf[24] = 1024;
    *&buf[26] = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s GetJustSiriAACPCapability result: %d, AACP capability bit: %d,  AACP capability supported: %d", buf, 0x1Eu);
  }

  if (a3)
  {
    FeatureCapability = BTAccessoryManagerGetFeatureCapability();
    if (FeatureCapability)
    {
      v21 = FeatureCapability;
      v22 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "_ADBTDeviceGetDeviceInfo";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2048;
        *&buf[24] = a3;
        LOWORD(v67) = 1024;
        *(&v67 + 2) = v21;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Failed getting InEar capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
      }

      v12 = 1;
    }

    v23 = BTAccessoryManagerGetFeatureCapability();
    if (v23)
    {
      v24 = v23;
      v25 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "_ADBTDeviceGetDeviceInfo";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2048;
        *&buf[24] = a3;
        LOWORD(v67) = 1024;
        *(&v67 + 2) = v24;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Failed getting DoAP capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
      }

      v12 = 1;
    }
  }

  v55 = 0;
  v26 = BTAccessoryManagerGetFeatureCapability();
  if (v26)
  {
    v27 = v26;
    v28 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_ADBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      LOWORD(v67) = 1024;
      *(&v67 + 2) = v27;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Failed getting ANC capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    v12 = 1;
  }

  v54 = 0;
  v29 = BTAccessoryManagerGetFeatureCapability();
  if (v29)
  {
    v30 = v29;
    v31 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_ADBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      LOWORD(v67) = 1024;
      *(&v67 + 2) = v30;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s Failed getting Transparency capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    v12 = 1;
  }

  v32 = [NSString stringWithFormat:@"%u, %u", HIDWORD(v59), v59];
  v33 = AFIsH2Headset();

  v53 = 0;
  v34 = BTAccessoryManagerGetFeatureCapability();
  if (v34)
  {
    v35 = v34;
    v36 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_ADBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      LOWORD(v67) = 1024;
      *(&v67 + 2) = v35;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s Failed getting Software Volume capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    v12 = 1;
  }

  v52 = 0;
  AnnounceMessagesSupport = BTAccessoryManagerGetAnnounceMessagesSupport();
  if (AnnounceMessagesSupport)
  {
    v38 = AnnounceMessagesSupport;
    v39 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_ADBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      LOWORD(v67) = 1024;
      *(&v67 + 2) = v38;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s Failed getting Announce Messages capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    v51 = 0;
    AnnounceCallsSupport = BTAccessoryManagerGetAnnounceCallsSupport();
    if (!AnnounceCallsSupport)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v51 = 0;
  AnnounceCallsSupport = BTAccessoryManagerGetAnnounceCallsSupport();
  if (AnnounceCallsSupport)
  {
LABEL_44:
    v41 = AnnounceCallsSupport;
    v42 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_ADBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      LOWORD(v67) = 1024;
      *(&v67 + 2) = v41;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%s Failed getting Announce Calls capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    goto LABEL_46;
  }

  if (!v12)
  {
    *buf = _NSConcreteStackBlock;
    v4 = &qword_1003F0000;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000FC82C;
    *&buf[24] = &unk_1005119C0;
    v43 = v49;
    *&v67 = v49;
    v44 = v48;
    *(&v67 + 1) = v48;
    *&v68 = __PAIR64__(v59, HIDWORD(v59));
    *(&v68 + 1) = __PAIR64__(HIDWORD(v56), v57);
    *&v69 = __PAIR64__(v52, v56);
    BYTE8(v70) = 0;
    *(&v69 + 1) = __PAIR64__(v54, v55);
    LODWORD(v70) = 0;
    DWORD1(v70) = v51;
    BYTE9(v70) = v33;
    v10 = [AFBluetoothDeviceInfo newWithBuilder:buf];

    goto LABEL_47;
  }

LABEL_46:
  v10 = 0;
  v4 = &qword_1003F0000;
  v44 = v48;
  v43 = v49;
LABEL_47:

LABEL_48:
  v50[0] = _NSConcreteStackBlock;
  v50[1] = v4[1];
  v50[2] = sub_1000FC964;
  v50[3] = &unk_100511830;
  v50[4] = *(a1 + 32);
  v45 = [v10 mutatedCopyWithMutator:v50];

  v46 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v47 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "[ADMobileBluetoothDeviceProxy _fetchDeviceInfoWithCompletion:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v45;
    *&buf[22] = 2112;
    *&buf[24] = v47;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s Fetched device info %@ for %@.", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000FC82C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAddress:v3];
  [v4 setName:*(a1 + 40)];
  [v4 setVendorID:*(a1 + 48)];
  [v4 setProductID:*(a1 + 52)];
  [v4 setIsAdvancedAppleAudioDevice:*(a1 + 56) == -1];
  [v4 setSupportsInEarDetection:*(a1 + 60) == -1];
  [v4 setSupportsVoiceTrigger:*(a1 + 64) == -1];
  [v4 setSupportsSpokenNotification:*(a1 + 68) == -1];
  [v4 setSupportsJustSiri:*(a1 + 88)];
  [v4 setSupportsListeningModeANC:*(a1 + 72) == -1];
  [v4 setSupportsListeningModeTransparency:*(a1 + 76) == -1];
  [v4 setSupportsListeningModeAutomatic:*(a1 + 80) == -1];
  [v4 setSupportsAnnounceCall:*(a1 + 84) == -1];
  [v4 setSupportsConversationAwareness:*(a1 + 89)];
  [v4 setSupportsPersonalVolume:*(a1 + 89)];
}

void sub_1000FCB0C(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothDevice:a1[4] headphoneListeningModeDidChangeFrom:a1[5] to:a1[6]];
  }
}

void sub_1000FCD6C(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothDevice:a1[4] headphoneInEarDetectionStateDidChangeFrom:a1[5] to:a1[6]];
  }
}

void sub_1000FCFCC(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothDevice:a1[4] deviceInfoDidChangeFrom:a1[5] to:a1[6]];
  }
}

void sub_1000FD0C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000FD158;
  v2[3] = &unk_1005116C0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _getDeviceInfo:v2];
}

void sub_1000FD158(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 supportsPersonalVolume])
  {
    v4 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000FD2EC;
    v9[3] = &unk_1005117C8;
    v9[4] = v4;
    v10 = *(a1 + 40);
    [v4 _accessBTDeviceAndAccessoryManagerUsingBlock:v9];
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      *buf = 136315394;
      v12 = "[ADMobileBluetoothDeviceProxy _getPersonalVolume:]_block_invoke";
      v13 = 1024;
      v14 = [v3 productID];
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Bluetooth device '%d' does not support personal volume, ignoring request to set.", buf, 0x12u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_100511808];
      (*(v6 + 16))(v6, v7);
    }
  }
}

void sub_1000FD2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    ControlCommand = BTAccessoryManagerGetControlCommand();
    if (ControlCommand)
    {
      v7 = ControlCommand;
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v19 = "_ADBTDeviceGetPersonalVolume";
        v20 = 2048;
        *v21 = a2;
        *&v21[8] = 2048;
        *&v21[10] = a3;
        v22 = 1024;
        v23 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Unable to get personal volume mode for BTDevice %p via BTAccessoryManager %p (result = %d)", buf, 0x26u);
      }

      v9 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_100511A00];
    }

    else
    {
      v9 = sub_1000FD658(0);
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v19 = "_ADBTDeviceGetPersonalVolume";
        v20 = 1024;
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Adaptive volume mode is %d.", buf, 0x12u);
      }
    }

    v11 = v9;
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "_ADBTDeviceGetPersonalVolume";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unable to get bluetooth device personal volume mode, found NULL handles", buf, 0xCu);
    }

    v11 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_100511A00];
  }

  v13 = v11;

  v14 = [v13 status];
  v15 = AFSiriLogContextDaemon;
  if (v14 == 1)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      *buf = 136315650;
      v19 = "[ADMobileBluetoothDeviceProxy _getPersonalVolume:]_block_invoke";
      v20 = 1024;
      *v21 = 0;
      *&v21[4] = 2112;
      *&v21[6] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Got personal volume mode is %d for %@.", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v19 = "[ADMobileBluetoothDeviceProxy _getPersonalVolume:]_block_invoke_3";
    v20 = 2048;
    *v21 = a2;
    *&v21[8] = 2048;
    *&v21[10] = a3;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Unable to get personal volume mode for BTDevice %p via BTAccessoryManager %p", buf, 0x20u);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v13);
  }
}

void sub_1000FD60C(id a1, AFBluetoothDeviceBooleanSettingResponseMutating *a2)
{
  v2 = a2;
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setValue:0];
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setStatus:3];
}

id sub_1000FD658(int a1)
{
  if (a1)
  {
    if (a1 == 2)
    {
      *v6 = _NSConcreteStackBlock;
      *&v6[8] = 3221225472;
      *&v6[16] = sub_1000FD880;
      v7 = &unk_100511A20;
      LOBYTE(v8) = 0;
      goto LABEL_6;
    }

    if (a1 == 1)
    {
      *v6 = _NSConcreteStackBlock;
      *&v6[8] = 3221225472;
      *&v6[16] = sub_1000FD880;
      v7 = &unk_100511A20;
      LOBYTE(v8) = 1;
LABEL_6:
      v2 = v6;
      goto LABEL_10;
    }

    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *v6 = 136315394;
      *&v6[4] = "_BTAccessoryGenericConfigModeToAFBluetoothDeviceBooleanSettingResponse";
      *&v6[12] = 1024;
      *&v6[14] = a1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Bluetooth device returned unexpected mode %d", v6, 0x12u);
    }
  }

  v2 = &stru_100511A00;
LABEL_10:
  v4 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:v2, *v6, *&v6[8], *&v6[16], v7, v8];

  return v4;
}

id sub_1000FD7F8(char a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FD880;
  v3[3] = &unk_100511A20;
  v4 = a1;
  v1 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:v3];

  return v1;
}

void sub_1000FD880(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = a2;
  [v3 setValue:v2];
  [v3 setStatus:1];
}

void sub_1000FD8E4(id a1, AFBluetoothDeviceBooleanSettingResponseMutating *a2)
{
  v2 = a2;
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setValue:0];
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setStatus:2];
}

void sub_1000FD9C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000FDA58;
  v2[3] = &unk_1005116C0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _getDeviceInfo:v2];
}

void sub_1000FDA58(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 supportsConversationAwareness])
  {
    v4 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000FDBEC;
    v9[3] = &unk_1005117C8;
    v9[4] = v4;
    v10 = *(a1 + 40);
    [v4 _accessBTDeviceAndAccessoryManagerUsingBlock:v9];
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      *buf = 136315394;
      v12 = "[ADMobileBluetoothDeviceProxy _getConversationAwareness:]_block_invoke";
      v13 = 1024;
      v14 = [v3 productID];
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Bluetooth device '%d' does not support conversation awareness, ignoring request to get mode.", buf, 0x12u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_1005117E8];
      (*(v6 + 16))(v6, v7);
    }
  }
}

void sub_1000FDBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    ControlCommand = BTAccessoryManagerGetControlCommand();
    if (ControlCommand)
    {
      v7 = ControlCommand;
      v8 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v19 = "_ADBTDeviceGetConversationAwareness";
        v20 = 2048;
        *v21 = a2;
        *&v21[8] = 2048;
        *&v21[10] = a3;
        v22 = 1024;
        v23 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Unable to get conversation awareness mode for BTDevice %p via BTAccessoryManager %p (result = %d)", buf, 0x26u);
      }

      v9 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_100511A00];
    }

    else
    {
      v9 = sub_1000FD658(0);
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v19 = "_ADBTDeviceGetConversationAwareness";
        v20 = 1024;
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Conversation awareness mode is %d.", buf, 0x12u);
      }
    }

    v11 = v9;
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "_ADBTDeviceGetConversationAwareness";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Unable to set bluetooth device conversation awareness mode, found NULL handles", buf, 0xCu);
    }

    v11 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_100511A00];
  }

  v13 = v11;

  v14 = [v13 status];
  v15 = AFSiriLogContextDaemon;
  if (v14 == 1)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      *buf = 136315650;
      v19 = "[ADMobileBluetoothDeviceProxy _getConversationAwareness:]_block_invoke";
      v20 = 1024;
      *v21 = 0;
      *&v21[4] = 2112;
      *&v21[6] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Got conversation awareness mode is %d for %@.", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v19 = "[ADMobileBluetoothDeviceProxy _getConversationAwareness:]_block_invoke_3";
    v20 = 2048;
    *v21 = a2;
    *&v21[8] = 2048;
    *&v21[10] = a3;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Unable to get conversation awareness mode for BTDevice %p via BTAccessoryManager %p", buf, 0x20u);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v13);
  }
}

void sub_1000FDF0C(id a1, AFBluetoothDeviceBooleanSettingResponseMutating *a2)
{
  v2 = a2;
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setValue:0];
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setStatus:3];
}

void sub_1000FE000(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000FE098;
  v2[3] = &unk_100511780;
  v2[4] = v1;
  v4 = *(a1 + 48);
  v3 = *(a1 + 40);
  [v1 _getDeviceInfo:v2];
}

void sub_1000FE098(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 supportsPersonalVolume])
  {
    v4 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000FE234;
    v9[3] = &unk_100511738;
    v11 = *(a1 + 48);
    v9[4] = v4;
    v10 = *(a1 + 40);
    [v4 _accessBTDeviceAndAccessoryManagerUsingBlock:v9];
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      *buf = 136315394;
      v13 = "[ADMobileBluetoothDeviceProxy _setPersonalVolume:completion:]_block_invoke";
      v14 = 1024;
      v15 = [v3 productID];
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Bluetooth device '%d' does not support personal volume, ignoring request to set.", buf, 0x12u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_1005117A0];
      (*(v6 + 16))(v6, v7);
    }
  }
}

void sub_1000FE234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !a3)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *v21 = 136315138;
      *&v21[4] = "_ADBTDeviceSetPersonalVolume";
      v10 = "%s Unable to set bluetooth device listening mode, found NULL handles";
      v11 = v13;
      v12 = 12;
      goto LABEL_19;
    }

LABEL_7:
    v14 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_100511A00, *v21, *&v21[16], v22, v23];
    goto LABEL_8;
  }

  v6 = *(a1 + 48);
  v7 = BTAccessoryManagerSendControlCommand();
  if (v7)
  {
    v8 = v7;
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *v21 = 136315906;
      *&v21[4] = "_ADBTDeviceSetPersonalVolume";
      *&v21[12] = 2048;
      *&v21[14] = a2;
      *&v21[22] = 2048;
      v22 = a3;
      LOWORD(v23) = 1024;
      *(&v23 + 2) = v8;
      v10 = "%s Unable to set personal volume mode for BTDevice %p via BTAccessoryManager %p (result = %d)";
      v11 = v9;
      v12 = 38;
LABEL_19:
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, v21, v12);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v14 = sub_1000FD7F8(v6);
  v20 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *v21 = 136315394;
    *&v21[4] = "_ADBTDeviceSetPersonalVolume";
    *&v21[12] = 1024;
    *&v21[14] = v6;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Changed personal volume mode to %d.", v21, 0x12u);
  }

LABEL_8:
  v15 = [v14 status];
  v16 = AFSiriLogContextDaemon;
  if (v15 == 1)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 48);
      v18 = *(a1 + 32);
      *v21 = 136315650;
      *&v21[4] = "[ADMobileBluetoothDeviceProxy _setPersonalVolume:completion:]_block_invoke";
      *&v21[12] = 2048;
      *&v21[14] = v17;
      *&v21[22] = 2112;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Changed headphone personal volume mode to %ld for %@.", v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *v21 = 136315650;
    *&v21[4] = "[ADMobileBluetoothDeviceProxy _setPersonalVolume:completion:]_block_invoke_3";
    *&v21[12] = 2048;
    *&v21[14] = a2;
    *&v21[22] = 2048;
    v22 = a3;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Unable to set personal volume mode for BTDevice %p via BTAccessoryManager %p", v21, 0x20u);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, v14);
  }
}

void sub_1000FE530(id a1, AFBluetoothDeviceBooleanSettingResponseMutating *a2)
{
  v2 = a2;
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setValue:0];
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setStatus:3];
}

void sub_1000FE624(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000FE6BC;
  v2[3] = &unk_100511780;
  v2[4] = v1;
  v4 = *(a1 + 48);
  v3 = *(a1 + 40);
  [v1 _getDeviceInfo:v2];
}

void sub_1000FE6BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 supportsConversationAwareness])
  {
    v4 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000FE858;
    v9[3] = &unk_100511738;
    v11 = *(a1 + 48);
    v9[4] = v4;
    v10 = *(a1 + 40);
    [v4 _accessBTDeviceAndAccessoryManagerUsingBlock:v9];
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      *buf = 136315394;
      v13 = "[ADMobileBluetoothDeviceProxy _setConversationAwareness:completion:]_block_invoke";
      v14 = 1024;
      v15 = [v3 productID];
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Bluetooth device '%d' does not support conversation awareness, ignoring request to set.", buf, 0x12u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_100511758];
      (*(v6 + 16))(v6, v7);
    }
  }
}

void sub_1000FE858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !a3)
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *v21 = 136315138;
      *&v21[4] = "_ADBTDeviceSetConversationAwareness";
      v10 = "%s Unable to set bluetooth device listening mode, found NULL handles";
      v11 = v13;
      v12 = 12;
      goto LABEL_19;
    }

LABEL_7:
    v14 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_100511A00, *v21, *&v21[16], v22, v23];
    goto LABEL_8;
  }

  v6 = *(a1 + 48);
  v7 = BTAccessoryManagerSendControlCommand();
  if (v7)
  {
    v8 = v7;
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *v21 = 136315906;
      *&v21[4] = "_ADBTDeviceSetConversationAwareness";
      *&v21[12] = 2048;
      *&v21[14] = a2;
      *&v21[22] = 2048;
      v22 = a3;
      LOWORD(v23) = 1024;
      *(&v23 + 2) = v8;
      v10 = "%s Unable to set conversation awareness mode for BTDevice %p via BTAccessoryManager %p (result = %d)";
      v11 = v9;
      v12 = 38;
LABEL_19:
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, v21, v12);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v14 = sub_1000FD7F8(v6);
  v20 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *v21 = 136315394;
    *&v21[4] = "_ADBTDeviceSetConversationAwareness";
    *&v21[12] = 1024;
    *&v21[14] = v6;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Changed conversation awareness mode to %d.", v21, 0x12u);
  }

LABEL_8:
  v15 = [v14 status];
  v16 = AFSiriLogContextDaemon;
  if (v15 == 1)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 48);
      v18 = *(a1 + 32);
      *v21 = 136315650;
      *&v21[4] = "[ADMobileBluetoothDeviceProxy _setConversationAwareness:completion:]_block_invoke";
      *&v21[12] = 2048;
      *&v21[14] = v17;
      *&v21[22] = 2112;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Changed headphone conversation awareness mode to %ld for %@.", v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *v21 = 136315650;
    *&v21[4] = "[ADMobileBluetoothDeviceProxy _setConversationAwareness:completion:]_block_invoke_3";
    *&v21[12] = 2048;
    *&v21[14] = a2;
    *&v21[22] = 2048;
    v22 = a3;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Unable to set conversation awareness mode for BTDevice %p via BTAccessoryManager %p", v21, 0x20u);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, v14);
  }
}

void sub_1000FEB54(id a1, AFBluetoothDeviceBooleanSettingResponseMutating *a2)
{
  v2 = a2;
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setValue:0];
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setStatus:3];
}

void sub_1000FEC48(void *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FECDC;
  v3[3] = &unk_100511710;
  v1 = a1[6];
  v2 = a1[5];
  v4 = a1[4];
  v6 = v1;
  v5 = v2;
  [v4 _getDeviceInfo:v3];
}

void sub_1000FECDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 supportsListeningModeANC] & 1) != 0 || (objc_msgSend(v3, "supportsListeningModeTransparency") & 1) != 0 || objc_msgSend(v3, "supportsListeningModeAutomatic"))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000FEE90;
    v10[3] = &unk_1005116E8;
    v10[4] = v4;
    v12 = v5;
    v11 = *(a1 + 40);
    [v4 _changeHeadphoneListeningMode:v5 completion:v10];
  }

  else
  {
    v6 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1802 userInfo:0];
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      *buf = 136315394;
      v14 = "[ADMobileBluetoothDeviceProxy _setHeadphoneListeningMode:completion:]_block_invoke_2";
      v15 = 2048;
      v16 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Unable to set headphoneListeningMode to %ld, device does not support this mode", buf, 0x16u);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v6);
    }
  }
}

void sub_1000FEE90(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _updateHeadphoneListeningMode:*(a1 + 48)];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void sub_1000FEFA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[6])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000FF064;
    v3[3] = &unk_1005116C0;
    v3[4] = v1;
    v4 = *(a1 + 40);
    [v1 _getDeviceInfo:v3];
  }
}

void sub_1000FF064(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 supportsListeningModeANC] & 1) != 0 || (objc_msgSend(v3, "supportsListeningModeTransparency") & 1) != 0 || objc_msgSend(v3, "supportsListeningModeAutomatic"))
  {
    v4 = *(a1 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000FF144;
    v5[3] = &unk_100519BD8;
    v5[4] = v4;
    v6 = *(a1 + 40);
    [v4 _fetchHeadphoneListeningModeWithCompletion:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_1000FF144(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _updateHeadphoneListeningMode:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000FF23C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[5])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000FF300;
    v3[3] = &unk_1005116C0;
    v3[4] = v1;
    v4 = *(a1 + 40);
    [v1 _getDeviceInfo:v3];
  }
}

void sub_1000FF300(uint64_t a1, void *a2)
{
  if ([a2 supportsInEarDetection])
  {
    v3 = *(a1 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000FF3D0;
    v5[3] = &unk_10051D0D8;
    v5[4] = v3;
    v6 = *(a1 + 40);
    [v3 _fetchHeadphoneInEarDetectionStateWithCompletion:v5];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void sub_1000FF3D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _updateHeadphoneInEarDetectionState:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000FF4F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _updateDeviceInfo:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000FF804(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _updateDeviceInfo:v3];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADMobileBluetoothDeviceProxy _reload:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Reloaded device info %@ for %@.", &v6, 0x20u);
  }
}

void sub_1000FF8E8(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _updateHeadphoneInEarDetectionState:v3];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADMobileBluetoothDeviceProxy _reload:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Reloaded headphone in-ear detection state %@ for %@.", &v6, 0x20u);
  }
}

void sub_1000FF9CC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _updateHeadphoneListeningMode:a2];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADMobileBluetoothDeviceProxy _reload:]_block_invoke";
    v8 = 2048;
    v9 = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Reloaded headphone listening mode %ld for %@.", &v6, 0x20u);
  }
}

id sub_1000FFC84(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void sub_1000FFD84(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[ADMobileBluetoothDeviceProxy getHeadGestures:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Head gestures not supported for %@...", &v6, 0x16u);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_100511670];
    (*(v3 + 16))(v3, v4);
  }
}

void sub_1000FFE7C(id a1, AFBluetoothDeviceBooleanSettingResponseMutating *a2)
{
  v2 = a2;
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setValue:0];
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setStatus:3];
}

void sub_1001000A8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[ADMobileBluetoothDeviceProxy setHeadGestures:completion:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Head gestures not supported for %@...", &v6, 0x16u);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [AFBluetoothDeviceBooleanSettingResponse newWithBuilder:&stru_100511650];
    (*(v3 + 16))(v3, v4);
  }
}

void sub_1001001A0(id a1, AFBluetoothDeviceBooleanSettingResponseMutating *a2)
{
  v2 = a2;
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setValue:0];
  [(AFBluetoothDeviceBooleanSettingResponseMutating *)v2 setStatus:3];
}

uint64_t sub_100100828(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100100840(void *a1)
{
  v2 = *(a1[4] + 32);
  if (v2)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v2);
  }

  else
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[ADMobileBluetoothDeviceProxy deviceInfo]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Using slow path...", buf, 0xCu);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v5 = dispatch_semaphore_create(0);
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = a1[4];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100100994;
    v9[3] = &unk_100511630;
    v11 = Current;
    v10 = *(a1 + 5);
    [v8 _getDeviceInfo:v9];
  }
}

void sub_100100994(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    v10 = 136315394;
    v11 = "[ADMobileBluetoothDeviceProxy deviceInfo]_block_invoke";
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Slow path took %f seconds.", &v10, 0x16u);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void sub_100100F6C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v8 = "[ADMobileBluetoothDeviceProxy initWithDeviceUID:dataSource:queue:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Loading device info for %@...", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100101088;
  v5[3] = &unk_100511608;
  v6 = v4;
  [v6 _fetchDeviceInfoWithCompletion:v5];
}

void sub_100101088(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _updateDeviceInfo:v3];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADMobileBluetoothDeviceProxy initWithDeviceUID:dataSource:queue:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Loaded device info %@ for %@.", &v6, 0x20u);
  }
}

void sub_100101318(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v8 = "[ADMobileBluetoothDeviceProxy initWithAddress:dataSource:queue:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Loading device info for %@...", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100101434;
  v5[3] = &unk_100511608;
  v6 = v4;
  [v6 _fetchDeviceInfoWithCompletion:v5];
}

void sub_100101434(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _updateDeviceInfo:v3];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADMobileBluetoothDeviceProxy initWithAddress:dataSource:queue:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Loaded device info %@ for %@.", &v6, 0x20u);
  }
}

void sub_100101B2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothWirelessSplitterSessionDidInvalidate:*(a1 + 32)];
  }
}

void sub_100101DB4(uint64_t a1, uint64_t a2)
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 136315650;
    v11 = "[ADMobileBluetoothWirelessSplitterSessionProxy _accessBTLocalDeviceUsingBlock:]_block_invoke";
    v12 = 2048;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Got BTLocalDevice %p for %@.", buf, 0x20u);
  }

  v6 = *(*(a1 + 32) + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100101EF4;
  v7[3] = &unk_100511948;
  v8 = *(a1 + 40);
  v9 = a2;
  dispatch_async(v6, v7);
}

void sub_10010203C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    IsSharingEnabled = BTLocalDeviceIsSharingEnabled();
    if (IsSharingEnabled)
    {
      v5 = IsSharingEnabled;
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "_ADBTLocalDeviceGetWirelessSplitterSessionInfo";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed getting sharing enable flag %d", buf, 0x12u);
      }

      v2 = 0;
    }

    else
    {
      buf[0] = _NSConcreteStackBlock;
      buf[1] = 3221225472;
      buf[2] = sub_1001023FC;
      v11 = &unk_100511A48;
      v13 = 0;
      v12 = 0;
      v7 = 0;
      v2 = [AFBluetoothWirelessSplitterSessionInfo newWithBuilder:buf];
    }
  }

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    LODWORD(buf[0]) = 136315650;
    *(buf + 4) = "[ADMobileBluetoothWirelessSplitterSessionProxy _fetchWirelessSplitterSessionInfoWithCompletion:]_block_invoke";
    WORD2(buf[1]) = 2112;
    *(&buf[1] + 6) = v2;
    HIWORD(buf[2]) = 2112;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Fetched Wireless Splitter session info %@ for %@.", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001023FC(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = a2;
  [v4 setState:v3];
  [v4 setDeviceAddresses:*(a1 + 32)];
}

void sub_100102660(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothWirelessSplitterSession:a1[4] sessionInfoDidChangeFrom:a1[5] to:a1[6]];
  }
}

void sub_10010277C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _updateWirelessSplitterSessionInfo:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_100102900(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _updateWirelessSplitterSessionInfo:v3];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADMobileBluetoothWirelessSplitterSessionProxy _reload:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Reloaded Wireless Splitter session info %@ for %@.", &v6, 0x20u);
  }
}

id sub_100102BBC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void *sub_100102E60(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[5])
  {
    return [result _reload:1];
  }

  return result;
}

void sub_10010314C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v8 = "[ADMobileBluetoothWirelessSplitterSessionProxy initWithDataSource:queue:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Loading Wireless Splitter session info for %@...", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100103268;
  v5[3] = &unk_1005118A8;
  v6 = v4;
  [v6 _fetchWirelessSplitterSessionInfoWithCompletion:v5];
}

void sub_100103268(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _updateWirelessSplitterSessionInfo:v3];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[ADMobileBluetoothWirelessSplitterSessionProxy initWithDataSource:queue:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Loaded Wireless Splitter session info %@ for %@.", &v6, 0x20u);
  }
}

void sub_1001034C8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADMobileBluetoothDeviceDataSource getPairedDevicesWithCompletion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 48);
  v6 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001035F0;
  v7[3] = &unk_10051E038;
  v7[4] = v4;
  v8 = v3;
  dispatch_group_notify(v5, v6, v7);
}

void sub_1001035F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _pairedDeviceProxies];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADMobileBluetoothDeviceDataSource getPairedDevicesWithCompletion:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s pairedDevices = %@", &v4, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100103780(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[ADMobileBluetoothDeviceDataSource getConnectedDevicesWithCompletion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 48);
  v6 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001038A8;
  v7[3] = &unk_10051E038;
  v7[4] = v4;
  v8 = v3;
  dispatch_group_notify(v5, v6, v7);
}

void sub_1001038A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _connectedDeviceProxies];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ADMobileBluetoothDeviceDataSource getConnectedDevicesWithCompletion:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s connectedDevices = %@", &v4, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100103B18(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[ADMobileBluetoothDeviceDataSource getBTLocalDeviceWithCompletion:]_block_invoke";
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s BTLocalDevice %p", &v6, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, v3);
  }

  return result;
}

uint64_t sub_100103CD4(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v15[0] = 0;
    v15[1] = 0;
    [*(a1 + 40) getUUIDBytes:v15];
    v2 = BTDeviceFromIdentifier();
    if (v2)
    {
      v3 = v2;
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v10 = "[ADMobileBluetoothDeviceDataSource getBTDeviceWithDeviceUID:completion:]_block_invoke";
        v11 = 1024;
        LODWORD(v12) = v3;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Failed getting device from deviceUID %d", buf, 0x12u);
      }
    }

    v5 = *(*(a1 + 32) + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    *buf = 136315650;
    v10 = "[ADMobileBluetoothDeviceDataSource getBTDeviceWithDeviceUID:completion:]_block_invoke";
    v11 = 2048;
    v12 = 0;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s BTDevice %p for deviceUID %@", buf, 0x20u);
    v6 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADMobileBluetoothDeviceDataSource getBTDeviceWithDeviceUID:completion:]_block_invoke";
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s BTAccessoryManager %p", buf, 0x16u);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0, v5);
  }

  return result;
}

uint64_t sub_100103F98(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    v6 = 0;
    goto LABEL_9;
  }

  WORD2(v12) = 0;
  LODWORD(v12) = 0;
  [*(a1 + 40) UTF8String];
  v2 = BTDeviceAddressFromString();
  if (!v2)
  {
    v7 = BTDeviceFromAddress();
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = v7;
    v4 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 136315394;
    v14 = "[ADMobileBluetoothDeviceDataSource getBTDeviceWithAddress:completion:]_block_invoke";
    v15 = 1024;
    LODWORD(v16) = v8;
    v5 = "%s Failed getting device from address %d";
    goto LABEL_17;
  }

  v3 = v2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "[ADMobileBluetoothDeviceDataSource getBTDeviceWithAddress:completion:]_block_invoke";
    v15 = 1024;
    LODWORD(v16) = v3;
    v5 = "%s Failed getting device address from string %d";
LABEL_17:
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
  }

LABEL_8:
  v6 = *(*(a1 + 32) + 32);
LABEL_9:
  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 40);
    *buf = 136315650;
    v14 = "[ADMobileBluetoothDeviceDataSource getBTDeviceWithAddress:completion:]_block_invoke";
    v15 = 2048;
    v16 = 0;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s BTDevice %p for address %@", buf, 0x20u);
    v9 = AFSiriLogContextDaemon;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[ADMobileBluetoothDeviceDataSource getBTDeviceWithAddress:completion:]_block_invoke";
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s BTAccessoryManager %p", buf, 0x16u);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0, v6);
  }

  return result;
}

void sub_1001044BC(void *a1, void *a2)
{
  v3 = [a2 address];
  v4 = [v3 isEqualToString:a1[4]];

  if (v4)
  {
    v5 = a1[5];
    v6 = a1[6];

    [v5 updateHeadphoneListeningMode:v6];
  }
}

void sub_100104754(void *a1, void *a2)
{
  v3 = [a2 address];
  v4 = [v3 isEqualToString:a1[4]];

  if (v4)
  {
    v5 = a1[5];
    v6 = a1[6];

    [v5 updateHeadphoneInEarDetectionState:v6];
  }
}

void sub_100104944(uint64_t a1, void *a2)
{
  v3 = [a2 address];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    v5 = *(a1 + 40);

    [v5 reload];
  }
}

void *sub_100104B04(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[4] == *(a1 + 40))
  {
    v3 = *(a1 + 56);
    if (v3 <= 0x16)
    {
      if (((1 << v3) & 0x3E) != 0)
      {
        [result _reloadForDevice:*(a1 + 48)];
        v5 = *(a1 + 40);
        v4 = *(a1 + 48);
        v6 = *(a1 + 32);

        return [v6 _handleListeningModeChangedForBTDevice:v4 fromAccessoryManager:v5];
      }

      else if (((1 << v3) & 0x1040) != 0)
      {
        [result _reloadForDevice:*(a1 + 48)];
        v9 = *(a1 + 40);
        v8 = *(a1 + 48);
        v10 = *(a1 + 32);

        return [v10 _handleInEarStatusChangedForBTDevice:v8 fromAccessoryManager:v9];
      }

      else if (((1 << v3) & 0x400001) != 0)
      {
        v7 = *(a1 + 48);

        return [result _reloadForDevice:v7];
      }
    }
  }

  return result;
}

void *sub_100104F64(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[3] != *(a1 + 40))
  {
    return result;
  }

  v3 = *(a1 + 48);
  if (v3 == 11)
  {
    [result _cleanUpDeviceProxies];
    result = *(a1 + 32);
LABEL_11:

    return [result _resetPairedDeviceAddresses];
  }

  if (v3 != 5)
  {
    if (v3 != 4)
    {
      return result;
    }

    goto LABEL_11;
  }

  return [result _resetConnectedDeviceAddresses];
}

id *sub_100105298(id *result)
{
  if (*(result + 10) <= 1u)
  {
    return [result[4] _resetConnectedDeviceAddresses];
  }

  return result;
}

void sub_100105860(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ((a2 - 2) < 2)
  {
    v8 = v7;
    [v7 _sessionTerminated:a1];
  }

  else if (a2 == 1)
  {
    v8 = v7;
    [v7 _sessionDetached:a1];
  }

  else
  {
    if (a2)
    {
      goto LABEL_8;
    }

    v8 = v7;
    [v7 _sessionAttached:a1 result:a3];
  }

  v7 = v8;
LABEL_8:
}

id sub_100105D54(uint64_t a1)
{
  [*(a1 + 32) _cleanUpWirelessSplitterProxy];
  [*(a1 + 32) _cleanUpDeviceProxies];
  v2 = *(a1 + 32);

  return [v2 _detachFromSession];
}

void sub_100105F84(uint64_t a1)
{
  [*(a1 + 32) _attachToSession];
  v2 = *(*(a1 + 32) + 48);

  dispatch_group_leave(v2);
}

void sub_100105FC4(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADMobileBluetoothDeviceDataSource init]_block_invoke_2";
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

void sub_100106988(id a1)
{
  v1 = NSHomeDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"Library/Assistant/ServiceStatistics"];
  v3 = qword_100590120;
  qword_100590120 = v2;

  if (qword_100590120)
  {
    v4 = objc_alloc_init(NSFileManager);
    if (([v4 fileExistsAtPath:qword_100590120] & 1) == 0)
    {
      v9 = 0;
      v5 = [v4 createDirectoryAtPath:qword_100590120 withIntermediateDirectories:1 attributes:0 error:&v9];
      v6 = v9;
      if ((v5 & 1) == 0)
      {
        v7 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v11 = "[ADServiceStatistics _statsDirectory]_block_invoke";
          v12 = 2114;
          v13 = v6;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Couldn't create stats dir %{public}@", buf, 0x16u);
        }

        v8 = qword_100590120;
        qword_100590120 = 0;
      }
    }
  }
}

void sub_100107B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "+[ADSiriAudioRouteMonitor volumeAdjustmentSupportedByRoute:withCompletion:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s H2 based headphones route with personal volume setting: %@", &v9, 0x16u);
  }

  v5 = [v3 value];
  v6 = AFSiriLogContextConnection;
  v7 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
  if (v5 == 2)
  {
    if (v7)
    {
      v9 = 136315138;
      v10 = "+[ADSiriAudioRouteMonitor volumeAdjustmentSupportedByRoute:withCompletion:]_block_invoke";
      v8 = "%s H2 based headphones route with personal volume enabled, doesn't support volume adjustment";
      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v9 = 136315138;
    v10 = "+[ADSiriAudioRouteMonitor volumeAdjustmentSupportedByRoute:withCompletion:]_block_invoke";
    v8 = "%s H2 based headphones route with personal volume NOT enabled, supports volume adjustment";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v8, &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1001084A0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) routeController];
  [v2 removeDelegate:*(a1 + 32)];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:*(a1 + 32) name:TUCallCenterCallStatusChangedNotification object:0];
  [v7 removeObserver:*(a1 + 32) name:TUCallCenterVideoCallStatusChangedNotification object:0];
  [v7 removeObserver:*(a1 + 32) name:TUCallCenterCallContinuityStateChangedNotification object:0];
  [v7 removeObserver:*(a1 + 32) name:TUCallCenterControlFailureNotification object:0];
  [v7 removeObserver:*(a1 + 32) name:TUCallCenterCallConnectedNotification object:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_10010865C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[ADCallObserver _registerForDropInCallbacks]_block_invoke";
      v9 = 2114;
      v10 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Unable to register for drop-in calls: %{public}@", &v7, 0x16u);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[ADCallObserver _registerForDropInCallbacks]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Registered for drop-in calls", &v7, 0xCu);
  }
}

void sub_100108938(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[ADCallObserver startObservingCallStateWithDelegate:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Starting observing call state", buf, 0xCu);
  }

  [*(a1 + 32) _registerForDropInCallbacks];
  if (!*(*(a1 + 32) + 32))
  {
    v3 = [[TUCallCenter alloc] initWithQueue:*(*(a1 + 32) + 8)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100108B5C;
    v10[3] = &unk_10051DFE8;
    v10[4] = v6;
    [v7 registerWithCompletionHandler:v10];
    v8 = [*(*(a1 + 32) + 32) routeController];
    [v8 addDelegate:*(a1 + 32)];
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:*(a1 + 32) selector:"_callStateChanged:" name:TUCallCenterCallStatusChangedNotification object:0];
  [v9 addObserver:*(a1 + 32) selector:"_callStateChanged:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
  [v9 addObserver:*(a1 + 32) selector:"_callStateChanged:" name:TUCallCenterCallContinuityStateChangedNotification object:0];
  [v9 addObserver:*(a1 + 32) selector:"_callStateChanged:" name:TUCallCenterControlFailureNotification object:0];
  [v9 addObserver:*(a1 + 32) selector:"_callStateChanged:" name:TUCallCenterCallConnectedNotification object:0];
}

void sub_100108CA0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) currentAudioAndVideoCalls];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 count]);
    *buf = 136315394;
    v26 = "[ADCallObserver _callStateChanged:]_block_invoke";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s #callstate [_callCenter currentAudioAndVideoCalls count]: %@", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v2;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 status];
        if (v13 > 3)
        {
          v14 = v9 | 8;
          if (v13 != 5)
          {
            v14 = v9;
          }

          if (v13 == 4)
          {
            v9 |= 4uLL;
          }

          else
          {
            v9 = v14;
          }
        }

        else if ((v13 - 1) >= 2)
        {
          if (v13 == 3)
          {
            v9 |= 2uLL;
          }
        }

        else if (!AFIsHorseman() || ([v12 isEndpointOnCurrentDevice] & 1) != 0 || objc_msgSend(v12, "isHostedOnCurrentDevice"))
        {
          v9 |= 1uLL;
        }

        v15 = [*(*(a1 + 32) + 32) activeConversationForCall:v12];
        v16 = [v15 provider];
        v17 = [v16 identifier];
        v18 = [v17 isEqualToString:@"com.apple.private.alloy.dropin.communication"];

        v8 |= v18;
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  [*(a1 + 32) _handleCallStateDidChangeTo:v9 isDropInCallDidChange:v8 & 1];
}

void sub_100109444(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADContextManager _handleHomeAnnouncementSnapshotUpdate:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #background marking context as dirty", &v5, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained contextManagerDidUpdateBackgroundContext:*(a1 + 32)];
  }
}

void sub_100109724(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 56);
  v4 = a2;
  v5 = [v3 homeAnnouncement];
  v6 = [v4 lastPlayedAnnouncement];

  if (v6)
  {
    v7 = objc_alloc_init(SAHomeCommunicationAnnouncement);
    v8 = [v6 identifier];
    if (v8)
    {
      v9 = [NSURL URLWithString:v8];
      [v7 setIdentifier:v9];
    }

    v10 = [v6 startedDate];
    if (v10)
    {
      [v7 setDatePlaybackStarted:v10];
    }

    v11 = [v6 finishedDate];
    if (v11)
    {
      [v7 setDatePlaybackFinished:v11];
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315650;
    v16 = "[ADContextManager _updateHomeAnnouncementWithContext:supplementalSnapshot:completion:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v7;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s cachedHomeAnnouncement = %@, proposedHomeAnnouncement = %@", &v15, 0x20u);
  }

  if (v5 | v7)
  {
    v13 = [v5 isEqual:v7] ^ 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315394;
    v16 = "[ADContextManager _updateHomeAnnouncementWithContext:supplementalSnapshot:completion:]_block_invoke";
    v17 = 1024;
    LODWORD(v18) = v13;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s didChange = %d", &v15, 0x12u);
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v13)
  {
LABEL_17:
    [*(*(a1 + 32) + 56) setHomeAnnouncement:v7];
  }

LABEL_18:
  (*(*(a1 + 40) + 16))();
}

void sub_100109990(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100109A4C;
  v6[3] = &unk_10051E038;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t sub_100109A4C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ADContextManager _updateHomeAnnouncementWithContext:supplementalSnapshot:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v4;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s fetchedSnapshot = %@", &v5, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100109CD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _isCollectingContext];

  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100109DF4;
  v6[3] = &unk_100512330;
  v10 = v3;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 40);
  objc_copyWeak(v9, (a1 + 48));
  v9[1] = *(a1 + 64);
  [v4 setMyriadAdvertisementContext:v5 completion:v6];

  objc_destroyWeak(v9);
  objc_destroyWeak(&v8);
}

void sub_100109DD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_100109DF4(uint64_t a1)
{
  v18 = AFDeviceContextKeyMyriadAdvertisement;
  v2 = [NSArray arrayWithObjects:&v18 count:1];
  v17[0] = AFDeviceContextKeyIdentifier;
  v17[1] = AFDeviceContextKeyDeviceInfo;
  v17[2] = AFDeviceContextKeyPrivacyClass;
  v3 = [NSArray arrayWithObjects:v17 count:3];
  if (*(a1 + 64))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained && *(a1 + 32))
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 56);
        *buf = 136315394;
        v14 = "[ADContextManager pushSCDAAdvertisementContextToContextCollector:completion:]_block_invoke_2";
        v15 = 2048;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #hal Fetching context after %f seconds", buf, 0x16u);
      }

      v7 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
      v8 = WeakRetained[25];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10010A034;
      v9[3] = &unk_10051E0D8;
      v9[4] = WeakRetained;
      v10 = v2;
      v11 = v3;
      v12 = *(a1 + 32);
      dispatch_after(v7, v8, v9);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained pushContextToContextCollectorIncludingKeys:v2 excludingMandatoryKeys:v3 expectingResponseIncludingKeys:v2 excludingMandatoryKeys:v3 completion:*(a1 + 32)];
  }
}

void sub_10010A204(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _isCollectingContext];

  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10010A320;
  v6[3] = &unk_100512330;
  v10 = v3;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 40);
  objc_copyWeak(v9, (a1 + 48));
  v9[1] = *(a1 + 64);
  [v4 setMyriadAdvertisementContext:v5 completion:v6];

  objc_destroyWeak(v9);
  objc_destroyWeak(&v8);
}

void sub_10010A304(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_10010A320(uint64_t a1)
{
  v18 = AFDeviceContextKeyMyriadAdvertisement;
  v2 = [NSArray arrayWithObjects:&v18 count:1];
  v17[0] = AFDeviceContextKeyIdentifier;
  v17[1] = AFDeviceContextKeyDeviceInfo;
  v17[2] = AFDeviceContextKeyPrivacyClass;
  v3 = [NSArray arrayWithObjects:v17 count:3];
  if (*(a1 + 64))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained && *(a1 + 32))
    {
      v5 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 56);
        *buf = 136315394;
        v14 = "[ADContextManager pushMyriadAdvertisementContextToContextCollector:completion:]_block_invoke_2";
        v15 = 2048;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #hal Fetching context after %f seconds", buf, 0x16u);
      }

      v7 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
      v8 = WeakRetained[25];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10010A560;
      v9[3] = &unk_10051E0D8;
      v9[4] = WeakRetained;
      v10 = v2;
      v11 = v3;
      v12 = *(a1 + 32);
      dispatch_after(v7, v8, v9);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained pushContextToContextCollectorIncludingKeys:v2 excludingMandatoryKeys:v3 expectingResponseIncludingKeys:v2 excludingMandatoryKeys:v3 completion:*(a1 + 32)];
  }
}

id sub_10010A5E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10010A660;
  v3[3] = &unk_10051B778;
  v3[4] = v1;
  return [v1 _updatePlaybackDevicesWithContext:&off_1005341D0 completion:v3];
}

void sub_10010A660(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADContextManager _playbackDevicesDidChange:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #background marking context as dirty", &v5, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained contextManagerDidUpdateBackgroundContext:*(a1 + 32)];
  }
}

void sub_10010A804(uint64_t a1)
{
  [*(*(a1 + 32) + 64) logEventWithType:4523 context:*(a1 + 40)];
  if (AFSupportsPlayThisOnThat())
  {
    v2 = +[ADCompanionService sharedInstance];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10010A8F8;
    v4[3] = &unk_100512308;
    v4[4] = *(a1 + 32);
    v5 = *(a1 + 48);
    [v2 getPlaybackDeviceListWithCompletion:v4];
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

void sub_10010A8F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010A9B0;
  block[3] = &unk_10051E088;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_10010A9B0(void *a1)
{
  v2 = [*(a1[4] + 56) playbackDeviceList];
  v3 = a1[5];
  v4 = v2;
  if (v2 | v3 && ([v3 isEqual:v2] & 1) == 0)
  {
    [*(a1[4] + 56) setPlaybackDeviceList:a1[5]];
  }

  (*(a1[6] + 16))();
}

id sub_10010AAB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10010AB30;
  v3[3] = &unk_10051B778;
  v3[4] = v1;
  return [v1 _updateSimpleThingsWithContext:&off_1005341A8 completion:v3];
}

void sub_10010AB30(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADContextManager _callStateDidChange:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #background marking context as dirty", &v5, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained contextManagerDidUpdateBackgroundContext:*(a1 + 32)];
  }
}

void sub_10010B29C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADContextManager _handleDeviceProblemsChangedWithToken:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #background marking context as dirty", &v5, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained contextManagerDidUpdateBackgroundContext:*(a1 + 32)];
  }
}

void sub_10010B574(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADContextManager _reallyUpdateBackgroundContextIfNowPlayingInfoChangedForReason:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #background marking context as dirty", &v5, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained contextManagerDidUpdateBackgroundContext:*(a1 + 32)];
  }
}

void sub_10010B7E8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 56) queueState];
  v5 = v4;
  if (v3 | v4)
  {
    v6 = [v4 isEqual:v3] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = a1[5];
    v9 = v7;
    v10 = [v3 aceId];
    v11 = 136315906;
    v12 = "[ADContextManager _updateNowPlayingInfoWithContext:completion:]_block_invoke";
    v13 = 2048;
    v14 = v8;
    v15 = 1024;
    v16 = v6;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s group=%p didChange=%d queueState ID=%@", &v11, 0x26u);
  }

  if (v6)
  {
    [*(a1[4] + 56) setQueueState:v3];
  }

  (*(a1[6] + 16))();
}

void sub_10010BC00(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 88);
    v7 = 136315394;
    v8 = "[ADContextManager _scheduleNowPlayingRefreshForReason:isPlaying:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Updating NowPlaying info now for %@", &v7, 0x16u);
  }

  if ([*(*(a1 + 32) + 88) count])
  {
    v4 = [*(*(a1 + 32) + 88) allObjects];
    v5 = [v4 sortedArrayUsingSelector:"compare:"];

    v6 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) _reallyUpdateBackgroundContextIfNowPlayingInfoChangedForReason:v6];
}

void sub_10010BE5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSStringFromSelector(*(a1 + 40));
  [v1 _scheduleNowPlayingRefreshForReason:v2 isPlaying:0];
}

void sub_10010C050(uint64_t a1)
{
  v4 = [NSNumber numberWithBool:*(a1 + 40) == 1];
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 48));
  [v2 _scheduleNowPlayingRefreshForReason:v3 isPlaying:v4];
}

id sub_10010C148(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10010C1C0;
  v3[3] = &unk_10051B778;
  v3[4] = v1;
  return [v1 _updateNavStatusWithContext:&off_100534158 completion:v3];
}

void sub_10010C1C0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADContextManager navStatusDidChange:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #background marking context as dirty", &v5, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained contextManagerDidUpdateBackgroundContext:*(a1 + 32)];
  }
}

void sub_10010C668(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = v3;
  if (v3 | v4 && ([v4 isEqual:v3] & 1) == 0)
  {
    [*(a1[5] + 56) setLocalSearchGetNavigationStatusCompleted:v5];
  }

  (*(a1[6] + 16))();
}

void sub_10010C700(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C7DC;
  block[3] = &unk_10051E088;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_10010C7DC(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = &stru_10051F508;
      v5 = *(a1 + 32);
      if (!v5)
      {
        v5 = &stru_10051F508;
      }

      if (*(a1 + 40))
      {
        v4 = *(a1 + 40);
      }

      v6 = 136315650;
      v7 = "[ADContextManager _updateNavStatusWithContext:completion:]_block_invoke_3";
      v8 = 2112;
      v9 = v5;
      v10 = 2112;
      v11 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Could not fetch route! %@ %@", &v6, 0x20u);
    }

    v2 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

id sub_10010C97C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10010C9F4;
  v3[3] = &unk_10051B778;
  v3[4] = v1;
  return [v1 _updateSimpleThingsWithContext:&off_100534130 completion:v3];
}

void sub_10010C9F4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADContextManager updateBackgroundContextIfHomeKitInfoChanged]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #background marking context as dirty", &v5, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained contextManagerDidUpdateBackgroundContext:*(a1 + 32)];
  }
}

uint64_t sub_10010CAC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10010CB4C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADContextManager _updateBackgroundContextIfMusicPersonalizationTokenChanged]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #background marking context as dirty", &v5, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained contextManagerDidUpdateBackgroundContext:*(a1 + 32)];
  }
}

void sub_10010CD2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010CE1C;
  block[3] = &unk_10051D2A0;
  v13 = v6;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  v17 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, block);
}

void sub_10010CE1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[ADContextManager _updateMusicPersonalizationTokenWithContext:completion:]_block_invoke_2";
      v12 = 2112;
      v13 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }
  }

  v4 = *(a1 + 40);
  v5 = [*(*(a1 + 48) + 56) musicPersonalizationToken];
  v6 = [v5 isEqual:v4];
  if ((v6 & 1) == 0)
  {
    [*(*(a1 + 48) + 56) setMusicPersonalizationToken:v4];
  }

  if (v4)
  {
    [*(a1 + 48) _updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:v6 ^ 1 completion:*(a1 + 64)];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10010CFB8;
    v8[3] = &unk_1005121A0;
    v7 = *(a1 + 56);
    v8[4] = *(a1 + 48);
    v9 = *(a1 + 64);
    [v7 getTokenStatusForcingRefresh:0 completion:v8];
  }
}

void sub_10010CFB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10010D094;
  v12[3] = &unk_10051E0D8;
  v12[4] = v8;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void sub_10010D094(uint64_t a1)
{
  v2 = [*(a1 + 32) _makeUserTokenStatusWithICTokenStatus:*(a1 + 40) icError:*(a1 + 48)];
  [*(*(a1 + 32) + 56) setMusicPersonalizationTokenStatus:v2];
  [*(a1 + 32) _updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:1 completion:*(a1 + 56)];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [v2 errorCode];
    v6 = [v2 lastUpdateAttemptTime];
    v7 = [v2 shouldExcludeFromBackgroundRefresh];
    v8 = 136315906;
    v9 = "[ADContextManager _updateMusicPersonalizationTokenWithContext:completion:]_block_invoke_2";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Token status errorCode:%@ lastUpdateAttemptTime:%@ shouldExcludeFromBackgroundRefresh: %@", &v8, 0x2Au);
  }
}

id sub_10010D1EC()
{
  if (qword_100590198 != -1)
  {
    dispatch_once(&qword_100590198, &stru_100512428);
  }

  v1 = qword_1005901A0;

  return v1;
}

void sub_10010D240(id a1)
{
  if (!qword_1005901A8)
  {
    qword_1005901A8 = dlopen("/System/Library/PrivateFrameworks/iTunesCloud.framework/iTunesCloud", 2);
    if (!qword_1005901A8)
    {
      __assert_rtn("iTunesCloudLibrary", "ADContextManager.m", 139, "frameworkLibrary");
    }
  }

  qword_1005901A0 = objc_getClass("ICLibraryAuthServiceClientTokenProvider");
  if (!qword_1005901A0)
  {
    __assert_rtn("initICLibraryAuthServiceClientTokenProvider_block_invoke", "ADContextManager.m", 140, "classICLibraryAuthServiceClientTokenProvider");
  }

  off_10058B438 = sub_100009580;
}

void sub_10010D3C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v13 = v7;
    *buf = 136315394;
    v20 = "[ADContextManager _updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:completion:]_block_invoke";
    v21 = 2048;
    v22 = [v5 count];
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Received %lu tokens", buf, 0x16u);
  }

  if (![v5 count])
  {
    v8 = AFSiriLogContextDaemon;
    if (v6)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[ADContextManager _updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:completion:]_block_invoke";
        v21 = 2112;
        v22 = v6;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s No tokens found and error is %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[ADContextManager _updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s No tokens found, but no error either.", buf, 0xCu);
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10010D614;
  v14[3] = &unk_100512150;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v14[4] = *(a1 + 40);
  v15 = v5;
  v18 = *(a1 + 56);
  v16 = v6;
  v17 = v10;
  v11 = v6;
  v12 = v5;
  [v9 getAllTokenStatusForAssistantForcingRefresh:0 completion:v14];
}

void sub_10010D614(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v14 = v7;
    *buf = 136315394;
    v23 = "[ADContextManager _updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:completion:]_block_invoke";
    v24 = 2048;
    v25 = [v5 count];
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s Received %lu token statuses", buf, 0x16u);
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010D7C8;
  block[3] = &unk_100517E80;
  block[4] = v9;
  v11 = v8;
  v21 = *(a1 + 64);
  v16 = v11;
  v17 = v5;
  v18 = v6;
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v12 = v6;
  v13 = v5;
  dispatch_async(v10, block);
}

void sub_10010D7C8(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setAllMusicPersonalizationTokens:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 56) allMusicPersonalizationTokens];
  v3 = v2;
  if ((*(a1 + 80) & 1) != 0 || v2 | *(a1 + 40) && ![v2 isEqual:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[ADContextManager _updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:completion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s No changes to DynamiteClientState tokens", buf, 0xCu);
    }

    v4 = 0;
  }

  if ([*(a1 + 48) count])
  {
    v6 = +[NSMutableDictionary dictionary];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10010DB2C;
    v16[3] = &unk_100512128;
    v7 = *(a1 + 48);
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 32);
    v19 = v8;
    v20 = v9;
    v10 = v6;
    v21 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:v16];
    v11 = [*(*(a1 + 32) + 56) allMusicPersonalizationTokenStatuses];
    v12 = v11;
    if ((v4 & 1) != 0 || v10 | v11 && ![v11 isEqual:v10])
    {
      [*(*(a1 + 32) + 56) setAllMusicPersonalizationTokenStatuses:v10];
    }

    else
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v23 = "[ADContextManager _updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:completion:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s No changes to DynamiteClientState tokens or token statuses", buf, 0xCu);
      }
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = AFSiriLogContextDaemon;
    if (v13)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "[ADContextManager _updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:completion:]_block_invoke";
        v24 = 2112;
        v25 = v13;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s No token statuses found and error is %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[ADContextManager _updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s No token statuses found, but no error either.", buf, 0xCu);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_10010DB2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 tokenResult];
  v8 = [v7 token];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];

  v9 = [v6 lastError];
  if (!v9 && !*(a1 + 40))
  {
    if (!*(a1 + 48))
    {
      goto LABEL_11;
    }

    v11 = *(a1 + 56);
    goto LABEL_7;
  }

  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  if (!v10)
  {
LABEL_7:
    v10 = *(a1 + 48);
  }

  v12 = [v11 _makeUserTokenStatusWithICTokenStatus:v6 icError:v10];
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [v12 errorCode];
    v16 = [v12 lastUpdateAttemptTime];
    v17 = [v12 shouldExcludeFromBackgroundRefresh];
    v18 = 136316162;
    v19 = "[ADContextManager _updateMultiUserPersonalizationTokensWithSingleUserTokenChanged:completion:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Received token status for sharedId %@: errorCode:%@ lastUpdateAttemptTime:%@ shouldExcludeFromBackgroundRefresh: %@", &v18, 0x34u);
  }

  [*(a1 + 64) setObject:v12 forKeyedSubscript:v5];

LABEL_11:
}

void sub_10010E354(uint64_t a1, void *a2, void *a3)
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

  v9 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;

    if (v8 && v10)
    {
      v11 = sub_100188240(v8);
      v12 = [[AFDeviceContext alloc] initWithSerializedBackingStore:v10 fromLocalDevice:sub_10001A834(v11 contextCollectorSource:{*(a1 + 32)), 0}];
      v13 = *(a1 + 40);
      v14 = [[AFPeerContentTuple alloc] initWithInfo:v11 content:v12];
      [v13 addObject:v14];

      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315394;
        v17 = "[ADContextManager _handleContextSnapshotPush:completion:]_block_invoke";
        v18 = 2112;
        v19 = v12;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s #hal %@", &v16, 0x16u);
      }
    }
  }

  else
  {

    v10 = 0;
  }
}

void sub_10010E544(uint64_t a1, void *a2, void *a3)
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

  v9 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;

    if (v8 && v10)
    {
      v11 = sub_10001A3B0(v8);
      v12 = [[AFDeviceContext alloc] initWithSerializedBackingStore:v10 fromLocalDevice:sub_10001A834(v11 contextCollectorSource:{*(a1 + 32)), 0}];
      v13 = *(a1 + 40);
      v14 = [[AFPeerContentTuple alloc] initWithInfo:v11 content:v12];
      [v13 addObject:v14];

      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315394;
        v17 = "[ADContextManager _handleContextSnapshotPush:completion:]_block_invoke";
        v18 = 2112;
        v19 = v12;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s #hal %@", &v16, 0x16u);
      }
    }
  }

  else
  {

    v10 = 0;
  }
}

void sub_10010E984(uint64_t a1)
{
  v2 = dispatch_group_create();
  if ([*(a1 + 32) count])
  {
    dispatch_group_enter(v2);
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v3 + 256);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10010EBCC;
    v21[3] = &unk_1005120D8;
    v21[4] = v3;
    v24 = *(a1 + 72);
    v6 = *(a1 + 48);
    v22 = *(a1 + 56);
    v7 = v2;
    v23 = v7;
    [v5 getSerializedDeviceContextSnapshotIncludingKeys:v4 excludingMandatoryKeys:v6 completion:v21];
    dispatch_group_enter(v7);
    v8 = [*(a1 + 40) localContextStore];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10010ECA4;
    v15[3] = &unk_100512100;
    v20 = *(a1 + 72);
    v11 = *(a1 + 32);
    v9 = v11.i64[0];
    v16 = vextq_s8(v11, v11, 8uLL);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = v7;
    [v8 getLocalContextWithPrivacyClass:50 completion:v15];
  }

  v10 = *(*(a1 + 40) + 200);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EDB4;
  block[3] = &unk_10051E038;
  v14 = *(a1 + 64);
  v13 = *(a1 + 56);
  dispatch_group_notify(v2, v10, block);
}

void sub_10010EBCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 200);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10010EED8;
  v6[3] = &unk_10051C958;
  v7 = v3;
  v10 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10010ECA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 200);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EDD4;
  block[3] = &unk_100516778;
  v12 = v3;
  v16 = *(a1 + 72);
  v10 = *(a1 + 32);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v15 = *(a1 + 64);
  v9 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_10010EDB4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10010EDD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = [v2 deviceInfo];
    v5 = v4;
    if (v3 == 1)
    {
      v6 = sub_10001AE44(v4);
      if (!v6)
      {
        v7 = [*(*(a1 + 40) + 16) localPeerInfo];
        v8 = [v7 assistantIdentifier];
        goto LABEL_8;
      }
    }

    else
    {
      v6 = sub_10001AF74(v4);
      if (!v6)
      {
        v7 = [*(*(a1 + 40) + 16) localPeerInfo];
        v8 = [v7 idsDeviceUniqueIdentifier];
LABEL_8:
        v9 = v8;

        if (!v9)
        {
LABEL_12:

          goto LABEL_13;
        }

LABEL_9:
        v10 = [*(a1 + 32) partialSerializedBackingStoreIncludingKeys:*(a1 + 48) excludingMandatoryKeys:*(a1 + 56)];
        if (v10)
        {
          [*(a1 + 64) setObject:v10 forKey:v9];
        }

        goto LABEL_12;
      }
    }

    v9 = v6;

    goto LABEL_9;
  }

LABEL_13:
  v11 = *(a1 + 72);

  dispatch_group_leave(v11);
}

void sub_10010EED8(uint64_t a1)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v26;
    *&v4 = 136315650;
    v24 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = *(a1 + 56);
        v10 = [v8 info];
        v11 = v10;
        if (v9 == 1)
        {
          sub_10001AE44(v10);
        }

        else
        {
          sub_10001AF74(v10);
        }
        v12 = ;

        if (v12)
        {
          v13 = *(a1 + 40);
          v14 = [v8 content];
          [v13 setObject:v14 forKey:v12];

          goto LABEL_15;
        }

        v15 = *(a1 + 56);
        v16 = AFSiriLogContextDaemon;
        v17 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR);
        if (v15 == 1)
        {
          if (!v17)
          {
            goto LABEL_15;
          }

          v18 = v16;
          v19 = [v8 info];
          v20 = [v8 content];
          *buf = v24;
          v30 = "[ADContextManager _handlePushContextMessage:fromDeviceWithPeerInfo:completion:]_block_invoke_3";
          v31 = 2112;
          v32 = v19;
          v33 = 2112;
          v34 = v20;
          v21 = v18;
          v22 = "%s #hal No Assistant identifier in %@. Skipping %@.";
        }

        else
        {
          if (!v17)
          {
            goto LABEL_15;
          }

          v18 = v16;
          v19 = [v8 info];
          v20 = [v8 content];
          *buf = v24;
          v30 = "[ADContextManager _handlePushContextMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
          v31 = 2112;
          v32 = v19;
          v33 = 2112;
          v34 = v20;
          v21 = v18;
          v22 = "%s #hal No IDS device unique identifier in %@. Skipping %@.";
        }

        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x20u);

LABEL_15:
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v23 = [v2 countByEnumeratingWithState:&v25 objects:v35 count:16];
      v5 = v23;
    }

    while (v23);
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10010FB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

void sub_10010FC24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s #hal Fetch local context completed", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10010FD0C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = AFSiriLogContextDaemon;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v12 = 136315650;
      v13 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      v16 = 2048;
      v17 = [v6 count];
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #hal Force fetching from %@ completed, count: %ld", &v12, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = 136315650;
    v13 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s #hal Failed to force fetch from %@: %@", &v12, 0x20u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10010FEA4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = AFSiriLogContextDaemon;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v10 = 136315394;
      v11 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
      v12 = 2048;
      v13 = [v6 count];
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #hal Fetch remote context snapshot completed, count: %ld", &v10, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
    v12 = 2112;
    v13 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s #hal Failed to fetch context snapshot: %@", &v10, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100110020(uint64_t a1, void *a2)
{
  v3 = AFSiriLogContextDaemon;
  if (a2)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v47 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
      v48 = 2048;
      v49 = a2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s #hal Context collection completed unsuccessfully with signal: %ld", buf, 0x16u);
    }

    v5 = +[AFAnalytics sharedAnalytics];
    [v5 logEventWithType:4589 context:0];
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v47 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #hal Context collection completed successfully", buf, 0xCu);
  }

  [*(*(*(a1 + 56) + 8) + 40) cancel];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = +[AFPreferences sharedPreferences];
  v10 = [v9 assistantIsEnabled];

  if (v10)
  {
    v11 = *(a1 + 80);
    v12 = [*(*(a1 + 32) + 16) localPeerInfo];
    v13 = v12;
    if (v11 == 1)
    {
      [v12 assistantIdentifier];
    }

    else
    {
      [v12 idsDeviceUniqueIdentifier];
    }
    v15 = ;

    v16 = AFSiriLogContextDaemon;
    if (v15)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 136315394;
        v47 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
        v48 = 2112;
        v49 = v39;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s #hal Including local device context: %@", buf, 0x16u);
      }

      v17 = [*(*(*(a1 + 64) + 8) + 40) serializedBackingStore];
      [v8 setObject:v17 forKey:v15];
    }

    else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v47 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s #hal Excluding local device context due to missing device identifier", buf, 0xCu);
    }
  }

  else
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v47 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s #hal Excluding local device context because Siri is disabled on this device", buf, 0xCu);
    }
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = *(*(*(a1 + 72) + 8) + 40);
  v19 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = *v42;
    *&v20 = 136315138;
    v40 = v20;
    do
    {
      v23 = 0;
      do
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v41 + 1) + 8 * v23);
        v25 = [v24 info];
        v26 = [v24 content];
        if ((sub_10001A834(v25, *(a1 + 40)) & 1) == 0)
        {
          v28 = *(a1 + 80);
          v29 = [v26 deviceInfo];
          v30 = v29;
          if (v28 == 1)
          {
            v31 = sub_10001AE44(v29);
            if (!v31)
            {
              v32 = sub_10001AE44(v25);
              goto LABEL_34;
            }

LABEL_32:
            v33 = v31;

            v34 = AFSiriLogContextDaemon;
            goto LABEL_35;
          }

          v31 = sub_10001AF74(v29);
          if (v31)
          {
            goto LABEL_32;
          }

          v32 = sub_10001AF74(v25);
LABEL_34:
          v33 = v32;

          v34 = AFSiriLogContextDaemon;
          if (v33)
          {
LABEL_35:
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v47 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
              v48 = 2112;
              v49 = v26;
              _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%s #hal Including remote device context pushed to collector: %@", buf, 0x16u);
            }

            v35 = [v26 serializedBackingStore];
            [v8 setObject:v35 forKey:v33];
          }

          else
          {
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = v40;
              v47 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
              _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s #hal Excluding remote device context due to missing device identifier", buf, 0xCu);
            }

            v33 = 0;
          }

          goto LABEL_39;
        }

        v27 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v47 = "[ADContextManager _handleAggregateContextFetchWithMessage:fromDeviceWithPeerInfo:completion:]_block_invoke";
          v48 = 2112;
          v49 = v26;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s #hal Excluding remote device context matching sender: %@", buf, 0x16u);
        }

LABEL_39:

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v36 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
      v21 = v36;
    }

    while (v36);
  }

  v37 = *(a1 + 48);
  if (v37)
  {
    (*(v37 + 16))(v37, v8, 0);
  }

  v38 = +[AFAnalytics sharedAnalytics];
  [v38 logEventWithType:4587 context:0];
}

uint64_t sub_1001109F8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t sub_100110A14(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

id sub_100110CF4(uint64_t a1)
{
  v2 = [*(a1 + 32) _configuredContextLink];
  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  *(v3 + 192) = v2;

  [*(*(a1 + 32) + 192) addListener:?];
  [*(*(a1 + 32) + 248) updateRapportLink:*(*(a1 + 32) + 192)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 256);
  v7 = *(v5 + 192);

  return [v6 updateRapportLink:v7];
}

uint64_t sub_100110D68(uint64_t result)
{
  if (!*(*(result + 32) + 192))
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

void sub_100110E4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[31] == *(a1 + 40))
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100110EE4;
    v2[3] = &unk_100512010;
    v3 = *(a1 + 48);
    [v1 _enumerateDeviceContextConnectionsUsingBlock:v2];
  }
}

void sub_100110F98(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = 136315650;
    v10 = "[ADContextManager contextCollectorChangedToDevicesWithIdentifiers:localDeviceIsCollector:]_block_invoke";
    v11 = 2112;
    v12 = v7;
    v13 = 1024;
    v14 = v8;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s #hal collectorID(s): %@, isLocal: %d", &v9, 0x1Cu);
  }

  v3 = *(*(a1 + 40) + 240);
  v4 = *(a1 + 48);
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) _setCollectingContext:*(a1 + 48)];
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADContextManager contextCollectorChangedToDevicesWithIdentifiers:localDeviceIsCollector:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #hal No collector device found", &v9, 0xCu);
    }
  }

  if (v3 != v4)
  {
    v6 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      [v6 _startPeriodicContextFetchFromNearbyDevices];
    }

    else
    {
      [v6 _stopPeriodicContextFetchFromNearbyDevices];
    }
  }
}

void sub_100111D00(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDeviceProblemsChangedWithToken:a2];
}

void sub_100111D50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBackgroundContextIfMusicPersonalizationTokenChanged];
}

void sub_1001124C8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADContextManager _getBackgroundContext:]_block_invoke";
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got NavStatus ctxg=%p", &v4, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10011258C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADContextManager _getBackgroundContext:]_block_invoke";
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got NowPlaying ctxg=%p", &v4, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100112650(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADContextManager _getBackgroundContext:]_block_invoke";
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got PlaybackDevices ctxg=%p", &v4, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100112714(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADContextManager _getBackgroundContext:]_block_invoke";
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got Simple Context ctxg=%p", &v4, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001127D8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADContextManager _getBackgroundContext:]_block_invoke";
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got DeviceProblems ctxg=%p", &v4, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10011289C(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADContextManager _getBackgroundContext:]_block_invoke";
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got Music Personalization Token ctxg=%p", &v4, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100112960(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADContextManager _getBackgroundContext:]_block_invoke";
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got HomeAnnouncement ctxg=%p", &v4, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100112A24(uint64_t a1)
{
  [*(a1 + 32) logEventWithType:4502 context:*(a1 + 40)];
  v2 = objc_alloc_init(NSUUID);
  v3 = [v2 UUIDString];

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 48);
    v8 = 136315650;
    v9 = "[ADContextManager _getBackgroundContext:]_block_invoke";
    v10 = 2048;
    v11 = v5;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Done ctxg=%p aceID=%@", &v8, 0x20u);
  }

  v6 = [*(*(a1 + 56) + 56) backgroundContextWithCachedObjects];
  [v6 setAceId:v3];
  v7 = *(a1 + 64);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

void sub_100112D9C(uint64_t a1)
{
  v2 = [SISchemaUUID alloc];
  v3 = +[NSUUID UUID];
  v6 = [v2 initWithNSUUID:v3];

  [*(a1 + 32) _logForceFetchContextStartedWithHALMetricsId:*(a1 + 40) contextId:v6 timestamp:*(a1 + 56)];
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  if (!*(a1 + 64) || *(a1 + 48))
  {
    [v5 _logForceFetchContextFailedWithHALMetricsId:v4 contextId:v6 error:*(a1 + 48)];
  }

  else
  {
    [v5 _logForceFetchContextEndedWithHALMetricsId:v4 contextId:v6 forceFetchCount:?];
  }
}

void sub_1001134A0(uint64_t a1)
{
  v2 = objc_alloc_init(HALSchemaHALClientEvent);
  v3 = objc_alloc_init(HALSchemaHALLocalFetchEnded);
  v4 = objc_alloc_init(HALSchemaHALLocalFetchContext);
  [v4 setEnded:v3];
  [v2 setLocalFetchContext:v4];
  v5 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  v6 = [[SISchemaUUID alloc] initWithNSUUID:*(a1 + 32)];
  [v5 setHalId:v6];

  [v2 setEventMetadata:v5];
  v7 = +[AssistantSiriAnalytics sharedStream];
  [v7 emitMessage:v2];

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADContextManager _logFetchLocalContextEnded:]_block_invoke";
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #hal Emitted localFetch.ended event %@ to sharedStream", &v9, 0x16u);
  }
}

void sub_1001136B8(uint64_t a1)
{
  v2 = objc_alloc_init(HALSchemaHALClientEvent);
  v3 = objc_alloc_init(HALSchemaHALLocalFetchStarted);
  v4 = objc_alloc_init(HALSchemaHALLocalFetchContext);
  [v4 setStartedOrChanged:v3];
  [v2 setLocalFetchContext:v4];
  v5 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  v6 = [[SISchemaUUID alloc] initWithNSUUID:*(a1 + 32)];
  [v5 setHalId:v6];

  [v2 setEventMetadata:v5];
  v7 = +[AssistantSiriAnalytics sharedStream];
  [v7 emitMessage:v2];

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADContextManager _logFetchLocalContextStarted:]_block_invoke";
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #hal Emitted localFetch.started event %@ to sharedStream", &v9, 0x16u);
  }
}

void sub_1001138D0(uint64_t a1)
{
  v2 = objc_alloc_init(HALSchemaHALClientEvent);
  v3 = objc_alloc_init(HALSchemaHALContextCollectorFetchFailed);
  v4 = objc_alloc_init(HALSchemaHALContextCollectorFetchContext);
  [v4 setFailed:v3];
  [v2 setContextCollectorFetchContext:v4];
  v5 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  v6 = [[SISchemaUUID alloc] initWithNSUUID:*(a1 + 32)];
  [v5 setHalId:v6];

  [v2 setEventMetadata:v5];
  v7 = +[AssistantSiriAnalytics sharedStream];
  [v7 emitMessage:v2];

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADContextManager _logContextCollectorFetchFailed:]_block_invoke";
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #hal Emitted contextCollectorFetch.failed event %@ to sharedStream", &v9, 0x16u);
  }
}

void sub_100113AEC(uint64_t a1)
{
  v2 = objc_alloc_init(HALSchemaHALClientEvent);
  v3 = objc_alloc_init(HALSchemaHALContextCollectorFetchEnded);
  [v3 setNumDeviceContextsFetched:*(a1 + 40)];
  v4 = objc_alloc_init(HALSchemaHALContextCollectorFetchContext);
  [v4 setEnded:v3];
  [v2 setContextCollectorFetchContext:v4];
  v5 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  v6 = [[SISchemaUUID alloc] initWithNSUUID:*(a1 + 32)];
  [v5 setHalId:v6];

  [v2 setEventMetadata:v5];
  v7 = +[AssistantSiriAnalytics sharedStream];
  [v7 emitMessage:v2];

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADContextManager _logContextCollectorFetchEnded:numDeviceContextsFetched:]_block_invoke";
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #hal Emitted contextCollectorFetch.ended event %@ to sharedStream", &v9, 0x16u);
  }
}

void sub_100113D0C(uint64_t a1)
{
  v2 = objc_alloc_init(HALSchemaHALClientEvent);
  v3 = objc_alloc_init(HALSchemaHALContextCollectorFetchStarted);
  v4 = objc_alloc_init(HALSchemaHALContextCollectorFetchContext);
  [v4 setStartedOrChanged:v3];
  [v2 setContextCollectorFetchContext:v4];
  v5 = objc_alloc_init(HALSchemaHALClientEventMetadata);
  v6 = [[SISchemaUUID alloc] initWithNSUUID:*(a1 + 32)];
  [v5 setHalId:v6];

  [v2 setEventMetadata:v5];
  v7 = +[AssistantSiriAnalytics sharedStream];
  [v7 emitMessage:v2];

  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADContextManager _logContextCollectorFetchStarted:]_block_invoke";
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s #hal Emitted contextCollectorFetch.started event %@ to sharedStream", &v9, 0x16u);
  }
}

id sub_10011407C(uint64_t a1)
{
  [*(*(a1 + 32) + 16) wakeUpNearbyDevices];
  v2 = *(a1 + 32);
  v3 = *(v2 + 256);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100114108;
  v5[3] = &unk_100511FC0;
  v5[4] = v2;
  return [v3 fetchContextSnapshotFromAllDevicesWithCompletion:v5];
}

void sub_100114108(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  v8 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      *buf = 136315394;
      v16 = "[ADContextManager _startPeriodicContextFetchFromNearbyDevices]_block_invoke_2";
      v17 = 2112;
      v18 = v6;
      v9 = "%s Context refreshing error: %@";
      v10 = v7;
      v11 = 22;
LABEL_7:
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, v9, buf, v11);
    }
  }

  else if (v8)
  {
    *buf = 136315138;
    v16 = "[ADContextManager _startPeriodicContextFetchFromNearbyDevices]_block_invoke";
    v9 = "%s Context refreshing done";
    v10 = v7;
    v11 = 12;
    goto LABEL_7;
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 200);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100114284;
  block[3] = &unk_10051DFE8;
  block[4] = v12;
  dispatch_async(v13, block);
}

_BYTE *sub_100114284(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[240] == 1)
  {
    return [result _startPeriodicContextFetchFromNearbyDevices];
  }

  return result;
}

void sub_100114444(uint64_t a1)
{
  if (*(a1 + 56) != 7)
  {
    if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 144)])
    {
      v2 = *(a1 + 40);
LABEL_4:
      v3 = *(v2 + 136);
      *(v2 + 136) = 0;

      v4 = *(a1 + 40);
      v5 = *(v4 + 144);
      *(v4 + 144) = 0;

      v6 = *(a1 + 40);
      v7 = *(v6 + 152);
      *(v6 + 152) = 0;

      v8 = *(a1 + 40);
      v9 = *(v8 + 112);
      *(v8 + 112) = 0;

      [*(*(a1 + 40) + 120) removeAllObjects];
      v10 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315138;
        v17 = "[ADContextManager requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #hal context snapshot cleared", &v16, 0xCu);
      }

      return;
    }

    if (!*(a1 + 32))
    {
      v2 = *(a1 + 40);
      if (!*(v2 + 144))
      {
        goto LABEL_4;
      }
    }
  }

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 48);
    v13 = v11;
    v14 = [v12 uuid];
    v15 = *(*(a1 + 40) + 144);
    v16 = 136315650;
    v17 = "[ADContextManager requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s #hal ended request has different UUID (%@) than current request (%@). Not clearing context snapshot.", &v16, 0x20u);
  }
}

void sub_1001146C0(uint64_t a1)
{
  if (*(a1 + 48) == 7 || ([*(a1 + 32) uuid], v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v20 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 48);
      v14 = v20;
      v23 = [NSNumber numberWithInteger:v22];
      v25 = 136315650;
      v26 = "[ADContextManager requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = v23;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s #hal Not updating requestDate or currentRequestInfoUUID for requestInfo: %@, origin: %@", &v25, 0x20u);

LABEL_16:
    }
  }

  else
  {
    v3 = [*(a1 + 32) uuid];
    v4 = *(a1 + 40);
    v5 = *(v4 + 144);
    *(v4 + 144) = v3;

    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(*(a1 + 40) + 144);
      v25 = 136315394;
      v26 = "[ADContextManager requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
      v27 = 2112;
      v28 = v24;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s #hal _currentRequestInfoUUID set to %@", &v25, 0x16u);
    }

    mach_absolute_time();
    [*(a1 + 32) timestamp];
    AFMachAbsoluteTimeGetTimeInterval();
    v8 = v7;
    if (v7 > 0.0 && v7 < 5.0)
    {
      v10 = +[NSDate now];
      v11 = [v10 dateByAddingTimeInterval:-v8];
      v12 = *(a1 + 40);
      v13 = *(v12 + 152);
      *(v12 + 152) = v11;

      if (AFIsInternalInstall())
      {
        v14 = objc_alloc_init(NSDateFormatter);
        v15 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
        [v14 setLocale:v15];

        [v14 setLocalizedDateFormatFromTemplate:@"HH:mm:ss.SSS"];
        v16 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(*(a1 + 40) + 152);
          v18 = v16;
          v19 = [v14 stringFromDate:v17];
          v25 = 136315394;
          v26 = "[ADContextManager requestLifecycleObserver:requestWillBeginWithInfo:origin:client:]_block_invoke";
          v27 = 2112;
          v28 = v19;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s #hal _currentRequestDate set to %@", &v25, 0x16u);
        }

        goto LABEL_16;
      }
    }
  }
}

void sub_100114A80(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 184) objectForKey:a1[5]];
  (*(v1 + 16))(v1, v2);
}

void sub_100114C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v32 = a1;
    v4 = objc_alloc_init(NSMutableDictionary);
    v34 = objc_alloc_init(NSMutableDictionary);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = v6;
    v8 = *v39;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        v11 = sub_10001AEC8(v10);
        if (v11)
        {
          v12 = v11;
          v13 = [v10 content];
          v14 = [v13 locationSnapshot];

          v15 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v45 = "[ADContextManager pushContextSnapshotForCurrentRequestWithID:toDevice:]_block_invoke";
            v46 = 2112;
            v47 = v12;
            v48 = 2112;
            v49 = v14;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s #hal Pushing location for IDS: %@ %@", buf, 0x20u);
          }

          v16 = [v10 content];
          v17 = [v16 serializedBackingStore];
          v18 = v4;
LABEL_15:
          [v18 setObject:v17 forKey:v12];

LABEL_16:
          goto LABEL_17;
        }

        v19 = sub_10001AD98(v10);
        if (v19)
        {
          v12 = v19;
          v20 = [v10 content];
          v14 = [v20 locationSnapshot];

          v21 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v45 = "[ADContextManager pushContextSnapshotForCurrentRequestWithID:toDevice:]_block_invoke";
            v46 = 2112;
            v47 = v12;
            v48 = 2112;
            v49 = v14;
            _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s #hal Pushing location for AssistantID: %@ %@", buf, 0x20u);
          }

          v16 = [v10 content];
          v17 = [v16 serializedBackingStore];
          v18 = v34;
          goto LABEL_15;
        }

        v22 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v12 = v22;
          v14 = [v10 info];
          v23 = [v10 content];
          v24 = [v23 deviceInfo];
          *buf = 136315650;
          v45 = "[ADContextManager pushContextSnapshotForCurrentRequestWithID:toDevice:]_block_invoke";
          v46 = 2112;
          v47 = v14;
          v48 = 2112;
          v49 = v24;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s #hal Unable to find IDS device unique identifier or Assistant identifier in %@ %@", buf, 0x20u);

          goto LABEL_16;
        }

LABEL_17:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v25 = [v5 countByEnumeratingWithState:&v38 objects:v50 count:16];
      v7 = v25;
      if (!v25)
      {
LABEL_22:

        v26 = *(v32 + 32);
        v42[0] = @"request_id";
        v42[1] = @"context_snapshot";
        v43[0] = v26;
        v43[1] = v4;
        v42[2] = @"context_snapshot_by_assistant_identifier";
        v43[2] = v34;
        v27 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
        v28 = *(v32 + 40);
        v29 = *(v32 + 48);
        v30 = v28[24];
        v31 = [v28 _contextLinkMessageOptions];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100115100;
        v35[3] = &unk_10051C9A8;
        v36 = *(v32 + 32);
        v37 = *(v32 + 48);
        [v30 sendRequestID:@"com.apple.siri.rapport-link.request.generic" messageType:@"context_snapshot_push" messagePayload:v27 toPeer:v29 options:v31 completion:v35];

        v3 = v33;
        break;
      }
    }
  }
}

void sub_100115100(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 136315650;
      v11 = "[ADContextManager pushContextSnapshotForCurrentRequestWithID:toDevice:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s #hal Error pushing current context snapshot for request %@ to device %@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[ADContextManager pushContextSnapshotForCurrentRequestWithID:toDevice:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal success", &v10, 0xCu);
  }
}

void sub_100115500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100115550(void *a1, uint64_t a2)
{
  [*(*(a1[6] + 8) + 40) cancel];
  if (!a2)
  {
    v4 = a1[4];
    v5 = 1;
    goto LABEL_6;
  }

  if (a2 == -2)
  {
    v4 = a1[4];
    if (!*(v4 + 128))
    {
      v5 = 2;
LABEL_6:
      *(v4 + 128) = v5;
    }
  }

  v6 = *(a1[5] + 16);

  return v6();
}

void sub_1001155D0(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADContextManager getContextSnapshotForCurrentRequestWithCompletion:]_block_invoke_2";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Timed out fetching aggregated context", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invokeWithSignal:-2];
  [*(*(a1 + 32) + 112) removeObject:WeakRetained];
}

id sub_1001156A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 144))
  {
    v5 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      return [*(a1 + 40) invoke];
    }

    *buf = 136315138;
    v12 = "[ADContextManager getContextSnapshotForCurrentRequestWithCompletion:]_block_invoke";
    v6 = "%s #hal current request is nil, skip fetching context";
LABEL_15:
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v6, buf, 0xCu);
    return [*(a1 + 40) invoke];
  }

  if ([*(v2 + 112) count])
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v12 = "[ADContextManager getContextSnapshotForCurrentRequestWithCompletion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #hal queue context snapshot completion", buf, 0xCu);
    }

    return [*(*(a1 + 32) + 112) addObject:*(a1 + 40)];
  }

  if (*(*(a1 + 32) + 136))
  {
    v5 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      return [*(a1 + 40) invoke];
    }

    *buf = 136315138;
    v12 = "[ADContextManager getContextSnapshotForCurrentRequestWithCompletion:]_block_invoke";
    v6 = "%s #hal return existing context snapshot";
    goto LABEL_15;
  }

  v7 = [[NSMutableArray alloc] initWithObjects:{*(a1 + 40), 0}];
  v8 = *(a1 + 32);
  v9 = *(v8 + 112);
  *(v8 + 112) = v7;

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[ADContextManager getContextSnapshotForCurrentRequestWithCompletion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #hal calling _fetchContextSnapshotForCurrentRequest", buf, 0xCu);
  }

  return [*(a1 + 32) _fetchContextSnapshotForCurrentRequest];
}

BOOL sub_1001158F8(id a1, SVDCapability *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SVDCapability *)v4 supportsVoiceTrigger]== 1;

  return v5;
}

uint64_t sub_100115958(void *a1, uint64_t a2)
{
  [*(*(a1[5] + 8) + 40) cancel];
  if (a2 == -2)
  {
    v4 = [AFError errorWithCode:3102];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(a1[4] + 16);

  return v7();
}

id sub_1001159D8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ADContextManager _fetchContextSnapshotForCurrentRequest]_block_invoke_2";
    v7 = 2112;
    v8 = v4;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s #hal Timed out force fetching from %@", &v5, 0x16u);
  }

  return [*(a1 + 40) invokeWithSignal:-2];
}

void sub_100115AA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v28 = "[ADContextManager _fetchContextSnapshotForCurrentRequest]_block_invoke";
    v29 = 2112;
    v30 = v5;
    v31 = 2112;
    v32 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal force fetched: %@, error: %@", buf, 0x20u);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_15:
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    goto LABEL_16;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_3:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = objc_alloc_init(NSMutableIndexSet);
        v14 = *(a1 + 32);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100115D74;
        v20[3] = &unk_100511EF8;
        v20[4] = v12;
        v15 = v13;
        v21 = v15;
        [v14 enumerateObjectsUsingBlock:v20];
        if ([v15 count])
        {
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100115E20;
          v17[3] = &unk_100511F20;
          v18 = *(a1 + 32);
          v19 = v12;
          [v15 enumerateIndexesUsingBlock:v17];
        }

        else
        {
          [*(a1 + 32) addObject:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  *(*(*(a1 + 48) + 8) + 24) = [obj count];
LABEL_16:
  [*(a1 + 40) invoke];
}

void sub_100115D74(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 info];
  v8 = [v6 info];

  LODWORD(v6) = sub_10001A834(v7, v8);
  if (v6)
  {
    v9 = *(a1 + 40);

    [v9 addIndex:a3];
  }
}

void sub_100115E30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 136);
  if (v2 == *(a1 + 40))
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADContextManager _fetchContextSnapshotForCurrentRequest]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s #hal context snapshot cleared on timeout", &v5, 0xCu);
      v1 = *(a1 + 32);
      v2 = *(v1 + 136);
    }

    *(v1 + 136) = 0;
  }
}

void sub_1001161F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 200);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100116318;
  block[3] = &unk_10051D2A0;
  v5 = *(a1 + 64);
  v12 = v3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

void sub_100116318(uint64_t a1)
{
  if ((*(*(a1 + 64) + 16))())
  {
    [*(a1 + 40) addObject:*(a1 + 48)];
  }

  v2 = *(a1 + 56);

  dispatch_group_leave(v2);
}

void sub_100116608(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstObject];
  if ((*(a1 + 56) & 1) != 0 || ([*(*(a1 + 32) + 16) localPeerInfo], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "info"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, !v7))
  {
    v14 = *(*(a1 + 32) + 24);
    v15 = sub_100015560(v3);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100116B08;
    v16[3] = &unk_10051CE90;
    v17 = v3;
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    [v14 getDeviceProximityRelativeToLocalDeviceWithDeviceContexts:v15 includesAllReachableDevices:0 completion:v16];

    v8 = v17;
  }

  else
  {
    v8 = [v4 content];
    v9 = *(a1 + 40);
    v10 = +[NSDate date];
    v11 = [v8 af_serviceDeviceContextForKeys:v9 excludeContextExpiredBefore:v10 proximity:4000];

    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "[ADContextManager getDeviceContextsForKeys:forForeignRequestID:includesNearbyDevices:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s #hal Returning service context for local device", buf, 0xCu);
    }

    if (v11)
    {
      v20 = v11;
      v13 = [NSArray arrayWithObjects:&v20 count:1];
    }

    else
    {
      v13 = &__NSArray0__struct;
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10011687C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 200);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100116A18;
  block[3] = &unk_10051E088;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_100116934(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AFPeerContentTuple alloc];
  v5 = [*(*(a1 + 32) + 16) localPeerInfo];
  v6 = [v4 initWithInfo:v5 content:v3];

  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100116A18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  if (v3)
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[ADContextManager getDeviceContextsForKeys:forForeignRequestID:includesNearbyDevices:completion:]_block_invoke_3";
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s #hal Updating contextSnapshot as read for requestId: %@", &v6, 0x16u);
      v2 = *(a1 + 32);
      v3 = *(v2 + 144);
    }

    [*(v2 + 120) addObject:v3];
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_100116B08(uint64_t a1, void *a2)
{
  v3 = a2;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10010CAC0;
  v16[4] = sub_10010CAD0;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_10010CAC0;
  v14[4] = sub_10010CAD0;
  v15 = 0;
  v4 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100116CA0;
  v9[3] = &unk_100511CE0;
  v12 = v16;
  v5 = v3;
  v10 = v5;
  v13 = v14;
  v11 = *(a1 + 40);
  v6 = [v4 af_lenientMappedArray:v9];
  (*(*(a1 + 48) + 16))(*(a1 + 48), v6, v7, v8);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
}

void sub_100116C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_100116CA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 content];
  v5 = [v4 fromLocalDevice];
  v6 = v5;
  v7 = &off_100533908;
  if (v5)
  {
    v8 = &off_100533908;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v6)
  {
    goto LABEL_32;
  }

  v10 = sub_10001AD98(v3);
  if (v10)
  {
    v11 = v10;
    v12 = *(*(*(a1 + 48) + 8) + 40);
    if (!v12)
    {
      v13 = sub_1002BC5A4(*(a1 + 32));
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v12 = *(*(*(a1 + 48) + 8) + 40);
    }

    v7 = [v12 objectForKey:v11];

    if (v7)
    {
      goto LABEL_32;
    }
  }

  v16 = sub_10001AEC8(v3);
  if (!v16)
  {
    goto LABEL_39;
  }

  v17 = v16;
  v18 = *(*(*(a1 + 56) + 8) + 40);
  if (!v18)
  {
    v19 = *(a1 + 32);
    v20 = v19;
    if (v19)
    {
      if ([v19 count])
      {
        v57 = 0;
        v58 = _NSConcreteStackBlock;
        v59 = 3221225472;
        v60 = sub_1002BC510;
        v61 = &unk_100519C18;
        v62 = 1;
        v21 = AFPeerContentTupleGetContentMapFromArray();
        v52 = 0;
        v22 = [v52 count];
        if (v22)
        {
          v23 = v22;
          v50 = v21;
          v51 = v20;
          v24 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            v46 = v24;
            *v69 = 136315650;
            v70 = "ADDeviceProximityGetMapByIDSDeviceUniqueIdentifierFromTuples";
            v71 = 2048;
            v72 = v23;
            v73 = 2048;
            v74 = [v20 count];
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%s Rejected %tu/%tu device context tuples.", v69, 0x20u);
          }

          v21 = v50;
          if (AFIsInternalInstall())
          {
            v47 = v17;
            v48 = a1;
            v49 = v3;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v25 = v52;
            v26 = [v25 countByEnumeratingWithState:&v53 objects:v69 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v54;
              do
              {
                for (i = 0; i != v27; i = i + 1)
                {
                  if (*v54 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = AFSiriLogContextDaemon;
                  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
                  {
                    v31 = *(*(&v53 + 1) + 8 * i);
                    v32 = v30;
                    v33 = [v31 content];
                    v34 = [v31 info];
                    v35 = AFPeerInfoGetCompactDescription();
                    *buf = 136315650;
                    v64 = "ADDeviceProximityGetMapByIDSDeviceUniqueIdentifierFromTuples";
                    v65 = 2112;
                    v66 = v33;
                    v67 = 2112;
                    v68 = v35;
                    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s Rejected %@ from %@.", buf, 0x20u);
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v53 objects:v69 count:16];
              }

              while (v27);
            }

            a1 = v48;
            v3 = v49;
            v17 = v47;
            v21 = v50;
            v20 = v51;
          }
        }
      }

      else
      {
        v21 = &__NSDictionary0__struct;
      }
    }

    else
    {
      v21 = 0;
    }

    v36 = *(*(a1 + 56) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v21;

    v18 = *(*(*(a1 + 56) + 8) + 40);
  }

  v7 = [v18 objectForKey:{v17, v47, v48, v49}];

  if (v7)
  {
LABEL_32:
    v38 = [v7 integerValue];
  }

  else
  {
LABEL_39:
    v38 = 0;
  }

  v39 = *(a1 + 40);
  v40 = +[NSDate date];
  v41 = [v4 af_serviceDeviceContextForKeys:v39 excludeContextExpiredBefore:v40 proximity:v38];

  if (v41)
  {
    v42 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v43 = v42;
      [v41 proximity];
      v44 = AFDeviceProximityGetName();
      *v69 = 136315650;
      v70 = "[ADContextManager getDeviceContextsForKeys:forForeignRequestID:includesNearbyDevices:completion:]_block_invoke";
      v71 = 2112;
      v72 = v44;
      v73 = 2112;
      v74 = v41;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s #hal Add device context with proximity: %@, %@", v69, 0x20u);
    }
  }

  return v41;
}

void sub_100117430(uint64_t a1)
{
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_10010CAC0;
  v61 = sub_10010CAD0;
  v62 = 0;
  v2 = objc_alloc_init(NSMutableArray);
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = sub_10010CAC0;
  v55[4] = sub_10010CAD0;
  v56 = 0;
  v3 = [AFSafetyBlock alloc];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100117A40;
  v48[3] = &unk_100514260;
  v53 = &v57;
  v49 = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 40);
  v50 = v4;
  v51 = v5;
  v54 = v55;
  v52 = *(a1 + 64);
  v6 = [v3 initWithBlock:v48];
  if (*(a1 + 80) > 0.0)
  {
    v7 = [AFWatchdogTimer alloc];
    v8 = *(a1 + 80);
    v9 = *(*(a1 + 40) + 200);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100117C70;
    v44[3] = &unk_10051DB68;
    v45 = *(a1 + 32);
    v10 = v6;
    v11 = *(a1 + 40);
    v46 = v10;
    v47 = v11;
    v12 = [v7 initWithTimeoutInterval:v9 onQueue:v44 timeoutHandler:v8];
    v13 = v58[5];
    v58[5] = v12;

    [v58[5] start];
  }

  v14 = dispatch_group_create();
  v15 = v14;
  if (*(*(a1 + 40) + 248))
  {
    dispatch_group_enter(v14);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(v17 + 248);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100117DB4;
    v39[3] = &unk_100511C90;
    v39[4] = v17;
    v40 = v16;
    v41 = v4;
    v43 = *(a1 + 72);
    v42 = v15;
    [v18 getLocalContextWithPrivacyClass:10 completion:v39];
  }

  else
  {
    v19 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      *buf = 136315394;
      v64 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]_block_invoke";
      v65 = 2112;
      v66 = v31;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s #hal Skip local fetch, nil context store (%@)", buf, 0x16u);
    }
  }

  if (*(*(a1 + 40) + 256))
  {
    dispatch_group_enter(v15);
    if (AFSupportsHALOnDemandRapportConnection())
    {
      v20 = *(*(a1 + 40) + 192);
      if (!v20 || [v20 isInvalidated])
      {
        v21 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 32);
          *buf = 136315394;
          v64 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]_block_invoke";
          v65 = 2112;
          v66 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s #hal Resetting #on-demand connection for fetching remote contexts (%@)", buf, 0x16u);
        }

        [*(a1 + 40) _resetContextLinkAndReconnectNow:1];
      }
    }

    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = *(v23 + 256);
    v26 = *(a1 + 56);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100117EB0;
    v34[3] = &unk_100513F90;
    v34[4] = v23;
    v35 = *(a1 + 32);
    v38 = v55;
    v36 = v4;
    v37 = v15;
    [v25 getContextSnapshotIncludingKeys:v24 excludingMandatoryKeys:v26 completion:v34];
  }

  else
  {
    v27 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v28 = *(a1 + 32);
      *buf = 136315394;
      v64 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]_block_invoke";
      v65 = 2112;
      v66 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s #hal Skip remote fetch, nil context store (%@)", buf, 0x16u);
    }
  }

  v29 = *(*(a1 + 40) + 200);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100117FD8;
  v32[3] = &unk_10051DFE8;
  v33 = v6;
  v30 = v6;
  dispatch_group_notify(v15, v29, v32);

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(&v57, 8);
}

void sub_100117A40(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 64) + 8) + 40) cancel];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v20 = 136315650;
    v21 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]_block_invoke_2";
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s #hal safeCompletion fetchDebugID:%@, aggregatedDeviceContextTuples (%@)", &v20, 0x20u);
  }

  kdebug_trace();
  v7 = [*(*(a1 + 48) + 192) configuration];
  v8 = [v7 connectionOptions];
  v9 = [v8 usesOnDemandConnection];

  if (v9 == 2)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = *(*(a1 + 48) + 192);
      v20 = 136315650;
      v21 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]_block_invoke";
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s #hal  invalidating #on-demand rapport link in safeCompletion for (%@): %@", &v20, 0x20u);
    }

    [*(*(a1 + 48) + 192) invalidate];
    v13 = *(a1 + 48);
    v14 = *(v13 + 192);
    *(v13 + 192) = 0;
  }

  if (a2 == -2)
  {
    v15 = [AFError errorWithCode:3102];
    v16 = *(*(a1 + 72) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  v18 = *(a1 + 56);
  v19 = sub_10000E10C(*(a1 + 40));
  (*(v18 + 16))(v18, v19, *(*(*(a1 + 72) + 8) + 40));
}

id sub_100117C70(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s #hal timed out (%@)", &v6, 0x16u);
  }

  [*(a1 + 40) invokeWithSignal:-2];
  if (AFSupportsHALOnDemandRapportConnection())
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s #hal #on-demand invalidate on-demand connection on exit.", &v6, 0xCu);
    }

    [*(*(a1 + 48) + 192) invalidate];
  }

  return [*(a1 + 40) invoke];
}

void sub_100117DB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 200);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001183C8;
  v6[3] = &unk_1005183C8;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v12 = *(a1 + 64);
  v11 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_100117EB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 200);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100117FE0;
  v15[3] = &unk_100514EA8;
  v16 = v6;
  v17 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  v10 = *(a1 + 48);
  *&v11 = *(a1 + 56);
  *(&v11 + 1) = v9;
  *&v12 = v8;
  *(&v12 + 1) = v10;
  v18 = v12;
  v19 = v11;
  v13 = v5;
  v14 = v6;
  dispatch_async(v7, v15);
}

void sub_100117FE0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  if (v2 || (v8 = *(a1 + 40)) == 0)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v4 = *(v1 + 48);
      *buf = 136315650;
      v39 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]_block_invoke_2";
      v40 = 2112;
      v41 = v4;
      v42 = 2112;
      v43 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s #hal Error fetching remote context (%@): %@", buf, 0x20u);
      v2 = *(v1 + 32);
    }

    v5 = *(*(v1 + 72) + 8);
    v6 = v2;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [v8 count];
      v12 = *(v1 + 48);
      *buf = 136315650;
      v39 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]_block_invoke";
      v40 = 2048;
      v41 = v11;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s #hal Fetched %ld remote contexts (%@)", buf, 0x20u);
    }

    v13 = +[ADDeviceCircleManager sharedInstance];
    v7 = [v13 localPeerInfo];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = *(v1 + 40);
    v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v14)
    {
      v16 = v14;
      v17 = *v34;
      *&v15 = 136315650;
      v31 = v15;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          v20 = [v19 info];
          if (sub_10001A834(v7, v20))
          {

LABEL_16:
            v25 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v26 = *(v1 + 48);
              *buf = v31;
              v39 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]_block_invoke";
              v40 = 2112;
              v41 = v26;
              v42 = 2112;
              v43 = v19;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s #hal Skip remote context (%@) because it is from local. %@", buf, 0x20u);
            }

            continue;
          }

          v21 = [v19 content];
          [v21 deviceInfo];
          v23 = v22 = v1;
          v24 = sub_10001A834(v7, v23);

          v1 = v22;
          if (v24)
          {
            goto LABEL_16;
          }

          v27 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            v28 = *(v22 + 48);
            v29 = v27;
            v30 = [v19 content];
            *buf = v31;
            v39 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]_block_invoke";
            v40 = 2112;
            v41 = v28;
            v42 = 2112;
            v43 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s #hal Remote context (%@): %@", buf, 0x20u);

            v1 = v22;
          }

          [*(v1 + 56) addObject:v19];
        }

        v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }
  }

  dispatch_group_leave(*(v1 + 64));
}

void sub_1001183C8(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 136315650;
    v9 = "[ADContextManager getContextIncludingKeys:excludingMandatoryKeys:timeOut:localContextCompletion:completion:]_block_invoke_2";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s #hal Local context (%@): %@", &v8, 0x20u);
  }

  v5 = [*(*(a1 + 48) + 16) localPeerInfo];
  v6 = [[AFPeerContentTuple alloc] initWithInfo:v5 content:*(a1 + 40)];
  [*(a1 + 56) addObject:v6];
  v7 = *(a1 + 72);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }

  dispatch_group_leave(*(a1 + 64));
}

id sub_100118C84()
{
  if (qword_100590180 != -1)
  {
    dispatch_once(&qword_100590180, &stru_100512408);
  }

  v1 = qword_100590188;

  return v1;
}

void sub_100118CD8(id a1)
{
  if (!qword_100590190)
  {
    qword_100590190 = dlopen("/System/Library/PrivateFrameworks/VisualVoicemail.framework/VisualVoicemail", 2);
    if (!qword_100590190)
    {
      __assert_rtn("VisualVoicemailLibrary", "ADContextManager.m", 185, "frameworkLibrary");
    }
  }

  qword_100590188 = objc_getClass("VMVoicemailManager");
  if (!qword_100590188)
  {
    __assert_rtn("initVMVoicemailManager_block_invoke", "ADContextManager.m", 186, "classVMVoicemailManager");
  }

  off_10058B430 = sub_100118D84;
}

void sub_10011912C(uint64_t a1)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v1)
  {
    v3 = v1;
    v4 = *v22;
    *&v2 = 136315650;
    v18 = v2;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v7 = [v6 sectionID];
        [v7 isEqualToString:@"com.apple.reminders"];
        v8 = [v6 saNotificationObject];
        v9 = [v8 type];
        v10 = [v8 date];
        v11 = v10;
        v12 = AFSiriLogContextDaemon;
        if (v8)
        {
          v13 = v9 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13 || v10 == 0)
        {
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v26 = "[ADContextManager getAlertContextWithBulletins:externalAlarmSnapshot:timerSnapshot:nlAlertContextCompletion:fullAlertContextCompletion:]_block_invoke";
            v27 = 2112;
            v28 = v9;
            v29 = 2114;
            v30 = v11;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Skipped sending invalid notification. display name %@, date %{public}@", buf, 0x20u);
          }
        }

        else
        {
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v26 = "[ADContextManager getAlertContextWithBulletins:externalAlarmSnapshot:timerSnapshot:nlAlertContextCompletion:fullAlertContextCompletion:]_block_invoke";
            v27 = 2112;
            v28 = v6;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Sending notification %@", buf, 0x16u);
          }

          v16 = *(a1 + 40);
          v17 = [v8 identifier];
          [v16 setObject:v8 forKey:v17];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v3);
  }

  dispatch_group_leave(*(a1 + 48));
  dispatch_group_leave(*(a1 + 56));
}

void sub_1001193B4(uint64_t a1)
{
  v2 = [*(a1 + 32) alarmsByID];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001197A4;
  v31[3] = &unk_100511C40;
  v3 = *(a1 + 48);
  v31[4] = *(a1 + 40);
  v32 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v31];

  v4 = [*(a1 + 56) timersByID];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1001198B0;
  v29[3] = &unk_100511C68;
  v29[4] = *(a1 + 40);
  v30 = *(a1 + 64);
  [v4 enumerateKeysAndObjectsUsingBlock:v29];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [*(a1 + 48) allValues];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = *(a1 + 72);
        v12 = [v10 identifier];
        [v11 setObject:v10 forKey:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [*(a1 + 64) allValues];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        v19 = *(a1 + 72);
        v20 = [v18 identifier];
        [v19 setObject:v18 forKey:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v15);
  }

  dispatch_group_leave(*(a1 + 80));
  dispatch_group_leave(*(a1 + 88));
}

void sub_10011969C(uint64_t a1)
{
  v4 = objc_alloc_init(SASetNLAlertContext);
  v2 = [*(a1 + 32) allValues];
  [v4 setContext:v2];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void sub_100119720(uint64_t a1)
{
  v4 = objc_alloc_init(SASetAlertContext);
  v2 = [*(a1 + 32) allValues];
  [v4 setContext:v2];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void sub_1001197A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADContextManager getAlertContextWithBulletins:externalAlarmSnapshot:timerSnapshot:nlAlertContextCompletion:fullAlertContextCompletion:]_block_invoke_2";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s NLAlertContext [+] %@", &v9, 0x16u);
  }

  v8 = [*(a1 + 32) _alarmAceObjectFromAlarm:v6 withProximity:4000 inDeviceContext:0];
  [*(a1 + 40) setObject:v8 forKey:v5];
}

void sub_1001198B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[ADContextManager getAlertContextWithBulletins:externalAlarmSnapshot:timerSnapshot:nlAlertContextCompletion:fullAlertContextCompletion:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s NLAlertContext [+] %@", &v9, 0x16u);
  }

  v8 = [*(a1 + 32) _timerAceObjectFromTimer:v6 withProximity:4000 inDeviceContext:0];
  [*(a1 + 40) setObject:v8 forKey:v5];
}

void sub_1001199BC(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("ADAlertContextQueue", v3);
  v2 = qword_100590170;
  qword_100590170 = v1;
}

void sub_100119C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100119C38(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 && (v10 = AFSiriLogContextDaemon, os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR)))
  {
    *buf = 136315394;
    v23 = "[ADContextManager _getCurrentUserActivityOnQueue:completion:]_block_invoke";
    v24 = 2114;
    v25 = v9;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Error getting current user activity uuid %{public}@", buf, 0x16u);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else if (!v7)
  {
    goto LABEL_7;
  }

  dispatch_group_enter(*(a1 + 32));
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[ADContextManager _getCurrentUserActivityOnQueue:completion:]_block_invoke";
    v24 = 2112;
    v25 = v8;
    v26 = 2048;
    v27 = 0x4004000000000000;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Fetching NSUserActivity for %@ with %0.1g second timeout", buf, 0x20u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100119E9C;
  v17[3] = &unk_100511BC8;
  v18 = v8;
  v12 = v7;
  v13 = *(a1 + 48);
  v19 = v12;
  v21 = v13;
  v16 = *(a1 + 32);
  v14 = v16;
  v20 = v16;
  v15 = [NSUserActivity _fetchUserActivityWithUUID:v12 intervalToWaitForDocumentSynchronizationToComplete:v17 completionHandler:2.5];

LABEL_7:
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_100119E6C(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  }

  return result;
}

void sub_100119E9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    *buf = 136315394;
    v23 = "[ADContextManager _getCurrentUserActivityOnQueue:completion:]_block_invoke";
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Got NSUserActivity for %@", buf, 0x16u);
  }

  if (v6 && (v9 = AFSiriLogContextDaemon, os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR)))
  {
    *buf = 136315394;
    v23 = "[ADContextManager _getCurrentUserActivityOnQueue:completion:]_block_invoke";
    v24 = 2114;
    v25 = v6;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Error getting current user activity from uuid %{public}@", buf, 0x16u);
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else if (!v5)
  {
    goto LABEL_14;
  }

  v10 = objc_alloc_init(SAUserActivity);
  v11 = [*(a1 + 40) UUIDString];
  [v10 setInternalGUID:v11];

  [v10 setIsEligibleForReminders:{objc_msgSend(v5, "_isEligibleForUserActivityReminders")}];
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [v10 isEligibleForReminders];
    v15 = @"NO";
    v23 = "[ADContextManager _getCurrentUserActivityOnQueue:completion:]_block_invoke";
    *buf = 136315650;
    v24 = 2112;
    v25 = v5;
    if (v14)
    {
      v15 = @"YES";
    }

    v26 = 2112;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s User activity (%@) isEligibleForReminders: %@", buf, 0x20u);
  }

  if (off_10058B428())
  {
    v16 = [v5 externalMediaContentIdentifier];

    if (v16)
    {
      v21 = SAUserActivityEligibilityMediaContextValue;
      v17 = [NSArray arrayWithObjects:&v21 count:1];
      [v10 setEligibileFunctions:v17];
    }
  }

  [v10 setIsEligibleForDirections:{objc_msgSend(v5, "hasLocationData")}];
  [v10 setIsEligibleForAppPunchout:{objc_msgSend(v5, "hasPhoneNumber")}];
  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v10;
  v20 = v10;

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
LABEL_14:
  dispatch_group_leave(*(a1 + 48));
}

id sub_10011A18C()
{
  if (qword_100590158 != -1)
  {
    dispatch_once(&qword_100590158, &stru_1005123C8);
  }

  v1 = qword_100590160;

  return v1;
}

void sub_10011A1E0(id a1)
{
  if (!qword_100590168)
  {
    qword_100590168 = dlopen("/System/Library/Frameworks/MediaPlayer.framework/MediaPlayer", 2);
    if (!qword_100590168)
    {
      __assert_rtn("MediaPlayerLibrary", "ADContextManager.m", 126, "frameworkLibrary");
    }
  }

  qword_100590160 = objc_getClass("NSUserActivity");
  if (!qword_100590160)
  {
    __assert_rtn("initNSUserActivity_block_invoke", "ADContextManager.m", 127, "classNSUserActivity");
  }

  off_10058B428 = sub_10011A28C;
}

void sub_10011A3D4(uint64_t a1)
{
  v44 = objc_alloc_init(NSMutableDictionary);
  v43 = objc_alloc_init(NSMutableDictionary);
  v38 = a1;
  group = dispatch_group_create();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v62;
    v40 = _AFContextManagerServerMessageCollateContexts;
    v41 = _AFContextManagerCollateContextsReplyKeyContexts;
    v42 = *v62;
    do
    {
      v5 = 0;
      v45 = v3;
      do
      {
        if (*v62 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v61 + 1) + 8 * v5);
        v7 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          v8 = v7;
          v9 = [v6 identifier];
          *buf = 136315394;
          v67 = "[ADContextManager getAppContextForDeviceState:applicationInfos:completion:]_block_invoke";
          v68 = 2112;
          v69 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ApplicationInfo identifier: %@", buf, 0x16u);
        }

        v10 = [v6 identifier];
        v11 = [v6 pid];
        if ([v10 length])
        {
          v12 = v11 < 1;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v13 = objc_alloc_init(NSMutableArray);
          v14 = objc_alloc_init(NSMutableArray);
          v49 = v10;
          v15 = v10;
          if (!v15)
          {
            goto LABEL_22;
          }

          v16 = qword_100590150;
          if (!qword_100590150)
          {
            v17 = [[NSSet alloc] initWithArray:&off_100533668];
            v18 = qword_100590150;
            qword_100590150 = v17;

            v16 = qword_100590150;
          }

          v19 = [v16 containsObject:v15];

          if (v19)
          {
            v20 = AFContextProviderNameForBundleId();
            v21 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v67 = "[ADContextManager getAppContextForDeviceState:applicationInfos:completion:]_block_invoke";
              v68 = 2112;
              v69 = v20;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Attempting AFContextProvider lookup on %@", buf, 0x16u);
            }

            v22 = [CPDistributedMessagingCenter pidRestrictedCenterNamed:v20];
            [v22 setTargetPID:v11];

            if (([v22 doesServerExist] & 1) == 0)
            {
              v23 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v67 = "[ADContextManager getAppContextForDeviceState:applicationInfos:completion:]_block_invoke";
                v68 = 2112;
                v69 = v15;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s No AFContextProvider server for %@", buf, 0x16u);
              }

              v24 = 0;
LABEL_27:
              v47 = v24;
              v48 = v22;
              v27 = [v24 objectForKey:v41];
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v28 = [v27 countByEnumeratingWithState:&v57 objects:v65 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v58;
                do
                {
                  for (i = 0; i != v29; i = i + 1)
                  {
                    if (*v58 != v30)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v32 = *(*(&v57 + 1) + 8 * i);
                    [v13 addObjectsFromArray:v32];
                    v33 = [v32 af_lenientMappedArray:&stru_100511B50];
                    [v14 addObjectsFromArray:v33];
                  }

                  v29 = [v27 countByEnumeratingWithState:&v57 objects:v65 count:16];
                }

                while (v29);
              }

              [v44 setObject:v13 forKey:v15];
              v34 = [[AFApplicationContext alloc] initWithAssociatedBundleIdentifier:v15 bulletin:0 aceContext:0 contextDictionary:0 aceContexts:v14];
              [v43 setObject:v34 forKey:v15];

              v3 = v45;
              v4 = v42;
              v10 = v49;
              goto LABEL_35;
            }
          }

          else
          {
LABEL_22:
            v25 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v67 = "[ADContextManager getAppContextForDeviceState:applicationInfos:completion:]_block_invoke";
              v68 = 2112;
              v69 = v15;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s Skipping AFContextProvider lookup because %@ is not allow-listed", buf, 0x16u);
            }

            v22 = 0;
            v24 = 0;
            if (![0 doesServerExist])
            {
              goto LABEL_27;
            }
          }

          v24 = [v22 sendMessageAndReceiveReplyName:v40 userInfo:0];
          v26 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v67 = "[ADContextManager getAppContextForDeviceState:applicationInfos:completion:]_block_invoke";
            v68 = 2112;
            v69 = v24;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s Reply context from remote center: %@", buf, 0x16u);
          }

          goto LABEL_27;
        }

LABEL_35:

        v5 = v5 + 1;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v3);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011AA60;
  block[3] = &unk_1005183C8;
  v50 = *(v38 + 40);
  v35 = v50.i64[0];
  v52 = vextq_s8(v50, v50, 8uLL);
  v53 = v44;
  v54 = v43;
  v55 = *(v38 + 32);
  v56 = *(v38 + 56);
  v36 = v43;
  v37 = v44;
  dispatch_group_notify(group, v35, block);
}

void sub_10011AA60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011AB3C;
  v6[3] = &unk_100511BA0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 72);
  [v2 _getCurrentUserActivityOnQueue:v3 completion:v6];
}

void sub_10011AB3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v41 = "[ADContextManager getAppContextForDeviceState:applicationInfos:completion:]_block_invoke_3";
    v42 = 2112;
    v43 = v5;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Got activity for app context %@ %@", buf, 0x20u);
  }

  if (v5 && v6)
  {
    v8 = [*(a1 + 32) objectForKey:v6];
    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableArray);
      [*(a1 + 32) setObject:v8 forKey:v6];
    }

    v9 = [v5 dictionary];
    [v8 addObject:v9];

    v10 = [*(a1 + 40) objectForKey:v6];
    if (v10)
    {
      v11 = v10;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10011AF3C;
      v35[3] = &unk_100511B78;
      v36 = v10;
      v37 = v5;
      v12 = [v11 mutatedCopyWithMutator:v35];

      v13 = v36;
    }

    else
    {
      v14 = [AFApplicationContext alloc];
      v39 = v5;
      v13 = [NSArray arrayWithObjects:&v39 count:1];
      v12 = [v14 initWithAssociatedBundleIdentifier:v6 bulletin:0 aceContext:0 contextDictionary:0 aceContexts:v13];
    }

    [*(a1 + 40) setObject:v12 forKey:v6];
  }

  v27 = v6;
  v28 = v5;
  v15 = objc_alloc_init(NSMutableArray);
  v29 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 48);
  v16 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = [*(*(&v31 + 1) + 8 * i) identifier];
        if (v20)
        {
          v21 = [*(a1 + 32) objectForKey:v20];
          v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v21, "count") + 1}];
          v23 = [*(a1 + 56) _appInfoWithBundleID:v20];
          v24 = [v23 dictionary];
          [v22 addObject:v24];

          [v22 addObjectsFromArray:v21];
          [v15 addObject:v22];
          v25 = [*(a1 + 40) objectForKey:v20];
          if (v25)
          {
            [v29 addObject:v25];
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v17);
  }

  v26 = *(a1 + 64);
  if (v26)
  {
    (*(v26 + 16))(v26, v15, v29);
  }
}

void sub_10011AF3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 aceContexts];
  v5 = [v6 arrayByAddingObject:*(a1 + 40)];
  [v4 setAceContexts:v5];
}

void sub_10011B830(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011BA68;
  v7[3] = &unk_100511AB0;
  v7[4] = *(a1 + 32);
  v4 = [ADRapportLinkDiscoveryOptions newWithBuilder:v7];
  [v3 setDiscoveryOptions:v4];

  if (*(a1 + 40) == 1)
  {
    v5 = [ADRapportLinkConnectionOptions newWithBuilder:&stru_100511AD0];
    [v3 setConnectionOptions:v5];

    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v9 = "[ADContextManager _configuredContextLink]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s #hal #on-demand connectionOptions: %@", buf, 0x16u);
    }
  }
}

void sub_10011B9A0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[ADContextManager _configuredContextLink]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s companion link activation error: %@", &v4, 0x16u);
    }
  }
}

void sub_10011BA68(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setIncludesHome:2];
  [v3 setIncludesFamily:0];
  [v3 setIncludesRemoraDevices:*(a1 + 32)];
}

void sub_10011C104(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 32);
  v5 = v4[25];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011C3D0;
  v6[3] = &unk_10051CBD8;
  v7 = v4;
  v8 = a3;
  dispatch_async(v5, v6);
}

void sub_10011C198(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADContextManager _initWithDelegate:deviceCircleManager:deviceProximityManager:]_block_invoke_3";
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

void sub_10011C2B4(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADContextManager _initWithDelegate:deviceCircleManager:deviceProximityManager:]_block_invoke";
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

id sub_10011C3D0(uint64_t a1)
{
  result = [*(a1 + 32) _setCollectingContext:*(a1 + 40)];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _startPeriodicContextFetchFromNearbyDevices];
  }

  return result;
}

void sub_10011C428(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("assistantd_current_home", v1);
  v3 = qword_100590140;
  qword_100590140 = v2;

  if (dword_10058B440 == -1)
  {
    out_token = -1;
    if (notify_register_dispatch("com.apple.homed.current-home.changed", &out_token, qword_100590140, &stru_100512228))
    {
      v4 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v7 = "ADObserveCurrentHomeKitHomeChanges_block_invoke_2";
        v8 = 2080;
        v9 = "com.apple.homed.current-home.changed";
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Could not register for %s notification", buf, 0x16u);
      }
    }

    else
    {
      dword_10058B440 = out_token;
    }
  }

  dispatch_async(qword_100590140, &stru_100512268);
}

void sub_10011C570(id a1)
{
  v3 = sub_10011C5C0();
  v1 = [v3 copy];
  v2 = qword_100590138;
  qword_100590138 = v1;
}

id sub_10011C5C0()
{
  v0 = +[HMClientConnection siriCurrentHome];
  v1 = [v0 currentHomeIdentifier];

  v2 = [NSURL URLWithString:v1];

  return v2;
}

void sub_10011C630(id a1, int a2)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "ADObserveCurrentHomeKitHomeChanges_block_invoke_2";
    v9 = 2080;
    v10 = "com.apple.homed.current-home.changed";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got %s notification", &v7, 0x16u);
  }

  v3 = qword_100590138;
  v4 = sub_10011C5C0();
  v5 = [v4 copy];

  if (v3 | v5 && ([v3 isEqual:v5] & 1) == 0)
  {
    objc_storeStrong(&qword_100590138, v5);
    v6 = dispatch_get_global_queue(9, 0);
    dispatch_async(v6, &stru_100512248);
  }
}

void sub_10011C770(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"ADCurrentHomeKitHomeChanged" object:0];
}

uint64_t sub_10011CA5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = sub_1000090A4(*(a1 + 40), a2);
  [v4 logEventWithType:v3 context:v5];

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

uint64_t sub_10011CC98(uint64_t a1)
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 allowHeadGestureInjection];

  if ((v3 & 1) == 0)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[AFSiriHeadphonesMonitor mockHeadGesture:schedule:withCompletion:]_block_invoke";
      v16 = 2112;
      v17 = @"🧪 Head gesture injection is not allowed, execute as a non-root user: defaults write com.apple.assistant Allow Head Gesture Injection -BOOL true && killall -9 assistantd";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %@", &v14, 0x16u);
    }

    v9 = *(*(a1 + 40) + 16);
    return v9();
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  if (!v5)
  {
    if (*(a1 + 56) == 1)
    {
      *(v4 + 152) = *(a1 + 48);
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v14 = 136315394;
        v15 = "[AFSiriHeadphonesMonitor mockHeadGesture:schedule:withCompletion:]_block_invoke";
        v16 = 2112;
        v17 = @"🧪 Scheduled head gesture";
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s %@", &v14, 0x16u);
      }

      v9 = *(*(a1 + 40) + 16);
    }

    else
    {
      v11 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "[AFSiriHeadphonesMonitor mockHeadGesture:schedule:withCompletion:]_block_invoke";
        v16 = 2112;
        v17 = @"🧪 Head gesture injection is allowed but no handler is registered yet, use the schedule argument to wait for handler registration to complete";
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s %@", &v14, 0x16u);
      }

      v9 = *(*(a1 + 40) + 16);
    }

    return v9();
  }

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v12 = v6;
    v13 = AFBluetoothHeadGestureTypeGetName();
    v14 = 136315394;
    v15 = "[AFSiriHeadphonesMonitor mockHeadGesture:schedule:withCompletion:]_block_invoke";
    v16 = 2112;
    v17 = v13;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s 🧪 Mocking gesture: %@", &v14, 0x16u);

    v5 = *(*(a1 + 32) + 144);
  }

  return (*(v5 + 16))(v5, *(a1 + 48), *(a1 + 56), *(a1 + 40));
}

void sub_10011D020(uint64_t a1)
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 allowHeadGestureInjection];

  if (v3)
  {
    v4 = objc_retainBlock(*(a1 + 40));
    v5 = *(a1 + 32);
    v6 = *(v5 + 144);
    *(v5 + 144) = v4;

    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(*(a1 + 32) + 144);
      v12 = v7;
      v13 = objc_retainBlock(v11);
      v17 = 136315394;
      v18 = "[AFSiriHeadphonesMonitor registerInternalGestureTestingHandler:]_block_invoke";
      v19 = 2112;
      v20 = v13;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s 🧪 Registered internal gesture testing handler: %@", &v17, 0x16u);
    }

    v8 = *(a1 + 32);
    if (*(v8 + 152))
    {
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(v8 + 144);
        v15 = v9;
        v16 = objc_retainBlock(v14);
        v17 = 136315394;
        v18 = "[AFSiriHeadphonesMonitor registerInternalGestureTestingHandler:]_block_invoke";
        v19 = 2112;
        v20 = v16;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s 🧪 Scheduling pending gesture with testing handler: %@", &v17, 0x16u);

        v8 = *(a1 + 32);
      }

      (*(*(v8 + 144) + 16))();
      *(*(a1 + 32) + 152) = 0;
    }
  }

  else
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[AFSiriHeadphonesMonitor registerInternalGestureTestingHandler:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s 🧪 Head gesture injection is not allowed, execute as a non-root user: defaults write com.apple.assistant Allow Head Gesture Injection -BOOL true && killall -9 assistantd", &v17, 0xCu);
    }
  }
}

void sub_10011D4E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011D59C;
  v6[3] = &unk_100517DE0;
  v7 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  [v3 postJSDiscoveryNotificationForBTDeviceWithInfo:v2 withCompletion:v6];
}

void sub_10011D59C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = v4;
      v7 = [v5 name];
      v8 = [*(a1 + 40) address];
      *buf = 136315906;
      v21 = "[AFSiriHeadphonesMonitor _postJSDiscoveryNotificationForBTDeviceWithInfo:scheduled:]_block_invoke_2";
      v22 = 2112;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s Failed to post JS Discovery notification for %@(%@), error: %@", buf, 0x2Au);
    }
  }

  else
  {
    v9 = +[AFPreferences sharedPreferences];
    [v9 setCompactVoiceTriggerDiscoveryNotificationPresented:1 forBTDeviceWithAddress:*(a1 + 32)];

    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v15 = v10;
      v16 = [v14 name];
      v17 = [*(a1 + 40) address];
      *buf = 136315650;
      v21 = "[AFSiriHeadphonesMonitor _postJSDiscoveryNotificationForBTDeviceWithInfo:scheduled:]_block_invoke_2";
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s JS Discovery notification for %@(%@) was posted successfully!", buf, 0x20u);
    }

    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(v12 + 104);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10011D7F8;
    v18[3] = &unk_10051E010;
    v18[4] = v12;
    v19 = v11;
    dispatch_async(v13, v18);
  }
}

void sub_10011D7F8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 136);
  v2 = [*(a1 + 40) address];
  [v1 removeObject:v2];
}

void sub_10011DBF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setName:v3];
  [v4 setAddress:*(a1 + 40)];
  [v4 setVendorID:{objc_msgSend(*(a1 + 48), "vendorId")}];
  [v4 setProductID:{objc_msgSend(*(a1 + 48), "productId")}];
}

void sub_10011DD7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[AFSiriHeadphonesMonitor accesoryAACPCapabilitiesReceived:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Bluetooth device: %@", &v5, 0x16u);
  }

  if (*(a1 + 32))
  {
    [WeakRetained _handleJSDiscoveryNotificationForDevice:?];
  }
}

void sub_10011E024(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 128))
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = v3;

    v2 = *(a1 + 32);
  }

  if (!*(v2 + 136))
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = *(a1 + 32);
    v8 = *(v7 + 136);
    *(v7 + 136) = v6;

    _objc_release_x1(v6, v8);
  }
}

void *sub_10011E0B0(void *a1)
{
  v5[0] = 0;
  if (!qword_1005901C8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10011E234;
    v5[4] = &unk_10051E200;
    v5[5] = v5;
    v6 = off_100512610;
    v7 = 0;
    qword_1005901C8 = _sl_dlopen();
  }

  v2 = qword_1005901C8;
  if (!qword_1005901C8)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *BluetoothManagerLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"AFSiriHeadphonesMonitor.m" lineNumber:41 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BluetoothAccessoryAACPCapabilitiesReceived");
  *(*(a1[4] + 8) + 24) = result;
  qword_1005901C0 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_10011E234()
{
  result = _sl_dlopen();
  qword_1005901C8 = result;
  return result;
}

void sub_10011E520(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10011E5B0;
  v3[3] = &unk_1005125C8;
  v4 = *(a1 + 48);
  [v1 _fetchInEarDetectionStateAndStartObservingFromSourceForBTAddress:v2 withCompletion:v3];
}

void sub_10011E5B0(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = v9;
    if (v5)
    {
      v7 = 0;
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    (*(v6 + 16))(v6, v7, v8);
  }
}

void sub_10011E7D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 33) == 1 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v8 = v4;
      v9 = [NSNumber numberWithUnsignedInteger:v3];
      *buf = 136315394;
      v13 = "[AFSiriHeadphonesMonitor fetchPrivateSessionStateWithCompletion:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Private session state: %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = AFSupportsWirelessSplitter();
    v6 = *(a1 + 32);
    if (v5)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10011E9D8;
      v10[3] = &unk_1005125A0;
      v10[4] = v6;
      v11 = *(a1 + 40);
      [v6 _fetchWirelessSplitterSessionInfoAndStartObservingFromSourceWithCompletion:v10];
    }

    else
    {
      v6[33] = 1;
      *(*(a1 + 32) + 8) = 1;
      v7 = *(*(a1 + 40) + 16);

      v7();
    }
  }
}

void sub_10011E9D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 96);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10011EAB4;
  v12[3] = &unk_10051E0D8;
  v12[4] = v8;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

uint64_t sub_10011EAB4(uint64_t a1)
{
  *(*(a1 + 32) + 16) = [*(a1 + 40) state] != 1;
  if (*(a1 + 48))
  {
    v2 = *(*(a1 + 56) + 16);

    return v2();
  }

  else
  {
    v4 = 1;
    *(*(a1 + 32) + 33) = 1;
    v5 = *(a1 + 32);
    if (*(v5 + 16))
    {
      v4 = 2;
    }

    *(v5 + 8) = v4;
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(*(a1 + 32) + 8);
      v8 = v6;
      v9 = [NSNumber numberWithUnsignedInteger:v7];
      v10 = 136315394;
      v11 = "[AFSiriHeadphonesMonitor fetchPrivateSessionStateWithCompletion:]_block_invoke_2";
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Fetched wireless splitter session, private session state: %@", &v10, 0x16u);
    }

    return (*(*(a1 + 56) + 16))();
  }
}

uint64_t sub_10011EC54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10011ED0C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    *&v5 = 136315650;
    v14 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
          {
            v11 = *(*(a1 + 32) + 8);
            v12 = v10;
            v13 = [NSNumber numberWithUnsignedInteger:v11];
            *buf = v14;
            v20 = "[AFSiriHeadphonesMonitor _recomputePrivateSessionStateAndBroadcast:]_block_invoke";
            v21 = 2112;
            v22 = v9;
            v23 = 2112;
            v24 = v13;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Telling %@ privateSessionState:%@", buf, 0x20u);
          }

          [v9 privateAudioSessionStateDidChange:{*(*(a1 + 32) + 8), v14, v15}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v6);
  }
}

void sub_10011EFBC(void *a1)
{
  v2 = [*(a1[4] + 112) copy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    *&v5 = 136315906;
    v17 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
          {
            v12 = a1[4];
            v13 = *(v12 + 80);
            v14 = *(v12 + 24);
            *buf = v17;
            v23 = "[AFSiriHeadphonesMonitor _broadcastInEarDetectionStateChangesFrom:to:]_block_invoke";
            v24 = 2112;
            v25 = v9;
            v26 = 2112;
            v27 = v13;
            v28 = 2112;
            v29 = v14;
            _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Telling %@ inEarDetectionStateDidChangeForBTAddress: %@ toState:%@", buf, 0x2Au);
          }

          [v9 inEarDetectionStateDidChangeForBTAddress:*(a1[4] + 80) toState:{*(a1[4] + 24), v17, v18}];
        }

        if (objc_opt_respondsToSelector())
        {
          v11 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
          {
            v15 = a1[5];
            v16 = *(a1[4] + 80);
            *buf = v17;
            v23 = "[AFSiriHeadphonesMonitor _broadcastInEarDetectionStateChangesFrom:to:]_block_invoke";
            v24 = 2112;
            v25 = v9;
            v26 = 2112;
            v27 = v16;
            v28 = 2112;
            v29 = v15;
            _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Telling %@ inEarDetectionStateDidChangeForBTAddress: %@ toState:%@", buf, 0x2Au);
          }

          [v9 inEarDetectionStateDidChangeForBTAddress:*(a1[4] + 80) fromState:a1[6] toState:{a1[5], v17}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v6);
  }
}

void sub_10011F2CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 != v3[8])
  {
    if (v2 != v3[9])
    {
      if (v2 == v3[7])
      {
        v4 = *(a1 + 56);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10011F5F8;
        v19[3] = &unk_100512578;
        v19[4] = v3;
        [AFBluetoothHeadphoneInEarDetectionState decodeFromNotifyState:v4 withCompletion:v19];
      }

      return;
    }

    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      *buf = 136315650;
      v21 = "[AFSiriHeadphonesMonitor notifyObserver:didChangeStateFrom:to:]_block_invoke";
      v22 = 2048;
      v23 = v11;
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s wireless guest connection state changed from %llu to %llu", buf, 0x20u);
      v10 = AFSiriLogContextConnection;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 56);
      v14 = v10;
      v15 = [NSNumber numberWithUnsignedLongLong:v13];
      *buf = 136315394;
      v21 = "[AFSiriHeadphonesMonitor notifyObserver:didChangeStateFrom:to:]_block_invoke";
      v22 = 2112;
      v23 = v15;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s guestConnection: %@", buf, 0x16u);
    }

    *(*(a1 + 40) + 32) = *(a1 + 56) != 0;
LABEL_16:
    [*(a1 + 40) _recomputePrivateSessionStateAndBroadcast:1];
    return;
  }

  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *buf = 136315650;
    v21 = "[AFSiriHeadphonesMonitor notifyObserver:didChangeStateFrom:to:]_block_invoke";
    v22 = 2048;
    v23 = v6;
    v24 = 2048;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s wireless splitter session state changed from %llu to %llu", buf, 0x20u);
    v3 = *(a1 + 40);
  }

  v8 = *(a1 + 56);
  if (v3[2] != v8)
  {
    v3[2] = v8;
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(*(a1 + 40) + 16);
      v17 = v9;
      v18 = [NSNumber numberWithUnsignedLongLong:v16];
      *buf = 136315394;
      v21 = "[AFSiriHeadphonesMonitor notifyObserver:didChangeStateFrom:to:]_block_invoke";
      v22 = 2112;
      v23 = v18;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s wireless splitter session active: %@", buf, 0x16u);
    }

    *(*(a1 + 40) + 33) = 0;
    goto LABEL_16;
  }
}

void sub_10011F5F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 96);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011F6E4;
  v15[3] = &unk_10051DB18;
  v16 = v9;
  v17 = v10;
  v18 = v7;
  v19 = v8;
  v12 = v8;
  v13 = v7;
  v14 = v9;
  dispatch_async(v11, v15);
}

void *sub_10011F6E4(void *result)
{
  v1 = result[4];
  v2 = result[5];
  if (v1 != *(v2 + 24))
  {
    v3 = result;
    v4 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      v5 = v3[6];
      v6 = v3[7];
      v7 = 136315906;
      v8 = "[AFSiriHeadphonesMonitor notifyObserver:didChangeStateFrom:to:]_block_invoke_2";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v1;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s In-ear detection state for %@: %@ -> %@", &v7, 0x2Au);
      v2 = v3[5];
    }

    result = [v3[6] isEqualToString:*(v2 + 80)];
    if (result)
    {
      objc_storeStrong((v3[5] + 24), v3[4]);
      return [v3[5] _broadcastInEarDetectionStateChangesFrom:v3[7] to:v3[4]];
    }
  }

  return result;
}

void sub_10011F86C(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "[AFSiriHeadphonesMonitor _settingsConnectionDidDisconnect]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s Settings connection: disconnected!", &v9, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  *(*(a1 + 32) + 33) = 0;
  *(*(a1 + 32) + 16) = AFBluetoothWirelessSplitterSessionStateUnknown;
  v5 = [[AFBluetoothHeadphoneInEarDetectionState alloc] initWithBuilder:&stru_100512550];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = *(*(a1 + 32) + 160);
  if (([v8 hasAuthenticationCapability] & 1) != 0 || objc_msgSend(v8, "availableAnnouncementRequestTypes"))
  {
    [*(a1 + 32) _updateWirelessSplitterSessionInfoAndObserve];
    [*(a1 + 32) _updateInEarDetectionStateAndObserve];
  }
}

void sub_10011F9A8(id a1, AFBluetoothHeadphoneInEarDetectionStateMutating *a2)
{
  v2 = a2;
  [(AFBluetoothHeadphoneInEarDetectionStateMutating *)v2 setIsEnabled:0];
  [(AFBluetoothHeadphoneInEarDetectionStateMutating *)v2 setPrimaryEarbudSide:0];
  [(AFBluetoothHeadphoneInEarDetectionStateMutating *)v2 setPrimaryInEarStatus:0];
  [(AFBluetoothHeadphoneInEarDetectionStateMutating *)v2 setSecondaryInEarStatus:0];
}

id sub_10011FBEC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  if (!v2)
  {
    v3 = +[NSMutableSet set];
    v4 = *(a1 + 32);
    v5 = *(v4 + 120);
    *(v4 + 120) = v3;

    v2 = *(*(a1 + 32) + 120);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void sub_10011FFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100120010(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 96);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001200F0;
  v12[3] = &unk_1005124E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v9 = *(a1 + 48);
  v15 = v8;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void sub_1001200F0(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100120260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100120278(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 96);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100120358;
  v12[3] = &unk_1005124E0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v9 = *(a1 + 48);
  v15 = v8;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void sub_100120358(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100120970(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100120B10;
  block[3] = &unk_10051DB68;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_100120A3C(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 136315650;
    v6 = "[AFSiriHeadphonesMonitor _updateAudioRouteFromRoute:toRoute:andBroadcast:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Audio route changed from: %@ to: %@", &v5, 0x20u);
  }

  if (*(a1 + 40))
  {
    [*(a1 + 48) _audioRouteDidChange:?];
  }
}

void sub_100120B10(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v3 = 136315394;
      v4 = "[AFSiriHeadphonesMonitor _updateAudioRouteFromRoute:toRoute:andBroadcast:]_block_invoke_2";
      v5 = 2112;
      v6 = v1;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s %@", &v3, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 24), *(a1 + 48));
  }
}

id sub_100120E88(uint64_t a1)
{
  [*(a1 + 32) _updateAudioRouteFromRoute:*(a1 + 40) toRoute:*(a1 + 48) andBroadcast:1];
  v2 = *(a1 + 32);
  if ((v2[33] & 1) == 0)
  {
    [v2 _updateWirelessSplitterSessionInfoAndObserve];
    v2 = *(a1 + 32);
  }

  return [v2 _updateInEarDetectionStateAndObserve];
}

_BYTE *sub_100120FB0(uint64_t a1)
{
  v2 = AFSupportsWirelessSplitter();
  result = *(a1 + 32);
  if (v2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100121044;
    v4[3] = &unk_100512490;
    v4[4] = result;
    return [result _fetchWirelessSplitterSessionInfoAndStartObservingFromSourceWithCompletion:v4];
  }

  else
  {
    result[33] = 1;
  }

  return result;
}

void sub_100121044(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012110C;
  block[3] = &unk_10051DB68;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

void sub_10012110C(uint64_t a1)
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v2;
    v9 = [v7 state];
    v10 = *(a1 + 40);
    v11 = 136315650;
    v12 = "[AFSiriHeadphonesMonitor _updateWirelessSplitterSessionInfoAndObserve]_block_invoke_3";
    v13 = 2048;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Wireless splitter session state: %ld, error: %@", &v11, 0x20u);
  }

  *(*(a1 + 48) + 16) = [*(a1 + 32) state] != 1;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 48) + 16);
    v5 = v3;
    v6 = [NSNumber numberWithUnsignedLongLong:v4];
    v11 = 136315394;
    v12 = "[AFSiriHeadphonesMonitor _updateWirelessSplitterSessionInfoAndObserve]_block_invoke";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Wireless splitter session active: %@", &v11, 0x16u);
  }

  if (!*(a1 + 40))
  {
    *(*(a1 + 48) + 33) = 1;
    [*(a1 + 48) _recomputePrivateSessionStateAndBroadcast:1];
  }
}

void sub_1001213B0(uint64_t a1)
{
  v2 = [*(a1 + 32) _audioRouteMonitor];
  v3 = [v2 currentAudioRoute];

  [*(a1 + 32) _updateAudioRouteFromRoute:0 toRoute:v3 andBroadcast:0];
}

void sub_100121658(id a1, AFBluetoothHeadphoneInEarDetectionStateMutating *a2)
{
  v2 = a2;
  [(AFBluetoothHeadphoneInEarDetectionStateMutating *)v2 setIsEnabled:0];
  [(AFBluetoothHeadphoneInEarDetectionStateMutating *)v2 setPrimaryEarbudSide:0];
  [(AFBluetoothHeadphoneInEarDetectionStateMutating *)v2 setPrimaryInEarStatus:0];
  [(AFBluetoothHeadphoneInEarDetectionStateMutating *)v2 setSecondaryInEarStatus:0];
}

uint64_t sub_1001216BC()
{
  qword_1005901B8 = [objc_alloc(objc_opt_class()) _init];

  return _objc_release_x1();
}

void sub_100121AAC(uint64_t a1)
{
  v2 = [*(a1 + 32) announceIdToRemoteAssistantIdMap];
  [v2 removeObjectForKey:*(a1 + 40)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 48) workoutReminder];
    v4 = [v3 predictionIdentifier];

    if (v4)
    {
      v5 = [*(a1 + 32) clientIdToAnnounceIdMap];
      [v5 removeObjectForKey:v4];
    }

    else
    {
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315138;
        v8 = "[ADAnnounceDeviceSelector _populateCachesForRequest:toRemoteAssistantId:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s cannot purge cache of nil prediction identifier", &v7, 0xCu);
      }
    }
  }
}

void sub_100121CF4(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "[ADAnnounceDeviceSelector handleRemoteDismissRequest:completion:]_block_invoke";
    v10 = 1024;
    v11 = a2;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Deactivated announcement on phone=%d", &v8, 0x12u);
  }

  v5 = SACommandSucceeded_ptr;
  if (!a2)
  {
    v5 = SACommandFailed_ptr;
  }

  v6 = objc_alloc_init(*v5);
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, 0);
  }
}

void sub_100122348(uint64_t a1, char a2)
{
  if (a2)
  {
    v5 = objc_alloc_init(SACommandSucceeded);
    v3 = [*(a1 + 32) aceId];
    [v5 setRefId:v3];
  }

  else
  {
    v5 = objc_alloc_init(SACommandFailed);
    v4 = [*(a1 + 32) aceId];
    [v5 setRefId:v4];

    [v5 setReason:@"Failed to Announce"];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100122C94(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136315138;
        v10 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]_block_invoke";
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Failed to announce the voice feedback request remotely", &v9, 0xCu);
      }

      v5 = v3;
      if ([v5 supportsSpeakerFallback])
      {
        v6 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          v9 = 136315138;
          v10 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Falling back to speakers", &v9, 0xCu);
        }

        [*(a1 + 32) setPlatform:4];
        [*(a1 + 40) _populateCachesForRequest:v5 toRemoteAssistantId:0];
        v7 = [*(a1 + 40) externalNotificationRequestHandler];
        [v7 handleAnnouncementRequest:v5];
      }

      else
      {
        v8 = [*(a1 + 32) completion];

        if (!v8)
        {
LABEL_12:

          goto LABEL_13;
        }

        v7 = [*(a1 + 32) completion];
        v7[2](v7, 0);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

void sub_100122E5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]_block_invoke";
      v21 = 2112;
      v22 = v6;
      v9 = "%s Error sending remote announcement request: %@";
LABEL_12:
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v9, &v19, 0x16u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]_block_invoke";
      v21 = 2112;
      v22 = v5;
      v9 = "%s Error response sending remote announcement request: %@";
      goto LABEL_12;
    }

LABEL_13:
    (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), v8);
    goto LABEL_14;
  }

  v10 = v5;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315394;
    v20 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]_block_invoke";
    v21 = 2112;
    v22 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Received response: %@", &v19, 0x16u);
  }

  v12 = [v10 result];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [*(a1 + 32) completion];

    if (v14)
    {
      v15 = [*(a1 + 32) completion];
      v15[2](v15, 1);
    }
  }

  else
  {
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v18 = [v10 result];
      v19 = 136315394;
      v20 = "[ADAnnounceDeviceSelector handleAnnouncementRequest:]_block_invoke";
      v21 = 2112;
      v22 = v18;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s SAExecuteOnRemoteResponse contains error sending remote announcement: %@", &v19, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

LABEL_14:
}

void sub_100123444(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v19 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s Deactivated announcement locally. Assuming announcement was only made here", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = [*(a1 + 32) announceIdToRemoteAssistantIdMap];
    v5 = [v4 objectForKey:*(a1 + 40)];

    if (v5)
    {
      v6 = objc_alloc_init(SADismissRemoteAnnouncement);
      v7 = [*(a1 + 40) UUIDString];
      [v6 setAnnouncementIdentifier:v7];

      v8 = [objc_opt_class() _requestToExecuteCommand:v6 onRemoteWithAssistantId:v5];
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 40);
        v12 = *(a1 + 48);
        *buf = 136315906;
        v19 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]_block_invoke";
        v20 = 2112;
        v21 = v12;
        v22 = 2112;
        v23 = v13;
        v24 = 2112;
        v25 = v5;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s Deactivating workout announcement (client ID: %@, announce ID: %@) on remote device (assistant ID: %@)", buf, 0x2Au);
      }

      v10 = +[ADCommandCenter sharedCommandCenter];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100123728;
      v16[3] = &unk_10051CD88;
      v17 = *(a1 + 56);
      [v10 handleCommand:v8 completion:v16];
    }

    else
    {
      v11 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 40);
        v15 = *(a1 + 48);
        *buf = 136315650;
        v19 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]_block_invoke";
        v20 = 2112;
        v21 = v14;
        v22 = 2112;
        v23 = v15;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s No assistant ID found for announce ID: %@ (client ID: %@) - assuming announcement was not made remotely", buf, 0x20u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_100123728(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]_block_invoke";
      v20 = 2112;
      v21 = v6;
      v9 = "%s Received error while canceling remote announcement: %@";
      v10 = v7;
      v11 = 22;
LABEL_13:
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, &v18, v11);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]_block_invoke";
      v9 = "%s Received unknown response while canceling remote announcement";
      v10 = v17;
      v11 = 12;
      goto LABEL_13;
    }

LABEL_14:
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v8);
    goto LABEL_15;
  }

  v12 = v5;
  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315394;
    v19 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]_block_invoke";
    v20 = 2112;
    v21 = v12;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Received response: %@", &v18, 0x16u);
  }

  v14 = [v12 result];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v16 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315138;
      v19 = "[ADAnnounceDeviceSelector deactivateWorkoutAnnouncementWithIdentifier:completion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s Received non-success response while canceling remote announcement", &v18, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

LABEL_15:
}

void sub_10012415C(id a1)
{
  v1 = [[ADAnnounceDeviceSelector alloc] _init];
  v2 = qword_1005901D8;
  qword_1005901D8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100124AF0(uint64_t a1)
{
  v2 = [[NSString alloc] initWithFormat:@"%@ Invalidated", *(a1 + 32)];
  v3 = [AFError errorWithCode:42 description:v2];

  [*(a1 + 32) _relinquishAssertionWithContext:0 error:v3 options:0];
  [*(a1 + 32) _finalizeWithContext:0 error:v3];
}

uint64_t sub_100124D7C(uint64_t a1)
{
  [*(a1 + 32) _relinquishAssertionWithContext:*(a1 + 40) error:*(a1 + 48) options:*(a1 + 64)];
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    v6 = 136315650;
    v7 = "[ADAudioSessionAssertionConnection relinquishAudioSessionWithContext:error:options:completion:]_block_invoke";
    v8 = 2048;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s %p (pid = %d) done", &v6, 0x1Cu);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100124FE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    v6 = AFAudioSessionAssertionGetCurrentAcquisitionService();
    if (!v6)
    {
      v20 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        v25 = *(v24 + 16);
        *buf = 136315650;
        v35 = "[ADAudioSessionAssertionConnection acquireAudioSessionWithContext:relinquishmentHandler:]_block_invoke";
        v36 = 2048;
        v37 = v24;
        v38 = 1024;
        v39 = v25;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s %p (pid = %d) failed to get acquisition service", buf, 0x1Cu);
      }

      v6 = *(a1 + 48);
      if (v6)
      {
        v21 = [AFError errorWithCode:44 description:@"Failed to get acquisition service."];
        (v6)[2](v6, 0, v21);

        v6 = 0;
      }

      goto LABEL_21;
    }

    objc_initWeak(&location, *(a1 + 32));
    v7 = *(*(a1 + 32) + 8);
    v8 = *(a1 + 40);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001254D4;
    v30[3] = &unk_1005126B8;
    v9 = v7;
    v31 = v9;
    objc_copyWeak(&v32, &location);
    v10 = [v6 acquireAudioSessionAssertionWithContext:v8 relinquishmentHandler:v30];
    v11 = AFSiriLogContextDaemon;
    if (v10)
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v13 = *(v12 + 16);
        *buf = 136315906;
        v35 = "[ADAudioSessionAssertionConnection acquireAudioSessionWithContext:relinquishmentHandler:]_block_invoke";
        v36 = 2048;
        v37 = v12;
        v38 = 1024;
        v39 = v13;
        v40 = 2112;
        v41 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %p (pid = %d) assertion = %@", buf, 0x26u);
      }

      v14 = [AFTwoArgumentSafetyBlock alloc];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1001255B4;
      v28[3] = &unk_10051A8B8;
      v29 = *(a1 + 48);
      v15 = [AFError errorWithCode:40, _NSConcreteStackBlock, 3221225472, sub_1001255B4, &unk_10051A8B8];
      v16 = [v14 initWithBlock:v28 defaultValue1:0 defaultValue2:v15];
      v17 = *(a1 + 32);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      objc_storeStrong((*(a1 + 32) + 24), v10);
      v19 = v29;
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 32);
        v27 = *(v26 + 16);
        *buf = 136315906;
        v35 = "[ADAudioSessionAssertionConnection acquireAudioSessionWithContext:relinquishmentHandler:]_block_invoke_3";
        v36 = 2048;
        v37 = v26;
        v38 = 1024;
        v39 = v27;
        v40 = 2112;
        v41 = v6;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s %p (pid = %d) failed to acquire assertion from %@", buf, 0x26u);
      }

      v22 = *(a1 + 48);
      if (!v22)
      {
        goto LABEL_20;
      }

      v19 = [AFError errorWithCode:44 description:@"Unable to acquire assertion from acquisition service."];
      (*(v22 + 16))(v22, 0, v19);
    }

LABEL_20:
    objc_destroyWeak(&v32);

    objc_destroyWeak(&location);
    goto LABEL_21;
  }

  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v23 = *(v2 + 16);
    *buf = 136315906;
    v35 = "[ADAudioSessionAssertionConnection acquireAudioSessionWithContext:relinquishmentHandler:]_block_invoke";
    v36 = 2048;
    v37 = v2;
    v38 = 1024;
    v39 = v23;
    v40 = 2112;
    v41 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s %p (pid = %d) assertion %@ already acquired", buf, 0x26u);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [AFError errorWithCode:45 description:@"Assertion already acquired."];
    (*(v5 + 16))(v5, 0, v6);
LABEL_21:
  }
}

void sub_1001254AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001254D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001255CC;
  block[3] = &unk_1005177E8;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
}

uint64_t sub_1001255B4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001255CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finalizeWithContext:*(a1 + 32) error:*(a1 + 40)];
}

id sub_1001259A0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [[CKRecordID alloc] initWithRecordName:v5 zoneID:v7];

  v9 = [[CKRecord alloc] initWithRecordType:@"AssistantKeyValueRecord" recordID:v8];
  v10 = +[NSNull null];

  if (v10 == v6)
  {

    v6 = 0;
  }

  v11 = [v9 encryptedValuesByKey];
  v12 = [NSNumber numberWithUnsignedInteger:1];
  [v11 setObject:v12 forKey:@"version"];

  v13 = [v9 encryptedValuesByKey];
  [v13 setObject:v5 forKey:@"key"];

  [v9 _ad_setData:v6];

  return v9;
}

id sub_100125AEC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v6 objectForKey:{v11, v15}];
        v13 = sub_1001259A0(v11, v12, v4);

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

id sub_100125C7C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = sub_100125DEC(v11, v4);
        [v5 setObject:v12 forKey:{v11, v14}];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

id sub_100125DEC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[CKRecordID alloc] initWithRecordName:v4 zoneID:v3];

  return v5;
}

id sub_100125E60(void *a1)
{
  v1 = a1;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v6 count:5];
  v3 = [NSSet setWithArray:v2, v6, v7, v8, v9];
  v4 = [v1 _ad_dataOfClasses:v3];

  return v4;
}