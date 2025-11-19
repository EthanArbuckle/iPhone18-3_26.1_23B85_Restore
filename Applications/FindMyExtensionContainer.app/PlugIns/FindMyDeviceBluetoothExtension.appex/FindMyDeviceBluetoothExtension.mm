void sub_100001490(uint64_t a1)
{
  v2 = sub_100003FA4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10000CE20();
  }

  v3 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10000152C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003FA4();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000CE88();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "playSoundForAccessory sound started", v7, 2u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];
}

void sub_100001780(uint64_t a1)
{
  v2 = sub_100003BEC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10000CEF0();
  }

  v3 = [NSError errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_10000181C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003BEC();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000CF58();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "stopSoundForAccessory sound did stop", v7, 2u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];
}

void sub_100001AFC(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = 5.0;
  if (v2 >= 5.0)
  {
    v3 = *(a1 + 64);
  }

  if (v2 >= 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) accessoryAudioController];
  [v5 setRampUpDuration:v4];

  v6 = [*(a1 + 32) accessoryAudioController];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001C14;
  v9[3] = &unk_10001C490;
  v9[4] = *(a1 + 32);
  v12 = *(a1 + 72);
  v10 = v7;
  v11 = *(a1 + 56);
  [v6 startPlayingSoundForAccessory:v10 channels:v8 completion:v9];
}

void sub_100001C14(void *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001CD8;
    block[3] = &unk_10001C468;
    v4 = a1[5];
    block[4] = a1[4];
    v8 = a1[7];
    v7 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }

  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

id sub_100001CD8(uint64_t a1)
{
  [*(a1 + 32) setTimeoutForDuration:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setCurrentAccessory:v3];
}

void sub_100001F00(uint64_t a1)
{
  if (*(a1 + 56) >= 0.0)
  {
    v2 = *(a1 + 56);
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) accessoryAudioController];
  [v3 setRampDownDuration:v2];

  v4 = [*(a1 + 32) accessoryAudioController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001FE8;
  v6[3] = &unk_10001C4E0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  [v4 stopPlayingForAccessory:v5 completion:v6];
}

void sub_100001FE8(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) invalidateStopSoundTimer];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void sub_1000022BC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100003F1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000CFC0();
    }
  }
}

void sub_10000242C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100002E0C(id a1)
{
  qword_100028BD8 = objc_alloc_init(FMDAutomationHelperFactory);

  _objc_release_x1();
}

void sub_100003110(id a1)
{
  v1 = [FMSharedFileContainer alloc];
  v2 = [v1 initWithIdentifier:off_100028658];
  v3 = [v2 url];
  v8 = [v3 fm_preferencesPathURLForDomain:@"FMDAutomationAVRouteController"];

  v4 = [[FMDataArchiver alloc] initWithFileURL:v8];
  v5 = [NSSet setWithObject:objc_opt_class()];
  v6 = [v4 readDictionaryAndClasses:v5 error:0];

  v7 = [v6 objectForKeyedSubscript:@"FMDAutomationAVRouteControllerAutomationActiveKey"];
  byte_100028BE8 = [v7 BOOLValue];
}

uint64_t sub_10000336C(uint64_t a1)
{
  qword_100028BF8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id sub_100003BEC()
{
  if (qword_100028C08 != -1)
  {
    sub_10000D0C8();
  }

  v1 = qword_100028C10;

  return v1;
}

void sub_100003C30(id a1)
{
  qword_100028C10 = os_log_create("com.apple.icloud.findmydeviced", "_");

  _objc_release_x1();
}

id sub_100003C74()
{
  if (qword_100028C18 != -1)
  {
    sub_10000D0DC();
  }

  v1 = qword_100028C20;

  return v1;
}

void sub_100003CB8(id a1)
{
  qword_100028C20 = os_log_create("com.apple.icloud.findmydeviced", "locations");

  _objc_release_x1();
}

id sub_100003CFC()
{
  if (qword_100028C28 != -1)
  {
    sub_10000D0F0();
  }

  v1 = qword_100028C30;

  return v1;
}

void sub_100003D40(id a1)
{
  qword_100028C30 = os_log_create("com.apple.icloud.findmydeviced", "accessory");

  _objc_release_x1();
}

id sub_100003D84()
{
  if (qword_100028C38 != -1)
  {
    sub_10000D104();
  }

  v1 = qword_100028C40;

  return v1;
}

void sub_100003DC8(id a1)
{
  qword_100028C40 = os_log_create("com.apple.icloud.findmydeviced", "traffic");

  _objc_release_x1();
}

id sub_100003E0C()
{
  if (qword_100028C48 != -1)
  {
    sub_10000D118();
  }

  v1 = qword_100028C50;

  return v1;
}

void sub_100003E50(id a1)
{
  qword_100028C50 = os_log_create("com.apple.icloud.findmydeviced", "encoder");

  _objc_release_x1();
}

id sub_100003E94()
{
  if (qword_100028C58 != -1)
  {
    sub_10000D12C();
  }

  v1 = qword_100028C60;

  return v1;
}

void sub_100003ED8(id a1)
{
  qword_100028C60 = os_log_create("com.apple.icloud.findmydeviced", "bluetoothsession");

  _objc_release_x1();
}

id sub_100003F1C()
{
  if (qword_100028C68 != -1)
  {
    sub_10000D140();
  }

  v1 = qword_100028C70;

  return v1;
}

void sub_100003F60(id a1)
{
  qword_100028C70 = os_log_create("com.apple.icloud.findmydeviced", "extensions");

  _objc_release_x1();
}

id sub_100003FA4()
{
  if (qword_100028C78 != -1)
  {
    sub_10000D154();
  }

  v1 = qword_100028C80;

  return v1;
}

void sub_100003FE8(id a1)
{
  qword_100028C80 = os_log_create("com.apple.icloud.findmydeviced", "extensions_playSound");

  _objc_release_x1();
}

id sub_10000402C()
{
  if (qword_100028C88 != -1)
  {
    sub_10000D168();
  }

  v1 = qword_100028C90;

  return v1;
}

void sub_100004070(id a1)
{
  qword_100028C90 = os_log_create("com.apple.icloud.findmydeviced", "secureLocations");

  _objc_release_x1();
}

id sub_1000040B4()
{
  if (qword_100028C98 != -1)
  {
    sub_10000D17C();
  }

  v1 = qword_100028CA0;

  return v1;
}

void sub_1000040F8(id a1)
{
  qword_100028CA0 = os_log_create("com.apple.icloud.findmydeviced", "healUCRT");

  _objc_release_x1();
}

id sub_10000413C()
{
  if (qword_100028CA8 != -1)
  {
    sub_10000D190();
  }

  v1 = qword_100028CB0;

  return v1;
}

void sub_100004180(id a1)
{
  qword_100028CB0 = os_log_create("com.apple.icloud.findmydeviced", "DeviceTnL");

  _objc_release_x1();
}

id sub_1000041C4()
{
  if (qword_100028CB8 != -1)
  {
    sub_10000D1A4();
  }

  v1 = qword_100028CC0;

  return v1;
}

void sub_100004208(id a1)
{
  qword_100028CC0 = os_log_create("com.apple.icloud.findmydeviced", "repairDevice");

  _objc_release_x1();
}

id sub_10000424C()
{
  if (qword_100028CC8 != -1)
  {
    sub_10000D1B8();
  }

  v1 = qword_100028CD0;

  return v1;
}

void sub_100004290(id a1)
{
  qword_100028CD0 = os_log_create("com.apple.icloud.findmydeviced", "ALFailureAnalytics");

  _objc_release_x1();
}

id sub_1000042D4()
{
  if (qword_100028CD8 != -1)
  {
    sub_10000D1CC();
  }

  v1 = qword_100028CE0;

  return v1;
}

void sub_100004318(id a1)
{
  qword_100028CE0 = os_log_create("com.apple.icloud.findmydeviced", "disableLocationDisplay");

  _objc_release_x1();
}

id sub_10000435C()
{
  if (qword_100028CE8 != -1)
  {
    sub_10000D1E0();
  }

  v1 = qword_100028CF0;

  return v1;
}

void sub_1000043A0(id a1)
{
  qword_100028CF0 = os_log_create("com.apple.icloud.findmydeviced", "accountRatchet");

  _objc_release_x1();
}

id sub_1000043E4()
{
  if (qword_100028CF8 != -1)
  {
    sub_10000D1F4();
  }

  v1 = qword_100028D00;

  return v1;
}

void sub_100004428(id a1)
{
  qword_100028D00 = os_log_create("com.apple.icloud.findmydeviced", "ownerAuthentication");

  _objc_release_x1();
}

id sub_10000446C()
{
  if (qword_100028D08 != -1)
  {
    sub_10000D208();
  }

  v1 = qword_100028D10;

  return v1;
}

void sub_1000044B0(id a1)
{
  if ([FMPreferencesUtil BOOLForKey:@"ShowAutomationLogs" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"])
  {
    qword_100028D10 = os_log_create("com.apple.icloud.findmydeviced", "automation");

    _objc_release_x1();
  }
}

void sub_1000045E0(id a1)
{
  v2 = +[FMSystemInfo sharedInstance];
  v1 = [v2 isInternalBuild];
  if (v1)
  {
    LOBYTE(v1) = [FMPreferencesUtil BOOLForKey:@"FMDAutomationBluetoothManagerAutomationActiveKey" inDomain:kFMDNotBackedUpPrefDomain];
  }

  byte_100028D18 = v1;
}

void sub_1000046DC(id a1)
{
  v1 = +[FMDAutomationHelperFactory sharedFactory];
  v2 = [v1 automationHelperClassWithName:@"FMDAutomationBluetoothManager"];

  qword_100028D28 = objc_alloc_init(v2);

  _objc_release_x1();
}

uint64_t sub_1000052D0(uint64_t a1)
{
  [*(a1 + 32) setIsSoundPlaying:0];
  [*(a1 + 32) setVolumeTargetValue:0.0];
  [*(a1 + 32) rampDownDuration];
  [*(a1 + 32) setFadeDuration:?];
  [*(a1 + 32) rampDownDuration];
  v2 = *(a1 + 32);
  if (v3 <= 0.0)
  {
    [v2 stopSound];
  }

  else
  {
    [v2 fade];
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_100006A78(uint64_t a1)
{
  v2 = sub_100003BEC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000D848(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fade];
}

uint64_t sub_1000071F8(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = sub_100003BEC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_retainBlock(*(v1 + 32));
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController Calling initial completion block %@", &v4, 0xCu);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

uint64_t sub_10000761C(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = sub_100003BEC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_retainBlock(*(v1 + 32));
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDAccessoryAudioController Calling initial completion block %@", &v4, 0xCu);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

void sub_100007AFC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000087C4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  if (v3)
  {
    v4 = sub_100003F1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000D9E0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100009A28(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100009E6C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained bluetoothDiscoveryQueue];
  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100009F2C;
    v6[3] = &unk_10001D3B8;
    v7 = v3;
    v8 = WeakRetained;
    dispatch_async(v5, v6);
  }
}

id sub_100009F2C(uint64_t a1)
{
  v2 = sub_100003F1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BluetoothManager didDiscoverDevice %@", &v5, 0xCu);
  }

  return [*(a1 + 40) didDiscoverDevice:*(a1 + 32)];
}

void sub_100009FDC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained bluetoothDiscoveryQueue];
  if (v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000A09C;
    v6[3] = &unk_10001D3B8;
    v7 = v3;
    v8 = WeakRetained;
    dispatch_async(v5, v6);
  }
}

id sub_10000A09C(uint64_t a1)
{
  v2 = sub_100003F1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BluetoothManager didLoseDevice %@", &v5, 0xCu);
  }

  return [*(a1 + 40) didLoseDevice:*(a1 + 32)];
}

void sub_10000A14C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained bluetoothDiscoveryQueue];
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A1E8;
    block[3] = &unk_10001D408;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

id sub_10000A1E8(uint64_t a1)
{
  v2 = sub_100003F1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BluetoothManager discovery ended - setting all channels inactive.", v4, 2u);
  }

  return [*(a1 + 32) setAllAudioChannelsActive:0];
}

void sub_10000A260(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained bluetoothDiscoveryQueue];
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A2FC;
    block[3] = &unk_10001D408;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

id sub_10000A2FC(uint64_t a1)
{
  v2 = sub_100003F1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BluetoothManager discovery started - setting all channels active.", v4, 2u);
  }

  return [*(a1 + 32) setAllAudioChannelsActive:1];
}

void sub_10000ADAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_10000ADE8(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained didDiscoverDevice];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

void sub_10000AE64(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained didLoseDevice];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

void sub_10000AEE0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didEndDiscoveryWithError:v3];
}

void sub_10000B174(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained activeTokens];
  v3 = [v2 containsObject:*(a1 + 32)];

  v4 = [WeakRetained activeTokens];
  [v4 removeObject:*(a1 + 32)];

  if (v3)
  {
    v5 = [*(a1 + 32) tokenDiscoveryEnded];

    if (v5)
    {
      v6 = [*(a1 + 32) tokenDiscoveryEnded];
      v6[2]();
    }
  }

  [WeakRetained updateDiscovery];
}

void sub_10000B3B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained activeTokens];
  [v2 fm_safeAddObject:*(a1 + 32)];

  [WeakRetained updateDiscovery];
}

void sub_10000B594(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained activeTokens];
  v2 = [v1 copy];

  [v2 enumerateObjectsUsingBlock:&stru_10001D518];
  v3 = [WeakRetained activeTokens];
  [v3 removeAllObjects];
}

void sub_10000B61C(id a1, FMDBluetoothDiscoveryToken *a2, unint64_t a3, BOOL *a4)
{
  v6 = a2;
  v4 = [(FMDBluetoothDiscoveryToken *)v6 tokenDiscoveryEnded];

  if (v4)
  {
    v5 = [(FMDBluetoothDiscoveryToken *)v6 tokenDiscoveryEnded];
    v5[2]();
  }
}

void sub_10000B804(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scanningTimerFired];
}

void sub_10000B934(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activeTokens];
  v3 = [v2 count];

  if (v3)
  {
    v4 = sub_100003BEC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained activeTokens];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDBluetoothDiscovery unterminated tokens %@.", &v6, 0xCu);
    }
  }

  [WeakRetained updateDiscovery];
}

int64_t sub_10000BDAC(id a1, FMDBluetoothDiscoveryToken *a2, FMDBluetoothDiscoveryToken *a3)
{
  v4 = a3;
  v5 = [(FMDBluetoothDiscoveryToken *)a2 endDate];
  v6 = [(FMDBluetoothDiscoveryToken *)v4 endDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10000C5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C61C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained completion];
  v2 = v1;
  if (v1)
  {
    (*(v1 + 16))(v1);
  }
}

void sub_10000C8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C8F4(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v4 = sub_100003BEC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000DEBC(a2, v4);
    }

    v5 = kFMDErrorDomain;
    v8 = NSUnderlyingErrorKey;
    v6 = [NSError errorWithDomain:@"NSXPCError" code:a2 userInfo:0];
    v9 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    a2 = [NSError errorWithDomain:v5 code:13 userInfo:v7];
  }

  [WeakRetained setConnection:0];
  [WeakRetained _didEndDiscoveryWithError:a2];
}

void sub_10000D03C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not find class %@ in the automation bundle", &v2, 0xCu);
}

void sub_10000D244(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#PARSING invalid or no mask in maskInfo %@", &v2, 0xCu);
}

void sub_10000D2BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#PARSING invalid or no pattern in maskInfo %@", &v2, 0xCu);
}

void sub_10000D41C(void *a1)
{
  v1 = [a1 routeID];
  sub_100002448();
  sub_100007AFC(&_mh_execute_header, v2, v3, "AccessoryAudioController unable to get original volume %@", v4, v5, v6, v7, v8);
}

void sub_10000D4A0(void *a1)
{
  v1 = [a1 routeID];
  sub_100002448();
  sub_100007AFC(&_mh_execute_header, v2, v3, "AccessoryAudioController unable to set maximum volume, please file a bug to Core Audio %@", v4, v5, v6, v7, v8);
}

void sub_10000D524(void *a1)
{
  v2 = [a1 audioPlayer];
  [v2 volume];
  [a1 volumeTargetValue];
  sub_100007AD0(v3);
  sub_100007AEC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10000D5D4(void *a1)
{
  v2 = [a1 audioPlayer];
  [v2 volume];
  [a1 volumeTargetValue];
  sub_100007AEC();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10000D6A4(void *a1)
{
  v2 = [a1 audioPlayer];
  [v2 pan];
  [a1 panTargetValue];
  sub_100007AD0(v3);
  sub_100007AEC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10000D754(void *a1)
{
  v2 = [a1 audioPlayer];
  [v2 pan];
  [a1 panTargetValue];
  sub_100007AD0(v3);
  sub_100007AEC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10000DC1C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 discoveryFactory];
  v6 = [v5 accessoryId];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "got stop command for discover for different accessory %@ != %@", &v7, 0x16u);
}

void sub_10000DEBC(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDBluetoothDiscoveryXPCProxy service terminated with error : %li", &v2, 0xCu);
}

void sub_10000DF34(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDBluetoothDiscoveryXPCProxy didEndDiscoveryWithError : %@", &v2, 0xCu);
}