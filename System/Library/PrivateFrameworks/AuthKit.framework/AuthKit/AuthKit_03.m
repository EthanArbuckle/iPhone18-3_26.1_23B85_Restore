BOOL sub_1001320E4(id a1, ACAccount *a2, unint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [location[0] accountPropertyForKey:@"com.apple.ak.checkin-allowed"];
  v5 = [v4 BOOLValue];
  _objc_release(v4);
  objc_storeStrong(location, 0);
  return v5;
}

void sub_100132560(uint64_t a1, int a2)
{
  *(v2 - 120) = a1;
  *(v2 - 124) = a2;
  os_activity_scope_leave((v2 - 104));
  _Unwind_Resume(*(v2 - 120));
}

void sub_100132580(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if (v7)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [AKAppleIDCheckInHelperService _setCheckInAllowedToValue:0 forAccount:*(a1 + 32)];
    [*(a1 + 40) _handleCheckInResponse:location[0] data:v8 context:*(a1 + 48) account:*(a1 + 32) error:v7 completion:*(a1 + 56)];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_100132C88(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

void sub_1001331C8(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  v12[0] = _AKLogSystem();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v12[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v16, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v12[0], v11, "Got authentication results back for token healing: %@", v16, 0xCu);
  }

  objc_storeStrong(v12, 0);
  if (v13 || !location[0])
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v15, v13);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Token healing failed with error : %@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      sub_10001CEEC(v8);
      _os_log_impl(&_mh_execute_header, v3, v4, "Token healing succeeded.", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_10013390C(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28[1] = a1;
  if (!v29 && location[0] && v30)
  {
    v4 = [AKAttestationDataProvider alloc];
    v28[0] = [(AKURLRequestProviderImpl *)v4 initWithContext:*(a1 + 32) urlBagKey:AKURLBagKeyAttestedOSVersion];
    [v28[0] setAttestationNonce:*(a1 + 40)];
    [v28[0] setAttestedData:location[0]];
    [v28[0] setCerts:v30];
    v5 = [AKServiceControllerImpl alloc];
    v27 = [(AKServiceControllerImpl *)v5 initWithRequestProvider:v28[0]];
    v9 = v27;
    v20 = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_100133E00;
    v24 = &unk_100324248;
    v26 = *(a1 + 56);
    v25 = _objc_retain(*(a1 + 48));
    [(AKServiceControllerImpl *)v9 executeRequestWithCompletion:&v20];
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(v28, 0);
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v19 = _AKSignpostGetNanoseconds() / 1000000000.0;
    v18 = _AKSignpostLogSystem();
    v17 = OS_SIGNPOST_INTERVAL_END;
    v16 = *(a1 + 56);
    if (v16 && v16 != -1 && os_signpost_enabled(v18))
    {
      sub_100034290(v34, [v29 code]);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v17, v16, "OSVersionAttestation", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v34, 8u);
    }

    objc_storeStrong(&v18, 0);
    oslog = _AKSignpostLogSystem();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000343D0(v33, *(a1 + 56), *&v19, [v29 code]);
      _os_log_impl(&_mh_execute_header, oslog, v14, "END [%lld] %fs:OSVersionAttestation  Error=%{public,signpost.telemetry:number2,name=Error}d ", v33, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    v13 = _AKLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v32, v29);
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Received error %@ while attesting the OS version", v32, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    [*(a1 + 48) setObject:&__kCFBooleanFalse forKeyedSubscript:kAAFDidSucceed];
    [*(a1 + 48) populateUnderlyingErrorsStartingWithRootError:v29];
    v8 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v8 sendEvent:*(a1 + 48)];
    _objc_release(v8);
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

void sub_100133E00(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = a1;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v16 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v15 = _AKSignpostLogSystem();
  v14 = OS_SIGNPOST_INTERVAL_END;
  v13 = *(a1 + 40);
  if (v13 && v13 != -1 && os_signpost_enabled(v15))
  {
    sub_100034290(v23, [v18 code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v14, v13, "OSVersionAttestation", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v23, 8u);
  }

  objc_storeStrong(&v15, 0);
  oslog = _AKSignpostLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v22, *(a1 + 40), *&v16, [v18 code]);
    _os_log_impl(&_mh_execute_header, oslog, v11, "END [%lld] %fs:OSVersionAttestation  Error=%{public,signpost.telemetry:number2,name=Error}d ", v22, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  if (v18)
  {
    [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v18];
    [*(a1 + 32) setObject:&__kCFBooleanFalse forKeyedSubscript:kAAFDidSucceed];
    v10 = _AKLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v21, v18, location[0]);
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to send attested OS version with error: %@\nresponse: %@", v21, 0x16u);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    [*(a1 + 32) setObject:&__kCFBooleanTrue forKeyedSubscript:kAAFDidSucceed];
  }

  v6 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
  [v6 sendEvent:*(a1 + 32)];
  _objc_release(v6);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void sub_100134640(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C37D8(v8, *(a1 + 32), v6 & 1, location);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Clear device list cache completed for context - %@ with status - %d and error - %{private}@", v8, 0x1Cu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&location, 0);
}

void sub_100135214(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (v5)
  {
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    [*(a1 + 32) _processCredentialStateChanges:location[0] completion:*(a1 + 40)];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_100135404(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] _processCredentialStateChanges:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1001356F8(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) _credentialStateDidChange:0 forApplicationWithClientID:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_100135A30(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [*(a1 + 32) _processCredentialStateChanges:location[0]];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_100135BB8(id *a1, void *a2, void *a3, uint64_t a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = a4;
  v15 = a1;
  v14 = [location[0] intValue];
  v7 = v17;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100135CF8;
  v12 = &unk_100324300;
  v13[0] = _objc_retain(a1[4]);
  v13[1] = v14;
  [v7 enumerateObjectsUsingBlock:?];
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void sub_100135CF8(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) _credentialStateDidChange:*(a1 + 40) forApplicationWithClientID:location[0]];
  objc_storeStrong(location, 0);
}

void sub_100135EE0(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[1] = a1;
  v4 = [location[0] aaf_map:&stru_100324368];
  v14[0] = [NSSet setWithArray:?];
  _objc_release(v4);
  v5 = *(a1 + 32);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100136124;
  v11 = &unk_1003243B8;
  v12 = _objc_retain(*(a1 + 40));
  v13 = _objc_retain(v14[0]);
  [v5 enumerateKeysAndObjectsUsingBlock:&v7];
  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

id sub_1001360A4(id a1, AKSignInWithAppleAccount *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] clientID];
  objc_storeStrong(location, 0);

  return v3;
}

void sub_100136124(id *a1, void *a2, void *a3, uint64_t a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = a4;
  v16 = a1;
  v15 = [location[0] intValue];
  v7 = v18;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100136298;
  v12 = &unk_100324390;
  v13 = _objc_retain(a1[4]);
  v14[1] = v15;
  v14[0] = _objc_retain(a1[5]);
  [v7 enumerateObjectsUsingBlock:?];
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_100136298(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) _credentialStateDidChange:*(a1 + 48) forApplicationWithClientID:location[0] clientIDsInKeychain:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

void sub_100136570(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

void sub_1001367EC(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to notification handler! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

void sub_1001368E4(uint64_t a1, char a2, id obj)
{
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_10004DCC8(v9, *(a1 + 32), v3, location);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Client (%@) was notified %@ with error %@", v9, 0x20u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&location, 0);
}

void sub_100136B88(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) _broadcastCredentialStateChange:*(a1 + 48) forApplicationWithClientID:*(a1 + 40) withHandlerBundleID:location[0]];
  objc_storeStrong(location, 0);
}

void sub_100136DC8(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to state broadcast handler! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_100136EC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

id sub_100137C54(uint64_t a1)
{
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  return +[NSXPCConnection endTransaction];
}

id sub_100137DD0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  return +[NSXPCConnection endTransaction];
}

void sub_100137EC4(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.authkit.itemstorequeue", v3);
  v2 = qword_100374818;
  qword_100374818 = v1;
  _objc_release(v2);
  _objc_release(v3);
}

uint64_t sub_10013826C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_100138534(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_100139428(void *a1)
{
  obj[2] = a1;
  obj[1] = a1;
  v2 = a1[4];
  location = (*(a1[6] + 8) + 40);
  obj[0] = *location;
  v6 = [v2 _unsafe_openDatabase:obj];
  objc_storeStrong(location, obj[0]);
  result = v6;
  *(*(a1[5] + 8) + 24) = v6;
  return result;
}

void sub_100139EFC(void *a1)
{
  obj[2] = a1;
  obj[1] = a1;
  v2 = a1[4];
  location = (*(a1[5] + 8) + 40);
  obj[0] = *location;
  [v2 _unsafe_wipeDatabase:obj];
  objc_storeStrong(location, obj[0]);
}

void sub_10013A6CC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100374828;
  qword_100374828 = v1;
  _objc_release(v2);
}

void sub_10013AE9C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id *location)
{
  *(v18 - 128) = a1;
  *(v18 - 132) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v18 - 64));
  _Unwind_Resume(*(v18 - 128));
}

void sub_10013AEE8(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = objc_loadWeakRetained((a1 + 48));
  [v2[0] _removeConnectionWithProtocol:*(a1 + 32) forBundleID:*(a1 + 40)];
  objc_storeStrong(v2, 0);
}

void sub_10013AF50(os_unfair_lock_s *a1, void *a2)
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  os_unfair_lock_lock(v3);
  (*(location + 2))();
  os_unfair_lock_unlock(v3);
  objc_storeStrong(&location, 0);
}

void sub_10013AFB4(uint64_t a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if (!v3[0])
  {
    v3[0] = +[NSMutableDictionary dictionary];
    _objc_release(0);
    [*(*(a1 + 32) + 16) setObject:v3[0] forKey:*(a1 + 40)];
  }

  v2 = NSStringFromProtocol(*(a1 + 48));
  [v3[0] setObject:*(a1 + 56) forKey:v2];
  objc_storeStrong(&v2, 0);
  objc_storeStrong(v3, 0);
}

void sub_10013B23C(uint64_t a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  location = NSStringFromProtocol(*(a1 + 48));
  [v3[0] removeObjectForKey:location];
  if (![v3[0] count])
  {
    [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v3, 0);
}

id sub_10013B4A8(os_unfair_lock_s *a1, void *a2)
{
  v6 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  os_unfair_lock_lock(v6);
  v4 = (*(location + 2))();
  os_unfair_lock_unlock(v6);
  v3 = _objc_retain(v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&location, 0);

  return v3;
}

id sub_10013B558(uint64_t a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v5[0] = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  v4 = NSStringFromProtocol(*(a1 + 48));
  v3 = [v5[0] objectForKey:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);

  return v3;
}

void sub_10013B7B4(id a1)
{
  v1 = objc_alloc_init(AKMIDValidator);
  v2 = qword_100374838;
  qword_100374838 = v1;
  _objc_release(v2);
}

void sub_10013B804(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.akd.anisette.validate", v3);
  v2 = qword_100374848;
  qword_100374848 = v1;
  _objc_release(v2);
  _objc_release(v3);
}

void sub_10013BAA4(uint64_t a1)
{
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = 0;
  v20 = 0;
  v19 = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v17 = 0;
  v12 = [v2 _calculateAndPersistDriftStatusForMID:v3 anisetteFetchError:v4 error:&v17];
  objc_storeStrong(&v19, v17);
  v18 = v12;
  v13 = +[AKConfiguration sharedConfiguration];
  v14 = [v13 lastKnownIDMSEnvironment];
  _objc_release(v13);
  v16[1] = v14;
  if (!v14 && v18 == 2)
  {
    v5 = [NSError ak_generalErrorWithCode:-8019 errorDomain:AKAnisetteErrorDomain underlyingError:*(a1 + 48)];
    v6 = v21[0];
    v21[0] = v5;
    _objc_release(v6);
    v7 = [*(a1 + 32) _createErrorWithMIDDriftUnderlyingError:v21[0] anisetteFetchError:*(a1 + 48)];
    v8 = v20;
    v20 = v7;
    _objc_release(v8);
    v16[0] = [AAFAnalyticsEvent ak_analyticsEventWithEventName:@"com.apple.authkit.midInvalidated" error:v20];
    v15 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v15 sendEvent:v16[0]];
    v9 = +[AKURLBag sharedBag];
    v10 = 0;
    if (![v9 isMIDDriftTTRDisabled])
    {
      v10 = [*(a1 + 32) _isTTREligibleForMIDDriftedError:v20];
    }

    _objc_release(v9);
    if (v10)
    {
      [*(a1 + 32) _triggerTTRForMIDDriftedError:v20];
    }

    objc_storeStrong(&v15, 0);
    objc_storeStrong(v16, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
}

void sub_10013BF5C(id a1, BOOL a2, NSError *a3)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_100091F70(v8, v6, location);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "MID Drifted! TTR filed with status - %d and error - %@", v8, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&location, 0);
}

id sub_10013C4A4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = _objc_retain(location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

uint64_t sub_10013C69C(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27[2] = a3;
  v27[1] = a1;
  v27[0] = [NSMutableDictionary dictionaryWithDictionary:location[0]];
  v11 = objc_opt_class();
  v13 = [v27[0] objectForKeyedSubscript:@"percentage"];
  v12 = sub_10013C4A4(v11, v13);
  v14 = [v12 integerValue];
  _objc_release(v12);
  _objc_release(v13);
  v25 = 0;
  v24 = v14;
  if (v14 > 0)
  {
    v8 = v24;
  }

  else
  {
    v8 = v25;
  }

  v23 = v8;
  v22 = v8;
  v21 = 100;
  if (v8 < 100)
  {
    v7 = v22;
  }

  else
  {
    v7 = v21;
  }

  v20 = v7;
  v26 = v7;
  v3 = arc4random_uniform(0x65u);
  v18 = v3;
  v17 = 1;
  if (v3)
  {
    v6 = v18;
  }

  else
  {
    v6 = v17;
  }

  oslog[1] = v6;
  v19 = v6;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_100034384(v29, v26, v19);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "ttr-cfgs normalized mid drift ttrFrequency - %ld and  RandomNumber - %ld", v29, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  v15 = v19 <= v26;
  [v27[0] setObject:0 forKeyedSubscript:@"percentage"];
  v5 = 0;
  if (v15)
  {
    v5 = [v27[0] isEqualToDictionary:a1[4]];
  }

  objc_storeStrong(v27, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

void sub_10013DC14(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100374858;
  qword_100374858 = v1;
  _objc_release(v2);
}

void sub_10013E494(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  (*(a1[4] + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_10013EDA8(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24[1] = a1;
  v24[0] = 0;
  if (v25)
  {
    v23 = _AKLogSystem();
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v29, v25, location[0]);
      _os_log_error_impl(&_mh_execute_header, v23, v22, "Failed to initiate custodian setup with error: %@\nresponse: %@", v29, 0x16u);
    }

    objc_storeStrong(&v23, 0);
  }

  else
  {
    v4 = *(a1 + 32);
    v20 = 0;
    v11 = [v4 validateResponseData:v26 error:&v20];
    objc_storeStrong(&v25, v20);
    v21 = v11;
    if (v11)
    {
      v5 = [NSString alloc];
      v19 = [v5 initWithData:v26 encoding:4];
      oslog = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 40) custodianUUID];
        sub_10004DCC8(v28, v10, location[0], v19);
        _os_log_impl(&_mh_execute_header, oslog, v17, "Successfully initiated custodian setup for custodianUUID %@\nresponse: %@\ndata: %@", v28, 0x20u);
        _objc_release(v10);
      }

      objc_storeStrong(&oslog, 0);
      v16 = [AAFSerialization dictionaryFromObject:v26 ofType:@"application/json"];
      v6 = objc_opt_new();
      v7 = v24[0];
      v24[0] = v6;
      _objc_release(v7);
      v15 = [v16 objectForKeyedSubscript:@"encryptedPRKC"];
      if ([v15 length])
      {
        v9 = [[NSData alloc] initWithBase64EncodedString:v15 options:0];
        [v24[0] setEncryptedPRKC:?];
        _objc_release(v9);
      }

      v8 = [v16 objectForKeyedSubscript:@"ownerCustodianAltDSID"];
      [v24[0] setOwnerCustodianAltDSID:?];
      _objc_release(v8);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v19, 0);
    }
  }

  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void sub_10013F738(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16[1] = a1;
  if (v17)
  {
    v16[0] = _AKLogSystem();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v22, v17);
      _os_log_error_impl(&_mh_execute_header, v16[0], v15, "Failed to finalize custodianship with error: %@", v22, 0xCu);
    }

    objc_storeStrong(v16, 0);
    if (*(a1 + 48))
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v13 = 0;
    v6 = [v4 validateResponseData:v18 error:&v13];
    objc_storeStrong(&v17, v13);
    v14 = v6;
    if (v6)
    {
      oslog = _AKLogSystem();
      v11 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 40) custodianUUID];
        sub_10001B098(v21, v5, location[0]);
        _os_log_impl(&_mh_execute_header, oslog, v11, "Successfully finalize custodianship for custodianUUID %@, response: %@", v21, 0x16u);
        _objc_release(v5);
      }

      objc_storeStrong(&oslog, 0);
      if (*(a1 + 48))
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v10 = _AKLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v20, v17);
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to finalize custodianship with error: %@", v20, 0xCu);
      }

      objc_storeStrong(&v10, 0);
      if (*(a1 + 48))
      {
        (*(*(a1 + 48) + 16))();
      }
    }
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_100140030(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16[1] = a1;
  if (v17)
  {
    v16[0] = _AKLogSystem();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v22, v17);
      _os_log_error_impl(&_mh_execute_header, v16[0], v15, "Failed to abort custodian setup with error: %@", v22, 0xCu);
    }

    objc_storeStrong(v16, 0);
    if (*(a1 + 48))
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v13 = 0;
    v6 = [v4 validateResponseData:v18 error:&v13];
    objc_storeStrong(&v17, v13);
    v14 = v6;
    if (v6)
    {
      oslog = _AKLogSystem();
      v11 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 40) custodianUUID];
        sub_10001B098(v21, v5, location[0]);
        _os_log_impl(&_mh_execute_header, oslog, v11, "Successfully aborted custodian setup for custodianUUID %@, response: %@", v21, 0x16u);
        _objc_release(v5);
      }

      objc_storeStrong(&oslog, 0);
      if (*(a1 + 48))
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v10 = _AKLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v20, v17);
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to abort custodian setup with error: %@", v20, 0xCu);
      }

      objc_storeStrong(&v10, 0);
      if (*(a1 + 48))
      {
        (*(*(a1 + 48) + 16))();
      }
    }
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_100140A18(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10[1] = a1;
  if (v11)
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v15, v11, location[0]);
      _os_log_error_impl(&_mh_execute_header, v10[0], v9, "Failed to update recovery key with error: %@\nresponse: %@", v15, 0x16u);
    }

    objc_storeStrong(v10, 0);
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) custodianUUID];
      sub_10001B098(v14, v4, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Successfully updated recovery key for custodianUUID %@, response: %@", v14, 0x16u);
      _objc_release(v4);
    }

    objc_storeStrong(&oslog, 0);
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_100141238(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  *(v10 - 248) = a1;
  *(v10 - 252) = a2;
  _Block_object_dispose((v10 - 232), 8);
  _Unwind_Resume(*(v10 - 248));
}

void sub_100141270(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14[1] = a1;
  if (v15)
  {
    v14[0] = _AKLogSystem();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v14[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v19, v15);
      _os_log_error_impl(&_mh_execute_header, v14[0], v13, "Failed to start custodian account recovery with error: %@", v19, 0xCu);
    }

    objc_storeStrong(v14, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) ownerAppleID];
      sub_10001B098(v18, v8, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Successfully started an account recovery for account %@, response: %@", v18, 0x16u);
      _objc_release(v8);
    }

    objc_storeStrong(&oslog, 0);
    v4 = [AAFSerialization dictionaryFromObject:v16 ofType:@"application/json"];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
    _objc_release(v6);
  }

  if (*(a1 + 40))
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_100141A1C(uint64_t a1, int a2)
{
  *(v2 - 152) = a1;
  *(v2 - 156) = a2;
  _Block_object_dispose((v2 - 136), 8);
  _Unwind_Resume(*(v2 - 152));
}

void sub_100141A40(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10[1] = a1;
  if (v11)
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v15, v11);
      _os_log_error_impl(&_mh_execute_header, v10[0], v9, "Failed to start custodian recovery transaction with error: %@", v15, 0xCu);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v14, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Successfully started an account recovery transaction, response: %@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    *(*(a1[5] + 8) + 24) = 1;
  }

  if (a1[4])
  {
    v4 = *(*(a1[5] + 8) + 24) & 1;
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_100141F50(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v51 = 0;
  objc_storeStrong(&v51, a3);
  v50 = 0;
  objc_storeStrong(&v50, a4);
  v49[1] = a1;
  if (v50)
  {
    v49[0] = _AKLogSystem();
    v48 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v49[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v56, v50);
      _os_log_error_impl(&_mh_execute_header, v49[0], v48, "Failed to verify custodian recovery key with error: %@", v56, 0xCu);
    }

    objc_storeStrong(v49, 0);
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }

    v47 = 1;
  }

  else
  {
    v46 = _AKLogSystem();
    v45 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v55, location[0]);
      _os_log_impl(&_mh_execute_header, v46, v45, "Call to fetch custodian recovery token returned with response: %@", v55, 0xCu);
    }

    objc_storeStrong(&v46, 0);
    v44 = [location[0] statusCode];
    v43 = _AKLogSystem();
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [NSNumber numberWithInteger:v44];
      sub_1000194D4(v54, v25);
      _os_log_impl(&_mh_execute_header, v43, v42, "Vetting validation completed with HTTP status code: %@", v54, 0xCu);
      _objc_release(v25);
    }

    objc_storeStrong(&v43, 0);
    if (v44 == 200)
    {
      v41 = [AAFSerialization dictionaryFromObject:v51 ofType:@"application/json"];
      if (v41)
      {
        v37 = [v41 objectForKeyedSubscript:AKErrorStatusCodeKey];
        if ([v37 integerValue])
        {
          v36 = _AKLogSystem();
          v35 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_10006A654(v53, [v37 intValue]);
            _os_log_error_impl(&_mh_execute_header, v36, v35, "Server request failed with error code: %i", v53, 8u);
          }

          objc_storeStrong(&v36, 0);
          v12 = [NSError ak_errorWithCode:-7029];
          v13 = *(a1[5] + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;
          _objc_release(v14);
          if (a1[4])
          {
            v15 = *(*(a1[5] + 8) + 40);
            (*(a1[4] + 16))();
          }

          v47 = 1;
        }

        else
        {
          v34 = [location[0] allHeaderFields];
          v33 = [v34 objectForKeyedSubscript:AKCustodianRecoveryTokenKey];
          v32 = [v34 objectForKeyedSubscript:AKAltDSIDHeaderKey];
          v31 = [AKToken tokenWithBase64String:v33];
          if (v31 && [v32 length])
          {
            v22 = [v31 stringValue];
            v30 = [NSString stringWithFormat:@"%@:%@", v32, v22];
            _objc_release(v22);
            v29 = [v30 dataUsingEncoding:4];
            if (a1[4])
            {
              v20 = (a1[4] + 16);
              v21 = [v29 base64EncodedStringWithOptions:0];
              (*v20)();
              _objc_release(v21);
            }

            objc_storeStrong(&v29, 0);
            objc_storeStrong(&v30, 0);
            v47 = 0;
          }

          else
          {
            v16 = [NSError ak_errorWithCode:-7010];
            v17 = *(a1[5] + 8);
            v18 = *(v17 + 40);
            *(v17 + 40) = v16;
            _objc_release(v18);
            if (a1[4])
            {
              v19 = *(*(a1[5] + 8) + 40);
              (*(a1[4] + 16))();
            }

            v47 = 1;
          }

          objc_storeStrong(&v31, 0);
          objc_storeStrong(&v32, 0);
          objc_storeStrong(&v33, 0);
          objc_storeStrong(&v34, 0);
        }

        objc_storeStrong(&v37, 0);
      }

      else
      {
        v40 = _AKLogSystem();
        v39 = 16;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v23 = v40;
          v24 = v39;
          sub_10001CEEC(v38);
          _os_log_error_impl(&_mh_execute_header, v23, v24, "No body parameters in code validation response!", v38, 2u);
        }

        objc_storeStrong(&v40, 0);
        v8 = [NSError ak_errorWithCode:-7010];
        v9 = *(a1[5] + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
        _objc_release(v10);
        if (a1[4])
        {
          v11 = *(*(a1[5] + 8) + 40);
          (*(a1[4] + 16))();
        }

        v47 = 1;
      }

      objc_storeStrong(&v41, 0);
      if (!v47)
      {
        v47 = 0;
      }
    }

    else
    {
      v4 = [NSError ak_errorWithCode:-7029];
      v5 = *(a1[5] + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
      _objc_release(v6);
      if (a1[4])
      {
        v7 = *(*(a1[5] + 8) + 40);
        (*(a1[4] + 16))();
      }

      v47 = 1;
    }
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
}

void sub_100142EA4(uint64_t a1, int a2)
{
  *(v2 - 216) = a1;
  *(v2 - 220) = a2;
  _Block_object_dispose((v2 - 200), 8);
  _Unwind_Resume(*(v2 - 216));
}

void sub_100142EC8(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  oslog[1] = a1;
  if (v14)
  {
    oslog[0] = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v18, v14);
      _os_log_error_impl(&_mh_execute_header, oslog[0], type, "Failed to start custodian account recovery with error: %@", v18, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v11 = _AKLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v17, *(a1 + 32), location[0]);
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully fetched data recovery key for account with altDSID %@, response: %@", v17, 0x16u);
    }

    objc_storeStrong(&v11, 0);
    v4 = [AAFSerialization dictionaryFromObject:v15 ofType:@"application/json"];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
    _objc_release(v6);
  }

  if (*(a1 + 40))
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_100143714(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16[1] = a1;
  if (v17)
  {
    v16[0] = _AKLogSystem();
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v22, v17);
      _os_log_error_impl(&_mh_execute_header, v16[0], v15, "Failed to send embargo end feedback with error: %@", v22, 0xCu);
    }

    objc_storeStrong(v16, 0);
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }

    v14 = 1;
  }

  else
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v21, location[0]);
      _os_log_impl(&_mh_execute_header, v13, v12, "Embargo end feedback call returned with response: %@", v21, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    v11 = [location[0] statusCode];
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithInteger:v11];
      sub_1000194D4(v20, v6);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Embargo end feedback completed with HTTP status code: %@", v20, 0xCu);
      _objc_release(v6);
    }

    objc_storeStrong(&oslog, 0);
    if (v11 == 200)
    {
      if (a1[4])
      {
        (*(a1[4] + 16))();
      }

      v14 = 0;
    }

    else
    {
      if (a1[4])
      {
        v4 = (a1[4] + 16);
        v5 = [NSError ak_errorWithCode:-7029];
        (*v4)();
        _objc_release(v5);
      }

      v14 = 1;
    }
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_1001455C0(id a1)
{
  v1 = objc_alloc_init(AKTokenManager);
  v2 = qword_100374868;
  qword_100374868 = v1;
  _objc_release(v2);
}

void sub_100145BF8(void *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = [[AKTokenRequestContext alloc] initWithIdentifier:a1[4] altDSID:a1[5]];
  [v3[0] setToken:a1[6]];
  [*(a1[7] + 24) updateWithContext:v3[0]];
  [*(a1[7] + 32) updateWithContext:v3[0] error:a1[10]];
  v2 = +[AKAccountManager sharedInstance];
  [(AKAccountManager *)v2 setToken:a1[6] tokenID:a1[4] account:a1[8] credential:a1[9]];
  _objc_release(v2);
  objc_storeStrong(v3, 0);
}

void sub_1001465FC(uint64_t a1)
{
  v84[2] = a1;
  v84[1] = a1;
  v84[0] = [[AKTokenRequestContext alloc] initWithIdentifier:*(a1 + 32) altDSID:*(a1 + 40)];
  v1 = [*(*(a1 + 48) + 24) fetchWithContext:v84[0]];
  v2 = *(*(a1 + 64) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  _objc_release(v3);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    location = _AKLogSystem();
    v82 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v82;
      sub_10001CEEC(v81);
      _os_log_debug_impl(&_mh_execute_header, log, type, "AKTokenManager: found token in cache.", v81, 2u);
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 64) + 8) + 40));
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  v4 = [*(*(a1 + 48) + 32) fetchWithContext:v84[0] error:*(a1 + 120)];
  v5 = *(*(a1 + 88) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
  _objc_release(v6);
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v75 = _AKLogSystem();
    v74 = 2;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      v40 = v75;
      v41 = v74;
      sub_10001CEEC(v73);
      _os_log_debug_impl(&_mh_execute_header, v40, v41, "AKTokenManager: found token in keychain.", v73, 2u);
    }

    objc_storeStrong(&v75, 0);
    v38 = +[AKFeatureManager sharedManager];
    v39 = [v38 isTokenCreationTimeEnabled];
    _objc_release(v38);
    if (v39)
    {
      v7 = *(*(*(a1 + 64) + 8) + 40);
      v71 = 0;
      v69 = 0;
      v67 = 0;
      v37 = 1;
      if (v7)
      {
        v72 = [*(*(*(a1 + 64) + 8) + 40) creationDate];
        v71 = 1;
        v37 = 1;
        if (v72)
        {
          v70 = [*(*(*(a1 + 88) + 8) + 40) creationDate];
          v69 = 1;
          v68 = [*(*(*(a1 + 64) + 8) + 40) creationDate];
          v67 = 1;
          v37 = [v70 compare:?] == 1;
        }
      }

      if (v67)
      {
        _objc_release(v68);
      }

      if (v69)
      {
        _objc_release(v70);
      }

      if (v71)
      {
        _objc_release(v72);
      }

      if (v37)
      {
        v66 = _AKLogSystem();
        v65 = 2;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          v35 = v66;
          v36 = v65;
          sub_10001CEEC(v64);
          _os_log_debug_impl(&_mh_execute_header, v35, v36, "AKTokenManager: token from keychain has newer creation date. Picking this one.", v64, 2u);
        }

        objc_storeStrong(&v66, 0);
        objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 88) + 8) + 40));
        *(*(*(a1 + 80) + 8) + 24) = 1;
      }

      else
      {
        *(*(*(a1 + 96) + 8) + 24) = 1;
      }
    }

    else
    {
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 88) + 8) + 40));
    }
  }

  else
  {
    v80 = _AKLogSystem();
    v79 = 2;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      v42 = v80;
      v43 = v79;
      sub_10001CEEC(v78);
      _os_log_debug_impl(&_mh_execute_header, v42, v43, "AKTokenManager: didn't find token in keychain.", v78, 2u);
    }

    objc_storeStrong(&v80, 0);
    *(*(*(a1 + 96) + 8) + 24) = 1;
    if (*(a1 + 120))
    {
      v77 = _AKLogSystem();
      v76 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v86, **(a1 + 120));
        _os_log_debug_impl(&_mh_execute_header, v77, v76, "AKTokenManager: error fetching from keychain: %@", v86, 0xCu);
      }

      objc_storeStrong(&v77, 0);
    }
  }

  if (*(a1 + 56))
  {
    v34 = +[AKAccountManager sharedInstance];
    v8 = [(AKAccountManager *)v34 _tokenWithName:*(a1 + 32) forAccount:*(a1 + 56) error:*(a1 + 120)];
    v9 = *(*(a1 + 104) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
    _objc_release(v10);
    _objc_release(v34);
    if (*(*(*(a1 + 104) + 8) + 40))
    {
      v63 = _AKLogSystem();
      v62 = 2;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        v32 = v63;
        v33 = v62;
        sub_10001CEEC(v61);
        _os_log_debug_impl(&_mh_execute_header, v32, v33, "AKTokenManager: found token from account credential.", v61, 2u);
      }

      objc_storeStrong(&v63, 0);
      v30 = +[AKFeatureManager sharedManager];
      v31 = [v30 isTokenCreationTimeEnabled];
      _objc_release(v30);
      if (v31)
      {
        v28 = +[AKAccountManager sharedInstance];
        v60 = [(AKAccountManager *)v28 tokenCreationDateWithIdentifier:*(a1 + 32) forAccount:*(a1 + 56) error:0];
        _objc_release(v28);
        v11 = *(*(*(a1 + 72) + 8) + 40);
        v58 = 0;
        v56 = 0;
        v29 = 1;
        if (v11)
        {
          v27 = 0;
          if (v60)
          {
            v59 = [*(*(*(a1 + 72) + 8) + 40) creationDate];
            v58 = 1;
            v27 = 0;
            if (v59)
            {
              v57 = [*(*(*(a1 + 72) + 8) + 40) creationDate];
              v56 = 1;
              v27 = [v60 compare:?] == 1;
            }
          }

          v29 = v27;
        }

        if (v56)
        {
          _objc_release(v57);
        }

        if (v58)
        {
          _objc_release(v59);
        }

        if (v29)
        {
          oslog = _AKLogSystem();
          v54 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            v25 = oslog;
            v26 = v54;
            sub_10001CEEC(v53);
            _os_log_debug_impl(&_mh_execute_header, v25, v26, "AKTokenManager: token from Accounts has newer creation date. Picking this one.", v53, 2u);
          }

          objc_storeStrong(&oslog, 0);
          v12 = [AKToken tokenWithValue:*(*(*(a1 + 104) + 8) + 40) lifetime:0];
          v13 = *(*(a1 + 72) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;
          _objc_release(v14);
        }

        objc_storeStrong(&v60, 0);
      }

      else
      {
        v52 = _AKLogSystem();
        v51 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v23 = v52;
          v24 = v51;
          sub_10001CEEC(v50);
          _os_log_debug_impl(&_mh_execute_header, v23, v24, "AKTokenManager: Token creation time not enabled. Defaulting to choose token from account credential", v50, 2u);
        }

        objc_storeStrong(&v52, 0);
        v15 = [AKToken tokenWithValue:*(*(*(a1 + 104) + 8) + 40) lifetime:0];
        v16 = *(*(a1 + 72) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;
        _objc_release(v17);
      }
    }

    else
    {
      *(*(*(a1 + 112) + 8) + 24) = 1;
    }
  }

  if ((*(a1 + 128) & 1) != 0 && *(*(*(a1 + 72) + 8) + 40))
  {
    v49 = _AKLogSystem();
    v48 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      sub_1001473B0(v85, *(*(*(a1 + 80) + 8) + 24) & 1, *(*(*(a1 + 96) + 8) + 24) & 1, *(*(*(a1 + 112) + 8) + 24) & 1);
      _os_log_debug_impl(&_mh_execute_header, v49, v48, "AKTokenManager: shouldUpdateCache:%d, shouldUpdateKeychain:%d, shouldUpdateAccountCredential:%d", v85, 0x14u);
    }

    objc_storeStrong(&v49, 0);
    v47 = [[AKTokenRequestContext alloc] initWithIdentifier:*(a1 + 32) altDSID:*(a1 + 40)];
    [v47 setToken:*(*(*(a1 + 72) + 8) + 40)];
    if (*(*(*(a1 + 80) + 8) + 24))
    {
      [*(*(a1 + 48) + 24) updateWithContext:v47];
    }

    if (*(*(*(a1 + 96) + 8) + 24))
    {
      [*(*(a1 + 48) + 32) updateWithContext:v47 error:*(a1 + 120)];
    }

    if (*(*(*(a1 + 112) + 8) + 24))
    {
      v22 = +[AKAccountManager sharedInstance];
      v18 = *(*(*(a1 + 72) + 8) + 40);
      v19 = *(a1 + 32);
      v20 = *(a1 + 56);
      v21 = [v20 credentialWithError:*(a1 + 120)];
      [(AKAccountManager *)v22 setToken:v18 tokenID:v19 account:v20 credential:?];
      _objc_release(v21);
      _objc_release(v22);
    }

    objc_storeStrong(&v47, 0);
  }

  objc_storeStrong(v84, 0);
}

uint64_t sub_1001473B0(uint64_t result, int a2, int a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  return result;
}

void sub_100147E10(void *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v8[0] = [[AKTokenRequestContext alloc] initWithIdentifier:a1[4] altDSID:a1[5]];
  if (a1[4])
  {
    [*(a1[6] + 24) deleteWithContext:v8[0]];
    [*(a1[6] + 32) deleteWithContext:v8[0] error:a1[9]];
  }

  else
  {
    [*(a1[6] + 24) clearAllTokensForAltDSID:a1[5]];
    [*(a1[6] + 32) clearAllTokensForAltDSID:a1[5] error:a1[9]];
  }

  if (*(*(a1[8] + 8) + 40))
  {
    location = _AKLogSystem();
    v6 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v6;
      sub_10001CEEC(v5);
      _os_log_debug_impl(&_mh_execute_header, log, type, "AKTokenManager: we received an Account, deleting from there as well.", v5, 2u);
    }

    objc_storeStrong(&location, 0);
    v1 = +[AKAccountManager sharedInstance];
    [(AKAccountManager *)v1 setToken:0 tokenID:a1[4] account:*(*(a1[8] + 8) + 40) credential:a1[7]];
    _objc_release(v1);
  }

  objc_storeStrong(v8, 0);
}

void sub_100148B04(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  v6[0] = 0;
  if (v7)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v9, v7);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch dataclass rules with error: %@", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_100148EFC(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  oslog[1] = a1;
  if (v7)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v3 = [(objc_class *)a1[4].isa beneficiaryIdentifier];
      sub_10001B098(v9, v3, v7);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to setup beneficiary (%@) with error: %@", v9, 0x16u);
      _objc_release(v3);
    }

    objc_storeStrong(oslog, 0);
  }

  if (a1[5].isa)
  {
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_1001491E8(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  oslog[1] = a1;
  if (v7)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v3 = [(objc_class *)a1[4].isa beneficiaryIdentifier];
      sub_10001B098(v9, v3, v7);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to remove beneficiary (%@) with error: %@", v9, 0x16u);
      _objc_release(v3);
    }

    objc_storeStrong(oslog, 0);
  }

  if (a1[5].isa)
  {
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_1001494D4(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  oslog[1] = a1;
  if (v7)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v3 = [(objc_class *)a1[4].isa beneficiaryIdentifier];
      sub_10001B098(v9, v3, v7);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to update beneficiary (%@) with error: %@", v9, 0x16u);
      _objc_release(v3);
    }

    objc_storeStrong(oslog, 0);
  }

  if (a1[5].isa)
  {
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10014986C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v13[0] = 0;
  if (v14)
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) beneficiaryIdentifier];
      sub_10001B098(v17, v7, v14);
      _os_log_error_impl(&_mh_execute_header, v12, v11, "Failed to setup beneficiary alias (%@) with error: %@", v17, 0x16u);
      _objc_release(v7);
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v16, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Successfully setup Beneficiary Alias\nresponse: %@", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v3 = objc_alloc_init(AKBeneficiaryAliasSetupResult);
    v4 = v13[0];
    v13[0] = v3;
    _objc_release(v4);
    v5 = [location[0] objectForKeyedSubscript:@"beneficiaryADSID"];
    [v13[0] setBeneficiaryAltDSID:?];
    _objc_release(v5);
    v6 = [location[0] objectForKeyedSubscript:@"beneficiaryAccountName"];
    [v13[0] setBeneficiaryAccountName:?];
    _objc_release(v6);
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_100149DD4(uint64_t a1, int a2)
{
  *(v2 - 136) = a1;
  *(v2 - 140) = a2;
  _Block_object_dispose((v2 - 120), 8);
  _Unwind_Resume(*(v2 - 136));
}

void sub_100149DF8(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18[1] = a1;
  v18[0] = 0;
  if (v19)
  {
    v17 = _AKLogSystem();
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v23, v19);
      _os_log_error_impl(&_mh_execute_header, v17, v16, "Failed to execute request with error: %@", v23, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    objc_storeStrong(v18, v19);
  }

  else
  {
    v4 = a1[4];
    v14 = v18[0];
    v9 = [v4 validateResponseData:v20 error:&v14];
    objc_storeStrong(v18, v14);
    v15 = v9;
    if (v9)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v22, location[0]);
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Successfully executed the request with response: %@", v22, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v5 = [AAFSerialization dictionaryFromObject:v20 ofType:@"application/json"];
      v6 = *(a1[6] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
      _objc_release(v7);
    }
  }

  if (a1[5])
  {
    v8 = *(*(a1[6] + 8) + 40);
    (*(a1[5] + 16))();
  }

  objc_storeStrong(v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void sub_10014A4A8(uint64_t a1, int a2)
{
  *(v2 - 80) = a1;
  *(v2 - 84) = a2;
  _Block_object_dispose((v2 - 64), 8);
  _Unwind_Resume(*(v2 - 80));
}

void sub_10014A4CC(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_text(a2, 0);
  if (v4)
  {
    v2 = [NSString stringWithUTF8String:v4];
    *(*(*(a1 + 32) + 8) + 24) = [(NSString *)v2 intValue];
    _objc_release(v2);
  }
}

void sub_10014A724(id *a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8[1] = a1;
  v8[0] = [a1[5] stringFromColumn:1 inStatement:a2];
  if (v8[0])
  {
    v3 = [a1[5] stringFromColumn:2 inStatement:v9];
    v5 = 0;
    if (v3)
    {
      v2 = _objc_retain(v3);
    }

    else
    {
      v6 = +[NSNull null];
      v5 = 1;
      v2 = _objc_retain(v6);
    }

    v7 = v2;
    if (v5)
    {
      _objc_release(v6);
    }

    _objc_release(v3);
    [a1[4] setObject:v7 forKeyedSubscript:v8[0]];
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(v8, 0);
}

void sub_10014AAE8(id a1)
{
  v1 = objc_alloc_init(AKURLBagService);
  v2 = qword_100374878;
  qword_100374878 = v1;
  _objc_release(v2);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.authkit.urlbag.trafficQueue", v7);
  v4 = *(qword_100374878 + 8);
  *(qword_100374878 + 8) = v3;
  _objc_release(v4);
  _objc_release(v7);
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.authkit.urlbag.clearanceQueue", v8);
  v6 = *(qword_100374878 + 16);
  *(qword_100374878 + 16) = v5;
  _objc_release(v6);
  _objc_release(v8);
}

void sub_10014AE88(os_unfair_lock_s *a1, void *a2)
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  os_unfair_lock_lock(v3);
  (*(location + 2))();
  os_unfair_lock_unlock(v3);
  objc_storeStrong(&location, 0);
}

void sub_10014B0D0(uint64_t a1)
{
  v1 = objc_opt_new();
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = v1;
  _objc_release(v3);
  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;
  _objc_release(v6);
}

void sub_10014BA04(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), location[0]);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  dispatch_semaphore_signal(*(a1 + 32));
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_10014C050(NSObject *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v49 = 0;
  objc_storeStrong(&v49, a3);
  v48 = 0;
  objc_storeStrong(&v48, a4);
  v47[1] = a1;
  if (v48 && (+[AKAccountManager isAccountsFrameworkAvailable]& 1) != 0)
  {
    v47[0] = _AKLogSystem();
    v46 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v47[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v55, v48);
      _os_log_error_impl(&_mh_execute_header, v47[0], v46, "Bag fetch failed! Error: %@", v55, 0xCu);
    }

    objc_storeStrong(v47, 0);
    isa = a1[6].isa;
    v26 = [v48 ac_secureCodingError];
    v25 = [NSError ak_errorWithCode:-7005 underlyingError:?];
    (*(isa + 2))(isa, 0);
    _objc_release(v25);
    _objc_release(v26);
  }

  else if (location[0])
  {
    v42 = _objc_retain(v49);
    v41 = _AKLogSystem();
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v41;
      v18 = v40;
      v19 = [v42 allHeaderFields];
      v39 = _objc_retain(v19);
      sub_1000194D4(v54, v39);
      _os_log_impl(&_mh_execute_header, v17, v18, "URL Bag response headers: %@", v54, 0xCu);
      _objc_release(v19);
      objc_storeStrong(&v39, 0);
    }

    objc_storeStrong(&v41, 0);
    v38 = 0;
    v36 = 0;
    v16 = [NSPropertyListSerialization propertyListWithData:location[0] options:0 format:0 error:&v36];
    objc_storeStrong(&v38, v36);
    v37 = v16;
    if (v16)
    {
      v35 = _AKLogSystem();
      v34 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v53, v37);
        _os_log_impl(&_mh_execute_header, v35, v34, "URL Bag Fetched! %@", v53, 0xCu);
      }

      objc_storeStrong(&v35, 0);
      if (![(objc_class *)a1[4].isa fromURLCache])
      {
        v14 = [(objc_class *)a1[4].isa context];
        v15 = [v14 altDSID];
        _objc_release(v15);
        _objc_release(v14);
        if (!v15)
        {
          v13 = +[AKConfiguration sharedConfiguration];
          [v13 setLastKnownIDMSEnvironment:{+[AKURLBag IDMSEnvironmentFromBag:](AKURLBag, "IDMSEnvironmentFromBag:", v37)}];
          _objc_release(v13);
        }

        v10 = a1[5].isa;
        v9 = v37;
        v12 = [(objc_class *)a1[4].isa context];
        v11 = [v12 altDSID];
        [(objc_class *)v10 _updateCacheWithBag:v9 forAltDSID:?];
        _objc_release(v11);
        _objc_release(v12);
      }
    }

    else if ([location[0] length])
    {
      v8 = [NSString alloc];
      v7 = location[0];
      v4 = location[0];
      v33 = [v8 initWithBytes:objc_msgSend(v7 length:"bytes") encoding:{objc_msgSend(location[0], "length"), 4}];
      oslog = _AKLogSystem();
      v31 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v52, v38);
        _os_log_error_impl(&_mh_execute_header, oslog, v31, "URL Bag Serialization Error: %@", v52, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v30 = _AKLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v51, v33);
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "URL Bag Response Body: %@", v51, 0xCu);
      }

      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v33, 0);
    }

    v6 = +[AKBAATimeProvider sharedInstance];
    v5 = [v42 allHeaderFields];
    [(AKBAATimeProvider *)v6 updateTimeFromResponseHeaders:?];
    _objc_release(v5);
    _objc_release(v6);
    (*(a1[6].isa + 2))();
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v42, 0);
  }

  else
  {
    v45 = _AKLogSystem();
    v44 = 16;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v22 = v45;
      v23 = v44;
      sub_10001CEEC(v43);
      _os_log_error_impl(&_mh_execute_header, v22, v23, "Bag fetch either timed out or was successful but there was no bag data!", v43, 2u);
    }

    objc_storeStrong(&v45, 0);
    v20 = a1[6].isa;
    v21 = [NSError ak_errorWithCode:-7005];
    (*(v20 + 2))(v20, 0);
    _objc_release(v21);
  }

  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
}

void sub_10014CD08(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = a1;
  v3 = a1[5];
  v4 = a1[6];
  v15 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = 2;
  v12 = a1[5];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    log = v14;
    type = v13;
    spid = v12;
    sub_10001CEEC(v11);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, type, spid, "FetchURLBag", "", v11, 2u);
  }

  objc_storeStrong(&v14, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100034384(v19, a1[5], *&v15);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:FetchURLBag ", v19, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void sub_10014CF34(uint64_t a1)
{
  v27[2] = a1;
  v27[1] = a1;
  v27[0] = objc_alloc_init(AKBagTrafficClearanceRequest);
  v10 = [AKURLBagFetchContext contextWithAltDSID:*(a1 + 32)];
  [v27[0] setContext:?];
  _objc_release(v10);
  [v27[0] setFromURLCache:*(a1 + 64) & 1];
  [v27[0] setIgnoreMemoryCache:*(a1 + 65) & 1];
  [v27[0] setUrlSwitchData:*(a1 + 40)];
  [v27[0] setClearanceHandler:*(a1 + 56)];
  if (*(a1 + 64))
  {
    v7 = *(a1 + 48);
    v9 = [v27[0] context];
    v8 = [v9 altDSID];
    v26 = [v7 _cachedURLBagForAltDSID:?];
    _objc_release(v8);
    _objc_release(v9);
    if (v26)
    {
      [*(a1 + 48) _invokeClearanceRequest:v27[0] urlBag:v26 error:0];
    }

    else
    {
      v6 = *(a1 + 48);
      v5 = v27[0];
      v19 = _NSConcreteStackBlock;
      v20 = -1073741824;
      v21 = 0;
      v22 = sub_10014D310;
      v23 = &unk_100324938;
      v24 = _objc_retain(*(a1 + 48));
      v25 = _objc_retain(v27[0]);
      [v6 _fetchBagFromNetworkWithRequest:v5 completion:&v19];
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v26, 0);
  }

  else
  {
    v4 = [*(a1 + 48) activeBagFetchRequest];
    _objc_release(v4);
    if (v4)
    {
      v3 = [*(a1 + 48) pendingBagFetchRequests];
      [v3 addObject:v27[0]];
      _objc_release(v3);
    }

    else
    {
      v2 = *(a1 + 48);
      v1 = v27[0];
      v12 = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_10014D3A0;
      v16 = &unk_100324938;
      v17 = _objc_retain(*(a1 + 48));
      v18 = _objc_retain(v27[0]);
      [v2 _tq_invokeRequest:v1 completion:&v12];
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v17, 0);
    }
  }

  objc_storeStrong(v27, 0);
}

void sub_10014D310(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [*(a1 + 32) _invokeClearanceRequest:*(a1 + 40) urlBag:location[0] error:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_10014D3A0(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  [*(a1 + 32) _invokeClearanceRequest:*(a1 + 40) urlBag:location[0] error:v12];
  queue = *(*(a1 + 32) + 8);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10014D4CC;
  v10 = &unk_10031F8B0;
  v11[0] = _objc_retain(*(a1 + 32));
  dispatch_async(queue, &v6);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_10014D688(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v4, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Invoking clearance for bag request %@", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v1 = [*(a1 + 32) clearanceHandler];
  (*(v1 + 2))(v1, *(a1 + 40), *(a1 + 48));
  _objc_release(v1);
}

void sub_10014D7A8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  [*(a1 + 32) _invokeClearanceRequest:*(a1 + 40) urlBag:location[0] error:v12];
  queue = *(*(a1 + 32) + 8);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10014D8D4;
  v10 = &unk_10031F8B0;
  v11[0] = _objc_retain(*(a1 + 32));
  dispatch_async(queue, &v6);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_10014DAF0(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[4] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

id sub_10014DCFC(os_unfair_lock_s *a1, void *a2)
{
  v6 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  os_unfair_lock_lock(v6);
  v4 = (*(location + 2))();
  os_unfair_lock_unlock(v6);
  v3 = _objc_retain(v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&location, 0);

  return v3;
}

id sub_10014DDAC(uint64_t a1)
{
  v15[2] = a1;
  v15[1] = a1;
  if ([*(a1 + 32) length])
  {
    v1 = _objc_retain(*(a1 + 32));
  }

  else
  {
    v1 = _objc_retain(@"AKSharedBag");
  }

  v15[0] = v1;
  v14 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v1];
  v12 = 0;
  v5 = 0;
  if (v14)
  {
    v13 = +[NSDate now];
    v12 = 1;
    [(NSDate *)v13 timeIntervalSinceDate:v14];
    v5 = v2 < 86400.0;
  }

  if (v12)
  {
    _objc_release(v13);
  }

  if (v5)
  {
    v11 = [*(*(a1 + 40) + 56) objectForKeyedSubscript:v15[0]];
    if (!v11)
    {
      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v18, v15[0]);
        _os_log_debug_impl(&_mh_execute_header, oslog, type, "Memory URL bag cache miss for key: %@", v18, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    v16 = _objc_retain(v11);
    v8 = 1;
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A3A4(v17, 1752392040, v15[0], v14);
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Memory URL bag cache expired or not created for key: %{mask.hash}@; last updated: %@", v17, 0x20u);
    }

    objc_storeStrong(&v7, 0);
    v16 = 0;
    v8 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);
  v3 = v16;

  return v3;
}

void sub_10014E340(void *a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v12[0] = [*(a1[4] + 56) mutableCopy];
  [v12[0] setObject:a1[6] forKeyedSubscript:a1[5]];
  v1 = [v12[0] copy];
  v2 = a1[4];
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
  _objc_release(v3);
  location = [*(a1[4] + 32) mutableCopy];
  v8 = +[NSDate date];
  v4 = a1[5];
  [location setObject:? forKeyedSubscript:?];
  _objc_release(v8);
  v5 = [location copy];
  v6 = a1[4];
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;
  _objc_release(v7);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000CFB9C(v13, *(a1[4] + 32), 1752392040, a1[5]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "URL bag cache updated %@ for key: %{mask.hash}@", v13, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v12, 0);
}

uint64_t sub_10014E8CC(uint64_t result, int a2)
{
  *result = 1;
  *(result + 1) = 1;
  *(result + 2) = 1;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

uint64_t sub_10014E904(id *a1, uint64_t a2, id obj)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v8[1] = a1;
  v8[0] = _objc_retain(&off_100339190);
  if (location)
  {
    v3 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(location)];
    v4 = v8[0];
    v8[0] = v3;
    _objc_release(v4);
  }

  v7 = [NSString stringWithFormat:@"%s", v10];
  [a1[4] setObject:v8[0] forKeyedSubscript:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
  objc_storeStrong(&location, 0);
  return 1;
}

void sub_10014EC10(id a1, BOOL a2, NSError *a3)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v10[1] = a1;
  if (v12)
  {
    oslog = _AKLogSystem();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v7;
      sub_10001CEEC(v6);
      _os_log_impl(&_mh_execute_header, v3, v4, "Successfully checked in with IDMS.", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v14, location);
      _os_log_error_impl(&_mh_execute_header, v10[0], v9, "Failed to check in with IDMS! Error: %@", v14, 0xCu);
    }

    objc_storeStrong(v10, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_10014F980(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23[1] = a1;
  if (location[0])
  {
    v23[0] = _AKLogSiwa();
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v26, location[0]);
      _os_log_error_impl(&_mh_execute_header, v23[0], v22, "Perform Authorization cannot proceed because of error: %@", v26, 0xCu);
    }

    objc_storeStrong(v23, 0);
    (*(*(a1 + 48) + 16))();
    v21 = 1;
  }

  else
  {
    v20 = _AKLogSiwa();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v25, *(a1 + 32));
      _os_log_impl(&_mh_execute_header, v20, v19, "Attempting to authorize request: %@", v25, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    v5 = 0;
    if ([*(a1 + 32) _isWebLogin])
    {
      v5 = [*(a1 + 32) _isFirstPartyLogin];
    }

    v18 = v5 & 1;
    if ([*(*(a1 + 40) + 48) authorizationClientProvidesUI] & 1) != 0 || (objc_msgSend(*(a1 + 32), "_isEligibleForUpgradeFromPassword") & 1) != 0 || (v18)
    {
      v2 = [*(a1 + 32) copy];
      v3 = *(a1 + 40);
      v4 = *(v3 + 88);
      *(v3 + 88) = v2;
      _objc_release(v4);
    }

    v17 = [[AKCATiburonRequestReporter alloc] initWithRequestContext:*(a1 + 32)];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10014FD74;
    v11 = &unk_100324A30;
    v12 = _objc_retain(v17);
    v13 = _objc_retain(*(a1 + 32));
    v15 = _objc_retain(*(a1 + 48));
    v14 = _objc_retain(*(a1 + 40));
    v16 = objc_retainBlock(&v7);
    [*(a1 + 40) _createAndPerformRequest:*(a1 + 32) completion:v16];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v17, 0);
    v21 = 0;
  }

  objc_storeStrong(location, 0);
}

void sub_10014FD74(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v53 = 0;
  objc_storeStrong(&v53, a3);
  v52[1] = a1;
  [*(a1 + 32) didCompleteWithAuthorization:location[0] error:v53];
  [*(a1 + 32) sendReport];
  if (location[0])
  {
    v13 = [location[0] authorizedRequest];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    _objc_release(v13);
    if (isKindOfClass)
    {
      v12 = [location[0] authorizedRequest];
      v11 = [v12 _sanitizedCopy];
      [location[0] setAuthorizedRequest:?];
      _objc_release(v11);
      _objc_release(v12);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (!v53)
    {
      v52[0] = _AKLogSiwa();
      v51 = 16;
      if (os_log_type_enabled(v52[0], OS_LOG_TYPE_ERROR))
      {
        log = v52[0];
        type = v51;
        sub_10001CEEC(v50);
        _os_log_error_impl(&_mh_execute_header, log, type, "Completion was called with nil authorization and no error thrown, setting Error Unknown", v50, 2u);
      }

      objc_storeStrong(v52, 0);
      v3 = [NSError ak_errorWithCode:-7001];
      v4 = v53;
      v53 = v3;
      _objc_release(v4);
    }

    v49 = _AKLogSiwa();
    v48 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v55, *(a1 + 40), v53);
      _os_log_error_impl(&_mh_execute_header, v49, v48, "Error performing auth request (%@): %@", v55, 0x16u);
    }

    objc_storeStrong(&v49, 0);
    if ([*(a1 + 40) _shouldSkipAuthorizationUI])
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v25 = [*(a1 + 48) client];
      v26 = [v25 bundleID];
      _objc_release(v26);
      _objc_release(v25);
      if (v26)
      {
        v23 = [v53 userInfo];
        v24 = [v23 mutableCopy];
        v45 = 0;
        if (v24)
        {
          v5 = _objc_retain(v24);
        }

        else
        {
          v46 = +[NSMutableDictionary dictionary];
          v45 = 1;
          v5 = _objc_retain(v46);
        }

        v47 = v5;
        if (v45)
        {
          _objc_release(v46);
        }

        _objc_release(v24);
        _objc_release(v23);
        v17 = v47;
        v19 = [*(a1 + 48) client];
        v18 = [v19 bundleID];
        [v17 setObject:? forKey:?];
        _objc_release(v18);
        _objc_release(v19);
        v22 = [v53 domain];
        v20 = [v53 code];
        v21 = [v47 copy];
        v6 = [NSError errorWithDomain:v22 code:v20 userInfo:?];
        v7 = v53;
        v53 = v6;
        _objc_release(v7);
        _objc_release(v21);
        _objc_release(v22);
        objc_storeStrong(&v47, 0);
      }

      v16 = +[AKAlertHandler sharedInstance];
      v15 = v53;
      v37 = _NSConcreteStackBlock;
      v38 = -1073741824;
      v39 = 0;
      v40 = sub_1001504DC;
      v41 = &unk_100321E60;
      v44 = _objc_retain(*(a1 + 56));
      v42 = _objc_retain(location[0]);
      v43 = _objc_retain(v53);
      [(AKAlertHandler *)v16 showAlertForError:v15 withCompletion:&v37];
      _objc_release(v16);
      objc_storeStrong(&v43, 0);
      objc_storeStrong(&v42, 0);
      objc_storeStrong(&v44, 0);
    }
  }

  v10 = *(*(a1 + 48) + 24);
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 48) + 48);
  v31 = _NSConcreteStackBlock;
  v32 = -1073741824;
  v33 = 0;
  v34 = sub_100150554;
  v35 = &unk_100324A08;
  v36 = _objc_retain(*(a1 + 40));
  [v10 endSessionWithContext:v8 client:v9 completion:&v31];
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
}

void sub_1001504DC(void *a1, char a2, id obj)
{
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v3 = a1[4];
  v4 = a1[5];
  (*(a1[6] + 16))();
  objc_storeStrong(&location, 0);
}

void sub_100150554(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v5, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Authorization ended for requestContext: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

void sub_100150878(NSObject *a1, void *a2, id obj)
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _AKLogSiwa();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v6, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Authorization Credential state not found with error:%@", v6, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_100150F38(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21[1] = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 838860800;
  v18 = 48;
  v19 = sub_100003DFC;
  v20 = sub_100011410;
  v21[0] = [NSSet setWithArray:location[0]];
  if (v16[5])
  {
    v5 = +[AKURLBag sharedBag];
    v4 = AKURLBagKeyForgotPasswordWebURL;
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_1001512A0;
    v13 = &unk_100324AA8;
    v14[1] = &v15;
    v14[0] = _objc_retain(a1[4]);
    [v5 urlForKey:v4 fromCache:1 completion:&v9];
    _objc_release(v5);
    objc_storeStrong(v14, 0);
  }

  else
  {
    oslog = _AKLogNto();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v24, v22);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Daemon failed to return native takeover urls: %@", v24, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v3 = v16[5];
    (*(a1[4] + 2))();
  }

  _Block_object_dispose(&v15, 8);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

void sub_1001512A0(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  if (location[0])
  {
    v9 = *(*(a1[5] + 8) + 40);
    v10 = [location[0] absoluteString];
    v3 = [v9 setByAddingObject:?];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
    _objc_release(v5);
    _objc_release(v10);
    v16[0] = _AKLogNto();
    v15 = 2;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_DEBUG))
    {
      log = v16[0];
      type = v15;
      sub_10001CEEC(v14);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Daemon is returning native takeover urls", v14, 2u);
    }

    objc_storeStrong(v16, 0);
  }

  else
  {
    v13 = _AKLogNto();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v19, v17);
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Daemon failed to return native take over urls for iForgot: %@", v19, 0xCu);
    }

    objc_storeStrong(&v13, 0);
  }

  v6 = *(*(a1[5] + 8) + 40);
  (*(a1[4] + 16))();
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void sub_100151B04(void *a1, char a2, id obj)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if (v12)
  {
    oslog = _AKLogSiwa();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v7;
      sub_10001CEEC(v6);
      _os_log_impl(&_mh_execute_header, v3, v4, "Revoke upgrade completed successfully.", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v10[0] = _AKLogSiwa();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v14, location);
      _os_log_error_impl(&_mh_execute_header, v10[0], v9, "Failed to revoke upgrade with error: %@", v14, 0xCu);
    }

    objc_storeStrong(v10, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
}

void sub_100151CB8(uint64_t a1, char a2, id obj)
{
  v10 = a1;
  v9 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v7[1] = a1;
  if (v9)
  {
    v7[0] = objc_alloc_init(AKApplicationAuthorizationController);
    v4 = v7[0];
    v5 = [*(a1 + 32) bundleID];
    v3 = *(a1 + 40);
    [v4 removeAuthorizationForApplicationWithClientID:? completion:?];
    _objc_release(v5);
    objc_storeStrong(v7, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100152134(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14[1] = a1;
  v14[0] = 0;
  if (v15)
  {
    v13 = _AKLogSiwa();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v19, v15);
      _os_log_error_impl(&_mh_execute_header, v13, v12, "Request for appleIDAuthorizeHTMLResponseURL failed. Error: %@", v19, 0xCu);
    }

    objc_storeStrong(&v13, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [location[0] statusCode]);
      sub_1000194D4(v18, v7);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "appleIDAuthorizeHTMLResponseURL response code: %@", v18, 0xCu);
      _objc_release(v7);
    }

    objc_storeStrong(&oslog, 0);
    v4 = [NSString alloc];
    v5 = [v4 initWithData:v16 encoding:4];
    v6 = v14[0];
    v14[0] = v5;
    _objc_release(v6);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_100154944(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v5 = a1[4];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100154B70;
  v10 = &unk_100324AD0;
  v12[1] = &v13;
  v12[2] = a1[6];
  v11 = _objc_retain(a1[4]);
  v12[0] = _objc_retain(location[0]);
  sub_100154B0C(v5 + 2, &v6);
  [a1[5] didCompleteWithSuccess:v19 == 0 authorizationAlreadyComplete:v14[3] & 1];
  [a1[5] sendReport];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void sub_100154B0C(os_unfair_lock_s *a1, void *a2)
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  os_unfair_lock_lock(v3);
  (*(location + 2))();
  os_unfair_lock_unlock(v3);
  objc_storeStrong(&location, 0);
}

void sub_100154BC8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[2] = a1;
  v5 = *(a1 + 32);
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100154D3C;
  v10 = &unk_100324B20;
  v11 = _objc_retain(location[0]);
  v13[1] = *(a1 + 48);
  v13[0] = _objc_retain(*(a1 + 40));
  v12 = _objc_retain(v14);
  sub_100154B0C(v5 + 2, &v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_100154D3C(uint64_t a1)
{
  v5 = [*(a1 + 32) credential];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _objc_release(v5);
  if (isKindOfClass)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  return (*(*(a1 + 48) + 16))();
}

void sub_10015645C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (location[0])
  {
    [*(a1 + 32) _requestUserAuthorizationForContext:location[0] completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_100157CB0(id a1, AKAppleIDUserInformationResponse *a2, NSError *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  v9[0] = _AKLogSiwa();
  v8 = 2;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEBUG))
  {
    log = v9[0];
    type = v8;
    sub_10001CEEC(v7);
    _os_log_debug_impl(&_mh_execute_header, log, type, "User information updated", v7, 2u);
  }

  objc_storeStrong(v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_100157D94(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (v6)
  {
    oslog[0] = _AKLogSiwa();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v8, v6);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Error fetching shared accounts - %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else if (location[0])
  {
    objc_storeStrong((*(a1 + 32) + 112), location[0]);
  }

  dispatch_group_leave(*(a1 + 40));
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_100157EF0(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1 + 32) + 80), location[0]);
  dispatch_group_leave(*(a1 + 40));
  objc_storeStrong(location, 0);
}

void sub_100159600(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_100036FE8(v5, [location[0] count]);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "getCredentials returned with %lu credentials", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_10015991C(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_100159CB8(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  v11[0] = _AKLogSiwa();
  if (os_log_type_enabled(v11[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v14, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v11[0], OS_LOG_TYPE_DEBUG, "Authorization UI returned with userResponse - %@", v14, 0xCu);
  }

  objc_storeStrong(v11, 0);
  v7 = [a1[4] credentialRequestContext];
  v8 = [v7 _clientShouldAuthenticateExternally];
  _objc_release(v7);
  if (v8 == 1)
  {
    v5 = *(a1[5] + 3);
    v4 = location[0];
    v6 = [a1[4] credentialRequestContext];
    v3 = *(a1[5] + 6);
    [v5 updateUserResponse:v4 withContext:? forClient:?];
    _objc_release(v6);
    (*(v12 + 2))(v12, 0);
  }

  else
  {
    [a1[5] _validateAndProcessUserResponse:location[0] client:*(a1[5] + 6) completion:v12];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_100159EBC(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[5] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_10015A434(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21[1] = a1;
  v21[0] = [*(a1 + 32) authorizationContextHelperWithContext:location[0] client:*(a1 + 40)];
  v8 = [*(a1 + 48) rawAccountPassword];
  _objc_release(v8);
  if (v8)
  {
    v20 = _AKLogSiwa();
    v19 = 2;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      log = v20;
      type = v19;
      sub_10001CEEC(v18);
      _os_log_debug_impl(&_mh_execute_header, log, type, "User response contains password, so add them to srp context", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
    v4 = [*(a1 + 48) rawAccountPassword];
    [v21[0] setPassword:?];
    _objc_release(v4);
  }

  v3 = *(a1 + 56);
  v2 = v21[0];
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_10015A6E8;
  v13 = &unk_100321CF8;
  v14 = _objc_retain(*(a1 + 32));
  v15 = _objc_retain(*(a1 + 48));
  v16 = _objc_retain(*(a1 + 40));
  v17 = _objc_retain(*(a1 + 64));
  [v3 performSRPContractWithContext:v2 completion:&v9];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(location, 0);
}

void sub_10015A6E8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (location[0])
  {
    [*(a1 + 32) _completeAuthorizationWithServerResponse:location[0] userResponse:*(a1 + 40) client:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_10015B790(void *a1, char a2, id obj)
{
  v15 = a1;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v12[1] = a1;
  if (v14)
  {
    v12[0] = _AKLogSiwa();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v12[0];
      type = v11;
      sub_10001CEEC(v10);
      _os_log_impl(&_mh_execute_header, log, type, "User has access to the shared group", v10, 2u);
    }

    objc_storeStrong(v12, 0);
    v3 = a1[4];
    (*(a1[6] + 16))();
  }

  else
  {
    v9 = _AKLogSiwa();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v16, a1[5]);
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "User does not have access to the shared group - %@", v16, 0xCu);
    }

    objc_storeStrong(&v9, 0);
    v4 = a1[6];
    v5 = [NSError ak_errorWithCode:-7026];
    (*(v4 + 16))(v4, 0);
    _objc_release(v5);
  }

  objc_storeStrong(&location, 0);
}

void sub_10015C84C(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Saved web session details. Error - %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

void sub_10015CC24(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5[1] = a1;
  v5[0] = _AKLogSiwa();
  if (os_log_type_enabled(v5[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v7, location[0]);
    _os_log_error_impl(&_mh_execute_header, v5[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v7, 0xCu);
  }

  objc_storeStrong(v5, 0);
  v2 = a1[4];
  v3 = [NSError ak_errorWithCode:-7061];
  (*(v2 + 16))(v2, 0);
  _objc_release(v3);
  objc_storeStrong(location, 0);
}

void sub_10015D498(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [*(a1 + 32) didCompleteWithAuthorization:location[0] error:v5];
  [*(a1 + 32) sendReport];
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_10015E3EC(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20[1] = a1;
  if (location[0])
  {
    v20[0] = _AKLogSiwa();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20[0], OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v23, *(a1 + 32), location[0]);
      _os_log_error_impl(&_mh_execute_header, v20[0], v19, "beginAuthorization - Error beginning session for context : %@\n Error - %@", v23, 0x16u);
    }

    objc_storeStrong(v20, 0);
    (*(*(a1 + 48) + 16))();
    v18 = 1;
  }

  else
  {
    v17 = _AKLogSiwa();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v22, *(a1 + 32));
      _os_log_impl(&_mh_execute_header, v17, v16, "beginAuthorization - Attempting to authorize request: %@", v22, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    if ([*(*(a1 + 40) + 48) authorizationClientProvidesUI])
    {
      v2 = [*(a1 + 32) copy];
      v3 = *(a1 + 40);
      v4 = *(v3 + 88);
      *(v3 + 88) = v2;
      _objc_release(v4);
    }

    v6 = *(a1 + 40);
    v5 = *(a1 + 32);
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_10015E70C;
    v12 = &unk_1003238C0;
    v13 = _objc_retain(*(a1 + 32));
    v14 = _objc_retain(*(a1 + 40));
    v15 = _objc_retain(*(a1 + 48));
    [v6 _createAndPerformRequest:v5 completion:&v8];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v18 = 0;
  }

  objc_storeStrong(location, 0);
}

void sub_10015E70C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v35 = 0;
  objc_storeStrong(&v35, a3);
  v34[1] = a1;
  if (v35)
  {
    v34[0] = _AKLogSiwa();
    v33 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v34[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v38, *(a1 + 32));
      _os_log_error_impl(&_mh_execute_header, v34[0], v33, "beginAuthorization - Error beginning session for context : %@", v38, 0xCu);
    }

    objc_storeStrong(v34, 0);
    v10 = *(*(a1 + 40) + 24);
    v8 = *(a1 + 32);
    v9 = *(*(a1 + 40) + 48);
    v26 = _NSConcreteStackBlock;
    v27 = -1073741824;
    v28 = 0;
    v29 = sub_10015EB78;
    v30 = &unk_100320B40;
    v32 = _objc_retain(*(a1 + 48));
    v31 = _objc_retain(v35);
    [v10 endSessionWithContext:v8 client:v9 completion:&v26];
    v25 = 1;
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  else
  {
    v24 = _AKLogSiwa();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v24;
      v7 = v23;
      sub_10001CEEC(v22);
      _os_log_impl(&_mh_execute_header, v6, v7, "beginAuthorization completed", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v21 = [*(*(a1 + 40) + 24) userResponseWithContext:*(a1 + 32) forClient:*(*(a1 + 40) + 48)];
    if (v21)
    {
      (*(*(a1 + 48) + 16))();
      v25 = 0;
    }

    else
    {
      v20 = _AKLogSiwa();
      v19 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v37, *(a1 + 32));
        _os_log_error_impl(&_mh_execute_header, v20, v19, "beginAuthorization - User Response is nil for context : %@", v37, 0xCu);
      }

      objc_storeStrong(&v20, 0);
      v5 = *(*(a1 + 40) + 24);
      v3 = *(a1 + 32);
      v4 = *(*(a1 + 40) + 48);
      v13 = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_10015EBE4;
      v17 = &unk_100321FF0;
      v18 = _objc_retain(*(a1 + 48));
      [v5 endSessionWithContext:v3 client:v4 completion:&v13];
      v25 = 1;
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v21, 0);
    if (!v25)
    {
      v25 = 0;
    }
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

void sub_10015EB78(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = a1[4];
  (*(a1[5] + 16))();
  objc_storeStrong(location, 0);
}

void sub_10015EBE4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = a1[4];
  v4 = [NSError ak_errorWithCode:-7089];
  (*(v3 + 16))(v3, 0);
  _objc_release(v4);
  objc_storeStrong(location, 0);
}

void sub_10015F42C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v54 = 0;
  objc_storeStrong(&v54, a3);
  v53[1] = a1;
  if (v54)
  {
    v53[0] = _AKLogSiwa();
    v52 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v53[0], OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v57, *(a1 + 32), v54);
      _os_log_error_impl(&_mh_execute_header, v53[0], v52, "continueAuthorization - Error continuing session for context : %@\n Error - %@", v57, 0x16u);
    }

    objc_storeStrong(v53, 0);
    (*(*(a1 + 48) + 16))();
    v51 = 1;
    goto LABEL_28;
  }

  v21 = [*(a1 + 32) _externalLocalAuthData];
  _objc_release(v21);
  if (v21)
  {
    v50 = _AKLogSiwa();
    v49 = 2;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v19 = v50;
      v20 = v49;
      sub_10001CEEC(v48);
      _os_log_debug_impl(&_mh_execute_header, v19, v20, "continueAuthorization - externalLocalAuthData was provided. Verifying...", v48, 2u);
    }

    objc_storeStrong(&v50, 0);
    v17 = [*(a1 + 32) _externalLocalAuthData];
    v18 = [AKLAContextValidator validateExternalizedContext:"validateExternalizedContext:error:" error:?];
    _objc_release(v17);
    if (!v18)
    {
      v47 = _AKLogSiwa();
      v46 = 16;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v15 = v47;
        v16 = v46;
        sub_10001CEEC(v45);
        _os_log_error_impl(&_mh_execute_header, v15, v16, "continueAuthorization - Invalid Externalized LAContext", v45, 2u);
      }

      objc_storeStrong(&v47, 0);
      v13 = *(a1 + 48);
      v14 = [NSError ak_errorWithCode:-7068];
      (*(v13 + 16))(v13, 0);
      _objc_release(v14);
      v51 = 1;
      goto LABEL_28;
    }

    v44 = _AKLogSiwa();
    v43 = 2;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v11 = v44;
      v12 = v43;
      sub_10001CEEC(v42);
      _os_log_debug_impl(&_mh_execute_header, v11, v12, "continueAuthorization - externalLocalAuthData was verified successfully", v42, 2u);
    }

    objc_storeStrong(&v44, 0);
    goto LABEL_22;
  }

  v10 = [*(a1 + 32) _externalAuthToken];
  _objc_release(v10);
  if (v10)
  {
    v41 = _AKLogSiwa();
    v40 = 2;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v8 = v41;
      v9 = v40;
      sub_10001CEEC(v39);
      _os_log_debug_impl(&_mh_execute_header, v8, v9, "continueAuthorization - externalAuthToken was provided. Attaching to authorizationRequest.", v39, 2u);
    }

    objc_storeStrong(&v41, 0);
    v38 = [location[0] selectedRequest];
    [v38 set_clientAuthenticatedExternallyWithPassword:1];
    v7 = [*(a1 + 32) _externalAuthToken];
    [v38 set_externalAuthToken:?];
    _objc_release(v7);
    objc_storeStrong(&v38, 0);
LABEL_22:
    v34 = _AKLogSiwa();
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v56, *(a1 + 32));
      _os_log_impl(&_mh_execute_header, v34, v33, "continueAuthorization - Attempting to resume authorization for request: %@", v56, 0xCu);
    }

    objc_storeStrong(&v34, 0);
    v24 = _NSConcreteStackBlock;
    v25 = -1073741824;
    v26 = 0;
    v27 = sub_10015FC0C;
    v28 = &unk_1003238C0;
    v29 = _objc_retain(*(a1 + 40));
    v30 = _objc_retain(*(a1 + 32));
    v31 = _objc_retain(*(a1 + 48));
    v32 = objc_retainBlock(&v24);
    if ([*(a1 + 32) _shouldSkipAuthorizationUI] == 1)
    {
      [*(a1 + 40) _performSilentRequest:*(a1 + 32) withCompletion:v32];
    }

    else
    {
      [*(a1 + 40) _validateAndProcessUserResponse:location[0] client:*(*(a1 + 40) + 48) completion:v32];
    }

    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
    v51 = 0;
    goto LABEL_28;
  }

  v37 = _AKLogSiwa();
  v36 = 16;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v5 = v37;
    v6 = v36;
    sub_10001CEEC(v35);
    _os_log_error_impl(&_mh_execute_header, v5, v6, "Invalid context. Need to set either _externalLocalAuthData or _externalAuthToken", v35, 2u);
  }

  objc_storeStrong(&v37, 0);
  v3 = *(a1 + 48);
  v4 = [NSError ak_errorWithCode:-7044];
  (*(v3 + 16))(v3, 0);
  _objc_release(v4);
  v51 = 1;
LABEL_28:
  objc_storeStrong(&v54, 0);
  objc_storeStrong(location, 0);
}

void sub_10015FC0C(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20[1] = a1;
  v11 = *(a1[4] + 24);
  v9 = a1[5];
  v10 = *(a1[4] + 48);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10015FFD0;
  v19[3] = &unk_100324A08;
  v20[0] = _objc_retain(a1[5]);
  [v11 endSessionWithContext:v9 client:v10 completion:v19];
  if (v21)
  {
    v18 = _AKLogSiwa();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v24, a1[5], v21);
      _os_log_error_impl(&_mh_execute_header, v18, v17, "continueAuthorization - Error continuing session for context : %@ \n: error: %@", v24, 0x16u);
    }

    objc_storeStrong(&v18, 0);
    (*(a1[6] + 16))();
    v16 = 1;
  }

  else
  {
    v15 = _AKLogSiwa();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v15;
      v6 = v14;
      sub_10001CEEC(v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "continueAuthorization completed", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
    if (location[0])
    {
      (*(a1[6] + 16))();
      v16 = 0;
    }

    else
    {
      oslog = _AKLogSiwa();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v23, a1[5]);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "continueAuthorization - authorization is nil for context : %@", v23, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v3 = a1[6];
      v4 = [NSError ak_errorWithCode:-7001];
      (*(v3 + 16))(v3, 0);
      _objc_release(v4);
      v16 = 1;
    }
  }

  objc_storeStrong(v20, 0);
  if (!v16)
  {
    v16 = 0;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void sub_10015FFD0(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v5, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "continueAuthorization - Authorization ended for requestContext: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

void sub_10016073C(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  if (location[0])
  {
    v9[0] = _AKLogSiwa();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v11, location[0]);
      _os_log_error_impl(&_mh_execute_header, v9[0], v8, "cancelAuthorization - Error canceling the session: %@", v11, 0xCu);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKLogSiwa();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v6;
      sub_10001CEEC(v5);
      _os_log_impl(&_mh_execute_header, v2, v3, "cancelAuthorization - Successfully canceled session", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void sub_10016113C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v124 = 0;
  objc_storeStrong(&v124, a3);
  v123[1] = a1;
  v123[0] = [location[0] mutableCopy];
  v92 = [v123[0] objectForKeyedSubscript:kAppleIDAuthSupportClientProvidedData];
  v122 = [v92 mutableCopy];
  _objc_release(v92);
  v93 = [NSNumber numberWithDouble:AKTiburonTimeoutIntervalForRequest];
  [v123[0] setObject:? forKeyedSubscript:?];
  _objc_release(v93);
  v94 = [NSNumber numberWithDouble:AKTiburonTimeoutIntervalForResource];
  [v123[0] setObject:? forKeyedSubscript:?];
  _objc_release(v94);
  v96 = [*(*(a1 + 32) + 144) request];
  v97 = [v96 userIdentifier];
  _objc_release(v97);
  _objc_release(v96);
  if (v97)
  {
    v90 = [*(*(a1 + 32) + 144) request];
    v89 = [v90 userIdentifier];
    [v122 setObject:? forKeyedSubscript:?];
    _objc_release(v89);
    _objc_release(v90);
  }

  v88 = [*(*(a1 + 32) + 144) request];
  v121 = [v88 requestedScopes];
  _objc_release(v88);
  v120 = objc_opt_new();
  if ([v121 count])
  {
    [v122 setObject:v121 forKeyedSubscript:@"scopes"];
    v119 = [*(*(a1 + 32) + 144) userSelection];
    if (v119 && ([v121 containsObject:AKAuthorizationScopeEmail] & 1) != 0)
    {
      v86 = [v119 userInformation];
      v87 = [v86 selectedEmail];
      _objc_release(v87);
      _objc_release(v86);
      if (v87)
      {
        v85 = [v119 userInformation];
        v84 = [v85 selectedEmail];
        [v120 setObject:? forKeyedSubscript:?];
        _objc_release(v84);
        _objc_release(v85);
      }

      v83 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v119 makePrivateEmail]);
      [v120 setObject:? forKeyedSubscript:?];
      _objc_release(v83);
    }

    objc_storeStrong(&v119, 0);
  }

  v81 = [*(*(a1 + 32) + 144) request];
  v82 = [v81 isEligibleForUpgradeFromPassword];
  _objc_release(v81);
  if (v82)
  {
    [v120 setObject:AKAuthorizationCredentialOriginPassword forKeyedSubscript:@"origin"];
  }

  if ([*(*(a1 + 32) + 144) _isAuthorizingForSharedSIWAAccount])
  {
    v79 = [*(*(a1 + 32) + 144) _sharedSIWAAccountShareToken];
    v117 = 0;
    v80 = 0;
    if (v79)
    {
      v118 = [*(*(a1 + 32) + 144) _sharedSIWAAccountGroupID];
      v117 = 1;
      v80 = v118 != 0;
    }

    if (v117)
    {
      _objc_release(v118);
    }

    _objc_release(v79);
    if (v80)
    {
      v116 = _AKLogSiwa();
      v115 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        log = v116;
        type = v115;
        sub_10001CEEC(v114);
        _os_log_impl(&_mh_execute_header, log, type, "Authorizing for shared SIWA account. Adding additional share info in SRP request", v114, 2u);
      }

      objc_storeStrong(&v116, 0);
      v75 = [*(*(a1 + 32) + 144) _sharedSIWAAccountShareToken];
      [v120 setObject:? forKeyedSubscript:?];
      _objc_release(v75);
      v76 = [*(*(a1 + 32) + 144) _sharedSIWAAccountGroupID];
      [v120 setObject:? forKeyedSubscript:?];
      _objc_release(v76);
    }

    else
    {
      v113 = _AKLogSiwa();
      v112 = 16;
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        v73 = v113;
        v74 = v112;
        sub_10001CEEC(v111);
        _os_log_error_impl(&_mh_execute_header, v73, v74, "Auth context is authorizing for a shared SIWA account but we don't the required share info to include in the SRP", v111, 2u);
      }

      objc_storeStrong(&v113, 0);
    }
  }

  v71 = [v120 allKeys];
  v72 = [v71 count];
  _objc_release(v71);
  if (v72)
  {
    [v122 setObject:v120 forKeyedSubscript:@"upd"];
  }

  v70 = [*(*(a1 + 32) + 144) request];
  v69 = [v70 transactionID];
  v110 = [v69 UUIDString];
  _objc_release(v69);
  _objc_release(v70);
  if (v110)
  {
    [v122 setObject:v110 forKeyedSubscript:AKTransactionId];
  }

  v68 = [*(*(a1 + 32) + 144) clientID];
  _objc_release(v68);
  if (v68)
  {
    v109 = objc_alloc_init(NSMutableDictionary);
    v65 = [*(*(a1 + 32) + 144) clientID];
    [v109 setObject:? forKeyedSubscript:?];
    _objc_release(v65);
    v66 = [*(*(a1 + 32) + 144) clientID];
    [v123[0] setObject:? forKeyedSubscript:?];
    _objc_release(v66);
    v67 = [*(*(a1 + 32) + 144) teamID];
    _objc_release(v67);
    if (v67)
    {
      v63 = [*(*(a1 + 32) + 144) teamID];
      [v109 setObject:? forKeyedSubscript:?];
      _objc_release(v63);
      v64 = [*(*(a1 + 32) + 144) teamID];
      [v123[0] setObject:? forKeyedSubscript:?];
      _objc_release(v64);
    }

    v61 = [*(*(a1 + 32) + 144) request];
    v62 = [v61 userIdentifier];
    _objc_release(v62);
    _objc_release(v61);
    if (v62)
    {
      v60 = [*(*(a1 + 32) + 144) request];
      v59 = [v60 userIdentifier];
      [v109 setObject:? forKeyedSubscript:?];
      _objc_release(v59);
      _objc_release(v60);
    }

    v58 = [v109 copy];
    [v122 setObject:? forKeyedSubscript:?];
    _objc_release(v58);
    objc_storeStrong(&v109, 0);
  }

  v56 = [*(*(a1 + 32) + 144) request];
  v57 = [v56 state];
  _objc_release(v57);
  _objc_release(v56);
  if (v57)
  {
    v55 = [*(*(a1 + 32) + 144) request];
    v54 = [v55 state];
    [v122 setObject:? forKeyedSubscript:?];
    _objc_release(v54);
    _objc_release(v55);
  }

  v53 = [*(*(a1 + 32) + 144) realUserVerificationData];
  _objc_release(v53);
  if (v53)
  {
    v52 = [*(*(a1 + 32) + 144) realUserVerificationData];
    [v122 setObject:? forKeyedSubscript:?];
    _objc_release(v52);
  }

  v50 = [*(*(a1 + 32) + 144) request];
  v51 = [v50 state];
  _objc_release(v51);
  _objc_release(v50);
  if (v51)
  {
    v108 = 0;
    v49 = [*(*(a1 + 32) + 144) appProvidedData];
    _objc_release(v49);
    if (v49)
    {
      v48 = [*(*(a1 + 32) + 144) appProvidedData];
      v3 = [v48 mutableCopy];
      v4 = v108;
      v108 = v3;
      _objc_release(v4);
      _objc_release(v48);
    }

    else
    {
      v5 = objc_alloc_init(NSMutableDictionary);
      v6 = v108;
      v108 = v5;
      _objc_release(v6);
    }

    v46 = [*(*(a1 + 32) + 144) request];
    v45 = [v46 state];
    [v108 setObject:? forKeyedSubscript:?];
    _objc_release(v45);
    _objc_release(v46);
    v47 = [v108 copy];
    [*(*(a1 + 32) + 144) setAppProvidedData:?];
    _objc_release(v47);
    objc_storeStrong(&v108, 0);
  }

  v43 = [*(*(a1 + 32) + 144) request];
  v44 = [v43 nonce];
  _objc_release(v44);
  _objc_release(v43);
  if (v44)
  {
    v107 = 0;
    v42 = [*(*(a1 + 32) + 144) appProvidedData];
    _objc_release(v42);
    if (v42)
    {
      v41 = [*(*(a1 + 32) + 144) appProvidedData];
      v7 = [v41 mutableCopy];
      v8 = v107;
      v107 = v7;
      _objc_release(v8);
      _objc_release(v41);
    }

    else
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = v107;
      v107 = v9;
      _objc_release(v10);
    }

    v39 = [*(*(a1 + 32) + 144) request];
    v38 = [v39 nonce];
    [v107 setObject:? forKeyedSubscript:?];
    _objc_release(v38);
    _objc_release(v39);
    v40 = [v107 copy];
    [*(*(a1 + 32) + 144) setAppProvidedData:?];
    _objc_release(v40);
    objc_storeStrong(&v107, 0);
  }

  v36 = [*(*(a1 + 32) + 144) request];
  v105 = 0;
  v103 = 0;
  v37 = 0;
  if ([v36 _isSilentAppTransfer])
  {
    v106 = [*(*(a1 + 32) + 144) request];
    v105 = 1;
    v104 = [v106 userIdentifier];
    v103 = 1;
    v37 = v104 != 0;
  }

  if (v103)
  {
    _objc_release(v104);
  }

  if (v105)
  {
    _objc_release(v106);
  }

  _objc_release(v36);
  if (v37)
  {
    v102 = 0;
    v35 = [*(*(a1 + 32) + 144) appProvidedData];
    _objc_release(v35);
    if (v35)
    {
      v34 = [*(*(a1 + 32) + 144) appProvidedData];
      v11 = [v34 mutableCopy];
      v12 = v102;
      v102 = v11;
      _objc_release(v12);
      _objc_release(v34);
    }

    else
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = v102;
      v102 = v13;
      _objc_release(v14);
    }

    v32 = [*(*(a1 + 32) + 144) request];
    v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v32 _isSilentAppTransfer]);
    [v102 setObject:? forKeyedSubscript:?];
    _objc_release(v31);
    _objc_release(v32);
    v33 = [v102 copy];
    [*(*(a1 + 32) + 144) setAppProvidedData:?];
    _objc_release(v33);
    objc_storeStrong(&v102, 0);
  }

  v29 = [*(a1 + 32) authContext];
  v30 = [v29 appProvidedData];
  _objc_release(v30);
  _objc_release(v29);
  if (v30)
  {
    v28 = [*(a1 + 32) authContext];
    v27 = [v28 appProvidedData];
    [v122 setObject:? forKeyedSubscript:?];
    _objc_release(v27);
    _objc_release(v28);
  }

  v25 = [*(a1 + 32) authContext];
  v26 = [v25 _clientAuthenticatedExternallyWithPassword];
  _objc_release(v25);
  if (v26 == 1)
  {
    v101 = _AKLogSiwa();
    v100 = 2;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
    {
      v23 = v101;
      v24 = v100;
      sub_10001CEEC(v99);
      _os_log_debug_impl(&_mh_execute_header, v23, v24, "Client authenticated externally. Sending auth token in SRP.", v99, 2u);
    }

    objc_storeStrong(&v101, 0);
    v22 = [*(a1 + 32) authContext];
    v21 = [v22 _externalAuthToken];
    [v122 setObject:? forKeyedSubscript:?];
    _objc_release(v21);
    _objc_release(v22);
  }

  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v20 = [*(a1 + 32) authContext];
    sub_10006A654(v126, [v20 _shouldRequestToArmDeviceToAllowPCSKeyUpload]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "_shouldRequestToArmDeviceToAllowPCSKeyUpload %d", v126, 8u);
    _objc_release(v20);
  }

  objc_storeStrong(&oslog, 0);
  v18 = [*(a1 + 32) authContext];
  v19 = [v18 _shouldRequestToArmDeviceToAllowPCSKeyUpload];
  _objc_release(v18);
  if (v19)
  {
    [v122 setObject:&__kCFBooleanTrue forKeyedSubscript:@"PCSKeysArmedEligible"];
  }

  v15 = [v122 copy];
  [v123[0] setObject:? forKeyedSubscript:?];
  _objc_release(v15);
  v16 = (*(a1 + 40) + 16);
  v17 = [v123[0] copy];
  (*v16)();
  _objc_release(v17);
  objc_storeStrong(&v110, 0);
  objc_storeStrong(&v120, 0);
  objc_storeStrong(&v121, 0);
  objc_storeStrong(&v122, 0);
  objc_storeStrong(v123, 0);
  objc_storeStrong(&v124, 0);
  objc_storeStrong(location, 0);
}

void sub_1001632C8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.authkit.IDSFetchQueue", v3);
  v2 = qword_100374888;
  qword_100374888 = v1;
  _objc_release(v2);
  _objc_release(v3);
}

void sub_1001635FC(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if (location[0])
  {
    v3 = location[0];
    v4 = [*(a1 + 32) requestConfiguration];
    [v4 setResourceLoadDelegate:v3];
    _objc_release(v4);
    [*(a1 + 40) _showServerUIWithContext:*(a1 + 32) completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_100163B5C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id *location)
{
  *(v16 - 120) = a1;
  *(v16 - 124) = a2;
  objc_destroyWeak((v16 - 112));
  _Unwind_Resume(*(v16 - 120));
}

void sub_100163BB8(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v63 = 0;
  objc_storeStrong(&v63, a3);
  v62 = 0;
  objc_storeStrong(&v62, a4);
  v61[1] = a1;
  v61[0] = objc_loadWeakRetained(a1 + 8);
  if (!v61[0])
  {
LABEL_38:
    v54 = 0;
    goto LABEL_39;
  }

  if (v62)
  {
    v26 = [v62 domain];
    v27 = 0;
    if ([v26 isEqual:AKAppleIDAuthenticationErrorDomain])
    {
      v27 = [v62 code] == -7038;
    }

    _objc_release(v26);
    if (v27)
    {
      v60 = _AKLogSystem();
      v59 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        log = v60;
        type = v59;
        sub_10001CEEC(v58);
        _os_log_impl(&_mh_execute_header, log, type, "Server UI has been skipped.", v58, 2u);
      }

      objc_storeStrong(&v60, 0);
    }

    else
    {
      v57 = _AKLogSystem();
      v56 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v65, v62);
        _os_log_error_impl(&_mh_execute_header, v57, v56, "Server UI did not complete auth successfully! Error: %@", v65, 0xCu);
      }

      objc_storeStrong(&v57, 0);
    }

LABEL_18:
    v53 = 0;
    if (!v62)
    {
      v52 = _AKLogSystem();
      v51 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v52;
        v21 = v51;
        sub_10001CEEC(v50);
        _os_log_impl(&_mh_execute_header, v20, v21, "Looks like we're done with server UI!", v50, 2u);
      }

      objc_storeStrong(&v52, 0);
      v18 = [a1[4] initiatingServerResponse];
      v19 = [v18 isUpdateable];
      _objc_release(v18);
      if (v19)
      {
        v16 = [a1[4] initiatingServerResponse];
        v17 = [v16 updateWithSecondaryAuthenticationResponse:location[0]];
        _objc_release(v16);
        v49 = v17;
        if ((v17 & 1) == 0)
        {
          v6 = [NSError ak_errorWithCode:-7021];
          v7 = v53;
          v53 = v6;
          _objc_release(v7);
        }
      }

      else
      {
        v14 = [a1[4] requestConfiguration];
        v15 = [v14 requestType];
        _objc_release(v14);
        if (!v15)
        {
          v48 = _AKLogSystem();
          v47 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v48;
            v13 = v47;
            sub_10001CEEC(v46);
            _os_log_impl(&_mh_execute_header, v12, v13, "We do not have an initial auth response to update. Creating one now!", v46, 2u);
          }

          objc_storeStrong(&v48, 0);
          v45 = [v63 objectForKeyedSubscript:AKAuthenticationUsernameKey];
          if (!v45)
          {
            v45 = [a1[6] username];
            _objc_release(0);
          }

          v8 = [AKAuthenticationServerResponse alloc];
          v11 = [(AKAuthenticationServerResponse *)v8 initWithServerResponse:location[0] forAppleID:v45];
          [a1[4] setInitiatingServerResponse:?];
          _objc_release(v11);
          objc_storeStrong(&v45, 0);
        }
      }
    }

    v34 = _NSConcreteStackBlock;
    v35 = -1073741824;
    v36 = 0;
    v37 = sub_100164484;
    v38 = &unk_100324E20;
    v39 = _objc_retain(v62);
    v43 = _objc_retain(a1[7]);
    v40 = _objc_retain(a1[4]);
    v41 = _objc_retain(v63);
    v42 = _objc_retain(v53);
    v44 = objc_retainBlock(&v34);
    if (([a1[4] shouldPreventDismissAfterUserSkip] & 1) != 0 && objc_msgSend(v62, "code") == -7038)
    {
      (*(v44 + 2))(v44, 1, 0);
    }

    else
    {
      oslog = _AKLogSystem();
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v9 = oslog;
        v10 = v32;
        sub_10001CEEC(v31);
        _os_log_impl(&_mh_execute_header, v9, v10, "Asking client to dismiss any presented server UI...", v31, 2u);
      }

      objc_storeStrong(&oslog, 0);
      [*(v61[0] + 1) dismissServerProvidedUIForContext:a1[6] client:*(v61[0] + 3) completion:v44];
    }

    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v53, 0);
    goto LABEL_38;
  }

  WeakRetained = objc_loadWeakRetained(v61[0] + 2);
  if ([WeakRetained shouldProcessAdditionalServerUIData:v63])
  {
    [WeakRetained serverUIContext:a1[4] processAdditionalData:v63 completion:a1[7]];
    v54 = 1;
  }

  else
  {
    v22 = [a1[4] requestConfiguration];
    v23 = [v22 requestType];
    _objc_release(v22);
    if (!v23)
    {
      v4 = [a1[5] _errorFromServerResponse:location[0]];
      v5 = v62;
      v62 = v4;
      _objc_release(v5);
    }

    v54 = 0;
  }

  objc_storeStrong(&WeakRetained, 0);
  if (!v54)
  {
    goto LABEL_18;
  }

LABEL_39:
  objc_storeStrong(v61, 0);
  if (!v54)
  {
    v54 = 0;
  }

  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);
}

void sub_100164484(uint64_t a1, char a2, id obj)
{
  v24 = a1;
  v23 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v21[1] = a1;
  if (*(a1 + 32))
  {
    v16 = [*(a1 + 32) domain];
    v17 = 0;
    if ([v16 isEqual:AKAppleIDAuthenticationErrorDomain])
    {
      v17 = [*(a1 + 32) code] == -7038;
    }

    _objc_release(v16);
    if (v17)
    {
      v14 = (*(a1 + 64) + 16);
      v15 = [*(a1 + 40) initiatingServerResponse];
      v3 = *(a1 + 48);
      v4 = *(a1 + 32);
      (*v14)();
      _objc_release(v15);
    }

    else
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);
      (*(*(a1 + 64) + 16))();
    }
  }

  else if (*(a1 + 56))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v21[0] = _AKLogSystem();
    v20 = 2;
    if (os_log_type_enabled(v21[0], OS_LOG_TYPE_DEBUG))
    {
      log = v21[0];
      type = v20;
      sub_10001CEEC(v19);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Successfully handled server UI response!", v19, 2u);
    }

    objc_storeStrong(v21, 0);
    v10 = (*(a1 + 64) + 16);
    v11 = [*(a1 + 40) initiatingServerResponse];
    v9 = *(a1 + 48);
    (*v10)();
    _objc_release(v11);
  }

  objc_storeStrong(&location, 0);
}

void sub_100164DC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16[1] = a1;
  [*(a1 + 32) setPhoneNumberCertificate:location[0]];
  v16[0] = 0;
  v4 = *(a1 + 40);
  v15 = 0;
  v11 = [v4 _fetchPhoneInformationWithAdditionalInfo:v18 error:&v15];
  objc_storeStrong(v16, v15);
  [*(a1 + 32) setPhoneInformation:v11];
  _objc_release(v11);
  if (v16[0])
  {
    v14 = _AKLogSystem();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v21, v16[0]);
      _os_log_error_impl(&_mh_execute_header, v14, v13, "Failed fetching phone information for server UI delegate: %@", v21, 0xCu);
    }

    objc_storeStrong(&v14, 0);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) authContext];
  [v6 _reportPacTelemetryForEvent:@"com.apple.authkit.pac.subscriptionInfo" context:? error:?];
  _objc_release(v7);
  if (v17)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v20, v17);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Failed to fetch IDS cert info: %@", v20, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_1001652F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14[1] = a1;
  [*(a1 + 32) setPhoneNumberCertificate:location[0]];
  v14[0] = 0;
  v4 = *(a1 + 40);
  v13 = 0;
  v9 = [v4 _fetchPhoneInformationWithAdditionalInfo:v16 error:&v13];
  objc_storeStrong(v14, v13);
  [*(a1 + 32) setPhoneInformation:v9];
  _objc_release(v9);
  if (v14[0])
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v19, v14[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "Failed fetching phone information for server UI delegate: %@", v19, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  [*(a1 + 40) _reportPacTelemetryForEvent:@"com.apple.authkit.pac.subscriptionInfo" context:*(a1 + 48) error:v14[0]];
  if (v15)
  {
    v10 = _AKLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v18, v15);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to fetch IDS cert info: %@", v18, 0xCu);
    }

    objc_storeStrong(&v10, 0);
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_100166578(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v31 = 0;
  objc_storeStrong(&v31, a3);
  v30 = a1;
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v29 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v28 = _AKSignpostLogSystem();
  v27 = OS_SIGNPOST_INTERVAL_END;
  v26 = *(a1 + 64);
  if (v26 && v26 != -1 && os_signpost_enabled(v28))
  {
    sub_100034290(v39, [v31 code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, v27, v26, "FetchIDSPhoneCertificate", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v39, 8u);
  }

  objc_storeStrong(&v28, 0);
  v25 = _AKSignpostLogSystem();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v38, *(a1 + 64), *&v29, [v31 code]);
    _os_log_impl(&_mh_execute_header, v25, v24, "END [%lld] %fs:FetchIDSPhoneCertificate  Error=%{public,signpost.telemetry:number2,name=Error}d ", v38, 0x1Cu);
  }

  objc_storeStrong(&v25, 0);
  if (v31)
  {
    v23 = _AKLogSystem();
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v37, v31);
      _os_log_error_impl(&_mh_execute_header, v23, v22, "Failed to fetch IDS certificate with error: %@", v37, 0xCu);
    }

    objc_storeStrong(&v23, 0);
  }

  [*(a1 + 32) _reportPacTelemetryForEvent:@"com.apple.authkit.pac.signature" context:*(a1 + 40) error:v31];
  v21 = 0;
  v5 = *(a1 + 48);
  v19 = 0;
  v8 = [v5 currentPhoneUserSubscriptionSourceWithError:&v19];
  objc_storeStrong(&v21, v19);
  v20 = v8;
  v9 = [location[0] serverVerifiableEncoding];
  v18 = [v9 dataUsingEncoding:4];
  _objc_release(v9);
  v17 = [v18 base64EncodedStringWithOptions:0];
  v16 = 0;
  if (v21)
  {
    v12 = _AKLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v33, v21);
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to receive phone source info: %@", v33, 0xCu);
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100036FE8(v36, v20);
      _os_log_impl(&_mh_execute_header, oslog, v14, "Creating bundle certificate for source: %ld", v36, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v13 = objc_alloc_init(AKCarrierBundlePhoneCertificate);
    [(AKCarrierBundlePhoneCertificate *)v13 setPhoneCertificate:v17];
    [(AKCarrierBundlePhoneCertificate *)v13 setSlotID:v20];
    v34 = @"PhoneCertificate";
    v35 = v13;
    v6 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v7 = v16;
    v16 = v6;
    _objc_release(v7);
    objc_storeStrong(&v13, 0);
  }

  [*(a1 + 32) _reportPacTelemetryForEvent:@"com.apple.authkit.pac.subscriptionSource" context:*(a1 + 40) error:v21];
  (*(*(a1 + 56) + 16))();
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

void sub_100166FB8(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Error communicating with client anisette service: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

void sub_100168118(uint64_t a1, sqlite3_stmt *a2)
{
  v5 = sqlite3_column_text(a2, 0);
  if (v5)
  {
    v2 = *(*(*(a1 + 32) + 8) + 40);
    v3 = [NSString stringWithUTF8String:v5];
    [v2 addObject:?];
    _objc_release(v3);
  }
}

void sub_1001687E4(id a1)
{
  v1 = objc_alloc_init(AKDaemonConnectionManager);
  v2 = qword_100374898;
  qword_100374898 = v1;
  _objc_release(v2);
}

void sub_1001690B4(id a1)
{
  v1 = +[AKGlobalConfigService sharedInstance];
  [(AKGlobalConfigService *)v1 checkForLocaleChange];
  _objc_release(v1);
}

void sub_10016AB84(id a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v4 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v4;
    sub_10001CEEC(v3);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Liveness performed for DTO status change notification", v3, 2u);
  }

  objc_storeStrong(location, 0);
}

void sub_10016AC28(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = [NSString stringWithUTF8String:xpc_dictionary_get_string(location[0], _xpc_event_key_name)];
  if ([v7[0] isEqualToString:@"AppSignInEndorser"])
  {
    v6 = _AKLogSystem();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v10, location[0]);
      _os_log_impl(&_mh_execute_header, v6, v5, "Ignoring event that will be handled by companionauthd: %@", v10, 0xCu);
    }

    objc_storeStrong(&v6, 0);
    v4 = 1;
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v9, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "No special handling for Rapport matching event: %@", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v4 = 0;
  }

  objc_storeStrong(v7, 0);
  if (!v4)
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_10016B300(NSObject *a1, NSObject *a2, NSObject *a3, NSObject *a4, NSObject *a5)
{
  oslog[5] = a1;
  oslog[4] = a2;
  oslog[3] = a3;
  oslog[2] = a4;
  oslog[1] = a5;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    v7 = type;
    sub_10001CEEC(v8);
    _os_log_impl(&_mh_execute_header, log, v7, "Notified of language change. Will exit when all clear.", v8, 2u);
  }

  objc_storeStrong(oslog, 0);
  return xpc_transaction_exit_clean();
}

void sub_10016B460(id a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v4;
    sub_10001CEEC(v3);
    _os_log_impl(&_mh_execute_header, log, type, "akd is exiting due to SIGTERM", v3, 2u);
  }

  objc_storeStrong(location, 0);
  exit(0);
}

void sub_10016B5FC(NSObject *a1, NSObject *a2, NSObject *a3, NSObject *a4, NSObject *a5)
{
  oslog[5] = a1;
  oslog[4] = a2;
  oslog[3] = a3;
  oslog[2] = a4;
  oslog[1] = a5;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    v6 = type;
    sub_10001CEEC(v7);
    _os_log_impl(&_mh_execute_header, log, v6, "Received eligiblity darwin notification.", v7, 2u);
  }

  objc_storeStrong(oslog, 0);
}

id sub_10016B83C(NSObject *a1, NSObject *a2, NSObject *a3, NSObject *a4, NSObject *a5)
{
  oslog[5] = a1;
  oslog[4] = a2;
  oslog[3] = a3;
  oslog[2] = a4;
  oslog[1] = a5;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    log = oslog[0];
    v7 = type;
    sub_10001CEEC(v8);
    _os_log_debug_impl(&_mh_execute_header, log, v7, "Handling bluetooth pairing notification.", v8, 2u);
  }

  objc_storeStrong(oslog, 0);
  return +[AKAccessoryHandler syncAccessories];
}

id sub_10016BA90(NSObject *a1, NSObject *a2, NSObject *a3, NSObject *a4, NSObject *a5)
{
  oslog[5] = a1;
  oslog[4] = a2;
  oslog[3] = a3;
  oslog[2] = a4;
  oslog[1] = a5;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    v7 = type;
    sub_10001CEEC(v8);
    _os_log_impl(&_mh_execute_header, log, v7, "Handling eligiblity input needed notification.", v8, 2u);
  }

  objc_storeStrong(oslog, 0);
  return +[AKRegulatoryEligibilityHandler reportBirthdayToOSElligibility];
}

void sub_10016BCE0(NSObject *a1, NSObject *a2, NSObject *a3, NSObject *a4, NSObject *a5)
{
  oslog[5] = a1;
  oslog[4] = a2;
  oslog[3] = a3;
  oslog[2] = a4;
  oslog[1] = a5;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    v7 = type;
    sub_10001CEEC(v8);
    _os_log_impl(&_mh_execute_header, log, v7, "Notified of locale/region change. Checking for locale change...", v8, 2u);
  }

  objc_storeStrong(oslog, 0);
  v5 = dispatch_get_global_queue(21, 0);
  dispatch_async(v5, &stru_100325058);
  _objc_release(v5);
}

void sub_10016BF4C(uint64_t a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained((a1 + 56));
  if (v15[0])
  {
    if (v17)
    {
      oslog = _AKLogSystem();
      v9 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v3 = oslog;
        v4 = v9;
        sub_10001CEEC(v8);
        _os_log_impl(&_mh_execute_header, v3, v4, "Passkey setup completed successfully.", v8, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    [v15[0] _updatePasskeyKeychainStatusForAccount:*(a1 + 32)];
    [v15[0] _performPasskeyCleanupWithPasskeyValidator:*(a1 + 40) authenticationController:*(v15[0] + 14) accountManager:*(a1 + 48)];
    v11 = 0;
  }

  else
  {
    v14 = _AKLogPasskey();
    v13 = 2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      log = v14;
      type = v13;
      sub_10001CEEC(v12);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Missing AKDaemonConnectionManager instance.", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    v11 = 1;
  }

  objc_storeStrong(v15, 0);
  if (!v11)
  {
    v11 = 0;
  }

  objc_storeStrong(&location, 0);
}

void sub_10016C190(id a1, BOOL a2, NSError *a3)
{
  v15 = a1;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v12[1] = a1;
  if (location)
  {
    v12[0] = _AKLogPasskey();
    v11 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_DEBUG))
    {
      sub_1000831E0(v16, location);
      _os_log_debug_impl(&_mh_execute_header, v12[0], v11, "Failed to get passkey keychain status with error - %{private}@", v16, 0xCu);
    }

    objc_storeStrong(v12, 0);
  }

  else
  {
    v5 = +[AKAccountManager sharedInstance];
    v10 = [(AKAccountManager *)v5 altDSIDforPrimaryiCloudAccount];
    _objc_release(v5);
    if (!v10)
    {
      oslog = _AKLogPasskey();
      v8 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v3 = oslog;
        v4 = v8;
        sub_10001CEEC(v7);
        _os_log_debug_impl(&_mh_execute_header, v3, v4, "Received device unlock notification - Skipping passkey keychain status checks since missing altDSID for primary iCloud account", v7, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_10016C488(id a1, BOOL a2, NSError *a3)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  oslog[1] = a1;
  if (v10)
  {
    oslog[0] = _AKLogPasskey();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
    {
      log = oslog[0];
      v4 = type;
      sub_10001CEEC(v6);
      _os_log_debug_impl(&_mh_execute_header, log, v4, "Passkeys cleanup completed successfully", v6, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&location, 0);
}

void sub_10016CE40(id a1)
{
  v1 = +[AKGlobalConfigService sharedInstance];
  [(AKGlobalConfigService *)v1 checkForLocaleChange];
  _objc_release(v1);
}

void sub_10016CE98(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1003748A8;
  qword_1003748A8 = v1;
  _objc_release(v2);
}

void sub_10016D3A4(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = objc_loadWeakRetained(a1 + 5);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = location[0];
    v4 = [a1[4] request];
    sub_10004DCC8(v9, v7[0], v3, v4);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@: Handling dispatching response (%@) for executed request (%@)", v9, 0x20u);
    _objc_release(v4);
  }

  objc_storeStrong(&oslog, 0);
  v2 = [a1[4] request];
  [v2 handleResponseCode];
  _objc_release(v2);
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10016D960(id a1)
{
  v1 = objc_alloc_init(AKAuthenticationTrafficController);
  v2 = qword_1003748B8;
  qword_1003748B8 = v1;
  _objc_release(v2);
}

void sub_10016DDF4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v4 = [*(a1 + 32) bundleID];
  _objc_release(v4);
  if (!v4)
  {
    location[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_FAULT))
    {
      sub_1000194D4(v11, *(a1 + 32));
      _os_log_fault_impl(&_mh_execute_header, location[0], v8, "Client %@ lacks a bundle ID!", v11, 0xCu);
    }

    objc_storeStrong(location, 0);
  }

  if ([*(a1 + 40) conformsToProtocol:&OBJC_PROTOCOL___AKPasswordAuthenticationContext] & 1) != 0 && (objc_msgSend(*(a1 + 40), "conformsToProtocol:", &OBJC_PROTOCOL___AKAuthenticationContext_Internal))
  {
    [*(a1 + 48) _updateContextWithCachedPassword:*(a1 + 40)];
  }

  v2 = [*(a1 + 32) bundleID];
  if (v2)
  {
    v1 = _objc_retain(v2);
  }

  else
  {
    v1 = _objc_retain(@"com.apple.ak.unknown");
  }

  v7 = v1;
  _objc_release(v2);
  v6 = objc_alloc_init(AKTrafficClearenceRequest);
  [(AKTrafficClearenceRequest *)v6 setClearanceHandler:*(a1 + 56)];
  [(AKTrafficClearenceRequest *)v6 setContext:*(a1 + 40)];
  if ([*(a1 + 40) conformsToProtocol:&OBJC_PROTOCOL___AKAuthenticationContext_Internal])
  {
    [(AKTrafficClearenceRequest *)v6 setAuthContext:*(a1 + 40)];
  }

  [(AKTrafficClearenceRequest *)v6 setClientBundleID:v7];
  v5 = _AKLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v10, v6);
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Processing clearance request: %@", v10, 0xCu);
  }

  objc_storeStrong(&v5, 0);
  [*(a1 + 48) _processClearanceRequest:v6 withClient:*(a1 + 32)];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
}

void sub_10016E3B8(uint64_t a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v6 = [*(a1 + 32) bundleID];
  if (v6)
  {
    v1 = _objc_retain(v6);
  }

  else
  {
    v1 = _objc_retain(@"com.apple.ak.unknown");
  }

  v18[0] = v1;
  _objc_release(v6);
  location = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v20, v18[0]);
    _os_log_debug_impl(&_mh_execute_header, location, v16, "Removing %@ from authenticated request list", v20, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v4 = [*(*(a1 + 40) + 72) objectForKeyedSubscript:v18[0]];
  [v4 removeObject:*(a1 + 48)];
  _objc_release(v4);
  [*(a1 + 40) _clearNextEligibleRequest];
  v15 = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v3 = [NSNumber numberWithUnsignedInt:qos_class_self()];
    sub_10001B098(v19, v3, *(a1 + 48));
    _os_log_debug_impl(&_mh_execute_header, v15, v14, "Queueing (clearence) end authenticated event block with qos %@ for %@", v19, 0x16u);
    _objc_release(v3);
  }

  objc_storeStrong(&v15, 0);
  queue = *(*(a1 + 40) + 16);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10016E6F4;
  v11 = &unk_100320878;
  v12 = _objc_retain(*(a1 + 48));
  v13 = _objc_retain(*(a1 + 56));
  dispatch_async(queue, &v7);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v18, 0);
}

uint64_t sub_10016E6F4(uint64_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    v2 = [NSNumber numberWithUnsignedInt:qos_class_self()];
    sub_10001B098(v5, v2, a1[4]);
    _os_log_debug_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEBUG, "Executing end authenticated event clearance block with qos %@ for %@", v5, 0x16u);
    _objc_release(v2);
  }

  objc_storeStrong(location, 0);
  return (*(a1[5] + 16))();
}

void sub_10016EBD8(uint64_t a1)
{
  v36[2] = a1;
  v36[1] = a1;
  [*(a1 + 32) _removeAuthenticationRequestForContext:*(a1 + 40) client:*(a1 + 48)];
  v13 = [*(a1 + 40) username];
  v14 = 0;
  if (v13)
  {
    v14 = *(a1 + 56) != 0;
  }

  _objc_release(v13);
  if (v14)
  {
    v36[0] = [NSString _newZStringWithString:*(a1 + 56)];
    v10 = *(*(a1 + 32) + 8);
    v9 = v36[0];
    v11 = [*(a1 + 40) username];
    [v10 setObject:v9 forKey:300.0 expiresIn:?];
    _objc_release(v11);
    objc_storeStrong(v36, 0);
  }

  v7 = [*(a1 + 32) surrogateManager];
  v8 = [v7 hasRegisteredSurrogateForContext:*(a1 + 40)];
  _objc_release(v7);
  if (v8)
  {
    v6 = [*(a1 + 32) surrogateManager];
    [v6 unregisterUISurrogateForContext:*(a1 + 40)];
    _objc_release(v6);
    v35 = _AKLogSystem();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      log = v35;
      type = v34;
      sub_10001CEEC(v33);
      _os_log_impl(&_mh_execute_header, log, type, "Surrogate auth flow is complete!", v33, 2u);
    }

    objc_storeStrong(&v35, 0);
  }

  v3 = *(a1 + 32);
  v24 = _NSConcreteStackBlock;
  v25 = -1073741824;
  v26 = 0;
  v27 = sub_10016F118;
  v28 = &unk_100325128;
  v29 = _objc_retain(*(a1 + 64));
  v30 = _objc_retain(*(a1 + 32));
  v31 = _objc_retain(*(a1 + 56));
  v32 = _objc_retain(*(a1 + 72));
  [v3 _clearNextEligibleRequestWithUpdateBlock:&v24];
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v2 = [NSNumber numberWithUnsignedInt:qos_class_self()];
    sub_10001B098(v37, v2, *(a1 + 40));
    _os_log_debug_impl(&_mh_execute_header, v23, v22, "Queueing (clerence) end authentication clearance block with qos %@ for %@", v37, 0x16u);
    _objc_release(v2);
  }

  objc_storeStrong(&v23, 0);
  queue = *(*(a1 + 32) + 16);
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_10016F290;
  v19 = &unk_100320878;
  v20 = _objc_retain(*(a1 + 40));
  v21 = _objc_retain(*(a1 + 80));
  dispatch_async(queue, &v15);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v29, 0);
}

void sub_10016F118(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13[1] = a1;
  if (a1[4])
  {
    v13[0] = _AKLogSystem();
    v12 = 2;
    if (os_log_type_enabled(v13[0], OS_LOG_TYPE_DEBUG))
    {
      log = v13[0];
      type = v12;
      sub_10001CEEC(v11);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Auth has ended with an error. Skipping queued context update.", v11, 2u);
    }

    objc_storeStrong(v13, 0);
  }

  else
  {
    v6 = [location[0] context];
    v7 = [v6 conformsToProtocol:&OBJC_PROTOCOL___AKPasswordAuthenticationContext];
    _objc_release(v6);
    if (v7)
    {
      v4 = a1[5];
      v5 = [location[0] context];
      v2 = a1[6];
      v3 = a1[7];
      [v4 _updateContext:? withPassword:? forAppleID:?];
      _objc_release(v5);
    }
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_10016F290(uint64_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    v2 = [NSNumber numberWithUnsignedInt:qos_class_self()];
    sub_10001B098(v5, v2, a1[4]);
    _os_log_debug_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEBUG, "Executing end authentication clearance block with qos %@ for %@", v5, 0x16u);
    _objc_release(v2);
  }

  objc_storeStrong(location, 0);
  return (*(a1[5] + 16))();
}

void sub_10016F6E4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v7 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  v8 = [v7 containsObject:*(a1 + 48)];
  _objc_release(v7);
  if (v8)
  {
    location[0] = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [NSNumber numberWithUnsignedInt:qos_class_self()];
      sub_10001B098(v13, v5, *(a1 + 48));
      _os_log_impl(&_mh_execute_header, location[0], v10, "Daemon auth now requires UI with qos %@ for %@", v13, 0x16u);
      _objc_release(v5);
    }

    objc_storeStrong(location, 0);
    v4 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
    [v4 removeObject:*(a1 + 48)];
    _objc_release(v4);
    [*(a1 + 32) _tq_addContext:*(a1 + 48) toAuthenticatingAppsforClient:*(a1 + 40)];
    [*(a1 + 32) _clearNextEligibleRequest];
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v9 = _AKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v3 = [NSNumber numberWithUnsignedInt:qos_class_self()];
      sub_10001B098(v12, v3, *(a1 + 48));
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No in progress daemon auth found with qos %@ for %@", v12, 0x16u);
      _objc_release(v3);
    }

    objc_storeStrong(&v9, 0);
    if (*(a1 + 56))
    {
      v1 = *(a1 + 56);
      v2 = [NSError ak_errorWithCode:-7121];
      (*(v1 + 16))(v1, 0);
      _objc_release(v2);
    }
  }
}

void sub_10016FB9C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if (*(a1[4] + 32))
  {
    location[0] = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v19;
      sub_10001CEEC(v18);
      _os_log_impl(&_mh_execute_header, log, type, "Traffic controller 'alreadyPresentingShield' == YES, rejecting clearance", v18, 2u);
    }

    objc_storeStrong(location, 0);
    if (a1[5])
    {
      (*(a1[5] + 2))();
    }
  }

  else
  {
    v17 = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v17;
      v3 = v16;
      sub_10001CEEC(v15);
      _os_log_impl(&_mh_execute_header, v2, v3, "Traffic controller setting 'alreadyPresentingShield' to YES", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    *(a1[4] + 32) = 1;
    objc_initWeak(&v14, a1[4]);
    queue = *(a1[4] + 2);
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10016FDE8;
    v11 = &unk_10031F900;
    v12 = _objc_retain(a1[5]);
    objc_copyWeak(&v13, &v14);
    dispatch_async(queue, &v7);
    objc_destroyWeak(&v13);
    objc_storeStrong(&v12, 0);
    objc_destroyWeak(&v14);
  }
}

void sub_10016FDE8(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v12;
    sub_10001CEEC(v11);
    _os_log_impl(&_mh_execute_header, log, type, "Traffic controller calling shield clearance block", v11, 2u);
  }

  objc_storeStrong(location, 0);
  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_10016FF64;
    v9 = &unk_100321038;
    objc_copyWeak(&v10, (a1 + 40));
    (*(v1 + 16))(v1, 1, &v5);
    objc_destroyWeak(&v10);
  }
}

void sub_10016FF64(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v18 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v18;
    sub_10001CEEC(v17);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Shield clearance finished block was called", v17, 2u);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  if (WeakRetained)
  {
    queue = *(WeakRetained + 3);
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_10017014C;
    v14 = &unk_10031F8B0;
    v15 = _objc_retain(WeakRetained);
    dispatch_async(queue, &v10);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v1 = oslog;
      v2 = v8;
      sub_10001CEEC(v7);
      _os_log_error_impl(&_mh_execute_header, v1, v2, "Strong self is gone, unable to continue with traffic controller", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&WeakRetained, 0);
}

void sub_10017014C(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    sub_10001CEEC(v4);
    _os_log_impl(&_mh_execute_header, log, type, "Traffic controller setting 'alreadyPresentingShield' to NO", v4, 2u);
  }

  objc_storeStrong(location, 0);
  *(a1[4] + 32) = 0;
}

id sub_100171014(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = _objc_retain(location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

void sub_100171620(void *a1, void *a2, void *a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if ([v7 count])
  {
    *(*(a1[4] + 8) + 24) = 1;
    *a4 = 1;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_100171B20(uint64_t result, uint64_t a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void sub_100171E84(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[2] = a4;
  v11[1] = a1;
  if ([v12 count] && +[AKClient isAppWithBundleIDForeground:](AKClient, "isAppWithBundleIDForeground:", location[0]))
  {
    v11[0] = _AKLogSystem();
    v10 = 2;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_DEBUG))
    {
      log = v11[0];
      type = v10;
      sub_10001CEEC(v9);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Denying clearance due to another foreground app performing authentication...", v9, 2u);
    }

    objc_storeStrong(v11, 0);
    *(*(a1[4] + 8) + 24) = 1;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_100172258(uint64_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [NSNumber numberWithUnsignedInt:qos_class_self()];
    sub_10001B098(v5, v2, a1[4]);
    _os_log_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEFAULT, "Invoking traffic request with qos %@ for %@", v5, 0x16u);
    _objc_release(v2);
  }

  objc_storeStrong(location, 0);
  v1 = [a1[4] clearanceHandler];
  v1[2]();
  _objc_release(v1);
}

uint64_t sub_100172C98(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] _shouldClearRequest:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

void sub_100173500(id a1)
{
  v1 = objc_alloc_init(AKAuthorizationListUpdateService);
  v2 = qword_1003748C8;
  qword_1003748C8 = v1;
  _objc_release(v2);
}

void sub_1001737B0(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = a1;
  state = xpc_activity_get_state(location[0]);
  if (state == 2)
  {
    v19 = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      log = v19;
      type = v18;
      sub_10001CEEC(v17);
      _os_log_impl(&_mh_execute_header, log, type, "XPC activity says that it's time to update user information", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    if (xpc_activity_set_state(location[0], 4))
    {
      v16 = os_transaction_create();
      v3 = a1[4];
      v8 = _NSConcreteStackBlock;
      v9 = -1073741824;
      v10 = 0;
      v11 = sub_100173AA8;
      v12 = &unk_10031F050;
      v13 = _objc_retain(a1[4]);
      v14 = _objc_retain(location[0]);
      v15 = _objc_retain(v16);
      [v3 performAuthorizationCheckInWithCompletion:&v8];
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v16, 0);
    }
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = [NSNumber numberWithLong:state];
      sub_1000194D4(v23, v2);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "XPC activity registration complete. State: %@.", v23, 0xCu);
      _objc_release(v2);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_100173AA8(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v13;
    sub_10001CEEC(v12);
    _os_log_impl(&_mh_execute_header, log, type, "XPC activity for fetch user information complete", v12, 2u);
  }

  objc_storeStrong(location, 0);
  v1 = *(a1 + 32);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100173C1C;
  v9 = &unk_10031F078;
  v10 = _objc_retain(*(a1 + 40));
  v11 = _objc_retain(*(a1 + 48));
  [v1 performGlobalConfigUpdateWithCompletion:&v5];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
}

BOOL sub_100173C1C(xpc_activity_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "XPC activity for fetch global config complete", v5, 2u);
  }

  objc_storeStrong(location, 0);
  return xpc_activity_set_state(a1[4], 5);
}

void sub_100174104(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (location[0])
  {
    v7[0] = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v11, *(a1 + 32));
      _os_log_impl(&_mh_execute_header, v7[0], v6, "Succesfully fetched user information for altDSID: %@", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v10, v8);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Encountered error while fetching user information: %@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  dispatch_group_leave(*(a1 + 40));
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1001742F0(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100174540(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_100174638(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  if (location[0])
  {
    v9[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v11, location[0]);
      _os_log_error_impl(&_mh_execute_header, v9[0], v8, "Failed to clear stale devices from cache with error: %@", v11, 0xCu);
    }

    objc_storeStrong(v9, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v6;
      sub_10001CEEC(v5);
      _os_log_impl(&_mh_execute_header, v2, v3, "Succesfully cleared stale devices from cache", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_100175C40(id a1)
{
  v1 = objc_alloc_init(AKKeychainManager);
  v2 = qword_1003748D8;
  qword_1003748D8 = v1;
  _objc_release(v2);
}

void sub_100175DF4(void *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v8[0] = 0;
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 _unsafe_addKeychainItem:v3 shouldAttemptUpdate:0 error:&obj];
  objc_storeStrong(v8, obj);
  v7 = v4;
  (*(a1[6] + 16))();
  objc_storeStrong(v8, 0);
}

void sub_100176008(void *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v8[0] = 0;
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 _unsafe_addKeychainItem:v3 shouldAttemptUpdate:1 error:&obj];
  objc_storeStrong(v8, obj);
  v7 = v4;
  (*(a1[6] + 16))();
  objc_storeStrong(v8, 0);
}

void sub_10017621C(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  v6[0] = 0;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) descriptor];
  v1 = *(a1 + 40);
  v5 = v6[0];
  [v2 _unsafe_updateKeychainItemWithDescriptor:? newItem:? error:?];
  objc_storeStrong(v6, v5);
  _objc_release(v3);
  (*(*(a1 + 48) + 16))();
  objc_storeStrong(v6, 0);
}

void sub_10017645C(void *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v8[0] = 0;
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 _unsafe_fetchKeychainItemWithDescriptor:v3 error:&obj];
  objc_storeStrong(v8, obj);
  v7 = v4;
  (*(a1[6] + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
}

void sub_100176680(void *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v8[0] = 0;
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 _unsafe_fetchKeychainItemsWithDescriptor:v3 error:&obj];
  objc_storeStrong(v8, obj);
  v7 = v4;
  (*(a1[6] + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
}

void sub_1001768A4(void *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v8[0] = 0;
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 _unsafe_deleteKeychainItemWithDescriptor:v3 error:&obj];
  objc_storeStrong(v8, obj);
  v7 = v4;
  (*(a1[6] + 16))();
  objc_storeStrong(v8, 0);
}

uint64_t sub_1001773DC(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = qword_1003748E8;
  v15 = qword_1003748E8;
  if (!qword_1003748E8)
  {
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_1001774F0;
    v7 = &unk_10031F358;
    v8 = &v11;
    v9 = v16;
    sub_1001774F0(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t sub_1001774F0(uint64_t a1)
{
  memcpy(__dst, off_1003252B8, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003748E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001775B0()
{
  v2 = 0;
  v1 = sub_1001773DC(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id sub_10017762C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003748F0;
  v13 = qword_1003748F0;
  if (!qword_1003748F0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10017775C;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_10017775C(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_10017775C(uint64_t a1)
{
  sub_1001775B0();
  Class = objc_getClass("SKSetupServer");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_1003748F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100177804()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003748F8;
  v13 = qword_1003748F8;
  if (!qword_1003748F8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100177934;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100177934(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100177934(uint64_t a1)
{
  sub_1001775B0();
  Class = objc_getClass("SKSetupAppleIDSignInServer");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_1003748F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1001779DC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100374900;
  v13 = qword_100374900;
  if (!qword_100374900)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100177B0C;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100177B0C(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100177B0C(uint64_t a1)
{
  sub_1001775B0();
  Class = objc_getClass("SKEvent");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100374900 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100177BB4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100374908;
  v13 = qword_100374908;
  if (!qword_100374908)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100177CE4;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100177CE4(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100177CE4(uint64_t a1)
{
  sub_1001775B0();
  Class = objc_getClass("SKAuthenticationPresentEvent");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100374908 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100177D8C(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = qword_100374910;
  v15 = qword_100374910;
  if (!qword_100374910)
  {
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100177EA0;
    v7 = &unk_10031F358;
    v8 = &v11;
    v9 = v16;
    sub_100177EA0(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t sub_100177EA0(uint64_t a1)
{
  memcpy(__dst, off_100325310, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100374910 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100177F60()
{
  v2 = 0;
  v1 = sub_100177D8C(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id sub_100177FDC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100374918;
  v13 = qword_100374918;
  if (!qword_100374918)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10017810C;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_10017810C(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_10017810C(uint64_t a1)
{
  sub_100177F60();
  Class = objc_getClass("APSConnection");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100374918 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001781B4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100374920;
  v13 = qword_100374920;
  if (!qword_100374920)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001782BC;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_1001782BC(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_1001782BC(uint64_t a1)
{
  v1 = sub_100177F60();
  v2 = dlsym(v1, "APSEnvironmentProduction");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100374920 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100178328()
{
  v2 = sub_1001781B4();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_100178390()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100374928;
  v13 = qword_100374928;
  if (!qword_100374928)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100178498;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100178498(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_100178498(uint64_t a1)
{
  v1 = sub_100177F60();
  v2 = dlsym(v1, "APSEnvironmentDevelopment");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100374928 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100178504()
{
  v2 = sub_100178390();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

void sub_1001785FC(id a1)
{
  v1 = objc_alloc_init(AKAppleIDPushHelperService);
  v2 = qword_100374930;
  qword_100374930 = v1;
  _objc_release(v2);
}

void sub_100178D34(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v11 = v16;
    sub_10001CEEC(v15);
    _os_log_impl(&_mh_execute_header, log, v11, "Push service starting...", v15, 2u);
  }

  objc_storeStrong(location, 0);
  v13 = 0;
  if (sub_100177D8C(0))
  {
    v14 = sub_100178328();
    v13 = 1;
    objc_storeStrong((a1[4] + 24), v14);
  }

  else
  {
    objc_storeStrong((a1[4] + 24), 0);
  }

  if (v13)
  {
    _objc_release(v14);
  }

  if (sub_100177D8C(0))
  {
    v1 = objc_alloc(sub_100177FDC());
  }

  else
  {
    v1 = [0 alloc];
  }

  v7 = v1;
  v6 = *(a1[4] + 24);
  v2 = &_dispatch_main_q;
  v8 = &_dispatch_main_q;
  v3 = [v7 initWithEnvironmentName:v6 namedDelegatePort:@"com.apple.ak.aps" queue:?];
  v4 = a1[4];
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;
  _objc_release(v5);
  _objc_release(v8);
  [*(a1[4] + 16) setDelegate:a1[4]];
  v9 = [*(a1[4] + 80) allObjects];
  [*(a1[4] + 16) _setEnabledTopics:?];
  _objc_release(v9);
}

void sub_100178F78(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = a1;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v15 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = 2;
  v12 = *(a1 + 40);
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    log = v14;
    type = v13;
    spid = v12;
    sub_10001CEEC(v11);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, type, spid, "APSTokenEnvironment", "", v11, 2u);
  }

  objc_storeStrong(&v14, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100034384(v19, *(a1 + 40), *&v15);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:APSTokenEnvironment ", v19, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [*(a1 + 32) _ensureDesiredAPSEnvironmentIsInUse:location[0]];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void sub_10017A044(uint64_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([a1[4] isEqualToString:*(a1[5] + 24)])
  {
    location[0] = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v25, *(a1[5] + 24));
      _os_log_debug_impl(&_mh_execute_header, location[0], v19, "Current APS env matches server preference. %@", v25, 0xCu);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v24, *(a1[5] + 24), a1[4]);
      _os_log_impl(&_mh_execute_header, v18, v17, "Active APS env (%@) does not match server-requested env (%@).", v24, 0x16u);
    }

    objc_storeStrong(&v18, 0);
    if (sub_100177D8C(0))
    {
      v1 = [sub_100177FDC() isValidEnvironment:a1[4]];
    }

    else
    {
      v1 = [0 isValidEnvironment:a1[4]];
    }

    if (v1)
    {
      v14 = _AKLogSystem();
      v13 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v22, *(a1[5] + 24));
        _os_log_impl(&_mh_execute_header, v14, v13, "Shutting down APS connection with env %@...", v22, 0xCu);
      }

      objc_storeStrong(&v14, 0);
      [*(a1[5] + 16) setDelegate:0];
      [*(a1[5] + 16) shutdown];
      v12 = _AKLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v21, a1[4]);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting new APS connection with env %@...", v21, 0xCu);
      }

      objc_storeStrong(&v12, 0);
      if (sub_100177D8C(0))
      {
        v2 = objc_alloc(sub_100177FDC());
      }

      else
      {
        v2 = [0 alloc];
      }

      v8 = v2;
      v7 = a1[4];
      v3 = &_dispatch_main_q;
      v9 = &_dispatch_main_q;
      v4 = [v8 initWithEnvironmentName:v7 namedDelegatePort:@"com.apple.ak.aps" queue:?];
      v5 = a1[5];
      v6 = *(v5 + 16);
      *(v5 + 16) = v4;
      _objc_release(v6);
      _objc_release(v9);
      [*(a1[5] + 16) setDelegate:a1[5]];
      v10 = [*(a1[5] + 80) allObjects];
      [*(a1[5] + 16) _setEnabledTopics:?];
      _objc_release(v10);
      objc_storeStrong((a1[5] + 24), a1[4]);
    }

    else
    {
      v16 = _AKLogSystem();
      v15 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v23, a1[4]);
        _os_log_error_impl(&_mh_execute_header, v16, v15, "The server requested env (%@) is not valid!", v23, 0xCu);
      }

      objc_storeStrong(&v16, 0);
    }
  }
}

void sub_10017B3C4(void *a1)
{
  v20[2] = a1;
  v20[1] = a1;
  v1 = [*(a1[4] + 16) publicToken];
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  _objc_release(v3);
  v20[0] = objc_alloc_init(AKPushTokenKeychainWrapper);
  [v20[0] updateToken:*(*(a1[5] + 8) + 40)];
  if (!*(a1[4] + 16) || *(*(a1[5] + 8) + 40))
  {
    v12 = _AKLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v21, *(a1[4] + 16));
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Skipping waiting for push token with connection: %@", v21, 0xCu);
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    location = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v23, *(a1[4] + 16));
      _os_log_impl(&_mh_execute_header, location, v18, "No APS public token at the moment for connection %@. Waiting for a new one...", v23, 0xCu);
    }

    objc_storeStrong(&location, 0);
    dsema = *(a1[4] + 32);
    v4 = dispatch_time(0, (AKTimeout * 1000000000.0));
    dispatch_semaphore_wait(dsema, v4);
    v17 = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v17;
      v9 = v16;
      sub_10001CEEC(v15);
      _os_log_impl(&_mh_execute_header, v8, v9, "Wait for APS public token is over!", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v5 = [*(a1[4] + 16) publicToken];
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
    _objc_release(v7);
    [v20[0] updateToken:*(*(a1[5] + 8) + 40)];
    if (!*(*(a1[5] + 8) + 40))
    {
      oslog = _AKLogSystem();
      v13 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v22, *(a1[4] + 16));
        _os_log_error_impl(&_mh_execute_header, oslog, v13, "APS connection %@ still returned nil for -publicToken!", v22, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  objc_storeStrong(v20, 0);
}

void sub_10017BBB8(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = [[AKPushMessage alloc] initWithMessage:*(a1 + 32)];
  [*(a1 + 40) _unsafe_processPushMessage:v2[0]];
  objc_storeStrong(v2, 0);
}

void sub_10017C42C(id a1, NSDictionary *a2, NSError *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = 0;
  objc_storeStrong(&v4, a3);
  +[NSXPCConnection endTransaction];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

void sub_10017CE94(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v20 = a2;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v22, v20);
    _os_log_impl(&_mh_execute_header, location[0], v18, "User interacted with alert - %lul.", v22, 0xCu);
  }

  objc_storeStrong(location, 0);
  if (v20 == 2)
  {
    v17 = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v17;
      v7 = v16;
      sub_10001CEEC(v15);
      _os_log_impl(&_mh_execute_header, v6, v7, "Notification torn down by server!", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
  }

  else if (v20 == 1 && ([*(a1 + 32) _canProceedWithArmingForMessage:*(a1 + 40) account:*(a1 + 48)] & 1) != 0)
  {
    v14 = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v14;
      v5 = v13;
      sub_10001CEEC(v12);
      _os_log_impl(&_mh_execute_header, v4, v5, "User accepted PCS arming push, begin device arming.", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    [*(a1 + 32) _armDeviceWithMessage:*(a1 + 40) account:*(a1 + 48) notificationResult:v20];
  }

  else
  {
    [*(a1 + 32) _notifyDelegatesOfMessageActivation:*(a1 + 40) result:v20];
    if (v20)
    {
      [*(a1 + 32) _performCommandForMessage:*(a1 + 40) forAccount:*(a1 + 48)];
    }

    else
    {
      oslog = _AKLogSystem();
      v10 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v2 = oslog;
        v3 = v10;
        sub_10001CEEC(v9);
        _os_log_impl(&_mh_execute_header, v2, v3, "User dismissed notification. Nothing further to do.", v9, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }
  }
}

void sub_10017D324(uint64_t a1, char a2, id obj)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v8[1] = a1;
  v8[0] = _AKLogSystem();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v8[0];
    type = v7;
    sub_10001CEEC(v6);
    _os_log_impl(&_mh_execute_header, log, type, "PCS arming completed, notifying delegates of results.", v6, 2u);
  }

  objc_storeStrong(v8, 0);
  [*(a1 + 32) _notifyDelegatesOfMessageActivation:*(a1 + 40) result:1 payload:location];
  [*(a1 + 32) _performCommandForMessage:*(a1 + 40) forAccount:*(a1 + 48)];
  objc_storeStrong(&location, 0);
}

void sub_10017DA54(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if (*(a1 + 32))
  {
    location[0] = _AKLogSystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v16, *(a1 + 32));
      _os_log_error_impl(&_mh_execute_header, location[0], v14, "Failed to generate login code. Error: %@", v16, 0xCu);
    }

    objc_storeStrong(location, 0);
    v3 = [NSBundle bundleWithIdentifier:?];
    v13 = [NSBundle localizedStringForKey:v3 value:"localizedStringForKey:value:table:" table:@"LOGIN_CODE_ALERT_TITLE_FAILED"];
    _objc_release(v3);
    v12 = [*(a1 + 32) localizedDescription];
    v5 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v4 = [(NSBundle *)v5 localizedStringForKey:@"LOGIN_CODE_ALERT_OK_BUTTON" value:&stru_100330538 table:@"Localizable"];
    v6 = [AKPushMessageNotificationPresenter createUserNotificationWithTitle:"createUserNotificationWithTitle:body:defaultButtonTitle:alternateButtonTitle:makeNoise:" body:v13 defaultButtonTitle:v12 alternateButtonTitle:? makeNoise:?];
    _objc_release(v4);
    _objc_release(v5);
    v11 = v6;
    if (v6)
    {
      CFUserNotificationReceiveResponse(v11, 0.0, 0);
      CFRelease(v11);
    }

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v1 = v10;
      type = v9;
      sub_10001CEEC(v8);
      _os_log_impl(&_mh_execute_header, v1, type, "Will display login code notification...", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
    [*(a1 + 40) _unsafe_showLoginNotificationWithCode:*(a1 + 48) incomingMessage:*(a1 + 56) piggy:0];
  }
}

void sub_10017E2D8(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 96), 0);
  v2 = *(*(a1 + 32) + 64);
  v3 = [*(a1 + 40) messageId];
  [v2 setObject:0 forKeyedSubscript:?];
  _objc_release(v3);
}

void sub_10017F19C(id *a1, void *a2)
{
  v13 = a1;
  v12 = a2;
  v11[2] = a1;
  queue = *(a1[4] + 5);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10017F2DC;
  v8 = &unk_1003241D8;
  v9 = _objc_retain(a1[4]);
  v10 = _objc_retain(a1[5]);
  v11[0] = _objc_retain(a1[6]);
  v11[1] = v12;
  dispatch_async(queue, &v4);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
}

id sub_10017F2DC(void *a1)
{
  [*(a1[4] + 64) removeObjectForKey:a1[5]];
  v1 = a1[7];
  (*(a1[6] + 16))();
  return +[NSXPCConnection endTransaction];
}

void sub_100180064(id a1)
{
  v1 = objc_alloc_init(AKBAATimeProvider);
  v2 = qword_100374948;
  qword_100374948 = v1;
  _objc_release(v2);
}

void sub_100180FC0(uint64_t a1)
{
  v6 = a1;
  v5 = a1;
  v4 = [*(a1 + 32) _automaticTimeState];
  if (v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  [*(a1 + 32) setAutomaticTimeState:v1];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100036FE8(v7, [*(a1 + 32) automaticTimeState]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Automatic time state is set to - %li", v7, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
}

uint64_t sub_100181604(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_100181738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  when = dispatch_time(0, 1000000000);
  v6 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1001819B4;
  v11 = &unk_100322AA0;
  v12 = v16;
  dispatch_after(when, v6, &block);
  _objc_release(v6);
}

BOOL sub_100182F80(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v4 = 0;
  objc_storeStrong(&v4, a2);
  v6 = location && v4 && ([location isEqual:v4] & 1) != 0 || !location && !v4;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&location, 0);
  return v6;
}

void sub_1001859D0(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained((a1 + 40));
  if (v12[0])
  {
    if (![v12[0] _bindStatement:v13 withParameter:*(a1 + 32) atPosition:1])
    {
      [v12[0] setBindingFailure:1];
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v15, *(a1 + 32));
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Error binding sql statement with parameter: %@", v15, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      if (*(a1 + 48))
      {
        v3 = [NSError errorWithDomain:AKSQLErrorDomain code:-6004 userInfo:0];
        v2 = v3;
        **(a1 + 48) = v3;
      }
    }

    objc_storeStrong(v12, 0);
    v8 = 0;
  }

  else
  {
    location = _AKLogSystem();
    v10 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v10;
      sub_10001CEEC(v9);
      _os_log_error_impl(&_mh_execute_header, log, type, "AKSQLiteQuerry deallocated, not binding parameters", v9, 2u);
    }

    objc_storeStrong(&location, 0);
    v8 = 1;
  }

  objc_storeStrong(v12, 0);
}

void sub_100185D44(uint64_t a1, void *a2)
{
  v18 = a1;
  v17 = a2;
  v16[1] = a1;
  v16[0] = objc_loadWeakRetained((a1 + 40));
  if (v16[0])
  {
    v2 = *(a1 + 32);
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = sub_100185EF4;
    v10 = &unk_1003254B8;
    v11[0] = _objc_retain(v16[0]);
    v11[1] = v17;
    v11[2] = *(a1 + 48);
    [v2 enumerateObjectsUsingBlock:&v6];
    objc_storeStrong(v16, 0);
    objc_storeStrong(v11, 0);
    v12 = 0;
  }

  else
  {
    location = _AKLogSystem();
    v14 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v14;
      sub_10001CEEC(v13);
      _os_log_error_impl(&_mh_execute_header, log, type, "AKSQLiteQuerry deallocated, not binding parameters", v13, 2u);
    }

    objc_storeStrong(&location, 0);
    v12 = 1;
  }

  objc_storeStrong(v16, 0);
}

void sub_100185EF4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = a3;
  v12 = a4;
  v11 = a1;
  v10 = a3 + 1;
  if (![*(a1 + 32) _bindStatement:*(a1 + 40) withParameter:location[0] atPosition:(a3 + 1)])
  {
    [*(a1 + 32) setBindingFailure:1];
    *v12 = 1;
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v15, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Error binding sql statement with parameter: %@", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (*(a1 + 48))
    {
      v5 = [NSError errorWithDomain:AKSQLErrorDomain code:-6004 userInfo:0];
      v4 = v5;
      **(a1 + 48) = v5;
    }
  }

  objc_storeStrong(location, 0);
}

void sub_1001879F0(uint64_t a1)
{
  v31 = a1;
  v30 = a1;
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(*(a1 + 32));
  v18 = [obj countByEnumeratingWithState:__b objects:v35 count:16];
  if (v18)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v18;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(__b[1] + 8 * v14);
      v27 = [*(a1 + 32) objectForKeyedSubscript:v29];
      if (v27)
      {
        oslog = _AKLogSystem();
        type = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          log = oslog;
          v11 = type;
          sub_1000194D4(v34, v29);
          _os_log_impl(&_mh_execute_header, log, v11, "Updating token for service with ID %@...", v34, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v24 = objc_alloc_init(ACAccountCredential);
        v9 = v24;
        v8 = [v27 stringValue];
        [v9 setToken:?];
        _objc_release(v8);
        v7 = v24;
        v6 = [v27 expirationDate];
        [v7 setTokenExpiryDate:?];
        _objc_release(v6);
        if ([*(a1 + 40) _isTouchIDRequiredForGrandSlamServiceTokenWithID:v29])
        {
          v23 = _AKLogSystem();
          v22 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v4 = v23;
            v5 = v22;
            sub_1000194D4(v33, v29);
            _os_log_debug_impl(&_mh_execute_header, v4, v5, "GS service token with ID %@ marked as requiring TouchID.", v33, 0xCu);
          }

          objc_storeStrong(&v23, 0);
          [v24 setRequiresTouchID:1];
        }

        location = 0;
        v1 = *(a1 + 48);
        v2 = *(a1 + 56);
        v20 = 0;
        [v1 setCredential:v24 forAccount:v2 serviceID:v29 error:&v20];
        objc_storeStrong(&location, v20);
        if (location)
        {
          v19 = _AKLogSystem();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v3 = v19;
            sub_10001B098(v32, v29, location);
            _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to update token for %@ in keychain. Error: %@", v32, 0x16u);
          }

          objc_storeStrong(&v19, 0);
        }

        objc_storeStrong(&location, 0);
        objc_storeStrong(&v24, 0);
      }

      objc_storeStrong(&v27, 0);
      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:__b objects:v35 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
}

void sub_100188DC8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21[1] = a1;
  if (location[0])
  {
    v5 = *(*(a1 + 32) + 32);
    v6 = [*(a1 + 32) _urlRequestFromAuthParameters:location[0]];
    v7 = [v5 shouldBackoffRequest:?];
    _objc_release(v6);
    if (v7)
    {
      v19 = [NSError ak_errorWithCode:-7120];
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v27, *(a1 + 32), v19);
        _os_log_error_impl(&_mh_execute_header, v18, v17, "%@: Server throttled request with error (%@)", v27, 0x16u);
      }

      objc_storeStrong(&v18, 0);
      (*(*(a1 + 40) + 16))();
      (*(*(*(a1 + 32) + 8) + 16))();
      objc_storeStrong(&v19, 0);
    }

    else
    {
      v16 = _AKLogSystem();
      v15 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v26, *(a1 + 32));
        _os_log_impl(&_mh_execute_header, v16, v15, "%@: Successfully generated authentication parameters... generating SRP context!", v26, 0xCu);
      }

      objc_storeStrong(&v16, 0);
      v14 = objc_alloc_init(AKSRPContext);
      v13 = [v14 configureWithParameters:location[0]];
      if (v13)
      {
        oslog = _AKLogSystem();
        v11 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_10001B098(v25, *(a1 + 32), v13);
          _os_log_error_impl(&_mh_execute_header, oslog, v11, "%@: Failed to configure SRP context with error (%@)", v25, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
        (*(*(a1 + 40) + 16))();
        v3 = *(*(a1 + 32) + 8);
        v4 = [NSError ak_errorWithCode:-7004 underlyingError:v13];
        (*(v3 + 16))(v3, 0, 0);
        _objc_release(v4);
      }

      else
      {
        v10 = _AKLogSystem();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          sub_10001B098(v24, *(a1 + 32), v14);
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Performing SRP request with context (%@)", v24, 0x16u);
        }

        objc_storeStrong(&v10, 0);
        [*(a1 + 32) _performRequestWithContext:v14 responseHandler:*(a1 + 40)];
      }

      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
    }
  }

  else
  {
    v21[0] = _AKLogSystem();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21[0], OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v28, *(a1 + 32), v22);
      _os_log_error_impl(&_mh_execute_header, v21[0], v20, "%@: Failed to generate authentication parameters with error (%@)", v28, 0x16u);
    }

    objc_storeStrong(v21, 0);
    (*(*(a1 + 40) + 16))();
    (*(*(*(a1 + 32) + 8) + 16))();
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

void sub_1001895B0(uint64_t a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v18[0] = 0;
  v1 = *(a1 + 32);
  v17 = [objc_opt_class() _performRequestWithURL:*(*(a1 + 32) + 56) context:*(a1 + 40) error:v18];
  v8 = [*(a1 + 40) status];
  v7 = [v8 objectForKeyedSubscript:@"hsc"];
  [*(a1 + 32) setResponseCode:?];
  _objc_release(v7);
  _objc_release(v8);
  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) status];
  (*(v9 + 16))();
  _objc_release(v10);
  v16 = [[AKAuthenticationServerResponse alloc] initWithSRPContext:*(a1 + 40)];
  v11 = [*(a1 + 32) _tokenGenerationInfoForContext:*(a1 + 40)];
  [(AKAuthenticationServerResponse *)v16 reportCriticalAuthTokensTelemetryForFlow:1 withTokenGenerationInfo:?];
  _objc_release(v11);
  if (*(*(a1 + 32) + 48) == 503)
  {
    v4 = *(*(a1 + 32) + 32);
    v3 = *(a1 + 32);
    v6 = [*(a1 + 40) configurationParameters];
    v5 = [v3 _urlRequestFromAuthParameters:?];
    [v4 reportTelemetryForRequest:? backoffType:?];
    _objc_release(v5);
    _objc_release(v6);
  }

  v13 = 0;
  if (v17)
  {
    v2 = _objc_retain(0);
  }

  else
  {
    v14 = v18[0];
    v13 = 1;
    v2 = _objc_retain(v18[0]);
  }

  v15 = v2;
  if (v13)
  {
    _objc_release(v14);
  }

  (*(*(*(a1 + 32) + 8) + 16))();
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
}

id sub_100189E44(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = _objc_retain(location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

id sub_10018A638(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_100374950;
  qword_100374950 = v2;
  _objc_release(v3);
  v4 = +[NSMutableDictionary dictionary];
  v5 = *(qword_100374950 + 16);
  *(qword_100374950 + 16) = v4;
  _objc_release(v5);
  v6 = +[NSMutableDictionary dictionary];
  v7 = *(qword_100374950 + 8);
  *(qword_100374950 + 8) = v6;
  _objc_release(v7);
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("com.apple.authkit.piggybacking-request", v13);
  v9 = *(qword_100374950 + 32);
  *(qword_100374950 + 32) = v8;
  _objc_release(v9);
  _objc_release(v13);
  v10 = objc_opt_new();
  v11 = *(qword_100374950 + 40);
  *(qword_100374950 + 40) = v10;
  _objc_release(v11);
  return [*(qword_100374950 + 40) setQualityOfService:17];
}

void sub_10018A888(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id obj)
{
  *(v12 - 32) = a1;
  *(v12 - 36) = a2;
  objc_sync_exit(obj);
  _Unwind_Resume(*(v12 - 32));
}

void sub_10018B914(uint64_t a1, char a2, id obj)
{
  v35 = a1;
  v34 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v32[1] = a1;
  if (location)
  {
    v32[0] = _AKLogSystem();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v32[0];
      type = v31;
      sub_10001CEEC(v30);
      _os_log_impl(&_mh_execute_header, log, type, "Accepting session finished successfully", v30, 2u);
    }

    objc_storeStrong(v32, 0);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v29 = _AKSignpostGetNanoseconds() / 1000000000.0;
    v28 = _AKSignpostLogSystem();
    v27 = 2;
    v26 = *(a1 + 48);
    if (v26 && v26 != -1 && os_signpost_enabled(v28))
    {
      v10 = v28;
      v11 = v27;
      spid = v26;
      sub_10001CEEC(v25);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, spid, "PiggybackingProcessPushPayload", "", v25, 2u);
    }

    objc_storeStrong(&v28, 0);
    v24 = _AKSignpostLogSystem();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sub_100034384(v39, *(a1 + 48), *&v29);
      _os_log_impl(&_mh_execute_header, v24, v23, "END [%lld] %fs:PiggybackingProcessPushPayload ", v39, 0x16u);
    }

    objc_storeStrong(&v24, 0);
  }

  else
  {
    v22 = _AKLogSystem();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v38, location);
      _os_log_error_impl(&_mh_execute_header, v22, v21, "Accepting session finished with error: %@", v38, 0xCu);
    }

    objc_storeStrong(&v22, 0);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v20 = _AKSignpostGetNanoseconds() / 1000000000.0;
    v19 = _AKSignpostLogSystem();
    v18 = OS_SIGNPOST_INTERVAL_END;
    v17 = *(a1 + 48);
    if (v17 && v17 != -1 && os_signpost_enabled(v19))
    {
      sub_100034290(v37, [location code]);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v18, v17, "PiggybackingProcessPushPayload", " Error=%{public,signpost.telemetry:number1,name=Error}d ", v37, 8u);
    }

    objc_storeStrong(&v19, 0);
    oslog = _AKSignpostLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000343D0(v36, *(a1 + 48), *&v20, [location code]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:PiggybackingProcessPushPayload  Error=%{public,signpost.telemetry:number1,name=Error}d ", v36, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v7 = +[AKAppleIDPushHelperService sharedService];
  [v7 tearDownLoginNotifications];
  _objc_release(v7);
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) transactionId];
  [v8 _removeAcceptingControllerForTransaction:?];
  _objc_release(v9);
  objc_storeStrong(&location, 0);
}

void sub_10018C23C(id a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    v4 = v6;
    sub_10001CEEC(v5);
    _os_log_debug_impl(&_mh_execute_header, log, v4, "IP mismatch alert - taking user to the Wi-Fi settings", v5, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v1 = [NSURL URLWithString:@"prefs:root=WIFI"];
  [v2 openSensitiveURL:? withOptions:?];
  _objc_release(v1);
  _objc_release(v2);
}

void sub_10018C358(id a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v4 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v4;
    sub_10001CEEC(v3);
    _os_log_debug_impl(&_mh_execute_header, log, type, "IP mismatch alert - user canceled the alert", v3, 2u);
  }

  objc_storeStrong(location, 0);
}

void sub_10018C678(uint64_t a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v7 = *(*(a1 + 32) + 16);
  v8 = [*(a1 + 40) transactionId];
  v12[0] = [v7 objectForKeyedSubscript:?];
  _objc_release(v8);
  if (v12[0])
  {
    [v12[0] setPayload:*(a1 + 40)];
    location = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v10;
      sub_10001CEEC(v9);
      _os_log_impl(&_mh_execute_header, log, type, "Processing pending reply!", v9, 2u);
    }

    objc_storeStrong(&location, 0);
    v1 = [v12[0] condition];
    [v1 lock];
    _objc_release(v1);
    v2 = [v12[0] condition];
    [v2 signal];
    _objc_release(v2);
    v3 = [v12[0] condition];
    [v3 unlock];
    _objc_release(v3);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  objc_storeStrong(v12, 0);
}

id sub_10018CA0C(void *a1)
{
  v1 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  _objc_release(v3);
  result = a1;
  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = objc_alloc_init(AKPiggybackAcceptingController);
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
    _objc_release(v7);
    return [*(a1[4] + 8) setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:a1[5]];
  }

  return result;
}

void sub_10018CD90(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained _stopProximityController];
  _objc_release(WeakRetained);
  objc_storeWeak((a1[4] + 24), 0);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_10018E58C(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v4 = +[AKAppleIDPushHelperService sharedService];
  [v4 setEnableCriticalReliability:0];
  _objc_release(v4);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_10018E660(id a1, NSHTTPURLResponse *a2, NSData *a3, NSError *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  oslog[1] = a1;
  if (v8)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v11, v8);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Circle request failed with error: %@", v11, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_10018E7A8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) payload];
  v3 = [v4 transactionId];
  [v2 setObject:v1 forKeyedSubscript:?];
  _objc_release(v3);
  _objc_release(v4);
}

void sub_10018E844(uint64_t a1)
{
  v95[2] = a1;
  v95[1] = a1;
  v94 = _os_activity_create(&_mh_execute_header, "authkit/circle-operation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v95[0] = v94;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v94, &state);
  location = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [*(a1 + 32) payload];
    sub_1000194D4(v108, v43);
    _os_log_impl(&_mh_execute_header, location, type, "Starting circle operation with context: %@", v108, 0xCu);
    _objc_release(v43);
  }

  objc_storeStrong(&location, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  [*(a1 + 40) lock];
  while (1)
  {
    v88 = 0;
    v42 = 0;
    if (![WeakRetained isCancelled])
    {
      v42 = 0;
      if (!*(*(*(a1 + 96) + 8) + 40))
      {
        v89 = [*(a1 + 48) payload];
        v88 = 1;
        v42 = 0;
        if (!v89)
        {
          [*(a1 + 56) timeIntervalSinceNow];
          v42 = v1 > 0.0;
        }
      }
    }

    if (v88)
    {
      _objc_release(v89);
    }

    if (!v42)
    {
      break;
    }

    v87 = _AKLogSystem();
    v86 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v87;
      v41 = [WeakRetained isCancelled];
      v2 = @"YES";
      if ((v41 & 1) == 0)
      {
        v2 = @"NO";
      }

      v39 = v2;
      [*(a1 + 56) timeIntervalSinceNow];
      v38 = [NSNumber numberWithDouble:v3];
      sub_10004DCC8(v107, v39, v38, *(*(*(a1 + 96) + 8) + 40));
      _os_log_impl(&_mh_execute_header, v40, v86, "Waiting... %@ - (%@) - %@", v107, 0x20u);
      _objc_release(v38);
    }

    objc_storeStrong(&v87, 0);
    v37 = *(a1 + 40);
    v36 = [NSDate dateWithTimeIntervalSinceNow:1.0];
    [v37 waitUntilDate:?];
    _objc_release(v36);
  }

  [*(a1 + 40) unlock];
  queue = *(*(a1 + 64) + 32);
  v79 = _NSConcreteStackBlock;
  v80 = -1073741824;
  v81 = 0;
  v82 = sub_10018FE5C;
  v83 = &unk_10031F078;
  v84 = _objc_retain(*(a1 + 64));
  v85 = _objc_retain(*(a1 + 32));
  dispatch_sync(queue, &v79);
  if ([WeakRetained isCancelled])
  {
    v78 = _AKLogSystem();
    v77 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [*(a1 + 32) payload];
      sub_1000194D4(v106, v34);
      _os_log_impl(&_mh_execute_header, v78, v77, "Cancelled piggybacking request: %@", v106, 0xCu);
      _objc_release(v34);
    }

    objc_storeStrong(&v78, 0);
    v76 = [NSError ak_errorWithCode:-7064];
    v4 = *(a1 + 112);
    v5 = *(a1 + 120);
    v75 = _AKSignpostGetNanoseconds() / 1000000000.0;
    v74 = _AKSignpostLogSystem();
    v73 = OS_SIGNPOST_INTERVAL_END;
    v72 = *(a1 + 112);
    if (v72 && v72 != -1 && os_signpost_enabled(v74))
    {
      sub_10003346C(v105, *(a1 + 72), [v76 code]);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, v73, v72, "PiggyCircleRequest", " CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v105, 0x12u);
    }

    objc_storeStrong(&v74, 0);
    v71 = _AKSignpostLogSystem();
    v70 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000334C0(v104, *(a1 + 112), *&v75, *(a1 + 72), [v76 code]);
      _os_log_impl(&_mh_execute_header, v71, v70, "END [%lld] %fs:PiggyCircleRequest  CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v104, 0x26u);
    }

    objc_storeStrong(&v71, 0);
    v33 = [*(a1 + 32) authContext];
    v6 = *(a1 + 80);
    [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.piggybackingCircleRequest" account:? error:?];
    _objc_release(v33);
    (*(*(a1 + 88) + 16))();
    objc_storeStrong(&v76, 0);
  }

  else if (*(*(*(a1 + 96) + 8) + 40))
  {
    v7 = *(a1 + 112);
    v8 = *(a1 + 120);
    v69 = _AKSignpostGetNanoseconds() / 1000000000.0;
    v68 = _AKSignpostLogSystem();
    v67 = OS_SIGNPOST_INTERVAL_END;
    v66 = *(a1 + 112);
    if (v66 && v66 != -1 && os_signpost_enabled(v68))
    {
      sub_10003346C(v103, *(a1 + 72), [*(*(*(a1 + 96) + 8) + 40) code]);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v68, v67, v66, "PiggyCircleRequest", " CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v103, 0x12u);
    }

    objc_storeStrong(&v68, 0);
    v65 = _AKSignpostLogSystem();
    v64 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000334C0(v102, *(a1 + 112), *&v69, *(a1 + 72), [*(*(*(a1 + 96) + 8) + 40) code]);
      _os_log_impl(&_mh_execute_header, v65, v64, "END [%lld] %fs:PiggyCircleRequest  CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v102, 0x26u);
    }

    objc_storeStrong(&v65, 0);
    v32 = [*(a1 + 32) authContext];
    v9 = *(a1 + 80);
    v10 = *(*(*(a1 + 96) + 8) + 40);
    [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.piggybackingCircleRequest" account:? error:?];
    _objc_release(v32);
    v11 = *(*(*(a1 + 96) + 8) + 40);
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    [*(a1 + 56) timeIntervalSinceNow];
    if (v12 >= 0.0)
    {
      v51 = _AKLogSystem();
      v50 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [*(a1 + 32) payload];
        v23 = [*(a1 + 48) payload];
        sub_10001B098(v98, v24, v23);
        _os_log_impl(&_mh_execute_header, v51, v50, "Circle request (%@) completed with response: %@", v98, 0x16u);
        _objc_release(v23);
        _objc_release(v24);
      }

      objc_storeStrong(&v51, 0);
      v22 = [*(a1 + 32) authContext];
      v17 = *(a1 + 80);
      [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.piggybackingCircleRequest" account:? error:?];
      _objc_release(v22);
      v18 = *(a1 + 112);
      v19 = *(a1 + 120);
      v49 = _AKSignpostGetNanoseconds() / 1000000000.0;
      v48 = _AKSignpostLogSystem();
      v47 = OS_SIGNPOST_INTERVAL_END;
      v46 = *(a1 + 112);
      if (v46 && v46 != -1 && os_signpost_enabled(v48))
      {
        sub_10003346C(v97, *(a1 + 72), 0);
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, v47, v46, "PiggyCircleRequest", " CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v97, 0x12u);
      }

      objc_storeStrong(&v48, 0);
      v45 = _AKSignpostLogSystem();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000334C0(v96, *(a1 + 112), *&v49, *(a1 + 72), 0);
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:PiggyCircleRequest  CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v96, 0x26u);
      }

      objc_storeStrong(&v45, 0);
      v21 = (*(a1 + 88) + 16);
      v20 = [*(a1 + 48) payload];
      (*v21)();
      _objc_release(v20);
    }

    else
    {
      v63 = _AKLogSystem();
      v62 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [*(a1 + 32) payload];
        sub_1000194D4(v101, v31);
        _os_log_impl(&_mh_execute_header, v63, v62, "Timeout for piggybacking request: %@", v101, 0xCu);
        _objc_release(v31);
      }

      objc_storeStrong(&v63, 0);
      if ([*(a1 + 32) _notifyOfTimeout])
      {
        v61 = _AKLogSystem();
        v60 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v29 = v61;
          v30 = v60;
          sub_10001CEEC(v59);
          _os_log_error_impl(&_mh_execute_header, v29, v30, "Notifying the other side that we're really done", v59, 2u);
        }

        objc_storeStrong(&v61, 0);
        [*(a1 + 32) setWaitForReply:0];
        v28 = [*(a1 + 32) payload];
        [v28 setClientErrorCode:-9002];
        _objc_release(v28);
        v13 = [*(a1 + 64) performCircleRequestWithContext:*(a1 + 32) completion:0];
      }

      v58 = [NSError ak_errorWithCode:-7029];
      v14 = *(a1 + 112);
      v15 = *(a1 + 120);
      v57 = _AKSignpostGetNanoseconds() / 1000000000.0;
      v56 = _AKSignpostLogSystem();
      v55 = OS_SIGNPOST_INTERVAL_END;
      v54 = *(a1 + 112);
      if (v54 && v54 != -1 && os_signpost_enabled(v56))
      {
        sub_10003346C(v100, *(a1 + 72), [v58 code]);
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, v55, v54, "PiggyCircleRequest", " CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v100, 0x12u);
      }

      objc_storeStrong(&v56, 0);
      oslog = _AKSignpostLogSystem();
      v52 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000334C0(v99, *(a1 + 112), *&v57, *(a1 + 72), [v58 code]);
        _os_log_impl(&_mh_execute_header, oslog, v52, "END [%lld] %fs:PiggyCircleRequest  CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v99, 0x26u);
      }

      objc_storeStrong(&oslog, 0);
      v27 = [*(a1 + 32) authContext];
      v16 = *(a1 + 80);
      [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.piggybackingCircleRequest" account:? error:?];
      _objc_release(v27);
      v26 = *(a1 + 88);
      v25 = [NSError ak_errorWithCode:-7029];
      (*(v26 + 16))(v26, 0);
      _objc_release(v25);
      objc_storeStrong(&v58, 0);
    }
  }

  objc_storeStrong(&v85, 0);
  objc_storeStrong(&v84, 0);
  objc_storeStrong(&WeakRetained, 0);
  os_activity_scope_leave(&state);
  objc_storeStrong(v95, 0);
}

void sub_10018FE5C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) payload];
  v2 = [v3 transactionId];
  [v1 removeObjectForKey:?];
  _objc_release(v2);
  _objc_release(v3);
}

void sub_10018FEEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = a1;
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v27 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v26 = _AKSignpostLogSystem();
  v25 = OS_SIGNPOST_INTERVAL_END;
  v24 = *(a1 + 80);
  if (v24 && v24 != -1 && os_signpost_enabled(v26))
  {
    sub_10003346C(v37, *(a1 + 32), [v29 code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v25, v24, "PiggyExecuteRequest", " CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v37, 0x12u);
  }

  objc_storeStrong(&v26, 0);
  v23 = _AKSignpostLogSystem();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000334C0(v36, *(a1 + 80), *&v27, *(a1 + 32), [v29 code]);
    _os_log_impl(&_mh_execute_header, v23, v22, "END [%lld] %fs:PiggyExecuteRequest  CircleStep=%{public,signpost.telemetry:string2,name=CircleStep}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v36, 0x26u);
  }

  objc_storeStrong(&v23, 0);
  v8 = [*(a1 + 40) payload];
  v9 = [v8 circleStep];
  _objc_release(v8);
  v21 = v9;
  if (v29)
  {
    oslog = _AKLogSystem();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v35, v29);
      _os_log_error_impl(&_mh_execute_header, oslog, v19, "Circle request failed with error: %@", v35, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v29);
    [*(a1 + 48) _processUIIfNeededForError:*(*(*(a1 + 72) + 8) + 40) circleStep:v21];
    [*(a1 + 56) lock];
    [*(a1 + 56) signal];
    [*(a1 + 56) unlock];
  }

  if (!v21)
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v34, v30);
      _os_log_impl(&_mh_execute_header, v18, v17, "Received response for circle (step 0) request: %@", v34, 0xCu);
    }

    objc_storeStrong(&v18, 0);
    v16 = [AKCircleRequestPayload payloadWithResponseData:v30 forCircleStep:v21];
    v7 = [v16 presenceSID];
    _objc_release(v7);
    if (v7)
    {
      v15 = _AKLogSystem();
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v16 presenceSID];
        sub_1000CFB9C(v33, v16, 1752392040, v6);
        _os_log_impl(&_mh_execute_header, v15, v14, "Circle (step 0) response payload (%@) received with presenceSID (%{mask.hash}@)", v33, 0x20u);
        _objc_release(v6);
      }

      objc_storeStrong(&v15, 0);
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v13 = _AKLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v32, v16);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Circle (step 0) response payload (%@) does not contain presenceSID, ignoring response", v32, 0xCu);
      }

      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

id sub_1001906F0(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = _objc_retain(location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

void sub_1001908A4(id a1)
{
  v1 = objc_alloc_init(AKGlobalConfigService);
  v2 = qword_100374968;
  qword_100374968 = v1;
  _objc_release(v2);
}

void sub_100190CA8(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  v10[0] = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v10[0];
    type = v9;
    sub_10001CEEC(v8);
    _os_log_impl(&_mh_execute_header, log, type, "Fetched global config after locale change.", v8, 2u);
  }

  objc_storeStrong(v10, 0);
  v3 = +[AKConfiguration sharedConfiguration];
  [v3 setLastKnownLocale:a1[4]];
  _objc_release(v3);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_10019167C(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = a1;
  v3 = a1[5];
  v4 = a1[6];
  v15 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v14 = _AKSignpostLogSystem();
  v13 = 2;
  v12 = a1[5];
  if (v12 && v12 != -1 && os_signpost_enabled(v14))
  {
    log = v14;
    type = v13;
    spid = v12;
    sub_10001CEEC(v11);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, log, type, spid, "FetchGlobalConfig", "", v11, 2u);
  }

  objc_storeStrong(&v14, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100034384(v19, a1[5], *&v15);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:FetchGlobalConfig ", v19, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void sub_1001918A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27 = 0;
  objc_storeStrong(&v27, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25[1] = a1;
  dispatch_source_cancel(*(a1 + 32));
  if (!v26 && location[0] || [*(a1 + 40) isRecoverableError:v26])
  {
    if (location[0])
    {
      v20 = [*(a1 + 48) _unsafe_updateCacheWithData:location[0]];
      queue = *(*(a1 + 48) + 8);
      v13 = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_100191CA4;
      v17 = &unk_10031F078;
      v18 = _objc_retain(*(a1 + 48));
      v19 = _objc_retain(v20);
      dispatch_async(queue, &v13);
      if ((*(a1 + 64) & 1) == 0)
      {
        v12 = objc_alloc_init(AKAgeRangeSettingsCache);
        [v12 updateAgeRangeCacheWithGlobalConfig:v20];
        objc_storeStrong(&v12, 0);
      }

      (*(*(a1 + 56) + 16))();
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v20, 0);
    }

    else
    {
      v23 = _AKLogSystem();
      v22 = 16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v7 = v23;
        v8 = v22;
        sub_10001CEEC(v21);
        _os_log_error_impl(&_mh_execute_header, v7, v8, "Global config fetch either timed out or was successful but there was no data!", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      v5 = *(a1 + 56);
      v6 = [NSError ak_errorWithCode:-7005];
      (*(v5 + 16))(v5, 0);
      _objc_release(v6);
    }
  }

  else
  {
    v25[0] = _AKLogSystem();
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v25[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v29, v26);
      _os_log_error_impl(&_mh_execute_header, v25[0], v24, "Global config fetch failed! Error: %@", v29, 0xCu);
    }

    objc_storeStrong(v25, 0);
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

id sub_100191CE0(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v4, *(a1 + 32));
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Global config fetch timed out, cancelling task: %@", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  return [*(a1 + 40) cancelDataTask:*(a1 + 32)];
}

id sub_1001953B4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_isKindOfClass())
  {
    v5 = _objc_retain(location[0]);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

void sub_100198E8C(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v32 = 0;
  objc_storeStrong(&v32, a3);
  v31 = a1;
  v29 = 0;
  v11 = 1;
  if (!v32)
  {
    v30 = [location[0] attestationHeaders];
    v29 = 1;
    v11 = [v30 count] == 0;
  }

  if (v29)
  {
    _objc_release(v30);
  }

  if (v11)
  {
    v28 = _AKLogSystem();
    v27 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      log = v28;
      type = v27;
      v8 = +[AKDevice currentDevice];
      v26 = _objc_retain(v8);
      sub_10001B098(v34, v26, v32);
      _os_log_error_impl(&_mh_execute_header, log, type, "Unable to get Attestation data for %@! Error: %@", v34, 0x16u);
      _objc_release(v8);
      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v28, 0);
    v4 = a1[8];
    v5 = [NSError ak_generalErrorWithCode:-8001 errorDomain:AKAnisetteErrorDomain underlyingError:v32];
    v4[2](v4, 0);
    _objc_release(v5);
    v25 = 1;
  }

  else
  {
    v24 = [a1[4] _anisetteHeadersFromAttestationData:location[0]];
    queue = dispatch_get_global_queue(0, 0);
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_100199328;
    v16 = &unk_100325150;
    v17 = _objc_retain(a1[5]);
    v18 = _objc_retain(location[0]);
    v19 = _objc_retain(a1[6]);
    v20 = _objc_retain(v24);
    v21 = _objc_retain(a1[4]);
    v22 = _objc_retain(a1[7]);
    v23 = _objc_retain(a1[8]);
    dispatch_async(queue, &v12);
    _objc_release(queue);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v24, 0);
    v25 = 0;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

void sub_100199328(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  v32 = *(a1 + 32);
  v33 = [*(a1 + 40) attestationHeaders];
  [v32 addEntriesFromDictionary:?];
  _objc_release(v33);
  [*(a1 + 48) addEntriesFromDictionary:*(a1 + 56)];
  v35 = [*(*(a1 + 64) + 128) proxiedDevice];
  v36 = [v35 uniqueDeviceIdentifier];
  _objc_release(v36);
  _objc_release(v35);
  if (v36)
  {
    location[0] = _AKLogSystem();
    v38 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v30 = location[0];
      v31 = v38;
      sub_10001CEEC(v37);
      _os_log_impl(&_mh_execute_header, v30, v31, "Context has provieded UDID for proxied device.", v37, 2u);
    }

    objc_storeStrong(location, 0);
    v27 = [*(*(a1 + 64) + 128) proxiedDevice];
    v26 = [v27 uniqueDeviceIdentifier];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
    _objc_release(v26);
    _objc_release(v27);
    v29 = [*(*(a1 + 64) + 128) proxiedDevice];
    v28 = [v29 uniqueDeviceIdentifier];
    [*(a1 + 48) setObject:? forKeyedSubscript:?];
    _objc_release(v28);
    _objc_release(v29);
  }

  v24 = [*(*(a1 + 64) + 128) proxiedDevice];
  v25 = [v24 color];
  _objc_release(v25);
  _objc_release(v24);
  if (v25)
  {
    v23 = [*(*(a1 + 64) + 128) proxiedDevice];
    v22 = [v23 color];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
    _objc_release(v22);
    _objc_release(v23);
  }

  v20 = [*(*(a1 + 64) + 128) proxiedDevice];
  v21 = [v20 enclosureColor];
  _objc_release(v21);
  _objc_release(v20);
  if (v21)
  {
    v19 = [*(*(a1 + 64) + 128) proxiedDevice];
    v18 = [v19 enclosureColor];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
    _objc_release(v18);
    _objc_release(v19);
  }

  v16 = [*(*(a1 + 64) + 128) proxiedDevice];
  v17 = [v16 locale];
  _objc_release(v17);
  _objc_release(v16);
  if (v17)
  {
    v15 = [*(*(a1 + 64) + 128) proxiedDevice];
    v14 = [v15 locale];
    v13 = [v14 localeIdentifier];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
    _objc_release(v13);
    _objc_release(v14);
    _objc_release(v15);
  }

  v11 = [*(*(a1 + 64) + 128) companionDevice];
  v12 = [v11 uniqueDeviceIdentifier];
  _objc_release(v12);
  _objc_release(v11);
  if (v12)
  {
    v8 = [*(*(a1 + 64) + 128) companionDevice];
    v7 = [v8 uniqueDeviceIdentifier];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
    _objc_release(v7);
    _objc_release(v8);
    v10 = [*(*(a1 + 64) + 128) companionDevice];
    v9 = [v10 uniqueDeviceIdentifier];
    [*(a1 + 72) setObject:? forKeyedSubscript:?];
    _objc_release(v9);
    _objc_release(v10);
  }

  v6 = [*(*(a1 + 64) + 128) appProvidedContext];
  _objc_release(v6);
  if (v6)
  {
    v5 = [*(*(a1 + 64) + 128) appProvidedContext];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
    _objc_release(v5);
  }

  v1 = [*(a1 + 32) copy];
  [*(a1 + 72) setObject:? forKeyedSubscript:?];
  _objc_release(v1);
  v2 = [*(a1 + 48) copy];
  [*(a1 + 72) setObject:? forKeyedSubscript:?];
  _objc_release(v2);
  v3 = (*(a1 + 80) + 16);
  v4 = [*(a1 + 72) copy];
  (*v3)();
  _objc_release(v4);
}

void sub_10019A360(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[16] altDSID];
  [v1 _clearDeviceListCacheForAltDSID:?];
  _objc_release(v2);
}

void sub_10019A5B8(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C37D8(v8, *(a1 + 32), v6 & 1, location);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Clear device list cache completed for context - %@ with status - %d and error - %{private}@", v8, 0x1Cu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&location, 0);
}

void sub_10019C72C(uint64_t a1, const void *a2, id obj, void *a4)
{
  v29 = a1;
  v28 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25[1] = a1;
  if (v26)
  {
    v25[0] = _AKLogSystem();
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v25[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v32, v26);
      _os_log_error_impl(&_mh_execute_header, v25[0], v24, "Error getting certs from DeviceIdentity: %@", v32, 0xCu);
    }

    objc_storeStrong(v25, 0);
    if (*(a1 + 48))
    {
      (*(*(a1 + 48) + 16))();
    }

    v23 = 1;
  }

  else if (v28 && [location count] == 2)
  {
    v20 = [*(a1 + 32) _attestationWithSecCertRefs:location];
    v19 = [*(a1 + 32) _isCachedAttestation:v20];
    v8 = +[AKConfiguration sharedConfiguration];
    v9 = [v8 shouldEnableAttestationLogging];
    _objc_release(v8);
    if (v9)
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (v19)
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        sub_1000194D4(v30, v4);
        _os_log_impl(&_mh_execute_header, v18, v17, "Attestation matches cached value? - [%@]", v30, 0xCu);
      }

      objc_storeStrong(&v18, 0);
    }

    v16 = 0;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v14 = 0;
    v7 = [v5 _signatureForDataFields:v6 withRefKey:v28 error:&v14];
    objc_storeStrong(&v16, v14);
    v15 = v7;
    if (v28)
    {
      CFRelease(v28);
    }

    v28 = 0;
    if (v16)
    {
      if (*(a1 + 48))
      {
        (*(*(a1 + 48) + 16))();
      }

      v23 = 1;
    }

    else
    {
      if (*(a1 + 48))
      {
        (*(*(a1 + 48) + 16))();
      }

      v23 = 0;
    }

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v20, 0);
    if (!v23)
    {
      v23 = 0;
    }
  }

  else
  {
    v22 = _AKLogSystem();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100074370(v31, v28, [location count]);
      _os_log_error_impl(&_mh_execute_header, v22, v21, "BIK(%@) or Certificates(%lu) not available", v31, 0x16u);
    }

    objc_storeStrong(&v22, 0);
    if (*(a1 + 48))
    {
      v10 = *(a1 + 48);
      v11 = [NSError errorWithDomain:AKGenericErrorDomain code:-17001 userInfo:?];
      (*(v10 + 16))(v10, 0, 0, 0);
      _objc_release(v11);
    }

    v23 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&location, 0);
}

void sub_10019D330(void *a1, void *a2, void *a3, void *a4)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v10 = 0;
  objc_storeStrong(&v10, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = sub_1001A0A60();
  if (!v7)
  {
    dlerror();
    abort_report_np();
  }

  v7(location, v10, v9, v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

void sub_10019D44C(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15[1] = a1;
  if (!v16 && [location[0] length])
  {
    if ([location[0] length] && objc_msgSend(v17, "count") == 2)
    {
      v10 = [*(a1 + 32) _attestationWithSecCertRefs:v17];
      if (*(a1 + 40))
      {
        (*(*(a1 + 40) + 16))();
      }

      objc_storeStrong(&v10, 0);
      v13 = 0;
    }

    else
    {
      oslog = _AKLogSystem();
      v11 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v6 = [location[0] length];
        sub_100034384(v19, v6, [v17 count]);
        _os_log_error_impl(&_mh_execute_header, oslog, v11, "Invalid host signature(%lu) or certificates(%lu).", v19, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      if (*(a1 + 40))
      {
        v4 = *(a1 + 40);
        v5 = [NSError errorWithDomain:AKAttestationErrorDomain code:-10001 userInfo:?];
        (*(v4 + 16))(v4, 0);
        _objc_release(v5);
      }

      v13 = 1;
    }
  }

  else
  {
    v15[0] = _AKLogSystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v20, v16);
      _os_log_error_impl(&_mh_execute_header, v15[0], v14, "Error getting signature from host: %@", v20, 0xCu);
    }

    objc_storeStrong(v15, 0);
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }

    v13 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void sub_10019DA28(os_unfair_lock_s *a1, void *a2)
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  os_unfair_lock_lock(v3);
  (*(location + 2))();
  os_unfair_lock_unlock(v3);
  objc_storeStrong(&location, 0);
}

void sub_10019DA8C(uint64_t a1)
{
  [*(a1 + 32) setBaaAttestationHash:*(a1 + 40)];
  v2 = +[AKConfiguration sharedConfiguration];
  [v2 setStrongDeviceIdentityMarker:*(a1 + 40)];
  _objc_release(v2);
}

void sub_10019DB04(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v5, location[0]);
      _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Failed to refresh BAA device token after detecting new BAA cert %@.", v5, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_10019DD18(NSObject *a1, void *a2, id obj, void *a4)
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v9, v7);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "BAA certs deleted for AuthKit label. Error: {%@}", v9, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_10019DFE0(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17[1] = a1;
  if (v18)
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000333DC(v20, v18);
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error getting DCRT from MobileActivation Engine: %{public}@", v20, 0xCu);
    }

    objc_storeStrong(&v7, 0);
    [AKAnalyticsSender sendAnalyticsEvent:a1[4] withError:v18];
    if (a1[5])
    {
      (*(a1[5] + 16))();
    }

    goto LABEL_23;
  }

  if (!location[0])
  {
    v17[0] = _AKLogSystem();
    v16 = 16;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_ERROR))
    {
      log = v17[0];
      type = v16;
      sub_10001CEEC(v15);
      _os_log_error_impl(&_mh_execute_header, log, type, "Neither received a certificate nor an error", v15, 2u);
    }

    objc_storeStrong(v17, 0);
    v14 = [NSError ak_attestationErrorWithCode:-10006 underlyingError:v18];
    [AKAnalyticsSender sendAnalyticsEvent:a1[4] withError:v14];
    if (a1[5])
    {
      (*(a1[5] + 16))();
    }

    v13 = 1;
    objc_storeStrong(&v14, 0);
    goto LABEL_24;
  }

  v12 = _AKLogSystem();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100036FE8(v22, [location[0] count]);
    _os_log_debug_impl(&_mh_execute_header, v12, v11, "Received a total of %zd DCRT", v22, 0xCu);
  }

  objc_storeStrong(&v12, 0);
  if ([location[0] count] == 2)
  {
    [AKAnalyticsSender sendAnalyticsEvent:a1[4] withError:0];
    if (a1[5])
    {
      (*(a1[5] + 16))();
    }

LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  oslog = _AKLogSystem();
  v9 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_100036FE8(v21, [location[0] count]);
    _os_log_error_impl(&_mh_execute_header, oslog, v9, "Expected 2 certificates. Received a total of %zd certificates for DCRT", v21, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v8 = [NSError ak_attestationErrorWithCode:-10007 underlyingError:v18];
  [AKAnalyticsSender sendAnalyticsEvent:a1[4] withError:v8];
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  v13 = 1;
  objc_storeStrong(&v8, 0);
LABEL_24:
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_10019EC8C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v34 = 0;
  objc_storeStrong(&v34, a3);
  v33[1] = a1;
  if (v34)
  {
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    v27 = 0;
  }

  else
  {
    v33[0] = [*(a1 + 32) _attestationWithSecCertRefs:location[0]];
    v32 = 0;
    v3 = *(a1 + 40);
    v30 = 0;
    v13 = [AKSecureKey createOSVersionAttestationRefKeyWithContext:v3 accessControl:0 error:&v30];
    objc_storeStrong(&v32, v30);
    v31 = v13;
    if (v13)
    {
      v26 = _AKLogSystem();
      v25 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v37, v31);
        _os_log_debug_impl(&_mh_execute_header, v26, v25, "Created OS bound RefKey %@", v37, 0xCu);
      }

      objc_storeStrong(&v26, 0);
      v24 = 0;
      v4 = *(a1 + 32);
      v5 = *(a1 + 48);
      v6 = *(a1 + 40);
      v23 = 0;
      [v4 _updateRefKeyWithNonce:v5 context:v6 refkey:v31 error:&v23];
      objc_storeStrong(&v24, v23);
      if (v24)
      {
        if (v31)
        {
          CFRelease(v31);
        }

        v31 = 0;
        if (*(a1 + 56))
        {
          (*(*(a1 + 56) + 16))();
        }

        v27 = 1;
      }

      else
      {
        v22 = 0;
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v20 = 0;
        v12 = [v7 _retrieveDAK:v8 error:&v20];
        objc_storeStrong(&v22, v20);
        v21 = v12;
        if (v22)
        {
          if (v31)
          {
            CFRelease(v31);
          }

          v31 = 0;
          if (*(a1 + 56))
          {
            (*(*(a1 + 56) + 16))();
          }

          v27 = 1;
        }

        else
        {
          v19 = 0;
          v9 = *(a1 + 32);
          v10 = *(a1 + 40);
          v17 = 0;
          v11 = [v9 _getAttestationData:v10 rk:v31 dak:v21 error:&v17];
          objc_storeStrong(&v19, v17);
          v18 = v11;
          if (v31)
          {
            CFRelease(v31);
          }

          v31 = 0;
          if (v21)
          {
            CFRelease(v21);
          }

          v21 = 0;
          oslog = _AKLogSystem();
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            sub_10001B098(v36, v18, v19);
            _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Created attestation data = %@ with error = %@", v36, 0x16u);
          }

          objc_storeStrong(&oslog, 0);
          if (*(a1 + 56))
          {
            (*(*(a1 + 56) + 16))();
          }

          v27 = 1;
          objc_storeStrong(&v18, 0);
          objc_storeStrong(&v19, 0);
        }

        objc_storeStrong(&v22, 0);
      }

      objc_storeStrong(&v24, 0);
    }

    else
    {
      v29 = _AKLogSystem();
      v28 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v38, v32);
        _os_log_error_impl(&_mh_execute_header, v29, v28, "Attested OS version wont be reported due to failure to create OS bound RefKey: %@", v38, 0xCu);
      }

      objc_storeStrong(&v29, 0);
      if (*(a1 + 56))
      {
        (*(*(a1 + 56) + 16))();
      }

      v27 = 1;
    }

    objc_storeStrong(&v32, 0);
    objc_storeStrong(v33, 0);
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_10019F7FC(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

id sub_10019F860()
{
  v2 = sub_1001A0BD4();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

id sub_10019F8C8()
{
  v2 = sub_1001A0D48();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

id sub_10019F930()
{
  v2 = sub_1001A0EBC();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

id sub_10019F998()
{
  v2 = sub_1001A1030();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

id sub_10019FA00()
{
  v2 = sub_1001A11A4();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

id sub_10019FA68()
{
  v2 = sub_1001A1600();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

id sub_10019FAD0()
{
  v2 = sub_1001A1774();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

id sub_10019FB38()
{
  v2 = sub_1001A18E8();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

id sub_10019FBA0()
{
  v2 = sub_1001A1A5C();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

id sub_10019FD68()
{
  v2 = sub_1001A1BD0();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

void sub_10019FF5C(id a1)
{
  v1 = +[AKURLBag sharedBag];
  qword_100374988 = [v1 baaValidity];
  _objc_release(v1);
}

uint64_t sub_1001A0728()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100374998;
  v13 = qword_100374998;
  if (!qword_100374998)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A0830;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_1001A0830(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_1001A0830(uint64_t a1)
{
  v1 = sub_1001A089C();
  v2 = dlsym(v1, "DeviceIdentityIssueClientCertificateWithCompletion");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100374998 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001A089C()
{
  v2 = 0;
  v1 = sub_1001A0918(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t sub_1001A0918(uint64_t a1)
{
  v10 = a1;
  v8 = qword_1003749A0;
  v9 = qword_1003749A0;
  if (!qword_1003749A0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A09CC;
    v6 = &unk_100322AA0;
    v7 = v10;
    sub_1001A09CC(&v2);
  }

  return qword_1003749A0;
}

uint64_t sub_1001A09CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1003749A0 = result;
  return result;
}

uint64_t sub_1001A0A60()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003749A8;
  v13 = qword_1003749A8;
  if (!qword_1003749A8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A0B68;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_1001A0B68(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_1001A0B68(uint64_t a1)
{
  v1 = sub_1001A089C();
  v2 = dlsym(v1, "DeviceIdentityCreateHostSignatureWithCompletion");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003749A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001A0BD4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003749B0;
  v13 = qword_1003749B0;
  if (!qword_1003749B0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A0CDC;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_1001A0CDC(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_1001A0CDC(uint64_t a1)
{
  v1 = sub_1001A089C();
  v2 = dlsym(v1, "kMAOptionsBAAOIDDeviceOSInformation");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003749B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001A0D48()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003749B8;
  v13 = qword_1003749B8;
  if (!qword_1003749B8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A0E50;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_1001A0E50(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_1001A0E50(uint64_t a1)
{
  v1 = sub_1001A089C();
  v2 = dlsym(v1, "kMAOptionsBAAOIDProductType");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003749B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001A0EBC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003749C0;
  v13 = qword_1003749C0;
  if (!qword_1003749C0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A0FC4;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_1001A0FC4(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_1001A0FC4(uint64_t a1)
{
  v1 = sub_1001A089C();
  v2 = dlsym(v1, "kMAOptionsBAAOIDDeviceIdentifiers");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003749C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001A1030()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003749C8;
  v13 = qword_1003749C8;
  if (!qword_1003749C8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1001A1138;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_1001A1138(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}