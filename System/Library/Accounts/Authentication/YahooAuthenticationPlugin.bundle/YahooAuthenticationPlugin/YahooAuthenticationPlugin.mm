void sub_29C83E270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C83E4A8(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 40) + 8) + 24), 0.0, &responseFlags);
  v2 = *(*(*(a1 + 40) + 8) + 24);
  (*(*(a1 + 32) + 16))();
  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t sub_29C83E978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (!a2 || a3)
  {
    return (*(v4 + 16))(v4, 0);
  }

  else
  {
    return (*(v4 + 16))(v4, *(a1 + 32));
  }
}

void sub_29C83E9A4(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = MEMORY[0x29EDB9FA0];
    v4 = *MEMORY[0x29EDB8300];
    v12 = *MEMORY[0x29EDB9ED8];
    v13[0] = @"The account could not be verified because it does not have the necessary credentials.";
    v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = [v3 errorWithDomain:v4 code:3 userInfo:v5];

    (*(*(a1 + 40) + 16))();
    v7 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(*(a1 + 40) + 16);
    v11 = *MEMORY[0x29EDCA608];

    v10();
  }
}

void sub_29C83EE98(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if (a2 == 3)
  {
    v7 = _ACDLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_29C840B94(a1, v7);
    }

    v6 = *(*(a1 + 64) + 16);
    goto LABEL_7;
  }

  if (a2 != 1)
  {
    v8 = (a1 + 32);
    v9 = [*(a1 + 32) isAuthenticated];
    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 3221225472;
    v26[2] = sub_29C83F1C0;
    v26[3] = &unk_29F328CB8;
    *&v10 = *(a1 + 40);
    *(&v10 + 1) = *(a1 + 48);
    v21 = v10;
    v11 = *(a1 + 32);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v27 = v21;
    v28 = v13;
    v30 = v9;
    v29 = *(a1 + 64);
    v14 = MEMORY[0x29ED45DB0](v26);
    if (a2 == 2)
    {
      v15 = _ACDLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_29C840C10((a1 + 32), v15);
      }
    }

    else
    {
      if ([*v8 isAuthenticated])
      {
        v16 = _ACDLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *v8;
          *buf = 138412290;
          v32 = v17;
          _os_log_impl(&dword_29C83D000, v16, OS_LOG_TYPE_DEFAULT, "Yahoo! plugin marking account %@ as un-authenticated", buf, 0xCu);
        }

        [*(a1 + 32) setAuthenticated:0];
        v18 = *(a1 + 56);
        v19 = *(a1 + 32);
        v22[0] = MEMORY[0x29EDCA5F8];
        v22[1] = 3221225472;
        v22[2] = sub_29C83F26C;
        v22[3] = &unk_29F328CE0;
        v25 = *(a1 + 72);
        v23 = v14;
        v24 = *(a1 + 64);
        [v18 saveAccount:v19 withHandler:v22];

        goto LABEL_18;
      }

      if ((*(a1 + 72) & 1) == 0)
      {
        v14[2](v14);
        goto LABEL_18;
      }
    }

    (*(*(a1 + 64) + 16))();
LABEL_18:

    goto LABEL_19;
  }

  [*(a1 + 32) setCredential:v5];
  v6 = *(*(a1 + 64) + 16);
LABEL_7:
  v6();
LABEL_19:

  v20 = *MEMORY[0x29EDCA608];
}

void sub_29C83F1C0(uint64_t a1)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDB8440]];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) client];
  v5 = [v4 localizedAppName];
  [v2 _displayBadCredentialsAlertForAccount:v3 clientName:v5 reason:v6 accountStore:*(a1 + 56) resetAuthenticatedOnAlertFailure:*(a1 + 72) handler:*(a1 + 64)];
}

uint64_t sub_29C83F26C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

void sub_29C83F4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29C83F4E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C83F4F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = MEMORY[0x29EDBBD88];
  v9 = a3;
  v10 = a2;
  v11 = [[v8 alloc] initWithData:v10 urlResponse:v9 error:v7];

  v12 = _ACDLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218242;
    v19 = [v11 statusCode];
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_29C83D000, v12, OS_LOG_TYPE_DEFAULT, "Yahoo! legacy token exchange got status %ld error %{public}@", &v18, 0x16u);
  }

  v13 = [v11 error];
  if (v13 || [v11 statusCode] != 200)
  {
    goto LABEL_7;
  }

  v14 = [v11 loginToken];

  if (v14)
  {
    v15 = [v11 loginToken];
    v16 = *(*(a1 + 40) + 8);
    v13 = *(v16 + 40);
    *(v16 + 40) = v15;
LABEL_7:
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v17 = *MEMORY[0x29EDCA608];
}

void sub_29C83F9B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = MEMORY[0x29EDBBDB0];
  v9 = a3;
  v10 = a2;
  v11 = [[v8 alloc] initWithData:v10 urlResponse:v9 error:v7];

  v12 = [v11 error];
  if (v12 || [v11 statusCode] != 200)
  {
  }

  else
  {
    v13 = [v11 token];

    if (v13)
    {
      v14 = _ACDLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v11 statusCode];
        v16 = [v11 errorMessage];
        v17 = [v11 data];
        *buf = 134218754;
        v41 = v15;
        v42 = 2114;
        v43 = v7;
        v44 = 2114;
        v45 = v16;
        v46 = 2112;
        v47 = v17;
        _os_log_impl(&dword_29C83D000, v14, OS_LOG_TYPE_DEFAULT, "Yahoo! token refresh did succeed with status %ld error %{public}@ errorMessage %{public}@ response data %@", buf, 0x2Au);
      }

      v18 = objc_alloc(MEMORY[0x29EDB83C0]);
      v19 = [v11 token];
      v20 = [*(a1 + 32) oauthRefreshToken];
      v21 = [v11 expiryDate];
      v22 = [v18 initWithOAuth2Token:v19 refreshToken:v20 expiryDate:v21];

      (*(*(a1 + 56) + 16))();
      goto LABEL_33;
    }
  }

  if ([v11 statusCode] < 400 || objc_msgSend(v11, "statusCode") > 499)
  {
    v27 = [v11 error];
    if (!v27 && [v11 statusCode] != 200)
    {
      goto LABEL_22;
    }

    v28 = [v11 error];
    if (v28)
    {
      v29 = v28;
      v30 = [v11 error];
      if ([v30 code] == -1005)
      {
LABEL_21:

        goto LABEL_22;
      }

      v31 = [v11 error];
      if ([v31 code] == -1001)
      {

        goto LABEL_21;
      }

      v33 = [v11 error];
      v34 = [v33 domain];
      if ([v34 isEqualToString:*MEMORY[0x29EDB9F08]])
      {
        v35 = [v11 error];
        v37 = [v35 code];

        if (v37 != -1009)
        {
LABEL_30:
          v32 = _ACDLogSystem();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_29C840D40();
          }

          goto LABEL_32;
        }

LABEL_22:
        v32 = _ACDLogSystem();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_29C840C8C();
        }

LABEL_32:

        (*(*(a1 + 56) + 16))();
        goto LABEL_33;
      }
    }

    goto LABEL_30;
  }

  v23 = _ACDLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_29C840DF4();
  }

  [*(a1 + 32) setOauthRefreshToken:0];
  [*(a1 + 40) setCredential:*(a1 + 32)];
  v24 = _ACDLogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29C83D000, v24, OS_LOG_TYPE_DEFAULT, "will clear Yahoo! credential.oauthRefreshToken", buf, 2u);
  }

  v26 = *(a1 + 40);
  v25 = *(a1 + 48);
  v38[0] = MEMORY[0x29EDCA5F8];
  v38[1] = 3221225472;
  v38[2] = sub_29C83FE94;
  v38[3] = &unk_29F328D58;
  v39 = *(a1 + 56);
  [v25 saveAccount:v26 withHandler:v38];

LABEL_33:
  v36 = *MEMORY[0x29EDCA608];
}

void sub_29C83FE94(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = _ACDLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_29C83D000, v5, OS_LOG_TYPE_DEFAULT, "did clear Yahoo! credential.oauthRefreshToken with error %{public}@", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x29EDCA608];
}

void sub_29C840108(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = MEMORY[0x29EDBBD98];
  v9 = a3;
  v10 = a2;
  v11 = [[v8 alloc] initWithData:v10 urlResponse:v9 error:v7];

  v12 = _ACDLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134218242;
    v26 = [v11 statusCode];
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&dword_29C83D000, v12, OS_LOG_TYPE_DEFAULT, "Yahoo! legacy token exchange got status %ld error %{public}@", &v25, 0x16u);
  }

  v13 = [v11 error];
  if (v13)
  {
  }

  else if ([v11 statusCode] != 200)
  {
    v23 = *(*(a1 + 32) + 16);
    goto LABEL_13;
  }

  v14 = [v11 error];
  if (v14 || [v11 statusCode] != 200)
  {

LABEL_12:
    v23 = *(*(a1 + 32) + 16);
LABEL_13:
    v23();
    goto LABEL_14;
  }

  v15 = [v11 accessToken];
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = v15;
  v17 = [v11 refreshToken];

  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = objc_alloc(MEMORY[0x29EDB83C0]);
  v19 = [v11 accessToken];
  v20 = [v11 refreshToken];
  v21 = [v11 expiryDate];
  v22 = [v18 initWithOAuth2Token:v19 refreshToken:v20 expiryDate:v21];

  (*(*(a1 + 32) + 16))();
LABEL_14:

  v24 = *MEMORY[0x29EDCA608];
}

void sub_29C840650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 3)
  {
    if (*(a1 + 56))
    {
      [*(a1 + 32) setAuthenticated:1];
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 3221225472;
      v13[2] = sub_29C840850;
      v13[3] = &unk_29F328DD0;
      v14 = *(a1 + 48);
      v15 = 2;
      [v5 saveAccount:v6 withHandler:v13];

      return;
    }
  }

  else
  {
    if (a3)
    {
      v7 = _ACDLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29C83D000, v7, OS_LOG_TYPE_DEFAULT, "User requested transfer to settings from Yahoo! authentication alert", buf, 2u);
      }

      v8 = MEMORY[0x29EDB8E70];
      v9 = MEMORY[0x29EDBA0F8];
      v10 = [*(a1 + 32) identifier];
      v11 = [v9 stringWithFormat:@"prefs:root=ACCOUNTS_AND_PASSWORDS&path=%@&%@=%@", v10, @"slYahooAction", @"showAuthSheet"];
      v4 = [v8 URLWithString:v11];

      v12 = [MEMORY[0x29EDB9400] defaultWorkspace];
      [v12 openSensitiveURL:v4 withOptions:0];
    }

    else
    {
      v4 = _ACDLogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_29C83D000, v4, OS_LOG_TYPE_DEFAULT, "User cancelled out of Yahoo! authentication alert", buf, 2u);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

Class sub_29C840864(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!qword_2A1794F08)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = sub_29C840990;
    v4[4] = &unk_29F328E58;
    v4[5] = v4;
    v5 = xmmword_29F328E40;
    v6 = 0;
    qword_2A1794F08 = _sl_dlopen();
  }

  if (!qword_2A1794F08)
  {
    sub_29C840F24(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("MFAccountLoader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29C840EA8();
  }

  qword_2A1794F00 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29C840990(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A1794F08 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29C840A30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void sub_29C840A60(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_29C83D000, a2, OS_LOG_TYPE_DEBUG, "%@ is a non-entitled client. No Yahoo! credential for you.", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29C840AD8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_29C83D000, a2, OS_LOG_TYPE_DEBUG, "%@ is entitled for all-account access. Returning Yahoo! credentials.", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29C840B94(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_29C83D000, a2, OS_LOG_TYPE_ERROR, "Yahoo plugin: Unable to renew %@ because the keychain was locked.", &v4, 0xCu);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_29C840C10(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_29C83D000, a2, OS_LOG_TYPE_ERROR, "Yahoo plugin: Unable to renew %@ because of a network issue.", &v4, 0xCu);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_29C840C8C()
{
  sub_29C840A50();
  v12 = *MEMORY[0x29EDCA608];
  [v1 statusCode];
  v2 = [v0 errorMessage];
  v3 = [v0 data];
  sub_29C840A04();
  sub_29C840A30(&dword_29C83D000, v4, v5, "Yahoo! token refresh did fail with network issue; status %ld error %{public}@ errorMessage %{public}@ response data %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29C840D40()
{
  sub_29C840A50();
  v12 = *MEMORY[0x29EDCA608];
  [v1 statusCode];
  v2 = [v0 errorMessage];
  v3 = [v0 data];
  sub_29C840A04();
  sub_29C840A30(&dword_29C83D000, v4, v5, "Yahoo! token refresh did fail with unknown issue; status %ld error %{public}@ errorMessage %{public}@ response data %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29C840DF4()
{
  sub_29C840A50();
  v12 = *MEMORY[0x29EDCA608];
  [v1 statusCode];
  v2 = [v0 errorMessage];
  v3 = [v0 data];
  sub_29C840A04();
  sub_29C840A30(&dword_29C83D000, v4, v5, "Yahoo! token refresh did fail with auth problem; status %ld error %{public}@ errorMessage %{public}@ response data %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29C840EA8()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getMFAccountLoaderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SLYahooAuthenticationPlugin.m" lineNumber:53 description:{@"Unable to find class %s", "MFAccountLoader"}];

  __break(1u);
}

void sub_29C840F24(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *MessageLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SLYahooAuthenticationPlugin.m" lineNumber:52 description:{@"%s", *a1}];

  __break(1u);
  CFRelease(v4);
}