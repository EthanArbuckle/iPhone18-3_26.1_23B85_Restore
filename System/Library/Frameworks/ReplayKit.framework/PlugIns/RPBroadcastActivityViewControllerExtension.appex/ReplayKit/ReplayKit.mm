void sub_100001370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001394(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = *(a1 + 32);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100001530;
  v27[3] = &unk_10000C2F8;
  v20 = v16;
  v21 = *(a1 + 32);
  v28 = v20;
  v29 = v21;
  v22 = v13;
  v30 = v22;
  v23 = v14;
  v31 = v23;
  v24 = v17;
  v32 = v24;
  v25 = v18;
  v33 = v25;
  objc_copyWeak(&v35, (a1 + 40));
  v26 = v15;
  v34 = v26;
  [v19 loadStreamingActivitiesWithHandler:v27];

  objc_destroyWeak(&v35);
}

void sub_100001530(uint64_t a1, void *a2)
{
  v8 = a2;
  if (![v8 count] && !*(a1 + 32))
  {
    [*(a1 + 40) showNotInstalledAlert:*(a1 + 48) appName:*(a1 + 56) broadcastActivitiesNotInstalledAlertTitle:*(a1 + 64) broadcastActivitiesNotInstalledAlertMessage:*(a1 + 72)];
  }

  v3 = *(a1 + 40);
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    [v3 setupSingleExtensionView:WeakRetained hostBundleID:*(a1 + 48) preferredExtension:*(a1 + 32) iconImage:*(a1 + 80) appName:*(a1 + 56) activities:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 80);
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    [v3 setUpActivityViewController:v5 hostBundleID:v6 iconImage:v7 activities:v8 weakSelf:WeakRetained];
  }
}

void sub_100001DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001EAC;
  v7[3] = &unk_10000C3E8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v6;
  v9 = *(a1 + 32);
  [v5 loadItems:a3 withHandler:v7];
}

void sub_100001EAC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *buf = 136446722;
    v23 = "[RPBroadcastActivityExtensionViewController setupSingleExtensionView:hostBundleID:preferredExtension:iconImage:appName:activities:]_block_invoke_4";
    v24 = 1024;
    v25 = 211;
    v26 = 2048;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p setupBroadcastWithHostBundleID", buf, 0x1Cu);
  }

  v14 = +[RPDaemonProxy daemonProxy];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000208C;
  v18[3] = &unk_10000C3C0;
  v15 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = v12;
  v21 = v9;
  v16 = v9;
  v17 = v12;
  [v14 setupBroadcastWithHostBundleID:v15 broadcastExtensionBundleID:v16 broadcastConfigurationData:v10 userInfo:v11 handler:v18];
}

void sub_10000208C(id *a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002164;
  v4[3] = &unk_10000C398;
  v5 = a2;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

id sub_100002164(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = __RPLogLevel > 2u;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100005294(v2);
  }

  [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
  return [*(a1 + 40) extensionDidFinishWithLaunchURL:0 broadcastURL:*(a1 + 48) extensionBundleID:*(a1 + 56) cancelled:0];
}

void sub_1000021E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 setModalPresentationStyle:2];
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 136446722;
      v8 = "[RPBroadcastActivityExtensionViewController setupSingleExtensionView:hostBundleID:preferredExtension:iconImage:appName:activities:]_block_invoke";
      v9 = 1024;
      v10 = 244;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p present remoteViewController for ReplayKitTestRunneriOS", &v7, 0x1Cu);
    }

    [*(a1 + 40) presentViewController:v5 animated:1 completion:0];
  }
}

void sub_1000022F4(uint64_t a1)
{
  v2 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_ACTIVITIES_PREFERRED_ALERT_MESSAGE_FORMAT"];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) activityTitle];
  v5 = [NSString stringWithFormat:v2, v3, v4];

  v6 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_ACTIVITIES_PREFERRED_ALERT_TITLE"];
  v7 = [UIAlertController alertControllerWithTitle:v6 message:v5 preferredStyle:1];

  v8 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_ACTIVITIES_PREFERRED_ACCEPT_BUTTON"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002534;
  v15[3] = &unk_10000C488;
  v9 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v16 = v9;
  v10 = [UIAlertAction actionWithTitle:v8 style:0 handler:v15];
  [v7 addAction:v10];

  v11 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_ACTIVITIES_NOT_INSTALLED_ALERT_BUTTON_CANCEL"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002644;
  v13[3] = &unk_10000C4B0;
  v14 = *(a1 + 48);
  v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:v13];
  [v7 addAction:v12];

  [*(a1 + 48) presentViewController:v7 animated:1 completion:0];
}

void sub_100002534(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationExtension];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000025DC;
  v3[3] = &unk_10000C460;
  v4 = *(a1 + 40);
  [v2 instantiateViewControllerWithInputItems:&__NSArray0__struct connectionHandler:v3];
}

void sub_1000025DC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    [v4 setModalPresentationStyle:2];
    [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
  }
}

void sub_100002954(uint64_t a1)
{
  v2 = [[UIActivityViewController alloc] initWithActivityItems:*(a1 + 32) applicationActivities:*(a1 + 40)];
  [v2 setExcludedActivityCategories:1];
  v27 = UIActivityTypeAirDrop;
  v3 = [NSArray arrayWithObjects:&v27 count:1];
  [v2 setExcludedActivityTypes:v3];

  v4 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v22 + 1) + 8 * v9) applicationExtension];
        v11 = [v10 identifier];
        [v4 addObject:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  [v2 setIncludedActivityTypes:v4];
  v12 = [*(a1 + 48) broadcastExtensionContext];
  v13 = [v12 extensionObjectProxy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100002BB0;
  v17[3] = &unk_10000C5A0;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v18 = v2;
  v19 = v14;
  v20 = v15;
  v21 = *(a1 + 64);
  v16 = v2;
  [v13 presentationInfoWithCompletion:v17];
}

void sub_100002BB0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002D74;
  block[3] = &unk_10000C500;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v25 = v12;
  v26 = v13;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  dispatch_async(&_dispatch_main_q, block);
  v14 = *(a1 + 32);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100002E20;
  v20[3] = &unk_10000C550;
  v15 = *(a1 + 48);
  v16 = *(a1 + 40);
  v21 = v15;
  v22 = v16;
  v23 = *(a1 + 56);
  [v14 setCompletionWithItemsHandler:v20];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100003144;
  v17[3] = &unk_10000C578;
  v18 = *(a1 + 48);
  v19 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v17);
}

void sub_100002D74(uint64_t a1)
{
  [*(a1 + 32) setModalPresentationStyle:*(a1 + 48)];
  if (*(a1 + 48) == 7)
  {
    v3 = [*(a1 + 32) popoverPresentationController];
    [v3 setPermittedArrowDirections:15];
    v2 = [*(a1 + 40) view];
    [v3 setSourceView:v2];

    [v3 setSourceRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  }
}

void sub_100002E20(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  v7 = [v6 count];
  v8 = *(a1 + 32);
  if (v7 && a3)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002EF8;
    v10[3] = &unk_10000C528;
    v9 = *(a1 + 48);
    v10[4] = *(a1 + 40);
    v11 = v9;
    [v8 loadItems:v6 withHandler:v10];
  }

  else
  {
    [*(a1 + 32) extensionDidFinishWithLaunchURL:0 broadcastURL:0 extensionBundleID:0 cancelled:1];
  }
}

void sub_100002EF8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *buf = 136446722;
    v22 = "[RPBroadcastActivityExtensionViewController setUpActivityViewController:hostBundleID:iconImage:activities:weakSelf:]_block_invoke_5";
    v23 = 1024;
    v24 = 359;
    v25 = 2048;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p setupBroadcastWithHostBundleID", buf, 0x1Cu);
  }

  v14 = +[RPDaemonProxy daemonProxy];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000030CC;
  v18[3] = &unk_10000C3C0;
  v15 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v12;
  v20 = v9;
  v16 = v9;
  v17 = v12;
  [v14 setupBroadcastWithHostBundleID:v15 broadcastExtensionBundleID:v16 broadcastConfigurationData:v10 userInfo:v11 handler:v18];
}

void sub_1000030CC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && __RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100005320(v3);
  }

  [*(a1 + 32) extensionDidFinishWithLaunchURL:0 broadcastURL:*(a1 + 40) extensionBundleID:*(a1 + 48) cancelled:0];
}

void sub_1000032B0(uint64_t a1)
{
  v2 = [UIAlertController alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v3 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_ACTIVITIES_NOT_INSTALLED_ALERT_BUTTON_FIND"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003454;
  v8[3] = &unk_10000C4B0;
  v8[4] = *(a1 + 48);
  v4 = [UIAlertAction actionWithTitle:v3 style:0 handler:v8];
  [v2 addAction:v4];

  v5 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"BROADCAST_ACTIVITIES_NOT_INSTALLED_ALERT_BUTTON_CANCEL"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000034C4;
  v7[3] = &unk_10000C4B0;
  v7[4] = *(a1 + 48);
  v6 = [UIAlertAction actionWithTitle:v5 style:1 handler:v7];
  [v2 addAction:v6];

  [*(a1 + 48) presentViewController:v2 animated:1 completion:0];
}

void sub_100003454(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSURL URLWithString:@"https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewFeature?id=1152708765&mt=8&ls=1"];
  [v1 extensionDidFinishWithLaunchURL:v2 broadcastURL:0 extensionBundleID:0 cancelled:1];
}

void sub_1000038E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000394C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003964(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136446466;
      v26 = "[RPBroadcastActivityExtensionViewController loadItems:withHandler:]_block_invoke";
      v27 = 1024;
      v28 = 454;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Error loading input item for type", &v25, 0x12u);
    }

    goto LABEL_16;
  }

  v8 = [*(a1 + 32) attributedTitle];
  v9 = [v8 string];
  v10 = [v9 isEqualToString:@"RPBroadcastExtensionKeyExtensionBundleIdentifier"];

  if (v10)
  {
    v11 = 48;
  }

  else
  {
    v12 = [*(a1 + 32) attributedTitle];
    v13 = [v12 string];
    v14 = [v13 isEqualToString:@"RPBroadcastExtensionKeyExtensionUserInfo"];

    if (v14)
    {
      v11 = 56;
    }

    else
    {
      v15 = [*(a1 + 32) attributedTitle];
      v16 = [v15 string];
      v17 = [v16 isEqualToString:@"RPBroadcastExtensionKeyBroadcastConfiguration"];

      if (v17)
      {
        v11 = 64;
      }

      else
      {
        v18 = [*(a1 + 32) attributedTitle];
        v19 = [v18 string];
        v20 = [v19 isEqualToString:@"kRPBroadcastExtensionKeyExtensionServiceURL"];

        if (!v20)
        {
          goto LABEL_14;
        }

        v11 = 72;
      }
    }
  }

  objc_storeStrong((*(*(a1 + v11) + 8) + 40), a2);
LABEL_14:
  if (++*(*(*(a1 + 80) + 8) + 24) == *(a1 + 88))
  {
    v21 = *(*(*(a1 + 48) + 8) + 40);
    v22 = *(*(*(a1 + 64) + 8) + 40);
    v23 = *(*(*(a1 + 56) + 8) + 40);
    v24 = *(*(*(a1 + 72) + 8) + 40);
    (*(*(a1 + 40) + 16))();
  }

LABEL_16:
}

void sub_100003D2C(uint64_t a1)
{
  v3 = +[UIColor clearColor];
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:v3];
}

void sub_10000404C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100004078(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attachments];
  v5 = [v4 objectAtIndexedSubscript:0];

  v6 = kUTTypeData;
  if ([v5 hasItemConformingToTypeIdentifier:v6])
  {
    dispatch_group_enter(*(a1 + 32));
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004198;
    v11[3] = &unk_10000C640;
    v7 = v3;
    v8 = *(a1 + 48);
    v12 = v7;
    v14 = v8;
    v10 = *(a1 + 32);
    v9 = v10;
    v13 = v10;
    [v5 loadItemForTypeIdentifier:v6 options:0 completionHandler:v11];
  }
}

void sub_100004198(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136446466;
      v19 = "[RPBroadcastActivityExtensionViewController loadHostAppInfo:]_block_invoke_2";
      v20 = 1024;
      v21 = 517;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Error loading input item for type", &v18, 0x12u);
    }
  }

  else
  {
    v8 = [*(a1 + 32) attributedTitle];
    v9 = [v8 string];
    v10 = [v9 isEqualToString:@"RPBroadcastExtensionKeyExtensionHostInfo"];

    if (v10)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;

      v13 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoAppIcon"];

      if (v13)
      {
        v14 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoAppIcon"];
        v15 = [UIImage imageWithData:v14];
        v16 = *(*(a1 + 56) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;
      }
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100004384(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v8 = [*(*(a1[5] + 8) + 40) objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoBundleID"];
    v3 = [*(*(a1[5] + 8) + 40) objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoAppName"];
    v4 = *(*(a1[6] + 8) + 40);
    v5 = [*(*(a1[5] + 8) + 40) objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoPreferredExtension"];
    v6 = [*(*(a1[5] + 8) + 40) objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoBroadcastActivitiesNotInstalledAlertTitle"];
    v7 = [*(*(a1[5] + 8) + 40) objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoBroadcastActivitiesNotInstalledAlertMessage"];
    (*(v1 + 16))(v1, v8, v3, v4, v5, v6, v7);
  }
}

void sub_100004708(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && __RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000053A8(v6);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000481C;
  v10[3] = &unk_10000C6B8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v9 = v5;
  [NSExtension extensionsWithMatchingPointName:@"com.apple.broadcast-services" activationRule:@"NSExtensionActivationSupportsReplayKitStreaming" completion:v10];
}

void sub_10000481C(uint64_t a1, void *a2, void *a3)
{
  obj = a2;
  v5 = a3;
  if (v5 && __RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100005430(v5);
  }

  v31 = v5;
  v34 = +[NSMutableArray array];
  v6 = +[NSMutableSet set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = a1;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        [*(v7 + 40) _autoOptInExtensionIfNeverOptedIn:v13];
        v14 = [[RPStreamingActivity alloc] initWithApplicationExtension:v13];
        [v34 addObject:v14];
        v15 = [v13 _extensionBundle];
        v16 = [v15 bundleIdentifier];
        v17 = [NSBundle baseIdentifier:v16];

        [v6 addObject:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v10);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obja = obj;
  v18 = [obja countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(obja);
        }

        v22 = *(*(&v35 + 1) + 8 * j);
        v23 = [v22 _extensionBundle];
        v24 = [v23 bundleIdentifier];
        v25 = [NSBundle baseIdentifier:v24];

        if (([v6 containsObject:v25] & 1) == 0)
        {
          [*(v7 + 40) _autoOptInExtensionIfNeverOptedIn:v22];
          v26 = [[RPStreamingActivity alloc] initWithApplicationExtension:v22];
          [v34 addObject:v26];
        }
      }

      v19 = [obja countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v19);
  }

  [*(v7 + 40) setStreamingActivities:v34];
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [*(v7 + 40) streamingActivities];
    v28 = [v27 count];
    *buf = 136446722;
    v44 = "[RPBroadcastActivityExtensionViewController loadStreamingActivitiesWithHandler:]_block_invoke";
    v45 = 1024;
    v46 = 601;
    v47 = 1024;
    v48 = v28;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Returning streaming activity count = %i", buf, 0x18u);
  }

  v29 = *(v7 + 48);
  v30 = [*(v7 + 40) streamingActivities];
  (*(v29 + 16))(v29, v30);
}

void sub_100004F34(id a1, NSError *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100005554(v2);
  }
}

void sub_100004FB0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x18u);
}

void sub_100005294(id *a1)
{
  [*a1 code];
  sub_100004F90();
  sub_100004FA0();
  sub_100004FB0(&_mh_execute_header, &_os_log_default, v1, " [ERROR] %{public}s:%d Error setting up broadcast, error code: %i", v2, v3, v4, v5, 2u);
}

void sub_100005320(void *a1)
{
  [a1 code];
  sub_100004F90();
  sub_100004FA0();
  sub_100004FB0(&_mh_execute_header, &_os_log_default, v1, " [ERROR] %{public}s:%d Error setting up broadcast, error code: %i", v2, v3, v4, v5, 2u);
}

void sub_1000053A8(void *a1)
{
  [a1 code];
  sub_100004F90();
  sub_100004FA0();
  sub_100004FB0(&_mh_execute_header, &_os_log_default, v1, " [ERROR] %{public}s:%d Error finding setup UI extensions : %i", v2, v3, v4, v5, 2u);
}

void sub_100005430(void *a1)
{
  [a1 code];
  sub_100004F90();
  sub_100004FA0();
  sub_100004FB0(&_mh_execute_header, &_os_log_default, v1, " [ERROR] %{public}s:%d Error finding legacy setup UI extensions : %i", v2, v3, v4, v5, 2u);
}

void sub_1000054B8()
{
  *v1 = 136446722;
  sub_100004F90();
  *&v1[7] = 630;
  v1[9] = 2112;
  v2 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Error opting in extension %@", v1, 0x1Cu);
}

void sub_100005554(void *a1)
{
  [a1 code];
  sub_100004F90();
  sub_100004FA0();
  sub_100004FB0(&_mh_execute_header, &_os_log_default, v1, " [ERROR] %{public}s:%d error calling extension - %i", v2, v3, v4, v5, 2u);
}