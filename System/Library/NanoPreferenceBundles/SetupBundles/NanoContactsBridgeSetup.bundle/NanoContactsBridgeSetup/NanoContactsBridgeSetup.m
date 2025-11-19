void sub_1D28(id a1)
{
  qword_239F8 = os_log_create("com.apple.NanoContacts.ContactsSync", "contacts-dataclass-action-handler");

  _objc_release_x1();
}

id NCABISH_Accounts_log()
{
  if (qword_23A08 != -1)
  {
    sub_DF1C();
  }

  v1 = qword_23A00;

  return v1;
}

void sub_246C(id a1)
{
  qword_23A00 = os_log_create("com.apple.NanoContacts.ContactsSync", "Accounts");

  _objc_release_x1();
}

void sub_2978(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = NCABISH_Accounts_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 136446978;
    v9 = "[NCContactsiCloudSyncHelper setPrimaryiCloudAccountCardDAVEnabled]_block_invoke";
    v10 = 1024;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%d Completed save -- success: %d, error: %{public}@", &v8, 0x22u);
  }
}

id NCABCSH_ContactCounts_log()
{
  if (qword_23A18 != -1)
  {
    sub_E038();
  }

  v1 = qword_23A10;

  return v1;
}

void sub_2E4C(id a1)
{
  qword_23A10 = os_log_create("com.apple.NanoContacts.ContactsSync", "ContactCounts");

  _objc_release_x1();
}

id NCABCSH_Sync_log()
{
  if (qword_23A28 != -1)
  {
    sub_E04C();
  }

  v1 = qword_23A20;

  return v1;
}

void sub_2ED4(id a1)
{
  qword_23A20 = os_log_create("com.apple.NanoContacts.ContactsSync", "Sync");

  _objc_release_x1();
}

void sub_3520(id a1)
{
  qword_23A38 = os_log_create("com.apple.NanoContacts.ContactsSync", "contacts-dataclass-owner");

  _objc_release_x1();
}

void sub_3718(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_E110();
  }
}

void sub_3A4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 addContainer:v2 toAccountWithIdentifier:v5];
}

void sub_3ABC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_E268();
  }
}

void sub_3B1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setContainer:v2 asDefaultContainerOfAccountWithIdentifier:v5];
}

void sub_3B8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_E2D0();
  }
}

void sub_3EFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_E338(v3, a1);
  }
}

void sub_45F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4614(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

CNMutableContact *__cdecl sub_4E18(id a1, CNMutableContact *a2)
{
  v2 = [(CNMutableContact *)a2 mutableCopy];

  return v2;
}

void sub_4ED8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_4F18(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_4FCC(id a1)
{
  qword_23A48 = os_log_create("com.apple.NanoContacts.ContactsSync", "DataAccess");

  _objc_release_x1();
}

void sub_5094(id a1)
{
  v1 = MGGetStringAnswer();
  if (v1)
  {
    v2 = v1;
    byte_23A50 = CFStringCompare(v1, @"CH", 0) == kCFCompareEqualTo;

    CFRelease(v2);
  }

  else
  {
    byte_23A50 = 0;
  }
}

void sub_556C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x18u);
}

id NCABCMS_Tinker_log()
{
  if (qword_23A68 != -1)
  {
    sub_EC30();
  }

  v1 = qword_23A60;

  return v1;
}

void sub_55D0(id a1)
{
  qword_23A60 = os_log_create("com.apple.NanoContacts.ContactsManagement", "Tinker");

  _objc_release_x1();
}

id NCABCMS_Accounts_log()
{
  if (qword_23A78 != -1)
  {
    sub_EC44();
  }

  v1 = qword_23A70;

  return v1;
}

void sub_5658(id a1)
{
  qword_23A70 = os_log_create("com.apple.NanoContacts.ContactsManagement", "Accounts");

  _objc_release_x1();
}

void sub_6518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6544(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = NCABCMS_Tinker_log();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_EF88(v3, a1, v6);
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

void sub_72A0(uint64_t a1)
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

void sub_7EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7EEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processSTContactManagementState:a2 familyMember:*(a1 + 32) error:v5];
}

void sub_99C4(uint64_t a1)
{
  v2 = NCBS_Tinker_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[NCBSBridgeSetupController _promptForiCloudSyncFollowingController:]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s - user chose Enable iCloud Contacts network data access and/or sync", &v6, 0xCu);
  }

  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 24) setNetworkAccessEnabledForContacts:1];
  }

  if (*(a1 + 49) == 1)
  {
    [*(*(a1 + 32) + 16) setPrimaryiCloudAccountCardDAVEnabled];
  }

  sleep(2u);
  v3 = [*(a1 + 32) familyMember];
  [NCABContactsSyncHelper triggerContactsSyncForFamilyMember:v3];

  v4 = [*(a1 + 32) contactsManagementStateManager];
  [v4 setContactsSyncAndNetworkAccessEnabled:{objc_msgSend(*(a1 + 32), "_contactsSyncEnabledWithNetworkAccess")}];
  [v4 setExtendedFamilyMemberContactsSyncTimeout:1];
  if ([v4 contactsSyncAndNetworkAccessEnabled])
  {
    [*(a1 + 32) _updateContactsManagementStateWithHoldWaitUIThenStepCompleteController:*(a1 + 40)];
  }

  else
  {
    v5 = NCBS_Tinker_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_F168();
    }

    [*(a1 + 32) miniFlowStepComplete:*(a1 + 40)];
  }
}

id sub_9B68(uint64_t a1)
{
  v2 = NCBS_Tinker_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[NCBSBridgeSetupController _promptForiCloudSyncFollowingController:]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s - user chose Setup Later", &v4, 0xCu);
  }

  return [*(a1 + 32) miniFlowStepComplete:*(a1 + 40)];
}

void sub_9D7C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9E50;
  block[3] = &unk_1C7B8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = a2;
  v9 = v6;
  v10 = v5;
  v11 = *(a1 + 48);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_9E50(uint64_t a1)
{
  [*(a1 + 32) setShowingHoldWait:0];
  v2 = NCBS_Tinker_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = objc_retainBlock(*(a1 + 56));
    v8 = 136447234;
    v9 = "[NCBSBridgeSetupController _fetchContactsManagementStateWithHoldWaitUIAndCompletionHandler:]_block_invoke_2";
    v10 = 2114;
    v11 = v4;
    v12 = 1024;
    v13 = v3;
    v14 = 2114;
    v15 = v5;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s => completionHandler(%{public}@, %d, %{public}@):%p", &v8, 0x30u);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), *(a1 + 64), *(a1 + 48));
  }

  return result;
}

void sub_A0A8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = NCBS_Tinker_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_F1E8();
    }
  }

  else
  {
    [*(a1 + 32) _updateForContactsManagementState:objc_msgSend(v6 contactsCountStatus:{"lastKnownContactsManagementState"), objc_msgSend(v6, "contactsCountStatus")}];
    v8 = NCBS_Tinker_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) cmsForRunningFlow];
      v10 = 136446722;
      v11 = "[NCBSBridgeSetupController _updateContactsManagementStateWithHoldWaitUIThenStepCompleteController:]_block_invoke";
      v12 = 1024;
      v13 = v9;
      v14 = 1024;
      v15 = [v6 contactsSyncAndNetworkAccessEnabled];
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s - updated cmsForRunningFlow: %d contactsSyncAndNetworkAccessEnabled: %d", &v10, 0x18u);
    }
  }

  [*(a1 + 32) miniFlowStepComplete:*(a1 + 40)];
}

void sub_ADF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = NCBS_Tinker_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_F410();
    }

    v7 = 1;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [objc_opt_class() controllerNeedsToRunForContactsManagementState:a2];
    v10 = NCBS_Tinker_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446722;
      v12 = "[NCBSBridgeSetupController _checkContactsManagementAndEnqueueReleaseHold]_block_invoke";
      v13 = 1024;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s - controllerNeedsToRunForContactsManagementState: %d -> %d", &v11, 0x18u);
    }

    v7 = v9 ^ 1;
  }

  [*(a1 + 32) _enqueueReleaseHoldWithSkip:v7];
}

void sub_B050(uint64_t a1)
{
  v2 = NCBS_Tinker_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8 = 136446466;
    v9 = "[NCBSBridgeSetupController _enqueueReleaseHoldWithSkip:]_block_invoke";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: %d [execute]", &v8, 0x12u);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) delegate];
  v6 = v5;
  v7 = *(a1 + 32);
  if (v4 == 1)
  {
    [v5 buddyControllerReleaseHoldAndSkip:v7];
  }

  else
  {
    [v5 buddyControllerReleaseHold:v7];
  }
}

id NCBS_Tinker_log()
{
  if (qword_23A88 != -1)
  {
    sub_F5A8();
  }

  v1 = qword_23A80;

  return v1;
}

void sub_BE74(id a1)
{
  qword_23A80 = os_log_create("com.apple.NanoContacts.BridgeSetup", "Tinker");

  _objc_release_x1();
}

id NanoContactsBridgeSetupBundle()
{
  if (qword_23A98 != -1)
  {
    sub_F5BC();
  }

  v1 = qword_23A90;

  return v1;
}

void sub_BEFC(id a1)
{
  qword_23A90 = [NSBundle bundleWithIdentifier:NanoContactsBridgeSetupBundleIdentifier];

  _objc_release_x1();
}

void sub_C354(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = NCBS_Tinker_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v7 = "[NCBSTinkerRequestManagementViewController _requestToManageContacts]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s - request completed with error: %{public}@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C47C;
  block[3] = &unk_1C718;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_C660(uint64_t a1)
{
  v2 = [*(a1 + 32) miniFlowDelegate];
  [v2 miniFlowStepComplete:*(a1 + 32)];
}

void sub_DE20(void *a1, NSObject *a2)
{
  v4 = [a1 account];
  v5 = [v4 accountType];
  v6 = [v5 identifier];
  v7 = [a1 account];
  v8 = [v7 username];
  v9 = 138412546;
  v10 = v6;
  v11 = 2112;
  v12 = v8;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to create an AB account for iCloud account %@ (%@)", &v9, 0x16u);
}

void sub_DF30(os_log_t log)
{
  v1 = 136446210;
  v2 = "[NCContactsiCloudSyncHelper primaryiCloudAccountCardDAVEnabled]";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}s - No Apple Account exists for user", &v1, 0xCu);
}

void sub_DFB4(os_log_t log)
{
  v1 = 136446210;
  v2 = "[NCContactsiCloudSyncHelper setPrimaryiCloudAccountCardDAVEnabled]";
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}s - No Apple Account exists for user", &v1, 0xCu);
}

void sub_E060(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136446722;
  v4 = "+[NCABContactsSyncHelper _contactsCountStatusForFamilyMember:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}s - contactCountForFetchRequest: %@ unexpected error: %{public}@", &v3, 0x20u);
}

void sub_E178(void *a1)
{
  v2 = [0 identifier];
  v3 = [a1 valueForKey:@"identifier"];
  sub_4EC0();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x20u);
}

void sub_E338(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  sub_4ECC();
  sub_4F18(&dword_0, v3, v4, "error creating account %@: %@");
}

void sub_E3B0(void *a1)
{
  [a1 identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_4F00() iOSLegacyIdentifier];
  sub_4EA8();
  sub_4E98();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_E44C(void *a1)
{
  [a1 identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_4F00() iOSLegacyIdentifier];
  sub_4EA8();
  sub_4E98();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_E4E8(void *a1)
{
  v1 = [a1 identifier];
  sub_4ECC();
  sub_4EC0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_E578(void *a1)
{
  [a1 identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_4F00() iOSLegacyIdentifier];
  sub_4EA8();
  sub_4E98();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_E67C(void *a1, void *a2, NSObject *a3)
{
  v5 = a1;
  v6 = [a1 identifier];
  LODWORD(v5) = [v5 iOSLegacyIdentifier];
  v7 = [a2 identifier];
  v8 = [a2 externalIdentifierString];
  v9 = 138544386;
  v10 = v6;
  v11 = 1024;
  v12 = v5;
  v13 = 2114;
  v14 = v7;
  v15 = 2114;
  v16 = v8;
  v17 = 1024;
  v18 = [a2 iOSLegacyIdentifier];
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "Found default container (identifier: %{public}@  legacy id = %d) for account (identifier: %{public}@  external identifier: %{public}@ legacy id = %d)", &v9, 0x2Cu);
}

void sub_E790()
{
  sub_4F0C();
  v1 = v0;
  v2 = [v0 identifier];
  v3 = [v1 externalIdentifierString];
  sub_4EF4();
  sub_4EC0();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x20u);
}

void sub_E854()
{
  sub_4F0C();
  v1 = v0;
  v2 = [v0 identifier];
  v3 = [v1 externalIdentifierString];
  [v1 iOSLegacyIdentifier];
  sub_4EF4();
  sub_4E98();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_E930()
{
  sub_4ECC();
  sub_4EF4();
  sub_4F18(&dword_0, v0, v1, "error fetching account with external identifier %{public}@ error: %{public}@");
}

void sub_E9A0()
{
  sub_4F0C();
  [v1 count];
  v2 = [sub_4F00() identifier];
  v3 = [v0 externalIdentifierString];
  [v0 iOSLegacyIdentifier];
  sub_4EF4();
  sub_4E98();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);
}

void sub_EA80()
{
  sub_4F0C();
  v1 = [v0 externalIdentifierString];
  sub_4ECC();
  sub_4EF4();
  sub_4EC0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_EB48()
{
  v2 = 136446722;
  sub_5550();
  sub_556C(&dword_0, v0, v1, "%{public}s - ctError error: %d domain: (%d)", v2);
}

void sub_EBBC()
{
  v2 = 136446722;
  sub_5550();
  sub_556C(&dword_0, v0, v1, "%{public}s - ctError error: %d domain: (%d)", v2);
}

void sub_EC58(void *a1, uint64_t a2, NSObject *a3)
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

void sub_EE08(unsigned int *a1)
{
  v1 = *a1;
  v3[0] = 136446466;
  sub_83FC();
  _os_log_debug_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%{public}s - returning contactsCountStatus:%d", v3, 0x12u);
}

void sub_EE8C(unsigned int *a1)
{
  v1 = *a1;
  v3[0] = 136446466;
  sub_83FC();
  _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%{public}s - unexpected _contactsManagementRequestState: %d; bailing.", v3, 0x12u);
}

void sub_EF88(uint64_t a1, uint64_t a2, os_log_t log)
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

void sub_F028(int *a1, uint64_t a2, os_log_t log)
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

void sub_F0C8(void *a1, NSObject *a2)
{
  v3 = 136446466;
  v4 = "[NCABTinkerContactsManagementStateManager _enableContactsManagementForFamilyMember:request:completionHandler:]";
  v5 = 1024;
  v6 = [a1 lastKnownContactsManagementState];
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}s - WARNING - attemping to enable contacts management from bad state: %d", &v3, 0x12u);
}

void sub_F1E8()
{
  sub_BE1C();
  sub_BE10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_F364(void *a1, NSObject *a2)
{
  v3 = [a1 familyMember];
  v4 = 136446466;
  v5 = "[NCBSBridgeSetupController _checkContactsManagementAndEnqueueReleaseHold]";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}s - !contactsManagementStateManager with self.familyMember: %@", &v4, 0x16u);
}

void sub_F410()
{
  sub_BE1C();
  sub_BE10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}