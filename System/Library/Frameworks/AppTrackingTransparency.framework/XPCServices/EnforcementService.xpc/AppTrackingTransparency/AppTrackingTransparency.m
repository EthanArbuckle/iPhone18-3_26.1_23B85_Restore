int main(int argc, const char **argv, const char **envp)
{
  signal(15, 1);
  v3 = dispatch_get_global_queue(21, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v3);
  dispatch_source_set_event_handler(v4, &stru_1000042F0);
  dispatch_activate(v4);
  v5 = objc_opt_new();
  v6 = +[NSXPCListener serviceListener];
  [v6 setDelegate:v5];
  [v6 resume];

  return 0;
}

void sub_100001830(id a1)
{
  v1 = qword_100008BF0;
  qword_100008BF0 = @"AppTrackingTransparency";
}

void sub_10000188C(id a1)
{
  v1 = qword_100008C00;
  qword_100008C00 = @"1";
}

void sub_100001E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100001E28(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (v7 && a3)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v7 BOOLValue];
  }

  else if (v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 138412546;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = v9;
    v11 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Error getting 'IsAppTrackingTransparencyEnforced': %@", &v12, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100001F3C(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (v7 && a3)
  {
    *(*(*(a1 + 48) + 8) + 24) = [ATEnforcementService reasonCodeFromNumberValue:v7];
  }

  else if (v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 138412546;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = v9;
    v11 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Error getting 'AppTrackingTransparencyEnforcementReason': %@", &v12, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100002058(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[4];
    *v6 = 138412290;
    *&v6[4] = objc_opt_class();
    v3 = *&v6[4];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Bag fetch complete. Updating keychain.", v6, 0xCu);
  }

  v4 = [NSNumber numberWithInteger:*(*(a1[6] + 8) + 24), *v6];
  v5 = [NSNumber numberWithBool:*(*(a1[7] + 8) + 24)];
  [ATKeychainStore setObject:v5 forKey:@"EnforcementService.enforced"];

  [ATKeychainStore setObject:v4 forKey:@"EnforcementService.reasonCode"];
  [ATKeychainStore setObject:a1[5] forKey:@"EnforcementService.lastBagLookup"];
}

void sub_1000022A4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATKeychainStore.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}