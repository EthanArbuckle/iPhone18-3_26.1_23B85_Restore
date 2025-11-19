void sub_2F40(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSizeAndIntrinsic];
  v2 = [v1 mutableCopy];

  v6[0] = TUIAttributeNameTitle;
  v6[1] = @"control-color";
  v6[2] = @"progress-color";
  v6[3] = TUIAttributeNameN;
  v3 = [NSArray arrayWithObjects:v6 count:4];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_3CA680;
  qword_3CA680 = v4;
}

void sub_3074(id a1)
{
  v3[0] = @"control-color";
  v3[1] = @"progress-color";
  v4[0] = &off_39B350;
  v4[1] = &off_39B350;
  v3[2] = @"night-mode";
  v4[2] = &off_39B368;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_3CA690;
  qword_3CA690 = v1;
}

void sub_430C(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 48)) initWithScreenshots:*(a1 + 32) andSelectedIndex:*(a1 + 56)];
  v3 = +[JSABridge sharedInstance];
  v4 = *(a1 + 40);
  v6 = v2;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 enqueueValueCall:v4 arguments:v5 file:@"BSUIScreenshotViewController.m" line:76];
}

void sub_496C(uint64_t a1)
{
  v3 = [*(a1 + 32) collectionView];
  v2 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [*(a1 + 32) selectedIndex], 0);
  [v3 scrollToItemAtIndexPath:v2 atScrollPosition:16 animated:1];
}

void sub_615C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_6180(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = BSUIFixRelativeURLInEntryDictionary(*(*(&v24 + 1) + 8 * v10));
          [v5 addObject:v11];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v12 = [*(a1 + 32) currentStackName];
    v13 = [TUIFeedContent feedContentFromDictionaries:v5 stackName:v12];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [v13 entries];
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * v18) setDelegate:WeakRetained];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v16);
    }

    v19 = objc_loadWeakRetained((a1 + 48));
    [v19 setFeedContentLoadingState:2];
    [v19 _renderContent:v13 completion:*(a1 + 40)];
  }
}

void sub_64E4(uint64_t a1, void *a2)
{
  v2 = a2 != 0;
  v3 = *(a1 + 32);
  v4 = BSUIFixRelativeURLInEntryDictionary(a2);
  (*(v3 + 16))(v3, v2, v4);
}

void sub_6704(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BSUIGoalsSharableImageRendererLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2BCCF4(v6, v7);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_6B28(uint64_t a1)
{
  v1 = [*(a1 + 32) dimmingView];
  [v1 setAlpha:1.0];
}

void sub_6C5C(uint64_t a1)
{
  v1 = [*(a1 + 32) dimmingView];
  [v1 setAlpha:0.0];
}

void sub_6E98(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = TUIAttributeNameCornerRadius;
  v6[1] = TUIAttributeNameURL;
  v3 = [NSArray arrayWithObjects:v6 count:2];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_3CA6A8;
  qword_3CA6A8 = v4;
}

uint64_t sub_70B4(uint64_t a1)
{
  qword_3CA6C0 = [objc_alloc(*(a1 + 32)) initWithMemoryCapacity:512000 diskCapacity:5242881];

  return _objc_release_x1();
}

void sub_72F0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  if ([v10 length])
  {
    v7 = [UIImage imageWithData:v10];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_retainBlock(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v7, v6);
  }
}

void sub_77A4(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(a1 + 32) strongObservers];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) weakObservers];
  v29 = [v4 copy];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  [*(a1 + 32) updateWithValueIfChanged:*(a1 + 40)];
  if (*(a1 + 40))
  {
    v47 = *(a1 + 40);
    v5 = [NSArray arrayWithObjects:&v47 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = +[JSABridge sharedInstance];
  v7 = [*(a1 + 32) onUpdate];
  [v6 enqueueValueCall:v7 arguments:v5 file:@"BSUIDynamicValue.m" line:77];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v3;
  v8 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = +[JSABridge sharedInstance];
        [v13 enqueueValueCall:v12 arguments:v5 file:@"BSUIDynamicValue.m" line:80];
      }

      v9 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v9);
  }

  v28 = +[NSMutableSet set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v30 = v29;
  v14 = [v30 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v30);
        }

        v18 = *(*(&v36 + 1) + 8 * j);
        v19 = [v18 value];
        if (v19)
        {
          v20 = +[JSABridge sharedInstance];
          [v20 enqueueValueCall:v19 arguments:v5 file:@"BSUIDynamicValue.m" line:87];
        }

        else
        {
          [v28 addObject:v18];
        }
      }

      v15 = [v30 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v15);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v28;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (k = 0; k != v23; k = k + 1)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * k);
        os_unfair_lock_lock((*(a1 + 32) + 8));
        v27 = [*(a1 + 32) weakObservers];
        [v27 removeObject:v26];

        os_unfair_lock_unlock((*(a1 + 32) + 8));
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v23);
  }
}

void sub_7C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_7C88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_8E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_8E70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_8E88(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = BSUIGoalsSharableImageRendererLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_2BCDE4(v8, v9);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_9A60(uint64_t a1)
{
  [*(a1 + 32) setTintColor:*(a1 + 40)];
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_A5C8(uint64_t a1)
{
  v6 = [*(a1 + 32) progress];
  [v6 doubleValue];
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained hostingViewController];
  [v5 setProgressSeconds:v3];
}

void sub_A8DC(id a1)
{
  qword_3CA6C8 = objc_alloc_init(BSUILibraryItemStateProvider);

  _objc_release_x1();
}

void sub_ACD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:BLDownloadQueuePropertyStoreItemIdentifier];
  v6 = [v5 stringValue];

  if (v6)
  {
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:BLDownloadQueuePropertyPurchaseParameters];
    v9 = [BLUtilities isPreOrderFromBuyParameters:v8];

    v10 = BKLibraryItemStateProviderLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Purchased completed, updating media library jalisco with adamId %@", buf, 0xCu);
    }

    objc_initWeak(buf, *(a1 + 32));
    v11 = +[MPCloudController sharedCloudController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_AEF0;
    v12[3] = &unk_386F88;
    objc_copyWeak(&v14, buf);
    v13 = v6;
    v15 = v9;
    [v11 updateJaliscoMediaLibraryWithReason:1 completionHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void sub_AEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_AEF0(uint64_t a1, int a2)
{
  v4 = BKLibraryItemStateProviderLog();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated jalisco media library from purchase success", v9, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_2BCE70(v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 32);
  v8 = [NSNumber numberWithBool:*(a1 + 48)];
  [WeakRetained _cacheNewPurchaseWithIdentifier:v7 isPreorder:v8];
}

void sub_AFC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:BLDownloadQueuePropertyStoreItemIdentifier];
  v6 = [v5 stringValue];

  if (v6)
  {
    v7 = BKLibraryItemStateProviderLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Purchase failed for storeID %@", &v10, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = objc_initWeak(&v10, v8);
    [v8 updateStateToPurchaseFailedForIdentifier:v6];

    objc_destroyWeak(&v10);
  }
}

void sub_B564(uint64_t a1)
{
  v2 = [NSNumber numberWithBool:*(a1 + 48)];
  [*(*(a1 + 32) + 40) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void sub_B670(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  [v3 setIsFinished:v2];

  v4 = *(a1 + 48);
  v5 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  [v5 setHasSpecifiedFinishedDate:v4];
}

void sub_B8C0(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;
}

uint64_t sub_BB38(uint64_t a1)
{
  *(*(a1 + 32) + 24) = [*(a1 + 40) copy];

  return _objc_release_x1();
}

void sub_BCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_BD04(void *a1)
{
  if (([*(a1[4] + 56) containsObject:a1[5]] & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  [*(a1[4] + 32) setObject:0 forKeyedSubscript:a1[5]];
  v2 = a1[5];
  v3 = *(a1[4] + 56);

  return [v3 addObject:v2];
}

void sub_BED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_BEF0(void *a1)
{
  if ([*(a1[4] + 56) containsObject:a1[5]])
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  [*(a1[4] + 32) setObject:0 forKeyedSubscript:a1[5]];
  v2 = a1[5];
  v3 = *(a1[4] + 56);

  return [v3 removeObject:v2];
}

id sub_C024(void *a1)
{
  result = [*(a1[4] + 56) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t sub_C2B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_C2C8(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  return _objc_release_x1();
}

id sub_C318(void *a1)
{
  result = [*(a1[4] + 56) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_CAB8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    if ([v2 BOOLValue])
    {
      v3 = 3;
    }

    else
    {
      v3 = 4;
    }

    [*(a1 + 48) setLibrary:v3];
    [*(a1 + 48) setIsPurchased:1];
    [*(a1 + 48) setDownload:0];
    v2 = v4;
  }
}

uint64_t sub_D00C(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];

  return _objc_release_x1();
}

void sub_D05C(uint64_t a1, char a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_D124;
  block[3] = &unk_386FD8;
  block[4] = v5;
  v9 = v4;
  v10 = a2;
  dispatch_sync(v6, block);
  v7 = [*(a1 + 32) _stateForItemIdentifier:*(a1 + 40)];
  [*(*(a1 + 32) + 88) insertOrUpdateItemWithIdentifier:*(a1 + 40) state:v7];
}

void sub_D124(uint64_t a1)
{
  v2 = [NSNumber numberWithBool:*(a1 + 48)];
  [*(*(a1 + 32) + 40) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

uint64_t sub_D188(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];

  return _objc_release_x1();
}

void sub_D1D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(_BSUILibraryItemFinishedState);
  if (v3)
  {
    -[_BSUILibraryItemFinishedState setIsFinished:](v4, "setIsFinished:", [v3 isFinished]);
    if (_os_feature_enabled_impl())
    {
      v5 = [v3 dateFinished];
      if (v5)
      {
        v6 = [v3 dateFinished];
        v7 = +[NSDate distantPast];
        -[_BSUILibraryItemFinishedState setHasSpecifiedFinishedDate:](v4, "setHasSpecifiedFinishedDate:", [v6 isEqualToDate:v7] ^ 1);
      }

      else
      {
        [(_BSUILibraryItemFinishedState *)v4 setHasSpecifiedFinishedDate:0];
      }
    }

    else
    {
      [(_BSUILibraryItemFinishedState *)v4 setHasSpecifiedFinishedDate:1];
    }
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_D37C;
  block[3] = &unk_387000;
  block[4] = v9;
  v14 = v8;
  v15 = v4;
  v11 = v4;
  dispatch_sync(v10, block);
  v12 = [*(a1 + 32) _stateForItemIdentifier:*(a1 + 40)];
  [*(*(a1 + 32) + 88) insertOrUpdateItemWithIdentifier:*(a1 + 40) state:v12];
}

uint64_t sub_D38C(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];

  return _objc_release_x1();
}

uint64_t sub_D3DC(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];

  return _objc_release_x1();
}

uint64_t sub_D51C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 24) allObjects];

  return _objc_release_x1();
}

void sub_D638(void *a1)
{
  [*(a1[4] + 72) setObject:a1[6] forKeyedSubscript:a1[5]];
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[6]];
  if (!v2)
  {
    v3 = *(a1[4] + 80);
    v4 = a1[6];
    v5 = objc_alloc_init(NSMutableSet);
    [v3 setObject:v5 forKeyedSubscript:v4];
    v2 = v5;
  }

  v6 = v2;
  [v2 addObject:a1[5]];
}

void sub_D7AC(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  [v2 removeObject:a1[6]];
  if (![v2 count])
  {
    [*(a1[4] + 80) removeObjectForKey:a1[5]];
  }

  [*(a1[4] + 72) removeObjectForKey:a1[6]];
}

void sub_D90C(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 count] != 0;
}

id BSUIGetLibraryItemStateProvider()
{
  v0 = qword_3CA6D8;
  if (!qword_3CA6D8)
  {
    v1 = +[BSUILibraryItemStateProvider sharedInstance];
    v2 = qword_3CA6D8;
    qword_3CA6D8 = v1;

    v0 = qword_3CA6D8;
  }

  return v0;
}

id BSUIGetLibraryItemStateUpdater()
{
  v0 = qword_3CA6E0;
  if (!qword_3CA6E0)
  {
    v1 = +[BSUILibraryItemStateProvider sharedInstance];
    v2 = qword_3CA6E0;
    qword_3CA6E0 = v1;

    v0 = qword_3CA6E0;
  }

  return v0;
}

id BSUIContentTasteControllerLog()
{
  if (qword_3CA6F0 != -1)
  {
    sub_2BCEB4();
  }

  v1 = qword_3CA6E8;

  return v1;
}

void sub_E06C(id a1)
{
  qword_3CA6E8 = os_log_create("com.apple.iBooks", "BSUIContentTasteController");

  _objc_release_x1();
}

void sub_E100(id a1)
{
  qword_3CA6F8 = objc_alloc_init(BSUIContentTasteController);

  _objc_release_x1();
}

void sub_E1C0(id a1, id a2)
{
  v3 = a2;
  v2 = +[JSATasteManager sharedInstance];
  [v2 syncTastes];

  v3[2]();
}

void sub_E2C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[JSABridge sharedInstance];
  v5 = *(a1 + 32);
  v6 = v3;
  if (!v3)
  {
    v6 = +[NSNull null];
  }

  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v4 enqueueValueCall:v5 arguments:v7 file:@"BSUIContentTasteController.m" line:72];

  if (!v3)
  {
  }
}

void sub_E568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E584(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2BCEDC();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      [WeakRetained _loveOrHateFromTasteInteger:{objc_msgSend(v5, "taste")}];
      [WeakRetained _explicitlyDeclinedFromTasteInteger:{objc_msgSend(v5, "taste")}];
    }

    v13 = objc_retainBlock(*(a1 + 32));
    v11 = v13;
    if (v13)
    {
      v12 = v13[2];
      goto LABEL_14;
    }
  }

  else
  {
    v9 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_2BCF4C();
    }

    v10 = objc_retainBlock(*(a1 + 32));
    v11 = v10;
    if (v10)
    {
      v12 = v10[2];
LABEL_14:
      v12();
    }
  }
}

void sub_E838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_E854(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2BCEDC();
    }
  }

  if (!v5)
  {
    v5 = [[BCMutableAssetDetail alloc] initWithAssetID:*(a1 + 32)];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [v5 setTaste:{objc_msgSend(WeakRetained, "_tasteIntegerFromTasteType:explicitlyDeclined:", *(a1 + 64), objc_msgSend(WeakRetained, "_explicitlyDeclinedFromTasteInteger:", objc_msgSend(v5, "taste")))}];
    [v5 setTasteSyncedToStore:1];
    v9 = *(a1 + 40);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_EA2C;
    v13[3] = &unk_3871E0;
    objc_copyWeak(&v15, (a1 + 56));
    v14 = *(a1 + 48);
    [v9 setAssetDetail:v5 completion:v13];

    objc_destroyWeak(&v15);
  }

  else
  {
    v10 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_2BCF88();
    }

    v11 = objc_retainBlock(*(a1 + 48));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }
}

void sub_EA2C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_2BCFC4();
    }
  }

  if (WeakRetained)
  {
    if (a2)
    {
      v9 = [WeakRetained syncTastesCallBlock];
      [v9 signalWithCompletion:&stru_3871B8];
    }

    v10 = objc_retainBlock(*(a1 + 32));
    v11 = v10;
    if (v10)
    {
      v12 = v10[2];
LABEL_14:
      v12();
    }
  }

  else
  {
    v13 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_2BCF88();
    }

    v14 = objc_retainBlock(*(a1 + 32));
    v11 = v14;
    if (v14)
    {
      v12 = v14[2];
      goto LABEL_14;
    }
  }
}

void sub_ECC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_ECDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2BCEDC();
    }
  }

  if (!v5)
  {
    v5 = [[BCMutableAssetDetail alloc] initWithAssetID:*(a1 + 32)];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [v5 setTaste:{objc_msgSend(*(a1 + 40), "_tasteIntegerFromTasteType:explicitlyDeclined:", objc_msgSend(*(a1 + 40), "_loveOrHateFromTasteInteger:", objc_msgSend(v5, "taste")), *(a1 + 72))}];
    [v5 setTasteSyncedToStore:1];
    v9 = *(a1 + 48);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_EEB8;
    v13[3] = &unk_3871E0;
    objc_copyWeak(&v15, (a1 + 64));
    v14 = *(a1 + 56);
    [v9 setAssetDetail:v5 completion:v13];

    objc_destroyWeak(&v15);
  }

  else
  {
    v10 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_2BD034();
    }

    v11 = objc_retainBlock(*(a1 + 56));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }
}

void sub_EEB8(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2BCFC4();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v10 = [WeakRetained syncTastesCallBlock];
      [v10 signalWithCompletion:&stru_387228];
    }

    v11 = objc_retainBlock(*(a1 + 32));
    v12 = v11;
    if (v11)
    {
      v13 = v11[2];
LABEL_14:
      v13();
    }
  }

  else
  {
    v14 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_2BD034();
    }

    v15 = objc_retainBlock(*(a1 + 32));
    v12 = v15;
    if (v15)
    {
      v13 = v15[2];
      goto LABEL_14;
    }
  }
}

void sub_F0D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2BD070();
    }
  }

  v19 = v6;
  v8 = objc_alloc_init(NSMutableDictionary);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (([v14 deletedFlag] & 1) == 0)
        {
          v15 = [v14 assetID];
          if (v15)
          {
            v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) _loveOrHateFromTasteInteger:{objc_msgSend(v14, "taste")}]);
            [v8 setObject:v16 forKeyedSubscript:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = objc_retainBlock(*(a1 + 40));
  if (v17)
  {
    v18 = [v8 copy];
    v17[2](v17, v18);
  }
}

void sub_F41C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v26 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_2BD0E0();
    }
  }

  v25 = v8;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v15 assetID];
        if (v16 && (objc_opt_class(), [*(a1 + 32) objectForKeyedSubscript:v16], v17 = objc_claimAutoreleasedReturnValue(), BUDynamicCast(), v18 = objc_claimAutoreleasedReturnValue(), v17, v18))
        {
          v19 = [*(a1 + 40) _loveOrHateFromTasteInteger:{objc_msgSend(v18, "shortValue")}];

          v20 = 0;
        }

        else
        {
          v19 = 0;
          v20 = 1;
        }

        v21 = [*(a1 + 40) _loveOrHateFromTasteInteger:{objc_msgSend(v15, "taste")}];
        if ((v20 & 1) == 0 && v19 == v21)
        {
          [v15 setTasteSyncedToStore:2];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = [v10 valueForKey:@"assetID"];
  v23 = [NSDictionary dictionaryWithObjects:v10 forKeys:v22];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_F6DC;
  v27[3] = &unk_3872A0;
  v24 = *(a1 + 48);
  v28 = *(a1 + 56);
  [v24 setAssetDetails:v23 completion:v27];
}

void sub_F6DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = BSUIContentTasteControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2BD150();
    }
  }

  v8 = objc_retainBlock(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, a2);
  }
}

void sub_FDA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained removeRenderOverride:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_FF50(uint64_t a1)
{
  v2 = [*(a1 + 32) imageChangeObserverBlock];

  if (v2)
  {
    v8 = [*(a1 + 40) imageContentWithOptions:1];
    v3 = [v8 image];

    if (v3)
    {
      v4 = [v8 image];
      v5 = [v4 newImage];
      [v8 insets];
      v6 = [v5 imageWithAlignmentRectInsets:?];

      v7 = [*(a1 + 32) imageChangeObserverBlock];
      (v7)[2](v7, v6);
    }
  }
}

void sub_105EC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 responseMetrics];

  if (v9)
  {
    v10 = [v6 responseMetrics];
    [v8 addObject:v10];

    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [v8 addObject:&__NSDictionary0__struct];
  if (v7)
  {
LABEL_3:
    v25[0] = @"code";
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 code]);
    v26[0] = v11;
    v25[1] = @"description";
    v12 = [v7 localizedDescription];
    v26[1] = v12;
    v25[2] = @"userInfo";
    v13 = [v7 userInfo];
    v26[2] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    [v8 addObject:v14];
  }

LABEL_4:
  v15 = JSALog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446978;
    v18 = "+[BSUIPurchaseManager purchaseBook::::::::]_block_invoke";
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}s Purchase done! response=%@ error=%@ result=%@", &v17, 0x2Au);
  }

  v16 = +[JSABridge sharedInstance];
  [v16 enqueueValueCall:*(a1 + 32) arguments:v8 file:@"BSUIPurchaseManager.m" line:67];
}

void sub_10F3C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) statusBarBackgroundController];
  [v2 setOpacity:v1];
}

void sub_10F90(uint64_t a1, void *a2)
{
  v3 = [a2 isCancelled];
  v4 = 48;
  if (v3)
  {
    v4 = 40;
  }

  v5 = *(a1 + v4);
  v6 = [*(a1 + 32) statusBarBackgroundController];
  [v6 setOpacity:v5];
}

void sub_11A4C(uint64_t a1, CGContextRef c)
{
  CGContextScaleCTM(c, 1.0, -1.0);
  CGContextTranslateCTM(c, 0.0, -*(a1 + 48));
  CGContextSaveGState(c);
  [*(a1 + 32) setStroke];
  [*(a1 + 32) setFill];
  v4 = +[UIBezierPath bezierPath];
  [v4 addArcWithCenter:1 radius:*(a1 + 56) startAngle:*(a1 + 64) endAngle:*(a1 + 72) clockwise:{0.0, 6.28318531}];
  [v4 stroke];
  [v4 fill];

  CGContextRestoreGState(c);
}

uint64_t sub_11B0C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGContext];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_12794(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) value];
  v2 = [v3 valueForKey:@"play"];
  [*(*(a1 + 32) + 24) setPlaying:{objc_msgSend(v2, "isEqualToString:", @"playing"}];
}

void sub_13844(id a1)
{
  v1 = objc_alloc_init(BSUIManager);
  v2 = qword_3CA708;
  qword_3CA708 = v1;

  v3 = objc_alloc_init(TUIViewRegistry);
  [qword_3CA708 setViewRegistry:v3];

  v4 = objc_alloc_init(TUIElementRegistry);
  [qword_3CA708 setElementRegistry:v4];

  v5 = objc_alloc_init(TUIDynamicRegistry);
  [qword_3CA708 setDynamicRegistry:v5];

  v6 = [TUIResourceLoader alloc];
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v7 = [NSArray arrayWithObjects:&v29 count:3];
  v8 = [v6 initWithProtocolClasses:{v7, v29, v30}];
  [qword_3CA708 setResourceLoader:v8];

  [NSURLProtocol registerClass:objc_opt_class()];
  v9 = objc_alloc_init(TUIResourceRegistry);
  [qword_3CA708 setResourceRegistry:v9];

  v10 = [qword_3CA708 resourceRegistry];
  v11 = objc_alloc_init(BSUIMicaFileProvider);
  [v10 registerFileProvider:v11 forKind:@"mica-provider"];

  v12 = [qword_3CA708 elementRegistry];
  [v12 registerElementClass:objc_opt_class() withName:@"profile-image"];

  v13 = [qword_3CA708 elementRegistry];
  [v13 registerElementClass:objc_opt_class() withName:@"family-profile-image"];

  v14 = [qword_3CA708 elementRegistry];
  [v14 registerElementClass:objc_opt_class() withName:@"series-stack"];

  v15 = [qword_3CA708 elementRegistry];
  [v15 registerElementClass:objc_opt_class() withName:@"audiobook-control"];

  v16 = [qword_3CA708 viewRegistry];
  [v16 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"BSUIReuseIdentifierAudiobookControlView"];

  v17 = [qword_3CA708 elementRegistry];
  [v17 registerElementClass:objc_opt_class() withName:@"daily-reading"];

  v18 = [qword_3CA708 elementRegistry];
  [v18 registerElementClass:objc_opt_class() withName:@"weekly-progress"];

  v19 = [qword_3CA708 viewRegistry];
  [v19 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"BSUIReuseIdentifierWeeklyProgressView"];

  v20 = [qword_3CA708 elementRegistry];
  [v20 registerElementClass:objc_opt_class() withName:@"reading-goals-gauge"];

  v21 = [qword_3CA708 viewRegistry];
  [v21 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"BSUIReuseIdentifierReadingGoalsGaugeView"];

  v22 = [qword_3CA708 elementRegistry];
  [v22 registerElementClass:objc_opt_class() withName:@"books-ui-component"];

  v23 = [qword_3CA708 viewRegistry];
  [v23 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"BSUIReuseIdentifierBooksUIComponentView"];

  v24 = [qword_3CA708 elementRegistry];
  [v24 registerFeature:@"books::ui::component"];

  v25 = [qword_3CA708 viewRegistry];
  v26 = objc_alloc_init(BSUISharedWithYouFactory);
  [v25 registerHostedViewFactory:v26 forType:@"social-highlight"];

  [BCMetrics registerNamedColorsWithTemplateManger:qword_3CA708];
  +[BSUIDailyReadingMetrics registerAttributes];
  +[BSUIWeeklyProgressMetrics registerAttributes];
  v27 = qword_3CA708;
  v28 = +[JSABridge sharedInstance];
  [v28 setTemplateBundleRegistrar:v27];
}

void sub_13DD8(uint64_t a1)
{
  v2 = [TUITemplateFactory alloc];
  v6 = [*(a1 + 32) manager];
  v3 = [v6 elementRegistry];
  v4 = [v2 initWithRegistry:v3];
  v5 = qword_3CA718;
  qword_3CA718 = v4;
}

void sub_14488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_144A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_144BC(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 8) objectForKey:a1[5]];

  return _objc_release_x1();
}

void sub_1450C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v2);
  }

  else
  {
    [*(*(a1 + 32) + 8) setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];
    [*(a1 + 32) aq_updateInterest];
  }
}

void sub_14710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_14728(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 56) + 8) + 40) && *(a1 + 64) == 1)
  {
    sub_2BD4D0(a1, a1 + 56, v2, (a1 + 40));
  }
}

void sub_148BC(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 objectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 40) unionSet:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_14B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_14B34(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 32) observers];
        v9 = [v8 objectForKey:v7];
        v10 = [v9 containsObject:*(a1 + 40)];

        if (v10)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_14DA8(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSSet set];
  }

  v6 = v5;

  v8 = [v6 setByAddingObject:*(a1 + 48)];

  v7 = [*(a1 + 32) observers];
  [v7 setObject:v8 forKey:*(a1 + 40)];
}

void sub_14FA8(uint64_t a1)
{
  v3 = [*(a1 + 32) observers];
  v2 = [NSSet setWithObject:*(a1 + 40)];
  [v3 setObject:v2 forKey:*(a1 + 48)];
}

void sub_15150(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[NSMutableSet set];
  }

  v11 = v6;

  [v11 removeObject:*(a1 + 48)];
  v7 = [v11 count];
  v8 = [*(a1 + 32) observers];
  v9 = v8;
  if (v7)
  {
    v10 = [v11 copy];
    [v9 setObject:v10 forKey:*(a1 + 40)];
  }

  else
  {
    [v8 removeObjectForKey:*(a1 + 40)];
  }
}

void sub_15354(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_15700(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSizeAndIntrinsic];
  v2 = [v1 mutableCopy];

  v6[0] = @"daily-reading-data";
  v6[1] = @"icon-mode";
  v6[2] = @"goal-reading-time";
  v6[3] = @"current-reading-time";
  v6[4] = @"progress-today";
  v6[5] = TUIAttributeNameTitle;
  v6[6] = @"detail-text";
  v6[7] = @"time-displayed-text";
  v6[8] = @"control-color";
  v6[9] = @"progress-color";
  v6[10] = TUIAttributeNameBackgroundColor;
  v6[11] = @"text-color";
  v6[12] = TUIAttributeNameFont;
  v6[13] = TUIAttributeNameN;
  v6[14] = TUIAttributeNameObserveTrigger;
  v6[15] = TUIAttributeNameObserveTriggerDelay;
  v6[16] = TUIAttributeNameObserveTriggerValue;
  v3 = [NSArray arrayWithObjects:v6 count:17];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_3CA728;
  qword_3CA728 = v4;
}

void sub_158C4(id a1)
{
  v3[0] = @"daily-reading-data";
  v3[1] = @"icon-mode";
  v4[0] = &off_39B3B0;
  v4[1] = &off_39B3B0;
  v3[2] = @"current-reading-time";
  v3[3] = @"goal-reading-time";
  v4[2] = &off_39B3C8;
  v4[3] = &off_39B3C8;
  v3[4] = @"detail-text";
  v3[5] = @"time-displayed-text";
  v4[4] = &off_39B3E0;
  v4[5] = &off_39B3E0;
  v3[6] = @"control-color";
  v3[7] = @"progress-color";
  v4[6] = &off_39B3F8;
  v4[7] = &off_39B3F8;
  v3[8] = @"text-color";
  v3[9] = @"night-mode";
  v4[8] = &off_39B3F8;
  v4[9] = &off_39B3B0;
  v3[10] = @"right-to-left";
  v4[10] = &off_39B3B0;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:11];
  v2 = qword_3CA738;
  qword_3CA738 = v1;
}

void sub_1716C(id a1)
{
  v1 = [AMSAcknowledgePrivacyTask alloc];
  v2 = BUOnboardingBooksBundleID();
  v3 = +[BUAccountsProvider sharedProvider];
  v4 = [v3 localStoreAccount];
  v6 = [v1 initWithPrivacyIdentifier:v2 account:v4];

  v5 = [v6 acknowledgePrivacy];
  [v5 addFinishBlock:&stru_387630];
}

void sub_17228(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = BSUIWelcomeScreenLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      LOWORD(v10) = 0;
      v7 = "BSUIWelcomeGDPRItem: welcomeScreenShouldShow: Successfully acknowledged privacy for current local account just in case";
      v8 = v5;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v6)
  {
    v10 = 138543362;
    v11 = v4;
    v7 = "BSUIWelcomeGDPRItem: welcomeScreenShouldShow: Failed to acknowledge privacy for current local account. error : %{public}@";
    v8 = v5;
    v9 = 12;
    goto LABEL_6;
  }
}

void sub_173D4(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_174AC(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = BSUIWelcomeScreenLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BSUIWelcomeGDPRItem: welcomeScreenViewControllerDidDismiss: Successfully acknowledged privacy for current account", &v9, 2u);
    }

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:BAPrivacyAcknowledgementChanged object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    v8 = +[JSAMetricsController JSAPrivacyAcknowledgementDidChange];
    [v5 postNotificationName:v8 object:0];
  }

  else if (v6)
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BSUIWelcomeGDPRItem: welcomeScreenViewControllerDidDismiss: Failed to acknowledge privacy for current account. error : %{public}@", &v9, 0xCu);
  }
}

void sub_1764C(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSizeAndIntrinsic];
  v2 = [v1 mutableCopy];

  v3 = +[TUIAttributeSet supportedAttributesTextStyling];
  [v2 unionSet:v3];

  v7[0] = TUIAttributeNameInstance;
  v7[1] = TUIAttributeNameParameters;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  [v2 addAttributesFromArray:v4];

  v5 = [v2 copy];
  v6 = qword_3CA750;
  qword_3CA750 = v5;
}

void sub_17D50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_17D6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained layer];

  if (v1)
  {
    v2 = [WeakRetained _generateImage];
    v3 = [v2 CGImage];
    v4 = [WeakRetained layer];
    [v4 setContents:v3];
  }
}

void sub_198E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v3 = [WeakRetained strongObservers];
    v4 = [v3 copy];

    v5 = [WeakRetained weakObservers];
    v31 = [v5 copy];

    os_unfair_lock_unlock((*(a1 + 32) + 8));
    if (*(a1 + 40))
    {
      v49 = *(a1 + 40);
      v6 = [NSArray arrayWithObjects:&v49 count:1];
    }

    else
    {
      v6 = 0;
    }

    v7 = +[JSABridge sharedInstance];
    v29 = WeakRetained;
    v8 = [WeakRetained onUpdate];
    [v7 enqueueValueCall:v8 arguments:v6 file:@"BSUIDynamicArray.m" line:88];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v4;
    v9 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          v14 = +[JSABridge sharedInstance];
          [v14 enqueueValueCall:v13 arguments:v6 file:@"BSUIDynamicArray.m" line:92];
        }

        v10 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v10);
    }

    v30 = +[NSMutableSet set];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = v31;
    v15 = [v32 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v32);
          }

          v19 = *(*(&v38 + 1) + 8 * j);
          v20 = [v19 value];
          if (v20)
          {
            v21 = +[JSABridge sharedInstance];
            [v21 enqueueValueCall:v20 arguments:v6 file:@"BSUIDynamicArray.m" line:99];
          }

          else
          {
            [v30 addObject:v19];
          }
        }

        v16 = [v32 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v16);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = v30;
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v46 count:16];
    WeakRetained = v29;
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (k = 0; k != v24; k = k + 1)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v34 + 1) + 8 * k);
          os_unfair_lock_lock((*(a1 + 32) + 8));
          v28 = [v29 weakObservers];
          [v28 removeObject:v27];

          os_unfair_lock_unlock((*(a1 + 32) + 8));
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v24);
    }
  }
}

void sub_1ABD8(id a1)
{
  qword_3CA760 = objc_alloc_init(BSUIVideoStateProvider);

  _objc_release_x1();
}

void sub_1BD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BD38(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1BE2C;
  block[3] = &unk_387718;
  objc_copyWeak(v16, (a1 + 40));
  v13 = v6;
  v14 = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v15 = v8;
  v16[1] = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(v16);
}

void sub_1BE2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32) && !*(a1 + 40))
    {
      v4 = [UIImage imageWithData:?];
      if (v4)
      {
        v5 = [v3 screenshotsCache];
        [v5 setObject:v4 forKey:*(a1 + 48)];

        v6 = [v3 delegate];
        [v6 screenshotLoader:v3 loadedImage:v4 forScreenshotAtIndex:*(a1 + 64)];
      }

      else
      {
        v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) length]);
        v6 = [NSString stringWithFormat:@"The image data of length %@ from the server is not valid", v7];

        v11 = @"description";
        v12 = v6;
        v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
        v9 = [NSError errorWithDomain:@"kBSUIScreenshotLoaderErrorDomain" code:0 userInfo:v8];

        v10 = [v3 delegate];
        [v10 screenshotLoader:v3 failedToLoadImageforScreenshotAtIndex:*(a1 + 64) withError:v9];
      }
    }

    else
    {
      v4 = [WeakRetained delegate];
      [v4 screenshotLoader:v3 failedToLoadImageforScreenshotAtIndex:*(a1 + 64) withError:*(a1 + 40)];
    }
  }
}

id BSUIDownloadPurchaseMonitorLog()
{
  if (qword_3CA778 != -1)
  {
    sub_2BD5D8();
  }

  v1 = qword_3CA770;

  return v1;
}

void sub_1E3AC(id a1)
{
  qword_3CA770 = os_log_create("com.apple.iBooks", "BSUIDownloadPurchaseMonitorLog");

  _objc_release_x1();
}

void sub_1E78C(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = v3;
  if (!v3 || ([v3 isTrackedAsRecent] & 1) == 0)
  {
    v5 = [BCCollectionMember collectionMemberIDWithCollectionID:kBKCollectionDefaultIDWantToRead assetID:*(a1 + 32)];
    v6 = [*(a1 + 40) cloudCollectionsManager];
    v7 = [v6 collectionMemberManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1E8C8;
    v12[3] = &unk_3877D8;
    v8 = *(a1 + 48);
    v12[4] = *(a1 + 40);
    v13 = v5;
    v14 = v8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    v15 = v9;
    v16 = v10;
    v11 = v5;
    [v7 collectionMemberForCollectionMemberID:v11 completion:v12];
  }
}

void sub_1E8C8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v18 = v2;
    v19 = v3;
    v5 = (a1 + 32);
    v6 = [*(a1 + 32) cloudCollectionsManager];
    v7 = [v6 collectionMemberManager];
    v8 = kBKCollectionDefaultIDWantToRead;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1E9F0;
    v14[3] = &unk_3877B0;
    *&v9 = *(a1 + 40);
    *(&v9 + 1) = *v5;
    v13 = v9;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v15 = v13;
    v16 = v12;
    v17 = *(a1 + 64);
    [v7 fetchMaxSortOrderInCollectionID:v8 completion:v14];
  }
}

void sub_1E9F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v5 = BSUIDownloadPurchaseMonitorLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_2BD5EC(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = [[BCMutableCollectionMember alloc] initWithCollectionMemberID:*(a1 + 32)];
  [v13 setDeletedFlag:0];
  [v13 setSortOrder:(a2 + 10000)];
  v14 = [*(a1 + 40) cloudCollectionsManager];
  v15 = [v14 collectionMemberManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1EB28;
  v18[3] = &unk_387788;
  v19 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v20 = v16;
  v21 = v17;
  [v15 setCollectionMember:v13 completion:v18];
}

void sub_1EB28(void *a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = +[BAEventReporter sharedReporter];
    [v7 emitAddToCollectionEventWithTracker:a1[4] collectionID:kBKCollectionDefaultIDWantToRead contentID:a1[5] contentAcquisitionType:1 contentType:0 supplementalContentCount:0 seriesType:0 productionType:a1[6]];

    v8 = +[BAEventReporter sharedReporter];
    [v8 emitWantListAddEventWithTracker:a1[4] contentID:a1[5] contentAcquisitionType:1 contentType:0 supplementalContentCount:0 seriesType:0 productionType:a1[6]];
  }

  if (v6)
  {
    v9 = BSUIDownloadPurchaseMonitorLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_2BD624(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

void sub_1EDE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) cloudCollectionsManager];
    v4 = [v3 collectionMemberManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1EEBC;
    v8[3] = &unk_387828;
    v5 = *(a1 + 40);
    v9 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v10 = v6;
    v11 = v7;
    [v4 deleteCollectionMemberForCollectionMemberID:v5 completion:v8];
  }
}

void sub_1EEBC(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[BAEventReporter sharedReporter];
    [v6 emitRemoveFromCollectionEventWithTracker:a1[4] collectionID:kBKCollectionDefaultIDSamples contentID:a1[5] contentAcquisitionType:1 contentType:0 supplementalContentCount:0 seriesType:0 productionType:a1[6]];
  }

  if (v5)
  {
    v7 = BSUIDownloadPurchaseMonitorLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2BD65C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

void sub_1F408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1F434(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1F44C(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadPurchaseAttempts];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(BSUIDownloadPurchaseAttempt);
  }

  v23 = v5;

  [(BSUIDownloadPurchaseAttempt *)v23 setStoreID:*(a1 + 40)];
  [(BSUIDownloadPurchaseAttempt *)v23 setBuyParams:*(a1 + 48)];
  v6 = [*(a1 + 56) objectForKeyedSubscript:@"BATracker"];
  [(BSUIDownloadPurchaseAttempt *)v23 setTracker:v6];

  [(BSUIDownloadPurchaseAttempt *)v23 setIsAudiobook:*(a1 + 80)];
  -[BSUIDownloadPurchaseAttempt setHasRacSupport:](v23, "setHasRacSupport:", [*(a1 + 64) BOOLValue]);
  [(BSUIDownloadPurchaseAttempt *)v23 setIsSupplementalContent:*(a1 + 81)];
  [(BSUIDownloadPurchaseAttempt *)v23 setSessionAssertion:*(*(*(a1 + 72) + 8) + 40)];
  objc_opt_class();
  v7 = [*(a1 + 56) objectForKeyedSubscript:@"upSellData"];
  v8 = BUDynamicCast();

  [(BSUIDownloadPurchaseAttempt *)v23 setUpSellData:v8];
  v9 = BAAppAnalyticsAdditionalDataKey;
  v10 = [*(a1 + 56) objectForKeyedSubscript:BAAppAnalyticsAdditionalDataKey];
  if (v10)
  {
    v11 = v10;
    v12 = _os_feature_enabled_impl();

    if (v12)
    {
      v13 = [*(a1 + 56) objectForKeyedSubscript:v9];
      v14 = [BAAppAnalyticsAdditionalData dataWithDictionary:v13];
      [(BSUIDownloadPurchaseAttempt *)v23 setAppAnalyticsAdditionalData:v14];
    }
  }

  v15 = [*(a1 + 32) downloadPurchaseAttempts];
  [v15 setObject:v23 forKeyedSubscript:*(a1 + 40)];

  if (![(BSUIDownloadPurchaseAttempt *)v23 isSupplementalContent])
  {
    v16 = *(a1 + 32);
    v17 = [(BSUIDownloadPurchaseAttempt *)v23 tracker];
    v18 = *(a1 + 40);
    v19 = [(BSUIDownloadPurchaseAttempt *)v23 buyParams];
    v20 = [(BSUIDownloadPurchaseAttempt *)v23 isAudiobook];
    v21 = [(BSUIDownloadPurchaseAttempt *)v23 hasRacSupport];
    v22 = [(BSUIDownloadPurchaseAttempt *)v23 appAnalyticsAdditionalData];
    [v16 _emitPurchaseAttemptEventWithTracker:v17 forID:v18 buyParams:v19 isAudioBook:v20 hasRacSupport:v21 upSellData:v8 appAnalyticsAdditionalData:v22];
  }
}

void sub_1F7C8(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadPurchaseAttempts];
  v15 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v15 setPurchaseResponse:*(a1 + 48)];
  [*(a1 + 32) aq_processCompletedPurchaseAttempt:v15];
  v3 = [*(a1 + 32) downloadPurchaseAttempts];
  [v3 removeObjectForKey:*(a1 + 40)];

  if ([v15 isAudiobook])
  {
    v4 = [v15 purchaseResponse];
    if ([v4 hasRacGUID])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 48) purchaseResponseItems];
  v7 = [v6 firstObject];
  v8 = [v7 isPurchaseRedownload];

  if ((v8 & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = [v15 tracker];
    [v9 _addStoreIDToWantToReadCollection:v10 tracker:v11 productionType:v5];

    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = [v15 tracker];
    [v13 _removeStoreIDFromSamplesCollection:v12 tracker:v14 productionType:v5];
  }
}

void sub_1FA10(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadPurchaseAttempts];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v4 setFailureResponse:*(a1 + 48)];
  [*(a1 + 32) aq_processFailedPurchaseAttempt:v4];
  v3 = [*(a1 + 32) downloadPurchaseAttempts];
  [v3 removeObjectForKey:*(a1 + 40)];
}

uint64_t sub_1FB18(uint64_t result)
{
  if (!*(*(result + 32) + 16))
  {
    *(*(result + 32) + 16) = objc_opt_new();

    return _objc_release_x1();
  }

  return result;
}

void sub_1FC08(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v3 = [v2 copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    v6 = BSUIDownloadPurchaseMonitorLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "BSUIDownloadPurchaseMonitor: Removing from My Samples: [%@]", buf, 0xCu);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 32) _removeStoreIDFromSamplesCollection:*(*(&v13 + 1) + 8 * v12) tracker:*(a1 + 40) productionType:{0, v13}];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

void sub_1FE54(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id BSUIBundle()
{
  if (qword_3CA788 != -1)
  {
    sub_2BD694();
  }

  v1 = qword_3CA780;

  return v1;
}

void sub_204E4(id a1)
{
  qword_3CA780 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_20940(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2095C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained layer];

  if (v1)
  {
    v2 = [WeakRetained _generateImage];
    v3 = [v2 CGImage];
    v4 = [WeakRetained layer];
    [v4 setContents:v3];
  }
}

uint64_t sub_210D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214F8(id *a1)
{
  v2 = [*(a1[4] + 2) data];
  [a1[4] _q_registerNewGenerationWithArray:a1[5]];
  v3 = [a1[6] copy];
  if (!v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_215FC;
    v5[3] = &unk_3878C8;
    v5[4] = a1[4];
    v6 = v2;
    v7 = a1[5];
    v3 = objc_retainBlock(v5);
  }

  v4 = [a1[4] dynamicArray];
  [v4 performBatchUpdatesWithGeneration:*(a1[4] + 2) block:v3];
}

void sub_215FC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) updateType];
  if ([v3 isEqualToString:@"move"])
  {
    v4 = [*(a1 + 32) uniqueId];

    if (v4)
    {
      [*(a1 + 32) _moveUpdateForDynamicArray:*(a1 + 40) newArray:*(a1 + 48) updater:v5];
      goto LABEL_6;
    }
  }

  else
  {
  }

  [*(a1 + 32) _replaceUpdateForDynamicArray:*(a1 + 40) newArray:*(a1 + 48) updater:v5];
LABEL_6:
}

void sub_21838(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) > a2)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
    [*(a1 + 40) addObject:v4];
  }
}

void sub_22368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2238C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = [*(a1 + 32) absoluteString];
  [v2 hostedMessageViewDidTriggerAction:v3];

  [WeakRetained _dismiss];
}

void sub_22504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22528(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

void sub_22A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22A28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22A40(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_22C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22C58(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_22EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22EFC(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_22F5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) tui_effectiveSyncLayoutController];
    v3 = [[BSUIFeedCardDataSource alloc] initWithFeedArray:*(a1 + 40) syncLayoutController:v2 options:*(a1 + 48)];
    [BCCardStackViewController pushCardsWithDataSource:v3 focusedIndex:*(a1 + 72) animated:*(a1 + 80) fromViewController:WeakRetained completion:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_23188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231A0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_23374(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_23390(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    objc_opt_class();
    v2 = [*(a1 + 32) objectForKeyedSubscript:BCCardStackIdentifierKey];
    v3 = BUDynamicCast();

    [BCCardStackViewController appendCardsWithData:*(a1 + 40) fromViewController:WeakRetained identifier:v3 completion:*(a1 + 48)];
  }

  else
  {
    v4 = objc_retainBlock(*(a1 + 48));
    v3 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4);
    }
  }
}

void sub_245DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24604(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 placeholderText];
  [v5 setPlaceholder:v4];

  [v5 setDelegate:*(a1 + 40)];
}

id sub_24678(uint64_t a1)
{
  if ([*(a1 + 32) isObject])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v3 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = WeakRetained;
    v4 = [WeakRetained textFields];
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v22 + 1) + 8 * v8) text];
          [v3 addObject:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v10 = *(a1 + 32);
    v26 = v3;
    v11 = [NSArray arrayWithObjects:&v26 count:1];
    v12 = [v10 callWithArguments:v11];

    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = *(a1 + 96);
    v18 = *(a1 + 72);
    v19 = [*(a1 + 80) option];
    [v13 _recordAlertMetrics:v14 actionType:v15 title:v16 message:v18 alertStyle:v17 actionTargetId:v19 returnValue:v12];
  }

  return [*(a1 + 40) setAlertController:0];
}

void sub_24A48(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = +[UIColor blackColor];
  }

  else
  {
    v2 = 0;
  }

  v8 = v2;
  v3 = [*(a1 + 32) createAlertControllerWith:*(a1 + 40) alertStyle:*(a1 + 80) title:*(a1 + 48) message:*(a1 + 56) alignment:*(a1 + 88) ^ 1 tintColor:v2 metricsData:*(a1 + 64)];
  [*(a1 + 32) setAlertController:v3];

  v4 = [*(a1 + 72) objectForKeyedSubscript:@"sourceView"];
  if (v4)
  {
    v5 = [*(a1 + 32) alertController];
    v6 = [v5 popoverPresentationController];
    [v6 setSourceView:v4];
  }

  v7 = [*(a1 + 32) alertController];
  [UIViewController jsa_presentViewController:v7 options:*(a1 + 72) animated:1 completion:0];
}

void sub_258E0(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSizeAndIntrinsic];
  v2 = [v1 mutableCopy];

  v6[0] = @"calendar-data";
  v6[1] = @"progress-today";
  v6[2] = @"control-color";
  v6[3] = @"progress-color";
  v6[4] = TUIAttributeNameBackgroundColor;
  v6[5] = @"text-color";
  v6[6] = @"completed-text-color";
  v6[7] = @"future-day-text-color";
  v6[8] = @"previous-day-border-color";
  v6[9] = @"previous-day-text-color";
  v6[10] = TUIAttributeNameFont;
  v6[11] = TUIAttributeNameObserveTrigger;
  v6[12] = TUIAttributeNameObserveTriggerDelay;
  v6[13] = TUIAttributeNameObserveTriggerValue;
  v3 = [NSArray arrayWithObjects:v6 count:14];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_3CA790;
  qword_3CA790 = v4;
}

void sub_25A8C(id a1)
{
  v3[0] = @"calendar-data";
  v3[1] = @"completed-text-color";
  v4[0] = &off_39B410;
  v4[1] = &off_39B428;
  v3[2] = @"control-color";
  v3[3] = @"future-day-text-color";
  v4[2] = &off_39B428;
  v4[3] = &off_39B428;
  v3[4] = @"previous-day-border-color";
  v3[5] = @"previous-day-text-color";
  v4[4] = &off_39B428;
  v4[5] = &off_39B428;
  v3[6] = @"progress-color";
  v3[7] = @"text-color";
  v4[6] = &off_39B428;
  v4[7] = &off_39B428;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:8];
  v2 = qword_3CA7A0;
  qword_3CA7A0 = v1;
}

void sub_26EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26F14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26F2C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 type] == &dword_0 + 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_2834C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) topViewController];
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v45 = v3;
  v4 = [*(a1 + 32) navigationBar];
  [v4 layoutMargins];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if ([*(a1 + 40) bsui_prefersExtraCompactNavBarMargin])
  {
    +[BSUINavigationBarInsets extraCompact];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v21 = [*(a1 + 32) traitCollection];
    if ([v21 horizontalSizeClass] == &dword_0 + 1)
    {
      +[BSUINavigationBarInsets compact];
    }

    else
    {
      +[BSUINavigationBarInsets regular];
    }

    v14 = v22;
    v16 = v23;
    v18 = v24;
    v20 = v25;
  }

  v26 = BUProtocolCast();
  [v26 navigationBarMetricsLayoutMargins];
  v31.f64[0] = v27;
  v31.f64[1] = v28;
  v32.f64[0] = v29;
  v32.f64[1] = v30;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v31, *&UIEdgeInsetsZero.top), vceqq_f64(v32, *&UIEdgeInsetsZero.bottom)))) & 1) == 0)
  {
    v20 = v30;
    v18 = v29;
    v16 = v28;
    v14 = v27;
  }

  v33 = [*(a1 + 32) viewIfLoaded];
  v34 = [v33 window];
  if (!v34)
  {
    goto LABEL_20;
  }

  if (v8 != v16 || v6 != v14 || v12 != v20)
  {

LABEL_19:
    v33 = [*(a1 + 32) navigationBar];
    [v33 setLayoutMargins:{v14, v16, v18, v20}];
LABEL_20:

    goto LABEL_21;
  }

  if (v10 != v18)
  {
    goto LABEL_19;
  }

LABEL_21:
  v35 = [v45 navigationItem];
  [v35 _titleMinimumMargins];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  if (v39 != v16 || v37 != 0.0 || v43 != 0.0 || v41 != 0.0)
  {
    v44 = [v45 navigationItem];
    [v44 _setTitleMinimumMargins:{0.0, v16, 0.0, 0.0}];
  }
}

id sub_285D0(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

uint64_t sub_29C84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C9C(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1[8] + 8) + 40);
  if (!v5)
  {
    v6 = [[BSUIDownloadProgress alloc] initWithKind:a1[6] instance:a1[5] parameters:a1[7]];
    v7 = *(a1[8] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = BCBookDownloadLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = a1[5];
      v13 = a1[6];
      v15 = a1[7];
      v16 = 138412802;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "Created the BSUIDownloadProgress for kind: %@, instance: %@, parameters: %@", &v16, 0x20u);
    }

    v5 = *(*(a1[8] + 8) + 40);
  }

  v10 = a1[5];
  v11 = *(a1[4] + 8);
  v12 = [v10 stringValue];
  [v11 setObject:v5 forKey:v12];
}

void sub_2A000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2A020(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) storeID];
  v4 = [v3 stringValue];
  v5 = [v2 objectForKey:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 8);
    v11 = [v8 storeID];
    v10 = [v11 stringValue];
    [v9 removeObjectForKey:v10];
  }
}

void sub_2A2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2A31C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v6 = [*(a1 + 40) assetIdentifier];
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_2A57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2A5A4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v6 = [*(a1 + 40) assetIdentifier];
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_2A910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2A938(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) copy];

  return _objc_release_x1();
}

id BSUICloudAssetRatingsManagerLog()
{
  if (qword_3CA7B8 != -1)
  {
    sub_2BD864();
  }

  v1 = qword_3CA7B0;

  return v1;
}

void sub_2ABB8(id a1)
{
  qword_3CA7B0 = os_log_create("com.apple.iBooks", "BSUICloudAssets.Ratings");

  _objc_release_x1();
}

void sub_2AE04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (*(a1 + 64) & 1) == 0)
  {
    v9 = objc_retainBlock(*(a1 + 56));
    if (v9)
    {
      [v5 normalizedStarRating];
      v10 = [NSNumber numberWithDouble:?];
      v11 = [v5 reviewTitle];
      v12 = [v5 reviewBody];
      v9[2](v9, 1, v6, v10, v11, v12);
    }
  }

  else
  {
    v7 = *(a1 + 65);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_2AF90;
    v13[3] = &unk_387C98;
    v8 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    [BSUICloudAssetRatingsManager _fetchRatingsDataForItem:v8 shouldSuppressMetrics:v7 shouldSuppressResponseDialogs:1 completionHandler:v13];
  }
}

void sub_2AF90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"error"];
  if ([v4 BOOLValue])
  {
  }

  else
  {
    v5 = [v3 objectForKeyedSubscript:@"rating"];

    if (v5)
    {
      v6 = [v3 objectForKeyedSubscript:@"rating"];
      v7 = [v3 objectForKeyedSubscript:@"title"];
      v8 = [v3 objectForKeyedSubscript:@"body"];
      v9 = [[BCMutableAssetReview alloc] initWithAssetReviewID:*(a1 + 32)];
      [v6 floatValue];
      [v9 setNormalizedStarRating:v10];
      [v9 setReviewTitle:v7];
      [v9 setReviewBody:v8];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_2B1C0;
      v18[3] = &unk_387C70;
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v19 = v6;
      v20 = v7;
      v21 = v8;
      v22 = v12;
      v13 = v8;
      v14 = v7;
      v15 = v6;
      [v11 setAssetReview:v9 completion:v18];

      goto LABEL_8;
    }
  }

  v16 = objc_retainBlock(*(a1 + 48));
  if (v16)
  {
    v17 = [NSError errorWithDomain:@"BSUICloudAssetRatingsManager" code:500 userInfo:v3];
    (*(v16 + 2))(v16, 0, v17, 0, 0, 0);
  }

LABEL_8:
}

void sub_2B1C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 56));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8, *(a1 + 32), *(a1 + 40), *(a1 + 48));
  }
}

void sub_2B3A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = +[JSABridge sharedInstance];
  v16 = *(a1 + 32);
  v17 = [NSNumber numberWithBool:a2];
  v18 = [v14 description];

  v19 = &stru_3960F8;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &stru_3960F8;
  }

  v21 = &off_39B440;
  if (v13)
  {
    v21 = v13;
  }

  v24[1] = v20;
  v24[2] = v21;
  if (v12)
  {
    v22 = v12;
  }

  else
  {
    v22 = &stru_3960F8;
  }

  if (v11)
  {
    v19 = v11;
  }

  v24[3] = v22;
  v24[4] = v19;
  v23 = [NSArray arrayWithObjects:v24 count:5];
  [v15 enqueueValueCall:v16 arguments:v23 file:@"BSUICloudAssetRatingsManager.m" line:137];
}

void sub_2B844(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"error"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = objc_retainBlock(*(a1 + 72));
    if (v6)
    {
      v7 = [NSError errorWithDomain:@"BSUICloudAssetRatingsManager" code:500 userInfo:v3];
      (v6)[2](v6, 0, v7);
    }
  }

  else
  {
    v8 = objc_alloc_init(NSDictionary);
    v26[0] = @"BSUICloudAssetRateContentUserInfoKeyAssetID";
    v26[1] = @"BSUICloudAssetRateContentUserInfoKeyNewRating";
    v9 = *(a1 + 40);
    v27[0] = *(a1 + 32);
    v27[1] = v9;
    v6 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"BSUICloudAssetRateContentNotification" object:*(a1 + 80) userInfo:v6];

    v11 = +[BCCloudAssetManager sharedManager];
    v12 = [v11 assetReviewManager];

    v13 = [*(a1 + 48) ams_DSID];
    v14 = [v13 stringValue];
    v15 = [BCAssetReview assetReviewIDWithUserID:v14 assetID:*(a1 + 32)];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_2BAF8;
    v18[3] = &unk_387D10;
    v19 = v15;
    v20 = *(a1 + 40);
    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    v23 = v12;
    v25 = *(a1 + 72);
    v24 = v3;
    v16 = v12;
    v17 = v15;
    [v16 assetReviewForAssetReviewID:v17 completion:v18];
  }
}

void sub_2BAF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (!(v7 | v6))
  {
    v8 = [[BCMutableAssetReview alloc] initWithAssetReviewID:*(a1 + 32)];
  }

  if (v8)
  {
    [*(a1 + 40) floatValue];
    v10 = v9;
    [v8 normalizedStarRating];
    v12 = v11 != v10;
    if (v11 != v10)
    {
      [v8 setNormalizedStarRating:v10];
    }

    if (*(a1 + 48))
    {
      v13 = [v8 reviewTitle];
      v14 = [v13 isEqualToString:*(a1 + 48)];

      if ((v14 & 1) == 0)
      {
        [v8 setReviewTitle:*(a1 + 48)];
        v12 = 1;
      }
    }

    if (*(a1 + 56) && ([v8 reviewBody], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", *(a1 + 56)), v15, (v16 & 1) == 0))
    {
      [v8 setReviewBody:*(a1 + 56)];
    }

    else if (!v12)
    {
      v17 = objc_retainBlock(*(a1 + 80));
      v18 = v17;
      if (v17)
      {
        (*(v17 + 2))(v17, 1, 0);
      }

      goto LABEL_22;
    }

    if (!(v7 | v6))
    {
      [v8 setModificationDate:0];
    }

    v21 = *(a1 + 64);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_2BD40;
    v22[3] = &unk_3872A0;
    v23 = *(a1 + 80);
    [v21 setAssetReview:v8 completion:v22];
  }

  else
  {
    v19 = objc_retainBlock(*(a1 + 80));
    if (v19)
    {
      v20 = [NSError errorWithDomain:@"BSUICloudAssetRatingsManager" code:500 userInfo:*(a1 + 72)];
      v19[2](v19, 0, v20);
    }
  }

LABEL_22:
}

void sub_2BD40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_2C038(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[JSABridge sharedInstance];
  v7 = *(a1 + 32);
  v8 = [NSNumber numberWithBool:a2];
  v12[0] = v8;
  v9 = [v5 description];

  v10 = &stru_3960F8;
  if (v9)
  {
    v10 = v9;
  }

  v12[1] = v10;
  v11 = [NSArray arrayWithObjects:v12 count:2];
  [v6 enqueueValueCall:v7 arguments:v11 file:@"BSUICloudAssetRatingsManager.m" line:283];
}

void sub_2C2D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"error"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = objc_retainBlock(*(a1 + 48));
    if (v6)
    {
      v7 = [NSError errorWithDomain:@"BSUICloudAssetRatingsManager" code:500 userInfo:v3];
      v6[2](v6, 0, v7);
    }
  }

  else
  {
    v8 = objc_alloc_init(NSDictionary);
    v9 = *(a1 + 32);
    v19 = @"BSUICloudAssetRateContentUserInfoKeyAssetID";
    v20 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:@"BSUICloudAssetRatingRemovalNotification" object:*(a1 + 56) userInfo:v10];

    v12 = +[BCCloudAssetManager sharedManager];
    v13 = [v12 assetReviewManager];

    v14 = [*(a1 + 40) ams_DSID];
    v15 = [v14 stringValue];
    v16 = [BCAssetReview assetReviewIDWithUserID:v15 assetID:*(a1 + 32)];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_2C50C;
    v17[3] = &unk_387D88;
    v18 = *(a1 + 48);
    [v13 deleteAssetReviewForAssetReviewID:v16 completion:v17];
  }
}

void sub_2C50C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_2C684(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[JSABridge sharedInstance];
  v7 = *(a1 + 32);
  v8 = [NSNumber numberWithBool:a2];
  v12[0] = v8;
  v9 = [v5 description];

  v10 = &stru_3960F8;
  if (v9)
  {
    v10 = v9;
  }

  v12[1] = v10;
  v11 = [NSArray arrayWithObjects:v12 count:2];
  [v6 enqueueValueCall:v7 arguments:v11 file:@"BSUICloudAssetRatingsManager.m" line:328];
}

void sub_2CC3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"RatingsRequests"];
  v5 = [v4 isObject];

  if (v5)
  {
    v6 = +[JSABridge sharedInstance];
    v7 = [v3 objectForKeyedSubscript:@"RatingsRequests"];
    v8 = *(a1 + 32);
    v13[0] = *(a1 + 40);
    v9 = objc_retainBlock(*(a1 + 48));
    v13[1] = v9;
    v10 = [NSArray arrayWithObjects:v13 count:2];
    [v6 enqueueValueInvocation:v7 method:v8 arguments:v10 file:@"BSUICloudAssetRatingsManager.m" line:368];

LABEL_5:
    goto LABEL_6;
  }

  v6 = objc_retainBlock(*(a1 + 48));
  if (v6)
  {
    v11[0] = @"error";
    v11[1] = @"errorType";
    v12[0] = &__kCFBooleanTrue;
    v12[1] = @"JSNotLoaded";
    v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    (v6)[2](v6, v7);
    goto LABEL_5;
  }

LABEL_6:
}

void sub_2CE1C(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = TUIAttributeNameCornerRadius;
  v6[1] = TUIAttributeNameMaskColor;
  v3 = [NSArray arrayWithObjects:v6 count:2];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_3CA7C0;
  qword_3CA7C0 = v4;
}

void sub_2D150(uint64_t a1)
{
  [*(a1 + 32) _removePurchaseByItemID:*(a1 + 40)];
  v2 = [*(a1 + 32) _addPurchaseForItemID:*(a1 + 40) isAudioBook:*(a1 + 80)];
  v3 = *(a1 + 48);
  if (v3)
  {
    goto LABEL_5;
  }

  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    sub_2BD990(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
LABEL_5:
    v12 = v3;
  }

  else
  {
    v18 = [*(a1 + 32) delegate];
    v12 = [v18 analyticsTrackerForPurchaseMonitor:*(a1 + 32)];
  }

  v13 = [*(a1 + 32) _newContentDataForID:*(a1 + 40) isAudioBook:*(a1 + 80) hasRacSupport:*(a1 + 81) tracker:v12 supplementalContentCount:0 appAnalyticsAdditionalData:*(a1 + 56)];
  v14 = *(a1 + 32);
  v15 = [v2 identifier];
  v16 = [v14 _newPurchaseDataForPurchaseID:v15 isPreorder:*(a1 + 82) pricingParameters:*(a1 + 64)];

  v17 = +[BAEventReporter sharedReporter];
  [v17 emitPurchaseAttemptEventWithTracker:v12 contentData:v13 purchaseData:v16 upSellData:*(a1 + 72)];
}

void sub_2D4C0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2D544;
  block[3] = &unk_3873D8;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_2D54C(uint64_t a1)
{
  v2 = [*(a1 + 32) _purchaseForItemID:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    goto LABEL_5;
  }

  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    sub_2BD990(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
LABEL_5:
    v12 = v3;
  }

  else
  {
    v23 = [*(a1 + 32) delegate];
    v12 = [v23 analyticsTrackerForPurchaseMonitor:*(a1 + 32)];
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = [v2 isAudioBook];
  v16 = [*(a1 + 56) hasRacGUID];
  v17 = [*(a1 + 56) supplementalContentCount];
  v18 = [v13 _newContentDataForID:v14 isAudioBook:v15 hasRacSupport:v16 tracker:v12 supplementalContentCount:v17 appAnalyticsAdditionalData:*(a1 + 64)];

  v19 = *(a1 + 32);
  v20 = [v2 identifier];
  v21 = [v19 _newPurchaseDataForPurchaseID:v20 isPreorder:*(a1 + 96) pricingParameters:*(a1 + 72)];

  v22 = +[BAEventReporter sharedReporter];
  [v22 emitPurchaseSuccessEventWithTracker:v12 contentData:v18 purchaseData:v21 upSellData:*(a1 + 80) completion:*(a1 + 88)];

  [*(a1 + 32) _removePurchaseByItemID:*(a1 + 40)];
}

void sub_2D8EC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2D970;
  block[3] = &unk_3873D8;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_2D978(uint64_t a1)
{
  v2 = [*(a1 + 32) _purchaseForItemID:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    goto LABEL_5;
  }

  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    sub_2BD990(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
LABEL_5:
    v12 = v3;
  }

  else
  {
    v30 = [*(a1 + 32) delegate];
    v12 = [v30 analyticsTrackerForPurchaseMonitor:*(a1 + 32)];
  }

  v13 = [*(a1 + 32) _newContentDataForID:*(a1 + 40) isAudioBook:objc_msgSend(v2 hasRacSupport:"isAudioBook") tracker:*(a1 + 96) supplementalContentCount:v12 appAnalyticsAdditionalData:{0, *(a1 + 56)}];
  v14 = *(a1 + 32);
  v31 = v2;
  v15 = [v2 identifier];
  v16 = [v14 _newPurchaseDataForPurchaseID:v15 isPreorder:*(a1 + 97) pricingParameters:*(a1 + 64)];

  v17 = [*(a1 + 72) errorCode];
  v18 = [*(a1 + 72) errorDescription];
  v19 = [*(a1 + 72) errorDomain];
  v20 = [*(a1 + 72) isUserCancelError];
  v21 = [*(a1 + 72) errorDomain];
  if ([v21 isEqualToString:AMSErrorDomain])
  {
    v22 = [v17 longValue];

    if (v22 != &stru_108.size + 1)
    {
      goto LABEL_12;
    }

    v23 = [*(a1 + 72) firstUnderlyingErrorCode];
    if (!v23)
    {
      goto LABEL_12;
    }

    v24 = v23;
    v25 = [*(a1 + 72) firstUnderlyingErrorLocalizedDescription];

    if (!v25)
    {
      goto LABEL_12;
    }

    v26 = [*(a1 + 72) firstUnderlyingErrorCode];

    [*(a1 + 72) firstUnderlyingErrorLocalizedDescription];
    v21 = v18;
    v18 = v17 = v26;
  }

LABEL_12:
  if (v20)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  v28 = [*(a1 + 32) _newPurchaseFailData:v27 errorCode:v17 errorDescription:v18 errorDomain:v19];
  v29 = +[BAEventReporter sharedReporter];
  [v29 emitPurchaseFailEventWithTracker:v12 contentData:v13 purchaseData:v16 upSellData:*(a1 + 80) failData:v28 completion:*(a1 + 88)];

  [*(a1 + 32) _removePurchaseByItemID:*(a1 + 40)];
}

void sub_2F854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2F86C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2F91C(id a1)
{
  qword_3CA7D8 = [[BSUIItemDescriptionCache alloc] initWithMaxItemCount:300 subfolder:0];

  _objc_release_x1();
}

void sub_2FDC4(uint64_t a1)
{
  v2 = [*(a1 + 32) q_updateDatabaseWithNewProfiles:*(a1 + 40) expirationDate:*(a1 + 48) moc:*(a1 + 56)];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2FF58;
  v9[3] = &unk_388048;
  v3 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v4 = v2;
  v10 = v4;
  v11 = *(a1 + 56);
  [v3 enumerateKeysAndObjectsUsingBlock:v9];
  if (*(a1 + 64))
  {
    v5 = [NSMutableSet setWithArray:?];
    if (v5)
    {
      v6 = [*(a1 + 40) allKeys];
      v7 = [NSSet setWithArray:v6];
      [v5 minusSet:v7];
    }
  }

  else
  {
    v5 = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_30010;
  v8[3] = &unk_388070;
  v8[4] = *(a1 + 32);
  [v5 enumerateObjectsUsingBlock:v8];
}

void sub_2FF58(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(*(a1 + 32) + 48) objectForKey:?];
  if (v3)
  {
    v4 = [*(a1 + 40) objectForKeyedSubscript:v6];
    if (v4)
    {
      v5 = [*(a1 + 32) q_itemDescriptionFromCachedItemDescription:v4 moc:*(a1 + 48)];
      if (v5)
      {
        [v3 set:v5 error:0];
      }
    }
  }
}

void sub_30010(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 48) objectForKey:a2];
  if (v2)
  {
    v3 = v2;
    [v2 set:0 error:0];
    v2 = v3;
  }
}

void sub_301B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v7 count:1];
  v4 = [v2 sq_fetchItemDescriptionsForIdentifiers:v3 moc:*(a1 + 48)];

  v5 = objc_retainBlock(*(a1 + 56));
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:*(a1 + 40)];
    v5[2](v5, v6);
  }
}

void sub_30818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_30830(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_30848(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 moc];
  v9 = [v5 q_itemDescriptionFromCachedItemDescription:v6 moc:v8];

  [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:v7];
}

void sub_30B0C(uint64_t a1)
{
  v2 = [*(a1 + 32) identifiersQueuedForCache];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v4 identifiersQueuedForCache];
    v6 = [v4 sq_fetchItemDescriptionsForIdentifiers:v5 moc:*(a1 + 40)];

    v7 = [*(a1 + 32) identifiersQueuedForCache];
    v8 = [NSMutableSet setWithArray:v7];

    if (v8)
    {
      v9 = [v6 allKeys];
      v10 = [NSSet setWithArray:v9];
      [v8 minusSet:v10];

      v11 = [*(a1 + 32) identifiersQueuedForNetwork];
      v12 = [v8 allObjects];
      [v11 addObjectsFromArray:v12];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v37 + 1) + 8 * i);
          v19 = [*(*(a1 + 32) + 48) objectForKey:v18];
          v20 = [v13 objectForKeyedSubscript:v18];
          [v19 set:v20 error:0];
        }

        v15 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v15);
    }
  }

  v21 = [*(a1 + 32) identifiersQueuedForNetwork];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [*(*(a1 + 32) + 40) count];
    if (v23 >= 0x19)
    {
      v24 = 25;
    }

    else
    {
      v24 = v23;
    }

    v25 = [*(*(a1 + 32) + 40) subarrayWithRange:{0, v24}];
    [*(*(a1 + 32) + 40) removeObjectsInRange:{0, v24}];
    v26 = [*(*(a1 + 32) + 40) count] != 0;
    v27 = +[AEUserPublishing sharedInstance];
    v28 = kAEUserPublishingLookProfileDescriptionLockUp;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_30E98;
    v32[3] = &unk_388150;
    v29 = *(a1 + 32);
    v33 = v25;
    v34 = v29;
    v35 = *(a1 + 48);
    v36 = v26;
    v30 = v25;
    [v27 profilesForStoreIDs:v30 keyProfile:v28 completion:v32];
  }

  else
  {
    v31 = objc_retainBlock(*(a1 + 48));
    v30 = v31;
    if (v31)
    {
      (*(v31 + 2))(v31);
    }
  }
}

void sub_30E98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v7 < [*(a1 + 32) count])
  {
    v8 = BCIMLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 136315650;
      v15 = "[BSUIItemDescriptionCache _fetchWithCompletion:]_block_invoke_2";
      v16 = 2080;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookStoreUI/BookStoreUI/Cache/BSUIItemDescriptionCache.m";
      v18 = 1024;
      v19 = 281;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%s %s:%d", &v14, 0x1Cu);
    }

    v9 = BCIMLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "@Requested product profiles for identifiers %@ and only received %@ profiles.", &v14, 0x16u);
    }
  }

  [*(a1 + 40) updateWithProfiles:v5 expirationDate:v6 requestedIdentifiers:*(a1 + 32)];
  v12 = objc_retainBlock(*(a1 + 48));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12);
  }

  if (*(a1 + 56) == 1)
  {
    [*(*(a1 + 40) + 24) signalWithCompletion:&stru_388128];
  }
}

void sub_311EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *sub_31204(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [*(a1 + 40) sq_queueCacheRequestForIdentifier:{v7, v11}];
          if (v8)
          {
            [*(a1 + 48) setObject:v8 forKey:v7];
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = [*(*(a1 + 40) + 32) count];
  result = [*(*(a1 + 40) + 40) count];
  *(*(*(a1 + 56) + 8) + 24) = &result[v9] != 0;
  return result;
}

void sub_3151C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3153C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 32));
  if (v6)
  {
    v7 = [v10 sampleDownloadURL];
    v6[2](v6, v7, v5);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_328E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_329AC;
  v9[3] = &unk_3881E8;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v12 = v4;
  v13 = v7;
  v11 = v6;
  v8 = v4;
  [v5 performBlock:v9];
}

void sub_329AC(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"BSUICachedItemDescription"];
  v3 = [*(a1 + 32) storeID];
  v4 = [NSPredicate predicateWithFormat:@"%K == %@", @"storeID", v3];
  [v2 setPredicate:v4];

  v5 = *(a1 + 40);
  v15 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v15];
  v7 = v15;
  if (v7)
  {
    v8 = BCIMLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v17 = "[BSUIItemDescriptionCache q_itemDescriptionFromCachedItemDescription:moc:]_block_invoke_2";
      v18 = 2080;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookStoreUI/BookStoreUI/Cache/BSUIItemDescriptionCache.m";
      v20 = 1024;
      v21 = 569;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v9 = BCIMLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "@%@: %@", buf, 0x16u);
    }
  }

  v11 = [v6 firstObject];
  v12 = [v11 rawNotes];
  v13 = objc_retainBlock(*(a1 + 48));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, v12);
  }
}

id sub_34890(uint64_t a1)
{
  result = [*(a1 + 32) _isVisible];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _animateProgressTodayIfNeeded];
  }

  return result;
}

id BSUIGetFamilyMemberImage(void *a1)
{
  v1 = [a1 bu_dictionaryForQueryItems];
  v2 = [v1 objectForKey:@"firstName"];
  v3 = [v1 objectForKey:@"lastName"];
  v4 = [v1 objectForKey:@"email"];
  v5 = [v1 objectForKey:@"dsid"];
  if ([v5 length])
  {
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 longLongValue]);
  }

  else
  {
    v6 = 0;
  }

  if (v2)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v7 && !v4 && !v6 || (v9 = objc_alloc_init(AAUIProfilePictureStore), [v9 setMonogramType:0], objc_msgSend(v9, "setPictureDiameter:", 60.0), !v9) || (v10 = objc_alloc_init(AAFamilyMember), objc_msgSend(v10, "setFirstName:", v2), objc_msgSend(v10, "setLastName:", v3), objc_msgSend(v10, "setPersonID:", v6), objc_msgSend(v10, "setAppleID:", v4), objc_msgSend(v9, "profilePictureForFamilyMember:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, !v11))
  {
    v12 = [[CNMonogrammer alloc] initWithStyle:0 diameter:60.0];
    v13 = v12;
    if (v8)
    {
      [v12 monogramForPersonWithFirstName:v2 lastName:v3];
    }

    else
    {
      [v12 silhouetteMonogram];
    }
    v11 = ;
  }

  return v11;
}

void sub_35298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_352B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_352C8(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [NSArray arrayWithArray:*(*(a1 + 32) + 16)];

  return _objc_release_x1();
}

id BSUINoticeViewControllerLog()
{
  if (qword_3CA7F0 != -1)
  {
    sub_2BD9E0();
  }

  v1 = qword_3CA7E8;

  return v1;
}

void sub_35650(id a1)
{
  qword_3CA7E8 = os_log_create("com.apple.iBooks", "BSUINoticeViewControllerLog");

  _objc_release_x1();
}

void sub_36F74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained imageURL];
    v4 = [NSURL URLWithString:v3];

    if ([v4 isFileURL])
    {
      v5 = [NSData dataWithContentsOfURL:v4];
      v6 = [UIImage imageWithData:v5];
      v7 = [v6 imageWithRenderingMode:2];

      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_370B4;
      v9[3] = &unk_386D98;
      v9[4] = v2;
      v10 = v7;
      v8 = v7;
      dispatch_async(&_dispatch_main_q, v9);
    }
  }
}

void sub_370B4(uint64_t a1)
{
  v2 = [*(a1 + 32) iconImageView];
  [v2 setImage:*(a1 + 40)];
}

void sub_3714C(id a1)
{
  qword_3CA800 = +[NSMutableSet set];

  _objc_release_x1();
}

void sub_3737C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v7 = [UIViewController jsa_topMostViewControllerForWindow:v4];

  v6 = [v7 traitCollection];
  [v5 setOverrideUserInterfaceStyle:{objc_msgSend(v6, "userInterfaceStyle")}];
}

id sub_3747C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[JSABridge sharedInstance];
  v4 = [v3 windowManager];
  v5 = [v4 windowFromOptions:v2];

  return v5;
}

void sub_37970(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) view];
  v4 = v5;
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) view];
  [v3 setAlpha:1.0];
}

void sub_379F0(uint64_t a1)
{
  if ([*(a1 + 32) shouldDismissAutomatically])
  {
    v2 = *(a1 + 32);

    [v2 _hide:1 withDelay:1.5];
  }

  else
  {
    v3 = UIAccessibilityLayoutChangedNotification;
    v4 = [*(a1 + 32) view];
    UIAccessibilityPostNotification(v3, v4);
  }
}

void sub_37D04(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  CGAffineTransformMakeScale(&v5, 0.88, 0.88);
  v3 = [*(a1 + 32) view];
  v4 = v5;
  [v3 setTransform:&v4];
}

void sub_37EA4(void *a1)
{
  v2 = _UISolariumEnabled();
  v3 = [UIImage systemImageNamed:a1[4]];
  if (v2)
  {
    +[BSUINoticeViewController imageConfig];
  }

  else
  {
    [UIImageSymbolConfiguration configurationWithPointSize:31.0];
  }
  v4 = ;
  v6 = [v3 imageWithConfiguration:v4];

  v5 = [[BSUINoticeViewController alloc] initWithTitle:a1[5] message:a1[6] image:v6];
  [(BSUINoticeViewController *)v5 show:1 options:a1[7]];
}

void sub_3807C(void *a1)
{
  v2 = [[BSUINoticeViewController alloc] initWithTitle:a1[4] message:a1[5] imageURLString:a1[6]];
  [(BSUINoticeViewController *)v2 show:1 options:a1[7]];
}

void sub_389D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_389F8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = [*(a1 + 32) itemStateWithIdentifier:a2];
  v6 = [v8 library] != &dword_4 && objc_msgSend(v8, "library") != &dword_0 + 2 && objc_msgSend(v8, "library") != &dword_4 + 1;
  v7 = [v8 isSample];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | v6 & (v7 ^ 1)) & 1;
  *a4 = v6 & (v7 ^ 1);
}

void sub_38CD0(uint64_t a1)
{
  if ([*(a1 + 32) count] == &dword_0 + 1)
  {
    v2 = [*(a1 + 32) lastObject];
    v3 = [v2 integerValue];

    v4 = *(a1 + 56);
    v5 = BSUIBundle();
    v6 = v5;
    if (v3 == &dword_4 + 2)
    {
      if (v4)
      {
        v7 = @"The audiobook was removed from %@.";
      }

      else
      {
        v7 = @"This audiobook was removed from %@.";
      }
    }

    else if (v3 == &dword_0 + 3)
    {
      if (v4)
      {
        v7 = @"The PDF was removed from %@.";
      }

      else
      {
        v7 = @"This PDF was removed from %@.";
      }
    }

    else if (v4)
    {
      v7 = @"The book was removed from %@.";
    }

    else
    {
      v7 = @"This book was removed from %@.";
    }

    v11 = [v5 localizedStringForKey:v7 value:&stru_3960F8 table:@"BookStoreUILocalizable"];
    v23 = [NSString localizedStringWithFormat:v11, *(a1 + 40)];
  }

  else
  {
    v6 = [NSSet setWithArray:*(a1 + 32)];
    if ([v6 count] == &dword_0 + 1)
    {
      v8 = [v6 anyObject];
      v9 = [v8 integerValue];

      v10 = *(a1 + 56);
      v11 = BSUIBundle();
      if (v9 == &dword_4 + 2)
      {
        if (v10)
        {
          v12 = @"The audiobooks were removed from %@.";
        }

        else
        {
          v12 = @"These audiobooks were removed from %@.";
        }
      }

      else if (v9 == &dword_0 + 3)
      {
        if (v10)
        {
          v12 = @"The PDFs were removed from %@.";
        }

        else
        {
          v12 = @"These PDFs were removed from %@.";
        }
      }

      else if (v10)
      {
        v12 = @"The books were removed from %@.";
      }

      else
      {
        v12 = @"These books were removed from %@.";
      }
    }

    else
    {
      v13 = *(a1 + 56);
      v11 = BSUIBundle();
      if (v13)
      {
        v12 = @"The items were removed from %@.";
      }

      else
      {
        v12 = @"These items were removed from %@.";
      }
    }

    v14 = [v11 localizedStringForKey:v12 value:&stru_3960F8 table:@"BookStoreUILocalizable"];
    v23 = [NSString localizedStringWithFormat:v14, *(a1 + 40)];
  }

  v15 = _UISolariumEnabled();
  v16 = [UIImage systemImageNamed:@"text.badge.minus"];
  if (v15)
  {
    +[BSUINoticeViewController imageConfig];
  }

  else
  {
    [UIImageSymbolConfiguration configurationWithPointSize:192.0];
  }
  v17 = ;
  v18 = [v16 imageWithConfiguration:v17];

  v19 = [BSUINoticeViewController alloc];
  v20 = BSUIBundle();
  v21 = [v20 localizedStringForKey:@"Removed" value:&stru_3960F8 table:@"BookStoreUILocalizable"];
  v22 = [(BSUINoticeViewController *)v19 initWithTitle:v21 message:v23 image:v18];

  [(BSUINoticeViewController *)v22 show:1 options:*(a1 + 48)];
}

void sub_39188(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = @"hand.thumbsup";
  }

  else
  {
    v2 = @"hand.thumbsdown";
  }

  v3 = v2;
  v4 = _UISolariumEnabled();
  v5 = [UIImage systemImageNamed:v3];

  if (v4)
  {
    +[BSUINoticeViewController imageConfig];
  }

  else
  {
    [UIImageSymbolConfiguration configurationWithPointSize:31.0];
  }
  v6 = ;
  v8 = [v5 imageWithConfiguration:v6];

  v7 = [[BSUINoticeViewController alloc] initWithTitle:*(a1 + 32) message:*(a1 + 40) image:v8];
  [(BSUINoticeViewController *)v7 show:1 options:*(a1 + 48)];
}

void sub_39344(uint64_t a1)
{
  v2 = BSUIBundle();
  v13 = [v2 localizedStringForKey:@"Renamed Collection" value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  v3 = BSUIBundle();
  v4 = [v3 localizedStringForKey:@"Your \\U201CBooks\\U201D collection was renamed \\U201C%@\\U201D and added to your library." value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = &stru_3960F8;
  }

  v6 = [NSString stringWithFormat:v4, v5];
  v7 = BSUIBundle();
  v8 = [v7 localizedStringForKey:@"GOT IT" value:&stru_3960F8 table:@"BookStoreUILocalizable"];

  LODWORD(v7) = _UISolariumEnabled();
  v9 = [UIImage systemImageNamed:@"text.justifyleft"];
  if (v7)
  {
    +[BSUINoticeViewController imageConfig];
  }

  else
  {
    [UIImageSymbolConfiguration configurationWithPointSize:262.0];
  }
  v10 = ;
  v11 = [v9 imageWithConfiguration:v10];

  v12 = [[BSUINoticeViewController alloc] initWithTitle:v13 message:v6 image:v11 confirmString:v8];
  [(BSUINoticeViewController *)v12 setIconImageAlwaysTemplate:0];
  [(BSUINoticeViewController *)v12 show:1 options:*(a1 + 40)];
}

void sub_39664(void *a1)
{
  v2 = BSUIBundle();
  v3 = [UIImageSymbolConfiguration configurationWithPointSize:262.0];
  v5 = [UIImage imageNamed:@"books.slash" inBundle:v2 withConfiguration:v3];

  v4 = [[BSUINoticeViewController alloc] initWithTitle:a1[4] message:a1[5] image:v5];
  [(BSUINoticeViewController *)v4 show:1 options:a1[6]];
}

void sub_3A0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3A0C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3A0E0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = TUIDynamicCast();

  v4 = v5;
  if (v5)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    v4 = v5;
  }
}

void sub_3B864(id a1)
{
  qword_3CA810 = [[BSUIStoreServices alloc] initWithDelegate:0];

  _objc_release_x1();
}

void sub_3BF3C(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_3C0DC;
    v14[3] = &unk_388398;
    v11 = *(a1 + 32);
    v2 = *(&v11 + 1);
    v17 = *(a1 + 64);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    *&v5 = v3;
    *(&v5 + 1) = v4;
    v15 = v11;
    v16 = v5;
    v6 = objc_retainBlock(v14);
    if (v6)
    {
      if (+[NSThread isMainThread])
      {
        (v6[2])(v6);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_3C1CC;
        block[3] = &unk_386C58;
        v13 = v6;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);

    [JSAApplication openProductPagesWithIds:v7 contentTypes:v8 focusedIndex:v9 options:v10];
  }
}

void sub_3C0DC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v6 = [v2 analyticsTrackerForStoreServices:*(a1 + 32)];

  v3 = [BALinkData alloc];
  v4 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 64)];
  v5 = [v3 initWithPreviousSectionID:&stru_3960F8 previousSectionName:&stru_3960F8 previousContentID:v4 linkActionType:2 previousSeriesID:0 previousGenreID:0 previousCollectionID:0 previousAuthorID:0 previousFlowcaseID:0 previousBrickID:0];

  [v6 pushLinkData:v5 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookStoreUI/BookStoreUI/Services/BSUIStoreServices.m" line:134];
  [JSAApplication openProductPagesWithIds:*(a1 + 40) contentTypes:*(a1 + 48) focusedIndex:*(a1 + 64) options:*(a1 + 56)];
}

void sub_3C33C(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ManagePurchases"];
  if ([v3 isObject])
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_3C4F8;
    v15 = &unk_3883E8;
    v16 = *(a1 + 40);
    v4 = objc_retainBlock(&v12);
    if (*(a1 + 48))
    {
      v5 = @"hidePurchased";
    }

    else
    {
      v5 = @"unhidePurchased";
    }

    v6 = v5;
    v7 = [JSABridge sharedInstance:v12];
    v17[0] = *(a1 + 32);
    v8 = objc_retainBlock(v4);
    v17[1] = v8;
    v9 = [NSArray arrayWithObjects:v17 count:2];
    [v7 enqueueValueInvocation:v3 method:v6 arguments:v9 file:@"BSUIStoreServices.m" line:164];
  }

  else
  {
    v10 = objc_retainBlock(*(a1 + 40));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

void sub_3C4F8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v3[2](v3, [v4 toBool]);
  }
}

void sub_3CD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3CDC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3CDDC(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = BSUIStoreServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) allObjects];
    v7 = [v6 componentsJoinedByString:{@", "}];
    v8 = [*(*(*(a1 + 48) + 8) + 40) allObjects];
    v9 = [v8 componentsJoinedByString:{@", "}];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BSUIStoreServices Successfully hid jalisco on server expected:(%@) result:(%@)", &v10, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_3CF30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BSUIStoreServicesLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_2BDA1C();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BSUIStoreServices successfully hid audiobooks.", v10, 2u);
    }

    v6 = [*(a1 + 32) allKeys];
    v7 = [NSSet setWithArray:v6];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v5 = +[MPCloudController sharedCloudController];
    [v5 updateJaliscoMediaLibraryWithReason:1 completionHandler:&stru_388478];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_3D040(id a1, BOOL a2)
{
  v2 = a2;
  v3 = BSUIStoreServicesLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BSUIStoreServices updated jalisc media library after hiding audiobooks.", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_2BDA90();
  }
}

void sub_3D0CC(uint64_t a1)
{
  v2 = *(*(a1 + 72) + 8);
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + 40);
    *(v2 + 40) = v4;
  }

  else
  {
    v6 = +[NSSet set];
    v7 = *(*(a1 + 72) + 8);
    v5 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v8 = *(*(a1 + 80) + 8);
  v9 = *(v8 + 40);
  if (v9)
  {
    v10 = v9;
    v11 = *(v8 + 40);
    *(v8 + 40) = v10;
  }

  else
  {
    v12 = +[NSSet set];
    v13 = *(*(a1 + 80) + 8);
    v11 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_3CDC4;
  v40 = sub_3CDD4;
  v41 = [*(*(*(a1 + 72) + 8) + 40) setByAddingObjectsFromSet:*(*(*(a1 + 80) + 8) + 40)];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3D444;
  block[3] = &unk_3884C8;
  v35 = &v36;
  v26 = *(a1 + 32);
  v14 = *(&v26 + 1);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  v32 = v26;
  v33 = v17;
  v34 = *(a1 + 64);
  dispatch_async(&_dispatch_main_q, block);
  v18 = +[AEAssetEngine libraryMgr];
  v19 = BSUIStoreServicesLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v37[5] allObjects];
    v21 = [v20 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    v44 = v21;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "BSUIStoreServices libraryManager didHidePurchasedAssetID:%@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = v37[5];
  v23 = [v22 countByEnumeratingWithState:&v27 objects:v42 count:16];
  if (v23)
  {
    v24 = *v28;
    do
    {
      v25 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [v18 didHidePurchasedAssetID:{*(*(&v27 + 1) + 8 * v25), v26, v27}];
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v22 countByEnumeratingWithState:&v27 objects:v42 count:16];
    }

    while (v23);
  }

  _Block_object_dispose(&v36, 8);
}

void sub_3D55C(uint64_t a1)
{
  v2 = BSUIStoreServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Books/BSUIPurchaseHiddenChange purchasedHiddenDidChange params=%@.", buf, 0xCu);
  }

  objc_opt_class();
  v4 = [*(a1 + 32) objectForKey:@"hidden"];
  v5 = BUDynamicCast();

  objc_opt_class();
  v6 = [*(a1 + 32) objectForKey:@"storeID"];
  v7 = BUDynamicCast();

  v8 = *(a1 + 40);
  v9 = [v5 BOOLValue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3D718;
  v10[3] = &unk_388288;
  v11 = *(a1 + 48);
  [v8 purchasedDidHide:v9 withStoreID:v7 withCompletion:v10];
}

void sub_3D718(uint64_t a1, uint64_t a2)
{
  v4 = +[JSABridge sharedInstance];
  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithBool:a2];
  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v4 enqueueValueCall:v5 arguments:v7 file:@"BSUIStoreServices.m" line:297];
}

void sub_3D9B4(id a1, BOOL a2)
{
  v2 = a2;
  v3 = BSUIStoreServicesLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BSUIStoreServices Successfully updated jalisco media library", v5, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_2BDAD0();
  }
}

void sub_3DA40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 48) == 1)
    {
      v4 = +[AEAssetEngine libraryMgr];
      [v4 didHidePurchasedAssetID:*(a1 + 32)];
    }

    v5 = BSUIStoreServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v10 = 138412546;
      v11 = v6;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BSUIStoreServices Successfully updated jalisco daap client after updating item %@ to hidden:%{BOOL}d", &v10, 0x12u);
    }
  }

  else
  {
    v5 = BSUIStoreServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_2BDB10();
    }
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, a2);
  }
}

void sub_3DE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3DE58(uint64_t a1)
{
  v2 = [*(a1 + 32) _optionsForTransaction:*(a1 + 40)];
  [JSAApplication openWriteReviewPageWithURL:*(a1 + 48) options:v2];
}

id sub_3DEBC(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_3DEF0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v4 = objc_retainBlock(*(*(*(a1 + 40) + 8) + 40));
  if (v4)
  {
    v4[2](v4, 1);
  }

  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_3E384(uint64_t a1, int a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) |= 1uLL;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_3E3A4(uint64_t a1, int a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) |= 2uLL;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_3E59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3E5BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 productURL];
  (*(v3 + 16))(v3, v4);

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_3FDE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = a2;
  [v5 setForegroundColor:{objc_msgSend(v3, "CGColor")}];
}

void sub_3FE48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = a2;
  [v5 setForegroundColor:{objc_msgSend(v3, "CGColor")}];
}

void sub_40818(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Unwind_Resume(a1);
}

void sub_4088C(uint64_t a1, void *a2, double a3)
{
  v22 = a2;
  v5 = a3 * 0.1;
  v6 = *(*(*(a1 + 80) + 8) + 24);
  [*(a1 + 32) height];
  v8 = v7;
  [*(a1 + 32) height];
  v10 = v9;
  v11 = [*(a1 + 40) count];
  if (v11 >= [*(a1 + 48) count])
  {
    v12 = 0;
  }

  else
  {
    v12 = [*(a1 + 48) objectAtIndexedSubscript:v11];
  }

  v13 = a3 + v5 * 2.0;
  [v12 frame];
  v15 = v14;
  v17 = v16;
  v18 = [v22 isEqualToString:*(a1 + 56)];
  if ([*(a1 + 48) count] == *(a1 + 96) && v18 & 1 | ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0))
  {
    v19 = [v12 string];
    if ([v19 isEqualToString:v22] && vabdd_f64(v15, v13) < 0.00999999978)
    {

      if (vabdd_f64(v17, v10) < 0.00999999978)
      {
        [*(a1 + 40) addObject:v12];
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v20 = -v8;
  if (v12)
  {
    [*(a1 + 64) addObject:v12];
  }

  v21 = [*(a1 + 32) newTextLayerAtFrame:v22 character:{v6 - v5, v20, v13, v10}];
  [*(a1 + 72) addObject:v21];
  [*(a1 + 40) addObject:v21];
  *(*(*(a1 + 88) + 8) + 24) = 1;

LABEL_14:
  *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24) + a3;
}

void sub_40A84(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(a1 + 40) + *(a1 + 48) * a3;
  v5 = a2;
  v6 = [CABasicAnimation animationWithKeyPath:@"position.y"];
  [*(a1 + 32) height];
  v8 = [NSNumber numberWithDouble:-v7];
  [v6 setFromValue:v8];

  [*(a1 + 32) height];
  v10 = [NSNumber numberWithDouble:-v9];
  [v6 setToValue:v10];

  [v6 setDuration:v4];
  v11 = [CASpringAnimation animationWithKeyPath:@"position.y"];
  [v11 setMass:1.0];
  [v11 setStiffness:250.0];
  [v11 setDamping:24.0];
  [v11 setInitialVelocity:1.0];
  [v11 setDuration:0.8];
  [*(a1 + 32) height];
  v13 = [NSNumber numberWithDouble:-v12];
  [v11 setFromValue:v13];

  [v11 setToValue:&off_39B560];
  [v11 setBeginTime:v4];
  v14 = +[CAAnimationGroup animation];
  v17[0] = v6;
  v17[1] = v11;
  v15 = [NSArray arrayWithObjects:v17 count:2];
  [v14 setAnimations:v15];

  [v11 duration];
  [v14 setDuration:v4 + v16];
  [v5 addAnimation:v14 forKey:@"moveIn"];
  [CATransaction setDisableActions:1];
  [v5 frame];
  [v5 setFrame:?];

  [CATransaction setDisableActions:0];
}

void sub_40CE8(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(a1 + 40) * a3;
  v5 = a2;
  v6 = [CABasicAnimation animationWithKeyPath:@"position.y"];
  [v6 setFromValue:&off_39B560];
  [v6 setToValue:&off_39B560];
  [v6 setDuration:v4];
  v7 = [CASpringAnimation animationWithKeyPath:@"position.y"];
  [v7 setMass:1.0];
  [v7 setStiffness:250.0];
  [v7 setDamping:24.0];
  [v7 setInitialVelocity:1.0];
  [v7 setDuration:0.8];
  [v7 setFromValue:&off_39B560];
  [*(a1 + 32) height];
  v8 = [NSNumber numberWithDouble:?];
  [v7 setToValue:v8];

  [v7 setBeginTime:v4];
  v9 = +[CAAnimationGroup animation];
  v19[0] = v6;
  v19[1] = v7;
  v10 = [NSArray arrayWithObjects:v19 count:2];
  [v9 setAnimations:v10];

  [v7 duration];
  [v9 setDuration:v4 + v11];
  [v5 addAnimation:v9 forKey:@"moveOut"];
  [CATransaction setDisableActions:1];
  [v5 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*(a1 + 32) height];
  [v5 setFrame:{v13, v18, v15, v17}];

  [CATransaction setDisableActions:0];
}

void sub_4152C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 isMemberOfClass:objc_opt_class()];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v5];
}

void sub_415A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 backgroundLayer];
  [v4 addSublayer:v3];
}

void sub_41608(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 backgroundLayer];
  [v4 addSublayer:v3];
}

void sub_434C8(uint64_t a1)
{
  v1 = [*(a1 + 32) dynamicTimeLayer];
  v2 = CACurrentMediaTime();
  [v1 setOpacity:0.0];
  CATransform3DMakeScale(&v16, 0.5, 0.5, 1.0);
  v15 = v16;
  [v1 setTransform:&v15];
  v3 = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
  [v3 setFromValue:&off_39B570];
  [v3 setToValue:&off_39B580];
  [v3 setDuration:0.45];
  [v3 setBeginTime:v2];
  LODWORD(v4) = 1045220557;
  LODWORD(v5) = 1.0;
  LODWORD(v6) = 1051260355;
  v7 = [CAMediaTimingFunction functionWithControlPoints:v6];
  [v3 setTimingFunction:v7];

  v8 = [CASpringAnimation animationWithKeyPath:@"opacity"];
  [v8 setFromValue:&off_39B570];
  [v8 setToValue:&off_39B560];
  [v8 setDuration:0.23];
  [v8 setBeginTime:v2 + 0.22];
  LODWORD(v9) = 1059816735;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1051260355;
  v12 = [CAMediaTimingFunction functionWithControlPoints:v11];
  [v8 setTimingFunction:v12];

  v13 = objc_alloc_init(CAAnimationGroup);
  v17[0] = v3;
  v17[1] = v8;
  v14 = [NSArray arrayWithObjects:v17 count:2];
  [v13 setAnimations:v14];

  [v13 setDuration:0.45];
  [v1 addAnimation:v13 forKey:@"titleFade"];
}

void sub_437DC(uint64_t a1)
{
  v1 = [*(a1 + 32) micaPlayer];
  [v1 play];
}

id sub_43A1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 progressArcLayer];
  [v2 _animateArcLayer:v3];

  v4 = [*(a1 + 32) _goalCompleted];
  v5 = *(a1 + 32);
  if (v4)
  {
    result = [v5 goalCompletedAnimationRequested];
    if ((result & 1) == 0)
    {
      [*(a1 + 32) setGoalCompletedAnimationRequested:1];
      [*(a1 + 32) _animateTimeTextFade];
      v7 = *(a1 + 32);

      return [v7 _startMicaPlayer];
    }
  }

  else
  {
    [v5 setGoalCompletedAnimationRequested:0];
    v8 = [*(a1 + 32) dynamicTimeLayer];
    LODWORD(v9) = 1.0;
    [v8 setOpacity:v9];

    v10 = [*(a1 + 32) dynamicTimeLayer];
    v11 = *&CATransform3DIdentity.m33;
    v15[4] = *&CATransform3DIdentity.m31;
    v15[5] = v11;
    v12 = *&CATransform3DIdentity.m43;
    v15[6] = *&CATransform3DIdentity.m41;
    v15[7] = v12;
    v13 = *&CATransform3DIdentity.m13;
    v15[0] = *&CATransform3DIdentity.m11;
    v15[1] = v13;
    v14 = *&CATransform3DIdentity.m23;
    v15[2] = *&CATransform3DIdentity.m21;
    v15[3] = v14;
    [v10 setTransform:v15];

    return [*(a1 + 32) _updateTimeTextAnimate:1];
  }

  return result;
}

id BSUIFixRelativeURLInEntryDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"template"];
  if (v2)
  {
    v3 = [NSURL URLWithString:@"jetpack:///"];
    v4 = [NSURL URLWithString:v2 relativeToURL:v3];
    v5 = [v4 absoluteURL];

    v6 = [v1 mutableCopy];
    [v6 setObject:v5 forKeyedSubscript:@"template"];
    v7 = [v6 copy];
  }

  else
  {
    v7 = v1;
  }

  return v7;
}

void sub_448BC(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"useSwiftUI"];
  v3 = BUDynamicCast();
  v4 = [v3 BOOLValue];

  objc_opt_class();
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"parentTracker"];
  v6 = BUDynamicCast();

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v12 = [objc_alloc(*(a1 + 48)) initWithOptions:*(a1 + 32)];
    v8 = +[JSABridge sharedInstance];
    v9 = *(a1 + 40);
    v27 = v12;
    v10 = [NSArray arrayWithObjects:&v27 count:1];
    [(BSUINavigationContext *)v8 enqueueValueCall:v9 arguments:v10 file:@"BSUIFeedViewController.m" line:298];
  }

  else
  {
    objc_opt_class();
    v11 = [*(a1 + 32) objectForKeyedSubscript:@"navigationType"];
    v12 = BUDynamicCast();

    objc_opt_class();
    v13 = [*(a1 + 32) objectForKeyedSubscript:@"isInCard"];
    v14 = BUDynamicCast();
    v15 = [v14 BOOLValue];

    objc_opt_class();
    v16 = [*(a1 + 32) objectForKeyedSubscript:@"shouldReportFigaro"];
    v17 = BUDynamicCast();
    v18 = [v17 BOOLValue];

    objc_opt_class();
    v19 = [*(a1 + 32) objectForKeyedSubscript:@"isInModal"];
    v20 = BUDynamicCast();
    v21 = v20;
    if (v20)
    {
      v22 = [v20 BOOLValue];
    }

    else
    {
      v23 = [NSNumber numberWithBool:v15];
      v22 = [v23 BOOLValue];
    }

    v8 = [[BSUINavigationContext alloc] initWithIsInModal:v22];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_44C14;
    v25[3] = &unk_3887D0;
    v24 = *(a1 + 32);
    v26 = *(a1 + 40);
    [BSUIFeedViewController createSeriesViewControllerFromOptions:v24 withParentTracker:v6 navigationTypeValue:v12 navigationContext:v8 shouldReportFigaro:v18 completion:v25];
    v10 = v26;
  }
}

void sub_44C14(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = +[JSABridge sharedInstance];
    v5 = *(a1 + 32);
    v8 = v3;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
    [v4 enqueueValueCall:v5 arguments:v6 file:@"BSUIFeedViewController.m" line:288];
  }

  else
  {
    v6 = 0;
    v7 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2BDE10(v7);
    }

    v4 = +[JSABridge sharedInstance];
    [v4 enqueueValueCall:*(a1 + 32) arguments:&__NSArray0__struct file:@"BSUIFeedViewController.m" line:291];
  }
}

void sub_44EAC(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 48)) initWithOptions:*(a1 + 32)];
  v3 = [[BSUIFeedNavigationController alloc] initWithOptions:*(a1 + 32)];
  v9 = v2;
  v4 = [NSArray arrayWithObjects:&v9 count:1];
  [(BSUINavigationController *)v3 setViewControllers:v4 animated:0];

  v5 = +[JSABridge sharedInstance];
  v6 = *(a1 + 40);
  v8 = v3;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v5 enqueueValueCall:v6 arguments:v7 file:@"BSUIFeedViewController.m" line:310];
}

void sub_452B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_452F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsEnvironmentUpdate];
}

id sub_45C7C(uint64_t a1)
{
  sub_2BDC90(*(a1 + 32), 2);
  v2 = [*(a1 + 32) scrollView];
  [v2 setContentInsetAdjustmentBehavior:2];

  *(*(a1 + 32) + 32) = 2;
  v3 = *(a1 + 32);

  return [v3 _manuallyAdjustBottomContentInset];
}

void sub_469FC(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationItem];
  v3 = [v2 standardAppearance];
  v4 = [v3 copy];
  v5 = v4;
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v6 = [*(a1 + 32) navigationController];
    v7 = [v6 navigationBar];
    v8 = [v7 standardAppearance];
    v12 = [v8 copy];
  }

  [v12 _setTitleControlHidden:*(a1 + 40)];
  v9 = [*(a1 + 32) navigationItem];
  [v9 setStandardAppearance:v12];

  v10 = [*(a1 + 32) navigationController];
  v11 = [v10 navigationBar];
  [v11 layoutIfNeeded];
}

void sub_47AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_47AE4(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 112) == 0;
  *(*(result + 32) + 112) = 1;
  return result;
}

void sub_47B14(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _feedContentDidLoad:v3 signpost:*(a1 + 40)];
}

void sub_48118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_4813C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_48170(uint64_t a1)
{
  *(*(a1 + 32) + 112) = 2;
  v2 = objc_retainBlock(*(*(a1 + 32) + 120));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  *(v5 + 120) = 0;
}

void sub_481E8(void *a1)
{
  v2 = objc_retainBlock(*(*(a1[5] + 8) + 40));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, a1[4]);
  }

  v4 = BCSignpostFeedViewController();
  v5 = v4;
  v6 = a1[6];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v6, "Load Entries", "", v7, 2u);
  }
}

void sub_48414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4861C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_48634(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_retainBlock(*(*(a1 + 32) + 120));

  return _objc_release_x1();
}

void sub_48C5C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = +[JSABridge sharedInstance];
  [v5 debugAssertRunningOnJSAThread];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v6 = BCSignpostFeedViewController();
    v7 = v6;
    v8 = *(*(*(a1 + 48) + 8) + 24);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_END, v8, "Request Entry Data", "", buf, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  ++*(*(*(a1 + 56) + 8) + 24);
  v9 = BCSignpostFeedViewController();
  v10 = os_signpost_id_generate(v9);

  v11 = BCSignpostFeedViewController();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = [*(a1 + 32) uid];
    v14 = [*(a1 + 32) templateURL];
    v15 = [v14 lastPathComponent];
    v16 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 138543874;
    v35 = v13;
    v36 = 2114;
    *v37 = v15;
    *&v37[8] = 1024;
    *&v37[10] = v16;
    _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Entry RenderBlock", "Entry: %{public}@, Template: %{public}@, ReloadCount: %d", buf, 0x1Cu);
  }

  v17 = BSUIFixRelativeURLInEntryDictionary(v3);

  if ([WeakRetained deferUIUpdateUntilInitialContentReady] && *(*(*(a1 + 56) + 8) + 24) >= 1)
  {
    v18 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(*(a1 + 56) + 8) + 24);
      v20 = *(a1 + 32);
      *buf = 138412802;
      v35 = WeakRetained;
      v36 = 1024;
      *v37 = v19;
      *&v37[4] = 2112;
      *&v37[6] = v20;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%@: deferReload: Deferring #%d update entry %@ for a main queue cycle", buf, 0x1Cu);
    }

    v21 = [WeakRetained deferredReloadsQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_490D0;
    v28[3] = &unk_3888E8;
    v22 = *(a1 + 56);
    v28[4] = WeakRetained;
    v32 = v22;
    v29 = *(a1 + 32);
    v31 = *(a1 + 40);
    v33 = v17 != 0;
    v30 = v17;
    dispatch_async(v21, v28);
  }

  else
  {
    v23 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(*(*(a1 + 56) + 8) + 24);
      v25 = *(a1 + 32);
      *buf = 138412802;
      v35 = WeakRetained;
      v36 = 1024;
      *v37 = v24;
      *&v37[4] = 2112;
      *&v37[6] = v25;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%@: deferReload: Executing #%d update entry %@", buf, 0x1Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v26 = BCSignpostFeedViewController();
  v27 = v26;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v27, OS_SIGNPOST_INTERVAL_END, v10, "Entry RenderBlock", "", buf, 2u);
  }
}

uint64_t sub_490D0(void *a1)
{
  v2 = BSUIFeedViewControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1[8] + 8) + 24);
    v4 = a1[4];
    v5 = a1[5];
    v7 = 138412802;
    v8 = v4;
    v9 = 1024;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%@: deferReload: Executing #%d deferred update entry %@", &v7, 0x1Cu);
  }

  return (*(a1[7] + 16))();
}

void sub_498A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_498C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained ba_analyticsTracker];

  if (v3)
  {
    v4 = BCCardModelLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_2BDF2C(v4);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (*(a1 + 32) && ([*(*(a1 + 40) + 96) isEqualToString:?] & 1) == 0)
  {
    v5 = [*(a1 + 32) copy];
    v6 = *(a1 + 40);
    v7 = *(v6 + 96);
    *(v6 + 96) = v5;

    v8 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(*(a1 + 40) + 96);
      v10 = 138543618;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = v9;
      _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "Setting up %{public}@'s tracker to be %{public}@", &v10, 0x16u);
    }

    v4 = [WeakRetained ba_setupNewAnalyticsTrackerWithName:*(*(a1 + 40) + 96)];
    [WeakRetained _setEffectiveAnalyticsTracker:v4];
    goto LABEL_4;
  }

LABEL_5:
}

void sub_49BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_49BCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_49D3C;
  v22 = sub_49D4C;
  v7 = [BSUIGoalsSharableImageRenderer alloc];
  v8 = [*(a1 + 32) traitCollection];
  v23 = [(BSUIGoalsSharableImageRenderer *)v7 initWithOptions:v5 completion:v6 traitCollection:v8];

  v9 = v19[5];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_49D54;
  v13[3] = &unk_388938;
  v10 = *(a1 + 40);
  v16 = &v18;
  v17 = v10;
  v11 = v5;
  v12 = *(a1 + 32);
  v14 = v11;
  v15 = v12;
  [v9 renderSharableImage:v13];

  _Block_object_dispose(&v18, 8);
}

void sub_49D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_49D3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_49D54(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
  v29 = a2;

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  objc_opt_class();
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"booksFinishedInYear"];
  v8 = BUDynamicCast();
  v28 = [v8 intValue];

  objc_opt_class();
  v9 = [*(a1 + 32) objectForKeyedSubscript:@"title"];
  v27 = BUDynamicCast();

  objc_opt_class();
  v10 = [*(a1 + 32) objectForKeyedSubscript:@"sharingUrls"];
  v11 = BUDynamicCast();

  objc_opt_class();
  v12 = [*(a1 + 32) objectForKeyedSubscript:@"achievementSheetKind"];
  v13 = BUDynamicCast();
  v26 = [v13 intValue];

  objc_opt_class();
  v14 = [*(a1 + 32) objectForKeyedSubscript:@"sourceView"];
  v15 = BUDynamicCast();

  objc_opt_class();
  v16 = [*(a1 + 32) objectForKeyedSubscript:@"sourceBarButtonItem"];
  v17 = BUDynamicCast();

  objc_opt_class();
  v18 = [*(a1 + 32) objectForKeyedSubscript:@"refId"];
  v19 = BUDynamicCast();

  objc_opt_class();
  v20 = [*(a1 + 32) objectForKeyedSubscript:@"refInstance"];
  v21 = BUDynamicCast();

  v22 = [TUIRenderReferenceQuery queryWithUUID:0 uid:0 refId:v19 refInstance:v21];
  v23 = [TUIRenderReferenceOverride overrideWithQuery:v22 forceVisibleOnHover:1];
  [*(a1 + 40) addRenderOverride:v23];
  v24 = *(a1 + 40);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_4A0DC;
  v30[3] = &unk_386D98;
  v30[4] = v24;
  v31 = v23;
  v25 = v23;
  [BSUIGoalsShareSheet presentShareSheetFromViewController:v24 sourceView:v15 sourceBarButtonItem:v17 image:v29 kind:v26 year:v28 title:v27 sharingUrls:v11 completion:v30];
}

void sub_4A818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4A830(uint64_t a1, void *a2, _BYTE *a3)
{
  v15 = a2;
  v6 = [v15 query];
  v7 = [*(a1 + 32) UUID];
  v8 = [*(a1 + 32) uid];
  if ([v6 matchesUUID:v7 uid:v8])
  {
    v14 = a3;
    v9 = [v15 query];
    v10 = [*(a1 + 32) refId];
    v11 = [*(a1 + 32) refInstance];
    v12 = [*(a1 + 32) identifier];
    v13 = [v9 matchesRefId:v10 refInstance:v11 identifier:v12];

    if (v13)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *v14 = 1;
    }
  }

  else
  {
  }
}

void sub_4B280(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  [v2 enqueueValueCall:*(a1 + 32) arguments:&off_39B600 file:@"BSUIFeedViewController.m" line:1847];
}

void sub_4B2EC(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  [v2 enqueueValueCall:*(a1 + 32) arguments:&off_39B618 file:@"BSUIFeedViewController.m" line:1852];
}

void sub_4B5EC(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  v3 = *(a1 + 32);
  v4 = [NSNumber numberWithBool:*(a1 + 40)];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v2 enqueueValueCall:v3 arguments:v5 file:@"BSUIFeedViewController.m" line:1894];
}

void sub_4B764(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  [v2 enqueueValueCall:*(a1 + 32) arguments:0 file:@"BSUIFeedViewController.m" line:1903];
}

void sub_4B9F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 impressions];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v3 impressions];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[BSUIImpression alloc] initWithImpression:*(*(&v14 + 1) + 8 * v10)];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = objc_retainBlock(*(a1 + 32));
  if (v12)
  {
    v13 = [v5 copy];
    v12[2](v12, v13);
  }
}

void sub_4BC3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 impressions];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v3 impressions];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[BSUIImpression alloc] initWithImpression:*(*(&v14 + 1) + 8 * v10)];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = objc_retainBlock(*(a1 + 32));
  if (v12)
  {
    v13 = [v5 copy];
    v12[2](v12, v13);
  }
}

void sub_4BEB0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 viewWillAppearDate];
  [v3 timeIntervalSince1970];
  v54 = v4;

  v5 = [v2 viewWillAppearDate];
  [v5 timeIntervalSince1970];
  v52 = v6;

  v7 = [v2 initialContentReadyDate];
  [v7 timeIntervalSince1970];
  v50 = v8;

  v9 = [v2 initialResourcesRenderedDate];
  [v9 timeIntervalSince1970];
  v11 = v10;

  v12 = [v2 initialLayoutStartDate];
  [v12 timeIntervalSince1970];
  v14 = v13;

  v15 = [v2 allContentReadyDate];
  [v15 timeIntervalSince1970];
  v17 = v16;

  v18 = [v2 resourcesStartLoadingDate];
  [v18 timeIntervalSince1970];
  v47 = v19;

  v20 = [v2 initialResourcesRenderedDate];
  [v20 timeIntervalSince1970];
  v46 = v21;

  v22 = [v2 resourcesLoadedDate];
  [v22 timeIntervalSince1970];
  v24 = v23;

  [v2 elapsedTimeForPhase:1];
  v26 = v25;
  [v2 elapsedTimeForPhase:2];
  v28 = v27;
  [v2 elapsedTimeForPhase:3];
  v30 = v29;
  [v2 elapsedTimeForPhase:4];
  v32 = v31;

  v57[0] = @"interstitialPageAppearTime";
  v55 = [NSNumber numberWithDouble:v54];
  v58[0] = v55;
  v57[1] = @"pageAppearTime";
  v53 = [NSNumber numberWithDouble:v52];
  v58[1] = v53;
  v57[2] = @"pageUserInteractiveTime";
  v51 = [NSNumber numberWithDouble:v50];
  v58[2] = v51;
  v57[3] = @"pageEndTime";
  v49 = [NSNumber numberWithDouble:v11];
  v58[3] = v49;
  v57[4] = @"modelConstructionStartTime";
  v48 = [NSNumber numberWithDouble:v14];
  v58[4] = v48;
  v57[5] = @"modelConstructionEndTime";
  v45 = [NSNumber numberWithDouble:v17];
  v58[5] = v45;
  v57[6] = @"modelRenderStartTime";
  v33 = [NSNumber numberWithDouble:v14];
  v58[6] = v33;
  v57[7] = @"modelRenderEndTime";
  v34 = [NSNumber numberWithDouble:v17];
  v58[7] = v34;
  v57[8] = @"resourceRequestStartTime";
  v35 = [NSNumber numberWithDouble:v47];
  v58[8] = v35;
  v57[9] = @"onScreenResourcesAppearEndTime";
  v36 = [NSNumber numberWithDouble:v46];
  v58[9] = v36;
  v57[10] = @"resourceRequestEndTime";
  v37 = [NSNumber numberWithDouble:v24];
  v58[10] = v37;
  v57[11] = @"TemplateUI:parsingInterval";
  v38 = [NSNumber numberWithDouble:v26];
  v58[11] = v38;
  v57[12] = @"TemplateUI:instantiateInterval";
  v39 = [NSNumber numberWithDouble:v28];
  v58[12] = v39;
  v57[13] = @"TemplateUI:layoutInterval";
  v40 = [NSNumber numberWithDouble:v30];
  v58[13] = v40;
  v57[14] = @"TemplateUI:renderInterval";
  v41 = [NSNumber numberWithDouble:v32];
  v58[14] = v41;
  v42 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:15];

  v43 = objc_retainBlock(*(a1 + 32));
  v44 = v43;
  if (v43)
  {
    (*(v43 + 2))(v43, v42);
  }
}

void sub_4CC48(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_2BDFEC(v2, v3);
    }
  }
}

void sub_4DCC0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) navigationItem];
  v3 = [v2 rightBarButtonItems];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7) setHidden:(*(a1 + 40) & 1) == 0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [*(a1 + 32) navigationController];
  v9 = [v8 navigationBar];
  [v9 layoutIfNeeded];
}

void sub_4EDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 56));
  objc_destroyWeak((v10 - 120));
  _Unwind_Resume(a1);
}

void sub_4EDF8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setUpdateEnvironmentOnViewLoad:0];
  v5 = [*(a1 + 32) presentingViewController];
  v6 = [v5 presentedViewController];
  v7 = [v6 modalPresentationStyle];

  v8 = [*(a1 + 32) traitCollection];
  if ((v7 - 1) <= 1)
  {
    v9 = [*(a1 + 32) bc_ancestorFullScreenPresentingViewController];
    v10 = v9;
    if (v9)
    {
      [v9 traitCollection];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_4F06C;
      v25 = v24[3] = &unk_388A68;
      v11 = v25;
      v12 = [v8 traitCollectionByModifyingTraits:v24];

      v8 = v12;
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_4F0DC;
    v22 = &unk_388A90;
    v23 = v13;
    v14 = [v8 traitCollectionByModifyingTraits:&v19];

    v8 = v14;
  }

  v15 = [[TUIEnvironment alloc] initWithTraitCollection:v8 viewController:*(a1 + 32) viewSize:*(a1 + 64) viewSafeAreaInsets:{*(a1 + 72), UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [WeakRetained _customizePresentationUsingViewController:*(a1 + 32) environment:v15];
  v16 = [v3 entries];
  v17 = *(a1 + 80);
  if (v17 >= [v16 count])
  {
    [v16 lastObject];
  }

  else
  {
    [v16 objectAtIndexedSubscript:*(a1 + 80) - 1];
  }
  v18 = ;
  [WeakRetained synchronouslyUpdateContent:v3 environment:v15 andWaitForEntry:v18 timeout:*(a1 + 48) completion:{1.0, v19, v20, v21, v22}];
}

void sub_4F06C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setHorizontalSizeClass:{objc_msgSend(v3, "horizontalSizeClass")}];
  [v4 setVerticalSizeClass:{objc_msgSend(*(a1 + 32), "verticalSizeClass")}];
}

uint64_t sub_4F0EC(uint64_t result)
{
  *(*(*(result + 48) + 8) + 24) = *(*(result + 32) + 112);
  if (*(*(*(result + 48) + 8) + 24) <= 1uLL)
  {
    *(*(result + 32) + 120) = objc_retainBlock(*(result + 40));

    return _objc_release_x1();
  }

  return result;
}

void sub_4F85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4F880(uint64_t a1, uint64_t a2, int a3)
{
  v6 = BCAugmentedExperienceSignpost();
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = @"NO";
    if (a2)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (a3)
    {
      v9 = @"YES";
    }

    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v9;
    _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_END, v8, "BSUIFeedVC.AugExp.preload", "Success: %@, Timeout: %@", &v13, 0x16u);
  }

  v11 = objc_retainBlock(*(a1 + 32));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, a2);
  }
}

void sub_4F9AC(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4FA5C;
  v4[3] = &unk_388B58;
  objc_copyWeak(v6, (a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[1] = *(a1 + 56);
  v4[4] = v2;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v4);

  objc_destroyWeak(v6);
}

void sub_4FA5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = WeakRetained;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%@: preloadAugmentedExperienceContent _prepareForOpen complete", buf, 0xCu);
  }

  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  v4 = BCAugmentedExperienceSignpost();
  v5 = v4;
  v6 = *(a1 + 56);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v6, "BSUIFeedVC.AugExp.prepareForOpen", "", buf, 2u);
  }

  v7 = [*(a1 + 32) jsFeedController];
  v8 = [v7 viewState];

  v9 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = WeakRetained;
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%@: preloadAugmentedExperienceContent finalized syncLoadContent (viewState: %ld)", buf, 0x16u);
  }

  if (v8 == &dword_0 + 1)
  {
    v10 = BCAugmentedExperienceSignpost();
    v11 = os_signpost_id_generate(v10);

    v12 = BCAugmentedExperienceSignpost();
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "BSUIFeedVC.AugExp.loadImage", "", buf, 2u);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_4FD10;
    v16[3] = &unk_388B30;
    v18 = v11;
    v16[4] = WeakRetained;
    v17 = *(a1 + 40);
    [WeakRetained notifyWhenVisibleImageResourcesAreLoadedWithTimeout:v16 completion:10.0];
  }

  else
  {
LABEL_14:
    v14 = objc_retainBlock(*(a1 + 40));
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0);
    }
  }
}

void sub_4FD10(uint64_t a1, uint64_t a2)
{
  v4 = BCAugmentedExperienceSignpost();
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v12 = 138412290;
    v13 = v7;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v6, "BSUIFeedVC.AugExp.loadImage", "Timeout: %@", &v12, 0xCu);
  }

  v8 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%@: preloadAugmentedExperienceContent load image complete", &v12, 0xCu);
  }

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, a2 ^ 1, a2);
  }
}

void sub_4FFD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_retainBlock(*(a1 + 32));
  if (v4)
  {
    if (+[NSThread isMainThread])
    {
      v4[2](v4, v3);
    }

    else
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_500B4;
      v5[3] = &unk_388B80;
      v7 = v4;
      v6 = v3;
      dispatch_async(&_dispatch_main_q, v5);
    }
  }
}

void sub_505A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (*(a1 + 40) == 2)
    {
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v3 = [v9 navigationBarTintColorWhenLayoutReady];

        if (v3)
        {
          v4 = [v9 navigationBarTintColorWhenLayoutReady];
          v5 = [v9 navigationController];
          v6 = [v5 navigationBar];
          [v6 setTintColor:v4];

          if (([v9 runningInExtension] & 1) == 0)
          {
            [v9 setNeedsStatusBarAppearanceUpdate];
          }
        }
      }

      v9[24] = 0;
      [v9 setNeedsUpdateContentUnavailableConfiguration];
      v7 = [v9 jsFeedController];
      v8 = [v7 metadata];
      [v9 _configureNavigationBarWithStyle:{objc_msgSend(v8, "navigationBarStyle")}];

      kdebug_trace();
    }

    else
    {
      WeakRetained[24] = 1;
      [WeakRetained setNeedsUpdateContentUnavailableConfiguration];
    }

    WeakRetained = v9;
  }
}

void sub_506FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained cardAuxiliaryNavigationBarManager];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_50798;
    v4[3] = &unk_3889B0;
    v4[4] = v2;
    [v3 viewControllerWhenAvailable:v4];
  }
}

void sub_50798(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) layoutController];
  if ([v3 layoutState] == &dword_0 + 2)
  {
    v4 = [*(a1 + 32) feedController];
    [v5 setIsContentReadyForRender:{objc_msgSend(v4, "viewState") == &dword_0 + 1}];
  }

  else
  {
    [v5 setIsContentReadyForRender:0];
  }
}

void sub_509BC(uint64_t a1)
{
  v2 = BSUIFeedViewControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%@: deferReload: Unblocking deferredReloadsQueue", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) deferredReloadsQueue];
  dispatch_activate(v4);
}

void sub_50A7C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 288);
  if (v2)
  {
    v3 = [v2 copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 288);
    *(v4 + 288) = 0;

    v6 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@: deferEngagementMessageUpdate: Starting to update deferred message identifiers: %@", &v8, 0x16u);
    }

    [*(a1 + 32) _updateEngagementMessagesToDisplay:v3];
  }
}

void sub_517DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_51808(id *a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_518E4;
  v4[3] = &unk_388BF8;
  v5 = a2;
  v3 = v5;
  objc_copyWeak(&v8, a1 + 6);
  v6 = a1[4];
  v7 = a1[5];
  dispatch_async(&_dispatch_main_q, v4);

  objc_destroyWeak(&v8);
}

void sub_518E4(id *a1)
{
  v2 = BSUIFeedViewControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    *buf = 138412290;
    v50 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "_updateEngagementMessagesToDisplay: results: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (![WeakRetained isInCard] || (objc_msgSend(WeakRetained, "cardStackViewController"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "messagesAlreadyDisplayed"), v6 = objc_claimAutoreleasedReturnValue(), v5, (v38 = v6) == 0))
  {
    v38 = objc_opt_new();
  }

  if (+[BCPPTConfig currentlyInTest])
  {
    v7 = [a1[4] allKeys];
    v8 = [NSSet setWithArray:v7];

    v38 = v8;
  }

  v9 = [a1[5] contentIdentifiers];
  v10 = [v9 copy];

  v37 = a1;
  if ([a1[6] count])
  {
    v11 = [v10 mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = +[NSMutableSet set];
    }

    v14 = v13;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = a1[6];
    v16 = [v15 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [[TUIHostingIdentifier alloc] initWithType:@"message" identifier:*(*(&v43 + 1) + 8 * i)];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v17);
    }

    v21 = [v14 copy];
    v10 = v21;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = v10;
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v23)
  {
    v25 = v23;
    v26 = *v40;
    *&v24 = 138412290;
    v35 = v24;
    v36 = *v40;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v39 + 1) + 8 * j);
        v29 = [v28 type];
        if ([v29 isEqualToString:@"message"])
        {
          v30 = [v28 identifier];
          v31 = [v38 containsObject:v30];

          if (v31)
          {
            goto LABEL_35;
          }

          v32 = v37[4];
          v33 = [v28 identifier];
          v29 = [v32 objectForKeyedSubscript:v33];

          if (v29 && ([v37[5] hasProviderForIdentifier:v28] & 1) == 0)
          {
            v34 = BSUIFeedViewControllerLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = v35;
              v50 = v28;
              _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "_updateEngagementMessagesToDisplay: adding provider for: %@", buf, 0xCu);
            }

            [WeakRetained _handleEngagementMessageRequest:v29 forIdentifier:v28];
          }

          v26 = v36;
        }

LABEL_35:
        [WeakRetained addEngagementObserver:v28];
      }

      v25 = [v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v25);
  }
}

void sub_51EF4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 handleEngagementRequest:v2 forIdentifier:v5];
}

void sub_52470(id *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_52540;
  v2[3] = &unk_387000;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  [UIView animateWithDuration:0 delay:v2 options:0 animations:0.3 completion:0.0];
}

void sub_52540(uint64_t a1)
{
  v2 = [*(a1 + 32) superview];

  if (v2)
  {
    v6 = *(a1 + 40);
    v3 = [NSArray arrayWithObjects:&v6 count:1];
    [NSLayoutConstraint deactivateConstraints:v3];

    v5 = *(a1 + 48);
    v4 = [NSArray arrayWithObjects:&v5 count:1];
    [NSLayoutConstraint activateConstraints:v4];

    [*(a1 + 32) layoutIfNeeded];
  }
}

id sub_5283C(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromParentViewController];
  v2 = *(a1 + 48);

  return [v2 setMessageViewControllerProvider:0];
}

void sub_52A28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_52A44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (![*(a1 + 32) isEqualToString:@"store_page_bottom_banner"])
  {
    v2 = [[TUIHostingIdentifier alloc] initWithType:@"message" identifier:*(a1 + 32)];
    if (*(a1 + 40))
    {
      goto LABEL_5;
    }

    v4 = [WeakRetained hostingController];
    v5 = [v4 hasProviderForIdentifier:v2];

    if (v5)
    {
      v6 = [WeakRetained hostingController];
      [v6 removeProviderForIdentifier:v2];
    }

    else if (*(a1 + 40))
    {
LABEL_5:
      v3 = [WeakRetained hostingController];
      if ([v3 hasProviderForIdentifier:v2])
      {
      }

      else
      {
        v7 = [WeakRetained hostingController];
        v8 = [v7 contentIdentifiers];
        v9 = [v8 containsObject:v2];

        if (v9)
        {
          [WeakRetained _handleEngagementMessageRequest:*(a1 + 40) forIdentifier:v2];
        }
      }
    }

    goto LABEL_14;
  }

  if (*(a1 + 40))
  {
    [WeakRetained _displayBottomBannerForRequest:?];
  }

  else
  {
    [WeakRetained _dismissBanner:1];
  }

LABEL_14:
}

void sub_52DAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_52DC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissBanner:1];
}

BSUIContextActionDataAssetModel *sub_53740(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"storeAsset"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (v5 = [BSUIContextActionDataAssetModel alloc], [v2 objectForKeyedSubscript:@"storeAsset"], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[BSUIContextActionDataAssetModel initWithMResourceRawData:](v5, "initWithMResourceRawData:", v6), v6, !v7))
  {
    v8 = [v2 objectForKeyedSubscript:@"adamId"];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if ((v9 & 1) == 0 || (v10 = [BSUIContextActionDataAssetModel alloc], [v2 objectForKeyedSubscript:@"adamId"], v11 = objc_claimAutoreleasedReturnValue(), v7 = -[BSUIContextActionDataAssetModel initWithAdamID:](v10, "initWithAdamID:", v11), v11, !v7))
    {
      v7 = [v2 objectForKeyedSubscript:@"libraryAsset"];

      if (v7)
      {
        v12 = [BSUIContextActionDataAssetModel alloc];
        v13 = [v2 objectForKeyedSubscript:@"libraryAsset"];
        v7 = [(BSUIContextActionDataAssetModel *)v12 initWithLibraryAsset:v13 productProfile:0];
      }
    }
  }

  return v7;
}

void sub_54758(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_5547C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = [a3 objectForKeyedSubscript:@"error"];
  v6 = [v5 BOOLValue];

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [NSError errorWithDomain:@"BSUIReportIssueNetworkManager" code:500 userInfo:v10];
      (v8)[2](v8, 0, v9);
    }
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 1, 0);
  }
}

void sub_5566C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"ReportIssueNetworkManager"];
  v5 = [v4 isObject];

  if (v5)
  {
    v6 = +[JSABridge sharedInstance];
    v7 = [v3 objectForKeyedSubscript:@"ReportIssueNetworkManager"];
    v8 = *(a1 + 32);
    v13[0] = *(a1 + 40);
    v9 = objc_retainBlock(*(a1 + 48));
    v13[1] = v9;
    v10 = [NSArray arrayWithObjects:v13 count:2];
    [v6 enqueueValueInvocation:v7 method:v8 arguments:v10 file:@"BSUIReportIssueNetworkManager.m" line:43];

LABEL_5:
    goto LABEL_6;
  }

  v6 = objc_retainBlock(*(a1 + 48));
  if (v6)
  {
    v11[0] = @"error";
    v11[1] = @"errorType";
    v12[0] = &__kCFBooleanTrue;
    v12[1] = @"JSNotLoaded";
    v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    (v6)[2](v6, &__NSDictionary0__struct, v7);
    goto LABEL_5;
  }

LABEL_6:
}

id sub_55AA0(uint64_t a1)
{
  v2 = [*(a1 + 32) standardNotes];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [*(a1 + 32) standardDescription];
  }

  v5 = v4;

  return v5;
}

id sub_55D28(uint64_t a1)
{
  v2 = [*(a1 + 32) standardNotes];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [*(a1 + 32) standardDescription];
  }

  v5 = v4;

  return v5;
}

void sub_569F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_56A10(uint64_t a1, void *a2)
{
  v5 = [a2 objectForKeyedSubscript:@"App"];
  v3 = [v5 invokeMethod:@"bookPageOrderIsRTLByDefault" withArguments:0];
  v4 = [v3 isBoolean];
  if (v4)
  {
    LOBYTE(v4) = [v3 toBool];
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
}

void sub_575C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained removeRenderOverride:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_57774(uint64_t a1)
{
  v2 = [*(a1 + 32) cardStackTransitioningCoverSourceImageChangeObserverBlock];

  if (v2)
  {
    v8 = [*(a1 + 40) imageContentWithOptions:1];
    v3 = [v8 image];

    if (v3)
    {
      v4 = [v8 image];
      v5 = [v4 newImage];
      [v8 insets];
      v6 = [v5 imageWithAlignmentRectInsets:?];

      v7 = [*(a1 + 32) cardStackTransitioningCoverSourceImageChangeObserverBlock];
      (v7)[2](v7, v6);
    }
  }
}

uint64_t sub_579B0()
{
  v0 = sub_2C00B8();
  sub_68DE4(v0, qword_3BB6F8);
  sub_57AD8(v0, qword_3BB6F8);
  return sub_2C00A8();
}

uint64_t static Logger.socialLayer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_3BB6F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2C00B8();
  v3 = sub_57AD8(v2, qword_3BB6F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_57AD8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_57B10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_refreshPublisher;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_57B6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_refreshPublisher;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_57C1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_refreshPublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_57CD8(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlights;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = (v6 + 48);
    v8 = *(v6 + 16) + 1;
    while (--v8)
    {
      v9 = *v7;
      if (*(v7 - 2) != a1 || *(v7 - 1) != a2)
      {
        v7 += 3;
        if ((sub_2C65B8() & 1) == 0)
        {
          continue;
        }
      }

      v11 = objc_allocWithZone(SWAttributionView);
      v12 = v9;
      v13 = [v11 init];
      [v13 setHighlight:v12];

      return v13;
    }
  }

  return 0;
}

uint64_t sub_57DC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlights;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_57E20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlights;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return sub_57E8C();
}

uint64_t sub_57E8C()
{
  swift_beginAccess();
  v10[3] = type metadata accessor for BSUISharedWithYouController();
  v10[4] = sub_66A08(&qword_3BD380, v1, type metadata accessor for BSUISharedWithYouController);
  v10[0] = v0;

  v2 = v0;
  sub_2C23D8();

  sub_68CD0(v10);
  v3 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_observers;
  result = swift_beginAccess();
  v5 = *&v2[v3];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    do
    {
      sub_6932C(v7, v9, &qword_3BB9D0);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong update:v2];
        swift_unknownObjectRelease();
      }

      sub_69198(v9, &qword_3BB9D0);
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t (*sub_5804C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_580B0;
}

uint64_t sub_580B0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_57E8C();
  }

  return result;
}

id sub_580E4()
{
  result = [objc_allocWithZone(type metadata accessor for BSUISharedWithYouController()) init];
  qword_3BB718 = result;
  return result;
}

id static BSUISharedWithYouController.shared.getter()
{
  if (qword_3BB710 != -1)
  {
    swift_once();
  }

  v1 = qword_3BB718;

  return v1;
}

char *sub_581CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_refreshPublisher;
  sub_6620C(&qword_3BC148);
  swift_allocObject();
  *&v0[v2] = sub_2C23E8();
  v3 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlightCenter;
  *&v1[v3] = [objc_allocWithZone(SWHighlightCenter) init];
  *&v1[OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlights] = 0;
  v4 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_attributionViews;
  *&v1[v4] = sub_6879C(&_swiftEmptyArrayStorage, &unk_3BC370);
  *&v1[OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_observers] = &_swiftEmptyArrayStorage;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BSUISharedWithYouController();
  v5 = objc_msgSendSuper2(&v7, "init");
  [*&v5[OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlightCenter] setDelegate:v5];
  return v5;
}

void _s11BookStoreUI27BSUISharedWithYouControllerC34highlightCenterHighlightsDidChangeyySo011SWHighlightI0CF_0()
{
  v110 = sub_2BE3B8();
  v1 = *(v110 - 8);
  v2 = __chkstk_darwin(v110);
  v109 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v108 = &v90 - v4;
  v99 = sub_2BE5C8();
  v5 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlights;
  swift_beginAccess();
  v8 = &_swiftEmptyArrayStorage;
  if (*(v0 + v7))
  {
    v9 = *(v0 + v7);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v113 = v9;
  v10 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_attributionViews;
  swift_beginAccess();
  v115 = v10;
  v116 = v0;
  v11 = *(v0 + v10);
  v12 = *(v0 + OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlightCenter);

  v100 = v11;

  v13 = [v12 highlights];
  v90 = sub_66278(0, &qword_3BB9A8);
  v14 = sub_2C5B28();

  v91 = v14;
  v93 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_77;
  }

  v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
LABEL_6:
  v101 = v15;
  if (v15)
  {
    v16 = v8;
  }

  else
  {
    v16 = 0;
  }

  v17 = v116;
  *(v116 + v7) = v16;

  sub_57E8C();
  v18 = sub_6879C(v8, &unk_3BC370);
  *(v17 + v115) = v18;

  if (v101)
  {
    v19 = 0;
    v103 = 0;
    v20 = v91;
    v97 = v91 & 0xC000000000000001;
    v95 = v91 + 32;
    v96 = (v5 + 1);
    v102 = v91 & 0xFFFFFFFFFFFFFF8;
    if (v91 >= 0)
    {
      v20 = v91 & 0xFFFFFFFFFFFFFF8;
    }

    v92 = v20;
    v107 = v1 + 1;
    v94 = v113 + 6;
    while (1)
    {
      if (v97)
      {
        v21 = sub_2C6208();
      }

      else
      {
        if (v19 >= *(v102 + 16))
        {
          goto LABEL_76;
        }

        v21 = *(v95 + 8 * v19);
      }

      v114 = v21;
      v105 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v15 = sub_2C6398();
        goto LABEL_6;
      }

      v22 = v98;
      sub_2BE5B8();
      v23 = sub_2BE598();
      v7 = v24;
      (*v96)(v22, v99);
      v121 = v23;
      v122 = v7;
      v25 = v113[2];
      if (v19)
      {
        break;
      }

      if (v93)
      {
        if (v25 != sub_2C6398())
        {
LABEL_30:
          v25 = v113[2];
          if (v25)
          {
LABEL_21:
            v104 = v23;
            v106 = v7;
            v8 = 0;
            v5 = v94;
            v111 = v25;
            while (v8 < v113[2])
            {
              v26 = *(v5 - 1);
              v112 = *(v5 - 2);
              v27 = *v5;
              v118 = v26;

              v117 = v27;
              v28 = [v117 URL];
              v29 = v108;
              sub_2BE398();

              v30 = sub_2BE378();
              v32 = v31;
              v1 = v107;
              v7 = *v107;
              v33 = v110;
              (*v107)(v29, v110);
              v34 = [v114 URL];
              v35 = v109;
              sub_2BE398();

              v36 = sub_2BE378();
              v38 = v37;
              (v7)(v35, v33);
              if (v30 == v36 && v32 == v38)
              {

LABEL_35:

                v23 = v112;
                v7 = v118;
                goto LABEL_36;
              }

              v39 = sub_2C65B8();

              if (v39)
              {
                goto LABEL_35;
              }

              ++v8;

              v5 += 3;
              if (v111 == v8)
              {
                v7 = v106;
                v23 = v104;
                goto LABEL_36;
              }
            }

LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          goto LABEL_36;
        }
      }

      else if (v25 != *(v102 + 16))
      {
        goto LABEL_30;
      }

      v104 = v23;
LABEL_37:
      v106 = v7;
      v112 = v105;

      v41 = v103;
      v42 = sub_61354(v40, &v121);
      v103 = v41;

      v1 = (v42 + 64);
      v43 = 1 << *(v42 + 32);
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      else
      {
        v44 = -1;
      }

      v8 = v44 & *(v42 + 64);
      v7 = (v43 + 63) >> 6;
      v117 = v42;

      v45 = 0;
      while (v8)
      {
LABEL_48:
        v52 = __clz(__rbit64(v8)) | (v45 << 6);
        v53 = v116;
        v54 = *(v117 + 6) + 16 * v52;
        v5 = *v54;
        v55 = *(v54 + 8);
        v56 = *(*(v117 + 7) + 8 * v52);
        v57 = v115;
        swift_beginAccess();
        swift_bridgeObjectRetain_n();
        v118 = v56;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v120 = *(v53 + v57);
        v59 = v120;
        *(v53 + v57) = 0x8000000000000000;
        v61 = sub_5D228(v5, v55);
        v62 = v59[2];
        v63 = (v60 & 1) == 0;
        v64 = v62 + v63;
        if (__OFADD__(v62, v63))
        {
          goto LABEL_73;
        }

        v65 = v60;
        if (v59[3] >= v64)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v60)
            {
              goto LABEL_41;
            }
          }

          else
          {
            sub_635D8(&unk_3BC370);
            if (v65)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          sub_5ECAC(v64, isUniquelyReferenced_nonNull_native, &unk_3BC370);
          v66 = sub_5D228(v5, v55);
          if ((v65 & 1) != (v67 & 1))
          {
            sub_2C6678();
            __break(1u);
            return;
          }

          v61 = v66;
          if (v65)
          {
LABEL_41:

            v46 = v120;
            v47 = v120[7];
            v48 = *(v47 + 8 * v61);
            v49 = v118;
            *(v47 + 8 * v61) = v118;
            v50 = v49;

            goto LABEL_42;
          }
        }

        v46 = v120;
        v120[(v61 >> 6) + 8] |= 1 << v61;
        v68 = (v46[6] + 16 * v61);
        *v68 = v5;
        v68[1] = v55;
        v69 = v118;
        *(v46[7] + 8 * v61) = v118;
        v70 = v46[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_74;
        }

        v50 = v69;
        v46[2] = v72;
LABEL_42:
        v8 &= v8 - 1;
        *(v116 + v115) = v46;
        swift_endAccess();
      }

      while (1)
      {
        v51 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
          goto LABEL_72;
        }

        if (v51 >= v7)
        {
          break;
        }

        v8 = v1[v51];
        ++v45;
        if (v8)
        {
          v45 = v51;
          goto LABEL_48;
        }
      }

      v74 = sub_5804C(v119);
      v75 = *v73;
      if (*v73)
      {
        v76 = v73;
        v8 = v106;

        v77 = v114;
        v78 = swift_isUniquelyReferenced_nonNull_native();
        *v76 = v75;
        if ((v78 & 1) == 0)
        {
          v75 = sub_5B784(0, v75[2] + 1, 1, v75);
          *v76 = v75;
        }

        v7 = v75[2];
        v79 = v75[3];
        v1 = (v7 + 1);
        if (v7 >= v79 >> 1)
        {
          v75 = sub_5B784((v79 > 1), v7 + 1, 1, v75);
          *v76 = v75;
        }

        v19 = v112;
        v75[2] = v1;
        v80 = &v75[3 * v7];
        v80[4] = v104;
        v80[5] = v8;
        v80[6] = v77;
        v74(v119, 0);
      }

      else
      {
        v74(v119, 0);
        v8 = v106;
        v19 = v112;
      }

      if (v105 == v101)
      {
        goto LABEL_66;
      }
    }

    if (v25)
    {
      goto LABEL_21;
    }

LABEL_36:
    v104 = v23;
    v121 = v23;
    v122 = v7;
    goto LABEL_37;
  }

LABEL_66:

  if (qword_3BB6F0 != -1)
  {
    swift_once();
  }

  v81 = sub_2C00B8();
  sub_57AD8(v81, qword_3BB6F8);

  v82 = sub_2C0098();
  v83 = sub_2C5DE8();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v119[0] = v85;
    *v84 = 136315138;
    v86 = sub_2C5B38();
    v88 = v87;

    v89 = sub_5CCF4(v86, v88, v119);

    *(v84 + 4) = v89;
    _os_log_impl(&dword_0, v82, v83, "BSUISharedWithYouController: refresh: %s", v84, 0xCu);
    sub_68CD0(v85);
  }

  else
  {
  }
}

uint64_t sub_58E04(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  for (i = (a3 + 48); ; i += 3)
  {
    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *i;
    v14[0] = v9;
    v14[1] = v8;
    v14[2] = v10;

    v11 = v10;
    v12 = a1(v14);
    if (v4)
    {
      break;
    }

    if (v12)
    {
      return v9;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return v9;
}

uint64_t sub_58ED8(uint64_t a1, uint64_t a2)
{
  v5 = sub_6620C(&qword_3BB9B0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  sub_6620C(&qword_3BB9B8);
  sub_2BFB68();
  sub_2BFB68();
  v12 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlights;
  v13 = swift_beginAccess();
  v14 = *(v2 + v12);
  if (v14)
  {
    __chkstk_darwin(v13);
    *(&v22 - 4) = v11;
    *(&v22 - 3) = v9;
    *(&v22 - 2) = a1;
    *(&v22 - 1) = a2;

    v15 = sub_58E04(sub_66254, (&v22 - 6), v14);
    v17 = v16;
    v19 = v18;

    if (v17)
    {
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v20 = *(v6 + 8);
  v20(v9, v5);
  v20(v11, v5);
  return v15;
}

uint64_t sub_59118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v36 = a5;
  v39 = a4;
  v41 = a2;
  v42 = a3;
  v49 = sub_2BE3B8();
  v37 = *(v49 - 8);
  __chkstk_darwin(v49);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6620C(&qword_3BC340);
  __chkstk_darwin(v10 - 8);
  v12 = v32 - v11;
  v44 = sub_6620C(&qword_3BC348);
  v13 = *(v44 - 8);
  __chkstk_darwin(v44);
  v38 = v32 - v14;
  v43 = *(a1 + 16);
  sub_6620C(&qword_3BC350);
  v15 = sub_6620C(&qword_3BB9B0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2E15C0;
  v32[1] = v19;
  v20 = v19 + v18;
  v21 = *(v16 + 16);
  v21(v20, v41, v15);
  v40 = v20;
  v41 = v17;
  v22 = v42;
  v42 = v15;
  v21(v20 + v17, v22, v15);
  v23 = 0;
  v24 = (v37 + 1);
  v25 = (v13 + 56);
  v37 = (v13 + 48);
  v33 = (v13 + 32);
  v26 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v26 = v39 & 0xFFFFFFFFFFFFLL;
  }

  v35 = v26;
  v34 = (v13 + 8);
  while (1)
  {
    v27 = v23;
    v28 = [v43 URL];
    sub_2BE398();

    sub_2BE378();
    (*v24)(v9, v49);
    sub_2BFB78();
    if (v6)
    {

      (*v25)(v12, 1, 1, v44);
      v6 = 0;
LABEL_5:
      sub_69198(v12, &qword_3BC340);
      goto LABEL_6;
    }

    v29 = v44;
    if ((*v37)(v12, 1, v44) == 1)
    {
      goto LABEL_5;
    }

    (*v33)(v38, v12, v29);
    swift_getKeyPath();
    sub_2BFB88();

    if (v47 == v39 && v48 == v36 && !(v45 >> 16) && v46 >> 16 == v35)
    {
      break;
    }

    v30 = sub_2C6558();

    (*v34)(v38, v29);
    if (v30)
    {
      goto LABEL_17;
    }

LABEL_6:
    v23 = 1;
    if (v27)
    {

      return 0;
    }
  }

  (*v34)(v38, v29);
LABEL_17:

  return 1;
}

void sub_59600(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  sub_2C6368();
  v33._countAndFlagsBits = 43;
  v33._object = 0xE100000000000000;
  sub_2C5978(v33);
  v34._countAndFlagsBits = a1;
  v34._object = a2;
  sub_2C5978(v34);
  v8 = 0xE000000000000000;
  v9 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_attributionViews;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_20;
  }

  v11 = sub_5D228(0, 0xE000000000000000);
  if ((v12 & 1) == 0)
  {

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  v14 = [v13 highlight];
  if (!v14)
  {
LABEL_21:
    if (qword_3BB6F0 != -1)
    {
      swift_once();
    }

    v26 = sub_2C00B8();
    sub_57AD8(v26, qword_3BB6F8);

    v27 = sub_2C0098();
    v28 = sub_2C5DC8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v29 = 136315138;
      v31 = sub_5CCF4(0, 0xE000000000000000, &v32);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_0, v27, v28, "No attribution identifier for %s.", v29, 0xCu);
      sub_68CD0(v30);
    }

    else
    {
    }

    return;
  }

  v15 = v14;
  v16 = [v14 attributions];

  sub_66278(0, &qword_3BB9C0);
  v17 = sub_2C5B28();

  if (!(v17 >> 62))
  {
    if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  if (!sub_2C6398())
  {
LABEL_28:

    goto LABEL_21;
  }

LABEL_6:

  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = sub_2C6208();
  }

  else
  {
    if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_31;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;

  v17 = [v19 uniqueIdentifier];

  if (!v17)
  {
    sub_2C58C8();
    v17 = sub_2C5888();
  }

  v20 = [v13 highlight];
  if (!v20)
  {
    goto LABEL_33;
  }

  v21 = v20;
  v22 = [v20 attributions];

  v8 = sub_2C5B28();
  if (v8 >> 62)
  {
LABEL_31:
    if (sub_2C6398())
    {
      goto LABEL_14;
    }

LABEL_32:

    goto LABEL_33;
  }

  if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_32;
  }

LABEL_14:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v23 = sub_2C6208();
LABEL_17:
    v24 = v23;

    v25 = [v24 attachmentGUID];

    if (v25)
    {
LABEL_34:
      [objc_opt_self() presentTranscriptForAttributionIdentifier:v17 attachmentGUID:v25 presentingViewController:a3];

      return;
    }

LABEL_33:
    v25 = 0;
    goto LABEL_34;
  }

  if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
  {
    v23 = *(v8 + 32);
    goto LABEL_17;
  }

  __break(1u);
}

char *sub_59A6C(uint64_t a1, void *a2, void *a3)
{
  v7 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlights;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!v8)
  {
    return 0;
  }

  v9 = (v8 + 48);
  v10 = (*(v8 + 16) + 1);
  while (--v10)
  {
    v11 = *v9;
    if (*(v9 - 2) != a1 || *(v9 - 1) != a2)
    {
      v9 += 3;
      if ((sub_2C65B8() & 1) == 0)
      {
        continue;
      }
    }

    v13 = v11;
    v10 = [objc_allocWithZone(SWAttributionView) init];
    [v10 setHighlight:v13];
    if (a3)
    {
      v14 = a3;
      sub_2C6368();
      v20._countAndFlagsBits = 43;
      v20._object = 0xE100000000000000;
      sub_2C5978(v20);
      v21._countAndFlagsBits = a1;
      v21._object = a2;
      sub_2C5978(v21);
      v15 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_attributionViews;
      swift_beginAccess();
      v16 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v3 + v15);
      *(v3 + v15) = 0x8000000000000000;
      sub_61E84(v16, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);

      *(v3 + v15) = v19;
      swift_endAccess();
    }

    return v10;
  }

  return v10;
}

id sub_59CC4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlights;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7)
  {
    v8 = (v7 + 40);
    v9 = *(v7 + 16) + 1;
    while (--v9)
    {
      if (*(v8 - 1) != a1 || *v8 != a2)
      {
        v8 += 3;
        if ((sub_2C65B8() & 1) == 0)
        {
          continue;
        }
      }

      sub_2C6368();
      v18._countAndFlagsBits = 43;
      v18._object = 0xE100000000000000;
      sub_2C5978(v18);
      v19._countAndFlagsBits = a1;
      v19._object = a2;
      sub_2C5978(v19);
      v11 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_attributionViews;
      swift_beginAccess();
      v12 = *(v3 + v11);
      if (*(v12 + 16))
      {

        v13 = sub_5D228(0, 0xE000000000000000);
        v15 = v14;

        if (v15)
        {
          v16 = *(*(v12 + 56) + 8 * v13);

          return v16;
        }
      }

      return 0;
    }
  }

  return 0;
}

id BSUISharedWithYouController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BSUISharedWithYouController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id BSUISharedWithYouController.attach(_:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_5B8CC(0, v4[2] + 1, 1, v4);
    *(v1 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_5B8CC((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  sub_69130(v9, &v4[v7 + 4], &qword_3BB9D0);
  *(v1 + v3) = v4;
  swift_endAccess();
  return [a1 update:v1];
}

uint64_t BSUISharedWithYouController.detach(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_observers;
  swift_beginAccess();
  v15 = v3;
  v16 = v1;
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = v4 + 32;
    v9 = &_swiftEmptyArrayStorage;
    while (v7 < *(v4 + 16))
    {
      sub_6932C(v8, v18, &qword_3BB9D0);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v11 = Strong, swift_unknownObjectRelease(), v11 == a1) || !swift_unknownObjectWeakLoadStrong())
      {
        result = sub_69198(v18, &qword_3BB9D0);
      }

      else
      {
        swift_unknownObjectRelease();
        sub_69130(v18, v17, &qword_3BB9D0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_64614(0, v9[2] + 1, 1);
          v9 = v19;
        }

        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          sub_64614((v13 > 1), v14 + 1, 1);
          v9 = v19;
        }

        v9[2] = v14 + 1;
        result = sub_69130(v17, &v9[v14 + 4], &qword_3BB9D0);
      }

      ++v7;
      v8 += 8;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_15:

    *(v16 + v15) = v9;
  }

  return result;
}

Swift::UInt sub_5A2AC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2C6748(result);

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_5A304()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

Swift::Int sub_5A370()
{
  sub_2C6738();
  sub_5A2AC();
  return sub_2C6778();
}

Swift::Int sub_5A3C0()
{
  sub_2C6738();
  sub_5A2AC();
  return sub_2C6778();
}

uint64_t sub_5A468(uint64_t a1, uint64_t a2)
{
  result = sub_2BE7B8();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_5A4BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2BE7C8();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_5A514@<X0>(void *a1@<X8>)
{
  result = sub_2BE7D8();
  *a1 = v3;
  return result;
}

void *sub_5A53C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_5A54C(uint64_t a1, id *a2)
{
  result = sub_2C58A8();
  *a2 = 0;
  return result;
}

uint64_t sub_5A5C4(uint64_t a1, id *a2)
{
  v3 = sub_2C58B8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_5A648@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C58C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_5A68C@<X0>(void *a1@<X8>)
{
  sub_2C58C8();
  v2 = sub_2C5888();

  *a1 = v2;
  return result;
}

uint64_t sub_5A6D4()
{
  sub_66A08(&qword_3BC108, 255, type metadata accessor for ActivityType);
  sub_66A08(&unk_3BC110, 255, type metadata accessor for ActivityType);

  return sub_2C63D8();
}

uint64_t sub_5A798()
{
  sub_66A08(&qword_3BC0F8, 255, type metadata accessor for MCatalogRequestRelationship);
  sub_66A08(&qword_3BC100, 255, type metadata accessor for MCatalogRequestRelationship);

  return sub_2C63D8();
}

uint64_t sub_5A85C()
{
  sub_66A08(&qword_3BC0E8, 255, type metadata accessor for MCatalogRequestView);
  sub_66A08(&qword_3BC0F0, 255, type metadata accessor for MCatalogRequestView);

  return sub_2C63D8();
}

uint64_t sub_5A920()
{
  sub_66A08(&qword_3BC0D8, 255, type metadata accessor for AssetActivityItemProviderProperty);
  sub_66A08(&qword_3BC0E0, 255, type metadata accessor for AssetActivityItemProviderProperty);

  return sub_2C63D8();
}

uint64_t sub_5A9E4()
{
  sub_66A08(&qword_3BC040, 255, type metadata accessor for Key);
  sub_66A08(&qword_3BC048, 255, type metadata accessor for Key);

  return sub_2C63D8();
}

double sub_5AAA8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_5AAB4()
{
  sub_66A08(&qword_3BC070, 255, type metadata accessor for Weight);
  sub_66A08(&qword_3BC078, 255, type metadata accessor for Weight);
  sub_68C10();
  return sub_2C63D8();
}

uint64_t sub_5AB84()
{
  sub_66A08(&qword_3BC088, 255, type metadata accessor for SystemDesign);
  sub_66A08(&qword_3BC090, 255, type metadata accessor for SystemDesign);

  return sub_2C63D8();
}

uint64_t sub_5AC48()
{
  sub_66A08(&qword_3BC468, 255, type metadata accessor for SeriesManagerSeriesType);
  sub_66A08(&qword_3BC470, 255, type metadata accessor for SeriesManagerSeriesType);

  return sub_2C63D8();
}

uint64_t sub_5AD0C()
{
  sub_66A08(&unk_3C43C0, 255, type metadata accessor for FigaroKey);
  sub_66A08(&qword_3BC0B0, 255, type metadata accessor for FigaroKey);

  return sub_2C63D8();
}

uint64_t sub_5ADD0()
{
  sub_66A08(&qword_3BC478, 255, type metadata accessor for BSUINavigationControllerOptionsKey);
  sub_66A08(&qword_3BC480, 255, type metadata accessor for BSUINavigationControllerOptionsKey);

  return sub_2C63D8();
}

uint64_t sub_5AE94()
{
  sub_66A08(&qword_3BC060, 255, type metadata accessor for TextStyle);
  sub_66A08(&qword_3BC068, 255, type metadata accessor for TextStyle);

  return sub_2C63D8();
}

uint64_t sub_5AF58()
{
  sub_66A08(&qword_3BC050, 255, type metadata accessor for UIContentSizeCategory);
  sub_66A08(&qword_3BC058, 255, type metadata accessor for UIContentSizeCategory);

  return sub_2C63D8();
}

uint64_t sub_5B01C()
{
  sub_66A08(&qword_3BC0C8, 255, type metadata accessor for AttributeName);
  sub_66A08(&qword_3BC0D0, 255, type metadata accessor for AttributeName);

  return sub_2C63D8();
}

uint64_t sub_5B0E0@<X0>(void *a1@<X8>)
{
  v2 = sub_2C5888();

  *a1 = v2;
  return result;
}

uint64_t sub_5B128()
{
  sub_66A08(&qword_3BC0B8, 255, type metadata accessor for TraitKey);
  sub_66A08(&qword_3BC0C0, 255, type metadata accessor for TraitKey);

  return sub_2C63D8();
}

uint64_t sub_5B1F8@<X0>(void *a1@<X8>)
{
  sub_2C58C8();
  v2 = sub_2C5888();

  *a1 = v2;
  return result;
}

uint64_t sub_5B240()
{
  sub_66A08(&qword_3BC098, 255, type metadata accessor for FigaroEventType);
  sub_66A08(&unk_3BC0A0, 255, type metadata accessor for FigaroEventType);
  sub_66A08(&unk_3C43C0, 255, type metadata accessor for FigaroKey);

  return sub_2C63D8();
}

void sub_5B344()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_2C6768(*&v1);
}

uint64_t sub_5B380(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

uint64_t sub_5B398(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_2C58C8();
  v5 = a3(v4);

  return v5;
}

uint64_t sub_5B3DC()
{
  sub_2C58C8();
  sub_2C5958();
}

Swift::Int sub_5B430()
{
  sub_2C58C8();
  sub_2C6738();
  sub_2C5958();
  v0 = sub_2C6778();

  return v0;
}

uint64_t sub_5B4A4()
{
  sub_2C58C8();
  v0 = sub_2C5888();

  sub_2C58C8();
  v1 = sub_2C59F8();

  return v1;
}

uint64_t sub_5B508()
{
  sub_2C58C8();
  v0 = sub_2C5888();

  sub_2C58C8();
  sub_2C5958();
}

Swift::Int sub_5B584()
{
  sub_2C58C8();
  v0 = sub_2C5888();

  sub_2C58C8();
  sub_2C6738();
  sub_2C5958();
  v1 = sub_2C6778();

  return v1;
}

uint64_t sub_5B62C()
{
  v0 = sub_2C58C8();
  v2 = v1;
  if (v0 == sub_2C58C8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2C65B8();
  }

  return v5 & 1;
}

uint64_t sub_5B6B4()
{
  sub_2C58C8();
  v0 = sub_2C5888();

  sub_2C58C8();
  v1 = sub_2C5888();

  v2 = sub_2C58C8();
  v4 = v3;
  if (v2 == sub_2C58C8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2C65B8();
  }

  return v7 & 1;
}

void *sub_5B784(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_6620C(&qword_3BC360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_6620C(&qword_3BC368);
    swift_arrayInitWithCopy();
  }

  return v10;
}