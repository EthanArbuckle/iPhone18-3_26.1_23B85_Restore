void sub_17C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_17E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeActivityFlag:2];
}

void sub_1928(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1944(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5)
  {
    [WeakRetained _handleError:v5];
  }

  else
  {
    [WeakRetained _setGizmoState:v8];
  }
}

void sub_1A80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A9C(uint64_t a1, void *a2)
{
  v3 = [a2 count] != 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setGizmoHasPaymentPasses:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _removeActivityFlag:8];
}

void sub_1BDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BF8(uint64_t a1, void *a2)
{
  v3 = [a2 count] != 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setGizmoHasCredentialedPasses:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _removeActivityFlag:64];
}

void sub_1D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DBC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = pu_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = a2;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Paired unlock enabled=%{BOOL}u", v9, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDevicesArePairedForUnlocking:a2];

  if (v5)
  {
    [*(a1 + 32) _handleError:v5];
  }

  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 _removeActivityFlag:16];
}

void sub_1FA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1FC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v8 = pu_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_7564(v6, v8);
    }

    v9 = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v9)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if ([v12 isDefaultPairedDevice])
          {
            v9 = [v12 unlockEnabled];
            v13 = pu_log();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v19 = v9;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Gizmo unlocks phone enabled=%{BOOL}u", buf, 8u);
            }

            goto LABEL_17;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_17:

  [WeakRetained setGizmoUnlocksPhone:v9];
}

void sub_2410(uint64_t a1)
{
  v2 = [UIAlertView alloc];
  v3 = *(a1 + 32);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:*(a1 + 40) value:&stru_10840 table:@"PasscodeSettings"];
  v6 = *(a1 + 32);
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"BUSY_TEXT" value:&stru_10840 table:@"PasscodeSettings"];
  v9 = *(a1 + 32);
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"BUSY_OK_BUTTON" value:&stru_10840 table:@"PasscodeSettings"];
  v12 = [v2 initWithTitle:v5 message:v8 delegate:0 cancelButtonTitle:v11 otherButtonTitles:0];

  [v12 show];
}

void sub_2730(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

void sub_2780(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_2808;
  v2[3] = &unk_10540;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_2808(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionCoordinator];

  if (v2)
  {
    v3 = [*(a1 + 32) transitionCoordinator];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_28F0;
    v5[3] = &unk_10518;
    v6 = *(a1 + 40);
    [v3 animateAlongsideTransition:0 completion:v5];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void sub_2974(uint64_t a1)
{
  v2 = [UIAlertView alloc];
  v3 = *(a1 + 32);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ALERT_NEED_UNLOCK_TITLE" value:&stru_10840 table:@"PasscodeSettings"];
  v6 = *(a1 + 32);
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ALERT_NEED_UNLOCK_TEXT" value:&stru_10840 table:@"PasscodeSettings"];
  v9 = *(a1 + 32);
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ALERT_NEED_UNLOCK_CANCEL" value:&stru_10840 table:@"PasscodeSettings"];
  v12 = [v2 initWithTitle:v5 message:v8 delegate:v9 cancelButtonTitle:v11 otherButtonTitles:0];

  [v12 setDelegate:*(a1 + 32)];
  [v12 show];
  v13 = *(a1 + 32);
  v14 = *(v13 + 136);
  *(v13 + 136) = v12;
}

id sub_2DD8(uint64_t a1)
{
  *(*(a1 + 32) + 188) = CFPreferencesGetAppBooleanValue(@"InLockout", @"com.apple.Carousel", 0) != 0;
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

unsigned __int8 *sub_2F10(unsigned __int8 *result)
{
  v1 = result[40];
  v2 = *(result + 4);
  if (v1 != *(v2 + 160))
  {
    *(v2 + 160) = v1;
    return [*(result + 4) reloadSpecifiers];
  }

  return result;
}

void sub_34D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(a1 + 40) + 208), v2);
  }

  v3 = *(a1 + 40);
  v4 = *(v3 + 144);
  if (v4 > 2)
  {
    if (v4 == 4)
    {
      *(v3 + 186) = 1;
    }

    else if (v4 == 3)
    {
      if (!*(a1 + 32))
      {
        [*(v3 + 208) setPasscodeSet:0];
        [*(*(a1 + 40) + 208) setUnlockOnly:0];
        v3 = *(a1 + 40);
      }

      *(v3 + 186) = 0;
    }
  }

  else if (v4 == 1)
  {
    if (!*(a1 + 32))
    {
      v6 = *(v3 + 208);

      [v6 setPasscodeSet:1];
    }
  }

  else if (v4 == 2 && !*(a1 + 32))
  {
    v5 = *(v3 + 208);

    [v5 setUnlockOnly:0];
  }
}

void sub_36B4(uint64_t a1)
{
  if (([*(a1 + 32) isPasscodeLocked] & 1) == 0)
  {
    v2 = *(*(a1 + 40) + 136);
    if (v2)
    {
      [v2 dismissWithClickedButtonIndex:-1 animated:1];
    }
  }

  if (([*(a1 + 32) isPasscodeLocked] & 1) == 0)
  {
    *(*(a1 + 40) + 188) = 0;
  }

  if (([*(a1 + 32) isEqual:*(*(a1 + 40) + 208)] & 1) == 0)
  {
    v3 = pu_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Received new gizmo state: %@", &v8, 0xCu);
    }

    objc_storeStrong((*(a1 + 40) + 208), *(a1 + 32));
    [*(a1 + 40) reloadSpecifiers];
  }

  if (([*(a1 + 32) isPasscodeLocked] & 1) == 0)
  {
    v5 = *(*(a1 + 40) + 216);
    if (v5)
    {
      (*(v5 + 16))();
      v6 = *(a1 + 40);
      v7 = *(v6 + 216);
      *(v6 + 216) = 0;
    }
  }
}

void sub_46B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_46D0(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = v6;
    if (a2)
    {
      [v6 setGizmoIsInLockout:0];
      [v7 reloadSpecifiers];
    }

    else
    {
      [v6 _handleError:v8];
    }
  }
}

void sub_5E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_5E78()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_153B0;
  v7 = qword_153B0;
  if (!qword_153B0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_6AB8;
    v3[3] = &unk_105E0;
    v3[4] = &v4;
    sub_6AB8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_5F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6828(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[48])
  {
    v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v3 startAnimating];
    v5 = [[UIBarButtonItem alloc] initWithCustomView:v3];

    v2 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v4 = [v2 navigationItem];
  [v4 setRightBarButtonItem:v5];

  [*(a1 + 32) reloadSpecifiers];
}

Class sub_6AB8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_153B8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_6BFC;
    v4[4] = &unk_10618;
    v4[5] = v4;
    v5 = off_10600;
    v6 = 0;
    qword_153B8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_153B8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_7644();
  }

  qword_153B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_6BFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_153B8 = result;
  return result;
}

void *sub_6C70(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_153C8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_6DB0;
    v5[4] = &unk_10618;
    v5[5] = v5;
    v6 = off_10638;
    v7 = 0;
    qword_153C8 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_153C8;
    if (qword_153C8)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_153C8;
LABEL_5:
  result = dlsym(v2, "HKFeatureFlagBloodOxygenSaturationEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_153C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_6DB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_153C8 = result;
  return result;
}

void sub_7564(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unable to determine if gizmo can unlock phone, error %@", &v2, 0xCu);
}

void sub_7620()
{
  dlerror();
  abort_report_np();
  sub_7644();
}