uint64_t sub_1C78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_226C(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_266C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 66;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t sub_26EC(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void sub_32D0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location)
{
  *(v15 - 248) = a1;
  *(v15 - 252) = a2;
  objc_destroyWeak((v15 - 240));
  _Unwind_Resume(*(v15 - 248));
}

uint64_t sub_332C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 64;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

void sub_33B0(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained((a1 + 40));
  [v6[0] setReloading:0];
  if (v7)
  {
    [ACUIRemoteAccountsAnalytics reportAccountActionErrorForAccount:0 action:2 error:v7];
  }

  else
  {
    v3 = [ACUIUtils sortedAccountsFromAccounts:location[0]];
    [v6[0] setAccounts:?];

    [v6[0] _notifyAccountsChanged];
  }

  (*(*(a1 + 32) + 16))();
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void sub_39A4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id *location)
{
  *(v17 - 168) = a1;
  *(v17 - 172) = a2;
  objc_destroyWeak((v17 - 160));
  _Unwind_Resume(*(v17 - 168));
}

uint64_t sub_3A00(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 66;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

void sub_3A84(uint64_t a1, char a2, id obj)
{
  v15 = a1;
  v14 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained((a1 + 48));
  if (v14)
  {
    v11 = ([v12[0] _isExisitingAccount:*(a1 + 32)] ^ 1) & 1;
    v9 = [v12[0] accounts];
    v8 = [v9 arrayByAddingObject:*(a1 + 32)];
    v7 = [ACUIUtils sortedAccountsFromAccounts:?];
    [v12[0] setAccounts:?];

    if (v11)
    {
      [v12[0] _notifyAccountsInvalidated];
    }

    else
    {
      [v12[0] _notifyAccountsChanged];
    }

    v4 = *(a1 + 32);
    v3 = 0;
    if ((v11 & 1) == 0)
    {
      v3 = 3;
    }

    v5 = v3;
    v6 = [v12[0] topLevelAccounts];
    +[ACUIRemoteAccountsAnalytics reportAccountActionForAccount:action:numberOfAccounts:](ACUIRemoteAccountsAnalytics, "reportAccountActionForAccount:action:numberOfAccounts:", v4, v5, [v6 count]);
  }

  else
  {
    [ACUIRemoteAccountsAnalytics reportAccountActionErrorForAccount:*(a1 + 32) action:0 error:location];
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(v12, 0);
  objc_storeStrong(&location, 0);
}

void sub_416C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id *location)
{
  *(v17 - 168) = a1;
  *(v17 - 172) = a2;
  objc_destroyWeak((v17 - 160));
  _Unwind_Resume(*(v17 - 168));
}

void sub_41C8(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v4[1] = a1;
  v4[0] = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    [v4[0] _notifyAccountsInvalidated];
  }

  else
  {
    [ACUIRemoteAccountsAnalytics reportAccountActionErrorForAccount:*(a1 + 32) action:3 error:location];
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(v4, 0);
  objc_storeStrong(&location, 0);
}

void sub_4754(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id *location)
{
  *(v17 - 168) = a1;
  *(v17 - 172) = a2;
  objc_destroyWeak((v17 - 160));
  _Unwind_Resume(*(v17 - 168));
}

void sub_47B0(uint64_t a1, char a2, id obj)
{
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9[1] = a1;
  v9[0] = objc_loadWeakRetained((a1 + 48));
  if (v11)
  {
    v3 = *(a1 + 32);
    v5 = [v9[0] accounts];
    v4 = [v9[0] _removeAccount:v3 fromArray:?];
    [v9[0] setAccounts:?];

    [v9[0] _notifyAccountsChanged];
    v6 = *(a1 + 32);
    v7 = [v9[0] topLevelAccounts];
    +[ACUIRemoteAccountsAnalytics reportAccountActionForAccount:action:numberOfAccounts:](ACUIRemoteAccountsAnalytics, "reportAccountActionForAccount:action:numberOfAccounts:", v6, 1, [v7 count]);
  }

  else
  {
    [ACUIRemoteAccountsAnalytics reportAccountActionErrorForAccount:*(a1 + 32) action:1 error:location];
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(v9, 0);
  objc_storeStrong(&location, 0);
}

void sub_4A78(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_4BF0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_4D10(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  memset(__b, 0, sizeof(__b));
  obj = [*(a1 + 32) observers];
  v8 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v8)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v8;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v4);
      [v10 syncControllerAccountsChanged:{*(a1 + 32), v5}];
      ++v4;
      v5 = v1;
      if (v2 + 1 >= v1)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }
}

void sub_4F60(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  memset(__b, 0, sizeof(__b));
  obj = [*(a1 + 32) observers];
  v8 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v8)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v8;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v4);
      [v10 syncControllerAccountsInvalidated:{*(a1 + 32), v5}];
      ++v4;
      v5 = v1;
      if (v2 + 1 >= v1)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }
}

void sub_51B0(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  memset(__b, 0, sizeof(__b));
  obj = [*(a1 + 32) observers];
  v8 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v8)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v8;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v4);
      [v10 syncControllerStateChanged:{*(a1 + 32), v5}];
      ++v4;
      v5 = v1;
      if (v2 + 1 >= v1)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }
}

id sub_64A4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_22870;
  v13 = qword_22870;
  if (!qword_22870)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_8054;
    v6 = &unk_1C460;
    v7 = &v9;
    sub_8054(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

id sub_65D4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_22880;
  v13 = qword_22880;
  if (!qword_22880)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_82C0;
    v6 = &unk_1C460;
    v7 = &v9;
    sub_82C0(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

void sub_746C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 32) = a1;
  *(v10 - 36) = a2;
  objc_destroyWeak((v10 - 24));
  _Unwind_Resume(*(v10 - 32));
}

void sub_74AC(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained(a1 + 4);
  if (v14)
  {
    v3 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_75F8;
    v11 = &unk_1C410;
    v12 = v13[0];
    dispatch_async(queue, &v7);

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void sub_75F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [NSBundle localizedStringForKey:v5 value:"localizedStringForKey:value:table:" table:@"FAILED_TO_LOAD_ACCOUNTS"];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [(NSBundle *)v3 localizedStringForKey:@"PLEASE_TRY_AGAIN" value:&stru_1C810 table:@"Localizable"];
  [v1 _displayAlertWithTitle:v4 message:?];
}

uint64_t sub_8054(uint64_t a1)
{
  sub_80FC();
  Class = objc_getClass("NMCUICloudNotificationAccountDataSource");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_22870 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_80FC()
{
  v2 = 0;
  v1 = sub_8178(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t sub_8178(uint64_t a1)
{
  v10 = a1;
  v8 = qword_22878;
  v9 = qword_22878;
  if (!qword_22878)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_822C;
    v6 = &unk_1C498;
    v7 = v10;
    sub_822C(&v2);
  }

  return qword_22878;
}

uint64_t sub_822C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_22878 = result;
  return result;
}

uint64_t sub_82C0(uint64_t a1)
{
  sub_80FC();
  Class = objc_getClass("NMCUISpecifierController");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_22880 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_92B0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 64;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t sub_936C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_A7C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t sub_B1B8(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

void sub_C044(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained((a1 + 40));
  if (v3[0])
  {
    [v3[0] reloadSpecifier:*(a1 + 32) animated:1];
  }

  objc_storeStrong(v3, 0);
  objc_storeStrong(location, 0);
}

void sub_C0D4(uint64_t a1, char a2, id obj)
{
  v26 = a1;
  v25 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v23[1] = a1;
  v23[0] = _ACUILogSystem();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_26EC(v29, "[ACUIRemoteAccountDataclassViewController dataclassSwitchStateDidChange:withSpecifier:]_block_invoke", 282);
    _os_log_impl(&dword_0, v23[0], v22, "%s (%d) Finished updating account on remote device", v29, 0x12u);
  }

  objc_storeStrong(v23, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v25)
  {
    oslog = _ACUILogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) account];
      v5 = [v6 identifier];
      sub_1C78(v27, "[ACUIRemoteAccountDataclassViewController dataclassSwitchStateDidChange:withSpecifier:]_block_invoke_2", 290, v5);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "%s (%d) Successfully updated account: %{public}@", v27, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    v4 = [*(a1 + 32) account];
    [v4 setEnabled:objc_msgSend(*(a1 + 40) forDataclass:{"BOOLValue"), *(a1 + 48)}];

    [*(a1 + 32) setDidModifyAccount:1];
  }

  else
  {
    v20 = _ACUILogSystem();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v8 = location;
      v10 = [*(a1 + 32) account];
      v9 = [v10 identifier];
      sub_332C(v28, "[ACUIRemoteAccountDataclassViewController dataclassSwitchStateDidChange:withSpecifier:]_block_invoke", 285, v8, v9);
      _os_log_error_impl(&dword_0, v20, v19, "%s (%d) Failed to update account to device, Error: %{public}@, Account: %@", v28, 0x26u);
    }

    objc_storeStrong(&v20, 0);
    v3 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_C518;
    v17 = &unk_1C410;
    v18 = WeakRetained;
    dispatch_async(queue, &v13);

    objc_storeStrong(&v18, 0);
  }

  dispatch_source_cancel(*(a1 + 56));
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&location, 0);
}

void sub_C9A8(uint64_t a1, int a2)
{
  *(v2 - 128) = a1;
  *(v2 - 132) = a2;
  objc_destroyWeak((v2 - 80));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(*(v2 - 128));
}

void sub_C9D4(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained(a1 + 4);
  v14 = _ACUILogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v15[0] account];
    v4 = [v5 identifier];
    sub_1C78(v17, "[ACUIRemoteAccountDataclassViewController deleteButtonTapped:]_block_invoke", 308, v4);
    _os_log_impl(&dword_0, v14, v13, "%s (%d) Beginning deletion request for account: %{public}@", v17, 0x1Cu);
  }

  objc_storeStrong(&v14, 0);
  [v15[0] setDeleting:1];
  v3 = [v15[0] syncController];
  v2 = [v15[0] account];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_CC48;
  v11 = &unk_1C558;
  v12 = v15[0];
  [v3 removeRemoteAccount:v2 completion:&v7];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(v15, 0);
  objc_storeStrong(location, 0);
}

void sub_CC48(id *a1, char a2, id obj)
{
  v34 = a1;
  v33 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v31[1] = a1;
  v31[0] = _ACUILogSystem();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31[0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = [a1[4] account];
    v11 = [v12 identifier];
    sub_1C78(v37, "[ACUIRemoteAccountDataclassViewController deleteButtonTapped:]_block_invoke", 311, v11);
    _os_log_impl(&dword_0, v31[0], v30, "%s (%d) Finished deletion request for account: %{public}@", v37, 0x1Cu);
  }

  objc_storeStrong(v31, 0);
  [a1[4] setDeleting:0];
  if (v33)
  {
    oslog = _ACUILogSystem();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [a1[4] account];
      v6 = [v7 identifier];
      sub_266C(v35, "[ACUIRemoteAccountDataclassViewController deleteButtonTapped:]_block_invoke_2", 319, v6, location);
      _os_log_impl(&dword_0, oslog, v20, "%s (%d) Successfully removed account from device, account: %{public}@, error: %{public}@", v35, 0x26u);
    }

    objc_storeStrong(&oslog, 0);
    [a1[4] setDidDeleteAccount:1];
    v4 = &_dispatch_main_q;
    v5 = &_dispatch_main_q;
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_D170;
    v18 = &unk_1C410;
    v19 = a1[4];
    dispatch_async(v5, &v14);

    objc_storeStrong(&v19, 0);
  }

  else
  {
    v29 = _ACUILogSystem();
    v28 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v10 = [a1[4] account];
      v9 = [v10 identifier];
      sub_266C(v36, "[ACUIRemoteAccountDataclassViewController deleteButtonTapped:]_block_invoke", 314, v9, location);
      _os_log_error_impl(&dword_0, v29, v28, "%s (%d) Failed to remove account from device, account: %{public}@, error: %{public}@", v36, 0x26u);
    }

    objc_storeStrong(&v29, 0);
    v3 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v22 = _NSConcreteStackBlock;
    v23 = -1073741824;
    v24 = 0;
    v25 = sub_D13C;
    v26 = &unk_1C410;
    v27 = a1[4];
    dispatch_async(queue, &v22);

    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(&location, 0);
}

id sub_D4D8(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v7 = [a1[4] cancelButton];
  [v7 setEnabled:{objc_msgSend(a1[4], "isSaving") ^ 1}];

  if ([a1[4] isSaving])
  {
    v10[0] = [[UIActivityIndicatorView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v1 = [UIBarButtonItem alloc];
    v9 = [v1 initWithCustomView:v10[0]];
    [v10[0] startAnimating];
    v5 = v9;
    v6 = [a1[4] navigationItem];
    [v6 setRightBarButtonItem:v5];

    objc_storeStrong(&v9, 0);
    objc_storeStrong(v10, 0);
  }

  else
  {
    v4 = [a1[4] doneButton];
    v3 = [a1[4] navigationItem];
    [v3 setRightBarButtonItem:v4];
  }

  return [a1[4] reloadSpecifiers];
}

void sub_DAC4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id *location)
{
  *(v14 - 104) = a1;
  *(v14 - 108) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v14 - 96));
  v15 = *(v14 - 104);
  JUMPOUT(0xDB08);
}

void sub_DB10(id *a1, char a2, id obj)
{
  v38 = a1;
  v37 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v35[1] = a1;
  v35[0] = objc_loadWeakRetained(a1 + 5);
  v34 = _ACUILogSystem();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v35[0] account];
    v12 = [v13 identifier];
    sub_1C78(v41, "[ACUIRemoteAccountDataclassViewController doneButtonTapped:]_block_invoke", 388, v12);
    _os_log_impl(&dword_0, v34, v33, "%s (%d) Finished saving to remote device for account: %{public}@", v41, 0x1Cu);
  }

  objc_storeStrong(&v34, 0);
  [v35[0] setSaving:0];
  if (v37)
  {
    oslog = _ACUILogSystem();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v35[0] account];
      v6 = [v7 identifier];
      sub_1C78(v39, "[ACUIRemoteAccountDataclassViewController doneButtonTapped:]_block_invoke_2", 396, v6);
      _os_log_impl(&dword_0, oslog, v23, "%s (%d) Successfully savd to remote device for account: %{public}@", v39, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    v4 = &_dispatch_main_q;
    v5 = &_dispatch_main_q;
    v15 = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_E084;
    v19 = &unk_1C5D0;
    objc_copyWeak(&v22, a1 + 5);
    v20 = a1[4];
    v21 = v35[0];
    dispatch_async(v5, &v15);

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_destroyWeak(&v22);
  }

  else
  {
    v32 = _ACUILogSystem();
    v31 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v9 = location;
      v11 = [v35[0] account];
      v10 = [v11 identifier];
      sub_266C(v40, "[ACUIRemoteAccountDataclassViewController doneButtonTapped:]_block_invoke", 391, v9, v10);
      _os_log_error_impl(&dword_0, v32, v31, "%s (%d) Failed to save account to device, Error: %{public}@, Account: %{public}@", v40, 0x26u);
    }

    objc_storeStrong(&v32, 0);
    v3 = &_dispatch_main_q;
    queue = &_dispatch_main_q;
    v25 = _NSConcreteStackBlock;
    v26 = -1073741824;
    v27 = 0;
    v28 = sub_E048;
    v29 = &unk_1C410;
    v30 = v35[0];
    dispatch_async(queue, &v25);

    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(v35, 0);
  objc_storeStrong(&location, 0);
}

void sub_E084(id *a1)
{
  v21[2] = a1;
  v21[1] = a1;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_E3FC;
  v18 = &unk_1C5A8;
  objc_copyWeak(&v20, a1 + 6);
  v19 = a1[4];
  v21[0] = objc_retainBlock(&v14);
  v10 = objc_alloc(sub_E514());
  v9 = [ACUICloudNotificationAccountDataSource alloc];
  v7 = [a1[5] syncController];
  v8 = [(ACUICloudNotificationAccountDataSource *)v9 initWithAccountDataSource:?];
  v13 = [v10 initWithAccountDataSource:v8];

  [v13 setShowsAlerts:1];
  v6 = [a1[5] account];
  v4 = [v6 nmcuiAccount];
  v5 = [v13 shouldPromptToEnableNotifications:?];

  if (v5)
  {
    v3 = objc_alloc(sub_E644());
    v2 = [a1[5] account];
    v1 = [v2 nmcuiAccount];
    location = [v3 initWithAccount:? dataSource:? completion:?];

    [a1[5] presentViewController:location animated:1 completion:0];
    objc_storeStrong(&location, 0);
  }

  else
  {
    (*(v21[0] + 2))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v19, 0);
  objc_destroyWeak(&v20);
}

void sub_E3FC(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 5);
  v4 = [location[0] rootController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v2 = [a1[4] rootController];
    v1 = [a1[4] account];
    [v2 controller:location[0] didFinishSettingUpAccount:?];
  }

  else
  {
    [location[0] _dismiss];
  }

  objc_storeStrong(location, 0);
}

id sub_E514()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_22888;
  v13 = qword_22888;
  if (!qword_22888)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_FA30;
    v6 = &unk_1C460;
    v7 = &v9;
    sub_FA30(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

id sub_E644()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_22898;
  v13 = qword_22898;
  if (!qword_22898)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_FC9C;
    v6 = &unk_1C460;
    v7 = &v9;
    sub_FC9C(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

void sub_F0E0(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = a1;
  v3 = *(a1 + 32);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_F1EC;
  v8 = &unk_1C620;
  objc_copyWeak(&v9, (a1 + 40));
  v10 = *(a1 + 48) & 1;
  [v3 dismissViewControllerAnimated:1 completion:&v4];
  objc_destroyWeak(&v9);
  objc_storeStrong(location, 0);
}

void sub_F1EC(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40))
  {
    [location[0] _dismiss];
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_FA30(uint64_t a1)
{
  sub_FAD8();
  Class = objc_getClass("NMCUICloudNotificationAccountDataSource");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_22888 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_FAD8()
{
  v2 = 0;
  v1 = sub_FB54(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t sub_FB54(uint64_t a1)
{
  v10 = a1;
  v8 = qword_22890;
  v9 = qword_22890;
  if (!qword_22890)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_FC08;
    v6 = &unk_1C498;
    v7 = v10;
    sub_FC08(&v2);
  }

  return qword_22890;
}

uint64_t sub_FC08(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_22890 = result;
  return result;
}

uint64_t sub_FC9C(uint64_t a1)
{
  sub_FAD8();
  Class = objc_getClass("NMCUICloudNotificationOnboardingViewController");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_22898 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_FFAC(id a1, ACAccount *a2, unint64_t a3, BOOL *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = objc_alloc(sub_10044());
  v6 = [v4 initWithACAccount:location[0]];
  objc_storeStrong(location, 0);

  return v6;
}

id sub_10044()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_228A0;
  v13 = qword_228A0;
  if (!qword_228A0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10584;
    v6 = &unk_1C460;
    v7 = &v9;
    sub_10584(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_10584(uint64_t a1)
{
  sub_1062C();
  Class = objc_getClass("NMCUIAccount");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_228A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1062C()
{
  v2 = 0;
  v1 = sub_106A8(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t sub_106A8(uint64_t a1)
{
  v10 = a1;
  v8 = qword_228A8;
  v9 = qword_228A8;
  if (!qword_228A8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1075C;
    v6 = &unk_1C498;
    v7 = v10;
    sub_1075C(&v2);
  }

  return qword_228A8;
}

uint64_t sub_1075C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_228A8 = result;
  return result;
}

NSDictionary *sub_10990(uint64_t a1)
{
  v6[0] = @"account_type";
  v7[0] = *(a1 + 32);
  v6[1] = @"action_type";
  v5 = [*(a1 + 40) _descriptionForAction:*(a1 + 48)];
  v7[1] = v5;
  v6[2] = @"account_number";
  v3 = [NSNumber numberWithInteger:*(a1 + 56)];
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

NSDictionary *sub_10CB4(uint64_t a1)
{
  v8[0] = @"account_type";
  v9[0] = *(a1 + 32);
  v8[1] = @"action_type";
  v6 = [*(a1 + 48) _descriptionForAction:*(a1 + 56)];
  v9[1] = v6;
  v8[2] = @"error_domain";
  v7 = [*(a1 + 40) domain];
  if (v7)
  {
    v4 = v7;
  }

  else
  {
    v4 = &stru_1C810;
  }

  v9[2] = v4;
  v8[3] = @"error_code";
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) code]);
  v9[3] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v3;
}

id sub_10FC4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_228B0;
  v13 = qword_228B0;
  if (!qword_228B0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_110F4;
    v6 = &unk_1C460;
    v7 = &v9;
    sub_110F4(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_110F4(uint64_t a1)
{
  sub_1119C();
  Class = objc_getClass("NMCUIAccount");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_228B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1119C()
{
  v2 = 0;
  v1 = sub_11218(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t sub_11218(uint64_t a1)
{
  v10 = a1;
  v8 = qword_228B8;
  v9 = qword_228B8;
  if (!qword_228B8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_112CC;
    v6 = &unk_1C498;
    v7 = v10;
    sub_112CC(&v2);
  }

  return qword_228B8;
}

uint64_t sub_112CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_228B8 = result;
  return result;
}