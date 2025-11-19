uint64_t sub_1368()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_14B00;
  v5 = qword_14B00;
  if (!qword_14B00)
  {
    v6 = *off_10540;
    v7 = *off_10550;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_14B00 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1494(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_14B00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_152C()
{
  v0 = sub_1368();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t sub_1588()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_14B08;
  v6 = qword_14B08;
  if (!qword_14B08)
  {
    v1 = sub_152C();
    v4[3] = dlsym(v1, "BYSetupAssistantIsRunningSilentTokenUpgrade");
    qword_14B08 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_165C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1674(uint64_t a1)
{
  v2 = sub_152C();
  result = dlsym(v2, "BYSetupAssistantIsRunningSilentTokenUpgrade");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_14B08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_16C4()
{
  v0 = sub_1588();
  if (v0)
  {

    return v0();
  }

  else
  {
    sub_8074();
    return sub_16F4();
  }
}

uint64_t sub_16F4()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_14B10;
  v6 = qword_14B10;
  if (!qword_14B10)
  {
    v1 = sub_152C();
    v4[3] = dlsym(v1, "BYSetupAssistantHasCompletedInitialRun");
    qword_14B10 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_17C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_17E0(uint64_t a1)
{
  v2 = sub_152C();
  result = dlsym(v2, "BYSetupAssistantHasCompletedInitialRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_14B10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1830()
{
  v0 = sub_16F4();
  if (v0)
  {

    return v0();
  }

  else
  {
    v2 = sub_8074();
    return sub_1860(v2);
  }
}

id sub_1860()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_14B18;
  v7 = qword_14B18;
  if (!qword_14B18)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1940;
    v3[3] = &unk_10598;
    v3[4] = &v4;
    sub_1940(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1940(uint64_t a1)
{
  sub_152C();
  result = objc_getClass("BYFlowSkipController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_14B18 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_8098();
    return sub_1998(v3);
  }

  return result;
}

uint64_t sub_1998()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_14B20;
  v6 = qword_14B20;
  if (!qword_14B20)
  {
    v1 = sub_152C();
    v4[3] = dlsym(v1, "BYFlowSkipIdentifierAppleID");
    qword_14B20 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1A84(uint64_t a1)
{
  v2 = sub_152C();
  result = dlsym(v2, "BYFlowSkipIdentifierAppleID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_14B20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

AAIDSAuthenticationPlugin *sub_1AD4()
{
  v0 = sub_1998();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    v3 = sub_8074();
    return [(AAIDSAuthenticationPlugin *)v3 init];
  }
}

void sub_1ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1EF4()
{
  if (qword_14B40 != -1)
  {
    sub_8130();
  }

  v1 = qword_14B38;

  return v1;
}

void sub_1F38(uint64_t a1)
{
  v2 = sub_1EF4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "We timed out waiting on the server", v3, 2u);
  }

  [*(a1 + 32) cancelAllOperations];
  dispatch_source_cancel(*(a1 + 40));
}

void sub_1FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  if (!v3)
  {
    v6 = sub_1EF4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_81AC();
    }

    goto LABEL_7;
  }

  v5 = sub_1EF4();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_8144();
    }

LABEL_7:

    v7 = *(*(*(a1 + 64) + 8) + 24);
    (*(*(a1 + 56) + 16))();
    goto LABEL_11;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Server auth was successful, not in Gray Mode anymore", buf, 2u);
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
  [*(a1 + 32) aa_updateWithProvisioningResponse:v3];
  [*(a1 + 32) aa_setNeedsToVerifyTerms:0];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2160;
  v12[3] = &unk_105E8;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = v10;
  v14 = v11;
  [v8 saveVerifiedAccount:v9 withCompletionHandler:v12];

LABEL_11:
  dispatch_source_cancel(*(a1 + 48));
}

void sub_2160(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = sub_1EF4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_8214();
    }
  }

  v7 = *(*(*(a1 + 40) + 8) + 24);
  (*(*(a1 + 32) + 16))();
}

void sub_2240(id a1)
{
  qword_14B28 = [[NSSet alloc] initWithArray:&off_10EA0];

  _objc_release_x1();
}

uint64_t sub_2AD0(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4);
}

uint64_t sub_2AF4(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4);
}

void sub_2CBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_1EF4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_84D8();
    }

    [*(a1 + 32) _tryPasswordLoginWithAccount:*(a1 + 40) store:*(a1 + 48) services:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    if (v8)
    {
      v9 = sub_1EF4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 40) username];
        v18 = 138412290;
        v19 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Password-less auth succeeded! Time for login with Apple ID %@...", &v18, 0xCu);
      }

      [*(a1 + 32) _beginPETBasedLoginWithAccount:*(a1 + 40) PET:v8 store:*(a1 + 48) completion:*(a1 + 64)];
    }

    else
    {
      v11 = [v5 objectForKeyedSubscript:AKAuthenticationIDMSTokenKey];
      v12 = [v11 allKeys];

      if ([*(a1 + 56) count] && objc_msgSend(v12, "count") && (+[NSSet setWithArray:](NSSet, "setWithArray:", *(a1 + 56)), v13 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithArray:](NSSet, "setWithArray:", v12), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isSubsetOfSet:", v14), v14, v13, v15))
      {
        v16 = sub_1EF4();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Password-less auth returned all the requested tokens!", &v18, 2u);
        }

        (*(*(a1 + 64) + 16))();
      }

      else
      {
        v17 = sub_1EF4();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_8540();
        }

        [*(a1 + 32) _tryPasswordLoginWithAccount:*(a1 + 40) store:*(a1 + 48) services:*(a1 + 56) completion:*(a1 + 64)];
      }
    }
  }
}

void sub_31C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _beginPETBasedLoginWithAccount:*(a1 + 40) PET:a2 store:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v6 = sub_1EF4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_8690();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_3500(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_1EF4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_86F8();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [a2 objectForKeyedSubscript:AKAuthenticationPasswordKey];
    v8 = sub_1EF4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Password-based auth succeeded! Time for login with Apple ID %@...", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

id sub_3908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2)
  {
    return [*(a1 + 32) _handleRenewFailure:a3 forAccount:*(a1 + 40) accountStore:*(a1 + 48) options:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    return (*(*(a1 + 64) + 16))();
  }
}

void sub_3C28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3CCC;
  v6[3] = &unk_10768;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 _beginPETBasedLoginWithAccount:v4 PET:a2 store:v5 completion:v6];
}

void sub_3CF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1EF4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_8840();
    }

    v5 = [*(a1 + 32) objectForKeyedSubscript:kACRenewCredentialsServicesKey];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) username];
    v8 = [*(a1 + 48) aa_altDSID];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_3E50;
    v9[3] = &unk_107B8;
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    [v6 _convertPasswordToPETForAppleID:v7 altDSID:v8 password:v3 services:v5 completion:v9];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_3E50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_1EF4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin: Password from companion was successfully exchanged for PET. Logging in...", v5, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_43B0(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (*(a1 + 56))
  {
    v9 = sub_1EF4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_8930();
    }

    CFUserNotificationCancel(*(a1 + 56));
    CFRelease(*(a1 + 56));
  }

  v10 = *(a1 + 32);
  objc_sync_enter(v10);
  v11 = *(*(a1 + 32) + 8);
  v12 = [*(a1 + 40) identifier];
  [v11 removeObject:v12];

  if ((a2 & 1) == 0)
  {
    v15 = sub_1EF4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_896C((a1 + 40));
    }

    goto LABEL_17;
  }

  if (!v7)
  {
    v15 = sub_1EF4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_8A5C();
    }

    goto LABEL_17;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v14 = sub_1EF4();
  v15 = v14;
  if ((isKindOfClass & 1) == 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_89F4();
    }

LABEL_17:

    (*(*(a1 + 48) + 16))();
    goto LABEL_18;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v18 = 138412290;
    v19 = v16;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "ACRemoteDeviceProxy successfully provided us with a password for %@", &v18, 0xCu);
  }

  v17 = v7;
  (*(*(a1 + 48) + 16))();

LABEL_18:
  objc_sync_exit(v10);
}

void sub_4924(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5 && !a2)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  if ([v5 code] != &stru_158.reloff + 1)
  {
    if ([v6 code] == &stru_158.flags + 1 || objc_msgSend(v6, "code") == &stru_158.reloff + 3)
    {
      v8 = sub_1EF4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Got a 409/403, the account really is in Gray Mode", v13, 2u);
      }

      v9 = [*(a1 + 32) _frontmostApplicationId];
      v10 = [v9 isEqualToString:@"com.apple.Preferences"];

      if (v10)
      {
        v11 = *(*(a1 + 72) + 16);
LABEL_18:
        v11();
        goto LABEL_19;
      }

      v12 = sub_1EF4();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_8A98();
      }
    }

LABEL_17:
    v11 = *(*(a1 + 72) + 16);
    goto LABEL_18;
  }

  v7 = sub_1EF4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Auth was bad, re-authenticate...", buf, 2u);
  }

  [*(a1 + 32) _authenticateAccount:*(a1 + 40) inStore:*(a1 + 48) options:*(a1 + 56) errorMessage:*(a1 + 64) completion:*(a1 + 72)];
LABEL_19:
}

void sub_4E90(uint64_t a1)
{
  v2 = objc_alloc_init(AKAppleIDAuthenticationContext);
  v3 = [*(a1 + 32) username];
  [v2 setUsername:v3];

  [v2 setIsUsernameEditable:0];
  [v2 setReason:*(a1 + 40)];
  v4 = [*(a1 + 32) aa_personID];
  [v2 setDSID:v4];

  v5 = [*(a1 + 32) aa_altDSID];
  [v2 setAltDSID:v5];

  [v2 setAnticipateEscrowAttempt:1];
  [v2 setAuthenticationType:0];
  v6 = [*(a1 + 32) _aa_rawPassword];

  if (v6)
  {
    v7 = sub_1EF4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AppleIDAuthenticationPlugin: will try auth with cached password first...", buf, 2u);
    }

    v8 = [*(a1 + 32) _aa_rawPassword];
    [v2 _setPassword:v8];

    [v2 setAuthenticationType:1];
  }

  [v2 _setProxyingForApp:1];
  v9 = [*(a1 + 48) client];
  v10 = [v9 name];
  [v2 _setProxiedAppName:v10];

  if (*(a1 + 56))
  {
    [v2 _setProxiedAppBundleID:?];
  }

  else
  {
    v11 = [*(a1 + 48) client];
    v12 = [v11 bundleID];
    [v2 _setProxiedAppBundleID:v12];
  }

  if (*(a1 + 64))
  {
    [v2 setProxiedDevice:?];
  }

  else if (*(a1 + 120) == 1)
  {
    [v2 setAuthenticationType:1];
  }

  v13 = *(a1 + 32);
  v36[0] = @"account";
  v36[1] = @"accountStore";
  v14 = *(a1 + 48);
  v37[0] = v13;
  v37[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v2 setClientInfo:v15];

  if (*(a1 + 112))
  {
    [v2 setServiceType:?];
  }

  if (*(a1 + 72))
  {
    v16 = sub_1EF4();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_8B4C((a1 + 72));
    }

    [v2 setServiceIdentifiers:*(a1 + 72)];
    [v2 setShouldUpdatePersistentServiceTokens:1];
  }

  v17 = sub_1EF4();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_8BC4();
  }

  v18 = v6 != 0;

  v19 = [*(a1 + 80) _authController];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_52B4;
  v23[3] = &unk_108A8;
  v32 = v18;
  v20 = *(a1 + 32);
  v21 = *(a1 + 80);
  v24 = v20;
  v25 = v21;
  v26 = *(a1 + 48);
  v27 = *(a1 + 88);
  v28 = *(a1 + 96);
  v31 = *(a1 + 104);
  v33 = *(a1 + 120);
  v29 = *(a1 + 64);
  v30 = v2;
  v34 = *(a1 + 121);
  v22 = v2;
  [v19 authenticateWithContext:v22 completion:v23];
}

void sub_52B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && (*(a1 + 96) & 1) != 0)
  {
    v7 = sub_1EF4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_8C00();
    }

    [*(a1 + 32) _aa_clearRawPassword];
    [*(a1 + 40) _authenticateAccount:*(a1 + 32) inStore:*(a1 + 48) options:*(a1 + 56) errorMessage:*(a1 + 64) completion:*(a1 + 88)];
  }

  else
  {
    objc_initWeak(&location, *(a1 + 40));
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_5570;
    v23[3] = &unk_10858;
    objc_copyWeak(&v32, &location);
    v24 = *(a1 + 56);
    v33 = *(a1 + 97);
    v8 = v6;
    v25 = v8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v26 = v9;
    v27 = v10;
    v28 = v11;
    v29 = *(a1 + 72);
    v30 = *(a1 + 80);
    v31 = *(a1 + 88);
    v12 = objc_retainBlock(v23);
    v13 = *(a1 + 40);
    v14 = *(a1 + 80);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_5710;
    v16[3] = &unk_10880;
    v16[4] = v13;
    v17 = v5;
    v18 = v8;
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v22 = *(a1 + 98);
    v15 = v12;
    v21 = v15;
    [v13 _validateAuthenticationResults:v17 error:v18 forContext:v14 completion:v16];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }
}

void sub_5554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 96));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_5570(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v7 = [*(a1 + 32) objectForKeyedSubscript:kACRenewCredentialsShouldForceKey];
  if (([v7 BOOLValue] & 1) != 0 || *(a1 + 104))
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"AARenewShouldPostFollowUp"];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 1;
  }

  if ([*(a1 + 40) ak_isUnableToPromptError] & 1) != 0 || (objc_msgSend(*(a1 + 40), "ak_isUserCancelError"))
  {
    v10 = 1;
    if (!a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = [*(a1 + 40) ak_isAuthenticationErrorWithCode:-7014];
    if (!a2)
    {
      goto LABEL_15;
    }
  }

  if ((v10 & v9) != 0)
  {
    v11 = sub_1EF4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8C68(a1, v11, v12, v13, v14, v15, v16, v17);
    }

    v18 = [*(a1 + 56) _userInfoForRenewCredentialsFollowUpWithAccountStore:*(a1 + 64) proxiedDevice:*(a1 + 72)];
    if (WeakRetained)
    {
      v19 = [AAFollowUpUtilities followUpPostAnalyticsInfoWithContext:*(a1 + 80) identifier:AAFollowUpIdentifierRenewCredentials error:*(a1 + 40)];
      [WeakRetained[3] setAnalyticsInfo:v19];

      [WeakRetained[3] postFollowUpWithIdentifier:AAFollowUpIdentifierRenewCredentials forAccount:*(a1 + 48) userInfo:v18 completion:0];
    }
  }

LABEL_15:
  (*(*(a1 + 88) + 16))();
}

id sub_5710(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = _AALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin: Continue authenticating...", v10, 2u);
    }

    return [*(a1 + 32) _handleAuthenticationResults:*(a1 + 40) error:*(a1 + 48) forAccount:*(a1 + 56) inStore:*(a1 + 64) resetAuthenticatedOnAlertFailure:*(a1 + 80) completion:*(a1 + 72)];
  }

  else
  {
    v5 = *(a1 + 80);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);

    return [AAAuthenticationErrorHandler handleAuthenticationError:v6 resetAuthenticatedOnAlertFailure:v5 forAccount:v7 inStore:v8 completion:v9];
  }
}

void sub_5CC8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _AALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin: loginDelegates succeeded!", &v8, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin: loginDelegates failed with error: %@", &v8, 0xCu);
    }

    [*(a1 + 32) _aa_clearRawPassword];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_5F7C(uint64_t a1)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:AKAuthenticationPasswordKey];
  v2 = [*(a1 + 40) credential];

  if (v2)
  {
    v3 = [*(a1 + 40) credential];
    [v3 setPassword:v4];
  }

  else
  {
    v3 = [ACAccountCredential credentialWithPassword:v4];
    [*(a1 + 40) setCredential:v3];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_62DC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_1EF4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    LODWORD(v14[0]) = a2;
    WORD2(v14[0]) = 2112;
    *(v14 + 6) = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin: saving raw password result was %d. Error: %@", buf, 0x12u);
  }

  if (*(a1 + 32))
  {
    v7 = sub_1EF4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v14[0] = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin setting raw password for iCloud account %@", buf, 0xCu);
    }

    [*(a1 + 32) _aa_setRawPassword:*(a1 + 40)];
    v9 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_6488;
    v11[3] = &unk_10768;
    v10 = *(a1 + 48);
    v12 = *(a1 + 56);
    [v10 saveVerifiedAccount:v9 withCompletionHandler:v11];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_6488(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_1EF4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "AAIDSAuthenticationPlugin: saving raw password result was %d. Error: %@", v7, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_6784(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 status];
  v10 = [v9 integerValue];

  if (v7 || v10)
  {
    v17 = [v8 statusMessage];
    v18 = v17;
    if (v17)
    {
      v29 = NSLocalizedDescriptionKey;
      v30 = v17;
      v19 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.appleaccount" code:v10 userInfo:v19];

      v7 = v20;
    }

    v21 = [*(a1 + 32) credential];
    [v21 setPassword:0];

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = [v8 responseParameters];
    v13 = *(a1 + 48);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_69B8;
    v22[3] = &unk_10998;
    v23 = *(a1 + 32);
    v14 = *(a1 + 56);
    v15 = *(a1 + 40);
    v24 = v14;
    v25 = v15;
    v26 = v8;
    v16 = *(a1 + 64);
    v27 = 0;
    v28 = v16;
    [v11 _processAuthenticationResponseParameters:v12 accountStore:v13 completion:v22];

    v7 = v23;
  }
}

void sub_69B8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) objectID];

  if (v3)
  {
    v4 = [*v2 dirtyProperties];
    v5 = [v4 count];

    if (v5)
    {
      v6 = sub_1EF4();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_8CD8(v2, v6);
      }
    }

    [*(a1 + 32) refresh];
    v7 = [ACDKeychainManager credentialForAccount:*(a1 + 32) clientID:0];
    [v7 setPassword:*(a1 + 40)];
    [*(a1 + 32) setCredential:v7];
  }

  if (+[AAIDSAuthenticationPlugin _doesRelyOnCompanionAccounts](AAIDSAuthenticationPlugin, "_doesRelyOnCompanionAccounts") && ([*(a1 + 48) _parametersForIDSAlertFromLoginResponse:*(a1 + 56)], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [NSError errorWithDomain:@"com.apple.appleaccount" code:-6 userInfo:v8];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v11 = sub_1EF4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Completed storing tokens", v13, 2u);
    }

    v12 = *(a1 + 64);
    (*(*(a1 + 72) + 16))();
  }
}

id sub_70D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"uri"];
  v5 = [v4 _stripFZIDPrefix];

  v6 = [v3 objectForKey:@"status"];
  v7 = [v6 intValue];

  v8 = [v3 objectForKey:@"is-user-visible"];

  if (v8 && ([v8 BOOLValue] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }

  if (v7 == 5051)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_7B94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1EF4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 32) identifier];
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "Setting account property (%@) for key (%@) on account with identifier (%@).", &v9, 0x20u);
  }

  [*(a1 + 32) setAccountProperty:v6 forKey:v5];
}

void sub_7CA0(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  if (v5 && a2 && a3)
  {
    v6 = a2;
    v7 = IDSAccountKeyForServerKey();
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      v9 = sub_1EF4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v5 identifier];
        v11 = 138412802;
        v12 = v8;
        v13 = 2112;
        v14 = v7;
        v15 = 2112;
        v16 = v10;
        _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "Setting %@ for key %@ on account with identifier: %@", &v11, 0x20u);
      }

      [v5 setAccountProperty:v8 forKey:v7];
    }
  }
}

void sub_7DE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1EF4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Saved account (%@) with object ID (%@) and error (%@).", &v9, 0x20u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_7FC4(id a1)
{
  qword_14B38 = os_log_create("com.apple.appleaccount", "ids");

  _objc_release_x1();
}

void sub_8028(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_8074()
{
  dlerror();
  v0 = abort_report_np();
  return sub_8098(v0);
}

void sub_80C0()
{
  sub_801C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8290(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 accountType];
  v6 = [v5 accountTypeDescription];
  sub_8008();
  v8 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Unable to get credential for %@ account! Error = %@", v7, 0x16u);
}

void sub_8344()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8380()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_83BC()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_83F8()
{
  sub_801C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8468()
{
  sub_801C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8540()
{
  sub_805C();
  sub_8044();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_857C()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_85B8()
{
  sub_801C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8760()
{
  sub_805C();
  sub_8044();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8804()
{
  sub_805C();
  sub_8044();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8840()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_887C()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_88B8()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_88F4()
{
  sub_805C();
  sub_8044();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8930()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_896C(uint64_t *a1)
{
  v5 = *a1;
  sub_8068();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);
}

void sub_8A5C()
{
  sub_805C();
  sub_8044();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8A98()
{
  sub_805C();
  sub_8044();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8AD4()
{
  sub_8008();
  sub_8068();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_8B4C(uint64_t *a1)
{
  v6 = *a1;
  sub_8050();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_8BC4()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8CD8(id *a1, NSObject *a2)
{
  v3 = *a1;
  v4 = [*a1 dirtyProperties];
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "AAIDSAuthenticationPlugin about to refresh to pick up changes made by auth delegates, but the account already has the following dirty properties, which might spell t-r-o-u-b-l-e: %@ %@", &v5, 0x16u);
}

void sub_8D8C()
{
  sub_801C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_8E64()
{
  sub_805C();
  sub_8050();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_8EA0()
{
  sub_8008();
  sub_8068();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void sub_8F18()
{
  sub_8008();
  sub_8068();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                v44 = [v25 identifier];
                *buf = 138413059;
                v90 = v38;
                v91 = 2112;
                v92 = v44;
                v93 = 2048;
                v94 = v40;
                v95 = 2117;
                v96 = v37;
                _os_log_debug_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "Setting credential (%@) on account with identifier (%@). [receiptTime: %f, token: %{sensitive}@]", buf, 0x2Au);
              }

              v11 = v62;
            }

            else
            {
              v43 = sub_1EF4();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v90 = v58;
                _os_log_error_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "No auth token for service type (%@).", buf, 0xCu);
              }

              [v25 setAuthenticated:0];
            }

            v10 = v31;
            v15 = v69;
            v30 = v74;
          }
        }

        v73 = [obj countByEnumeratingWithState:&v84 objects:v97 count:16];
      }

      while (v73);
    }

    v45 = dispatch_group_create();
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v46 = v68;
    v47 = [v46 countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v80;
      do
      {
        for (j = 0; j != v48; j = j + 1)
        {
          if (*v80 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v79 + 1) + 8 * j);
          dispatch_group_enter(v45);
          v77[0] = _NSConcreteStackBlock;
          v77[1] = 3221225472;
          v77[2] = sub_7DE8;
          v77[3] = &unk_10A88;
          v77[4] = v51;
          v78 = v45;
          [v10 saveAccount:v51 pid:0 verify:0 dataclassActions:0 completion:v77];
        }

        v48 = [v46 countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v48);
    }

    v52 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_7ED0;
    block[3] = &unk_10A38;
    v12 = v57;
    v76 = v57;
    dispatch_group_notify(v45, v52, block);

    v9 = v58;
    v11 = v62;
    v15 = v69;
    v16 = v56;
  }

  else
  {
    v53 = sub_1EF4();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_8F90();
    }

    v12[2](v12);
  }
}

- (id)_authController
{
  authController = self->_authController;
  if (!authController)
  {
    v4 = objc_alloc_init(AKAppleIDAuthenticationController);
    v5 = self->_authController;
    self->_authController = v4;

    authController = self->_authController;
  }

  return authController;
}

@end