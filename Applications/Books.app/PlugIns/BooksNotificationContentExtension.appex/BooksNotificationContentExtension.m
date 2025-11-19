id BooksNotificationLog()
{
  if (qword_10000CE98 != -1)
  {
    sub_100004888();
  }

  v1 = qword_10000CE90;

  return v1;
}

void sub_100001C84(id a1)
{
  qword_10000CE90 = os_log_create("com.apple.iBooks", "BooksNotification");

  _objc_release_x1();
}

void sub_100001DCC(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001EF8;
    block[3] = &unk_100008440;
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *&v6 = *(a1 + 48);
    *(&v6 + 1) = v3;
    *&v7 = v4;
    *(&v7 + 1) = v5;
    v11 = v7;
    v12 = v6;
    v13 = 1;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v8 = objc_retainBlock(*(a1 + 48));
    if (v8)
    {
      v9 = v8;
      (*(v8 + 2))(v8, 0);
      v8 = v9;
    }
  }
}

void sub_100001EF8(uint64_t a1)
{
  v6 = [*(a1 + 56) _contentDataForContentID:*(a1 + 32) tracker:*(a1 + 40)];
  v2 = +[BAEventReporter sharedReporter];
  [v2 emitAddToCollectionEventWithTracker:*(a1 + 40) collectionID:kBKCollectionDefaultIDWantToRead contentData:v6];

  v3 = +[BAEventReporter sharedReporter];
  [v3 emitWantListAddEventWithTracker:*(a1 + 40) contentData:v6];

  v4 = objc_retainBlock(*(a1 + 48));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, *(a1 + 64));
  }
}

void sub_1000021FC(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationDelegate];
  [v2 feedViewController:*(a1 + 32) willTransitionToContentHeight:*(a1 + 40)];
}

void sub_100002744(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = BooksNotificationLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10000489C(v2);
    }
  }

  else
  {
    v4 = [*(a1 + 32) analyticsManager];
    [v4 endSession];

    +[JSAApplication willTerminate];
    v5 = [*(a1 + 32) analyticsManager];
    [v5 waitForSessionEndWithTimeout:2.0];

    v6 = [*(a1 + 32) analyticsManager];
    [v6 appSessionDidTerminate];
  }
}

void sub_100002978(id *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"host-patterns"];
  v5 = BUDynamicCast();

  objc_opt_class();
  v6 = [v3 objectForKeyedSubscript:@"path-patterns"];

  v7 = BUDynamicCast();

  v8 = [a1[4] defaultAction];
  v9 = [v8 defaultURL];

  if ([a1[5] _isURLValid:v9 hostPatterns:v5 pathPatterns:v7])
  {
    v10 = a1[5];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100002B58;
    v17[3] = &unk_1000084E0;
    v17[4] = v10;
    v18 = a1[4];
    [v10 _setupWithCompletion:v17];
    v11 = v18;
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100002B64;
    v14[3] = &unk_1000084E0;
    v12 = a1[6];
    v13 = a1[5];
    v15 = v12;
    v16 = v13;
    dispatch_async(&_dispatch_main_q, v14);
    v11 = v15;
  }
}

id sub_100002B64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = BooksNotificationViewController;
  return objc_msgSendSuper2(&v3, "didReceiveNotification:", v1);
}

uint64_t sub_100003354(void *a1)
{
  v2 = BooksNotificationLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = objc_opt_class();
    v5 = a1[5];
    v6 = a1[7];
    v11 = 138543874;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: didReceiveNotificationResponse:completionHandler: handling URL and bump'd %@ in WTR position to #1 for action type %ld", &v11, 0x20u);
  }

  return (*(a1[6] + 16))(a1[6], 1, v8, v9);
}

uint64_t sub_100003448(void *a1)
{
  v2 = BooksNotificationLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = objc_opt_class();
    v5 = a1[5];
    v6 = a1[9];
    v12 = 138543874;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    v16 = 2048;
    v17 = v6;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: didReceiveNotificationResponse:completionHandler: handling URL and bump'd %@ in WTR position to #1 for action type %ld", &v12, 0x20u);
  }

  v8 = +[LSApplicationWorkspace defaultWorkspace];
  [v8 openSensitiveURL:a1[6] withOptions:a1[7]];

  return (*(a1[8] + 16))(a1[8], 1, v9, v10);
}

void sub_1000039B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[JSABridge sharedInstance];
  v4 = [v3 currentPackage];
  [v2 registerTemplateBundlesFromPackage:v4];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003A80;
  block[3] = &unk_100008558;
  v6 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100003A80(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_100003D14(uint64_t a1)
{
  v4 = [*(a1 + 32) feedViewController];
  v1 = [v4 view];
  v2 = [v1 window];
  v3 = +[BNJSAWindowProvider sharedInstance];
  [v3 setWindow:v2];
}

void sub_100003F14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = BooksNotificationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100004978(a1, v4, v5);
    }
  }
}

uint64_t sub_100004568(uint64_t a1)
{
  qword_10000CEA8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t LibraryAnalyticsDataProvider.seriesType(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = BSUIGetLibraryItemStateProvider();
  v3 = sub_100004A54();
  v4 = [v2 itemStateWithIdentifier:v3];

  swift_unknownObjectRelease();
  v5 = [v4 seriesType];
  swift_unknownObjectRelease();
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = &enum case for SeriesType.ordered(_:);
      goto LABEL_9;
    }

    if (v5 == 3)
    {
      v6 = &enum case for SeriesType.unOrdered(_:);
      goto LABEL_9;
    }

LABEL_7:
    v7 = sub_100004A24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v7;
    v10 = a1;
    v11 = 1;
    goto LABEL_10;
  }

  if (v5 != 1)
  {
    goto LABEL_7;
  }

  v6 = &enum case for SeriesType.nonSeries(_:);
LABEL_9:
  v12 = *v6;
  v13 = sub_100004A24();
  v15 = *(v13 - 8);
  (*(v15 + 104))(a1, v12, v13);
  v8 = *(v15 + 56);
  v10 = a1;
  v11 = 0;
  v9 = v13;
LABEL_10:

  return v8(v10, v11, 1, v9);
}

uint64_t static EventReporter.setupLibraryAnalyticsDataProvider()()
{
  sub_100004A44();
  sub_1000047E8();
  return sub_100004A34();
}

unint64_t sub_1000047E8()
{
  result = qword_10000CE80;
  if (!qword_10000CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CE80);
  }

  return result;
}

void sub_10000483C(id a1, SEL a2)
{
  sub_100004A44();
  sub_1000047E8();
  sub_100004A34();
}

void sub_1000048E0(uint64_t a1, NSObject *a2)
{
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@: didReceiveNotification: received for a notification that did not originate from an AMS", &v4, 0xCu);
}

void sub_100004978(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *(a1 + 32);
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2112;
  v10 = a2;
  v6 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%{public}@: can't flush Figaro event due to %@", &v7, 0x16u);
}