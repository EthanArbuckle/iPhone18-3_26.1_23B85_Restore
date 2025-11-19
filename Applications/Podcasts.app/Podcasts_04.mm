void sub_1000D7D90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePredicate];
}

void sub_1000D7DD0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D7EBC;
  v11[3] = &unk_1004D9E80;
  objc_copyWeak(&v12, (a1 + 32));
  [WeakRetained enqueueWorkBlock:v11];

  objc_destroyWeak(&v12);
}

void sub_1000D7EBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePredicate];
}

void sub_1000D7FC8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D80F8;
  v14[3] = &unk_1004DB9B8;
  objc_copyWeak(&v18, (a1 + 32));
  v11 = v7;
  v15 = v11;
  v12 = v8;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  [WeakRetained enqueueWorkBlock:v14];

  objc_destroyWeak(&v18);
}

void sub_1000D80F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained resultsChangedWithDeletedIds:*(a1 + 32) insertIds:*(a1 + 40) updatedIds:*(a1 + 48)];
}

void sub_1000D8508(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (![WeakRetained isStopping])
    {
      (*(*(a1 + 32) + 16))();
      goto LABEL_10;
    }

    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = "Attempting to execute work after the processor has stopped.";
      v6 = &v7;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Attempting to execute work after the processor has been deallocated.";
      v6 = buf;
      goto LABEL_7;
    }
  }

LABEL_10:
}

void sub_1000D8A74(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000D8B28;
    v5[3] = &unk_1004D8798;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = v3;
    dispatch_sync(v4, v5);
  }
}

void sub_1000D8B34(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = objc_autoreleasePoolPush();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D8C18;
  v6[3] = &unk_1004DBA30;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 32);
  [MTCoreSpotlightUtil prepareSearchableItemForObject:v3 annotator:v5 completion:v6];

  objc_autoreleasePoolPop(v4);
}

void sub_1000D8C18(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void sub_1000D9130(id a1)
{
  v1 = +[PFObjCCachingImageContentProviderBridge extensionBridge];
  v2 = qword_100583C28;
  qword_100583C28 = v1;
}

uint64_t sub_1000D9214(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000D98A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 attributeSet];
  [v5 setThumbnailURL:v4];

  v6 = *(*(a1 + 56) + 16);

  return v6();
}

void sub_1000D9ECC(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [*(a1 + 32) attributeSet];
    [v3 setThumbnailURL:v6];
  }

  else
  {
    v3 = +[NSDate now];
    v4 = [v3 dateByAddingTimeInterval:8640.0];
    v5 = [*(a1 + 32) attributeSet];
    [v5 setExpirationDate:v4];
  }

  (*(*(a1 + 56) + 16))();
}

uint64_t sub_1000DA390(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 attributeSet];
  [v5 setThumbnailURL:v4];

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void sub_1000DA740(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: Setting active account: %@", &v4, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 56), *(a1 + 32));
}

void sub_1000DA92C(uint64_t a1)
{
  if (([*(a1 + 32) hasFetchedInitialAccount] & 1) == 0)
  {
    [*(a1 + 32) _updateActiveAccount];
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DA9E0;
    block[3] = &unk_1004D84D0;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void sub_1000DABD4(id a1)
{
  v1 = +[MTLibrary sharedInstance];
  [v1 removeAllHLSDownloadAssets];
}

void sub_1000DAC1C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"AccountDSIDChangedNotification" object:0];
}

void sub_1000DAED0(uint64_t a1)
{
  if (*(a1 + 48))
  {
    goto LABEL_2;
  }

  v14 = [*(a1 + 32) inFlightAuthRequests];
  if ([v14 containsObject:*(a1 + 40)])
  {
  }

  else
  {
    v12 = [*(a1 + 32) declinedAuthRequests];
    v13 = [v12 containsObject:*(a1 + 40)];

    if ((v13 & 1) == 0)
    {
LABEL_2:
      v2 = [*(a1 + 32) inFlightAuthRequests];
      [v2 addObject:*(a1 + 40)];

      v3 = [*(a1 + 32) activeAccount];
      v4 = [[AMSAuthenticateOptions alloc] initWithOptionsDictionary:0];
      [v4 setAuthenticationType:0];
      [v4 setAllowServerDialogs:1];
      [v4 setDebugReason:*(a1 + 40)];
      v5 = +[NSBundle mainBundle];
      v6 = [v5 localizedStringForKey:@"SIGN_IN_PODCASTS" value:&stru_1004F3018 table:0];
      [v4 setPromptTitle:v6];

      v7 = +[UIViewController mt_rootViewController];
      v8 = [v7 mt_topViewController];

      v9 = [[AMSUIAuthenticateTask alloc] initWithAccount:v3 presentingViewController:v8 options:v4];
      v10 = [v9 performAuthentication];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000DB100;
      v15[3] = &unk_1004DBB90;
      v11 = *(a1 + 40);
      v15[4] = *(a1 + 32);
      v16 = v11;
      [v10 addFinishBlock:v15];
    }
  }
}

void sub_1000DB100(uint64_t a1, uint64_t a2, void *a3)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_100008A6C;
  v11[4] = sub_10003B50C;
  v4 = a3;
  v12 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DB214;
  v7[3] = &unk_1004DBB68;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v10 = v11;
  v8 = v5;
  v9 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);

  _Block_object_dispose(v11, 8);
}

void sub_1000DB214(uint64_t a1)
{
  [*(a1 + 32) _updateActiveAccount];
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if (v2)
  {
    v3 = [v2 ams_underlyingError];

    if (v3)
    {
      v4 = AKAppleIDAuthenticationErrorDomain;
      while (1)
      {
        v5 = [*(*(*(a1 + 56) + 8) + 40) ams_underlyingError];
        v6 = *(*(a1 + 56) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;

        v8 = [*(*(*(a1 + 56) + 8) + 40) domain];
        if (![v8 isEqualToString:v4])
        {
          goto LABEL_7;
        }

        v9 = [*(*(*(a1 + 56) + 8) + 40) code];

        if (v9 == -7003)
        {
          break;
        }

LABEL_8:
        v10 = [*(*(*(a1 + 56) + 8) + 40) ams_underlyingError];

        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v8 = [*(a1 + 32) declinedAuthRequests];
      [v8 addObject:*(a1 + 40)];
LABEL_7:

      goto LABEL_8;
    }

LABEL_9:
    v11 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 48);
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to authenticate user with error: %@", &v14, 0xCu);
    }
  }

  v13 = [*(a1 + 32) inFlightAuthRequests];
  [v13 removeObject:*(a1 + 40)];
}

void sub_1000DB44C(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to sign out user with error: %@", &v5, 0xCu);
    }
  }
}

void sub_1000DBA7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained isCancelled];
    v2 = v4;
    if ((v3 & 1) == 0)
    {
      [v4 setIsSleepingOnStartDelay:0];
      [v4 main];
      v2 = v4;
    }
  }
}

void sub_1000DBF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_sync_exit(v15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DBF6C(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) deferredEpisodeUuids];
  [WeakRetained _setSuggestedEpisodeUuidsImmediately:v3];

  [*(a1 + 32) setPendingDeferredUpdate:0];
  objc_sync_exit(obj);
}

void sub_1000DC14C(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);
  v15 = a1;
  if ([*(a1 + 32) count] >= 0xB)
  {
    v3 = [*(a1 + 32) subarrayWithRange:{0, 10}];

    v2 = v3;
  }

  v16 = dispatch_semaphore_create(0);
  v4 = +[MTDB sharedInstance];
  v18 = [v4 mainOrPrivateContext];

  v14 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v2;
  v5 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v5)
  {
    v17 = *v39;
    do
    {
      v6 = 0;
      do
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v38 + 1) + 8 * v6);
        v32 = 0;
        v33 = &v32;
        v34 = 0x3032000000;
        v35 = sub_100008A7C;
        v36 = sub_10003B514;
        v37 = 0;
        v30[0] = 0;
        v30[1] = v30;
        v30[2] = 0x2020000000;
        v31 = 0;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000DC5A4;
        v25[3] = &unk_1004D8810;
        v26 = v18;
        v27 = v7;
        v28 = &v32;
        v29 = v30;
        [v26 performBlockAndWait:v25];
        if ([v33[5] length])
        {
          v8 = +[MTIntentDonationUtil sharedInstance];
          v9 = v33[5];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1000DC624;
          v21[3] = &unk_1004DBBF0;
          v21[4] = *(v15 + 40);
          v22 = v14;
          v24 = &v32;
          v10 = v16;
          v23 = v10;
          [v8 prepareIntentForEpisodeUuid:v9 stationUuid:0 includeImage:1 includeStorePlatformData:0 completion:v21];

          dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
        }

        _Block_object_dispose(v30, 8);
        _Block_object_dispose(&v32, 8);

        v6 = v6 + 1;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v5);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000DC6C0;
  v19[3] = &unk_1004DACD8;
  v20 = v14;
  v11 = v14;
  v12 = [obj mt_compactMap:v19];
  [*(v15 + 40) setEpisodeIntents:v12];

  kdebug_trace();
}

void sub_1000DC578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_1000DC5A4(uint64_t a1)
{
  v5 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  v2 = [v5 uuid];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 56) + 8) + 24) = [v5 isPlayheadResumable];
}

void sub_1000DC624(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:*(*(*(a1 + 56) + 8) + 40)];
  }

  objc_sync_exit(v3);

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000DC76C(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);
  if ([*(a1 + 32) count] >= 0xB)
  {
    v3 = [*(a1 + 32) subarrayWithRange:{0, 10}];

    v2 = v3;
  }

  v16 = dispatch_semaphore_create(1);
  v4 = +[MTDB sharedInstance];
  v18 = [v4 mainOrPrivateContext];

  v15 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v2;
  v5 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v5)
  {
    v17 = *v46;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v45 + 1) + 8 * i);
        v39 = 0;
        v40 = &v39;
        v41 = 0x3032000000;
        v42 = sub_100008A7C;
        v43 = sub_10003B514;
        v44 = 0;
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = sub_100008A7C;
        v37 = sub_10003B514;
        v38 = 0;
        v31[0] = 0;
        v31[1] = v31;
        v31[2] = 0x2020000000;
        v32 = 0;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000DCC30;
        v25[3] = &unk_1004D91D0;
        v26 = v18;
        v27 = v7;
        v28 = &v39;
        v29 = &v33;
        v30 = v31;
        [v26 performBlockAndWait:v25];
        if ([v40[5] length])
        {
          v8 = +[MTIntentDonationUtil sharedInstance];
          v9 = v34[5];
          v10 = v40[5];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1000DCCFC;
          v21[3] = &unk_1004DBBF0;
          v21[4] = *(a1 + 40);
          v22 = v15;
          v24 = &v39;
          v11 = v16;
          v23 = v11;
          [v8 prepareIntentForEpisodeUuid:v9 stationUuid:v10 includeImage:1 includeStorePlatformData:0 completion:v21];

          dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
        }

        _Block_object_dispose(v31, 8);
        _Block_object_dispose(&v33, 8);

        _Block_object_dispose(&v39, 8);
      }

      v5 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v5);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000DCD98;
  v19[3] = &unk_1004DACD8;
  v20 = v15;
  v12 = v15;
  v13 = [obj mt_compactMap:v19];
  [*(a1 + 40) setStationIntents:v13];

  kdebug_trace();
}

void sub_1000DCBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_1000DCC30(uint64_t a1)
{
  v10 = [*(a1 + 32) playlistForUuid:*(a1 + 40)];
  v2 = [v10 episodes];
  v3 = [v2 firstObject];

  v4 = [v10 uuid];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 uuid];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *(*(*(a1 + 64) + 8) + 24) = [v3 isPlayheadResumable];
}

void sub_1000DCCFC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:*(*(*(a1 + 56) + 8) + 40)];
  }

  objc_sync_exit(v3);

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000DD2AC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MTLogCategorySiri();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to set relevant shortcuts with error: %@.", &v4, 0xCu);
    }
  }
}

uint64_t sub_1000DE46C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t sub_1000DE4A0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t sub_1000DFAA4(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:*(a1 + 32) withOptions:0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_1000DFB14(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000DFBF4(uint64_t a1)
{
  location[1] = 0;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];

  _CTServerConnectionCopyCellularUsagePolicy();
  CFRelease(*(a1 + 48));
  if (+[PSCellularDataSettingsDetail isEnabled])
  {
    v4 = MGGetBoolAnswer();
  }

  else
  {
    v4 = 0;
  }

  objc_initWeak(location, *(a1 + 32));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFD64;
  block[3] = &unk_1004DBCC0;
  objc_copyWeak(&v7, location);
  v8 = 0;
  v9 = v4;
  v6 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(location);
}

uint64_t sub_1000DFD64(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 49);
  }

  else
  {
    v2 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setGlobalCellularEnabled:v2 & 1];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_1000DFF08(id a1)
{
  v1 = qword_100583C48;
  qword_100583C48 = &off_100502410;
}

void sub_1000DFFEC(id a1)
{
  v19[0] = &off_100500DF0;
  v18 = [UIImage imageNamed:@"StateVideo"];
  v17 = [v18 imageWithRenderingMode:2];
  v16 = [v17 _imageThatSuppressesAccessibilityHairlineThickening];
  v20[0] = v16;
  v19[1] = &off_100500DD8;
  v15 = [UIImage imageNamed:@"StateExplicit"];
  v20[1] = v15;
  v19[2] = &off_100500E80;
  v14 = [UIImage imageNamed:@"StateCloud"];
  v13 = [v14 imageWithRenderingMode:2];
  v20[2] = v13;
  v19[3] = &off_100500E98;
  v1 = [UIImage imageNamed:@"StateDocument"];
  v2 = [v1 imageWithRenderingMode:2];
  v20[3] = v2;
  v19[4] = &off_100500EB0;
  v3 = [UIImage imageNamed:@"StateError"];
  v4 = [v3 imageWithRenderingMode:2];
  v20[4] = v4;
  v19[5] = &off_100500EC8;
  v5 = [UIImage imageNamed:@"StateAirplane"];
  v6 = [v5 imageFlippedForRightToLeftLayoutDirection];
  v7 = [v6 imageWithRenderingMode:2];
  v20[5] = v7;
  v19[6] = &off_100500E20;
  v8 = +[UIImage halfPlayedIcon];
  v20[6] = v8;
  v19[7] = &off_100500E38;
  v9 = +[UIImage unplayedIcon];
  v20[7] = v9;
  v19[8] = &off_100500E08;
  v10 = +[UIImage nowPlayingIcon];
  v20[8] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:9];
  v12 = qword_100583C58;
  qword_100583C58 = v11;
}

void sub_1000E0DB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [MTEpisodeStateView imageForIconKey:a2 theme:v4];
  [v6 setImage:v5];

  [v6 sizeToFit];
}

void sub_1000E1AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E1B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAllPodcastsTo:a3];
}

void sub_1000E1CAC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
    v4 = kMTPodcastEntityName;
    v5 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
    v6 = [v3 objectsInEntity:v4 predicate:v5 sortDescriptors:0];

    v7 = *(a1 + 40);
    v8 = objc_opt_new();
    [v7 setPodcastUuids:v8];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(a1 + 40);
          v15 = [*(*(&v16 + 1) + 8 * v13) uuid];
          [v14 togglePodcastUuid:v15];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000E3B58(uint64_t a1)
{
  if (+[MTPlayerController hasDefaultInstance])
  {
    v3 = +[MTPlayerController defaultInstance];
    v4 = [v3 upNextController];
    [v4 beginUpdates];
  }

  v5 = 0;
  v6 = kMTEpisodeEntityName;
  *&v2 = 134218242;
  v31 = v2;
  do
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [NSFetchRequest fetchRequestWithEntityName:v6];
    [v8 setPredicate:*(a1 + 32)];
    [v8 setReturnsObjectsAsFaults:0];
    [v8 setFetchLimit:200];
    v9 = [*(a1 + 40) config];
    v10 = [v9 supportsPlayback];

    if ((v10 & 1) == 0)
    {
      v11 = [MTEpisode sortDescriptorsForPubDateAscending:1];
      [v8 setSortDescriptors:v11];

      [v8 setFetchOffset:200 * v5];
    }

    v12 = *(a1 + 48);
    v32 = 0;
    v13 = [v12 executeFetchRequest:v8 error:{&v32, v31}];
    v14 = v32;
    v15 = _MTLogCategoryDatabase();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        *buf = 138412546;
        v34 = v17;
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error deleting episodes for predicate %@ - %@", buf, 0x16u);
      }

      v18 = 0;
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v13 count];
        v20 = *(a1 + 32);
        *buf = v31;
        v34 = v19;
        v35 = 2112;
        v36 = v20;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Deleting %lu episodes for predicate %@", buf, 0x16u);
      }

      v21 = [*(a1 + 40) config];
      v22 = [v21 supportsLocalMedia];

      if (v22)
      {
        [*(a1 + 40) _removeDownloadAssetsForEpisodes:v13 shouldKeep:0 forced:*(a1 + 64)];
      }

      v23 = [*(a1 + 40) config];
      v24 = [v23 supportsPlayback];

      if (v24)
      {
        v25 = [*(a1 + 40) _updateUpNextDeleting:v13 inContext:*(a1 + 48) forced:*(a1 + 64) podcastUuids:*(*(*(a1 + 56) + 8) + 40)];
        v26 = +[MTIntentDonationUtil sharedInstance];
        [v26 removeDonationsForEpisodeUuids:v25];
      }

      [*(a1 + 48) saveInCurrentBlock];
      ++v5;
      v18 = [v13 count] > 0xC7;
    }

    objc_autoreleasePoolPop(v7);
  }

  while (v18);
  v27 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a1 + 32);
    *buf = 138412290;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Finished deleting episodes for predicate %@", buf, 0xCu);
  }

  if (+[MTPlayerController hasDefaultInstance])
  {
    v29 = +[MTPlayerController defaultInstance];
    v30 = [v29 upNextController];
    [v30 endUpdates];
  }
}

void sub_1000E43EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = kMTPodcastEntityName;
  v4 = +[NSPredicate truePredicate];
  v5 = kPodcastUuid;
  v19 = kPodcastUuid;
  v6 = [NSArray arrayWithObjects:&v19 count:1];
  v7 = [v2 objectDictionariesInEntity:v3 predicate:v4 sortDescriptors:0 propertiesToFetch:v6 includeObjectId:0];

  v8 = [v7 valueForKey:v5];
  v9 = [NSPredicate predicateWithFormat:@"NOT (%K IN %@)", kEpisodePodcastUuid, v8];
  v10 = *(a1 + 32);
  v11 = kMTEpisodeEntityName;
  v12 = kEpisodeUuid;
  v18 = kEpisodeUuid;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  v14 = [v10 objectDictionariesInEntity:v11 predicate:v9 sortDescriptors:0 propertiesToFetch:v13 includeObjectId:0];

  if ([v14 count])
  {
    v15 = [v14 valueForKey:v12];
    v16 = [NSSet setWithArray:v15];

    v17 = +[IMLogger sharedLogger];
    [v17 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/MTLibrary+MTEpisodeDeletion.m" lineNumber:194 format:{@"Deleting %ld orphaned episodes...", objc_msgSend(v16, "count")}];

    [*(a1 + 40) _deleteEpisodeUuids:v16 forced:1];
  }

  else
  {
    v16 = +[IMLogger sharedLogger];
    [v16 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/MTLibrary+MTEpisodeDeletion.m" lineNumber:199 format:@"No orphaned episodes"];
  }
}

void sub_1000E4800(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) finishWithStatus:0];
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }

    v8 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to resolve active player path with error: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = objc_alloc_init(MPCAssistantCommand);
    v9 = [[MTMPCAssistantGenericPlaybackQueue alloc] initWithPlaybackQueueRef:*(a1 + 48)];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E49BC;
    v12[3] = &unk_1004DBDA8;
    v14 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v13 = v10;
    v15 = v11;
    v16 = *(a1 + 64);
    [v8 sendPlaybackQueue:v9 toDestination:v5 withOptions:0 completion:v12];
  }
}

void sub_1000E49BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 containsObject:&off_100500F10])
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_4:
      v8();
    }
  }

  else
  {
    if (!v5)
    {
      if ([v6 count])
      {
        v11 = [v6 objectAtIndex:0];
        v12 = [v11 intValue];

        v13 = [*(a1 + 48) requestStatusForMediaRemoteStatus:v12];
        v14 = v13;
        if (v13 <= 5 && ((1 << v13) & 0x39) != 0)
        {
          v15 = *(a1 + 48);
          v16 = *(a1 + 32);
          if (*(a1 + 56) == 1)
          {
            [v15 promptBeforePerformingRequestAsBufferedAirPlay:v16 queueStatus:1];
          }

          else
          {
            [v15 performRequestAsBufferedAirPlay:v16];
          }

          goto LABEL_11;
        }

        v18 = *(a1 + 32);
      }

      else
      {
        v17 = _MTLogCategoryMediaRemote();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "No status codes returned after setting remote playback queue", &v20, 2u);
        }

        v18 = *(a1 + 32);
        v14 = 0;
      }

      [v18 finishWithStatus:v14];
      v19 = *(a1 + 40);
      if (!v19)
      {
        goto LABEL_11;
      }

      v8 = *(v19 + 16);
      goto LABEL_4;
    }

    [*(a1 + 32) finishWithStatus:0];
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }

    v10 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to send item into playback queue with error: %@", &v20, 0xCu);
    }
  }

LABEL_11:
}

void sub_1000E4D50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 firstObject];
  v5 = [v4 unsignedIntValue];
  v6 = [*(a1 + 40) requestStatusForMediaRemoteStatus:v5];
  if (v5 && v5 != 3)
  {
    v7 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MediaRemote command failed to fallback to Airplay with status %u", v9, 8u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, 6);
  }
}

id sub_1000E4FC8(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 40) performRequestAsBufferedAirPlay:*(a1 + 32)];
  }

  else
  {
    return [*(a1 + 32) finishWithStatus:2];
  }
}

uint64_t sub_1000E512C(uint64_t a1, uint64_t a2)
{
  if (a2 == 1 && *(a1 + 48) == 1)
  {
    v3 = +[MTPlayerController defaultInstance];
    [v3 playWithReason:*(a1 + 40)];
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_1000E51D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {

    [v3 finishWithStatus:0];
  }

  else
  {
    [v3 setStartPlayback:0];
    [*(a1 + 32) setPlaybackDestination:0];
    v4 = +[MTPlayerController defaultInstance];
    [v4 setPlaybackQueue:*(a1 + 32)];
  }
}

void sub_1000E53E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_8;
    }

    v8 = v3;
    (*(v4 + 16))();
  }

  else
  {
    v8 = 0;
    v5 = +[MPAVRoutingController systemRoute];
    v6 = +[MTPlayerController defaultInstance];
    [v6 setPlayerRoute:v5];

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  v3 = v8;
LABEL_8:
}

void sub_1000E57E4(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  if (![v7 count] || a3)
  {
    v10 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = @"Found 0 player items";
      v12 = *(a1 + 32);
      *buf = 138412802;
      if (a3)
      {
        v11 = @"Target player item not found";
      }

      v29 = v11;
      v30 = 1024;
      v31 = a4;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ with restricted (%x) request for identifiers %@", buf, 0x1Cu);
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = 3;
      if (!a3)
      {
        v14 = 0;
      }

      if (a4)
      {
        v15 = 4;
      }

      else
      {
        v15 = v14;
      }

      (*(v13 + 16))(v13, v15, *(a1 + 64));
    }
  }

  else
  {
    v8 = [[MTItemListManifest alloc] initWithItems:v7];
    v9 = v8;
    if (*(a1 + 40))
    {
      [(MTItemListManifest *)v8 setIdentifier:?];
    }

    else
    {
      v16 = +[NSUUID UUID];
      v17 = [v16 UUIDString];
      [(MTItemListManifest *)v9 setIdentifier:v17];
    }

    [(MTPlayerManifest *)v9 setNetworkUPPEnabled:+[PFClientUtil isRunningOnHomepod]];
    v18 = objc_alloc_init(MTPlaybackContext);
    [(MTPlaybackContext *)v18 setSource:12];
    [(MTPlaybackContext *)v18 setInteractive:0];
    [(MTPlaybackContext *)v18 setUpNextQueueIntent:*(a1 + 72)];
    v19 = [MTSetPlaybackQueueRequest requestWithContext:v18];
    [v19 setStartPlayback:*(a1 + 80)];
    [v19 setPlaybackDestination:0];
    [v19 setManifest:v9];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1000E5A80;
    v25 = &unk_1004DBE70;
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v26 = v20;
    v27 = v21;
    [v19 setCompletion:&v22];
    [*(a1 + 48) setPlaybackQueue:{v19, v22, v23, v24, v25}];
  }
}

uint64_t sub_1000E5A80(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 40));
  }

  return result;
}

void sub_1000E5CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v5 = dispatch_get_global_queue(0, 0);
    MRMediaRemoteInsertSystemAppPlaybackQueueForPlayer();
  }

  else
  {
    v6 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to resolve active player path with error: %@", &v7, 0xCu);
    }
  }
}

void sub_1000E5DEC(id a1, unsigned int a2)
{
  if (a2)
  {
    v3 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to insert item into playback queue with error: %d", v4, 8u);
    }
  }
}

uint64_t sub_1000E5FA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  else if (v5)
  {
    v6 = [MPCAssistantMutableRemoteControlDestination alloc];
    v7 = [v6 initWithAppBundleID:kMTApplicationBundleIdentifier playerID:kPodcastsPlayerID origin:MRNowPlayingPlayerPathGetOrigin()];
    [v7 setSingleGroup:1];
    (*(*(a1 + 32) + 16))();
  }

  return _objc_release_x2();
}

void sub_1000E62D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000E6300(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000E6910(id a1)
{
  v1 = [[NSLocale alloc] initWithLocaleIdentifier:@"en"];
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(&off_100502428, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [&off_100502428 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(&off_100502428);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_alloc_init(NSDateFormatter);
        [v8 setDateFormat:v7];
        [v8 setLocale:v1];
        [v2 addObject:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [&off_100502428 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = [v2 copy];
  v10 = qword_100583C68;
  qword_100583C68 = v9;
}

void sub_1000E7B14(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1000E7A08);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E7B80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) absoluteString];
  v5 = [v2 podcastForFeedUrl:v3];

  v4 = v5;
  if (v5)
  {
    [v5 setAuthenticatedDark:1];
    [*(a1 + 32) saveInCurrentBlock];
    v4 = v5;
  }
}

void sub_1000E7C08(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) absoluteString];
  v4 = [v2 podcastForFeedUrl:v3];

  if (v4)
  {
    v5 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 40) absoluteString];
      v7 = *(a1 + 48);
      v8 = 138412546;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to fetch episodes for podcast using external feed url (%@) with status %ld. Incrementing consecutiveFeedFetchErrors count", &v8, 0x16u);
    }

    [v4 setConsecutiveFeedFetchErrors:{objc_msgSend(v4, "consecutiveFeedFetchErrors") + 1}];
    [*(a1 + 32) saveInCurrentBlock];
  }
}

void sub_1000E7D24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) absoluteString];
  v7 = [v2 podcastForFeedUrl:v3];

  v4 = [v7 uuid];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1000E7DB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) absoluteString];
  v4 = [v2 podcastForFeedUrl:v3];

  v5 = +[MTFeedUpdateMetricsAction error];
  v6 = +[MTFeedUpdateMetricsDataKey statusCode];
  v15[0] = v6;
  v7 = [NSNumber numberWithInteger:*(a1 + 56)];
  v16[0] = v7;
  v8 = +[MTFeedUpdateMetricsDataKey error];
  v15[1] = v8;
  v9 = [*(a1 + 48) metricsAdditionalData];
  v10 = v9;
  v11 = &stru_1004F3018;
  if (v9)
  {
    v11 = v9;
  }

  v16[1] = v11;
  v12 = +[MTFeedUpdateMetricsDataKey pcrFallback];
  v15[2] = v12;
  v13 = [NSNumber numberWithBool:*(a1 + 64)];
  v16[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  [IMMetrics recordEvent:v5 dataSource:v4 data:v14];
}

void sub_1000E812C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v19;
      *&v6 = 138412290;
      v17 = v6;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [*(*(&v18 + 1) + 8 * i) originalRequest];
          v11 = [v10 URL];

          if (v11)
          {
            v12 = _MTLogCategoryFeedUpdate();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v23 = v11;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found existing task for feed-update for %@.", buf, 0xCu);
            }

            v13 = [*(a1 + 32) delegate];
            [v13 didRestoreFeedUrlTask:v11];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No existing tasks found on background-session.", buf, 2u);
    }
  }

  v14 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 32) workQueue];
    *buf = 138412290;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Rebuild pending network tasks - RESUMING workQueue: %@.", buf, 0xCu);
  }

  v16 = [*(a1 + 32) workQueue];
  dispatch_resume(v16);
}

void sub_1000E9CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E9D14(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) identifier];
    v9 = [*(a1 + 32) title];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[InfoCenter] Finished fetching artwork for content item %{public}@ - %@", &v12, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  v10 = [*(a1 + 40) artworkRequests];
  [v10 removeObject:*(*(*(a1 + 56) + 8) + 40)];

  return kdebug_trace();
}

uint64_t sub_1000E9F54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v6 = [*(a1 + 32) title];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[InfoCenter] Did fetch artwork for content item %{public}@ - %@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  return kdebug_trace();
}

void sub_1000EA260(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) episodeUuid];
  v4 = [v2 episodeForUuid:v3];

  v5 = [v4 itemDescriptionWithoutHTML];
  v6 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 48) identifier];
    v8 = [*(a1 + 48) title];
    v9 = v8;
    v10 = &stru_1004F3018;
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    if (!v5)
    {
      v10 = @" - NO DESCRIPTION";
    }

    v14 = v8;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[InfoCenter] Did fetch info for content item %{public}@ - %@%@", &v11, 0x20u);
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v5);
}

void sub_1000EAA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1000EAA44(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 instanceIdentifier];
  v7 = [v6 UUIDString];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_1000EAAEC(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  v5 = [v4 title];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1004F3018;
  }

  v8 = [v3 stringByAppendingString:v7];
  v9 = [v8 stringByAppendingString:@":"];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 32) + 8) + 40);
  v20 = [v4 instanceIdentifier];

  v13 = [v20 UUIDString];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1004F3018;
  }

  v16 = [v12 stringByAppendingString:v15];
  v17 = [v16 stringByAppendingString:{@", "}];
  v18 = *(*(a1 + 32) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

void sub_1000ECBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000ECBF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000ECCE0;
  v8[3] = &unk_1004D9DB8;
  objc_copyWeak(&v10, (a1 + 32));
  v7 = v5;
  v9 = v7;
  [NSThread mainThread:v8];

  objc_destroyWeak(&v10);
}

void sub_1000ECCE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    v5 = WeakRetained;
    v4 = [WeakRetained isPlaceholder];
    v3 = v5;
    if (v4)
    {
      [v5 setImage:*(a1 + 32)];
      v3 = v5;
    }
  }
}

void sub_1000ECE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000ECEA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000ECFAC;
  v12[3] = &unk_1004DA130;
  objc_copyWeak(&v15, (a1 + 32));
  v10 = v8;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [NSThread mainThread:v12];

  objc_destroyWeak(&v15);
}

void sub_1000ECFAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = WeakRetained;
      v3 = [*(a1 + 40) isEqualToString:WeakRetained[3]];
      WeakRetained = v4;
      if (v3)
      {
        [v4 setImage:*(a1 + 32)];
        WeakRetained = v4;
      }
    }
  }
}

void sub_1000EDB28(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (([(objc_class *)v1 hasPerformedLegacyBadgeMigration]& 1) == 0)
  {
    v2 = [[v1 alloc] _initShared];
    v3 = qword_100583C88;
    qword_100583C88 = v2;
  }
}

void sub_1000EDD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000EDD28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performMigrationIfNecessary];
}

void sub_1000EDF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EDF68(uint64_t a1)
{
  result = [objc_opt_class() hasPerformedLegacyBadgeMigration];
  if (result)
  {
    v3 = 1;
  }

  else
  {
    result = [*(a1 + 32) state];
    v3 = result < 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = *(a1 + 32);

    return [v4 setState:1];
  }

  return result;
}

void sub_1000EE084(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v3 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Legacy badge clearing deferred until no remaining notifications", v5, 2u);
    }

    [*(a1 + 32) setState:0];
  }

  else
  {
    v4 = +[UNUserNotificationCenter currentNotificationCenter];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000EE178;
    v6[3] = &unk_1004DC070;
    v6[4] = *(a1 + 32);
    [v4 getBadgeNumberWithCompletionHandler:v6];
  }
}

void sub_1000EE178(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setState:2];
  [*(a1 + 32) stopObservingApplicationState];
  [objc_opt_class() commitHasPerformedLegacyBadgeMigration];
  if (a2)
  {
    v4 = _MTLogCategoryNotifications();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Legacy badge clearing complete", v6, 2u);
    }

    v5 = +[UNUserNotificationCenter currentNotificationCenter];
    [v5 setBadgeNumber:0 withCompletionHandler:0];
  }
}

void sub_1000EE2A4(uint64_t a1)
{
  v2 = [*(a1 + 32) appActivateObserver];

  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = [*(a1 + 32) appActivateObserver];
    [v3 removeObserver:v4];

    v5 = *(a1 + 32);

    [v5 setAppActivateObserver:0];
  }
}

id sub_1000EE780(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) episodeForUuid:{*(*(&v9 + 1) + 8 * v6), v9}];
        [v7 setIsNew:0];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) saveInCurrentBlock];
}

void sub_1000EFA04(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"MTSyncControllerOperationCompleted" object:0];
}

void sub_1000EFC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_1000EFCC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endBackgroundTask];
}

void sub_1000F0478(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

  *(*(*(a1 + 32) + 8) + 24) = UIBackgroundTaskInvalid;
}

void sub_1000F04D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [v5 BOOLValue];
  v9 = _MTLogCategoryCloudSync();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 && WeakRetained)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "performUniversalPlaybackPositionSync", buf, 2u);
    }

    v11 = +[(MTBaseProcessor *)MTAssetRemovalProcessor];
    [v11 disable];

    v12 = objc_opt_new();
    [v12 setOperationType:5];
    [v12 setStartDelay:0.0];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F06EC;
    v14[3] = &unk_1004D9E80;
    objc_copyWeak(&v15, (a1 + 40));
    [v12 setMainBlock:v14];
    [WeakRetained addOperation:v12];
    WeakRetained[33] = 0;
    v13 = +[UIApplication sharedApplication];
    [v13 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    objc_destroyWeak(&v15);
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UPPEnabled bag value is false. Will not sync UPP.", buf, 2u);
    }

    v12 = +[UIApplication sharedApplication];
    [v12 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
  }
}

void sub_1000F06EC(uint64_t a1)
{
  v2 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UPP Sync Started", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained UPPStore];
  [v4 synchronizeImmediatelyWithCompletionBlock:0];
}

AMSPromise *__cdecl sub_1000F0850(id a1, NSString *a2)
{
  if ([(NSString *)a2 BOOLValue])
  {
    v2 = 0;
  }

  else
  {
    v2 = +[MTApplication localLibraryUpdatesDisabled]^ 1;
  }

  v3 = [NSNumber numberWithBool:v2];
  v4 = [AMSPromise promiseWithResult:v3];

  return v4;
}

id sub_1000F0970(uint64_t a1)
{
  [*(a1 + 32) syncCriticalBookkeeperKeysShouldSyncCleanKeys:0];
  result = [*(a1 + 32) uppSyncDirtyFlag];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 performUniversalPlaybackPositionSync];
  }

  return result;
}

void sub_1000F0B1C(uint64_t a1)
{
  v2 = [MTTermsVersionSyncProcessor alloc];
  v3 = objc_opt_new();
  v4 = [(MTTermsVersionSyncProcessor *)v2 initWithStorage:v3];

  if (+[MTPrivacyUtil cloudSyncIsDirty])
  {
    v5 = [*(a1 + 32) cloudSyncController];
    v10 = kMTTermsVersionKey;
    v6 = [NSArray arrayWithObjects:&v10 count:1];
    v7 = [v5 scheduleSetTransactionWithKeys:v6 processor:v4];
LABEL_5:

    goto LABEL_6;
  }

  if (!+[MTPrivacyUtil allowReporting])
  {
    v5 = [*(a1 + 32) cloudSyncController];
    v9 = kMTTermsVersionKey;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    v8 = [v5 scheduleGetTransactionWithKeys:v6 processor:v4];
    goto LABEL_5;
  }

LABEL_6:
}

void sub_1000F0DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F0DF4(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC8Podcasts29NonFollowedShowsSyncProcessor);
  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v4 = [v3 isNonFollowedShowsSyncDirty];

  v5 = _MTLogCategoryCloudSync();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[NonFollowedShows] SET Implicit Sync Started", v12, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained cloudSyncController];
    v14 = kMTNonFollowedShowsSyncKey;
    v9 = [NSArray arrayWithObjects:&v14 count:1];
    v10 = [v8 scheduleSetTransactionWithKeys:v9 processor:v2];
  }

  else
  {
    if (v6)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[NonFollowedShows] GET Implicit Sync Started", v12, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained cloudSyncController];
    v13 = kMTNonFollowedShowsSyncKey;
    v9 = [NSArray arrayWithObjects:&v13 count:1];
    v11 = [v8 scheduleGetTransactionWithKeys:v9 processor:v2];
  }
}

void sub_1000F14A0(uint64_t a1)
{
  v2 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Episode SET Started", v10, 2u);
  }

  v3 = [*(a1 + 32) expandFeedUrls:*(a1 + 40)];
  v4 = [MTEpisodeSyncProcessor alloc];
  v5 = [*(a1 + 32) episodeSyncStorage];
  v6 = [(MTEpisodeSyncProcessor *)v4 initWithStorageProvider:v5];

  v7 = [*(a1 + 32) cloudSyncController];
  v8 = [v3 allObjects];
  v9 = [v7 scheduleSetTransactionWithKeys:v8 processor:v6];
}

void sub_1000F16F0(uint64_t a1)
{
  v2 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Episode GET Started for FeedURLs: %@", &v11, 0xCu);
  }

  v4 = [*(a1 + 40) expandFeedUrls:*(a1 + 32)];
  v5 = [MTEpisodeSyncProcessor alloc];
  v6 = [*(a1 + 40) episodeSyncStorage];
  v7 = [(MTEpisodeSyncProcessor *)v5 initWithStorageProvider:v6];

  v8 = [*(a1 + 40) cloudSyncController];
  v9 = [v4 allObjects];
  v10 = [v8 scheduleGetTransactionWithKeys:v9 processor:v7];
}

void sub_1000F1BDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000F1C04(uint64_t a1)
{
  v2 = [*(a1 + 32) cleanKeys];
  v3 = [v2 count];
  WeakRetained = _MTLogCategoryCloudSync();
  v5 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v2 description];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "[MultiKey] GET Operation for keys: %@", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained cloudSyncController];
    v8 = [v7 scheduleGetTransactionWithKeys:v2 processor:*(a1 + 32)];
  }

  else if (v5)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "[MultiKey] No clean keys found -> No need to schedule MultiKey GET Operation.", &v9, 2u);
  }
}

void sub_1000F1D48(id *a1)
{
  [a1[4] dirtyKeys];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = objc_alloc_init(MTTimedOperation);
        v8 = [a1[4] processorForKey:v6];
        if (![v8 hasLocalChanges])
        {

          goto LABEL_11;
        }

        -[MTTimedOperation setOperationType:](v7, "setOperationType:", [v8 operationTypeForSET]);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1000F1F58;
        v10[3] = &unk_1004DC1A0;
        v10[4] = v6;
        objc_copyWeak(&v12, a1 + 6);
        v9 = v8;
        v11 = v9;
        [(MTTimedOperation *)v7 setMainBlock:v10];
        [a1[5] addOperation:v7];

        objc_destroyWeak(&v12);
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1000F1F58(uint64_t a1)
{
  v2 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) description];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[MultiKey] SET Operation for key: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained cloudSyncController];
  v8 = *(a1 + 32);
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  v7 = [v5 scheduleSetTransactionWithKeys:v6 processor:*(a1 + 40)];
}

id sub_1000F263C(uint64_t a1)
{
  [*(a1 + 32) _synchronousResetToInitialStateDatabase];
  [*(a1 + 32) _synchronousResetToInitialStateMetadata];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _finaliseResetToInitial:v3];
}

void sub_1000F2738(uint64_t a1)
{
  IsAudioAccessory = MSVDeviceIsAudioAccessory();
  v3 = &OBJC_IVAR___MTCollectionViewFlowLayoutAttributes__showsSeperator;
  if (([*(a1 + 32) hasPodcastSyncVersion] & 1) != 0 || objc_msgSend(*(a1 + 32), "hasPodcastSyncV3Version"))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = kMTPodcastEntityName;
    v7 = +[MTPodcast predicateForNotHiddenPodcasts];
    v8 = [v5 objectsInEntity:v6 predicate:v7 sortDescriptors:0];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v10)
    {
      v11 = v10;
      v40 = v4;
      v12 = 0;
      v13 = *v50;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v49 + 1) + 8 * i);
          if ((IsAudioAccessory & 1) == 0 && [*(*(&v49 + 1) + 8 * i) hasBeenSynced] && (objc_msgSend(v15, "isImplicitlyFollowed") & 1) == 0)
          {
            [v15 setHasBeenSynced:0];
            v12 = 1;
          }

          v16 = [*(a1 + 32) episodeSyncStorage];
          v17 = [v15 feedURL];
          [v16 resetVersionForFeedUrl:v17];

          v18 = [*(a1 + 32) episodeSyncStorage];
          v19 = [v15 updatedFeedURL];
          [v18 resetVersionForFeedUrl:v19];
        }

        v11 = [v9 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v11);

      v4 = v40;
      if (v12)
      {
        [*(a1 + 40) saveInCurrentBlock];
      }
    }

    else
    {
    }

    objc_autoreleasePoolPop(v4);
    v3 = &OBJC_IVAR___MTCollectionViewFlowLayoutAttributes__showsSeperator;
    if (IsAudioAccessory)
    {
      v20 = +[MTLibrary sharedInstance];
      [v20 synchronouslyMarkAsHiddenAllPodcastsWithoutResettingSyncVersions];
    }

    [objc_opt_class() resetAllSubscriptionSyncVersion];
    [objc_opt_class() resetPlaylistSyncVersion];
  }

  if ([*(a1 + 32) hasPlaylistSyncVersion])
  {
    v21 = objc_autoreleasePoolPush();
    if (IsAudioAccessory)
    {
      v22 = [v3 + 462 sharedInstance];
      [v22 deleteAllTopLevelStationsExcludingFolders];
    }

    else
    {
      v22 = +[MTPlaylist topLevelPlaylistsExcludingFoldersPredicate];
      v23 = [*(a1 + 40) objectsInEntity:kMTPlaylistEntityName predicate:v22 sortDescriptors:0];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v46;
        do
        {
          for (j = 0; j != v25; j = j + 1)
          {
            if (*v46 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v45 + 1) + 8 * j);
            if ([v28 hasBeenSynced])
            {
              [v28 setHasBeenSynced:0];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v45 objects:v54 count:16];
        }

        while (v25);
      }

      [*(a1 + 40) saveInCurrentBlock];
    }

    objc_autoreleasePoolPop(v21);
    [objc_opt_class() resetPlaylistSyncVersion];
  }

  if (+[MTBookmarksSyncStorage hasBookmarksSync])
  {
    v29 = objc_autoreleasePoolPush();
    v30 = +[MTEpisode predicateForBookmarkedEpisodes];
    v31 = [*(a1 + 40) objectsInEntity:kMTEpisodeEntityName predicate:v30 sortDescriptors:0];
    if ([v31 count])
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v41 objects:v53 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v42;
        do
        {
          for (k = 0; k != v34; k = k + 1)
          {
            if (*v42 != v35)
            {
              objc_enumerationMutation(v32);
            }

            [*(*(&v41 + 1) + 8 * k) markAsUnbookmarked];
          }

          v34 = [v32 countByEnumeratingWithState:&v41 objects:v53 count:16];
        }

        while (v34);
      }

      [*(a1 + 40) saveInCurrentBlock];
    }

    objc_autoreleasePoolPop(v29);
    +[MTBookmarksSyncStorage resetBookmarksSync];
  }

  [*(a1 + 40) deleteAllUPPMetadata];
  if ([*(a1 + 32) hasInterestSyncVersion])
  {
    v37 = objc_autoreleasePoolPush();
    v38 = [v3 + 462 sharedInstance];
    [v38 deleteAllInterestsBlockingCaller];

    objc_autoreleasePoolPop(v37);
    +[_TtC8Podcasts19InterestSyncStorage resetInterestSync];
  }

  v39 = [v3 + 462 sharedInstance];
  [v39 immediatelyDeleteAllHiddenPodcasts];
}

void sub_1000F2EA4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  if ([objc_opt_class() isUserLoggedIn])
  {
    v4 = +[MTPushNotificationController sharedInstance];
    [v4 registerPushNotifications];
  }

  if ([*(a1 + 32) isSyncing])
  {
    v5 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Syncing content for new account when current sync finishes", buf, 2u);
    }

    [*(a1 + 32) setResyncWhenDone:1];
  }

  else if ([*(a1 + 32) isUserLoggedIn])
  {
    v6 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Syncing Content for New Account", v8, 2u);
    }

    v7 = +[MTSyncController sharedInstance];
    [v7 syncEverything];
  }

  objc_sync_exit(v3);
}

void sub_1000F43E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000F43FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    [WeakRetained removeEpisodeObserverForPodcasts:*(a1 + 32)];
    objc_autoreleasePoolPop(v3);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        v8 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [WeakRetained updateEpisodeObserverForPodcast:*(*(&v18 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v6);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = *(a1 + 48);
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [WeakRetained addEpisodeObserverForPodcast:{*(*(&v14 + 1) + 8 * v13), v14}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v11);
    }
  }
}

void sub_1000F4C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_1000F4C88(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F4DBC;
  v10[3] = &unk_1004DC278;
  objc_copyWeak(&v14, a1 + 6);
  objc_copyWeak(&v15, a1 + 5);
  v11 = a1[4];
  v8 = v5;
  v12 = v8;
  v9 = v6;
  v13 = v9;
  [WeakRetained enqueueWorkBlock:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
}

void sub_1000F4DA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v1 + 56));
  _Unwind_Resume(a1);
}

void sub_1000F4DBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = objc_loadWeakRetained((a1 + 64));
  [v2 episodeUuidObserver:WeakRetained resultsChangedForPodcast:*(a1 + 32) withDeletedIds:*(a1 + 40) andInsertIds:*(a1 + 48)];
}

void sub_1000F5048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F5060(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:kPodcastUuid];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000F51EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F5214(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a3 uuids];
  [v3 unionSet:v4];
}

void sub_1000F573C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  [v4 deleteObject:v3];
}

void sub_1000F579C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 managedObjectContext];
  v6 = [MTPodcastPlaylistSettings insertNewSettingsInManagedObjectContext:v5];

  [v6 setPodcast:v4];
  [v6 setPlaylist:*(a1 + 32)];
  [v6 setEpisodesToShow:{objc_msgSend(*(a1 + 40), "episodesToShow")}];
  [v6 setMediaType:{objc_msgSend(*(a1 + 40), "mediaType")}];
  [v6 setShowPlayedEpisodes:{objc_msgSend(*(a1 + 40), "showPlayedEpisodes")}];
  [v6 setTracksDefault:1];
  [v6 setEpisodesToShow:6];
}

void sub_1000F6020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F603C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 podcast];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    *a4 = 1;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_1000F61C0(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableOrderedSetValueForKey:kPlaylistEpisodes];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 podcast];
        v11 = *(a1 + 40);

        if (v10 == v11)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v18 + 1) + 8 * j);
          [v17 removePlaylistsObject:{*(a1 + 32), v18}];
          [*(a1 + 32) addDeletedEpisodesObject:v17];
          [v4 removeObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }

    [*(a1 + 32) recalculateEpisodeCounts];
  }

  [*(a1 + 32) setNeedsUpdate:{1, v18}];
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 48) saveInCurrentBlock];
  }
}

void sub_1000F667C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableOrderedSetValueForKey:kPlaylistEpisodes];
  [v2 removeObject:*(a1 + 40)];
  [*(a1 + 32) recalculateEpisodeCounts];
  [*(a1 + 40) removePlaylistsObject:*(a1 + 32)];
  [*(a1 + 32) addDeletedEpisodesObject:*(a1 + 40)];
  [*(a1 + 32) setNeedsUpdate:1];
  if ((*(a1 + 56) & 1) == 0)
  {
    [*(a1 + 48) saveInCurrentBlock];
  }
}

void sub_1000F696C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F6984(uint64_t a1)
{
  v6 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"%K = %lld", kPlaylistParentMediaLibraryId, [*(a1 + 32) mediaLibraryId]);
  v2 = *(a1 + 40);
  v3 = kMTPlaylistEntityName;
  v4 = [NSArray arrayWithObjects:kPlaylistMediaLibraryId, 0];
  v5 = [v2 objectDictionariesInEntity:v3 predicate:v6 sortDescriptors:0 propertiesToFetch:v4 includeObjectId:1];

  *(*(*(a1 + 48) + 8) + 24) = [v5 count];
}

void sub_1000F6B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F6B6C(uint64_t a1)
{
  v2 = kPlaylistMediaLibraryId;
  v7 = [NSPredicate predicateWithFormat:@"%K != 0 AND %K = 0", kPlaylistMediaLibraryId, kPlaylistParentMediaLibraryId];
  v3 = *(a1 + 32);
  v4 = kMTPlaylistEntityName;
  v5 = [NSArray arrayWithObjects:v2, 0];
  v6 = [v3 objectDictionariesInEntity:v4 predicate:v7 sortDescriptors:0 propertiesToFetch:v5 includeObjectId:1];

  *(*(*(a1 + 40) + 8) + 24) = [v6 count];
}

void sub_1000F80C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(a1 + 32) subscriptionState] == 4)
  {
    v3 = +[UIApplication sharedApplication];
    [v3 unregisterForRemoteNotifications];

    [*(a1 + 32) setSubscriptionState:0];
    v4 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      v5 = "Unregistered from APNS.";
      v6 = &v9;
      v7 = v4;
      v8 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v5, v6, 2u);
    }
  }

  else
  {
    v4 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "Failed to complete APNS unregistration: Reason: interrupted.";
      v6 = buf;
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }

  objc_sync_exit(v2);
}

void sub_1000F87CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F87F0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
    objc_sync_enter(v10);
    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 subscriptionState];

    objc_sync_exit(v10);
    if (v12 == 1)
    {
      v13 = _MTLogCategoryCloudSync();
      v14 = v13;
      if (v6)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = [*(a1 + 32) base64EncodedStringWithOptions:0];
          v16 = 138412290;
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Starting APNS registration transaction for token = %@", &v16, 0xCu);
        }

        v14 = objc_loadWeakRetained((a1 + 40));
        [v14 executeAction:kPodcastsPushNotificationRegisterValue using:v6 andToken:*(a1 + 32)];
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to complete APNS registration. Reason: Failed to load valid subscription URL from bag.", &v16, 2u);
      }
    }
  }
}

id sub_1000FA754(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:@"uuid"];
  v4 = [NSMutableSet setWithArray:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  v7 = objc_opt_new();
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = v7;

  v10 = objc_opt_new();
  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  *(v11 + 24) = v10;

  v13 = *(a1 + 32);

  return [v13 notifyObservers];
}

void sub_1000FA9E8(void *a1, int a2, id a3)
{
  v4 = objc_retainBlock(a3);
  (*(v4 + 2))(v4, a1[4], a1[5], a1[6]);
}

id sub_1000FAE74(void *a1)
{
  v1 = [a1 MZDataByInflatingWithGZip];
  v2 = CFPropertyListCreateWithData(0, v1, 0, 0, 0);
  if (!v2)
  {
    v7[0] = objc_opt_class();
    v7[1] = objc_opt_class();
    v7[2] = objc_opt_class();
    v7[3] = objc_opt_class();
    v7[4] = objc_opt_class();
    v7[5] = objc_opt_class();
    v7[6] = objc_opt_class();
    v3 = [NSArray arrayWithObjects:v7 count:7];
    v4 = [NSSet setWithArray:v3];

    v6 = 0;
    v2 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v1 error:&v6];
  }

  return v2;
}

id sub_1000FAFF8(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = sub_1000FB1B8(v8);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = sub_1000FAFF8(v8);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = sub_1000FAE74(v8);
            }

            else
            {
              v9 = v8;
            }
          }
        }

        v10 = v9;
        [v2 addObject:{v9, v12}];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

id sub_1000FB1B8(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v1 objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = sub_1000FB1B8(v9);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = sub_1000FAFF8(v9);
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_13;
            }

            v10 = sub_1000FAE74(v9);
          }
        }

        v11 = v10;

        v9 = v11;
LABEL_13:
        [v2 setObject:v9 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_1000FB720(uint64_t a1)
{
  if ((*(*(a1 + 32) + 32) & 1) == 0)
  {
    v2 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MTPodcastDerivedPropertyObserver did pause processing.", v3, 2u);
    }

    *(*(a1 + 32) + 32) = 1;
  }
}

void *sub_1000FB840(void *result)
{
  if (*(result[4] + 32) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    v4 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MTPodcastDerivedPropertyObserver did resume processing.", v5, 2u);
    }

    *(v3[4] + 32) = 0;
    return [v3[4] processLatestPersistentHistoryTransactions];
  }

  return result;
}

void sub_1000FBB98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v11 = 0;
  v3 = [v2 executeRequest:v1 error:&v11];
  v4 = v11;
  v5 = _MTLogCategoryDatabase();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v4;
      v7 = "Derived Property Observer encountered error deleting history %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, buf, v10);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v13) = 14;
    v7 = "Derived Property Observer deleted persistent history older than %d days ago";
    v8 = v6;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 8;
    goto LABEL_6;
  }
}

void sub_1000FBDEC(id *a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [a1[5] episodeResultsChangedForPodcastUuid:*(*(&v10 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FBF64;
  block[3] = &unk_1004D8358;
  v9 = a1[6];
  dispatch_after(v7, &_dispatch_main_q, block);
}

void sub_1000FC684(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = kMTPodcastEntityName;
  v4 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v5 = kPodcastUuid;
  v49 = kPodcastUuid;
  v6 = [NSArray arrayWithObjects:&v49 count:1];
  v7 = [v2 objectsInEntity:v3 predicate:v4 propertiesToFetch:v6 batchSize:0];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v14 = [v13 uuid];

        if (v14)
        {
          v15 = *(a1 + 40);
          v16 = [v13 uuid];
          [v15 addObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v10);
  }

  v17 = *(a1 + 32);
  v18 = +[MTPodcast predicateForHiddenOrImplicitlyFollowedPodcasts];
  v47 = v5;
  v19 = [NSArray arrayWithObjects:&v47 count:1];
  v20 = [v17 objectsInEntity:v3 predicate:v18 propertiesToFetch:v19 batchSize:0];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v36 + 1) + 8 * j);
        v27 = [v26 uuid];

        if (v27)
        {
          v28 = *(a1 + 48);
          v29 = [v26 uuid];
          [v28 addObject:v29];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v23);
  }

  v30 = [*(a1 + 32) persistentStoreCoordinator];
  v31 = [v30 currentPersistentHistoryTokenFromStores:0];
  v32 = *(*(a1 + 56) + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = v31;

  v34 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138412290;
    v45 = v35;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Derived Property Observer fetched latest token %@", buf, 0xCu);
  }
}

void sub_1000FC9E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v9 + 1) + 8 * v6);
          v8 = WeakRetained[5];
          objc_sync_enter(v8);
          [WeakRetained[5] removeObjectForKey:{v7, v9}];
          objc_sync_exit(v8);

          [WeakRetained notifyObserversForPodcast:v7];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }
}

void sub_1000FCB3C(uint64_t a1)
{
  v2 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Derived Property Observer will update stats for podcasts", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reportStatsForPodcasts];
}

void sub_1000FD000(uint64_t a1)
{
  v2 = [MTEpisode predicateForIsFromiTunesSync:1];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) countOfObjectsInEntity:kMTEpisodeEntityName predicate:v2];
  v3 = *(a1 + 32);
  v4 = kMTPodcastEntityName;
  v5 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v6 = [*(*(a1 + 40) + 88) allObjects];
  v7 = [v3 objectsInEntity:v4 predicate:v5 propertiesToFetch:v6 batchSize:0];

  *(*(*(a1 + 56) + 8) + 24) = [v7 count];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 subscribed])
        {
          ++*(*(*(a1 + 64) + 8) + 24);
        }

        if ([v13 isAuthenticatedDark])
        {
          ++*(*(*(a1 + 72) + 8) + 24);
        }

        if ([v13 isPastAutodownloadOrEpisodeLimitDark])
        {
          ++*(*(*(a1 + 80) + 8) + 24);
        }

        if ([v13 notifications])
        {
          ++*(*(*(a1 + 88) + 8) + 24);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

void sub_1000FD42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000FD454(uint64_t a1)
{
  kdebug_trace();
  v19 = [MTEpisode predicateForUserEpisodesOnPodcastUuid:*(a1 + 32) ctx:*(a1 + 40)];
  v2 = [MTEpisode predicateForEpisodesOnUnplayedTabOnPodcastUuid:*(a1 + 32) ctx:*(a1 + 40)];
  kdebug_trace();
  v3 = *(a1 + 40);
  v4 = kMTEpisodeEntityName;
  v5 = [MTEpisode predicateForIsNew:1];
  v6 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:*(a1 + 32)];
  v7 = [v5 AND:v6];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 countOfObjectsInEntity:v4 predicate:v7]);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(a1 + 40);
  v12 = [MTEpisode predicateForPlayed:0];
  v13 = [v2 AND:v12];
  v14 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:*(a1 + 32)];
  v15 = [v13 AND:v14];
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 countOfObjectsInEntity:v4 predicate:v15]);
  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  [*(a1 + 48) updateFlagsForPodcastUuid:*(a1 + 32) predicateForUnplayedTab:v2 predicateForUserEpisodes:v19];
}

void sub_1000FDC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak((v37 - 168));
  _Unwind_Resume(a1);
}

void sub_1000FDC78(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  kdebug_trace();
  v41 = kMTEpisodeEntityName;
  v2 = [*(v1 + 32) objectsInEntity:? predicate:? propertiesToFetch:? batchSize:?];
  kdebug_trace();
  kdebug_trace();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v51;
    do
    {
      v8 = 0;
      v43 = v5;
      v9 = v5 + 1;
      do
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * v8);
        v11 = objc_autoreleasePoolPush();
        v12 = [*(v1 + 48) evaluateWithObject:v10];
        if (v12 != [v10 unplayedTab] && (objc_msgSend(*(v1 + 56), "_shouldSkipSettingPropertiesForWatchPPT") & 1) == 0)
        {
          [v10 setUnplayedTab:v12];
          v6 = 1;
        }

        v13 = [*(v1 + 64) evaluateWithObject:v10];
        if (v13 != [v10 userEpisode] && (objc_msgSend(*(v1 + 56), "_shouldSkipSettingPropertiesForWatchPPT") & 1) == 0)
        {
          [v10 setUserEpisode:v13];
          v6 = 1;
        }

        if (!(v13 & 1 | (([v10 isNew] & 1) == 0)) && (objc_msgSend(*(v1 + 56), "_shouldSkipSettingPropertiesForWatchPPT") & 1) == 0)
        {
          [v10 setIsNew:0];
          v6 = 1;
        }

        if (!(v9 % 0xC8) && (v6 & 1) != 0)
        {
          [*(v1 + 32) setTransactionAuthor:@"MTPodcastDerivedPropertyObserver"];
          [*(v1 + 32) saveInCurrentBlock];
          [*(v1 + 32) setTransactionAuthor:0];
          v6 = 0;
        }

        objc_autoreleasePoolPop(v11);
        ++v8;
        ++v9;
      }

      while (v4 != v8);
      v5 = &v4[v43];
      v4 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v4);
  }

  [*(v1 + 32) setTransactionAuthor:@"MTPodcastDerivedPropertyObserver"];
  [*(v1 + 32) saveInCurrentBlock];
  [*(v1 + 32) setTransactionAuthor:0];
  kdebug_trace();
  kdebug_trace();
  v14 = [*(v1 + 32) podcastForUuid:*(v1 + 72)];
  v15 = *(v1 + 72);
  v37 = v14;
  v16 = [v14 channel];
  v17 = +[MTEpisode predicateForEpisodesWhichNeedEntitlementStateUpdateForShowUUID:subscriptionState:](MTEpisode, "predicateForEpisodesWhichNeedEntitlementStateUpdateForShowUUID:subscriptionState:", v15, [v16 subscriptionActive]);

  v36 = v17;
  v18 = [*(v1 + 32) objectsInEntity:v41 predicate:v17 propertiesToFetch:0 batchSize:200];
  [*(v1 + 32) setTransactionAuthor:@"MTPodcastDerivedPropertyObserver"];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = v18;
  v19 = [v44 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v47;
    v23 = 0x8F5C28F5C28F5C29;
    v24 = 0x51EB851EB851EB8;
    v40 = v1;
    do
    {
      v25 = 0;
      v39 = v21;
      v26 = v21 + 1;
      v42 = v20;
      do
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(v44);
        }

        v27 = *(*(&v46 + 1) + 8 * v25);
        v28 = [v27 entitlementState];
        [v27 updateEntitlementState];
        v29 = _MTLogCategoryFeedUpdate();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          [v27 uuid];
          v31 = v30 = v22;
          [v27 title];
          v32 = v24;
          v34 = v33 = v23;
          v35 = [v27 entitlementState];
          *buf = 138544130;
          v55 = v31;
          v56 = 2112;
          v57 = v34;
          v58 = 2048;
          v59 = v28;
          v60 = 2048;
          v61 = v35;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ updated entitlement state for episode from %lld to %lld from updateFlagForEpisodes", buf, 0x2Au);

          v23 = v33;
          v24 = v32;

          v22 = v30;
          v20 = v42;
          v1 = v40;
        }

        if (__ROR8__(v24 + v26 * v23, 3) <= 0x147AE147AE147AEuLL)
        {
          [*(v1 + 32) saveInCurrentBlock];
        }

        ++v25;
        ++v26;
      }

      while (v20 != v25);
      v21 = &v20[v39];
      v20 = [v44 countByEnumeratingWithState:&v46 objects:v62 count:16];
    }

    while (v20);
  }

  [*(v1 + 32) saveInCurrentBlock];
  [*(v1 + 32) setTransactionAuthor:0];
  kdebug_trace();
}

uint64_t sub_1000FE220(uint64_t a1)
{
  kdebug_trace();
  [MTRecencyUtil unsafeUpdateRelatedFieldsIfUpNextChangedForPodcast:*(a1 + 32) upNextResult:*(a1 + 40) ctx:*(a1 + 48)];
  if (os_feature_enabled_serial_sort_auto_downloads())
  {
    [*(*(a1 + 56) + 104) unsafeUpdateEpisodeShowTypeSpecificLevelsWithShowUUID:*(a1 + 32) on:*(a1 + 48)];
  }

  [*(a1 + 48) setTransactionAuthor:@"MTPodcastDerivedPropertyObserver"];
  [*(a1 + 48) saveInCurrentBlock];
  [*(a1 + 48) setTransactionAuthor:0];

  return kdebug_trace();
}

void sub_1000FE2D8(uint64_t a1)
{
  v19 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v18 = [MTEpisode predicateForLibraryEpisodesOnPodcastUuid:*(a1 + 40)];
  v2 = kMTEpisodeEntityName;
  v3 = *(a1 + 32);
  v4 = [MTEpisode predicateForBookmarkedEpisodesOnPodcastUuid:*(a1 + 40)];
  v5 = [v3 countOfObjectsInEntity:v2 predicate:v4];

  v6 = *(a1 + 32);
  v7 = [MTEpisode predicateForDownloadedEpisodesOnPodcastUuid:*(a1 + 40)];
  v8 = [v6 countOfObjectsInEntity:v2 predicate:v7];

  v9 = [*(a1 + 32) countOfObjectsInEntity:v2 predicate:v18];
  v10 = [MTEpisode predicateForBookmarkedEpisodesOnPodcastUuid:*(a1 + 40)];
  v11 = [MTEpisode predicateForVisuallyPlayed:0];
  v12 = [v10 AND:v11];

  v13 = [*(a1 + 32) countOfObjectsInEntity:v2 predicate:v12];
  v14 = [MTEpisode predicateForDownloadedEpisodesOnPodcastUuid:*(a1 + 40)];
  v15 = [MTEpisode predicateForVisuallyPlayed:0];
  v16 = [v14 AND:v15];

  v17 = [*(a1 + 32) countOfObjectsInEntity:v2 predicate:v16];
  [v19 setSavedEpisodesCount:v5];
  [v19 setDownloadedEpisodesCount:v8];
  [v19 setLibraryEpisodesCount:v9];
  [v19 setSavedUnplayedEpisodesCount:v13];
  [v19 setDownloadedUnplayedEpisodesCount:v17];
  [v19 calculateNewEpisodeCountIn:*(a1 + 32) serialShowsUseExperimentalRules:os_feature_enabled_experimental_serial_episode_count()];
  [*(a1 + 32) setTransactionAuthor:@"MTPodcastDerivedPropertyObserver"];
  [*(a1 + 32) saveInCurrentBlock];
  [*(a1 + 32) setTransactionAuthor:0];
}

void sub_1000FEC34(uint64_t a1, int a2, id a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FECFC;
  block[3] = &unk_1004D8440;
  v8 = objc_retainBlock(a3);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

int64_t sub_1000FF844(id a1, MTPodcastPlaylistSettings *a2, MTPodcastPlaylistSettings *a3)
{
  v4 = a3;
  v5 = [(MTPodcastPlaylistSettings *)a2 podcast];
  v6 = [v5 sortOrder];

  v7 = [(MTPodcastPlaylistSettings *)v4 podcast];

  v8 = [v7 sortOrder];
  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

int64_t sub_1000FF8C0(id a1, MTPodcastPlaylistSettings *a2, MTPodcastPlaylistSettings *a3)
{
  v4 = a3;
  [(MTPodcastPlaylistSettings *)a2 latestEpisodeDate];
  v6 = v5;
  [(MTPodcastPlaylistSettings *)v4 latestEpisodeDate];
  v8 = v7;

  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

int64_t sub_1000FF918(id a1, MTPodcastPlaylistSettings *a2, MTPodcastPlaylistSettings *a3)
{
  v4 = a3;
  [(MTPodcastPlaylistSettings *)a2 oldestEpisodeDate];
  v6 = v5;
  [(MTPodcastPlaylistSettings *)v4 oldestEpisodeDate];
  v8 = v7;

  if (v6 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 > v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

int64_t sub_1000FF970(id a1, MTPodcastPlaylistSettings *a2, MTPodcastPlaylistSettings *a3)
{
  v4 = a3;
  v5 = [(MTPodcastPlaylistSettings *)a2 podcast];
  v6 = [v5 title];
  v7 = [(MTPodcastPlaylistSettings *)v4 podcast];

  v8 = [v7 title];
  v9 = [v6 caseInsensitiveCompare:v8];

  return v9;
}

int64_t sub_1000FFA0C(id a1, MTPodcastPlaylistSettings *a2, MTPodcastPlaylistSettings *a3)
{
  v4 = a2;
  v5 = [(MTPodcastPlaylistSettings *)a3 podcast];
  v6 = [v5 title];
  v7 = [(MTPodcastPlaylistSettings *)v4 podcast];

  v8 = [v7 title];
  v9 = [v6 caseInsensitiveCompare:v8];

  return v9;
}

int64_t sub_100100348(id a1, MTEpisode *a2, MTEpisode *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(MTEpisode *)v4 podcast];
  v7 = [v6 sortOrder];
  v8 = [(MTEpisode *)v5 podcast];
  v9 = [v8 sortOrder];

  if (v7 <= v9)
  {
    v11 = [(MTEpisode *)v4 podcast];
    v12 = [v11 sortOrder];
    v13 = [(MTEpisode *)v5 podcast];
    v10 = v12 < [v13 sortOrder];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

int64_t sub_100100418(id a1, MTEpisode *a2, MTEpisode *a3)
{
  v4 = a2;
  v5 = a3;
  [(MTEpisode *)v4 pubDate];
  v7 = v6;
  [(MTEpisode *)v5 pubDate];
  if (v7 <= v8)
  {
    [(MTEpisode *)v4 pubDate];
    v11 = v10;
    [(MTEpisode *)v5 pubDate];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

int64_t sub_1001004A4(id a1, MTEpisode *a2, MTEpisode *a3)
{
  v4 = a2;
  v5 = a3;
  [(MTEpisode *)v4 pubDate];
  v7 = v6;
  [(MTEpisode *)v5 pubDate];
  if (v7 <= v8)
  {
    [(MTEpisode *)v4 pubDate];
    v11 = v10;
    [(MTEpisode *)v5 pubDate];
    if (v11 >= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

int64_t sub_100100530(id a1, MTEpisode *a2, MTEpisode *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(MTEpisode *)v4 podcast];
  v7 = [v6 title];
  v8 = [(MTEpisode *)v5 podcast];
  v9 = [v8 title];
  v10 = [v7 caseInsensitiveCompare:v9];

  if (!v10)
  {
    v11 = [(MTEpisode *)v4 title];
    v12 = [(MTEpisode *)v5 title];
    v10 = [v11 caseInsensitiveCompare:v12];
  }

  return v10;
}

void sub_100100ABC(uint64_t a1)
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 privateQueueContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100100B78;
  v6[3] = &unk_1004D8798;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 performBlockAndWaitWithSave:v6];
}

void sub_100100B78(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = kMTPlaylistEntityName;
  v4 = +[NSPredicate truePredicate];
  v5 = [v2 objectsInEntity:v3 predicate:v4 sortDescriptors:0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        [v11 setNeedsUpdate:1];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = [v11 settings];
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v20 + 1) + 8 * j) setNeedsUpdate:1];
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v14);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v17 = [v6 valueForKey:kPodcastUuid];
  v18 = *(a1 + 40);
  v19 = [NSSet setWithArray:v17];
  [v18 updatePlaylistsWithUuids:v19];
}

void sub_100100F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100100F58(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        *(*(*(a1 + 56) + 8) + 24) |= [MTPlaylistQueryManager updatePlaylist:v7 inContext:*(a1 + 40)];
        if (*(a1 + 48))
        {
          v8 = [*(a1 + 40) playlistForUuid:v7];
          (*(*(a1 + 48) + 16))();
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 40) saveInCurrentBlock];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:MTDidUpdatePlaylistsNotification object:*(a1 + 32)];

    v10 = *(a1 + 40);
    v11 = kMTPlaylistEntityName;
    v12 = +[NSPredicate truePredicate];
    v13 = [v10 objectsInEntity:v11 predicate:v12 sortDescriptors:0];

    [v13 mt_compactMap:&stru_1004DC5B8];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001011C0;
    v16 = block[3] = &unk_1004D8358;
    v14 = v16;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1001011C0(uint64_t a1)
{
  v2 = +[MTUpcomingMediaController sharedInstance];
  [v2 setSuggestedStationUuids:*(a1 + 32)];
}

void sub_1001012C4(uint64_t a1)
{
  v2 = kPlaylistITunesPlaylistUuid;
  v5 = [*(a1 + 32) playlistForUuid:kPlaylistITunesPlaylistUuid];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"iTunes Playlists" value:&stru_1004F3018 table:0];

  if (!v5)
  {
    v5 = [MTPlaylist insertNewPlaylistInManagedObjectContext:*(a1 + 32)];
    [v5 setTitle:v4];
    [v5 setMediaLibraryId:0];
    [v5 setIsFolder:1];
    [v5 setIsBuiltIn:1];
    [v5 setSortOrder:1023];
    [v5 setUuid:v2];
    [v5 setHidden:1];
    [*(a1 + 32) saveInCurrentBlock];
  }
}

void sub_1001015D0(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadedQueryObserver];

  if (!v2)
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = [MTEpisode predicateForDownloaded:1 excludeHidden:0];
    v4 = [MTEpisode sortDescriptorsForPubDateAscending:0];
    v5 = [MTPropertyChangeQueryObserver alloc];
    v6 = [v5 initWithEntityName:kMTEpisodeEntityName predicate:v3 sortDescriptors:v4];
    [*(a1 + 32) setDownloadedQueryObserver:v6];

    v18[0] = kEpisodeAssetURL;
    v18[1] = kEpisodeByteSize;
    v18[2] = kEpisodeDuration;
    v7 = [NSArray arrayWithObjects:v18 count:3];
    v8 = [*(a1 + 32) downloadedQueryObserver];
    [v8 setPropertyKeys:v7];

    v9 = [*(a1 + 32) downloadedQueryObserver];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100101810;
    v15 = &unk_1004DC608;
    objc_copyWeak(&v16, &location);
    v10 = [v9 addResultsChangedHandler:&v12];

    v11 = [*(a1 + 32) downloadedQueryObserver];
    [v11 startObserving];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void sub_1001017D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100101810(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updatePodcastSizeEstimation];
    WeakRetained = v2;
  }
}

id sub_1001018D0(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadedQueryObserver];
  [v2 stop];

  v3 = *(a1 + 32);

  return [v3 setDownloadedQueryObserver:0];
}

void sub_10010199C(uint64_t a1)
{
  v2 = [*(a1 + 32) updatePodcastSizeEstimationWorkController];

  if (!v2)
  {
    v3 = [MTCoalescableWorkController alloc];
    v4 = [*(a1 + 32) workQueue];
    v5 = [v3 initWithWorkQueue:v4 identifier:@"MTNMSDefaultsUpdater.updatePodcastSizeEstimation"];
    [*(a1 + 32) setUpdatePodcastSizeEstimationWorkController:v5];
  }

  v6 = [*(a1 + 32) existingDownloadedEpisodes];

  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 updatePodcastSizeEstimationWorkController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100101AD4;
    v9[3] = &unk_1004D8358;
    v9[4] = *(a1 + 32);
    [v8 schedule:v9];
  }

  else
  {

    [v7 _onWorkQueueUpdatePodcastSizeEstimation];
  }
}

void sub_100101B78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) existingDownloadedEpisodes];

  if (!v4)
  {
    +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100101D8C;
    v15 = v14[3] = &unk_1004DAA48;
    v5 = v15;
    [v3 enumerateObjectsUsingBlock:v14];
    [*(a1 + 32) setExistingDownloadedEpisodes:v5];
  }

  v6 = objc_alloc_init(NMSPodcastSizeEstimation);
  v7 = [v3 copy];
  if (([v6 isEmpty] & 1) == 0)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100101E80;
    v13[3] = &unk_1004DC630;
    v13[4] = *(a1 + 32);
    v8 = [NSPredicate predicateWithBlock:v13];
    v9 = [v7 filteredArrayUsingPredicate:v8];

    v7 = v9;
  }

  if ([v7 count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100101EF0;
    v11[3] = &unk_1004DAA48;
    v10 = v6;
    v12 = v10;
    [v7 enumerateObjectsUsingBlock:v11];
    [v10 synchronize];
  }
}

void sub_100101D8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uuid];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 uuid];
    [v5 addObject:v6];
  }

  else
  {
    v7 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Encountered episode with nil uuid when updating size estimation: %@", &v8, 0xCu);
    }
  }
}

uint64_t sub_100101E80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 existingDownloadedEpisodes];
  v5 = [v3 uuid];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

void sub_100101EF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 byteSize];
  [v3 duration];
  v6 = v5;
  v8 = [v3 podcast];

  v7 = [v8 feedURL];
  [v2 incrementSize:v4 duration:v7 forFeedURL:v6];
}

void sub_100102464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10010247C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100102494(uint64_t a1)
{
  v2 = [*(a1 + 32) mt_compactMap:&stru_1004DC658];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001024F8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10010258C;
  v2[3] = &unk_1004DAF38;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [MTPlayAudioIntentSupport donate:v1 completionHandler:v2];
}

void sub_10010263C(uint64_t a1)
{
  v2 = [*(a1 + 32) listenNowQueryObserver];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001026DC;
  v3[3] = &unk_1004DC6C0;
  v4 = *(a1 + 40);
  [v2 results:v3];
}

void sub_100103BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_100103BEC(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 feedURL];
    v5 = *(*(a1 + 72) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (*(a1 + 96) == 1)
    {
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = [*(a1 + 64) absoluteString];
      *(*(*(a1 + 80) + 8) + 24) = [v7 updatePodcastWithUuid:v8 withFeed:v9 originalFeedUrl:v10 source:*(a1 + 88)];

      v11 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 56) resolvedFeedURL];
        v13 = [*(a1 + 64) absoluteString];
        v14 = *(*(*(a1 + 80) + 8) + 24);
        v19 = 138413058;
        v20 = v12;
        v21 = 2112;
        v22 = v13;
        v23 = 1024;
        v24 = v14;
        v25 = 2048;
        v26 = [v3 storeCollectionId];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Feed URL %@, requestURL %@, updatedFeedURL %d, for show adam ID %lld", &v19, 0x26u);
      }
    }

    v15 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];

    +[NSDate timeIntervalSinceReferenceDate];
    [v15 setUpdatedDate:?];
    [v15 setImporting:0];
    [v15 setAuthenticatedDark:0];
    [v15 setFeedUpdateNeedsRetry:0];
    [v15 setConsecutiveFeedFetchErrors:0];
    if (+[MTStoreIdentifier isEmpty:](MTStoreIdentifier, "isEmpty:", [v15 storeCollectionId]))
    {
      v16 = +[MTStoreInfoUpdater sharedInstance];
      v17 = [v15 uuid];
      [v16 updateStoreInfoForPodcast:v17];
    }

    v18 = +[PUIFeedManagerArtworkBridge shared];
    [v18 updateArtworkForShow:v15 useBackgroundFetch:*(a1 + 97) fetchUberImage:1];
  }
}

void sub_10010714C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100107164(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  if (v2)
  {
    v3 = *(a1 + 56);
    v10 = v2;
    v4 = [v2 redirectURL];
    v5 = [v4 absoluteString];
    *(*(*(a1 + 48) + 8) + 24) = [v3 isUpdatingFeedUrl:v5];

    v2 = v10;
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v6 = *(a1 + 56);
      v7 = [v10 updatedFeedURL];
      *(*(*(a1 + 48) + 8) + 24) = [v6 isUpdatingFeedUrl:v7];

      v2 = v10;
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        v8 = *(a1 + 56);
        v9 = [v10 feedURL];
        *(*(*(a1 + 48) + 8) + 24) = [v8 isUpdatingFeedUrl:v9];

        v2 = v10;
      }
    }
  }
}

void sub_1001074AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1001074C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = (*(*(a1 + 40) + 16))();
    if (!v3)
    {
      v11 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Data hash could not be created. Returning early.", v26, 2u);
      }

      v12 = [*(a1 + 32) absoluteString];
      [WeakRetained _didFinishUpdatingFeedUrl:v12 withError:0];

      goto LABEL_23;
    }

    *v26 = 0;
    v27 = v26;
    v28 = 0x3032000000;
    v29 = sub_100008B0C;
    v30 = sub_10003B55C;
    v31 = 0;
    [WeakRetained importContext];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100107984;
    v4 = v22[3] = &unk_1004D87E8;
    v23 = v4;
    v24 = *(a1 + 32);
    v25 = v26;
    [v4 performBlockAndWait:v22];
    v5 = qword_100583CD8;
    objc_sync_enter(v5);
    v6 = [qword_100583CD8 objectForKey:*(v27 + 5)];
    v7 = [v3 isEqualToString:v6];

    objc_sync_exit(v5);
    v8 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) absoluteString];
      *buf = 138412546;
      v33 = v9;
      v34 = 1024;
      v35 = v7 ^ 1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "feedHasChangedSinceLastUpdate: %@ %d", buf, 0x12u);
    }

    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v10 = (*(*(a1 + 48) + 16))();
      objc_autoreleasePoolPop(v13);
    }

    v14 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) absoluteString];
      *buf = 138412546;
      v33 = v15;
      v34 = 1024;
      v35 = v7 ^ 1;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "feedShouldUpdate: %@ %d", buf, 0x12u);
    }

    v16 = [WeakRetained preProcessFeedHook:v10 requestUrl:*(a1 + 32) needsUpdate:v7 ^ 1];
    v17 = [v16 createdPodcastUUID];
    if (v17 || (v17 = *(v27 + 5)) != 0)
    {
      if ([v16 shouldContinue])
      {
        [WeakRetained processFeed:v10 podcastUUID:v17 requestUrl:*(a1 + 32) useBackgroundFetch:*(a1 + 72) needsUpdate:v7 ^ 1 source:*(a1 + 64)];
        v18 = 0;
        v19 = 0;
LABEL_20:
        if (((v7 | v18) & 1) == 0)
        {
          v20 = qword_100583CD8;
          objc_sync_enter(v20);
          [qword_100583CD8 setObject:v3 forKey:v17];
          [objc_opt_class() saveSubscriptionMetadata];
          objc_sync_exit(v20);
        }

        v21 = [*(a1 + 32) absoluteString];
        [WeakRetained _didFinishUpdatingFeedUrl:v21 withError:v19];

        _Block_object_dispose(v26, 8);
LABEL_23:

        goto LABEL_24;
      }

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = +[_TtC18PodcastsFoundation20FeedUpdaterObjcError preProcessHookDeniedUpdate];
    goto LABEL_20;
  }

LABEL_24:
}

void sub_100107928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100107984(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) absoluteString];
  v7 = [v2 podcastForFeedUrl:v3];

  v4 = [v7 uuid];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id sub_100107C78(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 parseWithData:*(a1 + 32)];
  v4 = [v2 parseError];

  if (v4)
  {
    v5 = _MTLogCategoryFeedUpdate();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      v8 = 0;
      goto LABEL_8;
    }

    v6 = [v2 parseError];
    v12 = 138412290;
    v13 = v6;
    v7 = "Feed parse error: %@";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v7, &v12, 0xCu);

    goto LABEL_5;
  }

  v9 = [v3 items];
  v10 = [v9 count];

  if (!v10)
  {
    v5 = _MTLogCategoryFeedUpdate();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v6 = [v3 title];
    v12 = 138412290;
    v13 = v6;
    v7 = "Feed has zero items, skipping update to %@";
    goto LABEL_4;
  }

  v8 = v3;
LABEL_8:

  return v8;
}

void sub_100107F54(id a1)
{
  v1 = +[MTReachability sharedInstance];
  [v1 showInternetUnreachableDialog];
}

void sub_100108350(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 40) absoluteString];
  LODWORD(v2) = [v2 isUpdatingFeedUrl:v3];

  if (v2)
  {
    v4 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) absoluteString];
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NOT STARTING feed update, as Feed %@ is ALREADY updating.", buf, 0xCu);
    }
  }

  else
  {
    v6 = +[MTDB sharedInstance];
    v7 = [v6 importContext];

    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10010854C;
    v16 = &unk_1004D86D8;
    v17 = v7;
    v8 = *(a1 + 40);
    v9 = *(a1 + 64);
    v18 = v8;
    v19 = v9;
    v4 = v7;
    [v4 performBlock:&v13];
    v10 = objc_opt_class();
    v11 = [*(a1 + 40) absoluteString];
    v12 = [*(a1 + 48) absoluteString];
    [v10 didStartUpdatingFeedUrl:v11 cloudSyncUrl:v12];

    [*(a1 + 32) _startDownloadForFeedUrl:*(a1 + 40) cloudSyncFeedUrl:*(a1 + 48) podcastStoreId:*(a1 + 64) triggerBy:*(a1 + 56) userInitiated:*(a1 + 80) useBackgroundFetch:*(a1 + 81) source:{*(a1 + 72), v13, v14, v15, v16}];
  }
}

id sub_10010854C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) absoluteString];
  v4 = [v2 podcastForFeedUrl:v3];

  if (v4)
  {
    goto LABEL_2;
  }

  v6 = [NSNumber numberWithLongLong:*(a1 + 48)];
  v7 = [MTStoreIdentifier isNotEmptyNumber:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) podcastForStoreId:*(a1 + 48)];
    if (v8)
    {
      v4 = v8;
LABEL_2:
      v5 = +[NSDate now];
      [v5 timeIntervalSinceReferenceDate];
      [v4 setLastFetchedDate:?];
    }
  }

  v9 = *(a1 + 32);

  return [v9 saveInCurrentBlock];
}

void sub_100108774(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v9 localizedDescription];
      v12 = [v9 userInfo];
      v13 = [v12 objectForKey:NSUnderlyingErrorKey];
      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@: Underlying error %@", buf, 0x16u);
    }

    [*(a1 + 32) feedDownloadedWithError:v9 task:0 requestedUrl:*(a1 + 40)];
    v14 = *(a1 + 32);
    v15 = [*(a1 + 40) absoluteString];
    [v14 _didFinishUpdatingFeedUrl:v15 withError:v9];
  }

  else
  {
    v16 = *(a1 + 32);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001089A8;
    v19[3] = &unk_1004DC7E0;
    v20 = v8;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001089B0;
    v17[3] = &unk_1004DC808;
    v18 = v7;
    [v16 preprocessFeedWithDataHashingBlock:v19 feedCreationBlock:v17 url:*(a1 + 40) useBackgroundFetch:*(a1 + 56) source:*(a1 + 48)];

    v15 = v20;
  }
}

id sub_100108C98(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = objc_retainBlock(*(a1 + 40));
  [v2 addObject:v3];

  v4 = *(a1 + 32);

  return [v4 _queue_processNextPendingFeedIfPossible];
}

void sub_100109580(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:objc_opt_class() userInfo:*(a1 + 40)];
}

void sub_10010A644(uint64_t a1)
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 importContext];

  [MTPodcast predicateForPodcastsNeedingRetry:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010A740;
  v7[3] = &unk_1004D8770;
  v9 = v8 = v3;
  v4 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v4;
  v5 = v9;
  v6 = v3;
  [v6 performBlock:v7];
}

void sub_10010A740(uint64_t a1)
{
  v2 = kMTPodcastEntityName;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [NSSortDescriptor sortDescriptorWithKey:kPodcastUpdatedDate ascending:1];
  v20 = v5;
  v6 = [NSArray arrayWithObjects:&v20 count:1];
  v7 = kPodcastUuid;
  v19 = kPodcastUuid;
  v8 = [NSArray arrayWithObjects:&v19 count:1];
  v9 = [v3 objectDictionariesInEntity:v2 predicate:v4 sortDescriptors:v6 propertiesToFetch:v8 includeObjectId:0];

  v10 = [v9 valueForKey:v7];
  v11 = [*(a1 + 48) workQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10010A900;
  v15[3] = &unk_1004DABC8;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v16 = v10;
  v17 = v12;
  v18 = v13;
  v14 = v10;
  dispatch_async(v11, v15);
}

id sub_10010A900(uint64_t a1)
{
  v2 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Found %ld podcasts requiring retry feed fetch.", &v5, 0xCu);
  }

  return [*(a1 + 40) _updatePodcastsWithUUIDs:*(a1 + 32) userInitiated:0 forced:1 useBackgroundFetch:1 source:4 startedUpdatesCallback:*(a1 + 48)];
}

void sub_10010AA98(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [MTPodcast predicateForAreMediaAPI:1];
  v4 = +[MTPodcast predicateForNotImplicitlyFollowedPodcasts];
  v5 = [v3 AND:v4];

  v6 = *(a1 + 32);
  v7 = kMTPodcastEntityName;
  v8 = [NSSortDescriptor sortDescriptorWithKey:kPodcastLastFetchedDate ascending:1];
  v21 = v8;
  v9 = [NSArray arrayWithObjects:&v21 count:1];
  v20[0] = kPodcastUuid;
  v20[1] = kPodcastUpdateAvg;
  v20[2] = kPodcastFeedChangedDate;
  v20[3] = kPodcastStoreCollectionId;
  v20[4] = kPodcastTitle;
  v10 = [NSArray arrayWithObjects:v20 count:5];
  v11 = [v6 objectDictionariesInEntity:v7 predicate:v5 sortDescriptors:v9 propertiesToFetch:v10 includeObjectId:0];

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10010ACD8;
  v18 = &unk_1004DC8C8;
  v19 = v2;
  v12 = v2;
  [v11 enumerateObjectsUsingBlock:&v15];
  v13 = *(a1 + 40);
  v14 = [v12 copy];
  (*(v13 + 16))(v13, v14);
}

void sub_10010ACD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:kPodcastFeedChangedDate];
  if (v4)
  {
    v5 = [v3 valueForKey:kPodcastUpdateAvg];
    v6 = [v5 longLongValue];

    v7 = v6 * 3.0;
    if (v7 < 1209600.0)
    {
      v7 = 1209600.0;
    }

    v8 = [v4 dateByAddingTimeInterval:v7];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;
    v11 = +[NSDate now];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v10 >= v13)
    {
      if (v6 >= 14401)
      {
        if (v6 >= 0x2A301)
        {
          v26 = v6 / 86400;
          if (v6 / 86400 >= 7)
          {
            v26 = 7;
          }

          v25 = (86400 * v26);
        }

        else
        {
          v25 = 86400.0;
        }
      }

      else
      {
        v25 = 3600.0;
      }

      v14 = [v4 dateByAddingTimeInterval:v25];
      v27 = +[NSDate now];
      v28 = [v27 compare:v14];

      if (v28 != -1)
      {
        v29 = _MTLogCategoryFeedUpdate();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        v31 = kPodcastUuid;
        if (v30)
        {
          v32 = [v3 valueForKey:kPodcastUuid];
          v33 = [v3 valueForKey:kPodcastTitle];
          v34 = [v3 valueForKey:kPodcastStoreCollectionId];
          *buf = 138544642;
          v38 = v32;
          v39 = 2112;
          v40 = v33;
          v41 = 2112;
          v42 = v34;
          v43 = 2112;
          v44 = v4;
          v45 = 1024;
          v46 = v25 / 86400;
          v47 = 1024;
          v48 = (v25 - (86400 * v46)) / 3600;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "MAPI Expected Shows - 🟢 Updating expected show %{public}@ - %@ storeId: %@, feed last changed date: %@, update average: %dd %dh", buf, 0x36u);
        }

        v35 = *(a1 + 32);
        v36 = [v3 valueForKey:v31];
        [v35 addObject:v36];
      }
    }

    else
    {
      v14 = _MTLogCategoryFeedUpdate();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v3 valueForKey:kPodcastUuid];
        v16 = [v3 valueForKey:kPodcastTitle];
        v17 = [v3 valueForKey:kPodcastStoreCollectionId];
        *buf = 138544130;
        v38 = v15;
        v39 = 2112;
        v40 = v16;
        v41 = 2112;
        v42 = v17;
        v43 = 2112;
        v44 = v4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MAPI Expected Shows - 💤 Skipping dormant show %{public}@ - %@ storeId: %@, feed last changed date: %@. Not including in expected to update feeds.", buf, 0x2Au);
      }
    }
  }

  else
  {
    v18 = _MTLogCategoryFeedUpdate();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    v20 = kPodcastUuid;
    if (v19)
    {
      v21 = [v3 valueForKey:kPodcastUuid];
      v22 = [v3 valueForKey:kPodcastTitle];
      v23 = [v3 valueForKey:kPodcastStoreCollectionId];
      *buf = 138544130;
      v38 = v21;
      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = v23;
      v43 = 2112;
      v44 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MAPI Expected Shows - 🟡 Updating show with no change date %{public}@ - %@ storeId: %@, feed last changed date: %@", buf, 0x2Au);
    }

    v24 = *(a1 + 32);
    v14 = [v3 valueForKey:v20];
    [v24 addObject:v14];
  }
}

void sub_10010B29C(void *a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010B334;
  v5[3] = &unk_1004DC918;
  v3 = a1[4];
  v2 = a1[5];
  v7 = a1[6];
  v4 = v2;
  v5[4] = a1[4];
  v6 = v4;
  [v3 _fetchMediaAPIShowsExpectedToUpdate:v5];
}

void sub_10010B334(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] > *(a1 + 48))
  {
    v4 = [v3 subarrayWithRange:0];

    v3 = v4;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100008B1C;
  v27 = sub_10003B564;
  v28 = &__NSArray0__struct;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 importContext];

  v7 = [NSFetchRequest fetchRequestWithEntityName:kMTPodcastEntityName];
  v8 = [NSSet setWithArray:v3];
  v9 = [MTPodcast predicateForPodcastUuids:v8];
  [v7 setPredicate:v9];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10010B5C0;
  v19[3] = &unk_1004D9040;
  v22 = &v23;
  v10 = v6;
  v20 = v10;
  v11 = v7;
  v21 = v11;
  [v10 performBlockAndWait:v19];
  v12 = v24[5];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10010B610;
  v16[3] = &unk_1004DC8F0;
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v18 = v13;
  v16[4] = v14;
  v15 = v3;
  v17 = v15;
  [_TtC18PodcastsFoundation26BatchFeedRequestController fetchOutOfDateShowUUIDsWith:v12 completionHandler:v16];

  _Block_object_dispose(&v23, 8);
}

void sub_10010B5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010B5C0(uint64_t a1)
{
  v2 = [*(a1 + 32) executeFetchRequest:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10010B610(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v6 = [a1[4] workQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010B70C;
    v9[3] = &unk_1004D8770;
    v7 = a1[5];
    v8 = a1[4];
    v10 = v7;
    v11 = v8;
    v12 = v5;
    v13 = a1[6];
    dispatch_async(v6, v9);
  }
}

id sub_10010B70C(uint64_t a1)
{
  v2 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Found %ld podcasts expected to update.", &v5, 0xCu);
  }

  return [*(a1 + 40) _updatePodcastsWithUUIDs:*(a1 + 48) userInitiated:0 forced:1 useBackgroundFetch:1 source:6 startedUpdatesCallback:*(a1 + 56)];
}

void sub_10010B888(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10010B918;
  v2[3] = &unk_1004DC940;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _fetchMediaAPIShowsExpectedToUpdate:v2];
}

void sub_10010B918(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B9E0;
  block[3] = &unk_1004DABC8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_10010B9E0(uint64_t a1)
{
  v2 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Found %ld podcasts expected to update.", buf, 0xCu);
  }

  v4 = +[MTFeedUpdateMetricsAction fetchFeedsExpectedToUpdate];
  v5 = +[MTFeedUpdateMetricsDataKey podcastCount];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) count]);
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [IMMetrics recordUserAction:v4 dataSource:0 withData:v7];

  v8 = *(a1 + 40);
  v9 = [NSSet setWithArray:*(a1 + 32)];
  [v8 _updatePodcastsWithUUIDs:v9 userInitiated:0 forced:1 useBackgroundFetch:1 source:6 startedUpdatesCallback:*(a1 + 48)];
}

void sub_10010BC30(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010BD28;
    block[3] = &unk_1004DC968;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v15 = *(a1 + 56);
    v14 = *(a1 + 48);
    v13 = v9;
    dispatch_async(v6, block);
  }
}

void sub_10010BD28(uint64_t a1)
{
  v2 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Found %ld out of date store shows.", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 64);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010BE64;
  v8[3] = &unk_1004D9870;
  v7 = *(a1 + 56);
  v9 = *(a1 + 48);
  [v4 _updatePodcastsWithUUIDs:v5 userInitiated:v6 forced:1 useBackgroundFetch:1 source:v7 startedUpdatesCallback:v8];
}

void sub_10010C020(uint64_t a1)
{
  v2 = [MTPodcast predicateForAreMediaAPI:0];
  v3 = +[MTPodcast predicateForNotHiddenPodcasts];
  v4 = [v2 AND:v3];

  if ((*(a1 + 56) & 1) == 0)
  {
    v5 = +[MTPodcast predicateForNotImplicitlyFollowedPodcasts];
    v6 = [v4 AND:v5];

    v4 = v6;
  }

  v7 = [NSFetchRequest fetchRequestWithEntityName:kMTPodcastEntityName];
  [v7 setPredicate:v4];
  v30 = kPodcastUuid;
  v8 = [NSArray arrayWithObjects:&v30 count:1];
  [v7 setPropertiesToFetch:v8];

  v9 = +[NSMutableSet set];
  v10 = [*(a1 + 32) executeFetchRequest:v7];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v25 + 1) + 8 * v14) uuid];
        [v9 addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  v16 = [*(a1 + 40) workQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10010C2D4;
  v20[3] = &unk_1004D9C90;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v21 = v9;
  v22 = v17;
  v24 = *(a1 + 57);
  v23 = v18;
  v19 = v9;
  dispatch_async(v16, v20);
}

id sub_10010C2D4(uint64_t a1)
{
  v2 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Found %ld non-store shows.", &v5, 0xCu);
  }

  return [*(a1 + 40) _updatePodcastsWithUUIDs:*(a1 + 32) userInitiated:0 forced:*(a1 + 56) useBackgroundFetch:1 source:5 startedUpdatesCallback:*(a1 + 48)];
}

void sub_10010C658(uint64_t a1)
{
  v2 = [*(a1 + 32) feedManager];
  v3 = [v2 abortUpdatesIfNetworkUnreachable:*(a1 + 72)];

  if (v3)
  {
    v4 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipping feed update due to network not being reachable", buf, 2u);
    }

    if (*(a1 + 56))
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10010C794;
      block[3] = &unk_1004D84D0;
      v6 = *(a1 + 56);
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    [*(a1 + 32) _updatePodcastWithUUID:*(a1 + 40) triggerBy:*(a1 + 48) userInitiated:*(a1 + 64) forced:*(a1 + 56) forceBootstrap:? useBackgroundFetch:? source:? completion:?];
  }
}

void sub_10010C794(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[_TtC18PodcastsFoundation20FeedUpdaterObjcError internetNotReachable];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void sub_10010C930(uint64_t a1)
{
  v2 = [MTPodcast predicateForPodcastStoreId:*(a1 + 56)];
  v3 = [*(a1 + 32) objectInEntity:kMTPodcastEntityName predicate:v2];
  v4 = [v3 uuid];
  v5 = _MTLogCategoryCloudSync();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sync feed update from push notification for podcast %{public}@", buf, 0xCu);
    }

    v7 = +[MTFeedUpdateManager sharedInstance];
    [v7 _updatePodcastWithUUID:v4 triggerBy:*(a1 + 40) userInitiated:*(a1 + 72) forced:*(a1 + 73) forceBootstrap:0 source:*(a1 + 64) completion:*(a1 + 48)];
    goto LABEL_9;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 56);
    *buf = 134217984;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Can't find podcast UUID from store ID %lld", buf, 0xCu);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v7 = +[_TtC18PodcastsFoundation20FeedUpdaterObjcError localShowMissing];
    (*(v9 + 16))(v9, 0, v7);
LABEL_9:
  }
}

void sub_10010CDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010CDC0(uint64_t a1)
{
  v2 = kMTPodcastEntityName;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [NSSortDescriptor sortDescriptorWithKey:kPodcastUpdatedDate ascending:1];
  v24 = v5;
  v6 = [NSArray arrayWithObjects:&v24 count:1];
  v7 = kPodcastUuid;
  v23 = kPodcastUuid;
  v8 = [NSArray arrayWithObjects:&v23 count:1];
  v9 = [v3 objectDictionariesInEntity:v2 predicate:v4 sortDescriptors:v6 propertiesToFetch:v8 includeObjectId:0];

  v10 = [v9 valueForKey:v7];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [*(a1 + 48) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010CFA4;
  block[3] = &unk_1004DCA58;
  v14 = *(a1 + 48);
  v21 = *(a1 + 80);
  v22 = *(a1 + 81);
  v15 = *(a1 + 72);
  block[4] = v14;
  v20 = v15;
  v17 = *(a1 + 56);
  v16 = v17;
  v19 = v17;
  dispatch_async(v13, block);
}

void sub_10010CFA4(uint64_t a1)
{
  [*(a1 + 32) _updatePodcastsWithUUIDs:*(*(*(a1 + 48) + 8) + 40) userInitiated:*(a1 + 64) forced:*(a1 + 65) useBackgroundFetch:*(a1 + 66) source:*(a1 + 56) startedUpdatesCallback:*(a1 + 40)];
  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v2 = +[NSDate date];
    [v2 timeIntervalSinceReferenceDate];
    [v3 setDouble:kMTAllPodcastsLastUpdatedDate forKey:?];
  }
}

void sub_10010D2A0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10010D33C;
    v3[3] = &unk_1004DBC60;
    v4 = *(a1 + 32);
    v5 = a2;
    dispatch_async(&_dispatch_main_q, v3);
  }
}

void sub_10010D350(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7 || ([v6 BOOLValue] & 1) == 0)
  {
    v18 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Batch fetch bag value is off. Updating all podcasts through legacy path.", buf, 2u);
    }

    [*(a1 + 32) _unsafe_updateAllPodcastsUserInitiated:*(a1 + 56) forced:*(a1 + 57) useBackgroundFetch:*(a1 + 58) source:*(a1 + 48) startedUpdatesCallback:*(a1 + 40)];
  }

  else
  {
    v8 = dispatch_group_create();
    *buf = 0;
    v32 = buf;
    v33 = 0x2020000000;
    v34 = 0;
    dispatch_group_enter(v8);
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    v11 = *(a1 + 48);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10010D5F4;
    v25[3] = &unk_1004DCAD0;
    v29 = v10;
    v30 = *(a1 + 57);
    v27 = buf;
    v28 = v11;
    v25[4] = v9;
    v12 = v8;
    v26 = v12;
    [v9 _updateAllMediaAPIPodcastsUserInitiated:v10 source:v11 completion:v25];
    dispatch_group_enter(v12);
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    v15 = *(a1 + 57);
    v16 = *(a1 + 48);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10010D794;
    v22[3] = &unk_1004DCAA8;
    v24 = buf;
    v17 = v12;
    v23 = v17;
    [v13 _updateAllNonMediaAPIPodcastsUserInitiated:v14 forced:v15 source:v16 started:v22];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010D7B0;
    block[3] = &unk_1004DCAF8;
    v21 = buf;
    v20 = *(a1 + 40);
    dispatch_group_notify(v17, &_dispatch_main_q, block);

    _Block_object_dispose(buf, 8);
  }
}

void sub_10010D5F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Batch fetch failed. Updating all podcasts through legacy path. Error - %@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 64);
    v9 = *(a1 + 65);
    v10 = *(a1 + 66);
    v11 = *(a1 + 56);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10010D778;
    v14[3] = &unk_1004DCAA8;
    v13 = *(a1 + 40);
    v12 = v13;
    v15 = v13;
    [v7 _unsafe_updateAllPodcastsUserInitiated:v8 forced:v9 useBackgroundFetch:v10 source:v11 startedUpdatesCallback:v14];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) += a2;
    dispatch_group_leave(*(a1 + 40));
  }
}

uint64_t sub_10010D7B0(uint64_t a1)
{
  v2 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initiated the update of %ld podcast feeds.", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10010D9FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10010DA98;
    v3[3] = &unk_1004DBC60;
    v4 = *(a1 + 32);
    v5 = a2;
    dispatch_async(&_dispatch_main_q, v3);
  }
}

void sub_10010DAAC(uint64_t a1)
{
  v2 = [*(a1 + 32) feedManager];
  v3 = [v2 abortUpdatesIfNetworkUnreachable:*(a1 + 64)];

  if (v3)
  {
    v4 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipping feed update due to network not being reachable", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    *buf = 0;
    v27 = buf;
    v28 = 0x2020000000;
    v29 = 0;
    v5 = dispatch_group_create();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = *(a1 + 40);
    v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v6)
    {
      v15 = *v23;
      do
      {
        v7 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v22 + 1) + 8 * v7);
          dispatch_group_enter(v5);
          v9 = *(a1 + 32);
          v10 = *(a1 + 64);
          v11 = *(a1 + 65);
          v12 = *(a1 + 66);
          v13 = *(a1 + 56);
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_10010DDB0;
          v19[3] = &unk_1004DCB70;
          v19[4] = v9;
          v21 = buf;
          v20 = v5;
          [v9 _updatePodcastWithUUID:v8 userInitiated:v10 forced:v11 useBackgroundFetch:v12 source:v13 startedUpdateCallback:v19];

          v7 = v7 + 1;
        }

        while (v6 != v7);
        v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v6);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010DE94;
    block[3] = &unk_1004DCAF8;
    v18 = buf;
    v17 = *(a1 + 48);
    dispatch_group_notify(v5, &_dispatch_main_q, block);

    _Block_object_dispose(buf, 8);
  }
}

void sub_10010DDB0(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010DE6C;
  block[3] = &unk_1004DCB48;
  v9 = a2;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  dispatch_async(v4, block);
}

void sub_10010DE6C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_10010DE94(uint64_t a1)
{
  v2 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initiated the update of %ld podcast feeds.", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10010E548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Unwind_Resume(a1);
}

void sub_10010E5A8(uint64_t a1, char a2)
{
  if (*(a1 + 32))
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10010E648;
    v3[3] = &unk_1004D9E30;
    v4 = *(a1 + 32);
    v5 = a2;
    dispatch_async(&_dispatch_main_q, v3);
  }
}

void sub_10010E660(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  if (*(a1 + 40))
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10010E728;
    v4[3] = &unk_1004D9158;
    v6 = *(a1 + 40);
    v5 = v3;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

uint64_t sub_10010E728(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

void sub_10010E74C(uint64_t a1)
{
  v2 = _MTLogCategoryFeedUpdateDiagnostics();
  v3 = v2;
  v4 = *(a1 + 128);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 32) UUIDString];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "CoreDataCongestion", "identifier=%{public, name=identifier}@", &buf, 0xCu);
  }

  v6 = _MTLogCategoryFeedUpdateDiagnostics();
  v7 = v6;
  v8 = *(a1 + 128);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = [*(a1 + 32) UUIDString];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CoreDataWork", "identifier=%{public, name=identifier}@", &buf, 0xCu);
  }

  v10 = [*(a1 + 40) podcastForUuid:*(a1 + 48)];
  *(*(*(a1 + 96) + 8) + 24) = [*(a1 + 56) isPodcastUpdatable:v10 userInitiated:*(a1 + 152) forced:*(a1 + 153)];
  if (*(*(*(a1 + 96) + 8) + 24) != 1)
  {
    goto LABEL_26;
  }

  v11 = [v10 bestFeedURLExcludingRedirectURL:(*(a1 + 154) & 1) == 0];
  v12 = *(*(a1 + 104) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  *(*(*(a1 + 112) + 8) + 24) = [v10 storeCollectionId];
  v14 = [v10 feedURL];
  if (v14)
  {
    v15 = [[NSURL alloc] initWithString:v14];
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong((*(*(a1 + 120) + 8) + 40), v15);
  if (v14)
  {
  }

  if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (*(*(*(a1 + 104) + 8) + 40))
  {
    v16 = +[PodcastsApplicationStateMonitor shared];
    v17 = [v16 isActive];

    v45 = +[MTFeedUpdateMetricsDataKey userInitiated];
    v67[0] = v45;
    v44 = [NSNumber numberWithBool:*(a1 + 152)];
    v68[0] = v44;
    v43 = +[MTFeedUpdateMetricsDataKey foreground];
    v67[1] = v43;
    v18 = [NSNumber numberWithBool:v17];
    v68[1] = v18;
    v19 = +[MTFeedUpdateMetricsDataKey backgroundFetch];
    v67[2] = v19;
    v20 = [NSNumber numberWithBool:*(a1 + 155)];
    v68[2] = v20;
    v21 = +[MTFeedUpdateMetricsDataKey podcastStoreId];
    v67[3] = v21;
    v22 = [NSNumber numberWithLongLong:*(*(*(a1 + 112) + 8) + 24)];
    v68[3] = v22;
    v23 = +[MTFeedUpdateMetricsDataKey source];
    v67[4] = v23;
    v24 = [NSNumber numberWithInteger:*(a1 + 136)];
    v68[4] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:5];

    v26 = +[MTFeedUpdateMetricsAction podcastDataSource];
    [IMMetrics recordEvent:v26 dataSource:v10 data:v25];

    v27 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Updating podcast %@", &buf, 0xCu);
    }

    if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
    {
LABEL_26:
      v41 = +[_TtC18PodcastsFoundation20FeedUpdaterObjcError notYetUpdatable];
LABEL_27:
      v42 = v41;
      (*(*(a1 + 72) + 16))();

      goto LABEL_28;
    }
  }

  if (!*(*(*(a1 + 104) + 8) + 40))
  {
    v41 = +[_TtC18PodcastsFoundation20FeedUpdaterObjcError feedURLIsEmpty];
    goto LABEL_27;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v63 = 0x3032000000;
  v64 = sub_100008B1C;
  v65 = sub_10003B564;
  v66 = [v10 objectID];
  v28 = _MTLogCategoryFeedUpdateDiagnostics();
  v29 = v28;
  v30 = *(a1 + 128);
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    v31 = [*(a1 + 32) UUIDString];
    *v60 = 138543362;
    v61 = v31;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, v30, "DispatchCongestion", "identifier=%{public, name=identifier}@", v60, 0xCu);
  }

  v32 = [*(a1 + 56) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EEB8;
  block[3] = &unk_1004DCC10;
  v54 = *(a1 + 128);
  v47 = *(a1 + 32);
  v33 = *(a1 + 80);
  v34 = *(a1 + 104);
  v49 = v33;
  v51 = v34;
  v52 = vextq_s8(*(a1 + 112), *(a1 + 112), 8uLL);
  v35 = *(a1 + 64);
  v57 = *(a1 + 152);
  v58 = *(a1 + 156);
  v59 = *(a1 + 155);
  v55 = *(a1 + 136);
  v48 = v35;
  p_buf = &buf;
  v36 = *(a1 + 88);
  v37 = *(a1 + 144);
  v50 = v36;
  v56 = v37;
  dispatch_async(v32, block);

  v38 = _MTLogCategoryFeedUpdateDiagnostics();
  v39 = v38;
  v40 = *(a1 + 128);
  if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *v60 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v40, "CoreDataWork", "", v60, 2u);
  }

  _Block_object_dispose(&buf, 8);
LABEL_28:
}

void sub_10010EEB8(uint64_t a1)
{
  v2 = _MTLogCategoryFeedUpdateDiagnostics();
  v3 = v2;
  v4 = *(a1 + 96);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 32) UUIDString];
    *buf = 138543362;
    v33 = v5;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "DispatchCongestion", "identifier=%{public, name=identifier}@", buf, 0xCu);
  }

  v6 = _MTLogCategoryFeedUpdateDiagnostics();
  v7 = v6;
  v8 = *(a1 + 96);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = [*(a1 + 32) UUIDString];
    *buf = 138543362;
    v33 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "DispatchWork", "identifier=%{public, name=identifier}@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  v10 = +[MTFeedManager sharedInstance];
  v25 = *(*(*(a1 + 72) + 8) + 40);
  v26 = *(*(*(a1 + 64) + 8) + 40);
  v11 = *(*(*(a1 + 80) + 8) + 24);
  v12 = *(a1 + 120);
  v13 = *(a1 + 121);
  v14 = *(a1 + 122);
  v15 = *(a1 + 104);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10010F1B4;
  v27[3] = &unk_1004DCBE8;
  v30 = *(a1 + 88);
  v18 = *(a1 + 56);
  v19 = *(a1 + 112);
  v29 = v18;
  v31 = v19;
  v28 = *(a1 + 32);
  LOBYTE(v24) = v14;
  [v10 updateFeedForFeedUrl:v26 cloudSyncFeedUrl:v25 podcastStoreId:v11 triggerBy:v17 userInitiated:v12 forceBootstrap:v13 useBackgroundFetch:v24 source:v15 telemetryIdentifier:v16 completion:v27];

  v20 = _MTLogCategoryFeedUpdateDiagnostics();
  v21 = v20;
  v22 = *(a1 + 96);
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    v23 = [*(a1 + 32) UUIDString];
    *buf = 138543362;
    v33 = v23;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v22, "DispatchWork", "identifier=%{public, name=identifier}@", buf, 0xCu);
  }
}

void sub_10010F1B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:MTDidFinishFeedUpdateNotification object:*(*(*(a1 + 48) + 8) + 40)];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }

  v8 = _MTLogCategoryFeedUpdateDiagnostics();
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = [*(a1 + 32) UUIDString];
    v12 = 138543362;
    v13 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "MTFeedUpdateManagerFull", "identifier=%{public, name=identifier}@", &v12, 0xCu);
  }
}

void sub_10010F5E4(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

void sub_100110460(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setInitialFeedUpdateCount:a2];
    v3 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) initialFeedUpdateCount];
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Did begin updating %lld feeds for background task", &v8, 0xCu);
    }

    +[NSDate timeIntervalSinceReferenceDate];
    [*(a1 + 32) setFeedUpdateBeginTime:?];
    [*(a1 + 32) setPendingCompletion:*(a1 + 40)];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:*(a1 + 32) selector:"didFinishUpdatingAllFeedsNotification:" name:@"MTFeedUpdateDidEndUpdatingAllFeeds" object:0];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

void sub_100111FE8(void *a1)
{
  v1 = qword_100583CF0;
  v2 = a1;
  if (v1 != -1)
  {
    sub_1003B2CC4();
  }

  [qword_100583CF8 start];
  [qword_100583CF8 runBlockWhenReady:v2];
}

void sub_100112058(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100583CF8;
  qword_100583CF8 = v1;
}

id sub_100113864(id a1, NSDictionary *a2)
{
  v8[0] = @"box-height";
  v2 = a2;
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:@"height"];
  v9[0] = v3;
  v8[1] = @"box-width";
  v4 = [(NSDictionary *)v2 objectForKeyedSubscript:@"width"];
  v9[1] = v4;
  v8[2] = @"url";
  v5 = [(NSDictionary *)v2 objectForKeyedSubscript:?];

  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

void sub_100114228(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = [*(a1 + 32) upNextManifest];
  v4 = [v3 isLoaded];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) upNextManifest];
    [v5 setIsLoaded:1];

    dispatch_group_enter(v2);
    v6 = [*(a1 + 32) upNextManifest];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10011444C;
    v17[3] = &unk_1004D8358;
    v18 = v2;
    [v6 _load:v17];
  }

  v7 = [*(a1 + 32) userManifest];
  v8 = [v7 isLoaded];

  if ((v8 & 1) == 0)
  {
    v9 = [*(a1 + 32) userManifest];
    [v9 setIsLoaded:1];

    dispatch_group_enter(v2);
    v10 = [*(a1 + 32) userManifest];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100114454;
    v15[3] = &unk_1004D8358;
    v16 = v2;
    [v10 _load:v15];
  }

  v11 = [*(a1 + 32) loadQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011445C;
  v13[3] = &unk_1004D8520;
  v12 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v12;
  dispatch_group_notify(v2, v11, v13);
}

uint64_t sub_10011445C(uint64_t a1)
{
  [*(a1 + 32) _setupManifestDefaults];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100114A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100114AA8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a3;
  return result;
}

void sub_100116884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011689C(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [MTRecencyUtil upNextForPodcastUuid:v2 excludeExplicit:0 ctx:*(a1 + 40)];

  v4 = [v3 episodeUuid];
  v5 = [*(a1 + 32) nextEpisodeUuid];
  v6 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) uuid];
    v8 = [v3 episodeUuid];
    [v3 modifiedDate];
    v14 = 138543874;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2050;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "UpNext result from update cursor position for podcast %{public}@: episodeUuid: %{public}@ at %{public}f", &v14, 0x20u);
  }

  v10 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 episodeUuid];
    v14 = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UpNext result updating podcast nextEpisodeUuid from %{public}@ to %{public}@", &v14, 0x16u);
  }

  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    v12 = [*(a1 + 40) episodeForUuid:v4];
    v13 = [*(a1 + 40) episodeForUuid:v5];
    if ([v13 listenNowEpisode])
    {
      [v13 setListenNowEpisode:0];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if (v12 && ([v12 listenNowEpisode] & 1) == 0)
    {
      [v12 setListenNowEpisode:1];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [v3 modifiedDate];
      [*(a1 + 32) setModifiedDate:?];
    }
  }

  if (*(a1 + 56) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) saveInCurrentBlock];
  }
}

void sub_100116C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100116CAC(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForFeedUrl:*(a1 + 40)];
  v2 = [v5 uuid];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100116E74(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  v3 = [*(a1 + 32) uuid];
  v4 = [MTEpisode predicateForEpisodesWithSeasonNumbersOnPodcastUuid:v3];
  [v2 setPredicate:v4];

  [v2 setFetchLimit:1];
  v5 = *(a1 + 40);
  v8 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v8];
  v7 = v8;
  *(*(*(a1 + 48) + 8) + 24) = [v6 count] != 0;

  [v7 logAndThrow:0];
}

void sub_100117CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100117CDC(uint64_t a1)
{
  result = [*(a1 + 32) isAudio];
  if (result)
  {
    v3 = 1;
  }

  else
  {
    result = [*(a1 + 32) isVideo];
    if (result)
    {
      v3 = 2;
    }

    else
    {
      result = [*(a1 + 32) isExternalType];
      if (!result)
      {
        return result;
      }

      v3 = 3;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void sub_100117E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100117E34(uint64_t a1)
{
  result = [*(a1 + 32) isDownloaded];
  if (result)
  {
    v3 = 2;
  }

  else
  {
    if (!*(a1 + 32))
    {
      return result;
    }

    v3 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

BOOL sub_1001195D8(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = [a2 episodeUuid];
  if ([v5 isEqualToString:*(a1 + 32)])
  {
    v6 = [*(a1 + 40) count] > a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100119DC0(uint64_t a1)
{
  v4 = [NSString stringWithFormat:@"up_next_%@", *(a1 + 32)];
  v2 = [[NSMutableDictionary alloc] initWithDictionary:*(a1 + 40)];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) count]);
  [v2 setValue:v3 forKey:@"count"];

  [IMMetrics recordUserAction:v4 dataSource:*(a1 + 56) withData:v2];
}

void sub_100119F98(uint64_t a1)
{
  v5 = [NSString stringWithFormat:@"up_next_%@", *(a1 + 32)];
  v2 = [[NSMutableDictionary alloc] initWithDictionary:*(a1 + 40)];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) count]);
  [v2 setValue:v3 forKey:@"count"];

  v4 = [[MTPlayerItemList alloc] initWithPlayerItems:*(a1 + 56)];
  [IMMetrics recordUserAction:v5 dataSource:v4 withData:v2];
}

void sub_10011A248(id a1)
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_100583D18;
  qword_100583D18 = v2;
}

void sub_10011A3B8(uint64_t a1)
{
  v3 = [*(a1 + 32) _encodedUpNext];
  v1 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
  v2 = [objc_opt_class() _filePath];
  [v1 writeToFile:v2 atomically:1];
}

void sub_10011A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011A6E4(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [*(a1 + 32) setPlayerItems:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = a1;
  v4 = [*(a1 + 32) playerItems];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [v10 setEditingStyleFlags:3];
        v11 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = [v10 title];
          *buf = 67109378;
          v19 = v7;
          v20 = 2112;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Up Next Controller item at index %d: %@", buf, 0x12u);
        }

        ++v7;
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v6);
  }

  if (*(*(*(v13 + 40) + 8) + 24) == 1)
  {
    [*(v13 + 32) _upNextDidChange];
  }
}

void sub_10011AF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011AF24(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) setPlayed:*(a1 + 64) manually:*(a1 + 65) forUserActionOnEpisode:v2 saveChanges:1];
}

void sub_10011B0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011B0E8(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 48) setPlayState:*(a1 + 64) manually:*(a1 + 72) forUserActionOnEpisode:v2 saveChanges:1];
}

void sub_10011C7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_10011C7E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) playlistUuid];
  v3 = [v2 playlistForUuid:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10011C854(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10011CD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011CDAC(id *a1)
{
  v2 = a1[4];
  v3 = [a1[5] playlistUuid];
  v59 = [v2 playlistForUuid:v3];

  v58 = [v59 defaultSettings];
  v4 = [v59 title];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"TITLE_PLACEHOLDER" value:&stru_1004F3018 table:0];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10011D948;
  v76[3] = &unk_1004DCF90;
  objc_copyWeak(&v77, a1 + 7);
  v56 = [MTSetting textSettingWithInitialValue:v4 placeholder:v6 identifier:@"title" changeHandler:v76];

  v7 = [MTPlaylist containerOrderOptionArray:0];
  v8 = [MTPlaylist containerOrderOptionArray:1];
  v9 = +[MTPlaylist containerOrderOptionValues];
  v10 = [MTOptionsDescription optionsWithLongTitles:v7 shortTitles:v8 valueList:v9];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Play Order" value:&stru_1004F3018 table:0];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"PLAY_ORDER_HEADER" value:&stru_1004F3018 table:0];
  v15 = [v59 containerOrder];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_10011D9A4;
  v74[3] = &unk_1004DCFB8;
  objc_copyWeak(&v75, a1 + 7);
  v16 = [MTSetting optionSettingWithTitle:v12 headerTitle:v14 footerText:0 initialValue:v15 optionDescription:v10 identifier:@"order" changeHandler:v74];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Group by Show" value:&stru_1004F3018 table:0];
  LODWORD(v14) = [v59 isUngroupedList];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10011D9F4;
  v72[3] = &unk_1004DCFE0;
  objc_copyWeak(&v73, a1 + 7);
  v19 = [MTSetting switchSettingWithTitle:v18 initialValue:v14 ^ 1 identifier:@"groupBy" changeHandler:v72];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Station" value:&stru_1004F3018 table:0];
  v79[0] = v56;
  v79[1] = v16;
  v79[2] = v19;
  v22 = [NSArray arrayWithObjects:v79 count:3];
  v23 = [MTSettingsGroup groupWithTitle:v21 footerText:0 settings:v22];

  [a1[6] setObject:v23 forKey:@"station"];
  objc_destroyWeak(&v73);

  objc_destroyWeak(&v75);
  objc_destroyWeak(&v77);
  v24 = [MTPodcastPlaylistSettings episodesOptionArray:0 defaultValue:0];
  v57 = [v24 subarrayWithRange:{1, objc_msgSend(v24, "count") - 1}];

  v25 = [MTPodcastPlaylistSettings episodesOptionArray:1 defaultValue:0];
  v55 = [v25 subarrayWithRange:{1, objc_msgSend(v25, "count") - 1}];

  v26 = +[MTPodcastPlaylistSettings episodesOptionValues];
  v54 = +[NSOrderedSet orderedSetWithOrderedSet:range:copyItems:](NSOrderedSet, "orderedSetWithOrderedSet:range:copyItems:", v26, 1, [v26 count] - 1, 0);

  v53 = [MTOptionsDescription optionsWithLongTitles:v57 shortTitles:v55 valueList:v54];
  v27 = +[NSBundle mainBundle];
  v28 = [v27 localizedStringForKey:@"Episodes Header" value:&stru_1004F3018 table:0];
  v29 = [v58 episodesToShow];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10011DA44;
  v70[3] = &unk_1004DCFB8;
  objc_copyWeak(&v71, a1 + 7);
  v52 = [MTSetting optionSettingWithTitle:v28 footerText:0 initialValue:v29 optionDescription:v53 identifier:@"episodes" changeHandler:v70];

  v30 = [MTPodcastPlaylistSettings mediaOptionArray:0];
  v31 = [MTPodcastPlaylistSettings mediaOptionArray:1];
  v32 = +[MTPodcastPlaylistSettings mediaOptionValues];
  v33 = [MTOptionsDescription optionsWithLongTitles:v30 shortTitles:v31 valueList:v32];

  v34 = +[NSBundle mainBundle];
  v35 = [v34 localizedStringForKey:@"Media Type" value:&stru_1004F3018 table:0];
  LODWORD(v32) = [v58 mediaType];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_10011DAC4;
  v68[3] = &unk_1004DCFB8;
  objc_copyWeak(&v69, a1 + 7);
  v36 = [MTSetting optionSettingWithTitle:v35 footerText:0 initialValue:v32 optionDescription:v33 identifier:@"type" changeHandler:v68];

  v37 = +[NSBundle mainBundle];
  v38 = [v37 localizedStringForKey:@"Hide Played Episodes" value:&stru_1004F3018 table:0];
  LODWORD(v16) = [v58 showPlayedEpisodes];
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10011DB44;
  v66[3] = &unk_1004DCFE0;
  objc_copyWeak(&v67, a1 + 7);
  v39 = [MTSetting switchSettingWithTitle:v38 initialValue:v16 ^ 1 identifier:@"played" changeHandler:v66];

  v40 = +[NSBundle mainBundle];
  v41 = [v40 localizedStringForKey:@"Include" value:&stru_1004F3018 table:0];
  v78[0] = v52;
  v78[1] = v36;
  v78[2] = v39;
  v42 = [NSArray arrayWithObjects:v78 count:3];
  v43 = [MTSettingsGroup groupWithTitle:v41 footerText:0 settings:v42];

  [a1[6] setObject:v43 forKey:@"include"];
  objc_destroyWeak(&v67);

  objc_destroyWeak(&v69);
  objc_destroyWeak(&v71);

  v44 = +[NSBundle mainBundle];
  v45 = [v44 localizedStringForKey:@"Add Podcasts" value:&stru_1004F3018 table:0];
  v46 = [a1[5] titleForCurrentPodcasts];
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_10011DBC4;
  v64[3] = &unk_1004D9E80;
  objc_copyWeak(&v65, a1 + 7);
  v47 = [MTSetting buttonSettingWithTitle:v45 detailText:v46 identifier:@"add" changeHandler:v64];

  v48 = +[NSBundle mainBundle];
  v49 = [v48 localizedStringForKey:@"PODCASTS_HEADER" value:&stru_1004F3018 table:0];
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10011DC04;
  v60[3] = &unk_1004DD098;
  v61 = a1[4];
  objc_copyWeak(&v63, a1 + 7);
  v50 = v47;
  v62 = v50;
  v51 = [MTSettingsGroup groupWithTitle:v49 footerText:0 settingsHandler:v60];

  [a1[6] setObject:v51 forKey:@"podcasts"];
  objc_destroyWeak(&v63);

  objc_destroyWeak(&v65);
}

void sub_10011D870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id *location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(location);
  _Unwind_Resume(a1);
}

void sub_10011D948(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateTitle:v3];
}

void sub_10011D9A4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateContainerOrder:a2];
}

void sub_10011D9F4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateUngroupedListSetting:a2];
}

void sub_10011DA44(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = kPlaylistSettingEpisodesToShow;
  v4 = [NSNumber numberWithUnsignedInteger:a2];
  [WeakRetained updateSetting:v3 value:v4];
}

void sub_10011DAC4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = kPlaylistSettingMediaType;
  v4 = [NSNumber numberWithUnsignedInteger:a2];
  [WeakRetained updateSetting:v3 value:v4];
}

void sub_10011DB44(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = kPlaylistSettingShowPlayedEpisodes;
  v4 = [NSNumber numberWithInt:a2 ^ 1u];
  [WeakRetained updateSetting:v3 value:v4];
}

void sub_10011DBC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showAddPodcastsSheet];
}

id sub_10011DC04(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = *(a1 + 32);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10011DD28;
  v10 = &unk_1004DD070;
  v11 = v3;
  objc_copyWeak(&v14, (a1 + 48));
  v4 = v2;
  v12 = v4;
  v13 = *(a1 + 40);
  [v11 performBlockAndWait:&v7];
  v5 = [v4 copy];

  objc_destroyWeak(&v14);

  return v5;
}

void sub_10011DD28(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained playlistUuid];
  v24 = [v1 playlistForUuid:v3];

  v4 = [v24 podcasts];
  v26 = [v24 defaultSettings];
  [*(a1 + 40) addObject:*(a1 + 48)];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v25 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v25)
  {
    v23 = *v32;
    v22 = kPlaylistSettingPodcast;
    v21 = kPlaylistSettingPlaylist;
    v20 = kMTPodcastPlaylistSettingsEntityName;
    do
    {
      v5 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * v5);
        v7 = +[MTPodcastPlaylistSettings episodesOptionArray:defaultValue:](MTPodcastPlaylistSettings, "episodesOptionArray:defaultValue:", 0, [v26 episodesToShow]);
        v8 = +[MTPodcastPlaylistSettings episodesOptionArray:defaultValue:](MTPodcastPlaylistSettings, "episodesOptionArray:defaultValue:", 1, [v26 episodesToShow]);
        v9 = +[MTPodcastPlaylistSettings episodesOptionValues];
        v10 = [MTOptionsDescription optionsWithLongTitles:v7 shortTitles:v8 valueList:v9 footerTextCallback:0 headerTextCallback:&stru_1004DD020];

        v11 = [NSPredicate predicateWithFormat:@"%K = %@ AND %K = %@", v22, v6, v21, v24];
        v12 = [*(a1 + 32) objectsInEntity:v20 predicate:v11 sortDescriptors:0 returnsObjectsAsFaults:1];
        v13 = [v12 lastObject];
        if ([v13 tracksDefault])
        {
          v14 = 6;
        }

        else
        {
          v14 = [v13 episodesToShow];
        }

        v15 = [v6 title];
        v16 = [v6 uuid];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10011E184;
        v28[3] = &unk_1004DD048;
        objc_copyWeak(&v30, (a1 + 56));
        v17 = v13;
        v29 = v17;
        v18 = [MTSetting optionSettingWithTitle:v15 footerText:0 initialValue:v14 optionDescription:v10 identifier:v16 changeHandler:v28];

        [*(a1 + 40) addObject:v18];
        objc_destroyWeak(&v30);

        v5 = v5 + 1;
      }

      while (v25 != v5);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v25);
  }
}

NSString *__cdecl sub_10011E11C(id a1, unint64_t a2)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Include" value:&stru_1004F3018 table:0];

  return v3;
}

void sub_10011E184(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) uuid];
  [WeakRetained updateShowSetting:a2 forSettings:v4];
}

void sub_10011E438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10011E46C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) playlistUuid];
  v5 = [v2 playlistForUuid:v3];

  *(*(*(a1 + 48) + 8) + 24) = [v5 includesAllPodcasts];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v4 = [v5 podcasts];
    *(*(*(a1 + 56) + 8) + 24) = [v4 count];

    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) countOfPodcasts];
  }
}

void sub_10011E858(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) playlistUuid];
  v6 = [v2 playlistForUuid:v3];

  [v6 setIncludesAllPodcasts:0];
  v4 = [v6 podcasts];
  v5 = [v4 objectAtIndex:*(a1 + 48)];
  [v6 removePodcast:v5];
}

void sub_10011EA28(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastPlaylistSettingsForUuid:*(a1 + 40)];
  v5 = v2;
  if (*(a1 + 48) == 6)
  {
    v3 = [v2 playlist];
    v4 = [v3 defaultSettings];

    [v5 setTracksDefault:1];
    [v5 takeValuesFromDefaultSettings:v4];
  }

  else
  {
    [v2 setTracksDefault:0];
  }

  [v5 setEpisodesToShow:*(a1 + 48)];
  [v5 setNeedsUpdate:1];
}

void sub_10011EC28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) playlistUuid];
  v4 = [v2 playlistForUuid:v3];

  v5 = [v4 defaultSettings];
  [v5 setValue:*(a1 + 48) forKey:*(a1 + 56)];
  [v5 setNeedsUpdate:1];
  v6 = [v4 settings];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011ED24;
  v8[3] = &unk_1004DD0E8;
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void sub_10011EE30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) playlistUuid];
  v4 = [v2 playlistForUuid:v3];

  [v4 setContainerOrder:*(a1 + 48)];
  [v4 setNeedsUpdate:1];
}

void sub_10011F16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10011F198(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) playlistUuid];
  v4 = [v2 playlistForUuid:v3];

  v5 = [v4 title];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 64) + 8) + 24) = [v4 includesAllPodcasts];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v4 podcasts];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(a1 + 48);
        v14 = [*(*(&v15 + 1) + 8 * v12) uuid];
        [v13 addObject:v14];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

void sub_10011F3FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10011F418(id *a1)
{
  v2 = a1[4];
  v3 = [a1[5] playlistUuid];
  v4 = [v2 playlistForUuid:v3];

  v5 = kPodcastUuid;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = [WeakRetained addPodcastsViewController];
  v8 = [v7 podcastUuids];
  v9 = [NSPredicate predicateWithFormat:@"%K in %@", v5, v8];

  v10 = a1[4];
  v11 = kMTPodcastEntityName;
  v12 = +[MTPodcast sortDescriptorsForAllPodcasts];
  v13 = [v10 objectsInEntity:v11 predicate:v9 sortDescriptors:v12];

  v14 = [NSOrderedSet orderedSetWithArray:v13];
  v15 = [v4 podcasts];
  v16 = [v15 mutableCopy];

  [v16 minusOrderedSet:v14];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10011F694;
  v22[3] = &unk_1004DD138;
  v23 = v4;
  v17 = v4;
  [v16 enumerateObjectsUsingBlock:v22];
  [v17 setPodcasts:v14];
  v18 = objc_loadWeakRetained(a1 + 6);
  v19 = [v18 addPodcastsViewController];
  [v17 setIncludesAllPodcasts:{objc_msgSend(v19, "allPodcastsSelected")}];

  [v17 setNeedsUpdate:1];
  [a1[4] saveInCurrentBlock];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011F6A0;
  block[3] = &unk_1004D9E80;
  objc_copyWeak(&v21, a1 + 6);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v21);
}

void sub_10011F6A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v1 setIsPlaylistSyncDirty:1];

  v2 = [WeakRetained settingsController];
  [v2 reloadGroupWithIdentifier:@"podcasts"];

  [WeakRetained updatePodcastCount];
  v3 = [WeakRetained delegate];
  [v3 playlistSettingsDidChangeSetting:WeakRetained];
}

void sub_10011F884(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) playlistUuid];
  v4 = [v2 playlistForUuid:v3];

  [v4 setIsUngroupedList:(*(a1 + 48) & 1) == 0];
  if (*(a1 + 48) == 1 && [v4 containerOrder] == 2)
  {
    [v4 setContainerOrder:1];
  }

  [v4 setNeedsUpdate:1];
}

void sub_10011FB38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) playlistUuid];
  v4 = [v2 playlistForUuid:v3];

  [v4 setTitle:*(a1 + 48)];
}

void sub_100120C0C(uint64_t a1)
{
  v2 = _MTLogCategoryFeedUpdate();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Needs feed update for %lu podcasts", &v5, 0xCu);
  }

  v4 = +[MTFeedUpdateManager sharedInstance];
  [v4 _updatePodcastsWithUUIDs:*(a1 + 32) userInitiated:0 useBackgroundFetch:1 source:13 startedUpdatesCallback:0];
}

id sub_100120E58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100120EC8;
  v3[3] = &unk_1004DAFB0;
  v3[4] = v1;
  return [v1 results:v3];
}

void sub_100120EC8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 valueForKey:kEpisodeUuid];
  [v2 checkAutoDownloadsForUuids:v3];
}

void sub_100120FA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a4)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 BOOLValue];
    }

    WeakRetained[56] = v8;
    v9 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = WeakRetained[56];
      v11[0] = 67109120;
      v11[1] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MTFeedUpdateProcessor did get new batch fetch enabled value %x will refresh", v11, 8u);
    }

    [WeakRetained updatePredicate];
    [WeakRetained _reCheck];
  }
}

void sub_1001211C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = +[MPMediaLibrary defaultMediaLibrary];
  v4 = [*(a1 + 32) counterForGeneratingLibraryChangeNotifications];
  if (v4 >= 1)
  {
    [WeakRetained _endGeneratingLibraryChangeNotifications];
  }

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1001212E4;
  v11 = &unk_1004DD188;
  v13 = *(a1 + 40);
  v5 = v3;
  v12 = v5;
  v6 = [v5 performTransactionWithBlock:&v8];
  if (v4 >= 1)
  {
    [WeakRetained _beginGeneratingLibraryChangeNotifications];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

void sub_1001213A4(uint64_t a1)
{
  v2 = +[MPMediaLibrary defaultMediaLibrary];
  (*(*(a1 + 32) + 16))();
}

id sub_100121778(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _beginGeneratingLibraryChangeNotifications];
}

uint64_t sub_100121874(uint64_t a1)
{
  if ([*(a1 + 32) counterForGeneratingLibraryChangeNotifications] >= 1)
  {
    [*(a1 + 32) _endGeneratingLibraryChangeNotifications];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100122324(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 BOOLValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t sub_100122AFC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedIntegerValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_10012309C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001230C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setValue:*(a1 + 32)];
  v2 = [WeakRetained changeHandler];

  if (v2)
  {
    v3 = [WeakRetained changeHandler];
    v3[2](v3, *(a1 + 32));
  }

  v4 = [WeakRetained reloadHandler];

  if (v4)
  {
    v5 = [WeakRetained reloadHandler];
    v5[2]();
  }
}

void sub_100123F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100123F40(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [v10 identifier];
  v9 = [v8 isEqualToString:a1[4]];

  if (v9)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[6] + 8) + 24) = a3;
    *a4 = 1;
  }
}

id sub_100124E54(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 group];
  v6 = [v4 isEqual:v5];

  return v6;
}

void sub_1001254C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100125504(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained switchSettingChanged:*(a1 + 32) value:a2];
}

void sub_10012612C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) optionSettingChanged:*(a1 + 40) value:{objc_msgSend(*(a1 + 48), "valueForIndex:", a2)}];
  v3 = [*(a1 + 32) tableView];
  v5 = *(a1 + 56);
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v3 reloadRowsAtIndexPaths:v4 withRowAnimation:5];
}

void sub_100127864(id a1)
{
  v1 = dispatch_queue_create(0, 0);
  v2 = qword_100583D30;
  qword_100583D30 = v1;

  v3 = +[NSMutableDictionary dictionary];
  v4 = qword_100583D38;
  qword_100583D38 = v3;
}

void sub_1001279C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001279DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 identifier];
  v5 = [v4 objectForKeyedSubscript:v8];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100127AE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [NSNumber numberWithUnsignedInteger:v3];
  v5 = [*(a1 + 32) identifier];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

void sub_100128128(uint64_t a1, void *a2)
{
  v3 = a2;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100008B6C;
  v17[4] = sub_10003B58C;
  v18 = 0;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001282E0;
  v12[3] = &unk_1004D8E40;
  v6 = v3;
  v13 = v6;
  v7 = v5;
  v8 = *(a1 + 32);
  v14 = v7;
  v15 = v8;
  v16 = v17;
  [v7 performBlockAndWait:v12];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001286D4;
  v9[3] = &unk_1004DCAF8;
  v11 = v17;
  v10 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v9);

  _Block_object_dispose(v17, 8);
}

void sub_1001282E0(uint64_t a1)
{
  v2 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v35 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "nextEpisodeToPlay is %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) initialEpisodeUuid];
  v6 = [v4 episodeForUuid:v5];

  v7 = [v6 podcast];
  v8 = [*(a1 + 32) firstObject];
  v9 = [v8 podcast];
  v10 = [v9 uuid];
  v11 = [v7 uuid];
  v12 = [v10 isEqual:v11];

  v31 = v7;
  if (v12)
  {
    if ([*(a1 + 32) count] < 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = [*(a1 + 32) objectAtIndexedSubscript:1];
    }

    v15 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v13 title];
      v17 = [v13 uuid];
      *buf = 138412546;
      v35 = v16;
      v36 = 2112;
      *v37 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "nextEpisodeToPlay is the original episode. Pick the 2nd episode instead. %@ %@", buf, 0x16u);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
    v13 = v8;
  }

  v18 = [MTEpisodeUnavailableUtil unavailableReasonForEpisode:v13, v31];
  v33 = v6;
  if (v13 && v18)
  {
    v19 = v14 + 1;
    do
    {
      if ([*(a1 + 32) count] <= v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = [*(a1 + 32) objectAtIndexedSubscript:v19];
      }

      v21 = [MTEpisodeUnavailableUtil unavailableReasonForEpisode:v20];
      v22 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v20 title];
        v24 = [v20 uuid];
        *buf = 134218754;
        v35 = v21;
        v36 = 1024;
        *v37 = v19;
        *&v37[4] = 2112;
        *&v37[6] = v23;
        v38 = 2112;
        v39 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "nextEpisodeToPlay is not available (Unavailable reason: %lu). Pick the %d next episode instead. %@ %@", buf, 0x26u);
      }

      if (!v20)
      {
        break;
      }

      ++v19;
      v13 = v20;
    }

    while (v21);
  }

  else
  {
    v20 = v13;
  }

  v25 = [v20 uuid];
  v26 = *(*(a1 + 56) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  v28 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v20 title];
    v30 = [v20 uuid];
    *buf = 138412546;
    v35 = v29;
    v36 = 2112;
    *v37 = v30;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "nextEpisodeToPlay is %@ %@", buf, 0x16u);
  }
}

void sub_1001286D4(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    v4 = [MTPlaybackQueueFactory playEpisodeUuid:v2 context:6];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

void sub_100128870(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 length])
  {
    v3 = -[MTPodcastManifest initWithInitialEpisodeUuid:sectionType:]([MTListenNowManifest alloc], "initWithInitialEpisodeUuid:sectionType:", v4, [*(a1 + 32) unsignedIntegerValue]);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100128FD4(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100129054;
  v1[3] = &unk_1004D8748;
  v2 = *(a1 + 40);
  v1[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v1);
}

id sub_100129054(uint64_t a1)
{
  v2 = _MTLogCategoryiTunesMigration();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[iTunesMigration] stop showing migration screen.", buf, 2u);
  }

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) switchToLibraryIfNowHasContent];
  }

  v3 = _MTLogCategoryiTunesMigration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[iTunesMigration] starting post migration stuff...", v5, 2u);
  }

  return [*(a1 + 32) setupAfterBecomingActive];
}

void sub_100129918(uint64_t a1)
{
  v2 = +[MTNMSDefaultsUpdater sharedInstance];
  [v2 startObservingDownloadedPodcastsChanges];

  [*(a1 + 32) startLibraryUpdate];
  v3 = +[MTCoreSpotlightController sharedInstance];
  [v3 scheduleIndexAllIfNecessary];
}

void sub_100129D84(id a1)
{
  v1 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "library updater running", buf, 2u);
  }

  v2 = dispatch_semaphore_create(0);
  v3 = +[MTMediaLibraryUpdater sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100129E84;
  v5[3] = &unk_1004D8358;
  v6 = v2;
  v4 = v2;
  [v3 forceUpdateDatabaseFromMediaLibraryWithCompletion:v5];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_100129E8C(uint64_t a1)
{
  v1 = [*(a1 + 32) libraryDataProvider];
  [v1 restorePreviouslyDownloadedEpisodes];
}

void sub_10012A03C(uint64_t a1, char a2)
{
  if (*(a1 + 32))
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10012A0DC;
    v3[3] = &unk_1004D9E30;
    v4 = *(a1 + 32);
    v5 = a2;
    dispatch_async(&_dispatch_main_q, v3);
  }
}

uint64_t sub_10012A928(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) canDeletePlaylistUUIDBlock];

  if (v4)
  {
    v5 = [*(a1 + 32) canDeletePlaylistUUIDBlock];
    v6 = (v5)[2](v5, v3);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

id sub_10012A9A8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 performBlockAndWaitWithSave:?];
  }

  else
  {
    return [v2 performBlockAndWait:?];
  }
}

void sub_10012A9B8(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsInEntity:kMTPlaylistEntityName predicate:0 sortDescriptors:0];
  v3 = objc_opt_class();
  v4 = kPlaylistUuid;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10012AC0C;
  v22[3] = &unk_1004DD4B0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v23 = v6;
  v27 = v7;
  v24 = *(a1 + 64);
  v11 = *(a1 + 32);
  v8 = v11.i64[0];
  v25 = vextq_s8(v11, v11, 8uLL);
  v26 = *(a1 + 72);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10012B188;
  v16[3] = &unk_1004DD4D8;
  v17 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v18 = v9;
  v19 = v10;
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10012B56C;
  v12[3] = &unk_1004DD500;
  v15 = *(a1 + 80);
  v13 = *(a1 + 56);
  v14 = *(a1 + 32);
  [v3 mergeArray:v2 fromArray:v5 lookupKey:v4 updateBlock:v22 insertBlock:v16 deleteBlock:v12];
}

void sub_10012AC0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = kPlaylistUuid;
    v9 = v7;
    v10 = [v6 valueForKey:v8];
    v11 = [v6 valueForKey:kPlaylistTitle];
    *buf = 138543618;
    v50 = v10;
    v51 = 2112;
    v52 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "updating playlist (uuid=%{public}@ - title='%@')", buf, 0x16u);
  }

  v12 = v5;
  v13 = v6;
  v14 = [v13 objectForKey:@"syncOrderOnly"];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    v16 = [v13 objectForKey:kPlaylistSortOrder];
    [v12 setSortOrder:{objc_msgSend(v16, "longLongValue")}];

    v17 = [v13 objectForKey:kPlaylistUngroupedList];
    [v12 setIsUngroupedList:{objc_msgSend(v17, "BOOLValue")}];
  }

  else
  {
    v18 = kPlaylistTitle;
    v19 = [v13 objectForKey:kPlaylistTitle];
    v20 = [v12 title];
    v21 = [v19 isEqualToString:v20];

    if ((v21 & 1) == 0)
    {
      v22 = [v13 objectForKey:v18];
      [v12 setTitle:v22];

      v23 = *(*(*(a1 + 72) + 8) + 40);
      v24 = [v12 uuid];
      [v23 addObject:v24];
    }

    v25 = [v13 objectForKey:kPlaylistIncludesAllPodcasts];
    [v12 setIncludesAllPodcasts:{objc_msgSend(v25, "BOOLValue")}];

    [v12 setNeedsUpdate:1];
    v26 = [v13 objectForKey:kPlaylistSortOrder];
    [v12 setSortOrder:{objc_msgSend(v26, "longLongValue")}];

    v27 = [v13 objectForKey:kPlaylistContainerOrder];
    [v12 setContainerOrder:{objc_msgSend(v27, "intValue")}];

    v28 = [v13 objectForKey:kPlaylistUngroupedList];
    [v12 setIsUngroupedList:{objc_msgSend(v28, "BOOLValue")}];

    v29 = *(a1 + 40);
    v30 = [v12 uuid];
    [v29 addObject:v30];

    v31 = *(a1 + 48);
    v32 = [v12 defaultSettings];
    v33 = [v13 objectForKey:kPlaylistDefaultSettings];
    [v31 _mergeSetting:v32 syncObj:v33];

    v34 = objc_opt_class();
    v35 = [v12 settings];
    v36 = [v35 array];
    v37 = [v13 objectForKey:kPlaylistSettings];
    v38 = kPlaylistSettingUuid;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10012B158;
    v47[3] = &unk_1004DD438;
    v39 = *(a1 + 56);
    v48 = *(a1 + 48);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10012B168;
    v44[3] = &unk_1004DD460;
    v44[4] = v48;
    v45 = v39;
    v46 = v12;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10012B17C;
    v42[3] = &unk_1004DD488;
    v43 = *(a1 + 56);
    [v34 mergeArray:v36 fromArray:v37 lookupKey:v38 updateBlock:v47 insertBlock:v44 deleteBlock:v42];
  }

  v40 = *(a1 + 64);
  v41 = [v12 uuid];
  [v40 setObject:v13 forKeyedSubscript:v41];
}

void sub_10012B188(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"syncOrderOnly"];
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    v8 = kPlaylistUuid;
    if (v7)
    {
      v9 = v6;
      v10 = [v3 valueForKey:v8];
      v11 = kPlaylistTitle;
      v12 = [v3 valueForKey:kPlaylistTitle];
      *buf = 138543618;
      v39 = v10;
      v40 = 2112;
      v41 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "inserting playlist (uuid=%{public}@ - title='%@')", buf, 0x16u);
    }

    else
    {
      v11 = kPlaylistTitle;
    }

    v13 = *(a1 + 40);
    v14 = [v3 objectForKey:v8];
    v15 = [MTPlaylist insertNewPlaylistInManagedObjectContext:v13 uuid:v14 defaultSettings:0];

    v16 = [v3 objectForKey:v11];
    [v15 setTitle:v16];

    [v15 setHasBeenSynced:{objc_msgSend(*(a1 + 48), "syncMergeIsFromCloud")}];
    v17 = [v3 objectForKey:kPlaylistIncludesAllPodcasts];
    [v15 setIncludesAllPodcasts:{objc_msgSend(v17, "BOOLValue")}];

    [v15 setNeedsUpdate:1];
    v18 = [v3 objectForKey:kPlaylistSortOrder];
    [v15 setSortOrder:{objc_msgSend(v18, "longLongValue")}];

    v19 = [v3 objectForKey:kPlaylistContainerOrder];
    [v15 setContainerOrder:{objc_msgSend(v19, "intValue")}];

    v20 = [v3 objectForKey:kPlaylistUngroupedList];
    [v15 setIsUngroupedList:{objc_msgSend(v20, "BOOLValue")}];

    v21 = *(a1 + 48);
    v22 = [v15 defaultSettings];
    v23 = [v3 objectForKey:kPlaylistDefaultSettings];
    [v21 _mergeSetting:v22 syncObj:v23];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = [v3 objectForKey:{kPlaylistSettings, 0}];
    v25 = [v24 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(a1 + 48) _addSetting:*(a1 + 40) syncObj:*(*(&v33 + 1) + 8 * i) playlist:v15];
        }

        v26 = [v24 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v26);
    }

    v29 = *(a1 + 56);
    v30 = [v3 objectForKey:v8];
    [v29 addObject:v30];

    v31 = *(a1 + 64);
    v32 = [v15 uuid];
    [v31 setObject:v3 forKeyedSubscript:v32];
  }
}

void sub_10012B56C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasBeenSynced])
  {
    if (([v3 isItunesPlaylist] & 1) == 0 && (objc_msgSend(v3, "isBuiltIn") & 1) == 0)
    {
      v4 = *(a1 + 48);
      v5 = [v3 uuid];
      LOBYTE(v4) = (*(v4 + 16))(v4, v5);

      if ((v4 & 1) == 0)
      {
        v6 = *(a1 + 32);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = kPlaylistUuid;
          v8 = v6;
          v9 = [v3 valueForKey:v7];
          v10 = 138543362;
          v11 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deleting playlist (uuid=%{public}@)", &v10, 0xCu);
        }

        [*(a1 + 40) deletePlaylist:v3];
      }
    }
  }
}

void sub_10012BC50(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = *(a1 + 32);
  v7 = [v5 persistentID];

  v8 = [NSNumber numberWithLongLong:v7];
  [v6 setObject:v9 forKeyedSubscript:v8];
}

uint64_t sub_10012BD04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 persistentID]);
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = *(a1 + 32);
  v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 persistentID]);
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 == 0;
  }

  if (v13)
  {
    if (!v9 || v12)
    {
      if (!(v9 | v12))
      {
        v15 = *(a1 + 40);
        v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 persistentID]);
        v9 = [v15 objectForKeyedSubscript:v16];

        v17 = *(a1 + 40);
        v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 persistentID]);
        v12 = [v17 objectForKeyedSubscript:v18];
      }

      v14 = [v9 compare:v12];
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v9 = 0;
    v14 = -1;
  }

  return v14;
}

void sub_10012CAE8(id a1, NSLayoutConstraint *a2, unint64_t a3, BOOL *a4)
{
  v6 = a2;
  v4 = [(NSLayoutConstraint *)v6 mt_dynamicTypeConstant];
  v5 = v4;
  if (v4)
  {
    [v4 currentConstant];
    [(NSLayoutConstraint *)v6 setConstant:?];
  }
}

void sub_10012E158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012E174(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didTapStartButton];
}

void sub_10012F418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10012F458(uint64_t a1)
{
  v15 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  v2 = [v15 podcast];
  v3 = [v2 uuid];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v2 title];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v2 sortDescriptorsForPlayOrder];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [MTPodcastDetailDataSource predicateForPodcast:v2 sectionType:*(a1 + 80)];
  v13 = *(*(a1 + 72) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void sub_10012F6D8(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 length])
  {
    v3 = -[MTPodcastManifest initWithInitialEpisodeUuid:sectionType:]([MTPodcastManifest alloc], "initWithInitialEpisodeUuid:sectionType:", v4, [*(a1 + 32) unsignedIntegerValue]);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10012F8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10012F8F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) podcastUuid];
  v7 = [v2 podcastForUuid:v3];

  v4 = [v7 sortDescriptorsForPlayOrder];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100130738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 240), 8);
  _Block_object_dispose((v61 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1001307D0(uint64_t a1)
{
  v15 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  v2 = [*(a1 + 32) podcastForUuid:*(*(*(a1 + 56) + 8) + 40)];
  *(*(*(a1 + 64) + 8) + 24) = v15 != 0;
  *(*(*(a1 + 72) + 8) + 24) = v2 != 0;
  if (!*(*(*(a1 + 80) + 8) + 40) && +[MTStoreIdentifier isNotEmpty:](MTStoreIdentifier, "isNotEmpty:", [v2 storeCollectionId]))
  {
    v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v2 storeCollectionId]);
    v4 = *(*(a1 + 80) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  *(*(*(a1 + 88) + 8) + 24) = [*(*(*(a1 + 80) + 8) + 40) length] != 0;
  if (!*(*(*(a1 + 96) + 8) + 40) && +[MTStoreIdentifier isNotEmpty:](MTStoreIdentifier, "isNotEmpty:", [v15 storeTrackId]))
  {
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v15 storeTrackId]);
    v7 = *(*(a1 + 96) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 48) podcastFeedUrl];
    v11 = [v9 podcastForFeedUrl:v10];
    v12 = [v11 uuid];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *(*(*(a1 + 72) + 8) + 24) = [*(*(*(a1 + 56) + 8) + 40) length] != 0;
  }
}

void sub_1001309F0(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) currentItem];
  v4 = [*(a1 + 40) playbackQueueController];
  [v4 setMagicMomentPlayerItem:v6];

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, *(a1 + 56));
  }
}

void sub_100130A80(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) currentItem];
  v4 = [*(a1 + 40) playbackQueueController];
  [v4 setMagicMomentPlayerItem:v6];

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, 4);
  }
}

void sub_100130E2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Siri following a show failed with error: %@", &v11, 0xCu);
    }

    if (*(a1 + 32))
    {
      v5 = [v3 domain];
      v6 = +[MTSubscriptionController subscriptionControllerErrorDomain];
      if ([v5 isEqualToString:v6])
      {
        v7 = [v3 code];
        v8 = +[MTSubscriptionController alreadySubscribedErrorCode];

        if (v7 == v8)
        {
          v9 = *(*(a1 + 32) + 16);
LABEL_12:
          v9();
          goto LABEL_13;
        }
      }

      else
      {
      }

      v9 = *(*(a1 + 32) + 16);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v9 = *(v10 + 16);
      goto LABEL_12;
    }
  }

LABEL_13:
}

void sub_100131244(uint64_t a1)
{
  v2 = [*(a1 + 32) currentItem];
  v3 = _MTLogCategoryPlayback();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 72);
      *buf = 67109120;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restored manifest and there is a current item. startPlayback: %d", buf, 8u);
    }

    if (*(a1 + 72) == 1)
    {
      if ([v2 needsNetworkToPlayButNoNetwork])
      {
        v6 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "The current item is not downloaded, and we are not connected to the internet. Cannot start playback.", buf, 2u);
        }

        v7 = *(a1 + 40);
        if (v7)
        {
          v8 = *(v7 + 16);
LABEL_16:
          v8();
          goto LABEL_17;
        }
      }

      [*(a1 + 32) playWithReason:9];
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      v8 = *(v11 + 16);
      goto LABEL_16;
    }
  }

  else
  {
    if (v4)
    {
      v9 = *(a1 + 72);
      *buf = 67109120;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No manifest to restore. Creating a new play queue and starting playback: %d", buf, 8u);
    }

    v10 = [MTPlaybackQueueFactory playMyPodcastsWithOrder:*(a1 + 48)];
    LOBYTE(v12) = *(a1 + 74);
    [*(a1 + 56) _setManifest:v10 playerController:*(a1 + 32) queueType:1 startPlayback:*(a1 + 72) forceLocal:*(a1 + 73) reason:*(a1 + 64) interactive:v12 completion:*(a1 + 40)];
  }

LABEL_17:
}

uint64_t sub_10013154C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 40));
  }

  return result;
}

id sub_100131A9C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = MTBaseEpisodeListManifest;
  return objc_msgSendSuper2(&v3, "enumerateObjectsUsingBlock:", v1);
}

void sub_100131C58(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v8 = kEpisodeUuid;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [v3 objectsInEntity:kMTEpisodeEntityName predicate:v2 propertiesToFetch:v4 limit:1];

  v6 = [v5 firstObject];
  v7 = [v6 uuid];

  (*(a1[6] + 16))();
}

void sub_100131D4C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    (*(*(v2 + 48) + 16))();

    objc_end_catch();
    JUMPOUT(0x100131D1CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_100131F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100131F18(uint64_t a1)
{
  v5 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  v2 = [*(a1 + 56) _mediaItemForEpisode:v5];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001320E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001320FC(uint64_t a1)
{
  v5 = [*(a1 + 32) existingEpisodeWithID:*(a1 + 40)];
  v2 = [*(a1 + 56) _mediaItemForEpisode:v5];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100135470(uint64_t a1)
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 playbackContext];

  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100008BBC;
  v10[4] = sub_10003B5B4;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001355C8;
  v5[3] = &unk_1004DD730;
  v8 = v10;
  v6 = *(a1 + 32);
  v4 = v3;
  v7 = v4;
  objc_copyWeak(&v9, (a1 + 40));
  [v4 performBlock:v5];
  objc_destroyWeak(&v9);

  _Block_object_dispose(v10, 8);
}

void sub_1001355A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 56));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001355C8(uint64_t a1)
{
  v2 = +[PFSecureDownloadRenewalManager inContextKeyDataFor:ctx:](PFSecureDownloadRenewalManager, "inContextKeyDataFor:ctx:", [*(a1 + 32) episodeStoreId], *(a1 + 40));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained dataAccessQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001356C4;
    v8[3] = &unk_1004D9068;
    v10 = *(a1 + 48);
    v9 = *(a1 + 32);
    dispatch_async(v7, v8);
  }
}

void sub_1001356C4(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    [v2 expirationDate];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    if ([v3 isLessThanDaysOld:30])
    {
      v4 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = [*(a1 + 32) episodeUuid];
        *buf = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Playback license expired error for episode ADAM ID %@ with renewal date %@", buf, 0x16u);
      }

      v6 = +[MTLibrary sharedInstance];
      v7 = [*(a1 + 32) episodeUuid];
      v10 = v7;
      v8 = [NSArray arrayWithObjects:&v10 count:1];
      v9 = [NSSet setWithArray:v8];
      [v6 removeDownloadAssetsForEpisodeUuids:v9];
    }
  }
}

void sub_100135A98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100135ACC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 localizedDescription];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[MTPlayerController]: Unable to remove all FairPlay keys with error %@.", &v8, 0xCu);
    }
  }

  v7 = [WeakRetained validationManager];
  [v7 validateDownloadedEpisodesWithCompletion:0];
}

void sub_100135BC8(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((a2 & 1) == 0)
  {
    v4 = _MTLogCategoryDRM();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[MTPlayerController]: Unable to remove all legacy FairPlay keys with error.", v6, 2u);
    }
  }

  v5 = [WeakRetained secureDownloadRenewalManager];
  [v5 updateDRMKeysForDownloadsWithUrlProtocolDelegate:0 completionHandler:0];
}

void sub_100136390(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1001363BC(uint64_t a1)
{
  if (isTV())
  {
    v2 = [*(a1 + 32) currentItem];
    v3 = [v2 isVideo];

    if (v3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      [WeakRetained dismissNowPlayingAnimated:1];
    }
  }
}

void sub_1001368E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) episodeUuid];
  v4 = [v2 episodeForUuid:v3];

  if (v4)
  {
    [v4 incremementPlayCount];
    [*(a1 + 48) updateEpisode:v4 andPlayerItem:*(a1 + 40) withElapsedTime:1 andDuration:*(a1 + 56) onMediaItemWillChange:*(a1 + 64)];
    +[MTMediaLibraryUtil updateMediaLibraryItem:playhead:playState:playCount:](MTMediaLibraryUtil, "updateMediaLibraryItem:playhead:playState:playCount:", [v4 persistentID], objc_msgSend(v4, "playState"), objc_msgSend(v4, "playCount"), 0.0);
    v5 = [v4 playlists];
    v6 = [v5 copy];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          [v12 setNeedsUpdate:{1, v13}];
          [v12 updateUnplayedCount];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}