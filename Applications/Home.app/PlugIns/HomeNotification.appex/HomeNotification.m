void sub_10000235C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002388(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000249C;
    block[3] = &unk_1000184D0;
    v3 = &v8;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000024EC;
    v4[3] = &unk_1000184F8;
    v3 = &v5;
    objc_copyWeak(&v5, (a1 + 40));
    dispatch_async(&_dispatch_main_q, v4);
  }

  objc_destroyWeak(v3);
}

void sub_10000249C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _configureWithContextDictionary:*(a1 + 32)];
}

void sub_1000024EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained extensionContext];
  [v1 dismissNotificationContentExtension];
}

void sub_100002DD4(uint64_t a1, uint64_t a2)
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v5 = @"Succeeded";
    }

    else
    {
      v5 = @"Failed";
    }

    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) faceUnknownSignificantEvents];
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2048;
    v17 = [v7 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ opening %@ from HomeNotificationViewController to identify %lu unknown persons", &v12, 0x20u);
  }

  v8 = objc_opt_new();
  v9 = [*(a1 + 40) faceUnknownSignificantEvents];
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 count]);
  [v8 setObject:v10 forKeyedSubscript:HFAnalyticsFaceRecognitionNotificationAssociatePersonCountKey];

  v11 = [NSNumber numberWithBool:a2];
  [v8 setObject:v11 forKeyedSubscript:HFAnalyticsFaceRecognitionNotificationAssociatePersonSuccessKey];

  [HFAnalytics sendEvent:5 withData:v8];
}

void sub_100002F80(uint64_t a1, uint64_t a2)
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Failed";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"Succeeded";
    }

    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ opening %@ from HomeNotificationViewController to identify an unknown person", &v11, 0x16u);
  }

  v7 = objc_opt_new();
  v8 = [*(a1 + 40) faceUnknownSignificantEvents];
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
  [v7 setObject:v9 forKeyedSubscript:HFAnalyticsFaceRecognitionNotificationAssociatePersonCountKey];

  v10 = [NSNumber numberWithBool:a2];
  [v7 setObject:v10 forKeyedSubscript:HFAnalyticsFaceRecognitionNotificationAssociatePersonSuccessKey];

  [HFAnalytics sendEvent:5 withData:v7];
}

void sub_10000310C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000C3D8(a1);
    }

    v5 = objc_alloc_init(NSMutableDictionary);
    [v5 na_safeSetObject:v3 forKey:HFAnalyticsDataErrorKey];
    [HFAnalytics sendEvent:3 withData:v5];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v17 = [*(a1 + 32) uniqueIdentifier];
    v6 = HFURLComponentsHome;
    v20 = [*(a1 + 40) home];
    v19 = [v20 uniqueIdentifier];
    v18 = [v19 UUIDString];
    v7 = [NSURLQueryItem queryItemWithName:v6 value:v18];
    v25[0] = v7;
    v8 = HFURLComponentsCameraProfile;
    v9 = [*(a1 + 40) cameraProfile];
    v10 = [v9 uniqueIdentifier];
    v11 = [v10 UUIDString];
    v12 = [NSURLQueryItem queryItemWithName:v8 value:v11];
    v25[1] = v12;
    v13 = [NSArray arrayWithObjects:v25 count:2];
    v14 = [HFURLComponents homeKitObjectURLForDestination:10 secondaryDestination:0 UUID:v17 queryItems:v13];

    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "HomeNotificationViewController launching Home for person URL: %@", buf, 0xCu);
    }

    v16 = [*(a1 + 40) extensionContext];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100003434;
    v21[3] = &unk_100018570;
    v22 = v14;
    v5 = v14;
    [v16 openURL:v5 completionHandler:v21];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100003434(uint64_t a1, int a2)
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Failed";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"Succeeded";
    }

    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ opening %@ from HomeNotificationViewController to correct a misidentified person", &v7, 0x16u);
  }
}

id sub_100003858(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[NSUUID alloc] initWithUUIDString:v2];

  return v3;
}

void sub_1000038B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000C44C(v4, a1);
    }

    [*(a1 + 40) _showErrorText:v4];
  }

  else
  {
    v6 = [*(a1 + 40) home];
    v7 = [v6 hf_serviceWithIdentifier:*(a1 + 48)];
    [*(a1 + 40) setAffectedService:v7];

    v8 = [*(a1 + 40) _configureCameraProfileWithUUID:*(a1 + 56)];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003A1C;
    v10[3] = &unk_100018650;
    v10[4] = *(a1 + 40);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = *(a1 + 32);
    v9 = [v8 addCompletionBlock:v10];
  }
}

void sub_100003A1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000C518();
    }

    [*(a1 + 32) _showErrorText:v4];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) home];
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) cameraProfile];
      v10 = [v9 uniqueIdentifier];
      *buf = 138412802;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found home %@. Using UUID:%@ for camera profile:%@. Configure and set instance properties.", buf, 0x20u);
    }

    v11 = [*(a1 + 32) _configureCameraSignificantEventsWithUUIDs:*(a1 + 48)];
    v23[0] = v11;
    v12 = [*(a1 + 32) _configureNotificationSnapshot];
    v23[1] = v12;
    v13 = [NSArray arrayWithObjects:v23 count:2];
    v14 = [NAFuture combineAllFutures:v13];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100003CA8;
    v22[3] = &unk_100018600;
    v22[4] = *(a1 + 32);
    v15 = [v14 addSuccessBlock:v22];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100003CE4;
    v19[3] = &unk_100018628;
    v16 = *(a1 + 56);
    v17 = *(a1 + 32);
    v20 = v16;
    v21 = v17;
    v18 = [v14 addFailureBlock:v19];
  }
}

id sub_100003CA8(uint64_t a1)
{
  [*(a1 + 32) _setupContentViewController];
  v2 = *(a1 + 32);

  return [v2 _setupNotificationActions];
}

void sub_100003CE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000C558(v3, a1);
  }

  [*(a1 + 40) _showErrorText:v3];
}

void sub_100003E48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100003E64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _homeWithUUID:*(a1 + 40) retryDelay:1.0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003FC4;
  v12[3] = &unk_1000186A0;
  v5 = v3;
  v13 = v5;
  v6 = [v4 addFailureBlock:v12];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003FD0;
  v9[3] = &unk_1000186C8;
  objc_copyWeak(&v11, (a1 + 48));
  v7 = v5;
  v10 = v7;
  v8 = [v6 addSuccessBlock:v9];

  objc_destroyWeak(&v11);
}

void sub_100003FD0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setHome:v3];

  [*(a1 + 32) finishWithNoResult];
}

void sub_100004124(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100004140(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _cameraProfileWithUUID:*(a1 + 40) retryDelay:1.0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000042A0;
  v12[3] = &unk_1000186A0;
  v5 = v3;
  v13 = v5;
  v6 = [v4 addFailureBlock:v12];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000042AC;
  v9[3] = &unk_100018718;
  objc_copyWeak(&v11, (a1 + 48));
  v7 = v5;
  v10 = v7;
  v8 = [v6 addSuccessBlock:v9];

  objc_destroyWeak(&v11);
}

void sub_1000042AC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCameraProfile:v3];

  [*(a1 + 32) finishWithNoResult];
}

void sub_100004534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004558(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempt to fetch significant events for uuids:%@.", buf, 0xCu);
  }

  v7 = [WeakRetained cameraProfile];
  v8 = [v7 clipManager];
  v9 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004710;
  v11[3] = &unk_100018768;
  objc_copyWeak(&v14, (a1 + 40));
  v12 = *(a1 + 32);
  v10 = v3;
  v13 = v10;
  [v8 fetchSignificantEventsWithUUIDs:v9 completion:v11];

  objc_destroyWeak(&v14);
}

void sub_100004710(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = HFLogForCategory();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000C624(a1);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138412546;
    v23 = v5;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Did fetch significant events:%@ for uuids:%@.", buf, 0x16u);
  }

  [WeakRetained setCameraSignificantEvents:v5];
  v11 = +[NSMutableSet set];
  v12 = +[NSMutableSet set];
  v13 = [WeakRetained cameraSignificantEvents];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100004910;
  v19 = &unk_100018740;
  v20 = v11;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  [v13 na_each:&v16];

  [WeakRetained setFaceKnownSignificantEvents:{v15, v16, v17, v18, v19}];
  [WeakRetained setFaceUnknownSignificantEvents:v14];
  [*(a1 + 40) finishWithNoResult];
}

void sub_100004910(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 faceClassification];
  v4 = [v3 person];
  v5 = [v4 name];

  if ([v5 length])
  {
    v6 = 32;
  }

  else
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    v6 = 40;
  }

  [*(a1 + v6) addObject:v7];
LABEL_6:
}

void sub_100004A84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100004AA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) cameraProfile];
  v6 = v5 == 0;

  v7 = HFLogForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000C698((a1 + 32));
    }

    [v3 finishWithNoResult];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*v4 cameraProfile];
      v10 = [v9 snapshotControl];
      v11 = [*v4 context];
      *buf = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(NC) Attempt fetch snapshot from control:%@ using bulletionContext:%@.", buf, 0x16u);
    }

    v12 = [*(a1 + 32) cameraProfile];
    v13 = [v12 snapshotControl];
    v14 = [*(a1 + 32) context];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100004CC0;
    v15[3] = &unk_1000187B8;
    objc_copyWeak(&v17, (a1 + 40));
    v16 = v3;
    [v13 fetchCameraSnapshotForBulletinContext:v14 completionHandler:v15];

    objc_destroyWeak(&v17);
  }
}

void sub_100004CC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HomeNotificationViewController: Configured with snapshot:%@ and error:%@.", &v9, 0x16u);
  }

  [WeakRetained setNotificationSnapshot:v5];
  [*(a1 + 32) finishWithNoResult];
}

void sub_1000051F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000521C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained contentViewController];
  v3 = [v2 view];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintEqualToConstant:1.0];
  [WeakRetained setHeightConstraint:v5];

  v32 = [WeakRetained contentViewController];
  v31 = [v32 view];
  v29 = [v31 topAnchor];
  v30 = [WeakRetained view];
  v28 = [v30 topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v33[0] = v27;
  v26 = [WeakRetained contentViewController];
  v25 = [v26 view];
  v23 = [v25 leadingAnchor];
  v24 = [WeakRetained view];
  v22 = [v24 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v33[1] = v21;
  v20 = [WeakRetained contentViewController];
  v19 = [v20 view];
  v17 = [v19 trailingAnchor];
  v18 = [WeakRetained view];
  v6 = [v18 trailingAnchor];
  v7 = [v17 constraintEqualToAnchor:v6];
  v33[2] = v7;
  v8 = [WeakRetained contentViewController];
  v9 = [v8 view];
  v10 = [v9 bottomAnchor];
  v11 = [WeakRetained view];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v33[3] = v13;
  v14 = [WeakRetained heightConstraint];
  v33[4] = v14;
  v16 = [NSArray arrayWithObjects:v33 count:5];

  return v16;
}

void sub_100005974(uint64_t a1)
{
  v3 = +[UIColor systemGrayColor];
  v2 = [*(a1 + 32) view];
  [v2 setBackgroundColor:v3];
}

void sub_1000059E0(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  [HFCameraItem getErrorDescription:&v10 detailedErrorDescription:&v9 forCameraStreamError:*(a1 + 32)];
  v2 = v10;
  v3 = v9;
  v4 = v2;
  v5 = [HomeNotificationStatusView alloc];
  v6 = [*(a1 + 40) view];
  [v6 bounds];
  v7 = [(HomeNotificationStatusView *)v5 initWithFrame:?];

  [(HomeNotificationStatusView *)v7 setStatusText:v3];
  v8 = [*(a1 + 40) view];

  [v8 addSubview:v7];
}

id sub_100005B98(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100005D1C;
  v13 = &unk_100018858;
  v14 = *(a1 + 32);
  v4 = [v3 na_firstObjectPassingTest:&v10];
  if (v4)
  {
    v5 = [NAFuture futureWithResult:v4, v10, v11, v12, v13];
  }

  else
  {
    if (v3)
    {
      v6 = v3;
    }

    else
    {
      v6 = &__NSArray0__struct;
    }

    v15 = @"HOMES";
    v16 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1, v10, v11, v12, v13];
    v8 = sub_100005D60(2, v7);
    v5 = [NAFuture futureWithError:v8];
  }

  return v5;
}

id sub_100005D1C(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id sub_100005D60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 na_safeSetObject:0 forKey:@"HomeNotificationErrorContext"];
  if (v3)
  {
    [v4 addEntriesFromDictionary:v3];
  }

  v5 = [NSError errorWithDomain:@"com.apple.Home.HomeNotificationViewController" code:a1 userInfo:v4];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10000C76C();
  }

  return v5;
}

id sub_100005F14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000C7DC();
  }

  v5 = objc_opt_new();
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = [v6 homeManager];

  v8 = [NSDate dateWithTimeIntervalSinceNow:*(a1 + 48)];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006074;
  v15[3] = &unk_1000188D0;
  v9 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v9;
  v10 = v5;
  v17 = v10;
  v11 = [v7 _refreshBeforeDate:v8 completionHandler:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

void sub_100006074(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _homeWithUUID:*(a1 + 40)];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006144;
  v7[3] = &unk_1000188A8;
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  v6 = [v4 addCompletionBlock:v7];
}

void sub_100006144(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "HomeNotificationViewController: Found home: %@ Error: %@ Error from refreshing home manager: %@", &v9, 0x20u);
  }

  [*(a1 + 40) finishWithResult:v5 error:v6];
}

void sub_10000646C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v4 hf_cameraProfileWithIdentifier:*(a1 + 40)];

  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(NC): Home manager refresh. Found camera profile for UUID:%@", &v10, 0xCu);
    }

    [*(a1 + 48) finishWithResult:v5];
  }

  else
  {
    v8 = sub_100005D60(5, 0);
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000C8D8();
    }

    [*(a1 + 48) finishWithError:v8];
  }
}

void sub_100006988(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100006E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006E90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained playerViewController];

  if (v1)
  {
    v2 = [WeakRetained nearbyAccessoriesViewController];
    v3 = [v2 itemManager];
    v4 = [v3 allDisplayedItems];
    v5 = [v4 count];
    v6 = [WeakRetained playerViewController];
    [v6 setNumberOfAssociatedAccessoriesDisplayed:v5];
  }

  v7 = [WeakRetained tableView];
  [v7 reloadData];
}

id HomeNotificationActionOperationErrorWithContext(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v3 = [v4 localizedDescription];

    if (v3)
    {
      v3 = [v5 localizedDescription];
    }
  }

  v6 = objc_opt_new();
  [v6 na_safeSetObject:v5 forKey:NSUnderlyingErrorKey];
  [v6 na_safeSetObject:v3 forKey:NSLocalizedDescriptionKey];
  v7 = [NSError errorWithDomain:HomeNotificationActionOperationErrorDomain code:v5 == 0 userInfo:v6];

  return v7;
}

void sub_100007B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000802C(uint64_t a1)
{
  [*(a1 + 32) setError:?];
  v2 = *(a1 + 32);

  return [v2 setFinished:1];
}

void sub_10000806C(uint64_t a1)
{
  v2 = [HFSimpleItemManager alloc];
  v3 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000824C;
  v13[3] = &unk_1000189E8;
  v13[4] = v3;
  v14 = *(a1 + 40);
  v4 = [v2 initWithDelegate:v3 itemProvidersCreator:v13];
  [*(a1 + 32) setItemManager:v4];

  v5 = [*(a1 + 32) itemManager];
  v6 = [v5 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 56)];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100008430;
  v11[3] = &unk_100018A10;
  objc_copyWeak(&v12, (a1 + 48));
  v7 = [v6 addFailureBlock:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000084BC;
  v9[3] = &unk_100018A60;
  objc_copyWeak(&v10, (a1 + 48));
  v8 = [v6 addSuccessBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
}

void sub_100008228(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

id sub_10000824C(uint64_t a1)
{
  v2 = [HFServiceItemProvider alloc];
  v3 = [*(a1 + 32) home];
  v4 = [v2 initWithHome:v3 serviceTypes:0];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000837C;
  v7[3] = &unk_1000189C0;
  v8 = *(a1 + 40);
  [v4 setFilter:v7];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];

  return v5;
}

id sub_10000837C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    NSLog(@"Expected an HMService %@", v4);
  }

  v7 = *(a1 + 32);
  v8 = [v6 uniqueIdentifier];
  v9 = [v7 containsObject:v8];

  return v9;
}

void sub_100008430(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10000C944(v3, v5);
  }

  [WeakRetained setError:v3];
  [WeakRetained setFinished:1];
}

void sub_1000084BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[NAFuture futureWithNoResult];
  v6 = [WeakRetained action];
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:@"lightbulb"];

  if (v8)
  {
    v9 = [WeakRetained _toggleLightbulbsForItems:v3];
  }

  else
  {
    v10 = [WeakRetained action];
    v11 = [v10 identifier];
    if ([v11 isEqualToString:@"security-system"])
    {
    }

    else
    {
      v12 = [WeakRetained action];
      v13 = [v12 identifier];
      v14 = [v13 isEqualToString:@"lock-mechanism"];

      if (!v14)
      {
        v15 = [WeakRetained action];
        v17 = [v15 identifier];
        NSLog(@"Unknown action identifier %@", v17);

        goto LABEL_8;
      }
    }

    v9 = [WeakRetained _unlockLocksAndDisarmSecuritySystemsForItems:v3];
  }

  v15 = v5;
  v5 = v9;
LABEL_8:

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000086D4;
  v18[3] = &unk_100018A38;
  objc_copyWeak(&v19, (a1 + 32));
  v16 = [v5 addCompletionBlock:v18];
  objc_destroyWeak(&v19);
}

void sub_1000086D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFinished:1];
}

id sub_10000891C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000CA00(v3, v4);
  }

  v5 = HomeNotificationBundle();
  v6 = [v5 localizedStringForKey:@"HONActionErrorCameraNotResponding" value:&stru_100019130 table:@"HONLocalizable"];
  v7 = HomeNotificationActionOperationErrorWithContext(v6, v3);
  [*(a1 + 32) setError:v7];

  v8 = [*(a1 + 32) error];
  v9 = [NAFuture futureWithError:v8];

  return v9;
}

BOOL sub_100008BBC(id a1, HFItem *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_100008C08(uint64_t a1)
{
  if (*(a1 + 48) == 2)
  {
    v2 = @"HONActionLightTurnedOn";
  }

  else
  {
    v2 = @"HONActionLightTurnedOff";
  }

  v3 = v2;
  v4 = HomeNotificationBundle();
  v5 = [*(a1 + 40) count];
  v6 = v3;
  if (v5 >= 2)
  {
    v6 = [(__CFString *)v3 stringByAppendingString:@"Plural"];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100019130 table:@"HONLocalizable"];
  [*(a1 + 32) setResultString:v7];

  if (v5 >= 2)
  {
  }

  v8 = +[NAFuture futureWithNoResult];

  return v8;
}

id sub_100008D08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HomeNotificationBundle();
  if ([*(a1 + 32) count] <= 1)
  {
    v6 = [v4 localizedStringForKey:@"HONActionErrorLightNotResponding" value:&stru_100019130 table:@"HONLocalizable"];
  }

  else
  {
    v5 = [@"HONActionErrorLightNotResponding" stringByAppendingString:@"Plural"];
    v6 = [v4 localizedStringForKey:v5 value:&stru_100019130 table:@"HONLocalizable"];
  }

  v7 = HomeNotificationActionOperationErrorWithContext(v6, v3);
  [*(a1 + 40) setError:v7];

  v8 = [NAFuture futureWithError:v3];

  return v8;
}

BOOL sub_1000090E8(id a1, HFItem *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_100009134(id a1, HFItem *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_100009180(id a1, HFItem *a2)
{
  v2 = [(HFItem *)a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:HFResultPrimaryStateKey];
  v4 = [v3 integerValue] != 2;

  return v4;
}

BOOL sub_1000091E4(id a1, HFItem *a2)
{
  v2 = [(HFItem *)a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:HFResultPrimaryStateKey];
  v4 = [v3 integerValue] != 1;

  return v4;
}

id sub_100009248(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) itemManager];
  v5 = [v4 childItemsForItem:v3];
  v6 = [v5 na_firstObjectPassingTest:&stru_100018BE0];

  if (!v6)
  {
    v7 = [*(a1 + 32) itemManager];
    v8 = [v7 childItemsForItem:v3];
    NSLog(@"No matching control item found on security system item %@ with control items: %@", v3, v8);
  }

  v9 = [v6 writeValue:&off_100019698];

  return v9;
}

BOOL sub_100009334(id a1, HFItem *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [(HFItem *)v5 characteristicOptions];
  v7 = [v6 objectForKeyedSubscript:&off_100019680];
  v8 = [v7 containsObject:HMCharacteristicTypeTargetSecuritySystemState];

  return v8;
}

NAFuture *sub_1000093E8(id *a1)
{
  if ([a1[4] count] && objc_msgSend(a1[5], "count"))
  {
    v2 = HomeNotificationBundle();
    v3 = [a1[4] count];
    if (v3 >= 2)
    {
      v4 = @"HONActionLockUnlockedAndSecuritySystemDisarmed";
LABEL_8:
      v5 = [(__CFString *)v4 stringByAppendingString:@"Plural"];
      goto LABEL_13;
    }

    v5 = @"HONActionLockUnlockedAndSecuritySystemDisarmed";
  }

  else
  {
    if (![a1[4] count])
    {
      if (![a1[5] count])
      {
        goto LABEL_16;
      }

      v2 = HomeNotificationBundle();
      v5 = [v2 localizedStringForKey:@"HONActionSecuritySystemDisarmed" value:&stru_100019130 table:@"HONLocalizable"];
      [a1[6] setResultString:v5];
      goto LABEL_14;
    }

    v2 = HomeNotificationBundle();
    v3 = [a1[4] count];
    if (v3 >= 2)
    {
      v4 = @"HONActionLockUnlocked";
      goto LABEL_8;
    }

    v5 = @"HONActionLockUnlocked";
  }

LABEL_13:
  v6 = [v2 localizedStringForKey:v5 value:&stru_100019130 table:@"HONLocalizable"];
  [a1[6] setResultString:v6];

  if (v3 > 1)
  {
LABEL_14:
  }

LABEL_16:

  return +[NAFuture futureWithNoResult];
}

id sub_100009564(id *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  if ([v3 count] && objc_msgSend(a1[5], "count"))
  {
    v5 = HomeNotificationBundle();
    v6 = [a1[4] count];
    v7 = &v6[[a1[5] count]];
    if (v7 < 2)
    {
      v8 = @"HONActionErrorAccessoryNotResponding";
    }

    else
    {
      v8 = [@"HONActionErrorAccessoryNotResponding" stringByAppendingString:@"Plural"];
    }

    v11 = [v5 localizedStringForKey:v8 value:&stru_100019130 table:@"HONLocalizable"];
    if (v7 >= 2)
    {
    }

    goto LABEL_16;
  }

  if ([a1[4] count])
  {
    v5 = HomeNotificationBundle();
    v9 = [a1[4] count];
    if (v9 < 2)
    {
      v10 = @"HONActionErrorLockNotResponding";
    }

    else
    {
      v10 = [@"HONActionErrorLockNotResponding" stringByAppendingString:@"Plural"];
    }

    v11 = [v5 localizedStringForKey:v10 value:&stru_100019130 table:@"HONLocalizable"];
    if (v9 >= 2)
    {
    }

    goto LABEL_16;
  }

  if ([a1[5] count])
  {
    v5 = HomeNotificationBundle();
    v11 = [v5 localizedStringForKey:@"HONActionErrorSecuritySystemNotResponding" value:&stru_100019130 table:@"HONLocalizable"];
LABEL_16:

    goto LABEL_17;
  }

  NSLog(@"Action failed despite not writing any values!");
  v11 = 0;
LABEL_17:
  v12 = HomeNotificationActionOperationErrorWithContext(v11, v4);
  [a1[6] setError:v12];

  v13 = [NAFuture futureWithError:v4];

  return v13;
}

id sub_100009900(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 itemManager];
  v6 = [v5 childItemsForItem:v4 ofClass:objc_opt_class() conformingToProtocol:&OBJC_PROTOCOL___HFPrimaryStateWriter];

  v7 = [v6 anyObject];

  v8 = [v7 writePrimaryState:*(a1 + 40)];

  return v8;
}

BOOL sub_100009B20(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:HFResultPrimaryStateKey];
  v5 = [v4 integerValue] == *(a1 + 32);

  return v5;
}

void sub_10000A934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A950(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) statusText];
  v3 = [*(a1 + 32) statusAccessoryImage];
  [WeakRetained _updateStatusText:v2 accessoryImage:v3 animated:*(a1 + 48)];
}

id sub_10000B33C()
{
  if (qword_10001EA00 != -1)
  {
    sub_10000CA78();
  }

  v1 = qword_10001EA08;

  return v1;
}

void sub_10000B380(id a1)
{
  qword_10001EA08 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_10000BCC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [[HomeNotificationAction alloc] initWithDictionary:v3];

  v4 = [(HomeNotificationAction *)v7 identifier];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [(HomeNotificationAction *)v7 identifier];
    [v5 setObject:v7 forKeyedSubscript:v6];
  }
}

void sub_10000BF60(id a1)
{
  qword_10001EA10 = [NSSet setWithObjects:@"identifier", @"itemType", @"shouldDismiss", @"title", @"services.uuid", 0];

  _objc_release_x1();
}

id sub_10000BFDC(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[NSUUID alloc] initWithUUIDString:v2];

  return v3;
}

unint64_t sub_10000C2A4()
{
  result = qword_10001E9F0;
  if (!qword_10001E9F0)
  {
    sub_10000C2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001E9F0);
  }

  return result;
}

unint64_t sub_10000C2FC()
{
  result = qword_10001E9F8;
  if (!qword_10001E9F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001E9F8);
  }

  return result;
}

void sub_10000C348(void *a1)
{
  v1 = [a1 notificationRequestIdentifier];
  sub_1000069A8();
  sub_100006958();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000C3D8(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  sub_1000069B4();
  sub_100006988(&_mh_execute_header, v1, v2, "HomeNotificationViewController failed to handle misclassification for significant event %@ (error: %@)", v3, DWORD2(v3));
}

void sub_10000C44C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 32) objectForKeyedSubscript:HMBulletinContextHomeIDKey];
  v4 = [*(a2 + 32) objectForKeyedSubscript:HMBulletinCameraNotificationIDKey];
  sub_100006968();
  sub_100006958();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10000C558(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 32) objectForKeyedSubscript:HMBulletinContextHomeIDKey];
  v4 = [*(a2 + 32) objectForKeyedSubscript:HMBulletinCameraNotificationIDKey];
  sub_100006968();
  sub_100006958();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10000C624(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  sub_1000069B4();
  sub_100006988(&_mh_execute_header, v1, v2, "HomeNotificationViewController: Failed to fetch significant events for uuids %@ (error: %@)", v3, DWORD2(v3));
}

void sub_10000C698(id *a1)
{
  v1 = [*a1 cameraProfile];
  sub_1000069A8();
  sub_100006958();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000C76C()
{
  sub_1000069A8();
  sub_1000069C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000C7DC()
{
  sub_1000069A8();
  sub_1000069C4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000C84C(void *a1)
{
  v1 = [a1 home];
  sub_1000069A8();
  sub_100006958();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10000C8D8()
{
  sub_1000069A8();
  sub_1000069B4();
  sub_100006988(&_mh_execute_header, v0, v1, "(NC): Could not fetch camera profile: %@ Error after refreshing home manager: %@");
}

void sub_10000C944(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "HFSimpleItemManager failed to retrieve items: %@", &v2, 0xCu);
}

void sub_10000CA00(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to toggle microphone state; error: %@", &v2, 0xCu);
}