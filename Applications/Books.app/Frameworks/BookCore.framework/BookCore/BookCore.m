void sub_31A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_32F4;
  v16 = sub_3304;
  v17 = 0;
  v4 = *(a1 + 32);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_330C;
  v9 = &unk_2C7AE0;
  v11 = &v12;
  v10 = v4;
  v5 = &v6;
  os_unfair_lock_lock(v4 + 2);
  v8(v5);
  os_unfair_lock_unlock(v4 + 2);

  [*(a1 + 32) performFetch:{v13[5], v6, v7}];
  v3[2](v3);

  _Block_object_dispose(&v12, 8);
}

void sub_32DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_32F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_330C(uint64_t a1)
{
  v2 = [*(a1 + 32) profilesToFetch];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = +[NSMutableSet set];
  [*(a1 + 32) setProfilesToFetch:v5];
}

void sub_34B8(uint64_t a1)
{
  v2 = [*(a1 + 32) profilesToFetch];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) completions];
  v6 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v4 = [*(a1 + 32) completions];
    [v4 setObject:v6 forKeyedSubscript:*(a1 + 40)];
  }

  v5 = [*(a1 + 48) copy];
  [v6 addObject:v5];
}

void sub_3680(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v26 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = BCImageCacheLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E41CC();
    }
  }

  v10 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = v7;
  obj = [v7 allValues];
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v15 profileDictionary];
        v17 = [v16 objectForKeyedSubscript:@"artwork"];

        v18 = objc_alloc_init(BICProductProfileData);
        v19 = [v15 profileDictionary];
        v20 = [v19 objectForKeyedSubscript:@"id"];
        [(BICProductProfileData *)v18 setIdentifier:v20];

        v21 = [v17 objectForKeyedSubscript:@"width"];
        -[BICProductProfileData setWidth:](v18, "setWidth:", [v21 integerValue]);

        v22 = [v17 objectForKeyedSubscript:@"height"];
        -[BICProductProfileData setHeight:](v18, "setHeight:", [v22 integerValue]);

        v23 = [v17 objectForKeyedSubscript:@"url"];
        [(BICProductProfileData *)v18 setUrl:v23];

        [v10 addObject:v18];
      }

      v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v24 = objc_retainBlock(*(a1 + 40));
  v25 = v24;
  if (v24)
  {
    (*(v24 + 2))(v24, v10);
  }
}

void sub_3B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3BA8(uint64_t a1)
{
  v2 = [*(a1 + 32) completions];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) completions];
  [v6 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_3DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3E08(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) allObjects];

  return _objc_release_x1();
}

void sub_3E54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = a2;
  v35 = a3;
  v36 = a4;
  if (v36)
  {
    v7 = BCImageCacheLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4238();
    }
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [v31 allValues];
  v8 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v8)
  {
    v34 = *v66;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v66 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v65 + 1) + 8 * i);
        v11 = [v10 profileDictionary];
        v12 = [v11 objectForKeyedSubscript:@"artwork"];

        v13 = objc_alloc_init(BICProductProfileData);
        v14 = [v10 profileDictionary];
        v15 = [v14 objectForKeyedSubscript:@"id"];
        [(BICProductProfileData *)v13 setIdentifier:v15];

        v16 = [v12 objectForKeyedSubscript:@"width"];
        -[BICProductProfileData setWidth:](v13, "setWidth:", [v16 integerValue]);

        v17 = [v12 objectForKeyedSubscript:@"height"];
        -[BICProductProfileData setHeight:](v13, "setHeight:", [v17 integerValue]);

        v18 = [v12 objectForKeyedSubscript:@"url"];
        [(BICProductProfileData *)v13 setUrl:v18];

        [(BICProductProfileData *)v13 setExpiration:v35];
        [(BICProductProfileData *)v13 setError:v36];
        v19 = *(a1 + 32);
        v20 = [(BICProductProfileData *)v13 identifier];
        [v19 _fetchedProfile:v13 withIdentifier:v20];

        v21 = *(a1 + 32);
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v61 = sub_43D8;
        v62 = &unk_2C7BE8;
        v63 = *(a1 + 40);
        v64 = v13;
        v22 = v13;
        os_unfair_lock_lock(v21 + 2);
        v61(v60);
        os_unfair_lock_unlock(v21 + 2);
      }

      v8 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
    }

    while (v8);
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v52 = sub_442C;
  v53 = &unk_2C7AE0;
  v55 = &v56;
  v23 = *(a1 + 32);
  v54 = *(a1 + 40);
  v24 = v51;
  os_unfair_lock_lock(v23 + 2);
  v52(v24);
  os_unfair_lock_unlock(v23 + 2);

  if (v57[3])
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_32F4;
    v49 = sub_3304;
    v50 = 0;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v41 = sub_4460;
    v42 = &unk_2C7AE0;
    v44 = &v45;
    v25 = *(a1 + 32);
    v43 = *(a1 + 40);
    v26 = v40;
    os_unfair_lock_lock(v25 + 2);
    v41(v26);
    os_unfair_lock_unlock(v25 + 2);

    v27 = +[BLJaliscoDAAPClient sharedClient];
    v28 = v46[5];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_44A8;
    v37[3] = &unk_2C7C10;
    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    v39 = &v45;
    v37[4] = v29;
    v38 = v30;
    [v27 fetchItemsForStoreIDs:v28 completion:v37];

    _Block_object_dispose(&v45, 8);
  }

  _Block_object_dispose(&v56, 8);
}

void sub_43D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) identifier];
  [v1 removeObject:v2];
}

id sub_442C(uint64_t a1)
{
  result = [*(a1 + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_4460(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) copy];

  return _objc_release_x1();
}

void sub_44A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v27 = a3;
  if (v27)
  {
    v6 = BCImageCacheLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E42A0();
    }
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v7)
  {
    v8 = *v49;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        v11 = [v10 artworkURLString];
        v12 = [v11 length];

        if (v12)
        {
          v13 = objc_alloc_init(BICProductProfileData);
          v14 = [v10 storeID];
          [(BICProductProfileData *)v13 setIdentifier:v14];

          [(BICProductProfileData *)v13 setWidth:0];
          [(BICProductProfileData *)v13 setHeight:0];
          v15 = [v10 artworkURLString];
          [(BICProductProfileData *)v13 setUrl:v15];

          [(BICProductProfileData *)v13 setError:v27];
          v16 = *(a1 + 32);
          v17 = [(BICProductProfileData *)v13 identifier];
          [v16 _fetchedProfile:v13 withIdentifier:v17];

          v18 = *(a1 + 32);
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v44 = sub_48E8;
          v45 = &unk_2C7BE8;
          v46 = *(a1 + 40);
          v47 = v13;
          v19 = v13;
          os_unfair_lock_lock(v18 + 2);
          v44(v43);
          os_unfair_lock_unlock(v18 + 2);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v7);
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_32F4;
  v41 = sub_3304;
  v42 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v33 = sub_493C;
  v34 = &unk_2C7AE0;
  v36 = &v37;
  v20 = *(a1 + 32);
  v35 = *(a1 + 40);
  v21 = v32;
  os_unfair_lock_lock(v20 + 2);
  v33(v21);
  os_unfair_lock_unlock(v20 + 2);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = v38[5];
  v23 = [v22 countByEnumeratingWithState:&v28 objects:v52 count:16];
  if (v23)
  {
    v24 = *v29;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [*(a1 + 32) _fetchedProfile:0 withIdentifier:*(*(&v28 + 1) + 8 * j)];
      }

      v23 = [v22 countByEnumeratingWithState:&v28 objects:v52 count:16];
    }

    while (v23);
  }

  _Block_object_dispose(&v37, 8);
}

void sub_48BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_48E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) identifier];
  [v1 removeObject:v2];
}

uint64_t sub_493C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) allObjects];

  return _objc_release_x1();
}

void sub_4A3C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_4ED4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_4F1C(uint64_t a1)
{
  v2 = [*(a1 + 32) imagesProcessing];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

void sub_4F7C(uint64_t a1)
{
  v2 = [*(a1 + 32) imagesProcessing];
  [v2 addObject:*(a1 + 40)];
}

void sub_4FD0(id *a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = [WeakRetained workQueue];
  v8 = [BCWorkItemCompletionHandler newCompletionHandlerWithWorkItem:v5 onQueue:v7];

  [BICCacheStats logOperation:BICCacheStatsOperationStackCreationQueueEnd[0] forRequest:a1[4]];
  [BICCacheStats logOperation:BICCacheStatsOperationStackCreationStart[0] forRequest:a1[4]];
  kdebug_trace();
  v9 = BCImageCacheLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = a1[5];
    *buf = 138412290;
    v23 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "BCStackManager: Performing Rendering stack for: %@", buf, 0xCu);
  }

  v11 = objc_loadWeakRetained(a1 + 6);
  v12 = [v11 renderer];
  v13 = a1[5];
  v14 = a1[4];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_5240;
  v17[3] = &unk_2C7C60;
  objc_copyWeak(&v21, a1 + 6);
  v18 = a1[5];
  v19 = a1[4];
  v15 = v8;
  v20 = v15;
  [v12 renderStackFromSource:v13 forRequest:v14 onQueue:v16 completion:v17];

  objc_destroyWeak(&v21);
}

void sub_5240(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(os_unfair_lock_s *)WeakRetained _renderCompleteSource:*(a1 + 32) to:v3 forRequest:*(a1 + 40)];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_5348;
    v6[3] = &unk_2C7BE8;
    v7 = v5;
    v8 = *(a1 + 32);
    os_unfair_lock_lock(v5 + 2);
    sub_5348(v6);
    os_unfair_lock_unlock(v5 + 2);
  }

  kdebug_trace();
  [*(a1 + 48) workComplete];
}

void sub_5348(uint64_t a1)
{
  v2 = [*(a1 + 32) imagesProcessing];
  [v2 removeObject:*(a1 + 40)];
}

uint64_t sub_5600(uint64_t a1)
{
  qword_3420B0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_5918(uint64_t a1)
{
  qword_3420C0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_5CBC(id a1)
{
  qword_3420D0 = [NSSet setWithObject:objc_opt_class()];

  _objc_release_x1();
}

void sub_7958(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:v1];
}

void sub_7E08(uint64_t a1)
{
  v2 = [*(a1 + 32) auxiliaryNavigationBarViewController];
  [v2 setIsParentCardOccluded:0];

  v3 = [*(a1 + 32) topContentViewController];
  [v3 didBecomeVisibleContentScrollView];
}

void sub_80F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_810C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v6 = [WeakRetained delegate];
  v7 = objc_opt_new();
  if ([v6 cardViewControllerCanCloseAsset:v5])
  {
    v8 = IMCommonCoreBundle();
    v9 = [v8 localizedStringForKey:@"Return to Book" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  }

  else
  {
    v11 = [v5 presentingViewController];
    v8 = [v11 im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___BCRootBarStringForReturnToRootBarItemProviding];

    v9 = [v8 bc_stringForReturnToRootBarItem];
    if (!v9)
    {
      v19 = IMCommonCoreBundle();
      v12 = [v19 localizedStringForKey:@"Close All Product Cards" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

      goto LABEL_7;
    }
  }

  v12 = v9;
LABEL_7:

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_8454;
  v23[3] = &unk_2C7D68;
  objc_copyWeak(&v25, (a1 + 32));
  v13 = v6;
  v24 = v13;
  v14 = [UIAction actionWithTitle:v12 image:0 identifier:0 handler:v23];
  [v7 addObject:v14];
  if ([v13 cardViewControllerCanCloseAsset:v5])
  {
    v15 = IMCommonCoreBundle();
    v16 = [v15 localizedStringForKey:@"Go to Home" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_84A8;
    v20[3] = &unk_2C7D68;
    objc_copyWeak(&v22, (a1 + 32));
    v21 = v13;
    v17 = [UIAction actionWithTitle:v16 image:0 identifier:0 handler:v20];
    [v7 addObject:v17];

    objc_destroyWeak(&v22);
  }

  v10 = [UIMenu menuWithTitle:&stru_2D2930 children:v7];

  objc_destroyWeak(&v25);
LABEL_10:

  return v10;
}

void sub_8420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v14 + 40));
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_8454(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) cardViewControllerDidTapCloseAllCards:WeakRetained];
}

void sub_84A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) cardViewControllerDidTapCloseAsset:WeakRetained];
}

void sub_8700(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = *(a1 + 32);
  if (v3[62] == 1)
  {
    [v3 auxiliaryNavigationBarHeight];
    v5 = v4;
    v6 = [*(a1 + 32) auxiliaryNavigationBarViewController];
    [v6 setNavigationBarHeight:v5];

    v7 = [*(a1 + 32) currentState];
    v8 = *(a1 + 32);
    v9 = [v8 auxiliaryNavigationBarView];
    [v7 cardViewController:v8 positionAuxiliaryNavigationBarView:v9 cardDate:*(a1 + 32)];

    v10 = [*(a1 + 32) auxiliaryNavigationBarViewController];
    [v10 cardViewController:*(a1 + 32) positionAuxiliaryNavigationBarBackgroundWithData:*(a1 + 32)];
  }

  else
  {
    v11 = [v3 gripperView];
    [v11 removeFromSuperview];

    v12 = [*(a1 + 32) cardView];
    v13 = [*(a1 + 32) gripperView];
    [v12 addSubview:v13];

    v14 = *(a1 + 32);
    v10 = [v14 gripperView];
    v15 = [*(a1 + 32) cardNavigationController];
    v16 = [v15 view];
    [v14 anchorGripperView:v10 toView:v16];
  }

  v17 = [*(a1 + 32) cardSetData];
  if ([v17 covered])
  {
  }

  else
  {
    v18 = [*(a1 + 32) isCurrentCard];

    if (v18)
    {
      v19 = 0;
      goto LABEL_9;
    }
  }

  v19 = 1;
LABEL_9:
  v20 = [*(a1 + 32) auxiliaryNavigationBarViewController];
  [v20 setIsParentCardOccluded:v19];
}

void sub_88E8(uint64_t a1)
{
  [*(a1 + 32) setContentInset:{*(*(a1 + 32) + 16), *(*(a1 + 32) + 24), *(*(a1 + 32) + 32), *(*(a1 + 32) + 40)}];
  v4 = [*(a1 + 32) currentState];
  v2 = *(a1 + 32);
  v3 = [v2 contentScrollView];
  [v4 cardViewController:v2 repositionOffsetsWithContentScrollView:v3 cardData:*(a1 + 32)];
}

void sub_9BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_9C08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAuxiliaryNavigationBarViewController:v3];
  v4 = [WeakRetained auxiliaryNavigationBarViewController];
  [v4 setDelegate:WeakRetained];

  v5 = [WeakRetained currentState];
  [v5 cardViewControllerAuxiliaryNavigationBarAlpha:WeakRetained cardData:WeakRetained];
  v7 = v6;
  v8 = [WeakRetained auxiliaryNavigationBarView];
  [v8 setAlpha:v7];

  v9 = [WeakRetained auxiliaryNavigationBarView];
  v10 = [v9 layer];
  [v10 setZPosition:1000.0];

  v11 = [WeakRetained auxiliaryNavigationBarView];
  [v11 _accessibilitySetSortPriority:999];

  [WeakRetained auxiliaryNavigationBarHeight];
  [v3 setNavigationBarHeight:?];
  [v3 cardViewController:WeakRetained positionAuxiliaryNavigationBarBackgroundWithData:WeakRetained];

  v12 = [[UIPanGestureRecognizer alloc] initWithTarget:WeakRetained action:"dismissPan:"];
  [v12 setDelegate:WeakRetained];
  [WeakRetained setAuxiliaryNavigationBarDismissPanGestureRecognizer:v12];
  v13 = [WeakRetained auxiliaryNavigationBarView];
  [v13 addGestureRecognizer:v12];

  if (([WeakRetained isCurrentCard] & 1) != 0 || (objc_msgSend(WeakRetained, "cardSetViewController"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isPresentationTransitionCompleted"), v14, v15))
  {
    [WeakRetained attachAuxiliaryNavigationBarViewAnimated:0];
  }
}

void sub_A0C0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) blackScrimView];
  [v2 setAlpha:v1];
}

id *sub_A114(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    if (*(result + 5) == 0.0)
    {
      v3 = [result[4] blackScrimView];
      [v3 removeFromSuperview];

      v4 = v2[4];

      return [v4 setBlackScrimView:0];
    }
  }

  return result;
}

void sub_B090(uint64_t a1)
{
  [*(a1 + 32) setContentScrollView:0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v2 scrollView];
  [v3 cardContentViewController:v2 initializeManagerWithScrollView:v4];
}

void sub_C778(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 160));
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_C7A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_C7B8(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _setAuxiliaryNavigationBarViewAlpha:*(a1 + 80)];
  v4 = [*(a1 + 32) cardSetViewController];
  v5 = [v4 currentCardViewController];
  v6 = *(a1 + 32);
  if (v5 != v6)
  {

LABEL_8:
    [*(a1 + 32) _adjustContentMarginsForViewController:*(a1 + 64) isExpanded:{objc_msgSend(*(a1 + 32), "expanded")}];
    goto LABEL_9;
  }

  v7 = [v6 configuration];
  v8 = [v7 cardsCanExpand];

  if (!v8)
  {
    goto LABEL_8;
  }

  if (*(a1 + 88) != 1)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v9 = [*(a1 + 32) currentState];
  v10 = +[BCCardSetState expandedState];
  v11 = v9 == v10;

  if ((*(a1 + 88) & 1) == 0 || ([*(a1 + 32) currentState], v12 = objc_claimAutoreleasedReturnValue(), +[BCCardSetState contractedState](BCCardSetState, "contractedState"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v12 != v13))
  {
LABEL_11:
    if (*(a1 + 89) == 1 && ([*(a1 + 32) bottomCardWasExpanded] & 1) == 0)
    {
      v26 = [v3 containerView];
      [v26 frame];
      v28 = v27;
      v30 = v29;

      *(*(a1 + 32) + 59) = 1;
      [*(a1 + 32) goContracted];
      *(*(a1 + 32) + 59) = 0;
      v31 = [v3 containerView];
      [v31 frame];
      v33 = v32;

      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_CC30;
      v51[3] = &unk_2C7E30;
      v52 = v3;
      v34 = *(a1 + 48);
      v35 = *(a1 + 32);
      v53 = v34;
      v54 = v35;
      v56 = v28;
      v57 = v30;
      v58 = v33;
      v55 = *(a1 + 56);
      [UIView performWithoutAnimation:v51];
      v36 = [*(a1 + 40) view];
      [v36 setNeedsLayout];

      v37 = [*(a1 + 40) view];
      [v37 layoutIfNeeded];

      v38 = [*(a1 + 56) view];
      v39 = [v38 snapshotViewAfterScreenUpdates:0];
      v40 = *(*(a1 + 72) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;

      v42 = [*(a1 + 56) view];
      v43 = [v42 superview];
      v44 = *(*(*(a1 + 72) + 8) + 40);
      v45 = [*(a1 + 56) view];
      [v43 insertSubview:v44 belowSubview:v45];

      if (!isPhone() || ([*(a1 + 40) view], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "window"), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "frame"), v49 = v48, v47, v46, v49 > 402.0))
      {
        isPad();
      }

      v50 = [*(a1 + 40) navigationBar];
      [v50 frame];
      [v50 setFrame:?];
    }

    else
    {
      [*(a1 + 32) _adjustContentMarginsForViewController:*(a1 + 64) isExpanded:{objc_msgSend(*(a1 + 32), "expanded")}];
    }

    goto LABEL_18;
  }

  [*(a1 + 32) goExpanded];
  v14 = [*(a1 + 40) view];
  [v14 setNeedsLayout];

  v15 = [*(a1 + 40) view];
  [v15 layoutIfNeeded];

  v16 = [*(a1 + 40) navigationBar];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [*(a1 + 40) view];
  [v23 safeAreaInsets];
  v25 = v24;

  [v16 setFrame:{v18, v25, v20, v22}];
LABEL_18:
  if (*(a1 + 88) == 1)
  {
    [*(a1 + 32) setBottomCardWasExpanded:v11];
  }

LABEL_9:
}

void sub_CC30(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  v3 = +[UIColor systemBackgroundColor];
  [v2 setBackgroundColor:v3];

  v4 = [NSMutableArray arrayWithCapacity:3];
  v5 = [*(a1 + 40) view];
  v6 = v5;
  if (v5)
  {
    v7 = v5 == v2;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    while (1)
    {
      v8 = [*(a1 + 48) contentContainerView];
      v9 = v8;
      if (v6 == v8)
      {
        break;
      }

      [v6 frame];
      v11 = v10;
      v13 = v12;
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);

      if (v11 != v14 || v13 != v15)
      {
        goto LABEL_15;
      }

      [v4 addObject:v6];
      v17 = [v6 superview];

      if (v17)
      {
        v6 = v17;
        if (v17 != v2)
        {
          continue;
        }
      }

      goto LABEL_16;
    }
  }

LABEL_15:
  v17 = v6;
LABEL_16:

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = [v4 reverseObjectEnumerator];
  v19 = [v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v49;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v48 + 1) + 8 * i);
        [v23 setClipsToBounds:0];
        [v23 frame];
        if (v24 == *(a1 + 72))
        {
          [v23 setFrame:?];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v20);
  }

  [v4 removeAllObjects];
  v25 = [*(a1 + 56) view];
  v26 = v25;
  if (v25 && v25 != v2)
  {
    while (1)
    {
      v27 = [*(a1 + 48) contentContainerView];
      v28 = v27;
      if (v26 == v27)
      {
        break;
      }

      [v26 frame];
      v30 = v29;
      v32 = v31;
      v33 = *(a1 + 64);
      v34 = *(a1 + 72);

      if (v30 != v33 || v32 != v34)
      {
        goto LABEL_37;
      }

      [v4 addObject:v26];
      v36 = [v26 superview];

      if (v36)
      {
        v26 = v36;
        if (v36 != v2)
        {
          continue;
        }
      }

      goto LABEL_38;
    }
  }

LABEL_37:
  v36 = v26;
LABEL_38:

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v37 = [v4 reverseObjectEnumerator];
  v38 = [v37 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v45;
    do
    {
      for (j = 0; j != v39; j = j + 1)
      {
        if (*v45 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v44 + 1) + 8 * j);
        [v42 setClipsToBounds:0];
        [v42 frame];
        if (v43 == *(a1 + 72))
        {
          [v42 setFrame:?];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v39);
  }
}

void sub_CFB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 containerView];
  [v4 setBackgroundColor:0];

  [*(*(*(a1 + 56) + 8) + 40) removeFromSuperview];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  LODWORD(v4) = [v3 isCancelled];
  if (!v4 || *(a1 + 80) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if (*(a1 + 80) == 1 && *(a1 + 81) == 1)
    {
      v7 = [*(a1 + 32) currentState];
      v8 = +[BCCardSetState contractedState];

      if (v7 == v8)
      {
        *(*(a1 + 32) + 59) = 1;
        [*(a1 + 32) goExpanded];
        *(*(a1 + 32) + 59) = 0;
      }
    }

    v9 = BUProtocolCast();
    [v9 setBcSafeAreaInsetsObserver:*(a1 + 32)];
    objc_opt_class();
    v10 = BUClassAndProtocolCast();
    [v10 setCardContentDelegate:{*(a1 + 32), &OBJC_PROTOCOL___BCCardContent}];
    if (*(a1 + 48))
    {
      [WeakRetained setCurrentState:?];
    }

    if ((*(a1 + 81) & 1) != 0 || *(a1 + 72) != 1)
    {
      v16 = [v10 scrollView];
      [WeakRetained setContentScrollView:v16];

      [WeakRetained _updateCardFrames];
    }

    else
    {
      [*(a1 + 32) _applyContentInsetToContentViewController:v10];
      v11 = [*(a1 + 32) currentState];
      v12 = *(a1 + 32);
      v13 = [v10 scrollView];
      [v11 cardViewController:v12 positionCardScrollViewBasedOnContentScrollView:v13 cardDate:*(a1 + 32)];

      v14 = *(a1 + 32);
      v15 = [v10 scrollView];
      [v14 setupRootContentScrollView:v15];
    }
  }
}

void sub_DE90()
{
  v0 = objc_alloc_init(TUIManager);
  v1 = qword_3420E8;
  qword_3420E8 = v0;

  v2 = objc_alloc_init(TUIElementRegistry);
  [qword_3420E8 setElementRegistry:v2];
  [objc_opt_class() registerNamedColorsWithTemplateManger:qword_3420E8];
}

void sub_E6D0(uint64_t a1)
{
  v2 = [TUITemplateFactory alloc];
  v3 = [*(a1 + 32) _manager];
  v4 = [v3 elementRegistry];
  v5 = [v2 initWithRegistry:v4];
  v6 = qword_3420F8;
  qword_3420F8 = v5;

  v7 = [*(a1 + 32) _templatePackageURL];
  v8 = [TUIBinaryPackage packageWithURL:v7];

  [qword_3420F8 registerPackage:v8];
}

void sub_FEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = IMJPEGPrefetch;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10000(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t block, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  *(v46 + 64) = CMPhotoJPEGDecodeSessionDecodeDataToCGImageAsynchronously();
}

void sub_10198(uint64_t a1)
{
  v2 = CGDataProviderCreateWithCFData(*(a1 + 32));
  v3 = CGImageCreateWithJPEGDataProvider(v2, 0, 0, kCGRenderingIntentDefault);
  CGImageRelease(*(*(a1 + 40) + 56));
  *(*(a1 + 40) + 56) = CGImageRetain(v3);
  CGDataProviderRelease(v2);
  CGImageRelease(v3);
  v4 = *(*(a1 + 40) + 40);

  dispatch_group_leave(v4);
}

void sub_10224(uint64_t a1, CGImageRef image)
{
  CGImageRetain(image);
  v4 = dispatch_get_global_queue(2, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_102CC;
  v5[3] = &unk_2C7EF0;
  v5[4] = *(a1 + 32);
  v5[5] = image;
  dispatch_async(v4, v5);
}

void sub_102CC(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10368;
  v4[3] = &unk_2C7EF0;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 32);
  v5 = v2;
  dispatch_sync(v3, v4);
  dispatch_group_leave(*(*(a1 + 32) + 40));
  CGImageRelease(*(a1 + 40));
}

CGImageRef sub_10368(CGImageRef result)
{
  v1 = *(result + 4);
  if (*(v1 + 64))
  {
    v2 = result;
    *(v1 + 64) = 0;
    if (*(result + 5))
    {
      CGImageRelease(*(*(result + 4) + 56));
      result = CGImageRetain(*(v2 + 5));
      *(*(v2 + 4) + 56) = result;
    }
  }

  return result;
}

void sub_103D0(uint64_t a1)
{
  if (qword_342120 != -1)
  {
    sub_1E49A0();
  }

  CMPhotoJPEGDecodeSessionCreateCGImageFromData();
  (*(*(a1 + 48) + 16))();
  CGImageRelease(0);
}

void sub_105A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10748(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

CGImage *sub_1076C(void *a1)
{
  result = *(a1[4] + 56);
  if (result)
  {
    result = CGImageRetain(result);
    *(*(a1[6] + 8) + 24) = result;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  return result;
}

CGImageRef sub_107BC(uint64_t a1)
{
  result = CGImageRetain(*(*(a1 + 32) + 56));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1087C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64))
  {
    if (qword_342120 != -1)
    {
      sub_1E49A0();
    }

    CMPhotoJPEGDecodeSessionCancelRequest();
    *(*(a1 + 32) + 64) = 0;
    v2 = *(a1 + 32);
  }

  CGImageRelease(*(v2 + 56));
  *(*(a1 + 32) + 56) = 0;
}

void sub_109C8(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10ABC;
  v6[3] = &unk_2C7F68;
  v2 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v2;
  v8 = *(a1 + 48);
  v3 = objc_retainBlock(v6);
  v4 = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 56))
  {
    (v3[2])(v3);
  }

  else
  {
    dispatch_group_notify(*(v5 + 40), *(v5 + 32), v3);
  }
}

void sub_10ABC(uint64_t a1)
{
  v2 = CGImageRetain(*(*(a1 + 32) + 56));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10B68;
  block[3] = &unk_2C8008;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = v2;
  dispatch_async(v3, block);
}

void sub_10B68(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) isPrefetchCancelled] ^ 1, *(a1 + 48));
  v2 = *(a1 + 48);

  CGImageRelease(v2);
}

void sub_10C14(id a1)
{
  CMPhotoJPEGDecodeSessionCreate();
  if (qword_342108)
  {
    v1 = dispatch_get_global_queue(0, 0);
    v2 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 2uLL, v1);
    v3 = qword_342110;
    qword_342110 = v2;

    dispatch_source_set_event_handler(qword_342110, &stru_2C8048);
    dispatch_resume(qword_342110);
    v4 = objc_opt_new();
    v5 = qword_342118;
    qword_342118 = v4;

    v7 = +[NSNotificationCenter defaultCenter];
    v6 = [v7 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:qword_342118 usingBlock:&stru_2C8088];
  }
}

void sub_10F8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 CGContext];
  CGContextTranslateCTM(v4, 0.0, *(a1 + 48));
  CGContextScaleCTM(v4, 1.0, -1.0);
  v5 = [v3 CGContext];

  v6 = [*(a1 + 32) CGImage];
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);

  CGContextDrawImage(v5, *&v7, v6);
}

uint64_t sub_12148(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [NSSet setWithObjects:UIActivityTypePostToFacebook, @"com.linkedin.LinkedIn.ShareExtension", UIActivityTypePostToTwitter, UIActivityTypeCopyToPasteboard, 0];
  v6 = [v4 propertyProvider];

  if ([v6 assetType] == &dword_0 + 3)
  {
    v7 = [v5 containsObject:v3] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_12B4C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14 = v2;
    obj = v2;
    v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(obj);
          }

          objc_opt_class();
          v8 = BUDynamicCast();
          objc_opt_class();
          v9 = [v8 objectForKeyedSubscript:@"name"];
          v10 = BUDynamicCast();

          if (v10)
          {
            [v3 addObject:v10];
          }
        }

        v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    v11 = v3;
    if ([v3 count])
    {
      v12 = [v3 copy];
    }

    else
    {
      v12 = 0;
    }

    v2 = v14;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_13D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_13DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_13E78;
  v5[3] = &unk_2C8118;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_13E78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained stateChangeBlock];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2);
  }

  [WeakRetained setStateChangeBlock:0];

  (*(*(a1 + 32) + 16))();
}

void sub_1416C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_14188(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1E4A2C();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [WeakRetained augmentedExperiences];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 experience];
        v10 = [v9 location];
        v11 = [v10 validRange];
        v12 = [v11 contains:*(a1 + 32)];

        if (!v12)
        {
          [v8 setAutoExpand:0];
          v19 = 0;
          goto LABEL_14;
        }

        v13 = [v8 experience];
        v14 = [v13 kind];

        if (!v14)
        {
          [v8 setTriggeredLocation:2];
        }

        [WeakRetained _processStateEvent:1 forExperience:v8];
        v15 = [v8 experience];
        v16 = [v15 location];
        v17 = [v16 experiencePoint];
        v18 = [v17 compare:*(a1 + 32)];

        if (v18 != &dword_0 + 1)
        {
          v19 = 2;
LABEL_14:
          [WeakRetained _processStateEvent:v19 forExperience:v8];
          continue;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }
}

void sub_146B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_146D4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1E4BB4();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [WeakRetained augmentedExperiences];
  v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = *v25;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = [v7 experience];
        v9 = [v8 location];
        v10 = [v9 validRange];

        v11 = a1[4];
        v12 = [v7 experience];
        v13 = [v12 location];
        v14 = [v13 experiencePoint];
        LODWORD(v11) = [v11 contains:v14];

        if (v11)
        {
          [v7 setIsOnExperiencePage:1];
          [v7 setSectionContainingExperience:a1[4]];
          v15 = [v7 experience];
          v16 = [v15 kind];

          if (!v16)
          {
            [v7 setTriggeredLocation:2];
          }

          [WeakRetained _processStateEvent:1 forExperience:v7];
          v17 = 2;
        }

        else if ([a1[4] intersects:v10])
        {
          [v7 setIsOnExperiencePage:0];
          v17 = 1;
        }

        else
        {
          if ([v7 isOnExperiencePage])
          {
            v18 = [v7 sectionContainingExperience];

            if (v18)
            {
              v19 = [v7 sectionContainingExperience];
              if ([v19 intersects:a1[4]])
              {
                v20 = [v7 sectionContainingExperience];
                v21 = [v20 compareWithSection:a1[4]];

                if (v21 == -1)
                {
                  [a1[5] _expandExperience:v7];
                }
              }

              else
              {
              }
            }
          }

          [v7 setIsOnExperiencePage:0];
          [v7 setAutoExpand:0];
          v17 = 0;
        }

        [WeakRetained _processStateEvent:v17 forExperience:v7];
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }
}

void sub_15380(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1540C;
  block[3] = &unk_2C81D8;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1540C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = 4;
  }

  else
  {
    v1 = 3;
  }

  return [*(a1 + 32) _processStateEvent:v1 forExperience:*(a1 + 40)];
}

id sub_15634(uint64_t a1)
{
  [*(a1 + 32) setDelayTimer:0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _delayCompletedForExperience:v3];
}

void sub_15FE8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_16A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_16A64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 predicate];
  v6 = [v5 score];

  v7 = *(*(a1 + 32) + 8);
  if (v6 > *(v7 + 24))
  {
    *(v7 + 24) = v6;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

id sub_18110(uint64_t a1)
{
  v1 = [BICDescribedImage describedImageFromImageEntry:a1];
  [v1 setFilePath:@"filePath"];

  return v1;
}

void sub_18950(id a1)
{
  v1 = [UIColor colorWithRed:0.529411765 green:0.749019608 blue:0.407843137 alpha:1.0];
  v9[0] = v1;
  v2 = [UIColor colorWithRed:0.952941176 green:0.768627451 blue:0.321568627 alpha:1.0];
  v9[1] = v2;
  v3 = [UIColor colorWithRed:0.91372549 green:0.6 blue:0.258823529 alpha:1.0];
  v9[2] = v3;
  v4 = [UIColor colorWithRed:0.82745098 green:0.325490196 blue:0.329411765 alpha:1.0];
  v9[3] = v4;
  v5 = [UIColor colorWithRed:0.607843137 green:0.360784314 blue:0.647058824 alpha:1.0];
  v9[4] = v5;
  v6 = [UIColor colorWithRed:0.349019608 green:0.670588235 blue:0.870588235 alpha:1.0];
  v9[5] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:6];
  v8 = qword_342128;
  qword_342128 = v7;
}

uint64_t BCViewportSize(double a1, double a2)
{
  if (a1 <= a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (a1 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == &dword_4 + 1)
  {
    return 3;
  }

  if (v5 == &dword_0 + 1)
  {
    if (isMegaPad())
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (v5)
  {
    return 4;
  }

  else
  {
    if (v2 == 375.0 && v3 == 812.0)
    {
      return 1;
    }

    if (v2 == 414.0 && v3 == 896.0)
    {
      return 1;
    }

    else
    {
      return v3 == 926.0 && v2 == 428.0;
    }
  }
}

void sub_196EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    [v3 fetchImagesFromImageSet:a2 matchingDescription:v4 forRequest:v5 completion:v6];
    return;
  }

  v7 = [v3 nextCacheLevel];

  if (v7)
  {
    v9 = [*(a1 + 32) nextCacheLevel];
    [v9 fetchImagesMatchingDescription:*(a1 + 40) forRequest:*(a1 + 48) completion:*(a1 + 56)];
LABEL_9:
    v8 = v9;
    goto LABEL_10;
  }

  [BICCacheStats logOperation:BICCacheStatsOperationAsyncFetchExactFail[0] forRequest:*(a1 + 48)];
  v8 = objc_retainBlock(*(a1 + 56));
  if (v8)
  {
    v9 = v8;
    (*(v8 + 2))(v8, 0);
    goto LABEL_9;
  }

LABEL_10:
}

void sub_19A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19A60(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_7;
  }

  if ([v11 count])
  {
    [BICCacheStats logOperation:BICCacheStatsOperationAsyncFetchExactSuccess[0] forRequest:*(a1 + 32)];
    v4 = objc_retainBlock(*(a1 + 48));
    v5 = v4;
    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = v4[2];
LABEL_9:
    v6();
    goto LABEL_10;
  }

  v7 = [WeakRetained nextCacheLevel];
  if (!v7 || (v8 = v7, v9 = [*(a1 + 32) priority], v8, v9 == &dword_0 + 1))
  {
LABEL_7:
    v10 = objc_retainBlock(*(a1 + 48));
    v5 = v10;
    if (!v10)
    {
      goto LABEL_10;
    }

    v6 = v10[2];
    goto LABEL_9;
  }

  v5 = [WeakRetained nextCacheLevel];
  [v5 fetchImagesMatchingDescription:*(a1 + 40) forRequest:*(a1 + 32) completion:*(a1 + 48)];
LABEL_10:
}

void sub_19D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19D40(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_retainBlock(*(a1 + 40));
    v7 = v6;
    if (v6)
    {
      v8 = v6[2];
LABEL_4:
      v8();
    }
  }

  else
  {
    v9 = [WeakRetained nextCacheLevel];

    if (v9)
    {
      v10 = [v5 nextCacheLevel];
      [v10 getPrimaryImageForRequest:*(a1 + 32) completion:*(a1 + 40)];

      goto LABEL_8;
    }

    v11 = BCImageCacheLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "BICCacheLevel: No primary image for request: %@", &v14, 0xCu);
    }

    v13 = objc_retainBlock(*(a1 + 40));
    v7 = v13;
    if (v13)
    {
      v8 = v13[2];
      goto LABEL_4;
    }
  }

LABEL_8:
}

void sub_1A0AC(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1A398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nextCacheLevel];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1A488;
  v9[3] = &unk_2C83C0;
  v7 = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v12 = v6;
  v13 = *(a1 + 56);
  v8 = v3;
  [v4 _getSortedBestMatchesOf:v6 forRequest:v5 completion:v9];
}

void sub_1A488(uint64_t a1, void *a2)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  v5 = a2;
  if ([v4 count])
  {
    v6 = BCImageCacheLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1E4C78(v3, v6);
    }
  }

  v7 = [NSMutableArray arrayWithArray:*(a1 + 32)];
  [v7 addObjectsFromArray:v5];

  v8 = [*(a1 + 40) imageComparator];
  v9 = [v8 sortedBestMatchOf:*(a1 + 48) toCandidateImages:v7];

  (*(*(a1 + 56) + 16))();
}

void sub_1A7AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nextCacheLevel];

  if (v4)
  {
    v5 = [*(a1 + 32) nextCacheLevel];
    v6 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1A8C4;
    v9[3] = &unk_2C83E8;
    v9[4] = *(a1 + 32);
    v10 = v3;
    v11 = *(a1 + 40);
    [v5 gatherPrunableItemsForMedium:v6 withCompletion:v9];
  }

  else
  {
    v7 = objc_retainBlock(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, v3);
    }
  }
}

void sub_1A8C4(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] lowPriorityWorkQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A99C;
  block[3] = &unk_2C7B30;
  v7 = a1[5];
  v8 = v3;
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_1A99C(uint64_t a1)
{
  v4 = [*(a1 + 32) mutableCopy];
  [v4 addObjectsFromArray:*(a1 + 40)];
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, v4);
  }
}

void sub_1AB14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nextCacheLevel];

  if (v4)
  {
    v5 = [*(a1 + 32) nextCacheLevel];
    v6 = *(a1 + 56);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1AC38;
    v10[3] = &unk_2C83E8;
    v7 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v3;
    v12 = *(a1 + 48);
    [v5 gatherPrunableItemsWithIdentifier:v7 forMedium:v6 withCompletion:v10];
  }

  else
  {
    v8 = objc_retainBlock(*(a1 + 48));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, v3);
    }
  }
}

void sub_1AC38(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] lowPriorityWorkQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1AD10;
  block[3] = &unk_2C7B30;
  v7 = a1[5];
  v8 = v3;
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_1AD10(uint64_t a1)
{
  v4 = [*(a1 + 32) mutableCopy];
  [v4 addObjectsFromArray:*(a1 + 40)];
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, v4);
  }
}

void sub_1AE78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nextCacheLevel];

  if (v4)
  {
    v5 = [*(a1 + 32) nextCacheLevel];
    v6 = *(a1 + 56);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1AF9C;
    v10[3] = &unk_2C83E8;
    v7 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v3;
    v12 = *(a1 + 48);
    [v5 pruneItems:v7 forMedium:v6 withCompletion:v10];
  }

  else
  {
    v8 = objc_retainBlock(*(a1 + 48));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, v3);
    }
  }
}

void sub_1AF9C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] lowPriorityWorkQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1B074;
  block[3] = &unk_2C7B30;
  v7 = a1[5];
  v8 = v3;
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_1B074(uint64_t a1)
{
  v4 = [*(a1 + 32) mutableCopy];
  [v4 addObjectsFromArray:*(a1 + 40)];
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, v4);
  }
}

void sub_1B1CC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 48) & 1) != 0 || ([*(a1 + 32) nextCacheLevel], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v8 = objc_retainBlock(*(a1 + 40));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, v3);
    }
  }

  else
  {
    v5 = [*(a1 + 32) nextCacheLevel];
    v6 = *(a1 + 48);
    v7 = *(a1 + 49);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1B2F4;
    v10[3] = &unk_2C8460;
    v11 = v3;
    v12 = *(a1 + 40);
    [v5 _inventoryLevelOnly:v6 addLevelID:v7 completion:v10];
  }
}

void sub_1B2F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 mutableCopy];
  [v7 addObjectsFromArray:v4];

  v5 = objc_retainBlock(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void sub_1B438(uint64_t a1)
{
  v2 = [*(a1 + 32) nextCacheLevel];

  if (v2)
  {
    v3 = [*(a1 + 32) nextCacheLevel];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1B530;
    v6[3] = &unk_2C8398;
    v7 = *(a1 + 40);
    [v3 _clean:v6];
  }

  else
  {
    v4 = objc_retainBlock(*(a1 + 40));
    if (v4)
    {
      v5 = v4;
      v4[2]();
      v4 = v5;
    }
  }
}

void sub_1B530(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1BA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v28 - 128));
  _Unwind_Resume(a1);
}

void sub_1BA7C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(*(a1 + 32) + 16);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1BB44;
    v7[3] = &unk_2C8488;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_1BB44(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1BBCC;
  v2[3] = &unk_2C8548;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _saveHeatMapWithCompletion:v2];
}

void sub_1BBCC(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1BC18(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(*(a1 + 32) + 16);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1BCE0;
    v7[3] = &unk_2C8488;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_1BCEC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(*(a1 + 32) + 16);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1BDB4;
    v7[3] = &unk_2C8488;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_1BFE0(uint64_t a1)
{
  v2 = [*(a1 + 32) _predicateForTOCEntriesWithHref:*(a1 + 40)];
  v3 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsTOCEntry"];
  [v3 setPredicate:v2];
  v4 = *(a1 + 48);
  v19 = 0;
  v5 = [v4 executeFetchRequest:v3 error:&v19];
  v6 = v19;
  if (v6)
  {
LABEL_2:
    v7 = objc_retainBlock(*(a1 + 56));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0, v6);
    }

    goto LABEL_14;
  }

  if (![v5 count])
  {
    v17 = *(a1 + 40);
    if (v17)
    {
      v20 = @"href";
      v21 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    }

    else
    {
      v18 = 0;
    }

    v6 = [NSError errorWithDomain:@"BCReadingStatistics" code:1000 userInfo:v18];
    if (v17)
    {
    }

    goto LABEL_2;
  }

  v6 = [v5 firstObject];
  v22[0] = @"readProportion";
  v9 = [v6 proportionRead];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &off_2E5870;
  }

  v22[1] = @"totalCharacterCount";
  v23[0] = v11;
  v12 = [v6 cachedCharacterCount];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &off_2E5870;
  }

  v23[1] = v14;
  v8 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

  v15 = objc_retainBlock(*(a1 + 56));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v8, 0);
  }

LABEL_14:
}

void sub_1C2E4(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForTOCEntries];
  v3 = *(a1 + 40);
  v32 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v32];
  v5 = v32;
  if (v5)
  {
LABEL_2:
    v6 = objc_retainBlock(*(a1 + 48));
    v7 = v6;
    if (v6)
    {
      v8 = v6[2];
LABEL_17:
      v8();
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (![v4 count])
  {
    v5 = [NSError errorWithDomain:@"BCReadingStatistics" code:1000 userInfo:0];
    goto LABEL_2;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v27 = v4;
    v12 = 0;
    v13 = 0;
    v14 = *v29;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v16 cachedCharacterCount];
        v13 += [v17 integerValue];

        v18 = [v16 proportionRead];
        [v18 doubleValue];
        v20 = v19;
        v21 = [v16 cachedCharacterCount];
        [v21 doubleValue];
        v12 += llround(v20 * v22);
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v11);
    v23 = v12;
    v4 = v27;
  }

  else
  {
    v13 = 0;
    v23 = 0.0;
  }

  v33[0] = @"readProportion";
  v24 = [NSNumber numberWithDouble:v23 / v13];
  v33[1] = @"totalCharacterCount";
  v34[0] = v24;
  v25 = [NSNumber numberWithUnsignedInteger:v13];
  v34[1] = v25;
  v5 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];

  v26 = objc_retainBlock(*(a1 + 48));
  v7 = v26;
  if (v26)
  {
    v8 = v26[2];
    goto LABEL_17;
  }

LABEL_18:
}

void sub_1C668(id *a1)
{
  v2 = [a1[4] _fetchRequestForTOCEntries];
  v3 = [a1[5] executeFetchRequest:v2 error:0];
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 cfiStart];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 href];

          if (v13)
          {
            v14 = [v10 cfiStart];
            v15 = [v10 href];
            [v4 setObject:v14 forKey:v15];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = objc_retainBlock(a1[6]);
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, v4);
  }
}

void sub_1C8CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1C95C;
  v2[3] = &unk_2C85C0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _updateHeatMapWithCompletion:v2];
}

void sub_1C95C(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v2 = [*(a1 + 32) visibleCFIs];
  [v2 unionCFISet:*(a1 + 40)];
}

void sub_1CA54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1CAE4;
  v2[3] = &unk_2C85C0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _updateHeatMapWithCompletion:v2];
}

void sub_1CAE4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v2 = [*(a1 + 32) visibleCFIs];
  [v2 subtractCFISet:*(a1 + 40)];
}

void sub_1CF54(uint64_t a1)
{
  v2 = [*(a1 + 32) _predicateForTOCEntriesWithOrdinal:*(a1 + 64)];
  v3 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsTOCEntry"];
  v54 = [[NSSortDescriptor alloc] initWithKey:@"intraOrdinalOrder" ascending:1];
  v81 = v54;
  v4 = [NSArray arrayWithObjects:&v81 count:1];
  [v3 setSortDescriptors:v4];

  v56 = v2;
  [v3 setPredicate:v2];
  v5 = (a1 + 40);
  v55 = v3;
  v6 = [*(a1 + 40) executeFetchRequest:v3 error:0];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v74 objects:v80 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v75;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v75 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v74 + 1) + 8 * i) setCachedCharacterCount:0];
      }

      v8 = [v6 countByEnumeratingWithState:&v74 objects:v80 count:16];
    }

    while (v8);
  }

  v11 = [*(a1 + 32) _predicateForCharacterCountsWithOrdinal:*(a1 + 64)];
  v12 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsTextNode"];
  v53 = v11;
  [v12 setPredicate:v11];
  v60 = a1;
  v52 = v12;
  v13 = [*(a1 + 40) executeFetchRequest:v12 error:0];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v71;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v71 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*v5 deleteObject:*(*(&v70 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v70 objects:v79 count:16];
    }

    while (v15);
  }

  v18 = [*(a1 + 48) allKeys];
  v19 = [v18 sortedArrayUsingSelector:"compare:"];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v19;
  v57 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v57)
  {
    v20 = 0;
    v58 = *v67;
    do
    {
      v21 = 0;
      do
      {
        if (*v67 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v61 = v21;
        v22 = *(*(&v66 + 1) + 8 * v21);
        if (v20 < [v6 count])
        {
          v23 = 0;
          while (1)
          {
            v24 = [v6 objectAtIndexedSubscript:v20];

            v25 = [v24 cfiStart];

            if (v25)
            {
              v62 = v20;
              v26 = v22;
              v27 = [v24 cfiStart];
              v65 = 0;
              v28 = [BCCFI cfiWithString:v27 error:&v65];
              v29 = v65;

              if (v29)
              {
                v43 = v56;
                goto LABEL_51;
              }

              v30 = [v24 cfiEnd];
              if (!v30)
              {
                v22 = v26;
                if ([v26 compareTailToHead:v28] == &dword_0 + 1)
                {
                  v20 = v62;
                }

                else
                {
                  v34 = v24;
                  v24 = 0;
                  v20 = v62;
LABEL_40:
                }

                goto LABEL_42;
              }

              v31 = v30;
              v32 = v24;
              v33 = [v24 cfiEnd];
              v64 = 0;
              v34 = [BCCFI cfiWithString:v33 error:&v64];
              v29 = v64;

              if (v29)
              {

                v43 = v56;
                v24 = v32;
LABEL_51:

LABEL_53:
                v47 = v54;
                v46 = v55;
                v49 = v52;
                v48 = v53;
                v50 = objc_retainBlock(*(v60 + 56));
                if (v50)
                {
                  goto LABEL_54;
                }

                goto LABEL_55;
              }

              v22 = v26;
              if ([v26 compareTailToHead:v28] == &dword_0 + 1)
              {
                v20 = v62;
                v24 = v32;
                if (!v34 || [v22 compareHeadToTail:v34] == -1)
                {
                  goto LABEL_40;
                }
              }

              else
              {
                v20 = v62;
                v24 = v32;
                if (!v34)
                {
                  goto LABEL_36;
                }
              }

              if ([v22 compareHeadToTail:v34] == -1)
              {
LABEL_36:

                v34 = v24;
                v24 = 0;
                goto LABEL_40;
              }

              v24 = 0;
            }

            ++v20;
            v23 = v24;
            if (v20 >= [v6 count])
            {
              goto LABEL_42;
            }
          }
        }

        v24 = 0;
LABEL_42:
        v35 = v24;
        v36 = [NSEntityDescription insertNewObjectForEntityForName:@"BCReadingStatsTextNode" inManagedObjectContext:*(v60 + 40)];
        v37 = [*(v60 + 48) objectForKeyedSubscript:v22];
        v38 = [v22 string];
        [v36 setCfi:v38];

        [v36 setCharacterCount:v37];
        v39 = [NSNumber numberWithInteger:*(v60 + 64)];
        [v36 setOrdinal:v39];

        [v36 setTocEntry:v24];
        v40 = [v24 cachedCharacterCount];
        v41 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v40 integerValue] + objc_msgSend(v37, "integerValue"));
        [v35 setCachedCharacterCount:v41];

        v21 = v61 + 1;
      }

      while ((v61 + 1) != v57);
      v57 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
    }

    while (v57);
  }

  if (![*v5 hasChanges])
  {
    v29 = 0;
    v43 = v56;
    goto LABEL_53;
  }

  v42 = *v5;
  v63 = 0;
  [v42 save:&v63];
  v29 = v63;
  v43 = v56;
  if (v29)
  {
    v44 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_1E4D60();
    }

    v45 = v60;
  }

  else
  {
    v45 = v60;
    v44 = [*(v60 + 32) haveTextNodeLengthIndices];
    [v44 addIndex:*(v60 + 64)];
  }

  v51 = [*(v45 + 32) coalescedConnectOrdinals];
  [v51 signalWithCompletion:&stru_2C85E0];

  v50 = objc_retainBlock(*(v45 + 56));
  v47 = v54;
  v46 = v55;
  v49 = v52;
  v48 = v53;
  if (v50)
  {
LABEL_54:
    v50[2](v50, v29);
  }

LABEL_55:
}

void sub_1D7E8(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) _predicateForCharacterCountsWithOrdinal:*(a1 + 64)];
  v3 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsTextNode"];
  v45 = v2;
  [v3 setPredicate:v2];
  v4 = (v1 + 40);
  v44 = v3;
  v5 = [*(v1 + 40) executeFetchRequest:v3 error:0];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v54;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v54 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*v4 deleteObject:*(*(&v53 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v7);
  }

  v10 = [*(v1 + 48) count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = @"href";
    do
    {
      v14 = [*(v1 + 48) objectAtIndexedSubscript:v12];
      v15 = [v14 objectForKeyedSubscript:v13];
      v16 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsTOCEntry"];
      v17 = [NSPredicate predicateWithFormat:@"%K = %@", v13, v15];
      [v16 setPredicate:v17];

      v52 = 0;
      v49 = v16;
      v18 = [v16 execute:&v52];
      v47 = v52;
      v50 = v15;
      v46 = v18;
      if ([v18 count])
      {
        if ([v18 count] != &dword_0 + 1)
        {
          v19 = BCReadingStatisticsLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v36 = [v18 count];
            *buf = 138412546;
            v58 = v15;
            v59 = 2048;
            v60 = v36;
            _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Not expecting more than one TOC entry with href %@.  Have %lu", buf, 0x16u);
          }
        }

        v20 = [v18 firstObject];
      }

      else
      {
        v20 = [NSEntityDescription insertNewObjectForEntityForName:@"BCReadingStatsTOCEntry" inManagedObjectContext:*v4];
      }

      v21 = v20;
      v22 = [v14 objectForKeyedSubscript:@"cfiStart"];
      [v21 setCfiStart:v22];

      v48 = v12;
      v23 = v12 + 1;
      if (v12 + 1 < v11)
      {
        [*(v1 + 48) objectAtIndexedSubscript:v12 + 1];
        v24 = v13;
        v25 = v11;
        v27 = v26 = v1;
        v28 = [v27 objectForKeyedSubscript:@"cfiStart"];
        [v21 setCfiEnd:v28];

        v1 = v26;
        v11 = v25;
        v13 = v24;
      }

      v29 = [v14 objectForKeyedSubscript:v13];
      [v21 setHref:v29];

      v30 = [v14 objectForKeyedSubscript:@"name"];
      [v21 setName:v30];

      v31 = v14;
      v32 = [NSNumber numberWithInteger:*(v1 + 64)];
      [v21 setOrdinal:v32];

      v33 = [NSNumber numberWithUnsignedInteger:v48];
      [v21 setIntraOrdinalOrder:v33];

      v34 = [v21 proportionRead];

      if (!v34)
      {
        [v21 setProportionRead:&off_2E5870];
      }

      v35 = [*(v1 + 32) bookVersionString];
      [v21 setAssetVersion:v35];

      v12 = v23;
    }

    while (v11 != v23);
  }

  if ([*v4 hasChanges])
  {
    v37 = *v4;
    v51 = 0;
    [v37 save:&v51];
    v38 = v51;
    if (v38)
    {
      v39 = v38;
      v40 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1E4D60();
      }

      goto LABEL_28;
    }
  }

  if ([*(v1 + 48) count])
  {
    v40 = [*(v1 + 32) haveTOCCFIIndices];
    [v40 addIndex:*(v1 + 64)];
    v39 = 0;
LABEL_28:

    goto LABEL_30;
  }

  v39 = 0;
LABEL_30:
  [*(v1 + 32) _invalidateTOCEntryCFICache];
  v41 = [*(v1 + 32) coalescedConnectOrdinals];
  [v41 signalWithCompletion:&stru_2C8628];

  v42 = objc_retainBlock(*(v1 + 56));
  v43 = v42;
  if (v42)
  {
    (*(v42 + 2))(v42, v39);
  }
}

void sub_1DE20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained observers];
  [v2 addObject:*(a1 + 32)];
}

void sub_1DF4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained observers];
  [v2 removeObject:*(a1 + 32)];
}

int64_t sub_1E28C(id a1, NSArray *a2, NSArray *a3)
{
  v4 = a3;
  v5 = [(NSArray *)a2 objectAtIndexedSubscript:0];
  v6 = [(NSArray *)v4 objectAtIndexedSubscript:0];

  v7 = [v5 compareCFI:v6];
  return v7;
}

void sub_1E504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E52C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E544(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsTextNode"];
  v3 = [*(a1 + 32) _predicateForCharacterCountsWithOrdinal:*(a1 + 64)];
  [v2 setPredicate:v3];

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v21 = v6;
      v22 = v2;
      v11 = *v24;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v13 cachedCFI];
          if (!v14)
          {

            v7 = 0;
            goto LABEL_12;
          }

          v15 = v14;
          v16 = [v13 characterCount];
          v28[0] = v15;
          v28[1] = v16;
          v17 = [NSArray arrayWithObjects:v28 count:2];
          [v7 addObject:v17];
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v6 = v21;
      v2 = v22;
    }

    v18 = [v7 sortedArrayUsingComparator:&stru_2C8688];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

int64_t sub_1E770(id a1, NSArray *a2, NSArray *a3)
{
  v4 = a3;
  v5 = [(NSArray *)a2 objectAtIndexedSubscript:0];
  v6 = [(NSArray *)v4 objectAtIndexedSubscript:0];

  v7 = [v5 compareCFI:v6];
  return v7;
}

void sub_1E82C(id a1)
{
  v4 = +[NSBundle mainBundle];
  v1 = [v4 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  v2 = [v1 copy];
  v3 = qword_342138;
  qword_342138 = v2;
}

void sub_1ECBC(id *a1)
{
  [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsHeatMapEntry"];
  v25 = v2 = a1 + 4;
  v3 = [a1[4] executeFetchRequest:? error:?];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*v2 deleteObject:*(*(&v32 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v5);
  }

  v23 = a1;
  v24 = v3;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a1[5];
  v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (j = 0; j != v9; j = j + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * j);
        v13 = [NSEntityDescription insertNewObjectForEntityForName:@"BCReadingStatsHeatMapEntry" inManagedObjectContext:*v2];
        v14 = [v12 objectForKeyedSubscript:@"cfiString"];
        [v13 setCfi:v14];

        v15 = [v12 objectForKeyedSubscript:@"count"];
        [v13 setCount:v15];
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v9);
  }

  [a1[6] _updateAppVersionOnMOC:a1[4]];
  if ([a1[4] hasChanges])
  {
    v16 = *v2;
    v27 = 0;
    [v16 save:&v27];
    v17 = v27;
    v19 = v24;
    v18 = v25;
    if (v17)
    {
      v20 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1E4D60();
      }
    }
  }

  else
  {
    v17 = 0;
    v19 = v24;
    v18 = v25;
  }

  v21 = objc_retainBlock(v23[7]);
  v22 = v21;
  if (v21)
  {
    (*(v21 + 2))(v21, v17);
  }
}

void sub_1F1E0(id *a1)
{
  v51 = objc_alloc_init(BCCountedCFISet);
  v46 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsHeatMapEntry"];
  [a1[4] executeFetchRequest:v46 error:0];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  obj = v75 = 0u;
  v1 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v1)
  {
    v2 = *v75;
    while (2)
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v75 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v74 + 1) + 8 * i);
        v5 = [v4 cfi];
        v6 = [v4 count];
        [v6 doubleValue];
        v73 = 0;
        [(BCCountedCFISet *)v51 addCFIString:v5 count:&v73 error:?];
        v7 = v73;

        if (v7)
        {
          v12 = BCReadingStatisticsLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_1E4EA0(v4);
          }

          v51 = 0;
          v64 = 0;
          v65 = &v64;
          v66 = 0x2020000000;
          v67 = 0;
          goto LABEL_41;
        }
      }

      v1 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsTextNode"];
  [v8 setResultType:2];
  [v8 setReturnsDistinctResults:1];
  v82 = @"ordinal";
  v9 = [NSArray arrayWithObjects:&v82 count:1];
  [v8 setPropertiesToFetch:v9];

  v10 = a1[4];
  v72 = 0;
  v49 = [v10 executeFetchRequest:v8 error:&v72];
  v7 = v72;
  if (v7)
  {
    v11 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E4F38();
    }
  }

  else
  {
    v11 = +[NSMutableIndexSet indexSet];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v13 = v49;
    v14 = [v13 countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (v14)
    {
      v15 = *v69;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v69 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [*(*(&v68 + 1) + 8 * j) objectForKeyedSubscript:@"ordinal"];
          v18 = [v17 integerValue];

          [v11 addIndex:v18];
        }

        v14 = [v13 countByEnumeratingWithState:&v68 objects:v81 count:16];
      }

      while (v14);
    }

    [a1[5] setHaveTextNodeLengthIndices:v11];
  }

  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  if (!v7)
  {
    v19 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsTOCEntry"];
    [v19 setResultType:2];
    [v19 setReturnsDistinctResults:1];
    v80[0] = @"ordinal";
    v80[1] = @"cfiStart";
    v20 = [NSArray arrayWithObjects:v80 count:2];
    [v19 setPropertiesToFetch:v20];
    v45 = v19;

    v21 = a1[4];
    v63 = 0;
    v44 = [v21 executeFetchRequest:v19 error:&v63];
    v7 = v63;
    if (v7)
    {
      v50 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_1E4FA0();
      }
    }

    else
    {
      v50 = +[NSMutableIndexSet indexSet];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v22 = v44;
      v23 = [v22 countByEnumeratingWithState:&v59 objects:v79 count:16];
      if (v23)
      {
        v24 = *v60;
        do
        {
          for (k = 0; k != v23; k = k + 1)
          {
            if (*v60 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v59 + 1) + 8 * k);
            v27 = [v26 objectForKeyedSubscript:@"ordinal"];
            v28 = [v27 integerValue];

            v29 = [v26 objectForKeyedSubscript:@"cfiStart"];
            if ([v29 length])
            {
              [v50 addIndex:v28];
              if ((v28 + 1) > v65[3])
              {
                v30 = v28 + 1;
              }

              else
              {
                v30 = v65[3];
              }

              v65[3] = v30;
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v59 objects:v79 count:16];
        }

        while (v23);
      }

      [a1[5] setHaveTOCCFIIndices:v50];
    }
  }

LABEL_41:
  v31 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsAppVersion"];
  v78 = @"appVersion";
  v32 = [NSArray arrayWithObjects:&v78 count:1];
  [v31 setPropertiesToFetch:v32];

  v33 = a1[4];
  v58 = v7;
  v34 = [v33 executeFetchRequest:v31 error:&v58];
  v35 = v58;

  if (!v35 && [v34 count])
  {
    v36 = [a1[5] _appVersion];
    v37 = [v34 objectAtIndexedSubscript:0];
    v38 = [v37 appVersion];
    [v36 isEqualToString:v38];
  }

  v39 = a1[5];
  v40 = *(v39 + 2);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1F9A8;
  block[3] = &unk_2C8718;
  v53 = v51;
  v54 = v39;
  v57 = &v64;
  v41 = a1[6];
  v55 = v35;
  v56 = v41;
  v42 = v35;
  v43 = v51;
  dispatch_async(v40, block);

  _Block_object_dispose(&v64, 8);
}

void sub_1F9A8(uint64_t a1)
{
  v2 = [*(a1 + 40) heatMap];
  [*(a1 + 32) setMaximumCFICount:{objc_msgSend(v2, "maximumCFICount")}];

  [*(a1 + 32) setLengthProvider:*(a1 + 40)];
  v3 = [*(a1 + 32) maximumCFICount];
  v4 = *(*(*(a1 + 64) + 8) + 24);
  if (v3 <= 2 * v4)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = v3;
  }

  [*(a1 + 32) setMaximumCFICount:v5];
  [*(a1 + 40) setHeatMap:*(a1 + 32)];
  v6 = objc_retainBlock(*(a1 + 56));
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))(v6, *(a1 + 48));
    v6 = v7;
  }
}

void sub_1FD84(id *a1)
{
  v38 = [a1[4] _fetchRequestForTOCEntries];
  [a1[5] executeFetchRequest:? error:?];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v49 = 0u;
  v2 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v47;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v47 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v46 + 1) + 8 * i);
        v7 = a1[6];
        v8 = [v6 href];
        v9 = [v7 objectForKeyedSubscript:v8];

        if (v9)
        {
          v10 = [v9 objectForKeyedSubscript:@"readProportion"];
          [v10 doubleValue];
          v12 = v11;

          v13 = [v6 proportionRead];
          [v13 doubleValue];
          v15 = v14;

          if (v12 > v15)
          {
            v16 = [NSNumber numberWithDouble:v12];
            [v6 setProportionRead:v16];

            objc_opt_class();
            v17 = [v9 objectForKeyedSubscript:@"assetVersion"];
            v18 = BUDynamicCast();

            if (v18)
            {
              [v6 setAssetVersion:v18];
            }
          }

          v19 = a1[6];
          v20 = [v6 href];
          [v19 setObject:0 forKeyedSubscript:v20];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v3);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = a1[6];
  v21 = [v39 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v43;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v39);
        }

        v25 = *(*(&v42 + 1) + 8 * j);
        v26 = [a1[6] objectForKeyedSubscript:v25];
        v27 = [NSEntityDescription insertNewObjectForEntityForName:@"BCReadingStatsTOCEntry" inManagedObjectContext:a1[5]];
        [v27 setHref:v25];
        objc_opt_class();
        v28 = [v26 objectForKeyedSubscript:@"readProportion"];
        v29 = BUDynamicCast();
        [v27 setProportionRead:v29];

        objc_opt_class();
        v30 = [v26 objectForKeyedSubscript:@"assetVersion"];
        v31 = BUDynamicCast();
        [v27 setAssetVersion:v31];
      }

      v22 = [v39 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v22);
  }

  if ([a1[5] hasChanges])
  {
    v32 = a1[5];
    v41 = 0;
    [v32 save:&v41];
    v33 = v41;
    v34 = v38;
    if (v33)
    {
      v35 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1E4D60();
      }
    }
  }

  else
  {
    v33 = 0;
    v34 = v38;
  }

  v36 = objc_retainBlock(a1[7]);
  v37 = v36;
  if (v36)
  {
    (*(v36 + 2))(v36);
  }
}

void sub_202E8(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v5 = v2;
    v3 = [*(a1 + 32) heatMap];
    v4 = [v3 cfisWithMinimumCount:*(a1 + 48)];
    v5[2](v5, v4);

    v2 = v5;
  }
}

void sub_204B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained heatMap];
  v4 = *(a1 + 32);
  [*(a1 + 40) readingThreshold];
  [v3 updateWithCFISet:v4 minimumCount:?];

  v5 = [WeakRetained coalescedSave];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2058C;
  v6[3] = &unk_2C8398;
  v7 = *(a1 + 48);
  [v5 signalWithCompletion:v6];
}

void sub_2058C(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_20670(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v5 = v2;
    v3 = [*(a1 + 32) heatMap];
    v4 = [v3 copy];
    v5[2](v5, v4);

    v2 = v5;
  }
}

void sub_208A4(uint64_t a1)
{
  v6 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsTextNode"];
  v2 = [*(a1 + 32) executeFetchRequest:? error:?];
  v3 = [v2 sortedArrayUsingComparator:&stru_2C87D0];
  v4 = objc_retainBlock(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v3);
  }
}

int64_t sub_20960(id a1, BCReadingStatsTextNode *a2, BCReadingStatsTextNode *a3)
{
  v4 = a3;
  v5 = [(BCReadingStatsTextNode *)a2 cachedCFI];
  v6 = [(BCReadingStatsTextNode *)v4 cachedCFI];

  v7 = [v5 compareCFIHead:v6];
  return v7;
}

void sub_20AAC(id *a1)
{
  v5 = [a1[4] _fetchRequestForTOCEntries];
  v2 = [a1[5] executeFetchRequest:? error:?];
  v3 = objc_retainBlock(a1[6]);
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v2);
  }
}

void sub_2121C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21234(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForTOCEntries];
  [v2 setResultType:2];
  v8[0] = @"cfiStart";
  v8[1] = @"cfiEnd";
  v3 = [NSArray arrayWithObjects:v8 count:2];
  [v2 setPropertiesToFetch:v3];

  v4 = [*(a1 + 40) executeFetchRequest:v2 error:0];
  v5 = [v4 bu_arrayByInvokingBlock:&stru_2C8810];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

NSArray *__cdecl sub_2132C(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:@"cfiStart"];
  if (v3)
  {
    v14 = 0;
    v4 = [BCCFI cfiWithString:v3 error:&v14];
    v5 = v14;
    if (v5)
    {
      v6 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1E5008();
      }
    }
  }

  else
  {
    v4 = +[NSNull null];
    v5 = 0;
  }

  v7 = [(NSDictionary *)v2 objectForKeyedSubscript:@"cfiEnd"];
  if (v7)
  {
    v13 = 0;
    v8 = [BCCFI cfiWithString:v7 error:&v13];
    v9 = v13;

    if (v9)
    {
      v10 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1E50A0();
      }
    }
  }

  else
  {
    v8 = +[NSNull null];
    v9 = v5;
  }

  v11 = 0;
  if (v4 && v8)
  {
    v15[0] = v4;
    v15[1] = v8;
    v11 = [NSArray arrayWithObjects:v15 count:2];
  }

  return v11;
}

void sub_21668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

int64_t sub_21680(id a1, BCCFI *a2, NSArray *a3)
{
  v4 = a2;
  v5 = [(NSArray *)a3 objectAtIndexedSubscript:1];
  v6 = +[NSNull null];
  if (v5 == v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = [(BCCFI *)v4 compareCFITail:v5];
  }

  return v7;
}

void sub_21708(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14 = a2;
  v8 = a3;
  objc_opt_class();
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = BUDynamicCast();

  objc_opt_class();
  v11 = [v8 objectAtIndexedSubscript:1];

  v12 = BUDynamicCast();

  if ([v14 compareTailToHead:v10] == &dword_0 + 1 && (!v12 || objc_msgSend(v14, "compareHeadToTail:", v12) == -1))
  {
    v13 = [*(a1 + 32) tocEntriesRequiringProcessing];
    [v13 addIndex:a5];

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_219A8(id *a1)
{
  v2 = [a1[4] _fetchRequestForTOCEntries];
  v57 = [a1[5] executeFetchRequest:v2 error:0];
  v3 = [a1[6] count];
  v4 = +[NSMutableArray array];
  if (v3)
  {
    v55 = a1 + 5;
    v64 = 0;
    v5 = [a1[7] firstIndex];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = v5;
      *&v6 = 134218752;
      v54 = v6;
      do
      {
        v58 = v19;
        v20 = [v57 objectAtIndexedSubscript:{v19, v54}];
        v21 = [v20 proportionRead];
        [v21 doubleValue];
        v23 = v22;

        [v20 setProportionRead:0];
        v24 = [v20 textNodes];
        v25 = [v24 allObjects];
        v26 = [v25 sortedArrayUsingComparator:&stru_2C88E0];

        v27 = [v26 count];
        if (v27)
        {
          v28 = v27;
          for (i = 0; i != v28; ++i)
          {
            v30 = [v26 objectAtIndexedSubscript:i];
            [v30 setReadingCount:&off_2E5870];
          }

          [a1[4] _slideIterateSortedArray:v26 andArray:a1[6] index1:0 index2:&v64 comparator:&stru_2C8920 executing:&stru_2C8960];
          v31 = 0;
          for (j = 0; j != v28; ++j)
          {
            v33 = [v26 objectAtIndexedSubscript:j];
            v34 = [v33 readingCount];
            [v34 doubleValue];
            v36 = v35;
            [a1[4] readingThreshold];
            v38 = v37;

            if (v36 > v38)
            {
              v39 = [v33 characterCount];
              v31 += [v39 integerValue];
            }
          }
        }

        else
        {
          [a1[4] _slideIterateSortedArray:v26 andArray:a1[6] index1:0 index2:&v64 comparator:&stru_2C8920 executing:&stru_2C8960];
          v31 = 0;
        }

        v40 = [v20 cachedCharacterCount];
        v41 = [v40 unsignedIntegerValue];

        if (v41)
        {
          v42 = v31 / v41;
        }

        else
        {
          v42 = 0.0;
        }

        v43 = BCReadingStatisticsLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v52 = [v20 cachedCharacterCount];
          v53 = [v52 unsignedIntegerValue];
          *buf = v54;
          v69 = v31;
          v70 = 2048;
          v71 = v53;
          v72 = 2048;
          v73 = v58 + 1;
          v74 = 2048;
          v75 = v42 * 100.0;
          _os_log_debug_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "read %lu characters of %lu in chapter %lu, %.1lf%%", buf, 0x2Au);
        }

        v44 = [NSNumber numberWithDouble:v42];
        [v20 setProportionRead:v44];

        if (llround(v23 * v41) != v31)
        {
          v66[0] = @"oldReadCharacterCount";
          v56 = [NSNumber numberWithUnsignedInteger:?];
          v67[0] = v56;
          v66[1] = @"newReadCharacterCount";
          v45 = [NSNumber numberWithUnsignedInteger:v31];
          v67[1] = v45;
          v66[2] = @"oldReadProportion";
          v46 = [NSNumber numberWithDouble:v23];
          v67[2] = v46;
          v66[3] = @"newReadProportion";
          v47 = [NSNumber numberWithDouble:v42];
          v67[3] = v47;
          v66[4] = @"tocEntryHref";
          v48 = [v20 href];
          v67[4] = v48;
          v49 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:5];

          [v4 addObject:v49];
        }

        v50 = v64;
        v51 = [a1[6] count];

        if (v50 >= v51)
        {
          break;
        }

        v19 = [a1[7] indexGreaterThanIndex:v58];
      }

      while (v19 != 0x7FFFFFFFFFFFFFFFLL);
    }

    if ([*v55 hasChanges])
    {
      v7 = *v55;
      v63 = 0;
      [v7 save:&v63];
      v8 = v63;
      if (v8)
      {
        v9 = v8;
        v10 = BCReadingStatisticsLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1E4D60();
        }
      }
    }
  }

  [a1[7] removeAllIndexes];
  if ([v4 count])
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v11 = [a1[4] observers];
    v12 = [v11 countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v60;
      do
      {
        for (k = 0; k != v13; k = k + 1)
        {
          if (*v60 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v59 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [v16 readingStatisticsDidChangeOnController:a1[4] changes:v4];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v13);
    }
  }

  v17 = objc_retainBlock(a1[8]);
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17);
  }
}

int64_t sub_21FD8(id a1, BCReadingStatsTextNode *a2, BCReadingStatsTextNode *a3)
{
  v4 = a3;
  v5 = [(BCReadingStatsTextNode *)a2 cachedCFI];
  v6 = [(BCReadingStatsTextNode *)v4 cachedCFI];

  v7 = [v5 compareCFIHead:v6];
  return v7;
}

int64_t sub_22048(id a1, BCReadingStatsTextNode *a2, NSDictionary *a3)
{
  v4 = a3;
  v5 = [(BCReadingStatsTextNode *)a2 cachedCFI];
  v6 = [(NSDictionary *)v4 objectForKeyedSubscript:@"cfi"];

  v7 = [v5 compareCFITail:v6];
  return v7;
}

void sub_220C4(id a1, BCReadingStatsTextNode *a2, NSDictionary *a3, unint64_t a4, unint64_t a5)
{
  v18 = a2;
  v6 = a3;
  v7 = [(BCReadingStatsTextNode *)v18 cachedCFI];
  v8 = [(NSDictionary *)v6 objectForKeyedSubscript:@"cfi"];
  v9 = [v7 intersectWithCFI:v8];
  if ([v9 isRange])
  {
    v10 = [v7 characterCountIfComputable];
    v11 = [v9 characterCountIfComputable] / v10;
    v12 = [(NSDictionary *)v6 objectForKeyedSubscript:@"count"];
    [v12 doubleValue];
    v14 = v13;

    v15 = [(BCReadingStatsTextNode *)v18 readingCount];
    [v15 doubleValue];
    v17 = [NSNumber numberWithDouble:v16 + v11 * v14];
    [(BCReadingStatsTextNode *)v18 setReadingCount:v17];
  }
}

void sub_222D0(uint64_t a1)
{
  v2 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
  v3 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsTextNode"];
  v98 = [[NSSortDescriptor alloc] initWithKey:@"ordinal" ascending:0];
  v132 = v98;
  v4 = [NSArray arrayWithObjects:&v132 count:1];
  [v3 setSortDescriptors:v4];

  [v3 setResultType:2];
  [v3 setReturnsDistinctResults:1];
  v131 = @"ordinal";
  v5 = v3;
  v6 = [NSArray arrayWithObjects:&v131 count:1];
  [v3 setPropertiesToFetch:v6];

  [v3 setFetchLimit:1];
  [v3 setFetchOffset:0];
  v7 = *(a1 + 32);
  v123 = 0;
  v8 = [v7 executeFetchRequest:v3 error:&v123];
  v9 = v123;
  if (v9)
  {
    v10 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E5138();
    }

    goto LABEL_5;
  }

  if ([v8 count])
  {
    v92 = v5;
    objc_opt_class();
    objc_opt_class();
    v91 = v8;
    v13 = [v8 firstObject];
    v14 = BUDynamicCast();
    v15 = [v14 objectForKeyedSubscript:@"ordinal"];
    v16 = BUDynamicCast();
    v17 = [v16 unsignedIntegerValue];

    v12 = objc_opt_new();
    v18 = objc_opt_new();
    v19 = [*(a1 + 40) _fetchRequestForTOCEntries];
    v20 = *(a1 + 32);
    v122[1] = 0;
    v90 = v19;
    v21 = [v20 executeFetchRequest:? error:?];
    v22 = 0;
    if (v22)
    {
      v9 = v22;
      v23 = v21;
      v24 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1E51A0();
      }

      v25 = objc_retainBlock(*(a1 + 48));
      v8 = v91;
      v5 = v92;
      v26 = v90;
      if (!v25)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v97 = v17;
    v27 = [v21 count];
    v94 = v12;
    v95 = a1;
    v93 = v18;
    v96 = v21;
    if ([v21 count] && v27)
    {
      v28 = v21;
      v29 = 0;
      while (1)
      {
        v30 = [v28 objectAtIndexedSubscript:v29];
        v31 = [v30 cfiStart];
        if (v31)
        {
          break;
        }

        v32 = [v30 cfiEnd];

        if (v32)
        {
          goto LABEL_21;
        }

        ++v29;
LABEL_30:

        if (v29 == v27)
        {
          goto LABEL_33;
        }
      }

LABEL_21:
      if (++v29 < v27)
      {
        v33 = [v28 objectAtIndexedSubscript:v29];
        v34 = [v33 cfiStart];
        [v30 setCfiEnd:v34];
      }

      v35 = [v30 ordinal];
      v36 = [v30 intraOrdinalOrder];
      v37 = [v36 integerValue];

      if (!v37)
      {
        [v12 setObject:v30 forKeyedSubscript:v35];
      }

      v38 = [v18 objectForKeyedSubscript:v35];
      if (!v38 || (v39 = v38, [v30 intraOrdinalOrder], v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectForKeyedSubscript:", v35), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "intraOrdinalOrder"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v40, "compare:", v42), v42, a1 = v95, v41, v40, v39, v44 = v43 == &dword_0 + 1, v18 = v93, v12 = v94, v44))
      {
        [v18 setObject:v30 forKeyedSubscript:v35];
      }

      v28 = v96;
      goto LABEL_30;
    }

LABEL_33:
    v103 = 0;
    v45 = 0;
    v46 = v97;
    while (1)
    {
      v47 = [*(a1 + 40) _predicateForCharacterCountsWithOrdinal:v45];
      v48 = [v2[199] fetchRequestWithEntityName:@"BCReadingStatsTextNode"];
      v101 = v47;
      [v48 setPredicate:v47];
      v49 = *(a1 + 32);
      v122[0] = v103;
      v100 = v48;
      v102 = [v49 executeFetchRequest:v48 error:v122];
      v50 = v122[0];

      if (v50)
      {
        v73 = BCReadingStatisticsLog();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          sub_1E5208(v50, v45, v73);
        }

        v103 = v50;
LABEL_69:
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        obja = v96;
        v74 = [obja countByEnumeratingWithState:&v112 objects:v125 count:16];
        v75 = v103;
        if (v74)
        {
          v76 = v74;
          v77 = *v113;
          do
          {
            for (i = 0; i != v76; i = i + 1)
            {
              if (*v113 != v77)
              {
                objc_enumerationMutation(obja);
              }

              v79 = *(*(&v112 + 1) + 8 * i);
              v108 = 0u;
              v109 = 0u;
              v110 = 0u;
              v111 = 0u;
              v80 = [v79 textNodes];
              v81 = [v80 countByEnumeratingWithState:&v108 objects:v124 count:16];
              if (v81)
              {
                v82 = v81;
                v83 = 0;
                v84 = *v109;
                do
                {
                  for (j = 0; j != v82; j = j + 1)
                  {
                    if (*v109 != v84)
                    {
                      objc_enumerationMutation(v80);
                    }

                    v86 = [*(*(&v108 + 1) + 8 * j) characterCount];
                    v83 += [v86 unsignedIntegerValue];
                  }

                  v82 = [v80 countByEnumeratingWithState:&v108 objects:v124 count:16];
                }

                while (v82);
              }

              else
              {
                v83 = 0;
              }

              v87 = [NSNumber numberWithUnsignedInteger:v83];
              [v79 setCachedCharacterCount:v87];

              v75 = v103;
            }

            v76 = [obja countByEnumeratingWithState:&v112 objects:v125 count:16];
          }

          while (v76);
        }

        if ([*(v95 + 32) hasChanges])
        {
          v88 = *(v95 + 32);
          v107 = v75;
          [v88 save:&v107];
          v9 = v107;

          v5 = v92;
          v18 = v93;
          v12 = v94;
          v26 = v90;
          v23 = v96;
          if (v9)
          {
            v89 = BCReadingStatisticsLog();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              sub_1E5280();
            }
          }
        }

        else
        {
          v9 = v75;
          v5 = v92;
          v18 = v93;
          v12 = v94;
          v26 = v90;
          v23 = v96;
        }

        v25 = objc_retainBlock(*(v95 + 48));
        v8 = v91;
        if (!v25)
        {
LABEL_13:

          goto LABEL_14;
        }

LABEL_12:
        v25[2](v25);
        goto LABEL_13;
      }

      v51 = [NSNumber numberWithUnsignedInteger:v45];
      v52 = [v12 objectForKeyedSubscript:v51];

      if (v45 - 1 < 0)
      {
        v104 = 0;
      }

      else
      {
        v53 = v2;
        v54 = v45;
        while (1)
        {
          v55 = [NSNumber numberWithInteger:--v54];
          v56 = [v18 objectForKeyedSubscript:v55];

          if (v56)
          {
            break;
          }

          if (v54 <= 0)
          {
            v104 = 0;
            goto LABEL_42;
          }
        }

        v104 = v56;
LABEL_42:
        v46 = v97;
        v2 = v53;
      }

      v99 = v45;
      v57 = v52;
      if (!v52)
      {
        break;
      }

      v58 = [v52 cfiStart];
      v121 = 0;
      obj = [BCCFI cfiWithString:v58 error:&v121];
      v59 = v121;

      v103 = v59;
      if (!v59)
      {
        goto LABEL_48;
      }

      v60 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = [v52 cfiStart];
        *buf = 138412546;
        v127 = v61;
        v128 = 2112;
        v129 = v103;
        _os_log_error_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "_connectOrdinalsWithCompletion Unable form CFI with string %@.  Error=%@", buf, 0x16u);
      }

LABEL_64:

      v45 = v99 + 1;
      if (v99 + 1 > v46)
      {
        goto LABEL_69;
      }
    }

    obj = 0;
LABEL_48:
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v60 = v102;
    v62 = [v60 countByEnumeratingWithState:&v117 objects:v130 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = 0;
      v65 = *v118;
      do
      {
        for (k = 0; k != v63; k = k + 1)
        {
          if (*v118 != v65)
          {
            objc_enumerationMutation(v60);
          }

          v67 = *(*(&v117 + 1) + 8 * k);
          v68 = [v67 cfi];
          v116 = 0;
          v69 = [BCCFI cfiWithString:v68 error:&v116];
          v70 = v116;

          v64 = v70;
          if (v70)
          {
            v71 = BCReadingStatisticsLog();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              v72 = [v67 cfi];
              *buf = 138412546;
              v127 = v72;
              v128 = 2112;
              v129 = v64;
              _os_log_error_impl(&dword_0, v71, OS_LOG_TYPE_ERROR, "_connectOrdinalsWithCompletion Unable form CFI with string %@.  Error=%@", buf, 0x16u);
            }
          }

          else if (!v52 || [v69 compareCFIHead:obj] == -1)
          {
            [v67 setTocEntry:v104];
          }
        }

        v63 = [v60 countByEnumeratingWithState:&v117 objects:v130 count:16];
      }

      while (v63);
      v103 = v64;
      v12 = v94;
      a1 = v95;
      v18 = v93;
      v2 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
      v46 = v97;
      v57 = v52;
    }

    else
    {
      v103 = 0;
      v46 = v97;
    }

    goto LABEL_64;
  }

LABEL_5:
  v11 = objc_retainBlock(*(a1 + 48));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11);
  }

LABEL_14:
}

void sub_231D0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_23210(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_23B04(id a1)
{
  qword_342148 = objc_opt_new();

  _objc_release_x1();
}

void sub_23EDC(uint64_t a1)
{
  v3 = [*(a1 + 32) _bookIdentifierFromAssetID:*(a1 + 40)];
  v2 = [*(a1 + 32) _contextWithID:?];
  if (v2)
  {
    [*(*(a1 + 32) + 32) removeContext:v2];
    [*(a1 + 32) _saveChanges];
  }

  [*(*(a1 + 32) + 40) removeAllObjects];
  [*(*(a1 + 32) + 48) removeAllObjects];
  [*(*(a1 + 32) + 56) removeAllObjects];
  [*(*(a1 + 32) + 64) removeAllObjects];
  [*(*(a1 + 32) + 72) removeAllObjects];
  [*(*(a1 + 32) + 80) removeAllObjects];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_24094(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BCProgressKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1E5330();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24570(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24588(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = BCProgressKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E53CC();
    }
  }

  else
  {
    v7 = [a2 firstObject];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_24D60(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  [a2 doubleValue];
  v9 = v8;
  [v7 doubleValue];
  v11 = v10;

  [v5 _updateContext:v6 withScore:v9 maxScore:v11];
  v12 = *(a1 + 32);

  return [v12 _resignActiveContext];
}

void sub_25128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25140(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

void sub_252A4(uint64_t a1)
{
  v2 = BCProgressKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1E54F8(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  if ([*(a1 + 40) _isBookOpen:*(a1 + 32)])
  {
    v41 = [*(a1 + 40) _getOpenBookContext:*(a1 + 32)];
    if (v41)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = *(a1 + 48);
      v43 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
      if (v43)
      {
        v42 = *v60;
        do
        {
          v9 = 0;
          do
          {
            if (*v60 != v42)
            {
              v10 = v9;
              objc_enumerationMutation(obj);
              v9 = v10;
            }

            v44 = v9;
            v11 = *(*(&v59 + 1) + 8 * v9);
            v45 = [v11 objectForKeyedSubscript:@"uniqueID"];
            v48 = [*(a1 + 40) _chapterIdentifierFromAssetID:*(a1 + 32) chapterID:v45];
            v47 = [v11 objectForKeyedSubscript:@"title"];
            v46 = [v11 objectForKeyedSubscript:@"displayOrder"];
            v12 = [*(a1 + 40) _contextWithID:v48];
            v13 = *(a1 + 40);
            v14 = *(a1 + 32);
            v15 = [v11 objectForKeyedSubscript:@"cfi"];
            v49 = [v13 _universalLinkFromAssetID:v14 cfi:v15];

            v16 = BCProgressKitLog();
            v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
            if (v12)
            {
              if (v17)
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v45;
                _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "buildContextTree: updating chapter %@", &buf, 0xCu);
              }

              v18 = [v12 title];
              v19 = [v18 isEqualToString:v47];

              if ((v19 & 1) == 0)
              {
                [v12 setTitle:v47];
              }

              v20 = [v12 displayOrder];
              if (v20 != [v46 integerValue])
              {
                [v12 setDisplayOrder:{objc_msgSend(v46, "integerValue")}];
              }

              if (v49)
              {
                v21 = [v12 universalLinkURL];
                v22 = [v49 isEqual:v21];

                if ((v22 & 1) == 0)
                {
                  [v12 setUniversalLinkURL:v49];
                }
              }
            }

            else
            {
              if (v17)
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v45;
                _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "buildContextTree: creating chapter %@", &buf, 0xCu);
              }

              v12 = [[CLSContext alloc] initWithType:2 identifier:v48 title:v47];
              v23 = [v41 contentStoreIdentifier];
              [v12 setContentStoreIdentifier:v23];

              [v12 setDisplayOrder:{objc_msgSend(v46, "integerValue")}];
              [v12 setUniversalLinkURL:v49];
              v24 = [*(a1 + 40) standardProgressCapability];
              [v12 addProgressReportingCapabilities:v24];

              [v41 addChildContext:v12];
            }

            v25 = [NSPredicate predicateWithFormat:@"%K = %@", CLSPredicateKeyPathParent, v12];
            *&buf = 0;
            *(&buf + 1) = &buf;
            v65 = 0x3032000000;
            v66 = sub_24570;
            v67 = sub_24580;
            v68 = 0;
            v26 = dispatch_semaphore_create(0);
            v27 = [*(a1 + 40) progressKitDataStore];
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_259A8;
            v56[3] = &unk_2C8A48;
            p_buf = &buf;
            v28 = v26;
            v57 = v28;
            [v27 contextsMatchingPredicate:v25 completion:v56];

            v29 = dispatch_time(0, 1000000000);
            if (dispatch_semaphore_wait(v28, v29))
            {
              v30 = BCProgressKitLog();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                sub_1E5568(&v54, v55, v30);
              }
            }

            if ([*(*(&buf + 1) + 40) count])
            {
              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              v31 = *(*(&buf + 1) + 40);
              v32 = [v31 countByEnumeratingWithState:&v50 objects:v63 count:16];
              if (v32)
              {
                v33 = *v51;
                do
                {
                  for (i = 0; i != v32; i = i + 1)
                  {
                    if (*v51 != v33)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v35 = *(*(&v50 + 1) + 8 * i);
                    if ([v35 type] == &dword_0 + 3)
                    {
                      v36 = [*(a1 + 40) progressKitDataStore];
                      [v36 removeContext:v35];
                    }
                  }

                  v32 = [v31 countByEnumeratingWithState:&v50 objects:v63 count:16];
                }

                while (v32);
              }
            }

            _Block_object_dispose(&buf, 8);
            v9 = v44 + 1;
          }

          while ((v44 + 1) != v43);
          v43 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
        }

        while (v43);
      }

      [*(a1 + 40) _saveChanges];
    }

    else
    {
      v37 = BCProgressKitLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1E55A8();
      }
    }
  }

  v38 = objc_retainBlock(*(a1 + 56));
  v39 = v38;
  if (v38)
  {
    (*(v38 + 2))(v38, 0);
  }
}

void sub_259A8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_25AEC(uint64_t a1)
{
  v9 = [*(a1 + 32) _bookIdentifierFromAssetID:*(a1 + 40)];
  v2 = [*(a1 + 32) _contextWithID:?];
  if (!v2)
  {
    v3 = [[CLSContext alloc] initWithType:11 identifier:v9 title:*(a1 + 48)];
    v4 = [*(*(a1 + 32) + 32) mainAppContext];
    [v4 addChildContext:v3];

    [v3 setContentStoreIdentifier:*(a1 + 40)];
    v5 = [NSURL bu_urlWithAssetID:*(a1 + 40)];
    [v3 setUniversalLinkURL:v5];

    [*(a1 + 32) _saveChanges];
    v2 = [*(a1 + 32) _contextWithID:v9];

    v6 = [*(a1 + 32) standardProgressCapability];
    [v2 addProgressReportingCapabilities:v6];
  }

  v7 = objc_retainBlock(*(a1 + 56));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v2, 0);
  }
}

void sub_25CD8(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v4 = v2;
    v3 = [*(*(a1 + 32) + 32) activeContext];
    v4[2](v4, v3);

    v2 = v4;
  }
}

void sub_25EB8(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _bookIdentifierFromAssetID:*(a1 + 40)];
  if ([*(v2 - 1) _isBookOpen:*v2])
  {
    v4 = 0;
    goto LABEL_20;
  }

  v5 = [*(a1 + 32) _contextWithID:v3];
  if (v5)
  {
    v6 = v5;
LABEL_8:
    v12 = [v6 title];
    v13 = [v12 isEqualToString:*(a1 + 48)];

    if ((v13 & 1) == 0)
    {
      [v6 setTitle:*(a1 + 48)];
    }

    [v6 setThumbnail:{objc_msgSend(*(a1 + 64), "CGImage")}];
    v14 = *(a1 + 80);
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = 0;
    }

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(a1 + 80);
    }

    v17 = [BCProgressKitProgressInfo alloc];
    v18 = [v6 identifier];
    v19 = [(BCProgressKitProgressInfo *)v17 initWithIdentifier:v18 pageRange:v15, v16];

    v20 = [*(a1 + 32) openBooks];
    [v20 setObject:v19 forKey:*(a1 + 40)];

    [*(a1 + 32) _becomeActiveOnContext:v6];
    [*(a1 + 32) _saveChanges];

    v4 = v6;
    goto LABEL_17;
  }

  v7 = BCProgressKitLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1E55DC();
  }

  v8 = [[CLSContext alloc] initWithType:11 identifier:v3 title:*(a1 + 48)];
  v9 = [*(*(a1 + 32) + 32) mainAppContext];
  [v9 addChildContext:v8];

  [v8 setContentStoreIdentifier:*(a1 + 56)];
  v10 = [NSURL bu_urlWithAssetID:*(a1 + 40)];
  [v8 setUniversalLinkURL:v10];

  [v8 setThumbnail:{objc_msgSend(*(a1 + 64), "CGImage")}];
  v11 = [*(a1 + 32) standardProgressCapability];
  [v8 addProgressReportingCapabilities:v11];

  [*(a1 + 32) _saveChanges];
  v6 = [*(a1 + 32) _contextWithID:v3];

  if (v6)
  {
    goto LABEL_8;
  }

  v4 = 0;
LABEL_17:
  v21 = BCProgressKitLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_1E5660();
  }

LABEL_20:
  v22 = objc_retainBlock(*(a1 + 72));
  v23 = v22;
  if (v22)
  {
    (*(v22 + 2))(v22, v4);
  }
}

void sub_262C4(uint64_t a1)
{
  if ([*(a1 + 32) _isBookOpen:*(a1 + 40)])
  {
    v2 = [*(a1 + 32) _getOpenBookContext:*(a1 + 40)];
    if (v2)
    {
      v3 = [*(a1 + 32) _updateCurrentChapterProgressForBook:*(a1 + 40)];
      [*(a1 + 32) _resignActiveContext];
      v4 = [*(a1 + 32) readingStatisticsControllers];
      v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

      if (v5)
      {
        [v5 removeObserver:*(a1 + 32)];
        v6 = [*(a1 + 32) readingStatisticsControllers];
        [v6 removeObjectForKey:*(a1 + 40)];
      }

      [*(a1 + 32) _saveChanges];
    }

    else
    {
      v8 = BCProgressKitLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1E56C8();
      }

      v3 = 0;
    }

    v9 = [*(a1 + 32) activeChapters];
    v10 = [v9 objectForKeyedSubscript:*(a1 + 40)];

    if (v10)
    {
      v11 = [*(a1 + 32) _getActiveChapterContext:*(a1 + 40)];
      v12 = [v11 currentActivity];
      [v12 stop];

      v13 = [*(a1 + 32) activeChapters];
      [v13 removeObjectForKey:*(a1 + 40)];
    }

    v14 = [*(a1 + 32) activeSections];
    v15 = [v14 objectForKeyedSubscript:*(a1 + 40)];

    if (v15)
    {
      v16 = [*(a1 + 32) _getActiveSectionContext:*(a1 + 40)];
      v17 = [v16 currentActivity];
      [v17 stop];

      v18 = [*(a1 + 32) activeSections];
      [v18 removeObjectForKey:*(a1 + 40)];
    }

    v19 = [*(a1 + 32) activeWidgets];
    v20 = [v19 objectForKeyedSubscript:*(a1 + 40)];

    if (v20)
    {
      v21 = [*(a1 + 32) _getActiveWidgetContext:*(a1 + 40)];
      v22 = [v21 currentActivity];
      [v22 stop];

      v23 = [*(a1 + 32) activeWidgets];
      [v23 removeObjectForKey:*(a1 + 40)];
    }

    v24 = [*(a1 + 32) activeTrackingProviders];
    [v24 removeObjectForKey:*(a1 + 40)];

    v25 = [*(a1 + 32) openBooks];
    [v25 removeObjectForKey:*(a1 + 40)];

    if (v3)
    {
      v26 = BCProgressKitLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1E56FC();
      }
    }

    v27 = objc_retainBlock(*(a1 + 48));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, v3);
    }
  }

  else
  {
    v7 = objc_retainBlock(*(a1 + 48));
    if (v7)
    {
      v29 = v7;
      (*(v7 + 2))(v7, 0);
      v7 = v29;
    }
  }
}

void sub_266D8(uint64_t a1)
{
  v2 = (a1 + 40);
  if ([*(a1 + 32) _isBookOpen:*(a1 + 40)])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_24570;
    v35 = sub_24580;
    v36 = 0;
    v3 = [*(a1 + 32) _getOpenBookContext:*(a1 + 40)];
    if (v3)
    {
      v4 = [*(a1 + 32) readingStatisticsControllers];
      v5 = [v4 objectForKeyedSubscript:*v2];

      if (v5)
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x3032000000;
        v28 = sub_24570;
        v29 = sub_24580;
        v30 = 0;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_26AD4;
        v21[3] = &unk_2C8AE8;
        v23 = &v31;
        v24 = &v25;
        v6 = dispatch_semaphore_create(0);
        v22 = v6;
        [v5 bookStatisticsWithCompletion:v21];
        v7 = dispatch_time(0, 1000000000);
        if (dispatch_semaphore_wait(v6, v7))
        {
          v8 = BCProgressKitLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_1E576C();
          }
        }

        if (!v32[5])
        {
          v9 = *(a1 + 32);
          [v26[5] doubleValue];
          [v9 _updateContext:v3 withProgress:?];
        }

        _Block_object_dispose(&v25, 8);
      }

      else
      {
        v11 = [*(a1 + 32) openBooks];
        v12 = [v11 objectForKeyedSubscript:*v2];

        [v12 setCurrentPage:*(a1 + 56)];
        if ([v12 isProgressValid])
        {
          v13 = *(a1 + 32);
          [v12 progress];
          [v13 _updateContext:v3 withProgress:?];
        }

        else
        {
          v14 = BCProgressKitLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1E57A0();
          }
        }
      }

      if (v32[5] || ([*(a1 + 32) _updateCurrentChapterProgressForBook:*(a1 + 40)], v15 = objc_claimAutoreleasedReturnValue(), v16 = v32[5], v32[5] = v15, v16, v32[5]))
      {
        v17 = BCProgressKitLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1E57D4();
        }
      }
    }

    else
    {
      v5 = BCProgressKitLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1E584C();
      }
    }

    v18 = objc_retainBlock(*(a1 + 48));
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, v32[5]);
    }

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v10 = objc_retainBlock(*(a1 + 48));
    if (v10)
    {
      v20 = v10;
      (*(v10 + 2))(v10, 0);
      v10 = v20;
    }
  }
}

void sub_26A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26AD4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [v9 objectForKeyedSubscript:@"readProportion"];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_26CEC(uint64_t a1)
{
  if ([*(a1 + 32) _isBookOpen:*(a1 + 40)])
  {
    v2 = [*(a1 + 32) _chapterIdentifierFromAssetID:*(a1 + 40) chapterID:*(a1 + 48)];
    v3 = [*(a1 + 32) _getActiveChapterContext:*(a1 + 40)];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 identifier];
      v6 = [v5 isEqualToString:v2];

      if (v6)
      {
        v7 = [*(a1 + 32) activeChapters];
        v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

        [v8 setCurrentPage:*(a1 + 88)];
        v9 = [*(a1 + 32) _updateCurrentChapterProgressForBook:*(a1 + 40)];

        if (!v9)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }
    }

    v11 = [*(a1 + 32) _contextWithID:v2];
    if (v11)
    {
      if (!v4)
      {
LABEL_21:
        [*(a1 + 32) _deactivateCurrentWidget:*(a1 + 40)];
        [*(a1 + 32) _becomeActiveOnContext:v11];
        v17 = [BCProgressKitProgressInfo alloc];
        v18 = [v11 identifier];
        v19 = [(BCProgressKitProgressInfo *)v17 initWithIdentifier:v18 pageRange:*(a1 + 72), *(a1 + 80)];

        [(BCProgressKitProgressInfo *)v19 setCurrentPage:*(a1 + 88)];
        v20 = [*(a1 + 32) activeChapters];
        [v20 setObject:v19 forKey:*(a1 + 40)];

        [*(a1 + 32) _saveChanges];
        v9 = 0;
LABEL_22:

        if (!v9)
        {
LABEL_26:
          v22 = objc_retainBlock(*(a1 + 64));
          v23 = v22;
          if (v22)
          {
            (*(v22 + 2))(v22, v9);
          }

          return;
        }

LABEL_23:
        v21 = BCProgressKitLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1E58B4();
        }

        goto LABEL_26;
      }
    }

    else
    {
      v11 = [[CLSContext alloc] initWithType:2 identifier:v2 title:*(a1 + 56)];
      v12 = [*(a1 + 32) _getOpenBookContext:*(a1 + 40)];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 contentStoreIdentifier];
        [v11 setContentStoreIdentifier:v14];

        v15 = [*(a1 + 32) standardProgressCapability];
        [v11 addProgressReportingCapabilities:v15];

        [v13 addChildContext:v11];
      }

      else
      {
        v16 = BCProgressKitLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1E5880();
        }
      }

      if (!v4)
      {
        goto LABEL_21;
      }
    }

    v9 = [*(a1 + 32) _updateCurrentChapterProgressForBook:*(a1 + 40)];
    if (v9)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v10 = objc_retainBlock(*(a1 + 64));
  if (v10)
  {
    v24 = v10;
    (*(v10 + 2))(v10, 0);
    v10 = v24;
  }
}

void sub_27324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2736C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [v9 objectForKeyedSubscript:@"readProportion"];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_275A8(uint64_t a1)
{
  if ([*(a1 + 32) _isBookOpen:*(a1 + 40)])
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_24570;
    v48 = sub_24580;
    v49 = 0;
    v27 = [*(a1 + 32) _bookIdentifierFromAssetID:*(a1 + 40)];
    v28 = [*(a1 + 32) _chapterIdentifierFromAssetID:*(a1 + 40) chapterID:*(a1 + 48)];
    v2 = [*(a1 + 32) _mediaIdentifierFromCFI:*(a1 + 56)];
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_24570;
    v42 = sub_24580;
    v43 = 0;
    v3 = dispatch_semaphore_create(0);
    v4 = [*(a1 + 32) progressKitDataStore];
    v57[0] = v27;
    v57[1] = v28;
    v57[2] = v2;
    v5 = [NSArray arrayWithObjects:v57 count:3];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_27B40;
    v34[3] = &unk_2C8B60;
    v36 = &v44;
    v37 = &v38;
    v6 = v3;
    v35 = v6;
    [v4 contextsMatchingIdentifierPath:v5 completion:v34];

    v7 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v6, v7))
    {
      v8 = BCProgressKitLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1E59D8();
      }
    }

    if (v45[5])
    {
      v9 = 0;
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = v39[5];
      v12 = [v11 countByEnumeratingWithState:&v30 objects:v56 count:16];
      if (v12)
      {
        v13 = *v31;
LABEL_15:
        v14 = 0;
        while (1)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v30 + 1) + 8 * v14);
          v16 = [v15 identifier];
          v17 = [v16 isEqualToString:v2];

          if (v17)
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [v11 countByEnumeratingWithState:&v30 objects:v56 count:16];
            if (v12)
            {
              goto LABEL_15;
            }

            goto LABEL_21;
          }
        }

        v9 = v15;

        if (v9)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_21:
      }

      v9 = [[CLSContext alloc] initWithType:15 identifier:v2 title:v2];
      v18 = [*(a1 + 32) _contextWithID:v28];
      v19 = [v18 contentStoreIdentifier];
      [v9 setContentStoreIdentifier:v19];

      v20 = [*(a1 + 32) standardProgressCapability];
      [v9 addProgressReportingCapabilities:v20];

      [v18 addChildContext:v9];
      if (v9)
      {
LABEL_24:
        [*(a1 + 32) _becomeActiveOnContext:v9];
        v21 = [*(a1 + 32) _currentActivityForContext:v9];
        [*(a1 + 64) doubleValue];
        [v21 addProgressRangeFromStart:0.0 toEnd:v22];

        [*(a1 + 32) _saveChanges];
      }
    }

    if (v45[5])
    {
      v23 = BCProgressKitLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = v45[5];
        *buf = 138412802;
        v51 = v28;
        v52 = 2112;
        v53 = v2;
        v54 = 2112;
        v55 = v26;
        _os_log_error_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "updateMediaForBook: %@, media: %@, error: %@", buf, 0x20u);
      }
    }

    v24 = objc_retainBlock(*(a1 + 72));
    v25 = v24;
    if (v24)
    {
      (*(v24 + 2))(v24, v45[5]);
    }

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v10 = objc_retainBlock(*(a1 + 72));
    if (v10)
    {
      v29 = v10;
      (*(v10 + 2))(v10, 0);
      v10 = v29;
    }
  }
}

void sub_27AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_27B40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_27D78(uint64_t a1)
{
  if ([*(a1 + 32) _isBookOpen:*(a1 + 40)] && objc_msgSend(*(a1 + 48), "tracksScore"))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 64);
    if (*(a1 + 56))
    {
      [v2 _sectionIdentifierFromAssetID:v3 chapterID:v4 sectionID:?];
    }

    else
    {
      [v2 _chapterIdentifierFromAssetID:v3 chapterID:v4];
    }
    v5 = ;
    v6 = *(a1 + 56);
    if (!v6)
    {
      v6 = *(a1 + 64);
    }

    v7 = v6;
    v8 = [*(a1 + 32) _contextWithID:v5];
    v9 = [*(a1 + 32) _widgetIdentifierFromAssetID:*(a1 + 40) parentID:v7 widgetID:*(a1 + 72)];
    if (!v8)
    {
      goto LABEL_24;
    }

    v10 = [*(a1 + 32) _getActiveWidgetContext:*(a1 + 40)];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 identifier];
      v13 = [v12 isEqualToString:v9];

      if (v13)
      {
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      [*(a1 + 32) _deactivateCurrentWidget:*(a1 + 40)];
    }

    v14 = [*(a1 + 32) _universalLinkFromAssetID:*(a1 + 40) cfi:*(a1 + 80)];
    v15 = [*(a1 + 32) _contextWithID:v9];
    if (v15)
    {
      v16 = v15;
      if (v14)
      {
        v17 = [v15 universalLinkURL];
        v18 = [v14 isEqual:v17];

        if ((v18 & 1) == 0)
        {
          [v16 setUniversalLinkURL:v14];
        }
      }
    }

    else
    {
      v19 = [CLSContext alloc];
      if ([*(a1 + 48) tracksScore])
      {
        v20 = 8;
      }

      else
      {
        v20 = 0;
      }

      v16 = [v19 initWithType:v20 identifier:v9 title:*(a1 + 88)];
      v21 = [v8 contentStoreIdentifier];
      [v16 setContentStoreIdentifier:v21];

      [v16 setUniversalLinkURL:v14];
      v22 = [*(a1 + 32) standardWidgetReportingCapability];
      [v16 addProgressReportingCapabilities:v22];

      [v8 addChildContext:v16];
    }

    [*(a1 + 32) _becomeActiveOnContext:v16];
    v23 = [*(a1 + 32) activeWidgets];
    v24 = [v16 identifier];
    [v23 setObject:v24 forKey:*(a1 + 40)];

    if (*(a1 + 48))
    {
      v25 = [*(a1 + 32) activeTrackingProviders];
      [v25 setObject:*(a1 + 48) forKey:*(a1 + 40)];
    }

    [*(a1 + 32) _saveChanges];

    goto LABEL_23;
  }

LABEL_25:
  v26 = objc_retainBlock(*(a1 + 96));
  if (v26)
  {
    v27 = v26;
    (*(v26 + 2))(v26, 0);
    v26 = v27;
  }
}

void sub_28100(uint64_t a1)
{
  if ([*(a1 + 32) _isBookOpen:*(a1 + 40)])
  {
    v2 = [*(a1 + 32) _getActiveWidgetContext:*(a1 + 40)];
    if (v2)
    {
      [*(a1 + 32) _deactivateCurrentWidget:*(a1 + 40)];
      v3 = [*(a1 + 32) activeWidgets];
      [v3 removeObjectForKey:*(a1 + 40)];

      v4 = [*(a1 + 32) activeTrackingProviders];
      [v4 removeObjectForKey:*(a1 + 40)];

      v5 = [v2 parent];
      [*(a1 + 32) _becomeActiveOnContext:v5];
      [*(a1 + 32) _saveChanges];
    }
  }

  v6 = objc_retainBlock(*(a1 + 48));
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))(v6, 0);
    v6 = v7;
  }
}

void sub_28350(uint64_t a1)
{
  if ([*(a1 + 32) _isBookOpen:*(a1 + 40)])
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      v2 = *(a1 + 56);
    }

    v3 = [*(a1 + 32) _widgetIdentifierFromAssetID:*(a1 + 40) parentID:v2 widgetID:*(a1 + 64)];
    v4 = [*(a1 + 32) _contextWithID:v3];
    if (v4)
    {
      v5 = *(a1 + 32);
      [*(a1 + 72) doubleValue];
      [v5 _updateContext:v4 withProgress:?];
    }
  }

  v6 = objc_retainBlock(*(a1 + 80));
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))(v6, 0);
    v6 = v7;
  }
}

void sub_285A0(uint64_t a1)
{
  if ([*(a1 + 32) _isBookOpen:*(a1 + 40)])
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      v2 = *(a1 + 56);
    }

    v3 = [*(a1 + 32) _widgetIdentifierFromAssetID:*(a1 + 40) parentID:v2 widgetID:*(a1 + 64)];
    v4 = [*(a1 + 32) _contextWithID:v3];
    if (v4)
    {
      v5 = *(a1 + 32);
      [*(a1 + 72) doubleValue];
      v7 = v6;
      [*(a1 + 80) doubleValue];
      [v5 _updateContext:v4 withScore:v7 maxScore:v8];
    }
  }

  v9 = objc_retainBlock(*(a1 + 88));
  if (v9)
  {
    v10 = v9;
    (*(v9 + 2))(v9, 0);
    v9 = v10;
  }
}

void sub_287C0(uint64_t a1)
{
  if ([*(a1 + 32) _isBookOpen:*(a1 + 40)])
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      v2 = *(a1 + 56);
    }

    v3 = [*(a1 + 32) _widgetIdentifierFromAssetID:*(a1 + 40) parentID:v2 widgetID:*(a1 + 64)];
    v4 = [*(a1 + 32) _contextWithID:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 createNewActivity];
      [*(a1 + 32) _saveChanges];
    }
  }

  v7 = objc_retainBlock(*(a1 + 72));
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))(v7, 0);
    v7 = v8;
  }
}

void sub_28970(uint64_t a1)
{
  v8 = [*(a1 + 32) _bookIdentifierFromAssetID:*(a1 + 40)];
  v2 = [*(a1 + 32) _contextWithID:?];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 title];
    v5 = [v4 isEqualToString:*(a1 + 48)];

    if ((v5 & 1) == 0)
    {
      [v3 setTitle:*(a1 + 48)];
      [*(a1 + 32) _saveChanges];
    }
  }

  v6 = objc_retainBlock(*(a1 + 56));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }
}

void sub_28B70(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_28BAC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_28BDC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

id sub_29A68(uint64_t a1)
{
  v1 = [*(a1 + 32) text];
  v2 = [v1 stringByAppendingString:@"\n"];

  return v2;
}

id sub_29AC0(uint64_t a1)
{
  v1 = [*(a1 + 32) propertyProvider];
  v2 = [v1 assetCover];

  return v2;
}

id sub_29B10(uint64_t a1)
{
  v2 = IMCommonCoreBundle();
  v3 = [v2 localizedStringForKey:@"Excerpt from:\n%@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v4 = [*(a1 + 32) citation];
  v5 = IMCommonCoreBundle();
  v6 = [v5 localizedStringForKey:@"This material may be protected by copyright." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v7 = [NSString stringWithFormat:v3, v4];
  v8 = [NSString stringWithFormat:@"%@\n%@", v7, v6];

  return v8;
}

id sub_29C20(uint64_t a1)
{
  v1 = [*(a1 + 32) propertyProvider];
  v2 = [v1 assetCover];

  return v2;
}

id sub_29C70(uint64_t a1)
{
  v1 = [*(a1 + 32) propertyProvider];
  v2 = [v1 storeURL];

  return v2;
}

id sub_29CC0(uint64_t a1)
{
  v1 = [*(a1 + 32) propertyProvider];
  v2 = [v1 assetCover];

  return v2;
}

id sub_2A254(uint64_t a1)
{
  v1 = [*(a1 + 32) propertyProvider];
  v2 = [v1 assetCover];

  return v2;
}

id sub_2A2A4(uint64_t a1)
{
  v2 = [*(a1 + 32) propertyProvider];
  v3 = [v2 storeShortURL];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) propertyProvider];
    v4 = [v5 storeURL];
  }

  return v4;
}

id sub_2A330(uint64_t a1)
{
  v1 = [*(a1 + 32) propertyProvider];
  v2 = [v1 assetCover];

  return v2;
}

uint64_t sub_2BDCC(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    *(*(result + 32) + 9) = 0;
  }

  return result;
}

double BCCardAdditionalBottomInset()
{
  v0 = isPad();
  result = 0.0;
  if (v0)
  {
    return 22.0;
  }

  return result;
}

id sub_2D770(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = [*(a1 + 32) presentingViewController];
    v5 = [v4 presentingViewController];

    if (v5)
    {
      do
      {
        v6 = [v4 presentingViewController];

        v7 = [v6 presentingViewController];

        v4 = v6;
      }

      while (v7);
    }

    else
    {
      v6 = v4;
    }

    v8 = [v6 viewIfLoaded];

    if (v8)
    {
      v9 = [v6 view];
      [v9 bounds];
      v2 = v10;
      v3 = v11;
    }
  }

  v12 = *(a1 + 56);
  v13 = [*(a1 + 32) configuration];
  v14 = v12 != [v13 cardsCanExpand];

  v15 = *(a1 + 32);

  return [v15 _layoutStackByChangingMode:v14 newViewSize:{v2, v3}];
}

void sub_2DD34(id a1)
{
  qword_342158 = [[NSMapTable alloc] initWithKeyOptions:5 valueOptions:5 capacity:1];

  _objc_release_x1();
}

uint64_t sub_2E2E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2E2F8(uint64_t a1)
{
  v2 = objc_alloc_init(BCCardStackViewController);
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 64) + 8) + 40) presentingViewControllerSafeAreaInsetsDidChange:*(a1 + 32)];
  if (*(a1 + 80))
  {
    v5 = 6;
  }

  else
  {
    v5 = 5;
  }

  [*(*(*(a1 + 64) + 8) + 40) setModalPresentationStyle:v5];
  [*(*(*(a1 + 64) + 8) + 40) setPresentingViewControllerIsFullScreen:*(a1 + 80)];
  v6 = [*(*(*(a1 + 64) + 8) + 40) _pushCardsWithDataSource:*(a1 + 40) focusedIndex:*(a1 + 72) animated:*(a1 + 81) presentingViewController:*(a1 + 32)];
  [*(*(*(a1 + 64) + 8) + 40) setPendingWrapper:v6];
  if ((*(a1 + 80) & 1) == 0)
  {
    v7 = [*(a1 + 32) traitCollection];
    v8 = [v7 userInterfaceStyle];
    v9 = [*(*(*(a1 + 64) + 8) + 40) presentationController];
    v10 = [v9 traitOverrides];
    [v10 setUserInterfaceStyle:v8];

    v11 = [*(*(*(a1 + 64) + 8) + 40) presentationController];
    v12 = [v11 traitOverrides];
    [v12 setUserInterfaceLevel:1];
  }

  [*(a1 + 48) setObject:*(*(*(a1 + 64) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2E53C;
  v15[3] = &unk_2C8D80;
  objc_copyWeak(&v18, &location);
  v16 = *(a1 + 48);
  v14 = *(a1 + 56);
  v13 = v14;
  v17 = v14;
  [v6 waitUntilReady:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void sub_2E520(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2E53C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = WeakRetained;
    [v4 removeObjectForKey:v5];
    v6 = [v5 presentingViewController];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;

    [v9 bc_analyticsVisibilitySubtreeWillDisappear];
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(*(v11 + 8) + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_2E684;
    v15[3] = &unk_2C8D58;
    v18 = v11;
    v16 = v9;
    v17 = v10;
    v13 = v9;
    [v5 bc_presentCardViewController:v12 animated:1 completion:v15];
  }

  else
  {
    v14 = objc_retainBlock(*(a1 + 40));
    v5 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14);
    }
  }
}

void sub_2E684(uint64_t a1)
{
  [*(*(*(a1 + 48) + 8) + 40) setPendingWrapper:0];
  [*(a1 + 32) bc_analyticsVisibilityUpdateSubtree];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_2E6F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BCCardModelLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1E5A20(v3, v4);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2F8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v67 + 40));
  objc_destroyWeak(&a52);
  objc_destroyWeak(&a65);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2F92C(uint64_t a1)
{
  [*(a1 + 40) contentInset];
  [*(a1 + 32) setContentInset:?];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void sub_2F9AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8) cardStackTransitioningCardContentPrepareForDismiss];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) prepareForAnimation:0];
  v9 = objc_retainBlock(v3);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

void sub_2FAE8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v24 + 1) + 8 * v9) cardStackTransitioningCardContentFinalizeForDismiss];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  [*(a1 + 40) finalizeForAnimation];
  [*(a1 + 48) bc_analyticsVisibilitySubtreeWillDisappear];
  v10 = [*(a1 + 48) view];
  [v10 removeFromSuperview];

  [*(a1 + 48) removeFromParentViewController];
  [*(a1 + 48) bc_analyticsVisibilitySubtreeDidDisappear];
  [*(a1 + 56) bc_analyticsVisibilityUpdateSubtree];
  [*(a1 + 56) becomeFirstResponder];
  [*(a1 + 64) contentInset];
  [*(a1 + 56) setContentInset:?];
  v11 = [WeakRetained childViewControllers];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    objc_opt_class();
    v13 = [WeakRetained childViewControllers];
    v14 = [WeakRetained childViewControllers];
    v15 = [v13 objectAtIndexedSubscript:{objc_msgSend(v14, "count") - 2}];
    v16 = BUDynamicCast();

    [*(a1 + 64) contentInset];
    [v16 setContentInset:?];
  }

  [*(a1 + 56) didBecomeTopCardSet];
  if (!*(a1 + 56))
  {
    v17 = [*(a1 + 72) topViewController];
    v18 = BUProtocolCast();

    if (v18)
    {
      [v18 didBecomeVisibleContentScrollView];
    }

    else
    {
      v19 = [*(a1 + 72) topViewController];
      v20 = [v19 tabBarController];

      v21 = [v20 selectedViewController];
      [v21 setContentScrollView:0 forEdge:15];

      [v20 bc_setPreferredTabBarScrollEdgeAppearance:0];
    }
  }

  [WeakRetained setNeedsStatusBarAppearanceUpdate];
  [WeakRetained setTransitionInProgress:0];
  [WeakRetained _layoutAdornmentViews];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 80) animationEnded:a2];
  }

  if ((*(a1 + 104) & 1) == 0)
  {
    v22 = objc_retainBlock(*(a1 + 88));
    v23 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22);
    }
  }
}

void sub_2FDF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateStatusBarBackgroundOpacityForCardSetViewController:*(a1 + 32)];
  [WeakRetained setLockedChildForStatusBarStyle:*(a1 + 32)];
  [WeakRetained setNeedsStatusBarAppearanceUpdate];
  [WeakRetained setLockedChildForStatusBarStyle:0];
  v2 = [*(a1 + 32) traitOverrides];
  [v2 removeTrait:objc_opt_class()];
}

void sub_2FE94(uint64_t a1)
{
  v1 = [*(a1 + 32) _popCardFrontAnimatorForCardSet:*(a1 + 40) cardSetViewControllerToUnfade:*(a1 + 48) duration:?];
  [v1 startAnimation];
}

void sub_2FEE0(uint64_t a1)
{
  v2 = [[UIViewPropertyAnimator alloc] initWithDuration:3 curve:0 animations:0.2];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_2FF9C;
  v3[3] = &unk_2C7D40;
  v4 = *(a1 + 32);
  [v2 addAnimations:v3];
  [v2 startAnimation];
}

void sub_2FF9C(uint64_t a1)
{
  v2 = _UISolariumEnabled();
  v3 = *(a1 + 32);
  if (v2)
  {

    [v3 updateNavBarAlphaForTransition:0.0];
  }

  else
  {
    v4 = [v3 auxiliaryNavigationBarView];
    [v4 setAlpha:0.0];
  }
}

void sub_30020(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained bc_analyticsVisibilitySubtreeWillDisappear];
    v4 = [v3 presentingViewController];
    v5 = [v4 presentingViewController];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_30178;
    v11[3] = &unk_2C8EC0;
    objc_copyWeak(&v14, (a1 + 40));
    v9 = v8;
    v12 = v9;
    v13 = *(a1 + 32);
    [v4 bc_dismissCardViewController:v3 animated:1 completion:v11];

    objc_destroyWeak(&v14);
  }

  else
  {
    v10 = objc_retainBlock(*(a1 + 32));
    v4 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

void sub_30178(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setPendingWrapper:0];

  +[UIViewController attemptRotationToDeviceOrientation];
  v3 = objc_loadWeakRetained(a1 + 6);
  [v3 bc_analyticsVisibilitySubtreeDidDisappear];

  [a1[4] bc_analyticsVisibilityUpdateSubtree];
  v4 = objc_retainBlock(a1[5]);
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

void sub_30634(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 view];
  v5 = *&CGAffineTransformIdentity.c;
  v15[0] = *&CGAffineTransformIdentity.a;
  v15[1] = v5;
  v15[2] = *&CGAffineTransformIdentity.tx;
  [v4 setTransform:v15];

  CGRectMakeWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v3 view];
  [v14 setFrame:{v7, v9, v11, v13}];

  [v3 cardLayoutDidChange:*(a1 + 48)];
}

void sub_31D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id location)
{
  objc_destroyWeak((v55 + 48));
  objc_destroyWeak(&a41);
  objc_destroyWeak(&a53);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_31D6C(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void sub_31DB8(uint64_t a1)
{
  v2 = objc_alloc_init(TUIMutableTransactionOptions);
  [v2 setAnimate:1];
  [v2 setDuration:0.6];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_31EA0;
  v4[3] = &unk_2C8F08;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [TUITransaction currentOrNewTransactionWithOptions:v2 block:v4];
}

id sub_31EA0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) cardStackTransitionSuspendUpdatesUntilEndOfTransaction];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) removeAllObjects];
}

void sub_31F98(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = +[NSBundle mainBundle];
  v27 = [v3 bundleIdentifier];

  v4 = dispatch_group_create();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v30 = *v45;
    do
    {
      v8 = 0;
      do
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        v10 = BCCardStackSignpost();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v49 = v7;
          _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "starting layout cardIndex=%lu", buf, 0xCu);
        }

        dispatch_group_enter(v4);
        v11 = 48;
        if (*(a1 + 88))
        {
          v11 = 40;
        }

        v12 = *(a1 + v11);
        v13 = [*(a1 + 56) currentCardViewController];
        v14 = [v13 view];
        [v14 bounds];
        v16 = v15;
        v18 = v17;
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_32384;
        v41[3] = &unk_2C8DD0;
        v41[4] = v9;
        v43 = v7;
        v42 = v4;
        [v9 cardStackTransitioningCardContentPrepareForOpenWithViewController:v12 viewSize:v7 index:v41 completion:{v16, v18}];

        ++v7;
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v6);
  }

  v19 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  v20 = [v19 isRunningTest];

  v21 = *(*(a1 + 48) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_32470;
  block[3] = &unk_2C8F30;
  v40 = v20;
  v22 = *(a1 + 80);
  v34 = v4;
  v39 = v22;
  v23 = v27;
  v35 = v23;
  v36 = *(a1 + 64);
  v37 = *(a1 + 72);
  v38 = v28;
  v24 = v28;
  v25 = v4;
  dispatch_async(v21, block);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_32748;
  v31[3] = &unk_2C7D40;
  v32 = v23;
  v26 = v23;
  dispatch_group_notify(v25, &_dispatch_main_q, v31);
}

void sub_32384(void *a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_32414;
  block[3] = &unk_2C8DD0;
  v2 = a1[5];
  v1 = a1[6];
  block[4] = a1[4];
  v5 = v1;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_32414(uint64_t a1)
{
  [*(a1 + 32) cardStackTransitioningCardContentFinalizePreparationForOpen];
  v2 = BCCardStackSignpost();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1E5B74(a1, v2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_32470(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = 5000000000;
  }

  else
  {
    v2 = 300000000;
  }

  v3 = *(a1 + 32);
  v4 = dispatch_time(0, v2);
  v5 = dispatch_group_wait(v3, v4);
  v6 = BCCardStackSignpost();
  v7 = v6;
  v8 = *(a1 + 72);
  if (v5)
  {
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(a1 + 40);
      if (!v9)
      {
        v9 = @"Unknown";
      }

      *buf = 138412290;
      v17 = v9;
      v10 = "Timeout: Display product cards";
LABEL_15:
      _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_END, v8, v10, "mainBundleId=%@ enableTelemetry=YES ", buf, 0xCu);
    }
  }

  else if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v11 = *(a1 + 40);
    if (!v11)
    {
      v11 = @"Unknown";
    }

    *buf = 138412290;
    v17 = v11;
    v10 = "No Timeout: Display product cards";
    goto LABEL_15;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3266C;
  block[3] = &unk_2C7B30;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_3266C(id *a1)
{
  kdebug_trace();
  [a1[4] performSecondHalfOfProcessing];
  v2 = [a1[4] coverMoveItems];
  [a1[5] setCoverMoveItems:v2];

  v3 = [a1[4] cardMoveItems];
  [a1[5] setCardMoveItems:v3];

  v4 = [a1[4] coverFadeItems];
  [a1[5] setCoverFadeItems:v4];

  v5 = objc_retainBlock(a1[6]);
  if (v5)
  {
    v6 = v5;
    v5[2]();
    v5 = v6;
  }
}

void sub_32748(uint64_t a1)
{
  v2 = BCCardStackSignpost();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v3 = @"Unknown";
    }

    v4 = 138412290;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_0, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Display product cards", "mainBundleId=%@ enableTelemetry=YES ", &v4, 0xCu);
  }
}

void sub_3281C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) removeAllObjects];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (*(a1 + 96) == 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v9) cardStackTransitioningCardContentFinalizeForOpen];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [*(a1 + 48) finalizeForAnimation];
    [*(a1 + 56) endTransitionUpdateMode];
  }

  [*(a1 + 56) didMoveToParentViewController:{WeakRetained, v12}];
  [*(a1 + 56) presentationTransitionDidComplete];
  [WeakRetained setTransitionInProgress:0];
  [WeakRetained unlockChildForStatusBarStyle];
  [WeakRetained _layoutAdornmentViews];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 64) animationEnded:a2];
  }

  v10 = [*(a1 + 72) view];
  v11 = [v10 window];
  [v11 setUserInteractionEnabled:1];

  [WeakRetained _suspendAndTeardownChildViewControllerAsNeeded];
  [*(a1 + 80) bc_analyticsVisibilitySubtreeDidDisappear];
  [*(a1 + 56) bc_analyticsVisibilityUpdateSubtree];
}

void sub_329E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained unlockChildForStatusBarStyle];
  v2 = [WeakRetained statusBarBackgroundController];
  [v2 setOpacity:0.0];

  [WeakRetained setNeedsStatusBarAppearanceUpdate];
  v3 = [*(a1 + 32) traitOverrides];
  [v3 setNSIntegerValue:0 forTrait:objc_opt_class()];
}

void sub_32A80(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained _pushCardBackAnimatorForCardSet:*(a1 + 32) cardSetViewControllerToFade:*(a1 + 40) duration:a2];
  [v4 startAnimation];
}

void sub_32AF0(uint64_t a1, double a2)
{
  v4 = [[UIViewPropertyAnimator alloc] initWithDuration:3 curve:0 animations:a2];
  v5 = [*(a1 + 32) auxiliaryNavigationBarView];
  [v5 setAlpha:0.0];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_32BE8;
  v6[3] = &unk_2C7D40;
  v7 = *(a1 + 32);
  [v4 addAnimations:v6 delayFactor:(a2 + -0.2) / a2];
  [v4 startAnimation];
}

void sub_32BE8(uint64_t a1)
{
  v1 = [*(a1 + 32) auxiliaryNavigationBarView];
  [v1 setAlpha:1.0];
}

void sub_32DC8(uint64_t a1)
{
  [*(a1 + 32) _layoutUnderlyingCardSetViewController:*(a1 + 40) animated:1];
  v2 = *(a1 + 48);
  if (v2)
  {
    [*(a1 + 32) _applyCardSetViewController:v2 withTransform:1];
    v3 = [*(a1 + 48) view];
    [v3 setAlpha:0.0];
  }
}

void sub_32E50(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setHidden:1];
}

void sub_33244(id *a1)
{
  v2 = [a1[4] view];
  v3 = *&CGAffineTransformIdentity.c;
  v6[0] = *&CGAffineTransformIdentity.a;
  v6[1] = v3;
  v6[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v6];

  [a1[4] setCovered:0 animated:1 duration:0.28];
  v4 = a1[5];
  if (v4)
  {
    [a1[6] _applyCardSetViewController:v4 withTransform:2];
    v5 = [a1[5] view];
    [v5 setAlpha:1.0];
  }
}

void sub_337C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_337E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_33908;
  v5[3] = &unk_2C8FF8;
  objc_copyWeak(&v6, (a1 + 32));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_33A30;
  v3[3] = &unk_2C9020;
  objc_copyWeak(&v4, (a1 + 32));
  [UIView animateKeyframesWithDuration:0 delay:v5 options:v3 animations:v2 completion:0.0];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
}

void sub_338EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_33908(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_339B8;
  v1[3] = &unk_2C8FF8;
  objc_copyWeak(&v2, (a1 + 32));
  [UIView addKeyframeWithRelativeStartTime:v1 relativeDuration:0.5 animations:0.5];
  objc_destroyWeak(&v2);
}

void sub_339B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained childViewControllers];
  v2 = [v1 lastObject];

  [WeakRetained setLockedChildForStatusBarStyle:v2];
  [WeakRetained setNeedsStatusBarAppearanceUpdate];
}

void sub_33A30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLockedChildForStatusBarStyle:0];
}

void sub_33BB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_33BE0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_33CA8;
  v2[3] = &unk_2C8FF8;
  objc_copyWeak(&v3, (a1 + 32));
  [UIView animateKeyframesWithDuration:0 delay:v2 options:&stru_2C9088 animations:v1 completion:0.0];
  objc_destroyWeak(&v3);
}

void sub_33CA8(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_33D58;
  v1[3] = &unk_2C8FF8;
  objc_copyWeak(&v2, (a1 + 32));
  [UIView addKeyframeWithRelativeStartTime:v1 relativeDuration:0.0 animations:0.5];
  objc_destroyWeak(&v2);
}

void sub_33D58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIgnoreChildStatusBarStyle:1];
  [WeakRetained setNeedsStatusBarAppearanceUpdate];
}

void sub_33DA8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIgnoreChildStatusBarStyle:0];
  if (a2)
  {
    [WeakRetained setNeedsStatusBarAppearanceUpdate];
    [*(a1 + 32) _updateStatusBarBackgroundOpacity];
  }
}

void sub_34A40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_350C8(id a1)
{
  v1 = [NSSet setWithArray:&off_2EBD30];
  qword_342168 = v1;

  _objc_release_x1(v1);
}

void sub_3518C(id a1)
{
  v1 = [NSSet setWithArray:&off_2EBD48];
  qword_342178 = v1;

  _objc_release_x1(v1);
}

void sub_35218(id a1)
{
  v1 = [NSSet setWithArray:&off_2EBD60];
  qword_342188 = v1;

  _objc_release_x1(v1);
}

void sub_35378(id a1)
{
  v10 = +[BUBag defaultBag];
  v1 = [v10 p2LaunchEbookstoreHostPatterns];
  v2 = sub_35468(v1, v1);
  v3 = qword_342198;
  qword_342198 = v2;

  v4 = [v10 p2LaunchEbookstorePathPatterns];
  v5 = sub_35468(v4, v4);
  v6 = [v10 p2LaunchAudioBookStorePathPatterns];
  v7 = sub_35468(v6, v6);
  v8 = [v5 arrayByAddingObjectsFromArray:v7];
  v9 = qword_3421A0;
  qword_3421A0 = v8;
}

id sub_35468(uint64_t a1, void *a2)
{
  v6 = 0;
  v2 = [a2 jsa_valueWithError:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = BCIMLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1E5C80(v3, v4);
    }
  }

  return v2;
}

void sub_355C8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_retainBlock(*(a1 + 40));
  if (v3)
  {
    v3[2](v3, [*(a1 + 32) _validateWithSheetInfo:v4]);
  }
}

void sub_35A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 216), 8);
  _Block_object_dispose((v36 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_35AB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_35AC8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_35B28(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_35B88(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_35BE8(uint64_t a1)
{
  v2 = [*(a1 + 32) host];
  v3 = [v2 bc_hasMatchInRegexPatterns:*(*(*(a1 + 48) + 8) + 40)];

  if (v3)
  {
    v4 = [[NSURLComponents alloc] initWithURL:*(a1 + 32) resolvingAgainstBaseURL:0];
    v5 = [v4 rangeOfPath];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [*(a1 + 32) path];
    }

    else
    {
      v7 = v5;
      v8 = [v4 string];
      v6 = [v8 substringFromIndex:v7];
    }

    if (([v6 bc_hasMatchInRegexPatterns:*(*(*(a1 + 56) + 8) + 40)] & 1) == 0)
    {
      [v6 bc_hasMatchInRegexPatterns:*(*(*(a1 + 64) + 8) + 40)];
    }
  }

  v9 = *(*(a1 + 40) + 16);

  return v9();
}

void sub_35DD4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  if (!v9 || v6)
  {
    v7 = [*(a1 + 32) _defaultIXStoreSheetDictionary];

    v9 = v7;
  }

  v8 = objc_retainBlock(*(a1 + 40));
  if (v8)
  {
    v8[2](v8, [*(a1 + 32) _validateWithSheetInfo:v9]);
  }
}

void sub_35F54(uint64_t a1, void *a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v8 = BUDynamicCast();
        v9 = [v8 stringByReplacingOccurrencesOfString:@"*" withString:{&stru_2D2930, v17}];
        v10 = [*(a1 + 32) host];
        v11 = [v10 isEqualToString:v9];

        if (v11 & 1) != 0 || [v9 hasPrefix:@"."] && (objc_msgSend(*(a1 + 32), "host"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hasSuffix:", v9), v12, (v13))
        {

          v14 = 1;
          goto LABEL_13;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:

  v15 = objc_retainBlock(*(a1 + 40));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v14);
  }
}

int64_t sub_383E4(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 cfi];
  v6 = [v4 cfi];

  v7 = [v5 compareCFI:v6];
  return v7;
}

uint64_t sub_389F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(a2, "unsignedIntegerValue")}];
  v8 = [v7 characterCount];

  v9 = *(a1 + 32);
  v10 = [v6 unsignedIntegerValue];

  v11 = [v9 objectAtIndexedSubscript:v10];
  v12 = [v11 characterCount];

  if (v8 < v12)
  {
    return -1;
  }

  else
  {
    return v8 > v12;
  }
}

void sub_39048(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 view];
  v8 = v7;
  if (v7)
  {
    [v7 transform];
    v9 = *&v16;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v9 = 0.0;
  }

  v10 = [NSNumber numberWithDouble:v9];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v6];

  CGAffineTransformMakeTranslation(&v13, v9, 0.0);
  v11 = [v5 view];

  v12 = v13;
  [v11 setTransform:&v12];
}

void sub_39144(uint64_t a1, double a2)
{
  v3 = 0.0;
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) maxSlideDistance];
    v3 = v4;
  }

  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeTranslation(&v9, 0.0, v3);
  v5 = [*(a1 + 32) displayedCardViewControllers];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v8 = v9;
  v6[2] = sub_39224;
  v6[3] = &unk_2C9308;
  v7 = *(a1 + 40);
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_39224(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  [v7 floatValue];
  v9 = *(a1 + 56);
  *&v11.a = *(a1 + 40);
  *&v11.c = v9;
  *&v11.tx = *(a1 + 72);
  CGAffineTransformTranslate(&v12, &v11, v8, 0.0);
  v10 = [v6 view];

  v11 = v12;
  [v10 setTransform:&v11];
}

void sub_392DC(uint64_t a1, double a2)
{
  v3 = 0.0;
  if ((*(a1 + 40) & 1) == 0)
  {
    [*(a1 + 32) maxTitleSlideDistance];
    v3 = v4;
  }

  CGAffineTransformMakeTranslation(&v13, 0.0, v3);
  v5 = [*(a1 + 32) titleLabel];
  v12 = v13;
  [v5 setTransform:&v12];

  v6 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v7 = [v6 backgroundView];
    [v7 setAlpha:1.0];
  }

  else
  {
    [v6 distanceToCoverSource];
    IsValid = CGFloatIsValid();
    v9 = *(a1 + 32);
    if (IsValid)
    {
      [v9 distanceToCoverSource];
      if (v10 < 50.0)
      {
        v10 = 50.0;
      }
    }

    else
    {
      [v9 maxSlideDistance];
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_39420;
    v11[3] = &unk_2C7D18;
    v11[4] = *(a1 + 32);
    *&v11[5] = v10;
    [UIView animateKeyframesWithDuration:0 delay:v11 options:0 animations:0.0 completion:0.0];
  }
}

id sub_39420(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3951C;
  v6[3] = &unk_2C7D40;
  v6[4] = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:0.0];
  v2 = *(a1 + 40);
  [*(a1 + 32) maxSlideDistance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_39564;
  v5[3] = &unk_2C7D40;
  v5[4] = *(a1 + 32);
  return [UIView addKeyframeWithRelativeStartTime:v5 relativeDuration:0.0 animations:v2 / v3];
}

void sub_3951C(uint64_t a1)
{
  v1 = [*(a1 + 32) backgroundView];
  [v1 setAlpha:1.0];
}

void sub_39564(uint64_t a1)
{
  [*(a1 + 32) _minBackgroundViewAlpha];
  v3 = v2;
  v4 = [*(a1 + 32) backgroundView];
  [v4 setAlpha:v3];
}

id sub_395CC(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_39668;
  v2[3] = &unk_2C9358;
  v3 = *(a1 + 48);
  v2[4] = *(a1 + 32);
  v2[5] = *(a1 + 40);
  return [UIView animateKeyframesWithDuration:0 delay:v2 options:0 animations:0.0 completion:0.0];
}

id sub_39668(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_397C8;
    v8[3] = &unk_2C7D40;
    v8[4] = *(a1 + 32);
    v2 = 1.0;
    v3 = v8;
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_39854;
    v7[3] = &unk_2C7D40;
    v7[4] = *(a1 + 32);
    [UIView addKeyframeWithRelativeStartTime:v7 relativeDuration:0.0 animations:0.0];
    v4 = *(a1 + 40);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_398E0;
    v6[3] = &unk_2C7D40;
    v6[4] = *(a1 + 32);
    v2 = 0.18 / v4;
    v3 = v6;
  }

  return [UIView addKeyframeWithRelativeStartTime:v3 relativeDuration:0.0 animations:v2];
}

void sub_397C8(uint64_t a1)
{
  v2 = [*(a1 + 32) titleLabel];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) leftArrowButton];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) rightArrowButton];
  [v4 setAlpha:1.0];
}

void sub_39854(uint64_t a1)
{
  v2 = [*(a1 + 32) titleLabel];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) leftArrowButton];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) rightArrowButton];
  [v4 setAlpha:1.0];
}

void sub_398E0(uint64_t a1)
{
  v2 = [*(a1 + 32) titleLabel];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) leftArrowButton];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) rightArrowButton];
  [v4 setAlpha:0.0];
}

void sub_39AD4(uint64_t a1, uint64_t a2)
{
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, a2 == 0);
    v3 = v4;
  }
}

void sub_3BE5C(id a1)
{
  v1 = [NSCharacterSet characterSetWithCharactersInString:@"<>&"];
  qword_3421C0 = v1;

  _objc_release_x1(v1);
}

id sub_3D1E4(uint64_t a1)
{
  [*(a1 + 32) cacheMetadataDictionary];
  v2 = [*(a1 + 32) metadataDictionary];
  [v2 setValue:*(a1 + 40) forKey:*(a1 + 48)];

  v3 = *(a1 + 32);

  return [v3 setMetadataDictionaryDirty:1];
}

void sub_3D388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3D3A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3D3B8(uint64_t a1)
{
  [*(a1 + 32) cacheMetadataDictionary];
  v5 = [*(a1 + 32) metadataDictionary];
  v2 = [v5 valueForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_3DA0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 topContentViewController];
  v5 = BUProtocolCast();

  [v5 viewController:*(a1 + 32) didDisplayMessageWithId:*(a1 + 40)];
}

void sub_3DB58(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 32));
  if (v6)
  {
    v6[2](v6, [v7 isEqualToString:@"Y"], v7 != 0, v5);
  }
}

uint64_t sub_3F760(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_3F778(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(*(a1 + 40) + 72);
  v3 = *(*(*(a1 + 48) + 8) + 40);

  return [v2 addObjectsFromArray:v3];
}

void sub_3F7C4(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:*(*(a1 + 32) + 24)];
  [v2 setPredicate:*(*(a1 + 32) + 32)];
  if (*(*(a1 + 32) + 40))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v2 setResultType:v3];
  if (*(*(a1 + 32) + 40))
  {
    v22 = *(*(a1 + 32) + 40);
    v4 = [NSArray arrayWithObjects:&v22 count:1];
    [v2 setPropertiesToFetch:v4];
  }

  else
  {
    [v2 setPropertiesToFetch:0];
  }

  v5 = *(*(a1 + 32) + 8);
  v17 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v17];
  v7 = v17;
  if (*(*(a1 + 32) + 40))
  {
    v8 = [v6 valueForKey:?];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = *(*(a1 + 48) + 8);
    v12 = v6;
    v10 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  v13 = [[BCRemoteManagedObjectIDChanges alloc] initWithAdded:*(*(*(a1 + 48) + 8) + 40) updated:0 deleted:0 context:*(*(a1 + 32) + 8)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained managedObjectBackgroundMonitor:*(a1 + 32) fetchNotify:v13];

  v15 = BCRemoteManagedObjectIDMonitorLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    *buf = 138543618;
    v19 = v16;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ FINISHED INITIALIZATION fetch:%@", buf, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_3FBBC(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) object];
  v3 = BUDynamicCast();

  v4 = BCRemoteManagedObjectIDMonitorLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%@ PersistentRemoteChangeNotification: %@", buf, 0x16u);
  }

  v8 = *(a1 + 40);
  v7 = (a1 + 40);
  v9 = *(v8 + 16);
  v10 = BCRemoteManagedObjectIDMonitorLog();
  v11 = v10;
  if (v9 == v3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*v7 currentObjectIdentifiers];
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Currently tracking objects: %@", buf, 0xCu);
    }

    v13 = *v7;
    v14 = *(*v7 + 1);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_3FDA4;
    v15[3] = &unk_2C7D40;
    v15[4] = v13;
    [v14 performBlock:v15];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E5D0C(v7, v11);
    }
  }
}

void sub_3FDA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 historyToken];
  v71 = [v2 _fetchPersistentHistoryWithHistoryToken:v3];

  v4 = BCRemoteManagedObjectIDMonitorLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v71)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v112 = v6;
      v113 = 2112;
      v114 = v71;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%@ historyResult %@", buf, 0x16u);
    }

    v102 = 0;
    v103 = &v102;
    v104 = 0x3032000000;
    v105 = sub_3F760;
    v106 = sub_3F770;
    v107 = 0;
    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4089C;
    block[3] = &unk_2C7AE0;
    block[4] = v7;
    block[5] = &v102;
    dispatch_sync(v8, block);
    v9 = objc_opt_new();
    v78 = objc_opt_new();
    v77 = objc_opt_new();
    v10 = *(*(a1 + 32) + 40);
    if (!v10)
    {
      v10 = @"objectID";
    }

    v11 = v10;
    v12 = BCRemoteManagedObjectIDMonitorLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = [v71 count];
      *buf = 138412546;
      v112 = v13;
      v113 = 2048;
      v114 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%@ total transactions: %lu", buf, 0x16u);
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = v71;
    v74 = [obj countByEnumeratingWithState:&v97 objects:v123 count:16];
    if (v74)
    {
      v73 = *v98;
      *&v15 = 138413570;
      v70 = v15;
      do
      {
        for (i = 0; i != v74; i = i + 1)
        {
          if (*v98 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v97 + 1) + 8 * i);
          v17 = [*(a1 + 32) context];
          v18 = [*(a1 + 32) entityName];
          v95 = 0;
          v96 = 0;
          v94 = 0;
          [v16 bc_getManagedObjectsWith:v17 entityName:v18 inserted:&v96 updated:&v95 tombstones:&v94];
          v19 = v96;
          v20 = v95;
          v75 = v94;

          v21 = BCRemoteManagedObjectIDMonitorLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v47 = *(a1 + 32);
            v48 = [v16 timestamp];
            v49 = [v48 description];
            v50 = [v16 transactionNumber];
            *buf = v70;
            v112 = v47;
            v113 = 2114;
            v114 = v49;
            v115 = 2048;
            v116 = v50;
            v117 = 2112;
            v118 = v19;
            v119 = 2112;
            v120 = v20;
            v121 = 2112;
            v122 = v75;
            _os_log_debug_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%@ [Transaction] %{public}@ transaction# %lld, pulled insertedObjects:%@ updatedObjects:%@ deletedTombstones:%@", buf, 0x3Eu);
          }

          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v22 = v19;
          v23 = [v22 countByEnumeratingWithState:&v90 objects:v110 count:16];
          if (v23)
          {
            v24 = *v91;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v91 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = *(*(&v90 + 1) + 8 * j);
                v27 = [v26 valueForKey:v11];
                v28 = *(*(a1 + 32) + 32);
                if (v28)
                {
                  v29 = [v28 evaluateWithObject:v26];
                }

                else
                {
                  v29 = 1;
                }

                if (v27)
                {
                  v30 = v29 == 0;
                }

                else
                {
                  v30 = 1;
                }

                if (!v30)
                {
                  [v9 addObject:v27];
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v90 objects:v110 count:16];
            }

            while (v23);
          }

          v88 = 0u;
          v89 = 0u;
          v87 = 0u;
          v86 = 0u;
          v31 = v20;
          v32 = [v31 countByEnumeratingWithState:&v86 objects:v109 count:16];
          if (v32)
          {
            v33 = *v87;
            do
            {
              for (k = 0; k != v32; k = k + 1)
              {
                if (*v87 != v33)
                {
                  objc_enumerationMutation(v31);
                }

                v35 = *(*(&v86 + 1) + 8 * k);
                v36 = [v35 valueForKey:v11];
                if (v36 && [*(a1 + 32) _objectHasChangesOfInterest:v35])
                {
                  v37 = *(*(a1 + 32) + 32);
                  v38 = v37 ? [v37 evaluateWithObject:v35] : 1;
                  v39 = [v103[5] containsObject:v36];
                  v40 = v9;
                  if (((v38 ^ 1 | v39) & 1) == 0 || (v41 = v39 ^ 1, v40 = v78, ((v38 | v41) & 1) == 0) || (v40 = v77, ((v38 ^ 1 | v41) & 1) == 0))
                  {
                    [v40 addObject:v36];
                  }
                }
              }

              v32 = [v31 countByEnumeratingWithState:&v86 objects:v109 count:16];
            }

            while (v32);
          }

          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v42 = v75;
          v43 = [v42 countByEnumeratingWithState:&v82 objects:v108 count:16];
          if (v43)
          {
            v44 = *v83;
            do
            {
              for (m = 0; m != v43; m = m + 1)
              {
                if (*v83 != v44)
                {
                  objc_enumerationMutation(v42);
                }

                v46 = [*(*(&v82 + 1) + 8 * m) valueForKey:v11];
                if (v46 && [v103[5] containsObject:v46])
                {
                  [v78 addObject:v46];
                }
              }

              v43 = [v42 countByEnumeratingWithState:&v82 objects:v108 count:16];
            }

            while (v43);
          }
        }

        v74 = [obj countByEnumeratingWithState:&v97 objects:v123 count:16];
      }

      while (v74);
    }

    if ([v9 count] || objc_msgSend(v78, "count") || objc_msgSend(v77, "count"))
    {
      v51 = [BCRemoteManagedObjectIDChanges alloc];
      v52 = [v9 allObjects];
      v53 = [v77 allObjects];
      v54 = [v78 allObjects];
      v55 = [*(a1 + 32) context];
      v56 = [(BCRemoteManagedObjectIDChanges *)v51 initWithAdded:v52 updated:v53 deleted:v54 context:v55];

      v57 = *(a1 + 32);
      v58 = *(v57 + 64);
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_408E8;
      v79[3] = &unk_2C89F8;
      v79[4] = v57;
      v80 = v78;
      v81 = v9;
      dispatch_sync(v58, v79);
      v59 = BCRemoteManagedObjectIDMonitorLog();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = *(a1 + 32);
        *buf = 138412546;
        v112 = v60;
        v113 = 2112;
        v114 = v56;
        _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "%@ managedObjectBackgroundMonitor didSaveNotify %@", buf, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
      [WeakRetained managedObjectBackgroundMonitor:*(a1 + 32) didSaveNotify:v56];
    }

    else
    {
      v56 = BCRemoteManagedObjectIDMonitorLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v69 = *(a1 + 32);
        *buf = 138412290;
        v112 = v69;
        _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "%@ no relevant changes from this notification", buf, 0xCu);
      }
    }

    v62 = [obj lastObject];
    v63 = [v62 token];

    v64 = BCRemoteManagedObjectIDMonitorLog();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = *(a1 + 32);
      v66 = [v65 historyToken];
      *buf = 138412802;
      v112 = v65;
      v113 = 2112;
      v114 = v66;
      v115 = 2112;
      v116 = v63;
      _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEFAULT, "%@ Updated NSPersistentHistoryToken from %@ to %@", buf, 0x20u);
    }

    [*(a1 + 32) setHistoryToken:v63];
    _Block_object_dispose(&v102, 8);
  }

  else
  {
    if (v5)
    {
      v67 = *(a1 + 32);
      v68 = [v67 historyToken];
      *buf = 138412546;
      v112 = v67;
      v113 = 2112;
      v114 = v68;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%@ No history changes with %@.", buf, 0x16u);
    }
  }
}

uint64_t sub_4089C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return _objc_release_x1(v2);
}

id sub_408E8(void *a1)
{
  [*(a1[4] + 72) minusSet:a1[5]];
  v2 = *(a1[4] + 72);
  v3 = a1[6];

  return [v2 unionSet:v3];
}

void sub_41308(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_42188(uint64_t a1)
{
  v2 = [*(a1 + 32) imageEntries];
  v3 = [v2 mutableCopy];

  [v3 removeObject:*(a1 + 40)];
  [*(a1 + 32) setImageEntries:v3];
}

void sub_422A4(uint64_t a1)
{
  v2 = [*(a1 + 32) imageEntries];
  v3 = [v2 mutableCopy];

  [v3 addObject:*(a1 + 40)];
  [*(a1 + 40) setImageSet:*(a1 + 32)];
  [*(a1 + 32) setImageEntries:v3];
}

uint64_t sub_42660(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_42678(uint64_t a1)
{
  v5 = [*(a1 + 32) imageEntries];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void IMAccessibilityInitialize()
{
  if (IMAccessibilityShouldPerformValidationChecks())
  {
    __IMAccessibilityValidateIsKindOfClass(@"IMCustomSlider", @"UISlider");
    __IMAccessibilityValidateInstanceMethodComplete(@"BKAudiobookPlayer", @"positionInCurentChapter", "d", v0, v1, v2, v3, v4, 0);
    __IMAccessibilityValidateInstanceMethodComplete(@"BKAudiobookPlayer", @"durationOfCurrentChapter", "d", v5, v6, v7, v8, v9, 0);
    __IMAccessibilityValidateInstanceMethodComplete(@"IMMediaPlayer", @"currentMediaItem", "@", v10, v11, v12, v13, v14, 0);
    __IMAccessibilityValidateInstanceMethodComplete(@"IMCustomSlider", @"delegate", "@", v15, v16, v17, v18, v19, 0);
    __IMAccessibilityValidateProtocolMethod(@"IMMediaItem", @"chapters", 1, 1);
    __IMAccessibilityValidateProtocolMethod(@"IMMediaChapter", @"assetTimeRange", 1, 1);
    __IMAccessibilityValidateInstanceMethodComplete(@"UISlider", @"_accessibilityBumpValue:", "v", v20, v21, v22, v23, v24, "B");
    __IMAccessibilityValidateInstanceMethodComplete(@"IMMediaPlayer", @"currentChapter", "q", v25, v26, v27, v28, v29, 0);
    __IMAccessibilityValidateIvar(@"IMGridViewCell", "_title");
    __IMAccessibilityValidateIvar(@"IMGridViewCell", "_title");
    __IMAccessibilityValidateIvar(@"IMGridView", "_grabbedCell");
    __IMAccessibilityValidateIvar(@"IMPopupController", "_mask");
    __IMAccessibilityValidateIvarType(@"IMRadialProgressButton", "_progress", "f");
    __IMAccessibilityValidateInstanceMethod(@"IMPopupController", @"dismissPopupViewControllerAnimated:");
    __IMAccessibilityValidateInstanceMethod(@"IMPopupController", @"presentPopupViewController:parent:dimmedView:animated:");
    __IMAccessibilityValidateInstanceMethod(@"AEAnnotationPopoverViewController", @"didHide");
    __IMAccessibilityValidateInstanceMethod(@"AEHighlight", @"annotation");
    __IMAccessibilityValidateInstanceMethod(@"AEHighlightColorEditorController", @"viewDidLoad");
    __IMAccessibilityValidateInstanceMethod(@"AEHighlightColorEditorController", @"colorControls");
    __IMAccessibilityValidateInstanceMethod(@"AEHighlightColorEditorController", @"addNoteButton");
    __IMAccessibilityValidateInstanceMethod(@"AEHighlightColorEditorController", @"deleteButton");
    __IMAccessibilityValidateInstanceMethod(@"AEHighlightColorEditorController", @"rightArrowButton");
    __IMAccessibilityValidateInstanceMethod(@"AEHighlightColorEditorController", @"showColorControlsMenu:");
    __IMAccessibilityValidateInstanceMethod(@"AEHighlightColorEditorController", @"calloutBar");
    __IMAccessibilityValidateInstanceMethod(@"AEHighlightedTextLabel", @"annotation");
    __IMAccessibilityValidateInstanceMethod(@"AEAnnotation", @"annotatedAttributedString");
    __IMAccessibilityValidateInstanceMethod(@"IMGridViewCell", @"closeBox");
    __IMAccessibilityValidateInstanceMethod(@"IMGridViewCell", @"isEditing");
    __IMAccessibilityValidateInstanceMethod(@"IMGridViewCell", @"title");
    __IMAccessibilityValidateInstanceMethod(@"IMGridView", @"rangeOfVisibleCells");
    __IMAccessibilityValidateInstanceMethod(@"IMGridViewCell", @"deleteConfirmationControlWasClicked:");
    __IMAccessibilityValidateInstanceMethod(@"IMGridView", @"numberOfColumns");
    __IMAccessibilityValidateInstanceMethod(@"IMGridView", @"numberOfRows");
    __IMAccessibilityValidateInstanceMethod(@"IMGridView", @"setGrabbedCell:");
    __IMAccessibilityValidateInstanceMethod(@"IMGridView", @"_swapGrabbedCell:withOtherCell:");
    __IMAccessibilityValidateInstanceMethodComplete(@"IMViewController", @"_transitionFromViewController:toViewController:transition:reverse:", "@", v30, v31, v32, v33, v34, "@");
    __IMAccessibilityValidateInstanceMethod(@"IMFlipViewTransition", @"flipClosed");
    __IMAccessibilityValidateInstanceMethod(@"AEAnnotationPopoverViewController", @"didShow");
    __IMAccessibilityValidateIsKindOfClass(@"AEAudioBookSleepViewController", @"UIViewController");
    __IMAccessibilityValidateInstanceMethod(@"AEHighlightColorEditorController", @"releaseOutlets");
    __IMAccessibilityValidateInstanceMethod(@"AENoteEditorViewController", @"viewDidLoad");
    __IMAccessibilityValidateInstanceMethod(@"AENoteEditorViewController", @"textView");
    __IMAccessibilityValidateInstanceMethod(@"AENoteEditorViewController", @"delegate");
    __IMAccessibilityValidateInstanceMethod(@"AENotePopoverEditorController", @"noteEditorViewController");
    __IMAccessibilityValidateInstanceMethod(@"AEMarginNote", @"annotation");
    __IMAccessibilityValidateIsKindOfClass(@"AENoteEditorViewController", @"UIViewController");
    __IMAccessibilityValidateIsKindOfClass(@"AEHighlightColorEditorController", @"AEAnnotationPopoverViewController");
    __IMAccessibilityValidateIsKindOfClass(@"AEAnnotationPopoverViewController", @"UIViewController");
    __IMAccessibilityValidateIsKindOfClass(@"IMGridView", @"UIScrollView");
    __IMAccessibilityValidateInstanceMethod(@"IMTouchInsetsButton", @"touchInsets");
  }

  if (byte_33D0D8 == 1)
  {
    IMAccessibilityInstallSafeCategory(@"IMUIViewAccessibility");
    IMAccessibilityInstallSafeCategory(@"IMCustomSliderAccessibility");
    IMAccessibilityInstallSafeCategory(@"IMAccessibilityLabelAccessibility");
    IMAccessibilityInstallSafeCategory(@"IMGridViewCellAccessibility");
    IMAccessibilityInstallSafeCategory(@"IMViewControllerAccessibility");
    IMAccessibilityInstallSafeCategory(@"IMGridViewAccessibility");
    IMAccessibilityInstallSafeCategory(@"IMFlipViewTransitionAccessibility");
    IMAccessibilityInstallSafeCategory(@"AEAudioBookSleepViewControllerAccessibility");
    IMAccessibilityInstallSafeCategory(@"AEAudioNoHitPinningViewAccessibility");
    IMAccessibilityInstallSafeCategory(@"AENotePopoverEditorControllerAccessibility");
    IMAccessibilityInstallSafeCategory(@"AENoteEditorViewControllerAccessibility");
    IMAccessibilityInstallSafeCategory(@"AEAnnotationPopoverViewControllerAccessibility");
    IMAccessibilityInstallSafeCategory(@"AEHighlightColorEditorControllerAccessibility");
    IMAccessibilityInstallSafeCategory(@"AEMarginNotesControllerAccessibility");
    IMAccessibilityInstallSafeCategory(@"AEHighlightedTextLabelAccessibility");
    IMAccessibilityInstallSafeCategory(@"IMRadialProgressButtonAccessibility");
    IMAccessibilityInstallSafeCategory(@"IMTouchInsetsButtonAccessibility");

    IMAccessibilityInstallSafeCategory(@"IMPassthroughViewAccessibility");
  }
}

id IMAXLocString(void *a1)
{
  v1 = a1;
  v2 = qword_3421D8;
  if (qword_3421D8 || ([NSBundle bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = qword_3421D8, qword_3421D8 = v3, v4, (v2 = qword_3421D8) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2D2930 table:@"IMAccessibility"];
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v1)
  {
    if (IMAccessibilityShouldPerformValidationChecks())
    {
      NSLog(@"UIAccessibilityError: String could not be found for key: %@", v1);
      abort();
    }

    v5 = 0;
  }

  return v5;
}

uint64_t _accessibilityDomain()
{
  result = qword_3421E0;
  if (!qword_3421E0)
  {
    result = CPCopySharedResourcesPreferencesDomainForDomain();
    qword_3421E0 = result;
  }

  return result;
}

id IMAXDurationDescription(double a1)
{
  v1 = floor(a1);
  v2 = objc_opt_new();
  [v2 setUnitsStyle:3];
  [v2 setAllowedUnits:224];
  v3 = [v2 stringFromTimeInterval:v1];

  return v3;
}

void IMAXAccessibilityPerformSafeBlock(void *a1)
{
  v1 = a1;
  v1[2]();
}

uint64_t IMAccessibilityIsFKAEnabledWithKeyboardAttached()
{
  result = _AXSFullKeyboardAccessEnabled();
  if (result)
  {
    return GSEventIsHardwareKeyboardAttached() != 0;
  }

  return result;
}

void sub_437FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_43814(uint64_t a1)
{
  v2 = [*(a1 + 32) imageSetStorage];
  v3 = [*(a1 + 40) identifier];
  v8 = [v2 objectForKeyedSubscript:v3];

  if (!v8)
  {
    v8 = +[NSMutableDictionary dictionary];
    v4 = [*(a1 + 32) imageSetStorage];
    v5 = [*(a1 + 40) identifier];
    [v4 setObject:v8 forKeyedSubscript:v5];
  }

  v6 = [*(a1 + 40) copy];
  if (([v6 requestOptions] & 0x400) != 0)
  {
    [NSDate dateWithTimeIntervalSinceNow:10.0];
  }

  else
  {
    +[NSDate date];
  }
  v7 = ;
  [v6 setLastUsed:v7];

  [v8 setObject:v6 forKeyedSubscript:*(a1 + 48)];
  [BICCacheStats logDescribedImage:v6 withComment:@"MemoryDataStoreSaveImage"];
  *(*(*(a1 + 56) + 8) + 24) = [v6 costFor:0];
  [*(a1 + 32) setTotalStoredCost:{objc_msgSend(*(a1 + 32), "totalStoredCost") + *(*(*(a1 + 56) + 8) + 24)}];
}

void sub_43A48(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageSetIDFromImageEntryLocation:*(a1 + 40)];
  v3 = [*(a1 + 32) imageSetStorage];
  v4 = [v3 objectForKeyedSubscript:v2];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
    if (v5)
    {
      [BICCacheStats logDescribedImage:v5 withComment:@"MemoryDataStoreDeleteImage"];
      [*(a1 + 32) setTotalStoredCost:{objc_msgSend(*(a1 + 32), "totalStoredCost") - objc_msgSend(v5, "costFor:", 0)}];
      v6 = BCImageCacheLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 40);
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "BICMemoryDataStore: RAM: deleting: %@", &v9, 0xCu);
      }

      [v4 removeObjectForKey:*(a1 + 40)];
      if (![v4 count])
      {
        v8 = [*(a1 + 32) imageSetStorage];
        [v8 removeObjectForKey:v2];
      }
    }
  }
}

void sub_43C80(uint64_t a1)
{
  v2 = [*(a1 + 32) _imageSetIDFromImageEntryLocation:*(a1 + 40)];
  v3 = [*(a1 + 32) imageSetStorage];
  v4 = [v3 objectForKeyedSubscript:v2];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
    if ([v5 quality] >= 2)
    {
      [v5 setQuality:3];
      v6 = BCImageCacheLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "BICMemoryDataStore: RAM: Marking non primary as old: %@", &v7, 0xCu);
      }
    }
  }
}

void sub_44264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4427C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_44294(uint64_t a1)
{
  v2 = [*(a1 + 32) imageSetStorage];
  v8 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v8;
  if (v8)
  {
    v4 = [v8 objectForKeyedSubscript:*(a1 + 48)];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = +[NSDate date];
    [*(*(*(a1 + 56) + 8) + 40) setLastUsed:v7];

    v3 = v8;
  }
}

void sub_445AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_445C4(uint64_t a1)
{
  result = [*(a1 + 32) totalStoredCost];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_44864(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) imageSetStorage];
  v3 = [v2 allValues];

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

        v8 = *(a1 + 40);
        v9 = [*(*(&v10 + 1) + 8 * v7) allKeys];
        [v8 addObjectsFromArray:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

id sub_44A54(uint64_t a1)
{
  v2 = [*(a1 + 32) imageSetStorage];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 setTotalStoredCost:0];
}

void sub_46938(uint64_t a1)
{
  v2 = [*(a1 + 32) renderingController];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) annotationUuid];
  [v2 addHighlight:v3 forData:v4];

  v5 = [*(a1 + 32) renderingController];
  v6 = [v5 highlightLayers];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v7 = *(a1 + 80);
  v12 = *(a1 + 64);
  v13 = v7;
  block[2] = sub_46A40;
  block[3] = &unk_2C9718;
  block[4] = *(a1 + 32);
  v10 = v6;
  v11 = *(a1 + 56);
  v8 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_46A40(uint64_t a1)
{
  v2 = [*(a1 + 32) window];

  if (v2)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = *(a1 + 40);
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

          [*(a1 + 32) p_renderHighlightLayer:*(*(&v8 + 1) + 8 * v7) inContext:*(a1 + 48) flippingOriginWithY:{CGRectGetHeight(*(a1 + 56)), v8}];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

void sub_471FC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_47228(void *a1, CTLineRef line, uint64_t a3, _BYTE *a4)
{
  if (a1[6] == a3)
  {
    *a4 = 1;
  }

  else
  {
    ascent[3] = v4;
    ascent[4] = v5;
    descent = 0.0;
    ascent[0] = 0.0;
    leading = 0.0;
    TypographicBounds = CTLineGetTypographicBounds(line, ascent, &descent, &leading);
    v9 = *(a1[4] + 8);
    v10 = (a1[7] + 16 * a3);
    v11 = TypographicBounds + *v10;
    if (*(v9 + 24) >= v11)
    {
      v11 = *(v9 + 24);
    }

    *(v9 + 24) = v11;
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 24);
    if (v13 >= v10[1] - descent)
    {
      v13 = v10[1] - descent;
    }

    *(v12 + 24) = v13;
  }
}

uint64_t sub_48B64(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [*(a1 + 32) dataSource];
  v7 = [v6 representedObjectForCardAtIndex:a2];

  v8 = [*(a1 + 32) coverHost];
  v9 = [v8 coverSourceForRepresentedObject:v7];

  if (!v9)
  {
    goto LABEL_6;
  }

  if ([v9 isInNonHorizontalLayout])
  {
    [*(a1 + 32) setCoversAreInNonHorizontalLayout:1];
  }

  if ((a3 & 1) != 0 || ([*(a1 + 32) coverHost], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "visibilityOfCoverSource:ignoringYAxis:", v9, 0), v10, v11 != &dword_0 + 2))
  {
    v13 = *(a1 + 40);
    v14 = [NSNumber numberWithInteger:a2];
    [v13 setObject:v9 forKeyedSubscript:v14];

    v12 = 1;
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

uint64_t sub_48C78(uint64_t a1)
{
  [*(a1 + 32) visibleCardRange];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

BOOL sub_48E28(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) visibleCoverSourceByIndex];
  v5 = [NSNumber numberWithInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = *(a1 + 40);
  [v6 cardStackTransitioningCoverSourceFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v6 cardStackTransitioningCoverSourceReferenceView];
  [v7 convertRect:v16 fromView:{v9, v11, v13, v15}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v27.origin.x = v18;
  v27.origin.y = v20;
  v27.size.width = v22;
  v27.size.height = v24;
  v25 = vabdd_f64(*(a1 + 48), CGRectGetMaxY(v27)) <= 10.0;

  return v25;
}

uint64_t sub_490D0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 56);
  if (v4 <= a2)
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithInteger:v4];
  v7 = [v5 objectForKeyedSubscript:v6];

  [v7 cardStackTransitioningCoverSourceFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 cardStackTransitioningCoverSourceReferenceView];
  v17 = a2 - v4;
  if ([*(a1 + 40) _isRTL])
  {
    v18 = -v17;
  }

  else
  {
    v18 = v17;
  }

  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  v19 = [[BCCardStackTransitioningPlaceholderCoverSource alloc] initWithCoverFrame:v16 referenceView:v9 + (CGRectGetWidth(v28) + 28.0) * v18, v11, v13, v15];
  v20 = [*(a1 + 40) visibleCardRange];
  if (a2 >= v20 && a2 - v20 < v21 || ([*(a1 + 40) coverHost], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "visibilityOfCoverSource:ignoringYAxis:", v19, 0), v22, v24 = 0, v23 != &dword_0 + 2))
  {
    v25 = *(a1 + 48);
    v26 = [NSNumber numberWithInteger:a2];
    [v25 setObject:v19 forKeyedSubscript:v26];

    v24 = 1;
  }

  return v24;
}

uint64_t sub_49520(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  v4 = a2 >= v2;
  v3 = a2 - v2;
  v4 = !v4 || v3 >= *(a1 + 48);
  if (!v4)
  {
    return 0;
  }

  v6 = [*(a1 + 32) _coverSourceAtIndex:a2];
  v7 = [*(a1 + 32) coverHost];
  v8 = 1;
  v9 = [v7 visibilityOfCoverSource:v6 ignoringYAxis:1];

  if (v9 != &dword_0 + 1)
  {
    return 0;
  }

  return v8;
}