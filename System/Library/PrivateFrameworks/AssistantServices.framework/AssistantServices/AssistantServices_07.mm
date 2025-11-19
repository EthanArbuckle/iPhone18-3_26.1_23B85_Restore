void sub_1001A512C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "[ADLocationManager scheduleLocationUpdateSessionTeardown]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Tearing down location update session", &v3, 0xCu);
    }

    [WeakRetained cancelLocationUpdateSessionTeardown];
    WeakRetained[23] = 0;
    [WeakRetained setLastShiftedLocation:0];
  }
}

uint64_t sub_1001A5484(uint64_t a1)
{
  [*(a1 + 32) _dismissTCCDialogIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001A5634(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[ADLocationManager drainRequestsWithErrorCode:clearLocationCache:dismissDialog:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Clearing location service cache", &v4, 0xCu);
    }

    [*(a1 + 32) setLastShiftedLocation:0];
  }

  v3 = [NSError errorWithDomain:kAFLocationServiceErrorDomain code:*(a1 + 40) userInfo:0];
  [*(a1 + 32) drainAuthorizationRequestCompletionsWithPossibleError:v3];
  [*(a1 + 32) drainLocationFetchRequestsWithPossibleError:v3];
  if (*(a1 + 49) == 1)
  {
    [*(a1 + 32) _dismissTCCDialogIfNeeded];
  }
}

void sub_1001A58D4(uint64_t a1)
{
  v2 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    *v34 = 136315138;
    *&v34[4] = "[ADLocationManager currentLocationWithFetchRequest:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Internal queue hop", v34, 0xCu);
  }

  v3 = [*(a1 + 32) currentState];
  if ((v3 & 1) == 0)
  {
    v4 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *v34 = 136315138;
      *&v34[4] = "[ADLocationManager currentLocationWithFetchRequest:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Location fetch is skipped due to location services being completely disabled", v34, 0xCu);
    }

    v5 = kAFLocationServiceErrorDomain;
    v6 = 9;
LABEL_11:
    v9 = [NSError errorWithDomain:v5 code:v6 userInfo:0];
    v10 = *(*(a1 + 48) + 16);
LABEL_12:
    v10();
LABEL_13:

    return;
  }

  v7 = HIDWORD(v3);
  if (HIDWORD(v3) < 3)
  {
    v8 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *v34 = 136315394;
      *&v34[4] = "[ADLocationManager currentLocationWithFetchRequest:completion:]_block_invoke";
      *&v34[12] = 1024;
      *&v34[14] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Location fetch is skipped due to lack of authorization, status: %d", v34, 0x12u);
    }

    v5 = kAFLocationServiceErrorDomain;
    v6 = 5;
    goto LABEL_11;
  }

  if ((HIDWORD(v3) - 3) < 2)
  {
    v9 = [*(a1 + 32) lastShiftedLocation];
    v11 = *(a1 + 32);
    if (!v11[8])
    {
      v12 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        *v34 = 136315138;
        *&v34[4] = "[ADLocationManager currentLocationWithFetchRequest:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Someone is fetching current location - grabbing assertion once", v34, 0xCu);
        v11 = *(a1 + 32);
      }

      v13 = [v11 createLocationInUseAssertion];
      v14 = *(a1 + 32);
      v15 = *(v14 + 64);
      *(v14 + 64) = v13;
    }

    v16 = [*(a1 + 40) style];
    if (v16 == 1)
    {
      if (!v9)
      {
        goto LABEL_32;
      }

      v25 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        *v34 = 136315138;
        *&v34[4] = "[ADLocationManager currentLocationWithFetchRequest:completion:]_block_invoke";
        v26 = "%s Cached location is not empty and request style is 'eager'";
        v27 = v25;
        v28 = 12;
LABEL_37:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, v26, v34, v28);
      }
    }

    else
    {
      if (v16)
      {
        goto LABEL_32;
      }

      if (!v9)
      {
        v29 = AFSiriLogContextLocation;
        if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
        {
          *v34 = 136315138;
          *&v34[4] = "[ADLocationManager currentLocationWithFetchRequest:completion:]_block_invoke";
          v22 = "%s No cached location and request style is 'default'";
          v23 = v29;
          v24 = 12;
          goto LABEL_31;
        }

LABEL_32:
        v30 = AFSiriLogContextLocation;
        if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
        {
          v31 = *(a1 + 56);
          *v34 = 136315394;
          *&v34[4] = "[ADLocationManager currentLocationWithFetchRequest:completion:]_block_invoke";
          *&v34[12] = 2048;
          *&v34[14] = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s Starting location monitoring routine with accuracy of %f", v34, 0x16u);
        }

        [*(a1 + 32) _startMonitoringLocationWithDesiredAccuracy:{*(a1 + 56), *v34, *&v34[16]}];
        v32 = [[ADLocationFetchRequest alloc] initWithClientFetchRequest:*(a1 + 40) completion:*(a1 + 48)];
        [*(*(a1 + 32) + 144) addObject:v32];
        [*(a1 + 32) scheduleLocationFetchRequestTimeoutForRequest:v32 timeout:*(a1 + 64)];

        goto LABEL_13;
      }

      [v9 horizontalAccuracy];
      v17 = *(a1 + 56);
      v19 = v18 - v17;
      v20 = AFSiriLogContextLocation;
      v21 = os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO);
      if (v19 > 2.22044605e-16)
      {
        if (v21)
        {
          *v34 = 136315394;
          *&v34[4] = "[ADLocationManager currentLocationWithFetchRequest:completion:]_block_invoke";
          *&v34[12] = 2048;
          *&v34[14] = v17;
          v22 = "%s Cached location accuracy is not satisfying requested accuracy of %f and request style is 'default'";
          v23 = v20;
          v24 = 22;
LABEL_31:
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v22, v34, v24);
          goto LABEL_32;
        }

        goto LABEL_32;
      }

      if (v21)
      {
        *v34 = 136315394;
        *&v34[4] = "[ADLocationManager currentLocationWithFetchRequest:completion:]_block_invoke";
        *&v34[12] = 2048;
        *&v34[14] = v17;
        v26 = "%s Cached location satisfies requested accuracy %f and request style is 'default'";
        v27 = v20;
        v28 = 22;
        goto LABEL_37;
      }
    }

    v33 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *v34 = 136315138;
      *&v34[4] = "[ADLocationManager currentLocationWithFetchRequest:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Cached location satisfies fetch request", v34, 0xCu);
    }

    v10 = *(*(a1 + 48) + 16);
    goto LABEL_12;
  }
}

id sub_1001A6018(uint64_t a1)
{
  v2 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[ADLocationManager updateTemporaryAuthorizationForAccurateLocation:timeout:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Internal queue hop", &v18, 0xCu);
  }

  v3 = [*(a1 + 32) currentState];
  v4 = v3;
  v6 = v5;
  v7 = HIDWORD(v3);
  [*(a1 + 32) _dismissTCCDialogIfNeeded];
  if (v4 & 1) != 0 && (v7 - 3) <= 1 && (((v6 == 0) ^ *(a1 + 56)) & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v8 = *(a1 + 56);
    v9 = AFEffectiveSiriBundlePathForLocation();
    [CLLocationManager setTemporaryFullAccuracyAuthorizationGranted:v8 forBundlePath:v9];

    v10 = *(*(a1 + 32) + 136);
    v11 = objc_retainBlock(*(a1 + 40));
    [v10 addObject:v11];

    return [*(a1 + 32) scheduleAuthorizationRequestTimeoutForCompletionBlock:*(a1 + 40) timeout:*(a1 + 48)];
  }

  else
  {
    v13 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v15 = [NSNumber numberWithBool:v4 & 1];
      v16 = [NSNumber numberWithInt:v7];
      v17 = [NSNumber numberWithInteger:v6];
      v18 = 136315906;
      v19 = "[ADLocationManager updateTemporaryAuthorizationForAccurateLocation:timeout:completion:]_block_invoke";
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Temporary accuracy update is not needed. Location services enabled: %@, current auth: %@, accuracy auth: %@", &v18, 0x2Au);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

id sub_1001A64D0(uint64_t a1)
{
  v2 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v20 = 136315138;
    v21 = "[ADLocationManager updateAuthorizationStyleWithUserSelection:timeout:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Internal queue hop", &v20, 0xCu);
  }

  v3 = [*(a1 + 32) currentState];
  v4 = v3;
  v6 = v5;
  v7 = HIDWORD(v3);
  [*(a1 + 32) _dismissTCCDialogIfNeeded];
  if ((v4 & 1) == 0)
  {
    goto LABEL_4;
  }

  v13 = *(a1 + 48);
  if (v7 == 2)
  {
    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  if (v7 == 4)
  {
    if ((v13 - 3) < 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  if (v7 != 3)
  {
LABEL_15:
    if (v13 == 1)
    {
      v15 = AFEffectiveSiriBundleForLocation();
      [CLLocationManager setTemporaryAuthorizationGranted:1 forBundle:v15];
LABEL_24:

      v18 = *(*(a1 + 32) + 136);
      v19 = objc_retainBlock(*(a1 + 40));
      [v18 addObject:v19];

      return [*(a1 + 32) scheduleAuthorizationRequestTimeoutForCompletionBlock:*(a1 + 40) timeout:*(a1 + 56)];
    }

LABEL_17:
    if (v13 == 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    if (v13 == 2)
    {
      v17 = 4;
    }

    else
    {
      v17 = v16;
    }

    v15 = AFEffectiveSiriBundlePathForLocation();
    [CLLocationManager setAuthorizationStatusByType:v17 forBundlePath:v15];
    goto LABEL_24;
  }

  if ((v13 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    goto LABEL_17;
  }

LABEL_4:
  v8 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [NSNumber numberWithBool:v4 & 1];
    v11 = [NSNumber numberWithInt:v7];
    v12 = [NSNumber numberWithInteger:v6];
    v20 = 136315906;
    v21 = "[ADLocationManager updateAuthorizationStyleWithUserSelection:timeout:completion:]_block_invoke";
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Authorization style update is not needed. Location services enabled: %@, current auth: %@, accuracy auth: %@", &v20, 0x2Au);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1001A69D4(uint64_t a1)
{
  v2 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[ADLocationManager requestTemporaryAccuracyAuthorizationWithStyle:timeout:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Internal queue hop", &v11, 0xCu);
  }

  v3 = [*(a1 + 32) currentState];
  if (v3)
  {
    v7 = HIDWORD(v3);
    if (HIDWORD(v3) >= 3)
    {
      if ((HIDWORD(v3) - 3) >= 2)
      {
        return;
      }

      if (v4 == 1)
      {
        [*(a1 + 32) sendTemporaryAccuracyAuthorizationRequestWithTimeout:*(a1 + 40) completion:*(a1 + 48)];
        return;
      }

      if (v4)
      {
        return;
      }

      v10 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        v11 = 136315138;
        v12 = "[ADLocationManager requestTemporaryAccuracyAuthorizationWithStyle:timeout:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Full accuracy is already granted", &v11, 0xCu);
      }

      v9 = *(*(a1 + 40) + 16);
    }

    else
    {
      v8 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        v11 = 136315394;
        v12 = "[ADLocationManager requestTemporaryAccuracyAuthorizationWithStyle:timeout:completion:]_block_invoke";
        v13 = 1024;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Authorization status is a form of 'denied' with value: %d", &v11, 0x12u);
      }

      v9 = *(*(a1 + 40) + 16);
    }

    v9();
    return;
  }

  v5 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[ADLocationManager requestTemporaryAccuracyAuthorizationWithStyle:timeout:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Not requesting temporary accuracy authorization due to location services being completely disabled", &v11, 0xCu);
  }

  v6 = [NSError errorWithDomain:kAFLocationServiceErrorDomain code:9 userInfo:0];
  (*(*(a1 + 40) + 16))();
}

void sub_1001A6E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A6E98(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _locationManager];
    [v5 setCurrentState:{+[CLLocationManager locationServicesEnabled](CLLocationManager, "locationServicesEnabled") | (objc_msgSend(v6, "authorizationStatus") << 32), objc_msgSend(v6, "accuracyAuthorization")}];

    [v5 currentState];
    v8 = v7;
    v9 = v5[17];
    v10 = objc_retainBlock(*(a1 + 40));
    LODWORD(v9) = [v9 containsObject:v10];

    if (v9)
    {
      v11 = AFSiriLogContextLocation;
      if (v3)
      {
        if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
        {
          v12 = *(*(a1 + 32) + 136);
          v13 = v11;
          v18 = 136315650;
          v19 = "[ADLocationManager sendTemporaryAccuracyAuthorizationRequestWithTimeout:completion:]_block_invoke";
          v20 = 2114;
          v21 = v3;
          v22 = 2048;
          v23 = [v12 count];
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Temporary full accuracy request failed and it's intentionally ignored. Error: %{public}@. Currently awaiting requests count: %lu", &v18, 0x20u);
        }
      }

      else
      {
        if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
        {
          v14 = v11;
          v15 = [NSNumber numberWithInt:v8 == 0];
          v18 = 136315394;
          v19 = "[ADLocationManager sendTemporaryAccuracyAuthorizationRequestWithTimeout:completion:]_block_invoke";
          v20 = 2112;
          v21 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Received non-error response for requestTemporaryFullAccuracyAuthorizationWithPurposeKey:completion:, preciseLocationEnabled: %@", &v18, 0x16u);
        }

        (*(*(a1 + 40) + 16))();
        v16 = v5[17];
        v17 = objc_retainBlock(*(a1 + 40));
        [v16 removeObject:v17];
      }
    }
  }
}

void sub_1001A72B0(uint64_t a1)
{
  v2 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[ADLocationManager requestAuthorizationWithStyle:timeout:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Internal queue hop", &v18, 0xCu);
  }

  v3 = [*(a1 + 32) currentState];
  if ((v3 & 1) == 0)
  {
    v4 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[ADLocationManager requestAuthorizationWithStyle:timeout:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Not requesting location authorization due to location services being completely disabled", &v18, 0xCu);
    }

    v5 = [NSError errorWithDomain:kAFLocationServiceErrorDomain code:9 userInfo:0];
    v6 = *(*(a1 + 40) + 16);
    goto LABEL_18;
  }

  v7 = HIDWORD(v3);
  v5 = [*(a1 + 32) _locationManager];
  if (v7)
  {
    v6 = *(*(a1 + 40) + 16);
LABEL_18:
    v6();
    goto LABEL_19;
  }

  v8 = *(*(a1 + 32) + 136);
  v9 = objc_retainBlock(*(a1 + 40));
  [v8 addObject:v9];

  [*(a1 + 32) scheduleAuthorizationRequestTimeoutForCompletionBlock:*(a1 + 40) timeout:*(a1 + 48)];
  v10 = *(a1 + 32);
  if (!v10[8])
  {
    v11 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[ADLocationManager requestAuthorizationWithStyle:timeout:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Will request location authorization - grabbing assertion once", &v18, 0xCu);
      v10 = *(a1 + 32);
    }

    v12 = [v10 createLocationInUseAssertion];
    v13 = *(a1 + 32);
    v14 = *(v13 + 64);
    *(v13 + 64) = v12;
  }

  v15 = *(a1 + 56);
  if (v15 == 1)
  {
    v17 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[ADLocationManager requestAuthorizationWithStyle:timeout:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Requesting 'always' location authorization", &v18, 0xCu);
    }

    [v5 requestAlwaysAuthorization];
  }

  else if (!v15)
  {
    v16 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[ADLocationManager requestAuthorizationWithStyle:timeout:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Requesting 'when in use' location authorization", &v18, 0xCu);
    }

    [v5 requestWhenInUseAuthorization];
  }

LABEL_19:
}

uint64_t sub_1001A76FC(uint64_t a1)
{
  v2 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADLocationManager currentAuthorizationStyle:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Internal queue hop", &v4, 0xCu);
  }

  [*(a1 + 32) currentState];
  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_1001A7E78(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    WeakRetained = [WeakRetained[18] containsObject:a1[4]];
    v3 = v8;
    if (WeakRetained)
    {
      v4 = [a1[5] lastShiftedLocation];
      if (v4)
      {
        v5 = 0;
      }

      else
      {
        v5 = [NSError errorWithDomain:kAFLocationServiceErrorDomain code:3 userInfo:0];
      }

      v6 = [a1[4] completion];
      (v6)[2](v6, v4, v5);

      [v8[18] removeObject:a1[4]];
      v3 = v8;
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

void sub_1001A8060(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[17];
    v5 = objc_retainBlock(*(a1 + 32));
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      v6 = [NSError errorWithDomain:kAFLocationServiceErrorDomain code:3 userInfo:0];
      (*(*(a1 + 32) + 16))();
      v7 = v3[17];
      v8 = objc_retainBlock(*(a1 + 32));
      [v7 removeObject:v8];
    }
  }

  else
  {
    v9 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[ADLocationManager scheduleAuthorizationRequestTimeoutForCompletionBlock:timeout:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s ADLocationManager is deallocated unexpectedly when location fetch timeout was triggered", &v10, 0xCu);
    }
  }
}

id sub_1001A8280(uint64_t a1)
{
  *(*(a1 + 32) + 192) = 0;
  v2 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[ADLocationManager dismissedAllVisibleAssistantUIForReason:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s UI dismissed per %@, ending location update session", &v5, 0x16u);
  }

  return [*(a1 + 32) endLocationUpdateSessionIfNeeded];
}

uint64_t sub_1001A8410(uint64_t a1)
{
  *(*(a1 + 32) + 192) = 1;
  if (*(*(a1 + 32) + 64))
  {
    v2 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v3 = &stru_10051F508;
      if (*(a1 + 40))
      {
        v3 = *(a1 + 40);
      }

      *buf = 136315394;
      v11 = "[ADLocationManager showingVisibleAssistantUIForReason:completion:]_block_invoke";
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s '%@' - already have an assertion, nothing to do", buf, 0x16u);
    }
  }

  else
  {
    v4 = [NSString stringWithFormat:@"first showed active UI per %@", *(a1 + 40)];
    v5 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[ADLocationManager showingVisibleAssistantUIForReason:completion:]_block_invoke";
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s '%@' - grabbing assertion once", buf, 0x16u);
    }

    v6 = [*(a1 + 32) createLocationInUseAssertion];
    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = v6;
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001A86E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 latitude];
    if (v5 == 0.0)
    {
      [v4 longitude];
      if (v6 != 0.0)
      {
        v7 = AFSiriLogContextLocation;
        if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
        {
          v11 = v7;
          [v4 latitude];
          v13 = v12;
          [v4 longitude];
          *buf = 136315651;
          v19 = "[ADLocationManager updateLocationForCommand:completion:]_block_invoke";
          v20 = 2049;
          v21 = v13;
          v22 = 2049;
          v23 = v14;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Zero latitude in SASetRequestOrigin. Latitude: %{private}f, Longitude: %{private}f", buf, 0x20u);
        }
      }
    }
  }

  v8 = *(*(a1 + 32) + 48);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001A8C40;
  v15[3] = &unk_10051E038;
  v9 = *(a1 + 40);
  v16 = v4;
  v17 = v9;
  v10 = v4;
  dispatch_async(v8, v15);
}

void sub_1001A8884(id *a1)
{
  if ([a1[4] currentState])
  {
    v3 = v2;
    if (AFLocationStatusIsDenied())
    {
      v4 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v29 = "[ADLocationManager updateLocationForCommand:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Location Services Denied for assistant", buf, 0xCu);
      }

      [a1[4] _generateLocationDeniedResponseForGetRequestOriginCommand:a1[5] completion:a1[6]];
      return;
    }

    if ([a1[4] _locationUpdateIsCapableOfSucceeding] & 1) != 0 || (+[ADPreferences sharedPreferences](ADPreferences, "sharedPreferences"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "ignoreLocationWiFiStatus"), v6, (v7))
    {
      v8 = a1[4];
      if (a1[5])
      {
        v27 = [v8 locationForSnapshot];
        [a1[5] desiredCLAccuracy];
        if ((v3 || [v27 _af_isWithinAccuracy:?]) && (objc_msgSend(a1[5], "maxAge"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v27, "_af_isOlderThanAge:", v9), v9, (v10 & 1) == 0))
        {
          [a1[4] _generateResponseForGetRequestOriginCommand:a1[5] withUnshiftedLocation:v27 completion:a1[6]];
        }

        else
        {
          v11 = [objc_opt_class() _shouldUseOneshotLocationRequest];
          v12 = a1[4];
          v13 = a1[5];
          v14 = a1[6];
          if (v11)
          {
            [v12 _requestLocationForGetRequestOrigin:v13 completion:v14];
          }

          else
          {
            [v12 _startMonitoringLocationForGetRequestOrigin:v13 completion:v14];
          }
        }

        return;
      }

      v15 = v8[14];
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = [v8 locationForSnapshot];
        if (!v16)
        {
          v23 = AFSiriLogContextLocation;
          if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v29 = "[ADLocationManager updateLocationForCommand:completion:]_block_invoke";
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s No cached location, waiting for first update", buf, 0xCu);
          }

          v24 = objc_retainBlock(a1[6]);
          v25 = a1[4];
          v26 = v25[4];
          v25[4] = v24;

          v16 = 0;
          goto LABEL_32;
        }
      }

      v20 = AFSiriLogContextLocation;
      if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v29 = "[ADLocationManager updateLocationForCommand:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Using cached location", buf, 0xCu);
      }

      [a1[4] _generateResponseForGetRequestOriginCommand:a1[5] withUnshiftedLocation:v16 completion:a1[6]];
LABEL_32:
      v21 = [objc_opt_class() _shouldUseOneshotLocationRequest];
      v22 = a1[4];
      if (v21)
      {
        [v22 _requestLocationWithBestAccuracy];
      }

      else
      {
        [v22 _startMonitoringLocationWithDesiredAccuracy:v22[21]];
      }

      return;
    }

    v17 = a1[4];
    v18 = a1[5];
    v19 = a1[6];

    [v17 _generateLocationWiFiOffResponseForGetRequestOriginCommand:v18 completion:v19];
  }

  else
  {
    v5 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[ADLocationManager updateLocationForCommand:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Location Services Disabled", buf, 0xCu);
    }

    [a1[4] _generateLocationDisabledResponseForGetRequestOriginCommand:a1[5] completion:a1[6]];
  }
}

uint64_t sub_1001A8C40(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_1001A9314(uint64_t a1)
{
  [*(a1 + 32) updateLocationSnapshot];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_1001A9810(uint64_t a1)
{
  v10[0] = @"newAuthorization";
  v2 = [NSNumber numberWithInt:*(a1 + 44)];
  v11[0] = v2;
  v10[1] = @"lastAuthorization";
  v3 = [NSNumber numberWithInt:*(a1 + 60)];
  v11[1] = v3;
  v10[2] = @"lastEnabled";
  v4 = [NSNumber numberWithBool:*(a1 + 56)];
  v11[2] = v4;
  v10[3] = @"refID";
  v5 = [*(*(a1 + 32) + 24) aceId];
  v6 = v5;
  v7 = @"NULL";
  if (v5)
  {
    v7 = v5;
  }

  v11[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

void sub_1001A995C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A9BD8;
  v7[3] = &unk_10051E010;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1001A99F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A9B84;
  v7[3] = &unk_10051E010;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1001A9A94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A9B30;
  v7[3] = &unk_10051E010;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1001A9B30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained locationManager:*(a1 + 32) wantsToSetRequestOrigin:*(a1 + 40)];
}

void sub_1001A9B84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained locationManager:*(a1 + 32) wantsToSetRequestOrigin:*(a1 + 40)];
}

void sub_1001A9BD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained locationManager:*(a1 + 32) wantsToSetRequestOrigin:*(a1 + 40)];
}

id sub_1001A9FC0(uint64_t a1)
{
  v11[0] = @"errorCode";
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) code]);
  v12[0] = v2;
  v11[1] = @"errorDomain";
  v3 = [*(a1 + 32) domain];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"NULL";
  }

  v12[1] = v5;
  v11[2] = @"refID";
  v6 = [*(*(a1 + 40) + 24) aceId];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"NULL";
  }

  v12[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

void sub_1001AA424(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_1001AA450(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [NSError errorWithDomain:kAFLocationServiceErrorDomain code:7 userInfo:0];
    [WeakRetained drainLocationFetchRequestsWithPossibleError:v3];
    [WeakRetained endLocationUpdateSessionIfNeeded];
  }

  else
  {
    v4 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = v4;
      v7 = NSStringFromSelector(v5);
      v8 = 136315394;
      v9 = "[ADLocationManager locationManager:didUpdateLocations:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s ADLocationManager is deallocated unexpectedly while waiting for location shifting to complete. Origin %@", &v8, 0x16u);
    }
  }
}

void sub_1001AA590(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v14 = NSUnderlyingErrorKey;
      v15 = v6;
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = [NSError errorWithDomain:kAFLocationServiceErrorDomain code:8 userInfo:v8];
    }

    else
    {
      v9 = 0;
    }

    [WeakRetained setLastShiftedLocation:v5];
    [WeakRetained updateLocationSnapshot];
    [WeakRetained drainLocationFetchRequestsWithPossibleError:v9];
    [WeakRetained endLocationUpdateSessionIfNeeded];
  }

  else
  {
    v10 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = v10;
      v13 = NSStringFromSelector(v11);
      *buf = 136315394;
      v17 = "[ADLocationManager locationManager:didUpdateLocations:]_block_invoke";
      v18 = 2112;
      v19 = v13;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s ADLocationManager is deallocated unexpectedly while waiting for location shifting to complete. Origin %@", buf, 0x16u);
    }
  }
}

void sub_1001AA844(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;
}

void sub_1001AA988(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 112))
  {
LABEL_4:
    objc_storeStrong((v2 + 112), *(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 _processUpdatedLocation:v4];
    return;
  }

  if ([*(a1 + 40) ad_isNewerThan:?])
  {
    v2 = *(a1 + 32);
    goto LABEL_4;
  }

  v5 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADLocationManager peerLocationConnection:didReceiveUnsolicitedLocation:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Ignoring location older than _lastPeerLocation", &v6, 0xCu);
  }
}

void sub_1001AABE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001AAC7C;
  v7[3] = &unk_10051E010;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1001AAC7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained locationManager:*(a1 + 32) wantsToSetRequestOrigin:*(a1 + 40)];
}

void sub_1001AAF1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextLocation;
  v5 = os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      *buf = 136315395;
      v11 = "[ADLocationManager _requestLocationWithBestAccuracy]_block_invoke";
      v12 = 2113;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Received location from peer: %{private}@", buf, 0x16u);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001AB09C;
    v8[3] = &unk_10051E010;
    v8[4] = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }

  else if (v5)
  {
    *buf = 136315138;
    v11 = "[ADLocationManager _requestLocationWithBestAccuracy]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Received empty location response from peer", buf, 0xCu);
  }
}

id sub_1001AB09C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 112), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _processUpdatedLocation:v3];
}

void sub_1001AB4D8(uint64_t a1)
{
  v2 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[ADLocationManager _scheduleLocationTimerWithTimeout:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Location timer firing", buf, 0xCu);
  }

  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    v4 = [*(a1 + 32) locationForSnapshot];
    if (v4)
    {
      [*(a1 + 32) _generateResponseForGetRequestOriginCommand:v3 withUnshiftedLocation:v4 completion:*(*(a1 + 32) + 32)];
    }

    else
    {
      v5 = +[AFAnalytics sharedAnalytics];
      v6 = [NSNumber numberWithDouble:*(a1 + 40), @"timeout"];
      v11[1] = @"refID";
      v12[0] = v6;
      v7 = [v3 aceId];
      v8 = v7;
      v9 = @"NULL";
      if (v7)
      {
        v9 = v7;
      }

      v12[1] = v9;
      v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
      [v5 logEventWithType:1929 context:v10];

      [*(a1 + 32) _triggerLocationABCForSubtype:@"location_timeout"];
      [*(a1 + 32) _generateLocationTimedOutResponseForGetRequestOriginCommand:v3 completion:*(*(a1 + 32) + 32)];
    }

    [*(a1 + 32) _clearCompletionState];
  }

  [*(a1 + 32) _cancelLocationTimer];
  [*(a1 + 32) endLocationUpdateSessionIfNeeded];
}

id sub_1001AB798(uint64_t a1)
{
  v2 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[ADLocationManager _scheduleLocationSLATimer]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Location-SLA timer firing", &v4, 0xCu);
  }

  [*(a1 + 32) _triggerLocationABCForSubtype:@"slow_location_update"];
  return [*(a1 + 32) _cancelLocationSLATimer];
}

void sub_1001ABD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001ABDBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _generateLocationTimedOutResponseForGetRequestOriginCommand:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v4 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 56);
      v6 = v4;
      v7 = NSStringFromSelector(v5);
      v8 = 136315394;
      v9 = "[ADLocationManager _generateResponseForGetRequestOriginCommand:withUnshiftedLocation:completion:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s ADLocationManager is deallocated unexpectedly while waiting for location shifting to complete. Origin %@", &v8, 0x16u);
    }
  }
}

void sub_1001ABEC8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = AFSiriLogContextLocation;
    if (!os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v9 = *(a1 + 56);
    v10 = v8;
    v11 = NSStringFromSelector(v9);
    v19 = 136315394;
    v20 = "[ADLocationManager _generateResponseForGetRequestOriginCommand:withUnshiftedLocation:completion:]_block_invoke";
    v21 = 2112;
    v22 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s ADLocationManager is deallocated unexpectedly while waiting for location shifting to complete. Origin %@", &v19, 0x16u);

LABEL_11:
    goto LABEL_12;
  }

  if (!a3)
  {
    [v5 coordinate];
    if (v12 == 0.0)
    {
      [v5 coordinate];
      if (v13 != 0.0)
      {
        v14 = AFSiriLogContextLocation;
        if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
        {
          v19 = 136315395;
          v20 = "[ADLocationManager _generateResponseForGetRequestOriginCommand:withUnshiftedLocation:completion:]_block_invoke";
          v21 = 2113;
          v22 = v5;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Zero latitude detected: %{private}@", &v19, 0x16u);
        }
      }
    }

    v10 = objc_opt_new();
    [v7 currentState];
    v16 = [NSNumber numberWithInt:v15 == 0];
    [v10 setPreciseLocationEnabled:v16];

    [v10 setPropertiesWithCLLocation:v5];
    v17 = [*(a1 + 32) aceId];
    [v10 setRefId:v17];

    v18 = [*(a1 + 32) desiredAccuracy];
    [v10 setDesiredAccuracy:v18];

    [v7[15] logLocationSend];
    [v7 setLocationSentToServer:v5];
    [v7 setNeedsToSendLocation:0];
    (*(*(a1 + 40) + 16))();
    goto LABEL_11;
  }

  [WeakRetained _generateLocationUnknownResponseForGetRequestOriginCommand:*(a1 + 32) completion:*(a1 + 40)];
LABEL_12:
}

void sub_1001AC344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001AC364(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    v3 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[ADLocationManager shiftLocationWithTimeout:timeoutHandler:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Location shifting timed out", &v4, 0xCu);
    }

    return (*(*(v2 + 32) + 16))();
  }

  return result;
}

uint64_t sub_1001AC438(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1001AC6D8(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3, double a4)
{
  v8 = *(a1 + 32);
  v9 = CLLocationCoordinate2DMake(a2, a3);
  v10 = [CLLocation alloc];
  [v8 altitude];
  v12 = v11;
  [v8 verticalAccuracy];
  v14 = v13;
  v15 = [v8 timestamp];

  v16 = [v10 initWithCoordinate:v15 altitude:2 horizontalAccuracy:v9.latitude verticalAccuracy:v9.longitude timestamp:v12 referenceFrame:{a4, v14}];
  v17 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[ADLocationManager shiftLocation:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Successfully performed location shifting", &v18, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001AC854(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[ADLocationManager shiftLocation:completion:]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Shifting location failed due to error: %{public}@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1001AC93C(id a1)
{
  v1 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[ADLocationManager shiftLocation:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s Location shifter needs to fetch shifter function from network", &v2, 0xCu);
  }
}

id sub_1001ACC60(uint64_t a1)
{
  IsActive = AFMapsNavigationStatusIsActive();
  v3 = *(a1 + 32);

  return [v3 setIsNavigating:IsActive];
}

void sub_1001AD3F4(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADLocationManager initWithSerialQueue:]_block_invoke";
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

void sub_1001AD510(uint64_t a1)
{
  v1 = [*(a1 + 32) _locationManager];
}

void sub_1001AD730(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  v4 = v3;
  v5 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    if (*(v6 + 88))
    {
      v7 = "WILL";
    }

    else
    {
      v7 = "Will NOT";
    }

    *buf = 136315650;
    v17 = "[ADLocationManager fetchLocationAuthorization:]_block_invoke_2";
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %s wait for initial location callback %p", buf, 0x20u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 96);
  v10 = *(v8 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001AD8B0;
  v12[3] = &unk_100517610;
  v11 = *(a1 + 40);
  v14 = v2;
  v15 = v4;
  v12[4] = *(a1 + 32);
  v13 = v11;
  dispatch_group_notify(v9, v10, v12);
}

void sub_1001AD8B0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = AFSiriLogContextLocation;
  if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[ADLocationManager fetchLocationAuthorization:]_block_invoke";
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Got initial location callback %p", &v4, 0x16u);
  }
}

void sub_1001ADAA8(id a1)
{
  v1 = AFEffectiveSiriBundlePathForLocation();
  v2 = [CLLocationManager authorizationStatusForBundlePath:v1];

  if (!v2)
  {
    v3 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "+[ADLocationManager prepareForAssistantEnablementInBackground]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Location authorization status for Siri is not determined, granting default authorization for Siri requests.", &v7, 0xCu);
    }

    v4 = AFIsMac();
    v5 = AFEffectiveSiriBundleForLocation();
    if (v4)
    {
      [CLLocationManager setAuthorizationStatus:1 forBundle:v5];
    }

    else
    {
      [CLLocationManager setAuthorizationStatusByType:4 forBundle:v5];
    }

    v6 = AFSiriLogContextLocation;
    if (os_log_type_enabled(AFSiriLogContextLocation, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "+[ADLocationManager prepareForAssistantEnablementInBackground]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Prepared location subsystem for Siri.", &v7, 0xCu);
    }
  }
}

void sub_1001ADD9C(uint64_t a1)
{
  v2 = [CLLocationManager alloc];
  v3 = AFEffectiveSiriBundlePathForLocation();
  v4 = objc_alloc_init(PreciseLocationManagerDelegate);
  v5 = [v2 initWithEffectiveBundlePath:v3 delegate:v4 onQueue:qword_100590480];

  *(*(*(a1 + 32) + 8) + 24) = [v5 accuracyAuthorization] == 0;
}

void sub_1001ADE4C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.assistantd.getIsPreciseLocEnQ", v3);
  v2 = qword_100590480;
  qword_100590480 = v1;
}

void sub_1001AE6C0(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  if ((a3 & 1) != 0 || ![v5 count])
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "[ADArbitrationFeedbackManager _forwardToContextCollectorMessage:From:completion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Location Sharing Device or Context Collector not found. Returning.", &v13, 0xCu);
    }

    v9 = [AFError errorWithCode:1011 description:@"Unable to find location sharing device."];
    v12 = *(a1 + 56);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v9);
    }
  }

  else
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "[ADArbitrationFeedbackManager _forwardToContextCollectorMessage:From:completion:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Forwarding arbitration request to context collector", &v13, 0xCu);
    }

    v8 = [v6 firstObject];
    v9 = sub_100188240(v8);

    v10 = [v9 assistantIdentifier];
    [*(a1 + 32) _forwardToDevice:v10 message:*(a1 + 40) From:*(a1 + 48) completion:*(a1 + 56)];
  }
}

void sub_1001AEA14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = 136315650;
      v11 = "[ADArbitrationFeedbackManager _forwardToDevice:message:From:completion:]_block_invoke";
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Error in forwarding arbitration info to %@: error:%@", &v10, 0x20u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

id sub_1001AEDE0(uint64_t a1, void *a2)
{
  v3 = [a2 idsDeviceUniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL sub_1001AEE34(id a1, AFPeerInfo *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(AFPeerInfo *)a2 rapportEffectiveIdentifier:a3];
  v5 = [v4 isEqualToString:@"BTPipe-Phone"];

  return v5;
}

void sub_1001AF0C0(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001AF198;
  block[3] = &unk_100519D50;
  v15 = a3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v7;
  block[4] = v8;
  v12 = v9;
  v13 = v5;
  v10 = v5;
  dispatch_async(v6, block);
}

void sub_1001AF198(uint64_t a1)
{
  if (*(a1 + 64) != 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) firstObject];
    v6 = [v3 _findContextCollectorIn:v4 withIDSIdentifier:v5];

    if (v6)
    {
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v15 = v7;
        v16 = [v6 assistantIdentifier];
        v17 = 136315394;
        v18 = "[ADArbitrationFeedbackManager _findTargetDeviceInDeviceCircleLocalPeer:remotePeers:completion:]_block_invoke";
        v19 = 2112;
        v20 = v16;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Target device is context collector: %@", &v17, 0x16u);
      }

      v8 = *(a1 + 56);
      v9 = [v6 assistantIdentifier];
      (*(v8 + 16))(v8, v9, 0);
    }

    else
    {
      if (![*(a1 + 32) _shouldRouteThroughPairedPhone])
      {
        v14 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          v17 = 136315138;
          v18 = "[ADArbitrationFeedbackManager _findTargetDeviceInDeviceCircleLocalPeer:remotePeers:completion:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Unable to find a locationSharing device or context collector. Returning.", &v17, 0xCu);
        }

        (*(*(a1 + 56) + 16))();
        goto LABEL_10;
      }

      v9 = [*(a1 + 32) _findPairedPhoneIn:*(a1 + 40)];
      v10 = AFSiriLogContextConnection;
      v11 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        if (v11)
        {
          v17 = 136315138;
          v18 = "[ADArbitrationFeedbackManager _findTargetDeviceInDeviceCircleLocalPeer:remotePeers:completion:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Unable to find a context collector. Try sending to the paired companion phone.", &v17, 0xCu);
        }

        v12 = *(a1 + 56);
        v13 = [v9 assistantIdentifier];
        (*(v12 + 16))(v12, v13, 0);
      }

      else
      {
        if (v11)
        {
          v17 = 136315138;
          v18 = "[ADArbitrationFeedbackManager _findTargetDeviceInDeviceCircleLocalPeer:remotePeers:completion:]_block_invoke";
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Unable to find a context collector or paired companion phone. Returning.", &v17, 0xCu);
        }

        (*(*(a1 + 56) + 16))(*(a1 + 56), 0, 0);
      }
    }

LABEL_10:
    return;
  }

  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "[ADArbitrationFeedbackManager _findTargetDeviceInDeviceCircleLocalPeer:remotePeers:completion:]_block_invoke_2";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Location sharing device not available and local device is already a context collector. returning.", &v17, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
}

SCDAFDevice *__cdecl sub_1001AF4F8(id a1, AFPeerInfo *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [(AFPeerInfo *)v2 idsIdentifier];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(AFPeerInfo *)v2 idsIdentifier];
    [v3 setIdsIdentifier:v6];
  }

  v7 = [(AFPeerInfo *)v2 name];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(AFPeerInfo *)v2 name];
    [v3 setName:v9];
  }

  v10 = [(AFPeerInfo *)v2 buildVersion];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(AFPeerInfo *)v2 buildVersion];
    [v3 setBuild:v12];
  }

  v13 = [(AFPeerInfo *)v2 assistantIdentifier];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(AFPeerInfo *)v2 assistantIdentifier];
    [v3 setAssistantId:v15];
  }

  v16 = [(AFPeerInfo *)v2 productType];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [(AFPeerInfo *)v2 productType];
    v19 = [SCDAFDevice deviceClassFromProductTypeString:v18];

    v20 = [NSNumber numberWithUnsignedInteger:v19];
    v29 = v20;
    v21 = [NSArray arrayWithObjects:&v29 count:1];
    [v3 setDeviceClass:v21];

    v22 = [(AFPeerInfo *)v2 productType];
    v28 = v22;
    v23 = [NSArray arrayWithObjects:&v28 count:1];
    [v3 setProductTypes:v23];
  }

  v24 = [(AFPeerInfo *)v2 roomName];
  v25 = [v24 length];

  if (v25 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v26 = [(AFPeerInfo *)v2 roomName];
    [v3 performSelector:"setRoomName:" withObject:v26];
  }

  return v3;
}

void sub_1001AFB74(uint64_t a1)
{
  v2 = objc_alloc_init(SCDAFDevice);
  v3 = AFBuildVersion();
  [v2 setBuild:v3];

  if (AFDeviceEnclosureRGBColor())
  {
    v4 = [NSString stringWithFormat:@"#%02X", AFDeviceEnclosureRGBColor()];
    [v2 setEnclosureColor:v4];
  }

  v5 = +[NSLocale currentLocale];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 countryCode];
    [v6 languageCode];
    if (v7)
      v8 = {;
      v9 = [v6 countryCode];
      v10 = [NSString stringWithFormat:@"%@_%@", v8, v9];
    }

    else
      v10 = {;
    }

    if ([v10 length])
    {
      [v2 setLocale:v10];
    }
  }

  v11 = sub_10001136C(0);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 connectedBTProductID];

    if (v13)
    {
      v14 = [v12 connectedBTProductID];
      v15 = CBProductIDFromNSString();

      v16 = [CBProductInfo productInfoWithProductID:v15];
      v13 = [v16 model];
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = AFProductType();
  v18 = v17;
  if (v17 && v13)
  {
    v46[0] = v17;
    v46[1] = v13;
    v19 = [NSArray arrayWithObjects:v46 count:2];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    v45 = v17;
    v19 = [NSArray arrayWithObjects:&v45 count:1];
  }

  v20 = v19;
  [v2 setProductTypes:v19];

LABEL_20:
  v21 = AFUserAssignedDeviceName();
  [v2 setName:v21];

  [*(a1 + 32) setDevice:v2];
  v22 = dispatch_group_create();
  dispatch_group_enter(v22);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1001B007C;
  v41 = sub_1001B008C;
  v42 = 0;
  v23 = +[ADCommandCenter sharedCommandCenter];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1001B0094;
  v34[3] = &unk_100514D10;
  v36 = &v37;
  v24 = v22;
  v35 = v24;
  [v23 fetchActiveAccount:v34];

  v25 = dispatch_time(0, 1000000000);
  v26 = dispatch_group_wait(v24, v25);
  v27 = v38[5];
  if (v27)
  {
    v28 = [v27 assistantIdentifier];
    v29 = [*(a1 + 32) device];
    [v29 setAssistantId:v28];

    v30 = [v38[5] speechIdentifier];
    v31 = [*(a1 + 32) device];
    [v31 setSpeechId:v30];

    v32 = [v38[5] assistantIdentifier];
    [*(*(a1 + 40) + 40) setLocalDeviceAssistantIdentifier:v32];
  }

  v33 = AFSiriLogContextConnection;
  if (v26)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v44 = "[ADArbitrationFeedbackManager _createDeviceInfoOperationForParticipation:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s #myriad #feedback failed to created device info", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v44 = "[ADArbitrationFeedbackManager _createDeviceInfoOperationForParticipation:]_block_invoke_2";
    _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback successfully created device info", buf, 0xCu);
  }

  _Block_object_dispose(&v37, 8);
}

void sub_1001B0058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B007C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B0094(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1001B01AC(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = [*(a1 + 32) deviceCircleManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001B0378;
  v8[3] = &unk_100514CC0;
  v8[4] = *(a1 + 32);
  v4 = v2;
  v9 = v4;
  v10 = *(a1 + 40);
  [v3 getManagedLocalAndRemotePeerInfoWithCompletion:v8];

  v5 = dispatch_time(0, 1000000000);
  v6 = dispatch_group_wait(v4, v5);
  v7 = AFSiriLogContextConnection;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[ADArbitrationFeedbackManager _createPublishOperationForParticipation:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s #myriad #feedback failed to publish", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[ADArbitrationFeedbackManager _createPublishOperationForParticipation:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback successfully published", buf, 0xCu);
  }
}

void sub_1001B0378(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v18 = "[ADArbitrationFeedbackManager _createPublishOperationForParticipation:]_block_invoke_2";
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback About to call _findTargetDeviceInDeviceCircleLocalPeer.", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001B04E0;
  v12[3] = &unk_100514CE8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v13 = v9;
  v14 = v10;
  v15 = *(a1 + 48);
  v16 = v5;
  v11 = v5;
  [v8 _findTargetDeviceInDeviceCircleLocalPeer:v11 remotePeers:v6 completion:v12];
}

void sub_1001B04E0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (![v5 length])
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v25 = "[ADArbitrationFeedbackManager _createPublishOperationForParticipation:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Unable to find a target device to publish arbitration feedback. Returning.", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (a3)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v25 = "[ADArbitrationFeedbackManager _createPublishOperationForParticipation:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Local device is location sharing device", buf, 0xCu);
    }

    v7 = [*(a1 + 40) feedbackService];
    [v7 handleReceivedArbitrationParticipation:*(a1 + 48)];

LABEL_8:
    dispatch_group_leave(*(a1 + 32));
    goto LABEL_17;
  }

  v9 = [*(a1 + 56) buildDictionaryRepresentation];
  v10 = v9;
  v11 = &__NSDictionary0__struct;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [*(a1 + 48) dictionaryRepresentation];
  if (v13)
  {
    v14 = [*(a1 + 48) dictionaryRepresentation];
    v22[0] = @"ADArbitrationParticipationMessage";
    v22[1] = @"ADArbitrationParticipationOriginDevice";
    v23[0] = v14;
    v23[1] = v12;
    v15 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v16 = *(a1 + 56);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001B07D0;
    v20[3] = &unk_100519038;
    v17 = *(a1 + 40);
    v21 = *(a1 + 32);
    [v17 _forwardToDevice:v5 message:v15 From:v16 completion:v20];
  }

  else
  {
    v18 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 48);
      *buf = 136315394;
      v25 = "[ADArbitrationFeedbackManager _createPublishOperationForParticipation:]_block_invoke";
      v26 = 2112;
      v27 = v19;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback SCDAFParticipation could not be serialized: %@", buf, 0x16u);
    }

    dispatch_group_leave(*(a1 + 32));
  }

LABEL_17:
}

void sub_1001B07D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  dispatch_group_leave(*(a1 + 32));
  if (v4)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "[ADArbitrationFeedbackManager _createPublishOperationForParticipation:]_block_invoke";
      v8 = 2112;
      v9 = v4;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback Error in publishParticipation: %@", &v6, 0x16u);
    }
  }
}

void sub_1001B095C(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = [*(a1 + 32) deviceCircleManager];
  v4 = [v3 localPeerInfo];

  if (v4)
  {
    v5 = [v4 idsIdentifier];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [*(a1 + 40) device];
      v8 = [v4 idsIdentifier];
      [v7 setIdsIdentifier:v8];
    }
  }

  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 40);
    *buf = 136315394;
    v21 = "[ADArbitrationFeedbackManager _createPeerInfoUpdateOperationForParticipation:]_block_invoke";
    v22 = 2112;
    v23 = v16;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback participation:%@", buf, 0x16u);
  }

  v10 = [*(a1 + 32) deviceCircleManager];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001B0C0C;
  v17[3] = &unk_100514CC0;
  v11 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  v18 = v11;
  v12 = v2;
  v19 = v12;
  [v10 getManagedLocalAndRemotePeerInfoWithCompletion:v17];

  v13 = dispatch_time(0, 1000000000);
  v14 = dispatch_group_wait(v12, v13);
  v15 = AFSiriLogContextConnection;
  if (v14)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[ADArbitrationFeedbackManager _createPeerInfoUpdateOperationForParticipation:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s #myriad #feedback failed to peer info identifiers", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v21 = "[ADArbitrationFeedbackManager _createPeerInfoUpdateOperationForParticipation:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback successfully peer info identifiers", buf, 0xCu);
  }
}

void sub_1001B0C0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [a3 copy];
  v8 = [v6 _nearByDevicesFrom:v7];

  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v14 = v9;
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    v16 = 136315394;
    v17 = "[ADArbitrationFeedbackManager _createPeerInfoUpdateOperationForParticipation:]_block_invoke";
    v18 = 2112;
    v19 = v15;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback nearByDevices count:%@", &v16, 0x16u);
  }

  [*(a1 + 40) setNearbyDevices:v8];
  v10 = [v5 roomName];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [*(a1 + 40) device];
    v13 = [v5 roomName];
    [v12 setRoomName:v13];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_1001B0E68(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = +[ADCommandCenter sharedCommandCenter];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001B1034;
  v9[3] = &unk_100514C98;
  v4 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v4;
  v5 = v2;
  v11 = v5;
  [v3 getCurrentContextSnapshotWithCompletion:v9];

  v6 = dispatch_time(0, 1000000000);
  v7 = dispatch_group_wait(v5, v6);
  v8 = AFSiriLogContextConnection;
  if (v7)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[ADArbitrationFeedbackManager _createDeviceContextUpdateOperationForParticipation:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s #myriad #feedback failed to retrieve device context info", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "[ADArbitrationFeedbackManager _createDeviceContextUpdateOperationForParticipation:]_block_invoke_2";
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback successfully retrieved device context info", buf, 0xCu);
  }
}

void sub_1001B1034(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
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
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) content];
        v11 = [v10 copy];

        if ([v11 fromLocalDevice])
        {
          [v4 addObject:v11];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001B11F8;
  v13[3] = &unk_100514C70;
  v12 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v12;
  [v4 enumerateObjectsUsingBlock:v13];
  dispatch_group_leave(*(a1 + 48));
}

void sub_1001B11F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 serializedContextForKey:AFDeviceContextKeyPlaybackState];
  v5 = [v3 serializedContextForKey:AFDeviceContextKeyTimer];
  v6 = [v3 serializedContextForKey:AFDeviceContextKeyAlarm];
  if (v4)
  {
    v7 = [[AFMediaPlaybackStateSnapshot alloc] initWithSerializedBackingStore:v4];
    v8 = [*(a1 + 32) _mediaStateFrom:{objc_msgSend(v7, "playbackState")}];
    [*(a1 + 40) setMediaState:v8];
  }

  if (v5)
  {
    v9 = [[AFClockTimerSnapshot alloc] initWithSerializedBackingStore:v5];
    v10 = [v9 notifiedFiringTimerIDs];
    v11 = [v10 count];

    if (v11)
    {
      v12 = &off_100533A40;
    }

    else
    {
      v13 = [v9 timersByID];
      v14 = [v13 count];

      v12 = &off_100533A28;
      if (v14)
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        v15 = [v9 timersByID];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1001B1548;
        v24[3] = &unk_10051DAA0;
        v24[4] = &v25;
        [v15 enumerateKeysAndObjectsUsingBlock:v24];

        if (*(v26 + 24))
        {
          v12 = &off_100533A58;
        }

        _Block_object_dispose(&v25, 8);
      }
    }

    [*(a1 + 40) setTimerState:v12];
  }

  if (v6)
  {
    v16 = [[AFClockAlarmSnapshot alloc] initWithSerializedBackingStore:v6];
    v17 = [v16 notifiedFiringAlarmIDs];
    v18 = [v17 count];

    if (v18)
    {
      v19 = &off_100533A40;
    }

    else
    {
      v20 = [v16 alarmsByID];
      v21 = [v20 count];

      v19 = &off_100533A28;
      if (v21)
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        v22 = [v16 alarmsByID];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1001B1590;
        v23[3] = &unk_10051DA28;
        v23[4] = &v25;
        [v22 enumerateKeysAndObjectsUsingBlock:v23];

        if (*(v26 + 24))
        {
          v19 = &off_100533A58;
        }

        _Block_object_dispose(&v25, 8);
      }
    }

    [*(a1 + 40) setAlarmState:v19];
  }
}

void sub_1001B152C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001B1548(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 state];
  if (result == 3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1001B1590(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([v8 isEnabled])
  {
    v6 = [v8 dismissedDate];
    if (v6)
    {
    }

    else
    {
      v7 = [v8 firedDate];

      if (!v7)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }
}

void sub_1001B1768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1001B1784(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = a1[4];
    if (!v3)
    {
      v4 = +[ADCommandCenter sharedCommandCenter];
      v3 = [v4 rootExecutionContexts];
    }

    [WeakRetained setExecutionContexts:0];
    if ([v3 count])
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1001B1978;
      v7[3] = &unk_100514C48;
      v8 = a1[5];
      v9 = a1[6];
      [v3 enumerateKeysAndObjectsUsingBlock:v7];
    }

    else
    {
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v11 = "[ADArbitrationFeedbackManager _createRequestInfoUpdateOperationForParticipation:forTurnId:withExecutionContxt:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s #myriad #feedback no execution contexts found. User request will be missing from feedback tool.", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v11 = "[ADArbitrationFeedbackManager _createRequestInfoUpdateOperationForParticipation:forTurnId:withExecutionContxt:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #myriad #feedback FeedbackManager instance deallocated. Returning.", buf, 0xCu);
    }
  }
}

void sub_1001B1978(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 info];
  v10 = [v9 turnId];
  v11 = [v10 isEqual:*(a1 + 32)];

  if (v11)
  {
    v12 = [v8 info];
    [*(a1 + 40) setRequestId:v7];
    v13 = [v12 speechInfo];
    v14 = [v13 speechRecognizedCommand];

    if (v14)
    {
      v15 = [v12 speechInfo];
      v16 = [v15 speechRecognizedCommand];
      v17 = [v16 af_bestTextInterpretation];
      [*(a1 + 40) setUserRequestText:v17];
      v18 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        v19 = 136315394;
        v20 = "[ADArbitrationFeedbackManager _createRequestInfoUpdateOperationForParticipation:forTurnId:withExecutionContxt:]_block_invoke";
        v21 = 2112;
        v22 = v17;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback _currentRequestRecognizedText: %@", &v19, 0x16u);
        v18 = AFSiriLogContextConnection;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = 136315394;
        v20 = "[ADArbitrationFeedbackManager _createRequestInfoUpdateOperationForParticipation:forTurnId:withExecutionContxt:]_block_invoke";
        v21 = 2112;
        v22 = v7;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback _requestID: %@", &v19, 0x16u);
      }

      *a4 = 1;
    }
  }
}

uint64_t sub_1001B204C(uint64_t a1)
{
  qword_100590490 = [objc_alloc(*(a1 + 32)) _init];

  return _objc_release_x1();
}

id sub_1001B2890(uint64_t a1)
{
  result = *(a1 + 32);
  if (result != *(a1 + 40))
  {
    result = [result isEqual:?];
    if ((result & 1) == 0)
    {
      v3 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 40);
        *buf = 136315394;
        v11 = "[ADLocalContextStore localPeerInfoUpdatedFrom:to:]_block_invoke";
        v12 = 2112;
        v13 = v7;
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #hal local peer info updated: %@", buf, 0x16u);
      }

      [*(a1 + 48) _updateLocalPeerInfo:*(a1 + 40)];
      v4 = +[AFAnalytics sharedAnalytics];
      v8 = @"local_context_type";
      v5 = AFDeviceContextKeyDeviceInfo;
      v9 = AFDeviceContextKeyDeviceInfo;
      v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      [v4 logEventWithType:4575 context:v6];

      return [*(a1 + 48) _pushContextToCollectorsForReason:v5 completion:0];
    }
  }

  return result;
}

void sub_1001B2A64(uint64_t a1)
{
  if ((AFIsATV() & 1) != 0 || AFIsHorseman())
  {
    v2 = *(a1 + 32);

    [v2 _pushContextToCollectorsForReason:@"ContextCollectorChanged" completion:0];
  }

  else
  {
    v3 = +[NSDate date];
    v17 = a1;
    v4 = [*(*(a1 + 32) + 16) objectForKey:&off_100533AB8];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v4 allContextKeys];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v4 contextMetadataForKey:v10];
          v12 = [v11 expirationDate];
          v13 = [v12 compare:v3];

          if (v13 == 1)
          {
            v14 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
            {
              v15 = v14;
              v16 = [v11 expirationDate];
              *buf = 136315650;
              v23 = "[ADLocalContextStore contextCollectorChangedToDevicesWithIdentifiers:localDeviceIsCollector:]_block_invoke";
              v24 = 2112;
              v25 = v10;
              v26 = 2112;
              v27 = v16;
              _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s %@ context is active with expiration date: %@", buf, 0x20u);
            }

            [*(v17 + 32) _pushContextToCollectorsForReason:@"ContextCollectorChanged" completion:0];

            goto LABEL_18;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }
}

void sub_1001B2EA4(uint64_t a1)
{
  v2 = +[AFAnalytics sharedAnalytics];
  v3 = *(a1 + 32);
  v12 = @"local_context_type";
  v13 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v2 logEventWithType:4575 context:v4];

  v5 = [*(a1 + 40) objectForKey:&off_100533AE8];
  if (v5)
  {
    v6 = [*(a1 + 56) objectForKey:&off_100533AE8];
    [*(*(a1 + 48) + 8) setSerializedContextSnapshot:v5 withMetadata:v6];
  }

  else
  {
    [*(*(a1 + 48) + 8) removeContextSnapshotForType:*(a1 + 32)];
  }

  v7 = [*(a1 + 40) objectForKey:&off_100533AB8];
  v8 = [*(*(a1 + 48) + 16) objectForKey:&off_100533AB8];
  v9 = v8;
  if (v7)
  {
    v10 = [*(a1 + 56) objectForKey:&off_100533AB8];
    [v9 setSerializedContextSnapshot:v7 withMetadata:v10];
  }

  else
  {
    [v8 removeContextSnapshotForType:*(a1 + 32)];
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 48) _pushContextToCollectorsForReason:*(a1 + 32) completion:0];
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    (*(v11 + 16))();
  }

  [*(a1 + 48) _didUpdateContext];
}

void sub_1001B31F4(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  if (v2)
  {
    v3 = +[AFAnalytics sharedAnalytics];
    v19 = @"local_context_type";
    v20 = v2;
    v4 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v3 logEventWithType:4575 context:v4];

    v5 = *(a1 + 40);
    v6 = *(*(a1 + 48) + 8);
    if (v5)
    {
      [v6 setContextSnapshot:v5 withMetadata:*(a1 + 32)];
      v7 = [*(*(a1 + 48) + 24) objectForKey:v2];
      if (v7)
      {
        v8 = v7;
        v10 = *(a1 + 32);
        v9 = *(a1 + 40);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1001B3440;
        v12[3] = &unk_100514F20;
        v12[4] = *(a1 + 48);
        v13 = v2;
        v14 = *(a1 + 56);
        [v8 getRedactedContextForContextSnapshot:v9 metadata:v10 privacyPolicy:50 completion:v12];
      }

      else
      {
        v11 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v16 = "[ADLocalContextStore donateContext:withMetadata:pushToRemote:]_block_invoke";
          v17 = 2112;
          v18 = v2;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s #hal No transformer for %@, not pushing to remote", buf, 0x16u);
        }

        v8 = 0;
      }
    }

    else
    {
      [v6 removeContextSnapshotForType:v2];
      v8 = [*(*(a1 + 48) + 16) objectForKey:&off_100533AB8];
      [v8 removeContextSnapshotForType:v2];
      if (*(a1 + 56) == 1)
      {
        [*(a1 + 48) _pushContextToCollectorsForReason:v2 completion:0];
      }
    }

    [*(a1 + 48) _didUpdateContext];
  }
}

void sub_1001B3440(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B3524;
  block[3] = &unk_1005162A0;
  v13 = v5;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v17 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);
}

void sub_1001B3524(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 136315651;
    v8 = "[ADLocalContextStore donateContext:withMetadata:pushToRemote:]_block_invoke_3";
    v9 = 2113;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s #hal Redacted version: %{private}@ %@", &v7, 0x20u);
  }

  v3 = [*(*(a1 + 48) + 16) objectForKey:&off_100533AB8];
  v4 = v3;
  if (*(a1 + 32))
  {
    if (*(a1 + 40))
    {
      [v3 setContextSnapshot:? withMetadata:?];
    }
  }

  else
  {
    [v3 removeContextSnapshotForType:*(a1 + 56)];
  }

  if (*(a1 + 64) == 1 && AFSupportsHALContextDonation())
  {
    [*(a1 + 48) _pushContextToCollectorsForReason:*(a1 + 56) completion:0];
  }
}

void sub_1001B3BA4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (![v5 count])
  {
    v6 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    *buf = 136315138;
    v19 = "[ADLocalContextStore _pushContextToCollector:forReason:includingKeys:excludingMandatoryKeys:includingKeysInResponse:excludingMandatoryKeysInResponse:completion:]_block_invoke";
    v7 = "%s #hal Context Collector unavailable";
    goto LABEL_7;
  }

  if (!a3)
  {
    v9 = *(*(a1 + 32) + 48);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001B3D6C;
    v13[3] = &unk_10051E0D8;
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = *(a1 + 48);
    dispatch_async(v9, v13);

    goto LABEL_11;
  }

  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[ADLocalContextStore _pushContextToCollector:forReason:includingKeys:excludingMandatoryKeys:includingKeysInResponse:excludingMandatoryKeysInResponse:completion:]_block_invoke";
    v7 = "%s #hal Local device is Context Collector, skip pushing context";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v7, buf, 0xCu);
  }

LABEL_8:
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, 0, 0);
  }

LABEL_11:
}

void sub_1001B3D6C(uint64_t a1)
{
  v2 = dispatch_group_create();
  v16 = objc_alloc_init(NSMutableArray);
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_1001B405C;
  v29[4] = sub_1001B406C;
  v30 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v3)
  {
    v4 = *v26;
    do
    {
      v5 = 0;
      do
      {
        if (*v26 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * v5);
        dispatch_group_enter(v2);
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        v9 = v7[5];
        v10 = [v7 _contextLinkMessageOptions];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1001B4074;
        v21[3] = &unk_100514ED0;
        v11 = *(a1 + 40);
        v24 = v29;
        v21[4] = v11;
        v21[5] = v6;
        v22 = v16;
        v23 = v2;
        [v9 sendRequestID:@"com.apple.siri.rapport-link.request.generic" messageType:@"context_push" messagePayload:v8 toDeviceWithIDSDeviceID:v6 options:v10 completion:v21];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v3);
  }

  v12 = *(*(a1 + 40) + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B4180;
  block[3] = &unk_10051B688;
  v13 = *(a1 + 56);
  v18 = v16;
  v19 = v13;
  v20 = v29;
  v14 = v16;
  dispatch_group_notify(v2, v12, block);

  _Block_object_dispose(v29, 8);
}

uint64_t sub_1001B405C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B4074(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B4200;
  block[3] = &unk_100514EA8;
  v15 = v5;
  v16 = v6;
  v8 = *(a1 + 64);
  v13 = *(a1 + 40);
  v9 = *(&v13 + 1);
  *&v10 = *(a1 + 56);
  *(&v10 + 1) = v8;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void sub_1001B4180(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = [*(a1 + 32) copy];
    (*(v1 + 16))(v1, v3, *(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_1001B4200(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 136315650;
    v11 = "[ADLocalContextStore _pushContextToCollector:forReason:includingKeys:excludingMandatoryKeys:includingKeysInResponse:excludingMandatoryKeysInResponse:completion:]_block_invoke_3";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s #hal response: %@, error: %@", buf, 0x20u);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v3);
  }

  else
  {
    v4 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001B4358;
    v8[3] = &unk_100514E80;
    v5 = *(a1 + 56);
    v8[4] = *(a1 + 48);
    v9 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:v8];
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_1001B4358(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;

    if (v8)
    {
      v9 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;

        if (v10)
        {
          v11 = sub_10001A3B0(v8);
          if (v11 || (sub_100188240(v8), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v12 = v11;
            v13 = [[AFDeviceContext alloc] initWithSerializedBackingStore:v10 fromLocalDevice:0 contextCollectorSource:*(a1 + 32)];
            v14 = *(a1 + 40);
            v15 = [[AFPeerContentTuple alloc] initWithInfo:v12 content:v13];
            [v14 addObject:v15];
          }

          else
          {
            v18 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              v19 = 136315394;
              v20 = "[ADLocalContextStore _pushContextToCollector:forReason:includingKeys:excludingMandatoryKeys:includingKeysInResponse:excludingMandatoryKeysInResponse:completion:]_block_invoke";
              v21 = 2112;
              v22 = v8;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s #hal Unable to resolve device ID %@ to peer info. Skipping", &v19, 0x16u);
            }
          }

LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
      }

      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315138;
        v20 = "[ADLocalContextStore _pushContextToCollector:forReason:includingKeys:excludingMandatoryKeys:includingKeysInResponse:excludingMandatoryKeysInResponse:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s #hal Serialized context is not a dictionary. Skipping", &v19, 0xCu);
      }

      v10 = 0;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315138;
    v20 = "[ADLocalContextStore _pushContextToCollector:forReason:includingKeys:excludingMandatoryKeys:includingKeysInResponse:excludingMandatoryKeysInResponse:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s #hal Device ID is not a string. Skipping", &v19, 0xCu);
  }

  v8 = 0;
LABEL_17:
}

void sub_1001B4C04(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 40) _deviceContextToVendForPrivacyClass:50];
    v3 = [v2 partialSerializedBackingStoreIncludingKeys:*(a1 + 32) excludingMandatoryKeys:*(a1 + 48)];
    if (v3)
    {
      [*(a1 + 40) _pushContextToCollector:v3 forReason:@"external_request" includingKeys:*(a1 + 32) excludingMandatoryKeys:*(a1 + 48) includingKeysInResponse:*(a1 + 56) excludingMandatoryKeysInResponse:*(a1 + 64) completion:*(a1 + 72)];
    }

    else
    {
      v6 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v10 = "[ADLocalContextStore pushContextToContextCollectorIncludingKeys:excludingMandatoryKeys:expectingResponseIncludingKeys:excludingMandatoryKeys:completion:]_block_invoke";
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s #hal serialized context is nil", buf, 0xCu);
      }

      v7 = *(a1 + 72);
      if (v7)
      {
        v8 = [AFError errorWithCode:3100];
        (*(v7 + 16))(v7, 0, v8);
      }
    }
  }

  else
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "[ADLocalContextStore pushContextToContextCollectorIncludingKeys:excludingMandatoryKeys:expectingResponseIncludingKeys:excludingMandatoryKeys:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s #hal nothing specified in includedKeysInPush", buf, 0xCu);
    }

    v5 = *(a1 + 72);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, 0);
    }
  }
}

id sub_1001B4E70(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeListener:?];
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(*(a1 + 32) + 40);

  return [v2 addListener:?];
}

uint64_t sub_1001B513C(uint64_t a1)
{
  v2 = [*(a1 + 32) _localContextWithPrivacyClass:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1001B5238(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _localContextWithPrivacyClass:*(a1 + 48)];
  (*(v1 + 16))(v1, v2);
}

void sub_1001B550C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) localPeerInfo];
  [*(a1 + 32) _updateLocalPeerInfo:v2];
}

void sub_1001B5768(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:&off_100533AB8];
  if (*(a1 + 40))
  {
    v3 = +[NSDate date];
    v4 = [AFDeviceContextMetadata alloc];
    v5 = AFDeviceContextKeyMyriadAdvertisement;
    v6 = [v3 dateByAddingTimeInterval:15.0];
    v7 = [v4 initWithType:v5 deliveryDate:v3 expirationDate:v6 redactedKeyPaths:0 historyConfiguration:0];

    [*(*(a1 + 32) + 8) setSerializedContextSnapshot:*(a1 + 40) withMetadata:v7];
    [v2 setSerializedContextSnapshot:*(a1 + 40) withMetadata:v7];
  }

  else
  {
    v5 = AFDeviceContextKeyMyriadAdvertisement;
    [*(*(a1 + 32) + 8) removeContextSnapshotForType:AFDeviceContextKeyMyriadAdvertisement];
    [v2 removeContextSnapshotForType:v5];
  }

  [*(a1 + 32) _didUpdateContext];
  v8 = +[AFAnalytics sharedAnalytics];
  v11 = @"local_context_type";
  v12 = v5;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v8 logEventWithType:4575 context:v9];

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

void sub_1001B6E28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = AFSiriLogContextDaemon;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = "remote";
      if (*(a1 + 48) == 1)
      {
        v9 = "local";
      }

      *buf = 136315394;
      v20 = "[SANPStartPlayback(ADMediaRemote) _ad_performWithMediaRemoteService:replyHandler:]_block_invoke_2";
      v21 = 2080;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %s MRMediaRemoteCommandPlay returned success", buf, 0x16u);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      v20 = "[SANPStartPlayback(ADMediaRemote) _ad_performWithMediaRemoteService:replyHandler:]_block_invoke";
      *buf = 136315650;
      if (v13 == 1)
      {
        v14 = "local";
      }

      else
      {
        v14 = "remote";
      }

      v21 = 2080;
      v22 = v14;
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s %s MRMediaRemoteCommandPlay did not return success %@", buf, 0x20u);
    }

    v11 = *(a1 + 48);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001B7520;
    v15[3] = &unk_10051E088;
    v12 = *(a1 + 32);
    v18 = *(a1 + 40);
    v16 = v5;
    v17 = v6;
    [v12 handleFailedStartPlaybackWithDestination:v11 completion:v15];
  }
}

void sub_1001B7074(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[SANPStartPlayback(ADMediaRemote) _ad_performWithMediaRemoteService:replyHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Failed to prepare for StartPlayback, failing without sending MRMediaRemoteCommandPlay", buf, 0xCu);
    }

    v10 = [[SACommandFailed alloc] initWithReason:@"Client failed to prepare for StartPlayback"];
    v11 = *(a1 + 32);
    v12 = *(a1 + 80);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001B73E0;
    v19[3] = &unk_10051E038;
    v13 = *(a1 + 64);
    v20 = v10;
    v21 = v13;
    v4 = v10;
    [v11 handleFailedStartPlaybackWithDestination:v12 completion:v19];

    v8 = v21;
    goto LABEL_10;
  }

  v3 = [*(a1 + 40) appId];
  if (v3)
  {
    v4 = v3;
LABEL_4:
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[SANPStartPlayback(ADMediaRemote) _ad_performWithMediaRemoteService:replyHandler:]_block_invoke_2";
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Sending MRMediaRemoteCommandPlay to %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v23 = 0;
    v6 = [*(a1 + 56) targetQueue];
    v18 = *(a1 + 72);
    v7 = MRMediaRemoteSendCommandToApp();

    *(*&buf[8] + 24) = v7;
    _Block_object_dispose(buf, 8);
    v8 = v18;
LABEL_10:

    goto LABEL_11;
  }

  v14 = [*(a1 + 40) targetAppId];
  v15 = [v14 scheme];
  v16 = [v15 isEqualToString:@"x-apple-siri-app"];

  if (v16)
  {
    v4 = [v14 host];

    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v17 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[SANPStartPlayback(ADMediaRemote) _ad_performWithMediaRemoteService:replyHandler:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Sending MRMediaRemoteCommandPlay now", buf, 0xCu);
  }

  v4 = [*(a1 + 56) targetQueue];
  AFMediaRemoteSendCommandWithOptions();
LABEL_11:
}

uint64_t sub_1001B73E0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

void sub_1001B7404(uint64_t a1, int a2, uint64_t a3)
{
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v10 = 136315906;
    v11 = "[SANPStartPlayback(ADMediaRemote) _ad_performWithMediaRemoteService:replyHandler:]_block_invoke";
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Sent = %d mrError=%d statuses = %@", &v10, 0x22u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = AFCommandOutcomeFromMediaRemoteStatuses();
    (*(v8 + 16))(v8, v9, 0);
  }
}

uint64_t sub_1001B7520(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_1001B7630(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [a2 _ad_mediaRemoteOptions];
  if (v11)
  {
    [v10 addEntriesFromDictionary:v11];
  }

  AFMediaRemoteSendCommandWithOptions();
}

void sub_1001B7A90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [AFSafetyBlock alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001B7BC8;
  v12[3] = &unk_100514FC0;
  v15 = *(a1 + 40);
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v10 = [v7 initWithBlock:v12];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [*(a1 + 32) volumeTracker];
    [v11 setDirtySiriOutputVolumeHostTime:*(a1 + 48)];

    [v10 invoke];
  }
}

uint64_t sub_1001B7BC8(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_1001B8610(void **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoMediaType], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, v9 = objc_msgSend(v7, "isEqualToString:", kMRMediaRemoteMediaTypeITunesRadio), v8, v9))
  {
    v10 = a1[6];
    v11 = [SACommandFailed alloc];
    v12 = [v11 initWithErrorCode:SAMPCannotGoBackToPreviousRadioSongErrorCode];
    v10[2](v10, v12, 0);
  }

  else
  {
    v13 = kMRMediaRemoteOptionPlaybackPosition;
    v14 = &off_1005343C0;
    v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    sub_1001B7630(24, a1[4], v12, a1[5], a1[6]);
  }
}

void sub_1001B8A18(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = objc_alloc_init(SAMPGetStateResponse);
  v4 = [v3 listeningToItem];
  [v9 setListeningToItem:v4];

  [v9 setState:{objc_msgSend(v3, "state")}];
  v5 = [v3 source];
  [v9 setSource:v5];

  v6 = [v3 applicationIdentifier];

  v7 = [v6 isEqualToString:@"com.apple.music"];
  v8 = [NSNumber numberWithBool:v7];
  [v9 setListeningToMusicApplication:v8];

  [v9 setHashedGroupID:0];
  (*(*(a1 + 32) + 16))();
}

void sub_1001B8C70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = &stru_10051F508;
    if (v6)
    {
      v9 = v6;
    }

    v13 = 136315906;
    v14 = "[SADomainCommand(ADMediaRemote) _ad_performAudioPausingCommand:mediaRemoteService:replyHandler:]_block_invoke";
    v15 = 1024;
    v16 = v8;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Sent MRMediaRemoteCommand %d, got %@ %@", &v13, 0x26u);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    if (*(a1 + 44) == 1)
    {
      v11 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[SADomainCommand(ADMediaRemote) _ad_performAudioPausingCommand:mediaRemoteService:replyHandler:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s reporting success", &v13, 0xCu);
        v10 = *(a1 + 32);
      }

      v12 = objc_alloc_init(SACommandSucceeded);
      (*(v10 + 16))(v10, v12, 0);
    }

    else
    {
      (*(v10 + 16))(*(a1 + 32), v5, v6);
    }
  }
}

void sub_1001B9784(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[ADDictationSessionTracker _reportSessionAssertion]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Unable to trigger ABC due to error %@.", &v4, 0x16u);
    }
  }
}

uint64_t sub_1001B9C64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B9C7C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 _sessionWithUUID:?];
  }

  else
  {
    v5 = sub_1002F491C(v2[1], &stru_10051B0D0);
    v6 = [v5 lastObject];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [*(a1 + 40) _startedOrStartingSession];
    }

    v4 = v8;
  }

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v4 uuid];
    v16 = 136315394;
    v17 = "[ADDictationSessionTracker notifyAudioFileIOTransactionStoppedForReason:sessionUUID:]_block_invoke";
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", &v16, 0x16u);
  }

  if (v4)
  {
    [*(a1 + 40) _endAudioFileIOTransactionForReason:*(a1 + 48) session:v4];
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v16 = 136315394;
      v17 = "[ADDictationSessionTracker notifyAudioFileIOTransactionStoppedForReason:sessionUUID:]_block_invoke";
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Can not find an active session with UUID %@", &v16, 0x16u);
    }
  }

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_1001B9F80(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 _sessionWithUUID:?];
  }

  else
  {
    v5 = sub_1002F491C(v2[1], &stru_10051B0B0);
    v6 = [v5 lastObject];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [*(a1 + 40) _startedOrStartingSession];
    }

    v4 = v8;
  }

  v9 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v4 uuid];
    v16 = 136315394;
    v17 = "[ADDictationSessionTracker notifySpeechRecognitionTransactionStoppedForReason:sessionUUID:]_block_invoke";
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", &v16, 0x16u);
  }

  if (v4)
  {
    [*(a1 + 40) _endSpeechRecognitionTransactionForReason:*(a1 + 48) session:v4];
  }

  else
  {
    v12 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v16 = 136315394;
      v17 = "[ADDictationSessionTracker notifySpeechRecognitionTransactionStoppedForReason:sessionUUID:]_block_invoke";
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Can not find an active session with UUID %@", &v16, 0x16u);
    }
  }

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_1001BA230(uint64_t a1)
{
  v2 = [*(a1 + 32) _startedOrStartingSession];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [v2 uuid];
    v9 = 136315394;
    v10 = "[ADDictationSessionTracker stopSessionForReason:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", &v9, 0x16u);
  }

  if (v2)
  {
    if ([v2 speechRecognitionTransactionState])
    {
      [v2 _setSpeechRecognitionTransactionState:3];
    }

    if ([v2 audioFileIOTransactionState])
    {
      [v2 _setAudioFileIOTransactionState:3];
    }
  }

  else
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADDictationSessionTracker stopSessionForReason:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Can not find an active session", &v9, 0xCu);
    }
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_1001BA5AC(uint64_t a1)
{
  v2 = [[ADDictationSession alloc] initWithUUID:*(a1 + 32) timestamp:*(a1 + 88) languageCode:*(a1 + 40) options:*(a1 + 48) speechRequestOptions:*(a1 + 56)];
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [(ADDictationSession *)v2 uuid];
    v8 = 136315394;
    v9 = "[ADDictationSessionTracker startSessionForReason:languageCode:options:speechRequestOptions:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s sessionUUID = %@", &v8, 0x16u);
  }

  [*(a1 + 64) _beginSpeechRecognitionTransactionForReason:*(a1 + 72) session:v2];
  [*(a1 + 64) _beginAudioFileIOTransactionForReason:*(a1 + 72) session:v2];
  [*(a1 + 64) _addSession:v2];
  v6 = *(*(a1 + 80) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_1001BC1C8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [*(a1 + 48) expExperimentFromExperimentAllocationStatus:v4];
    if (v5)
    {
      if (!*(a1 + 32) || ([v4 date], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "compare:", *(a1 + 32)), v6, v7 == 1))
      {
        v8 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v15 = *(a1 + 56);
          v9 = v8;
          v10 = [v5 experimentId];
          v11 = [v5 deploymentId];
          v12 = [v4 treatmentId];
          v13 = [v5 allocationStatus];
          v14 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v5 lastUpdatedAtInMs] / 1000.0);
          *buf = 136316674;
          v17 = "+[ADExperimentManager(Tracer) getAllEXPExperimentsFromProvider:cursor:environment:fromDate:retries:experimentsEmitted:namespaceAssetSet:]_block_invoke";
          v18 = 1024;
          v19 = v15;
          v20 = 2112;
          v21 = v10;
          v22 = 2048;
          v23 = v11;
          v24 = 2112;
          v25 = v12;
          v26 = 1024;
          v27 = v13;
          v28 = 2112;
          v29 = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Updated EXP experiment for environment %d. ExperimentId: %@, DeploymentId: %lld, TreatmentId: %@, Status: %d, Date: %@", buf, 0x40u);
        }

        [*(a1 + 40) addObject:v5];
      }
    }
  }
}

void sub_1001BC6C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 48) expExperimentFromExperimentAllocationStatus:v3];
  v5 = [v4 experimentNamespace];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v6)
  {
    v15 = 0;
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v7 = +[UAFAssetSetManager sharedManager];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v9 = [v7 retrieveAssetSet:v8 usages:0];

  v10 = [v9 experimentId];
  if (v10 && (v11 = v10, [v9 experimentId], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", &stru_10051F508), v12, v11, !v13))
  {
    v15 = 0;
  }

  else
  {
    v14 = AFSiriLogContextConnection;
    v15 = 1;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      log = v14;
      v28 = [v16 objectForKeyedSubscript:v5];
      v17 = *(a1 + 56);
      v18 = [v4 experimentId];
      v30 = [v4 deploymentId];
      v19 = [v3 treatmentId];
      v29 = [v4 allocationStatus];
      v20 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v4 lastUpdatedAtInMs] / 1000.0);
      *buf = 136317186;
      v34 = "+[ADExperimentManager(Tracer) getActiveEXPExperimentsFromProvider:environment:retries:]_block_invoke";
      v35 = 2112;
      *v36 = v28;
      *&v36[8] = 2112;
      *&v36[10] = v5;
      *&v36[18] = 1024;
      *&v36[20] = v17;
      v37 = 2112;
      v38 = v18;
      v39 = 2048;
      *v40 = v30;
      *&v40[8] = 2112;
      *&v40[10] = v19;
      v41 = 1024;
      v42 = v29;
      v43 = 2112;
      v44 = v20;
      v15 = 1;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s Not active AB experiment for AssetSet %@ (%@), environment %d. ExperimentId: %@, DeploymentId: %lld, TreatmentId: %@, Status: %d, Date: %@", buf, 0x54u);
    }
  }

  if (v4)
  {
LABEL_10:
    if ((v15 & 1) == 0)
    {
      v21 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        loga = *(a1 + 56);
        v22 = v21;
        v23 = [v4 experimentId];
        v24 = [v4 deploymentId];
        v25 = [v3 treatmentId];
        v26 = [v4 allocationStatus];
        v27 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v4 lastUpdatedAtInMs] / 1000.0);
        *buf = 136316674;
        v34 = "+[ADExperimentManager(Tracer) getActiveEXPExperimentsFromProvider:environment:retries:]_block_invoke";
        v35 = 1024;
        *v36 = loga;
        *&v36[4] = 2112;
        *&v36[6] = v23;
        *&v36[14] = 2048;
        *&v36[16] = v24;
        v37 = 2112;
        v38 = v25;
        v39 = 1024;
        *v40 = v26;
        *&v40[4] = 2112;
        *&v40[6] = v27;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Active EXP experiment for environment %d. ExperimentId: %@, DeploymentId: %lld, TreatmentId: %@, Status: %d, Date: %@", buf, 0x40u);
      }

      [*(a1 + 40) addObject:v4];
    }
  }

LABEL_14:
}

void sub_1001BCD94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [v3 abExperimentFromExperimentAllocationStatus:v4];
  v6 = [v4 namespaces];

  v7 = [v6 firstObject];
  v8 = [v7 name];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (!v9)
  {
    v18 = 0;
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v10 = +[UAFAssetSetManager sharedManager];
  v11 = [*(a1 + 32) objectForKeyedSubscript:v8];
  v12 = [v10 retrieveAssetSet:v11 usages:0];

  v13 = [v12 experimentId];
  if (v13 && (v14 = v13, [v12 experimentId], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", &stru_10051F508), v15, v14, !v16))
  {
    v18 = 0;
  }

  else
  {
    v17 = AFSiriLogContextConnection;
    v18 = 1;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      v20 = v17;
      v21 = [v19 objectForKeyedSubscript:v8];
      v22 = *(a1 + 56);
      v23 = [v5 experimentId];
      v24 = [v5 deploymentId];
      v25 = [v5 treatmentId];
      v32 = 136316674;
      v33 = "+[ADExperimentManager(Tracer) getActiveABExperimentsFromProvider:environment:retries:]_block_invoke";
      v34 = 2112;
      *v35 = v21;
      *&v35[8] = 2112;
      *&v35[10] = v8;
      *&v35[18] = 1024;
      *&v35[20] = v22;
      v36 = 2112;
      v37 = v23;
      v38 = 2112;
      v39 = v24;
      v40 = 2112;
      v41 = v25;
      v18 = 1;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s Not active AB experiment for AssetSet %@ (%@), environment %d. ExperimentId: %@, DeploymentId: %@, TreatmentId: %@", &v32, 0x44u);
    }
  }

  if (v5)
  {
LABEL_10:
    if ((v18 & 1) == 0)
    {
      v26 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v27 = *(a1 + 56);
        v28 = v26;
        v29 = [v5 experimentId];
        v30 = [v5 deploymentId];
        v31 = [v5 treatmentId];
        v32 = 136316162;
        v33 = "+[ADExperimentManager(Tracer) getActiveABExperimentsFromProvider:environment:retries:]_block_invoke";
        v34 = 1024;
        *v35 = v27;
        *&v35[4] = 2112;
        *&v35[6] = v29;
        *&v35[14] = 2112;
        *&v35[16] = v30;
        v36 = 2112;
        v37 = v31;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Active AB experiment for environment %d. ExperimentId: %@, DeploymentId: %@, TreatmentId: %@", &v32, 0x30u);
      }

      [*(a1 + 40) addObject:v5];
    }
  }

LABEL_14:
}

void sub_1001BD2DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001BD39C;
  v4[3] = &unk_10051D770;
  v6 = *(a1 + 40);
  v5 = v2;
  dispatch_async(v3, v4);
  if (!v2)
  {
  }
}

void sub_1001BD39C(uint64_t a1)
{
  v2 = +[ADExperimentManager assetSets];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_1001BD7D4;
  v30[4] = sub_1001BD7E4;
  v3 = +[ADExperimentManager assetSets];
  v31 = [ADExperimentManager namespaceAssetSet:v3];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1001BD7D4;
  v28 = sub_1001BD7E4;
  v29 = objc_opt_new();
  v4 = +[ADPreferences sharedPreferences];
  v5 = [v4 experimentsUAFEmitted];

  if (v5)
  {
    [v25[5] addEntriesFromDictionary:v5];
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v6 = *(a1 + 40);
  v23[2] = sub_1001BD7EC;
  v23[3] = &unk_1005150C8;
  v23[4] = &v24;
  v23[5] = v30;
  v23[6] = v6;
  v7 = objc_retainBlock(v23);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001BDB5C;
  v22[3] = &unk_1005150C8;
  v8 = *(a1 + 40);
  v22[5] = v30;
  v22[6] = v8;
  v22[4] = &v24;
  v9 = objc_retainBlock(v22);
  (v7[2])(v7);
  (v9[2])(v9);
  v10 = +[TRIAllocationStatus defaultProvider];
  v11 = *(a1 + 32);
  v12 = v11;
  if (!v11)
  {
    v12 = dispatch_get_global_queue(0, 0);
  }

  v13 = [v10 addStatusUpdateHandlerForEnvironment:3 queue:v12 block:v7];
  if (!v11)
  {
  }

  v14 = +[TRIAllocationStatus defaultProvider];
  v15 = *(a1 + 32);
  v16 = v15;
  if (!v15)
  {
    v16 = dispatch_get_global_queue(0, 0);
  }

  v17 = [v14 addStatusUpdateHandlerForEnvironment:0 queue:v16 block:v9];
  if (!v15)
  {
  }

  v18 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "+[ADExperimentManager(Tracer) tracerAllocationsWithQueue:]_block_invoke";
    v34 = 2112;
    v35 = v2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s Start observing assetSets %@", buf, 0x16u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001BDDA4;
  v19[3] = &unk_1005150F0;
  v21 = &v24;
  v20 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v19];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v30, 8);
}

uint64_t sub_1001BD7D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001BD7EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = +[TRIAllocationStatus defaultProvider];
  v4 = [v2 getActiveABExperimentsFromProvider:v3 environment:3 retries:5];

  v5 = v4;
  os_unfair_lock_lock(&unk_10058FE08);
  if (v5)
  {
    v6 = AFIsInternalInstall();
    v7 = [v5 count];
    v8 = 20;
    if (v6)
    {
      v8 = 35;
    }

    if (v8 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v5 subarrayWithRange:{0, v9}];
  }

  else
  {
    v10 = 0;
  }

  v11 = qword_10058FE00;
  qword_10058FE00 = v10;

  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = qword_10058FE00;
    if (qword_10058FE00)
    {
      v13 = [qword_10058FE00 count];
    }

    *buf = 136315394;
    v26 = "ADTrialActiveExperimentsUpdate";
    v27 = 2048;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Total active experiments updated: %lu", buf, 0x16u);
  }

  os_unfair_lock_unlock(&unk_10058FE08);
  v14 = +[ADPreferences sharedPreferences];
  v15 = [v14 lastServerExperimentCheckDate];

  v16 = +[NSDate date];
  v17 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "+[ADExperimentManager(Tracer) tracerAllocationsWithQueue:]_block_invoke";
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Search for server experiments from date %@", buf, 0x16u);
  }

  v18 = [*(*(*(a1 + 32) + 8) + 40) copy];
  v19 = *(a1 + 48);
  v20 = +[TRIAllocationStatus defaultProvider];
  v21 = [v19 getAllEXPExperimentsFromProvider:v20 cursor:0 environment:3 fromDate:v15 retries:5 experimentsEmitted:*(*(*(a1 + 32) + 8) + 40) namespaceAssetSet:*(*(*(a1 + 40) + 8) + 40)];

  if (v21)
  {
    v22 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "+[ADExperimentManager(Tracer) tracerAllocationsWithQueue:]_block_invoke";
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s New Server Experiment Check Date: %@", buf, 0x16u);
    }

    [*(a1 + 48) emitUpdatedExperiments:v21];
    v23 = +[ADPreferences sharedPreferences];
    [v23 setLastServerExperimentCheckDate:v16];

    if (([*(*(*(a1 + 32) + 8) + 40) isEqual:v18] & 1) == 0)
    {
      v24 = +[ADPreferences sharedPreferences];
      [v24 setExperimentsUAFEmitted:*(*(*(a1 + 32) + 8) + 40)];
    }
  }
}

void sub_1001BDB5C(uint64_t a1)
{
  v2 = +[ADPreferences sharedPreferences];
  v3 = [v2 lastDeviceExperimentCheckDate];

  v4 = +[NSDate date];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "+[ADExperimentManager(Tracer) tracerAllocationsWithQueue:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Search for client experiments from date %@", buf, 0x16u);
  }

  v6 = [*(*(*(a1 + 32) + 8) + 40) copy];
  v7 = *(a1 + 48);
  v8 = +[TRIAllocationStatus defaultProvider];
  v9 = [v7 getAllEXPExperimentsFromProvider:v8 cursor:0 environment:0 fromDate:v3 retries:5 experimentsEmitted:*(*(*(a1 + 32) + 8) + 40) namespaceAssetSet:*(*(*(a1 + 40) + 8) + 40)];

  if (v9)
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "+[ADExperimentManager(Tracer) tracerAllocationsWithQueue:]_block_invoke";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s New Client Experiment Check Date: %@", buf, 0x16u);
    }

    [*(a1 + 48) emitUpdatedExperiments:v9];
    v11 = +[ADPreferences sharedPreferences];
    [v11 setLastDeviceExperimentCheckDate:v4];

    if (([*(*(*(a1 + 32) + 8) + 40) isEqual:v6] & 1) == 0)
    {
      v12 = +[ADPreferences sharedPreferences];
      [v12 setExperimentsUAFEmitted:*(*(*(a1 + 32) + 8) + 40)];
    }
  }
}

void sub_1001BDDA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 copy];
  [ADExperimentManager logAssetSetExperiment:v5 trialData:v7 experimentsEmitted:*(*(*(a1 + 40) + 8) + 40)];

  v8 = +[UAFAssetSetManager sharedManager];
  v9 = *(a1 + 32);
  v10 = v9;
  if (!v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001BDEF4;
  v14[3] = &unk_10051C588;
  v15 = v5;
  v16 = v6;
  v17 = *(a1 + 40);
  v11 = v6;
  v12 = v5;
  v13 = [v8 observeAssetSet:v12 queue:v10 handler:v14];
  if (!v9)
  {
  }
}

void sub_1001BDEF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [ADExperimentManager logAssetSetExperiment:v2 trialData:v3 experimentsEmitted:*(*(*(a1 + 48) + 8) + 40)];
}

void sub_1001BE02C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForKeyedSubscript:@"TrialNamespace"];
  if (v5)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

void sub_1001BE0FC(id a1)
{
  v1 = objc_opt_new();
  v5[0] = @"TrialProject";
  v5[1] = @"TrialNamespace";
  v6[0] = @"UAF_AB";
  v6[1] = @"UAF_AB_UNDERSTANDING";
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v1 setObject:v2 forKeyedSubscript:@"com.apple.siri.understanding"];
  v3 = [NSDictionary dictionaryWithDictionary:v1];
  v4 = qword_1005904A0;
  qword_1005904A0 = v3;
}

void sub_1001BE504(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 136315650;
      v13 = "[ADCloudKitCapabilitiesDataStore synchronizeWithCompletion:]_block_invoke";
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Failed to save %@ with error: %@", &v12, 0x20u);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_8:
      v9();
    }
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v9 = *(v10 + 16);
      goto LABEL_8;
    }
  }
}

id sub_1001BEF1C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[NSString alloc] initWithFormat:@"%@_index_%@", v4, v3];

  return v5;
}

void sub_1001BFED0(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = sub_1001BEF1C(v7, v6);
  v9 = [SiriCoreSQLiteIndexDescription alloc];
  v12 = v6;
  v10 = [NSArray arrayWithObjects:&v12 count:1];

  v11 = [v9 initWithName:v8 tableName:v7 columnNames:v10 options:0];
  [v5 createIndex:v11 error:0];
}

void sub_1001C05E8(uint64_t a1)
{
  v2 = [*(a1 + 32) _account];
  v3 = [v2 localCryptoKeyData];
  if (!v3)
  {
    v19 = 0;
    v4 = AFSecurityGenerateRandomData();
    v6 = 0;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      if ([v2 setLocalCryptoKeyData:v4])
      {
        goto LABEL_3;
      }

      v5 = [AFError errorWithCode:1605];
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v4 = 0;
    goto LABEL_7;
  }

  v4 = v3;
LABEL_3:
  v5 = 0;
LABEL_7:
  v7 = [v2 identifier];
  v8 = [v7 dataUsingEncoding:4];

  v9 = *(*(a1 + 40) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C077C;
  block[3] = &unk_10051E0D8;
  v10 = *(a1 + 48);
  v15 = v4;
  v16 = v8;
  v17 = v5;
  v18 = v10;
  v11 = v5;
  v12 = v8;
  v13 = v4;
  dispatch_async(v9, block);
}

void sub_1001C0E5C(uint64_t a1)
{
  v2 = AFKeychainSetValueForAccountAndKey();
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = v2;
    v5 = *(*(a1 + 56) + 24);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001C0F08;
    v6[3] = &unk_10051CDD8;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

void sub_1001C0F08(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 32);

    v2(v3, 0);
  }

  else
  {
    v4 = [AFError errorWithCode:1613];
    (*(v1 + 16))(v1, v4);
  }
}

void sub_1001C1118(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = 1;
  if (v2 <= 3)
  {
    if (v2 == 1)
    {
LABEL_5:
      objc_initWeak(&location, *(a1 + 40));
      v4 = *(a1 + 40);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1001C1548;
      v19[3] = &unk_1005151A0;
      v20 = *(a1 + 32);
      v22[1] = v2;
      objc_copyWeak(v22, &location);
      v21 = *(a1 + 48);
      [v4 _retrieveKeyAndSaltWithCompletion:v19];

      objc_destroyWeak(v22);
      objc_destroyWeak(&location);
      return;
    }

    if (v2 != 2)
    {
      if (v2 == 3)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

LABEL_10:
    objc_initWeak(&location, *(a1 + 40));
    v5 = *(a1 + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001C179C;
    v15[3] = &unk_1005151A0;
    v16 = *(a1 + 32);
    v18[1] = v3;
    objc_copyWeak(v18, &location);
    v17 = *(a1 + 48);
    [v5 _retrieveKeyAndSaltWithCompletion:v15];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
    return;
  }

  switch(v2)
  {
    case 6:
      v3 = 2;
      goto LABEL_12;
    case 5:
LABEL_12:
      v6 = [*(a1 + 32) count];
      v7 = [[NSMutableDictionary alloc] initWithCapacity:v6];
      v8 = [[NSMutableDictionary alloc] initWithCapacity:v6];
      v9 = *(a1 + 32);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1001C14A8;
      v24[3] = &unk_1005151C8;
      v24[4] = *(a1 + 40);
      v25 = v7;
      v26 = v8;
      v27 = v3;
      v10 = v8;
      v11 = v7;
      [v9 enumerateKeysAndObjectsUsingBlock:v24];
      [*(a1 + 40) _dispatchCallbackForProcessedDataMap:v11 errorMap:v10 completion:*(a1 + 48)];

      return;
    case 4:
      v3 = 3;
      goto LABEL_10;
  }

LABEL_13:
  v12 = *(a1 + 40);
  v28 = @"error";
  v13 = [AFError errorWithCode:1600];
  v29 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v12 _dispatchCallbackForProcessedDataMap:0 errorMap:v14 completion:*(a1 + 48)];
}

void sub_1001C146C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001C14A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSecurityDigestData();
  v5 = 0;
  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:v3];
  }

  if (v5)
  {
    [*(a1 + 48) setObject:v5 forKey:v3];
  }
}

void sub_1001C1548(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v24 = @"error";
    v25 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [WeakRetained _dispatchCallbackForProcessedDataMap:0 errorMap:v7 completion:*(a1 + 40)];
  }

  else
  {
    v23 = 0;
    v7 = AFSecurityDigestData();
    WeakRetained = 0;
    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained((a1 + 48));
      v26 = @"error";
      v27 = WeakRetained;
      v9 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      [v8 _dispatchCallbackForProcessedDataMap:0 errorMap:v9 completion:*(a1 + 40)];
    }

    else
    {
      v10 = [*(a1 + 32) count];
      v11 = [[NSMutableDictionary alloc] initWithCapacity:v10];
      v12 = [[NSMutableDictionary alloc] initWithCapacity:v10];
      v13 = *(a1 + 32);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1001C1A90;
      v17[3] = &unk_1005151F0;
      v14 = v7;
      v15 = *(a1 + 56);
      v21 = v12;
      v22 = v15;
      v18 = v14;
      v19 = v11;
      v20 = 0;
      v9 = v12;
      v8 = v11;
      [v13 enumerateKeysAndObjectsUsingBlock:v17];
      v16 = objc_loadWeakRetained((a1 + 48));
      [v16 _dispatchCallbackForProcessedDataMap:v8 errorMap:v9 completion:*(a1 + 40)];
    }
  }
}

void sub_1001C179C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v24 = @"error";
    v25 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [WeakRetained _dispatchCallbackForProcessedDataMap:0 errorMap:v7 completion:*(a1 + 40)];
  }

  else
  {
    v23 = 0;
    v7 = AFSecurityDigestData();
    WeakRetained = 0;
    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained((a1 + 48));
      v26 = @"error";
      v27 = WeakRetained;
      v9 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      [v8 _dispatchCallbackForProcessedDataMap:0 errorMap:v9 completion:*(a1 + 40)];
    }

    else
    {
      v10 = [*(a1 + 32) count];
      v11 = [[NSMutableDictionary alloc] initWithCapacity:v10];
      v12 = [[NSMutableDictionary alloc] initWithCapacity:v10];
      v13 = *(a1 + 32);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1001C19F0;
      v17[3] = &unk_1005151F0;
      v14 = v7;
      v15 = *(a1 + 56);
      v21 = v12;
      v22 = v15;
      v18 = v14;
      v19 = v11;
      v20 = 0;
      v9 = v12;
      v8 = v11;
      [v13 enumerateKeysAndObjectsUsingBlock:v17];
      v16 = objc_loadWeakRetained((a1 + 48));
      [v16 _dispatchCallbackForProcessedDataMap:v8 errorMap:v9 completion:*(a1 + 40)];
    }
  }
}

void sub_1001C19F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSecurityDecryptData();
  v5 = 0;
  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:v3];
  }

  if (*(a1 + 48))
  {
    [*(a1 + 56) setObject:v5 forKey:v3];
  }
}

void sub_1001C1A90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSecurityEncryptData();
  v5 = 0;
  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:v3];
  }

  if (*(a1 + 48))
  {
    [*(a1 + 56) setObject:v5 forKey:v3];
  }
}

void sub_1001C1C3C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = 1;
  if (v2 <= 3)
  {
    if (v2 == 1)
    {
LABEL_5:
      objc_initWeak(location, *(a1 + 40));
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1001C1EB4;
      v15[3] = &unk_1005151A0;
      v4 = *(a1 + 40);
      v16 = *(a1 + 32);
      v18[1] = v2;
      objc_copyWeak(v18, location);
      v17 = *(a1 + 48);
      [v4 _retrieveKeyAndSaltWithCompletion:v15];

      objc_destroyWeak(v18);
      v5 = v16;
LABEL_11:

      objc_destroyWeak(location);
      return;
    }

    if (v2 != 2)
    {
      if (v2 == 3)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

LABEL_10:
    objc_initWeak(location, *(a1 + 40));
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001C1FB8;
    v11[3] = &unk_1005151A0;
    v6 = *(a1 + 40);
    v12 = *(a1 + 32);
    v14[1] = v3;
    objc_copyWeak(v14, location);
    v13 = *(a1 + 48);
    [v6 _retrieveKeyAndSaltWithCompletion:v11];

    objc_destroyWeak(v14);
    v5 = v12;
    goto LABEL_11;
  }

  if (v2 == 6 || v2 == 5)
  {
    location[1] = 0;
    v7 = AFSecurityDigestData();
    v8 = 0;
    [*(a1 + 40) _dispatchCallbackForProcessedData:v7 error:v8 completion:*(a1 + 48)];

    return;
  }

  if (v2 == 4)
  {
    v3 = 3;
    goto LABEL_10;
  }

LABEL_13:
  v9 = *(a1 + 40);
  v10 = [AFError errorWithCode:1600];
  [v9 _dispatchCallbackForProcessedData:0 error:v10 completion:*(a1 + 48)];
}

void sub_1001C1E94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_1001C1EB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _dispatchCallbackForProcessedData:0 error:v5 completion:*(a1 + 40)];
  }

  else
  {
    v7 = AFSecurityDigestData();
    v8 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = 0;
    }

    else
    {
      v10 = AFSecurityEncryptData();
      v9 = 0;
    }

    v11 = objc_loadWeakRetained((a1 + 48));
    [v11 _dispatchCallbackForProcessedData:v10 error:v9 completion:*(a1 + 40)];
  }
}

void sub_1001C1FB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _dispatchCallbackForProcessedData:0 error:v5 completion:*(a1 + 40)];
  }

  else
  {
    v7 = AFSecurityDigestData();
    v8 = 0;
    if (v8)
    {
      v9 = v8;
      v10 = 0;
    }

    else
    {
      v10 = AFSecurityDecryptData();
      v9 = 0;
    }

    v11 = objc_loadWeakRetained((a1 + 48));
    [v11 _dispatchCallbackForProcessedData:v10 error:v9 completion:*(a1 + 40)];
  }
}

void sub_1001C2334(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADSecurityService init]_block_invoke";
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

void sub_1001C2450(uint64_t a1, unint64_t a2)
{
  v3 = [[NSString alloc] initWithFormat:@"Queue %s did not respond to watchdog and is likely blocked.", dispatch_queue_get_label(*(a1 + 32))];
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v7 = "[ADSecurityService init]_block_invoke";
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

void sub_1001C256C(id a1)
{
  v1 = objc_alloc_init(ADSecurityService);
  v2 = qword_1005904B8;
  qword_1005904B8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001C29C4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  v3 = +[NSDate date];
  v4 = [v2 compare:v3];

  if (v4 == -1)
  {
    v5 = [AFDeviceContextMetadata alloc];
    v6 = AFDeviceContextKeyHeardVoiceTrigger;
    v7 = +[NSDate date];
    v8 = [NSDate dateWithTimeIntervalSinceNow:15.0];
    v9 = [v5 initWithType:v6 deliveryDate:v7 expirationDate:v8 redactedKeyPaths:0 historyConfiguration:0];

    [*(*(a1 + 32) + 48) donateContext:&off_100533B30 withMetadata:v9 pushToRemote:0];
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315138;
      v12 = "[ADDeviceProximityManager notifyObserver:didReceiveNotificationWithToken:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #hal Heard Voice Trigger expired", &v11, 0xCu);
    }
  }
}

void sub_1001C2B44(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  v3 = +[NSDate date];
  v4 = [v2 compare:v3];

  if (v4 == -1)
  {
    v5 = [AFDeviceContextMetadata alloc];
    v6 = AFDeviceContextKeyHeardVoiceTrigger;
    v7 = +[NSDate date];
    v8 = [NSDate dateWithTimeIntervalSinceNow:5.0];
    v9 = [v5 initWithType:v6 deliveryDate:v7 expirationDate:v8 redactedKeyPaths:0 historyConfiguration:0];

    [*(*(a1 + 32) + 48) donateContext:&off_100533B30 withMetadata:v9 pushToRemote:0];
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315138;
      v12 = "[ADDeviceProximityManager notifyObserver:didReceiveNotificationWithToken:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s #hal Voice Trigger first pass expired", &v11, 0xCu);
    }
  }
}

void sub_1001C2D38(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[ADDeviceProximityManager requestLifecycleObserver:requestDidEndWithInfo:origin:client:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s #hal cached proximity cleared", &v7, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  *(v5 + 120) = 0;
}

uint64_t sub_1001C2EA4(uint64_t a1)
{
  v2 = [*(a1 + 40) uuid];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;

  return _objc_release_x1(v2, v4);
}

id sub_1001C3298(id a1, NSArray *a2)
{
  v2 = sub_1001C32E8(a2);
  v3 = [v2 buildDictionaryRepresentation];

  return v3;
}

id sub_1001C32E8(void *a1)
{
  v1 = a1;
  v2 = +[NSDate date];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1001C3598;
  v26 = sub_1001C35A8;
  v27 = 0;
  v3 = objc_alloc_init(NSCountedSet);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001C35B0;
  v17[3] = &unk_1005152E0;
  v4 = v2;
  v18 = v4;
  v5 = v1;
  v19 = v5;
  v21 = &v22;
  v6 = v3;
  v20 = v6;
  [v5 enumerateObjectsWithOptions:2 usingBlock:v17];
  if ([v6 count] >= 2)
  {
    v7 = [v6 allObjects];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001C3744;
    v15[3] = &unk_100515308;
    v16 = v6;
    v8 = [v7 sortedArrayUsingComparator:v15];
    v9 = [v8 firstObject];
    v10 = [v9 intValue];

    if (v10 && [v23[5] proximity] != v10)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001C37FC;
      v13[3] = &unk_100515330;
      v14 = v10;
      v13[4] = &v22;
      [v5 enumerateObjectsWithOptions:2 usingBlock:v13];
    }
  }

  v11 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v11;
}

uint64_t sub_1001C3598(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001C35B0(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v8 = a2;
  v9 = *(a1 + 32);
  v10 = [v8 observationDate];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;

  if (v12 >= 420.0)
  {
    *a4 = 1;
  }

  else
  {
    if ([*(a1 + 40) count] - 1 == a3)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v16 = 136315394;
        v17 = "ADProximityObservationForHistoricalProximityObservations_block_invoke";
        v18 = 2112;
        v19 = v8;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s #hal Most recent prox observation: %@", &v16, 0x16u);
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    }

    v14 = *(a1 + 48);
    v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 proximity]);
    [v14 addObject:v15];
  }
}

uint64_t sub_1001C3744(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) countForObject:v5];
  v8 = [*(a1 + 32) countForObject:v6];
  if (v7 >= v8)
  {
    if (v7 > v8)
    {
      v9 = -1;
    }

    else
    {
      v10 = [v5 intValue];
      v11 = [v6 intValue];
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = 30;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = 30;
      }

      v14 = v12 < v13;
      v15 = v12 > v13;
      v16 = v14;
      v9 = v15 - v16;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void sub_1001C37FC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 proximity] == *(a1 + 40))
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "ADProximityObservationForHistoricalProximityObservations_block_invoke_2";
      v11 = 2112;
      v12 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s #hal Using most seen prox observation: %@", &v9, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1001C40B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C4174;
  block[3] = &unk_10051E088;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  block[4] = *(a1 + 32);
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_1001C4174(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1001C3598;
  v41 = sub_1001C35A8;
  v42 = 0;
  v3 = [AFSafetyBlock alloc];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001C4578;
  v33[3] = &unk_10051C8B8;
  v36 = &v37;
  v35 = *(a1 + 48);
  v21 = v2;
  v34 = v21;
  v4 = [v3 initWithBlock:v33];
  v5 = [AFWatchdogTimer alloc];
  v6 = *(*(a1 + 32) + 128);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001C45C4;
  v31[3] = &unk_10051DFE8;
  v19 = v4;
  v32 = v19;
  v7 = [v5 initWithTimeoutInterval:v6 onQueue:v31 timeoutHandler:0.5];
  v8 = v38[5];
  v38[5] = v7;

  [v38[5] start];
  v9 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 40);
  v10 = [obj countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v10)
  {
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        dispatch_group_enter(v9);
        v14 = *(a1 + 32);
        v15 = v14[9];
        v16 = [v14 _rapportLinkMessageOptions];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1001C467C;
        v24[3] = &unk_100515708;
        v24[4] = *(a1 + 32);
        v24[5] = v13;
        v25 = v21;
        v26 = v9;
        [v15 sendRequestID:@"com.apple.siri.rapport-link.request.device-proximity-manager" messageType:@"device_proximity_fetch" messagePayload:&__NSDictionary0__struct toDeviceWithIDSDeviceID:v13 options:v16 completion:v24];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v10);
  }

  v17 = *(*(a1 + 32) + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C4770;
  block[3] = &unk_10051DFE8;
  v23 = v19;
  v18 = v19;
  dispatch_group_notify(v9, v17, block);

  _Block_object_dispose(&v37, 8);
}

uint64_t sub_1001C4578(uint64_t a1)
{
  [*(*(*(a1 + 48) + 8) + 40) cancel];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id sub_1001C45C4(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[ADDeviceProximityManager _fetchProximityObservationsFromCollectorsWithCompletion:]_block_invoke_4";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s #hal proximity fetch timed out", &v4, 0xCu);
  }

  return [*(a1 + 32) invoke];
}

void sub_1001C467C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C4778;
  block[3] = &unk_1005180D8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v17 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void sub_1001C4778(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v7 = 136315650;
      v8 = "[ADDeviceProximityManager _fetchProximityObservationsFromCollectorsWithCompletion:]_block_invoke_2";
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s #hal Error fetching proximity information from %@: %@", &v7, 0x20u);
    }
  }

  else
  {
    v5 = [*(a1 + 48) objectForKeyedSubscript:@"proximity_observations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 af_lenientMappedArray:&stru_1005156E0];
      if ([v6 count])
      {
        [*(a1 + 56) addObjectsFromArray:v6];
      }
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

id sub_1001C48C0(id a1, NSDictionary *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[ADRapportProximityObservation alloc] initWithDictionaryRepresentation:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1001C4A88(uint64_t a1, void *a2)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = *(*(a1 + 32) + 72);
        v9 = [*(a1 + 40) buildDictionaryRepresentation];
        v10 = [*(a1 + 32) _rapportLinkMessageOptions];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1001C4C44;
        v12[3] = &unk_10051C9A8;
        v12[4] = v7;
        v13 = *(a1 + 40);
        [v8 sendRequestID:@"com.apple.siri.rapport-link.request.device-proximity-manager" messageType:@"device_proximity_push" messagePayload:v9 toDeviceWithIDSDeviceID:v7 options:v10 completion:v12];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_1001C4C44(uint64_t a1, void *a2, void *a3)
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
      v12 = 136315906;
      v13 = "[ADDeviceProximityManager _pushProximityObservationToCollector:]_block_invoke_2";
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s #hal Failed to update %@ with proximity observation: %@, error: %@", &v12, 0x2Au);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = 136315650;
    v13 = "[ADDeviceProximityManager _pushProximityObservationToCollector:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s #hal Received ack from %@ for sending observation: %@", &v12, 0x20u);
  }
}

int64_t sub_1001C5048(id a1, ADRapportProximityObservation *a2, ADRapportProximityObservation *a3)
{
  v4 = a3;
  v5 = [(ADRapportProximityObservation *)a2 observationDate];
  v6 = [(ADRapportProximityObservation *)v4 observationDate];

  v7 = [v5 compare:v6];
  return v7;
}

BOOL sub_1001C50B8(id a1, ADRapportProximityObservation *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = +[NSDate date];
  v6 = [(ADRapportProximityObservation *)v4 observationDate];

  [v5 timeIntervalSinceDate:v6];
  LOBYTE(v4) = v7 > 420.0;

  return v4;
}

void sub_1001C5634(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[ADDeviceProximityManager _proximityDiscoveryLink]_block_invoke_4";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s #hal device proximity link activation error: %@", &v4, 0x16u);
    }
  }
}

void sub_1001C5708(id a1, ADRapportLinkTransportOptionsMutating *a2)
{
  v2 = a2;
  [(ADRapportLinkTransportOptionsMutating *)v2 setAllowsBLE:2];
  [(ADRapportLinkTransportOptionsMutating *)v2 setAllowsInfraWiFi:1];
}

void sub_1001C5754(id a1, ADRapportLinkDiscoveryOptionsMutating *a2)
{
  v2 = a2;
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesHome:2];
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesRemoraDevices:2];
}

void sub_1001C5910(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[ADDeviceProximityManager _messageLink]_block_invoke_4";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s #hal message link activation error: %@", &v4, 0x16u);
    }
  }
}

void sub_1001C59F0(id a1, ADRapportLinkDiscoveryOptionsMutating *a2)
{
  v2 = a2;
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesHome:2];
  [(ADRapportLinkDiscoveryOptionsMutating *)v2 setIncludesRemoraDevices:2];
}

void sub_1001C5B4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001C5C38;
  v9[3] = &unk_1005154D8;
  v10 = [v3 mutableCopy];
  v5 = v10;
  [v4 enumerateObjectsUsingBlock:v9];

  v6 = *(a1 + 40);
  v7 = [v5 allValues];
  v8 = sub_100015BD4(v7);
  (*(v6 + 16))(v6, v8);
}

void sub_1001C5C38(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 deviceIDPair];
  v4 = [v3 adpm_sortedKeyString];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5 || [v9 proximity] && (objc_msgSend(v5, "observationDate"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "observationDate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "compare:", v7), v7, v6, v8 == -1))
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v4];
  }
}

id sub_1001C5D24(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C5DCC;
  v5[3] = &unk_1005157C8;
  v6 = *(a1 + 32);
  v3 = [a2 mutatedCopyWithMutator:v5];

  return v3;
}

void sub_1001C5DCC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setProximity:{objc_msgSend(v2, "intValue")}];
}

void sub_1001C5EF8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001C61A0;
  v15[3] = &unk_100515470;
  v3 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v3;
  v4 = v2;
  v17 = v4;
  v19 = *(a1 + 56);
  v18 = *(a1 + 48);
  v5 = objc_retainBlock(v15);
  if ((AFSupportsHALProximityScanning() & 1) == 0)
  {
    goto LABEL_7;
  }

  if ([*(*(a1 + 32) + 24) count])
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "[ADDeviceProximityManager getDeviceProximityRelativeToLocalDeviceWithDeviceContexts:includesAllReachableDevices:completion:]_block_invoke_3";
      v7 = "%s #hal Using cached proximity";
      v8 = v6;
LABEL_13:
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, v7, buf, 0xCu);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v9 = *(a1 + 32);
  v10 = v9[3];
  v11 = AFSiriLogContextDaemon;
  v12 = os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      *buf = 136315138;
      v21 = "[ADDeviceProximityManager getDeviceProximityRelativeToLocalDeviceWithDeviceContexts:includesAllReachableDevices:completion:]_block_invoke";
      v7 = "%s #hal cached proximity is empty, re-calculating based on context...";
      v8 = v11;
      goto LABEL_13;
    }

LABEL_7:
    (v5[2])(v5, 0);
    goto LABEL_8;
  }

  if (v12)
  {
    *buf = 136315138;
    v21 = "[ADDeviceProximityManager getDeviceProximityRelativeToLocalDeviceWithDeviceContexts:includesAllReachableDevices:completion:]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s #hal Calculating proximity...", buf, 0xCu);
    v9 = *(a1 + 32);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001C6610;
  v13[3] = &unk_10051DD70;
  v13[4] = v9;
  v14 = v5;
  [v9 _getAggregatedProximityObservationsWithCompletion:v13];

LABEL_8:
}

void sub_1001C61A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1001C3598;
  v39 = sub_1001C35A8;
  v40 = 0;
  if ([*(*(a1 + 32) + 24) count])
  {
    v4 = [*(*(a1 + 32) + 24) copy];
    v5 = v36[5];
    v36[5] = v4;
  }

  else
  {
    v11 = sub_100015CBC(*(a1 + 40), *(*(a1 + 32) + 40), v3);
    v12 = v36[5];
    v36[5] = v11;

    v13 = *(a1 + 48);
    if (v13 && [v13 isEqual:*(*(a1 + 32) + 120)])
    {
      objc_storeStrong((*(a1 + 32) + 24), v36[5]);
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v24 = [v36[5] count];
        *buf = 136315394;
        v43 = "[ADDeviceProximityManager getDeviceProximityRelativeToLocalDeviceWithDeviceContexts:includesAllReachableDevices:completion:]_block_invoke_2";
        v44 = 2048;
        v45 = v24;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s #hal cached %lu proximity tuples", buf, 0x16u);
      }

      if (AFIsInternalInstall())
      {
        v25 = v3;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v15 = v36[5];
        v16 = [v15 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v16)
        {
          v17 = *v32;
          do
          {
            v18 = 0;
            do
            {
              if (*v32 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = AFSiriLogContextDaemon;
              if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
              {
                v20 = *(*(&v31 + 1) + 8 * v18);
                *buf = 136315394;
                v43 = "[ADDeviceProximityManager getDeviceProximityRelativeToLocalDeviceWithDeviceContexts:includesAllReachableDevices:completion:]_block_invoke";
                v44 = 2112;
                v45 = v20;
                _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s #hal cached proximity tuple: %@", buf, 0x16u);
              }

              v18 = v18 + 1;
            }

            while (v16 != v18);
            v16 = [v15 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v16);
        }

        v3 = v25;
      }

      v21 = dispatch_time(0, 30000000000);
      v22 = *(a1 + 32);
      v23 = *(v22 + 128);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001C6678;
      block[3] = &unk_10051D4A0;
      block[4] = v22;
      block[5] = &v35;
      dispatch_after(v21, v23, block);
    }
  }

  if (*(a1 + 64) == 1)
  {
    v6 = [v36[5] af_lenientMappedDictionary:&stru_100515420];
    v7 = [v6 mutableCopy];

    v8 = *(*(a1 + 32) + 56);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001C6754;
    v26[3] = &unk_100515448;
    v9 = v7;
    v27 = v9;
    v29 = &v35;
    v28 = *(a1 + 56);
    [v8 getManagedLocalAndRemotePeerInfoWithCompletion:v26];
  }

  else
  {
    v10 = *(a1 + 56);
    v9 = [v36[5] copy];
    (*(v10 + 16))(v10, v9);
  }

  _Block_object_dispose(&v35, 8);
}

void sub_1001C6610(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 128);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  (*(*(a1 + 40) + 16))();
}

void sub_1001C6678(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (v2 == *(*(*(a1 + 40) + 8) + 40))
  {
    v4 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[ADDeviceProximityManager getDeviceProximityRelativeToLocalDeviceWithDeviceContexts:includesAllReachableDevices:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s #hal cached proximity for request cleared due to timeout", &v5, 0xCu);
      v1 = *(a1 + 32);
      v2 = *(v1 + 24);
    }

    *(v1 + 24) = 0;
  }
}

void sub_1001C6754(uint64_t a1, void *a2, void *a3)
{
  v4 = sub_100016244(a2, a3);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 info];
        v11 = [v10 assistantIdentifier];

        if (v11)
        {
          v12 = [*(a1 + 32) objectForKey:v11];

          if (!v12)
          {
            [*(a1 + 32) setObject:v9 forKey:v11];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [*(a1 + 32) allValues];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  (*(*(a1 + 40) + 16))();
}

NSDictionary *__cdecl sub_1001C68E4(id a1, AFPeerContentTuple *a2)
{
  v2 = a2;
  v3 = [(AFPeerContentTuple *)v2 info];
  v4 = [v3 assistantIdentifier];

  if (v4)
  {
    v7 = v4;
    v8 = v2;
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1001C69AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceIDPair];
  v5 = [v4 containsObject:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 deviceIDPair];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1001C72F8;
    v14 = &unk_100515218;
    v15 = *(a1 + 32);
    v7 = [v6 objectsPassingTest:&v11];
    v8 = [v7 anyObject];

    if (v8)
    {
      v16 = v8;
      v17 = v3;
      v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1001C6B14(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 af_didHearVoiceTrigger])
  {
    v4 = [v3 deviceInfo];
    [*(a1 + 32) addObject:v4];
    v5 = [v4 roomName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1001C6B9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 info];
  v5 = [v4 roomName];
  v6 = [v3 content];
  [v6 integerValue];

  if ([*(a1 + 32) containsObject:v4] && AFDeviceProximityCompare() == 1)
  {
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      v9 = [v3 info];
      v16 = 136315394;
      v17 = "_ADProximityTuplesForDeviceContexts_block_invoke_2";
      v18 = 2112;
      v19 = v9;
      v10 = "%s #hal Upgrading %@ to Near because this device heard HS";
LABEL_14:
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, v10, &v16, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([*(a1 + 40) containsObject:v5] && AFDeviceProximityCompare() == 1)
  {
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v8 = v11;
      v9 = [v3 info];
      v16 = 136315394;
      v17 = "_ADProximityTuplesForDeviceContexts_block_invoke";
      v18 = 2112;
      v19 = v9;
      v10 = "%s #hal Upgrading %@ to Near because this room has a device that heard HS";
      goto LABEL_14;
    }

LABEL_8:
    v12 = [AFPeerContentTuple alloc];
    v13 = [v3 info];
    v14 = [v12 initWithInfo:v13 content:&off_100533B48];

    goto LABEL_10;
  }

  v14 = v3;
LABEL_10:

  return v14;
}

void sub_1001C6DE0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 info];
  v8 = sub_10001AF74(v5);

  v6 = v8;
  if (v8)
  {
    v7 = [*(a1 + 32) objectForKey:?];
    if (!v7)
    {
      v7 = objc_alloc_init(NSMutableIndexSet);
      [*(a1 + 32) setObject:v7 forKey:v8];
    }

    [v7 addIndex:a3];

    v6 = v8;
  }
}

void sub_1001C6E94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSDate date];
  v8 = [v6 observationDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 < 420.0)
  {
    v11 = [v6 proximity];
    v12 = 3000;
    if (v11 == 30)
    {
      v12 = 1000;
    }

    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [*(a1 + 32) objectForKey:v5];
    if ([v14 count])
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1001C7138;
      v25[3] = &unk_100515290;
      v15 = *(a1 + 40);
      v16 = *(a1 + 56);
      v26 = v15;
      v29 = v16;
      v30 = v13;
      v27 = v5;
      v28 = *(a1 + 48);
      [v14 enumerateIndexesUsingBlock:v25];

      v17 = v26;
    }

    else
    {
      v18 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        v23 = v18;
        v24 = AFDeviceProximityGetName();
        *buf = 136315650;
        v32 = "ADProximityTuplesForProximitySignals_block_invoke";
        v33 = 2112;
        v34 = v5;
        v35 = 2112;
        v36 = v24;
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s #hal Adding %@ to proximity: %@", buf, 0x20u);
      }

      v19 = *(a1 + 48);
      v20 = [AFPeerContentTuple alloc];
      v17 = sub_100188240(v5);
      v21 = [NSNumber numberWithInteger:v13];
      v22 = [v20 initWithInfo:v17 content:v21];
      [v19 addObject:v22];
    }
  }
}

void sub_1001C7138(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectAtIndex:a2];
  v5 = [v4 content];
  [v5 integerValue];
  v6 = AFDeviceProximityCompare();

  if (v6 == 1)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 40);
      v14 = v7;
      v15 = AFDeviceProximityGetName();
      v16 = 136315650;
      v17 = "ADProximityTuplesForProximitySignals_block_invoke_5";
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v15;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s #hal Upgrading %@ to proximity: %@", &v16, 0x20u);
    }

    v8 = *(a1 + 48);
    v9 = [AFPeerContentTuple alloc];
    v10 = [v4 info];
    v11 = [NSNumber numberWithInteger:*(a1 + 64)];
    v12 = [v9 initWithInfo:v10 content:v11];
    [v8 replaceObjectAtIndex:a2 withObject:v12];
  }
}

void sub_1001C73E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001C7470;
  v2[3] = &unk_10051DD70;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _getAggregatedProximityObservationsWithCompletion:v2];
}

void sub_1001C7470(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 128);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = sub_100015CBC(0, *(*(a1 + 32) + 40), v4);

  (*(*(a1 + 40) + 16))();
}

void sub_1001C7604(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allValues];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C76C0;
  v6[3] = &unk_1005153E0;
  v6[4] = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v6];

  [*(a1 + 32) _clearProximityDiscoveryLink];
  v3 = *(*(a1 + 32) + 80);
  if (v3)
  {
    [v3 cancel];
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = 0;
  }
}

void sub_1001C76C0(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  v4 = [v3 deviceIDPair];
  if (([v4 containsObject:*(*(a1 + 32) + 40)] & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v5 = [v3 observationDate];
  v6 = [v5 compare:*(*(a1 + 32) + 88)];

  if (v6 == -1)
  {
    v7 = [v3 deviceIDPair];
    v4 = [v7 mutableCopy];

    [v4 removeObject:*(*(a1 + 32) + 40)];
    v8 = [v4 anyObject];
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[ADDeviceProximityManager _stopScanning]_block_invoke_2";
      v12 = 2112;
      v13 = v8;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s #hal Recording unseen device: %@ as Unknown proximity", &v10, 0x16u);
    }

    [*(a1 + 32) _insertProximityForRemoteDeviceID:v8 rpProximity:0];

    goto LABEL_6;
  }

LABEL_7:
}

void sub_1001C7950(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = v2;
  if (*(*(a1 + 32) + 88) && ([v2 timeIntervalSinceDate:?], v4 <= 20.0))
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = "[ADDeviceProximityManager performProximityScan]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s #hal Skip scan, previous scan occurred too recently", buf, 0xCu);
    }
  }

  else
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v17 = "[ADDeviceProximityManager performProximityScan]_block_invoke";
      v18 = 2048;
      v19 = 0x4014000000000000;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal begin scanning for %f sec", buf, 0x16u);
    }

    objc_storeStrong((*(a1 + 32) + 88), v3);
    v6 = [*(a1 + 32) _proximityDiscoveryLink];
    v7 = *(*(a1 + 32) + 80);
    if (v7)
    {
      [v7 cancel];
    }

    v8 = [AFWatchdogTimer alloc];
    v9 = *(a1 + 32);
    v10 = *(v9 + 128);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001C7B64;
    v15[3] = &unk_10051DFE8;
    v15[4] = v9;
    v11 = [v8 initWithTimeoutInterval:v10 onQueue:v15 timeoutHandler:5.0];
    v12 = *(a1 + 32);
    v13 = *(v12 + 80);
    *(v12 + 80) = v11;

    [*(*(a1 + 32) + 80) start];
  }
}

id sub_1001C7B64(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[ADDeviceProximityManager performProximityScan]_block_invoke";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s #hal Proximity scanning stopped", &v4, 0xCu);
  }

  return [*(a1 + 32) _stopScanning];
}

void sub_1001C7E8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 32);
  v5 = v4[16];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C7FC4;
  v6[3] = &unk_10051CBD8;
  v7 = v4;
  v8 = a3;
  dispatch_async(v5, v6);
}

void sub_1001C7F20(id a1, AFSiriActivationContextMutating *a2)
{
  v2 = a2;
  [(AFSiriActivationContextMutating *)v2 setSource:1];
  [(AFSiriActivationContextMutating *)v2 setEvent:4];
  [(AFSiriActivationContextMutating *)v2 setOptions:1];
}

void sub_1001C7F78(id a1, AFSiriActivationContextMutating *a2)
{
  v2 = a2;
  [(AFSiriActivationContextMutating *)v2 setSource:1];
  [(AFSiriActivationContextMutating *)v2 setEvent:15];
}

void sub_1001C8028(id a1)
{
  v1 = [ADDeviceProximityManager alloc];
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("ADDeviceProximityManager", v2);

  v3 = +[AFContextDonationService defaultService];
  v4 = +[ADDeviceCircleManager sharedInstance];
  v5 = [(ADDeviceProximityManager *)v1 _initWithQueue:v7 donationService:v3 deviceCircleManager:v4];
  v6 = qword_1005904C8;
  qword_1005904C8 = v5;
}

void sub_1001C86F8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setDiscoveryOptions:v3];
  [v4 setTransportOptions:a1[5]];
  [v4 setConnectionOptions:a1[6]];
  [v4 setEnablesProximityTracking:a1[7]];
}

void sub_1001C92C0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C931C(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(*(a1 + 32) + 64);
  if (v4 && ((*(v4 + 16))(v4, v3) & 1) == 0)
  {
    v6 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v3 homeIdentifier];
      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Ignoring item belonging to non-current Home %@", &v9, 0xCu);
    }

    v5 = 0;
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id sub_1001C9440(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [a2 eventBody];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

BOOL sub_1001C94DC(uint64_t a1, void *a2)
{
  v3 = [a2 timelinePositionWithToday:*(*(a1 + 32) + 40) withCalendar:*(*(a1 + 32) + 32)];
  if (!v3)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v3 != 0;
}

ADSynchronizedIdItemPair *sub_1001C952C(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 40) + 8) + 24);
  v4 = [v3 timelinePositionWithToday:*(*(a1 + 32) + 40) withCalendar:*(*(a1 + 32) + 32)];
  v5 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412546;
    v14 = v3;
    v15 = 1024;
    v16 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Item %@ timelineposition %d", &v13, 0x12u);
  }

  v6 = 0;
  if (v4 == 1)
  {
    v9 = 48;
    v8 = v3;
  }

  else
  {
    v7 = 0;
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v8 = 0;
    v9 = 56;
    v6 = v3;
  }

  v7 = v6;
  v10 = v3;
  ++*(*(*(a1 + v9) + 8) + 24);
  v6 = v8;
LABEL_8:
  v11 = [[ADSynchronizedIdItemPair alloc] initWithCurrent:v6 andNext:v7];

  return v11;
}

void sub_1001C984C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C9870(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001C9888(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ADAnalyticsIdentifiersUtils logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
    v8 = 67109120;
    LODWORD(v9) = v6;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Devices with at least one item %d", &v8, 8u);
  }

  if ([v3 state])
  {
    v5 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 error];
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "mergeRemotes failed %@", &v8, 0xCu);
    }
  }
}

uint64_t sub_1001C99D0(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v3 = [*(a1 + 32) _merge:*(*(*(a1 + 48) + 8) + 40) with:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

void sub_1001C9DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C9DD0(id a1, BPSCompletion *a2)
{
  v2 = a2;
  if ([(BPSCompletion *)v2 state]== 1)
  {
    v3 = +[ADAnalyticsIdentifiersUtils logger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [(BPSCompletion *)v2 error];
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Finalizing local events failed: %@", &v5, 0xCu);
    }
  }
}

id sub_1001CA84C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 homeIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

ADSynchronizedIdItem *__cdecl sub_1001CAC18(id a1, BMSiriHomeSeed *a2)
{
  v2 = a2;
  v3 = [[ADSynchronizedIdItem alloc] initWithBMHomeSeed:v2];

  return v3;
}

ADSynchronizedIdItem *__cdecl sub_1001CAF5C(id a1, BMSiriUserAggregationId *a2)
{
  v2 = a2;
  v3 = [[ADSynchronizedIdItem alloc] initWithBMUserAggregationId:v2];

  return v3;
}

ADSynchronizedIdItem *__cdecl sub_1001CB138(id a1, BMSiriUserSeed *a2)
{
  v2 = a2;
  v3 = [[ADSynchronizedIdItem alloc] initWithBMUserSeed:v2];

  return v3;
}

void sub_1001CB9AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if ([v7 statusCode] != 200)
    {
      v26 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        v27 = v26;
        v28 = +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", [v7 statusCode]);
        *buf = 136315394;
        v54 = "[ADExperimentManager _remoteFetchConfigMetadataWithServerConfigurationInfo:completion:]_block_invoke";
        v55 = 2114;
        v56 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Connected to remote configuration plist server but got back non 200 response: %{public}@", buf, 0x16u);
      }

      v13 = *(a1 + 40);
      v14 = 3303;
      goto LABEL_26;
    }

    if (!v8)
    {
      v31 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v54 = "[ADExperimentManager _remoteFetchConfigMetadataWithServerConfigurationInfo:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%s Error downloading remote configuration plist", buf, 0xCu);
      }

      goto LABEL_22;
    }

    v51 = 0;
    v15 = [NSPropertyListSerialization propertyListWithData:v8 options:0 format:0 error:&v51];
    v16 = v51;
    if (v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v29 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v40 = v29;
        v41 = [v16 localizedDescription];
        *buf = 136315394;
        v54 = "[ADExperimentManager _remoteFetchConfigMetadataWithServerConfigurationInfo:completion:]_block_invoke";
        v55 = 2112;
        v56 = v41;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s Error serializing plist data to dictionary: %@", buf, 0x16u);
      }

      v30 = *(a1 + 40);
      v18 = [AFError errorWithCode:3304];
      (*(v30 + 16))(v30, 0, v18);
      goto LABEL_31;
    }

    v17 = [v15 objectForKey:@"experiments"];
    v18 = v17;
    if (v17)
    {
      v43 = v15;
      v44 = v8;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v42 = v17;
      obj = v17;
      v19 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (!v19)
      {
LABEL_20:

LABEL_38:
        v37 = *(a1 + 40);
        v34 = [AFError errorWithCode:3306];
        (*(v37 + 16))(v37, 0, v34);
        v15 = v43;
        v8 = v44;
        v18 = v42;
        goto LABEL_43;
      }

      v20 = v19;
      v46 = *v48;
LABEL_14:
      v21 = 0;
      while (1)
      {
        if (*v48 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v47 + 1) + 8 * v21);
        v23 = [v22 objectForKey:@"identifier"];
        v24 = [*(a1 + 32) configurationIdentifier];
        v25 = [v23 isEqualToString:v24];

        if (v25)
        {
          break;
        }

        if (v20 == ++v21)
        {
          v20 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
          if (v20)
          {
            goto LABEL_14;
          }

          goto LABEL_20;
        }
      }

      v34 = v22;

      if (!v34)
      {
        goto LABEL_38;
      }

      v35 = AFSiriLogContextDaemon;
      v15 = v43;
      v8 = v44;
      v18 = v42;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v54 = "[ADExperimentManager _remoteFetchConfigMetadataWithServerConfigurationInfo:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s Received remote configuration", buf, 0xCu);
      }

      v36 = *(*(a1 + 40) + 16);
    }

    else
    {
      v38 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v54 = "[ADExperimentManager _remoteFetchConfigMetadataWithServerConfigurationInfo:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s Error no experiments specified in plist", buf, 0xCu);
      }

      v39 = *(a1 + 40);
      v34 = [AFError errorWithCode:3305];
      v36 = *(v39 + 16);
    }

    v36();
LABEL_43:

LABEL_31:
    goto LABEL_27;
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v32 = v10;
    v33 = [v9 localizedDescription];
    *buf = 136315394;
    v54 = "[ADExperimentManager _remoteFetchConfigMetadataWithServerConfigurationInfo:completion:]_block_invoke";
    v55 = 2114;
    v56 = v33;
    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s Error downloading remote configuration plist: %{public}@", buf, 0x16u);
  }

  v11 = [v9 domain];
  if (![v11 isEqualToString:NSURLErrorDomain])
  {

    goto LABEL_22;
  }

  v12 = [v9 code];

  if (v12 != -1001)
  {
LABEL_22:
    v13 = *(a1 + 40);
    v14 = 3302;
    goto LABEL_26;
  }

  v13 = *(a1 + 40);
  v14 = 3308;
LABEL_26:
  v16 = [AFError errorWithCode:v14];
  (*(v13 + 16))(v13, 0, v16);
LABEL_27:
}

void sub_1001CC468(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001CC564;
  v12[3] = &unk_1005167F0;
  v13 = v6;
  v17 = *(a1 + 48);
  v18 = 1;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v5;
  v15 = v8;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void sub_1001CC564(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    v3 = [[AFExperimentState alloc] initWithDictionaryRepresentation:*(a1 + 40)];
    v4 = [v3 mutatedCopyWithMutator:&stru_100515C58];

    v5 = [[AFExperimentConfiguration alloc] initWithDictionaryRepresentation:*(a1 + 40)];
    if ([v4 didEnd] && (v6 = *(a1 + 48), objc_msgSend(v4, "endingGroupIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = objc_msgSend(v6, "_isEndingGroupIdentifier:validForConfiguration:", v7, v5), v7, (v6 & 1) == 0))
    {
      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        v19 = [v4 endingGroupIdentifier];
        *buf = 136315394;
        v26 = "[ADExperimentManager _serverConfigurationForServerConfigurationInfo:completion:]_block_invoke_2";
        v27 = 2112;
        v28 = v19;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Bad Ending Group Identifier Specified %@", buf, 0x16u);
      }

      v16 = [AFError errorWithCode:3307];
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v8 = [v4 didEnd];
      v9 = *(a1 + 64);
      if (v8)
      {
        v10 = *(a1 + 48);
        v11 = [*(a1 + 56) configurationIdentifier];
        v12 = [v10 _fallbackConfigurationForEndedExperimentWithIdentifier:v11 experimentState:v4];
        (*(v9 + 16))(v9, v12, *(a1 + 72), 0);
      }

      else
      {
        (*(v9 + 16))(*(a1 + 64), v5, *(a1 + 72), 0);
      }

      v13 = dispatch_get_global_queue(0, 0);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1001CC894;
      v20[3] = &unk_10051DB18;
      v14 = v5;
      v15 = *(a1 + 48);
      v21 = v14;
      v22 = v15;
      v23 = v4;
      v24 = *(a1 + 56);
      dispatch_async(v13, v20);

      v16 = v21;
    }
  }
}

void sub_1001CC894(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001CC978;
    v7[3] = &unk_100517DE0;
    v7[4] = v2;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v2 _storeServerConfig:v3 completion:v7];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);

    [v6 _setExperimentState:v4 forServerConfigurationInfo:v5];
  }
}

id *sub_1001CC978(id *result, uint64_t a2)
{
  if (!a2)
  {
    return [result[4] _setExperimentState:result[5] forServerConfigurationInfo:result[6]];
  }

  return result;
}

void sub_1001CC990(id a1, AFExperimentStateMutating *a2)
{
  v2 = a2;
  v3 = +[NSDate now];
  [(AFExperimentStateMutating *)v2 setLastSyncDate:v3];
}

void sub_1001CD28C(uint64_t a1)
{
  v2 = [*(a1 + 32) _getConfigurationsByIdentifier];
  v16 = [v2 objectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) _getServerConfigurationInfosByIdentifier];
  v4 = [v3 objectForKey:*(a1 + 40)];

  if (v16 | v4)
  {
    v5 = SiriCoreUUIDStringCreate();
    [*(a1 + 32) _setExperimentIdentifier:v5 forConfigurationIdentifier:*(a1 + 40)];
    v6 = *(a1 + 32);
    if (v6[4])
    {
      v7 = [v6 _getContext];
      v8 = [v7 experimentsByConfigurationIdentifier];
      v9 = [NSMutableDictionary dictionaryWithDictionary:v8];

      v10 = [*(a1 + 32) _createExperimentForExperimentConfiguration:v16 experimentIdentifier:v5];
      [v9 setObject:v10 forKey:*(a1 + 40)];
      v11 = [[AFExperimentContext alloc] initWithExperimentsByConfigurationIdentifier:v9];
      v12 = *(a1 + 32);
      v13 = *(v12 + 32);
      *(v12 + 32) = v11;
    }

    v14 = *(a1 + 48);
    if (!v14)
    {
      goto LABEL_9;
    }

    v15 = *(v14 + 16);
  }

  else
  {
    if (!*(a1 + 48))
    {
      goto LABEL_10;
    }

    v5 = [AFError errorWithCode:3300];
    v15 = *(*(a1 + 48) + 16);
  }

  v15();
LABEL_9:

LABEL_10:
}

void sub_1001CD5F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) _experimentForExperimentConfiguration:a3];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

id sub_1001CDCD8(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v3 code]);
    [v2 setObject:v4 forKey:@"errorCode"];
  }

  v5 = [*(a1 + 40) configurationIdentifier];

  if (v5)
  {
    v6 = [*(a1 + 40) configurationIdentifier];
    [v2 setObject:v6 forKey:@"configurationIdentifier"];
  }

  v7 = [*(a1 + 40) deploymentGroupIdentifier];

  if (v7)
  {
    v8 = [*(a1 + 40) deploymentGroupIdentifier];
    [v2 setObject:v8 forKey:@"groupIdentifier"];
  }

  v9 = [*(a1 + 40) configurationVersion];

  if (v9)
  {
    v10 = [*(a1 + 40) configurationVersion];
    [v2 setObject:v10 forKey:@"version"];
  }

  v11 = [*(a1 + 48) objectForKey:@"timeToResolve"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [NSNumber numberWithDouble:v13];
  [v2 setObject:v14 forKey:@"timeToResolve"];

  v15 = [*(a1 + 48) objectForKey:@"fetchedRemote"];
  v16 = [v15 BOOLValue];

  v17 = [NSNumber numberWithBool:v16];
  [v2 setObject:v17 forKey:@"fetchedRemote"];

  return v2;
}

void sub_1001CE04C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = +[NSDate now];
  [v9 timeIntervalSinceDate:*(a1 + 32)];
  v11 = v10;

  (*(*(a1 + 48) + 16))();
  v15[0] = @"timeToResolve";
  v12 = [NSNumber numberWithDouble:v11];
  v15[1] = @"fetchedRemote";
  v16[0] = v12;
  v13 = [NSNumber numberWithBool:a3];
  v16[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  [*(a1 + 40) _logDidVendExperiment:v8 fetchDetails:v14 error:v7];
}

void sub_1001CE1A0(uint64_t a1)
{
  v2 = [*(a1 + 32) _getServerConfigurationInfosByIdentifier];
  v3 = [v2 objectForKey:*(a1 + 40)];

  v4 = *(a1 + 32);
  if (v3)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001CE30C;
    v10[3] = &unk_100515BF0;
    v5 = *(a1 + 48);
    v10[4] = *(a1 + 32);
    v11 = v5;
    [v4 _serverConfigurationForServerConfigurationInfo:v3 completion:v10];
  }

  else
  {
    v6 = [*(a1 + 32) _getContext];
    v7 = [v6 experimentsByConfigurationIdentifier];
    v8 = [v7 objectForKey:*(a1 + 40)];

    if (v8)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v9 = [AFError errorWithCode:3301];
      (*(*(a1 + 48) + 16))();
    }
  }
}

void sub_1001CE30C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v16 = v6;
  if (a4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) _experimentForExperimentConfiguration:v6];
    if (v7)
    {
      v8 = *(*(a1 + 32) + 32);
      if (v8)
      {
        v9 = [v8 experimentsByConfigurationIdentifier];
        v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

        v11 = [v16 identifier];
        [v10 setObject:v7 forKey:v11];

        v12 = [[AFExperimentContext alloc] initWithExperimentsByConfigurationIdentifier:v10];
        v13 = *(a1 + 32);
        v14 = *(v13 + 32);
        *(v13 + 32) = v12;
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v15 = [AFError errorWithCode:3301];
      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_1001CE774(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (v7)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = v8;
      v16 = [v14 configurationIdentifier];
      v17 = 136315650;
      v18 = "[ADExperimentManager synchronizeExperimentConfigurationsIfApplicableWithCompletion:]_block_invoke";
      v19 = 2112;
      v20 = v16;
      v21 = 2112;
      v22 = v7;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Encountered error while synchronizing %@: %@", &v17, 0x20u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_10:
      v10();
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = v8;
      v12 = [v6 identifier];
      v17 = 136315394;
      v18 = "[ADExperimentManager synchronizeExperimentConfigurationsIfApplicableWithCompletion:]_block_invoke";
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Fished synchronizing configuration  %@", &v17, 0x16u);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      v10 = *(v13 + 16);
      goto LABEL_10;
    }
  }
}

void sub_1001CE9D8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _getContext];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1001CEB24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001CEB3C(uint64_t a1)
{
  v2 = [*(a1 + 32) _getContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1001CEC2C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) _getConfigurationsByIdentifier];
  v2 = [v3 allValues];
  (*(v1 + 16))(v1, v2);
}

void sub_1001CED88(uint64_t a1)
{
  v5 = [*(a1 + 32) _getConfigurationsByIdentifier];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001CEEE8(id a1)
{
  v1 = objc_alloc_init(ADExperimentManager);
  v2 = qword_1005904D8;
  qword_1005904D8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001CF930(uint64_t a1)
{
  v1 = [*(a1 + 32) _serviceManager];
  v2 = [v1 allServices];

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = dispatch_group_create();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        dispatch_group_enter(v4);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1001CFB78;
        v17[3] = &unk_100516AD8;
        v18 = v3;
        v19 = v10;
        v20 = v4;
        [v10 getInfoWithCompletion:v17];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v11 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CFBEC;
  block[3] = &unk_10051E038;
  v15 = v3;
  v16 = *(a1 + 40);
  v12 = v3;
  dispatch_group_notify(v4, v11, block);
}

void sub_1001CFB78(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a2;
    v6 = [v4 identifier];
    [v3 setObject:v5 forKey:v6];
  }

  v7 = a1[6];

  dispatch_group_leave(v7);
}

uint64_t sub_1001CFBEC(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[ADCommandCenter _listInstalledServicesWithCompletion:]_block_invoke_3";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Services %@", &v5, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1001D034C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v111 = v6;
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = v5;
    v119 = 0;
    v12 = +[NSFileManager defaultManager];
    v13 = [v11 path];
    v14 = [v12 fileExistsAtPath:v13 isDirectory:&v119];

    if (v14)
    {
      if (v119 != 1)
      {
        goto LABEL_13;
      }

      v15 = @"Directory exists at path %@, but it is expected to be a file.";
    }

    else
    {
      v15 = @"File does not exist at path %@.";
    }

    v17 = [NSString alloc];
    v18 = [v11 path];
    v19 = [v17 initWithFormat:v15, v18];
    v20 = [AFError errorWithCode:226 description:v19];

    if (v20)
    {
      v21 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        *inPropertyData = 136315394;
        *&inPropertyData[4] = "ADAudioFileTrim";
        *&inPropertyData[12] = 2112;
        *&inPropertyData[14] = v20;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s error = %@", inPropertyData, 0x16u);
      }

      v22 = v20;
      v23 = 0;
      v24 = 0;
      goto LABEL_31;
    }

LABEL_13:
    v25 = CSSiriSpeechRecordingTrimmedAudioDirectoryPath();
    v26 = +[NSFileManager defaultManager];
    v27 = [v26 fileExistsAtPath:v25 isDirectory:&v119];

    if (v27)
    {
      if (v119)
      {
        goto LABEL_22;
      }

      v28 = [[NSString alloc] initWithFormat:@"File exists at path %@, but it is expected to be directory.", v25];
      v20 = [AFError errorWithCode:226 description:v28];
    }

    else
    {
      v29 = +[NSFileManager defaultManager];
      v118 = 0;
      v30 = [v29 createDirectoryAtPath:v25 withIntermediateDirectories:1 attributes:0 error:&v118];
      v28 = v118;

      if (v30)
      {

        goto LABEL_22;
      }

      v31 = [[NSString alloc] initWithFormat:@"Unable to create directory at path %@.", v25];
      v20 = [AFError errorWithCode:226 description:v31 underlyingError:v28];
    }

    if (v20)
    {
      v32 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        *inPropertyData = 136315394;
        *&inPropertyData[4] = "ADAudioFileTrim";
        *&inPropertyData[12] = 2112;
        *&inPropertyData[14] = v20;
        p_buf = inPropertyData;
LABEL_28:
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s error = %@", p_buf, 0x16u);
      }

LABEL_29:
      v44 = v20;
      v23 = 0;
      v24 = 0;
LABEL_30:

LABEL_31:
      v45 = v23;
      v46 = v20;
      v47 = AFSiriLogContextDaemon;
      if (v24)
      {
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
        {
          *inPropertyData = 136315394;
          *&inPropertyData[4] = "[ADCommandCenter _trimRecordedAudioWithIdentifier:offset:duration:outputFileType:completion:]_block_invoke";
          *&inPropertyData[12] = 2112;
          *&inPropertyData[14] = v45;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s trimmedAudioFileURL = %@", inPropertyData, 0x16u);
        }

        v48 = *(*(a1 + 32) + 16);
      }

      else
      {
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *inPropertyData = 136315394;
          *&inPropertyData[4] = "[ADCommandCenter _trimRecordedAudioWithIdentifier:offset:duration:outputFileType:completion:]_block_invoke";
          *&inPropertyData[12] = 2112;
          *&inPropertyData[14] = v46;
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s error = %@", inPropertyData, 0x16u);
        }

        v48 = *(*(a1 + 32) + 16);
      }

      v48();

      v7 = v111;
      goto LABEL_39;
    }

LABEL_22:
    *inPropertyData = xmmword_1003F04B0;
    *&inPropertyData[16] = unk_1003F04C0;
    v126 = 16;
    memset(&inStreamDesc.mFormatID, 0, 32);
    outExtAudioFile = 0;
    inStreamDesc.mSampleRate = 16000.0;
    inStreamDesc.mFormatID = 1869641075;
    inStreamDesc.mFramesPerPacket = 320;
    inStreamDesc.mChannelsPerFrame = 1;
    v34 = ExtAudioFileOpenURL(v11, &outExtAudioFile);
    if (v34)
    {
      v35 = v34;
      v36 = [NSString alloc];
      v37 = [v11 path];
      v38 = [v36 initWithFormat:@"ExtAudioFileOpenURL() failed to open input audio file at %@. (status = %d)", v37, v35];
      v39 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v35 userInfo:0];
      v20 = [AFError errorWithCode:226 description:v38 underlyingError:v39];

      v32 = AFSiriLogContextUtility;
      if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

LABEL_27:
      buf.mNumberBuffers = 136315394;
      *(&buf.mNumberBuffers + 1) = "ADAudioFileTrim";
      LOWORD(buf.mBuffers[0].mDataByteSize) = 2112;
      *(&buf.mBuffers[0].mDataByteSize + 2) = v20;
      p_buf = &buf;
      goto LABEL_28;
    }

    v40 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, inPropertyData);
    if (v40)
    {
      v41 = v40;
      v42 = [[NSString alloc] initWithFormat:@"ExtAudioFileSetProperty() failed to set client data format of input audio file. (status = %d)", v40];
      v43 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v41 userInfo:0];
      v20 = [AFError errorWithCode:226 description:v42 underlyingError:v43];

      v32 = AFSiriLogContextUtility;
      if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    outPropertyData = 0;
    ioPropertyDataSize = 8;
    if (!ExtAudioFileGetProperty(outExtAudioFile, 0x2366726Du, &ioPropertyDataSize, &outPropertyData))
    {
      v49 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
      {
        buf.mNumberBuffers = 136315394;
        *(&buf.mNumberBuffers + 1) = "ADAudioFileTrim";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 2048;
        *(&buf.mBuffers[0].mDataByteSize + 2) = outPropertyData;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s totalFrameLength = %lld", &buf, 0x16u);
      }
    }

    if (v10 == 3)
    {
      v50 = @".caf";
    }

    else
    {
      v50 = @".wav";
    }

    v51 = [NSString alloc];
    v52 = objc_alloc_init(NSUUID);
    v53 = [v52 UUIDString];
    v54 = [v51 initWithFormat:@"%@%@", v53, v50];

    v55 = [NSURL alloc];
    v56 = [v25 stringByAppendingPathComponent:v54];
    v57 = [v55 initFileURLWithPath:v56];

    inExtAudioFile = 0;
    if (v10 == 2)
    {
      p_inStreamDesc = inPropertyData;
      v59 = v57;
      v60 = 1463899717;
    }

    else
    {
      if (v10 != 3)
      {
        v71 = [[NSString alloc] initWithFormat:@"Output file type %ld is not supported.", v10];
        v20 = [AFError errorWithCode:226 description:v71];

        v66 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      p_inStreamDesc = &inStreamDesc;
      v59 = v57;
      v60 = 1667327590;
    }

    v61 = ExtAudioFileCreateWithURL(v59, v60, p_inStreamDesc, 0, 1u, &inExtAudioFile);
    if (v61)
    {
      v62 = [NSString alloc];
      v63 = [(__CFURL *)v57 path];
      v64 = [v62 initWithFormat:@"ExtAudioFileCreateWithURL() failed to create output audio file at %@. (status = %d)", v63, v61];
      v65 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v61 userInfo:0];
      v20 = [AFError errorWithCode:226 description:v64 underlyingError:v65];

      v66 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    v67 = ExtAudioFileSetProperty(inExtAudioFile, 0x63666D74u, 0x28u, inPropertyData);
    if (v67)
    {
      v68 = v67;
      v69 = [[NSString alloc] initWithFormat:@"ExtAudioFileSetProperty() failed to set client data format of output audio file. (status = %d)", v67];
      v70 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v68 userInfo:0];
      v20 = [AFError errorWithCode:226 description:v69 underlyingError:v70];

      v66 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    v72 = (*inPropertyData * v9);
    v73 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      buf.mNumberBuffers = 136315394;
      *(&buf.mNumberBuffers + 1) = "ADAudioFileTrim";
      LOWORD(buf.mBuffers[0].mDataByteSize) = 2048;
      *(&buf.mBuffers[0].mDataByteSize + 2) = v72;
      _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "%s frameOffset = %lld", &buf, 0x16u);
    }

    v74 = ExtAudioFileSeek(outExtAudioFile, v72);
    if (v74)
    {
      v76 = v74;
      v77 = [[NSString alloc] initWithFormat:@"ExtAudioFileSeek() failed to seek to frame offset %lld in input audio file. (status = %d)", v72, v74];
      v78 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v76 userInfo:0];
      v20 = [AFError errorWithCode:226 description:v77 underlyingError:v78];

      v66 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
LABEL_62:
        buf.mNumberBuffers = 136315394;
        *(&buf.mNumberBuffers + 1) = "ADAudioFileTrim";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 2112;
        *(&buf.mBuffers[0].mDataByteSize + 2) = v20;
        _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%s error = %@", &buf, 0x16u);
      }

LABEL_63:
      v79 = v20;
      v23 = 0;
      v24 = 0;
LABEL_64:

      goto LABEL_30;
    }

    v110 = v54;
    LODWORD(v75) = *&inPropertyData[24];
    v80 = (*inPropertyData * v75 * v8);
    v81 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      buf.mNumberBuffers = 136315394;
      *(&buf.mNumberBuffers + 1) = "ADAudioFileTrim";
      LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
      *(&buf.mBuffers[0].mDataByteSize + 2) = v80;
      _os_log_debug_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "%s dataByteSize = %u", &buf, 0x12u);
    }

    v82 = [NSMutableData dataWithLength:v80];
    *&buf.mNumberBuffers = 1;
    buf.mBuffers[0].mNumberChannels = 1;
    buf.mBuffers[0].mDataByteSize = v80;
    v109 = v82;
    buf.mBuffers[0].mData = [v109 mutableBytes];
    v83 = (*inPropertyData * v8);
    ioNumberFrames = v83;
    v84 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      *v120 = 136315394;
      v121 = "ADAudioFileTrim";
      v122 = 1024;
      LODWORD(v123) = v83;
      _os_log_debug_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEBUG, "%s numberOfFrames = %u (read)", v120, 0x12u);
    }

    v85 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &buf);
    if (v85)
    {
      v86 = v85;
      v87 = [NSString alloc];
      v88 = [v87 initWithFormat:@"ExtAudioFileRead() failed to read %u frames from input audio file. (status = %d)", ioNumberFrames, v86];
      v89 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v86 userInfo:0];
      v90 = [AFError errorWithCode:226 description:v88 underlyingError:v89];

      v91 = AFSiriLogContextUtility;
      v54 = v110;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
LABEL_79:
        *v120 = 136315394;
        v121 = "ADAudioFileTrim";
        v122 = 2112;
        v123 = v90;
        _os_log_error_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "%s error = %@", v120, 0x16u);
      }
    }

    else
    {
      v92 = AFSiriLogContextUtility;
      v54 = v110;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
      {
        *v120 = 136315394;
        v121 = "ADAudioFileTrim";
        v122 = 1024;
        LODWORD(v123) = ioNumberFrames;
        _os_log_debug_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEBUG, "%s numberOfFrames = %u (write)", v120, 0x12u);
      }

      v93 = ExtAudioFileWrite(inExtAudioFile, ioNumberFrames, &buf);
      if (v93)
      {
        v94 = v93;
        v95 = [NSString alloc];
        v96 = [v95 initWithFormat:@"ExtAudioFileWrite() failed to write %u frames to output audio file. (status = %d)", ioNumberFrames, v94];
        v97 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v94 userInfo:0];
        v90 = [AFError errorWithCode:226 description:v96 underlyingError:v97];

        v91 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_79;
        }
      }

      else
      {
        v98 = ExtAudioFileDispose(outExtAudioFile);
        if (!v98)
        {
          v103 = ExtAudioFileDispose(inExtAudioFile);
          if (v103)
          {
            v104 = v103;
            v105 = [[NSString alloc] initWithFormat:@"ExtAudioFileDispose() failed to close output audio file. (status = %d)", v103];
            v106 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v104 userInfo:0];
            v90 = [AFError errorWithCode:226 description:v105 underlyingError:v106];

            v107 = AFSiriLogContextUtility;
            if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
            {
              *v120 = 136315394;
              v121 = "ADAudioFileTrim";
              v122 = 2112;
              v123 = v90;
              _os_log_error_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%s error = %@", v120, 0x16u);
            }

            v23 = 0;
            v24 = 0;
            v20 = v90;
          }

          else
          {
            v108 = AFSiriLogContextUtility;
            v24 = 1;
            if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
            {
              *v120 = 136315394;
              v121 = "ADAudioFileTrim";
              v122 = 2112;
              v123 = v57;
              _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, "%s trimmedAudioFileURL = %@", v120, 0x16u);
            }

            v20 = 0;
            v90 = v57;
            v23 = v57;
          }

          v54 = v110;
          goto LABEL_81;
        }

        v99 = v98;
        v100 = [[NSString alloc] initWithFormat:@"ExtAudioFileDispose() failed to close input audio file. (status = %d)", v98];
        v101 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v99 userInfo:0];
        v90 = [AFError errorWithCode:226 description:v100 underlyingError:v101];

        v91 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_79;
        }
      }
    }

    v23 = 0;
    v24 = 0;
    v20 = v90;
LABEL_81:
    v102 = v90;

    goto LABEL_64;
  }

  v16 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *inPropertyData = 136315394;
    *&inPropertyData[4] = "[ADCommandCenter _trimRecordedAudioWithIdentifier:offset:duration:outputFileType:completion:]_block_invoke";
    *&inPropertyData[12] = 2112;
    *&inPropertyData[14] = v7;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s error = %@", inPropertyData, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_39:
}

void sub_1001D1974(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D1A50;
  block[3] = &unk_10051C510;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_1001D1A50(void *a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v5 = 136315394;
    v6 = "[ADCommandCenter _accessRecordedAudioWithIdentifier:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s recordedAudioFileURL = %@", &v5, 0x16u);
  }

  (*(a1[5] + 16))();
  return (*(a1[6] + 16))();
}

void sub_1001D1DB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[ADCommandCenter _setSiriOutputVolume:forAudioRoute:operationType:completion:]_block_invoke";
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s volumeService = %@", buf, 0x16u);
  }

  if (v3)
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 48);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001D1F90;
    v12[3] = &unk_10051D2F0;
    v7 = *(a1 + 32);
    v13 = *(a1 + 40);
    LODWORD(v8) = v5;
    [v3 setSiriOutputVolume:0 forAudioRoute:v7 withName:v6 operationType:v12 completion:v8];
    v9 = v13;
LABEL_9:

    goto LABEL_10;
  }

  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v15 = "[ADCommandCenter _setSiriOutputVolume:forAudioRoute:operationType:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Volume service is unavailable.", buf, 0xCu);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v9 = [AFError errorWithCode:2601];
    (*(v11 + 16))(v11, v9);
    goto LABEL_9;
  }

LABEL_10:
}

void sub_1001D1F90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (v3)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[ADCommandCenter _setSiriOutputVolume:forAudioRoute:operationType:completion:]_block_invoke";
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s error = %@", &v6, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[ADCommandCenter _setSiriOutputVolume:forAudioRoute:operationType:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s success", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_1001D2328(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[ADCommandCenter _getSiriOutputVolumeForAudioRoute:completion:]_block_invoke";
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s volumeService = %@", buf, 0x16u);
  }

  if (v3)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001D24F4;
    v9[3] = &unk_10051CFA8;
    v5 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v3 getSiriOutputVolumeForAudioRoute:0 withName:v5 completion:v9];
    v6 = v10;
LABEL_9:

    goto LABEL_10;
  }

  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = "[ADCommandCenter _getSiriOutputVolumeForAudioRoute:completion:]_block_invoke";
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Volume service is unavailable.", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v6 = [AFError errorWithCode:2601];
    (*(v8 + 16))(v8, v6, 0.0);
    goto LABEL_9;
  }

LABEL_10:
}

void sub_1001D24F4(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  v6 = AFSiriLogContextDaemon;
  if (v5)
  {
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[ADCommandCenter _getSiriOutputVolumeForAudioRoute:completion:]_block_invoke";
      v10 = 2112;
      v11 = *&v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s error = %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[ADCommandCenter _getSiriOutputVolumeForAudioRoute:completion:]_block_invoke";
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s volume = %f", &v8, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, a3);
  }
}

void sub_1001D2794(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    v4 = AFExternalNotificationRequestHandlerStateGetName();
    v8 = 136315394;
    v9 = "[ADCommandCenter announceNotificationHandlingStateUpdatedToState:]_block_invoke";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Announce notification handling state changed to: %@", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) _requestDispatcherService];
  v6 = [*(a1 + 32) _account];
  v7 = [v6 assistantIdentifier];
  [v5 announceNotificationHandlingStateUpdatedWithAssistantId:v7 toState:*(a1 + 40)];
}

void sub_1001D2980(uint64_t a1)
{
  v2 = +[ADHomeInfoManager sharedInfoManager];
  [v2 getAccessoryInfoForAccessoryWithUUID:*(a1 + 32) completionHandler:*(a1 + 40)];
}

void sub_1001D2A98(uint64_t a1)
{
  v2 = +[ADHomeInfoManager sharedInfoManager];
  [v2 getSpeakerCapabilityForAccessoryWithUUID:*(a1 + 32) completionHandler:*(a1 + 40)];
}

void sub_1001D2BB4(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D2C60;
  v4[3] = &unk_10051C150;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 pushSCDAAdvertisementContextToContextCollector:v3 completion:v4];
}

uint64_t sub_1001D2C60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001D2D3C(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D2DE8;
  v4[3] = &unk_10051C150;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 pushMyriadAdvertisementContextToContextCollector:v3 completion:v4];
}

uint64_t sub_1001D2DE8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001D2EF4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAudioSource:0];
  [v3 setAudioDestination:0];
  [v3 setResponseMode:*(a1 + 32)];
  [v3 setIsEyesFree:{objc_msgSend(*(*(a1 + 40) + 296), "isEyesFree")}];
  [v3 setIsVoiceTriggerEnabled:sub_10000F1C0()];
  [v3 setIsTextToSpeechEnabled:{objc_msgSend(*(*(a1 + 40) + 16), "adTextToSpeechIsMuted") ^ 1}];
  [v3 setIsTriggerlessFollowup:*(a1 + 56)];
  v4 = [*(a1 + 40) _bargeInModes];
  [v3 setBargeInModes:v4];

  v5 = [*(a1 + 40) _approximatePreviousTTSInterval:0];
  [v3 setApproximatePreviousTTSInterval:v5];

  v6 = [*(a1 + 40) _restrictedCommands];
  [v3 setDeviceRestrictions:v6];

  [v3 setVoiceTriggerEventInfo:0];
  [v3 setVoiceAudioSessionId:{objc_msgSend(*(a1 + 40), "_sharedVoiceAudioSessionID")}];
  [v3 setIsSystemApertureEnabled:{objc_msgSend(*(*(a1 + 40) + 296), "isSystemApertureEnabled")}];
  [v3 setIsLiveActivitiesSupported:{objc_msgSend(*(*(a1 + 40) + 296), "isLiveActivitiesSupported")}];
  [v3 setIsInAmbient:{objc_msgSend(*(*(a1 + 40) + 296), "isInAmbient")}];
  [v3 setIsDeviceShowingLockScreen:*(*(a1 + 40) + 529)];
  [v3 setIsDeviceLocked:*(*(a1 + 40) + 528)];
  v10 = objc_alloc_init(SMTUserProfileMetadata);
  [v10 setHeadphoneConnected:{objc_msgSend(*(*(a1 + 40) + 296), "userProfileHeadphoneConnected")}];
  [v10 setConfidence:{objc_msgSend(*(*(a1 + 40) + 296), "userProfileConfidence")}];
  v7 = [*(*(a1 + 40) + 296) userProfilePersonaId];
  [v10 setUserProfileIdentifier:v7];

  [v3 setUserProfileMetadata:v10];
  [v3 setActivationTime:{objc_msgSend(*(*(a1 + 40) + 296), "computedActivationEventMachAbsoluteTime")}];
  [v3 setSuggestionRequestType:*(a1 + 48)];
  v8 = [*(a1 + 40) _locationManager];
  v9 = [v8 knownLocation];
  [v3 setLocation:v9];
}

void sub_1001D4068(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechManager];
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    *v19 = 136315394;
    *&v19[4] = "[ADCommandCenter dictationRequestDidCompleteRecognitionWithError:secureOfflineOnlyRecognition:sessionUUID:statistics:]_block_invoke";
    *&v19[12] = 2114;
    *&v19[14] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %{public}@", v19, 0x16u);
  }

  v5 = *(a1 + 40);
  if (*(a1 + 64) == 1)
  {
    v6 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 40)];
    v7 = [v2 dictationOptions];
    v8 = [v7 interactionIdentifier];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_10051F508;
    }

    [v6 setObject:v10 forKeyedSubscript:@"dictationUIInteractionIdentifier"];

    v11 = [NSDictionary dictionaryWithDictionary:v6];

    v5 = v11;
  }

  [*(a1 + 32) _metrics_markLocalSpeechCompletedWithStatistics:v5];
  v12 = [*(*(a1 + 32) + 336) currentRequestId];
  v13 = *(a1 + 48);
  if (!v13)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (*(*(a1 + 32) + 378))
  {
    v14 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *v19 = 136315394;
    *&v19[4] = "[ADCommandCenter dictationRequestDidCompleteRecognitionWithError:secureOfflineOnlyRecognition:sessionUUID:statistics:]_block_invoke";
    *&v19[12] = 2114;
    *&v19[14] = v13;
    v15 = "%s Local speech recognition failed, and so did the session: %{public}@";
    goto LABEL_24;
  }

  v14 = AFSiriLogContextSpeech;
  if (*(a1 + 64))
  {
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *v19 = 136315394;
    *&v19[4] = "[ADCommandCenter dictationRequestDidCompleteRecognitionWithError:secureOfflineOnlyRecognition:sessionUUID:statistics:]_block_invoke";
    *&v19[12] = 2114;
    *&v19[14] = v13;
    v15 = "%s Local speech recognition failed: %{public}@";
LABEL_24:
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v15, v19, 0x16u);
LABEL_16:
    *(*(a1 + 32) + 378) = 0;
    if ([*(a1 + 56) isEqualToString:{v12, *v19, *&v19[16]}])
    {
      [*(a1 + 32) _endSpeechRequestForCommand:0 withError:*(a1 + 48) suppressAlert:1 secureOfflineOnlyDictation:*(a1 + 64)];
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *v19 = 136315394;
    *&v19[4] = "[ADCommandCenter dictationRequestDidCompleteRecognitionWithError:secureOfflineOnlyRecognition:sessionUUID:statistics:]_block_invoke";
    *&v19[12] = 2114;
    *&v19[14] = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Ignoring local speech recognition failure because the session is still active: %{public}@", v19, 0x16u);
  }

LABEL_18:
  if ([*(a1 + 56) isEqualToString:v12])
  {
    v16 = [*(a1 + 32) _requestDispatcherService];
    v17 = [*(a1 + 32) _account];
    v18 = [v17 assistantIdentifier];
    [v16 endDictationSessionWithAssistantId:v18];
  }
}

void sub_1001D44A4(id *a1)
{
  v2 = [a1[4] _speechManager];
  v3 = [a1[5] recognition];
  v4 = [v3 phrases];
  v5 = [v3 utterances];
  v6 = [a1[5] rawRecognition];
  v7 = [v6 phrases];
  v45 = [v6 utterances];
  v44 = [a1[5] recognitionPaused];
  v8 = [v2 dictationOptions];
  if (![v8 forceOfflineRecognition])
  {
    v11 = 0;
    goto LABEL_5;
  }

  v9 = [v2 dictationOptions];
  v10 = [v9 secureOfflineOnly];

  if (v10)
  {
    v8 = [v2 dictationOptions];
    v11 = [v8 detectUtterances];
LABEL_5:

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v12 = [v2 dictationOptions];
  v13 = [v12 secureOfflineOnly];

  if (v13)
  {
    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v61 = "[ADCommandCenter dictationRequestDidRecognizePackage:nluResult:sessionUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Phrases=<REDACTED>", buf, 0xCu);
    }
  }

  else
  {
    [v4 enumerateObjectsUsingBlock:&stru_100516900];
    [v5 enumerateObjectsUsingBlock:&stru_100516920];
  }

  v15 = [v2 dictationOptions];
  v16 = [v15 transcriptionMode];

  if (v16 != 3)
  {
    v19 = [v2 dictationLanguages];
    v20 = [v19 firstObject];

    v21 = a1[4];
    if (v21[379] == 1)
    {
      if (v21[376] == 1)
      {
        v22 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v61 = "[ADCommandCenter dictationRequestDidRecognizePackage:nluResult:sessionUUID:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Ignoring and canceling final local recognition because server results have arrived", buf, 0xCu);
        }

        [v2 cancelLocalRecognitionIfActive];
        v18 = v45;
LABEL_23:

        goto LABEL_24;
      }

      if ((v21[378] & 1) == 0)
      {
        v43 = v20;
        if (v21[656] == 1)
        {
          v30 = _AFPreferencesMultilingualDictationTimeoutInMilliSeconds();
          v31 = v30;
          if (v30)
          {
            [v30 doubleValue];
            v33 = v32;
          }

          else
          {
            v33 = 2000.0;
          }
        }

        else
        {
          v33 = 2000.0;
        }

        if (![v2 isLocallyRecognizingInDictationMode])
        {
          v33 = 1000.0;
        }

        v34 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v61 = "[ADCommandCenter dictationRequestDidRecognizePackage:nluResult:sessionUUID:]_block_invoke";
          v62 = 2048;
          v63 = v33;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Deferring final local recognition results for %f seconds while waiting for the server", buf, 0x16u);
        }

        v35 = [*(a1[4] + 42) currentRequestId];
        v39 = [v35 copy];

        v36 = dispatch_time(0, (v33 * 1000000.0));
        v37 = a1[4];
        v40 = *(v37 + 1);
        v41 = v36;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001D4A94;
        block[3] = &unk_100516970;
        v47 = v39;
        v48 = v37;
        v20 = v43;
        v49 = v43;
        v50 = v3;
        v58 = v11;
        v51 = v2;
        v59 = v44;
        v52 = v4;
        v53 = v7;
        v54 = v5;
        v18 = v45;
        v55 = v45;
        v56 = a1[6];
        v57 = a1[7];
        v38 = v39;
        dispatch_after(v41, v40, block);

        goto LABEL_23;
      }
    }

    v42 = v6;
    v23 = v20;
    [v21 _handleLocalSpeechRecognitionForOfflineSupport:v3 logText:v11 ^ 1];
    if (v44)
    {
      [*(a1[4] + 5) adSpeechDidPauseRecognition];
    }

    v24 = a1[4];
    v25 = *(v24 + 5);
    v27 = a1[6];
    v26 = a1[7];
    v28 = [*(v24 + 38) aceId];
    v29 = v25;
    v18 = v45;
    [v29 adSpeechRecordingDidRecognizePhrases:v4 rawPhrases:v7 utterances:v5 rawUtterances:v45 nluResult:v27 sessionUUID:v26 refId:v28];

    v20 = v23;
    v6 = v42;
    goto LABEL_23;
  }

  v17 = AFSiriLogContextSpeech;
  v18 = v45;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v61 = "[ADCommandCenter dictationRequestDidRecognizePackage:nluResult:sessionUUID:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Not handling phraseRecognition because this is a phoneme transcription request", buf, 0xCu);
  }

LABEL_24:
}

void sub_1001D4A94(uint64_t a1)
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
    v17 = "[ADCommandCenter dictationRequestDidRecognizePackage:nluResult:sessionUUID:]_block_invoke";
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
    v17 = "[ADCommandCenter dictationRequestDidRecognizePackage:nluResult:sessionUUID:]_block_invoke";
    v5 = "%s Ignoring final local recognition because the server won the race";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, buf, 0xCu);
    return;
  }

  [AFAggregator logLocalRecognitionWonForLanguage:*(a1 + 48)];
  [*(a1 + 40) _handleLocalSpeechRecognitionForOfflineSupport:*(a1 + 56) logText:(*(a1 + 120) & 1) == 0];
  if ([*(a1 + 64) isLocallyRecognizingInDictationMode])
  {
    v6 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[ADCommandCenter dictationRequestDidRecognizePackage:nluResult:sessionUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Giving up on final server recognition because local won the race", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001D4D34;
    v8[3] = &unk_100516948;
    v15 = *(a1 + 121);
    v8[4] = v7;
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
    v12 = *(a1 + 96);
    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
    [v7 _handleSpeechRecognizedWithDelegateBlock:v8];
  }
}

void sub_1001D4D34(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    [*(*(a1 + 32) + 40) adSpeechDidPauseRecognition];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = [*(v2 + 304) aceId];
  [v4 adSpeechRecordingDidRecognizePhrases:v3 rawPhrases:v5 utterances:v6 rawUtterances:v7 nluResult:v8 sessionUUID:v9 refId:v10];
}

void sub_1001D4DE4(id a1, AFSpeechUtterance *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADCommandCenter dictationRequestDidRecognizePackage:nluResult:sessionUUID:]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Utterance[%lu]=%@", &v7, 0x20u);
  }
}

void sub_1001D4EBC(id a1, AFSpeechPhrase *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADCommandCenter dictationRequestDidRecognizePackage:nluResult:sessionUUID:]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Phrase[%lu]=%@", &v7, 0x20u);
  }
}

void sub_1001D5078(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechManager];
  v3 = [v2 dictationOptions];
  v4 = [v3 secureOfflineOnly];

  if (v4)
  {
    v5 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADCommandCenter dictationRequestDidRecognizeVoiceCommandCandidatePackage:nluResult:sessionUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s VoiceCommandCandidate Phrases=<REDACTED>", &v9, 0xCu);
    }
  }

  else
  {
    v6 = [*(a1 + 40) recognition];
    v7 = [v6 phrases];
    v8 = [v6 utterances];
    [v7 enumerateObjectsUsingBlock:&stru_1005168C0];
    [v8 enumerateObjectsUsingBlock:&stru_1005168E0];
  }

  [*(*(a1 + 32) + 40) adSpeechRecordingDidRecognizeVoiceCommandCandidatePackage:*(a1 + 40) nluResult:*(a1 + 48) sessionUUID:*(a1 + 56)];
}

void sub_1001D51D0(id a1, AFSpeechUtterance *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADCommandCenter dictationRequestDidRecognizeVoiceCommandCandidatePackage:nluResult:sessionUUID:]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s VoiceCommandCandidate Utterance[%lu]=%@", &v7, 0x20u);
  }
}

void sub_1001D52A8(id a1, AFSpeechPhrase *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADCommandCenter dictationRequestDidRecognizeVoiceCommandCandidatePackage:nluResult:sessionUUID:]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s VoiceCommandCandidate Phrase[%lu]=%@", &v7, 0x20u);
  }
}

void sub_1001D5444(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechManager];
  v3 = [*(a1 + 40) recognition];
  v4 = [v3 phrases];
  v5 = [v3 utterances];
  v6 = [v2 dictationOptions];
  v7 = [v6 secureOfflineOnly];

  if (v7)
  {
    v8 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[ADCommandCenter dictationRequestDidRecognizeFinalResultCandidatePackage:sessionUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s FinalResultCandidate Phrases=<REDACTED>", &v9, 0xCu);
    }
  }

  else
  {
    [v4 enumerateObjectsUsingBlock:&stru_100516880];
    [v5 enumerateObjectsUsingBlock:&stru_1005168A0];
  }

  [*(*(a1 + 32) + 40) adSpeechRecordingDidRecognizeFinalResultCandidatePackage:*(a1 + 40) sessionUUID:*(a1 + 48)];
}

void sub_1001D55A8(id a1, AFSpeechUtterance *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADCommandCenter dictationRequestDidRecognizeFinalResultCandidatePackage:sessionUUID:]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s FinalResultCandidate Utterance[%lu]=%@", &v7, 0x20u);
  }
}

void sub_1001D5680(id a1, AFSpeechPhrase *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[ADCommandCenter dictationRequestDidRecognizeFinalResultCandidatePackage:sessionUUID:]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s FinalResultCandidate Phrase[%lu]=%@", &v7, 0x20u);
  }
}

void sub_1001D583C(id *a1)
{
  v2 = [a1[4] _speechManager];
  v3 = [a1[5] recognition];
  v4 = [v3 oneBestTokenList];

  v5 = [(__CFString *)v4 lastObject];
  [v5 endTime];
  v7 = v6;
  v8 = [v2 dictationOptions];
  v9 = [v8 secureOfflineOnly];

  if (v9)
  {
    v10 = [a1[4] canLogWithSpeechManager:v2];
    v11 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v12 = @"<REDACTED>";
    if (v10)
    {
      v12 = v4;
    }

    *buf = 136315394;
    v20 = "[ADCommandCenter dictationRequestDidRecognizePartialPackage:nluResult:sessionUUID:]_block_invoke";
    v21 = 2112;
    v22 = v12;
  }

  else
  {
    v11 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 136315394;
    v20 = "[ADCommandCenter dictationRequestDidRecognizePartialPackage:nluResult:sessionUUID:]_block_invoke";
    v21 = 2112;
    v22 = v4;
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
LABEL_9:
  [a1[4] _metrics_markLocalPartialSpeechRecognition];
  v13 = a1[4];
  if (v13[379] == 1)
  {
    v14 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[ADCommandCenter dictationRequestDidRecognizePartialPackage:nluResult:sessionUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Ignoring partial local recognitions because server results have arrived", buf, 0xCu);
    }
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001D5AF4;
    v15[3] = &unk_10051DB18;
    v15[4] = v13;
    v16 = a1[5];
    v17 = a1[6];
    v18 = a1[7];
    [v13 _handlePartialSpeechRecognitionForElapsedTime:v15 WithDelegateBlock:v7];
  }
}

void sub_1001D5BEC(id *a1)
{
  v2 = [a1[4] _speechManager];
  v3 = [a1[5] lastObject];
  [v3 endTime];
  v5 = v4;
  v6 = [v2 dictationOptions];
  v7 = [v6 secureOfflineOnly];

  if (v7)
  {
    v8 = [a1[4] canLogWithSpeechManager:v2];
    v9 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    if (v8)
    {
      v10 = a1[5];
    }

    else
    {
      v10 = @"<REDACTED>";
    }

    *buf = 136315394;
    v19 = "[ADCommandCenter dictationRequestDidRecognizeTokens:nluResult:sessionUUID:]_block_invoke";
    v20 = 2112;
    v21 = v10;
  }

  else
  {
    v9 = AFSiriLogContextSpeech;
    if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v11 = a1[5];
    *buf = 136315394;
    v19 = "[ADCommandCenter dictationRequestDidRecognizeTokens:nluResult:sessionUUID:]_block_invoke";
    v20 = 2112;
    v21 = v11;
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
LABEL_10:
  [a1[4] _metrics_markLocalPartialSpeechRecognition];
  v12 = a1[4];
  if (v12[379] == 1)
  {
    v13 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v19 = "[ADCommandCenter dictationRequestDidRecognizeTokens:nluResult:sessionUUID:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Ignoring partial local recognitions because server results have arrived", buf, 0xCu);
    }
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001D5E80;
    v14[3] = &unk_10051DB18;
    v14[4] = v12;
    v15 = a1[5];
    v16 = a1[6];
    v17 = a1[7];
    [v12 _handlePartialSpeechRecognitionForElapsedTime:v14 WithDelegateBlock:v5];
  }
}

void sub_1001D5F50(id a1)
{
  v1 = +[ADExternalNotificationRequestHandler sharedNotificationRequestHandler];
  [v1 notifySpeechDetectedIsUndirected];
}

void sub_1001D60E4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = [v3 refId];
  v4 = [v2 _rootExecutionContextForRequestID:v5];
  [v2 _sasSpeechRecognized:v3 executionContext:v4 completion:a1[6]];
}

void *sub_1001D6654(void *result)
{
  if (result[4])
  {
    return [*(result[5] + 512) removeObject:?];
  }

  return result;
}

id sub_1001D67A4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 512);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    v4 = *(a1 + 32);
    v5 = *(v4 + 512);
    *(v4 + 512) = v3;

    v2 = *(*(a1 + 32) + 512);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void sub_1001D6934(uint64_t a1)
{
  v2 = [*(a1 + 32) _speechManager];
  [v2 updateSpeechSynthesisRecord:*(a1 + 40)];
}

void sub_1001D6C24(uint64_t a1)
{
  v2 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADCommandCenter prepareForShutdown]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Canceling session for shutdown", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 592))
  {
    dispatch_group_enter(*(a1 + 40));
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001D6D60;
    v5[3] = &unk_10051DFE8;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v4 _stopObservingCallStateWithCompletion:v5];

    v3 = *(a1 + 32);
  }

  [*(v3 + 96) cancelSynchronously];
  dispatch_suspend(*(*(a1 + 32) + 8));
}