void sub_29C82E1A8(uint64_t a1)
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

void sub_29C82E8D8(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if (a2 == 3)
  {
    v7 = _ACDLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_29C8302B8(a1, v7);
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
    v26[2] = sub_29C82EC00;
    v26[3] = &unk_29F327D70;
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
    v14 = MEMORY[0x29ED454F0](v26);
    if (a2 == 2)
    {
      v15 = _ACDLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_29C830334((a1 + 32), v15);
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
          _os_log_impl(&dword_29C82D000, v16, OS_LOG_TYPE_DEFAULT, "Google plugin marking account %@ as un-authenticated", buf, 0xCu);
        }

        [*(a1 + 32) setAuthenticated:0];
        v18 = *(a1 + 56);
        v19 = *(a1 + 32);
        v22[0] = MEMORY[0x29EDCA5F8];
        v22[1] = 3221225472;
        v22[2] = sub_29C82ECAC;
        v22[3] = &unk_29F327D98;
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

void sub_29C82EC00(uint64_t a1)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x29EDB8440]];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) client];
  v5 = [v4 localizedAppName];
  [v2 _displayBadCredentialsAlertForAccount:v3 clientName:v5 reason:v6 accountStore:*(a1 + 56) resetAuthenticatedOnAlertFailure:*(a1 + 72) handler:*(a1 + 64)];
}

uint64_t sub_29C82ECAC(uint64_t a1)
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

void sub_29C82EFAC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = MEMORY[0x29EDBBD70];
  v9 = a3;
  v10 = a2;
  v11 = [[v8 alloc] initWithData:v10 urlResponse:v9 error:v7];

  v12 = [v11 error];
  if (v12 || [v11 statusCode] != 200)
  {

    goto LABEL_8;
  }

  v13 = [v11 token];

  if (!v13)
  {
LABEL_8:
    if ([v11 statusCode] >= 400 && objc_msgSend(v11, "statusCode") <= 499)
    {
      v22 = _ACDLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_29C8304A8(v11);
      }

LABEL_29:

      (*(*(a1 + 48) + 16))();
      goto LABEL_30;
    }

    v23 = [v11 error];
    if (!v23 && [v11 statusCode] != 200)
    {
      goto LABEL_19;
    }

    v24 = [v11 error];
    if (v24)
    {
      v25 = v24;
      v26 = [v11 error];
      if ([v26 code] == -1005)
      {
LABEL_18:

        goto LABEL_19;
      }

      v27 = [v11 error];
      if ([v27 code] == -1001)
      {

        goto LABEL_18;
      }

      v28 = [v11 error];
      v29 = [v28 domain];
      if ([v29 isEqualToString:*MEMORY[0x29EDB9F08]])
      {
        v30 = [v11 error];
        v32 = [v30 code];

        if (v32 != -1009)
        {
LABEL_27:
          v22 = _ACDLogSystem();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_29C83042C(v11);
          }

          goto LABEL_29;
        }

LABEL_19:
        v22 = _ACDLogSystem();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_29C8303B0(v11);
        }

        goto LABEL_29;
      }
    }

    goto LABEL_27;
  }

  v14 = _ACDLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v34 = [v11 statusCode];
    v35 = 2114;
    v36 = v7;
    _os_log_impl(&dword_29C82D000, v14, OS_LOG_TYPE_DEFAULT, "Google token refresh did succeed; status %ld error %{public}@", buf, 0x16u);
  }

  v15 = objc_alloc(MEMORY[0x29EDB83C0]);
  v16 = [v11 token];
  v17 = [*(a1 + 32) oauthRefreshToken];
  v18 = [v11 expiryDate];
  v19 = [v15 initWithOAuth2Token:v16 refreshToken:v17 expiryDate:v18];

  v20 = *(a1 + 40);
  v21 = [v11 grantedDataclasses];
  [v20 setAccountProperty:v21 forKey:*MEMORY[0x29EDB8190]];

  (*(*(a1 + 48) + 16))();
LABEL_30:

  v31 = *MEMORY[0x29EDCA608];
}

void sub_29C82F508(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = MEMORY[0x29EDBBD60];
  v9 = a3;
  v10 = a2;
  v11 = [[v8 alloc] initWithData:v10 urlResponse:v9 error:v7];

  v12 = _ACDLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v32 = [v11 statusCode];
    v33 = 2114;
    v34 = v7;
    _os_log_impl(&dword_29C82D000, v12, OS_LOG_TYPE_DEFAULT, "Google legacy token exchange got status %ld error %{public}@", buf, 0x16u);
  }

  v13 = [v11 error];
  if (v13)
  {
  }

  else if ([v11 statusCode] != 200)
  {
    v18 = *(*(a1 + 40) + 16);
    goto LABEL_14;
  }

  v14 = [v11 error];
  if (v14 || [v11 statusCode] != 200)
  {

    goto LABEL_12;
  }

  v15 = [v11 token];

  if (!v15)
  {
LABEL_12:
    v18 = *(*(a1 + 40) + 16);
LABEL_14:
    v18();
    goto LABEL_15;
  }

  v16 = objc_alloc_init(MEMORY[0x29EDBBD78]);
  if (objc_opt_respondsToSelector())
  {
    v17 = [v16 defaultScope];
  }

  else
  {
    v17 = 0;
  }

  v20 = MEMORY[0x29EDBBD58];
  v21 = [v11 token];
  v22 = [v16 clientID];
  v23 = [v20 urlRequestForAuthCodeFromAuthToken:v21 clientID:v22 scope:v17];

  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = sub_29C82F7F4;
  v27[3] = &unk_29F327E38;
  v24 = *(a1 + 32);
  v30 = *(a1 + 40);
  v28 = v16;
  v29 = *(a1 + 32);
  v25 = v16;
  v26 = [v24 dataTaskWithRequest:v23 completionHandler:v27];
  [v26 resume];

LABEL_15:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_29C82F7F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = MEMORY[0x29EDBBD50];
  v9 = a3;
  v10 = a2;
  v11 = [[v8 alloc] initWithData:v10 urlResponse:v9 error:v7];

  v12 = _ACDLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v30 = [v11 statusCode];
    v31 = 2114;
    v32 = v7;
    _os_log_impl(&dword_29C82D000, v12, OS_LOG_TYPE_DEFAULT, "Google auth token exchange got status %ld error %{public}@", buf, 0x16u);
  }

  v13 = [v11 error];
  if (v13)
  {
  }

  else if ([v11 statusCode] != 200)
  {
    v25 = *(*(a1 + 48) + 16);
    goto LABEL_13;
  }

  v14 = [v11 error];
  if (v14 || [v11 statusCode] != 200)
  {

    goto LABEL_11;
  }

  v15 = [v11 code];

  if (!v15)
  {
LABEL_11:
    v25 = *(*(a1 + 48) + 16);
LABEL_13:
    v25();
    goto LABEL_14;
  }

  v16 = MEMORY[0x29EDBBD68];
  v17 = [*(a1 + 32) clientID];
  v18 = [*(a1 + 32) clientSecret];
  v19 = [*(a1 + 32) clientRedirect];
  v20 = [v11 code];
  v21 = [*(a1 + 32) tokenURL];
  v22 = [v16 urlRequestForClientID:v17 secret:v18 redirectURI:v19 authCode:v20 tokenURL:v21 codeVerifier:0];

  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = sub_29C82FAC8;
  v27[3] = &unk_29F327E10;
  v23 = *(a1 + 40);
  v28 = *(a1 + 48);
  v24 = [v23 dataTaskWithRequest:v22 completionHandler:v27];
  [v24 resume];

LABEL_14:
  v26 = *MEMORY[0x29EDCA608];
}

void sub_29C82FAC8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = MEMORY[0x29EDBBD70];
  v9 = a3;
  v10 = a2;
  v11 = [[v8 alloc] initWithData:v10 urlResponse:v9 error:v7];

  v12 = _ACDLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134218242;
    v24 = [v11 statusCode];
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_29C82D000, v12, OS_LOG_TYPE_DEFAULT, "Google auth code exchange got status %ld error %{public}@", &v23, 0x16u);
  }

  v13 = [v11 error];
  if (v13)
  {
  }

  else if ([v11 statusCode] != 200)
  {
    v21 = *(*(a1 + 32) + 16);
    goto LABEL_13;
  }

  v14 = [v11 error];
  if (v14 || [v11 statusCode] != 200)
  {

    goto LABEL_11;
  }

  v15 = [v11 token];

  if (!v15)
  {
LABEL_11:
    v21 = *(*(a1 + 32) + 16);
LABEL_13:
    v21();
    goto LABEL_14;
  }

  v16 = objc_alloc(MEMORY[0x29EDB83C0]);
  v17 = [v11 token];
  v18 = [v11 refreshToken];
  v19 = [v11 expiryDate];
  v20 = [v16 initWithOAuth2Token:v17 refreshToken:v18 expiryDate:v19];

  (*(*(a1 + 32) + 16))();
LABEL_14:

  v22 = *MEMORY[0x29EDCA608];
}

void sub_29C83006C(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v13[2] = sub_29C83026C;
      v13[3] = &unk_29F327E88;
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
        _os_log_impl(&dword_29C82D000, v7, OS_LOG_TYPE_DEFAULT, "User requested transfer to settings from Google authentication alert", buf, 2u);
      }

      v8 = MEMORY[0x29EDB8E70];
      v9 = MEMORY[0x29EDBA0F8];
      v10 = [*(a1 + 32) identifier];
      v11 = [v9 stringWithFormat:@"prefs:root=ACCOUNTS_AND_PASSWORDS&path=%@&%@=%@", v10, @"slGoogleAction", @"showAuthSheet"];
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
        _os_log_impl(&dword_29C82D000, v4, OS_LOG_TYPE_DEFAULT, "User cancelled out of Google authentication alert", buf, 2u);
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_29C830298(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_29C8302B8(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_29C82D000, a2, OS_LOG_TYPE_ERROR, "Google plugin: Unable to renew %@ because the keychain was locked.", &v4, 0xCu);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_29C830334(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_29C82D000, a2, OS_LOG_TYPE_ERROR, "Google plugin: Unable to renew %@ because of an network issue.", &v4, 0xCu);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_29C8303B0(void *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  [a1 statusCode];
  sub_29C830280();
  sub_29C830298(&dword_29C82D000, v1, v2, "Google token refresh did fail with network issue; status %ld error %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29C83042C(void *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  [a1 statusCode];
  sub_29C830280();
  sub_29C830298(&dword_29C82D000, v1, v2, "Google token refresh did fail with unknown issue; status %ld error %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29C8304A8(void *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  [a1 statusCode];
  sub_29C830280();
  sub_29C830298(&dword_29C82D000, v1, v2, "Google token refresh did fail with auth problem; status %ld error %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x29EDCA608];
}