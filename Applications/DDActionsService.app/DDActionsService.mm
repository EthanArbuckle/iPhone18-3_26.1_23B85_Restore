uint64_t sub_1000020D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002138(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
  if (*(a1 + 48) == 1 && !*(*(*(a1 + 40) + 8) + 40))
  {
    if (qword_10001FA40 != -1)
    {
      sub_10000B4DC();
    }

    *(*(a1 + 32) + 24) = 1;
  }

  else
  {
    *(*(a1 + 32) + 24) = 1;
  }
}

void sub_1000021D8(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000B4F0();
  }
}

intptr_t sub_1000022D4(intptr_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    objc_storeStrong((v2 + 16), *(result + 40));
    *(*(v3 + 32) + 24) = 1;
    v4 = *(v3 + 48);

    return dispatch_semaphore_signal(v4);
  }

  return result;
}

void sub_1000033F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose((v62 - 248), 8);
  _Block_object_dispose((v62 - 152), 8);
  _Unwind_Resume(a1);
}

char *sub_100003478(uint64_t a1, void *a2)
{
  result = [a2 range];
  if (v4 == 3)
  {
    v5 = [*(*(*(a1 + 32) + 8) + 40) stringByReplacingCharactersInRange:result + 1 withString:{1, @"״"}];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return _objc_release_x1();
  }

  return result;
}

void sub_1000034FC(id a1)
{
  qword_10001FA48 = dispatch_queue_create("com.apple.lookup.dictionary", 0);

  _objc_release_x1();
}

void sub_10000353C(uint64_t a1)
{
  v2 = [[SFStartLocalSearchFeedback alloc] initWithInput:*(a1 + 32) triggerEvent:11 indexType:6 queryId:*(a1 + 56)];
  v3 = [DDLookupQuery dictionarySectionForString:*(a1 + 32) queryId:*(a1 + 56)];
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), &__NSArray0__struct);
  }

  v6 = [[SFEndLocalSearchFeedback alloc] initWithStartSearch:v2];
  v7 = [*(a1 + 40) feedbackListener];
  [v7 didStartSearch:v2];
  [v7 didEndSearch:v6];
}

void sub_100003688(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003748;
  v6[3] = &unk_1000187F8;
  v9 = *(a1 + 64);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v4 = v3;
  v5 = *(a1 + 80);
  v7 = v4;
  v10 = v5;
  v8 = *(a1 + 56);
  dispatch_group_notify(v2, &_dispatch_main_q, v6);
}

void sub_100003748(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    if ([*(*(*(a1 + 64) + 8) + 40) count])
    {
      v2 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:0];
      v3 = [v2 results];
      v4 = [v3 count];

      if (v4)
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
        v11 = [NSError errorWithDomain:@"com.apple.datadetectors.ui" code:1 userInfo:0];
        v5 = [[SFErrorFeedback alloc] initWithError:v11];
        v6 = [*(a1 + 32) feedbackListener];
        [v6 didErrorOccur:v5];

        v7 = *(*(*(a1 + 64) + 8) + 40);
        v8 = *(a1 + 32);
        v9 = [DDLookupQuery footerSectionForString:*(a1 + 40) queryId:*(a1 + 72)];
        v10 = [v8 _rankFeedbackWithLocalSections:v7 remoteSections:0 footerSection:v9];

        (*(*(a1 + 48) + 16))();
      }
    }
  }
}

void sub_1000038D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [[SFErrorFeedback alloc] initWithError:v6];
    v8 = [*(a1 + 32) feedbackListener];
    [v8 didErrorOccur:v7];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003A24;
  v15[3] = &unk_100018848;
  v21 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v16 = v6;
  v17 = v9;
  v18 = v5;
  v11 = *(a1 + 48);
  v12 = *(a1 + 80);
  v19 = v11;
  v22 = v12;
  v20 = *(a1 + 56);
  v13 = v5;
  v14 = v6;
  dispatch_group_notify(v10, &_dispatch_main_q, v15);
}

void sub_100003A24(void *a1)
{
  v2 = *(a1[9] + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    if (a1[4] && ![*(*(a1[10] + 8) + 40) count])
    {
      v9 = 0;
    }

    else
    {
      v4 = *(*(a1[10] + 8) + 40);
      v5 = a1[5];
      v6 = a1[6];
      v7 = [DDLookupQuery footerSectionForString:a1[7] queryId:a1[11]];
      v9 = [v5 _rankFeedbackWithLocalSections:v4 remoteSections:v6 footerSection:v7];
    }

    v8 = a1[4];
    (*(a1[8] + 16))();
  }
}

void sub_100003B10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [[SFErrorFeedback alloc] initWithError:v7];
    v9 = [*(a1 + 32) feedbackListener];
    [v9 didErrorOccur:v8];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100003C5C;
  v16[3] = &unk_100018848;
  v22 = *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v17 = v7;
  v18 = v10;
  v19 = v6;
  v12 = *(a1 + 48);
  v13 = *(a1 + 80);
  v20 = v12;
  v23 = v13;
  v21 = *(a1 + 56);
  v14 = v6;
  v15 = v7;
  dispatch_group_notify(v11, &_dispatch_main_q, v16);
}

void sub_100003C5C(uint64_t a1)
{
  v2 = *(*(a1 + 72) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    if (*(a1 + 32) && ![*(*(*(a1 + 80) + 8) + 40) count])
    {
      v9 = 0;
    }

    else
    {
      v4 = *(*(*(a1 + 80) + 8) + 40);
      v5 = *(a1 + 40);
      v6 = [*(a1 + 48) sections];
      v7 = [DDLookupQuery footerSectionForString:*(a1 + 56) queryId:*(a1 + 88)];
      v9 = [v5 _rankFeedbackWithLocalSections:v4 remoteSections:v6 footerSection:v7];
    }

    v8 = *(a1 + 32);
    (*(*(a1 + 64) + 16))();
  }
}

void sub_100003D5C(uint64_t a1)
{
  v2 = [DDLookupQuery dictionarySectionForString:*(a1 + 32) queryId:*(a1 + 48)];
  if (v2)
  {
    v3 = [&__NSArray0__struct arrayByAddingObject:v2];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  v4 = [DDLookupQuery footerSectionForString:*(a1 + 32) queryId:*(a1 + 48)];
  v5 = v4;
  if (v2)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [v3 arrayByAddingObject:v4];

    v3 = v7;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003E9C;
  v10[3] = &unk_1000188C0;
  v8 = *(a1 + 40);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_10000489C(id *a1, int a2, void *a3)
{
  v5 = a3;
  if (v5 || !a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B560();
    }
  }

  else
  {
    v6 = [a1[4] context];
    v7 = [v6 objectForKeyedSubscript:kDataDetectorsIsAccountManagedKey];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      v9 = a1[5];
      v10 = [a1[6] _hostApplicationBundleIdentifier];
      [v9 setSourceAccountManagement:2 withBundleID:v10];
    }

    v11 = [a1[4] context];
    v12 = [v11 objectForKeyedSubscript:kDataDetectorsICSKey];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100004A30;
    v16[3] = &unk_100018940;
    v17 = v12;
    v13 = a1[5];
    v14 = a1[6];
    v18 = v13;
    v19 = v14;
    v20 = a1[4];
    v15 = v12;
    dispatch_async(&_dispatch_main_q, v16);
  }
}

void sub_100004A30(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [EKICSPreviewController alloc];
    v3 = [*(a1 + 32) dataUsingEncoding:4];
    v4 = [v2 initWithData:v3 eventStore:*(a1 + 40)];

    [v4 setAllowsImport:1];
    [v4 setPreviewDelegate:*(a1 + 48)];
    [v4 setCancelButtonWithTarget:*(a1 + 48) action:"doneWithAddingEvent"];
    v5 = [v4 viewController];
    [v5 setModalInPresentation:1];

    v6 = *(a1 + 48);
    v7 = *(v6 + 24);
    *(v6 + 24) = v4;
    v8 = v4;

    [*(a1 + 48) setModalInPresentation:1];
  }

  v9 = *(a1 + 48);
  v10 = [v9[3] viewController];
  [v9 pushViewController:v10 animated:0];

  [*(a1 + 48) setAction:*(a1 + 56)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B5A8((a1 + 48));
  }

  [*(a1 + 48) setCancellable:0];
  v11 = [*(a1 + 48) _remoteViewControllerProxy];
  [v11 viewControllerReady];
}

void sub_100004D5C(uint64_t a1)
{
  v3 = +[UIApplication sharedApplication];
  v2 = [*(a1 + 32) verticalSizeClass] == 1;
  [*(a1 + 40) transitionDuration];
  [v3 setStatusBarHidden:v2 duration:?];
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = objc_autoreleasePoolPush();
  [CLLocationManager setDefaultEffectiveBundleIdentifier:@"com.apple.Maps"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  LODWORD(argv) = UIApplicationMain(argc, argv, 0, v7);

  objc_autoreleasePoolPop(v5);
  return argv;
}

void sub_1000050F4(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 40) view];
  [v3 setAlpha:0.0];
}

id sub_100005164(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 40);
  v4 = [v3 transitionWasCancelled] ^ 1;

  return [v3 completeTransition:v4];
}

void sub_100005398(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000053DC(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(a1 + 96);
    v5 = *(a1 + 48);
    v6 = *(a1 + 72);
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained DDViewScale];
    v9 = v8;
    v10 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100005550;
    v12[3] = &unk_100018A08;
    objc_copyWeak(&v13, (a1 + 64));
    [v2 sectionsForString:v3 useNetwork:v4 clientId:v5 queryId:v6 selectionType:1 domain:0 range:v9 scale:*(a1 + 80) proxy:*(a1 + 88) handler:{v10, v12}];

    objc_destroyWeak(&v13);
  }

  else
  {
    v11 = objc_loadWeakRetained((a1 + 64));
    [v11 showError:0 animated:0];
  }
}

void sub_100005550(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addSections:v6 error:v5];
}

void sub_10000568C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000056A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _remoteViewControllerProxy];
  [v2 performClientQueryWithServerAccessPermitted:*(a1 + 40) localSearchPermitted:1];
}

void sub_1000058DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100005920(uint64_t a1)
{
  if (*(a1 + 32))
  {
    *(*(a1 + 40) + 64) = 1;
    v1 = *(a1 + 48);
    v3 = [*(a1 + 32) coreResult];
    v4 = *(a1 + 88);
    v5 = *(a1 + 56);
    v6 = *(a1 + 80);
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained DDViewScale];
    v9 = v8;
    v10 = *(a1 + 64);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100005AA8;
    v12[3] = &unk_100018A08;
    objc_copyWeak(&v13, (a1 + 72));
    [v1 sectionsForResult:v3 useNetwork:v4 clientId:v5 queryId:v6 scale:v10 proxy:v12 handler:v9];

    objc_destroyWeak(&v13);
  }

  else
  {
    v11 = objc_loadWeakRetained((a1 + 72));
    [v11 showError:0 animated:0];
  }
}

void sub_100005AA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addSections:v6 error:v5];
}

id sub_100006138(id *a1)
{
  if (!a1[4])
  {
    return [a1[6] setSections:a1[5]];
  }

  if ([a1[5] count])
  {
    v2 = a1[4];
    if (!v2)
    {
      return [a1[6] setSections:a1[5]];
    }

    if ([v2 code] == -1009)
    {
      v3 = [a1[4] domain];
      v4 = [v3 isEqualToString:NSURLErrorDomain];

      if (v4)
      {
        return [a1[6] setSections:a1[5]];
      }
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      return [a1[6] setSections:a1[5]];
    }

    sub_10000B644(a1 + 4);
    return [a1[6] setSections:a1[5]];
  }

  else
  {
    v6 = a1[6];
    v7 = a1[4];

    return [v6 showError:v7 animated:0];
  }
}

void sub_100006C04(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) view];
  [v1 setAlpha:1.0];
}

id sub_100007348(void *a1)
{
  v2 = a1[4];
  if (v2[6])
  {
    [v2[6] timeIntervalSinceNow];
    if (v3 > -1.0)
    {
      if (a1[5])
      {
        v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
        if (v4)
        {
          sub_10000B804(v4, v5, v6, v7, v8, v9, v10, v11);
        }
      }

      return [UIApp endBackgroundTask:a1[6]];
    }

    v2 = a1[4];
  }

  [v2 setQueryBlock:0];
  if (a1[5])
  {
    v12 = [*(a1[4] + 16) feedbackListener];
    [v12 searchViewDidDisappear:a1[5]];

    v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v13)
    {
      sub_10000B840(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  return [UIApp endBackgroundTask:a1[6]];
}

void sub_100007530(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000075C4;
  v3[3] = &unk_100018AF8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_1000075C4(uint64_t a1)
{
  v3 = +[UIApplication sharedApplication];
  if ([*(a1 + 32) verticalSizeClass] == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 40);
  }

  [v3 setStatusBarHidden:v2 & 1 duration:0.0];
}

uint64_t sub_100007AE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 updateStyle];
  }

  return result;
}

void sub_100008194(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [UIImage imageWithData:a2];
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

void sub_100008580(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100008664(uint64_t a1)
{
  v2 = [[DDReminderCreationController alloc] initWithAction:*(a1 + 32) delegate:*(a1 + 40)];
  v3 = [[REMReminderCreationViewController alloc] initWithDelegate:v2];
  objc_storeStrong((*(a1 + 40) + 32), v2);
  objc_storeStrong((*(a1 + 40) + 24), v3);
  if (!+[NSThread isMainThread])
  {
    sub_10000B8C4(a1, (a1 + 40));
  }

  [*(a1 + 40) addChildViewController:v3];
  v4 = [*(a1 + 40) view];
  v5 = [v3 view];
  [v4 addSubview:v5];

  [v3 didMoveToParentViewController:*(a1 + 40)];
  v6 = [*(a1 + 40) view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v3 view];
  [v15 setFrame:{v8, v10, v12, v14}];

  v16 = [v3 view];
  [v16 setAutoresizingMask:18];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B5A8((a1 + 40));
  }

  [*(a1 + 40) setCancellable:0];
  v17 = [*(a1 + 40) _remoteViewControllerProxy];
  [v17 viewControllerReady];
}

void sub_100008CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008CF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_7;
  }

  if (!v6)
  {
    if ([v5 length])
    {
      v8 = WeakRetained[3];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100008E2C;
      block[3] = &unk_100018760;
      v10 = WeakRetained;
      v11 = v5;
      v12 = *(a1 + 32);
      dispatch_async(v8, block);

      goto LABEL_8;
    }

LABEL_7:
    dispatch_group_leave(*(a1 + 32));
    goto LABEL_8;
  }

  dispatch_group_leave(*(a1 + 32));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000B980(v6);
  }

LABEL_8:
}

void sub_100008E2C(uint64_t a1)
{
  [*(a1 + 32) setTitle:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

NSString *sub_1000094C8()
{
  Category = DDResultGetCategory();
  if (Category == 3)
  {
    v1 = &CNContactPostalAddressesKey;
    goto LABEL_9;
  }

  if (Category == 2)
  {
    v1 = &CNContactPhoneNumbersKey;
    goto LABEL_9;
  }

  Type = DDResultGetType();
  if (CFEqual(Type, DDBinderEmailKey) || CFEqual(Type, DDBinderJabberOrEmailKey) || CFEqual(Type, DDBinderAIMOrEmailKey))
  {
    v1 = &CNContactEmailAddressesKey;
    goto LABEL_9;
  }

  if (CFEqual(Type, DDBinderGenericURLKey))
  {
    v5 = [DDResultGetMatchedString() lowercaseString];
    if ([v5 hasPrefix:@"mailto:"])
    {
      v6 = CNContactEmailAddressesKey;
    }

    else
    {
      v7 = [NSURL URLWithString:v5];
      v8 = dd_handleFromTelScheme();

      if (v8)
      {
        v6 = CNContactPhoneNumbersKey;
      }

      else
      {
        v6 = 0;
      }
    }

    v3 = v6;
  }

  else
  {
    if (CFEqual(Type, DDBinderIMScreenNameKey))
    {
      v1 = &CNContactInstantMessageAddressesKey;
LABEL_9:
      v3 = *v1;

      return v3;
    }

    v3 = 0;
  }

  return v3;
}

void sub_1000096C8(uint64_t a1)
{
  v2 = objc_alloc_init(CNContactStoreConfiguration);
  [v2 setIncludeAcceptedIntroductions:1];
  v3 = [[CNContactStore alloc] initWithConfiguration:v2];
  v4 = [CNContactViewController viewControllerForUnknownContact:*(a1 + 32)];
  [v4 setContactStore:v3];
  [v4 setAllowsActions:1];
  [v4 setDelegate:*(a1 + 40)];
  [v4 setActions:33];
  [v4 setEditMode:0];
  v5 = [DDAddToContactsViewController alternateNameForContact:*(a1 + 32)];
  [v4 setAlternateName:v5];

  objc_storeStrong((*(a1 + 40) + 24), v4);
  *(*(a1 + 40) + 32) = 0;
  if (*(a1 + 48))
  {
    v6 = [*(a1 + 32) valueForKey:?];
    if ([v6 count] == 1)
    {
      [v4 setPrimaryPropertyKey:*(a1 + 48)];
    }
  }

  v7 = [v4 contactStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000987C;
  v8[3] = &unk_100018B98;
  v8[4] = *(a1 + 40);
  [v7 requestAccessForEntityType:0 completionHandler:v8];
}

void sub_10000987C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009950;
    block[3] = &unk_100018AA8;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
LABEL_4:

    return;
  }

  v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (!v6)
  {
    goto LABEL_4;
  }

  sub_10000BAF8(v6, v7, v8, v9, v10, v11, v12, v13);
}

void sub_100009950(uint64_t a1)
{
  [*(a1 + 32) pushViewController:*(*(a1 + 32) + 24) animated:0];
  [*(a1 + 32) setCancellable:1];
  v2 = [*(a1 + 32) _remoteViewControllerProxy];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009A2C;
  v3[3] = &unk_100018B20;
  v3[4] = *(a1 + 32);
  [v2 getIsBeingPresentedInPopover:v3];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000BB34(v2);
  }

  [v2 viewControllerReady];
}

void sub_100009DD8(uint64_t a1)
{
  v3 = +[UIApplication sharedApplication];
  v2 = [*(a1 + 32) verticalSizeClass] == 1;
  [*(a1 + 40) transitionDuration];
  [v3 setStatusBarHidden:v2 duration:?];
}

void sub_10000A03C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000A1A8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5 && a2)
  {
    v6 = [*(a1 + 32) context];
    v7 = [v6 objectForKeyedSubscript:kDataDetectorsIsAccountManagedKey];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) _hostApplicationBundleIdentifier];
      [v9 setSourceAccountManagement:2 withBundleID:v10];
    }

    v51 = 0;
    v11 = *(a1 + 40);
    [*(a1 + 32) associatedResults];
    v12 = [*(a1 + 32) context];
    v13 = DDUIEventForResults();

    v14 = *(a1 + 40);
    [*(a1 + 32) associatedResults];
    v15 = [*(a1 + 32) context];
    v16 = [*(a1 + 48) _hostApplicationBundleIdentifier];
    v50 = 0;
    v17 = DDUISuggestedEventForResults();
    v18 = 0;

    if (!v17)
    {
      goto LABEL_28;
    }

    v19 = [v17 title];
    v20 = [v19 length];

    v21 = v20 != 0;
    if (v20)
    {
      v22 = [v17 title];
      [v13 setTitle:v22];
    }

    v23 = [v17 notes];
    v24 = [v23 length];

    if (v24)
    {
      v25 = [v17 notes];
      [v13 setNotes:v25];

      v21 = 1;
    }

    v26 = [v17 URL];

    if (v26)
    {
      v27 = [v17 URL];
      [v13 setURL:v27];

      v21 = 1;
    }

    v28 = [v17 location];

    if (v28)
    {
      v29 = [v17 location];
      [v13 setLocation:v29];

      v21 = 1;
    }

    v30 = [v17 structuredLocation];

    if (v30)
    {
      v31 = [v17 structuredLocation];
      [v13 setStructuredLocation:v31];

      v21 = 1;
    }

    v32 = [v17 startDate];

    if (v32)
    {
      [v13 setAllDay:0];
      v33 = [v17 startDate];
      [v13 setStartDate:v33];

      v34 = [v17 endDate];
      [v13 setEndDate:v34];

      v21 = 1;
    }

    v35 = [v17 startDate];
    if (v35 || ([v17 duration], v36 <= 0.0))
    {
    }

    else if (([v13 isAllDay] & 1) == 0)
    {
      v37 = [v13 startDate];
      [v17 duration];
      v38 = [v37 dateByAddingTimeInterval:?];
      [v13 setEndDate:v38];

      goto LABEL_26;
    }

    if (!v21)
    {
LABEL_27:
      objc_storeStrong((*(a1 + 48) + 56), 0);
LABEL_28:
      v39 = [*(a1 + 32) hostApplication] == 1 || objc_msgSend(*(a1 + 32), "hostApplication") == 2;
      *(*(a1 + 48) + 32) = v39;
      v40 = sub_10000A684(v13, *(a1 + 40));
      v41 = *(a1 + 48);
      v42 = *(v41 + 48);
      *(v41 + 48) = v40;

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000A7C8;
      block[3] = &unk_100018940;
      v45 = *(a1 + 40);
      v43 = v45.i64[0];
      v47 = vextq_s8(v45, v45, 8uLL);
      v48 = v13;
      v49 = *(a1 + 32);
      v44 = v13;
      dispatch_async(&_dispatch_main_q, block);

      goto LABEL_32;
    }

LABEL_26:
    *(*(a1 + 48) + 40) = v51;
    goto LABEL_27;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000BBB4();
  }

LABEL_32:
}

id sub_10000A684(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [EKEvent eventWithEventStore:a2];
  v5 = [v3 title];
  [v4 setTitle:v5];

  v6 = [v3 timeZone];
  [v4 setTimeZone:v6];

  v7 = [v3 startDate];
  [v4 setStartDate:v7];

  v8 = [v3 endDate];
  [v4 setEndDate:v8];

  v9 = [v3 notes];
  [v4 setNotes:v9];

  v10 = [v3 location];
  [v4 setLocation:v10];

  v11 = [v3 URL];

  [v4 setURL:v11];

  return v4;
}

void sub_10000A7C8(uint64_t a1)
{
  v2 = objc_alloc_init(EKEventEditViewController);
  objc_storeStrong((*(a1 + 32) + 24), v2);
  [v2 setEventStore:*(a1 + 40)];
  [v2 setEvent:*(a1 + 48)];
  [v2 setEditViewDelegate:*(a1 + 32)];
  [v2 setModalInPresentation:1];
  [*(a1 + 32) setModalInPresentation:1];
  [*(a1 + 32) addChildViewController:v2];
  v3 = [v2 view];
  v4 = [*(a1 + 32) view];
  [v4 addSubview:v3];

  [v2 didMoveToParentViewController:*(a1 + 32)];
  v5 = [*(a1 + 32) view];
  [v5 bounds];
  [v3 setFrame:?];

  [v3 setAutoresizingMask:18];
  [*(a1 + 32) setAction:*(a1 + 56)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B5A8((a1 + 32));
  }

  [*(a1 + 32) setCancellable:0];
  v6 = [*(a1 + 32) _remoteViewControllerProxy];
  [v6 viewControllerReady];
}

void sub_10000AC74(uint64_t a1)
{
  v3 = +[UIApplication sharedApplication];
  v2 = [*(a1 + 32) verticalSizeClass] == 1;
  [*(a1 + 40) transitionDuration];
  [v3 setStatusBarHidden:v2 duration:?];
}

id sub_10000ADA0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSMutableString string];
  v6 = [v4 objectForKeyedSubscript:kDataDetectorsLeadingText];
  v7 = [v4 objectForKeyedSubscript:kDataDetectorsMiddleText];
  v8 = [v4 objectForKeyedSubscript:kDataDetectorsTrailingText];

  if (v7 || ([v3 firstObject], v7 = objc_claimAutoreleasedReturnValue(), v7, v7) && (objc_msgSend(v3, "firstObject"), objc_claimAutoreleasedReturnValue(), DDResultGetMatchedString(), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (v6)
    {
      v9 = [v6 componentsSeparatedByString:@"\n"];
      v10 = [v9 lastObject];
      [v5 appendString:v10];
    }

    [v5 appendString:v7];
    if (v8)
    {
      v11 = [v8 componentsSeparatedByString:@"\n"];
      v12 = [v11 firstObject];
      [v5 appendString:v12];
    }
  }

  return v5;
}

id sub_10000AF5C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSMutableArray array];
  if ([v3 count])
  {
    v6 = [v3 sortedArrayUsingFunction:&DDResultProximitySort context:{objc_msgSend(v3, "objectAtIndex:", 0)}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      v10 = DDBinderPhoneNumberKey;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          Type = DDResultGetType();
          if (CFStringCompare(Type, v10, 0) == kCFCompareEqualTo)
          {
            DDResultCopyPhoneValue();
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  v14 = [v4 objectForKey:kDataDetectorsSelectedTextKey];
  if (v14)
  {
    [v5 addObject:v14];
  }

  v15 = [v5 componentsJoinedByString:@"\n"];

  return v15;
}

id sub_10000B174(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 count])
  {
    v5 = [v3 sortedArrayUsingFunction:&DDResultProximitySort context:{objc_msgSend(v3, "objectAtIndex:", 0)}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v17;
      v10 = DDBinderFullAddressKey;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          while (1)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            Type = DDResultGetType();
            if (CFStringCompare(Type, v10, 0) == kCFCompareEqualTo)
            {
              break;
            }

            i = i + 1;
            if (v7 == i)
            {
              goto LABEL_4;
            }
          }

          v14 = DDResultGetMatchedString();

          v8 = v14;
        }

LABEL_4:
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_10000B334(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v5 count])
  {
    v7 = dd_dueDateAndTimezoneOfEventResults();
    v8 = 0;
    if (v7)
    {
      v9 = [NSCalendar alloc];
      v10 = +[NSCalendar currentCalendar];
      v11 = [v10 calendarIdentifier];
      v12 = [v9 initWithCalendarIdentifier:v11];

      if (v8)
      {
        [v12 setTimeZone:v8];
      }

      v13 = [v12 components:2122492 fromDate:{v7, 0}];
      if (a3)
      {
        *a3 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_10000B5A8(id *a1)
{
  v1 = [*a1 _remoteViewControllerProxy];
  v2 = 138412290;
  v3 = v1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Telling proxy %@ that the remote view controller is ready", &v2, 0xCu);
}

void sub_10000B644(uint64_t *a1)
{
  v1 = *a1;
  v2 = 138412290;
  v3 = v1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "We have dictionary results, ignoring Parsec error: %@", &v2, 0xCu);
}

void sub_10000B6C8(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Could no fetch lookup data: %@", &v1, 0xCu);
}

void sub_10000B748(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could no fetch lookup data: %@", &v1, 0xCu);
}

void sub_10000B8C4(uint64_t a1, void *a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"DDReminderViewController.m" lineNumber:66 description:@"-[DDReminderViewController prepareForAction:] should be called from the main thread!"];
}

void sub_10000B980(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to fetch title: %@", &v1, 0xCu);
}

void sub_10000BA00(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Preparing a view controller for the action %@", &v1, 0xCu);
}

void sub_10000BB34(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Telling proxy %@ that we're done", &v1, 0xCu);
}

void sub_10000BBFC(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[5];
  v5 = a1[7];
  v6 = a1[6];
  v7 = [a2 event];
  v8 = 134219010;
  v9 = a3;
  v10 = 2048;
  v11 = v4;
  v12 = 2112;
  v13 = v5;
  v14 = 2112;
  v15 = v6;
  v16 = 2112;
  v17 = v7;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Will record user interaction %ld with prefill mode %ld and event type classification %@. Proposed event: %@, final event: %@ #DDUINLEventMetrics", &v8, 0x34u);
}