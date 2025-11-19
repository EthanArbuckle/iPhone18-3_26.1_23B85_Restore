void sub_1000B5210(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [*(a1 + 32) _handleSecondFactorUICompletionWithCode:location[0] error:v5 idmsData:*(a1 + 40) piggybacking:*(a1 + 72) & 1 initialAuthResponse:*(a1 + 48) context:*(a1 + 56) completion:*(a1 + 64)];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B5888(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  v27 = a1;
  if ([v28 ak_isUserCancelError])
  {
    v8 = *(a1 + 48);
    v7 = v28;
    v31 = AKAuthenticationDidPerformInteractiveAuth;
    v32 = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v9 = [v7 ak_errorByAppendingUserInfo:?];
    (*(v8 + 16))(v8, 0);
    _objc_release(v9);
    _objc_release(v10);
    v26 = 1;
  }

  else
  {
    v5 = [v28 domain];
    v6 = 0;
    if ([v5 isEqualToString:AKAppleIDAuthenticationErrorDomain])
    {
      v6 = [v28 code] == -7065;
    }

    _objc_release(v5);
    if (v6)
    {
      (*(*(a1 + 48) + 16))();
      v26 = 1;
    }

    else
    {
      v25 = [*(a1 + 32) username];
      v24 = [*(a1 + 40) _srpAuthContextHelperWithContext:*(a1 + 32)];
      [v24 setAuthKitAccount:location[0]];
      [v24 setPasscodeAuthEnabled:{objc_msgSend(*(a1 + 32), "isContextEligibleForPasscodeAuth")}];
      if (*(a1 + 56) == 2)
      {
        [v24 setPasscodeAuth:1];
      }

      else if (*(a1 + 56) == 1)
      {
        [v24 setBiometricAuth:1];
      }

      else
      {
        v23 = _AKLogSystem();
        v22 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10006A654(v30, *(a1 + 56));
          _os_log_error_impl(&_mh_execute_header, v23, v22, "Unsupported prompt type encountered: %d", v30, 8u);
        }

        objc_storeStrong(&v23, 0);
      }

      v4 = *(a1 + 40);
      v3 = v24;
      v13 = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_1000B5D64;
      v17 = &unk_100322190;
      v21 = _objc_retain(*(a1 + 48));
      v18 = _objc_retain(*(a1 + 40));
      v19 = _objc_retain(v25);
      v20 = _objc_retain(*(a1 + 32));
      [v4 _performSRPAuthenticationWithContext:v3 completion:&v13];
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
      v26 = 0;
    }
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B5D64(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5[1] = a1;
  if (v6)
  {
    v5[0] = _AKLogSystem();
    if (os_log_type_enabled(v5[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v8, v6);
      _os_log_error_impl(&_mh_execute_header, v5[0], OS_LOG_TYPE_ERROR, "Passwordless auth failed: %@", v8, 0xCu);
    }

    objc_storeStrong(v5, 0);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) _handleVerificationCompletionForUsername:*(a1 + 40) password:0 serverResponse:location[0] didShowServerUI:0 continuationData:0 error:0 context:*(a1 + 48) completion:*(a1 + 56)];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B6458(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [*(a1 + 32) _handleGrandslamResponse:v8 data:location[0] error:v7 serverResponse:*(a1 + 40) completion:*(a1 + 48)];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B6D74(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location)
{
  *(v11 - 88) = a1;
  *(v11 - 92) = a2;
  objc_destroyWeak((v11 - 80));
  _Unwind_Resume(*(v11 - 88));
}

void sub_1000B6DB4(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained((a1 + 56));
  if (v6[0])
  {
    if (v7)
    {
      oslog = _AKLogFido();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v9, v7);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Error starting fido auth flow: %@", v9, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [v6[0] _handleStartFidoAuthWithContext:*(a1 + 32) fidoContext:location[0] serverResponse:*(a1 + 40) completion:*(a1 + 48)];
    }
  }

  objc_storeStrong(v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B7254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v26 - 120));
  _Unwind_Resume(a1);
}

void sub_1000B729C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  v7[0] = objc_loadWeakRetained((a1 + 48));
  if (v7[0])
  {
    if (v8)
    {
      oslog = _AKLogFido();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v10, v8);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Error presenting fido auth prompt: %@", v10, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v3 = [v7[0] fidoHandler];
      [v3 finishFidoAuthWithResponse:location[0] client:*(v7[0] + 1) context:*(a1 + 32) recoveryToken:0 completion:*(a1 + 40)];
      _objc_release(v3);
    }
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B77C0(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v36 = 0;
  objc_storeStrong(&v36, a3);
  v35[1] = a1;
  v35[0] = [location[0] url];
  if (v35[0])
  {
    v31 = [AKURLBag looksLikeiForgotURLKey:*(a1 + 32)];
    if (v31)
    {
      v3 = [*(a1 + 40) _addAccountNameParameterToURL:v35[0] withContext:*(a1 + 48)];
      v4 = v35[0];
      v35[0] = v3;
      _objc_release(v4);
    }

    v30 = [[NSURLRequest alloc] initWithURL:v35[0]];
    v29 = 0uLL;
    v11 = _AKSignpostLogSystem();
    *&v28 = _AKSignpostCreate();
    *(&v28 + 1) = v5;
    _objc_release(v11);
    v27 = _AKSignpostLogSystem();
    v26 = OS_SIGNPOST_INTERVAL_BEGIN;
    v25 = v28;
    if (v28 && v25 != -1 && os_signpost_enabled(v27))
    {
      sub_1000333DC(v39, *(a1 + 32));
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, v26, v25, "ServerDrivenSecondaryAction", " ActionKey=%{public,signpost.telemetry:string1,name=ActionKey}@  enableTelemetry=YES ", v39, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    v24 = _AKSignpostLogSystem();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sub_10003341C(v38, v28, *(a1 + 32));
      _os_log_impl(&_mh_execute_header, v24, v23, "BEGIN [%lld]: ServerDrivenSecondaryAction  ActionKey=%{public,signpost.telemetry:string1,name=ActionKey}@  enableTelemetry=YES ", v38, 0x16u);
    }

    objc_storeStrong(&v24, 0);
    v29 = v28;
    v10 = *(a1 + 40);
    v6 = v30;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = location[0];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_1000B7C90;
    v20 = &unk_100322208;
    v22 = v28;
    v21 = _objc_retain(*(a1 + 64));
    [v10 _showServerUIWithURLRequest:v6 context:v7 initialAuthResponse:v8 urlConfiguration:v9 completion:&v16];
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v30, 0);
    v32 = 0;
  }

  else
  {
    v34 = _AKLogSystem();
    v33 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v40, *(a1 + 32));
      _os_log_error_impl(&_mh_execute_header, v34, v33, "There was no URL in the bag for key: %@", v40, 0xCu);
    }

    objc_storeStrong(&v34, 0);
    v12 = *(a1 + 64);
    v13 = [NSError ak_errorWithCode:-7005];
    (*(v12 + 16))(v12, 0);
    _objc_release(v13);
    v32 = 1;
  }

  objc_storeStrong(v35, 0);
  if (!v32)
  {
    v32 = 0;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B7C90(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = a1;
  v4 = a1[5];
  v5 = a1[6];
  v13 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v12 = _AKSignpostLogSystem();
  v11 = OS_SIGNPOST_INTERVAL_END;
  v10 = a1[5];
  if (v10 && v10 != -1 && os_signpost_enabled(v12))
  {
    sub_100034290(v19, [v15 code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v11, v10, "ServerDrivenSecondaryAction", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v19, 8u);
  }

  objc_storeStrong(&v12, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v18, a1[5], *&v13, [v15 code]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:ServerDrivenSecondaryAction  Error=%{public,signpost.telemetry:number2,name=Error}d ", v18, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B8364(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v8 = [*(a1 + 32) authContext];
  v7 = [*(a1 + 32) authContext];
  v6 = [v7 authKitAccount:0];
  [AKAnalyticsSender sendAnalyticsEvent:"sendAnalyticsEvent:context:account:error:" context:@"com.apple.authkit.authServerUI" account:v8 error:?];
  _objc_release(v6);
  _objc_release(v7);
  _objc_release(v8);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B8904(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7[1] = a1;
  v7[0] = _AKLogSystem();
  if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v11, location[0], v9);
    _os_log_impl(&_mh_execute_header, v7[0], OS_LOG_TYPE_DEFAULT, "Retrieved recovery data for server. Server Response: %@ and recoveryData: %@", v11, 0x16u);
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong((*(a1[5] + 8) + 40), 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B8FDC(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  if (v10)
  {
    v9[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
    {
      v4 = [*(a1 + 32) serviceIdentifiers];
      sub_10001B098(v13, v4, v10);
      _os_log_error_impl(&_mh_execute_header, v9[0], v8, "Fetching tokens for service IDs %@ failed! Error: %@", v13, 0x16u);
      _objc_release(v4);
    }

    objc_storeStrong(v9, 0);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) serviceIdentifiers];
      sub_1000194D4(v12, v3);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching tokens for service IDs %@ succeeded.", v12, 0xCu);
      _objc_release(v3);
    }

    objc_storeStrong(&v7, 0);
    [*(a1 + 40) _completeAuthenticationWithServiceTokens:location[0] tokenFetchError:0 altDSID:*(a1 + 48) authenticationResults:0 context:*(a1 + 32) completion:*(a1 + 56)];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_1000B9BE0(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v29 = 0;
  objc_storeStrong(&v29, a3);
  v28 = a1;
  if (location[0])
  {
    v7 = *(a1 + 32);
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_1000BA0C4;
    v21 = &unk_1003222D0;
    v22 = _objc_retain(*(a1 + 40));
    v26[1] = *(a1 + 64);
    v23 = _objc_retain(location[0]);
    v24 = _objc_retain(*(a1 + 48));
    v25 = _objc_retain(*(a1 + 32));
    v26[0] = _objc_retain(*(a1 + 56));
    v27 = *(a1 + 72);
    [v7 authenticationParametersWithCompletion:&v17];
    objc_storeStrong(v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 80);
    v16 = _AKSignpostGetNanoseconds() / 1000000000.0;
    v15 = _AKSignpostLogSystem();
    v14 = OS_SIGNPOST_INTERVAL_END;
    v13 = *(a1 + 72);
    if (v13 && v13 != -1 && os_signpost_enabled(v15))
    {
      sub_100034290(v33, [v29 code]);
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v14, v13, "FetchGrandslamTokens", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v33, 8u);
    }

    objc_storeStrong(&v15, 0);
    oslog = _AKSignpostLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000343D0(v32, *(a1 + 72), *&v16, [v29 code]);
      _os_log_impl(&_mh_execute_header, oslog, v11, "END [%lld] %fs:FetchGrandslamTokens  Error=%{public,signpost.telemetry:number2,name=Error}d ", v32, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    CFRelease(*(a1 + 64));
    v10 = _AKLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v31, v29);
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "We failed to fetch basic auth URL, failing SRP... %@", v31, 0xCu);
    }

    objc_storeStrong(&v10, 0);
    if (*(a1 + 56))
    {
      v5 = *(a1 + 56);
      v6 = [NSError ak_errorWithCode:-7005 underlyingError:v29];
      (*(v5 + 16))(v5, 0);
      _objc_release(v6);
    }
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BA0C4(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v66 = 0;
  objc_storeStrong(&v66, a3);
  v65[1] = a1;
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 72);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v64 = v66;
  v33 = [v3 appleIDAuthSupportCopyAppTokensWithMasterToken:v4 authURL:v5 serviceIds:v6 authParams:location[0] error:&v64];
  objc_storeStrong(&v66, v64);
  v65[0] = v33;
  CFRelease(*(a1 + 72));
  if (v66)
  {
    v63 = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v75, v66);
      _os_log_error_impl(&_mh_execute_header, v63, type, "AppleIDAuthSupportCopyAppTokensOptions failed with error: %@", v75, 0xCu);
    }

    objc_storeStrong(&v63, 0);
    v29 = [v66 userInfo];
    v61 = [v29 objectForKeyedSubscript:kAppleIDAuthSupportStatus];
    _objc_release(v29);
    v30 = [v61 objectForKeyedSubscript:@"ec"];
    v31 = [v30 integerValue];
    _objc_release(v30);
    if (v31 == -22411)
    {
      v28 = +[AKAccountManager sharedInstance];
      v27 = [*(a1 + 56) authKitAccount];
      [(AKAccountManager *)v28 removeMasterTokenForAccount:?];
      _objc_release(v27);
      _objc_release(v28);
    }

    if (*(a1 + 64))
    {
      v7 = *(a1 + 80);
      v8 = *(a1 + 88);
      v60 = _AKSignpostGetNanoseconds() / 1000000000.0;
      v59 = _AKSignpostLogSystem();
      v58 = OS_SIGNPOST_INTERVAL_END;
      v57 = *(a1 + 80);
      if (v57 && v57 != -1 && os_signpost_enabled(v59))
      {
        sub_100034290(v74, [v66 code]);
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, v58, v57, "FetchGrandslamTokens", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v74, 8u);
      }

      objc_storeStrong(&v59, 0);
      v56 = _AKSignpostLogSystem();
      v55 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000343D0(v73, *(a1 + 80), *&v60, [v66 code]);
        _os_log_impl(&_mh_execute_header, v56, v55, "END [%lld] %fs:FetchGrandslamTokens  Error=%{public,signpost.telemetry:number2,name=Error}d ", v73, 0x1Cu);
      }

      objc_storeStrong(&v56, 0);
      v24 = *(a1 + 64);
      v26 = [v66 ac_secureCodingError];
      v25 = [NSError ak_errorWithCode:-7007 underlyingError:?];
      (*(v24 + 16))(v24, 0);
      _objc_release(v25);
      _objc_release(v26);
    }

    objc_storeStrong(&v61, 0);
  }

  else
  {
    v54 = 0;
    v53 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    memset(__b, 0, sizeof(__b));
    v22 = _objc_retain(*(a1 + 48));
    v23 = [v22 countByEnumeratingWithState:__b objects:v72 count:16];
    if (v23)
    {
      v19 = *__b[2];
      v20 = 0;
      v21 = v23;
      while (1)
      {
        v18 = v20;
        if (*__b[2] != v19)
        {
          objc_enumerationMutation(v22);
        }

        v52 = *(__b[1] + 8 * v20);
        v50 = [v65[0] objectForKeyedSubscript:v52];
        if (v50)
        {
          v16 = [AKToken tokenWithDictionary:v50];
          [v53 setObject:? forKeyedSubscript:?];
          _objc_release(v16);
          v54 = 1;
        }

        else
        {
          oslog = _AKLogSystem();
          v48 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v17 = oslog;
            sub_1000194D4(v71, v52);
            _os_log_error_impl(&_mh_execute_header, v17, v48, "Unable to find info for token with ID: %@", v71, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
        }

        objc_storeStrong(&v50, 0);
        ++v20;
        if (v18 + 1 >= v21)
        {
          v20 = 0;
          v21 = [v22 countByEnumeratingWithState:__b objects:v72 count:16];
          if (!v21)
          {
            break;
          }
        }
      }
    }

    _objc_release(v22);
    if (v54)
    {
      v11 = *(a1 + 80);
      v12 = *(a1 + 88);
      v40 = _AKSignpostGetNanoseconds() / 1000000000.0;
      v39 = _AKSignpostLogSystem();
      v38 = 2;
      v37 = *(a1 + 80);
      if (v37 && v37 != -1 && os_signpost_enabled(v39))
      {
        v13 = v39;
        v14 = v38;
        v15 = v37;
        sub_10001CEEC(v36);
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v15, "FetchGrandslamTokens", "", v36, 2u);
      }

      objc_storeStrong(&v39, 0);
      v35 = _AKSignpostLogSystem();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        sub_100034384(v68, *(a1 + 80), *&v40);
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:FetchGrandslamTokens ", v68, 0x16u);
      }

      objc_storeStrong(&v35, 0);
      if (*(a1 + 64))
      {
        (*(*(a1 + 64) + 16))();
      }
    }

    else
    {
      v47 = [NSError ak_errorWithCode:-7007];
      v9 = *(a1 + 80);
      v10 = *(a1 + 88);
      v46 = _AKSignpostGetNanoseconds() / 1000000000.0;
      v45 = _AKSignpostLogSystem();
      v44 = OS_SIGNPOST_INTERVAL_END;
      v43 = *(a1 + 80);
      if (v43 && v43 != -1 && os_signpost_enabled(v45))
      {
        sub_100034290(v70, [v47 code]);
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, v44, v43, "FetchGrandslamTokens", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v70, 8u);
      }

      objc_storeStrong(&v45, 0);
      v42 = _AKSignpostLogSystem();
      v41 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000343D0(v69, *(a1 + 80), *&v46, [v47 code]);
        _os_log_impl(&_mh_execute_header, v42, v41, "END [%lld] %fs:FetchGrandslamTokens  Error=%{public,signpost.telemetry:number2,name=Error}d ", v69, 0x1Cu);
      }

      objc_storeStrong(&v42, 0);
      if (*(a1 + 64))
      {
        (*(*(a1 + 64) + 16))();
      }

      objc_storeStrong(&v47, 0);
    }

    objc_storeStrong(&v53, 0);
  }

  objc_storeStrong(v65, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BB44C(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v67 = 0;
  objc_storeStrong(&v67, a3);
  v66 = 0;
  objc_storeStrong(&v66, a4);
  v65 = a1;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v64 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v63 = _AKSignpostLogSystem();
  v62 = OS_SIGNPOST_INTERVAL_END;
  v61 = *(a1 + 56);
  if (v61 && v61 != -1 && os_signpost_enabled(v63))
  {
    sub_100034290(v70, [v66 code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, v62, v61, "iForgot", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v70, 8u);
  }

  objc_storeStrong(&v63, 0);
  v60 = _AKSignpostLogSystem();
  v59 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v69, *(a1 + 56), *&v64, [v66 code]);
    _os_log_impl(&_mh_execute_header, v60, v59, "END [%lld] %fs:iForgot  Error=%{public,signpost.telemetry:number2,name=Error}d ", v69, 0x1Cu);
  }

  objc_storeStrong(&v60, 0);
  v58 = [AAFAnalyticsEvent ak_analyticsEventWithContext:*(a1 + 32) client:*(*(a1 + 40) + 8) eventName:@"com.apple.authkit.accountRecoveryFinish" error:v66];
  if (v66)
  {
    [*(a1 + 40) _handleRecoverCredentialsError:v66 withContext:*(a1 + 32) event:v58 andCompletion:*(a1 + 48)];
  }

  else
  {
    v57 = [v67 objectForKeyedSubscript:AKAuthenticationUsernameKey];
    if (!v57)
    {
      v57 = [*(a1 + 32) username];
      _objc_release(0);
    }

    v56 = [v67 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    v55 = 0;
    if ([v57 length])
    {
      if ([v56 length])
      {
        if (location[0])
        {
          v48 = _AKLogSystem();
          v47 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v48;
            v23 = v47;
            sub_10001CEEC(v46);
            _os_log_impl(&_mh_execute_header, v22, v23, "iForgot succeeded, and we have a new auth server response!", v46, 2u);
          }

          objc_storeStrong(&v48, 0);
          [AKAnalyticsSender sendAnalyticsEvent:v58 withError:0];
          v21 = *(a1 + 40);
          v17 = v57;
          v18 = v56;
          v19 = location[0];
          v20 = v66;
          v16 = *(a1 + 32);
          v40 = _NSConcreteStackBlock;
          v41 = -1073741824;
          v42 = 0;
          v43 = sub_1000BBC98;
          v44 = &unk_100321258;
          v45 = _objc_retain(*(a1 + 48));
          [v21 _handleVerificationCompletionForUsername:v17 password:v18 serverResponse:v19 didShowServerUI:1 continuationData:0 error:v20 context:v16 completion:&v40];
          objc_storeStrong(&v45, 0);
        }

        else
        {
          oslog = _AKLogSystem();
          v38 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v14 = oslog;
            v15 = v38;
            sub_10001CEEC(v37);
            _os_log_impl(&_mh_execute_header, v14, v15, "iForgot succeeded, but we do not have a new auth server response. Doing SRP auth...", v37, 2u);
          }

          objc_storeStrong(&oslog, 0);
          [AKAnalyticsSender sendAnalyticsEvent:v58 withError:0];
          v13 = *(a1 + 40);
          v10 = v57;
          v11 = v56;
          v12 = *(a1 + 32);
          v31 = _NSConcreteStackBlock;
          v32 = -1073741824;
          v33 = 0;
          v34 = sub_1000BBD9C;
          v35 = &unk_100321258;
          v36 = _objc_retain(*(a1 + 48));
          [v13 _verifyUsername:v10 password:v11 context:v12 completion:&v31];
          objc_storeStrong(&v36, 0);
        }
      }

      else
      {
        v51 = _AKLogSystem();
        v50 = 16;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v24 = v51;
          v25 = v50;
          sub_10001CEEC(v49);
          _os_log_error_impl(&_mh_execute_header, v24, v25, "iForgot reported success, but no password came back to akd.", v49, 2u);
        }

        objc_storeStrong(&v51, 0);
        v8 = [NSError ak_errorWithCode:-7012];
        v9 = v55;
        v55 = v8;
        _objc_release(v9);
        [*(a1 + 40) _handleRecoverCredentialsError:v55 withContext:*(a1 + 32) event:v58 andCompletion:*(a1 + 48)];
      }
    }

    else
    {
      v54 = _AKLogSystem();
      v53 = 16;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v26 = v54;
        v27 = v53;
        sub_10001CEEC(v52);
        _os_log_error_impl(&_mh_execute_header, v26, v27, "iForgot reported success, but no username came back to akd.", v52, 2u);
      }

      objc_storeStrong(&v54, 0);
      v6 = [NSError ak_errorWithCode:-7022];
      v7 = v55;
      v55 = v6;
      _objc_release(v7);
      [*(a1 + 40) _handleRecoverCredentialsError:v55 withContext:*(a1 + 32) event:v58 andCompletion:*(a1 + 48)];
    }

    objc_storeStrong(&v55, 0);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v57, 0);
  }

  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BBC98(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  v7[0] = [location[0] mutableCopy];
  [v7[0] setObject:&__kCFBooleanTrue forKeyedSubscript:AKDidAccountRecovery];
  if (a1[4])
  {
    v3 = (a1[4] + 16);
    v4 = [v7[0] copy];
    (*v3)();
    _objc_release(v4);
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BBD9C(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  v7[0] = [location[0] mutableCopy];
  [v7[0] setObject:&__kCFBooleanTrue forKeyedSubscript:AKDidAccountRecovery];
  if (a1[4])
  {
    v3 = (a1[4] + 16);
    v4 = [v7[0] copy];
    (*v3)();
    _objc_release(v4);
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BC410(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25[1] = a1;
  v25[0] = [location[0] url];
  if (v25[0])
  {
    v3 = [a1[4] _addAccountNameParameterToURL:v25[0] withContext:a1[5]];
    v4 = v25[0];
    v25[0] = v3;
    _objc_release(v4);
    v19 = [[NSURLRequest alloc] initWithURL:v25[0]];
    [a1[5] setNeedsCredentialRecovery:1];
    if (![a1[5] isEphemeral] && !objc_msgSend(a1[5], "shouldPromptForPasswordOnly"))
    {
      [a1[5] setShouldOfferSecurityUpgrade:1];
    }

    v8 = a1[4];
    v5 = v19;
    v6 = a1[5];
    v7 = location[0];
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_1000BC73C;
    v17 = &unk_1003220F0;
    v18 = _objc_retain(a1[6]);
    [v8 _showServerUIWithURLRequest:v5 context:v6 urlConfiguration:v7 completion:&v13];
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    v20 = 0;
  }

  else
  {
    v24 = _AKLogSystem();
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      log = v24;
      type = v23;
      sub_10001CEEC(v22);
      _os_log_error_impl(&_mh_execute_header, log, type, "There was no iForgot URL in the bag!", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v21 = [NSError ak_errorWithCode:-7017];
    (*(a1[6] + 2))();
    v20 = 1;
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(v25, 0);
  if (!v20)
  {
    v20 = 0;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BC73C(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [v8 domain];
  if ([v7 isEqual:AKAppleIDAuthenticationErrorDomain])
  {
    [v8 code];
  }

  _objc_release(v7);
  (*(a1[4] + 16))();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BCFC0(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v29 = 0;
  objc_storeStrong(&v29, a3);
  v28[1] = a1;
  v28[0] = [location[0] url];
  if (v28[0])
  {
    v23 = [[NSURLRequest alloc] initWithURL:v28[0]];
    v3 = a1[4];
    v22 = [AKDServerUIContext serverUIContextFromResponse:"serverUIContextFromResponse:authContext:urlRequest:urlConfiguration:" authContext:? urlRequest:? urlConfiguration:?];
    v21 = [[AKDServerUIController alloc] initWithLiaison:*(a1[5] + 5) client:*(a1[5] + 1) delegate:a1[5]];
    v5 = v21;
    v4 = v22;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1000BD358;
    v16 = &unk_100321F50;
    v20 = _objc_retain(a1[7]);
    v17 = _objc_retain(a1[5]);
    v18 = _objc_retain(a1[6]);
    v19 = _objc_retain(a1[4]);
    [(AKDServerUIController *)v5 showServerUIWithContext:v4 completion:&v12];
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
    v24 = 0;
  }

  else
  {
    v27 = _AKLogSystem();
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      sub_10001CEEC(v25);
      _os_log_error_impl(&_mh_execute_header, log, type, "There was no repair URL in the bag!", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    v6 = a1[7];
    v7 = [NSError ak_errorWithCode:-7005];
    v6[2](v6, 0);
    _objc_release(v7);
    v24 = 1;
  }

  objc_storeStrong(v28, 0);
  if (!v24)
  {
    v24 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BD358(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22[1] = a1;
  v15 = [v23 domain];
  v16 = 0;
  if ([v15 isEqual:AKAppleIDAuthenticationErrorDomain])
  {
    v16 = [v23 code] == -7038;
  }

  _objc_release(v15);
  if (v16)
  {
    (*(*(a1 + 56) + 16))();
  }

  else if (location[0])
  {
    v19 = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v19;
      v7 = v18;
      sub_10001CEEC(v17);
      _os_log_impl(&_mh_execute_header, v6, v7, "Repair flow succeeded, and we have a new auth server response!", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) username];
    [v4 _handleVerificationCompletionForUsername:*(a1 + 48) password:*(a1 + 56) serverResponse:? didShowServerUI:? continuationData:? error:? context:? completion:?];
    _objc_release(v5);
  }

  else
  {
    v22[0] = _AKLogSystem();
    v21 = 16;
    if (os_log_type_enabled(v22[0], OS_LOG_TYPE_ERROR))
    {
      log = v22[0];
      type = v21;
      sub_10001CEEC(v20);
      _os_log_error_impl(&_mh_execute_header, log, type, "Repair flow reported success, but no auth response came back to akd.", v20, 2u);
    }

    objc_storeStrong(v22, 0);
    v8 = *(a1 + 56);
    v9 = [NSError ak_errorWithCode:-7010];
    (*(v8 + 16))(v8, 0);
    _objc_release(v9);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BDA18(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v60 = 0;
  objc_storeStrong(&v60, a3);
  v59 = 0;
  objc_storeStrong(&v59, a4);
  v58 = a1;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v57 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v56 = _AKSignpostLogSystem();
  v55 = OS_SIGNPOST_INTERVAL_END;
  v54 = *(a1 + 56);
  if (v54 && v54 != -1 && os_signpost_enabled(v56))
  {
    sub_100034290(v64, v59);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, v55, v54, "CreateNewAppleID", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v64, 8u);
  }

  objc_storeStrong(&v56, 0);
  v53 = _AKSignpostLogSystem();
  v52 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v63, *(a1 + 56), *&v57, v59);
    _os_log_impl(&_mh_execute_header, v53, v52, "END [%lld] %fs:CreateNewAppleID  Error=%{public,signpost.telemetry:number2,name=Error}d ", v63, 0x1Cu);
  }

  objc_storeStrong(&v53, 0);
  if (v59)
  {
    v30 = [v59 domain];
    v31 = 0;
    if ([v30 isEqual:AKAppleIDAuthenticationErrorDomain])
    {
      v31 = [v59 code] == -7038;
    }

    _objc_release(v30);
    if (v31)
    {
      v28 = *(a1 + 48);
      v27 = v60;
      v29 = [NSError ak_errorWithCode:-7043];
      (*(v28 + 16))(v28, v27);
      _objc_release(v29);
    }

    else
    {
      [*(a1 + 32) _handleCreateNewAppleIDError:v59 withContext:*(a1 + 40) andCompletion:*(a1 + 48)];
    }
  }

  else
  {
    v51 = [location[0] acceptedDeviceTermsVersion];
    if (v51)
    {
      v50 = _AKLogSystem();
      v49 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v62, v51);
        _os_log_impl(&_mh_execute_header, v50, v49, "Calling recordUserAcceptedAgreementVersion with %@", v62, 0xCu);
      }

      objc_storeStrong(&v50, 0);
      if (sub_10003B268(0))
      {
        v26 = sub_10003B4B8();
      }

      else
      {
        v26 = 0;
      }

      [v26 recordUserAcceptedAgreementVersion:{objc_msgSend(v51, "unsignedIntegerValue")}];
    }

    v48 = [v60 objectForKeyedSubscript:AKAuthenticationUsernameKey];
    v47 = [v60 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    if ([v48 length])
    {
      if ([v47 length])
      {
        if (location[0])
        {
          oslog = _AKLogSystem();
          v36 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v12 = oslog;
            v13 = v36;
            sub_10001CEEC(v35);
            _os_log_impl(&_mh_execute_header, v12, v13, "New Apple ID creation succeeded, and we have a new auth server response!", v35, 2u);
          }

          objc_storeStrong(&oslog, 0);
          [*(a1 + 32) _handleVerificationCompletionForUsername:v48 password:v47 serverResponse:location[0] didShowServerUI:1 continuationData:0 error:v59 context:*(a1 + 40) completion:*(a1 + 48)];
        }

        else
        {
          v40 = _AKLogSystem();
          v39 = 16;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v16 = v40;
            v17 = v39;
            sub_10001CEEC(v38);
            _os_log_error_impl(&_mh_execute_header, v16, v17, "New Apple ID flow reported success, but no auth response came back to akd.", v38, 2u);
          }

          objc_storeStrong(&v40, 0);
          v14 = *(a1 + 32);
          v15 = [NSError ak_errorWithCode:-7010];
          v10 = *(a1 + 40);
          v11 = *(a1 + 48);
          [v14 _handleCreateNewAppleIDError:? withContext:? andCompletion:?];
          _objc_release(v15);
        }
      }

      else
      {
        v43 = _AKLogSystem();
        v42 = 16;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v20 = v43;
          v21 = v42;
          sub_10001CEEC(v41);
          _os_log_error_impl(&_mh_execute_header, v20, v21, "New Apple ID flow reported success, but no password came back to akd.", v41, 2u);
        }

        objc_storeStrong(&v43, 0);
        v18 = *(a1 + 32);
        v19 = [NSError ak_errorWithCode:-7012];
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        [v18 _handleCreateNewAppleIDError:? withContext:? andCompletion:?];
        _objc_release(v19);
      }
    }

    else
    {
      v46 = _AKLogSystem();
      v45 = 16;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v24 = v46;
        v25 = v45;
        sub_10001CEEC(v44);
        _os_log_error_impl(&_mh_execute_header, v24, v25, "New Apple ID flow reported success, but no username came back to akd.", v44, 2u);
      }

      objc_storeStrong(&v46, 0);
      v22 = *(a1 + 32);
      v23 = [NSError ak_errorWithCode:-7022];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      [v22 _handleCreateNewAppleIDError:? withContext:? andCompletion:?];
      _objc_release(v23);
    }

    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v51, 0);
  }

  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BE890(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v36 = 0;
  objc_storeStrong(&v36, a3);
  v35[1] = a1;
  v35[0] = [location[0] url];
  if (v35[0])
  {
    v29 = [[NSMutableURLRequest alloc] initWithURL:v35[0]];
    v3 = [*(a1 + 32) needsNewAppleID];
    v27 = 0;
    v18 = 0;
    if (v3)
    {
      v28 = [*(a1 + 32) protoAccountContext];
      v27 = 1;
      v18 = v28 != 0;
    }

    if (v27)
    {
      _objc_release(v28);
    }

    if (v18)
    {
      v26 = _AKLogSystem();
      v25 = 2;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v16 = v26;
        type = v25;
        sub_10001CEEC(v24);
        _os_log_debug_impl(&_mh_execute_header, v16, type, "Proto account was provided. Adding proto account information to the call", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      v23 = [NSMutableDictionary dictionaryWithCapacity:2];
      v10 = objc_opt_class();
      v13 = [*(a1 + 32) protoAccountContext];
      v12 = [v13 givenName];
      v11 = sub_1000919F0(v10, v12);
      [NSMutableDictionary setObject:v23 forKeyedSubscript:"setObject:forKeyedSubscript:"];
      _objc_release(v11);
      _objc_release(v12);
      _objc_release(v13);
      v14 = [*(a1 + 32) protoAccountContext];
      v15 = [v14 ageRange];
      _objc_release(v14);
      if (v15)
      {
        v9 = [*(a1 + 32) protoAccountContext];
        v8 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v9 ageRange]);
        [NSMutableDictionary setObject:v23 forKeyedSubscript:"setObject:forKeyedSubscript:"];
        _objc_release(v8);
        _objc_release(v9);
      }

      v4 = v29;
      v5 = [(NSMutableDictionary *)v23 copy];
      [v4 ak_addCreateInformationHeaderWithValue:?];
      _objc_release(v5);
      v6 = v29;
      v7 = +[AKDevice currentDevice];
      [v6 ak_addBiometryTypeHeaderWithValue:{objc_msgSend(v7, "biometryType")}];
      _objc_release(v7);
      objc_storeStrong(&v23, 0);
    }

    [*(a1 + 40) _showServerUIWithURLRequest:v29 context:*(a1 + 32) urlConfiguration:location[0] completion:*(a1 + 48)];
    objc_storeStrong(&v29, 0);
    v30 = 0;
  }

  else
  {
    v34 = _AKLogSystem();
    v33 = 16;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      log = v34;
      v20 = v33;
      sub_10001CEEC(v32);
      _os_log_error_impl(&_mh_execute_header, log, v20, "There was no creation URL in the bag!", v32, 2u);
    }

    objc_storeStrong(&v34, 0);
    v31 = [NSError ak_errorWithCode:-7016];
    (*(*(a1 + 48) + 16))();
    v30 = 1;
    objc_storeStrong(&v31, 0);
  }

  objc_storeStrong(v35, 0);
  if (!v30)
  {
    v30 = 0;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BF08C(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v36 = 0;
  objc_storeStrong(&v36, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34[1] = a1;
  if (v35)
  {
    v34[0] = _AKLogSystem();
    v33 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v34[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v38, v35);
      _os_log_error_impl(&_mh_execute_header, v34[0], v33, "Change password flow failed! Error: %@", v38, 0xCu);
    }

    objc_storeStrong(v34, 0);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v32 = [v36 objectForKeyedSubscript:AKAuthenticationUsernameKey];
    v31 = [v36 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    if ([v32 length])
    {
      if ([v31 length])
      {
        if (location[0])
        {
          v24 = _AKLogSystem();
          v23 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v6 = v24;
            v7 = v23;
            sub_10001CEEC(v22);
            _os_log_impl(&_mh_execute_header, v6, v7, "Change password flow succeeded, and we have a new auth server response!", v22, 2u);
          }

          objc_storeStrong(&v24, 0);
          [*(a1 + 32) _handleVerificationCompletionForUsername:v32 password:v31 serverResponse:location[0] didShowServerUI:1 continuationData:0 error:v35 context:*(a1 + 40) completion:*(a1 + 48)];
        }

        else
        {
          v21 = _AKLogSystem();
          v20 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v4 = v21;
            v5 = v20;
            sub_10001CEEC(v19);
            _os_log_impl(&_mh_execute_header, v4, v5, "Change password flow succeeded, but we do not have a new auth server response. Doing SRP auth...", v19, 2u);
          }

          objc_storeStrong(&v21, 0);
          [*(a1 + 32) _verifyUsername:v32 password:v31 context:*(a1 + 40) completion:*(a1 + 48)];
        }
      }

      else
      {
        v27 = _AKLogSystem();
        v26 = 16;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v10 = v27;
          v11 = v26;
          sub_10001CEEC(v25);
          _os_log_error_impl(&_mh_execute_header, v10, v11, "Change password flow reported success, but no password came back to akd.", v25, 2u);
        }

        objc_storeStrong(&v27, 0);
        v8 = *(a1 + 48);
        v9 = [NSError ak_errorWithCode:-7012];
        (*(v8 + 16))(v8, 0);
        _objc_release(v9);
      }
    }

    else
    {
      v30 = _AKLogSystem();
      v29 = 16;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v14 = v30;
        type = v29;
        sub_10001CEEC(v28);
        _os_log_error_impl(&_mh_execute_header, v14, type, "Change password flow reported success, but no username came back to akd.", v28, 2u);
      }

      objc_storeStrong(&v30, 0);
      v12 = *(a1 + 48);
      v13 = [NSError ak_errorWithCode:-7022];
      (*(v12 + 16))(v12, 0);
      _objc_release(v13);
    }

    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BF960(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27 = 0;
  objc_storeStrong(&v27, a3);
  v26[1] = a1;
  v26[0] = [location[0] url];
  if (v26[0])
  {
    v5 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1000BFC78;
    v16 = &unk_1003223C0;
    v17 = _objc_retain(*(a1 + 48));
    v18 = _objc_retain(v26[0]);
    v19 = _objc_retain(location[0]);
    v20 = _objc_retain(*(a1 + 32));
    v21 = _objc_retain(*(a1 + 56));
    [v5 _performPasswordlessSRPAuthWithAccount:v3 context:v4 completion:&v12];
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    v22 = 0;
  }

  else
  {
    v25 = _AKLogSystem();
    v24 = 16;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      log = v25;
      type = v24;
      sub_10001CEEC(v23);
      _os_log_error_impl(&_mh_execute_header, log, type, "Could not find URL for changePassword!", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    v6 = *(a1 + 56);
    v7 = [NSError ak_errorWithCode:-7005];
    (*(v6 + 16))(v6, 0);
    _objc_release(v7);
    v22 = 1;
  }

  objc_storeStrong(v26, 0);
  if (!v22)
  {
    v22 = 0;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BFC78(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19[1] = a1;
  if (v20)
  {
    v19[0] = _AKLogSystem();
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v19[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v22, v20);
      _os_log_error_impl(&_mh_execute_header, v19[0], v18, "Password change flow authentication failed with error, but we'll try anyways: %@", v22, 0xCu);
    }

    objc_storeStrong(v19, 0);
  }

  [*(a1 + 32) setNeedsPasswordChange:1];
  v4 = *(a1 + 32);
  v5 = [NSMutableURLRequest requestWithURL:*(a1 + 40)];
  v3 = *(a1 + 48);
  v17 = [AKDServerUIContext serverUIContextFromResponse:"serverUIContextFromResponse:authContext:urlRequest:urlConfiguration:" authContext:? urlRequest:? urlConfiguration:?];
  _objc_release(v5);
  v16 = [[AKDServerUIController alloc] initWithLiaison:*(*(a1 + 56) + 40) client:*(*(a1 + 56) + 8) delegate:*(a1 + 56)];
  v7 = v16;
  v6 = v17;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1000BFF38;
  v14 = &unk_1003220F0;
  v15 = _objc_retain(*(a1 + 64));
  [(AKDServerUIController *)v7 showServerUIWithContext:v6 completion:&v10];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void sub_1000BFF38(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [v8 domain];
  if ([v7 isEqual:AKAppleIDAuthenticationErrorDomain])
  {
    [v8 code];
  }

  _objc_release(v7);
  (*(a1[4] + 16))();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_1000C04A0(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v8, v6);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Piggybacking finished with error: %@", v8, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_1000C0724(void *a1, void *a2, void *a3)
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

void sub_1000C0B28(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[1] = a1;
  if (v16)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 32) + 40);
    v5 = [*(a1 + 40) initiatingContext];
    v3 = *(*(a1 + 32) + 8);
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1000C0CFC;
    v12 = &unk_100321E60;
    v15[0] = _objc_retain(*(a1 + 48));
    v13 = _objc_retain(location[0]);
    v14 = _objc_retain(v16);
    [v4 dismissSecondFactorUIForContext:v5 client:v3 completion:&v8];
    _objc_release(v5);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(v15, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_1000C0CFC(NSObject *a1, char a2, id obj)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if ((v8 & 1) == 0)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v10, location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to dismiss second factor UI %@", v10, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  isa = a1[4].isa;
  v4 = a1[5].isa;
  (*(a1[6].isa + 2))();
  objc_storeStrong(&location, 0);
}

void sub_1000C108C(uint64_t a1, char a2, id obj, void *a4)
{
  v22 = a1;
  v21 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18[1] = a1;
  if (location)
  {
    v7 = *(a1 + 32);
    v9 = [*(a1 + 40) initiatingContext];
    v4 = location;
    v8 = [*(a1 + 40) initialAuthResponse];
    v5 = v21;
    v6 = v19;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1000C1284;
    v16 = &unk_100322438;
    v18[0] = _objc_retain(*(a1 + 48));
    v17 = _objc_retain(location);
    [v7 _handleSuccessfulVerificationForContext:v9 withResults:v4 serverResponse:v8 shouldContinue:v5 & 1 withError:v6 completion:&v12];
    _objc_release(v8);
    _objc_release(v9);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(v18, 0);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000C1284(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v3 = a1[4];
  (*(a1[5] + 16))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_1000C1590(id *a1, char a2, id obj)
{
  v27 = a1;
  v26 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v24[1] = a1;
  if ((v26 & 1) == 0)
  {
    v24[0] = _AKLogSystem();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v28, location);
      _os_log_error_impl(&_mh_execute_header, v24[0], v23, "Unable to dismiss client-side second-factor UI. Error: %@", v28, 0xCu);
    }

    objc_storeStrong(v24, 0);
  }

  v22 = [a1[4] initiatingContext];
  v21 = [v22 username];
  v20 = [a1[4] initiatingPassword];
  v19 = [a1[4] initialAuthResponse];
  v3 = [a1[4] initiatingContext];
  [v3 setServiceType:7];
  _objc_release(v3);
  v6 = [v22 altDSID];
  v5 = [AKURLBag bagForAltDSID:?];
  v4 = +[AKURLBag keyForEscapeHatchURL];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000C19B8;
  v12 = &unk_1003224B0;
  v13 = _objc_retain(v22);
  v14 = _objc_retain(a1[5]);
  v18 = _objc_retain(a1[6]);
  v15 = _objc_retain(v19);
  v16 = _objc_retain(v21);
  v17 = _objc_retain(v20);
  [v5 urlConfigurationForKey:v4 fromCache:0 completion:&v8];
  _objc_release(v4);
  _objc_release(v5);
  _objc_release(v6);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000C19B8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23 = 0;
  objc_storeStrong(&v23, a3);
  v22[1] = a1;
  v22[0] = [location[0] url];
  if (v22[0])
  {
    v20 = [[NSMutableURLRequest alloc] initWithURL:v22[0]];
    v7 = *(a1 + 40);
    v3 = v20;
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = location[0];
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_1000C1CA4;
    v14 = &unk_100322488;
    v19 = _objc_retain(*(a1 + 72));
    v15 = _objc_retain(*(a1 + 32));
    v16 = _objc_retain(*(a1 + 40));
    v17 = _objc_retain(*(a1 + 56));
    v18 = _objc_retain(*(a1 + 64));
    [v7 _showServerUIWithURLRequest:v3 context:v4 initialAuthResponse:v5 urlConfiguration:v6 completion:&v10];
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v21 = [NSError ak_errorWithCode:-7005];
    if ([*(a1 + 32) _keepAlive])
    {
      [*(a1 + 40) _keepLoginAliveWithContext:*(a1 + 32) error:v21 andCompletion:*(a1 + 72)];
    }

    else
    {
      (*(*(a1 + 72) + 16))();
    }

    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void sub_1000C1CA4(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13[1] = a1;
  if ([v14 ak_isUserSkippedError] & 1) != 0 || (objc_msgSend(v14, "ak_isUserTryAgainError"))
  {
    v13[0] = _AKLogSystem();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v19, v14);
      _os_log_error_impl(&_mh_execute_header, v13[0], v12, "Server UI came back with error: %@", v19, 0xCu);
    }

    objc_storeStrong(v13, 0);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v4 = [v14 domain];
    v5 = 0;
    if ([v4 isEqualToString:AKAppleIDAuthenticationErrorDomain])
    {
      v5 = [*(a1 + 32) _keepAlive];
    }

    _objc_release(v4);
    if (v5)
    {
      v11 = _AKLogSystem();
      v10 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v18, v14);
        _os_log_error_impl(&_mh_execute_header, v11, v10, "Server UI came back with error: %@", v18, 0xCu);
      }

      objc_storeStrong(&v11, 0);
      [*(a1 + 40) _keepLoginAliveWithContext:*(a1 + 32) error:v14 andCompletion:*(a1 + 64)];
    }

    else
    {
      v9 = _AKLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v17, v14);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Piggybacking escape hatch server UI finished, with error: %@", v17, 0xCu);
      }

      objc_storeStrong(&v9, 0);
      [*(a1 + 40) _handleVerificationCompletionForUsername:*(a1 + 48) password:*(a1 + 56) serverResponse:location[0] didShowServerUI:1 continuationData:0 error:v14 context:*(a1 + 32) completion:*(a1 + 64)];
    }
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_1000C2D00(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v20, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, location[0], v18, "Cleared to begin device list fetch with context %@!", v20, 0xCu);
  }

  objc_storeStrong(location, 0);
  v2 = [AKDeviceListRequester alloc];
  v5 = +[AKDeviceListStoreManager sharedManager];
  v4 = objc_opt_new();
  v3 = +[AKAccountManager sharedInstance];
  v1 = *(*(a1 + 40) + 8);
  v17 = [AKDeviceListRequester initWithStoreManager:v2 cdpFactory:"initWithStoreManager:cdpFactory:accountManager:client:" accountManager:v5 client:v4];
  _objc_release(v3);
  _objc_release(v4);
  _objc_release(v5);
  v7 = v17;
  v6 = *(a1 + 32);
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1000C2FB8;
  v13 = &unk_100321938;
  v14 = _objc_retain(*(a1 + 40));
  v15 = _objc_retain(*(a1 + 32));
  v16 = _objc_retain(*(a1 + 48));
  [(AKDeviceListRequester *)v7 fetchDeviceListWithContext:v6 completionHandler:&v9];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
}

void sub_1000C2FB8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18[1] = a1;
  v18[0] = _AKLogSystem();
  v17 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v18[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000C3230(v21, location[0], v19);
    _os_log_debug_impl(&_mh_execute_header, v18[0], v17, "Fetch device list completed with response - %@ and error - %{private}@.", v21, 0x16u);
  }

  objc_storeStrong(v18, 0);
  v5 = *(*(a1 + 32) + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000C3288;
  v12 = &unk_100321A38;
  v13 = _objc_retain(*(a1 + 40));
  v16 = _objc_retain(*(a1 + 48));
  v14 = _objc_retain(location[0]);
  v15 = _objc_retain(v19);
  [v5 endAuthenticatedRequestWithContext:v3 client:v4 clearanceHandler:&v8];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1000C3230(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 3;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 65;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_1000C3288(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v5, *(a1 + 32));
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Cleared to end device list fetch with context %@.", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (*(a1 + 56))
  {
    v1 = *(a1 + 40);
    v2 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000C3694(uint64_t a1, char a2, id obj)
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
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Delete device list cache completed for context - %@ with status - %d and error - %{private}@.", v8, 0x1Cu);
  }

  objc_storeStrong(oslog, 0);
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

uint64_t sub_1000C37D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 3;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 65;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

void sub_1000C3A3C(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  if (location[0])
  {
    v9[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEBUG))
    {
      sub_1000831E0(v11, location[0]);
      _os_log_debug_impl(&_mh_execute_header, v9[0], v8, "Delete device list cache failed with error - %{private}@.", v11, 0xCu);
    }

    objc_storeStrong(v9, 0);
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }
  }

  else
  {
    oslog = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v2 = oslog;
      v3 = v6;
      sub_10001CEEC(v5);
      _os_log_debug_impl(&_mh_execute_header, v2, v3, "Delete device list cache completed successfully.", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }
  }

  objc_storeStrong(location, 0);
}

void sub_1000C42D8(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[4])
  {
    (*(a1[4] + 16))(a1[4], location[0] == 0, location[0]);
  }

  objc_storeStrong(location, 0);
}

void sub_1000C4474(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if (a1[4])
  {
    v3 = (a1[4] + 16);
    v4 = [location[0] value];
    (*v3)();
    _objc_release(v4);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_1000C5138(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _handleFoundDevice:location[0]];
  _objc_release(WeakRetained);
  objc_storeStrong(location, 0);
}

void sub_1000C51B0(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17[1] = a1;
  v17[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v16 = _AKLogSiwa();
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      v8 = [location[0] domain];
      v5 = _objc_retain(v8);
      v14 = v5;
      v2 = [location[0] code];
      sub_1000C53D8(v19, v5, v2, location[0]);
      _os_log_error_impl(&_mh_execute_header, log, type, "Authorization Endorser discovery client failed to activate. {errorDomain=%{public}@, errorCode=%ld, error=%@}", v19, 0x20u);
      _objc_release(v8);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&v16, 0);
    [v17[0] deactivate];
    v13 = 1;
  }

  else
  {
    oslog = _AKLogSiwa();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v11;
      sub_10001CEEC(v10);
      _os_log_impl(&_mh_execute_header, v3, v4, "Authorization Endorser AppSignIn discovery activated.", v10, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v13 = 0;
  }

  objc_storeStrong(v17, 0);
  if (!v13)
  {
    v13 = 0;
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_1000C53D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_1000C6DB4(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12 = a1;
  [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.piggybackingRequesting" context:*(a1[4] + 48) account:a1[5] error:v13];
  v3 = a1[7];
  v4 = a1[8];
  v11 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v10 = _AKSignpostLogSystem();
  v9 = OS_SIGNPOST_INTERVAL_END;
  v8 = a1[7];
  if (v8 && v8 != -1 && os_signpost_enabled(v10))
  {
    sub_100034290(v16, [v13 code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v9, v8, "PiggybackingRequestingInitiateSession", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v16, 8u);
  }

  objc_storeStrong(&v10, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v15, a1[7], *&v11, [v13 code]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:PiggybackingRequestingInitiateSession  Error=%{public,signpost.telemetry:number2,name=Error}d ", v15, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  (*(a1[6] + 16))();
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void sub_1000C7048(uint64_t a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000C7118;
  v7 = &unk_10031F8B0;
  v8[0] = _objc_retain(*(a1 + 48));
  [v2 _promptForSecretWithContext:v1 completion:?];
  objc_storeStrong(v8, 0);
}

id sub_1000C7118(id *a1)
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
    _os_log_impl(&_mh_execute_header, log, type, "Handshake code prompt finished", v5, 2u);
  }

  objc_storeStrong(location, 0);
  [a1[4] lock];
  [a1[4] signal];
  return [a1[4] unlock];
}

void sub_1000C7228(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18[1] = a1;
  if (v19)
  {
    v18[0] = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v23, v19);
      _os_log_impl(&_mh_execute_header, v18[0], v17, "Handshake request failed with error: %@", v23, 0xCu);
    }

    objc_storeStrong(v18, 0);
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v16;
      v7 = v15;
      sub_10001CEEC(v14);
      _os_log_impl(&_mh_execute_header, v6, v7, "Handshake request finished", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
  }

  if (location[0])
  {
    [*(a1 + 32) _startProximityControllerIfNeededWithPushPayload:location[0]];
  }

  v13 = [v19 ak_isAuthenticationErrorWithCode:-7064];
  if ((v13 & 1) != 0 || [location[0] isURLResponse])
  {
    v10 = _AKLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = @"YES";
      if ((v13 & 1) == 0)
      {
        v3 = @"NO";
      }

      v5 = v3;
      if ([location[0] isURLResponse])
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      sub_10004DCC8(v21, v5, v4, location[0]);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handshake request not being marked as completed (isCancellation: %@, isURLResponse: %@) with reply: %@", v21, 0x20u);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v22, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, v11, "Marking handshake request as completed with reply: %@", v22, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [*(a1 + 40) lock];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), location[0]);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v19);
    [*(a1 + 40) signal];
    [*(a1 + 40) unlock];
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

id sub_1000C75E4(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  [(objc_class *)a1[4].isa lock];
  while (1)
  {
    if ((*(*(a1[10].isa + 1) + 24) & 1) == 0 || (v8 = 1, !*(a1[5].isa + 10)))
    {
      v8 = 1;
      if (([*(a1[5].isa + 12) ak_isUserTryAgainError] & 1) == 0)
      {
        if (!*(a1[5].isa + 12) || (v8 = 1, [*(a1[5].isa + 12) ak_isUserTryAgainError]))
        {
          v8 = *(a1[5].isa + 13) != 0;
        }
      }
    }

    if (v8)
    {
      break;
    }

    oslog[0] = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      log = oslog[0];
      v7 = type;
      sub_1000C79C4(v18, *(a1[5].isa + 10), *(a1[5].isa + 12), *(*(a1[10].isa + 1) + 24) & 1, *(a1[5].isa + 13) != 0);
      _os_log_impl(&_mh_execute_header, log, v7, "Waiting for handshake condition with state: %@ - %@ - %d - %d", v18, 0x22u);
    }

    objc_storeStrong(oslog, 0);
    [(objc_class *)a1[4].isa wait];
    v14 = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v14;
      v5 = v13;
      sub_1000C79C4(v17, *(a1[5].isa + 10), *(a1[5].isa + 12), *(*(a1[10].isa + 1) + 24) & 1, *(a1[5].isa + 13) != 0);
      _os_log_impl(&_mh_execute_header, v4, v5, "Finished waiting for handshake condition with state: %@ - %@ - %d - %d", v17, 0x22u);
    }

    objc_storeStrong(&v14, 0);
    if (*(a1[5].isa + 10) && (*(*(a1[10].isa + 1) + 24) & 1) == 0)
    {
      v12 = _AKLogSystem();
      v11 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v2 = v12;
        v3 = v11;
        sub_10001CEEC(v10);
        _os_log_impl(&_mh_execute_header, v2, v3, "Code entered, but no handshake has been completed", v10, 2u);
      }

      objc_storeStrong(&v12, 0);
      (*(a1[8].isa + 2))();
    }
  }

  if ([*(a1[5].isa + 12) ak_isUserTryAgainError] & 1) != 0 || (objc_msgSend(*(a1[5].isa + 12), "ak_isUserCancelError"))
  {
    [(objc_class *)a1[6].isa cancel];
  }

  [(objc_class *)a1[5].isa _processHandshakeWithContext:a1[7].isa handshakeReply:*(*(a1[11].isa + 1) + 40) andHandshakeError:*(*(a1[12].isa + 1) + 40) withCompletion:a1[9].isa, v2];
  return [(objc_class *)a1[4].isa unlock];
}

uint64_t sub_1000C79C4(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

void sub_1000C8218(NSObject *a1, char a2, id obj)
{
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_10001B098(v9, v3, location);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Piggybacking completion with final process response: %@ - %@", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa _processHandshakeWithContext:a1[5].isa handshakeReply:a1[6].isa andHandshakeError:location withCompletion:a1[7].isa];
  objc_storeStrong(&location, 0);
}

void sub_1000C8C70(void *a1, char a2, id obj)
{
  v14 = a1;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v11 = a1;
  [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.piggybackingProcessPushPayload" context:*(a1[4] + 48) account:a1[5] error:location];
  v3 = a1[7];
  v4 = a1[8];
  v10 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v9 = _AKSignpostLogSystem();
  v8 = OS_SIGNPOST_INTERVAL_END;
  v7 = a1[7];
  if (v7 && v7 != -1 && os_signpost_enabled(v9))
  {
    sub_100034290(v16, [location code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v8, v7, "PiggybackingRequestingProcessPushPayload", " Error=%{public,signpost.telemetry:number2,name=Error}d ", v16, 8u);
  }

  objc_storeStrong(&v9, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v15, a1[7], *&v10, [location code]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:PiggybackingRequestingProcessPushPayload  Error=%{public,signpost.telemetry:number2,name=Error}d ", v15, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  (*(a1[6] + 16))();
  objc_storeStrong(&location, 0);
}

id sub_1000C8EEC(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if (*(*(a1 + 32) + 80))
  {
    location[0] = _AKLogSystem();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      v12 = v24;
      sub_10001CEEC(v23);
      _os_log_impl(&_mh_execute_header, log, v12, "User entered a new code after verificaiton failure", v23, 2u);
    }

    objc_storeStrong(location, 0);
    if ([*(a1 + 40) code] == -7036)
    {
      return [*(a1 + 32) _deliverPushPayload:*(a1 + 48) completion:*(a1 + 56)];
    }

    else
    {
      v2 = *(a1 + 40);
      return (*(*(a1 + 56) + 16))();
    }
  }

  else if (*(*(a1 + 32) + 104))
  {
    v22 = _AKLogSystem();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v22;
      type = v21;
      sub_10001CEEC(v20);
      _os_log_impl(&_mh_execute_header, v9, type, "User succesfully escaped after verification failure", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    return (*(*(a1 + 56) + 16))();
  }

  else if (*(*(a1 + 32) + 96))
  {
    v19 = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v19;
      v8 = v18;
      sub_10001CEEC(v17);
      _os_log_impl(&_mh_execute_header, v7, v8, "User escaped with erro after verification failure", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    v3 = *(*(a1 + 32) + 96);
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v16;
      v6 = v15;
      sub_10001CEEC(v14);
      _os_log_impl(&_mh_execute_header, v5, v6, "We failed to handle verification, passing through the failure", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v4 = *(a1 + 40);
    return (*(*(a1 + 56) + 16))();
  }
}

void sub_1000CA5A8(void *a1, char a2, id obj)
{
  v14 = a1;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v11 = a1;
  v3 = a1[5];
  v4 = a1[6];
  v10 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v9 = _AKSignpostLogSystem();
  v8 = OS_SIGNPOST_INTERVAL_END;
  v7 = a1[5];
  if (v7 && v7 != -1 && os_signpost_enabled(v9))
  {
    sub_100034290(v16, [location code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v8, v7, "PiggybackingRequestingReplyWithContext", " Error=%{public,signpost.telemetry:number1,name=Error}d ", v16, 8u);
  }

  objc_storeStrong(&v9, 0);
  oslog = _AKSignpostLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v15, a1[5], *&v10, [location code]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:PiggybackingRequestingReplyWithContext  Error=%{public,signpost.telemetry:number1,name=Error}d ", v15, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_1000CA7F4(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (location[0])
  {
    [*(a1 + 32) processPushPayload:location[0] completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1000CAE04(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  objc_storeStrong((*(a1 + 32) + 104), location[0]);
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v8, v6);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Should continue came back with error: %@", v8, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
  dispatch_semaphore_signal(*(a1 + 40));
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_1000CB924(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  v9[0] = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v9[0];
    type = v8;
    sub_10001CEEC(v7);
    _os_log_impl(&_mh_execute_header, log, type, "Login code validated", v7, 2u);
  }

  objc_storeStrong(v9, 0);
  *(*(*(a1 + 40) + 8) + 24) = v10 == 0;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
  dispatch_semaphore_signal(*(a1 + 32));
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_1000CBC00(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [*(a1 + 32) _cacheSecondFactor:location[0] codeCaptureError:v5];
  [*(a1 + 32) _processCachedUserInputWithContext:*(a1 + 40) completion:*(a1 + 48)];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1000CC06C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = a1;
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v14 = _AKSignpostGetNanoseconds() / 1000000000.0;
  v13 = _AKSignpostLogSystem();
  v12 = OS_SIGNPOST_INTERVAL_END;
  v11 = *(a1 + 56);
  if (v11 && v11 != -1 && os_signpost_enabled(v13))
  {
    sub_100034290(v20, [v16 code]);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v12, v11, "PiggyCodeCollect", " Error=%{public,signpost.telemetry:number1,name=Error}d ", v20, 8u);
  }

  objc_storeStrong(&v13, 0);
  v10 = _AKSignpostLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000343D0(v19, *(a1 + 56), *&v14, [v16 code]);
    _os_log_impl(&_mh_execute_header, v10, v9, "END [%lld] %fs:PiggyCodeCollect  Error=%{public,signpost.telemetry:number1,name=Error}d ", v19, 0x1Cu);
  }

  objc_storeStrong(&v10, 0);
  if (v16)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v18, v16);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Secret collection failed with error: %@", v18, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  [*(a1 + 32) _cacheSecondFactor:location[0] codeCaptureError:{v16, &v16}];
  [*(a1 + 32) _processCachedUserInputWithContext:*(a1 + 40) completion:*(a1 + 48)];
  objc_storeStrong(v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1000CC608(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17[1] = a1;
  if ([v18 ak_isUserSkippedError])
  {
    v17[0] = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v17[0];
      v10 = v16;
      sub_10001CEEC(v15);
      _os_log_impl(&_mh_execute_header, log, v10, "User wants to continue using current piggybacking session", v15, 2u);
    }

    objc_storeStrong(v17, 0);
    objc_storeStrong((*(a1 + 32) + 88), 0);
    [*(a1 + 32) _promptForSecretWithContext:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    if (location[0] || v18)
    {
      objc_storeStrong((*(a1 + 32) + 96), v18);
      objc_storeStrong((*(a1 + 32) + 104), location[0]);
      if (*(*(a1 + 32) + 104))
      {
        v8 = +[AKAccountManager sharedInstance];
        v7 = [*(a1 + 32) initialAuthResponse];
        v6 = [v7 altDSID];
        v14 = [AKAccountManager authKitAccountWithAltDSID:v8 error:"authKitAccountWithAltDSID:error:"];
        _objc_release(v6);
        _objc_release(v7);
        _objc_release(v8);
        [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.piggybackingEscapeHatch" context:*(*(a1 + 32) + 48) account:v14 error:0];
        objc_storeStrong(&v14, 0);
      }

      else
      {
        v5 = +[AKAccountManager sharedInstance];
        v4 = [*(a1 + 32) initialAuthResponse];
        v3 = [v4 altDSID];
        v13 = [AKAccountManager authKitAccountWithAltDSID:v5 error:"authKitAccountWithAltDSID:error:"];
        _objc_release(v3);
        _objc_release(v4);
        _objc_release(v5);
        [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.piggybackingEscapeHatch" context:*(*(a1 + 32) + 48) account:v13 error:v18];
        objc_storeStrong(&v13, 0);
      }
    }

    if (*(a1 + 48))
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_1000CCD64(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8[1] = a1;
  v6 = +[AKAccountManager sharedInstance];
  v5 = [*(a1 + 32) initialAuthResponse];
  v4 = [v5 altDSID];
  v8[0] = [AKAccountManager authKitAccountWithAltDSID:v6 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(v4);
  _objc_release(v5);
  _objc_release(v6);
  [AKAnalyticsSender sendAnalyticsEvent:@"com.apple.authkit.piggybackingEscapeHatch" context:*(*(a1 + 32) + 48) account:v8[0] error:v9];
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_1000CD89C(id a1)
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
    _os_log_debug_impl(&_mh_execute_header, log, type, "AKPiggybackRequestingController: Proximity controller has been invalidated", v3, 2u);
  }

  objc_storeStrong(location, 0);
}

void sub_1000CF0BC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100374758;
  qword_100374758 = v1;
  _objc_release(v2);
}

void sub_1000CF41C(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27 = 0;
  objc_storeStrong(&v27, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25[1] = a1;
  if (v26)
  {
    v25[0] = _AKLogSystem();
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v25[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v30, v26);
      _os_log_error_impl(&_mh_execute_header, v25[0], v24, "Failed to fetch app info with error: %@", v30, 0xCu);
    }

    objc_storeStrong(v25, 0);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v23 = _AKLogSystem();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v29, *(a1 + 32));
      _os_log_impl(&_mh_execute_header, v23, v22, "Fetched app info for %@", v29, 0xCu);
    }

    objc_storeStrong(&v23, 0);
    v21 = [AAFSerialization dictionaryFromObject:v27 ofType:@"application/x-plist"];
    v4 = [AKApplicationMetadataInfo alloc];
    v20 = [v4 initWithResponseInfo:v21];
    v7 = [*(a1 + 40) _buildApplicationAuthorizationController];
    v5 = v20;
    v6 = *(a1 + 32);
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1000CF7E4;
    v15 = &unk_1003225C8;
    v16 = _objc_retain(*(a1 + 40));
    v17 = _objc_retain(*(a1 + 32));
    v18 = _objc_retain(v20);
    v19 = _objc_retain(*(a1 + 48));
    [v7 updateAuthorizationListWithMetadataInfo:v5 withAltDSID:v6 completion:&v11];
    _objc_release(v7);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

void sub_1000CF7E4(uint64_t a1, char a2, id obj)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v5 = +[AKFeatureManager sharedManager];
  v6 = [v5 isSiwaInPasswordsFeatureEnabled];
  _objc_release(v5);
  if (v6)
  {
    [*(a1 + 32) _updatePrimaryApplicationsMetadataForAltDSID:*(a1 + 40) metadataInfo:*(a1 + 48)];
  }

  v3 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
  objc_storeStrong(&location, 0);
}

uint64_t sub_1000CFB9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 112;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_1000CFC08(uint64_t *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (v8)
  {
    v7[0] = _AKLogSystem();
    v6 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v11, v8);
      _os_log_error_impl(&_mh_execute_header, v7[0], v6, "Failed to fetch Primary application with error: %@", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
    (*(a1[5] + 16))();
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v10, a1[4]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Fetched Primary application bundle id for %@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1000CFF98(id a1, NSError *a2)
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
      _os_log_error_impl(&_mh_execute_header, v9[0], v8, "Updating primary app metadata failed with error: %@", v11, 0xCu);
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
      _os_log_impl(&_mh_execute_header, v2, v3, "Successfully updated primary app metadata", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_1000D44E8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  [*(a1 + 32) setResponseCode:{objc_msgSend(v10, "statusCode")}];
  (*(*(a1 + 40) + 16))();
  (*(*(*(a1 + 32) + 8) + 16))();
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_1000D49A0(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v31 = 0;
  objc_storeStrong(&v31, a3);
  v30[1] = a1;
  if (location[0])
  {
    if ([*(*(a1 + 32) + 16) shouldBackoffRequest:location[0]])
    {
      v27 = _AKLogSystem();
      v26 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v8 = [v9 urlRequestProvider];
        sub_10004DCC8(v33, v9, v8, v31);
        _os_log_error_impl(&_mh_execute_header, v27, v26, "%@: Failed to build URL request using provider (%@) with throttling error (%@)", v33, 0x20u);
        _objc_release(v8);
      }

      objc_storeStrong(&v27, 0);
      if (*(a1 + 40))
      {
        v7 = *(a1 + 40);
        v6 = [NSError ak_errorWithCode:-7120];
        (*(v7 + 16))(v7, 0, 0);
        _objc_release(v6);
      }

      v28 = 1;
    }

    else
    {
      v25 = [*(a1 + 32) _urlSession];
      objc_initWeak(&from, *(a1 + 32));
      v3 = *(a1 + 32);
      v4 = location[0];
      v5 = v25;
      v14 = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_1000D4F58;
      v18 = &unk_100322C50;
      objc_copyWeak(&v22, &from);
      v23 = *(a1 + 48) & 1;
      v19 = _objc_retain(*(a1 + 32));
      v20 = _objc_retain(location[0]);
      v21 = _objc_retain(*(a1 + 40));
      [v3 _executeURLRequest:v4 withSession:v5 completion:&v14];
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&from);
      objc_storeStrong(&v25, 0);
      v28 = 0;
    }
  }

  else
  {
    v30[0] = _AKLogSystem();
    v29 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v30[0], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v10 = [v11 urlRequestProvider];
      sub_10004DCC8(v34, v11, v10, v31);
      _os_log_error_impl(&_mh_execute_header, v30[0], v29, "%@: Failed to build URL request using provider (%@) with error (%@)", v34, 0x20u);
      _objc_release(v10);
    }

    objc_storeStrong(v30, 0);
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }

    v28 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

void sub_1000D4F10(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id *location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43)
{
  *(v43 - 256) = a1;
  objc_destroyWeak(location);
  objc_destroyWeak((v43 - 176));
  _Unwind_Resume(*(v43 - 256));
}

void sub_1000D4F58(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 64) & 1) != 0 && ([v14 ak_isAuthenticationErrorWithCode:-7026])
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10004DCC8(v19, *(a1 + 32), *(a1 + 40), v14);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "%@: Failed to execute URL request (%@) with 401 error (%@), will attempt to reauth and execute again", v19, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v5 = [v13[0] authenticationHandler];
    _objc_release(v5);
    if (v5)
    {
      [v13[0] _reauthenticateAndExecuteWithCompletion:*(a1 + 48)];
    }

    else
    {
      v10 = _AKLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v18, v13[0]);
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@: Unable to reauthenticate with nil authenticationHandler", v18, 0xCu);
      }

      objc_storeStrong(&v10, 0);
      if (*(a1 + 48))
      {
        (*(*(a1 + 48) + 16))();
      }
    }
  }

  else if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void sub_1000D55C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23 = 0;
  objc_storeStrong(&v23, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21[1] = a1;
  v4 = objc_opt_class();
  v21[0] = sub_1000D58D4(v4, v23);
  v20 = 0;
  v8 = [*(a1 + 32) urlRequestProvider];
  v18 = v20;
  v9 = [v8 validateResponseData:location[0] error:&v18];
  objc_storeStrong(&v20, v18);
  _objc_release(v8);
  v19 = v9;
  v11 = [*(a1 + 32) urlRequestProvider];
  v17 = [v11 responseDictionaryWithData:location[0] error:0];
  _objc_release(v11);
  v16 = 0;
  if (v22)
  {
    v14 = 0;
    v12 = 0;
    if (v19)
    {
      objc_storeStrong(&v16, v22);
    }

    else
    {
      v5 = v22;
      v15 = [v20 userInfo];
      v14 = 1;
      v13 = [v5 ak_errorByAppendingUserInfo:?];
      v12 = 1;
      objc_storeStrong(&v16, v13);
    }

    if (v12)
    {
      _objc_release(v13);
    }

    if (v14)
    {
      _objc_release(v15);
    }
  }

  else if ((v19 & 1) == 0)
  {
    objc_storeStrong(&v16, v20);
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

id sub_1000D58D4(void *a1, void *a2)
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

void sub_1000D5A78(uint64_t a1, char a2, id obj)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    oslog[0] = _AKLogSystem();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v11, *(a1 + 32));
      _os_log_debug_impl(&_mh_execute_header, oslog[0], type, "%@: Reauthenticate succeeded, attempting to execute URL request again", v11, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    [*(a1 + 32) _executeAllowingReauthentication:0 completion:*(a1 + 40)];
  }

  else
  {
    v4 = _AKLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v10, *(a1 + 32), location);
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@: Failed to reauthenticate with error (%@)", v10, 0x16u);
    }

    objc_storeStrong(&v4, 0);
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_1000D6090(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] setValue:v5 forHTTPHeaderField:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_1000D8EEC(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  v7[0] = +[AKPrivateEmailStoreManager sharedInstance];
  v6 = [v7[0] currentEmailListVersion];
  if (location[0] && v6 && ![v6 isEqualToString:AKPrivateEmailInitialVersion])
  {
    v5 = [*(a1 + 32) appendRequestUrl:location[0] queryParameterNamed:AKPrivateEmailListVersionKey value:v6];
    (*(*(a1 + 40) + 16))();
    objc_storeStrong(&v5, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1000D92EC(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v36 = 0;
  objc_storeStrong(&v36, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34[1] = a1;
  if (v35)
  {
    v34[0] = _AKLogSystem();
    v33 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v34[0], OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v40, v35, location[0]);
      _os_log_error_impl(&_mh_execute_header, v34[0], v33, "Failed to fetch private emails list with error: %@\n%@", v40, 0x16u);
    }

    objc_storeStrong(v34, 0);
    (*(a1[5] + 16))();
  }

  else
  {
    v32 = 1;
    v31 = 0;
    v30 = [AAFSerialization dictionaryFromObject:v36 ofType:@"application/json"];
    v29 = [[AKPrivateEmailInformation alloc] initWithResponseBody:v30];
    if ([v29 invalidListVersionSupplied])
    {
      v28 = _AKLogHme();
      v27 = 2;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v8 = v28;
        v9 = v27;
        sub_10001CEEC(v26);
        _os_log_debug_impl(&_mh_execute_header, v8, v9, "Deleting Hide My Email database", v26, 2u);
      }

      objc_storeStrong(&v28, 0);
      v25 = +[AKPrivateEmailStoreManager sharedInstance];
      v24 = v31;
      [v25 clearDatabase:&v24];
      objc_storeStrong(&v31, v24);
      if (v31)
      {
        v23 = _AKLogHme();
        v22 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v39, v31);
          _os_log_error_impl(&_mh_execute_header, v23, v22, "Failed to clear Hide My Email database. Error: %@", v39, 0xCu);
        }

        objc_storeStrong(&v23, 0);
        v32 = 0;
        objc_storeStrong(&v35, v31);
      }

      objc_storeStrong(&v25, 0);
    }

    v21 = +[AKPrivateEmailStoreManager sharedInstance];
    objc_storeStrong(&v31, 0);
    v20 = v31;
    v7 = [v21 commitChangesToCacheWithInformation:v29 error:&v20];
    objc_storeStrong(&v31, v20);
    if (!v7)
    {
      v4 = [NSString alloc];
      v19 = [v4 initWithData:v36 encoding:4];
      v18 = _AKLogHme();
      v17 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v38, v19);
        _os_log_error_impl(&_mh_execute_header, v18, v17, "Failed to unpack private emails list. Got:%@", v38, 0xCu);
      }

      objc_storeStrong(&v18, 0);
      v32 = 0;
      objc_storeStrong(&v35, v31);
      objc_storeStrong(&v19, 0);
    }

    if ([v29 shouldSyncWithServer] & 1) == 0 || (*(a1[4] + 48))
    {
      (*(a1[5] + 16))();
    }

    else
    {
      oslog = _AKLogHme();
      v15 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v5 = oslog;
        v6 = v15;
        sub_10001CEEC(v14);
        _os_log_debug_impl(&_mh_execute_header, v5, v6, "Detected that we must sync with server", v14, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v13 = [[AKPrivateEmailServiceController alloc] initWithClient:*(a1[4] + 32) altDSID:*(a1[4] + 40)];
      [(AKPrivateEmailServiceController *)v13 setIsSecondCall:1];
      [(AKPrivateEmailServiceController *)v13 executeFetchHmeListRequestWithCompletion:a1[5]];
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

void sub_1000D9DA8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  (*(a1[4] + 16))();
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_1000DA850(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v52 = 0;
  objc_storeStrong(&v52, a3);
  v51[1] = a1;
  if (location[0])
  {
    v3 = [NSMutableURLRequest alloc];
    v48 = [v3 initWithURL:location[0]];
    v23 = [*(a1 + 32) client];
    v22 = [v23 name];
    [v48 ak_addClientApp:?];
    _objc_release(v22);
    _objc_release(v23);
    v25 = [*(a1 + 32) client];
    v24 = [v25 bundleID];
    [v48 ak_addClientBundleIDHeader:?];
    _objc_release(v24);
    _objc_release(v25);
    v47 = [*(a1 + 32) authKitBody];
    v45 = 0;
    v26 = 1;
    if (!v47)
    {
      v46 = [*(a1 + 32) authKitBodyData];
      v45 = 1;
      v26 = v46 != 0;
    }

    if (v45)
    {
      _objc_release(v46);
    }

    if (v26)
    {
      [v48 setHTTPMethod:@"POST"];
      if (v47)
      {
        if ([*(a1 + 32) requestBodyType] == 1)
        {
          [v48 ak_addJSONRequestHeader];
          [v48 ak_setJSONBodyWithParameters:v47];
        }

        else
        {
          v21 = [*(a1 + 32) serverCompatibleRequestBodyWithPayload:v47];
          [v48 ak_setBodyWithParameters:?];
          _objc_release(v21);
        }
      }

      else
      {
        v20 = [*(a1 + 32) authKitBodyData];
        [v48 setHTTPBody:?];
        _objc_release(v20);
      }
    }

    else
    {
      [v48 setHTTPMethod:@"GET"];
    }

    v44 = 0;
    v4 = *(a1 + 32);
    v43 = 0;
    v19 = [v4 signRequest:v48 error:&v43];
    objc_storeStrong(&v44, v43);
    if (v19)
    {
      v40 = _AKLogSystem();
      v39 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v56, v48);
        _os_log_debug_impl(&_mh_execute_header, v40, v39, "Request: %@", v56, 0xCu);
      }

      objc_storeStrong(&v40, 0);
      v38 = _AKLogSystem();
      v37 = 2;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v15 = v38;
        v16 = v37;
        v18 = [v48 allHTTPHeaderFields];
        v17 = [v18 ak_redactedCopy];
        v36 = _objc_retain(v17);
        sub_1000194D4(v55, v36);
        _os_log_debug_impl(&_mh_execute_header, v15, v16, "Request Headers: %@", v55, 0xCu);
        _objc_release(v17);
        _objc_release(v18);
        objc_storeStrong(&v36, 0);
      }

      objc_storeStrong(&v38, 0);
      if (v47)
      {
        oslog = _AKLogSystem();
        v34 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          v12 = oslog;
          v13 = v34;
          v14 = [v47 ak_redactedCopy];
          v33 = _objc_retain(v14);
          sub_1000194D4(v54, v33);
          _os_log_debug_impl(&_mh_execute_header, v12, v13, "Request Body: %@", v54, 0xCu);
          _objc_release(v14);
          objc_storeStrong(&v33, 0);
        }

        objc_storeStrong(&oslog, 0);
      }

      if (*(*(a1 + 32) + 72))
      {
        if ([*(*(a1 + 32) + 72) deviceRegionRequired])
        {
          [v48 ak_addWalrusDeviceRegionHeader];
        }

        if ([*(*(a1 + 32) + 72) isContextEligibleForPasscodeAuth])
        {
          [v48 ak_addPasscodeAuthHeader];
        }

        v11 = [*(*(a1 + 32) + 72) sourceAltDSID];
        _objc_release(v11);
        if (v11)
        {
          v9 = v48;
          v10 = [*(*(a1 + 32) + 72) sourceAltDSID];
          [v9 ak_addHeaderForSourceAltDSID:?];
          _objc_release(v10);
        }

        if ([*(*(a1 + 32) + 72) securityCode])
        {
          v32 = _AKLogSystem();
          v31 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v7 = v32;
            v8 = v31;
            sub_10001CEEC(v30);
            _os_log_debug_impl(&_mh_execute_header, v7, v8, "Signing request with the security code", v30, 2u);
          }

          objc_storeStrong(&v32, 0);
          [v48 ak_addHeaderForSecurityCode:{objc_msgSend(*(*(a1 + 32) + 72), "securityCode")}];
        }
      }

      if (*(a1 + 40))
      {
        v5 = (*(a1 + 40) + 16);
        v6 = [v48 copy];
        (*v5)();
        _objc_release(v6);
      }

      v49 = 0;
    }

    else
    {
      v42 = _AKLogSystem();
      v41 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v57, v44);
        _os_log_error_impl(&_mh_execute_header, v42, v41, "Failed to sign the request with error: %@", v57, 0xCu);
      }

      objc_storeStrong(&v42, 0);
      if (*(a1 + 40))
      {
        (*(*(a1 + 40) + 16))();
      }

      v49 = 1;
    }

    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v48, 0);
    if (!v49)
    {
      v49 = 0;
    }
  }

  else
  {
    v51[0] = _AKLogSystem();
    v50 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v51[0], OS_LOG_TYPE_ERROR))
    {
      v27 = [*(a1 + 32) urlBagKey];
      sub_1000194D4(v58, v27);
      _os_log_error_impl(&_mh_execute_header, v51[0], v50, "Attempting to build request without a URL (urlBagKey: %@), bad things to come...", v58, 0xCu);
      _objc_release(v27);
    }

    objc_storeStrong(v51, 0);
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }

    v49 = 1;
  }

  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
}

id sub_1000DB9E8(void *a1, void *a2)
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

void sub_1000E0F08(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = a1;
  if (v8)
  {
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }

    v6 = 1;
  }

  else
  {
    v5 = [location[0] objectForKeyedSubscript:AKAuthenticationPasswordKey];
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }

    objc_storeStrong(&v5, 0);
    v6 = 0;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E1470(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17[1] = a1;
  if (v18)
  {
    v17[0] = _AKLogSystem();
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_ERROR))
    {
      sub_10004C098(v22, "[AKAuthModeController fetchAuthModeWithContext:client:completion:]_block_invoke", v18);
      _os_log_error_impl(&_mh_execute_header, v17[0], v16, "%s: Failed to fetch info with error: %@", v22, 0x16u);
    }

    objc_storeStrong(v17, 0);
    v7 = *(a1 + 48);
    v14 = [*(a1 + 32) _unknownAuthModeInfo];
    v15 = v4;
    v8 = [*(a1 + 32) _authModeErrorFromError:v18];
    (*(v7 + 16))(v7, v14, v15);
    _objc_release(v8);
  }

  else
  {
    v13 = _AKLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) username];
      sub_1000194D4(v21, v6);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Fetched authMode for %@", v21, 0xCu);
      _objc_release(v6);
    }

    objc_storeStrong(&v13, 0);
    v12 = [*(a1 + 32) _authModeInfoFromResponse:v19];
    [*(a1 + 32) _saveAuthMode:v12 withContext:{v5, *(a1 + 40)}];
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E25E8(NSObject *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v11, v8);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Revoke request came back with error: %@", v11, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))(a1[4].isa, v8 == 0, v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E2A74(uint64_t a1)
{
  v3 = objc_alloc(*(a1 + 32));
  v4 = +[AKAccountManager sharedInstance];
  v1 = [v3 initWithAccountManager:?];
  v2 = qword_100374768;
  qword_100374768 = v1;
  _objc_release(v2);
  _objc_release(v4);
}

void sub_1000E3318(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = [*(a1 + 32) objectForKeyedSubscript:?];
  v5 = [location[0] objectForKeyedSubscript:@"sn"];
  v7 = [v6 isEqualToString:?];
  _objc_release(v5);
  _objc_release(v6);
  if (v7)
  {
    v2 = *(a1 + 40);
    v3 = [location[0] objectForKeyedSubscript:@"mid"];
    [v2 addObject:?];
    _objc_release(v3);
  }

  objc_storeStrong(location, 0);
}

void sub_1000E344C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) altDSID];
  [v1 _refreshDeviceListForAltDSID:?];
  _objc_release(v2);
}

void sub_1000E38DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) altDSID];
  [v1 _clearDeviceListForAltDSID:?];
  _objc_release(v2);
}

void sub_1000E3BD0(id a1, AKDeviceListResponse *a2, NSError *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  if (v12)
  {
    v11[0] = _AKLogSystem();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000831E0(v14, v12);
      _os_log_error_impl(&_mh_execute_header, v11[0], v10, "Failed to refresh device list with error: %{private}@", v14, 0xCu);
    }

    objc_storeStrong(v11, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v8;
      sub_10001CEEC(v7);
      _os_log_debug_impl(&_mh_execute_header, v3, v4, "Refreshed device list successfully.", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E3F38(uint64_t a1, char a2, id obj)
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

void sub_1000E4348(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v36 = 0;
  objc_storeStrong(&v36, a3);
  v35 = a1;
  v33 = 0;
  v28 = 0;
  if (location[0])
  {
    v34 = [*(a1 + 32) deviceRequestContext];
    v33 = 1;
    v28 = v34 != 0;
  }

  if (v33)
  {
    _objc_release(v34);
  }

  if (v28)
  {
    v3 = [NSURLComponents alloc];
    v32 = [v3 initWithURL:location[0] resolvingAgainstBaseURL:0];
    v31 = +[NSMutableArray array];
    v24 = [*(a1 + 32) deviceRequestContext];
    v25 = [v24 includeUntrustedDevices];
    _objc_release(v24);
    if (v25)
    {
      v23 = [NSURLQueryItem queryItemWithName:@"allDevices" value:AKTrueValue];
      [v31 addObject:?];
      _objc_release(v23);
    }

    v21 = [*(a1 + 32) deviceRequestContext];
    v22 = [v21 includeFamilyDevices];
    _objc_release(v21);
    if (v22)
    {
      v20 = [NSURLQueryItem queryItemWithName:@"includeFamily" value:AKTrueValue];
      [v31 addObject:?];
      _objc_release(v20);
    }

    v18 = [*(a1 + 32) deviceRequestContext];
    v17 = [v18 services];
    v19 = [v17 count];
    _objc_release(v17);
    _objc_release(v18);
    if (v19)
    {
      v14 = [*(a1 + 32) deviceRequestContext];
      v13 = [v14 services];
      v30 = [v13 componentsJoinedByString:{@", "}];
      _objc_release(v13);
      _objc_release(v14);
      v15 = v31;
      v16 = [NSURLQueryItem queryItemWithName:@"services" value:v30];
      [v15 addObject:?];
      _objc_release(v16);
      objc_storeStrong(&v30, 0);
    }

    v11 = [*(a1 + 32) deviceRequestContext];
    v10 = [v11 operatingSystems];
    v12 = [v10 count];
    _objc_release(v10);
    _objc_release(v11);
    if (v12)
    {
      v7 = [*(a1 + 32) deviceRequestContext];
      v6 = [v7 operatingSystems];
      v29 = [v6 componentsJoinedByString:{@", "}];
      _objc_release(v6);
      _objc_release(v7);
      v8 = v31;
      v9 = [NSURLQueryItem queryItemWithName:@"oses" value:v29];
      [v8 addObject:?];
      _objc_release(v9);
      objc_storeStrong(&v29, 0);
    }

    if ([v31 count])
    {
      [v32 setQueryItems:v31];
    }

    v4 = (*(a1 + 40) + 16);
    v5 = [v32 URL];
    (*v4)();
    _objc_release(v5);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E5030(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15[1] = a3;
  v15[0] = 0;
  objc_storeStrong(v15, a4);
  v14[1] = a1;
  v14[0] = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v14[0];
    type = v13;
    sub_10001CEEC(v12);
    _os_log_impl(&_mh_execute_header, log, type, "Finished verification warm up..", v12, 2u);
  }

  objc_storeStrong(v14, 0);
  if (*(a1 + 56))
  {
    if (v15[0])
    {
      v5 = *(a1 + 56);
      v6 = [NSError ak_errorWithCode:-7001 underlyingError:v15[0]];
      (*(v5 + 16))(v5, 0);
      _objc_release(v6);
    }

    else
    {
      (*(*(a1 + 56) + 16))(*(a1 + 56), location[0] != 0, 0);
    }
  }

  v4 = +[AKAccountManager sharedInstance];
  [(AKAccountManager *)v4 updateSatoriWarmUpTimestampForAccount:*(a1 + 32)];
  _objc_release(v4);
  [*(a1 + 40) invalidate];
  objc_storeStrong(v15, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E53C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19[1] = a3;
  v19[0] = 0;
  objc_storeStrong(v19, a4);
  v18[1] = a1;
  if (v19[0])
  {
    v18[0] = _AKLogSystem();
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v21, v19[0]);
      _os_log_error_impl(&_mh_execute_header, v18[0], v17, "CoreIDV performVerification failed with error: %@, Proceding to request", v21, 0xCu);
    }

    objc_storeStrong(v18, 0);
    [*(*(a1 + 32) + 16) didPerformVerificationWithSuccess:0 duration:mach_absolute_time() - *(a1 + 56)];
    [*(a1 + 40) invalidate];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(*(a1 + 32) + 16) didPerformVerificationWithSuccess:1 duration:mach_absolute_time() - *(a1 + 56)];
    v16 = mach_absolute_time();
    v4 = *(a1 + 40);
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1000E56B8;
    v12 = &unk_100323058;
    v13 = _objc_retain(*(a1 + 32));
    v15[1] = v16;
    v14 = _objc_retain(*(a1 + 40));
    v15[0] = _objc_retain(*(a1 + 48));
    [v4 getVerificationResultWithOptions:&__NSDictionary0__struct completion:&v8];
    objc_storeStrong(v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(v19, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E56B8(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5[1] = a1;
  if (v6)
  {
    v5[0] = _AKLogSystem();
    if (os_log_type_enabled(v5[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v8, v6);
      _os_log_error_impl(&_mh_execute_header, v5[0], OS_LOG_TYPE_ERROR, "CoreIDV getVerificationResult failed with error: %@, Proceding to request", v8, 0xCu);
    }

    objc_storeStrong(v5, 0);
  }

  [*(*(a1 + 32) + 16) didCompleteVerificationWithSuccess:v6 == 0 duration:mach_absolute_time() - *(a1 + 56)];
  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E5AF0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100374778;
  qword_100374778 = v1;
  _objc_release(v2);
}

void sub_1000E61E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v29 = 0;
  objc_storeStrong(&v29, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27[1] = a1;
  if (v28)
  {
    v27[0] = _AKLogSystem();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v27[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v32, v28);
      _os_log_error_impl(&_mh_execute_header, v27[0], v26, "Failed to fetch configuration info with error: %@", v32, 0xCu);
    }

    objc_storeStrong(v27, 0);
    if (*(a1 + 48))
    {
      v12 = *(a1 + 48);
      v13 = [NSError ak_errorWithCode:-7029 underlyingError:v28];
      (*(v12 + 16))(v12, 0);
      _objc_release(v13);
    }

LABEL_28:
    v21 = 0;
    goto LABEL_29;
  }

  v25 = [AAFSerialization dictionaryFromObject:v29 ofType:@"application/x-plist"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v25 objectForKeyedSubscript:@"ec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [*(a1 + 32) _decodeConfigurationInfo:v25];
      if (v17)
      {
        [*(a1 + 32) updateUserConfigForAltDSID:*(a1 + 40) configurationInfo:v17];
        if (*(a1 + 48))
        {
          (*(*(a1 + 48) + 16))();
        }
      }

      else if (*(a1 + 48))
      {
        v4 = *(a1 + 48);
        v5 = [NSError ak_errorWithCode:-7010];
        (*(v4 + 16))(v4, 0);
        _objc_release(v5);
      }

      objc_storeStrong(&v17, 0);
      v21 = 0;
    }

    else
    {
      v19 = _AKLogSystem();
      v18 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v31, @"ec", v20);
        _os_log_error_impl(&_mh_execute_header, v19, v18, "Invalid key %@ in server response: %@", v31, 0x16u);
      }

      objc_storeStrong(&v19, 0);
      if (*(a1 + 48))
      {
        v6 = *(a1 + 48);
        v7 = [NSError ak_errorWithCode:-7010];
        (*(v6 + 16))(v6, 0);
        _objc_release(v7);
      }

      v21 = 1;
    }

    objc_storeStrong(&v20, 0);
  }

  else
  {
    v24 = _AKLogSystem();
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v10 = v24;
      v11 = v23;
      sub_10001CEEC(v22);
      _os_log_error_impl(&_mh_execute_header, v10, v11, "No body parameters in fetch configuration info response!", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    if (*(a1 + 48))
    {
      v8 = *(a1 + 48);
      v9 = [NSError ak_errorWithCode:-7010];
      (*(v8 + 16))(v8, 0);
      _objc_release(v9);
    }

    v21 = 1;
  }

  objc_storeStrong(&v25, 0);
  if (!v21)
  {
    goto LABEL_28;
  }

LABEL_29:
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

id sub_1000E72E0(void *a1, void *a2)
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

void sub_1000E7370(uint64_t *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11[1] = a1;
  if (v12)
  {
    v11[0] = _AKLogSystem();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v16, v12);
      _os_log_error_impl(&_mh_execute_header, v11[0], v10, "Failed to set configuration info with error: %@", v16, 0xCu);
    }

    objc_storeStrong(v11, 0);
    if (a1[5])
    {
      v4 = a1[5];
      v5 = [NSError ak_errorWithCode:-7029 underlyingError:v12];
      (*(v4 + 16))(v4, 0);
      _objc_release(v5);
    }
  }

  else
  {
    v9 = _AKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v15, a1[4]);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set configuration info completed for %@", v15, 0xCu);
    }

    objc_storeStrong(&v9, 0);
    if (a1[5])
    {
      (*(a1[5] + 16))();
    }
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

BOOL sub_1000E827C(void *a1, void *a2)
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

void sub_1000E8364(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = 0;
  objc_storeStrong(&v4, a3);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E8C20(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100374788;
  qword_100374788 = v1;
  _objc_release(v2);
}

void sub_1000E94B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23[1] = a1;
  v23[0] = 0;
  if (v24)
  {
    v22 = _AKLogSystem();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10004C098(v28, "[AKUserInfoController _fetchUserInformationWithContext:client:dataCenter:completion:]_block_invoke", v24);
      _os_log_error_impl(&_mh_execute_header, v22, v21, "%s: Failed to fetch info with error: %@", v28, 0x16u);
    }

    objc_storeStrong(&v22, 0);
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) altDSID];
      sub_1000194D4(v27, v14);
      _os_log_impl(&_mh_execute_header, v20, v19, "Fetched user info for %@", v27, 0xCu);
      _objc_release(v14);
    }

    objc_storeStrong(&v20, 0);
    v18 = [AAFSerialization dictionaryFromObject:v25 ofType:@"application/x-plist"];
    v4 = [AKAppleIDUserInformationResponse alloc];
    v5 = [(AKAppleIDUserInformationResponse *)v4 initWithResponseBody:v18];
    v6 = v23[0];
    v23[0] = v5;
    _objc_release(v6);
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) altDSID];
    [v8 _updateUserConfigIfNecessaryForAltDSID:? responseParameters:?];
    _objc_release(v9);
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) altDSID];
    [v10 _processIncomingUserInformationForAltDSID:? userInformation:?];
    _objc_release(v11);
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) altDSID];
    v7 = *(a1 + 48);
    [v12 _syncPrivateEmailsForAltDSID:? client:? userInformation:? completion:?];
    _objc_release(v13);
    objc_storeStrong(&v18, 0);
  }

  if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

void sub_1000E98FC(id a1, AKAppleIDUserInformationResponse *a2, NSError *a3)
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

BOOL sub_1000E9B2C(void *a1, void *a2)
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

void sub_1000E9D5C(id a1, NSDictionary *a2, NSError *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v8, v6);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Updated user configs with error %@", v8, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_1000EAAC8(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_1000EE744(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([*(a1 + 32) isEqualToString:@"0"])
  {
    location[0] = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v19;
      sub_10001CEEC(v18);
      _os_log_impl(&_mh_execute_header, log, type, "IDMS sent reset key to revoke authorization Database", v18, 2u);
    }

    objc_storeStrong(location, 0);
    v17 = 0;
    v5 = objc_opt_new();
    v1 = *(a1 + 40);
    v16 = v17;
    [v5 revokeAuthorizationForAllApplicationsWithAltDSID:v1 error:&v16];
    objc_storeStrong(&v17, v16);
    _objc_release(v5);
    if (v17)
    {
      v15 = _AKLogSystem();
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v22, v17);
        _os_log_error_impl(&_mh_execute_header, v15, v14, "Encountered error while revoking authorization database: %@", v22, 0xCu);
      }

      objc_storeStrong(&v15, 0);
    }

    else
    {
      v13 = _AKLogSystem();
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v13;
        v4 = v12;
        sub_10001CEEC(v11);
        _os_log_impl(&_mh_execute_header, v3, v4, "Authorization database revoked successfully", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v17, 0);
  }

  else
  {
    v2 = objc_opt_new();
    v10 = [v2 currentAuthorizationListVersionWithAltDSID:*(a1 + 40)];
    _objc_release(v2);
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B098(v21, *(a1 + 32), v10);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "We got an appListVersion with the user info new version: %@ \nold version: %@", v21, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (*(a1 + 32) && !sub_1000E9B2C(*(a1 + 32), v10))
    {
      [*(a1 + 48) _refreshApplicationInformationForAltDSID:*(a1 + 40)];
    }

    objc_storeStrong(&v10, 0);
  }
}

int64_t sub_1000EF460(id a1, id a2, id a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  v8 = objc_opt_class();
  v3 = objc_opt_class();
  v10 = sub_1000EF638(v3, location[0]);
  v9 = [v10 objectForKeyedSubscript:AKInformationCustodianUuidKey];
  v16[0] = sub_1000EF638(v8, v9);
  _objc_release(v9);
  _objc_release(v10);
  v11 = objc_opt_class();
  v4 = objc_opt_class();
  v13 = sub_1000EF638(v4, v17);
  v12 = [v13 objectForKeyedSubscript:AKInformationCustodianUuidKey];
  v15 = sub_1000EF638(v11, v12);
  _objc_release(v12);
  _objc_release(v13);
  v14 = [v16[0] compare:v15];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  return v14;
}

id sub_1000EF638(void *a1, void *a2)
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

int64_t sub_1000EF6C8(id a1, id a2, id a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  v8 = objc_opt_class();
  v3 = objc_opt_class();
  v10 = sub_1000EF638(v3, location[0]);
  v9 = [v10 objectForKeyedSubscript:AKInformationBeneficiaryUuidKey];
  v16[0] = sub_1000EF638(v8, v9);
  _objc_release(v9);
  _objc_release(v10);
  v11 = objc_opt_class();
  v4 = objc_opt_class();
  v13 = sub_1000EF638(v4, v17);
  v12 = [v13 objectForKeyedSubscript:AKInformationBeneficiaryUuidKey];
  v15 = sub_1000EF638(v11, v12);
  _objc_release(v12);
  _objc_release(v13);
  v14 = [v16[0] compare:v15];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  return v14;
}

void sub_1000EFC88(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  oslog[1] = a1;
  if (location[0])
  {
    v3 = objc_opt_new();
    [v3 updateAuthorizationListWithMetadataInfo:location[0] withAltDSID:a1[4].isa];
    _objc_release(v3);
  }

  else
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v9, v7);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to fetch authorized application list with error: %@", v9, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_1000F2F40(id a1, AKDeviceListResponse *a2, NSError *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  if (v12)
  {
    v11[0] = _AKLogSystem();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000831E0(v14, v12);
      _os_log_error_impl(&_mh_execute_header, v11[0], v10, "Failed to refresh device list with error: %{private}@", v14, 0xCu);
    }

    objc_storeStrong(v11, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v8;
      sub_10001CEEC(v7);
      _os_log_debug_impl(&_mh_execute_header, v3, v4, "Refreshed device list successfully.", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_1000F3CB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24[1] = a1;
  if (v25)
  {
    v24[0] = _AKLogSystem();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v30, v25);
      _os_log_error_impl(&_mh_execute_header, v24[0], v23, "User information update request failed: %@", v30, 0xCu);
    }

    objc_storeStrong(v24, 0);
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    v22 = 1;
  }

  else if ([location[0] statusCode] == 200)
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 32) altDSID];
      sub_10001CE98(v28, 1752392040, v7);
      _os_log_debug_impl(&_mh_execute_header, v18, v17, "User information update completed successfully for altDSID: %{mask.hash}@", v28, 0x16u);
      _objc_release(v7);
    }

    objc_storeStrong(&v18, 0);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) altDSID];
    v4 = *(a1 + 48);
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1000F40EC;
    v15 = &unk_100321230;
    v16 = _objc_retain(*(a1 + 56));
    [v5 updateUserInformationForAltDSID:v6 userInformation:v4 completion:&v11];
    _objc_release(v6);
    objc_storeStrong(&v16, 0);
    v22 = 0;
  }

  else
  {
    v21 = [NSError ak_errorWithCode:-7029];
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100036FE8(v29, [location[0] statusCode]);
      _os_log_error_impl(&_mh_execute_header, v20, v19, "User information update returned HTTP status %ld", v29, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }

    v22 = 1;
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void sub_1000F40EC(void *a1, char a2, id obj)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if (location)
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v14, location);
      _os_log_error_impl(&_mh_execute_header, v10[0], v9, "Failed to update local user information after server update: %@", v14, 0xCu);
    }

    objc_storeStrong(v10, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v7 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v7;
      sub_10001CEEC(v6);
      _os_log_debug_impl(&_mh_execute_header, v3, v4, "Successfully updated local user information after server update", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_1000F5D30(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_1000F6F98(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5[1] = a1;
  v5[0] = _AKLogHme();
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

void sub_1000F82BC(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5[1] = a1;
  v5[0] = _AKLogHme();
  if (os_log_type_enabled(v5[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v8, location[0], v6);
    _os_log_impl(&_mh_execute_header, v5[0], OS_LOG_TYPE_DEFAULT, "Presented UI! (%@, %@)", v8, 0x16u);
  }

  objc_storeStrong(v5, 0);
  [*(a1 + 32) _cacheFetchedPrivateEmail:location[0] keyAlreadyHashed:0 error:v6 completion:*(a1 + 48)];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_1000F9650(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 48) = a1;
  *(v10 - 52) = a2;
  objc_destroyWeak((v10 - 40));
  _Unwind_Resume(*(v10 - 48));
}

void sub_1000F9690(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained((a1 + 48));
  if (location[0] && v6[0])
  {
    [v6[0] _sendMessage:location[0] completionHandler:*(a1 + 40)];
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v9, *(a1 + 32), v7);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to process inMessage: %@ with error: %@", v9, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_storeStrong(v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_1000F9E34(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12[1] = a1;
  if (v13)
  {
    v12[0] = _AKLogSystem();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v17, v13);
      _os_log_error_impl(&_mh_execute_header, v12[0], v11, "Failed to send SPAKE2+ message with error: %@", v17, 0xCu);
    }

    objc_storeStrong(v12, 0);
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }

    v10 = 1;
  }

  else
  {
    v9 = _AKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v16, location[0]);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Finished sending SPAKE2+ message with response: %@", v16, 0xCu);
    }

    objc_storeStrong(&v9, 0);
    if (a1[4])
    {
      v4 = a1[4];
      v5 = 0;
      if ([location[0] statusCode] >= 200)
      {
        v5 = [location[0] statusCode] < 300;
      }

      (*(v4 + 16))(v4, v5, 0);
    }

    v10 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_1000FA3F4(id a1, id a2, id a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = 0;
  objc_storeStrong(&v4, a3);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

void sub_1000FB670(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [AAFAnalyticsEvent encodeElementNameWithIndexPostFix:a1[4] prefix:a1[5] element:location[0] activeElements:a1[6]];
  objc_storeStrong(location, 0);
}

void sub_1000FB9A4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = [location[0] name];
  v10 = [*(a1 + 32) name];
  _objc_release(v10);
  _objc_release(v11);
  if (v11 == v10)
  {
    v5 = [location[0] attributes];
    v7 = [v5 hash];
    v4 = [*(a1 + 32) attributes];
    v6 = [v4 hash];
    _objc_release(v4);
    _objc_release(v5);
    if (v7 == v6)
    {
      *a4 = 1;
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  objc_storeStrong(location, 0);
}

void sub_1000FC6E0(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (v6)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v8, *(a1 + 32), v6);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to get Anisette data for %@! Error: %@", v8, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), location[0]);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

id sub_100100DCC(void *a1, void *a2)
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

uint64_t sub_1001011EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 112;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 64;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

void sub_100101F10(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[3] = a3;
  v14[2] = a4;
  v14[1] = a1;
  v4 = objc_opt_class();
  v10 = sub_10010206C(v4, location[0]);
  v14[0] = [v10 mutableCopy];
  _objc_release(v10);
  v13 = _AKLogSystem();
  v12 = 2;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    log = v13;
    type = v12;
    sub_10001CEEC(v11);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Remove wrappedKey from beneficiaryInfo", v11, 2u);
  }

  objc_storeStrong(&v13, 0);
  [v14[0] removeObjectForKey:AKInformationBeneficiaryWrappedKeyKey];
  [a1[4] addObject:v14[0]];
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
}

id sub_10010206C(void *a1, void *a2)
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

void sub_100102734(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[3] = a3;
  v14[2] = a4;
  v14[1] = a1;
  v4 = objc_opt_class();
  v12 = sub_10010206C(v4, location[0]);
  v14[0] = [v12 mutableCopy];
  _objc_release(v12);
  v13 = _AKLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v14[0] objectForKeyedSubscript:AKInformationBeneficiaryUuidKey];
    sub_1000194D4(v16, v8);
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Removing wrappedKey from beneficiaryInfo and adding it to beneficiaryUUIDWrappedKeyDictionary. For UUID: %@", v16, 0xCu);
    _objc_release(v8);
  }

  objc_storeStrong(&v13, 0);
  v5 = *(a1 + 32);
  v7 = [v14[0] objectForKeyedSubscript:AKInformationBeneficiaryWrappedKeyKey];
  v6 = [v14[0] objectForKeyedSubscript:AKInformationBeneficiaryUuidKey];
  [v5 setValue:v7 forKey:?];
  _objc_release(v6);
  _objc_release(v7);
  [v14[0] removeObjectForKey:AKInformationBeneficiaryWrappedKeyKey];
  [*(a1 + 40) addObject:v14[0]];
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_100102A40(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = qword_100374798;
  v15 = qword_100374798;
  if (!qword_100374798)
  {
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100102B54;
    v7 = &unk_10031F358;
    v8 = &v11;
    v9 = v16;
    sub_100102B54(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t sub_100102B54(uint64_t a1)
{
  memcpy(__dst, off_100323620, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100374798 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100102C14()
{
  v2 = 0;
  v1 = sub_100102A40(&v2);
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

id sub_100102C90()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003747A0;
  v13 = qword_1003747A0;
  if (!qword_1003747A0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100102DC0;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100102DC0(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100102DC0(uint64_t a1)
{
  sub_100102C14();
  Class = objc_getClass("RPCompanionLinkClient");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_1003747A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100102E68()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003747A8;
  v13 = qword_1003747A8;
  if (!qword_1003747A8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100102F98;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100102F98(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100102F98(uint64_t a1)
{
  sub_100102C14();
  Class = objc_getClass("RPCompanionLinkDevice");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_1003747A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100103040()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003747B0;
  v13 = qword_1003747B0;
  if (!qword_1003747B0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100103148;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100103148(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_100103148(uint64_t a1)
{
  v1 = sub_100102C14();
  v2 = dlsym(v1, "RPDestinationIdentifierDirectPeer");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003747B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1001031B4()
{
  v2 = sub_100103040();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_10010321C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003747B8;
  v13 = qword_1003747B8;
  if (!qword_1003747B8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100103324;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100103324(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_100103324(uint64_t a1)
{
  v1 = sub_100102C14();
  v2 = dlsym(v1, "RPOptionAllowUnauthenticated");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003747B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100103390()
{
  v2 = sub_10010321C();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_1001033F8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003747C0;
  v13 = qword_1003747C0;
  if (!qword_1003747C0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100103500;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100103500(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_100103500(uint64_t a1)
{
  v1 = sub_100102C14();
  v2 = dlsym(v1, "RPOptionTimeoutSeconds");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003747C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10010356C()
{
  v2 = sub_1001033F8();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

id sub_1001035D4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003747C8;
  v13 = qword_1003747C8;
  if (!qword_1003747C8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100103704;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_100103704(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100103704(uint64_t a1)
{
  sub_100102C14();
  Class = objc_getClass("RPAppSignInService");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_1003747C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100103D94(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location)
{
  *(v11 - 240) = a1;
  *(v11 - 244) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v11 - 168));
  _Unwind_Resume(*(v11 - 240));
}

void sub_100103DC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7[1] = a1;
  v7[0] = objc_loadWeakRetained((a1 + 56));
  if (v7[0])
  {
    [v7[0] _handleStartFidoResponse:location[0] data:v9 context:*(a1 + 32) recoveryToken:*(a1 + 40) error:v8 completion:*(a1 + 48)];
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_100104934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v44 - 216));
  _Unwind_Resume(a1);
}

void sub_10010497C(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7[1] = a1;
  v7[0] = objc_loadWeakRetained((a1 + 56));
  if (v7[0])
  {
    [v7[0] _handleFinishFidoResponse:location[0] data:v9 context:*(a1 + 32) recoveryToken:*(a1 + 40) error:v8 completion:*(a1 + 48)];
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_100105468(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[3] = a3;
  v14[2] = a4;
  v14[1] = a1;
  v7 = [location[0] apps];
  v6 = [v7 allKeys];
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_1001055CC;
  v13 = &unk_100323748;
  v14[0] = _objc_retain(*(a1 + 32));
  [v6 enumerateObjectsUsingBlock:?];
  _objc_release(v6);
  _objc_release(v7);
  [*(a1 + 40) _storeDeveloperTeam:location[0] listVersion:*(a1 + 48)];
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
}

void sub_1001055CC(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([a1[4] containsObject:location[0]])
  {
    [a1[4] removeObject:location[0]];
  }

  else
  {
    [a1[4] addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

void sub_100105864(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] _storePrimaryAppAMSMetadata:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_100105CE0(void *a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v9 = a2;
  v8[2] = a3;
  v8[1] = a1;
  v8[0] = [AKSQLiteHelper stringFromColumn:0 inStatement:a2];
  v7 = [AKSQLiteHelper stringFromColumn:1 inStatement:v9];
  v6 = [AKSQLiteHelper stringFromColumn:2 inStatement:v9];
  v5 = [AKSQLiteHelper stringFromColumn:3 inStatement:v9];
  v4 = objc_alloc_init(AKAppiTunesMetadata);
  [v4 setBundleId:v8[0]];
  [v4 setAppName:v7];
  [v4 setAppDeveloperName:v6];
  [v4 setAdamID:v5];
  [*(*(a1[4] + 8) + 40) addObject:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
}

void sub_100105E7C(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

uint64_t sub_100106B14(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = [AKSQLiteHelper stringFromColumn:0 inStatement:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  _objc_release(v5);
  v6 = [AKSQLiteHelper stringFromColumn:1 inStatement:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  _objc_release(v8);
  result = a1;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a3 = 1;
    }
  }

  return result;
}

void sub_100106C14(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

uint64_t sub_1001071D0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = [AKSQLiteHelper stringFromColumn:0 inStatement:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  _objc_release(v5);
  result = a1;
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a3 = 1;
  }

  return result;
}

void sub_100107270(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_100107610(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, id *location, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  *(v28 - 160) = a1;
  *(v28 - 164) = a2;
  _Block_object_dispose((v28 - 144), 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(*(v28 - 160));
}

void sub_10010768C(void *a1, void *a2, void *a3)
{
  location[4] = a1;
  location[3] = a2;
  location[2] = a3;
  location[1] = a1;
  location[0] = [AKSQLiteHelper stringFromColumn:0 inStatement:a2];
  *(*(a1[4] + 8) + 24) = location[0] != 0;
  objc_storeStrong(location, 0);
}

void sub_100107710(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_100107BC0(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performInsertQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_100108284(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performInsertQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_100108848(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performInsertQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_100108FD0(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7[2] = a3;
  v7[1] = a1;
  v7[0] = [AKSQLiteHelper stringFromColumn:0 inStatement:a2];
  v6 = [AKSQLiteHelper stringFromColumn:1 inStatement:v8];
  v5 = [AKSQLiteHelper stringFromColumn:2 inStatement:v8];
  v4 = objc_alloc_init(AKDeveloperTeam);
  [v4 setTeamID:v7[0]];
  [v4 setUserIdentifier:v6];
  [v4 setPrivateEmail:v5];
  [*(*(a1[4] + 8) + 40) addObject:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
}

void sub_100109124(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_1001096DC(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7[2] = a3;
  v7[1] = a1;
  v7[0] = [AKSQLiteHelper stringFromColumn:0 inStatement:a2];
  v6 = [AKSQLiteHelper stringFromColumn:1 inStatement:v8];
  v5 = [AKSQLiteHelper stringFromColumn:2 inStatement:v8];
  v4 = [AKSQLiteHelper stringFromColumn:3 inStatement:v8];
  [*(*(a1[4] + 8) + 40) setBundleId:v7[0]];
  [*(*(a1[4] + 8) + 40) setAppName:v6];
  [*(*(a1[4] + 8) + 40) setAppDeveloperName:v5];
  [*(*(a1[4] + 8) + 40) setAdamID:v4];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
}

void sub_10010986C(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_10010A088(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performInsertQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_10010A130(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v7 = *(a1 + 32);
  v6 = v9;
  v8 = [*(a1 + 40) teamID];
  v3 = *(a1 + 48);
  [v7 _storeConsentedApplication:v6 teamID:? listVersion:?];
  _objc_release(v8);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_10010AA98(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performInsertQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_10010B268(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performInsertQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_10010BADC(id *a1, void *a2, void *a3)
{
  v4[4] = a1;
  v4[3] = a2;
  v4[2] = a3;
  v4[1] = a1;
  v4[0] = [AKSQLiteHelper stringFromColumn:0 inStatement:a2];
  [a1[4] addObject:v4[0]];
  objc_storeStrong(v4, 0);
}

void sub_10010BB60(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_10010BC08(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performInsertQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_10010C284(void *a1, sqlite3_stmt *a2, void *a3)
{
  v20 = a1;
  v19 = a2;
  v18[2] = a3;
  v18[1] = a1;
  v18[0] = [AKSQLiteHelper stringFromColumn:0 inStatement:a2];
  v17 = [AKSQLiteHelper stringFromColumn:1 inStatement:v19];
  v16 = [v17 componentsSeparatedByString:{@", "}];
  v15 = [NSNumber numberWithLongLong:sqlite3_column_int64(v19, 2)];
  v14 = [AKSQLiteHelper stringFromColumn:3 inStatement:v19];
  v13 = [AKSQLiteHelper stringFromColumn:4 inStatement:v19];
  v12 = [AKSQLiteHelper stringFromColumn:5 inStatement:v19];
  v11 = [AKSQLiteHelper doubleFromColumn:6 inStatement:v19];
  v10 = [AKSQLiteHelper stringFromColumn:7 inStatement:v19];
  [v11 doubleValue];
  v9 = [NSDate dateWithTimeIntervalSince1970:?];
  v8 = objc_alloc_init(AKConsentedApplication);
  [v8 setClientID:v18[0]];
  [v8 setState:{objc_msgSend(v15, "integerValue")}];
  [v8 setTransferState:v14];
  [v8 setScopes:v16];
  [v8 setPrimaryClientID:v13];
  if (v12)
  {
    v6 = v12;
  }

  else
  {
    v6 = AKAuthorizationCredentialOriginUnknown;
  }

  [v8 setOrigin:v6];
  [v8 setCreationDate:v9];
  [v8 setClientName:v10];
  v3 = v8;
  v4 = *(*(a1[4] + 8) + 40);
  v5 = [v8 clientID];
  [v4 setObject:v3 forKeyedSubscript:?];
  _objc_release(v5);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
}

void sub_10010C608(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_10010C6B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8[2] = a4;
  v8[1] = a1;
  v8[0] = [v9 clientID];
  v6 = [*(a1 + 32) _fetchAppMetadataForClientID:v8[0]];
  [v9 setAppiTunesMetadata:?];
  _objc_release(v6);
  [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:v8[0]];
  objc_storeStrong(v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_10010CD44(id *a1, void *a2, void *a3)
{
  location[4] = a1;
  location[3] = a2;
  location[2] = a3;
  location[1] = a1;
  location[0] = [AKSQLiteHelper stringFromColumn:0 inStatement:a2];
  if (location[0])
  {
    [a1[4] addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

void sub_10010CDCC(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_10010D07C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *location)
{
  *(v13 - 104) = a1;
  *(v13 - 108) = a2;
  _Block_object_dispose((v13 - 88), 8);
  _Unwind_Resume(*(v13 - 104));
}

void sub_10010D0C8(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained executor];
  v1 = *(a1 + 32);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10010D1A0;
  v9 = &unk_100323838;
  v10 = *(a1 + 40);
  [v3 performQuery:v1 rowHandler:?];
  _objc_release(v3);
  _objc_release(WeakRetained);
}

void sub_10010D1A0(uint64_t a1, uint64_t a2)
{
  v2 = [AKSQLiteHelper stringFromColumn:0 inStatement:a2];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  _objc_release(v4);
}

void sub_10010D5EC(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performInsertQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_10010DA88(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_int(a2, 1, *(a1 + 40)))
  {
    v2 = [NSError errorWithDomain:AKSQLErrorDomain code:-6004 userInfo:0];
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
    _objc_release(v4);
  }
}

void sub_10010DB38(uint64_t a1)
{
  v6[2] = a1;
  v6[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained executor];
  v1 = *(a1 + 32);
  location = (*(*(a1 + 40) + 8) + 40);
  v6[0] = *location;
  [v4 performInsertQuery:v1 error:v6];
  objc_storeStrong(location, v6[0]);
  _objc_release(v4);
  _objc_release(WeakRetained);
}

void sub_10010F4EC(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20[1] = a1;
  if (location[0] && !v21)
  {
    v17 = _AKLogSiwa();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v23, *(a1 + 32), location[0]);
      _os_log_impl(&_mh_execute_header, v17, v16, "Presenting authorization with context (%@) using view service (%@)", v23, 0x16u);
    }

    objc_storeStrong(&v17, 0);
    v5 = location[0];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_10010F80C;
    v12 = &unk_1003238C0;
    v13 = _objc_retain(location[0]);
    v14 = _objc_retain(*(a1 + 32));
    v15 = _objc_retain(*(a1 + 48));
    [v5 presentAuthorizationWithContext:v3 usingHost:v4 completionHandler:&v8];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v18 = 0;
  }

  else
  {
    v20[0] = _AKLogSiwa();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20[0], OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v24, *(a1 + 32), v21);
      _os_log_error_impl(&_mh_execute_header, v20[0], v19, "Failed to launch view service for context (%@) with error: %@", v24, 0x16u);
    }

    objc_storeStrong(v20, 0);
    if (*(a1 + 48))
    {
      (*(*(a1 + 48) + 16))();
    }

    v18 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void sub_10010F80C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _AKLogSiwa();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v11, *(a1 + 40), location[0]);
      _os_log_impl(&_mh_execute_header, oslog[0], type, "Successfully presented authorization for context (%@): %@", v11, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v5 = _AKLogSiwa();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v10, *(a1 + 40), v8);
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to present authorization using context (%@) with error: %@", v10, 0x16u);
    }

    objc_storeStrong(&v5, 0);
  }

  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

id sub_10010FEE4(uint64_t a1)
{
  result = [*(a1 + 32) _sanitizeContext:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_100110668(uint64_t a1, void *a2, void *a3, NSObject *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  oslog[2] = a4;
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_10004DCC8(v10, *(a1 + 32), location[0], v8);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "%@: Transformed %@ (%@)", v10, 0x20u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

id sub_100110924(void *a1, void *a2)
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

void sub_100111898(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (location[0])
  {
    [*(a1 + 32) _continueSRPContractWithAuthURL:location[0] context:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v7[0] = _AKLogSystem();
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v10, v8);
      _os_log_error_impl(&_mh_execute_header, v7[0], OS_LOG_TYPE_ERROR, "We failed to fetch basic auth URL, failing SRP... %@", v10, 0xCu);
    }

    objc_storeStrong(v7, 0);
    if (*(a1 + 48))
    {
      v3 = *(a1 + 48);
      v4 = [NSError ak_errorWithCode:-7005 underlyingError:v8];
      (*(v3 + 16))(v3, 0);
      _objc_release(v4);
    }
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_100111C28(uint64_t a1, char a2, id obj, void *a4)
{
  v14 = a1;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10[1] = a1;
  if (v13)
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      sub_10001CEEC(v8);
      _os_log_impl(&_mh_execute_header, log, type, "Successful SRP!", v8, 2u);
    }

    objc_storeStrong(v10, 0);
    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) _attemptUCRTHealingWithResponse:location];
  }

  else if (location || ([v11 ak_isAuthenticationError] & 1) == 0)
  {
    [*(a1 + 32) _parseFailedServerResponse:location withError:v11 context:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

void sub_100112048(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([a1[4] length] && objc_msgSend(a1[5], "length"))
  {
    location[0] = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v6;
      sub_10001CEEC(v5);
      _os_log_impl(&_mh_execute_header, log, type, "Trying to heal UCRT with credentials.", v5, 2u);
    }

    objc_storeStrong(location, 0);
    v1 = +[AKDevice currentDevice];
    [v1 healUCRTWithUsername:a1[4] passwordPET:a1[5]];
    _objc_release(v1);
  }
}

void sub_100112B58(id *a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15 = a1;
  queue = dispatch_get_global_queue(25, 0);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100112D10;
  v9 = &unk_1003239E8;
  v14 = v17 & 1;
  v10 = _objc_retain(a1[4]);
  v11 = _objc_retain(a1[5]);
  v13 = _objc_retain(a1[6]);
  v12 = _objc_retain(location);
  dispatch_async(queue, &v5);
  _objc_release(queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

id sub_100112D10(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if (*(a1 + 64))
  {
    location[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, log, type, "Anisette resync was successful. Retrying auth...", v7, 2u);
    }

    objc_storeStrong(location, 0);
    return [*(a1 + 32) performSRPContractWithContext:*(a1 + 40) completion:*(a1 + 56)];
  }

  else
  {
    v6 = _AKLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v10, *(a1 + 48));
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Anisette resync failed. Error: %@", v10, 0xCu);
    }

    objc_storeStrong(&v6, 0);
    v2 = *(a1 + 48);
    return (*(*(a1 + 56) + 16))();
  }
}

void sub_100113178(id *a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15 = a1;
  queue = dispatch_get_global_queue(25, 0);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100113330;
  v9 = &unk_1003239E8;
  v14 = v17 & 1;
  v10 = _objc_retain(a1[4]);
  v11 = _objc_retain(a1[5]);
  v13 = _objc_retain(a1[6]);
  v12 = _objc_retain(location);
  dispatch_async(queue, &v5);
  _objc_release(queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

id sub_100113330(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if (*(a1 + 64))
  {
    location[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, log, type, "Anisette erase was successful. Retrying auth...", v7, 2u);
    }

    objc_storeStrong(location, 0);
    return [*(a1 + 32) performSRPContractWithContext:*(a1 + 40) completion:*(a1 + 56)];
  }

  else
  {
    v6 = _AKLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v10, *(a1 + 48));
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Anisette erase failed. Error: %@", v10, 0xCu);
    }

    objc_storeStrong(&v6, 0);
    v2 = *(a1 + 48);
    return (*(*(a1 + 56) + 16))();
  }
}

void sub_100113870(uint64_t a1, char a2, id obj)
{
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9[1] = a1;
  if (v11)
  {
    v9[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v9[0];
      type = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, log, type, "URLSwitching was successfull retrying SRP With new url", v7, 2u);
    }

    objc_storeStrong(v9, 0);
    [*(a1 + 32) performSRPContractWithContext:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v13, location);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "URLSwitching failed with error: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100115620(uint64_t a1, uint64_t a2, id obj)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if ([*(a1 + 32) _isCapableOfSilentAuthForRequest:*(a1 + 40)] || v12 == 2)
  {
    [*(a1 + 32) _sanitizedCredentialStateForExternalClients:v12];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10[0] = _AKLogSiwa();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      sub_10001CEEC(v8);
      _os_log_impl(&_mh_execute_header, log, type, "This device is not trusted, returning 'REVOKED' credential state", v8, 2u);
    }

    objc_storeStrong(v10, 0);
    v3 = *(a1 + 48);
    v4 = [NSError ak_errorWithCode:-7084];
    (*(v3 + 16))(v3, 0);
    _objc_release(v4);
  }

  objc_storeStrong(&location, 0);
}

void sub_100115F40(uint64_t a1, uint64_t a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _internalCredentialStateForUserState:v5 error:location];
  objc_storeStrong(&location, 0);
}

void sub_100116224(uint64_t a1, uint64_t a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) _sanitizedCredentialStateForExternalClients:v5];
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_100116EB8(uint64_t a1, uint64_t a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (location)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), location);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = v5;
  }

  dispatch_group_leave(*(a1 + 32));
  objc_storeStrong(&location, 0);
}

void sub_100116F54(uint64_t a1, uint64_t a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (location)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), location);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = v5;
  }

  dispatch_group_leave(*(a1 + 32));
  objc_storeStrong(&location, 0);
}

uint64_t sub_100116FF0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_100118A8C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v47 = 0;
  objc_storeStrong(&v47, a3);
  v46[1] = a1;
  if (v47)
  {
    v46[0] = _AKLogSiwa();
    v45 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v46[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v51, v47);
      _os_log_impl(&_mh_execute_header, v46[0], v45, "Error fetching shared credentials - %@", v51, 0xCu);
    }

    objc_storeStrong(v46, 0);
    (*(*(a1 + 40) + 16))();
  }

  else if (location[0])
  {
    if ([location[0] count])
    {
      v44 = _AKLogSiwa();
      v43 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        sub_100036FE8(v50, [location[0] count]);
        _os_log_impl(&_mh_execute_header, v44, v43, "Application has a shared credential(s) (count - %lu)", v50, 0xCu);
      }

      objc_storeStrong(&v44, 0);
      v42 = 2;
      memset(__b, 0, sizeof(__b));
      v21 = _objc_retain(location[0]);
      v22 = [v21 countByEnumeratingWithState:__b objects:v49 count:16];
      if (v22)
      {
        v18 = *__b[2];
        v19 = 0;
        v20 = v22;
        while (1)
        {
          v17 = v19;
          if (*__b[2] != v18)
          {
            objc_enumerationMutation(v21);
          }

          v41 = *(__b[1] + 8 * v19);
          v12 = [v41 userID];
          v11 = [*(a1 + 32) userID];
          v13 = [v12 isEqualToString:?];
          _objc_release(v11);
          _objc_release(v12);
          v39 = v13;
          v15 = [v41 teamID];
          v14 = [*(a1 + 32) teamID];
          v16 = [v15 isEqualToString:?];
          _objc_release(v14);
          _objc_release(v15);
          v38 = v16;
          if (v16 & 1) != 0 && (v39)
          {
            oslog = _AKLogSiwa();
            v36 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              v9 = oslog;
              v10 = v36;
              sub_10001CEEC(v35);
              _os_log_impl(&_mh_execute_header, v9, v10, "Application has a shared credential with matching teamID and userID", v35, 2u);
            }

            objc_storeStrong(&oslog, 0);
            v42 = 1;
            v34 = 2;
            goto LABEL_31;
          }

          if (v38 & 1) != 0 && ([*(a1 + 32) shouldIgnoreUserID])
          {
            v33 = _AKLogSiwa();
            v32 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v7 = v33;
              v8 = v32;
              sub_10001CEEC(v31);
              _os_log_impl(&_mh_execute_header, v7, v8, "Application has a shared credential but userID match is being ignored.", v31, 2u);
            }

            objc_storeStrong(&v33, 0);
            v42 = 1;
            v34 = 2;
            goto LABEL_31;
          }

          if ([*(a1 + 32) shouldIgnoreTeamID] & 1) != 0 && (objc_msgSend(*(a1 + 32), "shouldIgnoreUserID"))
          {
            break;
          }

          ++v19;
          if (v17 + 1 >= v20)
          {
            v19 = 0;
            v20 = [v21 countByEnumeratingWithState:__b objects:v49 count:16];
            if (!v20)
            {
              goto LABEL_30;
            }
          }
        }

        v30 = _AKLogSiwa();
        v29 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v5 = v30;
          v6 = v29;
          sub_10001CEEC(v28);
          _os_log_impl(&_mh_execute_header, v5, v6, "Application has a shared credential but both userID & teamID match are being ignored.", v28, 2u);
        }

        objc_storeStrong(&v30, 0);
        v42 = 1;
        v34 = 2;
      }

      else
      {
LABEL_30:
        v34 = 0;
      }

LABEL_31:
      _objc_release(v21);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v27 = _AKLogSiwa();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v27;
        v4 = v26;
        sub_10001CEEC(v25);
        _os_log_impl(&_mh_execute_header, v3, v4, "Application has no shared credentials", v25, 2u);
      }

      objc_storeStrong(&v27, 0);
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

void sub_1001195B0(NSObject *a1, void *a2, void *a3)
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
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Encountered error while fetching developer team: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_10011998C(NSObject *a1, void *a2, void *a3)
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
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Encountered error while fetching developer team: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    objc_storeStrong((*(a1[4].isa + 1) + 40), location[0]);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_10011AC40(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = qword_1003747D0;
  v15 = qword_1003747D0;
  if (!qword_1003747D0)
  {
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_10011AD54;
    v7 = &unk_10031F358;
    v8 = &v11;
    v9 = v16;
    sub_10011AD54(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t sub_10011AD54(uint64_t a1)
{
  memcpy(__dst, off_100323B98, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_1003747D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10011AE14()
{
  v2 = 0;
  v1 = sub_10011AC40(&v2);
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

id sub_10011AE90()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003747D8;
  v13 = qword_1003747D8;
  if (!qword_1003747D8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10011AFC0;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_10011AFC0(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_10011AFC0(uint64_t a1)
{
  sub_10011AE14();
  Class = objc_getClass("CLGeocoder");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_1003747D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10011B068()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003747E0;
  v13 = qword_1003747E0;
  if (!qword_1003747E0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10011B198;
    v6 = &unk_10031F380;
    v7 = &v9;
    sub_10011B198(&v2);
  }

  v1 = _objc_retain(v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_10011B198(uint64_t a1)
{
  sub_10011AE14();
  Class = objc_getClass("CLLocation");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_1003747E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10011B3A8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.authkit.pushPresenterQueue", v3);
  v2 = qword_1003747E8;
  qword_1003747E8 = v1;
  _objc_release(v2);
  _objc_release(v3);
}

uint64_t sub_10011BD20(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _handleResult:a2 forAccount:*(a1 + 40)];
  result = a1;
  if (*(a1 + 48))
  {
    return (*(*(a1 + 48) + 16))();
  }

  return result;
}

void sub_10011BD98(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), location[0]);
  dispatch_semaphore_signal(*(a1 + 32));
  objc_storeStrong(location, 0);
}

void sub_10011BE0C(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v8[1] = a1;
  v8[0] = objc_loadWeakRetained((a1 + 48));
  if (v8[0])
  {
    CFRelease(*(a1 + 56));
    if (v9 == 1 && ([v8[0] _isPasswordPromptNecessaryForCommand:*(a1 + 64)] & 1) != 0)
    {
      location = _AKLogSystem();
      v6 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        log = location;
        type = v6;
        sub_10001CEEC(v5);
        _os_log_impl(&_mh_execute_header, log, type, "Notification requires authentication prompt.", v5, 2u);
      }

      objc_storeStrong(&location, 0);
      [v8[0] _promptForAuthenticationPasswordForAccount:*(a1 + 32) completion:*(a1 + 40)];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_storeStrong(v8, 0);
}

void sub_10011C8E4(uint64_t a1, void *a2)
{
  location[3] = a1;
  location[2] = a2;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Dismissed code notification.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  (*(*(a1 + 32) + 16))();
  CFRelease(*(a1 + 40));
}

void sub_10011CCDC(uint64_t a1, void *a2)
{
  v10[3] = a1;
  v10[2] = a2;
  v10[1] = a1;
  v2 = *(a1 + 32);
  queue = [objc_opt_class() _presenterQueue];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10011CDF8;
  v9 = &unk_10031F8B0;
  v10[0] = _objc_retain(*(a1 + 32));
  dispatch_sync(queue, &v5);
  _objc_release(queue);
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(v10, 0);
}

void sub_10011D774(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24[1] = a1;
  v24[0] = 0;
  v23 = 0;
  v22 = 0;
  v21 = _AKLogSystem();
  v20 = 2;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    log = v21;
    type = v20;
    sub_10001CEEC(v19);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Reverse geocode callback called", v19, 2u);
  }

  objc_storeStrong(&v21, 0);
  v18 = [location[0] firstObject];
  if (v18)
  {
    v3 = [v18 locality];
    v4 = v24[0];
    v24[0] = v3;
    _objc_release(v4);
    v5 = [v18 administrativeArea];
    v6 = v23;
    v23 = v5;
    _objc_release(v6);
  }

  v17 = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v28, v24[0], v23);
    _os_log_debug_impl(&_mh_execute_header, v17, v16, "Reverse geocode results: (Locality: %@ - Administrative Area: %@)", v28, 0x16u);
  }

  objc_storeStrong(&v17, 0);
  if (v24[0] && v23)
  {
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKit"];
    v9 = [(NSBundle *)v10 localizedStringForKey:@"APPLE_ID_LOCALE_AND_ADMINISTRATIVE_AREA_FORMAT" value:&stru_100330538 table:@"Localizable"];
    v7 = [NSString stringWithFormat:v24[0], v23];
    v8 = v22;
    v22 = v7;
    _objc_release(v8);
    _objc_release(v9);
    _objc_release(v10);
  }

  else if (v24[0])
  {
    objc_storeStrong(&v22, v24[0]);
  }

  else if (v23)
  {
    objc_storeStrong(&v22, v23);
  }

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v27, v22);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "locationName = %@", v27, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

void sub_10011E994(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  if (*(a1[4] + 16))
  {
    CFUserNotificationCancel(*(a1[4] + 16));
    *(a1[4] + 16) = 0;
    location[0] = _AKLogSystem();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1[4] + 8) messageId];
      sub_1000194D4(v10, v4);
      _os_log_impl(&_mh_execute_header, location[0], v7, "Torn down notification with ID: %@", v10, 0xCu);
      _objc_release(v4);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v6 = _AKLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1[4] + 8) messageId];
      sub_1000194D4(v9, v3);
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Attempted to tear down notification, but it was not found for identifier... %@", v9, 0xCu);
      _objc_release(v3);
    }

    objc_storeStrong(&v6, 0);
  }

  v2 = +[NSNotificationCenter defaultCenter];
  v1 = [*(a1[4] + 8) messageId];
  [(NSNotificationCenter *)v2 postNotificationName:@"AKNotificationNameTornDown" object:?];
  _objc_release(v1);
  _objc_release(v2);
}

uint64_t sub_10011EE9C(CFOptionFlags a1)
{
  responseFlags[2] = a1;
  responseFlags[1] = a1;
  responseFlags[0] = 0;
  CFUserNotificationReceiveResponse(*(a1 + 48), 0.0, responseFlags);
  v5 = AKUserNotificationResponseAction();
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [NSNumber numberWithUnsignedLong:v5];
    sub_1000194D4(v7, v2);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Notification responded: %@", v7, 0xCu);
    _objc_release(v2);
  }

  objc_storeStrong(&oslog, 0);
  return (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) _notificationResultFromButtonPressed:v5]);
}

id sub_10011F584(uint64_t a1, uint64_t a2)
{
  CFRelease(*(a1 + 48));
  if (a2 == 1)
  {
    [*(a1 + 32) _startChangePasswordFlowForAccount:*(a1 + 40)];
  }

  return +[NSXPCConnection endTransaction];
}

void sub_10011FC1C(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v8, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "Got authentication results back based on the prompt for notification: %@", v8, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_100120490(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[1] = a1;
  if (location[0])
  {
    v11[0] = _AKLogSystem();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) description];
      v6 = [location[0] description];
      sub_10001B098(v14, v7, v6);
      _os_log_error_impl(&_mh_execute_header, v11[0], v10, "Failed to arm device with context %@ with error %@", v14, 0x16u);
      _objc_release(v6);
      _objc_release(v7);
    }

    objc_storeStrong(v11, 0);
  }

  else
  {
    v9 = _AKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) description];
      sub_1000194D4(v13, v5);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device armed with context %@ successfully.", v13, 0xCu);
      _objc_release(v5);
    }

    objc_storeStrong(&v9, 0);
  }

  v3 = *(a1 + 56);
  v2 = location[0] == 0;
  v4 = [*(a1 + 40) _teardownPayloadWithPushMessage:*(a1 + 48) isArmed:location[0] == 0];
  (*(v3 + 16))(v3, v2);
  _objc_release(v4);
  objc_storeStrong(location, 0);
}

void sub_100120F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v23 - 104));
  _Unwind_Resume(a1);
}

void sub_100120F4C(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    oslog = _AKLogSiwa();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v5 = type;
      v6 = [location[0] domain];
      v3 = _objc_retain(v6);
      v8 = v3;
      v2 = [location[0] code];
      sub_1000C53D8(v13, v3, v2, location[0]);
      _os_log_error_impl(&_mh_execute_header, log, v5, "Authorization Endorser client failed to activate. {errorDomain=%{public}@, errorCode=%ld, error=%@}", v13, 0x20u);
      _objc_release(v6);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&oslog, 0);
    [v11[0] _deactivate];
  }

  else
  {
    [v11[0] _sendStartAuthorizationRequest];
  }

  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
}

void sub_100121460(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, id *location)
{
  *(v13 - 96) = a1;
  *(v13 - 100) = a2;
  objc_destroyWeak((v13 - 88));
  _Unwind_Resume(*(v13 - 96));
}

void sub_1001214BC(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v25 = 0;
  objc_storeStrong(&v25, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23[1] = a1;
  v23[0] = objc_loadWeakRetained(a1 + 4);
  if (v24)
  {
    v11 = [v24 domain];
    v12 = 0;
    if ([v11 isEqualToString:AKAppleIDAuthenticationErrorDomain])
    {
      v12 = [v24 code] == -7071;
    }

    _objc_release(v11);
    v22 = v12;
    if (v12)
    {
      v21 = _AKLogSiwa();
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        log = v21;
        type = v20;
        sub_10001CEEC(v19);
        _os_log_impl(&_mh_execute_header, log, type, "Ignoring StartAuthorization another endorser is already handling it.", v19, 2u);
      }

      objc_storeStrong(&v21, 0);
    }

    else
    {
      v18 = _AKLogSiwa();
      v17 = 16;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v6 = v18;
        v7 = v17;
        v8 = [v24 domain];
        v5 = _objc_retain(v8);
        v16 = v5;
        v4 = [v24 code];
        sub_1000C53D8(v27, v5, v4, v24);
        _os_log_error_impl(&_mh_execute_header, v6, v7, "StartAuthorization failed. {errorDomain=%{public}@, errorCode=%ld, error=%@}", v27, 0x20u);
        _objc_release(v8);
        objc_storeStrong(&v16, 0);
      }

      objc_storeStrong(&v18, 0);
    }

    [v23[0] _deactivate];
  }

  else
  {
    [v23[0] _handleStartAuthorizationWithResponse:location[0]];
  }

  objc_storeStrong(v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

void sub_100121D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, id *location, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, uint64_t a43)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v43 - 248));
  _Unwind_Resume(a1);
}

void sub_100121DD8(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5[1] = a1;
  v5[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    [v5[0] _sendAuthorizationDidFinishRequestWithAuthorization:location[0]];
  }

  else
  {
    [v5[0] _sendAuthorizationDidFinishRequestWithError:v6];
  }

  objc_storeStrong(v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_1001222CC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, id *location)
{
  *(v12 - 192) = a1;
  *(v12 - 196) = a2;
  objc_destroyWeak((v12 - 184));
  _Unwind_Resume(*(v12 - 192));
}

void sub_100122328(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained(a1 + 4);
  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = location[0];
    v5 = v13;
    v7 = [v12[0] endorseeDevice];
    v6 = [v12[0] endorseeDevice];
    sub_1001224F4(v16, v4, v5, v7, v6);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Received AuthorizationDidFinish response. {response=%@, error=%@, device=%@, device_ptr=%p}", v16, 0x2Au);
    _objc_release(v6);
    _objc_release(v7);
  }

  objc_storeStrong(&oslog, 0);
  [v12[0] _deactivate];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1001224F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void sub_100122BDC(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained(a1 + 4);
  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = location[0];
    v5 = v13;
    v7 = [v12[0] endorseeDevice];
    v6 = [v12[0] endorseeDevice];
    sub_1001224F4(v16, v4, v5, v7, v6);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Received AuthorizationDidFinish response. {response=%@, error=%@, device=%@, device_ptr=%p}", v16, 0x2Au);
    _objc_release(v6);
    _objc_release(v7);
  }

  objc_storeStrong(&oslog, 0);
  [v12[0] _deactivate];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_100123014(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, id *location)
{
  *(v13 - 96) = a1;
  *(v13 - 100) = a2;
  objc_destroyWeak((v13 - 88));
  _Unwind_Resume(*(v13 - 96));
}

void sub_100123070(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[1] = a1;
  if (location[0])
  {
    v14[0] = objc_loadWeakRetained(a1 + 4);
    v13 = _AKLogSiwa();
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      v9 = [location[0] domain];
      v2 = _objc_retain(v9);
      v11 = v2;
      v3 = [location[0] code];
      v4 = location[0];
      v8 = [v14[0] endorseeDevice];
      v7 = [v14[0] endorseeDevice];
      sub_10012325C(v16, v2, v3, v4, v8, v7);
      _os_log_error_impl(&_mh_execute_header, log, type, "Error sending DidStartServerAuthorization Rapport event. {errorDomain=%{public}@, errorCode=%ld, error=%@, device=%@, device_ptr=%p}", v16, 0x34u);
      _objc_release(v7);
      _objc_release(v8);
      _objc_release(v9);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
    objc_storeStrong(v14, 0);
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_10012325C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

void sub_1001234CC(id a1)
{
  v1 = objc_alloc_init(AKAuthenticationUILiaison);
  v2 = qword_1003747F8;
  qword_1003747F8 = v1;
  _objc_release(v2);
}

void sub_1001237C0(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13[1] = a1;
  if (v14)
  {
    v13[0] = _AKLogSystem();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v19, v14);
      _os_log_error_impl(&_mh_execute_header, v13[0], v12, "Failed to fetch UI capable context with error: %@", v19, 0xCu);
    }

    objc_storeStrong(v13, 0);
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }
  }

  else if (location[0] && v15)
  {
    v9 = _AKLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B098(v17, v15, location[0]);
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Successfully fetched UI capable context (%@) for UI client (%@)", v17, 0x16u);
    }

    objc_storeStrong(&v9, 0);
    if (a1[4])
    {
      (*(a1[4] + 16))();
    }
  }

  else
  {
    oslog = _AKLogSystem();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v18, location[0], v15);
      _os_log_error_impl(&_mh_execute_header, oslog, v10, "Failed to fetch UI capable context due to nil UI client (%@) or UI context (%@)", v18, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (a1[4])
    {
      v4 = (a1[4] + 16);
      v5 = [NSError ak_errorWithCode:-7013];
      (*v4)();
      _objc_release(v5);
    }
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void sub_100123CA4(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = a1;
  if (v17)
  {
    (*(*(a1 + 40) + 16))();
    v15 = 1;
  }

  else
  {
    v4 = location[0];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100123E50;
    v12 = &unk_100321FF0;
    v13 = _objc_retain(*(a1 + 40));
    v14 = [v4 proxyWithErrorHandler:&v8];
    [v14 presentKeepUsingUIForContext:v18 appleID:*(a1 + 32) completion:*(a1 + 40)];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v15 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_100123E50(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_1001240D0(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = a1;
  if (v17)
  {
    (*(a1[4] + 2))();
    v15 = 1;
  }

  else
  {
    v4 = location[0];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100124278;
    v12 = &unk_100321FF0;
    v13 = _objc_retain(a1[4]);
    v14 = [v4 proxyWithErrorHandler:&v8];
    [v14 dismissKeepUsingUIForContext:v18 withCompletion:a1[4]];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v15 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_100124278(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_1001245FC(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = a1;
  if (v27)
  {
    (*(a1[5] + 2))();
    v25 = 1;
  }

  else
  {
    v4 = location[0];
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_10012489C;
    v21 = &unk_100323ED8;
    v22 = _objc_retain(a1[4]);
    v23 = _objc_retain(a1[5]);
    v24 = [v4 proxyWithErrorHandler:&v17];
    v6 = v24;
    v5 = v28;
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100124AC4;
    v14 = &unk_100323F28;
    v15 = _objc_retain(a1[4]);
    v16 = _objc_retain(a1[5]);
    [v6 presentBasicLoginUIForContext:v5 completion:&v10];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    v25 = 0;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void sub_10012489C(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  queue = *(*(a1 + 32) + 16);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001249BC;
  v8 = &unk_100320878;
  v9 = _objc_retain(location[0]);
  v10[0] = _objc_retain(*(a1 + 40));
  dispatch_async(queue, &v4);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1001249BC(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, *(a1 + 32));
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v1 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void sub_100124AC4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19[1] = a1;
  queue = *(*(a1 + 32) + 16);
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100124CD4;
  v14 = &unk_100323F00;
  v19[0] = _objc_retain(*(a1 + 40));
  v15 = _objc_retain(location[0]);
  v16 = _objc_retain(v22);
  v17 = _objc_retain(v21);
  v18 = _objc_retain(v20);
  dispatch_async(queue, &v10);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_100124CD4(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  return (*(a1[8] + 16))(a1[8], a1[4]);
}

void sub_100124E80(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = a1;
  if (v25)
  {
    (*(a1[4] + 2))();
    v23 = 1;
  }

  else
  {
    v4 = location[0];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_1001250C4;
    v20 = &unk_100321FF0;
    v21 = _objc_retain(a1[4]);
    v22 = [v4 proxyWithErrorHandler:&v16];
    v6 = v22;
    v5 = v26;
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_1001251E4;
    v14 = &unk_100321230;
    v15 = _objc_retain(a1[4]);
    [v6 dismissBasicLoginUIForContext:v5 completion:&v10];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    v23 = 0;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void sub_1001250C4(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Could not dismiss UI! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_1001251E4(NSObject *a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v8, location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Could not dismiss UI! Error: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
}

void sub_1001254FC(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v31 = 0;
  objc_storeStrong(&v31, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = a1;
  if (v30)
  {
    (*(a1[6] + 2))();
    v28 = 1;
  }

  else
  {
    v4 = location[0];
    v20 = _NSConcreteStackBlock;
    v21 = -1073741824;
    v22 = 0;
    v23 = sub_10012582C;
    v24 = &unk_100323ED8;
    v25 = _objc_retain(a1[4]);
    v26 = _objc_retain(a1[6]);
    v27 = [v4 proxyWithErrorHandler:&v20];
    v6 = v27;
    v5 = v31;
    v9 = [a1[5] error];
    v8 = [a1[5] title];
    v7 = [a1[5] message];
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_100125A54;
    v17 = &unk_100323F28;
    v18 = _objc_retain(a1[4]);
    v19 = _objc_retain(a1[6]);
    [v6 presentLoginAlertForContext:v5 withError:v9 title:v8 message:v7 completion:&v13];
    _objc_release(v7);
    _objc_release(v8);
    _objc_release(v9);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    v28 = 0;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

void sub_10012582C(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  queue = *(*(a1 + 32) + 16);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10012594C;
  v8 = &unk_100320878;
  v9 = _objc_retain(location[0]);
  v10[0] = _objc_retain(*(a1 + 40));
  dispatch_async(queue, &v4);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_10012594C(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, *(a1 + 32));
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v1 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void sub_100125A54(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19[1] = a1;
  queue = *(*(a1 + 32) + 16);
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100125C64;
  v14 = &unk_100323F00;
  v19[0] = _objc_retain(*(a1 + 40));
  v15 = _objc_retain(location[0]);
  v16 = _objc_retain(v22);
  v17 = _objc_retain(v21);
  v18 = _objc_retain(v20);
  dispatch_async(queue, &v10);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_100125C64(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  return (*(a1[8] + 16))(a1[8], a1[4]);
}

void sub_100125E18(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = a1;
  if (v17)
  {
    (*(a1[4] + 2))();
    v15 = 1;
  }

  else
  {
    v4 = location[0];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100125FB4;
    v12 = &unk_100321FF0;
    v13 = _objc_retain(a1[4]);
    v14 = [v4 proxyWithErrorHandler:&v8];
    [v14 presentSecondFactorUIForContext:v18 completion:a1[4]];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v15 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_100125FB4(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_10012623C(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = a1;
  if (v17)
  {
    (*(a1[4] + 2))();
    v15 = 1;
  }

  else
  {
    v4 = location[0];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1001263E4;
    v12 = &unk_100321FF0;
    v13 = _objc_retain(a1[4]);
    v14 = [v4 proxyWithErrorHandler:&v8];
    [v14 dismissSecondFactorUIForContext:v18 completion:a1[4]];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v15 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_1001263E4(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_1001266C0(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = a1;
  if (v23)
  {
    (*(a1[5] + 2))();
    v21 = 1;
  }

  else
  {
    v5 = location[0];
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_1001268FC;
    v18 = &unk_100321FF0;
    v19 = _objc_retain(a1[5]);
    v20 = [v5 proxyWithErrorHandler:&v14];
    v7 = v20;
    v6 = v24;
    v10 = [a1[4] error];
    v9 = [a1[4] title];
    v8 = [a1[4] message];
    v4 = a1[5];
    [v7 presentSecondFactorAlertForContext:v6 withError:v10 title:v9 message:? completion:?];
    _objc_release(v8);
    _objc_release(v9);
    _objc_release(v10);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    v21 = 0;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void sub_1001268FC(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_100126D60(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  [AKAnalyticsSender sendAnalyticsEvent:v9 withError:v10];
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void sub_100126E54(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = a1;
  if (v29)
  {
    if (*(a1 + 48))
    {
      v4 = *(a1 + 32);
      (*(*(a1 + 48) + 16))();
    }

    v27 = 1;
  }

  else
  {
    v5 = location[0];
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_100127114;
    v23 = &unk_100320B40;
    v25 = _objc_retain(*(a1 + 48));
    v24 = _objc_retain(*(a1 + 32));
    v26 = [v5 proxyWithErrorHandler:&v19];
    v8 = v26;
    v6 = v30;
    v7 = *(a1 + 40);
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_100127240;
    v16 = &unk_100323FA0;
    v18 = _objc_retain(*(a1 + 48));
    v17 = _objc_retain(*(a1 + 32));
    [v8 presentServerProvidedUIForContext:v6 withConfiguration:v7 completion:&v12];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    v27 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

void sub_100127114(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v6, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[5].isa)
  {
    isa = a1[4].isa;
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(location, 0);
}

void sub_100127240(NSObject *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  oslog[1] = a1;
  if (v9)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v12, v9);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Request to show server UI came back with error: %@", v12, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  if (a1[5].isa)
  {
    isa = a1[4].isa;
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_100127520(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = a1;
  if (v25)
  {
    (*(a1[4] + 2))();
    v23 = 1;
  }

  else
  {
    v4 = location[0];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_100127764;
    v20 = &unk_100321FF0;
    v21 = _objc_retain(a1[4]);
    v22 = [v4 proxyWithErrorHandler:&v16];
    v6 = v22;
    v5 = v26;
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100127884;
    v14 = &unk_100321230;
    v15 = _objc_retain(a1[4]);
    [v6 dismissServerProvidedUIForContext:v5 completion:&v10];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    v23 = 0;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void sub_100127764(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_100127884(NSObject *a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if ((v6 & 1) == 0)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v8, location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to tear down server UI! Error: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  (*(a1[4].isa + 2))();
  objc_storeStrong(&location, 0);
}

void sub_100127D04(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [AKAnalyticsSender sendAnalyticsEvent:v7 withError:v8];
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_100127DD4(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = a1;
  if (v29)
  {
    if (*(a1 + 48))
    {
      v4 = *(a1 + 32);
      (*(*(a1 + 48) + 16))();
    }

    v27 = 1;
  }

  else
  {
    v5 = location[0];
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_100128090;
    v23 = &unk_100320B40;
    v25 = _objc_retain(*(a1 + 48));
    v24 = _objc_retain(*(a1 + 32));
    v26 = [v5 proxyWithErrorHandler:&v19];
    v8 = v26;
    v6 = v30;
    v7 = *(a1 + 40);
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1001281B8;
    v16 = &unk_100322438;
    v18 = _objc_retain(*(a1 + 48));
    v17 = _objc_retain(*(a1 + 32));
    [v8 presentNativeRecoveryUIForContext:v6 recoveryContext:v7 completion:&v12];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    v27 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

void sub_100128090(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v6, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v6, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[5].isa)
  {
    isa = a1[4].isa;
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(location, 0);
}

void sub_1001281B8(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  oslog[1] = a1;
  if (v9)
  {
    oslog[0] = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v12, v9);
      _os_log_error_impl(&_mh_execute_header, oslog[0], type, "Native recovery failed! Error: %@", v12, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  v6 = _AKLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_10001B098(v11, location[0], v9);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "presentNativeRecoveryUIForContext did succeed. Recovered info: %@ and error: %@", v11, 0x16u);
  }

  objc_storeStrong(&v6, 0);
  if (a1[5].isa)
  {
    isa = a1[4].isa;
    (*(a1[5].isa + 2))();
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void sub_1001284E8(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = a1;
  if (v25)
  {
    (*(a1[4] + 2))();
    v23 = 1;
  }

  else
  {
    v4 = location[0];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_10012872C;
    v20 = &unk_100321FF0;
    v21 = _objc_retain(a1[4]);
    v22 = [v4 proxyWithErrorHandler:&v16];
    v6 = v22;
    v5 = v26;
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_10012884C;
    v14 = &unk_100321230;
    v15 = _objc_retain(a1[4]);
    [v6 dismissNativeRecoveryUIForContext:v5 completion:&v10];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    v23 = 0;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

void sub_10012872C(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_10012884C(void *a1, char a2, id obj)
{
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if ((v12 & 1) == 0)
  {
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v14, location);
      _os_log_error_impl(&_mh_execute_header, v10[0], v9, "Unable to tear down native recovery UI! Error: %@", v14, 0xCu);
    }

    objc_storeStrong(v10, 0);
  }

  oslog = _AKLogSystem();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v7;
    sub_10001CEEC(v6);
    _os_log_impl(&_mh_execute_header, v3, v4, "dismissNativeRecoveryUIForContext did succeed.", v6, 2u);
  }

  objc_storeStrong(&oslog, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(&location, 0);
}

void sub_100128B74(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = a1;
  if (v17)
  {
    (*(a1[4] + 2))();
    v15 = 1;
  }

  else
  {
    v4 = location[0];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100128D10;
    v12 = &unk_100321FF0;
    v13 = _objc_retain(a1[4]);
    v14 = [v4 proxyWithErrorHandler:&v8];
    [v14 presentBiometricOrPasscodeValidationForContext:v18 completion:a1[4]];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v15 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_100128D10(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_100128FD0(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = a1;
  if (v17)
  {
    (*(*(a1 + 40) + 16))();
    v15 = 1;
  }

  else
  {
    v4 = location[0];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100129170;
    v12 = &unk_100321FF0;
    v13 = _objc_retain(*(a1 + 40));
    v14 = [v4 proxyWithErrorHandler:&v8];
    [v14 presentFidoAuthForContext:v18 fidoContext:*(a1 + 32) completion:*(a1 + 40)];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v15 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_100129170(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogFido();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_1001293F0(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
}

id sub_10012974C(void *a1, void *a2)
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

void sub_1001297DC(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
}

void sub_100129A8C(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
}

void sub_100129D14(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
}

void sub_100129FA0(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(location, 0);
}

void sub_10012A1CC(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

void sub_10012A3A4(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_1000194D4(v5, location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to call back to client! Error: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

void sub_10012B104(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ak_errorWithCode:-7014];
  (*(v1 + 16))(v1, 0);
  _objc_release(v2);
}

void sub_10012B180(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ak_errorWithCode:-7014];
  (*(v1 + 16))(v1, 0);
  _objc_release(v2);
}

void sub_10012B1FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ak_errorWithCode:-7014];
  (*(v1 + 16))(v1, 0);
  _objc_release(v2);
}

void sub_10012B278(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ak_errorWithCode:-7044];
  (*(v1 + 16))(v1, 0);
  _objc_release(v2);
}

uint64_t sub_10012C66C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_10012D058(uint64_t a1, char a2, id obj)
{
  v43 = a1;
  v42 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v40 = a1;
  if (v42)
  {
    v38 = [*(a1 + 32) needsCredentialRecovery];
    v37 = [*(a1 + 40) _notificationDictionaryForClient:*(a1 + 48) context:*(a1 + 32) needFullUI:*(a1 + 64) & 1];
    v8 = +[AKAlertHandler sharedInstance];
    v7 = v37;
    v29 = _NSConcreteStackBlock;
    v30 = -1073741824;
    v31 = 0;
    v32 = sub_10012D490;
    v33 = &unk_100324058;
    v35 = v38 & 1;
    v34 = _objc_retain(*(a1 + 56));
    v22 = _NSConcreteStackBlock;
    v23 = -1073741824;
    v24 = 0;
    v25 = sub_10012D514;
    v26 = &unk_100324058;
    v28 = v38 & 1;
    v27 = _objc_retain(*(a1 + 56));
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_10012D598;
    v20 = &unk_100320EC8;
    v21 = _objc_retain(*(a1 + 56));
    v9 = [(AKAlertHandler *)v8 showAlert:v7 primaryAction:&v29 altAction:&v22 cancelAction:&v16];
    _objc_release(v8);
    v36 = v9;
    if ((v9 & 1) == 0)
    {
      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v6 = type;
        sub_10001CEEC(v13);
        _os_log_error_impl(&_mh_execute_header, log, v6, "Showing alert failed, user notification is nil!", v13, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v3 = *(a1 + 56);
      v4 = [NSError ak_errorWithCode:-7013];
      (*(v3 + 16))(v3, 0);
      _objc_release(v4);
    }

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v37, 0);
    v39 = 0;
  }

  else
  {
    if (*(a1 + 56))
    {
      v10 = *(a1 + 56);
      v11 = [NSError ak_errorWithCode:-7013 underlyingError:location];
      (*(v10 + 16))(v10, 0);
      _objc_release(v11);
    }

    v39 = 1;
  }

  objc_storeStrong(&location, 0);
}

void sub_10012D598(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ak_errorWithCode:-7003];
  (*(v1 + 16))(v1, 0);
  _objc_release(v2);
}

void sub_10012E2FC(id a1)
{
  v1 = objc_alloc_init(AKAppleIDCheckInHelperService);
  v2 = qword_100374808;
  qword_100374808 = v1;
  _objc_release(v2);
}

void sub_10012E430(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) _setCheckInAllowedToValue:*(a1 + 40) & 1 forAccount:location[0]];
  objc_storeStrong(location, 0);
}

uint64_t sub_10012E650(uint64_t result)
{
  if (*(result + 40))
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

void sub_10012E8C4(uint64_t a1)
{
  v13[2] = a1;
  v13[1] = a1;
  v5 = *(a1 + 32);
  v2 = *(a1 + 40);
  v7 = +[AKAppleIDPushHelperService sharedService];
  v6 = [v7 publicAPSTokenString];
  v3 = *(a1 + 48);
  v4 = *(a1 + 72);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10012EA40;
  v11 = &unk_10031FB38;
  v13[0] = _objc_retain(*(a1 + 64));
  v12 = _objc_retain(*(a1 + 56));
  [v5 _checkInWithIDMSWithAccount:v2 pushToken:v6 event:v3 reason:v4 completion:?];
  _objc_release(v6);
  _objc_release(v7);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
}

void sub_10012EA40(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_10012F5B4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v24;
    sub_10001CEEC(v23);
    _os_log_impl(&_mh_execute_header, log, type, "Will notify IDMS about teardown response...", v23, 2u);
  }

  objc_storeStrong(location, 0);
  v22 = [*(a1 + 32) mutableCopy];
  v2 = +[AKDevice currentDevice];
  v3 = [v2 isProtectedWithPasscode];
  _objc_release(v2);
  v21 = v3;
  v4 = [NSNumber numberWithBool:v3 & 1];
  [v22 setObject:? forKeyedSubscript:?];
  _objc_release(v4);
  v20 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v6 = +[AKAccountManager sharedInstance];
  v5 = [(AKAccountManager *)v6 altDSIDForAccount:*(a1 + 40)];
  [v20 setAltDSID:?];
  _objc_release(v5);
  _objc_release(v6);
  v1 = [AKGrandSlamRequestProvider alloc];
  v19 = [(AKURLRequestProviderImpl *)v1 initWithContext:v20 urlBagKey:AKURLBagKeyNotificationAck];
  v7 = [v22 copy];
  [(AKURLRequestProviderImpl *)v19 setAuthKitBody:?];
  _objc_release(v7);
  [(AKGrandSlamRequestProvider *)v19 setAuthenticatedRequest:1];
  v8 = [*(a1 + 48) _serviceControllerWithProvider:v19];
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_10012F928;
  v16 = &unk_100321898;
  v18 = _objc_retain(*(a1 + 64));
  v17 = _objc_retain(*(a1 + 56));
  [v8 executeRequestWithCompletion:&v12];
  _objc_release(v8);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
}

void sub_10012F928(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void sub_10012FB9C(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = a1;
  state = xpc_activity_get_state(location[0]);
  if (state == 2)
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      log = v18;
      type = v17;
      sub_10001CEEC(v16);
      _os_log_impl(&_mh_execute_header, log, type, "XPC activity says that it's time run the liveness heartbeat check-in!", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    if (xpc_activity_set_state(location[0], 4))
    {
      v15 = os_transaction_create();
      v3 = a1[4];
      v8 = _NSConcreteStackBlock;
      v9 = -1073741824;
      v10 = 0;
      v11 = sub_10012FE6C;
      v12 = &unk_10031F078;
      v13 = _objc_retain(location[0]);
      v14 = _objc_retain(v15);
      [v3 _performLivenessCheckInForAllEligibleAccountsWithReason:1 completion:&v8];
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v15, 0);
    }
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = [NSNumber numberWithLong:state];
      sub_1000194D4(v22, v2);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "XPC activity registration complete. State: %@.", v22, 0xCu);
      _objc_release(v2);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_10012FE6C(xpc_activity_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  xpc_activity_set_state(a1[4], 5);
  location[0] = _AKLogSystem();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v4;
    sub_10001CEEC(v3);
    _os_log_impl(&_mh_execute_header, log, type, "XPC activity for liveness heartbeat check-in completed!", v3, 2u);
  }

  objc_storeStrong(location, 0);
}

void sub_1001301F8(uint64_t a1, int a2)
{
  *(v2 - 152) = a1;
  *(v2 - 156) = a2;
  os_activity_scope_leave((v2 - 80));
  _Unwind_Resume(*(v2 - 152));
}

void sub_100130218(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) _performSignoutCleanupForAccount:*(a1 + 40)];
  if (*(a1 + 48))
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_1001302B0(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29[1] = a1;
  if (location[0] && ([*(a1[4] + 2) isSignOutInProgress:a1[5]] & 1) != 0)
  {
    v7 = +[AKSignOutManager sharedManager];
    v6 = a1[5];
    v22 = _NSConcreteStackBlock;
    v23 = -1073741824;
    v24 = 0;
    v25 = sub_1001306AC;
    v26 = &unk_1003217F8;
    v27 = _objc_retain(a1[4]);
    v28 = _objc_retain(a1[5]);
    v29[0] = _objc_retain(a1[6]);
    [v7 reportSignOutForAccount:v6 completion:&v22];
    _objc_release(v7);
    objc_storeStrong(v29, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v27, 0);
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v32, a1[5]);
      _os_log_impl(&_mh_execute_header, v21, v20, "Reporting global signout to IDMS for %@", v32, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    v19 = os_transaction_create();
    v5 = a1[4];
    v3 = a1[5];
    v4 = AKPostDataEventFinalSignOut;
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_10013073C;
    v14 = &unk_1003241B0;
    v15 = _objc_retain(a1[4]);
    v16 = _objc_retain(a1[5]);
    v18 = _objc_retain(a1[6]);
    v17 = _objc_retain(v19);
    [v5 _checkInWithIDMSWithAccount:v3 pushToken:0 event:v4 reason:0 completion:&v10];
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

void sub_1001306AC(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) _performSignoutCleanupForAccount:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_10013073C(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) _performSignoutCleanupForAccount:*(a1 + 40)];
  if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_1001312FC(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_1001316B0(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v10;
    sub_10001CEEC(v9);
    _os_log_impl(&_mh_execute_header, log, type, "Done with account cleanup", v9, 2u);
  }

  objc_storeStrong(location, 0);
  v3 = a1[5];
  v5 = +[AKAppleIDPushHelperService sharedService];
  v4 = [v5 publicAPSTokenString];
  v1 = a1[7];
  v2 = a1[6];
  [v3 _performLivenessCheckInForAllEligibleAccountsWithToken:? reason:? completion:?];
  _objc_release(v4);
  _objc_release(v5);
}

uint64_t sub_100131DBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 2;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_100131E0C(uint64_t a1, char a2, id obj)
{
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    v4 = _AKLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_100131DBC(v10, *(a1 + 48), *(a1 + 32));
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Liveness check-in %{public}lu succeeded for account %@.", v10, 0x16u);
    }

    objc_storeStrong(&v4, 0);
  }

  else
  {
    oslog[0] = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100131FBC(v11, *(a1 + 48), *(a1 + 32), location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], type, "Liveness check-in %{public}lu failed for account %@ with error: %{public}@", v11, 0x20u);
    }

    objc_storeStrong(oslog, 0);
  }

  dispatch_group_leave(*(a1 + 40));
  objc_storeStrong(&location, 0);
}

uint64_t sub_100131FBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 2;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}