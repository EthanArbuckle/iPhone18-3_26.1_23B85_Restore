@interface ATAPPTUtilities
+ (BOOL)_selectButtonWithTitle:(id)a3 inView:(id)a4;
+ (BOOL)performScrollViewTest:(id)a3 testOptions:(id)a4 scrollAxis:(unint64_t)a5 tabBarController:(id)a6 scrollViewBlock:(id)a7;
+ (BOOL)selectButtonWithTitle:(id)a3 inShelf:(id)a4 inTabBarController:(id)a5;
+ (BOOL)selectButtonWithTitle:(id)a3 inTabBarController:(id)a4;
+ (BOOL)selectFirstShelfWithButtonTitle:(id)a3 inTabBarController:(id)a4;
+ (BOOL)selectTabWithTitle:(id)a3 inTabBarController:(id)a4;
+ (id)_cellWithTitle:(id)a3 inViewController:(id)a4 returningCollectionView:(id *)a5;
+ (id)_findCollectionViewInView:(id)a3;
+ (id)_findLabelInView:(id)a3;
+ (id)_findLabelWithTitle:(id)a3 inView:(id)a4;
+ (id)_findScrollViewInViewController:(id)a3;
+ (id)_findShelfViewControllerInViewController:(id)a3 withShelfRow:(unint64_t)a4;
+ (id)_findShelfViewControllerInViewController:(id)a3 withTitle:(id)a4;
+ (id)_findTVButtonWithTitle:(id)a3 inView:(id)a4;
+ (id)_findUIButtonWithTitle:(id)a3 inView:(id)a4;
+ (id)_findVUIRoundButtonWithTitle:(id)a3 inView:(id)a4;
+ (id)_findViewOfType:(Class)a3 inView:(id)a4 withFilter:(id)a5;
+ (id)_topViewControllerInTabBarController:(id)a3;
+ (id)findScrollViewByIndexInStackCollectionView:(id)a3 index:(unint64_t)a4;
+ (id)findScrollViewInView:(id)a3 desiredScrollViewClass:(Class)a4;
+ (id)prepareForPPT;
+ (id)testLog;
+ (id)testOperationQueue;
+ (id)topMostController;
+ (void)waitForNotificiation:(id)a3;
@end

@implementation ATAPPTUtilities

+ (id)testLog
{
  if (qword_1000235D8 != -1)
  {
    sub_1000127A0();
  }

  v3 = qword_1000235D0;

  return v3;
}

+ (id)testOperationQueue
{
  if (qword_1000235E8 != -1)
  {
    sub_1000127B4();
  }

  v3 = qword_1000235E0;

  return v3;
}

+ (BOOL)performScrollViewTest:(id)a3 testOptions:(id)a4 scrollAxis:(unint64_t)a5 tabBarController:(id)a6 scrollViewBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = +[ATAPPTUtilities testLog];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Running scrollview test '%@'", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v61 = 0x3032000000;
  v62 = sub_100006F3C;
  v63 = sub_100006F4C;
  v64 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006F54;
  block[3] = &unk_10001D148;
  p_buf = &buf;
  v59 = a1;
  v17 = v14;
  v57 = v17;
  dispatch_sync(&_dispatch_main_q, block);
  usleep(0xF4240u);
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_100006F3C;
  v54 = sub_100006F4C;
  v55 = 0;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100006FE4;
  v45[3] = &unk_10001D170;
  v18 = v15;
  v46 = v18;
  v47 = &v50;
  v48 = &buf;
  v49 = a1;
  dispatch_sync(&_dispatch_main_q, v45);

  if (v51[5])
  {
    v19 = [v12 lowercaseString];
    v20 = [v19 containsString:@"landscape"];

    if (v20)
    {
      v21 = dispatch_semaphore_create(0);
      v22 = +[UIScreen mainScreen];
      [v22 bounds];
      Height = CGRectGetHeight(v65);

      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100007060;
      v38[3] = &unk_10001D200;
      v41 = &v50;
      v43 = 30;
      v44 = (Height * 5.0);
      v42 = a5;
      v39 = v12;
      v40 = v21;
      v24 = v21;
      dispatch_sync(&_dispatch_main_q, v38);

      v25 = dispatch_time(0, 300000000000);
      dispatch_semaphore_wait(v24, v25);

LABEL_8:
      v26 = 1;
      goto LABEL_12;
    }

    if (+[RPTTestRunner isRecapAvailable])
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100007138;
      v34[3] = &unk_10001D148;
      v36 = &v50;
      v37 = a5;
      v35 = v12;
      dispatch_sync(&_dispatch_main_q, v34);

      v24 = v35;
      goto LABEL_8;
    }
  }

  v24 = +[ATAPPTUtilities testLog];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1000127C8(v12, v24, v27, v28, v29, v30, v31, v32);
  }

  v26 = 0;
LABEL_12:

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&buf, 8);

  return v26;
}

+ (id)prepareForPPT
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100006F3C;
  v9 = sub_100006F4C;
  v10 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000072EC;
  block[3] = &unk_10001D228;
  block[4] = &v5;
  dispatch_sync(&_dispatch_main_q, block);
  usleep(0xC350u);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (BOOL)selectButtonWithTitle:(id)a3 inTabBarController:(id)a4
{
  v6 = a3;
  v7 = [a1 _topViewControllerInTabBarController:a4];
  v8 = [v7 view];
  if ([a1 _selectButtonWithTitle:v6 inView:v8])
  {
    v9 = 1;
  }

  else
  {
    v10 = [v7 navigationController];
    v11 = [v10 navigationBar];

    if (v11)
    {
      v12 = [v7 navigationController];
      v13 = [v12 navigationBar];
      v9 = [a1 _selectButtonWithTitle:v6 inView:v13];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (BOOL)selectButtonWithTitle:(id)a3 inShelf:(id)a4 inTabBarController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 _topViewControllerInTabBarController:a5];
  v11 = [a1 _findShelfViewControllerInViewController:v10 withTitle:v9];

  if (v11)
  {
    v12 = [v11 view];
    v13 = [a1 _selectButtonWithTitle:v8 inView:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)selectFirstShelfWithButtonTitle:(id)a3 inTabBarController:(id)a4
{
  v6 = a3;
  v7 = [a1 _topViewControllerInTabBarController:a4];
  v8 = [v7 childViewControllers];
  v9 = [v8 count];

  v10 = 0;
  if (v9)
  {
    v11 = 0;
    while (1)
    {
      v12 = v10;
      v10 = [a1 _findShelfViewControllerInViewController:v7 withShelfRow:v11];

      if (v10)
      {
        v13 = [v10 view];
        v14 = [a1 _selectButtonWithTitle:v6 inView:v13];

        if (v14)
        {
          break;
        }
      }

      ++v11;
      v15 = [v7 childViewControllers];
      v16 = [v15 count];

      if (v11 >= v16)
      {
        goto LABEL_6;
      }
    }

    v25 = [v10 view];
    v24 = [a1 _selectButtonWithTitle:v6 inView:v25];
  }

  else
  {
LABEL_6:
    v17 = +[ATAPPTUtilities testLog];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100012834(v6, v17, v18, v19, v20, v21, v22, v23);
    }

    v24 = 0;
  }

  return v24;
}

+ (BOOL)selectTabWithTitle:(id)a3 inTabBarController:(id)a4
{
  v6 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000077E8;
  v13 = &unk_10001D250;
  v7 = a4;
  v14 = v7;
  v8 = v6;
  v15 = v8;
  v16 = v18;
  v17 = v20;
  dispatch_sync(&_dispatch_main_q, &v10);
  LOBYTE(a1) = [a1 _blockExecutionInTabBarController:v7 documentRef:v8 totalChildren:{1, v10, v11, v12, v13}];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);

  return a1;
}

+ (void)waitForNotificiation:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v6 = +[NSNotificationCenter defaultCenter];
  v7 = [a1 testOperationQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007B58;
  v11[3] = &unk_10001D278;
  v12 = v5;
  v8 = v5;
  v9 = [v6 addObserverForName:v4 object:0 queue:v7 usingBlock:v11];

  v10 = dispatch_time(0, 180000000000);
  dispatch_semaphore_wait(v8, v10);
}

+ (id)findScrollViewInView:(id)a3 desiredScrollViewClass:(Class)a4
{
  v5 = a3;
  v6 = [objc_opt_class() findScrollViewInView:v5 desiredScrollViewClass:a4 numScrollViewsToSkip:0];

  return v6;
}

+ (id)findScrollViewByIndexInStackCollectionView:(id)a3 index:(unint64_t)a4
{
  v5 = [a3 view];
  v6 = [ATAPPTUtilities findScrollViewInView:v5 desiredScrollViewClass:NSClassFromString(@"VideosUI.StackCollectionView")];

  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v6 subviews];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [v7 sortedArrayUsingComparator:&stru_10001D2B8];
  v15 = v14;
  if (v14 && [v14 count] > a4)
  {
    v16 = [v15 objectAtIndexedSubscript:a4];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_cellWithTitle:(id)a3 inViewController:(id)a4 returningCollectionView:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 collectionView];
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = [v9 view];
    v10 = [a1 _findCollectionViewInView:v11];

    if (!v10)
    {
LABEL_16:
      v18 = 0;
      goto LABEL_21;
    }
  }

  v12 = [v10 visibleCells];
  v27 = [v10 numberOfSections];
  if (!v27)
  {
    goto LABEL_16;
  }

  v25 = a5;
  v26 = v9;
  v13 = 0;
  while (1)
  {
    v14 = [v10 numberOfItemsInSection:v13];
    if (v14)
    {
      break;
    }

LABEL_14:
    if (++v13 == v27)
    {
      v18 = 0;
      goto LABEL_20;
    }
  }

  v15 = v14;
  v16 = 0;
  while (1)
  {
    v17 = [NSIndexPath indexPathForItem:v16 inSection:v13];
    v18 = [v10 cellForItemAtIndexPath:v17];

    if (v18)
    {
      break;
    }

LABEL_13:

    if (v15 == ++v16)
    {
      goto LABEL_14;
    }
  }

  v19 = [a1 _findLabelInView:v18];
  if ([v8 length])
  {
    [v19 text];
    v21 = v20 = a1;
    v22 = [v21 isEqualToString:v8];

    if (!v22)
    {
      a1 = v20;

      goto LABEL_13;
    }
  }

  if (v25)
  {
    v23 = v10;
    *v25 = v10;
  }

LABEL_20:
  v9 = v26;
LABEL_21:

  return v18;
}

+ (id)_findCollectionViewInView:(id)a3
{
  v4 = a3;
  v5 = [a1 _findViewOfType:objc_opt_class() inView:v4 withFilter:0];

  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  return v6;
}

+ (id)_findLabelInView:(id)a3
{
  v4 = a3;
  v5 = [a1 _findViewOfType:objc_opt_class() inView:v4 withFilter:0];

  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  return v6;
}

+ (id)_findLabelWithTitle:(id)a3 inView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008838;
  v13[3] = &unk_10001D308;
  v9 = v6;
  v14 = v9;
  v10 = [a1 _findViewOfType:v8 inView:v7 withFilter:v13];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_findViewOfType:(Class)a3 inView:(id)a4 withFilter:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      goto LABEL_19;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v8 subviews];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v10 = [a1 _findViewOfType:a3 inView:*(*(&v18 + 1) + 8 * i) withFilter:v9];
          v16 = 1;
          if (v9 && v10)
          {
            v16 = v9[2](v9, v10);
          }

          if (v10 && (v16 & 1) != 0)
          {

            goto LABEL_19;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  v10 = 0;
LABEL_19:

  return v10;
}

+ (id)_findScrollViewInViewController:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 performSelector:"collectionView" withObject:0], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v4, "performSelector:withObject:", "tableView", 0), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v7 = [v4 view];
    v6 = [a1 findScrollViewInView:v7 desiredScrollViewClass:0];
  }

  return v6;
}

+ (id)_findShelfViewControllerInViewController:(id)a3 withTitle:(id)a4
{
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [a3 childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 view];
        v14 = [a1 _findLabelWithTitle:v6 inView:v13];

        if (v14)
        {
          v15 = v12;

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

+ (id)_findShelfViewControllerInViewController:(id)a3 withShelfRow:(unint64_t)a4
{
  v5 = [a3 childViewControllers];
  v6 = [v5 objectAtIndexedSubscript:a4];

  return v6;
}

+ (BOOL)_selectButtonWithTitle:(id)a3 inView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _findTVButtonWithTitle:v6 inView:v7];
  if (v8 || ([a1 _findUIButtonWithTitle:v6 inView:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(a1, "_findVUIRoundButtonWithTitle:inView:", v6, v7), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008E10;
    block[3] = &unk_10001D0B8;
    v13 = v8;
    v9 = v8;
    dispatch_sync(&_dispatch_main_q, block);

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_findVUIRoundButtonWithTitle:(id)a3 inView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100008FFC;
  v20[3] = &unk_10001D330;
  v22 = NSClassFromString(@"VUIRoundButton");
  v8 = v6;
  v21 = v8;
  v9 = [a1 _findViewOfType:v22 inView:v7 withFilter:v20];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 subviews];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v11)
  {
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v16 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v11;
}

+ (id)_findTVButtonWithTitle:(id)a3 inView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NSClassFromString(@"TVButton");
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009230;
  v12[3] = &unk_10001D308;
  v13 = v6;
  v9 = v6;
  v10 = [a1 _findViewOfType:v8 inView:v7 withFilter:v12];

  return v10;
}

+ (id)_findUIButtonWithTitle:(id)a3 inView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000093F0;
  v12[3] = &unk_10001D308;
  v13 = v6;
  v9 = v6;
  v10 = [a1 _findViewOfType:v8 inView:v7 withFilter:v12];

  return v10;
}

+ (id)_topViewControllerInTabBarController:(id)a3
{
  v3 = [a3 selectedViewController];
  v4 = [v3 topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 templateViewController];

    v4 = v5;
  }

  return v4;
}

+ (id)topMostController
{
  v2 = +[UIWindow keyWindow];
  v3 = [v2 rootViewController];

  v4 = [v3 presentedViewController];

  if (v4)
  {
    do
    {
      v5 = [v3 presentedViewController];

      v6 = [v5 presentedViewController];

      v3 = v5;
    }

    while (v6);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

@end