void sub_1000032A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000032CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 updatedObjects];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained contentItem];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 updateActionView];
  }

  v9 = [v3 deletedObjects];
  v10 = [v9 count];

  if (v10)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = v3;
    obj = [v3 deletedObjects];
    v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
            v17 = [v16 formID];
            v18 = objc_loadWeakRetained((a1 + 32));
            v19 = [v18 contentItem];
            v20 = [v19 ID];
            v21 = [v17 isEqualToNumber:v20];

            if (v21)
            {
              v22 = objc_loadWeakRetained((a1 + 32));
              [v22 updateActionView];

              goto LABEL_16;
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v3 = v33;
  }

  v23 = objc_loadWeakRetained((a1 + 32));
  v24 = [v23 surveyBugForm];
  v25 = objc_loadWeakRetained((a1 + 32));
  v26 = [v25 team];
  v27 = [v24 draftResponsesContentItemsForTeam:v26];

  if (v27 && [v27 count])
  {
    v28 = [v3 deletedObjects];
    if (([v28 intersectsSet:v27] & 1) == 0)
    {
      v29 = [v3 updatedObjects];
      if (![v29 intersectsSet:v27])
      {
        v31 = [v3 insertedObjects];
        v32 = [v31 intersectsSet:v27];

        if ((v32 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    v30 = objc_loadWeakRetained((a1 + 32));
    [v30 updateActionView];
  }

LABEL_24:
}

id sub_1000038FC(uint64_t a1)
{
  [*(a1 + 32) setIsLoading:0];
  [*(a1 + 32) updateWebView];
  [*(a1 + 32) updateActionView];
  v2 = *(a1 + 32);

  return [v2 updateNavigation];
}

uint64_t sub_10000394C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = +[FBALog appHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100091F38(v4);
    }

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"SURVEY_LOAD_ERROR_TITLE" value:&stru_1000E2210 table:0];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"SURVEY_LOAD_ERROR_MESSAGE" value:&stru_1000E2210 table:0];
    v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_1000E2210 table:0];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003B34;
    v14[3] = &unk_1000DE458;
    v14[4] = *(a1 + 32);
    v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:v14];
    [v9 addAction:v12];

    [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100003B34(uint64_t a1)
{
  v1 = [*(a1 + 32) splitViewController];
  [v1 dismissSecondaryOrShowEmptyViewControllerAnimated:1];
}

void sub_100004E4C(uint64_t a1)
{
  v2 = +[FBALog appHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortDescription];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Confirmed closing Feedback [%{public}@].", &v5, 0xCu);
  }

  [*(a1 + 40) closeFeedbackWithItem:*(a1 + 32)];
  v4 = [*(a1 + 40) presentedViewController];

  if (v4)
  {
    [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100004F44(uint64_t a1)
{
  v2 = +[FBALog appHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) shortDescription];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Cancelled closing Feedback [%{public}@].", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) presentedViewController];

  if (v4)
  {
    [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100005034(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) tableView];
    [v2 deselectRowAtIndexPath:*(a1 + 32) animated:1];
  }
}

void sub_1000051A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[FBALog appHandle];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v13 = 138543362;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Closed Feedback failed with error [%{public}@].", &v13, 0xCu);
    }

    v4 = [v3 userInfo];
    v6 = [v4 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v7 = [v4 objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
    v8 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"OK" value:&stru_1000E2210 table:0];
    v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
    [v8 addAction:v11];

    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
  }

  else if (v5)
  {
    v12 = [*(a1 + 40) shortDescription];
    v13 = 138543362;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Closed Feedback [%{public}@].", &v13, 0xCu);
  }
}

void sub_100005F98(uint64_t a1, void *a2)
{
  v11[0] = NSLinkAttributeName;
  v3 = a2;
  v4 = [v3 URL];
  v12[0] = v4;
  v11[1] = NSForegroundColorAttributeName;
  v5 = +[UIColor blueColor];
  v11[2] = NSUnderlineStyleAttributeName;
  v12[1] = v5;
  v12[2] = &off_1000E5D68;
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  [*(a1 + 32) beginEditing];
  v7 = *(a1 + 32);
  v8 = [v3 range];
  v10 = v9;

  [v7 addAttributes:v6 range:{v8, v10}];
  [*(a1 + 32) endEditing];
}

void sub_100006824(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) fileSizeLabel];
  v4 = v3;
  if (v2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  if (v2)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  [v3 setAlpha:v5];

  v7 = [*(a1 + 32) fileNameLabel];
  [v7 setAlpha:v5];

  v8 = [*(a1 + 32) icon];
  [v8 setAlpha:v5];

  v9 = [*(a1 + 32) debugLabel];
  [v9 setAlpha:v6];
}

void sub_100006EEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) dedSharingDevice];
  [v1 didPinPairWithDevice:v2];
}

void sub_10000890C(id a1)
{
  v1 = objc_alloc_init(FBANetworkMonitor);
  v2 = qword_10010AF20;
  qword_10010AF20 = v1;

  v3 = qword_10010AF20;

  [v3 updateCache];
}

void sub_100008C14(id a1)
{
  qword_10010AF30 = os_log_create("com.apple.appleseed.FeedbackAssistant", "login");

  _objc_release_x1();
}

void sub_100009130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009158(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[FBKData sharedInstance];
    v4 = [v3 loginManager];
    v5 = [v4 loginState];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (v5 == 1)
    {
      [WeakRetained dismissViewControllerAnimated:1 completion:&stru_1000DE5D0];
    }

    else
    {
      v8 = [*(a1 + 32) signInViewController];
      [v9 presentViewController:v8 animated:1 completion:&stru_1000DE5F0];
    }
  }

  else
  {
    v7 = sub_100009310();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100092070(v7);
    }
  }
}

void sub_100009260(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"FBADidDismissLegalAgreementNotification" object:0];
}

void sub_1000092B8(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"FBADidDismissLegalAgreementNotification" object:0];
}

id sub_100009310()
{
  if (qword_10010AF48 != -1)
  {
    sub_1000920B4();
  }

  v1 = qword_10010AF40;

  return v1;
}

uint64_t sub_100009860(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = &off_1000DF910;
  }

  else if ((a3 & 2) != 0)
  {
    v4 = *(a1 + 32);
    v5 = &off_1000DF918;
  }

  else
  {
    if ((a3 & 4) == 0)
    {
      v6 = +[NSBundle mainBundle];
      v7 = FBKCommonStrings;
      v8 = [v6 localizedStringForKey:@"GENERIC_LOGIN_FAILURE_TITLE" value:&stru_1000E2210 table:FBKCommonStrings];
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"GENERIC_LOGIN_FAILURE_MESSAGE" value:&stru_1000E2210 table:v7];
      v11 = [UIAlertController alertControllerWithTitle:v8 message:v10 preferredStyle:1];

      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"OK" value:&stru_1000E2210 table:0];
      v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:0];
      [v11 addAction:v14];

      [*(a1 + 32) presentViewController:v11 animated:1 completion:0];
      goto LABEL_9;
    }

    v4 = *(a1 + 32);
    v5 = &off_1000DF920;
  }

  [v4 performSegueWithIdentifier:*v5 sender:v4];
LABEL_9:
  [*(a1 + 32) showLogInUI];
  v15 = *(*(a1 + 40) + 16);

  return v15();
}

void sub_100009FB4(id a1)
{
  qword_10010AF40 = os_log_create("com.apple.appleseed.FeedbackAssistant", "login-vc");

  _objc_release_x1();
}

id sub_10000A588()
{
  if (qword_10010AF68 != -1)
  {
    sub_1000923EC();
  }

  v1 = qword_10010AF60;

  return v1;
}

void sub_10000B4A8(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10010AF50;
  qword_10010AF50 = v1;

  v3 = qword_10010AF50;

  [v3 setDateFormat:@"YYYY-MM-dd HH:mm:ss'.'SSSSSSXX"];
}

void sub_10000B4FC(id a1)
{
  qword_10010AF60 = os_log_create("com.apple.appleseed.FeedbackAssistant", "log-view");

  _objc_release_x1();
}

void sub_10000B540(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10000BD2C(id a1)
{
  v1 = objc_opt_class();
  qword_10010AF78 = NSStringFromClass(v1);

  _objc_release_x1();
}

void sub_10000D114(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

void sub_10000D160(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fbkHideSpinner];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 updateBarButton];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 updateHeader];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 updateContent];

  v7 = objc_loadWeakRetained((a1 + 32));
  v6 = [v7 tableView];
  [v6 reloadData];
}

void sub_10000D20C(uint64_t a1)
{
  v2 = +[FBKData sharedInstance];
  v3 = [*(a1 + 32) contentItem];
  v4 = [v3 feedback];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D2E0;
  v5[3] = &unk_1000DE730;
  v6 = *(a1 + 40);
  [v2 fetchFeedbackStatusForFeedback:v4 completion:v5];
}

void sub_10000D2F0(uint64_t a1)
{
  v2 = +[FBKData sharedInstance];
  v3 = [*(a1 + 32) contentItem];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D3F4;
  v5[3] = &unk_1000DE7A8;
  objc_copyWeak(&v8, (a1 + 56));
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v2 refreshFormResponseStubFromContentItem:v3 completion:v5];

  objc_destroyWeak(&v8);
}

void sub_10000D3F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
LABEL_9:
    if ([*(a1 + 32) shouldShowStatus])
    {
      v20 = *(a1 + 40);
    }

    else
    {
      v20 = *(a1 + 48);
    }

    (*(v20 + 16))();
    goto LABEL_13;
  }

  v8 = [v6 isFBAErrorWithCode:-1010];
  v9 = +[FBALog appHandle];
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009277C(a1, v10);
    }

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"FEEDBACK_LOAD_ERROR_TITLE" value:&stru_1000E2210 table:0];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"FEEDBACK_LOAD_ERROR_MESSAGE" value:&stru_1000E2210 table:0];
    v15 = [UIAlertController alertControllerWithTitle:v12 message:v14 preferredStyle:1];

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"OK" value:&stru_1000E2210 table:FBKCommonStrings];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000D6A0;
    v21[3] = &unk_1000DE780;
    objc_copyWeak(&v22, (a1 + 56));
    v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:v21];
    [v15 addAction:v18];

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained presentViewController:v15 animated:1 completion:0];

    objc_destroyWeak(&v22);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "FormResponseStub fetched has been deleted. Ignoring", buf, 2u);
  }

LABEL_13:
}

void sub_10000D6A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D768;
  v5[3] = &unk_1000DE708;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:v5];

  objc_destroyWeak(&v6);
}

void sub_10000D768(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained splitViewController];

  [v2 dismissSecondaryOrShowEmptyViewControllerAnimated:1];
}

void sub_10000D7C8(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 deletedObjects];
  v4 = [v3 containsObject:*(a1 + 32)];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [WeakRetained splitViewController];

    [v6 dismissSecondaryOrShowEmptyViewControllerAnimated:1];
    goto LABEL_7;
  }

  v7 = [v10 updatedObjects];
  if ([v7 containsObject:*(a1 + 32)])
  {
  }

  else
  {
    v8 = [v10 refreshedObjects];
    v9 = [v8 containsObject:*(a1 + 32)];

    if (!v9)
    {
      goto LABEL_7;
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_7:
}

void sub_10000DC74(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10010AF80;
  qword_10010AF80 = v1;

  [qword_10010AF80 setDateStyle:3];
  v3 = qword_10010AF80;

  [v3 setTimeStyle:2];
}

void sub_10000E030(uint64_t a1)
{
  v3 = +[FBADraftManager sharedInstance];
  v2 = [*(a1 + 32) contentItem];
  [v3 beginFeedbackWithDraft:v2];
}

uint64_t sub_10000E408(uint64_t a1)
{
  v2 = +[FBADraftManager sharedInstance];
  v3 = [*(a1 + 32) contentItem];
  [v2 deleteDraftFromContentItem:v3 dismissViewOnCompletion:0];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_10000E928(uint64_t a1)
{
  v2 = +[FBALog appHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "performing batch updates during size change", v4, 2u);
  }

  v3 = [*(a1 + 32) tableView];
  [v3 performBatchUpdates:&stru_1000DE888 completion:&stru_1000DE8C8];
}

void sub_10000F16C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "background login on launch, success ? [%d]", v4, 8u);
  }
}

void sub_10000F360(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = sub_10000F530();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 32) biometricsState];
      v14 = 134217984;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Application is active and logged in. Biometric state [%lu]", &v14, 0xCu);
    }

    [*(a1 + 32) _startBiometricsTimer];
    v5 = +[FBKData sharedInstance];
    v6 = [v5 currentUser];
    if (v6)
    {
      v7 = v6;
      v8 = +[FBADraftManager sharedInstance];
      v9 = [v8 hasOpenDraft];

      if ((v9 & 1) == 0)
      {
        v10 = +[FBADraftManager sharedInstance];
        [v10 reloadApp];

        v11 = +[NSUserDefaults standardUserDefaults];
        v12 = [v11 BOOLForKey:FBKPushNotificationsEnabled];

        if (!v12)
        {
          return;
        }

        v13 = +[_TtC18Feedback_Assistant22FBANotificationManager sharedManager];
        [v13 requestPermission];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = +[FBALog appHandle];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Application became active, but there's no user or a modal draft/feedback is presented. Will not reload.", &v14, 2u);
    }

LABEL_11:
  }
}

id sub_10000F530()
{
  if (qword_10010AFA8 != -1)
  {
    sub_10009291C();
  }

  v1 = qword_10010AFA0;

  return v1;
}

void sub_10000FE94(uint64_t a1)
{
  v2 = +[FBALog appHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Will authenticate with Launch Action", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000FFB0;
  v8[3] = &unk_1000DE988;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = *(&v7 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v9 = v6;
  v10 = v7;
  [v3 logOutIfNeededAndRun:v8];
}

void sub_10000FFB0(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010088;
  v9[3] = &unk_1000DE960;
  v2 = *(a1 + 40);
  v8 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v8;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  [v3 interactiveStartupWithLaunchAction:v2 completion:v9];
}

uint64_t sub_100010088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) handleInteractiveLoginResultWithLoginManager:*(a1 + 40) pendingUI:a3 startupFailures:a2 skipBiometrics:1];
  [*(a1 + 32) updateHomeScreenVisibilityFromLaunchAction:*(a1 + 48)];
  v4 = +[FBADraftManager sharedInstance];
  [v4 respondToLaunchAction:*(a1 + 48)];

  result = *(a1 + 56);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_10001011C(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = +[FBALog newURLActionActivity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010214;
    block[3] = &unk_1000DE9B0;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v8 = v4;
    v9 = *(a1 + 48);
    os_activity_apply(v3, block);
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }
}

uint64_t sub_100010214(uint64_t a1)
{
  [*(a1 + 32) updateHomeScreenVisibilityFromLaunchAction:*(a1 + 40)];
  v2 = +[FBADraftManager sharedInstance];
  [v2 respondToLaunchAction:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100010514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001052C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100010E00(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) biometricsState] == 13)
  {
    v3 = sub_10000F530();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100092ACC(v2, v3);
    }

    goto LABEL_20;
  }

  v3 = [*v2 lastUsedLAContext];
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 applicationState];

  v6 = sub_10000F530();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*v2 biometricsState];
    v14 = 134218240;
    v15 = v7;
    v16 = 1024;
    v17 = v5 == 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Biometrics evaluation timer fired. Current state [%lu], Active? [%i]", &v14, 0x12u);
  }

  if (!v5 && [*(a1 + 40) isEqual:v3])
  {
    if ([*v2 biometricsState] == 3)
    {
      v8 = sub_10000F530();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100092A98();
      }

      v9 = *v2;
      v10 = 4;
LABEL_16:
      [v9 setBiometricsState:v10];
      goto LABEL_20;
    }

    v11 = [*v2 biometricsState];
    v12 = sub_10000F530();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v11 == 9)
    {
      if (v13)
      {
        sub_100092A64();
      }

      v9 = *v2;
      v10 = 10;
      goto LABEL_16;
    }

    if (v13)
    {
      sub_1000929E4(v2);
    }
  }

LABEL_20:
}

void sub_1000115B4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100011678;
  v9[3] = &unk_1000DEA50;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  v13 = a2;
  v12 = v5;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, v9);
}

void sub_100011678(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "Biometric callback", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100011748;
  v6[3] = &unk_1000DEA50;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v10 = *(a1 + 56);
  v9 = v5;
  os_activity_apply(v2, v6);
}

void sub_100011748(uint64_t a1)
{
  v2 = sub_10000F530();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Biometrics evaluation callback", buf, 2u);
  }

  v3 = sub_10000F530();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100092BC4(a1, v3);
  }

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) lastUsedLAContext];
  LOBYTE(v4) = [v4 isEqual:v5];

  if (v4)
  {
    [*(a1 + 40) setBiometricsState:6];
    v6 = +[UIApplication sharedApplication];
    v7 = [v6 applicationState];

    if (v7 == 2)
    {
      v8 = sub_10000F530();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Biometrics evaluation completed in background", v14, 2u);
      }

      v9 = *(a1 + 40);
      v10 = 7;
    }

    else if (*(a1 + 56) == 1)
    {
      v9 = *(a1 + 40);
      v10 = 13;
    }

    else
    {
      v12 = *(a1 + 48);
      if (v12)
      {
        if ([v12 code] == -2)
        {
          v9 = *(a1 + 40);
          v10 = 8;
        }

        else
        {
          v13 = [*(a1 + 48) code];
          v9 = *(a1 + 40);
          if (v13 == -4)
          {
            v10 = 9;
          }

          else
          {
            v10 = 11;
          }
        }
      }

      else
      {
        v9 = *(a1 + 40);
        v10 = 12;
      }
    }

    [v9 setBiometricsState:v10];
  }

  else
  {
    v11 = sub_10000F530();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Biometrics handler context does not match last used context. Ignoring result", v15, 2u);
    }
  }
}

void sub_100011E68(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100092D74(v2);
  }
}

uint64_t sub_100011EC4(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:FBKPushItemTypeAnnouncement])
  {
    v2 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = *(a1 + 40);
    }

    else
    {
      v3 = [*(a1 + 48) instantiateViewControllerWithIdentifier:@"FBAAnnouncementViewController"];
    }

    v5 = v3;
    v6 = [*(a1 + 56) api];
    v7 = *(a1 + 64);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100012058;
    v10[3] = &unk_1000DEB08;
    v11 = v5;
    v12 = *(a1 + 40);
    v13 = *(a1 + 72);
    v8 = *(a1 + 80);
    v4 = v5;
    [v6 updateAnnouncementWithID:v7 success:v10 error:v8];

    goto LABEL_8;
  }

  if ([*(a1 + 32) isEqualToString:FBKPushItemTypeFollowup])
  {
    v4 = [*(a1 + 56) loginManager];
    [v4 runAfterLogin:&stru_1000DEB48];
LABEL_8:
  }

  return (*(*(a1 + 88) + 16))();
}

void sub_100012058(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[NSOperationQueue mainQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012148;
  v6[3] = &unk_1000DEAE0;
  v7 = a1[4];
  v8 = v3;
  v9 = a1[5];
  v10 = a1[6];
  v5 = v3;
  [v4 addOperationWithBlock:v6];
}

void sub_100012148(uint64_t a1)
{
  v2 = [*(a1 + 40) contentItem];
  [*(a1 + 32) setContentItem:v2];

  if (*(a1 + 32) != *(a1 + 48))
  {
    [*(a1 + 56) resetViewControllers:1];
    v3 = dispatch_time(0, 1000000000);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100012240;
    v4[3] = &unk_1000DE4D0;
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    dispatch_after(v3, &_dispatch_main_q, v4);
  }
}

void sub_100012240(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[UINavigationController alloc] initWithRootViewController:*(a1 + 40)];
  [v1 showDetailViewController:v2 sender:0];
}

void sub_1000122A8(id a1, unint64_t a2)
{
  v2 = +[FBALog appHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100092DFC();
  }
}

void sub_100012340(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 infoDictionary];
  v3 = [v2 objectForKeyedSubscript:UISupportedInterfaceOrientationsKey];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v14 = v3;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v5)
      {
        goto LABEL_23;
      }

      v6 = v5;
      v7 = *v18;
      while (1)
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * v8);
          if ([v9 isEqualToString:@"UIInterfaceOrientationPortrait"])
          {
            v10 = qword_10010AF90 | 2;
LABEL_16:
            qword_10010AF90 = v10;
            goto LABEL_17;
          }

          if ([v9 isEqualToString:@"UIInterfaceOrientationPortraitUpsideDown"])
          {
            v10 = qword_10010AF90 | 4;
            goto LABEL_16;
          }

          if ([v9 isEqualToString:@"UIInterfaceOrientationLandscapeLeft"])
          {
            v10 = qword_10010AF90 | 0x10;
            goto LABEL_16;
          }

          if ([v9 isEqualToString:@"UIInterfaceOrientationLandscapeRight"])
          {
            v10 = qword_10010AF90 | 8;
            goto LABEL_16;
          }

          v11 = +[FBALog appHandle];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_100092E44(&buf, v16, v11);
          }

LABEL_17:
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v12 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v6 = v12;
        if (!v12)
        {
LABEL_23:

          v3 = v14;
          goto LABEL_27;
        }
      }
    }
  }

  v13 = +[FBALog appHandle];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100092E84();
  }

  qword_10010AF90 = 30;
LABEL_27:
}

void sub_100012760(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "tried to login in background, success ? %d", v4, 8u);
  }
}

void sub_100012B1C(id a1)
{
  qword_10010AFA0 = os_log_create("com.apple.appleseed.FeedbackAssistant", "bio");

  _objc_release_x1();
}

void sub_100012B60(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100012B8C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_1000143E4()
{
  if (qword_10010AFB8 != -1)
  {
    sub_100092EB8();
  }

  v1 = qword_10010AFB0;

  return v1;
}

void sub_100014428(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10010AFB0;
  qword_10010AFB0 = v1;

  [qword_10010AFB0 setDateStyle:3];
  v3 = qword_10010AFB0;

  [v3 setTimeStyle:1];
}

void sub_10001519C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000151E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained refreshControl];
  [v2 endRefreshing];

  v3 = +[FBKData sharedInstance];
  [v3 beginObservingAllUploadTasks];
}

void sub_10001525C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained isViewLoaded] & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 view];
  v7 = [v6 window];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 inbox];
    v10 = [v9 type];

    if (v10 == 3)
    {
      v11 = [v3 insertedObjects];
      WeakRetained = [v11 ded_selectItemsPassingTest:&stru_1000DEC90];

      v12 = [v3 deletedObjects];
      v13 = [v12 ded_selectItemsPassingTest:&stru_1000DECB0];

      v14 = NSStringFromSelector("localSubmissionStage");
      v15 = [v3 updatedObjects];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000156C0;
      v33[3] = &unk_1000DECD8;
      v16 = v14;
      v34 = v16;
      v17 = [v15 ded_selectItemsPassingTest:v33];

      v18 = [v3 refreshedObjects];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100015748;
      v31[3] = &unk_1000DECD8;
      v32 = v16;
      v19 = v16;
      v20 = [v18 ded_selectItemsPassingTest:v31];

      if ([WeakRetained count] || objc_msgSend(v13, "count") || objc_msgSend(v20, "count") || objc_msgSend(v17, "count"))
      {
        v21 = objc_loadWeakRetained((a1 + 40));
        [v21 reloadView];
      }

      goto LABEL_17;
    }

    v22 = [*(a1 + 32) sortedInboxItems];
    WeakRetained = [NSSet setWithArray:v22];

    v23 = [v3 insertedObjects];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000157D0;
    v30[3] = &unk_1000DED00;
    v30[4] = *(a1 + 32);
    v13 = [v23 ded_selectItemsPassingTest:v30];

    if (![v13 count])
    {
      v24 = [v3 updatedObjects];
      if (([v24 intersectsSet:WeakRetained] & 1) == 0)
      {
        v25 = [v3 refreshedObjects];
        if (![v25 intersectsSet:WeakRetained])
        {
          v28 = [v3 deletedObjects];
          v29 = [v28 intersectsSet:WeakRetained];

          if ((v29 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }
    }

LABEL_15:
    v26 = objc_loadWeakRetained((a1 + 40));
    [v26 reloadView];

LABEL_16:
    v27 = objc_loadWeakRetained((a1 + 40));
    [v27 fbkUpdateNewFeedbackButtonState];

LABEL_17:
LABEL_18:
  }
}

BOOL sub_100015628(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_100015674(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_1000156C0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 changedValues];
    v5 = [v4 valueForKey:*(a1 + 32)];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL sub_100015748(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 changedValues];
    v5 = [v4 valueForKey:*(a1 + 32)];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1000157D0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 inbox];
    v7 = [*(a1 + 32) team];
    v8 = [v6 predicateForTeam:v7];

    v9 = [v8 evaluateWithObject:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1000161BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 activeInboxSource];
  [v4 removeObject:v5];

  [*(a1 + 32) destroyDraft:v5];
}

void sub_100016B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100016B68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 destroyItemAtIndexPath:*(a1 + 32)];
  }

  v7[2](v7, WeakRetained != 0);
}

void sub_10001702C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSPredicate predicateWithFormat:@"searchText CONTAINS[cd] %@", a2];
  [v2 addObject:v3];
}

void sub_100018184(id a1)
{
  v4 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody];
  v1 = +[UIImageSymbolConfiguration configurationPreferringMulticolor];
  v2 = [v4 configurationByApplyingConfiguration:v1];
  v3 = qword_10010AFC0;
  qword_10010AFC0 = v2;
}

void sub_100018DD8(id a1)
{
  v1 = objc_opt_class();
  qword_10010AFD8 = NSStringFromClass(v1);

  _objc_release_x1();
}

uint64_t sub_1000197D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 platform];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [v3 platform];
  v7 = [v6 length];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [v3 platform];
  v9 = [v8 isEqualToString:DEDDevicePlatformUnspecified];

  if ((v9 & 1) == 0)
  {
    v12 = [v3 platform];
    v10 = [v12 isEqualToString:*(a1 + 32)];
  }

  else
  {
LABEL_4:
    v10 = 1;
  }

  return v10;
}

void sub_100019998(uint64_t a1)
{
  [*(a1 + 32) setPinPairingInProgress:1];
  if ([*(a1 + 40) isViewLoaded])
  {
    v2 = [*(a1 + 40) view];
    v3 = [v2 window];

    if (v3)
    {
      v4 = *(a1 + 48);
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v4 instantiateViewControllerWithIdentifier:v6];

      [v7 setDevice:*(a1 + 56)];
      v8 = [*(a1 + 40) navigationController];
      [v8 pushViewController:v7 animated:1];
    }
  }

  v9 = +[FBALog ded];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "pin pairing UI block called on view controller no longer visible", v10, 2u);
  }
}

id sub_100019DB0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result pairingViewDidClose];
  }

  return result;
}

void sub_10001A4A4(id a1)
{
  qword_10010AFE0 = os_log_create("com.apple.appleseed.FeedbackAssistant", "debug");

  _objc_release_x1();
}

void sub_10001A52C(id a1)
{
  qword_10010AFF0 = os_log_create("com.apple.appleseed.FeedbackAssistant", "upload");

  _objc_release_x1();
}

void sub_10001A5B4(id a1)
{
  qword_10010B000 = os_log_create("com.apple.appleseed.FeedbackAssistant", "model");

  _objc_release_x1();
}

void sub_10001A63C(id a1)
{
  qword_10010B010 = os_log_create("com.apple.appleseed.FeedbackAssistant", "ffu");

  _objc_release_x1();
}

void sub_10001A6C4(id a1)
{
  qword_10010B020 = os_log_create("com.apple.appleseed.FeedbackAssistant", "Client");

  _objc_release_x1();
}

void sub_10001A74C(id a1)
{
  qword_10010B030 = os_log_create("com.apple.appleseed.FeedbackAssistant", "net");

  _objc_release_x1();
}

void sub_10001A7D4(id a1)
{
  qword_10010B040 = os_log_create("com.apple.appleseed.FeedbackAssistant", "Application");

  _objc_release_x1();
}

void sub_10001A85C(id a1)
{
  qword_10010B050 = os_log_create("com.apple.appleseed.FeedbackAssistant", "attach");

  _objc_release_x1();
}

void sub_10001A8E4(id a1)
{
  qword_10010B060 = os_log_create("com.apple.appleseed.FeedbackAssistant", "reachability");

  _objc_release_x1();
}

void sub_10001A96C(id a1)
{
  qword_10010B070 = os_log_create("com.apple.appleseed.FeedbackAssistant", "fded");

  _objc_release_x1();
}

void sub_10001ADCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001ADF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained dimmingView];
  [v1 setAlpha:1.0];
}

void sub_10001AF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001AF34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained dimmingView];
  [v1 setAlpha:0.0];
}

void sub_10001B504(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:off_100108988 object:v3];
}

void sub_10001BCFC(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 presentedViewController];
    LODWORD(v3) = [v3 canDismissPresentedController:v4];

    if (v3)
    {
      [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
      v5 = *(a1 + 32);

      [v5 setPresentedSegueName:0];
    }
  }
}

id sub_10001BE14(uint64_t a1)
{
  [*(a1 + 32) setPendingStartupUI:4];
  v2 = *(a1 + 32);

  return [v2 performSegueWithIdentifier:@"FBALoginFlowModalPresentation" sender:v2];
}

id sub_10001BF54(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];
  if (v2 && (v3 = v2, [*(a1 + 32) presentedSegueName], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(@"FBAConnectivityErrorPresentation", "isEqualToString:", v4), v4, v3, (v5 & 1) == 0))
  {
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001C064;
    v9[3] = &unk_1000DE430;
    v9[4] = v8;
    return [v8 dismissViewControllerAnimated:1 completion:v9];
  }

  else
  {
    v6 = *(a1 + 32);

    return [v6 performSegueWithIdentifier:@"FBAConnectivityErrorPresentation" sender:v6];
  }
}

id sub_10001C0F0(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];
  if (v2 && (v3 = v2, [*(a1 + 32) presentedSegueName], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(@"FBAVersionOutdatedPresentation", "isEqualToString:", v4), v4, v3, (v5 & 1) == 0))
  {
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001C200;
    v9[3] = &unk_1000DE430;
    v9[4] = v8;
    return [v8 dismissViewControllerAnimated:1 completion:v9];
  }

  else
  {
    v6 = *(a1 + 32);

    return [v6 performSegueWithIdentifier:@"FBAVersionOutdatedPresentation" sender:v6];
  }
}

void sub_10001C298(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() presentsAuthKitUIModally];
  v4 = *(a1 + 32);
  if (v3)
  {
    v11 = [v4 storyboard];
    v5 = [*(a1 + 32) storyboard];
    v6 = [v5 instantiateViewControllerWithIdentifier:@"FBALoginViewController"];

    [v6 setPendingStartupUI:*(a1 + 40)];
    v7 = [[UINavigationController alloc] initWithRootViewController:v6];
    [v7 setModalPresentationStyle:0];
    [*(a1 + 32) presentViewController:v7 animated:0 completion:0];
  }

  else
  {
    v8 = [v4 presentedViewController];

    if (v8)
    {
      if (qword_10010B088 != -1)
      {
        sub_100093300();
      }

      v9 = qword_10010B080;
      if (os_log_type_enabled(qword_10010B080, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Already presenting login view controller", buf, 2u);
      }
    }

    else
    {
      [*(a1 + 32) setPendingStartupUI:*(a1 + 40)];
      v10 = *(a1 + 32);

      [v10 performSegueWithIdentifier:@"FBALoginFlowModalPresentation" sender:v10];
    }
  }
}

void sub_10001C4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001C518(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 presentVersionOutdatedUI];
  }
}

void sub_10001C648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001C664(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 displayNonParticipant];
  }
}

void sub_10001C8A8(id a1)
{
  qword_10010B080 = os_log_create("com.apple.appleseed.FeedbackAssistant", "split-vc");

  _objc_release_x1();
}

id *sub_10001D390(id *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [UIImage imageWithData:a2];
    v4 = [v2[4] deviceIcon];
    [v4 setImage:v3];

    v5 = v2[4];

    return [v5 setNeedsDisplay];
  }

  return result;
}

void sub_10001E3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  objc_destroyWeak((v46 + 32));
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a40);
  objc_destroyWeak(&a45);
  objc_destroyWeak((v47 - 136));
  objc_destroyWeak((v47 - 128));
  _Unwind_Resume(a1);
}

void sub_10001E490(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsBatchUIEnabled:a2];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 updateUIAnimated:1];
}

id sub_10001E504(uint64_t a1)
{
  v2 = [*(a1 + 32) hasContentItemsToShow];
  v3 = +[FBALog appHandle];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Showing cached content", buf, 2u);
    }

    [*(a1 + 32) updateUI];
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No cached content to show", buf, 2u);
    }
  }

  v5 = *(a1 + 32);
  v6 = +[FBADraftManager sharedInstance];
  [v5 setFBAPreferencesEnabled:{objc_msgSend(v6, "inboxLiteMode") ^ 1}];

  v7 = [*(a1 + 32) splitViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001E668;
  v9[3] = &unk_1000DE430;
  v9[4] = *(a1 + 32);
  [v7 drainAndPresentConsentsWithCompletion:v9];

  return [*(a1 + 32) reloadApp];
}

void sub_10001E678(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runDelayedUrlActionIfNeeded];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 updateUI];
}

void sub_10001E6D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasLoadedFormItems:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 runDelayedUrlActionIfNeeded];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 updateUI];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 userIsEnrolledInAnySeedingProgram];

  if (v6)
  {
    v7 = +[FBADraftManager sharedInstance];
    [v7 setInboxLiteMode:0];

    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 setFBAPreferencesEnabled:1];
  }
}

void sub_10001E7C0(uint64_t a1)
{
  [*(a1 + 32) setFBAPreferencesEnabled:0];
  v3 = [*(a1 + 32) splitViewController];
  [v3 dismissSecondaryOrShowEmptyViewControllerAnimated:1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateUI];
}

void sub_10001E834(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateUI];
}

void sub_10001E874(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateUI];
}

void sub_10001E8B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showLoadingView];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setHasLoadedFormItems:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setHasFinishedFirstLoad:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 applySnapshot];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 splitViewController];
  [v7 setIsPresentingConsentView:0];

  v9 = objc_loadWeakRetained((a1 + 32));
  v8 = [v9 collectionView];
  [v8 reloadData];
}

void sub_10001E998(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hideLoadingView];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 fbkHideSpinner];
}

id sub_10001F1C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) diffableDataSource];
  v8 = [v7 sectionIdentifierForIndex:{objc_msgSend(v6, "section")}];

  if ([v8 isEqualToString:@"smart-mailbox"])
  {
    v9 = +[_TtC18Feedback_Assistant19FBASmartMailboxCell reuseIdentifier];
    v10 = [v5 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v6];

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v12 = [WeakRetained smartMailboxes];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
    [v10 configureWithInbox:v13];

LABEL_5:
    goto LABEL_6;
  }

  if ([v8 isEqualToString:@"enhanced-logging-section"])
  {
    v14 = *(a1 + 40);
    WeakRetained = [*(a1 + 32) enhancedLoggingInbox];
    v10 = [v5 dequeueConfiguredReusableCellWithRegistration:v14 forIndexPath:v6 item:WeakRetained];
    goto LABEL_5;
  }

  if ([v8 isEqualToString:@"batch-ui-section"])
  {
    v10 = [*(a1 + 32) batchUICellWithCollectionView:v5 indexPath:v6 reuseIdentifier:@"batch-ui-row"];
  }

  else
  {
    v16 = [v6 row];
    v17 = objc_loadWeakRetained((a1 + 56));
    v18 = [v17 inboxes];
    v19 = [v18 count];

    v20 = objc_loadWeakRetained((a1 + 56));
    v21 = v20;
    if (v16 >= v19)
    {
      v24 = [v20 teamForIndexPath:v6];

      v10 = [v5 dequeueConfiguredReusableCellWithRegistration:*(a1 + 48) forIndexPath:v6 item:v24];
    }

    else
    {
      v22 = [v20 inboxes];
      v23 = [v22 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

      v10 = [v5 dequeueConfiguredReusableCellWithRegistration:*(a1 + 40) forIndexPath:v6 item:v23];
    }
  }

LABEL_6:

  return v10;
}

id sub_10001F444(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = [a3 isEqualToString:UICollectionElementKindSectionHeader];
  v10 = 40;
  if (v9)
  {
    v10 = 32;
  }

  v11 = [v8 dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + v10) forIndexPath:v7];

  return v11;
}

void sub_10001F5D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_10001F600(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) diffableDataSource];
  v7 = [v6 sectionIdentifierForIndex:a2];

  if ([v7 isEqualToString:@"smart-mailbox"])
  {
    v8 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v9 = [NSCollectionLayoutDimension fractionalHeightDimension:1.0];
    v10 = [NSCollectionLayoutSize sizeWithWidthDimension:v8 heightDimension:v9];

    v11 = [NSCollectionLayoutItem itemWithLayoutSize:v10];
    v12 = [v5 traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v13);

    v15 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v16 = 80.0;
    if (IsAccessibilityCategory)
    {
      v16 = 100.0;
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    v18 = [NSCollectionLayoutDimension absoluteDimension:v16];
    v19 = [NSCollectionLayoutSize sizeWithWidthDimension:v15 heightDimension:v18];

    v20 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v19 subitem:v11 count:v17];
    v21 = [NSCollectionLayoutSpacing fixedSpacing:10.0];
    [v20 setInterItemSpacing:v21];

    v22 = [NSCollectionLayoutSection sectionWithGroup:v20];
    [v22 setInterGroupSpacing:10.0];
    [v22 setContentInsets:{10.0, 20.0, 20.0, 20.0}];
  }

  else
  {
    if ([v7 isEqualToString:@"enhanced-logging-section"])
    {
      v23 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:*(a1 + 48)];
      v10 = v23;
    }

    else
    {
      v24 = [v7 isEqualToString:@"batch-ui-section"];
      v23 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:*(a1 + 48)];
      v10 = v23;
      if (!v24)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v35 = [WeakRetained sortedTeams];
        [v10 setHeaderMode:{objc_msgSend(v35, "count") > 1}];

        v36 = objc_loadWeakRetained((a1 + 40));
        v37 = [v36 teamForSection:a2];

        v38 = objc_loadWeakRetained((a1 + 40));
        LODWORD(v36) = [v38 hasFinishedFirstLoad];

        if (v36)
        {
          v39 = [v37 canStartNewFeedback] ^ 1;
        }

        else
        {
          v39 = 0;
        }

        [v10 setFooterMode:v39];
        v40 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
        v41 = [NSCollectionLayoutDimension estimatedDimension:44.0];
        v42 = [NSCollectionLayoutSize sizeWithWidthDimension:v40 heightDimension:v41];

        v43 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
        v44 = [NSCollectionLayoutDimension estimatedDimension:10.0];
        v45 = [NSCollectionLayoutSize sizeWithWidthDimension:v43 heightDimension:v44];

        v46 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v42 elementKind:UICollectionElementKindSectionHeader alignment:1];
        v47 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v45 elementKind:UICollectionElementKindSectionFooter alignment:5];
        v22 = [NSCollectionLayoutSection sectionWithListConfiguration:v10 layoutEnvironment:v5];
        v50[0] = v46;
        v50[1] = v47;
        v48 = [NSArray arrayWithObjects:v50 count:2];
        [v22 setBoundarySupplementaryItems:v48];

        goto LABEL_17;
      }
    }

    [v23 setHeaderMode:0];
    [v10 setFooterMode:0];
    v22 = [NSCollectionLayoutSection sectionWithListConfiguration:v10 layoutEnvironment:v5];
    [v22 contentInsets];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [*(a1 + 32) sortedTeams];
    v32 = [v31 count];

    if (v32 == 1)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v28;
    }

    [v22 setContentInsets:{0.0, v26, v33, v30}];
  }

LABEL_17:

  return v22;
}

void sub_10001FC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001FC54(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = a4;
  v7 = [*(a1 + 32) sortedTeams];
  v8 = [v7 count];

  if (v8 < 2)
  {
    [v11 hide];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [WeakRetained teamForIndexPath:v6];

    [v11 configureForTeam:v10];
  }
}

void sub_10001FE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001FE30(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v16 = +[UIListContentConfiguration footerConfiguration];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained teamForIndexPath:v6];

  if ([*(a1 + 32) hasFinishedFirstLoad] && !objc_msgSend(v9, "canStartNewFeedback"))
  {
    v10 = [v9 teamType];
    v11 = +[NSBundle mainBundle];
    v12 = v11;
    if (v10)
    {
      v13 = @"TEAM_MAILBOX_CLOSED_EXPLAIN";
      v14 = @"New feedback for this team has been disabled.";
    }

    else
    {
      v13 = @"MAILBOX_CLOSED_EXPLAIN";
      v14 = @"You are not a member of any active programs.";
    }

    v15 = [v11 localizedStringForKey:v13 value:v14 table:0];
    [v16 setText:v15];
  }

  else
  {
    [v16 setText:0];
  }

  [v7 setContentConfiguration:v16];
}

void sub_100020020(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) teamForIndexPath:a3];
  v10 = +[UIListContentConfiguration valueCellConfiguration];
  v11 = [v8 displayText];
  [v10 setText:v11];

  v12 = [v8 unreadCountForTeam:v9];
  if (v12)
  {
    v13 = [NSString stringWithFormat:@"%ld", v12];
    [v10 setSecondaryText:v13];
  }

  v14 = [v8 icon];
  [v10 setImage:v14];

  [v7 setContentConfiguration:v10];
  v15 = objc_opt_new();
  v22 = v15;
  v16 = [NSArray arrayWithObjects:&v22 count:1];
  [v7 setAccessories:v16];

  v17 = [*(a1 + 32) data];
  v18 = [v17 currentUser];
  LODWORD(v16) = [v18 hasManagedTeams];

  if (v16)
  {
    v19 = [v8 displayText];
    v20 = [v9 name];
    v21 = [NSString stringWithFormat:@"%@, %@", v19, v20];
    [v7 setAccessibilityLabel:v21];
  }

  [v7 setAccessibilityTraits:UIAccessibilityTraitButton];
}

void sub_1000202FC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v24 = a2;
  v6 = a4;
  v7 = +[UIListContentConfiguration valueCellConfiguration];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"NEW_FEEDBACK" value:@"New Feedback" table:0];
  [v7 setText:v9];

  v10 = v6;
  v11 = [*(a1 + 32) data];
  v12 = [v11 currentUser];
  LODWORD(v9) = [v12 hasManagedTeams];

  if (v9)
  {
    v13 = [v10 name];
    v14 = [v7 text];
    v15 = [NSString stringWithFormat:@"%@, %@", v13, v14];
    [v24 setAccessibilityLabel:v15];
  }

  [v24 setAccessibilityTraits:UIAccessibilityTraitButton];
  v16 = [v10 canStartNewFeedback];
  if (v16)
  {
    v17 = +[iFBAConstants tintColor];
    v18 = [v7 textProperties];
    [v18 setColor:v17];

    +[iFBAConstants tintColor];
  }

  else
  {
    v19 = +[UIColor lightGrayColor];
    v20 = [v7 textProperties];
    [v20 setColor:v19];

    +[UIColor lightGrayColor];
  }
  v21 = ;
  v22 = [v7 imageProperties];
  [v22 setTintColor:v21];

  [v24 setUserInteractionEnabled:v16];
  v23 = [UIImage systemImageNamed:FBKSystemImageNameNewFeedback];
  [v7 setImage:v23];
  [v24 setContentConfiguration:v7];
}

void sub_100020EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100020EE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsApplyingSnapshot:0];
}

void sub_100021C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100021C28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100021C40(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = [v2 pendingLaunchAction];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100021CFC;
  v8[3] = &unk_1000DF180;
  v7 = a1[8];
  v8[4] = a1[9];
  [v2 launchNewDraftViewControllerWithBugFormStub:v3 draftItem:v4 surveyBugForm:v5 launchAction:v6 team:v7 completion:v8];
}

void sub_100021CFC(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setPendingLaunchAction:0];
  v2 = [*(*(*(a1 + 32) + 8) + 40) collectionView];
  v3 = [v2 indexPathsForSelectedItems];
  v5 = [v3 firstObject];

  if (v5)
  {
    v4 = [*(*(*(a1 + 32) + 8) + 40) collectionView];
    [v4 deselectItemAtIndexPath:v5 animated:1];
  }
}

void sub_100021E64(uint64_t a1)
{
  v1 = [*(a1 + 32) refreshControl];
  [v1 endRefreshing];
}

void sub_100021FD4(uint64_t a1, void *a2)
{
  v11 = a2;
  [*(a1 + 32) setHasFinishedFirstLoad:1];
  [*(a1 + 32) didReloadApp];
  v3 = v11;
  if (v11)
  {
    v4 = +[UIApplication sharedApplication];
    v5 = [v4 delegate];

    v6 = [v11 userInfo];
    v7 = [v6 objectForKeyedSubscript:NSLocalizedDescriptionKey];

    v8 = [v11 userInfo];
    v9 = [v8 objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];

    if (v7)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      [v5 showSimpleAlertWithErrorTitle:v7 message:v9];
    }

    v3 = v11;
  }
}

void sub_1000221D8(uint64_t a1)
{
  v1 = [*(a1 + 32) data];
  [v1 beginObservingAllUploadTasks];
}

BOOL sub_100022E20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ID];
  v5 = [*(a1 + 32) itemID];
  if ([v4 isEqualToNumber:v5])
  {
    v6 = [v3 type];
    v7 = [v6 unsignedIntValue] == 4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100022EE0(uint64_t a1)
{
  v2 = +[FBALog appHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100093578();
  }

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"FEEDBACK_LOAD_ERROR_TITLE" value:&stru_1000E2210 table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"FEEDBACK_LOAD_ERROR_MESSAGE" value:&stru_1000E2210 table:0];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_1000E2210 table:FBKCommonStrings];
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:&stru_1000DF278];
  [v7 addAction:v10];

  [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
}

void sub_100023070(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = +[FBALog appHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000935B4(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = +[FBKData sharedInstance];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000231BC;
    v13[3] = &unk_1000DF2C8;
    v8 = *(a1 + 56);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *&v11 = *(a1 + 48);
    *(&v11 + 1) = v8;
    *&v12 = v9;
    *(&v12 + 1) = v10;
    v14 = v12;
    v15 = v11;
    [v7 getAllContentForFeedback:v5 completion:v13];
  }
}

void sub_1000231BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 56);
    (*(*(a1 + 56) + 16))();
    v5 = +[FBALog appHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009362C(a1);
    }
  }

  else
  {
    v6 = (a1 + 32);
    if (![*(a1 + 32) isFFUAction])
    {
      return;
    }

    v7 = [*(a1 + 40) feedback];
    v8 = [v7 feedbackFollowups];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100023344;
    v11[3] = &unk_1000DF2A0;
    v12 = *(a1 + 32);
    v9 = [v8 ded_findWithBlock:v11];

    if (v9)
    {
      [*(a1 + 48) setPendingItemToShow:*(a1 + 40)];
      [*(a1 + 48) setPendingFollowupToShow:v9];
      [*(a1 + 48) performSegueWithIdentifier:@"FBAFollowupResponsePresentation" sender:*(a1 + 48)];
    }

    else
    {
      v10 = +[FBALog appHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000936A4(v6);
      }
    }

    v5 = v12;
  }
}

id sub_100023344(uint64_t a1, void *a2)
{
  v3 = [a2 ID];
  v4 = [*(a1 + 32) ffuID];
  v5 = [v3 isEqualToNumber:v4];

  return v5;
}

BOOL sub_100023988(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 formTat];
  v5 = [*(a1 + 32) formIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 type];
    v7 = [v6 unsignedIntValue] == 3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100023A24(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 currentUser];
  v4 = [v3 contentItems];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100023B94;
  v9[3] = &unk_1000DEDC0;
  v10 = *(a1 + 40);
  v5 = [v4 ded_findWithBlock:v9];

  if (v5)
  {
    v6 = +[FBALog appHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Found survey content item", v8, 2u);
    }

    [*(a1 + 32) reallyLaunchSurveyWithUrlAction:*(a1 + 40) team:*(a1 + 48) surveyItem:v5];
  }

  else
  {
    v7 = [*(a1 + 40) formIdentifier];
    [_TtC18Feedback_Assistant17FBATargetedSurvey reportFailureToLaunchFormWithFormIdentifier:v7];

    [*(a1 + 32) showTargetedSurveyLoadErrorAlert];
  }
}

BOOL sub_100023B94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 formTat];
  v5 = [*(a1 + 32) formIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 type];
    v7 = [v6 unsignedIntValue] == 3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100023D3C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = +[FBALog appHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100093860();
    }

    v7 = [*(a1 + 32) formIdentifier];
    [_TtC18Feedback_Assistant17FBATargetedSurvey reportFailureToLaunchFormWithFormIdentifier:v7];

    [*(a1 + 40) showTargetedSurveyLoadErrorAlert];
  }

  else
  {
    v8 = +[FBADraftManager sharedInstance];
    [v8 beginFeedbackForSurvey:v5 contentItem:*(a1 + 48) forTeam:*(a1 + 56)];
  }
}

void sub_100024758(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  v5 = *(a1 + 32);
  v6 = +[FBKData sharedInstance];
  v7 = [v6 currentUser];
  v8 = [v7 bugFormStubs];
  [v5 findExactMatchFormStubAndTeamWithFormStubs:v8];

  v9 = [*(a1 + 32) exactMatchFormStub];

  if (!v9)
  {
LABEL_2:
    v3 = [*(a1 + 32) formIdentifier];
    [_TtC18Feedback_Assistant17FBATargetedSurvey reportFailureToLaunchFormWithFormIdentifier:v3];

    v4 = *(a1 + 40);

    [v4 showTargetedFeedbackLoadErrorAlert];
  }

  else
  {
    v10 = *(a1 + 40);
    v13 = [*(a1 + 32) exactMatchFormStub];
    v11 = [*(a1 + 32) teamForExactMatchFormStub];
    v12 = [*(a1 + 40) composeFeedbackToolbarItem];
    [v10 tryLaunchingDraft:0 orStub:v13 forTeam:v11 withSender:v12];
  }
}

id sub_1000248AC(uint64_t a1, void *a2)
{
  v3 = [a2 ID];
  v4 = [*(a1 + 32) bugFormID];
  v5 = [v3 isEqualToNumber:v4];

  return v5;
}

void sub_100024B94(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (!v3)
  {
    v4 = *(a1 + 40);

    [v4 blockLandscapeOrientations:0];
  }
}

void sub_100025410(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10002542C(id *a1)
{
  v2 = a1[4];
  v3 = [a1[5] team];
  v4 = [v2 preferredTeamForStubPreferringTeam:v3];

  v5 = +[FBALog appHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a1[4] debugDescription];
    v7 = [v4 shortDescription];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did pick Form [%{public}@], preferred team [%{public}@] ", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained tryLaunchingDraft:0 orStub:a1[4] forTeam:v4 withSender:0];
}

id sub_1000260B4(uint64_t a1)
{
  [*(a1 + 32) updateWebView];
  v2 = *(a1 + 32);

  return [v2 updateTitle];
}

uint64_t sub_1000260F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"ANNOUNCEMENT_LOAD_ERROR_TITLE" value:&stru_1000E2210 table:0];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"ANNOUNCEMENT_LOAD_ERROR_MESSAGE" value:&stru_1000E2210 table:0];
    v8 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"OK" value:&stru_1000E2210 table:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000262B8;
    v13[3] = &unk_1000DE458;
    v13[4] = *(a1 + 32);
    v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:v13];
    [v8 addAction:v11];

    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    [*(a1 + 32) setAnnouncement:a2];
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000262B8(uint64_t a1)
{
  v1 = [*(a1 + 32) splitViewController];
  [v1 dismissSecondaryOrShowEmptyViewControllerAnimated:1];
}

id *sub_100026EC8(id *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [UIImage imageWithData:a2];
    v4 = [v2[4] deviceImage];
    [v4 setImage:v3];

    v5 = v2[4];

    return [v5 setNeedsDisplay];
  }

  return result;
}

uint64_t sub_1000273A8(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 objectForKey:@"errors"];
    v3 = sub_100028D74(v2);

    if (v3)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

id sub_100027458(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 objectForKeyedSubscript:@"code"];
    v3 = sub_100028D74(v2);

    v4 = [v1 objectForKeyedSubscript:@"message"];
    v5 = sub_100028D74(v4);

    v6 = 0;
    if (v3 && v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v3 integerValue];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v5;
        }

        else
        {
          v8 = &stru_1000E2210;
        }

        v11 = @"message";
        v12 = v8;
        v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
        v6 = [NSError errorWithDomain:@"com.apple.appleseed.FeedbackAssistant" code:v7 userInfo:v9];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_100027620(void *a1, id a2)
{
  v3 = a1;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"FBASeedPortalErrorsKey"];

  v6 = [v3 userInfo];
  v7 = [v6 objectForKey:@"FBAAggregatedErrorsKey"];

  if (v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v23 + 1) + 8 * v12) code] == a2)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }
      }

LABEL_21:
      v17 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    if (!v7)
    {
      v17 = 0;
      goto LABEL_23;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v13 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
LABEL_14:
      v16 = 0;
      while (1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v8);
        }

        if (sub_100027620(*(*(&v19 + 1) + 8 * v16), a2))
        {
          goto LABEL_21;
        }

        if (v14 == ++v16)
        {
          v14 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v14)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }
  }

LABEL_20:
  v17 = 0;
LABEL_22:

LABEL_23:
  return v17;
}

id sub_100027834(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10002791C(a1);
  v5 = [v4 userInfo];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[NSMutableDictionary alloc] initWithDictionary:v5];
      [v6 setObject:v3 forKeyedSubscript:@"FBAAggregatedErrorsKey"];
      v7 = [NSError errorWithDomain:@"com.apple.appleseed.FeedbackAssistant" code:a1 userInfo:v6];

      v4 = v7;
    }
  }

  return v4;
}

id sub_10002791C(uint64_t a1)
{
  switch(a1)
  {
    case -1021:
      v2 = [[NSMutableDictionary alloc] initWithCapacity:2];
      v46 = +[NSBundle mainBundle];
      v47 = [v46 localizedStringForKey:@"FAILED_TO_ATTACH_FILE_FROM_ICLOUD_NOT_DOWNLOADED" value:@"You can’t attach files until they’ve been downloaded" table:0];
      [v2 setObject:v47 forKeyedSubscript:NSLocalizedDescriptionKey];

      v8 = -1021;
      goto LABEL_25;
    case -1020:
      v2 = [[NSMutableDictionary alloc] initWithCapacity:2];
      v44 = +[NSBundle mainBundle];
      v45 = [v44 localizedStringForKey:@"FailedToLoginNoDeviceToken" value:@"No device token given. Cannot log in" table:0];
      [v2 setObject:v45 forKeyedSubscript:NSLocalizedDescriptionKey];

      v8 = -1020;
      goto LABEL_25;
    case -1019:
      v2 = [[NSMutableDictionary alloc] initWithCapacity:2];
      v48 = +[NSBundle mainBundle];
      v49 = [v48 localizedStringForKey:@"FAILED_TO_ATTACH_FILE" value:@"The file could not be attached. Please try again later." table:0];
      [v2 setObject:v49 forKeyedSubscript:NSLocalizedDescriptionKey];

      v8 = -1019;
      goto LABEL_25;
    case -1018:
      v2 = [[NSMutableDictionary alloc] initWithCapacity:2];
      v32 = +[NSBundle mainBundle];
      v33 = [v32 localizedStringForKey:@"FAILED_TO_ATTACH_PHOTO" value:@"The photo could not be attached. Please try again later." table:0];
      [v2 setObject:v33 forKeyedSubscript:NSLocalizedDescriptionKey];

      v8 = -1018;
      goto LABEL_25;
    case -1017:
      v2 = [[NSMutableDictionary alloc] initWithCapacity:2];
      v50 = +[NSBundle mainBundle];
      v51 = [v50 localizedStringForKey:@"FAILED_TO_ATTACH_VIDEO" value:@"The video could not be attached. Please try again later." table:0];
      [v2 setObject:v51 forKeyedSubscript:NSLocalizedDescriptionKey];

      v8 = -1017;
      goto LABEL_25;
    case -1016:
      v26 = -1016;
      goto LABEL_14;
    case -1015:
      v2 = [[NSMutableDictionary alloc] initWithCapacity:2];
      v34 = +[NSBundle mainBundle];
      v35 = FBKCommonStrings;
      v36 = [v34 localizedStringForKey:@"ASSIGN_FEEDBACK_ERROR" value:&stru_1000E2210 table:FBKCommonStrings];
      [v2 setObject:v36 forKeyedSubscript:NSLocalizedDescriptionKey];

      v37 = +[NSBundle mainBundle];
      v38 = [v37 localizedStringForKey:@"ASSIGN_FEEDBACK_ERROR_RECOVERY" value:&stru_1000E2210 table:v35];
      [v2 setObject:v38 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];

      v8 = -1015;
      goto LABEL_25;
    case -1014:
      v2 = [[NSMutableDictionary alloc] initWithCapacity:2];
      v27 = +[NSBundle mainBundle];
      v28 = FBKCommonStrings;
      v29 = [v27 localizedStringForKey:@"DEMOTE_FEEDBACK_ERROR" value:&stru_1000E2210 table:FBKCommonStrings];
      [v2 setObject:v29 forKeyedSubscript:NSLocalizedDescriptionKey];

      v30 = +[NSBundle mainBundle];
      v31 = [v30 localizedStringForKey:@"DEMOTE_FEEDBACK_ERROR_RECOVERY" value:&stru_1000E2210 table:v28];
      [v2 setObject:v31 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];

      v8 = -1014;
      goto LABEL_25;
    case -1013:
      v2 = [[NSMutableDictionary alloc] initWithCapacity:2];
      v39 = +[NSBundle mainBundle];
      v40 = FBKCommonStrings;
      v41 = [v39 localizedStringForKey:@"PROMOTE_FEEDBACK_ERROR" value:&stru_1000E2210 table:FBKCommonStrings];
      [v2 setObject:v41 forKeyedSubscript:NSLocalizedDescriptionKey];

      v42 = +[NSBundle mainBundle];
      v43 = [v42 localizedStringForKey:@"PROMOTE_FEEDBACK_ERROR_RECOVERY" value:&stru_1000E2210 table:v40];
      [v2 setObject:v43 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];

      v8 = -1013;
      goto LABEL_25;
    case -1012:
      v26 = -1012;
      goto LABEL_14;
    case -1011:
    case -1001:
      v2 = [[NSMutableDictionary alloc] initWithCapacity:2];
      v3 = +[NSBundle mainBundle];
      v4 = FBKCommonStrings;
      v5 = [v3 localizedStringForKey:@"UNEXPECTED_SERVER_DATA_ERROR" value:&stru_1000E2210 table:FBKCommonStrings];
      [v2 setObject:v5 forKeyedSubscript:NSLocalizedDescriptionKey];

      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"UNEXPECTED_SERVER_DATA_ERROR_RECOVERY" value:&stru_1000E2210 table:v4];
      [v2 setObject:v7 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];

      v8 = a1;
      goto LABEL_25;
    case -1010:
      v26 = -1010;
LABEL_14:
      v23 = [NSError errorWithDomain:@"com.apple.appleseed.FeedbackAssistant" code:v26 userInfo:0];
      goto LABEL_28;
    case -1009:
      v2 = [[NSMutableDictionary alloc] initWithCapacity:2];
      v52 = +[NSBundle mainBundle];
      v53 = FBKCommonStrings;
      v54 = [v52 localizedStringForKey:@"CLOSE_FEEDBACK_ACTION_ERROR" value:&stru_1000E2210 table:FBKCommonStrings];
      [v2 setObject:v54 forKeyedSubscript:NSLocalizedDescriptionKey];

      v55 = +[NSBundle mainBundle];
      v56 = [v55 localizedStringForKey:@"CLOSE_FEEDBACK_ACTION_ERROR_RECOVERY" value:&stru_1000E2210 table:v53];
      [v2 setObject:v56 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];

      v8 = -1009;
      goto LABEL_25;
    case -1008:
      v2 = [[NSMutableDictionary alloc] initWithCapacity:2];
      v57 = +[NSBundle mainBundle];
      v58 = [v57 localizedStringForKey:@"INVALID_DATA" value:&stru_1000E2210 table:FBKCommonStrings];
      [v2 setObject:v58 forKeyedSubscript:NSLocalizedDescriptionKey];

      v8 = -1008;
      goto LABEL_25;
    case -1007:
      v67[0] = NSLocalizedDescriptionKey;
      v17 = +[NSBundle mainBundle];
      v18 = FBKCommonStrings;
      v19 = [v17 localizedStringForKey:@"DRAFT_DELETE_ERROR_TITLE" value:&stru_1000E2210 table:FBKCommonStrings];
      v68[0] = v19;
      v67[1] = NSLocalizedRecoverySuggestionErrorKey;
      v20 = +[NSBundle mainBundle];
      v21 = [v20 localizedStringForKey:@"DRAFT_DELETE_ERROR" value:&stru_1000E2210 table:v18];
      v68[1] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:2];

      v23 = [NSError errorWithDomain:@"com.apple.appleseed.FeedbackAssistant" code:-1007 userInfo:v22];

      goto LABEL_28;
    case -1006:
    case -1005:
    case -1004:
    case -1003:
      goto LABEL_6;
    case -1002:
      v2 = [[NSMutableDictionary alloc] initWithCapacity:1];
      v24 = +[NSBundle mainBundle];
      v25 = [v24 localizedStringForKey:@"FailedToLoadDataError" value:@"Failed to load data." table:0];
      [v2 setObject:v25 forKeyedSubscript:NSLocalizedDescriptionKey];

      v8 = -1002;
      goto LABEL_25;
    default:
      if (a1 == -8)
      {
        v65[0] = NSLocalizedDescriptionKey;
        v2 = +[NSBundle mainBundle];
        v60 = FBKCommonStrings;
        v61 = [v2 localizedStringForKey:@"UNEXPECTED_SERVER_DATA_ERROR" value:&stru_1000E2210 table:FBKCommonStrings];
        v66[0] = v61;
        v65[1] = NSLocalizedRecoverySuggestionErrorKey;
        v62 = +[NSBundle mainBundle];
        v63 = [v62 localizedStringForKey:@"UNEXPECTED_SERVER_DATA_ERROR_RECOVERY" value:&stru_1000E2210 table:v60];
        v66[1] = v63;
        v64 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];
        v23 = [NSError errorWithDomain:@"com.apple.appleseed.FeedbackAssistant" code:-8 userInfo:v64];
      }

      else
      {
        if (a1 == 16)
        {
          v2 = [[NSMutableDictionary alloc] initWithCapacity:2];
          v9 = +[NSBundle mainBundle];
          v10 = FBKCommonStrings;
          v11 = [v9 localizedStringForKey:@"GENERIC_LOGIN_FAILURE_TITLE" value:&stru_1000E2210 table:FBKCommonStrings];
          [v2 setObject:v11 forKeyedSubscript:NSLocalizedDescriptionKey];

          v12 = +[NSBundle mainBundle];
          v13 = [v12 localizedStringForKey:@"GENERIC_LOGIN_FAILURE_MESSAGE" value:&stru_1000E2210 table:v10];
          [v2 setObject:v13 forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];

          v8 = 16;
LABEL_25:
          v16 = v2;
        }

        else
        {
LABEL_6:
          v14 = +[FBALog appHandle];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10009389C(a1, v14);
          }

          v2 = [[NSMutableDictionary alloc] initWithCapacity:1];
          v15 = [NSError errorWithDomain:@"com.apple.appleseed.FeedbackAssistant" code:a1 userInfo:0];
          [v2 setObject:v15 forKeyedSubscript:NSUnderlyingErrorKey];

          v8 = -1;
          v16 = 0;
        }

        v23 = [NSError errorWithDomain:@"com.apple.appleseed.FeedbackAssistant" code:v8 userInfo:v16];
      }

LABEL_28:

      return v23;
  }
}

uint64_t sub_100028D10(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = a1;
  v2 = +[NSNull null];
  v3 = v2 == v1;

  return v3;
}

void *sub_100028D74(void *a1)
{
  v1 = a1;
  v2 = +[NSNull null];
  if (v2 == v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;

  return v3;
}

__CFString *sub_100028DD4(void *a1)
{
  v1 = a1;
  v2 = sub_100028D74(v1);
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = &stru_1000E2210;
  }

  v4 = v3;

  return v3;
}

uint64_t sub_100028E30(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = +[NSNull null];
    if (v2 == v1)
    {
      v3 = 1;
    }

    else
    {
      v3 = [v1 BOOLValue];
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

id sub_100028EA4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = sub_100028F14();
    v3 = [v2 dateFromString:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100028F14()
{
  if (qword_10010B0A0 != -1)
  {
    sub_100093914();
  }

  v1 = qword_10010B098;

  return v1;
}

id sub_100028F58(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_opt_class();
        if ([v12 isSubclassOfClass:{objc_opt_class(), v16}])
        {
          v13 = [v11 objectForKeyedSubscript:v4];
          if (v13)
          {
            [v5 setObject:v11 forKey:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [[NSDictionary alloc] initWithDictionary:v5];

  return v14;
}

void sub_10002911C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10010B098;
  qword_10010B098 = v1;

  v3 = qword_10010B098;
  v4 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [qword_10010B098 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
  v5 = qword_10010B098;
  v6 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v5 setTimeZone:v6];
}

void sub_10002A8D8(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

void sub_10002B1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002B1DC(void *a1)
{
  v2 = +[FBKContentItem fetchRequest];
  v3 = [FBKContentItem unreadInboxPredicateWithTeam:a1[4]];
  [v2 setPredicate:v3];

  v4 = a1[5];
  v7 = 0;
  v5 = [v4 countForFetchRequest:v2 error:&v7];
  v6 = v7;
  *(*(a1[6] + 8) + 24) = v5;
  if (v6)
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t sub_10002BF58(uint64_t a1)
{
  [*(a1 + 32) deselectRowAtIndexPath:*(a1 + 40) animated:0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t sub_10002BFA8(uint64_t a1)
{
  [*(a1 + 32) deselectRowAtIndexPath:*(a1 + 40) animated:0];
  v2 = *(a1 + 56);
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_10002CDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002CDDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v3 = +[FBKData sharedInstance];
    v4 = [v3 loginManager];
    v5 = [v4 loginState];

    if (v5 == 1)
    {
      v6 = *(a1 + 32);

      [v6 dismissViewControllerAnimated:1 completion:&stru_1000DF580];
    }
  }
}

void sub_10002CE80(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"FBADidDismissLegalAgreementNotification" object:0];
}

void sub_10002D5EC(id a1)
{
  qword_10010B0A8 = objc_alloc_init(FBADraftManager);

  _objc_release_x1();
}

void sub_10002D978(uint64_t a1)
{
  v2 = [*(a1 + 32) mainViewController];
  [v2 respondToUrlAction:*(a1 + 40)];
}

void sub_10002D9CC(uint64_t a1)
{
  v2 = [*(a1 + 32) mainViewController];
  [v2 respondToUrlAction:*(a1 + 40)];
}

BOOL sub_10002DCB0(id a1, FBKContentItem *a2)
{
  v2 = [(FBKContentItem *)a2 formResponse];
  v3 = v2 != 0;

  return v3;
}

void sub_10002DEBC(uint64_t a1)
{
  v2 = [*(a1 + 32) formResponse];

  if (v2)
  {
    v3 = [*(a1 + 32) formResponse];
    [FBKDEDHelper cleanupBugSessionDirectoriesForForm:v3];
  }

  else
  {
    v4 = +[FBALog appHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) ID];
      *buf = 67109120;
      v11 = [v5 intValue];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No form response for Draft Item with ID [%i]: Cannot cleanup BugSession", buf, 8u);
    }
  }

  v6 = +[FBKData sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002E040;
  v8[3] = &unk_1000DF608;
  v9 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  [v6 deleteDraftFromContentItem:v7 completion:v8];
}

void sub_10002E040(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[FBALog appHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100093BEC(v4);
    }
  }

  if (*(a1 + 40) == 1)
  {
    v5 = [*(a1 + 32) rootController];
    [v5 dismissSecondaryOrShowEmptyViewControllerAnimated:1];
  }
}

void sub_10002E60C(id a1, UIAlertAction *a2)
{
  v2 = +[FBALog appHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Discarding URL Action with attachments", v3, 2u);
  }
}

void sub_10002E67C(uint64_t a1)
{
  v3 = [*(a1 + 32) draftController];
  v2 = [*(a1 + 40) attachments];
  [v3 postAttachFiles:v2];
}

void sub_10002E6E8(uint64_t a1)
{
  v2 = [*(a1 + 32) draftController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002E78C;
  v4[3] = &unk_1000DE4D0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 closeWithCompletion:v4];
}

void sub_10002E78C(uint64_t a1)
{
  v2 = [*(a1 + 32) mainViewController];
  [v2 respondToUrlAction:*(a1 + 40)];
}

void sub_10002EBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002EBEC(uint64_t a1)
{
  v2 = +[FBALog appHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100093C74(a1, v2);
  }

  result = [*(a1 + 32) endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];
  *(*(*(a1 + 40) + 8) + 24) = UIBackgroundTaskInvalid;
  return result;
}

void sub_10002EC68(uint64_t a1)
{
  [*(a1 + 32) endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];
  *(*(*(a1 + 40) + 8) + 24) = UIBackgroundTaskInvalid;
  v2 = +[FBALog appHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "finished saving FR [%d] when resigning active", v4, 8u);
  }
}

BOOL sub_10002EEBC(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

double sub_10002F31C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 bounds];
  return fmin(v2, v3 + -100.0);
}

NSObject *sub_10002F430()
{
  v0 = +[NSThread callStackSymbols];
  if ([v0 count] < 2)
  {
    v1 = @"Unknown";
    goto LABEL_20;
  }

  v2 = [v0 objectAtIndexedSubscript:2];
  v3 = v2;
  if (!v2 || ![v2 length])
  {
    goto LABEL_18;
  }

  v4 = v3;
  v15 = 0;
  v5 = +[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", @"(^\\d+\\s+Feedback\\sAssistant\\s+[0-9A-F]x[0-9A-Fa-f]+\\s)(.*)(\\s\\+\\s\\d+)", 16, &v15);
  v6 = v15;
  v7 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  v8 = v7;
  if (v6)
  {
    v9 = +[FBALog appHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100093DAC(v6, v9);
    }

    v10 = 0;
    v1 = @"Unknown";
  }

  else
  {
    if ([v7 count] == 1)
    {
      v11 = [v8 lastObject];
      v1 = [v11 rangeAtIndex:2];
      v13 = v12;

      if (v1 != 0x7FFFFFFFFFFFFFFFLL && v1 + v13 <= [v4 length])
      {
        v1 = [v4 substringWithRange:{v1, v13}];
        v10 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v1 = +[FBALog appHandle];
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        sub_100093E24(v4, v0, v1);
      }
    }

    v10 = 1;
  }

LABEL_17:

  if (v10)
  {
LABEL_18:
    v1 = @"Unknown";
  }

LABEL_20:

  return v1;
}

void sub_100030510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100030530(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 length] == 6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained tryPin:v4];
  }
}

void sub_100030768(uint64_t a1, int a2, double a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v6 = [v4 navigationController];
    v5 = [v6 popViewControllerAnimated:1];
  }

  else
  {
    LODWORD(a3) = 1.0;

    [v4 showPINEntryUIWithFlags:1 inThrottleSeconds:a3];
  }
}

void sub_1000324E8(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v4 = [*(a1 + 32) completion];
    v3 = [NSSet setWithObject:*(a1 + 40)];
    v4[2](v4, v3);
  }
}

void sub_1000326A4(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v4 = [*(a1 + 32) completion];
    v3 = +[NSSet set];
    v4[2](v4, v3);
  }
}

void sub_100032888(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v4 = [*(a1 + 32) completion];
    v4[2](v4, *(a1 + 40));
  }

  else
  {
    v3 = +[FBALog ded];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100094050(v3);
    }
  }
}

void sub_100032A08(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v5 = [*(a1 + 32) completion];
    v3 = +[NSSet set];
    v5[2](v5, v3);
  }

  else
  {
    v4 = +[FBALog ded];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100094050(v4);
    }
  }
}

void sub_100032D20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLoading:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 tableView];
  [v3 reloadData];
}

void sub_100032D94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLoading:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 tableView];
  [v3 reloadData];
}

id sub_100033808(uint64_t a1)
{
  v1 = a1 / 60;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"After %lu minutes" value:&stru_1000E2210 table:@"Plurals"];
  v4 = [NSString stringWithFormat:v3, v1];

  return v4;
}

void sub_100035470(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 answer];
  v4 = [v5 values];
  [v3 evaluateSelectionWithValues:v4];
}

void sub_1000367DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000367F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003680C(uint64_t a1, void *a2)
{
  v3 = [a2 sortedArrayUsingComparator:&stru_1000DF858];
  [*(*(*(a1 + 32) + 8) + 40) setExtensions:v3];
}

int64_t sub_100036874(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

void sub_100036D58(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_10010B0C8 = [v1 BOOLForKey:@"SupportsBiometricsLock"];
}

void sub_1000383C8(uint64_t a1)
{
  v1 = [*(a1 + 32) scrollView];
  [v1 setZoomScale:0 animated:1.0];
}

void sub_1000388E4(void *a1)
{
  v2 = +[UIApplication sharedApplication];
  v10 = [v2 keyWindow];

  if (v10)
  {
    [v10 frame];
    v4 = (v3 + -300.0) * 0.5;
    [v10 frame];
    v6 = [[UIButton alloc] initWithFrame:{v4, v5 + -40.0, 300.0, 40.0}];
    [v6 setTitle:a1[4] forState:0];
    [v6 addTarget:a1[5] action:"openLink:" forControlEvents:64];
    v7 = +[UIColor secondaryLabelColor];
    [v6 setBackgroundColor:v7];

    v8 = [v6 layer];
    [v8 setZPosition:1.79769313e308];

    [v6 setAccessibilityIdentifier:a1[6]];
    [v6 setAccessibilityTraits:UIAccessibilityTraitButton];
    [v6 setAccessibilityLabel:a1[6]];
    [v10 addSubview:v6];
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:a1[5]];
}

void sub_100038D78(uint64_t a1)
{
  v2 = [*(a1 + 32) reader];
  v3 = [v2 tableNames];
  [*(a1 + 32) setTableNames:v3];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038E34;
  block[3] = &unk_1000DE430;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100038E34(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

void sub_10003A0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003A0CC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained || (v5 = WeakRetained, v6 = objc_loadWeakRetained((a1 + 32)), [v6 contentItem], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, !v7))
  {
    v8 = +[FBALog appHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "iFBAFeedbackViewController has no content item, not updating with model changes.", v10, 2u);
    }
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 handleModelChanges:v3];
}

id sub_10003AA44(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 feedback];
    v5 = [*(a1 + 32) contentItem];
    v6 = [v5 feedback];
    v7 = [v4 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10003AAF0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 feedback];
    v5 = [*(a1 + 32) contentItem];
    v6 = [v5 feedback];
    v7 = [v4 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10003AD94(uint64_t a1)
{
  v2 = +[FBALog appHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100094258();
  }

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"FEEDBACK_LOAD_ERROR_TITLE" value:&stru_1000E2210 table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"FEEDBACK_LOAD_ERROR_MESSAGE" value:&stru_1000E2210 table:0];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_1000E2210 table:FBKCommonStrings];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003AF70;
  v11[3] = &unk_1000DE458;
  v11[4] = *(a1 + 32);
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:v11];
  [v7 addAction:v10];

  [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
}

id sub_10003AF70(uint64_t a1)
{
  v2 = [*(a1 + 32) launchAction];
  v3 = [v2 isCaptive];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v6 = sub_10003B050;
  }

  else
  {
    v5 = &v8;
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v6 = sub_10003B0B0;
  }

  v5[2] = v6;
  v5[3] = &unk_1000DE430;
  v5[4] = v4;
  return [v4 dismissViewControllerAnimated:1 completion:{v8, v9}];
}

void sub_10003B050(uint64_t a1)
{
  v1 = [*(a1 + 32) launchAction];
  +[iFBKUtils exitCaptiveModeRemovingFromHomeScreen:](iFBKUtils, "exitCaptiveModeRemovingFromHomeScreen:", [v1 shouldMakeFBAVisible]);
}

void sub_10003B0B0(uint64_t a1)
{
  v1 = [*(a1 + 32) splitViewController];
  [v1 dismissSecondaryOrShowEmptyViewControllerAnimated:1];
}

void sub_10003B0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) feedback];
  if (!v5)
  {
    v14 = +[FBALog appHandle];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10009428C();
    }

    goto LABEL_9;
  }

  if (a3)
  {
LABEL_9:
    [*(a1 + 32) fbkHideSpinner];
    v15 = [*(a1 + 32) refreshControl];
    [v15 endRefreshing];

    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v7 = +[FBKData sharedInstance];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003B3D0;
  v19[3] = &unk_1000DFA60;
  v21 = *(a1 + 40);
  v8 = v6;
  v20 = v8;
  [v7 getAllContentForFeedback:v5 completion:v19];

  v9 = +[FBALog appHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v5 ID];
    v11 = [v10 intValue];
    *buf = 67109120;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Will fetch Feedback Status with ID [%i]", buf, 8u);
  }

  dispatch_group_enter(v8);
  v12 = +[FBKData sharedInstance];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003B418;
  v17[3] = &unk_1000DFA88;
  v18 = v8;
  v13 = v8;
  [v12 fetchFeedbackStatusForFeedback:v5 completion:v17];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003B420;
  v16[3] = &unk_1000DE430;
  v16[4] = *(a1 + 32);
  dispatch_group_notify(v13, &_dispatch_main_q, v16);

LABEL_10:
}

void sub_10003B3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    (*(*(a1 + 40) + 16))();
  }

  v5 = *(a1 + 32);

  dispatch_group_leave(v5);
}

void sub_10003B420(uint64_t a1)
{
  [*(a1 + 32) updateEverything];
  [*(a1 + 32) fbkHideSpinner];
  v2 = [*(a1 + 32) refreshControl];
  [v2 endRefreshing];
}

void sub_10003B878(uint64_t a1)
{
  v2 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B930;
  block[3] = &unk_1000DF630;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  dispatch_after(v2, &_dispatch_main_q, block);
}

id sub_10003B930(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003B9B0;
  v3[3] = &unk_1000DE548;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

id sub_10003B9B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003BA2C;
  v3[3] = &unk_1000DFAD0;
  v4 = *(a1 + 40);
  return [v1 dismissViewControllerAnimated:0 completion:v3];
}

void sub_10003C8BC(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10010B0D0;
  qword_10010B0D0 = v1;

  [qword_10010B0D0 setDateStyle:3];
  v3 = qword_10010B0D0;

  [v3 setTimeStyle:0];
}

void sub_10003CE34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSOperationQueue mainQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003CF14;
  v10[3] = &unk_1000DFB58;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  [v7 addOperationWithBlock:v10];
}

id sub_10003CF14(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v7 = +[UIApplication sharedApplication];
    v11 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10003D120;
    v13[3] = &unk_1000DF760;
    v13[4] = *(a1 + 48);
    [v7 openURL:v11 options:&__NSDictionary0__struct completionHandler:v13];
  }

  else
  {
    v2 = +[NSBundle mainBundle];
    v3 = FBKCommonStrings;
    v4 = [v2 localizedStringForKey:@"FILE_DOWNLOAD_ERROR_TITLE" value:&stru_1000E2210 table:FBKCommonStrings];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"FILE_DOWNLOAD_ERROR_MESSAGE" value:&stru_1000E2210 table:v3];
    v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"OK" value:&stru_1000E2210 table:v3];
    v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:&stru_1000DFB30];
    [v7 addAction:v10];

    [*(a1 + 48) presentViewController:v7 animated:1 completion:0];
    [*(a1 + 48) setFileDownloadInProgress:0];
  }

  return [*(a1 + 48) fbkHideSpinner];
}

id sub_10003D894(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003D908;
  v3[3] = &unk_1000DE430;
  v3[4] = v1;
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void sub_10003D930(uint64_t a1)
{
  v2 = [*(a1 + 32) contentItem];
  v3 = [v2 user];
  v4 = [v3 hasManyManagedTeams];

  if (v4)
  {
    v21 = [UIStoryboard storyboardWithName:@"Teams" bundle:0];
    v5 = [v21 instantiateViewControllerWithIdentifier:@"FBATeamPickerController"];
    [v5 setShowsDismissButton:1];
    [v5 setPickerDelegate:*(a1 + 32)];
    v6 = [*(a1 + 32) contentItem];
    v7 = [v6 singleTeam];
    [v5 setSelectedTeam:v7];

    v8 = [*(a1 + 32) contentItem];
    v9 = [v8 user];
    v10 = [v9 activeManagedTeams];
    v11 = +[FBKTeam sortDescriptors];
    v12 = [v10 sortedArrayUsingDescriptors:v11];
    [v5 setTeams:v12];

    v13 = [[FBAPartialSheetNavigationController alloc] initWithRootViewController:v5];
    v14 = [*(a1 + 32) traitCollection];
    v15 = [v14 preferredContentSizeCategory];
    [(FBAPartialSheetNavigationController *)v13 setDetentBehavior:UIContentSizeCategoryIsAccessibilityCategory(v15)];

    [(FBAPartialSheetNavigationController *)v13 setModalPresentationStyle:7];
    v16 = [*(a1 + 32) navigationItem];
    v17 = [v16 rightBarButtonItem];
    v18 = [(FBAPartialSheetNavigationController *)v13 presentationController];
    [v18 setBarButtonItem:v17];

    [*(a1 + 32) presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    v19 = *(a1 + 32);
    v21 = [v19 contentItem];
    v5 = [v21 user];
    v13 = [v5 managedTeams];
    v20 = [(FBAPartialSheetNavigationController *)v13 anyObject];
    [v19 promoteIndividualFeedbackToTeam:v20];
  }
}

void sub_10003DBC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 contentItem];
  [v1 didTapCloseFeedbackWithItem:v2 atIndexPath:0];
}

void sub_10003E8D0(uint64_t a1)
{
  v2 = +[FBALog appHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "performing batch updates during size change", v4, 2u);
  }

  v3 = [*(a1 + 32) tableView];
  [v3 performBatchUpdates:&stru_1000DFBA0 completion:&stru_1000DFBC0];
}

void sub_10003EC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003EC40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10003ED74;
    v13[3] = &unk_1000DFBE8;
    objc_copyWeak(&v16, (a1 + 40));
    v14 = *(a1 + 32);
    v15 = v9;
    [v11 _confirmFilePromiseDeletionWithStub:v12 deletionHandler:v13];

    objc_destroyWeak(&v16);
  }
}

void sub_10003ED74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteFilePromise:*(a1 + 32) completionHandler:*(a1 + 40)];
}

void sub_10003EEB8(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) hideAttachmentDeletionSpinner];
  (*(*(a1 + 40) + 16))();
  v3 = v4;
  if (v4)
  {
    [*(a1 + 32) showAttachmentDeletionErrorAlertWithError:v4];
    v3 = v4;
  }
}

void sub_10003F18C(uint64_t a1)
{
  v2 = [*(a1 + 32) feedback];
  v3 = [v2 formResponseStub];

  v4 = *(a1 + 40);
  v5 = v4;
  if (!v3)
  {
    v6 = +[FBALog appHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000943F8();
    }

    goto LABEL_8;
  }

  if (!v4)
  {
    v6 = +[FBALog appHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000943C4();
    }

LABEL_8:

    [*(a1 + 32) showAttachmentDeletionErrorAlert];
    goto LABEL_9;
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:
}

void sub_10003F9C0(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = +[FBKData sharedInstance];
  v3 = [*(a1 + 32) contentItem];
  v7 = v3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003FAD8;
  v6[3] = &unk_1000DF1F8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  [v2 promoteFeedback:v4 toTeam:v5 completion:v6];
}

void sub_10003FAD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[FBALog appHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009442C(a1, v3);
    }

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"FEEDBACK_MOVE_ERROR_TITLE" value:&stru_1000E2210 table:0];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"FEEDBACK_MOVE_ERROR_MESSAGE" value:&stru_1000E2210 table:0];
    v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_1000E2210 table:FBKCommonStrings];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003FCF4;
    v14[3] = &unk_1000DE458;
    v14[4] = *(a1 + 32);
    v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:v14];
    [v9 addAction:v12];

    [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v13 = [*(a1 + 32) splitViewController];
    [v13 dismissSecondaryOrShowEmptyViewControllerAnimated:1];
  }
}

void sub_1000400EC(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = +[FBKData sharedInstance];
  v3 = [*(a1 + 32) contentItem];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100040204;
  v5[3] = &unk_1000DF1F8;
  v5[4] = *(a1 + 32);
  [v2 demoteFeedback:v4 completion:v5];
}

void sub_100040204(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[FBALog appHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000944F4(a1, v3);
    }

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"FEEDBACK_MOVE_ERROR_TITLE" value:&stru_1000E2210 table:0];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"FEEDBACK_MOVE_ERROR_MESSAGE" value:&stru_1000E2210 table:0];
    v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_1000E2210 table:FBKCommonStrings];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100040420;
    v14[3] = &unk_1000DE458;
    v14[4] = *(a1 + 32);
    v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:v14];
    [v9 addAction:v12];

    [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v13 = [*(a1 + 32) splitViewController];
    [v13 dismissSecondaryOrShowEmptyViewControllerAnimated:1];
  }
}

void sub_100040610(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[FBALog appHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000944F4(a1, v3);
    }

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"FEEDBACK_ASSIGN_ERROR_TITLE" value:&stru_1000E2210 table:0];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"FEEDBACK_ASSIGN_ERROR_MESSAGE" value:&stru_1000E2210 table:0];
    v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_1000E2210 table:FBKCommonStrings];
    v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:&stru_1000DFC50];
    [v9 addAction:v12];

    [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
  }
}

void sub_1000409CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_1000409EC(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 authorizationStatus];
  if (!result)
  {
    sub_100041A4C();
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    aBlock[4] = sub_100041A98;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100088474;
    aBlock[3] = &unk_1000DFEC8;
    v17 = _Block_copy(aBlock);
    v18 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100041CBC(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags);
    sub_100041AA0(&unk_100109980, &qword_1000C1B50);
    sub_100041AE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

void sub_100040CB4(void *a1)
{
  v3[4] = FBAMailboxesViewController.controller(_:didFinishLoadingDraft:devicesController:draftingController:);
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100040D64;
  v3[3] = &unk_1000DFEF0;
  v2 = _Block_copy(v3);
  [a1 requestAuthorizationWithOptions:7 completionHandler:v2];
  _Block_release(v2);
}

void sub_100040D64(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_100040DDC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

__n128 sub_100040F80(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100040F8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100040FAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100041060@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_1000410B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_100041124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t sub_100041180@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000411A8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100041220(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000412A0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000412E4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100041320()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100041374()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

BOOL sub_1000413FC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100041464(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1000414EC()
{
  sub_100041CBC(&qword_1001090C0, type metadata accessor for OpenExternalURLOptionsKey);
  sub_100041CBC(&qword_1001090C8, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000415AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000415D8()
{
  sub_100041CBC(&qword_100109068, type metadata accessor for AttributeName);
  sub_100041CBC(&qword_100109070, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100041694()
{
  sub_100041CBC(&qword_100109090, type metadata accessor for TraitKey);
  sub_100041CBC(&qword_100109098, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void *sub_100041750@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_100041760@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_10004176C()
{
  v2 = *v0;
  sub_100041CBC(&qword_100109078, type metadata accessor for Weight);
  sub_100041CBC(&qword_100109080, type metadata accessor for Weight);
  sub_1000421A0();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100041834()
{
  v2 = *v0;
  sub_100041CBC(&qword_100109048, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_100041CBC(&qword_100109050, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000418F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100041938()
{
  sub_100041CBC(&qword_100109058, type metadata accessor for URLResourceKey);
  sub_100041CBC(&qword_100109060, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000419F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100041A4C()
{
  result = qword_100109970;
  if (!qword_100109970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100109970);
  }

  return result;
}

uint64_t sub_100041AA0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100041AE8()
{
  result = qword_100108F90;
  if (!qword_100108F90)
  {
    sub_100041B4C(&unk_100109980, &qword_1000C1B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108F90);
  }

  return result;
}

uint64_t sub_100041B4C(uint64_t *a1, uint64_t *a2)
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

__n128 sub_100041BF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100041C04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100041C24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100041CBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100041E2C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_100041E68(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

unint64_t sub_1000421A0()
{
  result = qword_100109088;
  if (!qword_100109088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109088);
  }

  return result;
}

void sub_100042208(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000423A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100041AA0(&qword_100109250, &unk_1000C2540);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100042484(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100041AA0(&qword_100109250, &unk_1000C2540);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FBANotEnrolledView()
{
  result = qword_1001092B0;
  if (!qword_1001092B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100042580()
{
  sub_100042614();
  if (v0 <= 0x3F)
  {
    sub_100042678();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100042614()
{
  if (!qword_1001092C0)
  {
    sub_100041B4C(&qword_1001092C8, &qword_1000C2588);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001092C0);
    }
  }
}

void sub_100042678()
{
  if (!qword_1001092D0)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1001092D0);
    }
  }
}

uint64_t getEnumTagSinglePayload for FBANotEnrolledView.ExitButton(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBANotEnrolledView.ExitButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100042844()
{
  result = qword_100109308;
  if (!qword_100109308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109308);
  }

  return result;
}

Swift::Int sub_1000428B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100042924()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

__n128 sub_100042984@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100041AA0(&qword_100109310, &qword_1000C2658);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = v15 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v8 = sub_100041AA0(&qword_100109318, &qword_1000C2660);
  sub_100042B0C(v1, &v7[*(v8 + 44)]);
  v9 = static Edge.Set.top.getter();
  v10 = &v7[*(v4 + 44)];
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100045374(v7, a1, &qword_100109310, &qword_1000C2658);
  v11 = a1 + *(sub_100041AA0(&qword_100109320, &qword_1000C2668) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_100042B0C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v45 = sub_100041AA0(&qword_100109328, &qword_1000C2670);
  v43 = *(v45 - 8);
  v3 = *(v43 + 64);
  __chkstk_darwin(v45);
  v49 = &v40 - v4;
  v41 = sub_100041AA0(&qword_100109330, &qword_1000C2678);
  v5 = *(*(v41 - 8) + 64);
  v6 = __chkstk_darwin(v41);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - v9;
  __chkstk_darwin(v8);
  v46 = &v40 - v11;
  v42 = sub_100041AA0(&qword_100109338, &qword_1000C2680);
  v12 = *(v42 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v42);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  v50 = a1;
  static Axis.Set.vertical.getter();
  sub_100041AA0(&qword_100109340, &qword_1000C2688);
  sub_10004362C();
  v18 = v17;
  ScrollView.init(_:showsIndicators:content:)();
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  if (v19)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v22 = sub_10004375C;
  }

  else
  {
    v22 = FBAMailboxesViewController.controller(_:didFinishLoadingDraft:devicesController:draftingController:);
    v21 = 0;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  __chkstk_darwin(v23);
  *(&v40 - 2) = a1;
  sub_10004374C(v19);
  Button.init(action:label:)();
  sub_100041AA0(&qword_100109360, &qword_1000C2698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C2520;
  v25 = static Edge.Set.leading.getter();
  *(inited + 32) = v25;
  v26 = static Edge.Set.bottom.getter();
  *(inited + 33) = v26;
  v27 = static Edge.Set.trailing.getter();
  *(inited + 34) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v25)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  (*(v43 + 32))(v10, v49, v45);
  v29 = &v10[*(v41 + 36)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  v30 = v46;
  sub_100045374(v10, v46, &qword_100109330, &qword_1000C2678);
  v31 = v12;
  v32 = *(v12 + 16);
  v33 = v44;
  v34 = v42;
  v32(v44, v18, v42);
  v35 = v47;
  sub_100045460(v30, v47, &qword_100109330, &qword_1000C2678);
  v36 = v48;
  v32(v48, v33, v34);
  v37 = sub_100041AA0(&qword_100109368, &qword_1000C26A0);
  sub_100045460(v35, &v36[*(v37 + 48)], &qword_100109330, &qword_1000C2678);
  sub_1000454C8(v30, &qword_100109330, &qword_1000C2678);
  v38 = *(v31 + 8);
  v38(v18, v34);
  sub_1000454C8(v35, &qword_100109330, &qword_1000C2678);
  return (v38)(v33, v34);
}

double sub_100043094@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for FBANotEnrolledView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_100041AA0(&qword_100109370, &qword_1000C26A8);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = sub_100041AA0(&qword_100109358, &qword_1000C2690);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v30 - v16;
  *v17 = static HorizontalAlignment.center.getter();
  *(v17 + 1) = 0x4030000000000000;
  v17[16] = 0;
  v18 = &v17[*(sub_100041AA0(&qword_100109378, &qword_1000C26B0) + 44)];
  v32 = sub_1000460CC();
  sub_100044C58(a1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_100044DE4(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_100041AA0(&qword_100109388, &qword_1000C26C0);
  sub_1000456EC(&qword_100109390, &qword_100109388, &qword_1000C26C0);
  sub_100044EDC();
  sub_10004558C(&qword_1001093A0, type metadata accessor for FBAProgramEnrollmentOffer);
  ForEach<>.init(_:content:)();
  v21 = v7[2];
  v21(v11, v13, v6);
  *v18 = 0x4050000000000000;
  v22 = sub_100041AA0(&qword_1001093A8, &qword_1000C26C8);
  v21(&v18[*(v22 + 48)], v11, v6);
  v23 = v7[1];
  v23(v13, v6);
  v23(v11, v6);
  sub_100041AA0(&qword_100109360, &qword_1000C2698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C2530;
  LOBYTE(a1) = static Edge.Set.leading.getter();
  *(inited + 32) = a1;
  v25 = static Edge.Set.trailing.getter();
  *(inited + 33) = v25;
  v26 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != a1)
  {
    v26 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v25)
  {
    v26 = Edge.Set.init(rawValue:)();
  }

  v27 = v31;
  sub_100045374(v17, v31, &qword_100109358, &qword_1000C2690);
  v28 = v27 + *(sub_100041AA0(&qword_100109340, &qword_1000C2688) + 36);
  *v28 = v26;
  result = 0.0;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  *(v28 + 40) = 1;
  return result;
}

uint64_t sub_1000434FC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a1;
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v8 = Text.bold()();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_100043784(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

unint64_t sub_10004362C()
{
  result = qword_100109348;
  if (!qword_100109348)
  {
    sub_100041B4C(&qword_100109340, &qword_1000C2688);
    sub_1000456EC(&qword_100109350, &qword_100109358, &qword_1000C2690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109348);
  }

  return result;
}

uint64_t sub_1000436E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004371C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10004374C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10004375C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100043784(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100043794@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(_:bundle:)();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v52 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v6, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v51 = v58;
  v47 = v59;
  v50 = v60;
  v46 = v61;
  v48 = v63;
  v49 = v62;
  LocalizedStringKey.init(stringLiteral:)();
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  static Font.title.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;

  sub_100043784(v7, v9, v11 & 1);

  static Font.Weight.semibold.getter();
  v44 = Text.fontWeight(_:)();
  v43 = v17;
  v42 = v18;
  v45 = v19;
  sub_100043784(v12, v14, v16 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  static Font.body.getter();
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_100043784(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v20) = v42 & 1;
  v57 = v42 & 1;
  v33 = v47;
  v56 = v47;
  v34 = v46;
  v55 = v46;
  v54 = v42 & 1;
  LOBYTE(v7) = v29 & 1;
  v53 = v29 & 1;
  v35 = v29 & 1;
  v36 = v51;
  *a1 = v52;
  *(a1 + 8) = v36;
  *(a1 + 16) = v33;
  *(a1 + 24) = v50;
  *(a1 + 32) = v34;
  v37 = v48;
  *(a1 + 40) = v49;
  *(a1 + 48) = v37;
  v38 = v44;
  v39 = v43;
  *(a1 + 56) = v44;
  *(a1 + 64) = v39;
  *(a1 + 72) = v20;
  *(a1 + 80) = v45;
  *(a1 + 88) = v25;
  *(a1 + 96) = v27;
  *(a1 + 104) = v35;
  *(a1 + 112) = v31;
  *(a1 + 120) = KeyPath;
  *(a1 + 128) = 1;

  sub_10004557C(v38, v39, v20);

  sub_10004557C(v25, v27, v7);

  sub_100043784(v25, v27, v7);

  sub_100043784(v38, v39, v57);
}

void sub_100043C20(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedApplication];
  (*(v7 + 16))(v10, a1 + OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_destination, v6);
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  sub_100075F00(&_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10004558C(&qword_1001090C0, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  aBlock[4] = sub_10004561C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100044A60;
  aBlock[3] = &unk_1000E0308;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  sub_10004374C(a2);

  [v11 openURL:v14 options:isa completionHandler:v17];
  _Block_release(v17);
}

uint64_t sub_100043E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100041AA0(&qword_1001093F8, &qword_1000C2838);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = v42 - v11;
  v13 = sub_100041AA0(&qword_1001093E8, &qword_1000C2830);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = v42 - v16;
  *v12 = a1;
  *(v12 + 1) = 0x4020000000000000;
  v12[16] = 0;
  v18 = sub_100041AA0(&qword_100109420, &qword_1000C2850);
  sub_10004418C(a2, a3, &v12[*(v18 + 44)]);
  v19 = static Edge.Set.all.getter();
  v20 = &v12[*(v9 + 44)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100045374(v12, v17, &qword_1001093F8, &qword_1000C2838);
  v21 = &v17[*(v14 + 44)];
  v22 = v42[5];
  *(v21 + 4) = v42[4];
  *(v21 + 5) = v22;
  *(v21 + 6) = v42[6];
  v23 = v42[1];
  *v21 = v42[0];
  *(v21 + 1) = v23;
  v24 = v42[3];
  *(v21 + 2) = v42[2];
  *(v21 + 3) = v24;
  v25 = (a4 + *(sub_100041AA0(&qword_1001093D0, &qword_1000C2828) + 36));
  v26 = *(type metadata accessor for RoundedRectangle() + 20);
  v27 = enum case for RoundedCornerStyle.circular(_:);
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #10.0 }

  *v25 = _Q0;
  v34 = [objc_opt_self() tertiarySystemFillColor];
  v35 = Color.init(uiColor:)();
  v36 = sub_100041AA0(&qword_100109428, &qword_1000C2858);
  *&v25[*(v36 + 52)] = v35;
  *&v25[*(v36 + 56)] = 256;
  v37 = static Alignment.center.getter();
  v39 = v38;
  v40 = &v25[*(sub_100041AA0(&qword_100109418, &qword_1000C2848) + 36)];
  *v40 = v37;
  v40[1] = v39;
  return sub_100045374(v17, a4, &qword_1001093E8, &qword_1000C2830);
}

uint64_t sub_10004418C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v5 = sub_100041AA0(&qword_100109430, &qword_1000C2860);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_imageName);
  v12 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_imageName + 8);

  v50 = Image.init(systemName:)();
  v49 = static Color.accentColor.getter();
  v13 = static Font.title.getter();
  v48 = v13;
  KeyPath = swift_getKeyPath();
  v47 = KeyPath;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = static Edge.Set.trailing.getter();
  LOBYTE(v12) = v15;
  v46 = v15;
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v74[0]) = 0;
  v43 = static HorizontalAlignment.leading.getter();
  LOBYTE(v74[0]) = 0;
  sub_100044590(a1, v55);
  *&v54[7] = v55[0];
  *&v54[23] = v55[1];
  *&v54[39] = v55[2];
  *&v54[55] = v55[3];
  v24 = v74[0];
  LODWORD(v44) = LOBYTE(v74[0]);
  v42 = swift_getKeyPath();
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v25 = sub_100041AA0(&qword_100109438, &qword_1000C28C8);
  sub_100044854(&v10[*(v25 + 44)]);
  v26 = v45;
  sub_100045460(v10, v45, &qword_100109430, &qword_1000C2860);
  *&v56 = v50;
  *(&v56 + 1) = v49;
  *&v57 = KeyPath;
  *(&v57 + 1) = v13;
  v27 = v51;
  v28 = v52;
  v58 = v51;
  v59 = v52;
  LOBYTE(v61) = v12;
  *(&v61 + 1) = v17;
  *&v62[0] = v19;
  *(&v62[0] + 1) = v21;
  *&v62[1] = v23;
  BYTE8(v62[1]) = 0;
  v29 = v57;
  *a3 = v56;
  *(a3 + 16) = v29;
  *(a3 + 105) = *(v62 + 9);
  v30 = v62[0];
  *(a3 + 80) = v61;
  *(a3 + 96) = v30;
  v31 = v53;
  v60 = v53;
  *(a3 + 48) = v28;
  *(a3 + 64) = v31;
  *(a3 + 32) = v27;
  v33 = v42;
  v32 = v43;
  *&v63 = v43;
  *(&v63 + 1) = 0x4008000000000000;
  LOBYTE(v64[0]) = v24;
  *(v64 + 1) = *v54;
  *&v64[4] = *&v54[63];
  *(&v64[4] + 1) = v42;
  *(&v64[3] + 1) = *&v54[48];
  *(&v64[2] + 1) = *&v54[32];
  *(&v64[1] + 1) = *&v54[16];
  v65 = 0;
  v34 = v64[0];
  *(a3 + 128) = v63;
  *(a3 + 144) = v34;
  v35 = v64[1];
  v36 = v64[2];
  v37 = v64[3];
  v38 = v64[4];
  *(a3 + 224) = 0;
  *(a3 + 192) = v37;
  *(a3 + 208) = v38;
  *(a3 + 160) = v35;
  *(a3 + 176) = v36;
  *(a3 + 232) = 0;
  *(a3 + 240) = 1;
  v39 = sub_100041AA0(&qword_100109440, &qword_1000C28D0);
  sub_100045460(v26, a3 + *(v39 + 80), &qword_100109430, &qword_1000C2860);
  sub_100045460(&v56, v74, &qword_100109448, &qword_1000C28D8);
  sub_100045460(&v63, v74, &qword_100109450, &qword_1000C28E0);
  sub_1000454C8(v10, &qword_100109430, &qword_1000C2860);
  sub_1000454C8(v26, &qword_100109430, &qword_1000C2860);
  v69 = *&v54[16];
  v70 = *&v54[32];
  *v71 = *&v54[48];
  v66[0] = v32;
  v66[1] = 0x4008000000000000;
  v67 = v44;
  v68 = *v54;
  *&v71[15] = *&v54[63];
  v72 = v33;
  v73 = 0;
  sub_1000454C8(v66, &qword_100109450, &qword_1000C28E0);
  v74[0] = v50;
  v74[1] = v49;
  v74[2] = v47;
  v74[3] = v48;
  v75 = v51;
  v76 = v52;
  v77 = v53;
  v78 = v46;
  v79 = v17;
  v80 = v19;
  v81 = v21;
  v82 = v23;
  v83 = 0;
  return sub_1000454C8(v74, &qword_100109448, &qword_1000C28D8);
}

uint64_t sub_100044590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_name);
  v39 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_name + 8);
  sub_100045528();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.headline.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_100043784(v3, v5, v7 & 1);

  static Color.accentColor.getter();
  v13 = Text.foregroundStyle<A>(_:)();
  v34 = v14;
  v35 = v13;
  v33 = v15;
  v36 = v16;
  sub_100043784(v8, v10, v12 & 1);

  v38 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_programDescription);
  v40 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_programDescription + 8);

  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v10) = v20;
  static Font.callout.getter();
  v21 = Text.font(_:)();
  v23 = v22;
  LOBYTE(v5) = v24;

  sub_100043784(v17, v19, v10 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v25 = Text.foregroundStyle<A>(_:)();
  v27 = v26;
  LOBYTE(v10) = v28;
  v30 = v29;
  sub_100043784(v21, v23, v5 & 1);

  *a2 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v10 & 1;
  *(a2 + 56) = v30;
  sub_10004557C(v35, v34, v33 & 1);

  sub_10004557C(v25, v27, v10 & 1);

  sub_100043784(v25, v27, v10 & 1);

  sub_100043784(v35, v34, v33 & 1);
}

uint64_t sub_100044854@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100041AA0(&qword_100109458, &qword_1000C28E8);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v20 - v8);
  v10 = Image.init(systemName:)();
  v11 = [objc_opt_self() tertiaryLabelColor];
  v12 = Color.init(uiColor:)();
  v13 = (v9 + *(v3 + 44));
  v14 = *(sub_100041AA0(&qword_100109460, &qword_1000C28F0) + 28);
  v15 = enum case for Image.Scale.small(_:);
  v16 = type metadata accessor for Image.Scale();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *v9 = v10;
  v9[1] = v12;
  sub_100045460(v9, v7, &qword_100109458, &qword_1000C28E8);
  *a1 = 0;
  *(a1 + 8) = 1;
  v17 = sub_100041AA0(&qword_100109468, &qword_1000C2928);
  sub_100045460(v7, a1 + *(v17 + 48), &qword_100109458, &qword_1000C28E8);
  v18 = a1 + *(v17 + 64);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_1000454C8(v9, &qword_100109458, &qword_1000C28E8);
  return sub_1000454C8(v7, &qword_100109458, &qword_1000C28E8);
}

uint64_t sub_100044A60(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100044AB4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  static VerticalAlignment.top.getter();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = v2;
  sub_10004374C(v1);
  sub_100041AA0(&qword_1001093D0, &qword_1000C2828);
  sub_1000451D8();
  return Button.init(action:label:)();
}

uint64_t sub_100044B90(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_100044C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBANotEnrolledView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044CBC()
{
  v1 = type metadata accessor for FBANotEnrolledView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 8))
  {
    v6 = *(v5 + 16);
  }

  v7 = *(v1 + 24);
  sub_100041AA0(&qword_100109380, &qword_1000C26B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBANotEnrolledView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044E48@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for FBANotEnrolledView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *a1;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  v10 = v7;

  return sub_10004374C(v8);
}

unint64_t sub_100044EDC()
{
  result = qword_100109398;
  if (!qword_100109398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109398);
  }

  return result;
}

uint64_t sub_100044F30(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100044F48(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100044F5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100044FA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100045048(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100041B4C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000450CC()
{
  result = qword_1001093B8;
  if (!qword_1001093B8)
  {
    sub_100041B4C(&qword_100109310, &qword_1000C2658);
    sub_1000456EC(&qword_1001093C0, &qword_1001093C8, qword_1000C2780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001093B8);
  }

  return result;
}

unint64_t sub_1000451D8()
{
  result = qword_1001093D8;
  if (!qword_1001093D8)
  {
    sub_100041B4C(&qword_1001093D0, &qword_1000C2828);
    sub_100045048(&qword_1001093E0, &qword_1001093E8, &qword_1000C2830, sub_1000452BC);
    sub_1000456EC(&qword_100109410, &qword_100109418, &qword_1000C2848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001093D8);
  }

  return result;
}

unint64_t sub_1000452BC()
{
  result = qword_1001093F0;
  if (!qword_1001093F0)
  {
    sub_100041B4C(&qword_1001093F8, &qword_1000C2838);
    sub_1000456EC(&qword_100109400, &qword_100109408, &qword_1000C2840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001093F0);
  }

  return result;
}

uint64_t sub_100045374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100041AA0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000453E4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100045460(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100041AA0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000454C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100041AA0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100045528()
{
  result = qword_100109C10;
  if (!qword_100109C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109C10);
  }

  return result;
}

uint64_t sub_10004557C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10004558C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000455D4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004561C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    return v1();
  }

  return result;
}

uint64_t sub_10004564C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000456EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100041B4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100045748()
{
  v0 = type metadata accessor for Logger();
  sub_100046848(v0, qword_100109490);
  sub_1000466AC(v0, qword_100109490);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

id sub_1000457C4(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*(sub_100041AA0(&qword_100109790, &unk_1000C29E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v44 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v12 = sub_100065F3C(1701667182, 0xE400000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_100046784(*(a1 + 56) + 32 * v12, v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  object = v48._object;
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  countAndFlagsBits = v48._countAndFlagsBits;
  v16 = sub_100065F3C(0x7470697263736564, 0xEB000000006E6F69);
  if ((v17 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_100046784(*(a1 + 56) + 32 * v16, v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 16) || (v46 = v48, v18 = sub_100065F3C(0x616E5F6567616D69, 0xEA0000000000656DLL), (v19 & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_100046784(*(a1 + 56) + 32 * v18, v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

LABEL_15:

LABEL_17:

    goto LABEL_18;
  }

  v45 = v48._object;
  if (!*(a1 + 16) || (v44 = v48._countAndFlagsBits, v20 = sub_100065F3C(0x74616E6974736564, 0xEB000000006E6F69), (v21 & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_100046784(*(a1 + 56) + 32 * v20, v49);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  URL.init(string:)();

  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v25 = *(v8 + 32);
    v25(v11, v6, v7);
    if (*(a1 + 16) && (v26 = sub_100065F3C(0xD000000000000013, 0x80000001000CA1C0), (v27 & 1) != 0))
    {
      sub_100046784(*(a1 + 56) + 32 * v26, v49);

      if (swift_dynamicCast() & 1) != 0 && (v48._countAndFlagsBits)
      {
        v28 = objc_opt_self();
        v29 = [v28 mainBundle];
        v50._object = 0xE000000000000000;
        v30.value._countAndFlagsBits = 0x74536E6F6D6D6F43;
        v30.value._object = 0xED000073676E6972;
        v31._countAndFlagsBits = countAndFlagsBits;
        v31._object = object;
        v32._countAndFlagsBits = 0;
        v32._object = 0xE000000000000000;
        v50._countAndFlagsBits = 0;
        v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, v29, v32, v50);

        *&v2[OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_name] = v33;
        v34 = [v28 mainBundle];
        v51._object = 0xE000000000000000;
        v35.value._countAndFlagsBits = 0x74536E6F6D6D6F43;
        v35.value._object = 0xED000073676E6972;
        v36._countAndFlagsBits = 0;
        v36._object = 0xE000000000000000;
        v51._countAndFlagsBits = 0;
        v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v35, v34, v36, v51);
        v46._countAndFlagsBits = v37._countAndFlagsBits;
        v38 = v37._object;

LABEL_30:
        v40 = &v2[OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_programDescription];
        *v40 = v46._countAndFlagsBits;
        v40[1] = v38;
        v41 = &v2[OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_imageName];
        v42 = v45;
        *v41 = v44;
        v41[1] = v42;
        v25(&v2[OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_destination], v11, v7);
        v43 = type metadata accessor for FBAProgramEnrollmentOffer();
        v47.receiver = v2;
        v47.super_class = v43;
        return objc_msgSendSuper2(&v47, "init");
      }
    }

    else
    {
    }

    v39 = &v2[OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_name];
    *v39 = countAndFlagsBits;
    v39[1] = object;
    v38 = v46._object;
    goto LABEL_30;
  }

  sub_1000467E0(v6);
LABEL_18:
  type metadata accessor for FBAProgramEnrollmentOffer();
  v22 = *((swift_isaMask & *v2) + 0x30);
  v23 = *((swift_isaMask & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100045DCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAProgramEnrollmentOffer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FBAProgramEnrollmentOffer()
{
  result = qword_1001094E8;
  if (!qword_1001094E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100045F00()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100045FAC@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC18Feedback_Assistant25FBAProgramEnrollmentOffer_name);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

void *sub_100045FC8(void *result)
{
  v1 = 0;
  v2 = result[2];
  v3 = (result + 4);
  while (1)
  {
    if (v2 == v1)
    {
      return &_swiftEmptyArrayStorage;
    }

    if (v1 >= v2)
    {
      break;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

    v5 = *&v3[8 * v1];
    objc_allocWithZone(type metadata accessor for FBAProgramEnrollmentOffer());

    result = sub_1000457C4(v6);
    ++v1;
    if (result)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v4;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void *sub_1000460CC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v38 - v6;
  type metadata accessor for FBAProgramEnrollmentOffer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 URLForResource:v10 withExtension:v11];

  if (!v12)
  {
    if (qword_100108DB0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000466AC(v21, qword_100109490);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to find program enrollment offers file.", v24, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v1 + 32))(v7, v5, v0);
  v25 = Data.init(contentsOf:options:)();
  v27 = v26;
  v28 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v40[0] = 0;
  v30 = [v28 JSONObjectWithData:isa options:0 error:v40];

  v31 = v40[0];
  if (!v30)
  {
    v37 = v31;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100046730(v25, v27);
    if (qword_100108DB0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000466AC(v13, qword_100109490);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v41[0] = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = sub_10008D954(v18, v19, v41);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Encountered error while parsing program enrollments: %{public}s", v16, 0xCu);
      sub_1000466E4(v17);
    }

    else
    {
    }

    goto LABEL_22;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100046784(v41, v40);
  sub_100041AA0(&qword_1001094F8, &qword_1000C29D0);
  if (swift_dynamicCast())
  {
    v32 = v39;
    if (!v39[2] || (v33 = sub_100065F3C(0x736D6172676F7270, 0xE800000000000000), (v34 & 1) == 0))
    {
      sub_100046730(v25, v27);

      sub_1000466E4(v41);
      goto LABEL_22;
    }

    sub_100046784(v32[7] + 32 * v33, v40);

    sub_100041AA0(&qword_100109500, &qword_1000C29D8);
    if (swift_dynamicCast())
    {
      v35 = sub_100045FC8(v39);
      sub_100046730(v25, v27);

      sub_1000466E4(v41);
      (*(v1 + 8))(v7, v0);
      return v35;
    }
  }

  sub_1000466E4(v41);
  sub_100046730(v25, v27);
LABEL_22:
  (*(v1 + 8))(v7, v0);
  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000466AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000466E4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100046730(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100046784(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000467E0(uint64_t a1)
{
  v2 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_100046848(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_1000468AC()
{
  v1 = v0[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing];
  v0[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing] = 0;
  if ((v1 & 1) == 0)
  {
    goto LABEL_4;
  }

  result = [v0 text];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = &v0[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_committedText];
    v8 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_committedText + 8];
    *v7 = v4;
    v7[1] = v6;

    sub_100046988();
LABEL_4:
    v9.receiver = v0;
    v9.super_class = type metadata accessor for FBAExpandingTextView();
    return objc_msgSendSuper2(&v9, "resignFirstResponder");
  }

  __break(1u);
  return result;
}

void sub_100046988()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing] != 1)
  {
    v21 = &v0[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_committedText];
    v22 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_committedText + 8];
    v50 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_committedText];
    v51 = v22;
    v23 = objc_opt_self();

    v24 = [v23 whitespaceAndNewlineCharacterSet];
    static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100045528();
    StringProtocol.trimmingCharacters(in:)();
    (*(v3 + 8))(v6, v2);

    v25 = String.count.getter();

    if (v25 < 1)
    {
      v36 = *(v21 + 1);
      *v21 = 0;
      *(v21 + 1) = 0xE000000000000000;

      static os_log_type_t.debug.getter();
      v37 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_log];
      os_log(_:dso:log:_:_:)();
      v38 = [objc_opt_self() tertiaryLabelColor];
      [v1 setTextColor:v38];

      if (!*&v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_placeholderText + 8])
      {
        v44 = 0;
LABEL_27:
        [v1 setText:v44];

        return;
      }

      v39 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_placeholderText];
    }

    else
    {
      static os_log_type_t.debug.getter();
      v26 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_log];
      sub_100041AA0(&unk_100109860, qword_1000C2DA0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1000C29F0;
      v29 = *v21;
      v28 = *(v21 + 1);
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_100047484();
      *(v27 + 32) = v29;
      *(v27 + 40) = v28;

      os_log(_:dso:log:_:_:)();

      v30 = [objc_opt_self() labelColor];
      [v1 setTextColor:v30];

      v31 = [v1 text];
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        if (v35)
        {
          if (v33 == *v21 && v35 == *(v21 + 1))
          {
            goto LABEL_15;
          }

          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v45)
          {
            return;
          }
        }
      }

      v46 = *v21;
      v47 = *(v21 + 1);
    }

    v44 = String._bridgeToObjectiveC()();

    goto LABEL_27;
  }

  static os_log_type_t.debug.getter();
  v7 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000C29F0;
  v9 = [v0 text];
  if (!v9)
  {
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100047484();
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  os_log(_:dso:log:_:_:)();

  v14 = [objc_opt_self() labelColor];
  [v1 setTextColor:v14];

  v15 = [v1 text];
  if (!v15)
  {
    v20 = &v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_committedText];
LABEL_20:
    v41 = *v20;
    v42 = *(v20 + 1);

    v49 = String._bridgeToObjectiveC()();

    [v1 setText:v49];
    v43 = v49;

    return;
  }

  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = &v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_committedText];
  if (!v19)
  {
    goto LABEL_20;
  }

  if (v17 == *v20 && v19 == *(v20 + 1))
  {

LABEL_15:

    return;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v40 & 1) == 0)
  {
    goto LABEL_20;
  }
}

void sub_100046F54()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [objc_opt_self() mainQueue];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_100047464;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000871B4;
  v6[3] = &unk_1000E0358;
  v4 = _Block_copy(v6);

  v5 = [v1 addObserverForName:UITextViewTextDidBeginEditingNotification object:v0 queue:v2 usingBlock:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

void sub_1000470B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    static os_log_type_t.debug.getter();
    v2 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_log];
    os_log(_:dso:log:_:_:)();

    v3 = v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing];
    v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing] = 1;
    if ((v3 & 1) == 0)
    {
      sub_100046988();
    }
  }
}

id sub_100047170(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_log;
  sub_1000474D8();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *&v1[v4] = OS_os_log.init(subsystem:category:)();
  v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing] = 0;
  v5 = &v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_committedText];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_placeholderText];
  v7 = type metadata accessor for FBAExpandingTextView();
  *v6 = 0;
  *(v6 + 1) = 0;
  v12.receiver = v2;
  v12.super_class = v7;
  v8 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_100046F54();
  }

  return v9;
}

id sub_100047278()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FBAExpandingTextView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10004742C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004746C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100047484()
{
  result = qword_100109550;
  if (!qword_100109550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109550);
  }

  return result;
}

unint64_t sub_1000474D8()
{
  result = qword_10010A0C0;
  if (!qword_10010A0C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10010A0C0);
  }

  return result;
}

uint64_t Logger.init(fbaCategory:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100047660(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100046848(v3, a2);
  sub_1000466AC(v3, a2);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000476F8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_1000466AC(v3, a2);
}

uint64_t sub_100047770@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_1000466AC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void sub_100047A5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_formStub);
  if (!v1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = v1;
  if (Strong)
  {
    v3 = [v17 name];
    [Strong setText:v3];
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v17 formDescription];
    [v5 setText:v6];
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  v9 = [v7 text];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {
      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        v15 = v16;
        [v16 setActive:1];
        goto LABEL_16;
      }

LABEL_21:
      __break(1u);
      return;
    }
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  [v14 setActive:0];
LABEL_16:
}

id sub_100047C94(char a1)
{
  v1[OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_disclosesMoreForms] = a1;
  if (a1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  [v1 setAccessoryType:a1 & 1];

  return [v1 setSelectionStyle:v2];
}

id sub_100047CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_itemIdentifier];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_formStub] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_disclosesMoreForms] = 1;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for FBATopicCell();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:", a1, v7);

  return v8;
}

id sub_100047E3C(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_itemIdentifier];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_formStub] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_disclosesMoreForms] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FBATopicCell();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_100047F30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBATopicCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100048008()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (v1)
  {
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v2 + 16) && (v3 = sub_100065F3C(0xD000000000000014, 0x80000001000CA5A0), (v4 & 1) != 0))
    {
      sub_100046784(*(v2 + 56) + 32 * v3, v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
    }
  }

  static os_log_type_t.fault.getter();
  result = [objc_opt_self() appHandle];
  if (result)
  {
    v6 = result;
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000481EC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_formStub);
  *(v1 + OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_formStub) = a1;
  v4 = a1;

  if (a1)
  {
    v5 = [v4 teamsMatchingFormID];
    sub_1000497E4(0, &qword_100109610, FBKTeam_ptr);
    sub_10004977C();
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100077C1C(v6);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = [objc_opt_self() sortDescriptors];
    if (!v7)
    {
      sub_1000497E4(0, &qword_100109620, NSSortDescriptor_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = Array._bridgeToObjectiveC()().super.isa;
    }

    v8 = [(objc_class *)isa sortedArrayUsingDescriptors:v7];

    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = sub_100076BF0(v9);

    sub_1000484A8(v10);
  }
}

id sub_1000484A8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams;
  v3 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams];
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams] = a1;

  result = [v1 tableView];
  if (result)
  {
    v5 = result;
    [result reloadData];

    v9.receiver = v1;
    v9.super_class = type metadata accessor for FBATeamPickerController();
    objc_msgSendSuper2(&v9, "preferredContentSize");
    v6 = *&v1[v2];
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v8 = *&v1[v2];
      }

      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return [v1 setPreferredContentSize:?];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100048658()
{
  v1 = v0[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_showsDismissButton];
  v4 = [v0 navigationItem];
  if (v1 == 1)
  {
    v2 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"dismissSelf"];
    [v4 setRightBarButtonItem:v2];

    v3 = v2;
  }

  else
  {
    [v4 setRightBarButtonItem:0];
    v3 = v4;
  }
}

void sub_100048770()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for FBATeamPickerController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = [v0 tableView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  [v1 setShowsVerticalScrollIndicator:0];

  v3 = [v0 tableView];
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setEstimatedRowHeight:60.0];

  v5 = [v0 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 setRowHeight:UITableViewAutomaticDimension];

    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_100048A2C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_cellReuseIdentifier];
  v10 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_cellReuseIdentifier + 8];
  v11 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:isa];

  result = IndexPath.section.getter();
  v15 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams];
  if ((v15 & 0xC000000000000001) != 0)
  {
    v46 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams];

    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (result >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v16 = *(v15 + 8 * result + 32);
LABEL_5:
  static UIListContentConfiguration.subtitleCell()();
  v17 = [v16 name];
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v48 = v13;
  UIListContentConfiguration.text.setter();
  v19 = [v16 typeString];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      UIListContentConfiguration.secondaryText.setter();
    }

    else
    {
    }
  }

  v25 = [objc_opt_self() systemImageNamed:FBKSystemImageNameInbox];
  UIListContentConfiguration.image.setter();
  v26 = objc_allocWithZone(UIColor);
  v51 = sub_100048F64;
  v52 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BBE8;
  v50 = &unk_1000E03D0;
  v27 = _Block_copy(aBlock);
  v28 = [v26 initWithDynamicProvider:v27];
  _Block_release(v27);

  v29 = v28;
  v30 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v30(aBlock, 0);
  v31 = [v2 traitCollection];
  v32 = [v31 preferredContentSizeCategory];

  UIContentSizeCategory.isAccessibilityCategory.getter();
  v33 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v33(aBlock, 0);
  v34 = v29;
  v35 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v35(aBlock, 0);
  v36 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v36(aBlock, 0);
  v37 = v34;
  v38 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.tintColor.setter();
  v38(aBlock, 0);
  v50 = v4;
  v51 = &protocol witness table for UIListContentConfiguration;
  v39 = sub_100049974(aBlock);
  (*(v5 + 16))(v39, v8, v4);
  v40 = v48;
  UITableViewCell.contentConfiguration.setter();
  v41 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_selectedTeam];
  if (v41 && (sub_1000497E4(0, &qword_100109610, FBKTeam_ptr), v42 = v16, v43 = v41, v44 = static NSObject.== infix(_:_:)(), v43, v42, (v44 & 1) != 0))
  {
    v45 = 3;
  }

  else
  {
    v45 = 0;
  }

  [v40 setAccessoryType:v45];

  (*(v5 + 8))(v8, v4);
  return v40;
}

id sub_100048F64(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = [objc_opt_self() labelColor];

    return v1;
  }

  else
  {
    result = [objc_opt_self() tintColor];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1000490FC(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector:"teamPickerDidCancel:"])
    {
      [v3 teamPickerDidCancel:a1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100049368(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_cellReuseIdentifier];
  *v3 = 0xD000000000000012;
  v3[1] = 0x80000001000CA750;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_formStub] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_selectedTeam] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_showsDismissButton] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FBATeamPickerController();
  return objc_msgSendSuper2(&v5, "initWithStyle:", a1);
}

id sub_100049448(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_cellReuseIdentifier];
  *v6 = 0xD000000000000012;
  v6[1] = 0x80000001000CA750;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_formStub] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_selectedTeam] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_showsDismissButton] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for FBATeamPickerController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1000495A8(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_cellReuseIdentifier];
  *v3 = 0xD000000000000012;
  v3[1] = 0x80000001000CA750;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_formStub] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_selectedTeam] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_showsDismissButton] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FBATeamPickerController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1000496A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBATeamPickerController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10004977C()
{
  result = qword_100109618;
  if (!qword_100109618)
  {
    sub_1000497E4(255, &qword_100109610, FBKTeam_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109618);
  }

  return result;
}

uint64_t sub_1000497E4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10004982C()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = IndexPath.section.getter();
  v4 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant23FBATeamPickerController_teams);

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 8 * result + 32);
LABEL_6:
  [v3 teamPicker:v1 didSelectTeam:v5];

  return swift_unknownObjectRelease();
}

uint64_t sub_10004991C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004995C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_100049974(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_100049A10(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100041AA0(&qword_100109698, qword_1000C2AE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v11 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:isa];

  v16 = v3;
  v17 = a1;
  v18 = a2;
  type metadata accessor for BatchUIButtonView();
  sub_10004BB98();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v19[3] = v6;
  v19[4] = sub_10004BBF0();
  sub_100049974(v19);
  UIHostingConfiguration.margins(_:_:)();
  (*(v7 + 8))(v10, v6);
  UICollectionViewCell.contentConfiguration.setter();
  return v13;
}

uint64_t sub_100049BC8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  (*(v5 + 32))(v10 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  return sub_10008DF84(sub_10004BD58, v10, a2);
}

void sub_100049D5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v1 collectionView:v3 didSelectItemAtIndexPath:isa];

      v1 = isa;
    }
  }
}

uint64_t sub_100049F50()
{
  v1 = v0;
  v2 = type metadata accessor for FBANotEnrolledView();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v9[*(v3 + 32)] = swift_getKeyPath();
  sub_100041AA0(&qword_100109380, &qword_1000C26B8);
  swift_storeEnumTagMultiPayload();
  *v9 = 0;
  *(v9 + 1) = sub_10004BB20;
  *(v9 + 2) = v10;
  sub_100044C58(v9, v7);
  v11 = objc_allocWithZone(sub_100041AA0(&qword_100109690, &qword_1000C2AD8));
  v12 = UIHostingController.init(rootView:)();
  [v12 setModalPresentationStyle:2];
  [v1 presentViewController:v12 animated:1 completion:0];

  return sub_10004BB30(v9);
}

void sub_10004A0D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10004A17C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  sub_10004BA54();
  v14 = static UIStoryboard.feedbackDraftViewController.getter();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    goto LABEL_51;
  }

  v16 = v15;
  [v15 setDelegate:v7];
  [v16 setPendingStub:a1];
  [v16 setCanShowTopicPicker:1];
  [v16 setShouldShowUserSwitcherInForm:0];
  [v16 setCanShowTeamPicker:1];
  [v16 setLaunchAction:a4];
  [v16 setSubmissionStyle:0];
  v17 = [v7 splitViewController];
  v82 = a5;
  if (v17)
  {
    v18 = v17;
    v19 = [v18 traitCollection];
    v20 = [v19 horizontalSizeClass];

    if (v20 == 2)
    {
      v21 = [v18 view];

      if (!v21)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      [v21 frame];
      v23 = v22;
      v25 = v24;

      v26 = v14;
      [v16 setPreferredContentSize:{v23 * 0.7, v25 * 0.7}];

      if (!a4)
      {
        goto LABEL_23;
      }
    }

    else
    {

      if (!a4)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    if (qword_100108DB8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000466AC(v27, static Logger.app);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "No split view controller from Mailboxes. Cannot set preferred content size for BFTVC", v30, 2u);
    }

    if (!a4)
    {
LABEL_23:
      v46 = [objc_opt_self() predicateForAllStubs];
      [v16 setCandidateFormStubsPredicate:v46];

      if (a1)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }
  }

  v31 = a4;
  v32 = [v31 exactMatchFormStub];
  if (!v32)
  {

    goto LABEL_23;
  }

  v33 = v32;
  v34 = [objc_opt_self() predicateForStub:v32];
  [v16 setCandidateFormStubsPredicate:v34];

  if (a1)
  {
LABEL_24:
    v47 = a1;
    v48 = [v47 name];
    v80 = v8;
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0xE000000000000000;
    }

    v53 = v14;
    if (qword_100108DB8 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000466AC(v54, static Logger.app);
    v38 = v47;

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v57 = 138543618;
      v60 = [v38 ID];
      *(v57 + 4) = v60;
      *v58 = v60;
      *(v57 + 12) = 2080;
      v61 = sub_10008D954(v50, v52, aBlock);

      *(v57 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "Will launch new draft for form: %{public}@ - %s", v57, 0x16u);
      sub_10004BAB8(v58);

      sub_1000466E4(v59);
    }

    else
    {
    }

    v14 = v53;
    v62 = a6;
    [v16 loadNewResponseForBugFormStub:v38 forTeam:v82];
    v8 = v80;
    goto LABEL_44;
  }

LABEL_16:
  if (a3)
  {
    v35 = qword_100108DB8;
    v36 = a3;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000466AC(v37, static Logger.app);
    v38 = v36;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v39, v40))
    {

LABEL_43:
      [v16 loadNewResponseForSurvey:v38 forTeam:v82];
      v62 = a6;
LABEL_44:

      goto LABEL_45;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 134218242;
    v43 = [v38 ID];
    v79 = v8;
    if (v43)
    {
      v44 = v43;
      v45 = [v43 integerValue];
    }

    else
    {
      v45 = 0;
    }

    v71 = v14;
    *(v41 + 4) = v45;

    *(v41 + 12) = 2082;
    v72 = [v38 name];

    if (v72)
    {
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = sub_10008D954(v73, v75, aBlock);

      *(v41 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v39, v40, "Will new survey draft with form: %ld - %{public}s", v41, 0x16u);
      sub_1000466E4(v42);

      v14 = v71;
      v8 = v79;
      goto LABEL_43;
    }

    goto LABEL_50;
  }

  v62 = a6;
  if (a2)
  {
    v63 = qword_100108DB8;
    v64 = a2;
    if (v63 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000466AC(v65, static Logger.app);
    v38 = v64;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138543362;
      v70 = [v38 ID];
      *(v68 + 4) = v70;
      *v69 = v70;
      _os_log_impl(&_mh_execute_header, v66, v67, "Will launch draft with ID: %{public}@", v68, 0xCu);
      sub_10004BAB8(v69);
    }

    [v16 loadDraft:v38];
    goto LABEL_44;
  }

LABEL_45:
  v77 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v16];
  if (v62)
  {
    aBlock[4] = v62;
    aBlock[5] = a7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100088474;
    aBlock[3] = &unk_1000E0470;
    v78 = _Block_copy(aBlock);
  }

  else
  {
    v78 = 0;
  }

  [v8 presentViewController:v77 animated:1 completion:v78];
  _Block_release(v78);
}

void sub_10004ACA4(uint64_t a1, SEL *a2)
{
  v3 = [objc_opt_self() sharedInstance];
  [v3 *a2];
}

void sub_10004AD18(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [objc_opt_self() sharedInstance];
  [v5 *a4];
}

void sub_10004AD84(void *a1)
{
  v2 = [a1 launchAction];
  if (v2)
  {
    v11 = v2;
    if ([v2 isCaptive])
    {
      v3 = [a1 formResponse];
      if (v3)
      {
        v4 = v3;
        v5 = [objc_opt_self() sharedInstance];
        v6 = [v4 contentItem];
        if (!v6)
        {
          __break(1u);
          return;
        }

        v7 = v6;
        [v5 showModalFeedbackControllerForContentItem:v6 launchAction:v11];

        v11 = v7;
      }

      else
      {
        if (qword_100108DB8 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_1000466AC(v8, static Logger.app);
        v5 = Logger.logObject.getter();
        v9 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v5, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v5, v9, "Form Response is nil. Cannot showModalFeedbackController", v10, 2u);
        }
      }
    }
  }
}

void sub_10004B034(void *a1)
{
  v1 = [a1 launchAction];
  if (v1)
  {
    v2 = v1;
    if ([v1 isCaptive])
    {
      [objc_opt_self() exitCaptiveModeRemovingFromHomeScreen:{objc_msgSend(v2, "shouldMakeFBAVisible")}];
    }
  }
}

uint64_t FBAMailboxesViewController.batchEvaluationViewController(useNavigationStack:showsCloseButton:onDismiss:)()
{
  v0 = type metadata accessor for ScoreController();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  ScoreController.init()();
  v3 = objc_allocWithZone(type metadata accessor for BatchEvaluationViewController());

  return BatchEvaluationViewController.init(scoreController:useNavigationStack:showsCloseButton:onDismiss:)();
}

void _sSo26FBAMailboxesViewControllerC18Feedback_AssistantE10controller_37didClickSwitchAccountsWithCurrentUserySo015FBKBugFormTablebC0C_So7FBKUserCtF_0()
{
  if (qword_100108DB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000466AC(v0, static Logger.app);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10008D954(0xD000000000000034, 0x80000001000CA950, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s not supported in FBA", v2, 0xCu);
    sub_1000466E4(v3);
  }
}

void _sSo26FBAMailboxesViewControllerC18Feedback_AssistantE10controller_28didFinishSubmissionWithErrorySo015FBKBugFormTablebC0C_s0K0_pSgtF_0(void *a1)
{
  v2 = v1;
  if (qword_100108DB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000466AC(v4, static Logger.app);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10008D954(0xD00000000000002BLL, 0x80000001000CA920, v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_1000466E4(v8);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v12[4] = sub_10004BDFC;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100088474;
  v12[3] = &unk_1000E0588;
  v10 = _Block_copy(v12);
  v11 = a1;

  [v2 dismissViewControllerAnimated:1 completion:v10];
  _Block_release(v10);
}

void _sSo26FBAMailboxesViewControllerC18Feedback_AssistantE10controller_27didFailToLoadDraftWithErrorySo015FBKBugFormTablebC0C_s0M0_ptF_0()
{
  [v0 dismissViewControllerAnimated:1 completion:0];
  if (qword_100108DB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000466AC(v1, static Logger.app);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10008D954(0xD00000000000002ALL, 0x80000001000CA8F0, &v6);
    _os_log_impl(&_mh_execute_header, oslog, v2, "%s", v3, 0xCu);
    sub_1000466E4(v4);
  }
}

void _sSo26FBAMailboxesViewControllerC18Feedback_AssistantE10controller_33didRequestDismissalWithSavedDraftySo015FBKBugFormTablebC0C_SbtF_0(void *a1)
{
  v2 = v1;
  if (qword_100108DB8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000466AC(v4, static Logger.app);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10008D954(0xD000000000000030, 0x80000001000CA8B0, v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_1000466E4(v8);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v12[4] = sub_10004BDF4;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100088474;
  v12[3] = &unk_1000E0538;
  v10 = _Block_copy(v12);
  v11 = a1;

  [v2 dismissViewControllerAnimated:1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_10004B9EC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004BA44(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10004BA54()
{
  result = qword_100109688;
  if (!qword_100109688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100109688);
  }

  return result;
}

uint64_t sub_10004BAA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004BAB8(uint64_t a1)
{
  v2 = sub_100041AA0(&qword_1001099C0, &qword_1000C2AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004BB30(uint64_t a1)
{
  v2 = type metadata accessor for FBANotEnrolledView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004BB8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_100049BC8(v1[4], a1);
}

unint64_t sub_10004BB98()
{
  result = qword_1001096A0;
  if (!qword_1001096A0)
  {
    type metadata accessor for BatchUIButtonView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001096A0);
  }

  return result;
}

unint64_t sub_10004BBF0()
{
  result = qword_1001096A8;
  if (!qword_1001096A8)
  {
    sub_100041B4C(&qword_100109698, qword_1000C2AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001096A8);
  }

  return result;
}

uint64_t sub_10004BC54()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004BC8C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10004BD58()
{
  v1 = *(*(type metadata accessor for IndexPath() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  sub_100049D5C();
}

uint64_t sub_10004BDBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10004BF98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBANoBugSessionAlertViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10004BFF0(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v22._object = 0xE000000000000000;
  v7._countAndFlagsBits = 19279;
  v7._object = 0xE200000000000000;
  v8.value._countAndFlagsBits = v2;
  v8.value._object = v4;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v22);

  v10 = [v5 mainBundle];
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  v23._object = 0x80000001000CAA10;
  v11._object = 0x80000001000CA9D0;
  v12._object = 0x80000001000CA9F0;
  v23._countAndFlagsBits = 0xD00000000000005ALL;
  v12._countAndFlagsBits = 0xD00000000000001CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v23);

  v13 = [v5 mainBundle];
  v24._object = 0x80000001000CAAF0;
  v14._object = 0x80000001000CAA70;
  v15._countAndFlagsBits = 0xD00000000000005DLL;
  v15._object = 0x80000001000CAA90;
  v24._countAndFlagsBits = 0xD00000000000005CLL;
  v14._countAndFlagsBits = 0xD00000000000001CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v24);

  v16 = String._bridgeToObjectiveC()();

  v17 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

  v19 = String._bridgeToObjectiveC()();

  v20 = [objc_opt_self() actionWithTitle:v19 style:0 handler:0];

  [v18 addAction:v20];
  [a1 presentViewController:v18 animated:1 completion:0];
}

void sub_10004C364()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for FBAFilterPickerController();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    sub_10004D110();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = String._bridgeToObjectiveC()();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

    v5 = [v0 navigationItem];
    v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"dismissSelf"];
    [v5 setRightBarButtonItem:v6];

    v7 = [v0 navigationItem];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    v11 = [objc_opt_self() mainBundle];
    v17._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0x535245544C4946;
    v12._object = 0xE700000000000000;
    v13.value._countAndFlagsBits = v8;
    v13.value._object = v10;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v17);

    v15 = String._bridgeToObjectiveC()();

    [v7 setTitle:v15];
  }

  else
  {
    __break(1u);
  }
}

void sub_10004C65C(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:isa];

  v6 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = IndexPath.section.getter();
  v9 = *&v7[OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups];
  if ((v9 & 0xC000000000000001) != 0)
  {
    v25 = *&v7[OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups];

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v10 = *(v9 + 8 * v8 + 32);
  }

  v11 = IndexPath.item.getter();
  v12 = *&v10[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters];

  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_23:
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:
    __break(1u);
    return;
  }

  v13 = *(v12 + 8 * v11 + 32);
LABEL_10:
  v14 = v13;

  v15 = [v5 textLabel];
  if (v15)
  {
    v16 = v15;
    v17 = [v14 title];
    [v16 setText:v17];
  }

  v18 = [v5 imageView];
  if (v18)
  {
    v19 = v18;
    v20 = *&v14[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image];
    [v19 setImage:v20];
  }

  v21 = [v5 imageView];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() tintColor];
    [v22 setTintColor:v23];
  }

  if ([v14 active])
  {
    v24 = 3;
  }

  else
  {
    v24 = 0;
  }

  [v5 setAccessoryType:v24];
  [v5 setAccessibilityTraits:UIAccessibilityTraitButton];
}

id sub_10004CD68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAFilterPickerController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10004CDD0(unint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v7 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_6:
    v5 = *&v4[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters];

    if (!(v5 >> 62))
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

      return v6;
    }

LABEL_13:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
    v4 = *(v3 + 8 * result + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_10004CEC0(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant25FBAFilterPickerController_filterManager];
  if (v4)
  {
    v5 = v4;
    sub_1000722E4();
  }

  v6 = [v2 tableView];
  if (v6)
  {
    v7 = v6;
    sub_100041AA0(&qword_100109708, qword_1000C2B80);
    v8 = type metadata accessor for IndexPath();
    v9 = *(v8 - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000C29F0;
    (*(v9 + 16))(v12 + v11, a1, v8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 reloadRowsAtIndexPaths:isa withRowAnimation:100];
  }

  else
  {
    __break(1u);
  }
}