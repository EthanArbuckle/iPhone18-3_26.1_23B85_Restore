id sub_1104(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&unk_1EE18);
  if (qword_1EE20)
  {
    v4 = qword_1EE20 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_1EE28))
  {
    qword_1EE20 = v3;
    qword_1EE28 = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = qword_1EE10;
    qword_1EE10 = v6;
  }

  v8 = qword_1EE10;
  os_unfair_lock_unlock(&unk_1EE18);

  return v8;
}

id SiriBlurImageForColor(void *a1)
{
  if ([a1 isSiriColor])
  {
    v1 = @"SiriBlur";
  }

  else
  {
    v1 = @"SiriBlurGrey";
  }

  v2 = [NTKUpNextFaceBundle imageWithName:v1];

  return v2;
}

double DarkeningAmountForColor(void *a1)
{
  v1 = [a1 isSiriColor];
  result = 0.25;
  if (v1)
  {
    return 0.5;
  }

  return result;
}

void sub_2FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2FF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateApplicationIdentifiersAndLocationAuthorization];
}

id sub_325C(uint64_t a1)
{
  *(*(a1 + 32) + 185) = 1;
  [*(a1 + 32) _startPositiveDwellForTopElementsTimerIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _updateVisibilityForCells];
}

id sub_3394(uint64_t a1)
{
  *(*(a1 + 32) + 185) = 0;
  [*(a1 + 32) _resetVisibilityForCells];
  v2 = *(a1 + 32);

  return [v2 _updateVisibilityForCells];
}

id sub_33E0(uint64_t a1)
{
  [*(a1 + 32) _dismissPresentedViewControllerIfNecessary:0];
  [*(a1 + 32) _switchViewModeToDefault];
  v2 = *(a1 + 32);

  return [v2 _stopPositiveDwellForTopElementsTimer];
}

void sub_3434(id a1)
{
  v1 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Loaded 'engine' content", v2, 2u);
  }
}

uint64_t sub_37B4(uint64_t a1, void *a2)
{
  v3 = [a2 complicationDescriptor];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return _objc_release_x1();
}

id sub_3D4C(uint64_t a1)
{
  [*(*(a1 + 32) + 32) layoutIfNeeded];
  [*(*(a1 + 32) + 208) schedule];
  result = [*(a1 + 32) viewMode];
  if (!result)
  {
    result = [*(a1 + 32) _switchViewModeToDefault];
  }

  *(*(a1 + 32) + 176) = 0;
  return result;
}

id sub_3E74(uint64_t a1)
{
  result = [*(a1 + 32) viewMode];
  if (!result)
  {
    [*(*(a1 + 32) + 32) layoutIfNeeded];
    v3 = *(a1 + 32);

    return [v3 _switchViewModeToDefault];
  }

  return result;
}

void sub_4870(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 4);
    v5 = *(a1 + 32);
    [v4 contentSize];
    v7 = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_4994;
    v9[3] = &unk_186C8;
    objc_copyWeak(&v11, (a1 + 48));
    v10 = *(a1 + 40);
    [v4 _performScrollTest:v5 iterations:2 delta:16 length:v7 scrollAxis:2 extraResultsBlock:0 completionBlock:v9];

    objc_destroyWeak(&v11);
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))();
    }
  }
}

void sub_4994(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _defaultPointForDefaultMode];
    y = CGPointZero.y;
    [v5 _setViewMode:0 scroll:0 scrollToPoint:1 secondaryPoint:0 force:? velocity:? animated:?];
    [v5 setNeedsLayout];
    [v5 layoutIfNeeded];
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

void sub_4D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4D98(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 67109120;
    v10 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[datasource] reloaded collection view data (animated=%d)", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 26) schedule];
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))();
    }

    v5[178] = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4F00;
    block[3] = &unk_18638;
    block[4] = v5;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

id sub_579C(uint64_t a1)
{
  [*(*(a1 + 32) + 208) schedule];
  v2 = *(a1 + 32);

  return [v2 _updateDisabledDataSources];
}

void sub_5928(uint64_t a1, void *a2, uint64_t a3)
{
  if (([a2 isEqualToString:REDefaultSectionIdentifier] & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = [NSNumber numberWithUnsignedInteger:a3];
    [v5 addObject:v6];
  }
}

void sub_6138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6154(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _dismissPresentedViewControllerIfNecessary:0];
    if ([v4 viewMode] == &dword_0 + 2 && objc_msgSend(v4, "dataMode") == &dword_0 + 2)
    {
      [v4 _switchViewModeForCurrentMode:2 animated:0];
      [v5 invalidate];
    }
  }
}

void sub_6380(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id sub_63B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [v7 element];

  v12 = [WeakRetained _configureCellForItemWithElement:v11 atIndexPath:v8 inCollectionView:v9];

  return v12;
}

id sub_6464(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained _configureSupplementaryViewForSupplementaryElementOfKind:v8 atIndexPath:v9 inCollectionView:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_7424(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  v3 = *(a1 + 120);
  v7[4] = *(a1 + 104);
  v7[5] = v3;
  v4 = *(a1 + 152);
  v7[6] = *(a1 + 136);
  v7[7] = v4;
  v5 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v5;
  v6 = *(a1 + 88);
  v7[2] = *(a1 + 72);
  v7[3] = v6;
  [v2 setTransform:v7];
}

void sub_75E0(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  v3 = *(a1 + 120);
  v7[4] = *(a1 + 104);
  v7[5] = v3;
  v4 = *(a1 + 152);
  v7[6] = *(a1 + 136);
  v7[7] = v4;
  v5 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v5;
  v6 = *(a1 + 88);
  v7[2] = *(a1 + 72);
  v7[3] = v6;
  [v2 setTransform:v7];
}

void sub_80AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_80D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_80E8(uint64_t a1, objc_class *a2)
{
  v4 = [objc_opt_class() bundleIdentifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    dispatch_group_enter(*(a1 + 40));
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_80D0;
    v21 = sub_80E0;
    v22 = objc_alloc_init(a2);
    v5 = v18[5];
    v6 = REDefaultSectionIdentifier;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_8344;
    v13[3] = &unk_18870;
    v15 = *(a1 + 56);
    v16 = &v17;
    v14 = *(a1 + 40);
    [v5 getElementsInSection:v6 withHandler:v13];

    _Block_object_dispose(&v17, 8);
  }

  if ([v4 isEqualToString:*(a1 + 48)])
  {
    dispatch_group_enter(*(a1 + 40));
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_80D0;
    v21 = sub_80E0;
    v22 = objc_alloc_init(a2);
    v7 = v18[5];
    v8 = REDefaultSectionIdentifier;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_83D8;
    v9[3] = &unk_18870;
    v11 = *(a1 + 64);
    v12 = &v17;
    v10 = *(a1 + 40);
    [v7 getElementsInSection:v8 withHandler:v9];

    _Block_object_dispose(&v17, 8);
  }
}

void sub_8344(uint64_t a1, void *a2)
{
  v8 = [a2 firstObject];
  if (v8)
  {
    v3 = [[NTKUpNextElement alloc] initWithREElement:v8];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  dispatch_group_leave(*(a1 + 32));
}

void sub_83D8(uint64_t a1, void *a2)
{
  v8 = [a2 firstObject];
  if (v8)
  {
    v3 = [[NTKUpNextElement alloc] initWithREElement:v8];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  dispatch_group_leave(*(a1 + 32));
}

void sub_846C(uint64_t a1)
{
  v2 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v3 = NTKOrderedUpNextSections();
  v4 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v21 + 1) + 8 * v9) unsignedIntegerValue];
        v10 = NTKIdentifierForUpNextSection();
        if (v10)
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  [v2 appendSectionsWithIdentifiers:v11];

  v12 = +[NSMutableArray array];
  v13 = v12;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v12 addObject:?];
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [v13 addObject:?];
  }

  v14 = NTKIdentifierForUpNextSection();
  if (v14)
  {
    v15 = [v13 copy];
    [v2 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:v14];
  }

  *(*(a1 + 32) + 312) = 1;
  v16 = *(a1 + 32);
  v17 = *(v16 + 320);
  *(v16 + 320) = v2;
  v18 = v2;

  *(*(a1 + 32) + 176) = 1;
  [*(a1 + 32) _reloadContentIfNeeded];
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8720;
  block[3] = &unk_188C0;
  v20 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_8720(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_883C(uint64_t a1)
{
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "NTKUpNextFaceView generated snapshot snapshot", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_AF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_AF64(uint64_t a1, void *a2)
{
  result = [a2 isSiriColor];
  if (result)
  {
    v4 = [NTKUpNextFaceBundle imageWithName:@"SiriColorSwatch"];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return _objc_release_x1();
  }

  return result;
}

void sub_B3F4(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&unk_1EF38);
  if (qword_1EF40)
  {
    v3 = qword_1EF40 == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != qword_1EF48))
  {
    qword_1EF40 = v5;
    qword_1EF48 = [v5 version];
    sub_B4CC(v5, __src);
    memcpy(&unk_1EE30, __src, 0x108uLL);
  }

  memcpy(a2, &unk_1EE30, 0x108uLL);
  os_unfair_lock_unlock(&unk_1EF38);
}

void sub_B4CC(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v4 setRoundingBehavior:1];
  v103[0] = &off_19158;
  v103[1] = &off_19170;
  v104[0] = &off_19370;
  v104[1] = &off_19380;
  v103[2] = &off_19188;
  v104[2] = &off_19390;
  v5 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:3];
  [v4 scaledValue:v5 withOverrides:10.0];
  *a2 = v6;

  [v4 scaledValue:3 withOverride:2.0 forSizeClass:2.5];
  *(a2 + 40) = v7;
  v101[0] = &off_19158;
  v101[1] = &off_19188;
  v102[0] = &off_193A0;
  v102[1] = &off_193B0;
  v8 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:2];
  [v4 scaledValue:v8 withOverrides:50.0];
  *(a2 + 56) = v9;

  v99[0] = &off_19158;
  v99[1] = &off_19188;
  v100[0] = &off_193A0;
  v100[1] = &off_193B0;
  v10 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:2];
  [v4 scaledValue:v10 withOverrides:50.0];
  *(a2 + 48) = v11;

  v97[0] = &off_19158;
  v97[1] = &off_19170;
  v98[0] = &off_193C0;
  v98[1] = &off_193D0;
  v97[2] = &off_19188;
  v98[2] = &off_193E0;
  v12 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:3];
  [v4 scaledValue:v12 withOverrides:20.5];
  *(a2 + 64) = v13;

  v95[0] = &off_191A0;
  v95[1] = &off_19188;
  v96[0] = &off_193F0;
  v96[1] = &off_193F0;
  v14 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:2];
  [v4 constantValue:v14 withOverrides:0.0];
  *(a2 + 232) = v15;

  v93[0] = &off_19158;
  v93[1] = &off_19170;
  v94[0] = &off_19400;
  v94[1] = &off_19410;
  v93[2] = &off_19188;
  v94[2] = &off_19420;
  v16 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:3];
  [v4 scaledValue:v16 withOverrides:64.5];
  *(a2 + 72) = v17;

  v91[0] = &off_19158;
  v91[1] = &off_19188;
  v92[0] = &off_19430;
  v92[1] = &off_19440;
  v18 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:2];
  [v4 scaledValue:v18 withOverrides:22.0];
  *(a2 + 80) = v19;

  v89[0] = &off_19158;
  v89[1] = &off_19188;
  v90[0] = &off_19450;
  v90[1] = &off_19460;
  v20 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:2];
  [v4 scaledValue:v20 withOverrides:40.0];
  *(a2 + 88) = v21;

  [v4 scaledValue:16.0];
  *(a2 + 96) = v22;
  v87[0] = &off_19158;
  v87[1] = &off_19188;
  v88[0] = &off_19430;
  v88[1] = &off_19440;
  v23 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2];
  [v4 scaledValue:v23 withOverrides:22.0];
  *(a2 + 104) = v24;

  v85[0] = &off_19158;
  v85[1] = &off_19170;
  v86[0] = &off_19470;
  v86[1] = &off_19480;
  v85[2] = &off_19188;
  v86[2] = &off_19490;
  v25 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:3];
  [v4 scaledValue:v25 withOverrides:60.0];
  *(a2 + 120) = v26;

  v83[0] = &off_19158;
  v83[1] = &off_19170;
  v84[0] = &off_194A0;
  v84[1] = &off_194B0;
  v83[2] = &off_19188;
  v84[2] = &off_194C0;
  v27 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:3];
  [v4 scaledValue:v27 withOverrides:5.5];
  *(a2 + 128) = v28;

  v81[0] = &off_19158;
  v81[1] = &off_19170;
  v82[0] = &off_19480;
  v82[1] = &off_194D0;
  v81[2] = &off_19188;
  v82[2] = &off_194E0;
  v29 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:3];
  [v4 scaledValue:v29 withOverrides:66.0];
  *(a2 + 136) = v30;

  if ([v3 deviceCategory] == &dword_0 + 1 || objc_msgSend(v3, "deviceCategory") == &dword_0 + 2)
  {
    [v3 screenBounds];
  }

  else
  {
    [v4 scaledValue:162.0];
    v31 = v32;
  }

  *(a2 + 144) = v31;
  v79[0] = &off_19158;
  v79[1] = &off_19188;
  v80[0] = &off_19430;
  v80[1] = &off_194F0;
  v79[2] = &off_191B8;
  v79[3] = &off_191D0;
  v80[2] = &off_194F0;
  v80[3] = &off_19440;
  v79[4] = &off_191E8;
  v79[5] = &off_19200;
  v80[4] = &off_19440;
  v80[5] = &off_194F0;
  v79[6] = &off_19218;
  v80[6] = &off_19440;
  v33 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:7];
  [v4 scaledValue:v33 withOverrides:22.0];
  *(a2 + 152) = v34;

  v77[0] = &off_19158;
  v77[1] = &off_19188;
  v78[0] = &off_19430;
  v78[1] = &off_19440;
  v35 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];
  [v4 scaledValue:v35 withOverrides:22.0];
  *(a2 + 112) = v36;

  v75[0] = &off_19158;
  v75[1] = &off_19170;
  v76[0] = &off_19230;
  v76[1] = &off_19230;
  v37 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];
  [v4 constantValue:v37 withOverrides:6.0];
  *(a2 + 240) = v38;

  v73[0] = &off_19158;
  v73[1] = &off_19188;
  v74[0] = &off_19500;
  v74[1] = &off_19510;
  v39 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];
  [v4 scaledValue:v39 withOverrides:10.0];
  *(a2 + 160) = v40;

  v71[0] = &off_19158;
  v71[1] = &off_19170;
  v72[0] = &off_19520;
  v72[1] = &off_19520;
  v71[2] = &off_19188;
  v71[3] = &off_191B8;
  v72[2] = &off_19530;
  v72[3] = &off_19248;
  v71[4] = &off_191D0;
  v71[5] = &off_191E8;
  v72[4] = &off_19540;
  v72[5] = &off_19550;
  v71[6] = &off_19200;
  v71[7] = &off_19218;
  v72[6] = &off_194A0;
  v72[7] = &off_19550;
  v41 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:8];
  [v4 scaledValue:v41 withOverrides:12.0];
  *(a2 + 248) = v42;

  v69[0] = &off_191A0;
  v69[1] = &off_19188;
  v70[0] = &off_19560;
  v70[1] = &off_19570;
  v43 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];
  v44 = 0;
  [v4 constantValue:v43 withOverrides:0.0];
  *(a2 + 256) = v45;

  v67[0] = &off_19158;
  v67[1] = &off_19170;
  v68[0] = &off_19580;
  v68[1] = &off_19580;
  v67[2] = &off_19188;
  v68[2] = &off_19590;
  v46 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:3];
  [v4 scaledValue:v46 withOverrides:-5.5];
  v48 = v47;

  v49 = 1.0;
  [v4 scaledValue:0 withOverride:1.0 forSizeClass:2.0];
  v51 = v50;
  [v4 scaledValue:0 withOverride:1.0 forSizeClass:0.5];
  *(a2 + 8) = v51;
  *(a2 + 16) = v48;
  *(a2 + 24) = v52;
  *(a2 + 32) = v48;
  v53 = [v3 sizeClass];
  if (v53 > 9)
  {
    v65 = 208;
    v63 = 192;
    v61 = 200;
    v59 = 184;
    v56 = 1.0;
    v58 = 0;
    v57 = 224;
    v55 = 176;
    v60 = 1.0;
    v54 = 216;
    v62 = 0;
    v64 = 1.0;
    v66 = 0;
  }

  else
  {
    v49 = dbl_105A8[v53];
    v54 = qword_105F8[v53];
    v44 = qword_10648[v53];
    v55 = qword_10698[v53];
    v56 = dbl_106E8[v53];
    v57 = qword_10738[v53];
    v58 = qword_10788[v53];
    v59 = qword_107D8[v53];
    v60 = dbl_10828[v53];
    v61 = qword_10878[v53];
    v62 = qword_108C8[v53];
    v63 = qword_10918[v53];
    v64 = dbl_10968[v53];
    v65 = qword_109B8[v53];
    v66 = qword_10A08[v53];
  }

  *(a2 + 168) = v49;
  *(a2 + v54) = v44;
  *(a2 + v55) = v56;
  *(a2 + v57) = v58;
  *(a2 + v59) = v60;
  *(a2 + v61) = v62;
  *(a2 + v63) = v64;
  *(a2 + v65) = v66;
}

double sub_BE5C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_1EF50);
  if (qword_1EF58)
  {
    v3 = qword_1EF58 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_1EF60))
  {
    qword_1EF58 = v2;
    qword_1EF60 = [v2 version];
  }

  os_unfair_lock_unlock(&unk_1EF50);

  return 0.0;
}

void sub_BEE4(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Assigning an incorrect element (%@) to the wrapper %@", &v4, 0x16u);
}