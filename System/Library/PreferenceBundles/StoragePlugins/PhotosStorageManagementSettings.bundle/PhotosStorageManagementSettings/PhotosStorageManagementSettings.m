id sub_1760(uint64_t a1)
{
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v10 = 138543618;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Will present iCloud up-sell workflow", &v10, 0x16u);
  }

  v6 = objc_alloc_init(ICQUICloudStorageOffersManager);
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = v6;

  [*(*(a1 + 32) + 24) setDelegate:?];
  return [*(*(a1 + 32) + 24) beginFlowWithNavigationController:*(a1 + 40) modally:1];
}

void sub_185C(uint64_t a1)
{
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> User cancelled insufficient iCloud storage alert", &v6, 0x16u);
  }
}

void sub_1F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1FD8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  *(*(a1 + 32) + 48) = 0;
  [*(a1 + 32) _updateStateForEnableCPLOptionTip];
  v6 = PLUIGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      *buf = 138543618;
      v17 = v9;
      v18 = 2048;
      v19 = v10;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did enable iCloud Photos", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      *buf = 138543874;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Failed to enable iCloud Photos: %@", buf, 0x20u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_27D8;
    v14[3] = &unk_8308;
    v14[4] = *(a1 + 32);
    v15 = v5;
    dispatch_async(&_dispatch_main_q, v14);
  }
}

void sub_21A0(uint64_t a1, _BYTE *a2, double a3)
{
  LODWORD(a3) = -1.0;
  [*(a1 + 32) setActivationPercent:a3];
  [*(*(a1 + 40) + 40) enableOptimizedMode:1];
  *a2 = 1;
  LODWORD(v5) = 1.0;
  [*(a1 + 32) setActivationPercent:v5];
  [*(a1 + 32) setEventualGain:0];
  [*(a1 + 32) setImmediateGain:0];
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = objc_opt_class();
    v9 = *(a1 + 40);
    v10 = 138543618;
    v11 = v8;
    v12 = 2048;
    v13 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Did enable iCloud Photos optimized mode", &v10, 0x16u);
  }
}

void sub_22B8(uint64_t a1)
{
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v9 = 138543618;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> User cancelled confirmation to empty recently deleted items", &v9, 0x16u);
  }

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 keyWindow];
  v8 = [v7 rootViewController];
  [v8 dismissViewControllerAnimated:1 completion:0];
}

void sub_23C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    *buf = 138543618;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Will empty recently deleted items", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2534;
  v11[3] = &unk_83D0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v12 = v9;
  v13 = v10;
  objc_copyWeak(&v14, (a1 + 48));
  [v8 _performTipOperation:v11];
  objc_destroyWeak(&v14);
}

void sub_2534(uint64_t a1, void *a2, double a3)
{
  LODWORD(a3) = -1.0;
  [*(a1 + 32) setActivationPercent:a3];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v6 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2614;
  v8[3] = &unk_83A8;
  v8[4] = v6;
  v9 = v5;
  v10[1] = a2;
  objc_copyWeak(v10, (a1 + 48));
  [v7 expungeRecentlyDeletedItemsWithCompletionBlock:v8];
  objc_destroyWeak(v10);
}

void sub_2614(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PLUIGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v22 = 138543618;
      v23 = v9;
      v24 = 2048;
      v25 = v10;
      v11 = "<%{public}@:%p> Succesfully emptied recently deleted items";
      v12 = v7;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 22;
LABEL_6:
      _os_log_impl(&dword_0, v12, v13, v11, &v22, v14);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    v16 = objc_opt_class();
    v17 = *(a1 + 32);
    v22 = 138543874;
    v23 = v16;
    v24 = 2048;
    v25 = v17;
    v26 = 2112;
    v27 = v5;
    v11 = "<%{public}@:%p> Failed to empty recently deleted items: %@";
    v12 = v7;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 32;
    goto LABEL_6;
  }

  LODWORD(v18) = 1.0;
  [*(a1 + 40) setActivationPercent:v18];
  [*(a1 + 40) setEventualGain:0];
  [*(a1 + 40) setImmediateGain:0];
  [*(a1 + 40) setSize:0];
  v19 = PULocalizedString();
  [*(a1 + 40) setInfoText:v19];
  **(a1 + 56) = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _refreshSizeGainForICPLEnableTip];

  v21 = objc_loadWeakRetained((a1 + 48));
  [v21 notifyUsageChanged];
}

uint64_t sub_293C(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  (*(*(a1 + 32) + 16))();
  do
  {
    result = usleep(0x7A120u);
  }

  while (*(*(*(a1 + 40) + 8) + 24) != 1);
  return result;
}

void sub_2ACC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_alloc_init(STStorageActionTipItem);
  v4 = [v3 originalMetadataProperties];
  [v7 setSize:{objc_msgSend(v4, "originalFilesize")}];
  [v7 setRecoverable:*(a1 + 40)];
  v5 = [v3 modificationDate];
  [v7 setLastUsedDate:v5];

  v6 = [v3 creationDate];

  [v7 setCreatedDate:v6];
  [*(a1 + 32) addObject:v7];
}

id sub_2DA4(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedLongLongValue];
  v4 = *(a1 + 32);

  return [v4 setImmediateGain:v3];
}

id sub_31AC(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedLongLongValue];
  v4 = *(a1 + 32);

  return [v4 setImmediateGain:v3];
}

void sub_38F8(id a1)
{
  qword_C908 = [@"com.apple.mobileslideshow" stringByAppendingString:@"PhotosStorageManagementSettings"];

  _objc_release_x1();
}

id sub_39F4(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedLongLongValue];
  v4 = *(a1 + 32);

  return [v4 setImmediateGain:v3];
}