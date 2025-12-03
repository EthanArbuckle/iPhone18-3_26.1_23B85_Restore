@interface ATAPPTUtilities
+ (BOOL)_selectButtonWithTitle:(id)title inView:(id)view;
+ (BOOL)performScrollViewTest:(id)test testOptions:(id)options scrollAxis:(unint64_t)axis tabBarController:(id)controller scrollViewBlock:(id)block;
+ (BOOL)selectButtonWithTitle:(id)title inShelf:(id)shelf inTabBarController:(id)controller;
+ (BOOL)selectButtonWithTitle:(id)title inTabBarController:(id)controller;
+ (BOOL)selectFirstShelfWithButtonTitle:(id)title inTabBarController:(id)controller;
+ (BOOL)selectTabWithTitle:(id)title inTabBarController:(id)controller;
+ (id)_cellWithTitle:(id)title inViewController:(id)controller returningCollectionView:(id *)view;
+ (id)_findCollectionViewInView:(id)view;
+ (id)_findLabelInView:(id)view;
+ (id)_findLabelWithTitle:(id)title inView:(id)view;
+ (id)_findScrollViewInViewController:(id)controller;
+ (id)_findShelfViewControllerInViewController:(id)controller withShelfRow:(unint64_t)row;
+ (id)_findShelfViewControllerInViewController:(id)controller withTitle:(id)title;
+ (id)_findTVButtonWithTitle:(id)title inView:(id)view;
+ (id)_findUIButtonWithTitle:(id)title inView:(id)view;
+ (id)_findVUIRoundButtonWithTitle:(id)title inView:(id)view;
+ (id)_findViewOfType:(Class)type inView:(id)view withFilter:(id)filter;
+ (id)_topViewControllerInTabBarController:(id)controller;
+ (id)findScrollViewByIndexInStackCollectionView:(id)view index:(unint64_t)index;
+ (id)findScrollViewInView:(id)view desiredScrollViewClass:(Class)class;
+ (id)prepareForPPT;
+ (id)testLog;
+ (id)testOperationQueue;
+ (id)topMostController;
+ (void)waitForNotificiation:(id)notificiation;
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

+ (BOOL)performScrollViewTest:(id)test testOptions:(id)options scrollAxis:(unint64_t)axis tabBarController:(id)controller scrollViewBlock:(id)block
{
  testCopy = test;
  optionsCopy = options;
  controllerCopy = controller;
  blockCopy = block;
  v16 = +[ATAPPTUtilities testLog];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = testCopy;
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
  selfCopy = self;
  v17 = controllerCopy;
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
  v18 = blockCopy;
  v46 = v18;
  v47 = &v50;
  v48 = &buf;
  selfCopy2 = self;
  dispatch_sync(&_dispatch_main_q, v45);

  if (v51[5])
  {
    lowercaseString = [testCopy lowercaseString];
    v20 = [lowercaseString containsString:@"landscape"];

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
      axisCopy = axis;
      v39 = testCopy;
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
      axisCopy2 = axis;
      v35 = testCopy;
      dispatch_sync(&_dispatch_main_q, v34);

      v24 = v35;
      goto LABEL_8;
    }
  }

  v24 = +[ATAPPTUtilities testLog];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1000127C8(testCopy, v24, v27, v28, v29, v30, v31, v32);
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

+ (BOOL)selectButtonWithTitle:(id)title inTabBarController:(id)controller
{
  titleCopy = title;
  v7 = [self _topViewControllerInTabBarController:controller];
  view = [v7 view];
  if ([self _selectButtonWithTitle:titleCopy inView:view])
  {
    v9 = 1;
  }

  else
  {
    navigationController = [v7 navigationController];
    navigationBar = [navigationController navigationBar];

    if (navigationBar)
    {
      navigationController2 = [v7 navigationController];
      navigationBar2 = [navigationController2 navigationBar];
      v9 = [self _selectButtonWithTitle:titleCopy inView:navigationBar2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (BOOL)selectButtonWithTitle:(id)title inShelf:(id)shelf inTabBarController:(id)controller
{
  titleCopy = title;
  shelfCopy = shelf;
  v10 = [self _topViewControllerInTabBarController:controller];
  v11 = [self _findShelfViewControllerInViewController:v10 withTitle:shelfCopy];

  if (v11)
  {
    view = [v11 view];
    v13 = [self _selectButtonWithTitle:titleCopy inView:view];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)selectFirstShelfWithButtonTitle:(id)title inTabBarController:(id)controller
{
  titleCopy = title;
  v7 = [self _topViewControllerInTabBarController:controller];
  childViewControllers = [v7 childViewControllers];
  v9 = [childViewControllers count];

  v10 = 0;
  if (v9)
  {
    v11 = 0;
    while (1)
    {
      v12 = v10;
      v10 = [self _findShelfViewControllerInViewController:v7 withShelfRow:v11];

      if (v10)
      {
        view = [v10 view];
        v14 = [self _selectButtonWithTitle:titleCopy inView:view];

        if (v14)
        {
          break;
        }
      }

      ++v11;
      childViewControllers2 = [v7 childViewControllers];
      v16 = [childViewControllers2 count];

      if (v11 >= v16)
      {
        goto LABEL_6;
      }
    }

    view2 = [v10 view];
    v24 = [self _selectButtonWithTitle:titleCopy inView:view2];
  }

  else
  {
LABEL_6:
    v17 = +[ATAPPTUtilities testLog];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100012834(titleCopy, v17, v18, v19, v20, v21, v22, v23);
    }

    v24 = 0;
  }

  return v24;
}

+ (BOOL)selectTabWithTitle:(id)title inTabBarController:(id)controller
{
  titleCopy = title;
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
  controllerCopy = controller;
  v14 = controllerCopy;
  v8 = titleCopy;
  v15 = v8;
  v16 = v18;
  v17 = v20;
  dispatch_sync(&_dispatch_main_q, &v10);
  LOBYTE(self) = [self _blockExecutionInTabBarController:controllerCopy documentRef:v8 totalChildren:{1, v10, v11, v12, v13}];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);

  return self;
}

+ (void)waitForNotificiation:(id)notificiation
{
  notificiationCopy = notificiation;
  v5 = dispatch_semaphore_create(0);
  v6 = +[NSNotificationCenter defaultCenter];
  testOperationQueue = [self testOperationQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007B58;
  v11[3] = &unk_10001D278;
  v12 = v5;
  v8 = v5;
  v9 = [v6 addObserverForName:notificiationCopy object:0 queue:testOperationQueue usingBlock:v11];

  v10 = dispatch_time(0, 180000000000);
  dispatch_semaphore_wait(v8, v10);
}

+ (id)findScrollViewInView:(id)view desiredScrollViewClass:(Class)class
{
  viewCopy = view;
  v6 = [objc_opt_class() findScrollViewInView:viewCopy desiredScrollViewClass:class numScrollViewsToSkip:0];

  return v6;
}

+ (id)findScrollViewByIndexInStackCollectionView:(id)view index:(unint64_t)index
{
  view = [view view];
  v6 = [ATAPPTUtilities findScrollViewInView:view desiredScrollViewClass:NSClassFromString(@"VideosUI.StackCollectionView")];

  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  subviews = [v6 subviews];
  v9 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addObject:v13];
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [v7 sortedArrayUsingComparator:&stru_10001D2B8];
  v15 = v14;
  if (v14 && [v14 count] > index)
  {
    v16 = [v15 objectAtIndexedSubscript:index];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_cellWithTitle:(id)title inViewController:(id)controller returningCollectionView:(id *)view
{
  titleCopy = title;
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    collectionView = [controllerCopy collectionView];
    if (!collectionView)
    {
      goto LABEL_16;
    }
  }

  else
  {
    view = [controllerCopy view];
    collectionView = [self _findCollectionViewInView:view];

    if (!collectionView)
    {
LABEL_16:
      v18 = 0;
      goto LABEL_21;
    }
  }

  visibleCells = [collectionView visibleCells];
  numberOfSections = [collectionView numberOfSections];
  if (!numberOfSections)
  {
    goto LABEL_16;
  }

  viewCopy = view;
  v26 = controllerCopy;
  v13 = 0;
  while (1)
  {
    v14 = [collectionView numberOfItemsInSection:v13];
    if (v14)
    {
      break;
    }

LABEL_14:
    if (++v13 == numberOfSections)
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
    v18 = [collectionView cellForItemAtIndexPath:v17];

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

  v19 = [self _findLabelInView:v18];
  if ([titleCopy length])
  {
    [v19 text];
    v21 = v20 = self;
    v22 = [v21 isEqualToString:titleCopy];

    if (!v22)
    {
      self = v20;

      goto LABEL_13;
    }
  }

  if (viewCopy)
  {
    v23 = collectionView;
    *viewCopy = collectionView;
  }

LABEL_20:
  controllerCopy = v26;
LABEL_21:

  return v18;
}

+ (id)_findCollectionViewInView:(id)view
{
  viewCopy = view;
  v5 = [self _findViewOfType:objc_opt_class() inView:viewCopy withFilter:0];

  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  return v6;
}

+ (id)_findLabelInView:(id)view
{
  viewCopy = view;
  v5 = [self _findViewOfType:objc_opt_class() inView:viewCopy withFilter:0];

  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  return v6;
}

+ (id)_findLabelWithTitle:(id)title inView:(id)view
{
  titleCopy = title;
  viewCopy = view;
  v8 = objc_opt_class();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008838;
  v13[3] = &unk_10001D308;
  v9 = titleCopy;
  v14 = v9;
  v10 = [self _findViewOfType:v8 inView:viewCopy withFilter:v13];

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

+ (id)_findViewOfType:(Class)type inView:(id)view withFilter:(id)filter
{
  viewCopy = view;
  filterCopy = filter;
  if (viewCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = viewCopy;
      goto LABEL_19;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    subviews = [viewCopy subviews];
    v12 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v10 = [self _findViewOfType:type inView:*(*(&v18 + 1) + 8 * i) withFilter:filterCopy];
          v16 = 1;
          if (filterCopy && v10)
          {
            v16 = filterCopy[2](filterCopy, v10);
          }

          if (v10 && (v16 & 1) != 0)
          {

            goto LABEL_19;
          }
        }

        v13 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
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

+ (id)_findScrollViewInViewController:(id)controller
{
  controllerCopy = controller;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([controllerCopy performSelector:"collectionView" withObject:0], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(controllerCopy, "performSelector:withObject:", "tableView", 0), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    view = [controllerCopy view];
    v6 = [self findScrollViewInView:view desiredScrollViewClass:0];
  }

  return v6;
}

+ (id)_findShelfViewControllerInViewController:(id)controller withTitle:(id)title
{
  titleCopy = title;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  childViewControllers = [controller childViewControllers];
  v8 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        view = [v12 view];
        v14 = [self _findLabelWithTitle:titleCopy inView:view];

        if (v14)
        {
          v15 = v12;

          goto LABEL_11;
        }
      }

      v9 = [childViewControllers countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (id)_findShelfViewControllerInViewController:(id)controller withShelfRow:(unint64_t)row
{
  childViewControllers = [controller childViewControllers];
  v6 = [childViewControllers objectAtIndexedSubscript:row];

  return v6;
}

+ (BOOL)_selectButtonWithTitle:(id)title inView:(id)view
{
  titleCopy = title;
  viewCopy = view;
  v8 = [self _findTVButtonWithTitle:titleCopy inView:viewCopy];
  if (v8 || ([self _findUIButtonWithTitle:titleCopy inView:viewCopy], (v8 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(self, "_findVUIRoundButtonWithTitle:inView:", titleCopy, viewCopy), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
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

+ (id)_findVUIRoundButtonWithTitle:(id)title inView:(id)view
{
  titleCopy = title;
  viewCopy = view;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100008FFC;
  v20[3] = &unk_10001D330;
  v22 = NSClassFromString(@"VUIRoundButton");
  v8 = titleCopy;
  v21 = v8;
  v9 = [self _findViewOfType:v22 inView:viewCopy withFilter:v20];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [v9 subviews];
  v11 = [subviews countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v11)
  {
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(subviews);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = [subviews countByEnumeratingWithState:&v16 objects:v23 count:16];
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

+ (id)_findTVButtonWithTitle:(id)title inView:(id)view
{
  titleCopy = title;
  viewCopy = view;
  v8 = NSClassFromString(@"TVButton");
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009230;
  v12[3] = &unk_10001D308;
  v13 = titleCopy;
  v9 = titleCopy;
  v10 = [self _findViewOfType:v8 inView:viewCopy withFilter:v12];

  return v10;
}

+ (id)_findUIButtonWithTitle:(id)title inView:(id)view
{
  titleCopy = title;
  viewCopy = view;
  v8 = objc_opt_class();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000093F0;
  v12[3] = &unk_10001D308;
  v13 = titleCopy;
  v9 = titleCopy;
  v10 = [self _findViewOfType:v8 inView:viewCopy withFilter:v12];

  return v10;
}

+ (id)_topViewControllerInTabBarController:(id)controller
{
  selectedViewController = [controller selectedViewController];
  topViewController = [selectedViewController topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    templateViewController = [topViewController templateViewController];

    topViewController = templateViewController;
  }

  return topViewController;
}

+ (id)topMostController
{
  v2 = +[UIWindow keyWindow];
  rootViewController = [v2 rootViewController];

  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [rootViewController presentedViewController];

      v5PresentedViewController = [presentedViewController2 presentedViewController];

      rootViewController = presentedViewController2;
    }

    while (v5PresentedViewController);
  }

  else
  {
    presentedViewController2 = rootViewController;
  }

  return presentedViewController2;
}

@end