uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  +[CNApplication prewarmResourcesForLaunch];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, @"CNApplication", v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t sub_1000016E4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _UIApplicationIsAccountBased();

  return kdebug_trace();
}

void sub_100001734(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) newContactStoreDataSourceForSplitViewController];
  v3 = qword_1000292A8;
  qword_1000292A8 = v2;

  v4 = +[CNContactNavigationController newContactFormatter];
  [qword_1000292A8 setContactFormatter:v4];

  v5 = [qword_1000292A8 store];
  v6 = [CNContactStoreFilter contactStoreFilterFromPreferencesWithContactStore:v5];

  if (v6)
  {
    [qword_1000292A8 setFilter:v6];
  }

  kdebug_trace();
}

void sub_100001FB0(id a1)
{
  v1 = [qword_1000292A8 currentSnapshot];
  v2 = qword_1000292A8;
  v3 = +[CNContactListViewController descriptorForRequiredKeysForPreferredForNameMeContact];
  v7 = v3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [v2 preferredForNameMeContactWithKeysToFetch:v4];

  v6 = qword_1000292A8;
  qword_1000292A8 = 0;
}

void sub_1000025F8(id a1)
{
  qword_1000292C8 = os_log_create("com.apple.contactsui", "scene");

  _objc_release_x1();
}

uint64_t sub_1000026B0(uint64_t a1)
{
  qword_100029288 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100002840(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = CNContactMenuBarManager;
  v1 = objc_msgSendSuper2(&v3, "init");
  v2 = qword_1000292A0;
  qword_1000292A0 = v1;
}

void sub_1000030D0(id a1)
{
  qword_100029270 = os_log_create("com.apple.contactsui", "ContactsURLParser");

  _objc_release_x1();
}

void sub_1000036C8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_100003D98(uint64_t a1)
{
  [*(a1 + 32) willStartTest];
  v2 = *(a1 + 32);

  return [v2 startSearchQuery];
}

void sub_100003EC8(uint64_t a1)
{
  v2 = [*(a1 + 32) allSearchQueries];
  v3 = [v2 objectAtIndex:{objc_msgSend(*(a1 + 32), "currentQueryIndex")}];

  v4 = [NSString stringWithFormat:@"search for %@", v3];
  Current = CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) lastSearchBeginTime];
  v7 = [NSNumber numberWithDouble:Current - v6];
  v8 = [*(a1 + 32) extraResults];
  [v8 setValue:v7 forKey:v4];

  v9 = [*(a1 + 32) currentQueryIndex];
  v10 = [*(a1 + 32) allSearchQueries];
  v11 = [v10 count] - 1;

  if (v9 >= v11)
  {
    v12 = UIApp;
    v13 = [*(a1 + 32) testOptions];
    v14 = [v13 objectForKeyedSubscript:@"testName"];
    v15 = [*(a1 + 32) extraResults];
    [v12 finishedTest:v14 extraResults:v15];

    v16 = [*(a1 + 32) contactNavigationController];
    v17 = [v16 contactListViewController];
    [v17 cancelSearch:0];
  }

  else
  {
    [*(a1 + 32) setCurrentQueryIndex:{objc_msgSend(*(a1 + 32), "currentQueryIndex") + 1}];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000040E8;
    block[3] = &unk_1000204D0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100004250(id a1)
{
  qword_100029280 = os_log_create("com.apple.contactsui", "app");

  _objc_release_x1();
}

BOOL sub_1000044A8(id a1, UIScene *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if ([(UIScene *)v4 _isKeyWindowScene])
  {
    v5 = [(UIScene *)v4 activationState]== UISceneActivationStateForegroundActive;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100004A7C(uint64_t a1)
{
  [*(a1 + 32) willStartTest];
  v2 = *(a1 + 32);

  return [v2 performTest];
}

void sub_100004C6C(uint64_t a1)
{
  v2 = UIApp;
  v3 = [*(a1 + 32) testOptions];
  v4 = [v3 objectForKeyedSubscript:@"testName"];
  [v2 finishedSubTest:@"Create New Contact" forTest:v4];

  v5 = [*(a1 + 32) contactSplitViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004D54;
  v6[3] = &unk_1000204D0;
  v6[4] = *(a1 + 32);
  [v5 dismissViewControllerAnimated:1 completion:v6];
}

void sub_100005074(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didShow:v3];
}

void sub_1000050D0(uint64_t a1)
{
  v2 = [*(a1 + 32) contactNavigationController];
  [v2 showCardForContact:*(a1 + 40) animated:0];

  if ([*(a1 + 32) isIPad])
  {
    v3 = [*(a1 + 32) contactSplitViewController];
    v4 = [v3 presentedContactViewController];

    [*(a1 + 32) editAndScrollContactViewController:v4];
  }
}

void sub_100005454(uint64_t a1)
{
  v2 = [*(a1 + 32) contentViewController];
  v3 = [v2 contactView];

  [*(a1 + 40) performScrollTestWithScrollView:v3 completionBlock:0];
}

void sub_10000585C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didShow:v3];
}

void sub_1000058B8(uint64_t a1)
{
  v2 = [*(a1 + 32) contactNavigationController];
  [v2 showCardForContact:*(a1 + 40) animated:0];

  if ([*(a1 + 32) isIPad])
  {
    v3 = [*(a1 + 32) contactSplitViewController];
    v4 = [v3 presentedContactViewController];

    [*(a1 + 32) scrollContactViewController:v4];
  }
}

id sub_100005F10(uint64_t a1)
{
  [*(a1 + 32) willStartTest];
  v2 = *(a1 + 32);

  return [v2 startSearchQuery];
}

void sub_10000605C(uint64_t a1)
{
  v2 = [*(a1 + 32) allSearchQueries];
  v3 = [v2 objectAtIndex:{objc_msgSend(*(a1 + 32), "currentQueryIndex")}];

  v4 = [NSString stringWithFormat:@"search for %@", v3];
  Current = CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) lastSearchBeginTime];
  v7 = [NSNumber numberWithDouble:Current - v6];
  v8 = [*(a1 + 32) extraResults];
  [v8 setValue:v7 forKey:v4];

  kdebug_trace();
  v9 = [*(a1 + 32) currentQueryIndex];
  v10 = [*(a1 + 32) allSearchQueries];
  v11 = [v10 count] - 1;

  if (v9 >= v11)
  {
    v12 = UIApp;
    v13 = [*(a1 + 32) testOptions];
    v14 = [v13 objectForKeyedSubscript:@"testName"];
    v15 = [*(a1 + 32) extraResults];
    [v12 finishedTest:v14 extraResults:v15];

    v16 = [*(a1 + 32) contactNavigationController];
    v17 = [v16 contactListViewController];
    [v17 cancelSearch:0];
  }

  else
  {
    [*(a1 + 32) setCurrentQueryIndex:{objc_msgSend(*(a1 + 32), "currentQueryIndex") + 1}];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006298;
    block[3] = &unk_1000204D0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10000785C(uint64_t a1)
{
  v4 = [*(a1 + 32) contactNavigationController];
  v2 = [*(a1 + 32) displayedContact];
  LOBYTE(v3) = 0;
  [v4 showCardForContact:v2 resetFilter:0 resetSearch:0 fallbackToFirstContact:1 scrollToContact:1 animated:0 dismissingPresentedController:v3];
}

void sub_100007CC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 potentiallyPresentedDetailViewController];
  [v2 showDetailViewController:v3 sender:*(a1 + 40)];
}

void sub_100007D24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 potentiallyPresentedNavigationDetailViewController];
  [v2 showDetailViewController:v3 sender:*(a1 + 40)];
}

NSArray *__cdecl sub_100007E28(id a1, UIViewController *a2)
{
  v7 = a2;
  v2 = a2;
  v3 = [NSArray arrayWithObjects:&v7 count:1];
  v4 = [(UIViewController *)v2 childViewControllers];

  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

BOOL sub_100007EF0(id a1, UIViewController *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_100007F3C(id a1, CNContactContentViewController *a2)
{
  v2 = a2;
  if ([(CNContactContentViewController *)v2 isEditing])
  {
    [(CNContactContentViewController *)v2 clearMapsDataIfEdited];
    [(CNContactContentViewController *)v2 saveChanges];
  }
}

uint64_t sub_100009194(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000091AC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000096D8(uint64_t a1)
{
  v2 = [*(a1 + 32) contentViewController];
  v3 = [v2 contactView];

  [*(a1 + 40) performScrollTestWithScrollView:v3 completionBlock:0];
}

void sub_10000984C(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000098F8;
  v4[3] = &unk_100020580;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

void sub_100009FD0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didShow:v3];
}

id sub_10000A220(uint64_t a1)
{
  kdebug_trace();
  v2 = UIApp;
  v3 = [*(a1 + 32) testOptions];
  v4 = [v3 objectForKeyedSubscript:@"testName"];
  [v2 finishedSubTest:@"Open Contact" forTest:v4];

  v5 = *(a1 + 32);

  return [v5 performSelector:"showContactsListForIPhone"];
}

void sub_10000A394(uint64_t a1)
{
  kdebug_trace();
  v2 = UIApp;
  v3 = [*(a1 + 32) testOptions];
  v4 = [v3 objectForKeyedSubscript:@"testName"];
  [v2 finishedSubTest:@"Open Contact" forTest:v4];

  LODWORD(v2) = [*(a1 + 32) nextContactIndex];
  if (v2 >= [*(a1 + 32) maxContactIndex] || (v5 = objc_msgSend(*(a1 + 32), "nextContactIndex"), objc_msgSend(*(a1 + 40), "contacts"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7 <= v5))
  {
    v9 = UIApp;
    v11 = [*(a1 + 32) testOptions];
    v10 = [v11 objectForKeyedSubscript:@"testName"];
    [v9 finishedTest:v10];
  }

  else
  {
    v8 = *(a1 + 32);

    [v8 performSelector:"showNextContact" withObject:0 afterDelay:0.5];
  }
}

void sub_10000A620(uint64_t a1)
{
  v2 = UIApp;
  v3 = [*(a1 + 32) testOptions];
  v4 = [v3 objectForKeyedSubscript:@"testName"];
  v5 = [NSArray arrayWithObject:@"time"];
  [v2 startedSubTest:@"Open Contact" forTest:v4 withMetrics:v5];

  kdebug_trace();
  if ([*(a1 + 32) isIPad])
  {
    [CATransaction setFrameStallSkipRequest:1];
  }

  v6 = [*(a1 + 32) contactNavigationController];
  [v6 showCardForContact:*(a1 + 40) animated:1];

  [*(a1 + 32) setNextContactIndex:{objc_msgSend(*(a1 + 32), "nextContactIndex") + 1}];
  if ([*(a1 + 32) isIPad])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A7A0;
    block[3] = &unk_1000204D0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10000A8C0(uint64_t a1)
{
  v1 = UIApp;
  v3 = [*(a1 + 32) testOptions];
  v2 = [v3 objectForKeyedSubscript:@"testName"];
  [v1 finishedSubTest:@"Close Contact" forTest:v2];
}

id sub_10000AF94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 activityRestorer];
  v5 = [v4 restorableActivityTypes];
  v6 = [v3 activityType];

  v7 = [v5 containsObject:v6];
  return v7;
}

void sub_10000B1B8(id a1)
{
  v1 = +[CNUIDataCollector sharedCollector];
  [v1 logPresentation];
}

id sub_10000B30C(uint64_t a1)
{
  [*(a1 + 32) checkInLaunchTasksIfNecessary];
  [*(a1 + 32) displayContactIfNecessary];
  [*(a1 + 32) performMigrationOfFacebookContactsToLocalStoreIfNecessary];
  [*(a1 + 32) createShowMeCardApplicationShortcutIfNecessary];
  v2 = *(a1 + 32);

  return [v2 executeAllDelayedActions];
}

void sub_10000B360(uint64_t a1)
{
  v1 = [*(a1 + 32) contactStoreDataSource];
  [v1 setShouldRevalidateFilterOnStoreChange:0];
}

void sub_10000BD44(uint64_t a1)
{
  v1 = [*(a1 + 32) splitViewController];
  [v1 createNewContact];
}

void sub_10000BE60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Showing contact card from URL open for %@", &v9, 0xCu);
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) splitViewController];
  v7 = v6;
  v8 = *(a1 + 40);
  if (v5 == 1)
  {
    [v6 showEditingCardForContact:v8];
  }

  else
  {
    [v6 showCardForContact:v8 fallbackToFirstContact:0];
  }
}

void sub_10000C3A4(uint64_t a1)
{
  v2 = [*(a1 + 32) splitViewController];
  [v2 presentViewController:*(a1 + 40) animated:*(a1 + 48) completion:0];
}

void sub_10000C87C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didShow:v3];
}

void sub_10000C8D8(uint64_t a1)
{
  v2 = [*(a1 + 32) contactNavigationController];
  [v2 showCardForContact:*(a1 + 40) animated:0];

  if ([*(a1 + 32) isIPad])
  {
    v3 = [*(a1 + 32) contactSplitViewController];
    v4 = [v3 presentedContactViewController];

    [*(a1 + 32) editAndScrollContactViewController:v4];
  }
}

void sub_10000CC5C(uint64_t a1)
{
  v2 = [*(a1 + 32) contentViewController];
  v3 = [v2 contactHeaderView];

  if (objc_opt_respondsToSelector())
  {
    [v3 editButtonPressed];
  }

  v4 = dispatch_time(0, 1000000000);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000CD50;
  v7[3] = &unk_100020580;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_after(v4, &_dispatch_main_q, v7);
}

void sub_10000CD50(uint64_t a1)
{
  v2 = [*(a1 + 32) photoView];
  v3 = [v2 photoPicker];
  v4 = [v3 collectionView];

  [*(a1 + 40) performScrollTestWithScrollView:v4 completionBlock:0];
}

void sub_10000D12C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didShow:v3];
}

id sub_10000D188(uint64_t a1)
{
  [*(a1 + 32) willStartTest];
  v2 = *(a1 + 32);

  return [v2 startSearchQuery];
}

id sub_10000D3B8(uint64_t a1)
{
  v2 = UIApp;
  v3 = [*(a1 + 32) testOptions];
  v4 = [v3 objectForKeyedSubscript:@"testName"];
  [v2 finishedSubTest:@"Open Contact" forTest:v4];

  v5 = *(a1 + 32);

  return [v5 performSelector:"showPseudoContactsListForIPhone"];
}

id sub_10000D510(uint64_t a1)
{
  v2 = UIApp;
  v3 = [*(a1 + 32) testOptions];
  v4 = [v3 objectForKeyedSubscript:@"testName"];
  [v2 finishedSubTest:@"Open Contact" forTest:v4];

  LODWORD(v2) = [*(a1 + 32) nextContactIndex];
  if (v2 >= [*(a1 + 32) maxContactIndex] || (v5 = objc_msgSend(*(a1 + 32), "nextContactIndex"), objc_msgSend(*(a1 + 40), "contacts"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7 <= v5))
  {
    v9 = UIApp;
    v10 = [*(a1 + 32) testOptions];
    v11 = [v10 objectForKeyedSubscript:@"testName"];
    [v9 finishedTest:v11];

    v12 = *(a1 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000D6AC;
    v14[3] = &unk_1000204D0;
    v14[4] = v12;
    return [v12 showContactListWithCompletionBlock:v14];
  }

  else
  {
    v8 = *(a1 + 32);

    return [v8 performSelector:"showNextContact" withObject:0 afterDelay:0.5];
  }
}

void sub_10000D6AC(uint64_t a1)
{
  v2 = [*(a1 + 32) contactNavigationController];
  v1 = [v2 contactListViewController];
  [v1 cancelSearch:0];
}

void sub_10000D824(uint64_t a1)
{
  v2 = UIApp;
  v3 = [*(a1 + 32) testOptions];
  v4 = [v3 objectForKeyedSubscript:@"testName"];
  v5 = [NSArray arrayWithObject:@"time"];
  [v2 startedSubTest:@"Open Contact" forTest:v4 withMetrics:v5];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D9BC;
  v8[3] = &unk_1000204D0;
  v8[4] = *(a1 + 32);
  [UIApp installCACommitCompletionBlock:v8];
  v6 = [*(a1 + 32) contactNavigationController];
  [v6 showCardForContact:*(a1 + 40) animated:1];

  [*(a1 + 32) setNextContactIndex:{objc_msgSend(*(a1 + 32), "nextContactIndex") + 1}];
  if ([*(a1 + 32) isIPad])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000DA3C;
    v7[3] = &unk_1000204D0;
    v7[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_10000D9BC(uint64_t a1)
{
  v1 = UIApp;
  v3 = [*(a1 + 32) testOptions];
  v2 = [v3 objectForKeyedSubscript:@"testName"];
  [v1 finishedSubTest:@"Open Contact" forTest:v2];
}

void sub_10000DB5C(uint64_t a1)
{
  v1 = UIApp;
  v3 = [*(a1 + 32) testOptions];
  v2 = [v3 objectForKeyedSubscript:@"testName"];
  [v1 finishedSubTest:@"Close Contact" forTest:v2];
}

void sub_10000DCC4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DD3C;
  block[3] = &unk_1000204D0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10000E0C8(uint64_t a1)
{
  v2 = [*(a1 + 32) contactNavigationController];
  v3 = [v2 contactListViewController];
  v4 = [v3 searchResultsController];
  v5 = [v4 collectionView];

  v6 = dispatch_time(0, 1000000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E1C8;
  v8[3] = &unk_100020580;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v7 = v5;
  dispatch_after(v6, &_dispatch_main_q, v8);
}

id sub_10000E1C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E23C;
  v4[3] = &unk_1000204D0;
  v4[4] = v2;
  return [v2 performScrollTestWithScrollView:v1 completionBlock:v4];
}

void sub_10000E23C(uint64_t a1)
{
  v2 = [*(a1 + 32) contactNavigationController];
  v1 = [v2 contactListViewController];
  [v1 cancelSearch:0];
}

void sub_10000E3FC(id a1)
{
  qword_1000292D0 = objc_alloc_init(ContactsTestingManager);

  _objc_release_x1();
}

void sub_10000E7E0(uint64_t a1)
{
  v2 = [*(a1 + 32) iteration];
  if (v2 >= [*(a1 + 32) maxIterations])
  {
    v9 = UIApp;
    v11 = [*(a1 + 32) testOptions];
    v10 = [v11 objectForKeyedSubscript:@"testName"];
    [v9 finishedTest:v10];
  }

  else
  {
    v3 = [*(a1 + 32) contactNavigationController];
    v4 = [v3 dataSource];
    v5 = [v4 contacts];
    v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "iteration")}];

    v7 = [*(a1 + 32) contactNavigationController];
    [v7 showCardForContact:v6 animated:0];

    [*(a1 + 32) setIteration:{objc_msgSend(*(a1 + 32), "iteration") + 1}];
    v8 = dispatch_time(0, 800000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E998;
    block[3] = &unk_1000204D0;
    block[4] = *(a1 + 32);
    dispatch_after(v8, &_dispatch_main_q, block);
  }
}

void sub_10000E998(uint64_t a1)
{
  v2 = [*(a1 + 32) contactSplitViewController];
  v3 = [v2 presentedContactViewController];

  [*(a1 + 32) measureEditingTransitionOnController:v3];
}

id sub_10000EB2C(uint64_t a1)
{
  v2 = UIApp;
  v3 = [*(a1 + 32) testOptions];
  v4 = [v3 objectForKeyedSubscript:@"testName"];
  [v2 finishedSubTest:@"Edit Contact Transition" forTest:v4];

  v5 = *(a1 + 32);

  return [v5 performSelector:"showNextContact" withObject:0 afterDelay:1.0];
}

id sub_10000ED74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000EDE4;
  v3[3] = &unk_1000204D0;
  v3[4] = v1;
  return [v1 startSearchQueryWithCompletionBlock:v3];
}

void sub_10000EDE4(uint64_t a1)
{
  v2 = [*(a1 + 32) contactNavigationController];
  v3 = [v2 contactListViewController];
  v4 = [v3 searchResultsController];
  v5 = [v4 collectionView];

  v6 = dispatch_time(0, 1000000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000EEE4;
  v8[3] = &unk_100020580;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v7 = v5;
  dispatch_after(v6, &_dispatch_main_q, v8);
}

id sub_10000EEE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000EF58;
  v4[3] = &unk_1000204D0;
  v4[4] = v2;
  return [v2 performScrollTestWithScrollView:v1 completionBlock:v4];
}

void sub_10000EF58(uint64_t a1)
{
  v2 = [*(a1 + 32) contactNavigationController];
  v1 = [v2 contactListViewController];
  [v1 cancelSearch:0];
}

void sub_10000F194(void *a1, NSObject *a2)
{
  v4 = [a1 scheme];
  sub_1000036B4();
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error: Unexpected scheme '%@' sent in URL %@.", v5, 0x16u);
}

void sub_10000F324(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "During [AppDelegate application:willFinishLaunchingWithOptions:], the value for UIApplicationLaunchOptionsSearchResultIdentifierKey was expected to be an NSString representating a contact's identifier, but instead it is %@", &v2, 0xCu);
}

void sub_10000F468(void *a1, NSObject *a2)
{
  v4 = [a1 coordinateSpace];
  [v4 bounds];
  v5 = NSStringFromCGRect(v10);
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "scene:%@ willConnectToSession: with bounds: %@", &v6, 0x16u);
}

void sub_10000F52C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "received unknown shortcut item type: %@", &v2, 0xCu);
}

void sub_10000F5A4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "error fetching contact with identifier %@: %@", &v3, 0x16u);
}

void sub_10000F62C(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "error fetching contact with legacy identifier %d: %@", v3, 0x12u);
}