void sub_1590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_15C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_15E0(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

id HKHealthDataclassOwnerBundle()
{
  if (qword_C8B0 != -1)
  {
    sub_2730();
  }

  v1 = qword_C8A8;

  return v1;
}

void sub_1694(id a1)
{
  qword_C8A8 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id sub_1C00(uint64_t a1)
{
  [*(a1 + 32) _persistHealthDataclassEnablementState:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _presentHealthDatabaseObliterationAlert];
}

void sub_1E14(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (*(a1 + 56))
    {
      v4 = @"Enabling";
    }

    else
    {
      v4 = @"Disabling";
    }

    *buf = 138543618;
    v12 = v4;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ iCloud Sync for account %@", buf, 0x16u);
  }

  v5 = (a1 + 32);
  [*(a1 + 32) setEnabled:*(a1 + 56) forDataclass:kAccountDataclassHealth];
  objc_initWeak(buf, *(a1 + 40));
  v6 = *(a1 + 48);
  v7 = *v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1FC8;
  v8[3] = &unk_8350;
  v9 = v7;
  objc_copyWeak(&v10, buf);
  [v6 saveAccount:v9 withCompletionHandler:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
}

void sub_1FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1FC8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"no";
    *buf = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Saved %{public}@ with success=%{public}@, error=%{public}@", buf, 0x20u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2120;
  block[3] = &unk_8328;
  objc_copyWeak(&v10, (a1 + 40));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v10);
}

void sub_2120(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadAccount];
}

void sub_2464(id a1, UIAlertAction *a2)
{
  _HKInitializeLogging();
  v2 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "User chose to keep data after disabling iCloud Sync", v3, 2u);
  }
}

void sub_24D0(id a1, UIAlertAction *a2)
{
  v3 = objc_alloc_init(HKHealthStore);
  v2 = [[HKDatabaseControl alloc] initWithHealthStore:v3];
  [v2 obliterateHealthDataWithOptions:1 completion:&stru_8418];
}

void sub_2544(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"no";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "User chose to obliterate data after disabling iCloud Sync (success=%{public}@, error=%{public}@)", &v7, 0x16u);
  }
}

void sub_26C8(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@", buf, 0x16u);
}