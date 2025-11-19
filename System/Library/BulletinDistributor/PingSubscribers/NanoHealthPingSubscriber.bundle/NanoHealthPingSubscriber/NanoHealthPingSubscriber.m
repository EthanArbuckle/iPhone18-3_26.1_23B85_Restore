void sub_BE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogNotifications;
  if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v26 = 138543618;
    v27 = objc_opt_class();
    v28 = 2112;
    v29 = v5;
    v10 = v27;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] received notification: %@", &v26, 0x16u);
  }

  if (v6)
  {
    v11 = [v5 request];
    v12 = [v11 content];
    v13 = [v12 userInfo];
    v14 = kHKNotificationsSuppressNotificationForwardingKey;
    v15 = [v13 objectForKeyedSubscript:kHKNotificationsSuppressNotificationForwardingKey];
    v16 = [v15 isEqual:&__kCFBooleanTrue];

    if (v16)
    {
      _HKInitializeLogging();
      v17 = HKLogNotifications;
      if (os_log_type_enabled(HKLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v19 = v17;
        v20 = objc_opt_class();
        v21 = v20;
        v22 = [v5 request];
        v23 = [v22 content];
        v24 = [v23 categoryIdentifier];
        v26 = 138543874;
        v27 = v20;
        v28 = 2114;
        v29 = v24;
        v30 = 2114;
        v31 = v14;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification with identifier %{public}@ has key %{public}@, suppressing forwarding to watch", &v26, 0x20u);
      }

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v6[2](v6, v25);
  }
}