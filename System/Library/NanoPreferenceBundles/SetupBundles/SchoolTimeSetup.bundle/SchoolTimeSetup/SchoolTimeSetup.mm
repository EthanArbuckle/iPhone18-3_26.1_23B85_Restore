id scl_setup_log()
{
  if (qword_CE78 != -1)
  {
    sub_2DB4();
  }

  v1 = qword_CE70;

  return v1;
}

void sub_F6C(id a1)
{
  qword_CE70 = os_log_create("com.apple.SchoolTime", "Setup");

  _objc_release_x1();
}

void sub_1420(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _os_activity_create(&dword_0, "Commit View Model", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);
  v5 = [v3 userInfo];
  v6 = [v5 objectForKey:NRPairedDeviceRegistryDevice];

  v7 = scl_setup_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 pairingID];
    *buf = 138412290;
    v11 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Paired device %@", buf, 0xCu);
  }

  [*(a1 + 32) _commitViewModel:*(a1 + 40) toDevice:v6 retryIfNeeded:1];
  os_activity_scope_leave(&v9);
}

void sub_1594(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:NRPairedDeviceRegistryDevice];

  v5 = scl_framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_2DC8(v4, v5);
  }

  [*(a1 + 32) _pairingFailedToDevice:v4];
}

void sub_186C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = scl_setup_log();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) pairingID];
      *buf = 138412546;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Configured settings %@ to device %@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_2E60(a1, v5, v7);
    }

    v10 = [v5 domain];
    if ([v10 isEqualToString:NSCocoaErrorDomain] && objc_msgSend(v5, "code") == &loc_1000 + 3)
    {
      v11 = *(a1 + 64);

      if (v11)
      {
        v12 = _os_activity_create(&dword_0, "Retry SchoolTime commit", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
        *buf = 0;
        *&buf[8] = 0;
        os_activity_scope_enter(v12, buf);
        v13 = scl_setup_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_2F18(v13, v14, v15, v16, v17, v18, v19, v20);
        }

        v21 = dispatch_time(0, 10000000000);
        v25 = _NSConcreteStackBlock;
        v26 = 3221225472;
        v27 = sub_1B00;
        v28 = &unk_8308;
        v22 = *(a1 + 48);
        v23 = *(a1 + 56);
        v29 = v12;
        v30 = v22;
        v31 = v23;
        v32 = *(a1 + 40);
        v24 = v12;
        dispatch_after(v21, &_dispatch_main_q, &v25);

        os_activity_scope_leave(buf);
      }
    }

    else
    {
    }
  }

  [*(a1 + 48) setSchoolMode:{0, v25, v26, v27, v28}];
  [*(a1 + 48) _unregisterPairingTokens];
}

void sub_1B00(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = scl_setup_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Retrying commit", v3, 2u);
  }

  [*(a1 + 40) _commitViewModel:*(a1 + 48) toDevice:*(a1 + 56) retryIfNeeded:0];
  os_activity_scope_leave(&state);
}

void sub_2034(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_2DC8(void *a1, NSObject *a2)
{
  v3 = [a1 pairingID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to pair device %@", &v4, 0xCu);
}

void sub_2E60(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 40) pairingID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Failed to send settings to device %@; %@", &v6, 0x16u);
}

void sub_2F50(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "SCLSetupPrincipleClass No family member in setupFlowUserInfo %@", &v2, 0xCu);
}

void sub_3038(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "No family member in setupFlowUserInfo %@", &v2, 0xCu);
}