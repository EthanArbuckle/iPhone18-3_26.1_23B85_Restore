void ServerAuthUIInitLogging()
{
  if (qword_10000CF58 != -1)
  {
    sub_100003B9C();
  }
}

void sub_100000F5C(id a1)
{
  serverAuthUILogHandle = os_log_create("com.apple.FileProviderUI.ServerAuthUIExtension", "ServerAuthUI");

  _objc_release_x1();
}

void sub_100001BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001C88;
  v10[3] = &unk_100008378;
  v11 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v8 = v5;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_100001C88(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 32))
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 56) count]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = *(v1 + 56);
    v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v5)
    {
      goto LABEL_23;
    }

    v6 = v5;
    v7 = *v34;
    v8 = &SecItemAdd_ptr;
    v27 = v4;
    v28 = v1;
    v26 = *v34;
    while (1)
    {
      v9 = 0;
      v29 = v6;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v11 = v8[78];
        v12 = objc_opt_new();
        [v12 setType:{objc_msgSend(v10, "unsignedIntegerValue")}];
        if ([v12 type] == 1)
        {
          v13 = *(v1 + 48);
          v14 = *(v13 + 32);
          v31 = 0;
          v32 = 0;
          [v14 getUsername:&v32 password:&v31 forServerURL:*(v13 + 24)];
          v15 = v32;
          v16 = v31;
          v17 = [NSURLComponents componentsWithURL:*(*(v1 + 48) + 24) resolvingAgainstBaseURL:0];
          v18 = [v17 user];
          v19 = [v18 copy];

          if (v15 && v16)
          {
            if (v19 && ![v19 isEqualToString:v15])
            {
              v22 = 0;
              v21 = v19;
              v20 = v19;
            }

            else
            {
              v20 = v15;
              v21 = v16;
              v22 = v16;
            }

LABEL_19:
            v25 = v21;
            v23 = v22;
            v24 = v20;
          }

          else
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v21 = v19;
            v20 = v19;
            if (v19)
            {
              goto LABEL_19;
            }
          }

          [v12 setUsername:v24];
          [v12 setPassword:v23];

          v4 = v27;
          v1 = v28;
          v7 = v26;
          v8 = &SecItemAdd_ptr;
          v6 = v29;
        }

        [v4 addObject:v12];

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (!v6)
      {
LABEL_23:

        [*(v1 + 40) authenticationDelegate:*(v1 + 48) didReceiveCredentialDescriptors:v4];
        return;
      }
    }
  }

  v2 = *(a1 + 40);
  v3 = *(v1 + 48);

  [v2 authenticationDelegate:v3 didEncounterError:?];
}

void sub_100002084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000020A0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = a1[4];
    if (v6)
    {
      [a1[4] authenticationDelegate:WeakRetained didEncounterError:v6];
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000021C8;
      v9[3] = &unk_1000083C8;
      objc_copyWeak(&v12, a1 + 6);
      v10 = a1[5];
      v11 = v5;
      [v8 authenticationDelegate:WeakRetained didFinishWithError:0 completionHandler:v9];

      objc_destroyWeak(&v12);
    }
  }
}

void sub_1000021C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[4] storeCredentialsFromServerURL:*(a1 + 32)];
    [v3 _updateRecentServersListWithServer:*(a1 + 32)];
    if ([*(a1 + 40) length])
    {
      v4 = [@"com.apple.SMBClientProvider.FileProvider" stringByAppendingPathComponent:*(a1 + 40)];
      v7 = FPUIAuthenticationProviderDomainIdentifier;
      v8 = v4;
      v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    }

    else
    {
      v5 = &__NSDictionary0__struct;
    }

    v6 = [v3 extensionContext];
    [v6 completeRequestWithUserInfo:v5];
  }
}

void sub_100002538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000255C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000264C;
  v10[3] = &unk_100008440;
  v11 = v6;
  v12 = *(a1 + 32);
  v8 = v6;
  objc_copyWeak(&v14, (a1 + 40));
  v13 = v7;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v14);
}

void sub_10000264C(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002744;
  v7[3] = &unk_100008418;
  v6 = v2;
  v8 = v6;
  objc_copyWeak(&v9, (a1 + 56));
  [v3 authenticationDelegate:WeakRetained didFinishWithError:v5 completionHandler:v7];

  objc_destroyWeak(&v9);
}

void sub_100002744(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [@"com.apple.SMBClientProvider.FileProvider" stringByAppendingPathComponent:?];
    v7 = FPUIAuthenticationProviderDomainIdentifier;
    v8 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v3 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateRecentServersListWithServer:WeakRetained[3]];
    v6 = [v5 extensionContext];
    [v6 completeRequestWithUserInfo:v3];
  }
}

void sub_100003B60(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100003B80(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_100003BB0(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_100003B60(&_mh_execute_header, v2, v3, "Unexpected item in keychain of type %@", v4, v5, v6, v7, 2u);
}

void sub_100003C3C(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_100003B60(&_mh_execute_header, v2, v3, "Unexpected type %@ for username", v4, v5, v6, v7, 2u);
}

void sub_100003CC8(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_100003B60(&_mh_execute_header, v2, v3, "Unexpected type %@ for password data", v4, v5, v6, v7, 2u);
}