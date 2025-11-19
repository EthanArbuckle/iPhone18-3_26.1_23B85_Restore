id sub_100001624()
{
  if (qword_10001A7A0 != -1)
  {
    sub_10000B1A4();
  }

  v1 = qword_10001A7A8;

  return v1;
}

void sub_1000018A8(uint64_t a1)
{
  v3 = [UIColor colorWithWhite:0.0 alpha:0.4];
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:v3];
}

void sub_100001A74(uint64_t a1)
{
  v2 = *(a1 + 64) + 22.0;
  v3 = [*(a1 + 32) bottomConstraint];
  [v3 setConstant:v2];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

void sub_100001BFC(uint64_t a1)
{
  v2 = [*(a1 + 32) bottomConstraint];
  [v2 setConstant:22.0];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

id sub_100001FA4(uint64_t a1)
{
  [*(a1 + 32) removeFromParentViewController];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 cancelCurrentOperation];
}

void sub_100002360(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000023E8;
  v2[3] = &unk_100014428;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1000023E8(uint64_t a1)
{
  [*(a1 + 32) setCurrentUIContext:*(a1 + 40)];
  v2 = [*(a1 + 32) currentUIContext];
  v3 = [v2 realm];
  v4 = [*(a1 + 32) realmLabel];
  [v4 setText:v3];

  v5 = [*(a1 + 32) currentUIContext];
  v6 = [v5 userName];
  v7 = [*(a1 + 32) usernameTextField];
  [v7 setText:v6];

  v8 = [*(a1 + 32) currentUIContext];
  LODWORD(v6) = [v8 userNameIsReadOnly];
  v9 = [*(a1 + 32) usernameTextField];
  [v9 setEnabled:v6 ^ 1];

  v10 = [*(a1 + 32) passwordTextField];
  [v10 setText:&stru_100014860];
}

void sub_1000025C8(uint64_t a1)
{
  v2 = [*(a1 + 32) process];
  v3 = [*(a1 + 32) currentUIContext];
  v4 = [v3 realm];
  v5 = [v2 kerberosForRealm:v4];

  v6 = [*(a1 + 32) currentUIContext];
  v34[0] = 0;
  LODWORD(v4) = [v5 changePasswordWithContext:v6 withError:v34];
  v7 = v34[0];

  if (v4)
  {
    v8 = [*(a1 + 32) currentUIContext];
    v9 = [v8 changedPassword];
    v10 = [*(a1 + 32) currentUIContext];
    [v10 setPassword:v9];

    v11 = [*(a1 + 32) currentUIContext];
    [v11 setChangedPassword:0];

    v12 = [*(a1 + 32) currentUIContext];
    v13 = [v12 extensionData];
    if ([v13 allowAutomaticLogin])
    {
      v14 = [*(a1 + 32) currentUIContext];
      v15 = [v14 extensionUserData];
      v16 = [v15 useKeychain];

      if (!v16)
      {
LABEL_6:
        v22 = dispatch_time(0, 5000000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000029E0;
        block[3] = &unk_100014358;
        block[4] = *(a1 + 32);
        dispatch_after(v22, &_dispatch_main_q, block);
        goto LABEL_12;
      }

      v12 = [*(a1 + 32) keychainHelper];
      v13 = [*(a1 + 32) currentUIContext];
      v17 = [v13 serviceName];
      v29 = [*(a1 + 32) currentUIContext];
      v18 = [v29 userPrincipalName];
      v28 = [*(a1 + 32) currentUIContext];
      v19 = [v28 password];
      v20 = [*(a1 + 32) currentUIContext];
      v21 = [v20 extensionData];
      [v12 addCredentialsToKeychainWithService:v17 withUsername:v18 withPassword:v19 requireUserPresence:{objc_msgSend(v21, "requireUserPresence")}];
    }

    goto LABEL_6;
  }

  if (v7)
  {
    v23 = [*(a1 + 32) process];
    v24 = [v23 mapKnownPasswordErrorToString:v7];

    v25 = sub_100001624();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10000B344(v24, v25);
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100002AB4;
    v31[3] = &unk_100014428;
    v31[4] = *(a1 + 32);
    v32 = v24;
    v26 = v24;
    dispatch_async(&_dispatch_main_q, v31);
  }

  else
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100002B30;
    v30[3] = &unk_100014358;
    v30[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v30);
  }

LABEL_12:
  v27 = sub_100001624();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B3BC();
  }
}

void sub_1000029E0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 didChangePassword];
  }

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 delegate];
    [v8 didClose];
  }

  else
  {
    v8 = [v7 currentUIContext];
    [v8 completeRequest];
  }
}

id sub_100002AB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002B28;
  v4[3] = &unk_100014358;
  v4[4] = v2;
  return [v2 _showMessage:v1 completionHandler:v4];
}

id sub_100002D24(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 enableElementAutoFocusForAccessibility];
}

void sub_100003040(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = UIAccessibilityScreenChangedNotification;
    v4 = [v2 spinner];
    UIAccessibilityPostNotification(v3, v4);
  }
}

void sub_100003894(id a1)
{
  qword_10001A7A8 = os_log_create("com.apple.AppSSO", "KerberosPasswordViewController");

  _objc_release_x1();
}

void sub_1000038D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100003F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100003F48()
{
  if (qword_10001A7B0 != -1)
  {
    sub_10000B3F0();
  }

  v1 = qword_10001A7B8;

  return v1;
}

void sub_100003F8C(uint64_t a1, void *a2)
{
  v36 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained currentUIContext];
  if ([v4 smartCardNeedsInsert])
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 currentUIContext];
    v7 = [v6 certificateTokenID];
    v8 = [v36 isEqualToString:v7];

    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 loginButton];
    [v10 setEnabled:1];

    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v11 optionsButton];
    [v12 setEnabled:1];

    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = [v13 usernameTextField];
    [v14 setEnabled:0];

    v15 = objc_loadWeakRetained((a1 + 32));
    v16 = [v15 passwordTextField];
    [v16 setEnabled:0];

    v17 = objc_loadWeakRetained((a1 + 32));
    v18 = [v17 cancelButton];
    [v18 setEnabled:1];

    v35 = objc_loadWeakRetained((a1 + 32));
    v19 = [v35 signInTitleLabel];
    v34 = +[NSBundle mainBundle];
    v20 = [v34 localizedStringForKey:@"SIGN_IN_TITLE" value:&stru_100014860 table:0];
    v21 = objc_loadWeakRetained((a1 + 32));
    v22 = [v21 currentUIContext];
    v23 = [v22 callerLocalizedName];
    v24 = objc_loadWeakRetained((a1 + 32));
    v25 = [v24 currentUIContext];
    v26 = [v25 realm];
    v27 = [NSString stringWithFormat:v20, v23, v26];
    [v19 setText:v27];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained signInTitleLabel];
    [v4 sizeToFit];
  }

LABEL_5:
  v28 = objc_loadWeakRetained((a1 + 32));
  v29 = [v28 buildIdentityMenu];
  v30 = objc_loadWeakRetained((a1 + 32));
  v31 = [v30 identityButton];
  [v31 setMenu:v29];

  v32 = objc_loadWeakRetained((a1 + 32));
  v33 = [v32 currentUIContext];
  [v33 setSmartCardNeedsInsert:0];
}

id sub_1000048A4(uint64_t a1)
{
  v2 = [*(a1 + 32) currentUIContext];
  v3 = [v2 extensionUserData];
  v4 = [v3 useSmartCard];

  v5 = [*(a1 + 32) currentUIContext];
  v6 = [v5 extensionUserData];
  [v6 setUseSmartCard:v4 ^ 1];

  v7 = [*(a1 + 32) currentUIContext];
  [v7 setPkinitPersistentRef:0];

  v8 = [*(a1 + 32) currentUIContext];
  [v8 setCertificateTokenID:0];

  v9 = [*(a1 + 32) currentUIContext];
  [v9 setSmartCardLAContext:0];

  v10 = [*(a1 + 32) currentUIContext];
  [v10 setPkinitIdentity:0];

  v11 = [*(a1 + 32) buildIdentityMenu];
  v12 = [*(a1 + 32) identityButton];
  [v12 setMenu:v11];

  v13 = [*(a1 + 32) buildOptionsMenu];
  v14 = [*(a1 + 32) optionsButton];
  [v14 setMenu:v13];

  v15 = *(a1 + 32);

  return [v15 changeUIForCertIdentity];
}

void sub_100004A08(uint64_t a1)
{
  v2 = [*(a1 + 32) currentUIContext];
  v3 = [v2 extensionUserData];
  v4 = [v3 useKeychain];

  v5 = [*(a1 + 32) currentUIContext];
  v6 = [v5 extensionUserData];
  [v6 setUserSetKeychainChoice:1];

  v7 = [*(a1 + 32) currentUIContext];
  v8 = [v7 extensionUserData];
  [v8 setUseKeychain:v4 ^ 1];

  v10 = [*(a1 + 32) buildOptionsMenu];
  v9 = [*(a1 + 32) optionsButton];
  [v9 setMenu:v10];
}

void sub_100004B14(uint64_t a1)
{
  v2 = [*(a1 + 32) process];
  v3 = [*(a1 + 32) currentUIContext];
  [v2 handleLogoutWithContext:v3 removeRealm:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004BD8;
  block[3] = &unk_100014358;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100004BD8(uint64_t a1)
{
  v2 = [*(a1 + 32) usernameTextField];
  [v2 setText:&stru_100014860];

  v3 = [*(a1 + 32) passwordTextField];
  [v3 setText:&stru_100014860];

  [*(a1 + 32) changeUIForCertIdentity];
  [*(a1 + 32) disableUI];
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004CC4;
  block[3] = &unk_100014358;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

void sub_100004CC4(uint64_t a1)
{
  v3 = [*(a1 + 32) process];
  v2 = [*(a1 + 32) currentUIContext];
  [v3 attemptKerberosWithContext:v2 andDelegate:*(a1 + 32)];
}

id sub_100005240(uint64_t a1)
{
  v2 = [*(a1 + 32) currentUIContext];
  [v2 setSmartCardLAContext:0];

  v3 = [*(a1 + 32) currentUIContext];
  [v3 setPkinitIdentity:0];

  v4 = [*(a1 + 32) currentUIContext];
  [v4 setPkinitPersistentRef:0];

  v5 = [*(a1 + 32) currentUIContext];
  [v5 setCertificateTokenID:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"NO_IDENTITY_SELECTED_TEXT" value:&stru_100014860 table:0];
  v8 = [*(a1 + 32) identityLabel];
  [v8 setText:v7];

  v9 = *(a1 + 32);

  return [v9 performSelector:"updateIdentityMenu"];
}

id sub_10000534C(uint64_t a1)
{
  [*(a1 + 32) selectCertForAuth:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 performSelector:"updateIdentityMenu"];
}

void sub_1000057CC(uint64_t a1)
{
  v3 = [UIColor colorWithWhite:0.0 alpha:0.4];
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:v3];
}

void sub_1000059CC(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005A60;
  block[3] = &unk_100014358;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_100005A60(uint64_t a1)
{
  v3 = [*(a1 + 32) process];
  v2 = [*(a1 + 32) currentUIContext];
  [v3 attemptKerberosWithContext:v2 andDelegate:*(a1 + 32)];
}

uint64_t sub_100005EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F48();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User consent granted: %d", v10, 8u);
  }

  v5 = [*(a1 + 32) currentUIContext];
  v6 = [v5 extensionUserData];
  [v6 setUserSetKeychainChoice:1];

  v7 = [*(a1 + 32) currentUIContext];
  v8 = [v7 extensionUserData];
  [v8 setUseKeychain:a2];

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100006308(uint64_t a1)
{
  [*(a1 + 32) enableElementAutoFocusForAccessibility];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_100006350(uint64_t a1)
{
  [*(a1 + 32) enableElementAutoFocusForAccessibility];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000064F0(uint64_t a1)
{
  v2 = *(a1 + 64) + 20.0;
  v3 = [*(a1 + 32) bottomConstraint];
  [v3 setConstant:v2];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

void sub_1000066A4(uint64_t a1)
{
  v2 = [*(a1 + 32) bottomConstraint];
  [v2 setConstant:20.0];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

void sub_100006E58(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006ED0;
  block[3] = &unk_100014358;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100006F70(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007004;
  v6[3] = &unk_100014450;
  v4 = v2;
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 showAuthControllerForContext:v4 completion:v6];
}

void sub_100007004(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) keychainLAContext];

    if (!v3)
    {
      v4 = objc_alloc_init(LAContext);
      [*(a1 + 32) setKeychainLAContext:v4];

      v5 = [*(a1 + 32) keychainLAContext];
      [v5 setOptionCallerName:@"Kerberos"];
    }

    v6 = [*(a1 + 32) extensionData];
    v7 = [v6 customUsernameLabel];

    if (![v7 length])
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"ACTIVE_DIRECTORY_PRODUCTNAME" value:&stru_100014860 table:0];

      v7 = v9;
    }

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"LAPOLICY_REASON" value:&stru_100014860 table:0];
    v12 = [NSString stringWithFormat:v11, v7];

    v13 = [*(a1 + 40) passwordTextField];
    [v13 setHidden:1];

    v14 = [*(a1 + 40) identityLabel];
    [v14 setHidden:1];

    v15 = [*(a1 + 32) keychainLAContext];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100007230;
    v18[3] = &unk_100014450;
    v17 = *(a1 + 32);
    v16 = v17.i64[0];
    v19 = vextq_s8(v17, v17, 8uLL);
    [v15 evaluatePolicy:2 localizedReason:v12 reply:v18];
  }
}

void sub_100007230(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = sub_100003F48();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B6FC(a1, v7);
    }

    [*(a1 + 40) setAttemptedToGetCredsFromKeychain:1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007420;
    block[3] = &unk_100014358;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
    v8 = dispatch_time(0, 650000000);
    v9 = dispatch_get_global_queue(0, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100007428;
    v12[3] = &unk_100014358;
    v12[4] = *(a1 + 32);
    dispatch_after(v8, v9, v12);
  }

  else
  {
    if (v5)
    {
      v10 = sub_100003F48();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10000B688();
      }
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100007498;
    v11[3] = &unk_100014358;
    v11[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v11);
  }
}

void sub_100007428(uint64_t a1)
{
  v3 = [*(a1 + 32) process];
  v2 = [*(a1 + 32) currentUIContext];
  [v3 attemptKerberosWithContext:v2 andDelegate:*(a1 + 32)];
}

id sub_10000753C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000075B0;
  v4[3] = &unk_100014628;
  v4[4] = v2;
  return [v2 showAuthControllerForContext:v1 completion:v4];
}

void sub_1000075B0(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007630;
    block[3] = &unk_100014358;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100007630(uint64_t a1)
{
  v1 = [*(a1 + 32) usernameTextField];
  [v1 becomeFirstResponder];
}

id sub_10000770C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007780;
  v4[3] = &unk_100014628;
  v4[4] = v2;
  return [v2 showAuthControllerForContext:v1 completion:v4];
}

void sub_100007780(uint64_t a1, int a2)
{
  if (a2)
  {
    v7 = [*(a1 + 32) currentUIContext];
    v3 = [v7 pkinitPersistentRef];
    if (v3)
    {
    }

    else
    {
      v4 = [*(a1 + 32) currentUIContext];
      v5 = [v4 extensionUserData];
      v6 = [v5 useSmartCard];

      if ((v6 & 1) == 0)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100007890;
        block[3] = &unk_100014358;
        block[4] = *(a1 + 32);
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

void sub_100007890(uint64_t a1)
{
  v1 = [*(a1 + 32) passwordTextField];
  [v1 becomeFirstResponder];
}

void sub_100007AE4(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"LOGIN_ERROR" value:&stru_100014860 table:0];
  v4 = [UIAlertController alertControllerWithTitle:v3 message:*(a1 + 32) preferredStyle:1];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"OK_TEXT" value:&stru_100014860 table:0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007CB8;
  v11[3] = &unk_100014650;
  v7 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v7;
  v13 = *(a1 + 56);
  v8 = [UIAlertAction actionWithTitle:v6 style:0 handler:v11];
  [v4 addAction:v8];

  v9 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100007CF8;
  v10[3] = &unk_100014358;
  v10[4] = v9;
  [v9 presentViewController:v4 animated:1 completion:v10];
}

id sub_100007CB8(uint64_t a1)
{
  [*(a1 + 32) enableElementAutoFocusForAccessibility];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 showAuthControllerForContext:v3 completion:v4];
}

id sub_100007D00(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 viewControllerIsShowing];
    v5 = *(a1 + 56);
    if (v4)
    {
      v6 = v5[2];

      return v6();
    }

    v8 = objc_retainBlock(v5);
    v9 = *(a1 + 40);
    v10 = *(v9 + 32);
    *(v9 + 32) = v8;

    v3 = *(a1 + 40);
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 64);

  return [v3 showAuthControllerForContext:v11 completion:v12];
}

void sub_10000806C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008160;
    block[3] = &unk_1000146C8;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v9 = v6;
    v10 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v7 = sub_100003F48();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000B7F4();
    }
  }
}

uint64_t sub_100008160(uint64_t a1)
{
  [*(a1 + 32) setCurrentUIContext:*(a1 + 40)];
  [*(a1 + 32) prefillWithCredentialsFromKeychainIfPossible];
  if ([*(a1 + 40) smartCardNeedsInsert])
  {
    [*(a1 + 32) setPromptForSmartCard:1];
    [*(a1 + 32) promptForSmartcardWithContext:*(a1 + 40)];
  }

  [*(a1 + 32) setViewControllerIsShowing:1];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100008A48(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[24] == 1)
  {
    v3 = UIAccessibilityScreenChangedNotification;
    v4 = [v2 spinner];
    UIAccessibilityPostNotification(v3, v4);
  }
}

id sub_100008D50(uint64_t a1)
{
  v2 = [*(a1 + 32) passwordViewController];
  [v2 removeFromParentViewController];

  v3 = *(a1 + 32);

  return [v3 setPasswordViewController:0];
}

void sub_1000094BC(id a1)
{
  qword_10001A7B8 = os_log_create("com.apple.AppSSO", "KerberosLoginViewController");

  _objc_release_x1();
}

void sub_10000976C(uint64_t a1)
{
  v2 = sub_1000099B0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B868(a1, v2);
  }

  v3 = [*(a1 + 32) requestedOperation];
  if (!v3 || (v4 = v3, [*(a1 + 32) requestedOperation], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", &stru_100014860), v5, v4, v6))
  {
    if (![*(a1 + 40) requestContainsNegotiateChallenge:*(a1 + 32)])
    {
      [*(a1 + 32) doNotHandle];
      return;
    }

    goto LABEL_11;
  }

  v7 = [*(a1 + 32) requestedOperation];
  if ([v7 isEqualToString:kSOKerberosOperationLogin])
  {
    goto LABEL_10;
  }

  v8 = [*(a1 + 32) requestedOperation];
  if ([v8 isEqualToString:kSOKerberosOperationGetCredentialUUID])
  {

LABEL_10:
LABEL_11:
    [*(a1 + 40) handleKerberosOperations:*(a1 + 32)];
    return;
  }

  v9 = [*(a1 + 32) requestedOperation];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v10 = qword_10001A7D0;
  v22 = qword_10001A7D0;
  if (!qword_10001A7D0)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000ACDC;
    v18[3] = &unk_100014780;
    v18[4] = &v19;
    sub_10000ACDC(v18);
    v10 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v10)
  {
    sub_10000B940();
    v17 = v16;
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v17);
  }

  v11 = [v9 isEqualToString:*v10];

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = [*(a1 + 32) requestedOperation];
  v13 = [v12 isEqualToString:kSOKerberosOperationChangePassword];

  v14 = *(a1 + 40);
  if (v13)
  {
    [v14 handleChangePasswordWithRequest:*(a1 + 32)];
  }

  else
  {
    v15 = [v14 process];
    [v15 beginAuthorizationWithRequest:*(a1 + 32)];
  }
}

id sub_1000099B0()
{
  if (qword_10001A7C0 != -1)
  {
    sub_10000B964();
  }

  v1 = qword_10001A7C8;

  return v1;
}

void sub_100009BE8(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionData];
  v3 = [v2 allowPasswordChange];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = +[NSError passwordChangeNotEnabled];
    [v4 completeRequestWithError:v5];
  }

  v6 = [[KerberosPasswordViewController alloc] initWithNibName:@"KerberosPasswordViewController" bundle:0];
  [*(a1 + 40) setPasswordViewController:v6];

  v7 = [*(a1 + 40) process];
  v8 = [*(a1 + 40) passwordViewController];
  [v8 setProcess:v7];

  v9 = [*(a1 + 40) keychainHelper];
  v10 = [*(a1 + 40) passwordViewController];
  [v10 setKeychainHelper:v9];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) passwordViewController];
  [v12 setCurrentUIContext:v11];

  v13 = *(a1 + 40);
  v14 = [v13 passwordViewController];
  [v13 addChildViewController:v14];

  v15 = [*(a1 + 40) passwordViewController];
  [v15 handleKerberosOperation:*(a1 + 32) withMessage:0];

  v16 = sub_1000099B0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10000BB00(v16);
  }
}

void sub_10000A864(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) process];
    [v4 attemptKerberosWithContext:*(a1 + 40) andDelegate:*(a1 + 32)];
  }

  else
  {
    v3 = sub_1000099B0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000BB44(v3);
    }

    [*(a1 + 40) cancelRequest];
  }
}

void sub_10000A8FC(uint64_t a1)
{
  [*(a1 + 32) createLoginViewControllerWithContext:*(a1 + 40)];
  v2 = [*(a1 + 32) loginViewController];
  [v2 handleResult:*(a1 + 56) context:*(a1 + 40) error:*(a1 + 48)];
}

void sub_10000AC98(id a1)
{
  qword_10001A7C8 = os_log_create("com.apple.AppSSO", "KerberosBaseViewController");

  _objc_release_x1();
}

void *sub_10000ACDC(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_10001A7D8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10000AE1C;
    v5[4] = &unk_1000147B8;
    v5[5] = v5;
    v6 = off_1000147A0;
    v7 = 0;
    qword_10001A7D8 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_10001A7D8;
    if (qword_10001A7D8)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_10001A7D8;
LABEL_5:
  result = dlsym(v2, "ASAuthorizationOperationLogin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10001A7D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000AE1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10001A7D8 = result;
  return result;
}

void sub_10000AE90(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10000B000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B024(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetUI];
}

void sub_10000B12C(id a1)
{
  qword_10001A7E8 = os_log_create("com.apple.AppSSO", "KerberosViewController");

  _objc_release_x1();
}

void sub_10000B288(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "******************* handleKerberosOperation: %@, message: %@", &v3, 0x16u);
}

void sub_10000B344(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error changing password: %{public}@", &v2, 0xCu);
}

void sub_10000B438()
{
  sub_100009500();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "******************* handleKerberosOperation: %@, message: %@", v2, 0x16u);
}

void sub_10000B524(void *a1, NSObject *a2)
{
  v3 = [a1 servicePrincipalName];
  sub_100009500();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Server Principal Unknown: %@", v4, 0xCu);
}

void sub_10000B6FC(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 136315394;
  v4 = "[KerberosLoginViewController promptForCertificateWithContext:]_block_invoke_3";
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s MDM cert LA success on %@", &v3, 0x16u);
}

void sub_10000B868(uint64_t a1, NSObject *a2)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  v5 = [v4 realm];
  v6 = [*v3 requestedOperation];
  v7 = 138543874;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  v11 = 2114;
  v12 = v6;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "beginAuthorizationWithRequest: %{public}@, realm: %{public}@, operation: %{public}@", &v7, 0x20u);
}

void sub_10000B940()
{
  dlerror();
  abort_report_np();
  sub_10000B964();
}

void sub_10000B978(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "cancelAuthorizationWithRequest: %{public}@", &v2, 0xCu);
}

void sub_10000B9F0(void *a1)
{
  v1 = [a1 realm];
  sub_10000AE90(&_mh_execute_header, v2, v3, "handleKerberosOperations: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_10000BA78(void *a1)
{
  v1 = [a1 realm];
  sub_10000AE90(&_mh_execute_header, v2, v3, "handleChangePasswordWithRequest: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_10000BB9C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 loginViewController];
  v5 = [a2 passwordViewController];
  v6 = 136315906;
  v7 = "[KerberosViewController resetUI]";
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s login: %@, password: %@ on %@", &v6, 0x2Au);
}