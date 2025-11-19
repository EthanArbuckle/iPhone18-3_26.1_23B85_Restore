void sub_10000201C(uint64_t a1)
{
  if ([*(a1 + 32) needsLandscapeOverlayUpdate])
  {
    if ([*(a1 + 32) isLandscapeMode])
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100002130;
      v6[3] = &unk_10000C360;
      v6[4] = *(a1 + 32);
      [UIView performWithoutAnimation:v6];
      v2 = [*(a1 + 32) landscapeTrapOverlay];
      v3 = [v2 label];
      [v3 setAlpha:1.0];
    }

    else
    {
      v5 = [*(a1 + 32) landscapeTrapOverlay];
      v4 = [v5 label];
      [v4 setAlpha:0.0];
    }
  }
}

void sub_100002130(uint64_t a1)
{
  [*(a1 + 32) updateLandscapeOverlayImmediately];
  v3 = [*(a1 + 32) landscapeTrapOverlay];
  v2 = [v3 label];
  [v2 setAlpha:0.0];
}

void sub_1000026F4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if ([WeakRetained snapshottingEnabledUpdateIdentifier] == a1[6])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BaseAnimoji] updating snapshottingEnabled applying futureValue: %@", &v4, 0xCu);
    }

    [WeakRetained setSnapshottingEnabled:{objc_msgSend(a1[4], "BOOLValue")}];
  }
}

void sub_100003818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003838(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutMonitorDidUpdateDisplayLayout:v7 withContext:v6];
}

void sub_100003B30(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != [*(a1 + 32) strongPopoverCurrentlyPresented])
  {
    [*(a1 + 32) setStrongPopoverCurrentlyPresented:*(a1 + 40)];
    v6 = @"BaseMessagesViewControllerStrongPopupPresentedKey";
    v3 = [NSNumber numberWithBool:*(a1 + 40)];
    v7 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"BaseMessagesViewControllerStrongPopupPresentationNotification" object:*(a1 + 32) userInfo:v4];
  }
}

id sub_1000041D4(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100004208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained waitingOnPresentationStyleChange])
  {
    [WeakRetained requestPresentationStyle:1];
    v2 = dispatch_time(0, 500000000);
    dispatch_after(v2, &_dispatch_main_q, *(*(*(a1 + 32) + 8) + 40));
  }

  else
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void sub_100005050(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = a2;
  v14.width = v3;
  v14.height = v4;
  UIGraphicsBeginImageContextWithOptions(v14, 1, 0.0);
  v6 = [*(a1 + 32) view];
  v7 = [v6 backgroundColor];
  v8 = [*(a1 + 32) traitCollection];
  v9 = [v7 resolvedColorWithTraitCollection:v8];
  [v9 setFill];

  v10 = [*(a1 + 32) view];
  [v10 bounds];
  UIRectFill(v15);

  v11 = [*(a1 + 32) view];
  [v11 bounds];
  [v5 drawViewHierarchyInRect:1 afterScreenUpdates:?];

  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  (*(*(a1 + 40) + 16))();
}

void sub_100005330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005350(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldShowDisclosureWarning:0];
}