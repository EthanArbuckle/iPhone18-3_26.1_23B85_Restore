@interface BKRootViewController
- (BKRootViewController)init;
- (BOOL)_behaviorIsAllowed:(id)a3;
- (BOOL)canHandleDropSession:(id)a3 behavior:(id)a4;
- (BOOL)shouldAutorotate;
- (id)_defaultCollectionIDForBehavior:(id)a3;
- (id)analyticsSessionHost;
- (id)bc_ancestorOverrideCardPresentingViewController;
- (id)flowControllers;
- (int64_t)_computedUserInterfaceStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_userInterfaceStyleDidChange:(id)a3;
- (void)bc_dismissCardViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)bc_presentCardViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)dealloc;
- (void)performDropWithSession:(id)a3 behavior:(id)a4;
- (void)setRootViewController:(id)a3;
- (void)syncLayoutControllerNeedsFlushing:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation BKRootViewController

- (BKRootViewController)init
{
  v8.receiver = self;
  v8.super_class = BKRootViewController;
  v2 = [(BKRootViewController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(BKRootViewController *)v2 setDefinesPresentationContext:1];
    v4 = [[TUISyncLayoutController alloc] initWithDelegate:v3];
    syncLayoutController = v3->_syncLayoutController;
    v3->_syncLayoutController = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"_userInterfaceStyleDidChange:" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BKRootViewController;
  [(BKRootViewController *)&v5 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(BKRootViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(BKRootViewController *)self rootViewController];

  if (v3)
  {
    v4 = [(BKRootViewController *)self rootViewController];
    v5 = [v4 supportedInterfaceOrientations];

    return v5;
  }

  else if (isPad())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (int64_t)_computedUserInterfaceStyle
{
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKRootViewController;
  [(BKRootViewController *)&v3 viewDidLayoutSubviews];
  [(TUISyncLayoutController *)self->_syncLayoutController flush];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = BKRootViewController;
  [(BKRootViewController *)&v4 dealloc];
}

- (void)syncLayoutControllerNeedsFlushing:(id)a3
{
  v3 = [(BKRootViewController *)self view];
  [v3 setNeedsLayout];
}

- (id)bc_ancestorOverrideCardPresentingViewController
{
  v3 = [(BKRootViewController *)self presentedViewController];
  if (v3 && ((BUProtocolCast(), v4 = objc_claimAutoreleasedReturnValue(), v4, v5 = v3, v4) || (v6 = [(BKRootViewController *)v3 modalPresentationStyle], v5 = self, v6 == 2)))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)bc_presentCardViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(BKRootViewController *)self presentedViewController];
  modalSheetVC = self->_modalSheetVC;
  self->_modalSheetVC = 0;

  if (v10 && [v10 modalPresentationStyle] == 2)
  {
    objc_storeStrong(&self->_modalSheetVC, v10);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004EDF0;
    v13[3] = &unk_100A03468;
    v14 = v8;
    v17 = v6;
    v15 = self;
    v16 = v9;
    [v10 dismissViewControllerAnimated:v6 completion:v13];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = BKRootViewController;
    [(BKRootViewController *)&v12 bc_presentCardViewController:v8 animated:v6 completion:v9];
  }
}

- (void)bc_dismissCardViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004EEFC;
  v9[3] = &unk_100A03490;
  v12 = a4;
  v10 = self;
  v11 = a5;
  v8.receiver = v10;
  v8.super_class = BKRootViewController;
  v7 = v11;
  [(BKRootViewController *)&v8 bc_dismissCardViewController:a3 animated:v5 completion:v9];
}

- (void)setRootViewController:(id)a3
{
  v5 = a3;
  rootViewController = self->_rootViewController;
  if (rootViewController != v5)
  {
    v21 = v5;
    [(UIViewController *)rootViewController willMoveToParentViewController:0];
    v7 = [(UIViewController *)self->_rootViewController view];
    [v7 removeFromSuperview];

    [(UIViewController *)self->_rootViewController removeFromParentViewController];
    objc_storeStrong(&self->_rootViewController, a3);
    [(BKRootViewController *)self addChildViewController:v21];
    v8 = [(BKRootViewController *)self view];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(UIViewController *)v21 view];
    [v17 setFrame:{v10, v12, v14, v16}];

    v18 = [(UIViewController *)v21 view];
    [v18 setAutoresizingMask:18];

    v19 = [(BKRootViewController *)self view];
    v20 = [(UIViewController *)v21 view];
    [v19 addSubview:v20];

    [(UIViewController *)v21 didMoveToParentViewController:self];
    [(UIViewController *)self->_rootViewController setOverrideUserInterfaceStyle:[(BKRootViewController *)self _computedUserInterfaceStyle]];
    v5 = v21;
  }
}

- (BOOL)shouldAutorotate
{
  v2 = [(BKRootViewController *)self rootViewController];
  v3 = [v2 shouldAutorotate];

  return v3;
}

- (void)_userInterfaceStyleDidChange:(id)a3
{
  v7 = a3;
  if (+[NSThread isMainThread])
  {
    v5 = [(BKRootViewController *)self _computedUserInterfaceStyle];
    v6 = [(BKRootViewController *)self rootViewController];
    [v6 setOverrideUserInterfaceStyle:v5];
  }

  else
  {
    [(BKRootViewController *)self performSelectorOnMainThread:a2 withObject:v7 waitUntilDone:0];
  }
}

- (id)analyticsSessionHost
{
  v3 = +[BKAppDelegate sceneManager];
  v4 = [v3 sceneControllerForViewController:self];

  objc_opt_class();
  v5 = BUDynamicCast();
  v6 = [v5 analyticsSessionHost];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[BKAppDelegate delegate];
  }

  v9 = v8;

  return v9;
}

- (id)flowControllers
{
  v2 = [(BKRootViewController *)self rootViewController];
  v3 = BUProtocolCast();
  v4 = [v3 flowControllers];

  return v4;
}

- (id)_defaultCollectionIDForBehavior:(id)a3
{
  v3 = qword_100AF73C8;
  v4 = a3;
  if (v3 != -1)
  {
    sub_100788228();
  }

  v5 = [qword_100AF73C0 objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)_behaviorIsAllowed:(id)a3
{
  v3 = [(BKRootViewController *)self _defaultCollectionIDForBehavior:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)performDropWithSession:(id)a3 behavior:(id)a4
{
  v6 = a3;
  v39 = [(BKRootViewController *)self _defaultCollectionIDForBehavior:a4];
  if (v39)
  {
    v7 = [v6 localDragSession];

    if (v7)
    {
      v8 = +[BKLibraryManager defaultManager];
      v38 = [v8 collectionController];

      v9 = objc_opt_new();
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v37 = v6;
      v10 = [v6 items];
      v11 = [v10 reverseObjectEnumerator];

      obj = v11;
      v12 = [v11 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v47;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v47 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v46 + 1) + 8 * i);
            objc_opt_class();
            v17 = [v16 localObject];
            v18 = BUDynamicCast();

            objc_opt_class();
            v19 = [v16 localObject];
            v20 = BUDynamicCast();

            objc_opt_class();
            v21 = [v16 localObject];
            v22 = BUDynamicCast();

            v23 = [v22 assetID];
            v24 = [v23 length];

            if (v24)
            {
              v25 = +[BKLibraryManager defaultManager];
              v26 = [v22 assetID];
              v27 = [v25 libraryAssetOnMainQueueWithAssetID:v26];

              v18 = v27;
            }

            if (v18)
            {
              [v9 addObject:v18];
            }

            else if (v20)
            {
              v28 = [v20 storeID];
              v43[0] = _NSConcreteStackBlock;
              v43[1] = 3221225472;
              v43[2] = sub_10004F91C;
              v43[3] = &unk_100A034F8;
              v44 = v20;
              v45 = v39;
              [v38 addStoreID:v28 toCollectionID:v45 forceToTop:1 completion:v43];
            }
          }

          v13 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v13);
      }

      if ([v9 count])
      {
        v29 = +[BKLibraryManager defaultManager];
        v30 = [v29 collectionProvider];

        v31 = [v30 collectionOnMainQueueWithCollectionID:v39 error:0];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_10004F970;
        v41[3] = &unk_100A03520;
        v42 = v39;
        [v38 addBooks:v9 toCollection:v31 forceToTop:1 completion:v41];
      }

      v6 = v37;
    }

    else
    {
      v32 = sub_1001199C0();
      v33 = sub_10011AD6C(v6, v32);

      if (v33)
      {
        v34 = +[BKAppDelegate sceneManager];
        v35 = [v34 sceneControllerForViewController:self];

        v36 = [v35 newShowURLTransaction];
        sub_100119D68(v6, v39, v36);
        if (sub_10011ABBC(v6))
        {
          sub_100119C44(v6);
        }
      }
    }
  }
}

- (BOOL)canHandleDropSession:(id)a3 behavior:(id)a4
{
  v6 = a3;
  if ([(BKRootViewController *)self _behaviorIsAllowed:a4])
  {
    v7 = [v6 localDragSession];

    if (v7)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = [v6 items];
      v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v9)
      {
        v25 = v6;
        v10 = *v27;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            v13 = [v12 localObject];
            v14 = BUDynamicCast();

            objc_opt_class();
            v15 = [v12 localObject];
            v16 = BUDynamicCast();

            objc_opt_class();
            v17 = [v12 localObject];
            v18 = BUDynamicCast();

            v19 = [v18 assetID];
            v20 = [v19 length];

            if (v20)
            {
              v21 = +[BKLibraryManager defaultManager];
              v22 = [v18 assetID];
              v23 = [v21 libraryAssetOnMainQueueWithAssetID:v22];

              v14 = v23;
            }

            if (v14 | v16)
            {
              LOBYTE(v9) = 1;
              goto LABEL_16;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }

LABEL_16:
        v6 = v25;
      }
    }

    else
    {
      v8 = sub_100119840();
      LOBYTE(v9) = [v6 hasItemsConformingToTypeIdentifiers:v8];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end