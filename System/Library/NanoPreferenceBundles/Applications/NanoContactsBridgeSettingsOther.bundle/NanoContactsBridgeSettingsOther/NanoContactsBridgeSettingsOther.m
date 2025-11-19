id NCBST_Tinker_log()
{
  if (qword_10E50 != -1)
  {
    sub_5A38();
  }

  v1 = qword_10E48;

  return v1;
}

void sub_109C(id a1)
{
  qword_10E48 = os_log_create("com.apple.NanoContactsBridgeSettingsTinker", "Tinker");

  _objc_release_x1();
}

id NanoContactsSettingsTinkerBundle()
{
  if (qword_10E60 != -1)
  {
    sub_5A4C();
  }

  v1 = qword_10E58;

  return v1;
}

void sub_1124(id a1)
{
  qword_10E58 = [NSBundle bundleWithIdentifier:@"com.apple.NanoContactsBridgeSettingsTinker"];

  _objc_release_x1();
}

id NCABCMS_Tinker_log()
{
  if (qword_10E70 != -1)
  {
    sub_5A60();
  }

  v1 = qword_10E68;

  return v1;
}

void sub_11B0(id a1)
{
  qword_10E68 = os_log_create("com.apple.NanoContacts.ContactsManagement", "Tinker");

  _objc_release_x1();
}

id NCABCMS_Accounts_log()
{
  if (qword_10E80 != -1)
  {
    sub_5A74();
  }

  v1 = qword_10E78;

  return v1;
}

void sub_1238(id a1)
{
  qword_10E78 = os_log_create("com.apple.NanoContacts.ContactsManagement", "Accounts");

  _objc_release_x1();
}

void sub_20F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2124(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = NCABCMS_Tinker_log();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_5DB8(v3, a1, v6);
    }

    [WeakRetained _updateContactsManagementState:*(a1 + 40) error:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446210;
      v8 = "[NCABTinkerContactsManagementStateManager _updateContactsManagementState:error:]_block_invoke";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - _enableContactsManagementForFamilyMember completed, restarting state fetch", &v7, 0xCu);
    }

    [WeakRetained _startFetchingContactsManagementState];
  }
}

void sub_2E80(uint64_t a1)
{
  [*(a1 + 32) _removeContactsCountRetryAndTimeoutHandlers_SYNC];
  v2 = NCABCMS_Tinker_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) contactsCountSyncStatusRetryTimeoutDate];
    v14 = 136446466;
    v15 = "[NCABTinkerContactsManagementStateManager _installContactsCountRetryAndTimeoutHandlers]_block_invoke";
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%{public}s - contactsCountSyncStatusRetryTimeoutDate:%{public}@", &v14, 0x16u);
  }

  v4 = [*(a1 + 32) contactsCountSyncStatusRetryTimeoutDate];
  [v4 timeIntervalSinceNow];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v10 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) contactsCountSyncStatusRetryTimeoutDate];
      v14 = 136446722;
      v15 = "[NCABTinkerContactsManagementStateManager _installContactsCountRetryAndTimeoutHandlers]_block_invoke";
      v16 = 2114;
      v17 = v13;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - NO TIMER - contactsCountSyncStatusRetryTimeoutDate:%{public}@, remainingTimeoutSeconds:%0.2f", &v14, 0x20u);
    }
  }

  else
  {
    [*(a1 + 32) contactsCountSyncStatusRetryTimeoutInterval];
    v7 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"__contactsSyncTimeoutTimer:" selector:0 userInfo:0 repeats:?];
    [*(a1 + 32) setContactsCountSyncStatusRetryTimeoutTimer:v7];

    v8 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"__contactsSyncRetryTimer:" selector:0 userInfo:1 repeats:3.0];
    [*(a1 + 32) setContactsCountSyncStatusRetryTimer:v8];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:*(a1 + 32) selector:"__contactStoreDidChange:" name:CNContactStoreDidChangeNotification object:0];

    v10 = NCABCMS_Tinker_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) contactsCountSyncStatusRetryTimeoutDate];
      v12 = [*(a1 + 32) contactsCountSyncStatusRetryTimeoutTimer];
      v14 = 136446978;
      v15 = "[NCABTinkerContactsManagementStateManager _installContactsCountRetryAndTimeoutHandlers]_block_invoke";
      v16 = 2114;
      v17 = v11;
      v18 = 2048;
      v19 = v6;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - SET TIMER - contactsCountSyncStatusRetryTimeoutDate:%{public}@, remainingTimeoutSeconds:%0.2f, contactsCountSyncStatusRetryTimeoutTimer:%{public}@", &v14, 0x2Au);
    }
  }
}

void sub_3AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3ACC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processSTContactManagementState:a2 familyMember:*(a1 + 32) error:v5];
}

void sub_3FDC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_4154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4180(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = NCBST_Tinker_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    v15 = "[NCABSettingsTinkerController init]_block_invoke";
    v16 = 2112;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%{public}s - found familyMember: %@, error: %{public}@", buf, 0x20u);
  }

  v9 = NCBST_Tinker_log();
  v10 = v9;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_5F98(v6, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v15 = "[NCABSettingsTinkerController init]_block_invoke";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - got familyMember: %@", buf, 0x16u);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_4380;
    v11[3] = &unk_C3E0;
    v12 = WeakRetained;
    v13 = v5;
    dispatch_async(&_dispatch_main_q, v11);

    v10 = v12;
  }
}

void sub_45BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_45E8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = NCBST_Tinker_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) familyMember];
    *buf = 136446722;
    v9 = "[NCABSettingsTinkerController setTinkerFamilyMember:]_block_invoke";
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - received contacts management state: %d for familyMember: %@; reloading", buf, 0x1Cu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4734;
  block[3] = &unk_C388;
  block[4] = WeakRetained;
  dispatch_async(&_dispatch_main_q, block);
}

id NCABCSH_ContactCounts_log()
{
  if (qword_10E90 != -1)
  {
    sub_60B0();
  }

  v1 = qword_10E88;

  return v1;
}

void sub_53A8(id a1)
{
  qword_10E88 = os_log_create("com.apple.NanoContacts.ContactsSync", "ContactCounts");

  _objc_release_x1();
}

id NCABCSH_Sync_log()
{
  if (qword_10EA0 != -1)
  {
    sub_60C4();
  }

  v1 = qword_10E98;

  return v1;
}

void sub_5430(id a1)
{
  qword_10E98 = os_log_create("com.apple.NanoContacts.ContactsSync", "Sync");

  _objc_release_x1();
}

void sub_5A88(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 familyMember];
  v6 = 136446722;
  v7 = "+[NCABTinkerContactsManagementStateManager managerForBuddyControllerDelegate:]";
  v8 = 2112;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "%{public}s - familyMember mismatch; prior: %@, latest: %@", &v6, 0x20u);
}

void sub_5C38(unsigned int *a1)
{
  v1 = *a1;
  v3[0] = 136446466;
  sub_3FF8();
  _os_log_debug_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%{public}s - returning contactsCountStatus:%d", v3, 0x12u);
}

void sub_5CBC(unsigned int *a1)
{
  v1 = *a1;
  v3[0] = 136446466;
  sub_3FF8();
  _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%{public}s - unexpected _contactsManagementRequestState: %d; bailing.", v3, 0x12u);
}

void sub_5DB8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 40);
  v4 = 136446722;
  v5 = "[NCABTinkerContactsManagementStateManager _updateContactsManagementState:error:]_block_invoke";
  v6 = 2114;
  v7 = a1;
  v8 = 1024;
  v9 = v3;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}s - _enableContactsManagementForFamilyMember produced error: %{public}@; re-updating to state: %d", &v4, 0x1Cu);
}

void sub_5E58(int *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  v5 = 136446722;
  v6 = "[NCABTinkerContactsManagementStateManager __contactsSyncRetryNow]";
  v7 = 1024;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}s - unexpected _contactsManagementRequestState: %d, _contactsManagementState: %d", &v5, 0x18u);
}

void sub_5EF8(void *a1, NSObject *a2)
{
  v3 = 136446466;
  v4 = "[NCABTinkerContactsManagementStateManager _enableContactsManagementForFamilyMember:request:completionHandler:]";
  v5 = 1024;
  v6 = [a1 lastKnownContactsManagementState];
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}s - WARNING - attemping to enable contacts management from bad state: %d", &v3, 0x12u);
}

void sub_5F98(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[NCABSettingsTinkerController init]_block_invoke";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}s - error: %{public}@", &v2, 0x16u);
}

void sub_6024(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[NCABSettingsTinkerController specifiers]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}s - no tinkerUserName for tinkerFamilyMember: %@", &v2, 0x16u);
}

void sub_60D8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136446722;
  v4 = "+[NCABContactsSyncHelper _contactsCountStatusForFamilyMember:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}s - contactCountForFetchRequest: %@ unexpected error: %{public}@", &v3, 0x20u);
}