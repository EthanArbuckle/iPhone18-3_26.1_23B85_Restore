void sub_FB4(id a1)
{
  qword_D3B8 = objc_alloc_init(AXLocalizationCaptionMonitor);

  _objc_release_x1();
}

void sub_1268(id a1)
{
  v1 = +[AXElement systemWideElement];
  [v1 performAction:5007];
}

void sub_1404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1424(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained handlingQueue];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_15EC;
  v21 = &unk_82F8;
  objc_copyWeak(&v23, (a1 + 32));
  v6 = v3;
  v22 = v6;
  dispatch_async(v5, &v18);

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 lockUI];

  if (v8 && ([v6 handInfo], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "eventType"), v9, v10 == 1))
  {
    v11 = [v6 denormalizedEventRepresentation:1 descale:1];

    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 pointInsideCallback];
    v14 = [v11 handInfo];
    v15 = [v14 paths];
    v16 = [v15 firstPath];
    [v16 pathLocation];
    v13[2](v13);
  }

  else
  {
    v11 = v6;
  }

  objc_destroyWeak(&v23);
  return v8;
}

void sub_15EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleTouchEvent:*(a1 + 32)];
}

void sub_1E30(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 application];
  v4 = [v3 label];

  v21 = v4;
  if (!v4)
  {
    v5 = [v2 application];
    v21 = [v5 bundleId];
  }

  v6 = [v2 label];
  v7 = [v2 value];
  v8 = [NSArray axArrayByIgnoringNilElementsWithCount:2, v6, v7];

  v9 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_2144;
          v24[3] = &unk_8370;
          v25 = v21;
          v26 = v15;
          v27 = v9;
          v17 = v16;
          [v17 enumerateAttributesUsingBlock:v24];

          v18 = v25;
        }

        else
        {
          v18 = 0;
          v17 = objc_opt_new();
          [v17 setText:v15];
          [v9 addObject:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  v22 = *(a1 + 32);
  v23 = v9;
  v19 = v9;
  AXPerformBlockAsynchronouslyOnMainThread();
  [*(a1 + 32) logPackages:v19];
}

void sub_2144(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v13 = objc_opt_new();
  [v13 setAppName:*(a1 + 32)];
  v8 = [v7 objectForKey:@"UIAccessibilityTokenLocalizationBundlePath"];
  [v13 setBundle:v8];

  v9 = [v7 objectForKey:@"UIAccessibilityTokenLocalizedStringTableName"];
  [v13 setFile:v9];

  v10 = [v7 objectForKey:@"UIAccessibilityTokenLocalizedStringKey"];
  [v13 setKey:v10];

  v11 = [v7 objectForKey:@"UIAccessibilityTokenLocalizedStringEnglishVersion"];

  [v13 setEnglishText:v11];
  v12 = [*(a1 + 40) substringWithRange:{a3, a4}];
  [v13 setText:v12];

  [*(a1 + 48) addObject:v13];
}

void sub_2294(uint64_t a1)
{
  v2 = [*(a1 + 32) rootViewController];
  [v2 updateText:*(a1 + 40)];
}

void sub_235C(uint64_t a1)
{
  v2 = [*(a1 + 32) rootViewController];
  v3 = [v2 view];
  v4 = [v3 window];
  v5 = [*(a1 + 32) rootViewController];
  v6 = [v5 backgroundView];
  [v4 convertPoint:v6 toView:{*(a1 + 40), *(a1 + 48)}];
  v8 = v7;
  v10 = v9;

  v11 = [*(a1 + 32) rootViewController];
  v12 = [v11 backgroundView];
  LODWORD(v4) = [v12 pointInside:0 withEvent:{v8, v10}];

  if (v4)
  {
    v13 = [*(a1 + 32) rootViewController];
    [v13 uiLockPressed:0];
  }
}

void sub_2490(uint64_t a1)
{
  [*(a1 + 32) _showRootViewControllerIfNeeded:0];
  v2 = [*(a1 + 32) rootViewController];
  [v2 showString:@"Loc Caption Panel"];
}

void sub_2EE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2F14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 setNeedsLayout];
}

void sub_2F6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 setNeedsLayout];
}

void sub_2FC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 setNeedsLayout];
}