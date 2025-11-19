void sub_43A0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_43BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_59B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_59DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained view];
  v6 = [v5 window];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 account];
    v10 = [ICAuthenticationPrompt promptForChangingMode:v7 account:v9];

    v11 = +[ICAuthentication shared];
    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 view];
    v14 = [v13 window];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_5B78;
    v16[3] = &unk_1C7D8;
    objc_copyWeak(&v17, (a1 + 32));
    HIDWORD(v15) = *(a1 + 40);
    LODWORD(v15) = HIDWORD(v15);
    v18 = v15 >> 16;
    [v11 authenticateWithPrompt:v10 displayWindow:v14 completionHandler:v16];

    objc_destroyWeak(&v17);
  }
}

void sub_5B78(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (a2 == 2 && WeakRetained)
  {
    v5 = objc_alloc_init(ICInstrumentationUtilitiesRecentPasswordMode);
    [v5 setLockedNotesMode:*(a1 + 40)];
    [v5 setContextPath:2];
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 account];
    [ICInstrumentationUtilities addRecentPasswordMode:v5 forAccount:v7];

    v8 = +[ICLockedNotesModeMigrator sharedMigrator];
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 account];
    v11 = *(a1 + 42);
    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 view];
    v14 = [v13 window];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_5D74;
    v16[3] = &unk_1C7B0;
    objc_copyWeak(&v17, (a1 + 32));
    [v8 migrateLockedNotesInAccount:v10 toMode:v11 window:v14 completionHandler:v16];

    objc_destroyWeak(&v17);
  }

  else
  {
    v15 = objc_loadWeakRetained((a1 + 32));
    [v15 reloadSpecifiers];
  }
}

void sub_5D74(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained account];
  v6 = [ICAuthenticationAlert switchedModeInfoAlertWithAccount:v5];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 view];
  v9 = [v8 window];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5EAC;
  v10[3] = &unk_1C788;
  objc_copyWeak(&v11, (a1 + 32));
  [v6 presentInWindow:v9 completionHandler:v10];

  objc_destroyWeak(&v11);
}

void sub_5EAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_5FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_601C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  v5 = objc_loadWeakRetained((a1 + 40));
  v26 = v5;
  if (a2 || !WeakRetained)
  {

    if (a2 == 1 && v26)
    {
      v8 = [ICPasswordChangeViewController alloc];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_6388;
      v30[3] = &unk_1C828;
      objc_copyWeak(&v31, (a1 + 40));
      v9 = [v8 initWithCompletionHandler:v30];
      [v9 setIsInSettings:1];
      [v9 setIsSettingInitialPassword:1];
      v10 = [*(a1 + 32) account];
      [v9 setUpForAddingPasswordWithAccount:v10];

      v11 = [ICSettingsNavigationController alloc];
      v12 = objc_loadWeakRetained((a1 + 40));
      v13 = [v12 navigationController];
      v14 = -[ICSettingsNavigationController initWithRootViewController:supportedInterfaceOrientations:](v11, "initWithRootViewController:supportedInterfaceOrientations:", v9, [v13 supportedInterfaceOrientations]);

      [(ICSettingsNavigationController *)v14 setModalPresentationStyle:2];
      v15 = objc_loadWeakRetained((a1 + 40));
      v16 = [(ICSettingsNavigationController *)v14 presentationController];
      [v16 setDelegate:v15];

      v17 = [*(a1 + 32) navigationController];
      [v17 presentViewController:v14 animated:1 completion:0];

      objc_destroyWeak(&v31);
    }

    else
    {
      v18 = objc_loadWeakRetained((a1 + 40));

      if (a2 == 2 && v18)
      {
        v19 = objc_loadWeakRetained((a1 + 40));
        v20 = [v19 account];
        v21 = [ICAuthenticationPrompt promptForChangingMode:2 account:v20];

        v22 = +[ICAuthentication shared];
        v23 = objc_loadWeakRetained((a1 + 40));
        v24 = [v23 view];
        v25 = [v24 window];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_6480;
        v27[3] = &unk_1C850;
        objc_copyWeak(&v28, (a1 + 40));
        v29 = 2;
        [v22 authenticateWithPrompt:v21 displayWindow:v25 completionHandler:v27];

        objc_destroyWeak(&v28);
      }
    }
  }

  else
  {
    v6 = [v5 navigationController];
    v7 = [v6 popViewControllerAnimated:1];
  }
}

void sub_6388(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained account];
  v4 = [v3 hasPassphraseSet];

  if (v4)
  {
    v5 = +[ICAuthentication shared];
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 account];
    [v5 setBiometricsEnabled:1 account:v7];

    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 reloadSpecifiers];
  }

  else
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    v8 = [v10 navigationController];
    v9 = [v8 popViewControllerAnimated:1];
  }
}

void sub_6480(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained account];
    [v5 setResolvedLockedNotesMode:v3];

    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 account];
    v8 = [v7 managedObjectContext];
    [v8 ic_save];

    v9 = +[ICAuthentication shared];
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 account];
    [v9 setBiometricsEnabled:1 account:v11];

    v14 = objc_loadWeakRetained((a1 + 32));
    [v14 reloadSpecifiers];
  }

  else
  {
    v14 = objc_loadWeakRetained((a1 + 32));
    v12 = [v14 navigationController];
    v13 = [v12 popViewControllerAnimated:1];
  }
}

void sub_6F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6F3C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (a2 == 2 && WeakRetained)
  {
    v5 = +[ICAuthentication shared];
    v6 = [*(a1 + 32) BOOLValue];
    v7 = objc_loadWeakRetained((a1 + 48));
    v8 = [v7 account];
    [v5 setBiometricsEnabled:v6 account:v8];
  }

  v9 = objc_loadWeakRetained((a1 + 48));
  [v9 reloadSpecifier:*(a1 + 40)];
}

void sub_73A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_73E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_7420(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (a2 == 2 && WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = [v6 account];
    v8 = v5;
    v9 = v7;
    v10 = 1;
LABEL_7:
    [v8 setUpForChangePasswordWithAccount:v9 didAuthenticateWithBiometrics:v10];

    v14 = objc_loadWeakRetained((a1 + 48));
    v13 = [v14 navigationController];
    [v13 presentViewController:*(a1 + 40) animated:1 completion:0];

    goto LABEL_9;
  }

  v11 = objc_loadWeakRetained((a1 + 48));

  if (a2 == 1 && v11)
  {
    v12 = *(a1 + 32);
    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = [v6 account];
    v8 = v12;
    v9 = v7;
    v10 = 0;
    goto LABEL_7;
  }

  v14 = objc_loadWeakRetained((a1 + 48));
  [v14 reloadSpecifiers];
LABEL_9:
}

void sub_7808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7834(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_7BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7C10(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained view];
  v6 = [v5 window];

  if (a2 == 2 && v6)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 account];
    v9 = [ICAuthenticationAlert resetCustomPasswordConfirmationAlertWithAccount:v8];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_7E30;
    v16[3] = &unk_1C8C8;
    objc_copyWeak(&v17, (a1 + 32));
    [v9 setActionHandler:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_7EA0;
    v14[3] = &unk_1C8C8;
    objc_copyWeak(&v15, (a1 + 32));
    [v9 setDismissHandler:v14];
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 view];
    v12 = [v11 window];
    [v9 presentInWindow:v12 completionHandler:0];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
  }

  else
  {
    v13 = objc_loadWeakRetained((a1 + 32));
    [v13 reloadSpecifiers];
  }
}

void sub_7E08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_7E30(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 account];
  [v2 resetCustomPasswordForAccount:v1];
}

void sub_7EA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_7FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_801C(id *a1, int a2)
{
  if (a2 == 2)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v16 = [WeakRetained account];
    v3 = [ICAuthenticationPrompt promptForChangingMode:2 account:v16];

    if ([v3 authenticationAction] != &dword_0 + 1)
    {
      v19 = objc_alloc_init(ICInstrumentationUtilitiesRecentPasswordMode);
      [v19 setLockedNotesMode:1];
      [v19 setContextPath:1];
      [ICInstrumentationUtilities addRecentPasswordMode:v19 forAccount:a1[4]];
      [a1[4] setResolvedLockedNotesMode:2];
      v20 = [a1[4] managedObjectContext];
      [v20 ic_save];

      v21 = +[ICAuthentication shared];
      v22 = objc_loadWeakRetained(a1 + 6);
      v23 = [v22 account];
      [v21 setBiometricsEnabled:1 account:v23];

      v24 = objc_loadWeakRetained(a1 + 6);
      v25 = [v24 account];
      v26 = [ICAuthenticationAlert switchedModeInfoAlertWithAccount:v25];

      v27 = objc_loadWeakRetained(a1 + 6);
      v28 = [v27 view];
      v29 = [v28 window];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_85CC;
      v33[3] = &unk_1C788;
      objc_copyWeak(&v34, a1 + 6);
      [v26 presentInWindow:v29 completionHandler:v33];

      objc_destroyWeak(&v34);
      goto LABEL_11;
    }

    v6 = [v3 failureAlerts];
    v11 = objc_loadWeakRetained(a1 + 6);
    v17 = [(ICSettingsNavigationController *)v11 view];
    v18 = [v17 window];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_860C;
    v31[3] = &unk_1C788;
    v5 = &v32;
    objc_copyWeak(&v32, a1 + 6);
    [ICAuthenticationAlert presentAlertsIfNeeded:v6 window:v18 completionHandler:v31];

LABEL_6:
    objc_destroyWeak(v5);
LABEL_11:

    return;
  }

  if (a2 == 1)
  {
    v3 = [[ICAccountPassphraseManager alloc] initWithAccount:a1[4]];
    [v3 removePassphrase];
    v4 = [ICPasswordChangeViewController alloc];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_84D4;
    v35[3] = &unk_1C828;
    v5 = &v36;
    objc_copyWeak(&v36, a1 + 6);
    v6 = [v4 initWithCompletionHandler:v35];
    [v6 setIsInSettings:1];
    [v6 setIsSettingInitialPassword:1];
    v7 = [a1[5] account];
    [v6 setUpForAddingPasswordWithAccount:v7];

    v8 = [ICSettingsNavigationController alloc];
    v9 = objc_loadWeakRetained(a1 + 6);
    v10 = [v9 navigationController];
    v11 = -[ICSettingsNavigationController initWithRootViewController:supportedInterfaceOrientations:](v8, "initWithRootViewController:supportedInterfaceOrientations:", v6, [v10 supportedInterfaceOrientations]);

    [(ICSettingsNavigationController *)v11 setModalPresentationStyle:2];
    v12 = objc_loadWeakRetained(a1 + 6);
    v13 = [(ICSettingsNavigationController *)v11 presentationController];
    [v13 setDelegate:v12];

    v14 = [a1[5] navigationController];
    [v14 presentViewController:v11 animated:1 completion:0];

    goto LABEL_6;
  }

  v30 = objc_loadWeakRetained(a1 + 6);
  [v30 reloadSpecifiers];
}

void sub_84D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained account];
  v4 = [v3 hasPassphraseSet];

  if (v4)
  {
    v5 = +[ICAuthentication shared];
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 account];
    [v5 setBiometricsEnabled:1 account:v7];

    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 reloadSpecifiers];
  }

  else
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    v8 = [v10 navigationController];
    v9 = [v8 popViewControllerAnimated:1];
  }
}

void sub_85CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_860C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_D9A4(id a1, UIAlertAction *a2)
{
  v5 = +[ICAppURLUtilities appURLForFolderList];
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 canOpenURL:v5];

  if (v3)
  {
    v4 = +[UIApplication sharedApplication];
    [v4 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];
  }
}

id sub_DA48(uint64_t a1)
{
  [*(a1 + 32) deleteLocalAccount];
  [ICSettingsUtilities setObject:*(a1 + 40) forKey:@"LocalNotes"];
  v2 = *(a1 + 32);

  return [v2 accountsDidChange];
}

void sub_E9E0(uint64_t a1)
{
  [*(a1 + 32) setStalenessInterval:0.0];
  v1 = +[ICNoteContext sharedContext];
  [v1 refreshAll];
}

unint64_t sub_EA6C()
{
  result = qword_22AE0;
  if (!qword_22AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE0);
  }

  return result;
}

uint64_t sub_EADC(uint64_t a1)
{
  v2 = *(*(sub_10120() - 8) + 64);
  __chkstk_darwin();
  v3 = *(*(sub_10030() - 8) + 64);
  __chkstk_darwin();
  v4 = sub_10000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(PSSpecifier) init];
  [v9 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_10110();
  sub_10010();
  sub_FFF0();
  v10 = [objc_opt_self() localizedTitle];
  v11 = sub_100D0();
  v13 = v12;

  v15[0] = v11;
  v15[1] = v13;
  sub_FBBC(&qword_22AF8, &type metadata accessor for PreferencesControllerView);
  sub_F860();
  sub_10060();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_ED58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_10120() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_10030();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_10050();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v12 = *(*(sub_F7D0(&qword_22B10, &qword_199A8) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v13 = sub_FFC0();
  v4[15] = v13;
  v14 = *(v13 - 8);
  v4[16] = v14;
  v15 = *(v14 + 64) + 15;
  v4[17] = swift_task_alloc();
  v16 = sub_FFE0();
  v4[18] = v16;
  v17 = *(v16 - 8);
  v4[19] = v17;
  v18 = *(v17 + 64) + 15;
  v4[20] = swift_task_alloc();
  sub_10100();
  v4[21] = sub_100F0();
  v20 = sub_100E0();

  return _swift_task_switch(sub_EFD4, v20, v19);
}

uint64_t sub_EFD4()
{
  v2 = (v0 + 128);
  v1 = *(v0 + 128);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v6 = (v0 + 120);
  v5 = *(v0 + 120);
  v7 = *(v0 + 112);
  v8 = *(v0 + 24);

  sub_10090();
  sub_FFA0();
  if ((*(v1 + 48))(v7, 1, v5) == 1)
  {
    v9 = *(v0 + 104);
    v10 = (v0 + 104);
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    sub_FB08(*(v0 + 112));
    sub_10080();
    sub_100A0();
    v2 = (v0 + 88);
    v6 = (v0 + 80);
    goto LABEL_13;
  }

  v10 = (v0 + 136);
  v13 = *(v0 + 160);
  v14 = *(v0 + 96);
  v15 = *(v0 + 24);
  (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 112), *(v0 + 120));
  sub_10080();
  v16 = sub_FFD0();
  v18 = v17;
  sub_FFB0();
  if (v19)
  {
    v20 = *(v0 + 32);

    v21 = sub_100C0();

    [v20 setSpecifierIdentifierToScrollAndHighlight:v21];
  }

  else
  {
    v22 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v22 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v22 && (v16 != 0xD000000000000015 || 0x8000000000019840 != v18) && (sub_10140() & 1) == 0)
    {
      v41 = sub_FB70(v16, v18);
      if (v41 > 4)
      {
        if (v41 <= 6)
        {
          v49 = *(v0 + 96);
          v44 = *(v0 + 64);
          v43 = *(v0 + 72);
          v45 = *(v0 + 56);
          if (v41 == 5)
          {
            v46 = [*(v0 + 40) cornerGesturesSpecifier];
          }

          else
          {
            v46 = [*(v0 + 40) defaultParagraphStyleSpecifier];
          }
        }

        else if (v41 == 7)
        {
          v54 = *(v0 + 96);
          v44 = *(v0 + 64);
          v43 = *(v0 + 72);
          v45 = *(v0 + 56);
          v46 = [*(v0 + 40) linesAndGridsSpecifier];
        }

        else
        {
          if (v41 != 8)
          {
            goto LABEL_12;
          }

          v47 = *(v0 + 96);
          v44 = *(v0 + 64);
          v43 = *(v0 + 72);
          v45 = *(v0 + 56);
          v46 = [objc_opt_self() sortTypeSpecifier];
        }
      }

      else if (v41 <= 1)
      {
        v48 = *(v0 + 96);
        v44 = *(v0 + 64);
        v43 = *(v0 + 72);
        v45 = *(v0 + 56);
        if (v41)
        {
          v46 = [*(v0 + 40) accountsSpecifier];
        }

        else
        {
          v46 = [*(v0 + 40) accessNotesFromLockScreenSpecifier];
        }
      }

      else
      {
        if (v41 == 2)
        {
          v50 = *(v0 + 96);
          v51 = *(v0 + 72);
          v57 = *(v0 + 64);
          v52 = *(v0 + 48);
          v56 = *(v0 + 56);
          v53 = [*(v0 + 40) accountsSpecifier];
          sub_10110();
          sub_10010();
          sub_FBBC(&qword_22B18, &type metadata accessor for PreferencesControllerRecipe);
          sub_10040();

          (*(v57 + 8))(v51, v56);
          goto LABEL_12;
        }

        v42 = *(v0 + 96);
        v44 = *(v0 + 64);
        v43 = *(v0 + 72);
        v45 = *(v0 + 56);
        if (v41 == 3)
        {
          v46 = [*(v0 + 40) allowDarkBackgroundsSpecifier];
        }

        else
        {
          v46 = [*(v0 + 40) autoSortCheckedItemsSpecifier];
        }
      }

      v55 = v46;
      sub_10020();
      sub_FBBC(&qword_22B18, &type metadata accessor for PreferencesControllerRecipe);
      sub_10040();

      (*(v44 + 8))(v43, v45);
      goto LABEL_12;
    }
  }

LABEL_12:
  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  v25 = *(v0 + 80);
  v26 = *(v0 + 16);
  sub_100A0();
  (*(v24 + 8))(v23, v25);
LABEL_13:
  v27 = *v10;
  v28 = *v6;
  v29 = *v2;
  v31 = *(v0 + 152);
  v30 = *(v0 + 160);
  v33 = *(v0 + 136);
  v32 = *(v0 + 144);
  v35 = *(v0 + 104);
  v34 = *(v0 + 112);
  v36 = *(v0 + 96);
  v37 = *(v0 + 72);
  v38 = *(v0 + 48);
  (*(v29 + 8))(v27, v28);
  (*(v31 + 8))(v30, v32);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_F554()
{
  v1 = sub_F7D0(&qword_22AE8, &qword_19988);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = v18 - v4;
  v7 = *v0;
  v6 = *(v0 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = v7;
  v10 = v6;
  sub_F7D0(&qword_22AF0, &qword_19990);
  v11 = sub_10000();
  v12 = sub_FBBC(&qword_22AF8, &type metadata accessor for PreferencesControllerView);
  v13 = sub_F860();
  v18[0] = v11;
  v18[1] = &type metadata for String;
  v18[2] = v12;
  v18[3] = v13;
  swift_getOpaqueTypeConformance2();
  sub_100B0();
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;
  sub_FA5C();
  v15 = v9;
  v16 = v10;
  sub_10070();
  return (*(v2 + 8))(v5, v1);
}

id sub_F774@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  result = [objc_allocWithZone(ICSettingsPlugin) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_F7D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_F818()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_F860()
{
  result = qword_22B00;
  if (!qword_22B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B00);
  }

  return result;
}

uint64_t sub_F8B4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_F968;

  return sub_ED58(a1, a2, v7, v6);
}

uint64_t sub_F968()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_FA5C()
{
  result = qword_22B08;
  if (!qword_22B08)
  {
    sub_FAC0(&qword_22AE8, &qword_19988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22B08);
  }

  return result;
}

uint64_t sub_FAC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_FB08(uint64_t a1)
{
  v2 = sub_F7D0(&qword_22B10, &qword_199A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FB70(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1CAA8;
  v6._object = a2;
  v4 = sub_10130(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_FBBC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_FC04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_FC10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_FC58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_FCA4()
{
  sub_FAC0(&qword_22AE8, &qword_19988);
  sub_FA5C();
  return swift_getOpaqueTypeConformance2();
}

void sub_FD78(uint64_t a1, const char *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(a2);
  sub_4388();
  sub_43BC(&dword_0, v6, v7, "%@ %@ missing duration", v8, v9, v10, v11, v12);
}

void sub_FE8C(uint64_t a1, const char *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(a2);
  sub_4388();
  sub_43BC(&dword_0, v6, v7, "%@ %@ missing state", v8, v9, v10, v11, v12);
}