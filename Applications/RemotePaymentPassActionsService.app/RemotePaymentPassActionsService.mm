BOOL sub_100002218(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 40) = 1;
  v7 = *(a1 + 32);
  v8 = v7 + 3;
  if (*(a1 + 40))
  {
    v9 = [(CGPoint *)v7 view];
    [*(a1 + 40) CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [*(a1 + 32) view];
    v19 = [v18 window];
    [v9 convertRect:v19 fromView:{v11, v13, v15, v17}];
    v8->x = v20;
    v8->y = v21;
    v8[1].x = v22;
    v8[1].y = v23;
  }

  else
  {
    size = CGRectNull.size;
    *v8 = CGRectNull.origin;
    v7[4] = size;
  }

  v26.origin.x = v3;
  v26.origin.y = v4;
  v26.size.width = v5;
  v26.size.height = v6;
  return !CGRectEqualToRect(*(*(a1 + 32) + 48), v26);
}

BOOL sub_10000242C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 6;
  v4 = *(v2 + 6);
  v5 = *(v2 + 7);
  v6 = *(v2 + 8);
  v7 = *(v2 + 9);
  v8 = [v2 view];
  [*(a1 + 40) CGRectValue];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [*(a1 + 32) view];
  v18 = [v17 window];
  [v8 convertRect:v18 fromView:{v10, v12, v14, v16}];
  *v3 = v19;
  v3[1] = v20;
  v3[2] = v21;
  v3[3] = v22;

  v24.origin.x = v4;
  v24.origin.y = v5;
  v24.size.width = v6;
  v24.size.height = v7;
  return !CGRectEqualToRect(*(*(a1 + 32) + 48), v24);
}

Class sub_100002CE0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100016DB8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100002E24;
    v4[4] = &unk_1000103F8;
    v4[5] = v4;
    v5 = off_1000103E0;
    v6 = 0;
    qword_100016DB8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100016DB8)
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
  result = objc_getClass("FAProfilePictureStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100006C58();
  }

  qword_100016DB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002E24(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100016DB8 = result;
  return result;
}

void sub_100003B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003BB0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v5 = v3;
  NPKGuaranteeMainThread();
}

void sub_100003C70(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v14 = [*(a1 + 40) delegate];
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = [*(v2 + 56) identifier];
    [v14 selectItemViewController:v2 didFinishWithRenewalAmount:v3 serviceProviderData:v4 forRequestIdentifier:v5];
  }

  else
  {
    v6 = pk_RemotePassAction_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 48);
        *buf = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error: Unable to identify selected item! currencyAmount: %@ serviceProviderData: %@", buf, 0x16u);
      }
    }

    v11 = [*(a1 + 40) delegate];
    v12 = *(a1 + 40);
    v13 = [*(v12 + 56) identifier];
    [v11 selectItemViewController:v12 didCancelForRequestIdentifier:v13];
  }
}

void sub_10000470C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  NPKGuaranteeMainThread();
}

id sub_1000047A0(uint64_t a1)
{
  [*(a1 + 32) _showLoadingView:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    objc_storeStrong(v2 + 6, v3);
    v4 = *(a1 + 32);

    return [v4 _reloadSelectItemView];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100004860;
    v6[3] = &unk_100010398;
    v6[4] = v2;
    return [v2 _showGenericErrorAlert:v6];
  }
}

void sub_1000048D0(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(v2 + 56) identifier];
  [v4 selectItemViewController:v2 didCancelForRequestIdentifier:v3];
}

uint64_t sub_100004C80(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

Class sub_100004DFC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100016DD0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100004F40;
    v4[4] = &unk_1000103F8;
    v4[5] = v4;
    v5 = off_1000104F8;
    v6 = 0;
    qword_100016DD0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100016DD0)
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
  result = objc_getClass("FAProfilePictureStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100006C58();
  }

  qword_100016DC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100004F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100016DD0 = result;
  return result;
}

void sub_1000052EC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pk_RemotePassAction_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error: NPKRemotePassActionCompanionValueEntryAlertViewController: Failed to configure remote VC proxy! Error: %@", &v6, 0xCu);
    }
  }
}

void sub_100005448(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pk_RemotePassAction_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error: NPKRemotePassActionCompanionValueEntryAlertViewController: Failed to activate remote VC! Error: %@", &v6, 0xCu);
    }
  }
}

void sub_100005B04(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pk_RemotePassAction_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error: NPKRemotePassActionCompanionItemSelectionAlertViewController: Failed to configure remote VC proxy! Error: %@", &v6, 0xCu);
    }
  }
}

void sub_100005C60(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pk_RemotePassAction_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error: NPKRemotePassActionCompanionItemSelectionAlertViewController: Failed to activate remote VC! Error: %@", &v6, 0xCu);
    }
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

void sub_100006838(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error: Failed to get view service host proxy: %@", &v6, 0xCu);
    }
  }
}

void sub_100006924(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error: Failed to get view service presenter proxy: %@", &v6, 0xCu);
    }
  }
}

void sub_100006ABC(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}