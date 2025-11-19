id sub_10006C4C0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006C588;
  v3[3] = &unk_100269938;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006C594;
  v2[3] = &unk_100269A00;
  v2[4] = v4;
  return [UIView animateWithDuration:v3 animations:v2 completion:0.25];
}

void sub_10006C594(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(*(a1 + 32) + 24) removeFromSuperlayer];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"COSCameraHitRuntimeError" object:0];
}

void sub_10006C920(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void sub_10006CCB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v7 = sub_100015C10();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[COSScreenTimeSetPasscodeViewController suggestedButtonPressed:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: step complete", &v12, 0xCu);
    }

    v6 = [*(a1 + 32) miniFlowDelegate];
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = v6;
    v11 = v8;
    goto LABEL_11;
  }

  v4 = [*(a1 + 32) _errorIsUserCanceledSettingPIN:v3];
  v5 = sub_100015C10();
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100187F3C();
    }

    v10 = [*(a1 + 32) miniFlowDelegate];
    v6 = v10;
    v11 = *(a1 + 32);
    v9 = 0;
LABEL_11:
    [v10 miniFlowStepComplete:v11 nextControllerClass:v9];
    goto LABEL_12;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[COSScreenTimeSetPasscodeViewController suggestedButtonPressed:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: user canceled setting Screen Time passcode", &v12, 0xCu);
  }

LABEL_12:
}

void sub_10006D3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006D410(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100015C10();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100188114();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "[COSScreenTimeSetPasscodeViewController _collectThenSetScreenTimePasscodeForFamilyMember:withCompletionHandler:]_block_invoke";
      v21 = 2112;
      v22[0] = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: setting collected passcode:%@", buf, 0x16u);
    }

    v8 = [*(a1 + 32) configurationWithUpdatedPasscode:v5];
    v9 = *(a1 + 40);
    v18 = 0;
    v10 = [v9 applyUpdatedConfiguration:v8 error:&v18];
    v6 = v18;
    v11 = sub_100015C10();
    v12 = v11;
    if (v6)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100188188();
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v20 = "[COSScreenTimeSetPasscodeViewController _collectThenSetScreenTimePasscodeForFamilyMember:withCompletionHandler:]_block_invoke";
      v21 = 1024;
      LODWORD(v22[0]) = v10;
      WORD2(v22[0]) = 2114;
      *(v22 + 6) = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: success:%d updatedConfiguration:%{public}@", buf, 0x1Cu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D65C;
  block[3] = &unk_100268F10;
  v13 = *(a1 + 48);
  v16 = v6;
  v17 = v13;
  v14 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10006D734(uint64_t a1)
{
  sub_10006D78C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STSetupClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD448 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100186318();
    sub_10006D78C();
  }
}

void sub_10006D78C()
{
  v1[0] = 0;
  if (!qword_1002BD450)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10006D888;
    v1[4] = &unk_100268108;
    v1[5] = v1;
    v2 = off_100269A60;
    v3 = 0;
    qword_1002BD450 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1002BD450)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10006D888()
{
  result = _sl_dlopen();
  qword_1002BD450 = result;
  return result;
}

void sub_10006D8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  sub_10006D78C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STUserID");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD458 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = sub_100186340();
    sub_10006D954(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void sub_10006D954(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10006D970(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

id sub_10006F0D4(uint64_t a1)
{
  [*(*(a1 + 32) + 24) startAnimating];
  [*(*(a1 + 32) + 24) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 16);

  return [v2 setAlpha:0.0];
}

id sub_10006F22C(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 16);

  return [v2 setAlpha:1.0];
}

id sub_10006F288(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"textDidChange:" name:UITextFieldTextDidChangeNotification object:*(*(a1 + 32) + 32)];

  [*(*(a1 + 32) + 24) stopAnimating];
  [*(*(a1 + 32) + 32) setEnabled:1];
  v3 = *(*(a1 + 32) + 32);

  return [v3 becomeFirstResponder];
}

void sub_1000702D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000702FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "progress retrieved %lu", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a3)
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error when attempting to retrieve progress for %@", buf, 0xCu);
    }
  }

  else if (a2)
  {
    if (a2 == 100 && (*(*(a1 + 40) + 144) & 1) == 0)
    {
      v10 = +[NSNotificationCenter defaultCenter];
      v11 = *(a1 + 32);
      v13 = @"DiagnosticLogTransferComplete";
      v14 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      [v10 postNotificationName:@"DiagnosticLogTransferComplete" object:0 userInfo:v12];

      [*(a1 + 40) setNotifiedOwnerCompleteTransfer:1];
    }

    [WeakRetained updateProgress:a2];
  }
}

void sub_10007084C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_100070F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100070FB0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained specifierForID:@"com.apple.NanoPassbookBridgeSettings"];

  if (v8)
  {
    if (a2)
    {
      v5 = @"NanoPassbookBridgeSettings";
    }

    else
    {
      v5 = @"NanoPassbookBridgeSettings_NoStockholm";
    }

    v6 = sub_10000AD54(v5);
    [v8 setName:v6];

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 reloadSpecifier:v8];
  }
}

void sub_100071474(uint64_t a1, char a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100071524;
  v5[3] = &unk_100269350;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  v8 = a2;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100071524(uint64_t a1)
{
  [*(a1 + 32) _stopSpinnerInSpecifier:*(a1 + 40)];
  if (*(a1 + 48) && *(a1 + 56) == 1)
  {
    v2 = pbb_bridge_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      v5 = 136315394;
      v6 = "[COSSettingsListController _appStoreSpecifierTapped:]_block_invoke_2";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s launching app store controller %@", &v5, 0x16u);
    }

    v4 = [*(a1 + 32) navigationController];
    [v4 pushViewController:*(a1 + 48) animated:1];
  }
}

void sub_100071620(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || v9)
  {
    goto LABEL_8;
  }

  v11 = [v7 altDSID];
  if (!v11)
  {
    v11 = [v7 appleID];
    if (!v11)
    {
      v13 = [v7 dsid];

      if (v13)
      {
        goto LABEL_6;
      }

LABEL_8:
      (*(*(a1 + 40) + 16))();
      goto LABEL_9;
    }
  }

LABEL_6:
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007174C;
  v14[3] = &unk_100269B08;
  v12 = *(a1 + 32);
  v15 = *(a1 + 40);
  [v12 _storeReauthStepForTinkerFamilyMember:v7 withWatchAKDevice:v8 completion:v14];

LABEL_9:
}

void sub_100071940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100071964(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = pbb_accountsignin_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100188204();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "[COSSettingsListController _storeReauthStepForTinkerFamilyMember:withWatchAKDevice:completion:]_block_invoke";
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s AMSDeviceMessenger Results (%@)", buf, 0x16u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100071B4C;
    v14[3] = &unk_100269B80;
    objc_copyWeak(&v18, (a1 + 64));
    v15 = v5;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    *&v12 = *(a1 + 48);
    *(&v12 + 1) = v11;
    *&v13 = v9;
    *(&v13 + 1) = v10;
    v16 = v13;
    v17 = v12;
    dispatch_async(&_dispatch_main_q, v14);

    objc_destroyWeak(&v18);
  }
}

void sub_100071B4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained specifierForID:@"com.apple.BridgeAppStoreDaemonSettings"];
  v4 = pbb_accountsignin_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
    v10 = 136315650;
    v11 = "[COSSettingsListController _storeReauthStepForTinkerFamilyMember:withWatchAKDevice:completion:]_block_invoke";
    v12 = 2112;
    *v13 = v3;
    *&v13[8] = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s AMSDeviceMessenger storeCell (%@) count: %@", &v10, 0x20u);
  }

  if (![*(a1 + 32) count])
  {
    [v3 setProperty:0 forKey:PSBadgeNumberKey];
LABEL_11:
    (*(*(a1 + 64) + 16))();
    goto LABEL_12;
  }

  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
  [v3 setProperty:v6 forKey:PSBadgeNumberKey];

  if (!*(a1 + 40) || !*(a1 + 48))
  {
    v7 = pbb_accountsignin_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40) != 0;
      v9 = *(a1 + 48) != 0;
      v10 = 136315650;
      v11 = "[COSSettingsListController _storeReauthStepForTinkerFamilyMember:withWatchAKDevice:completion:]_block_invoke";
      v12 = 1024;
      *v13 = v8;
      *&v13[4] = 1024;
      *&v13[6] = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s has storeAccount %{BOOL}d device: %{BOOL}d", &v10, 0x18u);
    }

    goto LABEL_11;
  }

  [WeakRetained proceedWithStoreRepairForAccount:? withWatchAKDevice:? completion:?];
LABEL_12:
  [*(a1 + 56) reloadSpecifier:v3];
}

void sub_100071EBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 account];

  v8 = pbb_accountsignin_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 account];
      v13 = 136315650;
      v14 = "[COSSettingsListController proceedWithStoreRepairForAccount:withWatchAKDevice:completion:]_block_invoke";
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - result %@ (account: %@)", &v13, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100188284();
  }

  v11 = *(a1 + 32);
  if (v6)
  {
    (*(v11 + 16))(v11, 0);
  }

  else
  {
    v12 = [v5 account];
    (*(v11 + 16))(v11, v12 != 0);
  }
}

BOOL sub_1000729D4(id a1, NRDevice *a2)
{
  v2 = NRDevicePropertyIsArchived;
  v3 = a2;
  v4 = [(NRDevice *)v3 valueForProperty:v2];
  v5 = [(NRDevice *)v3 valueForProperty:NRDevicePropertyIsPaired];

  if ([v5 BOOLValue])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 BOOLValue];
  }

  return v6;
}

void sub_100072E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100072ECC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v8 = pbb_bridge_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed fetching family member: %@ error: %@", &v11, 0x16u);
      }
    }

    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Presenting skipped mini-flow", &v11, 2u);
    }

    v10 = [WeakRetained skippedMiniFlowController];
    [WeakRetained presentViewController:v10 animated:1 completion:0];
  }
}

void sub_100073028(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073128;
  block[3] = &unk_100269C18;
  objc_copyWeak(&v16, a1 + 6);
  v12 = a1[4];
  v8 = a1[5];
  v14 = v7;
  v15 = v8;
  v13 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v16);
}

void sub_100073128(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _stopSpinnerInSpecifier:*(a1 + 32)];
    (*(*(a1 + 56) + 16))();
    WeakRetained = v3;
  }
}

void sub_100073B14(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 164) == 1)
  {
    v11 = v1;
    v12 = v2;
    *(v3 + 164) = 0;
    [*(a1 + 32) stopSpinner];
    v5 = [*(a1 + 32) specifierForID:@"CELLULAR_ID"];
    v6 = [*(a1 + 32) indexOfSpecifier:v5];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = *(a1 + 32);
      v8 = *&v7[OBJC_IVAR___PSListController__table];
      v9 = [v7 indexPathForIndex:v6];
      v10.receiver = v7;
      v10.super_class = COSSettingsListController;
      objc_msgSendSuper2(&v10, "tableView:didSelectRowAtIndexPath:", v8, v9);
    }
  }
}

void sub_100073E48(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = qword_1002BD470;
  qword_1002BD470 = v2;

  v5 = +[PSSpecifier emptyGroupSpecifier];
  [qword_1002BD470 addObject:v5];
  v4 = [PSSpecifier preferenceSpecifierNamed:0 target:*(a1 + 32) set:0 get:0 detail:0 cell:15 edit:0];
  [qword_1002BD470 addObject:v4];
}

void sub_1000742C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000742DC(void *a1)
{
  v1 = a1;
  v2 = [v1 applicationName];
  v3 = _kCFBundleDisplayNameKey;
  v12[0] = kCFBundleNameKey;
  v12[1] = _kCFBundleDisplayNameKey;
  v4 = [NSArray arrayWithObjects:v12 count:2];
  v5 = [NSSet setWithArray:v4];

  v6 = +[NSLocale preferredLanguages];
  v7 = [v1 localizedInfoPlistStringsForKeys:v5 fetchingFirstMatchingLocalizationInList:v6];

  if (v7)
  {
    v8 = [v7 objectForKey:v3];

    if (v8 || ([v7 objectForKey:kCFBundleNameKey], v9 = objc_claimAutoreleasedReturnValue(), v9, v3 = kCFBundleNameKey, v9))
    {
      v10 = [v7 objectForKey:v3];

      v2 = v10;
    }
  }

  return v2;
}

void sub_100074790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000747BC(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (([&off_1002817B0 containsObject:v16] & 1) == 0)
  {
    v6 = [*(a1 + 32) specialCaseVictoryRow];
    v7 = [v16 isEqualToString:v6];

    if (v7)
    {
      v8 = [*(*(a1 + 32) + OBJC_IVAR___PSListController__specifiers) specifierForID:@"VICTORY_ROW_ID"];
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      [WeakRetained decorateSpecifierWithWKDetails:v8 byIdentifier:v16 andApplication:v5];
    }

    else
    {
      if ([v5 applicationType] == 1)
      {
        goto LABEL_12;
      }

      v8 = [PSSpecifier preferenceSpecifierNamed:0 target:*(a1 + 32) set:0 get:"sockPuppetAppValue:" detail:0 cell:4 edit:0];
      v10 = objc_loadWeakRetained((a1 + 72));
      [v10 decorateSpecifierWithWKDetails:v8 byIdentifier:v16 andApplication:v5];

      [*(*(a1 + 32) + 214) setObject:v8 forKey:v16];
      if (*(*(a1 + 32) + 160))
      {
        v11 = [v8 propertyForKey:@"COSSockPuppetInstallationState"];
        v12 = [v11 integerValue];

        if (v12 != 4 && v12 != 2)
        {
          v15 = [NSNumber numberWithInteger:3];
          [v8 setProperty:v15 forKey:@"COSSockPuppetAppSectionKey"];

          [v8 setProperty:*(a1 + 56) forKey:PSEnabledKey];
          [*(a1 + 64) addObject:v8];
          if (v12 == 1)
          {
            [*(a1 + 32) setHasRowsPendingInstallation:1];
          }

          goto LABEL_11;
        }

        [v8 setCellType:2];
        [v8 setDetailControllerClass:objc_opt_class()];
        v13 = [NSNumber numberWithInteger:2];
        [v8 setProperty:v13 forKey:@"COSSockPuppetAppSectionKey"];

        [v8 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
        v14 = *(a1 + 48);
      }

      else
      {
        v14 = *(a1 + 40);
      }

      [v14 addObject:v8];
    }

LABEL_11:
  }

LABEL_12:
}

uint64_t sub_100074B58(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = PSIDKey;
  v8 = [v5 propertyForKey:PSIDKey];
  v34 = [v6 propertyForKey:v7];
  v35 = v8;
  v9 = [v8 isEqualToString:?];
  v10 = PSCellClassKey;
  v11 = [v5 propertyForKey:PSCellClassKey];
  v12 = objc_opt_class();

  v13 = [v6 propertyForKey:v10];
  v14 = objc_opt_class();

  if ((v11 == v12) != (v13 == v14) || (v11 == v12 ? (v15 = v13 == v14) : (v15 = 0), v15 ? (v16 = 1) : (v16 = a3), !(v9 & 1 | ((v16 & 1) == 0))))
  {
    v25 = 0;
  }

  else
  {
    v17 = PSEnabledKey;
    v18 = [v5 propertyForKey:PSEnabledKey];
    v19 = [v6 propertyForKey:v17];
    if ((!(v18 | v19) || [v18 isEqual:v19]) && (objc_msgSend(v5, "propertyForKey:", @"COSSockPuppetInstallationState"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "integerValue"), v20, objc_msgSend(v6, "propertyForKey:", @"COSSockPuppetInstallationState"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "integerValue"), v22, v21 == v23))
    {
      if ([v5 detailControllerClass])
      {
        isKindOfClass = 0;
      }

      else
      {
        isKindOfClass = [v6 detailControllerClass] == 0;
      }

      if ([v5 detailControllerClass] && objc_msgSend(v6, "detailControllerClass"))
      {
        [v5 detailControllerClass];
        [v6 detailControllerClass];
        isKindOfClass = objc_opt_isKindOfClass();
      }

      v26 = PSDetailControllerClassKey;
      v27 = [v5 propertyForKey:PSDetailControllerClassKey];
      v28 = [v6 propertyForKey:v26];
      v29 = [v27 isEqualToString:v28];
      v30 = PSBundlePathKey;
      v31 = [v5 propertyForKey:PSBundlePathKey];
      v32 = [v6 propertyForKey:v30];
      v25 = isKindOfClass & v29 & [v31 isEqualToString:v32];
    }

    else
    {
      v25 = 0;
    }
  }

  return v25 & 1;
}

uint64_t sub_100074E4C(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v5 count];
    if (v9 == [v7 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v5;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v20;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v19 + 1) + 8 * v15);
            v17 = [v7 objectAtIndex:{v13, v19}];
            LODWORD(v16) = sub_100074B58(v16, v17, a3);

            if (!v16)
            {
              v8 = 0;
              goto LABEL_15;
            }

            ++v13;
            v15 = v15 + 1;
          }

          while (v12 != v15);
          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v8 = 1;
LABEL_15:
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void sub_1000751D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007520C(id *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([&off_1002817B0 containsObject:v10] & 1) == 0)
  {
    v6 = [a1[4] specialCaseVictoryRow];
    v7 = [v10 isEqualToString:v6];

    if (v7)
    {
      v8 = [*(a1[4] + OBJC_IVAR___PSListController__specifiers) specifierForID:@"VICTORY_ROW_ID"];
      WeakRetained = objc_loadWeakRetained(a1 + 6);
      [WeakRetained decorateSpecifierWithWKDetails:v8 byIdentifier:v10 andApplication:v5];
    }

    else if ([v5 applicationType] != 1)
    {
      [a1[5] setObject:v5 forKey:v10];
    }
  }
}

void sub_1000753D8(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 302);
  v7 = [v5 bundleIdentifier];
  v8 = [v6 objectForKey:v7];
  v9 = [v8 integerValue];

  if (v9 == 2)
  {
    [*(a1 + 40) setObject:v5 forKey:v10];
  }
}

void sub_1000757B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = +[UIApplication sharedApplication];
    v11 = [v10 isInSetupFlow];

    if ((v11 & 1) == 0)
    {
      v12 = pbb_bridge_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error Reloading Apps: %@", buf, 0xCu);
      }
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007594C;
  block[3] = &unk_100268638;
  block[4] = *(a1 + 32);
  v16 = v8;
  v17 = v7;
  v13 = v7;
  v14 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10007594C(uint64_t a1)
{
  *(*(a1 + 32) + 166) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    objc_storeStrong((*(a1 + 32) + 302), v2);
    v3 = *(*(a1 + 32) + 302);
    v4 = +[BPSBridgeAppContext shared];
    [v4 setWatchAppInstallStates:v3];
  }

  v5 = [*(a1 + 32) filterSockPuppetApps:*(a1 + 48)];
  v6 = [*(a1 + 32) filterForWatchInstalledApps:v5];
  v7 = qword_1002BD460;
  qword_1002BD460 = v6;

  v8 = qword_1002BD460;
  v9 = +[BPSBridgeAppContext shared];
  [v9 setInstalledWatchkitApps:v8];

  v10 = [*(a1 + 32) specifiersForWKApps:v5];
  if ((sub_100074E4C(v10, *(*(a1 + 32) + 230), 0) & 1) == 0)
  {
    v11 = *(*(a1 + 32) + 222);
    if (v11)
    {
      if (![v11 count])
      {
        v17 = *(a1 + 32);
        v18 = [v17 specifierForID:@"APPLE_APP_GROUP_ID"];
        v19 = [v17 _groupIndexForGroup:v18];

        if (v19 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_16;
        }

        [*(a1 + 32) insertContiguousSpecifiers:v10 atEndOfGroup:v19];
        v20 = *(a1 + 32);
        v21 = 0;
LABEL_15:
        [v20 refreshAppleAppGroupFooterState:v21];
        goto LABEL_16;
      }

      v12 = [v10 count];
      v13 = *(a1 + 32);
      if (v12)
      {
        [v13 insertAndDeleteSpecifiersForChanges:v10];
LABEL_16:
        v22 = +[NSMutableArray array];
        +[NSMutableArray array];
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_100075D38;
        v23 = v39[3] = &unk_100269CE0;
        v40 = v23;
        v24 = v22;
        v41 = v24;
        v25 = objc_retainBlock(v39);
        v26 = [PSSpecifierUpdates updatesByDiffingSpecifiers:*(*(a1 + 32) + 222) withSpecifiers:v10 changedBlock:v25];
        v33 = _NSConcreteStackBlock;
        v34 = 3221225472;
        v35 = sub_100075E14;
        v36 = &unk_100269D08;
        v27 = v24;
        v37 = v27;
        v28 = v23;
        v38 = v28;
        [v26 enumerateUpdatesUsingBlock:&v33];
        if ([v28 count])
        {
          [*(a1 + 32) removeContiguousSpecifiersFromIndexing:v28];
        }

        if ([v27 count])
        {
          [*(a1 + 32) insertContiguousSpecifiersForIndexing:v27];
        }

        objc_storeStrong((*(a1 + 32) + 222), v10);
        v29 = [*(a1 + 32) freezeDryAppStates:v10];
        v30 = *(a1 + 32);
        v31 = *(v30 + 230);
        *(v30 + 230) = v29;

        [*(a1 + 32) addUnavailableAppsSectionIfNeeded];
        v32 = *(a1 + 32);
        if (*(v32 + 167) == 1)
        {
          *(v32 + 167) = 0;
          [*(a1 + 32) _kickOffWatchKitAppReload];
        }

        goto LABEL_23;
      }

      [v13 removeContiguousSpecifiers:*(v13 + 222)];
    }

    else
    {
      v14 = [v10 count];
      v15 = *(a1 + 32);
      v16 = [v15 wkAppSpinnerGroup];
      if (v14)
      {
        [v15 replaceContiguousSpecifiers:v16 withSpecifiers:v10];

        goto LABEL_16;
      }

      [v15 removeContiguousSpecifiers:v16];
    }

    v20 = *(a1 + 32);
    v21 = 1;
    goto LABEL_15;
  }

LABEL_23:
}

uint64_t sub_100075D38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100074B58(v5, v6, 1);
  if ((v7 & 1) == 0)
  {
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }

    if (v6)
    {
      if ([v6 detailControllerClass])
      {
LABEL_9:
        [*(a1 + 40) addObject:v6];
        goto LABEL_10;
      }

      v8 = [v6 propertyForKey:PSDetailControllerClassKey];
      if (v8)
      {

        goto LABEL_9;
      }

      v9 = [v6 propertyForKey:PSBundlePathKey];

      if (v9)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:

  return v7 ^ 1u;
}

void sub_100075E14(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 specifier];
  v4 = [v3 operation];

  if (v4 == 1)
  {
    v5 = 32;
  }

  else
  {
    if (v4 != 4)
    {
      goto LABEL_6;
    }

    v5 = 40;
  }

  [*(a1 + v5) addObject:v6];
LABEL_6:
}

void *sub_100075EA4(void *result)
{
  v3 = result[4];
  if (*(v3 + 166))
  {
    *(v3 + 167) = 1;
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v4 = result;
    *(v3 + 166) = 1;
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Gathering all the watch apps from the watch and the phone", v6, 2u);
    }

    return [v4[4] gatherAllWatchAppsWithCompletion:v4[5]];
  }

  return result;
}

uint64_t sub_100076630(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v7 = [v3 identifier];
    v8 = [v4 identifier];
    v9 = [v3 propertyForKey:@"COSSockPuppetInstallationState"];
    v10 = [v9 integerValue];

    v11 = [v4 propertyForKey:@"COSSockPuppetInstallationState"];
    v12 = [v11 integerValue];

    if (v10 == v12)
    {
      v6 = [v7 isEqualToString:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "new specifier and old specifier are both nil during compare", v14, 2u);
    }

    v6 = 1;
  }

  return v6;
}

uint64_t sub_100076A7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed enumeration in enumerateInstalledApplicationsOnPairedDevice! error=%@ app=%@", &v15, 0x16u);
    }
  }

  else
  {
    v8 = [v5 bundleIdentifier];

    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [NSNumber numberWithInteger:2];
      v11 = [v5 bundleIdentifier];
      [v9 setObject:v10 forKey:v11];

      v12 = *(a1 + 40);
      v13 = [v5 bundleIdentifier];
      [v12 setObject:v5 forKey:v13];
    }
  }

  if (!v5)
  {
    [*(a1 + 48) groupLocallyAvailableAppsWithWatchOnlyApps:*(a1 + 40) withStates:*(a1 + 32) withCompletion:*(a1 + 56)];
  }

  return 1;
}

uint64_t sub_100076D20(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed enumeration in enumerateLocallyAvailableApplicationsForPairedDevice! error=%@ app=%@", &v21, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  v8 = [v5 bundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = [v5 isEligibleForWatchAppInstall];

    if (v10)
    {
      v11 = [v5 deviceStatus];
      v7 = sub_100076F34([v11 installStatus]);

      v12 = a1[4];
      v13 = [v5 bundleIdentifier];
      v14 = [v12 objectForKey:v13];

      if (!v14)
      {
        if ([v7 integerValue]== 4)
        {
          v15 = [NSNumber numberWithInteger:5];

          v7 = v15;
        }

        v16 = a1[4];
        v17 = [v5 bundleIdentifier];
        [v16 setObject:v5 forKey:v17];
      }

      v18 = a1[5];
      v19 = [v5 bundleIdentifier];
      [v18 setObject:v7 forKey:v19];

      goto LABEL_12;
    }
  }

LABEL_13:
  if (!v5)
  {
    (*(a1[6] + 16))();
  }

  return 1;
}

id sub_100076F34(unint64_t a1)
{
  if (a1 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSNumber numberWithInteger:qword_1001C6B08[a1], v1];
  }

  return v3;
}

void sub_100077308(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:NSLocalizedFailureReasonErrorKey];
  v4 = [v2 objectForKey:NSLocalizedDescriptionKey];
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting application installation error title: %@ description: %@", &v11, 0x16u);
  }

  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AppConduit app install error did not have a title and/or a description, userinfo: %@", &v11, 0xCu);
    }
  }

  else
  {
    v7 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
    v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];
    [v7 addAction:v10];

    [*(a1 + 40) presentViewController:v7 animated:1 completion:0];
  }
}

id sub_100077B5C(void *a1)
{
  v2 = a1[4];
  v3 = [NSNumber numberWithInteger:a1[6]];
  [v2 setProperty:v3 forKey:@"COSSockPuppetInstallationState"];

  v5 = a1[4];
  v4 = a1[5];

  return [v4 reloadSpecifier:v5];
}

void sub_100078058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (!a3 && [WeakRetained isBreatheAppInstalled] != a2)
  {
    [v7 setIsBreatheAppInstalled:a2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100078128;
    block[3] = &unk_100268430;
    objc_copyWeak(&v9, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v9);
  }
}

void sub_100078128(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_1000781C0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100078250;
  block[3] = &unk_100268430;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100078250(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained spotlightSearchController];
  v4 = [v3 isActive];

  if (v4)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v5 = [v7 spotlightResultsController];
    v6 = [v5 collectionView];
    [v6 reloadData];
  }
}

void sub_10007846C(uint64_t a1)
{
  v2 = +[COSCoreSpotlightIndexer sharedInstance];
  v3 = *(a1 + 32);
  v4 = PSPreferencesUIFrameworkBundle();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007855C;
  v5[3] = &unk_100268430;
  objc_copyWeak(&v6, (a1 + 40));
  [v2 deleteSpecifiers:v3 bundle:v4 withURLPrefix:@"bridge" waitForCompletion:0 completion:v5];

  objc_destroyWeak(&v6);
}

void sub_10007855C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000785EC;
  block[3] = &unk_100268430;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_1000785EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained spotlightSearchController];
  v2 = [v1 isActive];

  if (v2)
  {
    v3 = [WeakRetained spotlightResultsController];
    v4 = [v3 collectionView];
    [v4 reloadData];
  }
}

void sub_1000787DC(uint64_t a1)
{
  v2 = +[COSCoreSpotlightIndexer sharedInstance];
  v3 = *(a1 + 32);
  v4 = PSPreferencesUIFrameworkBundle();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000788CC;
  v5[3] = &unk_100268430;
  objc_copyWeak(&v6, (a1 + 40));
  [v2 indexSpecifiers:v3 bundle:v4 withURLPrefix:@"bridge" waitForCompletion:0 completion:v5];

  objc_destroyWeak(&v6);
}

void sub_1000788CC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007895C;
  block[3] = &unk_100268430;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_10007895C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained spotlightSearchController];
  v4 = [v3 isActive];

  if (v4)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v5 = [v7 spotlightResultsController];
    v6 = [v5 collectionView];
    [v6 reloadData];
  }
}

void sub_100078B90(uint64_t a1)
{
  v1 = [*(a1 + 32) spotlightSearchController];
  [v1 setActive:0];
}

void sub_100079248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100079270(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000796B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1000796D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained spotlightResultsController];
  [v4 searchQueryFoundItems:v3];
}

void sub_100079744(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained spotlightResultsController];
  [v1 searchQueryCompleted];
}

void sub_10007979C(uint64_t a1)
{
  v7 = +[COSCoreSpotlightIndexer sharedInstance];
  v2 = [*(a1 + 32) searchBar];
  v3 = [v2 text];
  v4 = [*(a1 + 32) searchBar];
  v5 = [v4 textInputMode];
  v6 = [v5 primaryLanguage];
  [v7 topHitSearchForString:v3 keyboardLanguage:v6 foundItemsHandler:*(a1 + 40) completionHandler:*(a1 + 48)];
}

void sub_1000799CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[MCProfileConnection sharedConnection];
    v4 = [v3 managingOrganizationInformation];

    v5 = [v4 objectForKeyedSubscript:kCCOrganizationNameKey];
    if ([v5 length] && objc_msgSend(v5, "characterAtIndex:", objc_msgSend(v5, "length") - 1) == 46)
    {
      v6 = [v5 substringToIndex:{objc_msgSend(v5, "length") - 1}];

      v5 = v6;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100079B28;
    block[3] = &unk_1002684D0;
    objc_copyWeak(&v12, (a1 + 40));
    v7 = *(a1 + 32);
    v10 = v5;
    v11 = v7;
    v8 = v5;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v12);
  }
}

void sub_100079B28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setEnrolledOrganizationName:*(a1 + 32)];
    [*(a1 + 40) reloadSpecifiers];
    WeakRetained = v3;
  }
}

void *sub_10007A2B0(uint64_t a1)
{
  v2 = sub_10000DDBC();
  result = dlsym(v2, "NPHCellularPlanInfoDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD480 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10007A300()
{
  result = _sl_dlopen();
  qword_1002BD488 = result;
  return result;
}

id sub_10007A374()
{
  if (qword_1002BD4A0 != -1)
  {
    sub_100188310();
  }

  v1 = qword_1002BD498;

  return v1;
}

void sub_10007A3B8(id a1)
{
  v3[0] = @"NTK_CUSTOMIZATION_ID";
  v3[1] = @"APP_LAYOUT_ID";
  v4[0] = @"/System/Library/NanoPreferenceBundles/Customization/NTKCustomization.bundle";
  v4[1] = @"/System/Library/NanoPreferenceBundles/Customization/CarouselLayoutSettings.bundle";
  v3[2] = @"APP_VIEW_ID";
  v3[3] = @"PRIVACY_ID";
  v4[2] = @"/System/Library/NanoPreferenceBundles/Customization/CarouselAppViewSettings.bundle";
  v4[3] = @"/System/Library/NanoPreferenceBundles/PrivacySettings/HealthBridgePrivacySettings.bundle";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_1002BD498;
  qword_1002BD498 = v1;
}

Class sub_10007A490(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD4B0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10007A5D4;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_100269EA0;
    v6 = 0;
    qword_1002BD4B0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD4B0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BBSectionInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100188324();
  }

  qword_1002BD4A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10007A5D4()
{
  result = _sl_dlopen();
  qword_1002BD4B0 = result;
  return result;
}

id sub_10007BEAC(void *a1, char a2)
{
  v3 = a1;
  v4 = [UIFont boldSystemFontOfSize:14.0];
  v5 = objc_alloc_init(UILabel);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:v3 value:&stru_10026E598 table:@"VancouverLocalizable-victory"];

  [v5 setText:v7];
  [v5 setNumberOfLines:1];
  [v5 setFont:v4];
  [v5 _setTextColorFollowsTintColor:1];
  if (a2)
  {
    +[UIColor darkGrayColor];
  }

  else
  {
    BPSSetupTintColor();
  }
  v8 = ;
  [v5 setTintColor:v8];

  return v5;
}

void sub_10007C1CC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  height = CGSizeZero.height;
  v17 = a1;
  [v17 sizeThatFits:{CGSizeZero.width, height}];
  v11 = v10;
  v13 = v12;
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  v14 = (CGRectGetWidth(v19) - v11) * 0.5;
  v15 = floorf(v14);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  v16 = (CGRectGetHeight(v20) - v13) * 0.5;
  [v17 setFrame:{v15, floorf(v16), v11, v13}];
}

id sub_10007C4C0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);
  if (v2 == 1)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [v3 setAlpha:v4];
  if (*(a1 + 40) == 2)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [*(*(a1 + 32) + 24) setAlpha:v5];
  if (*(a1 + 40) == 3)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  [*(*(a1 + 32) + 40) setAlpha:v6];
  if (*(a1 + 40) == 4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [*(*(a1 + 32) + 48) setAlpha:v7];
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  return [v9 updateOutlineEnabled:v8 forMode:v10];
}

id sub_10007ED3C(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

id sub_10007ED80(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 completeTransition:1];
}

void sub_10007F848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007F874(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Watch reported being prepared for InitialSync.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishedInitialSyncPrep];
}

id sub_10007FA54(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  result = [*(a1 + 32) checkHoldReleaseConditions];
  v3 = *(a1 + 32);
  if (*(v3 + 10) == 1)
  {
    *(v3 + 10) = 0;
    v4 = *(a1 + 32);

    return [v4 setIsSyncComplete:1];
  }

  return result;
}

void sub_1000809F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;
}

void sub_100080C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100080CCC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100188408();
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000810A4(uint64_t a1)
{
  v2 = [UIApp activeWatch];
  v3 = [v2 valueForProperty:NRDevicePropertyPairingID];

  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pairingIdentifier (%@) / pairingID (%@)", &v6, 0x16u);
  }

  if ([*(a1 + 32) isEqual:v3])
  {
    [*(a1 + 40) setIsSyncComplete:1];
  }
}

void sub_1000818B0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1001884F4();
  }
}

id sub_100081A98(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [NSNumber numberWithDouble:*(a1 + 40)];
    v10 = 138412290;
    v11 = *&v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(COSInitialSyncMonitor) syncProgressDidUpdate %@", &v10, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = *(a1 + 40);
  v6 = *(a1 + 32);
  if ((v5 * 100.0) != (v6[2] * 100.0))
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 16);
      v10 = 134218240;
      v11 = v5;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sync Progress Changed: %f -> %f", &v10, 0x16u);
    }

    v6 = *(a1 + 32);
  }

  [v6 _updateProgressUI];
  return [*(a1 + 32) setIsSyncComplete:{objc_msgSend(*(a1 + 32), "_isSyncComplete")}];
}

uint64_t sub_100081E8C(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    v2 = pbb_setupflow_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(COSSetupFinishedViewController %@) Met Criteria for direct dismissal!", &v5, 0xCu);
    }

    *(*(a1 + 32) + 12) = 1;
    [*(a1 + 32) _updateProgressUI];
    [*(a1 + 32) setIsSyncComplete:(*(*(a1 + 32) + 13) & 1) == 0];
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10008203C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [UIApp activeWatch];
    v4 = pbb_setupflow_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User selected install all apps during Setup; checking compatiblity...", buf, 2u);
    }

    HasCapabilityForString = BPSDeviceHasCapabilityForString();
    v6 = pbb_setupflow_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (HasCapabilityForString)
    {
      if (v7)
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "determineArchitectureCompatibility for %@", buf, 0xCu);
      }

      objc_initWeak(buf, *(a1 + 32));
      v8 = +[ACXDeviceConnection sharedDeviceConnection];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000822A0;
      v9[3] = &unk_100268980;
      objc_copyWeak(&v10, buf);
      [v8 fetchInstalledApplicationsForPairedDevice:v3 completion:v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "determineArchitectureCompatibility not needed", buf, 2u);
      }
    }
  }

  else
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User skipped install all apps during Setup.", buf, 2u);
    }
  }
}

void sub_100082274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000822A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v21 = objc_alloc_init(NSMutableArray);
  if (v6)
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100188568();
    }

LABEL_4:

    goto LABEL_5;
  }

  v20 = a1;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v5 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    v13 = ACXArchitectureCompatibilityKey;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [v5 objectForKeyedSubscript:v15];
        v17 = [v16 objectForKeyedSubscript:v13];
        if ([v17 unsignedIntegerValue] == 2)
        {
          v18 = pbb_setupflow_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = v15;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "App (%@) requires update!", buf, 0xCu);
          }

          [v21 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v11);
  }

  a1 = v20;
  v6 = 0;
  if ([v21 count])
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 count]);
      *buf = 138412290;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "We require updates for %@ app(s)", buf, 0xCu);
    }

    goto LABEL_4;
  }

LABEL_5:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000825B4;
  block[3] = &unk_100268458;
  objc_copyWeak(&v24, (a1 + 32));
  v23 = v21;
  v8 = v21;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v24);
}

void sub_1000825B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateAppsIfNeededWithArchitectureIncompatibleApps:*(a1 + 32)];
}

void sub_100082EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100082ECC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100082F90;
  v8[3] = &unk_100269F98;
  objc_copyWeak(&v11, (a1 + 40));
  v12 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v11);
}

void sub_100082F90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 32);
  if (!v3 && (*(a1 + 56) & 1) != 0)
  {
    v9 = [UIApp setupController];
    v10 = [v9 analyticsEnrollmentRetryCount];

    v11 = [UIApp setupController];
    [v11 setAnalyticsEnrollmentFailed:0];

    [PBBridgeCAReporter recordDeviceEnrollmentResult:1 retryCount:v10];
    v12 = [UIApp setupController];
    v13 = [v12 pairingReportManager];

    [v13 addPairingTimeEventToPairingReportPlist:75 withValue:&off_100281B58 withError:0];
    v14 = [WeakRetained delegate];
    [v14 buddyControllerReleaseHoldAndSkip:*(a1 + 40)];

    goto LABEL_12;
  }

  v4 = [v3 domain];
  if (![v4 isEqualToString:DMCHTTPTransactionErrorDomain])
  {

    goto LABEL_9;
  }

  v5 = [*(a1 + 32) code];

  if (v5 != 23007)
  {
LABEL_9:
    [WeakRetained _handleEnrollmentError:*(a1 + 32)];
    goto LABEL_12;
  }

  v6 = pbb_devicemanagement_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "received challenge for pairing token", v15, 2u);
  }

  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:kDMCErrorDetailsPairingParametersKey];

  [WeakRetained _attemptEnrollmentAfterGeneratingPairingTokenWithSigningInfo:v8];
LABEL_12:
}

void sub_100083240(uint64_t a1)
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100083308;
  v4[3] = &unk_100269FE8;
  objc_copyWeak(&v5, (a1 + 40));
  [v2 updateMDMEnrollmentInfoForPairingWatch:v3 completion:v4];

  objc_destroyWeak(&v5);
}

void sub_100083308(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = pbb_devicemanagement_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10018861C();
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100083420;
    v11[3] = &unk_100268458;
    objc_copyWeak(&v13, (a1 + 32));
    v12 = v7;
    dispatch_async(&_dispatch_main_q, v11);

    objc_destroyWeak(&v13);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      [WeakRetained _proceedToEnrollWithPairingToken:v5];
    }
  }
}

void sub_100083420(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleEnrollmentError:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100083548(uint64_t a1)
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100083610;
  v4[3] = &unk_100269FE8;
  objc_copyWeak(&v5, (a1 + 40));
  [v2 fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:v3 completion:v4];

  objc_destroyWeak(&v5);
}

void sub_100083610(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000836E8;
  block[3] = &unk_1002684D0;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v12);
}

void sub_1000836E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32) || !*(a1 + 40))
    {
      v4 = pbb_devicemanagement_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100188690();
      }

      [v3 _handleEnrollmentError:*(a1 + 32)];
    }

    else
    {
      [WeakRetained informWatchToConfigureDeviceManagementWithData:?];
    }
  }
}

void sub_1000843D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100084408(uint64_t a1, void *a2, void *a3)
{
  v32 = a2;
  v33 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_38;
  }

  v31 = WeakRetained;
  if (v33)
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v33;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Lookup failed with no lookup item and error: %@", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v30 = a1;
  [v32 responseDataItems];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v37 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (!v37)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_30;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v36 = *v51;
  do
  {
    v10 = 0;
    do
    {
      if (*v51 != v36)
      {
        v11 = v10;
        objc_enumerationMutation(obj);
        v10 = v11;
      }

      v39 = v10;
      v12 = *(*(&v50 + 1) + 8 * v10);
      v42 = [v12 objectForKeyedSubscript:@"id"];
      if (v42)
      {
        v13 = [v12 objectForKeyedSubscript:@"attributes"];
        v14 = [v13 objectForKeyedSubscript:@"platformAttributes"];
        v40 = [v14 objectForKeyedSubscript:@"ios"];

        v15 = v40;
        if (v40)
        {
          v38 = [v40 objectForKeyedSubscript:@"bundleId"];
          v35 = [v40 objectForKeyedSubscript:@"offers"];
          if (!v38)
          {
            goto LABEL_23;
          }

          v16 = v35;
          if (v35)
          {
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v41 = v35;
            v17 = [v41 countByEnumeratingWithState:&v46 objects:v58 count:16];
            if (v17)
            {
              v18 = *v47;
LABEL_16:
              v19 = 0;
              v20 = v7;
              v21 = v8;
              v22 = v9;
              while (1)
              {
                if (*v47 != v18)
                {
                  objc_enumerationMutation(v41);
                }

                v9 = [*(*(&v46 + 1) + 8 * v19) objectForKeyedSubscript:@"buyParams"];

                v23 = [v12 objectForKeyedSubscript:@"attributes"];
                v8 = [v23 objectForKeyedSubscript:@"artistName"];

                v24 = [v12 objectForKeyedSubscript:@"attributes"];
                v7 = [v24 objectForKeyedSubscript:@"name"];

                if ([v9 length])
                {
                  break;
                }

                v19 = v19 + 1;
                v20 = v7;
                v21 = v8;
                v22 = v9;
                if (v17 == v19)
                {
                  v17 = [v41 countByEnumeratingWithState:&v46 objects:v58 count:16];
                  if (v17)
                  {
                    goto LABEL_16;
                  }

                  break;
                }
              }
            }

LABEL_23:
            v16 = v35;
          }

          v15 = v40;
        }
      }

      v10 = v39 + 1;
    }

    while ((v39 + 1) != v37);
    v37 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
  }

  while (v37);
LABEL_30:

  if ([v9 length])
  {
    v25 = objc_alloc_init(ASDPurchase);
    [v25 setBundleID:*(v30 + 32)];
    [v25 setBuyParameters:v9];
    v26 = [v31 storeIdentifier];
    [v25 setItemID:v26];

    [v25 setItemName:v7];
    [v25 setVendorName:v8];
    v27 = pbb_bridge_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(v30 + 40);
      *buf = 138412546;
      v55 = v28;
      v56 = 2112;
      v57 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Starting download request for adam ID '%@': %@", buf, 0x16u);
    }

    [v31 notifyObserversThatControllerDidInitiatePurchase];
    v29 = +[ASDPurchaseManager sharedManager];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000849E8;
    v43[3] = &unk_10026A010;
    objc_copyWeak(&v45, (v30 + 48));
    v44 = *(v30 + 40);
    [v29 processPurchase:v25 withResponseHandler:v43];

    objc_destroyWeak(&v45);
  }

  else
  {
    v25 = pbb_bridge_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Lookup failed with no buy params and error: %@", buf, 0xCu);
    }
  }

  v6 = obj;
LABEL_37:

  WeakRetained = v31;
LABEL_38:
}

void sub_1000849E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = [v5 items];
    v9 = [v8 firstObject];

    v10 = [v9 results];
    v11 = [v10 firstObject];
    v12 = [v11 status];

    if (v6)
    {
      v13 = pbb_bridge_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v22 = 138412546;
        v23 = v14;
        v24 = 2112;
        v25 = v6;
        v15 = "Purchase batch failed for adam ID '%@': %@";
        v16 = v13;
        v17 = 22;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v22, v17);
      }
    }

    else
    {
      v13 = pbb_bridge_log();
      v18 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12 == 2)
      {
        if (v18)
        {
          v19 = *(a1 + 32);
          v22 = 138412290;
          v23 = v19;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Download completed for adam ID '%@'", &v22, 0xCu);
        }

        v20 = 1;
        goto LABEL_13;
      }

      if (v18)
      {
        v21 = *(a1 + 32);
        v22 = 138412290;
        v23 = v21;
        v15 = "Download did not complete for adam ID '%@'";
        v16 = v13;
        v17 = 12;
        goto LABEL_11;
      }
    }

    v20 = 0;
LABEL_13:

    [WeakRetained notifyObserversThatControllerDidBeginInstallationWithSuccess:v20];
  }
}

void sub_100084D24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100084D40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[COSAppInstallationController _performAvailabilityCheck:]_block_invoke";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ~ Result: %@", &v13, 0x16u);
  }

  if (v6)
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[COSAppInstallationController _performAvailabilityCheck:]_block_invoke";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ~ Error: %@", &v13, 0x16u);
    }
  }

  if (v5)
  {
    v9 = [v5 responseDataItems];
    v10 = [v9 count] == 1;
  }

  else
  {
    v10 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setAvailableInStoreResult:v10];

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v10);
  }
}

void sub_1000850A0(id a1, BOOL a2)
{
  v2 = a2;
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithBool:v2];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Availability was %@", &v5, 0xCu);
  }
}

uint64_t sub_100085264(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return (*(v2 + 16))(v2, v3);
}

void sub_1000852F8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
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

        [*(*(&v8 + 1) + 8 * v7) didCompleteInstallationWithSuccess:{*(a1 + 40), v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_10008546C(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) copy];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) didInitiatePurchase];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000855DC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
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

        [*(*(&v8 + 1) + 8 * v7) didBeginInstallationWithSuccess:{*(a1 + 40), v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_100085754(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1 + 40))
        {
          v8 = 1;
        }

        else
        {
          v8 = 2;
        }

        [*(*(&v9 + 1) + 8 * i) appIsAvailableStateDidChange:{v8, v9}];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_100085FE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086088;
  block[3] = &unk_100268430;
  objc_copyWeak(&v5, (a1 + 40));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v5);
}

void sub_100086088(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSProfileInstallDeviceSwitchTracker connectToDevice]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: Timed out.", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionFinishedWithSuccess:0];
}

void sub_10008614C(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 16);
    v4 = 136446466;
    v5 = "[COSProfileInstallDeviceSwitchTracker connectToDevice]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Started Connecting to %@", &v4, 0x16u);
  }
}

void sub_10008620C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained switchToDevice];
  v6 = [v5 valueForProperty:NRDevicePropertyIsAltAccount];

  if (([v6 BOOLValue] & 1) == 0)
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 16);
      v10 = 136446466;
      v11 = "[COSProfileInstallDeviceSwitchTracker connectToDevice]_block_invoke";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Finished Connecting to %@", &v10, 0x16u);
    }

    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 _connectionFinishedWithSuccess:a2];
  }
}

void sub_1000863B4(uint64_t a1)
{
  v2 = pbb_setup_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[COSProfileInstallDeviceSwitchTracker _cancelConnectionTimeout]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s", &v6, 0xCu);
  }

  v3 = *(*(a1 + 32) + 40);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

void sub_1000865B8(uint64_t a1)
{
  [*(a1 + 32) _cancelConnectionTimeout];
  v2 = [*(a1 + 32) block];

  if (v2)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"NO";
      if (*(a1 + 40))
      {
        v4 = @"YES";
      }

      v6 = 136446466;
      v7 = "[COSProfileInstallDeviceSwitchTracker _connectionFinishedWithSuccess:]_block_invoke";
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Executing callback (%@)", &v6, 0x16u);
    }

    v5 = [*(a1 + 32) block];
    v5[2](v5, *(a1 + 40));

    [*(a1 + 32) setBlock:0];
  }
}

void sub_100088CE0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v4 = NSLocalizedDescriptionKey;
    v5 = @"Error: Failed to complete passcode upgrade before COSPaymentSetupController was deallocated.";
    v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    v3 = [NSError errorWithDomain:@"COSPaymentSetupErrorDomain" code:0 userInfo:v2];

    (*(*(a1 + 32) + 16))();
    [COSPaymentSetupController _updateGizmoForSuccess:*(a1 + 40)];
  }
}

void sub_1000893DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100089408(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000894C0;
  block[3] = &unk_10026A120;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  objc_copyWeak(&v9, (a1 + 40));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v9);
}

void sub_1000894C0(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Apple Pay setup assistant provided VC: %@", &v13, 0xCu);
  }

  if (PBLogPerformanceMetrics())
  {
    v4 = [*(a1 + 40) holdActivityIdentifier];
    v5 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v5 endMacroActivity:v4 beginTime:CFAbsoluteTimeGetCurrent()];
    v7 = v6;

    [PBBridgeCAReporter pushTimingForTypeNamed:v4 withValue:v7];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  v10 = *(a1 + 32);
  if (v10)
  {
    objc_storeStrong(WeakRetained + 5, v10);
    v11 = [v9 delegate];
    [v11 buddyControllerReleaseHold:v9];
  }

  else
  {
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Payment Setup Assistant did not provide a starting VC, skipping AP flow", &v13, 2u);
    }

    [objc_opt_class() _markApplePayOfferingComplete];
    v11 = [v9 delegate];
    [v11 buddyControllerReleaseHoldAndSkip:v9];
  }
}

id sub_10008968C(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Configuring payment setup controller for express setup", v4, 2u);
  }

  [*(a1 + 32) setDelegate:*(a1 + 40)];
  return [*(a1 + 32) expressSetupAssistantViewControllerWithCompletion:*(a1 + 48)];
}

void sub_1000898A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = PBBridgeDidCompletePasscodeChangeNotification;
  [v3 removeObserver:WeakRetained name:PBBridgeDidCompletePasscodeChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:WeakRetained selector:"_passcodeChangeComplete" name:v4 object:0];

  v6 = [WeakRetained delegate];
  v7 = objc_opt_class();
  v14 = 0;
  v8 = [*(a1 + 32) navigationController];
  [v6 buddyControllerWillPushNextControllerClass:v7 outNextController:&v14 ontoNavigationController:v8];
  v9 = v14;

  [v9 setPasscodeChangeDelegate:WeakRetained];
  [WeakRetained setPasscodeViewController:v9];
  [WeakRetained setPasscodeUpgradeFlowController:*(a1 + 40)];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100089A70;
  v11[3] = &unk_10026A170;
  objc_copyWeak(&v13, (a1 + 56));
  v12 = *(a1 + 48);
  v10 = objc_retainBlock(v11);
  [WeakRetained setPasscodeUpgradeCompletion:v10];

  objc_destroyWeak(&v13);
}

void sub_100089A70(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, a2, v7);
    }

    [WeakRetained setPasscodeViewController:0];
    [WeakRetained setPasscodeUpgradeFlowController:0];
  }
}

void sub_100089EF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      if (*(a1 + 48))
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Passcode change finished with success: %@ error: %@.", &v7, 0x16u);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:WeakRetained name:PBBridgeDidCompletePasscodeChangeNotification object:0];

    [WeakRetained _invokePasscodeUpgradeCompletionWithSuccess:*(a1 + 48) error:*(a1 + 32)];
    [objc_opt_class() _updateGizmoForSuccess:*(a1 + 48)];
  }
}

void sub_10008A7A4(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    sub_1001887BC(a1, v2);
  }

  *(*(a1 + 32) + 16) = 0;
  v3 = [*(a1 + 32) delegate];
  [v3 buddyControllerReleaseHold:*(a1 + 32)];
}

void sub_10008A820(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *buf = 138413058;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    v19 = 1026;
    v20 = a2;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %@ Fetched Tinker share status for current AppleID and %{public}@ with status %{public}id, error %{public}@ (#t0)", buf, 0x26u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008A988;
  v11[3] = &unk_100269350;
  v9 = *(a1 + 32);
  v14 = a2;
  v11[4] = v9;
  v12 = v5;
  v13 = *(a1 + 48);
  v10 = v5;
  dispatch_async(&_dispatch_main_q, v11);
}

void sub_10008A988(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[40] & 1) == 0)
  {
    [v2 _cancelTaskTimeout];
    *(*(a1 + 32) + 16) = 0;
    if (*(a1 + 56) && !*(a1 + 40))
    {
      v3 = *(a1 + 48);

      [v3 gizmoDidFinishHealthSharingOptIn:1];
    }

    else
    {
      v4 = [*(a1 + 32) delegate];
      [v4 buddyControllerReleaseHold:*(a1 + 32)];
    }
  }
}

void sub_10008ABF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didTimeOutWithHandler:*(a1 + 32)];
}

void sub_10008BA38(id a1)
{
  v1 = qword_1002BD4B8;
  qword_1002BD4B8 = &off_1002817C8;
}

void sub_10008BAE8(uint64_t a1)
{
  if (!qword_1002BD4C8)
  {
    v2 = pbb_bridge_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting Brute Force Reachability Checks...", buf, 2u);
    }

    v3 = [*(a1 + 40) checkDomains];
    v4 = [*(a1 + 32) copy];
    v5 = qword_1002BD4C8;
    qword_1002BD4C8 = v4;

    v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
    v7 = qword_1002BD4D0;
    qword_1002BD4D0 = v6;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v3;
    v8 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = [NSURLRequest alloc];
          v14 = [NSURL URLWithString:v12];
          v15 = [v13 initWithURL:v14 cachePolicy:1 timeoutInterval:10.0];

          v16 = +[NSURLSessionConfiguration defaultSessionConfiguration];
          v17 = [NSURLSession sessionWithConfiguration:v16];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10008BD88;
          v20[3] = &unk_10026A200;
          v20[4] = *(a1 + 40);
          v18 = [v17 dataTaskWithRequest:v15 completionHandler:v20];

          [v18 resume];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }
  }
}

void sub_10008BD88(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008BE50;
  block[3] = &unk_100269DA8;
  v8 = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10008C3D4(uint64_t a1)
{
  if (!qword_1002BD4D8)
  {
    v2 = pbb_bridge_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting Brute Force Reachability Check for %@...", buf, 0xCu);
    }

    v4 = [*(a1 + 40) copy];
    v5 = qword_1002BD4D8;
    qword_1002BD4D8 = v4;

    v6 = [NSURLRequest alloc];
    v7 = [NSURL URLWithString:*(a1 + 32)];
    v8 = [v6 initWithURL:v7 cachePolicy:1 timeoutInterval:10.0];

    v9 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    v10 = [NSURLSession sessionWithConfiguration:v9];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008C5A0;
    v12[3] = &unk_10026A250;
    v13 = *(a1 + 32);
    v11 = [v10 dataTaskWithRequest:v8 completionHandler:v12];

    [v11 resume];
  }
}

void sub_10008C5A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008C678;
  block[3] = &unk_100268638;
  v9 = a3;
  v10 = a4;
  v11 = *(a1 + 32);
  v6 = v10;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10008C678(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2 == 0;
      v5 = [*(a1 + 32) URL];
      v6 = [NSNumber numberWithBool:v4];
      v7 = [*(a1 + 40) localizedDescription];
      v11 = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ did respond? %@ (Error: %@)", &v11, 0x20u);
    }
  }

  else
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = [*(a1 + 40) localizedDescription];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ failed with error Error: %@", &v11, 0x16u);
    }
  }

  if (qword_1002BD4D8)
  {
    (*(qword_1002BD4D8 + 16))();
    v10 = qword_1002BD4D8;
    qword_1002BD4D8 = 0;
  }
}

void sub_10008D6B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pushing Controller %@", buf, 0xCu);
  }

  [v3 setDelegate:*(a1 + 32)];
  v7 = [*(a1 + 32) _viewControllerForBuddyController:v3];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008D8E0;
  v17[3] = &unk_100268638;
  v17[4] = *(a1 + 32);
  v8 = v7;
  v18 = v8;
  v9 = v3;
  v19 = v9;
  v10 = objc_retainBlock(v17);
  v11 = [*(*(a1 + 32) + 72) viewControllers];
  v12 = [v11 count];

  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = [v13 navigationController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008D92C;
    v15[3] = &unk_100269120;
    v16 = v10;
    [v13 checkSafeToTransitionOnNavigationController:v14 withCompletion:v15];
  }

  else
  {
    (v10[2])(v10);
  }
}

id sub_10008D8E0(void *a1)
{
  [*(a1[4] + 72) pushViewController:a1[5] animated:0];
  v2 = *(a1[4] + 80);
  v3 = a1[6];

  return [v2 addObject:v3];
}

void sub_10008D93C(uint64_t a1)
{
  v2 = PBPairedSyncComplete();
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithBool:v2];
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Already NR Paired... (Sync Complete: %@)", &v16, 0xCu);
  }

  v5 = [*(a1 + 32) activeWatch];
  v6 = +[PBBridgeWatchAttributeController sharedDeviceController];
  [v6 setDevice:v5];

  v7 = objc_alloc_init(COSSetupFinishedViewController);
  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithBool:v2];
    v16 = 138412290;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Continuing SyncTrap? %@", &v16, 0xCu);
  }

  [(COSSetupFinishedViewController *)v7 continuePairedSync];
  v10 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v11 = *(a1 + 40);
  v12 = *(v11 + 240);
  *(v11 + 240) = v10;

  if ((v2 & 1) == 0)
  {
    v13 = [(COSSetupFinishedViewController *)v7 navigationItem];
    v14 = sub_10002C85C(*(a1 + 40), "promptWhetherToResetPairing:");
    [v13 setLeftBarButtonItem:v14];

    [v13 setLeftItemsSupplementBackButton:0];
  }

  v15 = UIApp;
  [v15 setIsActivated:1];
  (*(*(a1 + 48) + 16))();
}

void sub_10008DB68(uint64_t a1)
{
  v2 = [*(a1 + 32) isAlreadyPaired];
  v3 = [*(a1 + 32) canPairAgain];
  v4 = objc_alloc_init(COSPairingTypeSelectionViewController);
  v5 = *(a1 + 32);
  v6 = *(v5 + 112);
  *(v5 + 112) = v4;

  [*(*(a1 + 32) + 112) setDelegate:?];
  if (v2)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    if ([*(*(a1 + 32) + 384) shouldPromptToResumePairing])
    {
      v8 = pbb_setupflow_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resume pairing state present, pushing resume prompt pane.", buf, 2u);
      }

      v9 = objc_alloc_init(COSResumePairingViewController);
      [(COSResumePairingViewController *)v9 setDelegate:*(a1 + 32)];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    if (([*(a1 + 40) isUpdatingGizmoInSetupFlow] & 1) == 0)
    {
      v13 = pbb_setupflow_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Fresh run of buddy.", buf, 2u);
      }

      goto LABEL_23;
    }

LABEL_15:
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Already NR Paired...", buf, 2u);
    }

    if (v2)
    {
      v12 = objc_alloc_init(COSSetupFinishedViewController);
      [(COSSetupFinishedViewController *)v12 continuePairedSync];
    }

    else
    {
      v12 = objc_alloc_init(COSUpdateWatchViewController);
    }

    (*(*(a1 + 48) + 16))();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008DE10;
    v14[3] = &unk_100268358;
    v14[4] = *(a1 + 32);
    v15 = v12;
    v13 = v12;
    dispatch_async(&_dispatch_main_q, v14);

LABEL_23:
    return;
  }

  if ([*(a1 + 40) isUpdatingGizmoInSetupFlow])
  {
    goto LABEL_15;
  }

  *(*(a1 + 32) + 248) = 3;
  v10 = *(*(a1 + 56) + 16);

  v10();
}

void sub_10008DE10(uint64_t a1)
{
  v2 = [*(a1 + 32) setupSoftwareUpdateManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008DEBC;
  v4[3] = &unk_10026A310;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 startUpdateInSetupWithController:v5 forcedUpdateOrUpdateInBackup:0 completion:v4];
}

void sub_10008DEBC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315906;
    v12 = "[COSSetupController run]_block_invoke_2";
    v13 = 2048;
    v14 = a2;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Update completed with status: %ld and error: %@ for update: %@", &v11, 0x2Au);
  }

  if (a2)
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Update unsuccessful, aborting pairing", &v11, 2u);
    }

    [UIApp resetSetupFlowAnimated:1 forEvent:57];
  }

  else
  {
    [*(a1 + 32) buddyControllerDone:*(a1 + 40)];
  }
}

void sub_10008E0B0(id a1)
{
  v1 = objc_alloc_init(NSMutableArray);
  v2 = +[NSFileManager defaultManager];
  v23 = 0;
  v3 = [v2 contentsOfDirectoryAtPath:@"/System/Library/NanoPreferenceBundles/SetupBundles/" error:&v23];
  v4 = v23;

  if (v4)
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10018888C();
    }
  }

  v18 = v4;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v26 count:16];
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
        v12 = [@"/System/Library/NanoPreferenceBundles/SetupBundles/" stringByAppendingString:v11];
        v13 = [NSBundle bundleWithPath:v12];

        v14 = [v13 principalClass];
        if (v14)
        {
          [v1 addObject:v14];
        }

        else
        {
          v15 = pbb_setupflow_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v11;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error! Bundle %@ doesn't have a principal class!!", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v8);
  }

  v16 = [v1 copy];
  v17 = qword_1002BD4E0;
  qword_1002BD4E0 = v16;
}

void sub_10008E4F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = [v1 view];
    v2 = [v3 superview];

    if (v2)
    {
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_10008EA50(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"https://support.apple.com/HT209512"];
  [v2 openURL:v3 configuration:0 completionHandler:0];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t sub_10008EAF8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_10008EDD0(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"https://support.apple.com/118490"];
  [v2 openURL:v3 configuration:0 completionHandler:0];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t sub_10008EE78(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_10008F090(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10008F1BC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = pbb_accountsignin_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100188974();
    }
  }
}

uint64_t sub_10008F410(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10008F8C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10008FFC4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10008FFDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  dispatch_async(&_dispatch_main_q, &stru_10026A3C0);
}

void sub_100090024(id a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v1 = [NSURL URLWithString:@"https://support.apple.com/HT204505"];
  [v2 openURL:v1 configuration:0 completionHandler:0];
}

void sub_100090470(uint64_t a1, uint64_t a2)
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithBool:a2];
    v6 = [*(*(a1 + 32) + 240) _bridgeConciseDebugDescription];
    v7 = [*(a1 + 40) _bridgeConciseDebugDescription];
    *buf = 138412802;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "This device is already paired to Companion. ShouldUnpair %@ _scannedDevice %@ / deviceFromNR %@", buf, 0x20u);
  }

  if (a2 && *(a1 + 40))
  {
    v14[0] = @"obliterate";
    v14[1] = @"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
    v15[0] = &__kCFBooleanFalse;
    v15[1] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v9 = +[NRPairedDeviceRegistry sharedInstance];
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009068C;
    v11[3] = &unk_10026A3E8;
    v12 = v10;
    v13 = *(a1 + 48);
    [v9 unpairWithDevice:v12 withOptions:v8 operationHasBegun:v11];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10009068C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) _bridgeConciseDebugDescription];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User opted to unpair Watch which was already paired to this companion: %@ (Error: %@)", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100090788(uint64_t a1)
{
  v2 = [COSRegistryDispatcher alloc];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100090838;
  v6[3] = &unk_100269B08;
  v7 = *(a1 + 40);
  v3 = [(COSRegistryDispatcher *)v2 initWithBecameReadyCompletion:v6 andTimeout:25.0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 176);
  *(v4 + 176) = v3;
}

int64_t sub_1000937A0(id a1, NRDevice *a2, NRDevice *a3)
{
  v4 = NRDevicePropertyLastActiveDate;
  v5 = a3;
  v6 = [(NRDevice *)a2 valueForProperty:v4];
  v7 = [(NRDevice *)v5 valueForProperty:v4];

  v8 = [v6 compare:v7];
  return v8;
}

void sub_100093D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100093D3C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [WeakRetained buddyControllers];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = *v25;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v24 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v6 = v9;

    if (!v6)
    {
      goto LABEL_13;
    }

    v5 = [WeakRetained buddyControllers];
    [v5 removeObject:v6];
  }

LABEL_12:

LABEL_13:
  v10 = [WeakRetained buddyControllers];
  [v10 addObject:*(a1 + 32)];

  v11 = [*(a1 + 40) viewControllers];
  v12 = [v11 mutableCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
LABEL_15:
    v17 = 0;
    while (1)
    {
      if (*v21 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v20 + 1) + 8 * v17);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v15)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    v19 = v18;

    if (!v19)
    {
      goto LABEL_24;
    }

    [v13 removeObject:{v19, v20}];
    [v13 addObject:v3];
    [*(a1 + 40) setViewControllers:v13 animated:1];
  }

  else
  {
LABEL_21:

LABEL_24:
    if (v3)
    {
      [*(a1 + 40) pushViewController:v3 animated:{1, v20}];
      [*(a1 + 48) updateLiveActivityWithViewController:v3];
    }
  }
}

void sub_1000944F4(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionCoordinator];
  if (v2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000945F4;
    v5[3] = &unk_10026A4C8;
    v6 = *(a1 + 40);
    [v2 animateAlongsideTransition:0 completion:v5];
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "We are in mid transition. Waiting until transition is complete", v4, 2u);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_1000945F4(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Transition completed. Performing pending action", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100094670(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Checking transition after alert dismissal", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000948EC(uint64_t a1)
{
  if ([*(a1 + 32) buddyControllerIsBeingHeldOff:*(a1 + 40)])
  {
    v2 = pbb_setupflow_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v16 = 138412290;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Releasing hold for controller %@ now that it's done.", &v16, 0xCu);
    }

    [*(a1 + 32) setNextControllerAfterHold:0];
    [*(a1 + 32) cleanupHoldWaitTimer];
    [*(a1 + 32) showBusyIndicator:0];
    v4 = [*(a1 + 32) navigationController];
    v5 = [v4 navigationBar];

    v6 = [v5 topItem];
    [v6 setRightBarButtonItem:0 animated:1];
    v7 = [*(a1 + 32) navigationController];
    v8 = [v7 topViewController];
    v9 = [v8 view];
    [v9 setUserInteractionEnabled:1];

    v10 = [*(a1 + 32) navigationController];
    v11 = [v10 navigationBar];
    [v11 setUserInteractionEnabled:1];
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    goto LABEL_6;
  }

  if (*(a1 + 56))
  {
    v12 = [*(a1 + 32) _controllerForClass:?];
    if (v12)
    {
LABEL_6:
      v13 = v12;
      goto LABEL_7;
    }

    v13 = objc_alloc_init(*(a1 + 56));
    if (objc_opt_respondsToSelector())
    {
      [v13 setDelegate:*(a1 + 32)];
    }
  }

  else
  {
    v13 = [*(a1 + 32) _controllerFollowingControllerClass:objc_opt_class()];
  }

  if (!v13)
  {
    [*(a1 + 32) _finishBuddy];
    return;
  }

LABEL_7:
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 holdBeforeDisplaying])
  {
    v14 = pbb_setupflow_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Holding: %@", &v16, 0xCu);
    }

    [*(a1 + 32) buddyControllerHold:*(a1 + 40) beforePresentingBuddyController:v13];
  }

  else
  {
    v15 = pbb_setupflow_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Pushing: %@", &v16, 0xCu);
    }

    [*(a1 + 32) _transitionFromBuddyController:*(a1 + 40) toBuddyController:v13];
  }

  [*(a1 + 32) updateLiveActivityWithBuddyController:v13];
}

void sub_100095128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100095150(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained navigationController];
    v5 = [v4 transitionCoordinator];

    if (v5)
    {
      v6 = pbb_setupflow_log();
      if (os_log_type_enabled(&v6->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v6->super.super.super, OS_LOG_TYPE_DEFAULT, "We were mid-transition; skipping hold wait screen.", buf, 2u);
      }
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = [v3 navigationController];
      v9 = [v8 topViewController];

      if (v7 == v9)
      {
        v13 = [v3 navigationController];
        v14 = [v13 topViewController];
        v15 = [v14 view];
        [v15 setUserInteractionEnabled:1];

        v16 = [v3 navigationController];
        v17 = [v16 navigationBar];
        [v17 setUserInteractionEnabled:1];

        v6 = [[COSSpinnerPageController alloc] initWithLabel:*(a1 + 40)];
        [(COSSpinnerPageController *)v6 setDelegate:v3];
        [(COSSpinnerPageController *)v6 setHeldPane:*(a1 + 48)];
        v18 = pbb_setupflow_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 40);
          *buf = 138412546;
          v24 = v6;
          v25 = 2112;
          v26 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Pushing hold wait screen (%@ %@)", buf, 0x16u);
        }

        [*(a1 + 56) stopAnimating];
        [v3 showButtonTrayBusyIndicator:0 forController:*(a1 + 64)];
        v20 = [v3 navigationController];
        [v20 pushViewController:v6 animated:1];

        [v3 blockGoingBackFromCurrentController];
        if (objc_opt_respondsToSelector())
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10009549C;
          block[3] = &unk_1002682F0;
          v22 = *(a1 + 48);
          dispatch_async(&_dispatch_main_q, block);
        }
      }

      else
      {
        v6 = pbb_setupflow_log();
        if (os_log_type_enabled(&v6->super.super.super, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = [v3 navigationController];
          v12 = [v11 topViewController];
          *buf = 138412546;
          v24 = v10;
          v25 = 2112;
          v26 = v12;
          _os_log_impl(&_mh_execute_header, &v6->super.super.super, OS_LOG_TYPE_DEFAULT, "Skipping pushing the hold wait screen as the top controller changed from %@ to %@", buf, 0x16u);
        }
      }
    }
  }
}

void sub_1000954A4(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fired hold wait screen timer.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained holdWaitScreenBlock];
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5);
      [v4 setHoldWaitScreenBlock:0];
    }

    else
    {
      v7 = pbb_setupflow_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "holdWaitScreenBlock is nil.  Not calling", v8, 2u);
      }
    }
  }

  dispatch_source_cancel(*(a1 + 32));
}

void sub_100095890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000958BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cleanupHoldWaitTimer];
    [v3 showBusyIndicator:0];
    v4 = [v3 nextControllerAfterHold];

    if (v4)
    {
      v5 = (a1 + 32);
      v6 = *(a1 + 32);
      v7 = [v3 nextControllerAfterHold];

      v8 = pbb_setupflow_log();
      v9 = v8;
      if (v6 == v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = *(a1 + 56);
          v35 = 138412546;
          v36 = v10;
          v37 = 1024;
          v38 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Releasing hold for (%@) and skipping (%d).", &v35, 0x12u);
        }

        v12 = +[UIApplication sharedApplication];
        v13 = [v12 applicationState];

        if (v13 == 2)
        {
          v14 = pbb_setupflow_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v35) = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Hold released while in background", &v35, 2u);
          }

          [*(a1 + 40) postUserNotificationForController:*(a1 + 32)];
        }

        [v3 setNextControllerAfterHold:0];
        v15 = [v3 navigationController];
        v9 = [v15 navigationBar];

        v16 = [v9 topItem];
        v17 = 1;
        [v16 setRightBarButtonItem:0 animated:1];
        v18 = [v3 navigationController];
        v19 = [v18 topViewController];
        v20 = [v19 view];
        [v20 setUserInteractionEnabled:1];

        v21 = [v3 navigationController];
        v22 = [v21 navigationBar];
        [v22 setUserInteractionEnabled:1];

        v23 = [v3 controllerDisplayedWhileOnHold];
        if (objc_opt_respondsToSelector())
        {
          v17 = [v23 controllerAllowsNavigatingBackTo];
        }

        if (objc_opt_respondsToSelector())
        {
          v24 = pbb_setupflow_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v35) = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Responds to selector viewController, setting viewController", &v35, 2u);
          }

          v25 = [v23 viewController];

          v23 = v25;
        }

        v26 = pbb_setupflow_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 138412546;
          v36 = v23;
          v37 = 1024;
          v38 = v17;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "viewControllerDisplayedWhileOnHold %@ canNavigateBack: %d", &v35, 0x12u);
        }

        if (v17)
        {
          v27 = [v23 navigationItem];
          [v27 setBackBarButtonItem:0];
        }

        v28 = [UIApp setupController];
        v29 = [v28 activationManager];

        if ([v29 awaitingActivation] && objc_msgSend(v29, "didPresentFlow") && (objc_msgSend(v29, "hasStashedALFlow") & 1) == 0)
        {
          [v3 popRUIObject:0 animated:0];
          [v29 setAwaitingActivation:0];
        }

        if ((*(a1 + 56) & 1) != 0 || [*(a1 + 40) _shouldSkipForBetterTogether:*(a1 + 32)])
        {
          if (PBShouldOfferBetterTogetherFlow())
          {
            v30 = objc_loadWeakRetained((a1 + 48));
            v31 = [v30 isDeKOTAFlow];

            if (v31)
            {
              v32 = pbb_setupflow_log();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = *v5;
                v35 = 138412290;
                v36 = v33;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Better together, forcing skip of: %@", &v35, 0xCu);
              }
            }
          }

          [v3 buddyControllerDone:*v5];
          if ((v17 & 1) == 0)
          {
            [v3 blockGoingBackFromCurrentController];
          }
        }

        else
        {
          v34 = [v3 controllerDisplayedWhileOnHold];
          [v3 _transitionFromBuddyController:v34 toBuddyController:*v5];

          [v3 setControllerDisplayedWhileOnHold:0];
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100188BD0(a1 + 32, v3);
      }
    }

    else
    {
      v9 = pbb_setupflow_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100188C6C();
      }
    }
  }
}

void sub_100095FA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v18;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = [*(*(&v17 + 1) + 8 * i) request];
      v10 = [v9 identifier];
      v11 = [v10 isEqual:@"com.apple.Bridge.request"];

      v6 |= v11;
    }

    v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v5);
  if (v6)
  {
    v12 = pbb_setupflow_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Already showing pairing reminder notification", v16, 2u);
    }
  }

  else
  {
LABEL_11:
    v12 = objc_alloc_init(UNMutableNotificationContent);
    [v12 setCategoryIdentifier:@"com.apple.Bridge.pairing"];
    [v12 setInterruptionLevel:2];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"RETURN_TO_PAIRING_NOTIFICATION_BODY" value:&stru_10026E598 table:@"Localizable"];
    [v12 setBody:v14];

    v15 = [UNNotificationRequest requestWithIdentifier:@"com.apple.Bridge.request" content:v12 trigger:0];
    [*(a1 + 32) addNotificationRequest:v15 withCompletionHandler:&stru_10026A538];
  }
}

void sub_1000961D8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Added Notification request: %@", &v4, 0xCu);
  }
}

void sub_100096640(uint64_t a1)
{
  v1 = (a1 + 48);
  if (!*(a1 + 48))
  {
    goto LABEL_7;
  }

  v3 = [*(a1 + 32) _controllerForClass:?];
  if (v3)
  {
    goto LABEL_6;
  }

  v3 = objc_alloc_init(*v1);
  if (objc_opt_respondsToSelector())
  {
    [v3 setDelegate:*(a1 + 32)];
  }

  if (v3)
  {
LABEL_6:
    [*(a1 + 32) _pushGizmoBuddyController:v3];
    [*(a1 + 32) _pushBuddyController:v3 ontoNavigationController:*(a1 + 40)];
    v4 = v3;
    **(a1 + 56) = v3;
  }

  else
  {
LABEL_7:
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100188D20();
    }
  }
}

void sub_100096CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100096D28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained navigationController];
  v3 = [v2 viewControllers];
  v4 = [v3 lastObject];

  if (objc_opt_respondsToSelector())
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "View controller %@ has custom userAbortedPairing method, deferring to it", buf, 0xCu);
    }

    [v4 performSelector:"userAbortedPairing"];
  }

  else
  {
    v6 = [UIApp activeWatch];
    v7 = [v6 valueForProperty:NRDevicePropertyIsPaired];
    v8 = [v7 BOOLValue];

    v9 = [UIApp isActivated];
    v10 = pbb_setupflow_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v6 && ((v8 | v9) & 1) != 0)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User Reset Buddy! - Unpairing", buf, 2u);
      }

      v14[0] = @"obliterate";
      v14[1] = @"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
      v15[0] = &__kCFBooleanTrue;
      v15[1] = &__kCFBooleanTrue;
      v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
      v13 = +[NRPairedDeviceRegistry sharedInstance];
      [v13 unpairWithDevice:v6 withOptions:v12 operationHasBegun:&stru_10026A5A8];

      [PBBridgeCAReporter incrementSuccessType:42];
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User Reset Buddy!", buf, 2u);
      }

      [UIApp resetSetupFlowAnimated:1 forEvent:42];
    }

    [WeakRetained endLiveActivityWithEndStatus:2];
  }
}

void sub_100096FB4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User Reset Buddy! - Unpairing result: (%@)", &v4, 0xCu);
  }
}

void sub_100097060(id a1, UIAlertAction *a2)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User Did Not Reset Buddy.", v3, 2u);
  }
}

void sub_1000974A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000974C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = [WeakRetained navigationController];
  v5 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000975AC;
  v6[3] = &unk_100268A38;
  v6[4] = WeakRetained;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v3 presentInParentViewController:v4 animated:v5 completion:v6];
}

void sub_1000975AC(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 topViewController];

  v4 = [*(a1 + 40) visiblePage];

  v5 = pbb_setupflow_log();
  v6 = v5;
  if (v3 == v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) visiblePage];
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PUSH: %@ vs %@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100188E10((a1 + 40));
  }

  v8 = [COSRemoteUIBuddyController alloc];
  v9 = [*(a1 + 40) visiblePage];
  v10 = [(COSRemoteUIBuddyController *)v8 initWithRUIViewController:v9];

  [(COSRemoteUIBuddyController *)v10 setDelegate:*(a1 + 32)];
  v11 = [*(a1 + 32) buddyControllers];
  [v11 addObject:v10];

  v12 = +[NRPairedDeviceRegistry sharedInstance];
  [v12 pairingClientDidEnterPhase:@"PBBuddyControllerActivationLockChallenge"];

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

void sub_100097C70(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t sub_10009809C(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 3;
LABEL_3:
    kdebug_trace();
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 27;
  }

  else
  {
    NSClassFromString(@"VTUISiriOptinViewController");
    if (objc_opt_isKindOfClass())
    {
      v2 = 5;
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 6;
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 7;
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 8;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 14;
        goto LABEL_3;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 9;
        goto LABEL_3;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v2 = 10;
        goto LABEL_3;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 11;
        goto LABEL_3;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 13;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (+[COSUnlockPlaceholderViewController isMandatory])
          {
            v2 = 16;
          }

          else
          {
            v2 = 15;
          }

          goto LABEL_3;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = 4;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v2 = 19;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v2 = 20;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v2 = 21;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v2 = 22;
                }

                else
                {
                  NSClassFromString(@"CHASActivitySetupOnboardingViewController");
                  if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(@"CHASActivitySetupThreeRingsOnboardingViewController"), (objc_opt_isKindOfClass()))
                  {
                    v2 = 23;
                  }

                  else
                  {
                    NSClassFromString(@"CHASActivitySetupMetricsCollectionViewController");
                    if (objc_opt_isKindOfClass())
                    {
                      v2 = 24;
                    }

                    else
                    {
                      NSClassFromString(@"CHASActivitySetupViewController");
                      if (objc_opt_isKindOfClass())
                      {
                        v2 = 25;
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v2 = 28;
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v2 = 26;
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v2 = 29;
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v2 = 30;
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v2 = 31;
                                }

                                else
                                {
                                  NSClassFromString(@"TextSettingsMiniFlowController");
                                  if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(@"TextSettingsViewController"), (objc_opt_isKindOfClass()))
                                  {
                                    v2 = 32;
                                  }

                                  else
                                  {
                                    NSClassFromString(@"AccessibilitySettingsMiniFlowController");
                                    if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(@"AccessibilitySettingsViewController"), (objc_opt_isKindOfClass()))
                                    {
                                      v2 = 33;
                                    }

                                    else
                                    {
                                      NSClassFromString(@"CompanionAppViewSetup");
                                      if (objc_opt_isKindOfClass() & 1) != 0 || (NSClassFromString(@"CompanionAppViewSetupViewController"), (objc_opt_isKindOfClass()))
                                      {
                                        v2 = 34;
                                      }

                                      else
                                      {
                                        v6 = pbb_setupflow_log();
                                        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                                        {
                                          sub_100188F34();
                                        }

                                        v2 = 1;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_6:
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PBBuddyControllerDescription();
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Controller %@", &v7, 0xCu);
  }

  return v2;
}

void sub_100098AB4(id a1)
{
  v1 = [UIApp activeWatch];
  v4[0] = @"obliterate";
  v4[1] = @"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
  v5[0] = &__kCFBooleanTrue;
  v5[1] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  [v3 unpairWithDevice:v1 withOptions:v2 operationHasBegun:&stru_10026A680];
}

void sub_100098B98(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pbb_setupflow_log();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10018900C();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "unpair operation began successfully for unsupported pairing configuration", v5, 2u);
  }
}

void sub_100099188(uint64_t a1, int a2)
{
  v4 = pbb_accountsignin_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Saved combined iTunesStore account (%@) with success: (%{BOOL}d)", &v6, 0x12u);
  }
}

void *sub_100099754(void *result)
{
  if (!*(result[4] + 208))
  {
    v2 = result;
    v3 = objc_alloc_init(COSWristAttributeVisualDetector);
    v4 = v2[4];
    v5 = *(v4 + 208);
    *(v4 + 208) = v3;

    v6 = *(v2[4] + 208);

    return [v6 ingestWarmupBuffer];
  }

  return result;
}

void sub_1000998B0(uint64_t a1)
{
  v2 = pbb_devicemanagement_log();
  v3 = os_signpost_id_generate(v2);

  v4 = pbb_devicemanagement_log();
  v5 = v4;
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "FetchEnrollmentData", "", buf, 2u);
  }

  v6 = +[MCProfileConnection sharedConnection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000999FC;
  v7[3] = &unk_10026A6D0;
  v9[1] = v3;
  objc_copyWeak(v9, (a1 + 40));
  v8 = *(a1 + 32);
  [v6 fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:v7];

  objc_destroyWeak(v9);
}

void sub_1000999FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = pbb_devicemanagement_log();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, v9, "FetchEnrollmentData", "fetched enrollment data", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099B58;
  block[3] = &unk_10026A6A8;
  objc_copyWeak(v16, (a1 + 40));
  v16[1] = *(a1 + 48);
  v13 = v6;
  v14 = v5;
  v15 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(v16);
}

void sub_100099B58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    v3 = pbb_devicemanagement_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001890B8();
    }
  }

  v4 = pbb_devicemanagement_log();
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, v6, "FetchEnrollmentData", "updated enrollment data", buf, 2u);
  }

  v7 = pbb_devicemanagement_log();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "FetchEnrollmentData", "", v10, 2u);
  }

  [WeakRetained setStagedEnrollmentDataForCurrentPairing:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

void sub_10009A198(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = *(a1 + 40);
  v4 = [UIApp activeWatch];
  v5 = [v4 pairingID];
  [v2 updateWatchBuddyStage:v3 forPairingID:v5];
}

uint64_t sub_10009A880()
{
  result = _sl_dlopen();
  qword_1002BD4F8 = result;
  return result;
}

void sub_10009A8F4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_10009ACCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = COSBridgeRootController;
  return objc_msgSendSuper2(&v3, "pushViewController:animated:", v1, 0);
}

id sub_10009AE20(uint64_t a1)
{
  result = [*(a1 + 32) isPresentedOnParentViewController];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setViewControllers:&__NSArray0__struct];
  }

  return result;
}

void sub_10009AFB8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = pbb_accountsignin_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(a1 + 32) + 32);
    *buf = 136315650;
    v31 = "[COSTinkerWaitForSignInResultsController didPushWaitScreen]_block_invoke";
    v32 = 2048;
    v33 = a2;
    v34 = 2048;
    v35 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Got progress update from watch: %ld, Current status: %ld", buf, 0x20u);
  }

  v11 = *(a1 + 32);
  if (*(v11 + 32) != a2)
  {
    switch(a2)
    {
      case 1:
        [v11 popToWaitForCDPCompletionController];
        [*(a1 + 40) addPairingTimeEventToPairingReportPlist:62 withValue:&__kCFBooleanTrue withError:0];
        [*(a1 + 40) checkInWithOpenPairingTimeEvent:64];
        break;
      case 2:
        v13 = pbb_accountsignin_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v31 = "[COSTinkerWaitForSignInResultsController didPushWaitScreen]_block_invoke_2";
          v32 = 2048;
          v33 = 2;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s dropping: %ld", buf, 0x16u);
        }

        break;
      case 3:
        WeakRetained = objc_loadWeakRetained((v11 + 24));
        [WeakRetained buddyControllerDone:*(a1 + 32)];

        [*(a1 + 40) addPairingTimeEventToPairingReportPlist:42 withValue:&__kCFBooleanTrue withError:0];
        break;
      default:
        v14 = pbb_accountsignin_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v31 = "[COSTinkerWaitForSignInResultsController didPushWaitScreen]_block_invoke";
          v32 = 2048;
          v33 = a2;
          v34 = 2112;
          v35 = v7;
          v36 = 2112;
          v37 = v8;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Canceling pairing due to status %ld - Message: %@ error: %@", buf, 0x2Au);
        }

        if (v8)
        {
          v15 = *(a1 + 40);
          v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
          [v15 addPairingTimeEventToPairingReportPlist:65 withValue:v16 withError:0];

          v17 = *(a1 + 40);
          v18 = [v8 domain];
          [v17 addPairingTimeEventStringToPairingReportPlist:66 withValue:v18 withError:0];
        }

        if ((sub_100009A74() & 1) == 0)
        {
          v19 = +[NSBundle mainBundle];
          v20 = [v19 localizedStringForKey:@"CANT_LOGIN_UNKNOWN_ERROR" value:&stru_10026E598 table:@"Localizable"];

          v7 = v20;
        }

        v21 = +[NSBundle mainBundle];
        v22 = [v21 localizedStringForKey:@"CANT_LOGIN_GENERIC_TITLE" value:&stru_10026E598 table:@"Localizable"];
        v23 = [UIAlertController alertControllerWithTitle:v22 message:v7 preferredStyle:1];

        v24 = [UIApp setupController];
        v25 = [v24 navigationController];

        v26 = +[NSBundle mainBundle];
        v27 = [v26 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10009B460;
        v29[3] = &unk_100268580;
        v29[4] = *(a1 + 32);
        v28 = [UIAlertAction actionWithTitle:v27 style:0 handler:v29];
        [v23 addAction:v28];

        [v25 presentViewController:v23 animated:1 completion:0];
        break;
    }
  }
}

id sub_10009B460(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained buddyControllerCancelAnyHold];

  v3 = *(a1 + 32);

  return [COSSatellitePairingHelper popToLoginControllerFromController:v3];
}

void sub_10009C184(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isLocalChange])
  {
    [v2 setLocalChange:0];
  }

  else
  {
    [v2 reloadSpecifiers];
  }
}

id sub_10009C1DC()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1002BD500;
  v8 = qword_1002BD500;
  if (!qword_1002BD500)
  {
    v1 = sub_10009F5A0();
    v6[3] = dlsym(v1, "ADAFDarwinNotificationKeyNano");
    qword_1002BD500 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_100186904();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_10009C618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10009C630()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1002BD518;
  v8 = qword_1002BD518;
  if (!qword_1002BD518)
  {
    v1 = sub_10009F5A0();
    v6[3] = dlsym(v1, "ADAFPreferenceKeyVolumeLimitThreshold");
    qword_1002BD518 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_100186904();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id sub_10009CC04()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1002BD520;
  v8 = qword_1002BD520;
  if (!qword_1002BD520)
  {
    v1 = sub_10009F5A0();
    v6[3] = dlsym(v1, "ADAFPreferenceKeyHAENotificationIsMandatory");
    qword_1002BD520 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_100186904();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id sub_10009CD08()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1002BD528;
  v8 = qword_1002BD528;
  if (!qword_1002BD528)
  {
    v1 = sub_10009F5A0();
    v6[3] = dlsym(v1, "ADAFPreferenceKeyHAENotificationFeatureEnabled");
    qword_1002BD528 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_100186904();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id sub_10009CE0C()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1002BD530;
  v8 = qword_1002BD530;
  if (!qword_1002BD530)
  {
    v1 = sub_10009F5A0();
    v6[3] = dlsym(v1, "ADAFPreferenceKeyVolumeLimitEnabled");
    qword_1002BD530 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_100186904();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id sub_10009D3A0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1002BD538;
  v8 = qword_1002BD538;
  if (!qword_1002BD538)
  {
    v1 = sub_10009F5A0();
    v6[3] = dlsym(v1, "ADAFPreferenceKeyHAEEnableHKWrite");
    qword_1002BD538 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_100186904();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_10009EE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009EE38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v22 = *v26;
      do
      {
        v7 = 0;
        do
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v25 + 1) + 8 * v7);
          v9 = [*(a1 + 32) objectAtIndex:{0, v20}];
          WeakRetained = objc_loadWeakRetained((a1 + 40));
          v11 = [WeakRetained monthFormatter];
          v12 = [v8 endDate];
          v13 = [v11 stringFromDate:v12];
          v14 = [v9 indexOfObject:v13];

          if ([v8 value] == 1)
          {
            v15 = [*(a1 + 32) objectAtIndex:1];
            v16 = [v15 objectAtIndexedSubscript:v14];
            v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 integerValue] + 1);
            v18 = [*(a1 + 32) objectAtIndex:1];
            [v18 setObject:v17 atIndexedSubscript:v14];
          }

          v7 = v7 + 1;
        }

        while (v6 != v7);
        v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    v19 = objc_loadWeakRetained((a1 + 40));
    [v19 updateNotificationCountsForData:*(a1 + 32)];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009F0D4;
    block[3] = &unk_100268430;
    objc_copyWeak(&v24, (a1 + 40));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v24);
    v4 = v20;
  }
}

void sub_10009F0D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void *sub_10009F550(uint64_t a1)
{
  v2 = sub_10009F5A0();
  result = dlsym(v2, "ADAFDarwinNotificationKeyNano");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD500 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10009F5A0()
{
  v3[0] = 0;
  if (!qword_1002BD508)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10009F6A0;
    v3[4] = &unk_100268108;
    v3[5] = v3;
    v4 = off_10026A780;
    v5 = 0;
    qword_1002BD508 = _sl_dlopen();
  }

  v0 = qword_1002BD508;
  v1 = v3[0];
  if (!qword_1002BD508)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_10009F6A0()
{
  result = _sl_dlopen();
  qword_1002BD508 = result;
  return result;
}

Class sub_10009F714(uint64_t a1)
{
  sub_10009F5A0();
  result = objc_getClass("ADASManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD510 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100187BB4();
    return sub_10009F76C(v3);
  }

  return result;
}

void *sub_10009F76C(uint64_t a1)
{
  v2 = sub_10009F5A0();
  result = dlsym(v2, "ADAFPreferenceKeyVolumeLimitThreshold");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD518 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10009F7BC(uint64_t a1)
{
  v2 = sub_10009F5A0();
  result = dlsym(v2, "ADAFPreferenceKeyHAENotificationIsMandatory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD520 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10009F80C(uint64_t a1)
{
  v2 = sub_10009F5A0();
  result = dlsym(v2, "ADAFPreferenceKeyHAENotificationFeatureEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD528 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10009F85C(uint64_t a1)
{
  v2 = sub_10009F5A0();
  result = dlsym(v2, "ADAFPreferenceKeyVolumeLimitEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD530 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10009F8AC(uint64_t a1)
{
  v2 = sub_10009F5A0();
  result = dlsym(v2, "ADAFPreferenceKeyHAEEnableHKWrite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD538 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10009FB0C(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10009FB88;
  v2[3] = &unk_1002693C0;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_10009FB88(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) delegate];
    [v4 buddyControllerReleaseHold:*(a1 + 32)];
  }

  else
  {
    v2 = pbb_setup_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Application install not allowed.", buf, 2u);
    }

    [*(a1 + 32) selectedOptinChoice:0];
    v3 = [*(a1 + 32) delegate];
    [v3 buddyControllerReleaseHoldAndSkip:*(a1 + 32)];
  }
}

void sub_1000A0B10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) view];
  v5 = [v4 window];
  [v5 setUserInteractionEnabled:1];

  v6 = +[PSNavBarSpinnerManager sharedSpinnerManager];
  [v6 stopAnimatingForIdentifier:@"softwareUpdateDeletion"];

  if (v3)
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to purge usage bunde %@ with error: %@", &v14, 0x16u);
    }

    BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();
  }

  else
  {
    sub_10002E500(*(a1 + 48));
    v9 = [*(a1 + 56) bundleUsages];
    [v9 removeObject:*(a1 + 40)];

    v10 = *(a1 + 56);
    v11 = [*(a1 + 32) specifier];
    [v10 removeSpecifier:v11];

    v12 = [*(a1 + 32) navigationController];
    v13 = [v12 popViewControllerAnimated:1];
  }
}

void sub_1000A10D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A1110(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained presentFromController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A11EC;
  v6[3] = &unk_100268FC8;
  v8 = a2;
  objc_copyWeak(&v7, (a1 + 32));
  [v5 dismissViewControllerAnimated:1 completion:v6];

  objc_destroyWeak(&v7);
}

void sub_1000A11EC(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"success";
    }

    else
    {
      v3 = @"failed";
    }

    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Profile device selector completion block called: (%@)", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained completionBlock];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 completionBlock];
    v7[2](v7, *(a1 + 40));
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setDeviceSelectorController:0];
}

int64_t sub_1000A1388(id a1, NRDevice *a2, NRDevice *a3)
{
  v4 = NRDevicePropertyLastActiveDate;
  v5 = a3;
  v6 = [(NRDevice *)a2 valueForProperty:v4];
  v7 = [(NRDevice *)v5 valueForProperty:v4];

  v8 = [v6 compare:v7];
  return v8;
}

void sub_1000A3DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A3E3C(uint64_t a1, void *a2)
{
  v3 = BPSRequiredWatchCapabilitiesKey;
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  v6 = [v4 objectForKey:BPSForbiddenWatchCapabilitiesKey];
  v7 = [v4 objectForKey:BPSRequiredFeatureFlagsKey];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained displayDevice];
  HasAllCapabilitiesForStrings = BPSDeviceHasAllCapabilitiesForStrings();

  return HasAllCapabilitiesForStrings;
}

void sub_1000A3F14(id a1, BOOL a2)
{
  if (!a2)
  {
    v2 = pbb_mobileasset_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10018916C();
    }
  }
}

void sub_1000A3F68(uint64_t a1, int a2)
{
  v4 = pbb_mobileasset_log();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) _bridgeConciseDebugDescription];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pulled Assets For %@!", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1001891A8(a1, v5);
  }
}

void sub_1000A4528(id a1, BOOL a2)
{
  v2 = a2;
  v3 = pbb_setupflow_log();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully took suspend assertion.", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100189240();
  }
}

void sub_1000A5758(uint64_t a1)
{
  if (PBHasSetupDevice() && [*(a1 + 32) radioState])
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"GET_CONNECTED_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable"];
    v4 = +[NSBundle mainBundle];
    v5 = SFLocalizableWAPIStringKeyForKey();
    v6 = [v4 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable"];
    v7 = [UIAlertController alertControllerWithTitle:v3 message:v6 preferredStyle:1];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"GET_CONNECTED_ALERT_CANCEL" value:&stru_10026E598 table:@"Localizable"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000A5AB4;
    v24[3] = &unk_10026A380;
    v25 = *(a1 + 48);
    v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:v24];
    [v7 addAction:v10];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"GET_CONNECTED_ALERT_TURN_ON" value:&stru_10026E598 table:@"Localizable"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000A5AD0;
    v20[3] = &unk_10026A8D8;
    v23 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = *(a1 + 48);
    v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v20];
    [v7 addAction:v13];

    v14 = *(a1 + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000A5C1C;
    v18[3] = &unk_10026A900;
    v19 = v7;
    v15 = v7;
    [v14 presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v18];
  }

  else
  {
    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = *(v16 + 16);

      v17();
    }
  }
}

uint64_t sub_1000A5AB4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_1000A5AD0(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) isNetworkReachable];
    v9[0] = 67109376;
    v9[1] = v3;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "includeWifi: %{BOOL}d isNetworkReachable: %{BOOL}d", v9, 0xEu);
  }

  if (*(a1 + 48) == 1 && ![*(a1 + 32) isNetworkReachable])
  {
    v5 = @"prefs:root=WIFI";
  }

  else
  {
    v5 = @"prefs:root=Bluetooth";
  }

  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = [NSURL URLWithString:v5];
  [v6 openSensitiveURL:v7 withOptions:0];

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1000A5C1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Presenting 'get connected WiFi' alert using: %@", &v5, 0xCu);
  }

  [v3 presentViewController:*(a1 + 32) animated:1 completion:0];
}

void sub_1000A5F60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 transitionCoordinator];
  if (v4)
  {
    objc_initWeak(location, *(a1 + 32));
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A60F8;
    v6[3] = &unk_10026A950;
    objc_copyWeak(&v8, location);
    v7 = *(a1 + 40);
    [v4 animateAlongsideTransition:0 completion:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "returning presenting controller: %@", location, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000A60D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A60F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "after transition, checking again for presenting controller", v4, 2u);
    }

    [WeakRetained presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:*(a1 + 32)];
  }
}

void sub_1000A7114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 64));
  objc_destroyWeak((v34 - 240));
  _Unwind_Resume(a1);
}

void sub_1000A715C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setup and Unpair dismissed. Executing Prox Pairing: %@ (from sourceApplication %@).", &v6, 0x16u);
    }

    [WeakRetained application:*(a1 + 48) openURL:*(a1 + 32) options:*(a1 + 56)];
  }
}

void sub_1000A7240(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setup and Unpair dismissed. Executing: %@ (from sourceApplication %@).", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained application:*(a1 + 48) openURL:*(a1 + 32) options:*(a1 + 56)];
}

void sub_1000A7628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A7644(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "presenting controller for greenfield :  %@", &v26, 0xCu);
    }

    if ([v3 isMemberOfClass:objc_opt_class()])
    {
      v6 = [v3 topViewController];
      v7 = [v6 isMemberOfClass:objc_opt_class()] ^ 1;
    }

    else
    {
      v7 = 1;
    }

    v9 = [WeakRetained rootViewController];
    v10 = [v9 viewControllers];
    v11 = [WeakRetained myWatchViewController];
    v12 = [v10 containsObject:v11];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v3 visibleViewController];
    }

    else
    {
      v13 = v3;
    }

    v14 = v13;
    if (+[NTKGreenfieldUtilities shouldAutoDismissViewControllerForAddFaceFlow:](NTKGreenfieldUtilities, "shouldAutoDismissViewControllerForAddFaceFlow:", v13) && ([v14 presentingViewController], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = [v14 presentingViewController];
      [v16 dismissViewControllerAnimated:0 completion:0];

      v8 = [v14 presentingViewController];

      v17 = pbb_bridge_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412546;
        v27 = v14;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "dismissed exisintg greenfield controller: %@ updating presenting VC :  %@", &v26, 0x16u);
      }
    }

    else
    {
      v8 = v3;
    }

    v18 = v12 & v7;
    v19 = [*(a1 + 32) absoluteString];
    v20 = [v19 componentsSeparatedByString:@"="];
    v21 = [v20 lastObject];

    v22 = [NSURL URLWithString:v21];
    if ([WeakRetained _isProductKitUrl:v22])
    {
      v23 = [[NTKGreenfieldB640ViewController alloc] initWithUrl:*(a1 + 32) sourceApplicationBundleIdentifier:*(a1 + 40)];
      [v23 setDelegate:WeakRetained];
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v23 = [[NTKGreenfieldViewController alloc] initWithUrl:*(a1 + 32) sourceApplicationBundleIdentifier:*(a1 + 40)];
      if (!v18)
      {
LABEL_22:
        v25 = [[COSBuddyNavigationController alloc] initWithRootViewController:v23];
        [(COSBuddyNavigationController *)v25 setModalPresentationStyle:1];
        [v8 presentViewController:v25 animated:1 completion:0];

        goto LABEL_23;
      }
    }

    v24 = [WeakRetained myWatchViewController];
    [WeakRetained setSelectedTabBarViewController:v24];

    [WeakRetained popToTopLevelSettingsAnimated:0];
    [WeakRetained _scrollToTopOfSettingsAnimated:0];
    goto LABEL_22;
  }

  v8 = v3;
LABEL_23:
}

void sub_1000A80A8(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1000A80F4, @"com.apple.Bridge.badgeUpdate", 0, 0);
}

void sub_1000A8104(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_bridge_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138543362;
      v9 = v3;
      v6 = "Failed to set badge with error: %{public}@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    }
  }

  else if (v5)
  {
    v7 = *(a1 + 32);
    v8 = 134217984;
    v9 = v7;
    v6 = "Did set badge count to %lu";
    goto LABEL_6;
  }
}

id sub_1000A863C(uint64_t a1)
{
  [*(a1 + 32) refreshTabBar];
  v2 = +[UIApplication sharedApplication];
  [v2 setIdleTimerDisabled:0];

  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v10[0] = 67109120;
    v10[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dismissSetupFlowComplete; complete: %d;", v10, 8u);
  }

  *(*(a1 + 32) + 66) = 0;
  [*(*(a1 + 32) + 336) buddyControllerCancelAnyHold];
  v5 = [*(*(a1 + 32) + 104) rootListController];
  [v5 reloadSpecifiers];

  v6 = +[PSListController appearance];
  v7 = [v6 usesDarkTheme];

  if ((v7 & 1) == 0)
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error: PSListController is using the wrong theme, resetting appearance!", v10, 2u);
    }

    [*(a1 + 32) reloadAppearance:0];
  }

  return [*(a1 + 32) dismissSetupFlowAnimated:*(a1 + 41) refreshTabs:0 withCompletionHandler:0];
}

void sub_1000A8BAC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setup Background Assertion Expired! - Unpairing result: (%@)", &v4, 0xCu);
  }
}

void sub_1000A8C58(uint64_t a1)
{
  if ((*(*(a1 + 32) + 65) & 1) == 0)
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"GENERIC_PAIRING_FAILURE_ALERT_TITLE" value:&stru_10026E598 table:@"Localizable"];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"BACKGROUND_EXPIRY_PAIRING_FAILURE_ALERT_BODY" value:&stru_10026E598 table:@"Localizable"];
    v6 = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"GENERIC_PAIRING_FAILURE_ALERT_START_OVER" value:&stru_10026E598 table:@"Localizable"];
    v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:0];
    [v6 addAction:v9];

    v10 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000A8E2C;
    v12[3] = &unk_10026A900;
    v13 = v6;
    v11 = v6;
    [v10 presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v12];
  }
}

void sub_1000A9528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A955C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained setupController];
    [v3 invalidateState];

    [v2 setSetupController:0];
    [v2 setResetSetupInProgress:0];
    v4 = [v2 settingsListController];
    [v4 notifyNTKAboutActiveWatch];

    if (![v2 pendingUnpairUIPresentation])
    {
      goto LABEL_9;
    }

    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[COSPreferencesAppController resetSetupFlowAnimated:forEvent:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: handling unpair after SetupController cleanup", &v9, 0xCu);
    }

    [v2 setPendingUnpairUIPresentation:0];
    v6 = +[NRPairedDeviceRegistry sharedInstance];
    v7 = [v6 status];

    if (v7 == 5)
    {
      v8 = pbb_setupflow_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[COSPreferencesAppController resetSetupFlowAnimated:forEvent:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: presenting unpair after SetupController cleanup", &v9, 0xCu);
      }

      [v2 presentUnpairingViewControllerAnimated:1];
    }

    else
    {
LABEL_9:
      [v2 _schedulePendingAppDelegateIfPresent];
    }
  }
}

void sub_1000A9B70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1000A9BC4(id a1, BOOL a2)
{
  v2 = a2;
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithBool:v2];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Brute Force Network Reachability: %@", &v5, 0xCu);
  }
}

void sub_1000A9C84(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsBeamBridgeReachable:a2];

  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithBool:a2];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BeamBridge Network Reachability: %@", &v6, 0xCu);
  }
}

void sub_1000A9D5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained setupController];
    v5 = [v4 navigationController];

    [v5 setModalPresentationStyle:0];
    [v5 _setBuiltinTransitionStyle:1];
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Presenting Setup controller using %@", &v9, 0xCu);
    }

    [*(a1 + 32) presentViewController:v5 animated:*(a1 + 48) completion:0];
    v8 = [v3 setupController];
    [v8 run];
  }
}

id sub_1000A9E88(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  if (v2)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) presentedViewController];
      v7 = 136315394;
      v8 = "[COSPreferencesAppController presentSetupFlowWithMode:animated:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Dismissing: %@", &v7, 0x16u);
    }

    return [*(a1 + 32) dismissViewControllerAnimated:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }
}

void sub_1000AA234(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1000AA250(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completion: dismissSetup", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000AA574;
    v18 = &unk_100268FF0;
    objc_copyWeak(&v20, (a1 + 56));
    v19 = *(a1 + 48);
    v4 = objc_retainBlock(&v15);
    v5 = [*(a1 + 32) presentingViewController];
    v6 = [WeakRetained setupController];
    v7 = [v6 setupCompletedSuccessfully];

    if (v7 && [WeakRetained _devicePickerBeingPresented])
    {
      v8 = [WeakRetained rootViewController];

      v9 = pbb_setupflow_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "updating presentingController to root for setup dismissal: %@", buf, 0xCu);
      }

      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = v5;
      if (v5)
      {
LABEL_9:
        v10 = pbb_setupflow_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setupNavigationController being dismissed by: %@.", buf, 0xCu);
        }

        [v8 dismissViewControllerAnimated:*(a1 + 64) completion:v4];
LABEL_16:
        v12 = +[UIApplication sharedApplication];
        v13 = [v12 bridgeController];
        [v13 endSetupTransaction];

        v14 = +[COSBackupManager sharedBackupManager];
        [v14 reset];

        [*(a1 + 40) startScanningForNearbyDevices];
        objc_destroyWeak(&v20);
        goto LABEL_17;
      }
    }

    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setupNavigationController: issuing dismissControllerCompletion() inline", buf, 2u);
    }

    (v4[2])(v4);
    goto LABEL_16;
  }

LABEL_17:
}

void sub_1000AA574(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Completion: dismissControllerCompletion.", &v13, 2u);
    }

    v4 = [WeakRetained setupController];
    [v4 invalidateState];

    [WeakRetained setSetupController:0];
    v5 = [WeakRetained settingsListController];
    [v5 notifyNTKAboutActiveWatch];

    v6 = +[BPSBridgeAppContext shared];
    [v6 setInWatchSetupFlow:0];

    v7 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
    [WeakRetained updateActiveWatch:v7];

    [WeakRetained _refreshShortCuts];
    [WeakRetained setDismissSetupInProgress:0];
    if (![WeakRetained pendingUnpairUIPresentation])
    {
      goto LABEL_11;
    }

    v8 = pbb_setupflow_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[COSPreferencesAppController dismissSetupFlowAnimated:refreshTabs:withCompletionHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: handling unpair after dismissSetup cleanup", &v13, 0xCu);
    }

    [WeakRetained setPendingUnpairUIPresentation:0];
    v9 = +[NRPairedDeviceRegistry sharedInstance];
    v10 = [v9 status];

    if (v10 == 5)
    {
      v11 = pbb_setupflow_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[COSPreferencesAppController dismissSetupFlowAnimated:refreshTabs:withCompletionHandler:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: presenting unpair after dismissSetup cleanup", &v13, 0xCu);
      }

      [WeakRetained presentUnpairingViewControllerAnimated:1];
    }

    else
    {
LABEL_11:
      [WeakRetained _schedulePendingAppDelegateIfPresent];
    }

    if (*(a1 + 32))
    {
      v12 = pbb_setupflow_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Completion: completion", &v13, 2u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

uint64_t sub_1000AA818(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Issuing dismissSetup() inline", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000AAA88(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[COSPreferencesAppController unpairOrResetBuddyForEvent:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - Unpairing result: (%@)", &v4, 0x16u);
  }
}

id sub_1000AB1EC(uint64_t a1)
{
  [*(a1 + 32) unpairOrResetBuddyForEvent:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 dismissSetupFlowComplete:0 animated:1];
}

id sub_1000ABA70(uint64_t a1)
{
  [*(a1 + 32) resetSetupFlowAnimated:0 forEvent:39];
  v2 = *(a1 + 32);

  return [v2 dismissSetupFlowComplete:0 animated:1];
}

id sub_1000ABCC8(uint64_t a1)
{
  [*(a1 + 32) resetSetupFlowAnimated:1 forEvent:40];
  v2 = *(a1 + 32);

  return [v2 dismissSetupFlowComplete:0 animated:1];
}

void sub_1000AC374(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v8 specifier];
    v7 = [v6 identifier];

    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
  }
}

void sub_1000ACCD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 56));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

void sub_1000ACD0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pbb_bridge_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "[COSPreferencesAppController presentDevicePickerControllerWith:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s: scheduling pending URL action after device picker presentation", &v3, 0xCu);
    }

    [WeakRetained _schedulePendingAppDelegateIfPresent];
  }
}

void sub_1000ACDD0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [[UINavigationController alloc] initWithRootViewController:*(a1 + 32)];
    [v5 setModalInPresentation:1];
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = "[COSPreferencesAppController presentDevicePickerControllerWith:]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: presenting :%@ using: %@", &v7, 0x20u);
    }

    [v3 presentViewController:v5 animated:1 completion:*(a1 + 40)];
    [WeakRetained setDevicePickerNavigationController:v5];
    [WeakRetained setDevicePickerPresented:1];
  }
}

void sub_1000ACF10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained rootViewController];
    if ([v3 _devicePickerBeingPresented])
    {
      v5 = pbb_bridge_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v29 = "[COSPreferencesAppController presentDevicePickerControllerWith:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Already root controller is presenting device picker nav", buf, 0xCu);
      }

      v6 = [v3 devicePickerNavigationController];
      v7 = [v6 viewControllers];
      v8 = [v7 count];

      if (v8)
      {
        v9 = [v3 devicePickerNavigationController];
        v10 = [v9 viewControllers];
        v11 = [v10 objectAtIndexedSubscript:0];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [v12 specifierDataSource];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [*(a1 + 32) tinkerOnly];
            v15 = [v13 tinkerOnly];
            v16 = pbb_bridge_log();
            v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
            if (v14 == v15)
            {
              if (v17)
              {
                *buf = 136315394;
                v29 = "[COSPreferencesAppController presentDevicePickerControllerWith:]_block_invoke";
                v30 = 2112;
                v31 = v12;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: existing device list VC: %@ matches requested configutation. Skipping", buf, 0x16u);
              }

              [v12 setLaunchedByNanoRegistry:{objc_msgSend(v3, "launchedByNanoRegistry")}];
              [v3 setDevicePickerPresented:1];
              v21 = [v3 devicePickerNavigationController];
              v22 = [v21 presentedViewController];

              if (v22)
              {
                v23 = pbb_bridge_log();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v29 = "[COSPreferencesAppController presentDevicePickerControllerWith:]_block_invoke";
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: Dismissing presented controllers from device picker", buf, 0xCu);
                }

                v24 = [v3 devicePickerNavigationController];
                [v24 dismissViewControllerAnimated:1 completion:*(a1 + 40)];
              }

              else
              {
                (*(*(a1 + 40) + 16))();
              }

              goto LABEL_19;
            }

            if (v17)
            {
              *buf = 136315138;
              v29 = "[COSPreferencesAppController presentDevicePickerControllerWith:]_block_invoke";
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Existing device picker VC configuraiton different from requested.", buf, 0xCu);
            }
          }
        }
      }
    }

    v18 = [v4 presentedViewController];

    if (v18)
    {
      v19 = pbb_bridge_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v4 presentedViewController];
        *buf = 136315394;
        v29 = "[COSPreferencesAppController presentDevicePickerControllerWith:]_block_invoke";
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: Dismissing controller stack %@ on top of root VC.", buf, 0x16u);
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000AD394;
      v25[3] = &unk_100268F10;
      v27 = *(a1 + 48);
      v26 = v4;
      [v26 dismissViewControllerAnimated:1 completion:v25];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

LABEL_19:
  }
}

void sub_1000AD5E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained settingsController];
    [v4 dismissViewControllerAnimated:0 completion:0];

    v5 = [v3 settingsController];
    v6 = [v5 rootListController];

    if ([*(a1 + 32) hasPrefix:@"ROOT"])
    {
      v7 = [v3 settingsController];
      [v7 popRecursivelyToRootController];

      v8 = [v6 navigationController];
      v9 = [v8 topViewController];

      v10 = *(a1 + 40);
      if (v9 == v6)
      {
        [v6 _scrollToSpecifierWithID:v10 animated:0];
      }

      else
      {
        [v6 setDesiredVerticalContentOffsetItemNamed:v10];
      }
    }

    else if (([*(a1 + 32) isEqualToString:@"ActiveWatch"] & 1) != 0 || (objc_msgSend(v3, "isUpdatingInRevLock") & 1) != 0 || objc_msgSend(v3, "deviceIsBeingMigrated"))
    {
      [*(a1 + 48) presentDevicePickerControllerWith:{objc_msgSend(*(a1 + 40), "isEqualToString:", @"TinkerWatchesOnly"}];
    }

    v11 = [v6 specifierForID:*(a1 + 32)];
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 56) description];
      v14 = *(a1 + 32);
      *buf = 136315906;
      *&buf[4] = "[COSPreferencesAppController navigateToRootObjectWithURLDictionary:animated:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v11;
      *&buf[22] = 2112;
      v74 = v13;
      LOWORD(v75) = 2112;
      *(&v75 + 2) = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: specifier: %@ dict: %@ rootObject: %@", buf, 0x2Au);
    }

    if (!v11)
    {
      v11 = [v6 specifierForBundle:*(a1 + 32)];
      v15 = pbb_bridge_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[COSPreferencesAppController navigateToRootObjectWithURLDictionary:animated:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: specifier from bundle: %@", buf, 0x16u);
      }
    }

    v64 = [v6 indexPathForIndex:{objc_msgSend(v6, "indexOfSpecifier:", v11)}];
    v16 = pbb_bridge_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[COSPreferencesAppController navigateToRootObjectWithURLDictionary:animated:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v64;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: indexPath: %@", buf, 0x16u);
    }

    if (!v11 || (v17 = PSEnabledKey, [v11 propertyForKey:PSEnabledKey], (v18 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v11, "propertyForKey:", v17), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "BOOLValue"), v19, v18, !v20))
    {
      if ([v6 shouldDeferPushForSpecifierID:*(a1 + 32) urlDictionary:*(a1 + 56)])
      {
        v29 = pbb_bridge_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "preparing for deferred url handling", buf, 2u);
        }

        [v6 prepareHandlingURLForSpecifierID:*(a1 + 32) resourceDictionary:*(a1 + 56) animatePush:0 withCompletion:&stru_10026AC78];
      }

      goto LABEL_56;
    }

    v21 = [*(a1 + 56) objectForKeyedSubscript:@"path"];
    v62 = [v21 pathComponents];

    v63 = [*(a1 + 48) currentSpecifierIDPath];
    if ([v63 count] >= 2)
    {
      v22 = [v63 subarrayWithRange:{1, objc_msgSend(v63, "count") - 1}];

      v63 = v22;
    }

    v61 = +[NSMutableArray array];
    v60 = [NSMutableArray arrayWithArray:v62];
    v23 = [v6 categoryController];
    if (objc_opt_respondsToSelector())
    {
      v24 = [v6 categoryController];
      v25 = [v24 specifier];
      v26 = v25 == v11;

      if (v26)
      {
        v27 = [v6 categoryController];
        v28 = [v11 identifier];
        [v61 addObject:v28];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v74 = 0;
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_1000AE12C;
        v68[3] = &unk_10026AC30;
        v69 = v63;
        v70 = v61;
        v71 = v60;
        v72 = buf;
        [v62 enumerateObjectsUsingBlock:v68];

        _Block_object_dispose(buf, 8);
        goto LABEL_34;
      }
    }

    else
    {
    }

    v30 = [v3 settingsController];
    v31 = [v30 rootListController];
    v32 = [v31 wantsCustomControllerForRootSpecifierID:*(a1 + 32)];

    if (v32)
    {
      v33 = [v3 settingsController];
      v34 = [v33 rootListController];
      v27 = [v34 customControllerForRootSpecifierID:*(a1 + 32)];
    }

    else
    {
      v27 = [v6 selectSpecifier:v11];
    }

LABEL_34:
    v35 = [v6 shouldDeferPushForSpecifierID:*(a1 + 32)];
    v36 = pbb_bridge_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[COSPreferencesAppController navigateToRootObjectWithURLDictionary:animated:]_block_invoke_2";
      *&buf[12] = 1024;
      *&buf[14] = v35;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s: deferPush: %{BOOL}d", buf, 0x12u);
    }

    v37 = [v61 count];
    v38 = v37;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v74 = sub_100008C1C;
    *&v75 = sub_100009D00;
    *(&v75 + 1) = 0;
    if ((v35 & 1) == 0)
    {
      if (v37 <= 1)
      {
        v47 = [*(*(a1 + 48) + 104) popToRootViewControllerAnimated:0];
      }

      else
      {
        v39 = [v61 lastObject];
        v40 = [*(*(a1 + 48) + 104) viewControllers];
        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_1000AE230;
        v65[3] = &unk_10026AC58;
        v59 = v39;
        v66 = v59;
        v67 = buf;
        [v40 enumerateObjectsWithOptions:2 usingBlock:v65];

        v41 = *(*&buf[8] + 40);
        v42 = [*(*(a1 + 48) + 104) topViewController];
        LOBYTE(v41) = v41 == v42;

        if ((v41 & 1) == 0)
        {
          v43 = [v60 count] == 0;
          v44 = [*(*(a1 + 48) + 104) popToViewController:*(*&buf[8] + 40) animated:v43];
        }

        v45 = *(*&buf[8] + 40);

        v46 = [*(*&buf[8] + 40) specifier];

        v27 = v45;
        v11 = v46;
      }
    }

    [v11 setProperty:*(a1 + 56) forKey:@"URLDictionary"];
    v48 = [v6 view];
    v49 = [v6 table];
    [v49 selectRowAtIndexPath:v64 animated:0 scrollPosition:0];

    v50 = [NSNumber numberWithBool:*(a1 + 80)];
    [*(a1 + 56) setObject:v50 forKeyedSubscript:@"animate"];

    if (v35)
    {
      v51 = [v6 table];
      [v51 selectRowAtIndexPath:v64 animated:0 scrollPosition:0];

      [*(a1 + 48) popToRootOfSettingsSelectGeneral:0];
      v52 = [v6 table];
      [v6 tableView:v52 didSelectRowAtIndexPath:v64];
    }

    else
    {
      if (v38 < 2)
      {
        if (v27)
        {
          [v27 setParentController:v6];
          [v27 setRootController:*(*(a1 + 48) + 104)];
          [v27 setSpecifier:v11];
          [*(a1 + 48) _setOffsetForController:v27 fromObjectPair:*(a1 + 64)];
          [*(a1 + 48) _performURLHandlingForRootListController:v6 controller:v27 dictionary:*(a1 + 56) items:v62 controllerNeedsPush:1];
        }

        goto LABEL_52;
      }

      if ([v60 count])
      {
        v52 = [*(a1 + 56) mutableCopy];
        v53 = [NSString pathWithComponents:v60];
        [v52 setObject:v53 forKeyedSubscript:@"path"];

        v54 = [v60 firstObject];
        v55 = SFObjectAndOffsetForURLPair();

        [*(a1 + 48) _setOffsetForController:v27 fromObjectPair:v55];
        [*(a1 + 48) _performURLHandlingForRootListController:v6 controller:*(*&buf[8] + 40) dictionary:v52 items:v60 controllerNeedsPush:0];
      }

      else
      {
        v56 = [v62 lastObject];
        v52 = SFObjectAndOffsetForURLPair();

        if (v52)
        {
          [*(a1 + 48) _setOffsetForController:*(*&buf[8] + 40) fromObjectPair:v52];
        }
      }
    }

LABEL_52:
    if ([v27 isMemberOfClass:objc_opt_class()])
    {
      v57 = [v62 firstObject];
      v58 = [v57 isEqualToString:@"ActiveWatchSpecialCase"];

      if (v58)
      {
        [v27 pushActiveDeviceDetails];
      }
    }

    _Block_object_dispose(buf, 8);

LABEL_56:
  }
}

void sub_1000AE12C(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v7 = SFObjectAndOffsetForURLPair();
  v15 = [v7 objectForKeyedSubscript:@"object"];

  v8 = v15;
  if (v15 && (v9 = [*(a1 + 32) count] > a3, v8 = v15, v9))
  {
    v10 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v11 = [v15 isEqualToString:v10];

    if (v11)
    {
      [*(a1 + 40) addObject:v15];
      v12 = *(a1 + 48);
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 24);
      *(v13 + 24) = v14 + 1;
      [v12 removeObjectAtIndex:a3 - v14];
    }

    else
    {
      *a4 = 1;
    }

    v8 = v15;
  }

  else
  {
    *a4 = 1;
  }
}

void sub_1000AE230(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [v11 conformsToProtocol:&OBJC_PROTOCOL___PSController];
  v8 = v11;
  if (v7)
  {
    v9 = [v11 specifier];
    v10 = [v9 identifier];

    if (v10 && [v10 isEqualToString:*(a1 + 32)])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }

    v8 = v11;
  }
}

void sub_1000AE2F4(id a1)
{
  v1 = pbb_bridge_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "completed handling deferred url", v2, 2u);
  }
}

id sub_1000AE540(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForProperty:NRDevicePropertyCSN];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 valueForProperty:NRDevicePropertyIsAltAccount];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000AE864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AE88C(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    [v5 processURL:v4 animated:0 fromSearch:0];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NOT processingURL!", v7, 2u);
    }
  }
}

void sub_1000AE928(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained profileInstallHelper];

    if (!v6)
    {
      v7 = objc_alloc_init(COSProfileInstallHelper);
      [v5 setProfileInstallHelper:v7];
    }

    v8 = [v5 profileInstallHelper];
    [v8 setPresentFromController:v3];

    v5[9] = 1;
    v9 = [v5 profileInstallHelper];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000AEA84;
    v10[3] = &unk_100268DE0;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = *(a1 + 32);
    [v9 selectDeviceIfNecessaryWithCompletionBlock:v10];

    objc_destroyWeak(&v12);
  }
}

void sub_1000AEA84(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[9] = 0;
    if (!a2)
    {
LABEL_18:
      (*(*(a1 + 32) + 16))();
      goto LABEL_19;
    }

    v6 = [WeakRetained profileInstallHelper];
    v7 = [v6 presentFromController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = [v5 profileInstallHelper];
    v10 = [v9 presentFromController];
    v11 = v10;
    if (isKindOfClass)
    {
      v12 = [v10 topViewController];
    }

    else
    {
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      v9 = [v5 profileInstallHelper];
      v14 = [v9 presentFromController];
      v11 = v14;
      if ((v13 & 1) == 0)
      {
LABEL_8:

        if ([v11 isMemberOfClass:objc_opt_class()])
        {
          v16 = [v11 currentBackButtonBehavior];
          v17 = pbb_bridge_log();
          v18 = v17;
          if (v16)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v20 = 134217984;
              v21 = [v11 currentBackButtonBehavior];
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "COSPairedDeviceListViewController can not be dismissed : %lu", &v20, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v20) = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Found a list view and it's able to be dismissed, dismissing", &v20, 2u);
            }

            v18 = [v5 rootViewController];
            v19 = [v18 presentedViewController];
            [v19 dismissViewControllerAnimated:1 completion:0];
          }
        }

        goto LABEL_18;
      }

      v12 = [v14 selectedViewController];
    }

    v15 = v12;

    v11 = v15;
    goto LABEL_8;
  }

LABEL_19:
}

void sub_1000AECF4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained updateController];

  if (!v4)
  {
    v5 = objc_opt_new();
    [WeakRetained setUpdateController:v5];
  }

  v6 = [WeakRetained updateController];
  v7 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  [v6 presentModalForDevice:v7 userForcedUpdate:0 withController:v3 unpairOnExit:0 launchedForTerms:1 animated:1 completion:0];
}

void sub_1000AF0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AF0C8(uint64_t a1)
{
  if (*(*(a1 + 32) + 84) == 1)
  {
    [*(a1 + 40) setValue:@"ActiveWatch" forKey:@"root"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained navigateToRootObjectWithURLDictionary:*(a1 + 40) animated:*(a1 + 56)];
}

void sub_1000AFA28(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popToRootViewControllerAnimated:0];
}

void sub_1000AFDE4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v7 popToRootViewControllerAnimated:*(a1 + 32)];
    *a4 = 1;
  }
}

void sub_1000AFF3C(void *a1, uint64_t a2, int a3, intptr_t a4)
{
  v6 = a1;
  v7 = dword_1002BD548;
  v9 = v6;
  if (!dword_1002BD548)
  {
    v7 = [v6 rootDomainConnect];
    v6 = v9;
    dword_1002BD548 = v7;
  }

  if (a3 != -536870288)
  {
    if (a3 == -536870144)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 postNotificationName:@"PreferencesSystemDidWake" object:0 userInfo:0];

      goto LABEL_8;
    }

    if (a3 != -536870272)
    {
      goto LABEL_9;
    }
  }

  IOAllowPowerChange(v7, a4);
LABEL_8:
  v6 = v9;
LABEL_9:
}

id sub_1000B0A90(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Presented 'transport became unreachable' alert- user chose 'try again'", v4, 2u);
  }

  return [*(*(a1 + 32) + 344) resetTransportReachabilityTimer];
}

id sub_1000B0B10(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Presented 'transport became unreachable' alert- user chose 'reset pairing'", v4, 2u);
  }

  return [*(a1 + 32) unpairOrResetBuddyForEvent:46];
}

void sub_1000B105C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = +[UIApplication sharedApplication];
    [v4 setNetworkActivityIndicatorVisible:1];

    v1 = *(a1 + 32);
    v2 = *(v1 + 16);
  }

  *(v1 + 16) = v2 + 1;
}

void sub_1000B113C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (v4 < 2)
  {
    if (v4 == 1)
    {
      block[7] = v1;
      block[8] = v2;
      v6 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B1200;
      block[3] = &unk_1002682F0;
      block[4] = *(a1 + 32);
      dispatch_after(v6, &_dispatch_main_q, block);
    }
  }

  else
  {
    *(v3 + 16) = v4 - 1;
  }
}

void sub_1000B1200(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3 < 2)
  {
    if (v3 == 1)
    {
      *(v2 + 16) = 0;
      v4 = +[UIApplication sharedApplication];
      [v4 setNetworkActivityIndicatorVisible:0];
    }
  }

  else
  {
    *(v2 + 16) = v3 - 1;
  }
}

void sub_1000B1634(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1000B1658(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained unpairingVC];
    v6 = *(a1 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B1754;
    v7[3] = &unk_100268458;
    objc_copyWeak(&v9, (a1 + 40));
    v8 = *(a1 + 32);
    [v4 presentViewController:v5 animated:v6 completion:v7];

    objc_destroyWeak(&v9);
  }
}

void sub_1000B1754(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Presented Unpairing UI using: %@", buf, 0xCu);
    }

    if ([WeakRetained dismissUnpairUIOnPresentation])
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000B18A8;
      v5[3] = &unk_100268430;
      objc_copyWeak(&v6, (a1 + 40));
      [WeakRetained dismissUnpairingViewControllerAnimated:1 withCompletion:v5];
      objc_destroyWeak(&v6);
    }
  }
}

void sub_1000B18A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pbb_bridge_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dismissed Unpairing UI", v3, 2u);
    }

    [WeakRetained setDismissUnpairUIOnPresentation:0];
  }
}

id sub_1000B1930(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  if (v2)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) presentedViewController];
      v7 = 136315394;
      v8 = "[COSPreferencesAppController presentUnpairingViewControllerAnimated:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: Dismissing: %@", &v7, 0x16u);
    }

    return [*(a1 + 32) dismissViewControllerAnimated:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }
}

void sub_1000B1DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B1E18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _schedulePendingAppDelegateIfPresent];
    v3 = v5;
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
      v3 = v5;
    }
  }
}

void sub_1000B21A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B21D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Completed dismissing Unpairing UI", v4, 2u);
    }

    [WeakRetained _performWorkAfterUnpairingVCDismissalWithCompletionBlock:*(a1 + 32)];
  }
}

uint64_t sub_1000B2A84(uint64_t a1, int a2)
{
  if (!a2)
  {
    goto LABEL_26;
  }

  if (*(a1 + 56) == 1)
  {
    [UIApp tappedStartForMode:1 withAnimation:*(a1 + 57)];
    goto LABEL_26;
  }

  v3 = (a1 + 32);
  v4 = [*(a1 + 32) code];
  if (v4 <= 3)
  {
    v5 = v4;
    v6 = [*v3 domain];
    v7 = [v6 isEqualToString:@"com.apple.Bridge-QuickSwitchPairing"];

    if (v7)
    {
      v8 = off_10026AF28[v5];
      v9 = BPSRemoteUISetupStyle_ptr;
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:v8 value:&stru_10026E598 table:@"Pairing"];

      if (v5 > 1)
      {
        v12 = +[NSBundle mainBundle];
        v13 = v12;
        if (v5 == 2)
        {
          v14 = @"FROZEN_FOR_RETAIL_DEMO";
        }

        else
        {
          v14 = @"MAX_PAIRING_FOR_RETAIL_DEMO";
        }
      }

      else
      {
        if (v5)
        {
          v13 = +[NSBundle mainBundle];
          v34 = [v13 localizedStringForKey:@"MAX_WATCH_MESSAGE_TINKER" value:&stru_10026E598 table:@"Localizable-tinker"];
          v35 = +[NRPairedDeviceRegistry sharedInstance];
          v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v35 maxPairedDeviceCount]);
          v17 = [NSNumberFormatter localizedStringFromNumber:v16 numberStyle:0];
          v36 = v11;
          v18 = +[NRPairedDeviceRegistry sharedInstance];
          v19 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 maxTinkerPairedDeviceCount]);
          v20 = [NSNumberFormatter localizedStringFromNumber:v19 numberStyle:0];
          v21 = [NSString stringWithFormat:v34, v17, v20];

          v11 = v36;
          v9 = BPSRemoteUISetupStyle_ptr;

          goto LABEL_17;
        }

        v12 = +[NSBundle mainBundle];
        v13 = v12;
        v14 = @"INCOMPATIBLE_WATCH_MESSAGE";
      }

      v21 = [v12 localizedStringForKey:v14 value:&stru_10026E598 table:@"Pairing"];
LABEL_17:

      if (v11 && v21)
      {
        v22 = [UIAlertController alertControllerWithTitle:v11 message:v21 preferredStyle:1];
        v23 = [v9[501] mainBundle];
        v24 = v23;
        if (v5)
        {
          v25 = [v23 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
          v26 = [UIAlertAction actionWithTitle:v25 style:1 handler:&stru_10026ADE8];
          [v22 addAction:v26];
        }

        else
        {
          v27 = [v23 localizedStringForKey:@"INCOMPATIBLE_WATCH_ACTION_UPDATE_NOW" value:&stru_10026E598 table:@"Pairing"];
          v28 = [UIAlertAction actionWithTitle:v27 style:0 handler:&stru_10026ADA8];

          [v22 addAction:v28];
          [v22 setPreferredAction:v28];
          v25 = [v9[501] mainBundle];
          v26 = [v25 localizedStringForKey:@"INCOMPATIBLE_WATCH_ACTION_UPDATE_LATER" value:&stru_10026E598 table:@"Pairing"];
          v29 = [UIAlertAction actionWithTitle:v26 style:1 handler:&stru_10026ADC8];
          [v22 addAction:v29];

          v24 = v28;
        }

        v30 = pbb_setupflow_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Presenting new pairing flow alert", buf, 2u);
        }

        v31 = *(a1 + 40);
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_1000B30DC;
        v37[3] = &unk_10026A900;
        v38 = v22;
        v32 = v22;
        [v31 presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v37];
      }

      goto LABEL_26;
    }
  }

  v15 = pbb_setupflow_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1001895C4();
  }

LABEL_26:
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000B2FA0(id a1, UIAlertAction *a2)
{
  v2 = UIApp;
  v3 = [NSURL URLWithString:@"root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK"];
  [v2 processURL:v3];
}

void sub_1000B300C(id a1, UIAlertAction *a2)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dismissed 'Update Paired Watch First Before Can Pair Additional' Alert", v3, 2u);
  }
}

void sub_1000B3074(id a1, UIAlertAction *a2)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dismissed 'Max Device' Alert", v3, 2u);
  }
}

void sub_1000B31C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B31DC(id a1, BOOL a2)
{
  v2 = a2;
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithBool:v2];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "playSoundOnCompanionWithCompletion %@", &v5, 0xCu);
  }
}

void sub_1000B34EC(uint64_t a1)
{
  v32[0] = NSForegroundColorAttributeName;
  v2 = +[UIColor whiteColor];
  v33[0] = v2;
  v32[1] = NSFontAttributeName;
  v3 = [UIFont monospacedSystemFontOfSize:11.0 weight:UIFontWeightRegular];
  v33[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

  [*(a1 + 32) sizeWithAttributes:v4];
  v6 = v5;
  v8 = v7;
  y = CGPointZero.y;
  v10 = objc_opt_new();
  v34.origin.x = CGPointZero.x;
  v34.origin.y = y;
  v34.size.width = v6;
  v34.size.height = v8;
  UIGraphicsBeginPDFContextToData(v10, v34, 0);
  v35.origin.x = CGPointZero.x;
  v35.origin.y = y;
  v35.size.width = v6;
  v35.size.height = v8;
  UIGraphicsBeginPDFPageWithInfo(v35, 0);
  v11 = +[UIColor blackColor];
  [v11 setFill];

  CurrentContext = UIGraphicsGetCurrentContext();
  v36.origin.x = CGPointZero.x;
  v36.origin.y = y;
  v36.size.width = v6;
  v36.size.height = v8;
  CGContextFillRect(CurrentContext, v36);
  v24 = v4;
  [*(a1 + 32) drawInRect:v4 withAttributes:{CGPointZero.x, y, v6, v8}];
  UIGraphicsEndPDFContext();
  v13 = pbb_bridge_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BridgeLVH: Logging view hierarchy on screenshot ------------", buf, 2u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = *(a1 + 32);
  v15 = +[NSCharacterSet newlineCharacterSet];
  v16 = [v14 componentsSeparatedByCharactersInSet:v15];

  v17 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * i);
        v22 = pbb_bridge_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "BridgeLVH: %@", buf, 0xCu);
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v18);
  }

  v23 = pbb_bridge_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BridgeLVH: Done logging view hierarchy ---------------------", buf, 2u);
  }

  (*(*(a1 + 40) + 16))(CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
}

void sub_1000B4040(uint64_t a1)
{
  if ([*(a1 + 32) isActivelyPairing] && (objc_msgSend(*(a1 + 32), "syncTrapUIEnabled") & 1) == 0 && (objc_msgSend(*(a1 + 32), "syncTrapUICompleted") & 1) == 0)
  {
    v3 = [*(a1 + 32) setupController];
    v2 = [v3 linkUpgradeMonitor];
    [v2 requestLinkUpgrade];
  }
}

void sub_1000B46D4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) topViewController];
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    *v20 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "top controller: %@", &v19, 0xCu);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = sub_100009AB4();
  v6 = [v5 count];

  v8 = v6 && ([*(a1 + 32) launchedToTest] & 1) == 0 && (sub_100009A24() & 1) == 0 && (v7 = *(a1 + 32), ((*(v7 + 9) | isKindOfClass) & 1) == 0) && *(v7 + 176) == 0;
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) launchedToTest] ^ 1;
    v11 = sub_100009A24();
    v12 = *(a1 + 32);
    v13 = *(v12 + 9) ^ 1;
    LODWORD(v12) = *(v12 + 176) == 0;
    v19 = 67110656;
    *v20 = v8;
    *&v20[4] = 1024;
    *&v20[6] = v6 != 0;
    v21 = 1024;
    v22 = v10;
    v23 = 1024;
    v24 = v11 ^ 1;
    v25 = 1024;
    v26 = v13;
    v27 = 1024;
    v28 = (isKindOfClass & 1) == 0;
    v29 = 1024;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device became inactive shouldShowDevicePicker: %i (hasDevices: %{BOOL}d  !launchedToTest: %{BOOL}d !COSSkipSetupFlow: %{BOOL}d !_processingProfileURL: %{BOOL}d !isShowingSWUController: %{BOOL}d !_unpairingVC: %{BOOL}d)", &v19, 0x2Cu);
  }

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v15 = [NSURL URLWithString:@"root=ActiveWatch"];
    v16 = sub_10000DB38();
    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = !sub_10000D61C();
    }

    [WeakRetained processURL:v15 animated:v17 fromSearch:0];
  }

  v18 = objc_loadWeakRetained((a1 + 40));
  [v18 _allowInteractionsWithSettingsControllers:1];
}

void sub_1000B4980(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _allowInteractionsWithSettingsControllers:1];
}

void sub_1000B4C50(uint64_t a1)
{
  v2 = pbb_mobileasset_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Pulled Assets for %@!", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) discoveryAssetPullRequests];
  [v4 setObject:0 forKeyedSubscript:*(a1 + 32)];
}

void sub_1000B51B4(uint64_t a1)
{
  v2 = [*(a1 + 32) setupController];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) setupController];
    if ([v4 mode] == 3)
    {

LABEL_5:
      v7 = pbb_bridge_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) setupController];
        v9 = [*(a1 + 32) setupController];
        v10 = [v9 mode];
        v11 = [*(a1 + 32) setupController];
        v13[0] = 67109632;
        v13[1] = v8 != 0;
        v14 = 2048;
        v15 = v10;
        v16 = 1024;
        v17 = [v11 hasStartedPairing];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping presentation of sync pane. setupController: %{BOOL}d mode: %lu hasStartedPairing: %{BOOL}d", v13, 0x18u);
      }

      return;
    }

    v5 = [*(a1 + 32) setupController];
    v6 = [v5 hasStartedPairing];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v12 = *(a1 + 32);

  [v12 tappedStartForMode:3 withAnimation:1];
}

uint64_t sub_1000B5520(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "globalAlertPresentationCoordinator:presentAlert:withCompletion: (COSGlobalAlertPresentationCoordinator: %@ COSGlobalAlertType: %@)", &v8, 0x16u);
  }

  v5 = *(a1 + 56);
  if (v5 == 1)
  {
    [*(a1 + 40) presentUnpairingViewControllerAnimated:1];
  }

  else if (v5)
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: globalAlertPresentationCoordinator:presentAlert:withCompletion: Unhandled COSGlobalAlertType!", &v8, 2u);
    }
  }

  else
  {
    [*(a1 + 40) _showInitialSyncPaneIfNotAlreadyShowing];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000B572C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    [*(a1 + 32) dismissUnpairingViewControllerAnimated:1];
    goto LABEL_11;
  }

  if (v2)
  {
    v3 = pbb_bridge_log();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    LOWORD(v10) = 0;
    v5 = "ERROR: globalAlertPresentationCoordinator:dismissAlert:withCompletion: Unhandled COSGlobalAlertType!";
    v6 = v3;
    v7 = 2;
    goto LABEL_9;
  }

  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v10 = 134217984;
    v11 = v4;
    v5 = "received dismissal for alertType: %lu";
    v6 = v3;
    v7 = 12;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v10, v7);
  }

LABEL_10:

LABEL_11:
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, v8);
  }

  return result;
}

void sub_1000B5930(uint64_t a1)
{
  v1 = [RPTScrollViewTestParameters newWithTestName:*(a1 + 32) scrollView:*(a1 + 40) completionHandler:0];
  [RPTTestRunner runTestWithParameters:v1];
}

void sub_1000B5A10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = pbb_accountsignin_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10018963C();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[COSPreferencesAppController _updateAppStoreRowForRepair]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s AMSDeviceMessenger Results (%@)", buf, 0x16u);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000B5B80;
    v9[3] = &unk_100268358;
    v9[4] = *(a1 + 32);
    v10 = v5;
    dispatch_async(&_dispatch_main_q, v9);
  }
}

void sub_1000B5B80(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsListController];
  v3 = [v2 specifierForID:@"com.apple.BridgeAppStoreDaemonSettings"];
  v4 = pbb_accountsignin_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) count]);
    v7 = 136315650;
    v8 = "[COSPreferencesAppController _updateAppStoreRowForRepair]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s AMSDeviceMessenger storeCell (%@) count: %@", &v7, 0x20u);
  }

  if ([*(a1 + 40) count])
  {
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) count]);
    [v3 setProperty:v6 forKey:PSBadgeNumberKey];
  }

  else
  {
    [v3 setProperty:0 forKey:PSBadgeNumberKey];
  }

  [v2 reloadSpecifier:v3];
}

void sub_1000B5EF4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = pbb_accountsignin_log();
  v10 = v9;
  if (a3 && v7 && !v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[COSPreferencesAppController deviceSpecificRepairSteps:]_block_invoke";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Found: %@", &v11, 0x16u);
    }

    [*(a1 + 32) _updateAppStoreRowForRepair];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001896C4();
    }
  }
}

void sub_1000B67E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activeWatchAssertion];
  v4 = [v3 device];

  if (v2 == v4)
  {
    v5 = *(a1 + 40);

    [v5 checkIDSReachability];
  }
}

id sub_1000B69B4()
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 localizedStringForKey:@"GENERIC_QWS_FAILURE_TITLE" value:&stru_10026E598 table:@"Pairing"];

  return v1;
}

void sub_1000B6E38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v10 = pbb_bridge_log();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:

      goto LABEL_16;
    }

    v11 = [*(a1 + 40) _bridgeConciseDebugDescription];
    *buf = 138412290;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Switched to Device -> %@", buf, 0xCu);
LABEL_14:

    goto LABEL_15;
  }

  v7 = *(a1 + 56);
  v8 = pbb_bridge_log();
  v9 = v8;
  if (v7 != 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to Switch Devices! %@", buf, 0xCu);
    }

    v10 = sub_1000B69B4();
    v12 = +[NSBundle mainBundle];
    v11 = [v12 localizedStringForKey:@"GENERIC_QWS_FAILURE_MESSAGE" value:&stru_10026E598 table:@"Pairing"];

    if (v10 && v11)
    {
      v13 = [UIAlertController alertControllerWithTitle:v10 message:v11 preferredStyle:1];
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
      v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:&stru_10026AEC8];
      [v13 addAction:v16];

      v17 = *(a1 + 32);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000B71F4;
      v20[3] = &unk_10026A900;
      v21 = v13;
      v18 = v13;
      [v17 presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v20];
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to switch to an alt account device! %@", buf, 0xCu);
  }

  [*(a1 + 32) _showTinkerSwitchFailureModalForDevice:*(a1 + 40)];
LABEL_16:
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setActiveWatchAssertion:v6];
  }

  *(*(a1 + 32) + 74) = 0;
  v19 = *(a1 + 48);
  if (v19)
  {
    (*(v19 + 16))(v19, [v6 isActive]);
  }
}

void sub_1000B718C(id a1, UIAlertAction *a2)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dismissed Quick Watch Switch Failure Alert", v3, 2u);
  }
}

Class sub_1000B887C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD558)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000B89C0;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_10026AF10;
    v6 = 0;
    qword_1002BD558 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD558)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("NFMWhereIsMyCompanionConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100189734();
  }

  qword_1002BD550 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000B89C0()
{
  result = _sl_dlopen();
  qword_1002BD558 = result;
  return result;
}

void sub_1000B9B5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000B9C08;
  v8[3] = &unk_100268F10;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);
}

uint64_t sub_1000B9C08(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1, *(a1 + 32));
  }

  return result;
}

void sub_1000BB0D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (PBLogPerformanceMetrics())
  {
    v4 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v4 endMacroActivity:PBBridgeTinkerBackupActivityName beginTime:CFAbsoluteTimeGetCurrent()];
    v6 = v5;

    [PBBridgeCAReporter pushTimingType:10 withValue:v6];
  }

  if ([v3 count])
  {
    v7 = *(a1 + 32);
    v8 = [v7 removeIncompatibleBackups:v3];
    v9 = [v7 sortBackups:v8];
    v10 = *(a1 + 32);
    v11 = *(v10 + 64);
    *(v10 + 64) = v9;

    *(*(a1 + 32) + 14) = 1;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));

  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained((*(a1 + 32) + 48));
    v14 = v13;
    if (*(*(a1 + 32) + 14))
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    [v13 backupsChanged:v15];
  }

  else
  {
    v16 = pbb_setupflow_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Tinker Backups changed but no delegate", v17, 2u);
    }
  }
}

void sub_1000BB250(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 11) = 1;
  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5[8] arrayByAddingObjectsFromArray:v3];

    v7 = *(a1 + 32);
    v8 = [v7 removeIncompatibleBackups:v6];
    v9 = [v7 sortBackups:v8];
    v10 = *(a1 + 32);
    v11 = *(v10 + 64);
    *(v10 + 64) = v9;

    v3 = v6;
  }

  else
  {
    v12 = [v5 pairedDevices];
    v13 = [v12 count];

    if (!v13)
    {
      goto LABEL_5;
    }
  }

  *(*(a1 + 32) + 14) = 1;
LABEL_5:
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));

  v15 = pbb_setupflow_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v16)
    {
      v17 = *(*(a1 + 32) + 14);
      v20[0] = 67109120;
      v20[1] = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Local Backups changed, calling delegate with found: %d", v20, 8u);
    }

    v18 = objc_loadWeakRetained((*(a1 + 32) + 48));
    v15 = v18;
    if (*(*(a1 + 32) + 14))
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    [v18 backupsChanged:v19];
  }

  else if (v16)
  {
    LOWORD(v20[0]) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Local Backups changed but no delegate", v20, 2u);
  }
}

void sub_1000BB8A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (!v3)
  {
    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    v4 = [UIApp setupController];
    [v4 setBackupRestoredFrom:*(a1 + 40)];
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 48));

    v3 = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

void sub_1000BBA34(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (!v3)
  {
    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
    v4 = [UIApp setupController];
    [v4 setDeviceRestoredFrom:*(*(a1 + 32) + 32)];
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 48));

    v3 = 0;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}