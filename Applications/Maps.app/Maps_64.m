uint64_t sub_100C79A9C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_updateWatchControls" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100C79BD8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 stop];
  [v3 setOriginatingDeviceFromOrigin:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = [v3 copyCurrentPartialRecording];

  (*(v4 + 16))(v4, v5);
}

uint64_t sub_100C79F5C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100C7A1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C7A210(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = sub_100C7A474();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetched contents %@ with error %@", buf, 0x16u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = *(a1 + 40);
          if (v13)
          {
            (*(v13 + 16))(v13, *(*(&v18 + 1) + 8 * i));
          }

          [v12 setStatus:*(a1 + 56)];
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v14 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100C7A4C8;
    v15[3] = &unk_10165DC78;
    objc_copyWeak(&v17, (a1 + 48));
    v16 = *(a1 + 32);
    [v14 saveWithObjects:v8 completionHandler:v15];

    objc_destroyWeak(&v17);
  }
}

id sub_100C7A474()
{
  if (qword_10195ED58 != -1)
  {
    dispatch_once(&qword_10195ED58, &stru_10164F728);
  }

  v1 = qword_10195ED50;

  return v1;
}

void sub_100C7A4C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = sub_100C7A474();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "committed batch with error %@", &v6, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100C7A5A8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RAPSubmissionStatusSyncHandler");
  v2 = qword_10195ED50;
  qword_10195ED50 = v1;
}

uint64_t sub_100C7ADB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100C7ADD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 reportId];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:0 error:0];
    [v8 setRapResponse:v7];
  }
}

void sub_100C7AE74(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100C7AEDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 reportId];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:0 error:0];
    [v8 setRapResponse:v7];
  }
}

void sub_100C7AF80(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100C7AFE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 reportId];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:0 error:0];
    [v8 setRapResponse:v7];
  }
}

void sub_100C7B08C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100C7B2FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100C7A474();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) problemId];
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Failed to persist reviewed RAP identifier %@ with error %@", &v6, 0x16u);
    }
  }
}

void sub_100C7B604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C7B630(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = sub_100C7A474();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetched contents %@ with error %@", &v11, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = [v5 copy];
    (*(v9 + 16))(v9, v10, v6);
  }
}

void sub_100C7B808(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = sub_100C7A474();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 count];
      v10 = *(a1 + 40);
      *buf = 134218240;
      v45 = v9;
      v46 = 2048;
      v47 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetched %ld new data, the offset: %ld", buf, 0x16u);
    }

    v34 = a1;

    v37 = +[NSMutableArray array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v35 = v5;
    obj = v5;
    v11 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v40;
      v15 = &stru_1016631F0;
      while (2)
      {
        v16 = 0;
        v17 = -v13;
        v33 = &v12[v13];
        do
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v39 + 1) + 8 * v16);
          if (v17 == v16)
          {
            v19 = [*(*(&v39 + 1) + 8 * v16) communityID];
            v20 = [v19 communityIdentifier];

            v15 = v20;
          }

          v21 = [v18 communityID];
          v22 = [v21 communityIdentifier];
          if ([(__CFString *)v15 isEqualToString:v22])
          {
          }

          else
          {
            if ([(__CFString *)v15 length])
            {

              goto LABEL_24;
            }

            [v18 communityID];
            v38 = v15;
            v23 = v12;
            v24 = v17;
            v26 = v25 = v14;
            v27 = [v26 communityIdentifier];
            v28 = [v27 length];

            v14 = v25;
            v17 = v24;
            v12 = v23;
            v15 = v38;

            if (v28)
            {
              goto LABEL_24;
            }
          }

          v29 = [v18 reportId];
          v30 = [v29 length];

          if (v30)
          {
            v31 = [v18 reportId];
            [v37 addObject:v31];
          }

          ++v16;
        }

        while (v12 != v16);
        v12 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
        v13 = v33;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = &stru_1016631F0;
    }

LABEL_24:

    v32 = sub_100C7A474();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v45 = v37;
      v46 = 2112;
      v47 = v15;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Fetching RAPRecords: %@ with communityID:%@", buf, 0x16u);
    }

    (*(*(v34 + 32) + 16))();
    v7 = 0;
    v5 = v35;
  }
}

void sub_100C7C09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C7C0B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDebugText];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 startDebugInfoRefreshTimer];
}

void sub_100C7C464(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195ED78;
  qword_10195ED78 = v1;

  [qword_10195ED78 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ"];
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_10195ED78 setLocale:v3];
}

void sub_100C7CB54(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195ED60;
  qword_10195ED60 = v1;
}

id sub_100C7D420()
{
  if (qword_10195ED88 != -1)
  {
    dispatch_once(&qword_10195ED88, &stru_10164F788);
  }

  v1 = qword_10195ED80;

  return v1;
}

void sub_100C7D474(id a1)
{
  v1 = os_log_create("com.apple.Maps", "DebugViewFrameHighlighter");
  v2 = qword_10195ED80;
  qword_10195ED80 = v1;
}

void sub_100C7DD38(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) controller];
  v4 = v3;
  v5 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 registerObserver:v5];
  }

  else
  {
    [v3 unregisterObserver:v5];
  }

  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) controller];
    v8 = v7;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v12 = 138412802;
    if (v9)
    {
      v11 = @"Registered";
    }

    else
    {
      v11 = @"Unregistered";
    }

    v13 = v7;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[CarMapsSuggestionsObserver_LowFuel] - The controllers (%@) has %@ object - %@ as Observers", &v12, 0x20u);
  }
}

BOOL sub_100C7EA40(id a1, MapsSuggestionsEntry *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MapsSuggestionsOfflineService);
  v4 = [(MapsSuggestionsOfflineService *)v3 shouldKeepEntryWhenOffline:v2];

  return v4;
}

void sub_100C7ED6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C7ED90(uint64_t a1)
{
  v2 = sub_100006E1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[CarMapsSuggestionsController] processAssertionTimer fired", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHoldProcessAssertion:0];
}

void sub_100C7EE14(id a1, BOOL a2)
{
  v2 = a2;
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v5 = v4;
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[CarMapsSuggestionsController] processAssertion acquired=%{public}@", &v6, 0xCu);
  }
}

void sub_100C7F080(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained observers];
  objc_sync_enter(v1);
  v2 = [WeakRetained observers];
  v3 = [v2 allObjects];
  v4 = [v3 count];

  if (!v4)
  {
    [WeakRetained setSinkAttached:0];
  }

  [WeakRetained setSinkDetaching:0];
  objc_sync_exit(v1);
}

void sub_100C7F6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C7F71C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100006E1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[CarMapsSuggestionsController] suggestions: %@", buf, 0xCu);
  }

  v5 = [v3 copy];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSuggestions:v5];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C7F89C;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v8);
}

void sub_100C7F864(id a1)
{
  Integer = GEOConfigGetInteger();
  v2 = 5;
  if (Integer >= 1)
  {
    v2 = Integer;
  }

  qword_10195ED90 = v2;
}

void sub_100C7F89C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyObservers];
}

BOOL sub_100C7FA74(id a1, MapsSuggestionsEntry *a2)
{
  v2 = a2;
  v3 = [(MapsSuggestionsEntry *)v2 type];
  LOBYTE(v4) = 1;
  if (v3 <= 0x19)
  {
    if (((1 << v3) & 0x27400C0) != 0)
    {
      LOBYTE(v4) = 0;
    }

    else if (v3 == 9)
    {
      v6 = [(MapsSuggestionsEntry *)v2 numberForKey:@"MapsSuggestionsIsNotADestinationKey"];
      v4 = [v6 BOOLValue] ^ 1;
    }
  }

  return v4;
}

void sub_100C80308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C8032C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissTrafficAlert];
}

void sub_100C81108(uint64_t a1)
{
  [*(*(a1 + 32) + 8) _setModeDidResignCurrent];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v5 = [*(v2 + 8) chromeViewController];
  v4 = [v5 mapView];
  [v3 restoreStateToMapView:v4];
}

void sub_100C811F0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) chromeViewController];
  v12 = [v2 mapView];

  v3 = [[_MapViewState alloc] initWithMapView:v12];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  [v12 setUserTrackingMode:0];
  [v12 setShowsTraffic:0];
  [v12 setShowsUserLocation:0];
  v6 = [v12 _mapLayer];
  [v6 setStaysCenteredDuringPinch:1];

  v7 = [v12 _mapLayer];
  [v7 setStaysCenteredDuringRotation:1];

  v8 = [*(*(a1 + 32) + 8) lookAroundView];
  v9 = [[_LookAroundViewState alloc] initWithLookAroundView:v8];
  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  *(v10 + 24) = v9;

  [*(*(a1 + 32) + 8) _setModeDidBecomeCurrent];
}

id sub_100C82064()
{
  if (qword_10195EDA8 != -1)
  {
    dispatch_once(&qword_10195EDA8, &stru_10164F858);
  }

  v1 = qword_10195EDA0;

  return v1;
}

void sub_100C820B8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARFailureContaineeViewController");
  v2 = qword_10195EDA0;
  qword_10195EDA0 = v1;
}

void sub_100C848E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C84910(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained appCoordinator];
  [v1 exitLookAround];
}

void sub_100C84BD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setContaineeDelegate:v3];
  v5 = [*(a1 + 32) containerViewController];
  [v5 presentController:v4 animated:1];
}

void sub_100C84C4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 containerViewController];
  [v4 _maps_topMostPresentViewController:v3 animated:1 completion:0];
}

void sub_100C84F38(id a1)
{
  v1 = os_log_create("com.apple.Maps", "LookAroundActionCoordinator");
  v2 = qword_10195EDB0;
  qword_10195EDB0 = v1;
}

void sub_100C853DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = [WeakRetained isDisplayingLookAroundFullScreen];

  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);

    [v4 updateLocation];
  }
}

void sub_100C85720(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100C85744(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) editSession];
    [WeakRetained viewController:v5 createNewCollectionWithSession:v4];
  }
}

void sub_100C857C0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) editSession];
    [WeakRetained viewController:v5 createNewCollectionWithSession:v4];
  }
}

id sub_100C86368(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100C865F4;
    v22[3] = &unk_10164F938;
    *&v22[4] = a4;
    v10 = [NSAttributedString _mapkit_attributedStringForComposedString:v7 defaultAttributes:v9 argumentOverrideHandler:v22];
  }

  else
  {
    v11 = GEOStringForDuration();
    v10 = [[NSAttributedString alloc] initWithString:v11 attributes:v9];
  }

  if ([v8 isValid])
  {
    v12 = sub_100C86674(v8, v9);
    v13 = v12;
    if (v10)
    {
      v14 = [[NSAttributedString alloc] initWithString:@"%@ • %@" attributes:v9];
      v15 = +[UIApplication sharedApplication];
      v16 = [v15 userInterfaceLayoutDirection];

      if (v16 == 1)
      {
        [NSAttributedString localizedAttributedStringWithFormat:v14, v13, v10];
      }

      else
      {
        [NSAttributedString localizedAttributedStringWithFormat:v14, v10, v13];
      }
      v17 = ;
    }

    else
    {
      v17 = v12;
    }

    v24 = v17;
    v18 = &v24;
  }

  else
  {
    v13 = [[NSAttributedString alloc] initWithString:@"%@" attributes:v9];
    v17 = [NSAttributedString localizedAttributedStringWithFormat:v13, v10];
    v23 = v17;
    v18 = &v23;
  }

  v19 = [NSArray arrayWithObjects:v18 count:1];
  v20 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:v19 repeatedSeparator:0];

  return v20;
}

void sub_100C865F4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 durationFormat];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 durationFormat];
    [v5 setOverrideValue:v4];
  }
}

id sub_100C86674(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 objectForKeyedSubscript:NSForegroundColorAttributeName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[UIColor secondaryLabelColor];
  }

  v8 = v7;

  v9 = objc_opt_new();
  v10 = [UIImage systemImageNamed:@"arrow.up.forward"];
  v11 = [v10 imageWithTintColor:v8];
  [v9 setImage:v11];

  v26 = [NSAttributedString attributedStringWithAttachment:v9 attributes:v3];
  [v4 sumElevationGainCm];
  v25 = GEOStringForDistance();
  v12 = [[NSAttributedString alloc] initWithString:v25];
  v13 = objc_opt_new();
  v14 = [UIImage systemImageNamed:@"arrow.down.forward"];
  v27 = v8;
  v15 = [v14 imageWithTintColor:v8];
  [v13 setImage:v15];

  v16 = [NSAttributedString attributedStringWithAttachment:v13 attributes:v3];
  [v4 sumElevationLossCm];

  v17 = GEOStringForDistance();
  v18 = [[NSAttributedString alloc] initWithString:v17];
  v19 = [[NSAttributedString alloc] initWithString:@"%@ %@ • %@ %@" attributes:v3];

  v20 = +[UIApplication sharedApplication];
  v21 = [v20 userInterfaceLayoutDirection];

  if (v21 == 1)
  {
    v22 = v26;
    [NSAttributedString localizedAttributedStringWithFormat:v19, v18, v16, v12, v26];
  }

  else
  {
    v22 = v26;
    [NSAttributedString localizedAttributedStringWithFormat:v19, v26, v12, v16, v18];
  }
  v23 = ;

  return v23;
}

id sub_100C86990(void *a1)
{
  v1 = a1;
  v2 = GEOStringForDistance();
  if ([v1 isValid])
  {
    [v1 sumElevationGainCm];
    v3 = GEOStringForDistance();
    [v1 sumElevationLossCm];
    v4 = GEOStringForDistance();
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[Route Creation] Temp distance and elevation description summary" value:@"localized string not found" table:0];

    v7 = [NSString localizedStringWithFormat:v6, v2, v3, v4];
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"[Route Creation] Temp distance description" value:@"localized string not found" table:0];
    v7 = [NSString localizedStringWithFormat:v4, v2];
  }

  return v7;
}

id sub_100C86B78(void *a1)
{
  v1 = a1;
  v2 = GEOStringForDistance();
  v3 = [[NSAttributedString alloc] initWithString:v2 attributes:v1];

  return v3;
}

id sub_100C86C80(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:NSForegroundColorAttributeName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[UIColor secondaryLabelColor];
  }

  v8 = v7;

  v9 = objc_opt_new();
  v10 = [UIImage _systemImageNamed:@"base.unit"];
  v27 = v8;
  v11 = [v10 imageWithTintColor:v8];
  [v9 setImage:v11];

  v12 = [NSAttributedString attributedStringWithAttachment:v9 attributes:v4];
  v13 = GEOStringForDistance();
  v14 = [[NSAttributedString alloc] initWithString:v13];
  if ([v3 isValid])
  {
    v15 = sub_100C86674(v3, v4);
    v16 = +[UIApplication sharedApplication];
    v17 = [v16 userInterfaceLayoutDirection];

    v18 = [NSAttributedString alloc];
    if (v17 == 1)
    {
      v19 = [v18 initWithString:@"%@ • %@ %@" attributes:v4];
      [NSAttributedString localizedAttributedStringWithFormat:v19, v15, v14, v12];
    }

    else
    {
      v19 = [v18 initWithString:@"%@ %@ • %@" attributes:v4];
      [NSAttributedString localizedAttributedStringWithFormat:v19, v12, v14, v15];
    }
    v20 = ;

    v29 = v20;
    v23 = &v29;
  }

  else
  {
    v20 = [[NSAttributedString alloc] initWithString:@"%@ %@" attributes:v4];
    v21 = +[UIApplication sharedApplication];
    v22 = [v21 userInterfaceLayoutDirection];

    if (v22 == 1)
    {
      [NSAttributedString localizedAttributedStringWithFormat:v20, v14, v12];
    }

    else
    {
      [NSAttributedString localizedAttributedStringWithFormat:v20, v12, v14];
    }
    v15 = ;
    v28 = v15;
    v23 = &v28;
  }

  v24 = [NSArray arrayWithObjects:v23 count:1];
  v25 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:v24 repeatedSeparator:0];

  return v25;
}

void sub_100C87E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C87EA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] removeObjectForKey:*(a1 + 32)];
    [v3[2] removeObjectForKey:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100C880FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100C88128(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteCardUUID:*(a1 + 32)];
}

void sub_100C88178(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleCardButtonTag:a3 forStackID:*(a1 + 32) card:v5];
}

void sub_100C88494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C884D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteCardUUID:*(a1 + 32)];
}

void sub_100C88920(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarTestContext");
  v2 = qword_10195EDC0;
  qword_10195EDC0 = v1;
}

void sub_100C88B24(uint64_t a1)
{
  v13 = [*(*(a1 + 32) + 24) _maps_rightRHDAnchor];
  v2 = [*(a1 + 40) viewportLayoutGuide];
  v3 = [v2 _maps_rightRHDAnchor];
  LODWORD(v4) = 1148846080;
  v5 = [v13 _maps_constraintWithRHDAnchor:v3 relation:0 constant:-10.0 priority:v4];
  v14[0] = v5;
  v6 = [*(*(a1 + 32) + 24) topAnchor];
  v7 = [*(a1 + 40) viewportLayoutGuide];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8 constant:10.0];
  v14[1] = v9;
  v10 = [*(*(a1 + 32) + 24) heightAnchor];
  v11 = [v10 constraintEqualToConstant:28.0];
  v14[2] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:3];
  [NSLayoutConstraint activateConstraints:v12];
}

void sub_100C88E68(id a1)
{
  v1 = objc_alloc_init(PlaceholderCollectionHandler);
  v2 = qword_10195EDD0;
  qword_10195EDD0 = v1;
}

uint64_t sub_100C8997C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100C89B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C89BB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained finishedSubTest:*(a1 + 32)];
    [v3 finishedTest];
    WeakRetained = v3;
  }
}

void sub_100C89D28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100C89D48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained finishedSubTest:@"citySelectorCollectData"];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100C89E38;
    v3[3] = &unk_101661B18;
    v3[4] = v2;
    [v2 _dispatchAfterShortDelay:v3];
  }
}

id sub_100C89DE4(uint64_t a1)
{
  v2 = [*(a1 + 32) searchHomeDataSource];
  [v2 _ppt_selectBrowseCities];

  v3 = *(a1 + 32);

  return [v3 startedSubTest:@"citySelectorCollectData"];
}

void sub_100C8A0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C8A0C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained startedTest];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100C8A1F0;
    v6[3] = &unk_10165FBE8;
    objc_copyWeak(&v7, (a1 + 32));
    [PPTNotificationCenter addOnceObserverForName:@"PPTTest_SearchHome_DidSetActive" object:0 usingBlock:v6];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"didUpdateDataFetcher:" name:@"PPTTest_SearchHome_DidUpdateDataFetcher" object:0];

    v5 = [v3 testCoordinator];
    [v5 pptTestEnterSearchMode];

    objc_destroyWeak(&v7);
  }
}

void sub_100C8A1F0(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 object];
    [WeakRetained setSearchHomeDataSource:v4];

    v5 = [WeakRetained searchHomeDataSource];
    [WeakRetained setNumberOfDataFetchers:{objc_msgSend(v5, "_ppt_numberOfDataFetchers")}];

    [WeakRetained startedSubTest:@"searchHomeCollectData"];
  }
}

void sub_100C8A5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100C8A610(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [UIWindow alloc];
    v6 = [v3 coordinateSpace];
    [v6 bounds];
    v7 = [v5 initWithFrame:?];

    [v7 setCanResizeToFitContent:1];
    [v7 setWindowScene:v3];
    [v7 setRootViewController:*(WeakRetained + 3)];
    [v7 makeKeyAndVisible];
    objc_storeStrong(WeakRetained + 4, v7);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_100C8A86C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"KeyCommand_Delete" value:@"localized string not found" table:0];
  v12[0] = @"row";
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 row]);
  v12[1] = @"section";
  v13[0] = v6;
  v7 = [v3 section];

  v8 = [NSNumber numberWithInteger:v7];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [UIKeyCommand commandWithTitle:v5 image:0 action:a1 input:@"\b" modifierFlags:0 propertyList:v9];

  return v10;
}

id sub_100C8A9FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"KeyCommand_Share" value:@"localized string not found" table:0];
  v12[0] = @"row";
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 row]);
  v12[1] = @"section";
  v13[0] = v6;
  v7 = [v3 section];

  v8 = [NSNumber numberWithInteger:v7];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [UIKeyCommand commandWithTitle:v5 image:0 action:a1 input:@"s" modifierFlags:0x100000 propertyList:v9];

  return v10;
}

void sub_100C8B040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C8B05C(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[2] commentQuestion];
    [v5 setComment:v7];

    v6 = [v4 _commentsHeaderView];
    [v6 updateRemainingCharacters];
  }
}

void sub_100C8B454(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 photo];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v11 photo];
    [v4 addPhoto:v5];

    v6 = *(a1 + 40);
    v7 = [v11 photo];
    v8 = [v7 photo];
    v9 = [v11 photo];
    v10 = [v9 _maps_diffableDataSourceIdentifier];
    [v6 addImage:v8 forIdentifier:v10];

    [v11 clearSelectedPhoto];
  }
}

void sub_100C8C0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C8C120(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained retryCount];
  v4 = sub_10008B0B8();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 > 0xE)
  {
    if (v5)
    {
      v10 = [WeakRetained retryCount];
      v11 = [WeakRetained isActive];
      v12 = @"NO";
      if (v11)
      {
        v12 = @"YES";
      }

      v13 = v12;
      *buf = 134218242;
      v17 = v10;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Predicting retry count exceded, failed! retryCount=%lu routeGeniusActive=%@", buf, 0x16u);
    }

    [WeakRetained _stopPredictingRetryTimer];
  }

  else
  {
    if (v5)
    {
      v6 = [WeakRetained retryCount];
      v7 = [WeakRetained isActive];
      v8 = @"NO";
      if (v7)
      {
        v8 = @"YES";
      }

      v9 = v8;
      *buf = 134218242;
      v17 = v6;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Predicting retry timer fired retryCount=%lu routeGeniusActive=%@", buf, 0x16u);
    }

    [WeakRetained setRetryCount:{objc_msgSend(WeakRetained, "retryCount") + 1}];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C8C340;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v15, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v15);
  }
}

void sub_100C8C340(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained predictingRetryTimer];
  [v1 invalidate];

  [WeakRetained setPredictingRetryTimer:0];
  [WeakRetained startPredictingDestinationIfNeeded];
}

void sub_100C8C92C(uint64_t a1)
{
  v2 = sub_10008B0B8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    v8 = 138412546;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "deactivateForChrome: deactivating chrome: <%@: %p>", &v8, 0x16u);
  }

  if (*(a1 + 32))
  {
    v5 = [*(a1 + 40) activeChromes];
    [v5 removeObject:*(a1 + 32)];

    v6 = [*(a1 + 40) activeChromes];
    v7 = [v6 count];

    if (!v7)
    {
      [*(a1 + 40) setActive:0];
    }
  }
}

void sub_100C8D49C(id a1)
{
  v1 = objc_alloc_init(UIViewController);
  v2 = qword_10195EDE0;
  qword_10195EDE0 = v1;
}

uint64_t sub_100C8D610(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100C8D700(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100C8D8A8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100C8D9A0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100C8DC60(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C8DD78;
  block[3] = &unk_10164FB10;
  v10 = *(a1 + 64);
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100C8DD34(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 startedSubTest:v3];
}

void sub_100C8DD78(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == 1)
  {
    [*(a1 + 32) finishedSubTest:*(a1 + 40)];
    [*(a1 + 32) startedSubTest:*(a1 + 48)];
    v3 = UIApp;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100C8DED8;
    v9[3] = &unk_101661A40;
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    [v3 installCACommitCompletionBlock:v9];

    LOBYTE(v2) = *(a1 + 64);
  }

  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100C8DF1C;
  v5[3] = &unk_101661068;
  v8 = v2;
  v5[4] = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  [v4 dismissTrayWithCompletion:v5];
}

id sub_100C8DED8(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 startedSubTest:v3];
}

void sub_100C8DF1C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) finishedSubTest:*(a1 + 40)];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C8DFC0;
  block[3] = &unk_101661760;
  v3 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100C8DFC0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t (**sub_100C8E108(uint64_t a1))(void)
{
  if (*(a1 + 72) < *(a1 + 80))
  {
    return [*(a1 + 32) _presentDismissTrayTestWithCount:? numberOfRounds:? latencySubTestName:? animationSubTestName:? presenter:? completion:?];
  }

  result = *(a1 + 64);
  if (result)
  {
    return result[2]();
  }

  return result;
}

uint64_t sub_100C8E37C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_100C8E538(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 startedSubTest:v3];
}

uint64_t sub_100C8E57C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) finishedSubTest:*(a1 + 40)];
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100C8E6C4(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100C8E844(uint64_t a1)
{
  v2 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C8E928;
  v8[3] = &unk_101660380;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v7 _updateTrayLayout:1 animated:1 latencySubTestName:v3 animationSubTestName:v2 completion:v8];
}

void sub_100C8E928(uint64_t a1)
{
  v2 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C8EA0C;
  v8[3] = &unk_101660380;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v7 _updateTrayLayout:2 animated:1 latencySubTestName:v3 animationSubTestName:v2 completion:v8];
}

void sub_100C8EA0C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C8EAF0;
  v8[3] = &unk_101660380;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v7 _updateTrayLayout:0 animated:1 latencySubTestName:v3 animationSubTestName:v2 completion:v8];
}

void sub_100C8EAF0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C8EBD4;
  v8[3] = &unk_101660380;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v7 _updateTrayLayout:2 animated:1 latencySubTestName:v3 animationSubTestName:v2 completion:v8];
}

void sub_100C8EBD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C8EC78;
  v4[3] = &unk_101661760;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _updateTrayLayout:1 animated:1 latencySubTestName:v2 animationSubTestName:v3 completion:v4];
}

uint64_t sub_100C8EC78(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t (**sub_100C8ED90(uint64_t a1))(void)
{
  if (*(a1 + 64) < *(a1 + 72))
  {
    return [*(a1 + 32) _resizingTestWithCount:? numbeorOfRounds:? latencySubTestName:? animationSubTestName:? completion:?];
  }

  result = *(a1 + 56);
  if (result)
  {
    return result[2]();
  }

  return result;
}

void sub_100C8F58C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void sub_100C90070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C90090(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 displayName];
  v7 = [v5 headsign];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100C90218;
  v16 = &unk_10164FBC8;
  objc_copyWeak(v19, a1 + 6);
  v8 = v5;
  v17 = v8;
  v19[1] = a3;
  v9 = v6;
  v18 = v9;
  v10 = [UIAction actionWithTitle:v9 image:0 identifier:v7 handler:&v13];

  v11 = [a1[4] headsign];
  v12 = [v8 headsign];
  [v10 setState:{objc_msgSend(v11, "isEqual:", v12)}];

  [a1[5] addObject:v10];
  objc_destroyWeak(v19);
}

void sub_100C90218(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  [v2 selectDepartureSequence:*(a1 + 32)];

  v3 = [NSString stringWithFormat:@"%lu, %@", *(a1 + 56), *(a1 + 40)];
  [GEOAPPortal captureUserAction:49 target:651 value:v3];
}

void sub_100C90BEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v8 = 0;
    v4 = [WeakRetained _computeOnQueueAstronomicalConditionForTime:*(a1 + 32) currentLocation:&v8 isBeforeSolarTransit:*(a1 + 48)];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C90CC0;
    block[3] = &unk_10164FC38;
    objc_copyWeak(v6, (a1 + 40));
    v7 = v8;
    v6[1] = v4;
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(v6);
  }
}

void sub_100C90CC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[41] = *(a1 + 48);
    v3 = WeakRetained;
    [WeakRetained setAstronomicalCondition:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void sub_100C913EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100C9140C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained estimatedHeight];
    [v2[3] setConstant:?];
    [v2 _updateConstraints];
    WeakRetained = v2;
  }
}

NavTrayWaypointRow *sub_100C9220C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(NavTrayWaypointRow);
  [(NavTrayWaypointRow *)v6 setWaypointIndex:*(a1 + 40) + a3];
  [(NavTrayWaypointRow *)v6 setWaypoint:v5];
  v7 = [*(a1 + 32) displayEtaInfo];
  v8 = [v7 legInfos];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100C923F8;
  v16[3] = &unk_10164FC80;
  v9 = v5;
  v17 = v9;
  v10 = sub_100030774(v8, v16);
  [(NavTrayWaypointRow *)v6 setEtaInfo:v10];

  v11 = sub_100035E6C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v9 navDisplayName];
    v13 = [(NavTrayWaypointRow *)v6 waypointIndex];
    v14 = [v9 uniqueID];
    *buf = 138412802;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "NavTrayWaypointRow created for destination %@, index: %d, ID: %@", buf, 0x1Cu);
  }

  return v6;
}

id sub_100C923F8(uint64_t a1, void *a2)
{
  v3 = [a2 waypointID];
  v4 = [*(a1 + 32) uniqueID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_100C9359C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100C935CC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 3))
  {
    v7 = (*(*(a1 + 40) + 16))();
    v3 = [*(a1 + 32) objectForKeyedSubscript:v7];
    v4 = v3;
    if (!v3)
    {
      v3 = &off_1016E9518;
    }

    v5 = [v3 unsignedIntegerValue];

    v6 = [NSNumber numberWithUnsignedInteger:v5 + 1];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }
}

uint64_t sub_100C93690(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100C936A8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v6 = [a3 unsignedIntegerValue];
  v7 = *(*(a1 + 32) + 8);
  if (v6 > *(v7 + 24))
  {
    *(v7 + 24) = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_100C941A4(uint64_t a1)
{
  v2 = [*(a1 + 32) venuesManager];
  v3 = [*(a1 + 40) shortValue];
  v4 = [*(a1 + 32) venue];
  [v2 setDisplayedFloorOrdinal:v3 forBuildingsInVenue:v4];

  v5 = [*(a1 + 32) venuesManager];
  v6 = [v5 mapView];
  [v6 setUserTrackingMode:0];

  v7 = [*(a1 + 32) floorPicker];
  [v7 setTitle:*(a1 + 48) forState:0];
}

void sub_100C94B9C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) view];
  v4 = v3;
  if (v2 == 1)
  {
    [v3 setAlpha:0.0];

    [*(a1 + 32) didStartHiding];
    v6 = [*(a1 + 32) view];
    [v6 layoutIfNeeded];
  }

  else
  {
    [v3 setAlpha:1.0];

    v5 = *(a1 + 32);

    [v5 didStartShowing];
  }
}

id sub_100C94C60(uint64_t a1)
{
  [*(a1 + 32) setOpen:0 animated:0];
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) view];
    [v2 setAlpha:1.0];

    [*(a1 + 32) setHidden:1];
  }

  [*(a1 + 32) didFinishShowing];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 updateHiddenAnimated:1 completion:v4];
}

void sub_100C963E4(id a1)
{
  v1 = [NSMutableCharacterSet characterSetWithRange:1536, 384];
  v2 = qword_10195EE10;
  qword_10195EE10 = v1;

  v3 = qword_10195EE10;

  [v3 addCharactersInRange:{2208, 96}];
}

void sub_100C96A08(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = +[NSMutableArray array];
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x3032000000;
  v101[3] = sub_100C97624;
  v101[4] = sub_100C97634;
  v102 = 0;
  v4 = [*(a1 + 32) screen];
  if (v4)
  {
    v5 = [*(a1 + 32) traitCollection];
    v6 = [UIGraphicsImageRendererFormat formatForTraitCollection:v5];
  }

  else
  {
    v6 = +[UIGraphicsImageRendererFormat preferredFormat];
  }

  v7 = sub_100C9763C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    *buf = 134350338;
    v104 = v9;
    v105 = 2112;
    v106 = v8;
    v107 = 1024;
    *v108 = byte_10195EE20;
    *&v108[4] = 1024;
    *&v108[6] = byte_10195EE21;
    v109 = 1024;
    v110 = byte_10195EE22;
    v111 = 2048;
    v112 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Saving original config values:\nchrome layout guides: %d\ndebug frames: %d\ndeactivation reasons: %d\ncurrent nav camera flags: %lu", buf, 0x32u);
  }

  v11 = objc_opt_new();
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  if ((*(a1 + 96) & 1) != 0 && GEOConfigGetBOOL())
  {
    dispatch_group_enter(v12);
    v13 = +[NSUserDefaults standardUserDefaults];
    [v13 setBool:0 forKey:@"__internal_VisualizeChromeLayoutGuidesDebug"];

    [DebugViewFrameHighlighter setFrameHighlightingEnabled:0 persistToDefaults:0];
    v14 = +[NSUserDefaults standardUserDefaults];
    [v14 setBool:0 forKey:@"CarInternalShowDeactivationReasons"];

    v15 = [*(a1 + 48) _mapLayer];
    [v15 setNavCameraDebugFlags:0];

    v16 = sub_100C9763C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 80);
      v18 = *(a1 + 40);
      v19 = *(a1 + 56);
      *buf = 134349570;
      v104 = v17;
      v105 = 2112;
      v106 = v18;
      v107 = 2112;
      *v108 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Generating normal screenshot attachment for name: %@", buf, 0x20u);
    }

    v20 = [UIGraphicsImageRenderer alloc];
    [*(a1 + 32) bounds];
    v23 = [v20 initWithSize:v6 format:{v21, v22}];
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_100C97690;
    v99[3] = &unk_101650960;
    v100 = *(a1 + 32);
    v24 = [v23 imageWithActions:v99];
    [v11 addObject:v24];
    dispatch_group_leave(v12);
  }

  if ((*(a1 + 96) & 2) != 0 && GEOConfigGetBOOL())
  {
    dispatch_group_enter(v12);
    v25 = +[NSUserDefaults standardUserDefaults];
    [v25 setBool:0 forKey:@"__internal_VisualizeChromeLayoutGuidesDebug"];

    [DebugViewFrameHighlighter setFrameHighlightingEnabled:1 persistToDefaults:0];
    v26 = +[NSUserDefaults standardUserDefaults];
    [v26 setBool:0 forKey:@"CarInternalShowDeactivationReasons"];

    v27 = [*(a1 + 48) _mapLayer];
    [v27 setNavCameraDebugFlags:0];

    v28 = sub_100C9763C();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = *(a1 + 80);
      v30 = *(a1 + 40);
      v31 = *(a1 + 56);
      *buf = 134349570;
      v104 = v29;
      v105 = 2112;
      v106 = v30;
      v107 = 2112;
      *v108 = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Generating debug view frames screenshot attachment for name: %@", buf, 0x20u);
    }

    v32 = [UIGraphicsImageRenderer alloc];
    [*(a1 + 32) bounds];
    v35 = [v32 initWithSize:v6 format:{v33, v34}];
    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_100C976D0;
    v97[3] = &unk_101650960;
    v98 = *(a1 + 32);
    v36 = [v35 imageWithActions:v97];
    [v11 addObject:v36];
    dispatch_group_leave(v12);
  }

  if ((*(a1 + 96) & 4) != 0 && GEOConfigGetBOOL())
  {
    dispatch_group_enter(v12);
    v37 = +[NSUserDefaults standardUserDefaults];
    [v37 setBool:1 forKey:@"__internal_VisualizeChromeLayoutGuidesDebug"];

    [DebugViewFrameHighlighter setFrameHighlightingEnabled:0 persistToDefaults:0];
    v38 = +[NSUserDefaults standardUserDefaults];
    [v38 setBool:0 forKey:@"CarInternalShowDeactivationReasons"];

    v39 = [*(a1 + 48) _mapLayer];
    [v39 setNavCameraDebugFlags:0];

    v40 = sub_100C9763C();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = *(a1 + 80);
      v42 = *(a1 + 40);
      v43 = *(a1 + 56);
      *buf = 134349570;
      v104 = v41;
      v105 = 2112;
      v106 = v42;
      v107 = 2112;
      *v108 = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Generating debug chrome layout guides screenshot attachment for name: %@", buf, 0x20u);
    }

    v44 = [UIGraphicsImageRenderer alloc];
    [*(a1 + 32) bounds];
    v47 = [v44 initWithSize:v6 format:{v45, v46}];
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_100C97710;
    v95[3] = &unk_101650960;
    v96 = *(a1 + 32);
    v48 = [v47 imageWithActions:v95];
    [v11 addObject:v48];
    dispatch_group_leave(v12);
  }

  if ((*(a1 + 96) & 8) != 0 && GEOConfigGetBOOL())
  {
    dispatch_group_enter(v12);
    v49 = +[NSUserDefaults standardUserDefaults];
    [v49 setBool:0 forKey:@"__internal_VisualizeChromeLayoutGuidesDebug"];

    [DebugViewFrameHighlighter setFrameHighlightingEnabled:0 persistToDefaults:0];
    v50 = +[NSUserDefaults standardUserDefaults];
    [v50 setBool:1 forKey:@"CarInternalShowDeactivationReasons"];

    v51 = [*(a1 + 48) _mapLayer];
    [v51 setNavCameraDebugFlags:0];

    v52 = sub_100C9763C();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = *(a1 + 80);
      v54 = *(a1 + 40);
      v55 = *(a1 + 56);
      *buf = 134349570;
      v104 = v53;
      v105 = 2112;
      v106 = v54;
      v107 = 2112;
      *v108 = v55;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Generating inactive reasons screenshot attachment for name: %@", buf, 0x20u);
    }

    v56 = [UIGraphicsImageRenderer alloc];
    [*(a1 + 32) bounds];
    v59 = [v56 initWithSize:v6 format:{v57, v58}];
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_100C97750;
    v93[3] = &unk_101650960;
    v94 = *(a1 + 32);
    v60 = [v59 imageWithActions:v93];
    [v11 addObject:v60];
    dispatch_group_leave(v12);
  }

  if (*(a1 + 48) && (*(a1 + 96) & 0x10) != 0 && GEOConfigGetBOOL())
  {
    dispatch_group_enter(v12);
    v61 = +[NSUserDefaults standardUserDefaults];
    [v61 setBool:0 forKey:@"__internal_VisualizeChromeLayoutGuidesDebug"];

    [DebugViewFrameHighlighter setFrameHighlightingEnabled:0 persistToDefaults:0];
    v62 = +[NSUserDefaults standardUserDefaults];
    [v62 setBool:0 forKey:@"CarInternalShowDeactivationReasons"];

    v63 = [*(a1 + 48) _mapLayer];
    [v63 setNavCameraDebugFlags:7];

    v64 = [*(a1 + 48) _mapLayer];
    [v64 forceLayout];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C97790;
    block[3] = &unk_10164FDF8;
    v92 = *(a1 + 80);
    v86 = *(a1 + 40);
    v87 = *(a1 + 56);
    v88 = *(a1 + 32);
    v89 = v6;
    v91 = v101;
    v90 = v12;
    dispatch_async(&_dispatch_main_q, block);
  }

  dispatch_group_leave(v12);
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100C97908;
  v71[3] = &unk_10164FE40;
  v83 = *(a1 + 80);
  v65 = *(a1 + 40);
  v66 = *(a1 + 88);
  v72 = v65;
  v84 = v66;
  v73 = *(a1 + 48);
  v74 = v11;
  v75 = *(a1 + 32);
  v76 = v6;
  v77 = *(a1 + 56);
  v78 = v3;
  v82 = v101;
  v79 = *(a1 + 64);
  v80 = v2;
  v81 = *(a1 + 72);
  v67 = v2;
  v68 = v3;
  v69 = v6;
  v70 = v11;
  dispatch_group_async(v12, &_dispatch_main_q, v71);

  _Block_object_dispose(v101, 8);
}

uint64_t sub_100C97624(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100C9763C()
{
  if (qword_10195EE40 != -1)
  {
    dispatch_once(&qword_10195EE40, &stru_10164FE88);
  }

  v1 = qword_10195EE38;

  return v1;
}

id sub_100C97690(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

id sub_100C976D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

id sub_100C97710(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

id sub_100C97750(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

void sub_100C97790(uint64_t a1)
{
  v2 = sub_100C9763C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 134349570;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Generating smart camera screenshot attachment for name: %@", buf, 0x20u);
  }

  v6 = [UIGraphicsImageRenderer alloc];
  [*(a1 + 48) bounds];
  v9 = [v6 initWithSize:*(a1 + 56) format:{v7, v8}];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100C97F3C;
  v13[3] = &unk_101650960;
  v14 = *(a1 + 48);
  v10 = [v9 imageWithActions:v13];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  dispatch_group_leave(*(a1 + 64));
}

uint64_t sub_100C97908(uint64_t a1)
{
  if (!--qword_10195EE18)
  {
    v2 = sub_100C9763C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 120);
      v5 = *(a1 + 128);
      *buf = 134350338;
      v34 = v4;
      v35 = 2112;
      v36 = v3;
      v37 = 1024;
      *v38 = byte_10195EE20;
      *&v38[4] = 1024;
      *&v38[6] = byte_10195EE21;
      v39 = 1024;
      v40 = byte_10195EE22;
      v41 = 2048;
      v42 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Restoring original config values:\nchrome layout guides: %d\ndebug frames: %d\ndeactivation reasons: %d\ncurrent nav camera flags: %lu", buf, 0x32u);
    }

    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setBool:byte_10195EE20 forKey:@"__internal_VisualizeChromeLayoutGuidesDebug"];

    [DebugViewFrameHighlighter setFrameHighlightingEnabled:byte_10195EE21 persistToDefaults:0];
    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 setBool:byte_10195EE22 forKey:@"CarInternalShowDeactivationReasons"];
  }

  v8 = [*(a1 + 40) _mapLayer];
  [v8 setNavCameraDebugFlags:0];

  v9 = [*(a1 + 40) _mapLayer];
  [v9 forceLayout];

  if (qword_10195EE28 != -1)
  {
    dispatch_once(&qword_10195EE28, &stru_10164FE18);
  }

  if ([*(a1 + 48) count])
  {
    v10 = [UIGraphicsImageRenderer alloc];
    [*(a1 + 56) bounds];
    v12 = v11 * [*(a1 + 48) count];
    [*(a1 + 56) bounds];
    v14 = [v10 initWithSize:*(a1 + 64) format:{v12, v13}];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100C97D84;
    v31[3] = &unk_101650960;
    v32 = *(a1 + 48);
    v15 = [v14 imageWithActions:v31];
    v16 = qword_10195EE30;
    v17 = +[NSDate date];
    v18 = [v16 stringFromDate:v17];

    v19 = [NSString stringWithFormat:@"screenshot.%@.%@", v18, *(a1 + 72)];
    v20 = [MapsRadarImageAttachment attachmentWithFileName:v19 image:v15 isScreenshot:1];

    [*(a1 + 80) addObject:v20];
  }

  if (*(*(*(a1 + 112) + 8) + 40))
  {
    v21 = qword_10195EE30;
    v22 = +[NSDate date];
    v23 = [v21 stringFromDate:v22];

    v24 = [NSString stringWithFormat:@"smartcamerascreenshot.%@.%@", v23, *(a1 + 72)];
    v25 = [MapsRadarImageAttachment attachmentWithFileName:v24 image:*(*(*(a1 + 112) + 8) + 40) isScreenshot:1];

    [*(a1 + 80) addObject:v25];
  }

  v26 = sub_100C9763C();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = *(a1 + 120);
    v28 = *(a1 + 32);
    v29 = *(a1 + 72);
    *buf = 134349570;
    v34 = v27;
    v35 = 2112;
    v36 = v28;
    v37 = 2112;
    *v38 = v29;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%{public}p] [%@] Finished generating radar attachments for name: %@", buf, 0x20u);
  }

  [*(a1 + 88) addAttachments:*(a1 + 96)];
  [*(a1 + 88) addScreenshots:*(a1 + 80)];
  return (*(*(a1 + 104) + 16))();
}

void sub_100C97D84(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    v5 = 0.0;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        [v7 size];
        v9 = v8;
        [v7 size];
        [v7 drawInRect:{v5, 0.0, v9, v10}];
        [v7 size];
        v5 = v11 + v5;
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

void sub_100C97EB0(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195EE30;
  qword_10195EE30 = v1;

  [qword_10195EE30 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ"];
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_10195EE30 setLocale:v3];
}

id sub_100C97F3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

void sub_100C97F7C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsRadarScreenshotAttachmentHelper");
  v2 = qword_10195EE38;
  qword_10195EE38 = v1;
}

id sub_100C98900()
{
  if (qword_10195EE60 != -1)
  {
    dispatch_once(&qword_10195EE60, &stru_10164FEC8);
  }

  v1 = qword_10195EE58;

  return v1;
}

void sub_100C98954(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsARSessionManager");
  v2 = qword_10195EE58;
  qword_10195EE58 = v1;
}

void sub_100C98D60(id a1)
{
  v1 = objc_alloc_init(MapsARSessionManager);
  v2 = qword_10195EE48;
  qword_10195EE48 = v1;
}

id sub_100C9A0AC(uint64_t a1)
{
  v2 = [*(a1 + 32) mainVKMapView];
  v3 = [v2 isFullyDrawn];

  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 onFullyDrawn:0];
  }

  else
  {

    return [v4 setupFullyDrawnNotification:"onFullyDrawn:"];
  }
}

void sub_100C9B6D8(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionsCarousel];
  [v1 resetCollectionsLayout];
}

id sub_100C9C090()
{
  if (qword_10195EE70 != -1)
  {
    dispatch_once(&qword_10195EE70, &stru_10164FEE8);
  }

  v1 = qword_10195EE68;

  return v1;
}

void sub_100C9C0E4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CuratedCollectionsListViewController");
  v2 = qword_10195EE68;
  qword_10195EE68 = v1;
}

void sub_100C9C8E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) valueForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 firstObject];
    v7 = objc_opt_class();

    if ([v7 isSubclassOfClass:objc_opt_class()])
    {
      v8 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v10)
      {
        v11 = v10;
        v25 = v5;
        v26 = a1;
        v27 = v4;
        v12 = *v33;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v32 + 1) + 8 * i) componentsJoinedByString:{@", "}];
            v15 = [NSString stringWithFormat:@"[%@]", v14];
            [v8 addObject:v15];
          }

          v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v11);
LABEL_21:
        a1 = v26;
        v4 = v27;
        v5 = v25;
      }
    }

    else
    {
      if (![v7 isSubclassOfClass:objc_opt_class()])
      {
LABEL_23:
        v24 = [v5 componentsJoinedByString:{@", "}];
        v16 = [NSString stringWithFormat:@"[%@]", v24];

        goto LABEL_24;
      }

      v8 = objc_opt_new();
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = v5;
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v18)
      {
        v19 = v18;
        v25 = v5;
        v26 = a1;
        v27 = v4;
        v20 = *v29;
        do
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [*(*(&v28 + 1) + 8 * j) logFormat];
            v23 = [v22 stringByReplacingOccurrencesOfString:@"\t" withString:@"\t\t"];
            [v8 addObject:v23];
          }

          v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v19);
        goto LABEL_21;
      }
    }

    v5 = v8;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [*(a1 + 32) _debugDescriptionForProperty:v4 withValue:v5];

LABEL_24:
    v5 = v16;
  }

  [*(a1 + 40) appendFormat:@"\n\t%@: %@", v4, v5];
}

void sub_100C9CCD4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [objc_opt_class() _integersKeyed];
  v7 = [v8 objectForKeyedSubscript:v6];

  [v4 setValue:v5 forKey:v7];
}

void sub_100C9CE3C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) valueForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 integerValue] == 0xFFFF || v6 == 0;
    v8 = v6;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 firstObject], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_class(), v9, !objc_msgSend(v10, "isSubclassOfClass:", objc_opt_class())))
    {
      v8 = v6;
      if (!v6)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v8 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v17 + 1) + 8 * i) accNavFormat];
          [v8 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    if (v6)
    {
LABEL_6:
      [*(a1 + 40) setObject:v8 forKeyedSubscript:{v5, v17}];
    }
  }

LABEL_7:
}

void sub_100C9D11C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  if ([v4 _propertyIsEnum:?])
  {
    v5 = &off_1016E9560;
  }

  else
  {
    v5 = 0;
  }

  [*(a1 + 32) setValue:v5 forKey:v6];
}

BOOL sub_100C9E544(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 isActive];
  v7 = *(a1 + 32);
  if (v7 == v6)
  {
    *a4 = 1;
  }

  return v7 == v6;
}

id sub_100C9F624()
{
  if (qword_10195EE80 != -1)
  {
    dispatch_once(&qword_10195EE80, &stru_101650020);
  }

  v1 = qword_10195EE78;

  return v1;
}

void sub_100C9F678(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARVKMapViewMapDelegate");
  v2 = qword_10195EE78;
  qword_10195EE78 = v1;
}

uint64_t sub_100C9FC04(uint64_t a1, void *a2)
{
  v3 = [a2 feature];
  v4 = v3;
  if (v3 == *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:?];
  }

  return v5;
}

uint64_t sub_100CA0348(uint64_t a1, void *a2)
{
  v3 = [a2 feature];
  v4 = v3;
  if (v3 == *(a1 + 32))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:?];
  }

  return v5;
}

void sub_100CA0CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100CA0CF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error fetching subscriptions", buf, 2u);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if (([v13 dataTypes] & 0x400) != 0)
          {
            v15 = [v13 region];
            v16 = [v15 containsCoordinate:{*(a1 + 48), *(a1 + 56)}];

            if (v16)
            {
              *(*(*(a1 + 40) + 8) + 24) = 1;
              dispatch_group_leave(*(a1 + 32));

              goto LABEL_19;
            }
          }

          else
          {
            v14 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Subscription is not of type offline, skipping.", buf, 2u);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    dispatch_group_leave(*(a1 + 32));
LABEL_19:
    v6 = v17;
  }
}

void sub_100CA1F04(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100CA1F40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = *(a1 + 32);
      v5 = [NSArray arrayWithObjects:&v6 count:1];
      [WeakRetained endFailedDeletions:v5 error:v3];
    }

    [WeakRetained[17] removeObject:*(a1 + 40)];
  }
}

void sub_100CA200C(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      v6 = *(a1 + 32);
      v5 = [NSArray arrayWithObjects:&v6 count:1];
      [WeakRetained endFailedDeletions:v5 error:0];
    }

    [WeakRetained[17] removeObject:*(a1 + 40)];
  }
}

void sub_100CA2460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CA2484(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      v5 = sub_1000410AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error creating shortcut for map item: %@", &v7, 0xCu);
      }
    }

    [WeakRetained[16] removeObject:*(a1 + 40)];
  }
}

uint64_t sub_100CA28FC(uint64_t a1, void *a2)
{
  v3 = [a2 shortcutIdentifier];
  v4 = [*(a1 + 32) identifier];
  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:v4];
  }

  return v5;
}

uint64_t sub_100CA2970(uint64_t a1, void *a2)
{
  v3 = [a2 shortcutIdentifier];
  v4 = [*(a1 + 32) identifier];
  if (v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 isEqual:v4];
  }

  return v5;
}

void sub_100CA2CA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1000410AC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error moving shortcut: %@", &v6, 0xCu);
    }
  }

  v5 = [*(a1 + 40) delegate];
  [v5 sectionController:*(a1 + 40) setNeedsApplySnapshotAnimated:1];
}

void sub_100CA2D70(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_1000410AC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error moving shortcut: %@", &v5, 0xCu);
    }
  }
}

void sub_100CA36D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CA36F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endEditSession];
}

void sub_100CA48E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *location, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a31);
  objc_destroyWeak(location);
  objc_destroyWeak((v32 - 168));
  _Unwind_Resume(a1);
}

void sub_100CA49C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteSnapshot:*(a1 + 32)];
}

void sub_100CA4A10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteSnapshot:*(a1 + 32)];
}

void sub_100CA4A60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _editEntrySnapshot:*(a1 + 32)];
}

void sub_100CA4AB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openSnapshot:*(a1 + 32) inNewTab:1];
}

void sub_100CA4B04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openSnapshot:*(a1 + 32) inNewTab:0];
}

void sub_100CA4B58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteSnapshot:*(a1 + 32)];
}

id sub_100CA4F70(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) identifierCache];
    v5 = [v4 identifierForObject:v3];
  }

  else
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "[HomeOutlineFavoritesSectionController itemSnapshots]_block_invoke";
      v12 = 2080;
      v13 = "HomeOutlineFavoritesSectionController.m";
      v14 = 1024;
      v15 = 131;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v10, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }

    v5 = 0;
  }

  return v5;
}

TwoLinesMapsFavoriteItemOutlineCellModel *sub_100CA5120(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [SidebarOutlineCellBackgroundModel alloc];
    v6 = [*(a1 + 32) delegate];
    v7 = [v6 isCollectionViewFocusedWithSectionController:*(a1 + 32)];
    v8 = [*(a1 + 32) delegate];
    v9 = [v8 isCollectionViewProxyFocusedWithSectionController:*(a1 + 32)];
    v10 = [*(a1 + 32) delegate];
    v11 = -[SidebarOutlineCellBackgroundModel initWithStyle:dropStyle:grouping:collectionViewFocused:collectionViewProxyFocused:collectionViewHasDropSession:](v5, "initWithStyle:dropStyle:grouping:collectionViewFocused:collectionViewProxyFocused:collectionViewHasDropSession:", 0, 0, 1, v7, v9, [v10 hasCollectionViewDropSessionWithSectionController:*(a1 + 32)]);

    v12 = 0;
    if ([*(a1 + 32) _shouldShowAccessoryForFavorite:v4])
    {
      v13 = -[TwoLineOutlineCellButtonAccessoryModel initWithAccessoryType:visibility:delegate:]([TwoLineOutlineCellButtonAccessoryModel alloc], "initWithAccessoryType:visibility:delegate:", 1, [*(a1 + 32) _accessoryVisiblityForFavorite:v4], *(a1 + 32));
      v24 = v13;
      v12 = [NSArray arrayWithObjects:&v24 count:1];
    }

    v14 = [[TwoLinesMapsFavoriteItemOutlineCellModel alloc] initWithMapsFavoriteItem:v4 accessoryModels:v12 backgroundModel:v11];

LABEL_11:
    goto LABEL_13;
  }

  v15 = sub_10006D178();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v18 = 136315650;
    v19 = "[HomeOutlineFavoritesSectionController itemSnapshots]_block_invoke";
    v20 = 2080;
    v21 = "HomeOutlineFavoritesSectionController.m";
    v22 = 1024;
    v23 = 158;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v18, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v4 = sub_10006D178();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v16 = +[NSThread callStackSymbols];
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
    }

    v14 = 0;
    goto LABEL_11;
  }

  v14 = 0;
LABEL_13:

  return v14;
}

void sub_100CA65A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100CA65CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained chromeViewController];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 setHardwareBackButtonBehavior:0 forContext:v3];
}

void sub_100CA6864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100CA687C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_100CA6C78(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained chromeViewController];
  v8 = [v7 isCurrentContext:WeakRetained];

  if (v8)
  {
    v9 = [WeakRetained chromeViewController];
    v10 = MapsExternalDeviceHandoffResultStringForAnalytics(v5);
    [v9 captureUserAction:9020 onTarget:1009 eventValue:v10];

    v11 = sub_100006E1C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      if (a2)
      {
        v12 = @"YES";
      }

      v13 = v12;
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "SAR: handoff complete with success: %@, error: %@", &v17, 0x16u);
    }

    if (a2)
    {
      v14 = +[CarChromeModeCoordinator sharedInstance];
      [v14 displayMapBrowsing];
    }

    else
    {
      v14 = +[UIApplication sharedMapsDelegate];
      v16 = CarInterruptionUserInfoForDestinationHandoffFailure(*(a1 + 32), v5);
      [v14 interruptApplicationWithKind:3 userInfo:v16 completionHandler:0];
    }
  }

  else
  {
    v14 = sub_100006E1C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = @"stopped being currentMode.";
      if (!WeakRetained)
      {
        v15 = @"deallocated";
      }

      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "SAR: mode %@ in the middle of destination handoff. Ignoring the handoff completion.", &v17, 0xCu);
    }
  }
}

void sub_100CA795C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained _labelMarkerForCustomFeatureAnnotation:v3];

    if (v5)
    {
      v6 = objc_loadWeakRetained((a1 + 40));
      [v6 _selectLabelMarker:v5 animated:1];
LABEL_6:

      goto LABEL_10;
    }

    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) name];
      v9 = 138477827;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "SAR: tried to highlight mapItem %{private}@, but labelMarker for annotation was nil.", &v9, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) name];
      v9 = 138477827;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "SAR: tried to highlight mapItem %{private}@, but its annotation was nil.", &v9, 0xCu);
      goto LABEL_6;
    }
  }

LABEL_10:
}

void sub_100CA82C8(uint64_t a1)
{
  if (![*(*(a1 + 32) + 32) count])
  {
    v2 = [*(a1 + 32) category];

    if (v2)
    {
      [*(a1 + 32) _fetchCategoryResults];
    }
  }

  v3 = [*(a1 + 32) chromeViewController];
  v4 = [v3 mapView];
  [v4 _setApplicationState:2];

  v5 = [*(a1 + 32) chromeViewController];
  [v5 setHardwareBackButtonBehavior:0 forContext:*(a1 + 32)];

  v6 = [*(a1 + 32) category];

  if (v6)
  {
    v7 = +[MKLocationManager sharedLocationManager];
    [v7 startLocationUpdateWithObserver:*(a1 + 32)];
  }

  if ([*(*(a1 + 32) + 32) count] == 1)
  {
    v8 = *(a1 + 32);
    v9 = [v8[4] firstObject];
    [v8 _displayPlaceCardForSearchResult:v9];
  }
}

void sub_100CA8408(uint64_t a1)
{
  v4 = [*(a1 + 32) searchSession];
  if ([v4 isLoading])
  {
  }

  else
  {
    v2 = [*(*(a1 + 32) + 32) count];

    if (v2)
    {
      v3 = *(a1 + 32);

      [v3 _displayMapItems];
    }
  }
}

void sub_100CA851C(uint64_t a1)
{
  v2 = [NavigationCustomFeaturesSource alloc];
  v8 = [*(a1 + 32) carChromeViewController];
  v3 = [v8 navigationDisplay];
  v4 = [v3 cameraController];
  v5 = [(NavigationCustomFeaturesSource *)v2 initWithPointsFramer:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;
}

void sub_100CAA254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CAA280(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v24 = WeakRetained;
    v25 = +[NSMutableArray array];
    v23 = (*(*(a1 + 32) + 16))();
    [v23 sortedArrayUsingComparator:&stru_1016501F8];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = v29 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v5)
    {
      goto LABEL_21;
    }

    v6 = v5;
    v7 = *v27;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v9;
          v12 = [v11 mapItemStorage];
          v13 = [v11 customName];

          if (v13)
          {
            if (([v12 hasUserValues] & 1) == 0)
            {
              v14 = objc_alloc_init(GEOMapItemStorageUserValues);
              [v12 setUserValues:v14];
            }

            v15 = [v11 customName];
            v16 = [v12 userValues];
            [v16 setName:v15];
          }

          if (v12)
          {
            [v25 addObject:v12];
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_19;
          }

          v17 = v9;
          v18 = [MSPTransitStorageLine alloc];
          v19 = [v17 transitLineStorage];

          v11 = [v18 initWithData:v19];
          if (v11)
          {
            [v25 addObject:v11];
          }
        }

LABEL_19:
        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v6)
      {
LABEL_21:

        v20 = [v25 copy];
        v3 = v24;
        [v24 setContent:v20];

        v21 = [v24 content];
        v22 = [v21 copy];
        [v24 setOriginalContent:v22];

        [v24 loadImage];
        [v24 updateSorting];

        break;
      }
    }
  }
}

int64_t sub_100CAA57C(id a1, MSCollectionItem *a2, MSCollectionItem *a3)
{
  v4 = a3;
  v5 = [(MSCollectionItem *)a2 createTime];
  v6 = [(MSCollectionItem *)v4 createTime];

  v7 = [v5 compare:v6];
  return v7;
}

intptr_t sub_100CAA708(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 16);

  return dispatch_semaphore_signal(v2);
}

void sub_100CAA750(void *a1)
{
  objc_begin_catch(a1);
  dispatch_semaphore_signal(*(*(v1 + 32) + 16));
  objc_exception_rethrow();
}

void sub_100CAA8A0(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithMaxConcurrentTasks:20];
  v2 = qword_10195EE88;
  qword_10195EE88 = v1;
}

void sub_100CAF41C(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v4)
    {
      [WeakRetained setHasDefaultImage:0];
      [WeakRetained setCachedImage:v4];
      [WeakRetained notifyObserversInfoUpdated];
    }

    else
    {
      [WeakRetained loadDefaultImage];
    }
  }
}

void sub_100CAF4A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained loadDefaultImage];
  }
}

void sub_100CAF8B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v6 = GEOErrorDomain();
    v5 = [NSError errorWithDomain:v6 code:-8 userInfo:0];
    (*(v2 + 16))(v2, 0, v5);
  }
}

void sub_100CAFA5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100CAFA80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) updateSorting];
    WeakRetained = v3;
  }
}

uint64_t sub_100CAFAD4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = -1;
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      [v4 coordinate];
      GEOCalculateDistance();
      v9 = v8;
      [v7 coordinate];

      GEOCalculateDistance();
      if (v9 >= v10)
      {
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

int64_t sub_100CAFBC4(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v5;
    v7 = [MKMapItem _itemWithGeoMapItem:v4];
    v8 = [v7 name];

    v9 = [MKMapItem _itemWithGeoMapItem:v6];

    v10 = [v9 name];

    v11 = [v8 localizedCaseInsensitiveCompare:v10];
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

void sub_100CAFEAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100CAFED0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    if (*(v3 + 32) != v4)
    {
      *(v3 + 32) = v4;
      v5 = WeakRetained;
      [*(a1 + 32) _storeSortType];
      [*(a1 + 32) updateSorting];
      WeakRetained = v5;
    }
  }
}

void sub_100CB2CC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_100CB5580(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateCommitBarItem];

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void sub_100CB629C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CB62C4(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained + 8;
    [v8 selectedCoordinate];
    *v5 = v6;
    v4[9] = v7;
    [v4 _updateDoneBarItem];
  }
}

void sub_100CB6B20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100CB6B3C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained setLookupResult:v5];
      v8 = [v5 previousSubmission];
      v9 = [v8 images];
      v10 = [v9 objectAtIndexedSubscript:0];

      v11 = [v5 previousSubmission];
      v12 = [v11 images];
      v13 = [v12 count];

      v14 = [v10 url];
      v15 = [v14 length];

      if (v15)
      {
        v16 = [v10 url];
        v17 = [[NSURL alloc] initWithString:v16];
        [v7 setFirstPhotoURL:v17];
      }

      else
      {
        v18 = sub_1007996E8();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v24 = 138412290;
          v25 = v10;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Image contains a nil or empty URL. Image: %@.", &v24, 0xCu);
        }

        v16 = 0;
      }

      v19 = sub_1007996E8();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Fetched Image, imageURL: %@", &v24, 0xCu);
      }

      v20 = [v10 imageId];
      [v7 setFirstPhotoID:v20];

      v21 = *(a1 + 32);
      v22 = [v7 firstPhotoURL];
      v23 = [v10 imageId];
      (*(v21 + 16))(v21, v22, v23, v13);
    }
  }
}

void sub_100CB70EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained callToActionViewProviderDidFinishResolvingEditState:*(a1 + 32)];
}

void sub_100CB7140(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained callToActionViewProviderDidFinishResolvingEditState:*(a1 + 32)];
}

void sub_100CB7344(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100CB7378(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CB757C;
  block[3] = &unk_101661480;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v12);
}

void sub_100CB7450(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CB7528;
  block[3] = &unk_101661480;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v12);
}

void sub_100CB7528(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleLookupSubmissionCompletion:*(a1 + 32) lookupError:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void sub_100CB757C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleLookupSubmissionCompletion:*(a1 + 32) lookupError:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void sub_100CB78E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CB790C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (MapsFeature_IsEnabled_SydneyARP())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      if ([v5 numberOfPhotosAdded])
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_100CB7A74;
        v8[3] = &unk_101650270;
        objc_copyWeak(&v11, (a1 + 40));
        v10 = *(a1 + 32);
        v12 = a2;
        v9 = v5;
        [WeakRetained _retrievePhotoURLWithCompletion:v8];

        objc_destroyWeak(&v11);
      }

      else
      {
        v7 = objc_loadWeakRetained(WeakRetained + 1);
        [v7 callToActionViewProviderDidUpdateWithPreferredUserUploadedPhoto:0 photoID:0 numberOfPhotos:0];

        (*(*(a1 + 32) + 16))();
      }
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100CB7A74(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v10)
    {
      v9 = objc_loadWeakRetained(WeakRetained + 1);
      [v9 callToActionViewProviderDidUpdateWithPreferredUserUploadedPhoto:v10 photoID:v7 numberOfPhotos:a4];
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100CB7DA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_100CB7DC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained callToActionViewProviderDidFinishResolvingEditState:*(a1 + 32)];
}

void sub_100CB7E18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setHasUserAlreadyRatedThisPlace:a2];
    if ([v7 hasUserAlreadyRatedThisPlace])
    {
      v8 = sub_1007996E8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "The user has reviewed this POI", buf, 2u);
      }

      if (![v5 hasCachedValues] || (objc_msgSend(v7, "alwaysRefinesUserSubmission") & 1) != 0)
      {
        [v7 refineUserSubmissionForMapItem:v7[2]];
        goto LABEL_10;
      }

      v10 = sub_1007996E8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "We have valid cached values for this POI.  Early return.", buf, 2u);
      }

      [v7 setNumberOfPhotosAddedForSubmission:{objc_msgSend(v5, "numberOfPhotosAdded")}];
      [v7 setCurrentRatingCategoryState:{objc_msgSend(v5, "recommendState")}];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_100CB8290;
      v19 = &unk_101661B18;
      v20 = v7;
      v9 = &v16;
    }

    else
    {
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_100CB82E4;
      v14 = &unk_101661B18;
      v15 = v7;
      v9 = &v11;
    }

    [v7 _finishResolvingWithBlock:{v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20}];
  }

LABEL_10:
}

void sub_100CB8000(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setHasUserAlreadyRatedThisPlace:a2];
    if ([v7 hasUserAlreadyRatedThisPlace])
    {
      v8 = sub_1007996E8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "The user has reviewed this POI", buf, 2u);
      }

      if (![v5 hasCachedValues] || (objc_msgSend(v7, "alwaysRefinesUserSubmission") & 1) != 0)
      {
        [v7 refineUserSubmissionForMapItem:v7[2]];
        goto LABEL_10;
      }

      v10 = sub_1007996E8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "We have valid cached values for this POI.  Early return.", buf, 2u);
      }

      [v7 setNumberOfPhotosAddedForSubmission:{objc_msgSend(v5, "numberOfPhotosAdded")}];
      [v7 setCurrentRatingCategoryState:{objc_msgSend(v5, "recommendState")}];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_100CB81E8;
      v19 = &unk_101661B18;
      v20 = v7;
      v9 = &v16;
    }

    else
    {
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_100CB823C;
      v14 = &unk_101661B18;
      v15 = v7;
      v9 = &v11;
    }

    [v7 _finishResolvingWithBlock:{v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20}];
  }

LABEL_10:
}

void sub_100CB81E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained callToActionViewProviderInitialLoadingStateDidChange:*(a1 + 32)];
}

void sub_100CB823C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained callToActionViewProviderDidFinishResolvingEditState:*(a1 + 32)];
}

void sub_100CB8290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained callToActionViewProviderInitialLoadingStateDidChange:*(a1 + 32)];
}

void sub_100CB82E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained callToActionViewProviderDidFinishResolvingEditState:*(a1 + 32)];
}

void sub_100CBBCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100CBBCB8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 headsign];
  v10 = [v8 headsign];

  LODWORD(v8) = [v9 isEqualToString:v10];
  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_100CBBF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100CBBF3C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isPastDeparture];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_100CBC0C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 tripIdentifier] == *(a1 + 40))
  {
    if (*(a1 + 32))
    {
      v4 = [v3 scheduledDepartureDate];
      if (v4)
      {
        v5 = [v3 scheduledDepartureDate];
        v6 = [v5 isEqualToDate:*(a1 + 32)];
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100CBC5E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 headsign];

  if (v4)
  {
    v5 = [v3 departures];
    v6 = *(*(a1 + 32) + 48);
    v7 = [v3 headsign];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = [v5 firstObject];
    v10 = [v9 liveStatus];

    if (v10 == 1)
    {
      v45 = v3;
      v11 = +[NSMutableSet set];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v44 = v5;
      v12 = v5;
      v13 = [v12 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v51;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v51 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(*(&v50 + 1) + 8 * i) tripIdentifier]);
            [v11 addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v50 objects:v58 count:16];
        }

        while (v14);
      }

      v43 = v12;

      v18 = +[NSMutableArray array];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v19 = v8;
      v20 = [v19 countByEnumeratingWithState:&v46 objects:v57 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v47;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v47 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v46 + 1) + 8 * j);
            v25 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 tripIdentifier]);
            v26 = [v11 containsObject:v25];

            if ((v26 & 1) == 0)
            {
              [v18 addObject:v24];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v46 objects:v57 count:16];
        }

        while (v21);
      }

      v27 = [v18 count];
      v28 = sub_100798DBC();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
      v3 = v45;
      if (v27)
      {
        v30 = a1;
        if (v29)
        {
          *buf = 138412290;
          v56 = v18;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Merging past departures %@", buf, 0xCu);
        }

        v31 = [*(*(a1 + 32) + 40) arrayByAddingObject:v45];
        v32 = *(a1 + 32);
        v33 = *(v32 + 40);
        *(v32 + 40) = v31;

        v34 = [v18 arrayByAddingObjectsFromArray:v43];
      }

      else
      {
        v30 = a1;
        if (v29)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "No past departures to merge; using server values", buf, 2u);
        }

        v54 = v45;
        v38 = [NSArray arrayWithObjects:&v54 count:1];
        v39 = *(a1 + 32);
        v40 = *(v39 + 40);
        *(v39 + 40) = v38;

        v34 = [v43 copy];
      }

      v8 = v34;

      v41 = *(*(v30 + 32) + 48);
      v42 = [v45 headsign];
      [v41 setObject:v8 forKeyedSubscript:v42];

      v5 = v44;
    }

    else
    {
      v35 = [v5 copy];
      v36 = *(*(a1 + 32) + 48);
      v37 = [v3 headsign];
      [v36 setObject:v35 forKeyedSubscript:v37];
    }
  }
}

uint64_t sub_100CBCB44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 departures];
  v5 = [v4 firstObject];

  if (v5 && ([v5 departureDate], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceDate:", *(a1 + 32)), v8 = v7, v6, v8 < 0.0))
  {
    v9 = 1;
  }

  else
  {
    v9 = [v3 isValidForDate:*(a1 + 32) inTimeZone:*(*(a1 + 40) + 72)];
  }

  return v9;
}

void sub_100CBCD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CBCDAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v4 count])
    {
      [WeakRetained setRemoteNetworkState:1];
      [WeakRetained processDeparturesFromDepartureSequences:v4 animatingDifferences:0];
      [WeakRetained selectNextIncomingDeparture];
    }

    else
    {
      v6 = WeakRetained[2];
      v7 = WeakRetained[3];
      v8 = [WeakRetained scheduleWindowStartDate];
      v9 = [v8 description];

      v10 = sub_100798DBC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = 134218498;
        v12 = v7;
        v13 = 2112;
        v14 = v6;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "No departures for lineId %llu from %@ at %@", &v11, 0x20u);
      }

      [WeakRetained setRemoteNetworkState:3];
    }
  }
}

void sub_100CBD0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CBD0FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_100798DBC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v6 description];
        v10 = WeakRetained[1];
        *buf = 138412546;
        v25 = v9;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error %@ for stationId %@", buf, 0x16u);
      }
    }

    v11 = [v5 firstObject];
    v12 = [v11 _transitInfo];
    v13 = [v12 departureSequences];

    v14 = sub_100798DBC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [v13 count];
      v16 = WeakRetained[1];
      *buf = 134218242;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Received %lu departureSequences for stationId %@", buf, 0x16u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100CBD338;
    block[3] = &unk_1016605F8;
    v17 = *(a1 + 32);
    v22 = v13;
    v23 = v17;
    v21 = v11;
    v18 = v13;
    v19 = v11;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100CBD338(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) _transitInfo];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void sub_100CBD70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100CBD72C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100CBD744(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  v7 = [v6 departures];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100CBD818;
  v10[3] = &unk_1016503E0;
  v8 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v8;
  v11 = v6;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v10];

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void sub_100CBD818(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 tripIdentifier] == *(a1 + 48))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a1 + 32));
    *a4 = 1;
  }
}

void sub_100CC31C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_100CC31F8(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 40));
      [v5 setupWithModel:v7 cellStyle:WeakRetained[4]];

      v6 = [WeakRetained searchResultTableView];
      [v6 reloadData];
    }
  }
}

void sub_100CC4FEC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v22 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        if ([v11 conformsToProtocol:&OBJC_PROTOCOL___MSPHistoryEntryRoute])
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v13)
        {
          v14 = objc_alloc(*(a1 + 40));
          v15 = [v13 storageIdentifier];
          v16 = [v22 objectForKeyedSubscript:v15];
          v17 = [v14 initWithHistoryItem:v13 recording:v16];

          [v5 addObject:v17];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v18 = v6;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CC522C;
  block[3] = &unk_101661090;
  v19 = *(a1 + 32);
  v24 = v5;
  v25 = v19;
  v20 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100CC5790(uint64_t a1, void *a2, void *a3)
{
  v21 = a1;
  v4 = a2;
  v22 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        if ([v11 conformsToProtocol:{&OBJC_PROTOCOL___MSPHistoryEntryRoute, v21}])
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if ([v13 transportType] - 6 >= 0xFFFFFFFFFFFFFFFBLL && v13 != 0)
        {
          v15 = [HistoryRAPUserDirectionRequest alloc];
          v16 = [v13 storageIdentifier];
          v17 = [v22 objectForKeyedSubscript:v16];
          v18 = [(HistoryRAPUserDirectionRequest *)v15 initWithHistoryItem:v13 recording:v17];

          [v5 addObject:v18];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CC59E0;
  block[3] = &unk_101661090;
  v19 = *(v21 + 32);
  v24 = v5;
  v25 = v19;
  v20 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100CC5D54(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v22 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 storageIdentifier];
        v12 = [v5 objectForKeyedSubscript:v11];

        v13 = [v12 correctedSearchTemplate];
        if ([v13 containsReportableData])
        {
          v14 = [[HistoryEntryRecentsItem alloc] initWithHistoryEntry:v10];
          if ([v12 hasOriginatingAuxiliaryControlIndex])
          {
            v15 = [v12 originatingAuxiliaryControlIndex];
          }

          else
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v16 = [HistoryRAPUserSearch alloc];
          v17 = [v12 auxiliaryControls];
          v18 = [(HistoryRAPUserSearch *)v16 initWithHistoryItem:v14 correctedSearchTemplate:v13 auxiliaryControls:v17 originatingIndex:v15];

          [v22 addObject:v18];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CC5FD4;
  block[3] = &unk_101661090;
  v19 = *(a1 + 32);
  v25 = v22;
  v26 = v19;
  v20 = v22;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100CC71B0(uint64_t a1)
{
  v2 = [*(a1 + 32) glyph];
  [v2 setHidden:0];

  [*(a1 + 40) removeFromSuperlayer];
  [*(a1 + 32) setAnimationLayer:0];
  v3 = *(a1 + 32);

  return [v3 setContentLayer:0];
}

id sub_100CC85A0(uint64_t a1)
{
  v2 = [*(a1 + 32) glyph];
  [v2 setHidden:0];

  [*(a1 + 40) removeFromSuperlayer];
  [*(a1 + 32) setAnimationLayer:0];
  v3 = *(a1 + 32);

  return [v3 setContentLayer:0];
}

void sub_100CC87C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100CC87DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    (*(WeakRetained[1] + 16))();
    WeakRetained = v2;
  }
}

void sub_100CC9310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CC933C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 rateThisPlaceCellWasTapped:v3];

    WeakRetained = v3;
  }
}

void sub_100CC9E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CC9E9C(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v11 firstObject];
    v5 = objc_alloc_init(RAPSearchAutocompleteResult);
    v6 = [WeakRetained navigationItem];
    v7 = [v6 searchController];
    v8 = [v7 searchBar];
    v9 = [v8 text];
    [(RAPSearchAutocompleteResult *)v5 setSearchBarText:v9];

    [(RAPSearchAutocompleteResult *)v5 setSelectedMapItem:v4];
    v10 = objc_loadWeakRetained(WeakRetained + 8);
    [v10 rapSearchAutocompleteViewController:WeakRetained finishedPickingAutocompleteResult:v5 isAutocompleteResult:1];

    [WeakRetained _dismissViewController];
  }
}

void sub_100CCA1A8(uint64_t a1)
{
  v2 = [*(a1 + 32) traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 5)
  {
    v7 = [*(a1 + 32) navigationItem];
    v4 = [v7 searchController];
    v5 = [v4 searchBar];
    v6 = [v5 searchTextField];
    [v6 becomeFirstResponder];
  }
}

id sub_100CCB3A4()
{
  if (qword_10195EEA0 != -1)
  {
    dispatch_once(&qword_10195EEA0, &stru_101650608);
  }

  v1 = qword_10195EE98;

  return v1;
}

void sub_100CCB3F8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFScanningInstructionLabel");
  v2 = qword_10195EE98;
  qword_10195EE98 = v1;
}

void sub_100CCD5E8(id *a1)
{
  [a1[4] timeIntervalSinceReferenceDate];
  v3 = v2;
  [a1[5] timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = sub_10079914C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [a1[6] debugString];
    *buf = 138412802;
    v13 = v7;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Logging element did exit %@ with start date %f, end date %f", buf, 0x20u);
  }

  v8 = [a1[6] customData];
  v9 = [a1[6] sessionIdentifier];
  v10 = [v8 query];
  LODWORD(v11) = 2;
  +[GEOAPPortal captureSearchResultImpressionEventWithImpressionObjectId:query:businessId:localSearchProviderId:elementIndex:isEnriched:impressionEvent:impressionVisibleTimestamp:impressionNonvisibleTimestamp:](GEOAPPortal, "captureSearchResultImpressionEventWithImpressionObjectId:query:businessId:localSearchProviderId:elementIndex:isEnriched:impressionEvent:impressionVisibleTimestamp:impressionNonvisibleTimestamp:", v9, v10, [v8 businessId], objc_msgSend(v8, "localSearchProviderId"), objc_msgSend(v8, "resultIndex"), objc_msgSend(v8, "isEnriched"), v3, v5, v11);
}

void sub_100CCD858(uint64_t a1)
{
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = sub_10079914C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 40) debugString];
    *buf = 138412546;
    v11 = v5;
    v12 = 2048;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Logging element did enter %@ with start date %f", buf, 0x16u);
  }

  v6 = [*(a1 + 40) customData];
  v7 = [*(a1 + 40) sessionIdentifier];
  v8 = [v6 query];
  LODWORD(v9) = 1;
  +[GEOAPPortal captureSearchResultImpressionEventWithImpressionObjectId:query:businessId:localSearchProviderId:elementIndex:isEnriched:impressionEvent:impressionVisibleTimestamp:impressionNonvisibleTimestamp:](GEOAPPortal, "captureSearchResultImpressionEventWithImpressionObjectId:query:businessId:localSearchProviderId:elementIndex:isEnriched:impressionEvent:impressionVisibleTimestamp:impressionNonvisibleTimestamp:", v7, v8, [v6 businessId], objc_msgSend(v6, "localSearchProviderId"), objc_msgSend(v6, "resultIndex"), objc_msgSend(v6, "isEnriched"), v3, 0.0, v9);
}

void sub_100CCF34C(id a1, NSMutableArray *a2, NSString *a3, NSString *a4)
{
  v9 = a2;
  v6 = a3;
  v7 = a4;
  if ([(NSString *)v7 length])
  {
    v8 = [NSURLQueryItem queryItemWithName:v6 value:v7];
    [(NSMutableArray *)v9 addObject:v8];
  }
}

id sub_100CD0408(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 currencyCode];
  if (!v4 || ([*(a1 + 32) containsObject:v4] & 1) != 0)
  {
    goto LABEL_3;
  }

  if (([*(a1 + 40) containsObject:v4] & 1) == 0)
  {
    v6 = +[NSLocale ISOCurrencyCodes];
    v7 = [v6 containsObject:v4];

    if (!v7)
    {
      [*(a1 + 32) addObject:v4];
LABEL_3:
      v5 = 0;
      goto LABEL_15;
    }

    [*(a1 + 40) addObject:v4];
  }

  v8 = [v3 price];
  if (v8)
  {
    v9 = [NSString _navigation_formattedStringForPriceValueWithAmount:v8 currencyCode:v4];
    if (v9)
    {
      v10 = [RidesharingFareLineItem alloc];
      v11 = [v3 title];
      v5 = [(RidesharingFareLineItem *)v10 _initWithTitle:v11 details:v9];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_15:

  return v5;
}

void sub_100CD1E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100CD1E48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _activityTitle];

  return v2;
}

id sub_100CD1E94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained shareStateProvider];
  v3 = [v2 fullSharingURL];

  return v3;
}

id sub_100CD25CC()
{
  if (qword_10195EEC0 != -1)
  {
    dispatch_once(&qword_10195EEC0, &stru_1016507C0);
  }

  v1 = qword_10195EEB8;

  return v1;
}

void *sub_100CD2620(void *result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [MapsSavedRoutesManager deleteRouteStorageID:result[4] completion:0];
  }

  return result;
}

void sub_100CD2644(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsInterruptionDisplay");
  v2 = qword_10195EEB8;
  qword_10195EEB8 = v1;
}

void sub_100CD2710(uint64_t a1)
{
  v11 = +[NSUserDefaults standardUserDefaults];
  if (([v11 BOOLForKey:@"HasShownNavModeAdvisory2020"] & 1) == 0)
  {
    v2 = +[UIApplication sharedMapsDelegate];
    [v2 interruptApplicationWithKind:1 userInfo:0 completionHandler:0];

    [v11 setBool:1 forKey:@"HasShownNavModeAdvisory2020"];
    [v11 synchronize];
    v3 = objc_opt_new();
    v4 = [NSSet setWithObject:@"HasShownNavModeAdvisory2020"];
    [v3 synchronizeUserDefaultsDomain:@"com.apple.Maps" keys:v4 container:@"com.apple.Maps"];

    v5 = +[IPCServer sharedServer];
    [v5 setNeedsToDisplaySafetyWarning];

    v6 = [*(a1 + 32) platformController];
    v7 = [v6 currentSession];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [v9 navigationStateMonitoringTask];
      [v10 cancelNavigationAutoLaunchIfNeccessary];
    }
  }
}

void sub_100CD2C34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100CD2C80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupAfterLocationServicesAlertController];

  v2 = +[MKLocationManager sharedLocationManager];
  [v2 requestTemporaryPreciseLocationAuthorizationWithPurposeKey:@"AppInfoTemporaryPreciseLocationAuthorizationForMapBrowsingPurposeKey" completion:0];
}

void sub_100CD2CF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cleanupAfterLocationServicesAlertController];

  if (*(a1 + 48))
  {
    v3 = +[MKMapService sharedService];
    [v3 captureUserAction:62 onTarget:*(a1 + 48) eventValue:0];
  }

  v5 = [*(a1 + 32) _mapkit_locationErrorSettingsURL];
  v4 = +[UIApplication sharedApplication];
  [v4 _maps_openURL:v5 options:0 completionHandler:0];
}

void sub_100CD2DA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupAfterLocationServicesAlertController];

  if (*(a1 + 40))
  {
    v3 = +[MKMapService sharedService];
    [v3 captureUserAction:59 onTarget:*(a1 + 40) eventValue:0];
  }
}

void sub_100CD31B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CD31E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cleanupAfterLocationServicesAlertController];

  if (*(a1 + 48))
  {
    v3 = +[MKMapService sharedService];
    [v3 captureUserAction:62 onTarget:*(a1 + 48) eventValue:0];
  }

  v5 = [*(a1 + 32) _mapkit_locationErrorSettingsURL];
  v4 = +[UIApplication sharedApplication];
  [v4 _maps_openURL:v5 options:0 completionHandler:0];
}

void sub_100CD329C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupAfterLocationServicesAlertController];

  if (*(a1 + 40))
  {
    v3 = +[MKMapService sharedService];
    [v3 captureUserAction:59 onTarget:*(a1 + 40) eventValue:0];
  }
}

uint64_t sub_100CD37AC(uint64_t a1)
{
  v2 = +[MKLocationManager sharedLocationManager];
  [v2 isLocationServicesApproved];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100CD41F4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 240), 8);
  _Unwind_Resume(a1);
}

id sub_100CD424C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100CD4280(uint64_t a1, unint64_t a2)
{
  v4 = [*(a1 + 32) _currentInterruptionHandle];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    [*(a1 + 32) _setCurrentInterruptionHandle:0];
  }

  v6 = *(*(a1 + 80) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    if ([*(a1 + 48) count] && objc_msgSend(*(a1 + 48), "count") > a2)
    {
      v7 = [*(a1 + 48) objectAtIndexedSubscript:a2];
      [v7 fire];
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      (*(v8 + 16))(v8, a2);
    }

    [*(a1 + 56) setDismissalBlock:0];
    v9 = *(a1 + 64);

    [v9 setDismissalBlock:0];
  }
}

void sub_100CD4374(uint64_t a1, uint64_t a2)
{
  v8 = [*(a1 + 32) dismissalBlock];
  v4 = [*(a1 + 40) dismissalBlock];
  if (v8)
  {
    v8[2](v8, a2);
  }

  if (v4)
  {
    v4[2](v4, a2);
  }

  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, -1);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

void sub_100CD4444(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) dismissalBlock];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v8 = v4;
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    v4 = v8;
  }

  if (v4)
  {
    v4[2](v4, 1);
    v4 = v8;
  }
}

void sub_100CD44E8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) dismissalBlock];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v8 = v4;
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    v4 = v8;
  }

  if (v4)
  {
    v4[2](v4, 1);
    v4 = v8;
  }
}

void sub_100CD5808(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) allValues];
    v62 = objc_opt_new();
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v69;
      v60 = GEOConfigMapsSuggestionsRidesharingUpcomingInitialWeight[1];
      v61 = GEOConfigMapsSuggestionsRidesharingUpcomingInitialWeight[0];
      v63 = v4;
      v67 = *v69;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v69 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v68 + 1) + 8 * i);
          v10 = WeakRetained[3];
          v11 = [v9 application];
          v12 = [v11 identifier];
          [v10 registerBundleID:v12 withSource:WeakRetained];

          v13 = WeakRetained[3];
          v14 = [v9 application];
          v15 = [v14 identifier];
          LOBYTE(v13) = [v13 isBundleIDLocked:v15 forSource:WeakRetained];

          if ((v13 & 1) == 0)
          {
            v16 = [v9 application];
            v17 = [v16 identifier];
            v18 = [MapsSuggestionsSiri canLearnFromBundleID:v17];

            if (v18)
            {
              if ([v9 isValidRide])
              {
                v19 = v9;
                if ([v19 isCanceledByUser])
                {

                  v20 = 0;
                }

                else
                {
                  v21 = [v19 trayTitle];
                  v22 = [v19 traySubtitle];
                  GEOConfigGetDouble();
                  v24 = v23;
                  v25 = [v19 estimatedDropOffDate];
                  GEOConfigGetDouble();
                  v26 = [v25 dateByAddingTimeInterval:?];

                  if (!v26)
                  {
                    GEOConfigGetDouble();
                    v26 = MapsSuggestionsNowWithOffset();
                  }

                  v66 = v21;
                  v64 = v26;
                  v20 = [MapsSuggestionsEntry entryWithType:9 title:v21 subtitle:v22 weight:v26 expires:0 sourceSpecificInfo:v24];
                  if ([v19 isScheduledRide])
                  {
                    v27 = +[NSCalendar autoupdatingCurrentCalendar];
                    v28 = [v19 scheduledPickupWindowStartDateComponents];
                    v29 = [v27 dateFromComponents:v28];

                    GEOConfigGetDouble();
                    v31 = v30;
                    v32 = MapsSuggestionsNow();
                    [v32 timeIntervalSinceDate:v29];
                    v34 = v33;

                    GEOConfigGetDouble();
                    [v20 setWeight:?];
                    if (v34 >= v31)
                    {
                      [v20 setBoolean:1 forKey:@"MapsSuggestionsIsNotADestinationKey"];
                    }

                    v4 = v63;
                  }

                  v65 = v22;
                  [v20 setNumber:&off_1016E9650 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];
                  v35 = [v19 identifier];
                  [v20 setString:v35 forKey:@"MapsSuggestionsRideBookingRideIDKey"];

                  v36 = [v19 application];
                  v37 = [v36 identifier];
                  [v20 setString:v37 forKey:@"MapsSuggestionsOriginBundleIDKey"];

                  [v20 setString:@"MapsSuggestionsOriginBundleIDKey" forKey:@"MapsSuggestionsPrimaryKey"];
                  [v20 setBoolean:objc_msgSend(v19 forKey:{"isActiveRide"), @"MapsSuggestionsRidesharingIsActiveRideKey"}];
                  v38 = [v19 application];
                  v39 = [v38 identifier];

                  if (v39)
                  {
                    v40 = [NSSet alloc];
                    v41 = [v19 application];
                    v42 = [v41 identifier];
                    *buf = v42;
                    v43 = [NSArray arrayWithObjects:buf count:1];
                    v44 = [v40 initWithArray:v43];

                    v4 = v63;
                    [v20 setSet:v44 forKey:@"MapsSuggestionsAssociatedBundleIDsKey"];
                  }

                  if (([v19 isActiveRide] & 1) == 0)
                  {
                    [v20 setBoolean:1 forKey:@"MapsSuggestionsIsNotADestinationKey"];
                    GEOConfigGetDouble();
                    [v20 setWeight:?];
                  }

                  v45 = [v19 pickupLocation];

                  if (v45)
                  {
                    v46 = [v19 pickupLocation];
                    v47 = [v46 location];
                    [v47 coordinate];
                    v49 = v48;
                    v51 = v50;

                    v52 = [NSNumber numberWithDouble:v49];
                    [v20 setNumber:v52 forKey:@"MapsSuggestionsRidesharingPickupLocationLatitudeKey"];

                    v53 = [NSNumber numberWithDouble:v51];
                    [v20 setNumber:v53 forKey:@"MapsSuggestionsRidesharingPickupLocationLongitudeKey"];
                  }

                  if (v20)
                  {
                    [v62 addObject:v20];
                  }
                }

                v7 = v67;
              }
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v6);
    }

    [WeakRetained addOrUpdateMySuggestionEntries:v62];
    v54 = WeakRetained[2];
    if (v54)
    {
      (*(v54 + 16))();
      v55 = WeakRetained[2];
      WeakRetained[2] = 0;
    }

    v56 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      v57 = [WeakRetained uniqueName];
      *buf = 138412546;
      *&buf[4] = v57;
      v73 = 2080;
      v74 = "_updateRideBookingRideStatuses";
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
    }

    v58 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v58))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_updateRideBookingRideStatuses", "", buf, 2u);
    }
  }

  else
  {
    v59 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *v75 = 136446722;
      v76 = "MapsSuggestionsRidesharingSource.m";
      v77 = 1026;
      v78 = 236;
      v79 = 2082;
      v80 = "[MapsSuggestionsRidesharingSource rideStatusMapDidChange:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", v75, 0x1Cu);
    }
  }
}

void sub_100CD63CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_100CD640C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addOrUpdateMySuggestionEntries:&__NSArray0__struct];
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))();
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      v11[0] = "updateSuggestionEntries";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntries", "", &v8, 2u);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRidesharingSource.m";
      v10 = 1026;
      LODWORD(v11[0]) = 144;
      WORD2(v11[0]) = 2082;
      *(v11 + 6) = "[MapsSuggestionsRidesharingSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_100CD6628(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addOrUpdateMySuggestionEntries:&__NSArray0__struct];
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))();
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v3 uniqueName];
      v8 = 138412546;
      v9 = v6;
      v10 = 2080;
      v11[0] = "updateSuggestionEntries";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v8, 0x16u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v7))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntries", "", &v8, 2u);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRidesharingSource.m";
      v10 = 1026;
      LODWORD(v11[0]) = 149;
      WORD2(v11[0]) = 2082;
      *(v11 + 6) = "[MapsSuggestionsRidesharingSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_100CD6844(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = [v3 copy];
      v5 = WeakRetained[2];
      WeakRetained[2] = v4;
    }

    sub_10002CECC(WeakRetained);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "MapsSuggestionsRidesharingSource.m";
      v9 = 1026;
      v10 = 163;
      v11 = 2082;
      v12 = "[MapsSuggestionsRidesharingSource updateSuggestionEntriesWithHandler:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v7, 0x1Cu);
    }
  }
}

void sub_100CD6E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CD6E4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[RideBookingRideStatusObserverProxy alloc] initWithDelegate:WeakRetained];
    v3 = WeakRetained[6];
    WeakRetained[6] = v2;
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsRidesharingSource.m";
      v7 = 1026;
      v8 = 67;
      v9 = 2082;
      v10 = "[MapsSuggestionsRidesharingSource initFromResourceDepot:name:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_100CD6F74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = GEOFindOrCreateLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Executing _updateRideBookingRideStatuses because a cancellation triggered this", &v8, 2u);
    }

    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRidesharingSource.m");
      v6 = [[NSString alloc] initWithFormat:@"Force-Executing _updateRideBookingRideStatuses from MSgRideSharingSource because a cancellation triggered this"];
      v8 = 136315394;
      v9 = v5;
      v10 = 2112;
      v11[0] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", &v8, 0x16u);
    }

    sub_10002CECC(WeakRetained);
  }

  else
  {
    v7 = v2;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRidesharingSource.m";
      v10 = 1026;
      LODWORD(v11[0]) = 72;
      WORD2(v11[0]) = 2082;
      *(v11 + 6) = "[MapsSuggestionsRidesharingSource initFromResourceDepot:name:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }
  }
}

void sub_100CD86E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

id sub_100CD8730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _titleForMapActivity];

  return v2;
}

id sub_100CD877C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _sharingURLIncludingSensitiveParameters:a2];

  return v4;
}

id sub_100CD87D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _airdropURLJSON];

  return v2;
}

id sub_100CD881C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _annotationView];

  return v2;
}

void sub_100CD982C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [[NSURL alloc] initWithDataRepresentation:v6 relativeToURL:0];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100CD9E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100CD9E44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100CD9E5C(uint64_t a1, uint64_t a2)
{
  obj = 0;
  [SearchResult newStartWaypointSearchResult:0 endWaypointSearchResult:&obj forRouteHistoryEntry:a2];
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
}

void sub_100CD9EB4(uint64_t a1, void *a2)
{
  v3 = [a2 geoMapItem];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_100CDB2FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 hasAttributes] & 1) == 0)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v15 = 138543362;
      *&v15[4] = v3;
      v11 = "No attributes available; returning nil: %{public}@";
      v12 = v8;
      v13 = OS_LOG_TYPE_INFO;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, v15, 0xCu);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (GEOConfigGetBOOL() && [v3 poiType] == 225)
  {
    v4 = [v3 copy];

    [v4 replaceAttributes:v15 count:1];
    v3 = v4;
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 138543362;
    *&v15[4] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will fetch image for attributes: %{public}@", v15, 0xCu);
  }

  v6 = [MKIconManager imageForStyle:v3 size:4 forScale:0 format:*(a1 + 40) transparent:*(a1 + 41) nightMode:*(a1 + 32)];
  v7 = GEOFindOrCreateLog();
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v15 = 138543362;
      *&v15[4] = v3;
      v11 = "Failed to fetch image for attributes: %{public}@";
LABEL_21:
      v12 = v8;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_22;
    }

LABEL_23:

    v6 = 0;
    goto LABEL_24;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v15 = 138543362;
    *&v15[4] = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Successfully fetched image for attributes: %{public}@", v15, 0xCu);
  }

  if (*(a1 + 40) == 1)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 138543362;
      *&v15[4] = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Will invert image for attributes: %{public}@", v15, 0xCu);
    }

    v10 = [v6 _maps_invertedImage];

    if (v10)
    {
      v6 = v10;
      goto LABEL_24;
    }

    v8 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v15 = 138543362;
    *&v15[4] = v3;
    v11 = "Image inverting failed for attributes: %{public}@";
    goto LABEL_21;
  }

LABEL_24:

  return v6;
}

id sub_100CDB644(uint64_t a1)
{
  [*(a1 + 32) drawAtPoint:{CGPointZero.x, CGPointZero.y}];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  [*(a1 + 32) size];
  v6 = v5 - *(a1 + 48);
  [*(a1 + 32) size];
  v8 = v7 - *(a1 + 56);

  return [v4 drawInRect:{v2, v3, v6, v8}];
}

void sub_100CDB6E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

id sub_100CDB750(uint64_t a1)
{
  [*(a1 + 32) drawAtPoint:{CGPointZero.x, CGPointZero.y}];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);

  return [v4 drawInRect:{v2, v3, v5, v5}];
}

void sub_100CDD384(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(*(a1 + 32) + 8) offlineMapProviderUpdated:WeakRetained];
    WeakRetained = v3;
  }
}

void sub_100CDD3E4(id a1)
{
  v1 = qword_10195EED0;
  qword_10195EED0 = &off_1016ED8F8;
}

void sub_100CDEA8C(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 artwork];
  v4 = [UIImage _mapkit_transitArtworkImageWithDataSource:v3 size:*(a1 + 48) scale:*(a1 + 56)];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v13 muid]);
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  v7 = *(*(*(a1 + 40) + 8) + 24);
  [v4 size];
  v8 = MKTransitArtworkIncidentBadgeTrailingOffset;
  if (v7 <= v9 + MKTransitArtworkIncidentBadgeTrailingOffset)
  {
    [v4 size];
    v11 = v12 + v8;
    v10 = *(*(a1 + 40) + 8);
  }

  else
  {
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 24);
  }

  *(v10 + 24) = v11;
}

void sub_100CDEBAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v18 = v3;
  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 muid]);
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [v18 artwork];
    v8 = [v7 hasRoutingIncidentBadge];

    v9 = *(a1 + 32);
    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 muid]);
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = *(*(*(a1 + 40) + 8) + 24);
    if (v8)
    {
      v13 = MKTransitIncidentIcon();
    }

    else
    {
      v13 = 0;
    }

    v14 = [UIImage _compositeImageFromImage:v11 paddedToWidth:v13 badge:v12 badgeOffset:MKTransitArtworkIncidentBadgeTrailingOffset, MKTransitArtworkIncidentBadgeBottomOffset];
    v15 = [v14 imageWithRenderingMode:1];

    if (v8)
    {
    }

    v16 = *(a1 + 32);
    v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 muid]);
    [v16 setObject:v15 forKeyedSubscript:v17];
  }
}

void sub_100CDF04C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 copy];
  [v3 addObject:v4];
}

void sub_100CDFD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CDFE00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] setIssueType:{objc_msgSend(*(a1 + 32), "type")}];
    [v3 _invokeCompletionHandlerWithShouldSubmit:1];
    WeakRetained = v3;
  }
}

void sub_100CDFE70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeCompletionHandlerWithShouldSubmit:0];
}

id sub_100CE04F4()
{
  if (qword_10195EEE8 != -1)
  {
    dispatch_once(&qword_10195EEE8, &stru_101650AA8);
  }

  v1 = qword_10195EEE0;

  return v1;
}

void sub_100CE0548(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarMapWidgetETACardViewController");
  v2 = qword_10195EEE0;
  qword_10195EEE0 = v1;
}

void sub_100CE0860(uint64_t a1)
{
  v2 = sub_100CE04F4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v8 = @"<nil>";
      goto LABEL_10;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 performSelector:"accessibilityIdentifier"];
      v7 = v6;
      if (v6 && ![v6 isEqualToString:v5])
      {
        v8 = [NSString stringWithFormat:@"%@<%p, %@>", v5, v3, v7];

        goto LABEL_8;
      }
    }

    v8 = [NSString stringWithFormat:@"%@<%p>", v5, v3];
LABEL_8:

LABEL_10:
    v9 = *(*(a1 + 32) + 24);
    v10 = [v9 window];
    v11 = [v10 recursiveDescription];
    *buf = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "[%{public}@] Detected eta label is truncated (%@): %@", buf, 0x20u);
  }
}

void sub_100CE20D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CE2154(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 selectedValue];
  [v5 setSelectedValue:v6];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _instrumentSelectingRoute];
}

void sub_100CE21D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained proceedToNextQuestion:v3];
}

void sub_100CE2234(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained proceedToNextQuestion:v3];
}

void sub_100CE2E84(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = a2;
    v7 = [a3 debugDescription];
    v6 = [NSString stringWithFormat:@"%@: %@", v5, v7];

    [v4 addObject:v6];
  }
}

id *sub_100CE3258(id *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

void sub_100CE3DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CE3E24(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setComposedWaypoint:v10];

  v7 = [v10 geoMapItem];

  if (v7)
  {
    v8 = [v10 geoMapItem];
    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 setGeoMapItem:v8];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100CE3EF4(uint64_t a1)
{
  v9 = @"waypointInfo";
  v2 = [*(a1 + 32) description];
  v10 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v4 = [v3 objectForKeyedSubscript:NSLocalizedDescriptionKey];

  v5 = v3;
  if (!v4)
  {
    v6 = sub_100C75518(4);
    v5 = v3;
    if (v6)
    {
      v7 = [[NSMutableDictionary alloc] initWithDictionary:v3];
      [v7 setObject:v6 forKeyedSubscript:NSLocalizedDescriptionKey];
      v5 = [v7 copy];
    }
  }

  v8 = [NSError errorWithDomain:@"NanoRoutePlanningSession" code:4 userInfo:v5];

  (*(*(a1 + 40) + 16))();
}

void sub_100CE4DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
    [v3 addObject:v4];
  }
}

void sub_100CE501C(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v6 = v5;
LABEL_11:
      v12 = *(a1 + 32);
      v13 = [NSString stringWithFormat:@"%@: %@", v14, v6];
      [v12 addObject:v13];

      goto LABEL_12;
    }

    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v6 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_10;
      }
    }

    v6 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_10:

    goto LABEL_11;
  }

LABEL_12:
}

id sub_100CE68A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 applicationRecord];

  v6 = [v5 localizedName];
  if (!v6)
  {
    v7 = sub_100798370();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get partner app name. Using bundle ID instead", v9, 2u);
    }

    v6 = v3;
  }

  return v6;
}

void sub_100CE724C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CE7268(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateLastUpdatedLabel];
    WeakRetained = v2;
  }
}

id sub_100CE7EE8()
{
  if (qword_10195EEF8 != -1)
  {
    dispatch_once(&qword_10195EEF8, &stru_101650C20);
  }

  v1 = qword_10195EEF0;

  return v1;
}

void sub_100CE7F3C(uint64_t a1)
{
  v2 = sub_100CE7EE8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 134349056;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] Lens position has been locked", &v4, 0xCu);
  }
}

void sub_100CE7FE4(id a1)
{
  v1 = os_log_create("com.apple.Maps", "ARSessionPedestrianAR");
  v2 = qword_10195EEF0;
  qword_10195EEF0 = v1;
}

void sub_100CE8FFC(uint64_t a1)
{
  v2 = [*(a1 + 32) cardPresentationController];
  [v2 sheetContentSize];
  [*(a1 + 32) setPreferredContentSize:?];

  v3 = *(a1 + 32);
  v4 = [v3 cardPresentationController];
  [v4 contentAlpha];
  [v3 applyAlphaToContent:?];

  v5 = [*(a1 + 32) cardPresentationController];
  [v5 updateDimmingBehavior];
}

void sub_100CE9680(uint64_t a1)
{
  v2 = [*(a1 + 32) actionCoordinator];
  v3 = [v2 isFlyoverRunning];

  if (v3)
  {
    v4 = [*(a1 + 32) actionCoordinator];
    [v4 viewControllerEndFlyover:*(*(a1 + 32) + 32)];
  }

  v5 = [*(a1 + 40) mapView];
  [v5 setShowsUserLocation:*(*(a1 + 32) + 10)];
}

void sub_100CE97B8(uint64_t a1)
{
  v8 = [*(a1 + 32) mapView];
  *(*(a1 + 40) + 10) = [v8 showsUserLocation];
  [v8 setPitchEnabled:1];
  [v8 setZoomEnabled:1];
  [v8 setScrollEnabled:1];
  [v8 setShowsUserLocation:0];
  [v8 _deselectLabelMarkerAnimated:0];
  v2 = *(*(a1 + 40) + 16);
  v3 = +[VKPlatform sharedPlatform];
  if ([v3 supportsARMode])
  {
    v4 = [v8 _mapLayer];
    v5 = [v4 isFlyoverUnificationEnabled];

    if ((v5 & 1) == 0)
    {
      [v8 _enterARModeWithLocation:v2];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = [v2 _flyover];
  [v8 _performFlyoverAnimation:v6];

  v7 = [v8 _mapLayer];
  [v7 setFlyoverMode:1];

LABEL_6:
}

id sub_100CEA73C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 dequeueReusableSupplementaryViewOfKind:v6 withReuseIdentifier:v9 forIndexPath:*(a1 + 48)];

  v11 = [v10 textLabel];
  [v11 setText:v7];

  [v10 setFooter:a3];
  v12 = [v7 length];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = [*(a1 + 32) numberOfSections];
    v13 = v14 != [*(a1 + 48) section] + 1;
  }

  [v10 setHidden:v13];

  return v10;
}

void sub_100CEB3A0(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void sub_100CEB3FC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RouteTrafficFeatureCalculator");
  v2 = qword_10195EF20;
  qword_10195EF20 = v1;
}

void sub_100CEB950(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 trafficFeatureType] == 3)
        {
          [*(a1 + 32) addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_100CEBA5C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void sub_100CEBAA4(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = [*(a1 + 40) sharedFeatureCache];
  [v3 setObject:v2 forKey:*(a1 + 48)];

  v4 = *(a1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CEBB90;
  block[3] = &unk_1016605F8;
  v9 = *(a1 + 72);
  v7 = *(a1 + 64);
  v8 = v2;
  v5 = v2;
  dispatch_async(v4, block);
}

void sub_100CEBD4C(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedTrafficFeaturesForRoute:*(a1 + 40)];
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100CEBE54;
    block[3] = &unk_1016605F8;
    v3 = *(a1 + 48);
    v10 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = v2;
    dispatch_async(v3, block);
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [[_RouteTrafficFeatureCalculatorCompletionStructure alloc] initWithQueue:*(a1 + 48) handler:*(a1 + 56)];
    [v4 _startCalculationTaskForRoute:v5 completion:v6];
  }
}

void sub_100CEDACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100CEDAE4(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 name];
  v4 = [v3 isEqualToString:@"address"];

  if (v4)
  {
    [*(a1 + 32) removeObject:v8];
  }

  v5 = [v8 name];
  if ([v5 isEqualToString:@"ll"])
  {
  }

  else
  {
    v6 = [v8 name];
    v7 = [v6 isEqualToString:@"coordinate"];

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_7:
}

void sub_100CF0790(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchResult");
  v2 = qword_10195EF30;
  qword_10195EF30 = v1;
}

id sub_100CF1550(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = 1.0;
  if (!*(v3 + 8))
  {
    v4 = 0.0;
  }

  [v2 setAlpha:v4];
  v5 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = &stru_1016631F0;
  }

  return [v5 setText:v6];
}

UIFont *__cdecl sub_100CF1850(id a1)
{
  v1 = +[MKFontManager sharedManager];
  v2 = [v1 subtitleFont];
  v3 = [UIFont _maps_cappedFont:v2 withMaxPoint:30.0];

  return v3;
}

id sub_100CF2CDC(id *a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100CF2DDC;
  v5[3] = &unk_101661B18;
  v6 = a1[4];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100CF2EA8;
  v4[3] = &unk_101661738;
  v4[4] = v6;
  [UIView animateWithDuration:v5 animations:v4 completion:0.3];
  [a1[5] stopAnimating];
  [a1[5] removeFromSuperview];
  v2 = [a1[4] parentController];
  [v2 rebuildSections];

  return [a1[6] clearDefaultRecorder];
}

void sub_100CF2DDC(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 32) center];
  v3 = v2;
  [*(a1 + 32) center];
  v5 = v4;
  [*(a1 + 32) frame];
  [*(a1 + 32) setFrame:{0.0, 0.0, 40.0}];
  [*(a1 + 32) setCenter:{v3, v5}];
  v6 = [*(a1 + 32) mapIcon];
  [v6 setAlpha:0.0];

  v7 = [*(a1 + 32) redView];
  [v7 setAlpha:0.0];
}

id sub_100CF37D4(uint64_t a1)
{
  [*(a1 + 32) frame];
  [*(a1 + 32) setFrame:{0.0, 0.0, 160.0}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 setCenter:{v2, v3}];
}

void sub_100CF3D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CF3D3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _addPhotosUsingSourceType:1];
    WeakRetained = v2;
  }
}

void sub_100CF3D84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _addPhotosUsingSourceType:2];
    WeakRetained = v2;
  }
}

void sub_100CF5854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CF5878(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _addContact:v5];
  }
}

void sub_100CF5FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak((v29 + 48));
  _Block_object_dispose(&a18, 8);
  objc_destroyWeak(&a29);
  objc_destroyWeak((v30 - 136));
  _Unwind_Resume(a1);
}

void sub_100CF6010(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _deleteContact:*(a1 + 32)];
    WeakRetained = v3;
  }
}

uint64_t sub_100CF6064(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100CF607C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    if (v4)
    {
      [v4 setImage:v5];
    }

    else
    {
      [WeakRetained _updateImage:v5 forContact:*(a1 + 32)];
    }
  }
}

id sub_100CF6E04(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 groupIdentifier];
  v7 = [v6 isEqualToString:*(*(a1 + 32) + 8)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

id sub_100CF74C4()
{
  if (qword_10195EF48 != -1)
  {
    dispatch_once(&qword_10195EF48, &stru_101650E20);
  }

  v1 = qword_10195EF40;

  return v1;
}

void sub_100CF7518(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SharedTripsContext");
  v2 = qword_10195EF40;
  qword_10195EF40 = v1;
}

void sub_100CF7E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100CF7E18(uint64_t a1, _DWORD *a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = [*(a1 + 32) count];
  if (v4 < v5)
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    *a2 = [v6 intValue];

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v4 < v5;
}

void sub_100CF7FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100CF7FD8(uint64_t a1, _DWORD *a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = [*(a1 + 32) count];
  if (v4 < v5)
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    *a2 = [v6 intValue];

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v4 < v5;
}

void sub_100CF86C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100CF8710(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _captureUserAction:2146];
    v2 = objc_loadWeakRetained(v3 + 4);
    [v2 photoOptionsPickerDidSelectTakePhoto:v3];

    WeakRetained = v3;
  }
}

void sub_100CF877C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _captureUserAction:2145];
    v3 = objc_loadWeakRetained(v4 + 4);
    [v3 photoOptionsPickerDidSelectAddFromLibrary:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void sub_100CF87EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _captureUserAction:2134];
    v3 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v3 photoOptionsPickerDidCancel:*(a1 + 32)];

    WeakRetained = v4;
  }
}

void sub_100CF8BD4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * v15) mapItem];
        [v10 addObject:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = [v10 copy];
    (*(v17 + 16))(v17, v7, v18, v9);
  }
}

uint64_t sub_100CF8EE4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100CF93EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CF9410(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setPublisherImage:v3];

    [WeakRetained notifyObserversInfoUpdated];
  }
}

void sub_100CF9630(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];
  v2 = qword_10195EF50;
  qword_10195EF50 = v1;
}

void sub_100CFA234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100CFA24C(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"NavigationDisableLockScreen"])
  {
    Integer = GEOConfigGetInteger();
    *(*(*(a1 + 48) + 8) + 24) = Integer <= 0 || Integer < 0x3E8 && *(*(a1 + 40) + 32) >= Integer;
  }

  else
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v5 = [v3 stringForKey:*(a1 + 32)];

    v4 = v5;
    if (v5)
    {
      if ([v5 isEqualToString:@"Disable"])
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }

      else if ([v5 isEqualToString:@"Enable"])
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      else
      {
        *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 40) + 32) >= [v5 longLongValue];
      }

      v4 = v5;
    }
  }
}

void sub_100CFA514(uint64_t a1)
{
  v2 = sub_100009038();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Mitigation changed: %@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateObserversOfMitigationNamed:*(a1 + 32)];
}

id sub_100CFA6EC(uint64_t a1)
{
  v2 = sub_100009038();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Remove thermal pressure observer: %@", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 16) unregisterObserver:*(a1 + 32)];
}

id sub_100CFA8B8(uint64_t a1)
{
  v2 = sub_100009038();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Adding thermal pressure observer: %@", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 16) registerObserver:*(a1 + 32)];
}

void sub_100CFAA58(uint64_t a1)
{
  v2 = sub_100009038();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Remove mitigation observer: %@ for mitigation: %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained _observersOfMitigationNamed:*(a1 + 40)];
  [v6 unregisterObserver:*(a1 + 32)];
}

void sub_100CFAC2C(uint64_t a1)
{
  v2 = sub_100009038();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Add mitigation observer: %@ for mitigation: %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained _observersOfMitigationNamed:*(a1 + 40)];
  [v6 registerObserver:*(a1 + 32)];
}

void sub_100CFAE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100CFAFD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNotifyCallback];
}

void sub_100CFB2C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8 | v9)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100CFB4EC;
      block[3] = &unk_1016605F8;
      v11 = &v24;
      v24 = v10;
      v22 = v8;
      v23 = v9;
      dispatch_async(&_dispatch_main_q, block);

      v12 = v22;
LABEL_6:

LABEL_7:
    }
  }

  else
  {
    if (v7)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100CFB580;
      v15[3] = &unk_101661090;
      v11 = &v17;
      v17 = *(a1 + 40);
      v16 = v7;
      dispatch_async(&_dispatch_main_q, v15);
      v12 = v16;
      goto LABEL_6;
    }

    v13 = sub_100035E6C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No route or error returned", buf, 2u);
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100CFB504;
      v18[3] = &unk_101661760;
      v11 = &v19;
      v19 = v14;
      dispatch_async(&_dispatch_main_q, v18);
      goto LABEL_7;
    }
  }
}

void sub_100CFB504(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:MNErrorDomain code:2 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_100CFBAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100CFBB1C()
{
  if (qword_10195EF98 != -1)
  {
    dispatch_once(&qword_10195EF98, &stru_101650FA0);
  }

  v1 = qword_10195EF90;

  return v1;
}

void sub_100CFBB70(uint64_t a1)
{
  v2 = sub_100CFBB1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "VLF localization freshness period passed; unsetting hasVLFSessionLocalized flag", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasVLFLocalizedRecently:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setVlfLocalizationFreshnessTimer:0];
}

void sub_100CFBC0C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionAnalyticsTracker");
  v2 = qword_10195EF90;
  qword_10195EF90 = v1;
}

void sub_100CFC3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100CFC3F4(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v4 && WeakRetained)
  {
    [WeakRetained _updateDirectionsButtonWithSuggestedMode:{objc_msgSend(*(a1 + 32), "suggestedNavigationModeForLocation:context:ignoreDeviceNavigability:", v4, 1, 0)}];
  }
}

id sub_100CFC994(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:NSFontAttributeName];
  v4 = [v3 copy];

  return v4;
}

void sub_100CFD1D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100CFD1FC(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CFD2AC;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_100CFD2AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[14] setEnabled:1];
    WeakRetained = v2;
  }
}

void sub_100CFD3C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100CFD3EC(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CFD49C;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_after(v2, &_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void sub_100CFD49C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[14] setEnabled:1];
    WeakRetained = v2;
  }
}

UIColor *__cdecl sub_100CFE834(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 userInterfaceStyle]== 2)
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor systemBlueColor];
  }
  v2 = ;

  return v2;
}

UIColor *__cdecl sub_100CFE898(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 userInterfaceStyle]== 2)
  {
    +[UIColor secondarySystemGroupedBackgroundColor];
  }

  else
  {
    +[UIColor systemWhiteColor];
  }
  v2 = ;

  return v2;
}

void sub_100CFEF60(id a1)
{
  v3[0] = UIContentSizeCategoryAccessibilityExtraLarge;
  v3[1] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v3[2] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_10195EFC0;
  qword_10195EFC0 = v1;
}

void sub_100CFF0E4(id a1)
{
  v3[0] = UIContentSizeCategoryUnspecified;
  v3[1] = UIContentSizeCategoryExtraSmall;
  v3[2] = UIContentSizeCategorySmall;
  v3[3] = UIContentSizeCategoryMedium;
  v3[4] = UIContentSizeCategoryLarge;
  v3[5] = UIContentSizeCategoryExtraLarge;
  v3[6] = UIContentSizeCategoryExtraExtraLarge;
  v1 = [NSArray arrayWithObjects:v3 count:7];
  v2 = qword_10195EFB0;
  qword_10195EFB0 = v1;
}

void sub_100CFF22C(id a1)
{
  v3[0] = UIContentSizeCategoryUnspecified;
  v3[1] = UIContentSizeCategoryExtraSmall;
  v3[2] = UIContentSizeCategorySmall;
  v3[3] = UIContentSizeCategoryMedium;
  v3[4] = UIContentSizeCategoryLarge;
  v3[5] = UIContentSizeCategoryExtraLarge;
  v3[6] = UIContentSizeCategoryExtraExtraLarge;
  v3[7] = UIContentSizeCategoryExtraExtraExtraLarge;
  v3[8] = UIContentSizeCategoryAccessibilityMedium;
  v3[9] = UIContentSizeCategoryAccessibilityLarge;
  v1 = [NSArray arrayWithObjects:v3 count:10];
  v2 = qword_10195EFA0;
  qword_10195EFA0 = v1;
}

void sub_100CFFD68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100CFFD84(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained extensions];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100CFFE58;
  v8[3] = &unk_101651118;
  v9 = v3;
  v7 = v3;
  [v6 enumerateObjectsUsingBlock:v8];
}

void sub_100CFFE58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 displayName];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100D0005C;
  v17[3] = &unk_101651FD0;
  v18 = v3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100D00098;
  v15[3] = &unk_101661738;
  v6 = v18;
  v16 = v6;
  v7 = [v4 addSwitchRowWithTitle:v5 get:v17 set:v15];

  v8 = +[NSMutableArray array];
  v9 = [v6 capabilities];
  v10 = [v9 allObjects];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100D000A8;
  v13[3] = &unk_1016510F0;
  v11 = v8;
  v14 = v11;
  [v10 enumerateObjectsUsingBlock:v13];

  if ([v11 count])
  {
    v12 = [v11 componentsJoinedByString:@" "];
    [v7 setSubtitle:v12];
  }

  else
  {
    [v7 setSubtitle:@"none"];
  }
}

id sub_100D0005C(uint64_t a1)
{
  v1 = [*(a1 + 32) extension];
  v2 = [v1 optedIn];

  return v2;
}

void sub_100D000A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringByReplacingOccurrencesOfString:@"MXExtensionCapability" withString:&stru_1016631F0];
  [v2 addObject:v3];
}

void sub_100D00304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D00330(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100D004A8;
  v14[3] = &unk_1016510C8;
  v7 = v5;
  v15 = v7;
  v8 = v6;
  v16 = v8;
  [v3 enumerateObjectsUsingBlock:v14];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D0050C;
  block[3] = &unk_101661A40;
  block[4] = WeakRetained;
  v12 = v8;
  v13 = v7;
  v9 = v7;
  v10 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100D004A8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 type];
  v4 = 40;
  if (v3 == 1)
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v5];
}

void sub_100D0050C(uint64_t a1)
{
  v4[0] = kMapsExtensionPointNameServices;
  v4[1] = kMapsExtensionPointNameServicesUI;
  v2 = *(a1 + 48);
  v5[0] = *(a1 + 40);
  v5[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
  [*(a1 + 32) setExtensions:v3];
}

void sub_100D005F4(id a1, MapsDebugTableSection *a2)
{
  v4 = a2;
  v2 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Hide Restaraunt Reservations" defaultsKey:@"__internal__HideTableBookingButton"];
  v3 = [(MapsDebugTableSection *)v4 addSwitchRowWithTitle:@"Map OpenTable POIs to PenTable app" defaultsKey:@"RestaurantReservationAppBundleIDs"];
}

uint64_t sub_100D024CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D024E4(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) waypointRequest];
  v7 = [v15 isEquivalentToOtherRequest:v6];

  if (v7)
  {
    if ([v15 hasCachedResult])
    {
      v8 = v15;
    }

    else
    {
      v8 = [[GEOComposedWaypointRequest alloc] initWithComposedWaypoint:v5];
    }

    v9 = v8;
    v10 = [RoutePlanningWaypointRequest alloc];
    v11 = [*(a1 + 32) waypointPlaceholder];
    v12 = -[RoutePlanningWaypointRequest initWithWaypointPlaceholder:request:preferredNameSource:](v10, "initWithWaypointPlaceholder:request:preferredNameSource:", v11, v9, [*(a1 + 32) preferredNameSource]);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_100D06710(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = &__NSArray0__struct;
}

void sub_100D06738(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a3;
  v8 = a2;
  v9 = [[CalendarItemSourceMapItem alloc] initWithCalendarItem:v8 mapItem:v7];

  v10 = [(CalendarItemSourceMapItem *)v9 keys];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSSet set];
  }

  v13 = v12;

  if (([*(a1 + 32) intersectsSet:v13] & 1) == 0)
  {
    v14 = *(a1 + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100D07150;
    v18[3] = &unk_101651258;
    v15 = v9;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v19 = v15;
    v20 = v16;
    v22 = a4;
    v21 = v17;
    dispatch_sync(v14, v18);
  }
}

void sub_100D06878(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = [*(a1 + 32) title];
    NSLog(@"Calendar event '%@' has no location and will not be shown on map.", v3);
  }

  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

void sub_100D068FC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100D06F1C;
    v19[3] = &unk_1016511C8;
    v6 = v4;
    v20 = v6;
    v7 = objc_retainBlock(v19);
    v8 = [v3 mapKitHandle];

    if (v8)
    {
      v9 = [v3 mapKitHandle];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100D07020;
      v16[3] = &unk_1016511F0;
      v18 = v7;
      v17 = v3;
      [MKMapItem _mapItemFromHandle:v9 completionHandler:v16];
    }

    else
    {
      v10 = [v3 title];

      if (v10 && (byte_10195EFE0 & 1) == 0)
      {
        v11 = [v3 title];
        v12 = +[GEOMapService sharedService];
        v13 = [v12 ticketForCanonicalLocationSearchQueryString:v11 traits:0];

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100D0709C;
        v14[3] = &unk_10165EB78;
        v15 = v7;
        [v13 submitWithHandler:v14 networkActivity:0];
      }

      else
      {
        (*(v6 + 2))(v6, 0, 0);
      }
    }
  }
}

void sub_100D06B44(uint64_t a1, void *a2)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v16 = *v25;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v7 = [v6 alarms];
        v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          while (2)
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v20 + 1) + 8 * j);
              v13 = [v12 structuredLocation];

              if (v13)
              {
                dispatch_group_enter(*(a1 + 32));
                v14 = [v12 structuredLocation];
                v17[0] = _NSConcreteStackBlock;
                v17[1] = 3221225472;
                v17[2] = sub_100D06E98;
                v17[3] = &unk_1016512A8;
                v19 = *(a1 + 40);
                v17[4] = v6;
                v18 = *(a1 + 32);
                sub_100D068FC(v14, v17);

                goto LABEL_16;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100D06DA8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 72);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100D06E4C;
  v8 = &unk_101661A90;
  v9 = v3;
  v10 = v2;
  dispatch_sync(v4, &v5);
  [*(a1 + 32) _notifyObserversItemsDidChange];
}

void sub_100D06E4C(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100D06E98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = [*(a1 + 32) title];
    NSLog(@"Alarm for reminder '%@' has a structured location that will not be shown on the map!", v3);
  }

  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

void sub_100D06F1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = [v3 _styleAttributes];
    if ([v4 isLabelPOI])
    {
    }

    else
    {
      v5 = [v10 _styleAttributes];
      v6 = [v5 isLandmarkPOI];

      if ((v6 & 1) == 0)
      {
        v7 = [v10 _geoAddress];
        v8 = [v7 structuredAddress];

        v9 = [v8 fullThoroughfare];
        [v9 length];
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100D07020(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 40) + 16))();
  v4 = v5;
  if (v5)
  {
    NSLog(@"Error %@ resolving mapkit handle for: %@", v5, *(a1 + 32));
    v4 = v5;
  }
}

void sub_100D0709C(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [v9 count];
  v6 = 0;
  if (!a3 && v5)
  {
    v7 = [MKMapItem alloc];
    v8 = [v9 firstObject];
    v6 = [v7 initWithGeoMapItem:v8 isPlaceHolderPlace:0];
  }

  (*(*(a1 + 32) + 16))();
}

id sub_100D07150(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    [result setSource:*(a1 + 40)];
    [*(a1 + 32) setShouldBeHiddenFromMap:*(a1 + 56) == 0];
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);

    return [v3 addObject:v4];
  }

  return result;
}

uint64_t sub_100D0753C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D07554(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100D07D10(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 registerDefaults:&off_1016EE588];
}

void sub_100D07DB4(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195EFE8;
  qword_10195EFE8 = v1;

  [qword_10195EFE8 setTimeStyle:1];
  [qword_10195EFE8 setDateStyle:1];
  v3 = qword_10195EFE8;

  [v3 setDoesRelativeDateFormatting:1];
}

uint64_t sub_100D07FE8(uint64_t a1)
{
  if (GEOConfigGetBOOL())
  {
    v2 = [NSString stringWithFormat:@"%@.%p.txt", objc_opt_class(), *(a1 + 32)];
    v3 = [*(a1 + 32) sessionStack];
    v4 = [*(a1 + 32) chromeViewController];
    v5 = [NSString stringWithFormat:@"sessions:\n%@\nchrome view controller:%@", v3, v4];
    v6 = [MapsRadarTextAttachment attachmentWithFileName:v2 text:v5];

    [*(a1 + 40) addAttachment:v6];
  }

  v7 = *(*(a1 + 48) + 16);

  return v7();
}

void sub_100D08578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100D085A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D085BC(uint64_t a1)
{
  v2 = [*(a1 + 32) stack];
  v3 = [v2 lastObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) stack];
  [v6 removeLastObject];

  v10 = [*(a1 + 32) stack];
  v7 = [v10 lastObject];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100D0866C(uint64_t a1)
{
  v2 = [*(a1 + 32) stack];
  [v2 addObject:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_100D08D44(uint64_t a1)
{
  v2 = [*(a1 + 32) stack];
  [v2 removeObject:*(a1 + 40)];
}

void sub_100D09228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100D09248(uint64_t a1)
{
  v5 = [*(a1 + 32) stack];
  v2 = [v5 lastObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100D092B0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v3 currentSession];
  [v2 platformController:v3 didChangeCurrentSessionFromSession:v4 toSession:v5];

  v6 = [*(a1 + 32) currentSession];
  [v6 resume];

  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = 0;
}

void sub_100D09714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100D0990C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100D09A88;
  v14 = &unk_101661A90;
  v15 = v3;
  v16 = v2;
  dispatch_sync(v4, &v11);
  [*(a1 + 40) setPlatformController:{*(a1 + 32), v11, v12, v13, v14, v15}];
  v5 = [*(a1 + 32) observers];
  [v5 platformController:*(a1 + 32) didChangeCurrentSessionFromSession:*(a1 + 48) toSession:*(a1 + 40)];

  [*(a1 + 40) resume];
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = 0;

  v8 = sub_100008614();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = [v9 sessionStack];
    *buf = 134349314;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{public}p] Current session stack: %@", buf, 0x16u);
  }
}

void sub_100D09A88(uint64_t a1)
{
  v2 = [*(a1 + 32) stack];
  [v2 addObject:*(a1 + 40)];
}

void sub_100D09BA8(id a1, NSError *a2)
{
  v2 = a2;
  v4 = +[IPCServer sharedServer];
  v3 = [(NSError *)v2 localizedDescription];
  [v4 navigationStateDidChangeTo:2 reason:v3 error:v2];
}

void sub_100D09C2C(id a1, RouteCollection *a2)
{
  v2 = +[IPCServer sharedServer];
  [v2 navigationStateDidChangeTo:0 reason:@"The directions are now loaded and we're ready for nav"];
}

void sub_100D0AE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D0AE78(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleInitialRouteLoaded:v5];
  }
}

void sub_100D0B108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 removeObserver:v3 name:VKMapViewDidBecomeFullyDrawnNotification object:0];

    [v3 _createAuxiliaryTasksIfNecessaryForPreference:2];
    WeakRetained = v3;
  }
}

id sub_100D0B3F0(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  [*(*(a1 + 32) + 8) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 24);

  return [v2 setAlpha:0.0];
}

uint64_t sub_100D0B454(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_100D0B570(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  [*(*(a1 + 32) + 8) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 24);

  return [v2 setAlpha:1.0];
}

void sub_100D0C748(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [[SearchAddressBookOperationMatch alloc] initWithContact:v3 context:*(*(a1 + 32) + 24)];

  if ([(SearchAddressBookOperationMatch *)v9 isGoodMatch])
  {
    [*(a1 + 40) addObject:v9];
    v4 = [(SearchAddressBookOperationMatch *)v9 contact];
    v5 = [v4 identifier];

    if (v5)
    {
      [*(a1 + 48) setObject:v9 forKeyedSubscript:v5];
    }

    v6 = [(SearchAddressBookOperationMatch *)v9 contact];
    v7 = [v6 iOSLegacyIdentifier];

    if (v7 >= 1)
    {
      v8 = [NSString stringWithFormat:@"%d", v7];
      [*(a1 + 56) setObject:v9 forKeyedSubscript:v8];
    }
  }
}

void sub_100D0C86C(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 contact];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 postalAddresses];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 value];
        v11 = [v10 street];
        v12 = [v11 length];

        if (v12)
        {
          v13 = [[AddressBookAddress alloc] initWithContact:v3 addressValue:v9];
          if ([(AddressBookAddress *)v13 isValid])
          {
            v14 = [v16 autocompleteMatchInfo];
            [*(*(a1 + 32) + 24) setMatchInfo:v14 forObject:v13];
            v15 = [[AutocompleteItem alloc] initWithLocalCompletion:v13 sourceType:4 sourceSubtype:0 matchInfo:v14];
            [*(a1 + 40) addObject:v15];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

id sub_100D0D344(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [v4 stringByTrimmingCharactersInSet:*(a1 + 32)];

    v6 = [v5 componentsSeparatedByCharactersInSet:*(a1 + 32)];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 length])
          {
            if (!v9)
            {
              v9 = +[NSMutableArray array];
            }

            [v9 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v4 = v5;
  }

  else
  {
    v9 = 0;
  }

  v13 = [v9 copy];

  return v13;
}

void sub_100D0D4E8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObjectsFromArray:v3];
    v3 = v4;
  }
}

id sub_100D0DDDC(uint64_t a1)
{
  if (a1)
  {
    [MKRatingStringBuilder ratingColorForMapItem:a1];
  }

  else
  {
    +[UIColor systemOrangeColor];
  }
  v1 = ;

  return v1;
}

void sub_100D0FB58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _fetchSuggestions];
    WeakRetained = v2;
  }
}

void sub_100D0FD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100D0FD8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D0FDB4(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained shortcutsProviderUpdated:*(a1 + 32)];
}

void sub_100D0FF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D0FF1C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processTopSuggestions:v8 error:v5];
  }
}

void sub_100D10104(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setSinkAttached:0];
    WeakRetained = v2;
  }
}

void sub_100D101F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[1])
    {
      [WeakRetained setSinkAttached:1];
    }

    else
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_100D102C4;
      v4[3] = &unk_1016514A8;
      objc_copyWeak(&v5, (a1 + 32));
      [v3 _createMapsSuggestionEngineWithCallBack:v4];
      objc_destroyWeak(&v5);
    }
  }
}

void sub_100D102C4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 1, a2);
    [v5 setSinkAttached:1];
  }
}

BOOL sub_100D104F0(id a1, MapsSuggestionsEntry *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MapsSuggestionsOfflineService);
  v4 = [(MapsSuggestionsOfflineService *)v3 shouldKeepEntryWhenOffline:v2];

  return v4;
}

void sub_100D116A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100D116C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D116D8(uint64_t a1, void *a2)
{
  v3 = [a2 locationDisplayString];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100D12B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100D12B70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100D12B88(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_100D12CE0()
{
  v0 = MSPSharedTripServiceNameForRawServiceName();
  if ([v0 isEqualToString:MSPSharedTripServiceSMS])
  {
    v1 = @"[Share ETA] SMS";
LABEL_5:
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:v1 value:@"localized string not found" table:0];

    goto LABEL_7;
  }

  if ([v0 isEqualToString:MSPSharedTripServiceRCS])
  {
    v1 = @"[Share ETA] RCS";
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

void sub_100D133E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D13410(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishedTest];
}

void sub_100D13A04(uint64_t a1)
{
  v2 = [*(a1 + 32) mainMKMapView];
  [v2 _setLocationPulseEnabled:0];

  v3 = [*(a1 + 32) mainVKMapView];
  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {
    [v4 performSelector:?];
  }

  else
  {
    [v3 _mapstest_jumpToCoords:*(v4 + 73) pitch:*(v4 + 104) yaw:*(v4 + 112) altitudeIsRegionSize:{*(v4 + 120), *(v4 + 88), *(v4 + 96)}];
  }

  [*(a1 + 32) startedTest];
  [*(a1 + 32) startedSubTest:@"loadingScene"];
  [v3 enableTestStatistics];
  [v3 enableTileStatistics];
  objc_initWeak(&location, *(a1 + 32));
  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D13B74;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  [v5 addFullyDrawnCallback:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_100D13B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D13B74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didFinishJumping];
}

id sub_100D1403C(uint64_t a1)
{
  v2 = [*(a1 + 32) fullyDrawnCallbacks];
  v3 = [*(a1 + 40) copy];
  v4 = objc_retainBlock(v3);
  [v2 addObject:v4];

  v5 = *(a1 + 32);

  return [v5 setupFullyDrawnNotification:"onFullyDrawn:"];
}

void sub_100D141B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100D141D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishedSubTest:@"extendedSwitch"];
  [WeakRetained finishedTest];
}

void sub_100D143D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D143EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didFinishJumping];
}

void sub_100D146F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100D14718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _accessoryButtonTapped:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100D14AD8(uint64_t a1)
{
  v1 = [*(a1 + 32) registrationWithCellClass:objc_opt_class() configurationHandler:&stru_1016515A0];
  v2 = qword_10195F018;
  qword_10195F018 = v1;
}

void sub_100D14B38(id a1, SectionHeaderOutlineCell *a2, NSIndexPath *a3, MapsUIDiffableDataSourceOutlineNodeSnapshot *a4)
{
  v8 = a2;
  v5 = [(MapsUIDiffableDataSourceOutlineNodeSnapshot *)a4 viewModel];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___SectionHeaderOutlineCellModel])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(SectionHeaderOutlineCell *)v8 setCellModel:v7];
}

void sub_100D16110(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 photo];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v11 photo];
    [v4 addPhoto:v5];

    v6 = *(a1 + 40);
    v7 = [v11 photo];
    v8 = [v7 photo];
    v9 = [v11 photo];
    v10 = [v9 _maps_diffableDataSourceIdentifier];
    [v6 addImage:v8 forIdentifier:v10];

    [v11 clearSelectedPhoto];
  }
}

void sub_100D1675C(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 scrollToRowAtIndexPath:*(a1 + 40) atScrollPosition:1 animated:1];
}

void sub_100D167B8(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 cellForRowAtIndexPath:*(a1 + 40)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 beginEditingCommentIfPossible];
}

void sub_100D1741C(id a1, RAPCommentQuestion *a2, RAPReportComposerCommentSection *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(RAPReportComposerCommentSection *)v4 headerView];
  [v6 updateRemainingCharacters];

  v11 = [NSIndexPath indexPathForRow:0 inSection:[(RAPTablePartSection *)v4 sectionIndex]];
  v7 = [(RAPTablePartSection *)v4 tableView];

  v8 = [v7 cellForRowAtIndexPath:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v10 setPropertiesFromQuestion:v5];
}

void sub_100D18060(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D18110;
  block[3] = &unk_1016605F8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100D18110(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = +[NSMutableSet set];
    [*(a1 + 40) setSelectedObjectSet:v2];
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 32));
  }

  v4 = [*(a1 + 40) resultBlock];

  if (v4)
  {
    v5 = [*(a1 + 40) resultBlock];
    v5[2](v5, *(a1 + 32));
  }
}

void sub_100D1882C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) suppressAnalytics] & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [*(a1 + 32) selectedObjectSet];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(a1 + 32) _instrumentSaveOrRemoveFromCollectionWithMapItem:*(*(&v16 + 1) + 8 * v8) instrumentSave:0];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D18B3C;
  block[3] = &unk_1016605F8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v3;
  v14 = v9;
  v15 = v10;
  v11 = v3;
  dispatch_async(&_dispatch_main_q, block);
}