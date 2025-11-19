uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  +[SUUIApplicationController prepareForLaunch];
  UIApplicationMain(a1, a2, @"MSApplication", @"MSApplicationDelegate");
  objc_autoreleasePoolPop(v4);
  return 0;
}

void sub_10000160C(id a1)
{
  qword_100015700 = objc_alloc_init(MSQuickActionController);

  _objc_release_x1();
}

void sub_100001AE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100001B08(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[SSLogConfig sharedConfig];
  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (a2)
  {
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      *v14 = 138543362;
      *&v14[4] = objc_opt_class();
      v11 = *&v14[4];
      LODWORD(v13) = 12;
      goto LABEL_11;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *v14 = 138543618;
  *&v14[4] = objc_opt_class();
  *&v14[12] = 2114;
  *&v14[14] = v5;
  v11 = *&v14[4];
  LODWORD(v13) = 22;
LABEL_11:
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v9 = [NSString stringWithCString:v12 encoding:4, v14, v13, *v14];
    free(v12);
    SSFileLog();
    goto LABEL_13;
  }

LABEL_14:
}

void sub_100001D44(id a1)
{
  v3 = +[SUUIClientContext amsBag];
  v1 = [[AMSSharedStoreReview alloc] initWithBag:v3];
  v2 = qword_100015730;
  qword_100015730 = v1;
}

void sub_100001FBC(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  v3 = [v2 lowercaseString];

  v4 = [*(a1 + 40) tabBarController];
  v5 = v4;
  if (v4)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_1000023A0;
    v35 = sub_1000023B0;
    v36 = [v4 selectedViewController];
    v6 = [@"com.apple.MobileStore.search" lowercaseString];
    v7 = [v3 isEqualToString:v6];

    if (v7)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000023B8;
      v28[3] = &unk_100010498;
      v8 = &v29;
      v29 = *(a1 + 40);
      v30 = v5;
      v9 = objc_retainBlock(v28);
      v10 = v30;
    }

    else
    {
      v12 = [@"com.apple.MobileStore.redeem" lowercaseString];
      v13 = [v3 isEqualToString:v12];

      if (v13)
      {
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10000254C;
        v26[3] = &unk_1000104C0;
        v8 = v27;
        v27[0] = *(a1 + 40);
        v27[1] = &v31;
        v9 = objc_retainBlock(v26);
LABEL_9:

        if (v9)
        {
          v14 = [v32[5] presentedViewController];

          if (v14)
          {
            [v32[5] dismissViewControllerAnimated:0 completion:v9];
          }

          else
          {
            (v9[2])(v9);
          }
        }

        goto LABEL_18;
      }

      v15 = [@"com.apple.MobileStore.viewdownloads" lowercaseString];
      v16 = [v3 isEqualToString:v15];

      if (v16)
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100002614;
        v23[3] = &unk_100010498;
        v8 = &v24;
        v24 = *(a1 + 40);
        v25 = v5;
        v9 = objc_retainBlock(v23);
        v10 = v25;
      }

      else
      {
        v17 = [@"com.apple.MobileStore.purchased" lowercaseString];
        v18 = [v3 isEqualToString:v17];

        if (!v18)
        {
          v9 = 0;
LABEL_18:
          v19 = *(a1 + 48);
          if (v19)
          {
            (*(v19 + 16))(v19, 1);
          }

          _Block_object_dispose(&v31, 8);
          goto LABEL_21;
        }

        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100002818;
        v20[3] = &unk_100010498;
        v8 = &v21;
        v21 = *(a1 + 40);
        v22 = v5;
        v9 = objc_retainBlock(v20);
        v10 = v22;
      }
    }

    goto LABEL_9;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, 0);
  }

LABEL_21:
}

uint64_t sub_1000023A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000023B8(uint64_t a1)
{
  v2 = [*(a1 + 32) selectTabWithIdentifier:@"search"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002460;
  block[3] = &unk_100010470;
  v4 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100002460(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedNavigationController];
  v3 = [v2 viewControllers];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v5 = [*(a1 + 32) selectedNavigationController];
    v6 = [v5 popToRootViewControllerAnimated:0];
  }

  v7 = [*(a1 + 32) selectedNavigationController];
  v8 = [v7 viewControllers];
  v9 = [v8 firstObject];

  [v9 _setMakeSearchBarFirstResponderOnLoad:1];
  [v9 _setSelectSearchBarContentOnBecomingFirstResponder:1];
  [v9 _reloadNavigationBarController];
}

void sub_10000254C(uint64_t a1)
{
  v2 = +[SSAccountStore defaultStore];
  v5 = [v2 activeAccount];

  if (([v5 isManagedAppleID] & 1) == 0)
  {
    v3 = [*(a1 + 32) clientContext];
    v4 = [[SUUIRedeemViewController alloc] initWithRedeemCategory:0];
    [v4 setClientContext:v3];
    [*(*(*(a1 + 40) + 8) + 40) presentViewController:v4 animated:0 completion:0];
  }
}

void sub_100002614(uint64_t a1)
{
  v2 = [*(a1 + 32) selectTabWithIdentifier:@"downloads"];
  v3 = [*(a1 + 40) moreNavigationController];
  v4 = [*(a1 + 40) allViewControllers];
  v5 = [v4 indexOfObject:v2];

  v6 = [*(a1 + 40) allViewControllers];
  v7 = [v6 indexOfObject:v3];

  if (v5 > v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100002738;
    v8[3] = &unk_100010498;
    v9 = v3;
    v10 = v2;
    dispatch_async(&_dispatch_main_q, v8);
  }
}

void sub_100002738(uint64_t a1)
{
  v7 = [*(a1 + 32) topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v7;
    v3 = [v2 moreViewControllers];
    v4 = [v3 indexOfObject:*(a1 + 40)];

    v5 = [v2 table];
    v6 = [NSIndexPath indexPathForRow:v4 inSection:0];
    [v2 tableView:v5 didSelectRowAtIndexPath:v6];
  }
}

void sub_100002818(uint64_t a1)
{
  v2 = [*(a1 + 32) selectTabWithIdentifier:@"purchased"];
  v3 = [*(a1 + 40) moreNavigationController];
  v4 = [*(a1 + 40) allViewControllers];
  v5 = [v4 indexOfObject:v2];

  v6 = [*(a1 + 40) allViewControllers];
  v7 = [v6 indexOfObject:v3];

  if (v5 > v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000293C;
    v8[3] = &unk_100010498;
    v9 = v3;
    v10 = v2;
    dispatch_async(&_dispatch_main_q, v8);
  }
}

void sub_10000293C(uint64_t a1)
{
  v7 = [*(a1 + 32) topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v7;
    v3 = [v2 moreViewControllers];
    v4 = [v3 indexOfObject:*(a1 + 40)];

    v5 = [v2 table];
    v6 = [NSIndexPath indexPathForRow:v4 inSection:0];
    [v2 tableView:v5 didSelectRowAtIndexPath:v6];
  }
}

uint64_t sub_100003088()
{
  if (qword_100015718 != -1)
  {
    sub_10000667C();
  }

  return qword_100015710;
}

uint64_t sub_1000030EC()
{
  if (qword_100015728 != -1)
  {
    sub_100006690();
  }

  return qword_100015720;
}

id sub_100003150(NSString *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = NSClassFromString(a1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *sub_100003194(char *__symbol, void *__handle)
{
  if (__handle)
  {
    return dlsym(__handle, __symbol);
  }

  else
  {
    return 0;
  }
}

void sub_1000034E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 tabIdentifier];
  [v2 addObject:v3];
}

void sub_100003B58(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) tabBarItems];
  v3 = [v2 indexOfObjectPassingTest:&stru_100010590];

  if ((((v3 == 0x7FFFFFFFFFFFFFFFLL) ^ [*(a1 + 32) _showsDownloadsTabForDownloadManager:*(a1 + 40)]) & 1) == 0)
  {
    v11 = [*(*(a1 + 32) + 8) rootViewController];
    v4 = *(a1 + 32);
    v5 = [v11 view];
    [v5 bounds];
    v7 = [v4 _tabBarStyleWithWidth:v6];

    v8 = *(a1 + 32);
    v9 = v8[1];
    v10 = [v8 _newTabBarItemsWithStyle:v7];
    [v9 updateTabBarWithItems:v10 animated:1];
  }
}

BOOL sub_100003C58(id a1, SUUITabBarItem *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(SUUITabBarItem *)a2 tabIdentifier:a3];
  v5 = [v4 isEqualToString:@"downloads"];

  return v5;
}

void sub_100004294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000042B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showExternalURL:*(a1 + 32)];
}

void sub_1000047DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000047F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [MSQuickActionController processShortcutItem:*(a1 + 32) applicationController:WeakRetained completionHandler:*(a1 + 40)];
}

void sub_1000048F4(uint64_t a1, char a2)
{
  v4 = dispatch_time(0, 250000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000049B4;
  v8[3] = &unk_100010608;
  v5 = *(a1 + 32);
  v12 = a2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  dispatch_after(v4, &_dispatch_main_q, v8);
}

id sub_1000049B4(uint64_t a1)
{
  if ([*(a1 + 32) applicationState])
  {
    v2 = *(a1 + 40);
    if (*(a1 + 56) == 1)
    {
      *(v2 + 64) = 0;
    }

    else
    {
      *(v2 + 64) = 1;
      [*(*(a1 + 40) + 8) suspendApplicationWithOptions:0];
      v3 = [*(*(a1 + 40) + 8) clientContext];
      [v3 setPurchaseReferrerURL:0];

      v4 = *(a1 + 40);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;
    }
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);

  return [v6 endBackgroundTask:v7];
}

void sub_100004ACC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  if (!v2)
  {
    v4 = +[UIApplication sharedApplication];
    [v4 setNetworkActivityIndicatorVisible:1];

    v1 = *(a1 + 32);
    v2 = *(v1 + 56);
  }

  *(v1 + 56) = v2 + 1;
}

void sub_100004B9C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  if (v4 < 2)
  {
    if (v4 == 1)
    {
      block[7] = v1;
      block[8] = v2;
      v6 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100004C58;
      block[3] = &unk_100010470;
      block[4] = *(a1 + 32);
      dispatch_after(v6, &_dispatch_main_q, block);
    }
  }

  else
  {
    *(v3 + 56) = v4 - 1;
  }
}

void sub_100004C58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3 < 2)
  {
    if (v3 == 1)
    {
      *(v2 + 56) = 0;
      v4 = +[UIApplication sharedApplication];
      [v4 setNetworkActivityIndicatorVisible:0];
    }
  }

  else
  {
    *(v2 + 56) = v3 - 1;
  }
}

void sub_100004E28(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 72) windowScene];
  [SKStoreReviewController requestReviewInScene:v1];
}

id sub_100005C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 localizedStringForKey:a2 inTable:SUUILocalizedStringTableTabBar];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:a2 inBundles:0 inTable:SUUILocalizedStringTableTabBar];
  }
  v3 = ;

  return v3;
}

NSString *__cdecl sub_100005CAC(id a1, NSString *a2)
{
  v2 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1000107F8 table:SUUILocalizedStringTableTabBar];

  return v4;
}

uint64_t sub_100005D30(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 tabIdentifier];
  v8 = [v5 indexOfObject:v7];

  v9 = *(a1 + 32);
  v10 = [v6 tabIdentifier];

  v11 = [v9 indexOfObject:v10];
  if (v8 < v11)
  {
    return -1;
  }

  else
  {
    return v8 > v11;
  }
}

void sub_100005EB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] showExternalURL:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_10000603C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006068(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v25 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_38;
  }

  v22 = a1;
  v23 = WeakRetained;
  v24 = [v26 objectForKey:SUUIConfigurationKeyTabs];
  v27 = [v26 objectForKey:SUUIConfigurationKeyStopPages];
  has_internal_content = os_variant_has_internal_content();
  v6 = 2;
  if (v25 || !v24)
  {
    goto LABEL_37;
  }

  v7 = [v24 objectForKeyedSubscript:@"standard"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v24 objectForKeyedSubscript:@"compact"];
  }

  v10 = v9;

  v11 = _os_feature_enabled_impl();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v13)
  {

    v6 = 2;
    goto LABEL_37;
  }

  v14 = 0;
  v15 = 0;
  v16 = *v32;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v32 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = [*(*(&v31 + 1) + 8 * i) objectForKeyedSubscript:@"id"];
      if ([v18 isEqualToString:@"tv"])
      {
        if (!v11)
        {
          goto LABEL_24;
        }

        if (has_internal_content && (_os_feature_enabled_impl() & 1) != 0)
        {
          v15 = 0;
          goto LABEL_29;
        }

        if (!_os_feature_enabled_impl())
        {
LABEL_24:
          v15 = 1;
          goto LABEL_29;
        }

        v20 = [v27 objectForKeyedSubscript:@"tv"];
        v15 = v20 == 0;
        goto LABEL_27;
      }

      v19 = [v18 isEqualToString:@"movies"];
      if ((v19 & v11) != 1)
      {
        v14 |= v19;
        goto LABEL_29;
      }

      if (has_internal_content && (_os_feature_enabled_impl() & 1) != 0)
      {
        v14 = 0;
        goto LABEL_29;
      }

      if (_os_feature_enabled_impl())
      {
        v20 = [v27 objectForKeyedSubscript:@"movies"];
        v14 = v20 == 0;
LABEL_27:

        goto LABEL_29;
      }

      v14 = 1;
LABEL_29:
    }

    v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v13);

  if (v14)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if ((v14 & 1 & v15) != 0)
  {
    v6 = 0;
  }

LABEL_37:
  v21 = [v23[1] rootViewController];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100006464;
  v29[3] = &unk_100010708;
  objc_copyWeak(&v30, (v22 + 32));
  [MSOnboardingUtil presentIfNeededFromViewController:v21 mediaTypes:v6 completion:v29];

  objc_destroyWeak(&v30);
  WeakRetained = v23;
LABEL_38:
}

uint64_t sub_100006464(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    v5 = WeakRetained[4];
    v10 = v4;
    if (v5)
    {
      [v5 checkForNotifications];
      v4 = v10;
    }

    v6 = v4[10];
    if (v6)
    {
      (*(v6 + 16))();
      v7 = v10[10];
      v10[10] = 0;

      v4 = v10;
    }

    WeakRetained = v4[11];
    if (WeakRetained)
    {
      (WeakRetained[2])();
      v8 = v10[11];
      v10[11] = 0;

      v4 = v10;
    }
  }

  return _objc_release_x1(WeakRetained, v4);
}