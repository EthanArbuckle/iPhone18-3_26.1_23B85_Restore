id sub_100001B14(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = AAUIFollowUpExtensionViewController;
  return objc_msgSendSuper2(&v2, "finishProcessing");
}

void sub_100001C64(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) presentViewController:*(a1 + 40) animated:1 completion:0];
  }

  else
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100008648();
    }

    [*(a1 + 32) finishProcessing];
  }
}

void sub_10000271C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100002738(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = _AAUILogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000086B8();
      }

LABEL_12:

      [v7 finishProcessing];
      goto LABEL_13;
    }

    if ((a2 & 1) == 0)
    {
      v8 = _AAUILogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100008728();
      }

      goto LABEL_12;
    }

    [WeakRetained _dismissRecoveryKeyMismatchCFU];
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100008764();
    }
  }

LABEL_13:
}

void sub_100002984(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RK turning off flow invocation success: %@, error: %{public}@", &v7, 0x16u);
  }
}

void sub_100002B38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100002B54(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = _AAUILogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000087A0();
      }

LABEL_12:

      [v7 finishProcessing];
      goto LABEL_13;
    }

    if ((a2 & 1) == 0)
    {
      v8 = _AAUILogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100008810();
      }

      goto LABEL_12;
    }

    [WeakRetained _dismissRecoveryKeyMismatchCFU];
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100008764();
    }
  }

LABEL_13:
}

void sub_100002CF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100002D18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000884C();
    }
  }

  [WeakRetained finishProcessing];
}

void sub_100002F8C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [*(*(a1 + 32) + 8) userInfo];
    v7 = [v6 objectForKeyedSubscript:AIDAAccountPropertyAltDSID];

    v8 = [*(a1 + 40) userInfo];
    v9 = [v8 objectForKeyedSubscript:AAFollowUpUserInfoClientName];

    v10 = [*(a1 + 40) userInfo];
    v11 = [v10 objectForKeyedSubscript:AAFollowUpUserInfoProxiedDeviceData];

    v12 = +[NSUUID UUID];
    v13 = [v12 UUIDString];
    v14 = [AAFAnalyticsEvent analyticsEventWithName:@"com.apple.appleAccount.processRenewCredentials" altDSID:v7 flowID:v13];

    [v14 populateUnderlyingErrorsStartingWithRootError:v5];
    if (v11)
    {
      v15 = &off_100010D90;
    }

    else
    {
      v15 = &off_100010DA8;
    }

    [v14 setObject:v15 forKeyedSubscript:@"proxiedDevices"];
    if (v9)
    {
      [v14 setObject:v9 forKeyedSubscript:@"client"];
    }

    v16 = +[AAAnalyticsRTCReporter reporter];
    [v16 sendEvent:v14];
  }

  v17 = _AAUILogSystem();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v18)
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Dismissing renew credentials follow up...", v19, 2u);
    }

    [*(a1 + 32) _continueDismissingRenewCredentialsFollowUpForCDP];
  }

  else
  {
    if (v18)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not dismissing renew credentials follow up...", buf, 2u);
    }

    [*(a1 + 32) finishProcessing];
  }
}

void sub_100003264(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AAUIFollowUpExtension dismissed renewCredentials follow up with success: %@, error: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishProcessing];
}

void sub_100003808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003820(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003838(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 72) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003964;
  block[3] = &unk_100010580;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v5;
  v15 = v9;
  v16 = v10;
  v17 = *(a1 + 48);
  v20 = *(a1 + 64);
  v18 = v6;
  v19 = *(a1 + 56);
  v11 = v6;
  v12 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100003964(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [AAUICDPHelper helperWithPresenter:*(a1 + 40)];
    v3 = [[CDPContext alloc] initWithAuthenticationResults:*(a1 + 32)];
    v4 = [*(a1 + 48) uniqueIdentifier];
    [v3 setFollowUpType:v4];

    v5 = [v2 cdpStateControllerWithContext:v3];
    v18 = 0;
    v6 = [v5 shouldPerformRepairWithOptionForceFetch:1 error:&v18];
    v7 = v18;
    v8 = _AAUILogSystem();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        *buf = 138477827;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Current state requires repair. Starting repair...: %{private}@", buf, 0xCu);
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100003C40;
      v15[3] = &unk_100010558;
      v16 = *(a1 + 56);
      v17 = *(a1 + 80);
      [v5 repairCloudDataProtectionStateWithCompletion:v15];
    }

    else
    {
      if (v9)
      {
        v13 = *(a1 + 56);
        *buf = 138477827;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully renewed credentials for account: %{private}@", buf, 0xCu);
      }

      (*(*(a1 + 80) + 16))();
    }
  }

  else
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000089A4(a1);
    }

    if (*(a1 + 72))
    {
      v11 = _AAUILogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Renew Credentials attempt was for proxied device. We gave it a shot, dismissing followup.", buf, 2u);
      }

      v12 = *(*(a1 + 80) + 16);
    }

    else
    {
      v14 = *(a1 + 64);
      v12 = *(*(a1 + 80) + 16);
    }

    v12();
  }
}

void sub_100003C40(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138477827;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully renewed credentials with repair for account: %{private}@", &v10, 0xCu);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100008A18();
    }

    v9 = *(*(a1 + 40) + 16);
  }

  v9();
}

void sub_100004154(uint64_t a1, char a2)
{
  v4 = _AAUILogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dismissing embargo recovery follow up...", buf, 2u);
    }

    v6 = [*(a1 + 32) _followUpController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100004280;
    v7[3] = &unk_100010530;
    v7[4] = *(a1 + 32);
    [v6 dismissFollowUpWithIdentifier:AAFollowUpIdentifierCustodianEmbargo completion:v7];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not dismissing embargo recovery follow up...", buf, 2u);
    }

    [*(a1 + 32) finishProcessing];
  }
}

void sub_100004280(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AAUIFollowUpExtension dismissed embargo recovery follow up with success: %@, error: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishProcessing];
}

void sub_100004554(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _AAUILogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found Custodian recovery info for session sent in followUp. starting iForgot flow", v9, 2u);
    }

    [*(a1 + 32) _beginCustodianAccountRecoveryFlowWithInfo:v5 sessionID:*(a1 + 40) altDSID:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100008B00();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10000481C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004834(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (v5)
  {
    v9 = objc_alloc_init(AIDAMutableServiceContext);
    [v9 setAuthenticationResults:v5];
    [v9 setViewController:*(a1 + 32)];
    [v9 setCdpUiProvider:*(a1 + 32)];
    [v9 setOperationUIPermissions:1];
    v10 = [v9 signInContexts];
    v11 = [v10 mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_opt_new();
    }

    v15 = v13;

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_100003820;
    v29 = sub_100003830;
    v16 = [AAUISignInFlowControllerDelegate alloc];
    v17 = [v9 viewController];
    v30 = [v16 initWithPresentingViewController:v17];

    [v15 setObject:v26[5] forKeyedSubscript:AIDAServiceTypeCloud];
    v18 = [AIDAServiceOwnersManager alloc];
    v19 = +[ACAccountStore defaultStore];
    v20 = [v18 initWithAccountStore:v19];

    v21 = [v9 copy];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100004AE4;
    v22[3] = &unk_100010648;
    v24 = &v25;
    v23 = *(a1 + 40);
    [v20 signInToAllServicesInBackgroundUsingContext:v21 completion:v22];

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v14 = _AAUILogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100008B70();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100004AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004AE4(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004B90;
  v6[3] = &unk_100010620;
  v7 = *(a1 + 32);
  v8 = a2;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100004E64(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100008C14();
    }

    if ([*(*(a1 + 32) + 80) isDTOGatingEnabled])
    {
      v4 = _AAUILogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_100008C48();
      }

      v5 = *(a1 + 32);
      v6 = v5[10];
      v7 = [v5 presentingViewController];
      v8 = [v6 makeRatchetContextWithPresentationContext:v7 DTOContextType:1];

      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = *(v10 + 80);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100005074;
      v16[3] = &unk_100010450;
      v16[4] = v10;
      v17 = v9;
      [v11 shouldAllowOpForContext:v8 completion:v16];
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100005160;
      v14[3] = &unk_1000106C0;
      v12 = *(a1 + 40);
      v14[4] = *(a1 + 32);
      v15 = v12;
      dispatch_async(&_dispatch_main_q, v14);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000051B0;
    block[3] = &unk_100010428;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100005074(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100008C7C();
  }

  if (a2)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005154;
    v8[3] = &unk_1000106C0;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    dispatch_async(&_dispatch_main_q, v8);
  }
}

id sub_100005160(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100008CE4();
  }

  return [*(a1 + 32) _continueSettingupCustodianForFollowUpItem:*(a1 + 40)];
}

id sub_1000051B0(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100008D18();
  }

  return [*(a1 + 32) _displayCustodianAddNotAllowedAlert];
}

void sub_1000055FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100008D4C();
    }
  }

  else
  {
    [*(a1 + 32) _dismissRecoveryKeyMismatchRepairCFU];
  }
}

void sub_10000570C(uint64_t a1, uint64_t a2)
{
  v4 = _AAUILogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v5)
    {
      sub_100008DBC(a1);
    }

    [*(a1 + 40) dismissFollowUpWithIdentifier:*(a1 + 32) completion:&stru_100010708];
  }

  else
  {
    if (v5)
    {
      sub_100008E34(a1);
    }
  }
}

void sub_100005794(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100008EAC();
    }
  }
}

void sub_10000590C(uint64_t a1, int a2)
{
  if (!a2)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100005C40;
    v12[3] = &unk_100010428;
    v12[4] = *(a1 + 32);
    v11 = v12;
LABEL_10:
    dispatch_async(&_dispatch_main_q, v11);
    return;
  }

  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100008C14();
  }

  if (![*(*(a1 + 32) + 80) isDTOGatingEnabled])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005BEC;
    block[3] = &unk_100010758;
    block[4] = *(a1 + 32);
    v14 = *(a1 + 40);
    v11 = block;
    goto LABEL_10;
  }

  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100008C48();
  }

  v5 = *(a1 + 32);
  v6 = v5[10];
  v7 = [v5 presentingViewController];
  v8 = [v6 makeRatchetContextWithPresentationContext:v7 DTOContextType:1];

  v9 = *(a1 + 32);
  v10 = *(v9 + 80);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100005B04;
  v15[3] = &unk_100010780;
  v15[4] = v9;
  v16 = *(a1 + 40);
  [v10 shouldAllowOpForContext:v8 completion:v15];
}

void sub_100005B04(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100008C7C();
  }

  if (a2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100005BDC;
    v7[3] = &unk_100010758;
    v7[4] = *(a1 + 32);
    v8 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v7);
  }
}

id sub_100005BEC(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100008CE4();
  }

  return [*(a1 + 32) _continueRecoveryContactGenerationFlowForWalrusUser:*(a1 + 40)];
}

id sub_100005C40(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100008D18();
  }

  return [*(a1 + 32) _displayCustodianAddNotAllowedAlert];
}

void sub_1000060EC(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RK generation flow invocation success: %@, error: %{public}@", &v7, 0x16u);
  }
}

void sub_100006278(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000086B8();
    }

    [*(a1 + 32) finishProcessing];
  }

  else
  {
    v6 = [*(a1 + 32) _followUpController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000636C;
    v8[3] = &unk_100010450;
    v7 = *(a1 + 32);
    v9 = 0;
    v10 = v7;
    [v6 dismissFollowUpWithIdentifier:AAFollowUpIdentifierCustodianWalrusRemoved completion:v8];
  }
}

id sub_10000636C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100008F1C(a1);
    }
  }

  return [*(a1 + 40) finishProcessing];
}

void sub_100006674(uint64_t a1)
{
  v2 = [*(a1 + 32) _followUpController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100006710;
  v3[3] = &unk_100010530;
  v3[4] = *(a1 + 32);
  [v2 dismissFollowUpWithIdentifier:AAFollowUpIdentifierBeneficiaryIneligible completion:v3];
}

void sub_1000070EC(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStore];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000717C;
  v3[3] = &unk_100010818;
  v3[4] = *(a1 + 40);
  [v2 aa_appleAccountsWithCompletion:v3];
}

void sub_10000717C(uint64_t a1, void *a2)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v15 + 1) + 8 * v7);
      if ([v8 aa_needsToVerifyTerms] & 1) != 0 || (objc_msgSend(v8, "aa_hasOptionalTerms"))
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v9 = v8;

    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found pending account, posting verify terms: %@", buf, 0xCu);
    }

    v11 = [*(a1 + 32) _followUpController];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100007428;
    v14[3] = &unk_100010530;
    v14[4] = *(a1 + 32);
    [v11 postFollowUpWithIdentifier:AAFollowUpIdentifierVerifyTerms forAccount:v9 userInfo:0 completion:v14];
  }

  else
  {
LABEL_10:

LABEL_15:
    v12 = _AAUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No pending accounts, dismissing verify terms...", buf, 2u);
    }

    v9 = [*(a1 + 32) _followUpController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100007510;
    v13[3] = &unk_100010530;
    v13[4] = *(a1 + 32);
    [v9 dismissFollowUpWithIdentifier:AAFollowUpIdentifierVerifyTerms completion:v13];
  }
}

void sub_100007428(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AAUIFollowUpExtension posted follow up with success: %@, error: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishProcessing];
}

void sub_100007510(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AAUIFollowUpExtension dismissed verify terms follow up with success: %@, error: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishProcessing];
}

void sub_1000075F8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 40) accountStore];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000076F0;
    v9[3] = &unk_1000107F0;
    v7 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v6 saveVerifiedAccount:v7 withCompletionHandler:v9];
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100008FCC();
    }

    [*(a1 + 32) finishProcessing];
  }
}

void sub_1000076F0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AAUIFollowUpExtension saved verified account with success: %@, error: %{public}@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100007DA8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  if (v4)
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100009160();
    }
  }

  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "UCRT healing completed with success - [%@]", &v8, 0xCu);
  }
}

void sub_100007EA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138477827;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully verified credentials for account %{private}@!", &v9, 0xCu);
    }
  }

  else
  {
    v7 = _AAUILogSystem();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v8)
      {
        sub_1000091D0(a1);
      }
    }

    else if (v8)
    {
      sub_100009258();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000085D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100008628(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_100008648()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000086B8()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008728()
{
  sub_1000085CC();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100008764()
{
  sub_1000085CC();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000087A0()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008810()
{
  sub_1000085CC();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000884C()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000088BC()
{
  sub_1000085CC();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000088F8()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008968()
{
  sub_1000085CC();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000089A4(uint64_t a1)
{
  v1 = *(a1 + 64);
  sub_10000861C();
  sub_1000085C0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100008A18()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008A88()
{
  sub_1000085CC();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100008AC4()
{
  sub_1000085CC();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100008B00()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008B70()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008D4C()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008DBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000861C();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "CFU %@ exists. Dismissing...", v3, 0xCu);
}

void sub_100008E34(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000861C();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "No previous %@ CFU exists. Nothing to dismiss", v3, 0xCu);
}

void sub_100008EAC()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100008F1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000861C();
  sub_1000085C0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100008F90()
{
  sub_1000085CC();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100008FCC()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000903C()
{
  sub_1000085CC();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100009078()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000090E8()
{
  sub_1000085CC();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100009124()
{
  sub_1000085CC();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100009160()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000091D0(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_10000861C();
  v5 = 2114;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to verify credentials for account %{private}@, error: %{public}@", v4, 0x16u);
}

void sub_100009258()
{
  sub_1000085CC();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000092C8()
{
  sub_1000085F4();
  sub_1000085C0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}