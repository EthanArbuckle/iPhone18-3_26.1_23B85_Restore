@interface BKRootViewController
- (BKRootViewController)init;
- (BOOL)_behaviorIsAllowed:(id)allowed;
- (BOOL)canHandleDropSession:(id)session behavior:(id)behavior;
- (BOOL)shouldAutorotate;
- (id)_defaultCollectionIDForBehavior:(id)behavior;
- (id)analyticsSessionHost;
- (id)bc_ancestorOverrideCardPresentingViewController;
- (id)flowControllers;
- (int64_t)_computedUserInterfaceStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_userInterfaceStyleDidChange:(id)change;
- (void)bc_dismissCardViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)bc_presentCardViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)dealloc;
- (void)performDropWithSession:(id)session behavior:(id)behavior;
- (void)setRootViewController:(id)controller;
- (void)syncLayoutControllerNeedsFlushing:(id)flushing;
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
  view = [(BKRootViewController *)self view];
  [view setBackgroundColor:v3];
}

- (unint64_t)supportedInterfaceOrientations
{
  rootViewController = [(BKRootViewController *)self rootViewController];

  if (rootViewController)
  {
    rootViewController2 = [(BKRootViewController *)self rootViewController];
    supportedInterfaceOrientations = [rootViewController2 supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
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

- (void)syncLayoutControllerNeedsFlushing:(id)flushing
{
  view = [(BKRootViewController *)self view];
  [view setNeedsLayout];
}

- (id)bc_ancestorOverrideCardPresentingViewController
{
  presentedViewController = [(BKRootViewController *)self presentedViewController];
  if (presentedViewController && ((BUProtocolCast(), v4 = objc_claimAutoreleasedReturnValue(), v4, v5 = presentedViewController, v4) || (v6 = [(BKRootViewController *)presentedViewController modalPresentationStyle], v5 = self, v6 == 2)))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)bc_presentCardViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  presentedViewController = [(BKRootViewController *)self presentedViewController];
  modalSheetVC = self->_modalSheetVC;
  self->_modalSheetVC = 0;

  if (presentedViewController && [presentedViewController modalPresentationStyle] == 2)
  {
    objc_storeStrong(&self->_modalSheetVC, presentedViewController);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004EDF0;
    v13[3] = &unk_100A03468;
    v14 = controllerCopy;
    v17 = animatedCopy;
    selfCopy = self;
    v16 = completionCopy;
    [presentedViewController dismissViewControllerAnimated:animatedCopy completion:v13];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = BKRootViewController;
    [(BKRootViewController *)&v12 bc_presentCardViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)bc_dismissCardViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004EEFC;
  v9[3] = &unk_100A03490;
  animatedCopy2 = animated;
  selfCopy = self;
  completionCopy = completion;
  v8.receiver = selfCopy;
  v8.super_class = BKRootViewController;
  v7 = completionCopy;
  [(BKRootViewController *)&v8 bc_dismissCardViewController:controller animated:animatedCopy completion:v9];
}

- (void)setRootViewController:(id)controller
{
  controllerCopy = controller;
  rootViewController = self->_rootViewController;
  if (rootViewController != controllerCopy)
  {
    v21 = controllerCopy;
    [(UIViewController *)rootViewController willMoveToParentViewController:0];
    view = [(UIViewController *)self->_rootViewController view];
    [view removeFromSuperview];

    [(UIViewController *)self->_rootViewController removeFromParentViewController];
    objc_storeStrong(&self->_rootViewController, controller);
    [(BKRootViewController *)self addChildViewController:v21];
    view2 = [(BKRootViewController *)self view];
    [view2 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    view3 = [(UIViewController *)v21 view];
    [view3 setFrame:{v10, v12, v14, v16}];

    view4 = [(UIViewController *)v21 view];
    [view4 setAutoresizingMask:18];

    view5 = [(BKRootViewController *)self view];
    view6 = [(UIViewController *)v21 view];
    [view5 addSubview:view6];

    [(UIViewController *)v21 didMoveToParentViewController:self];
    [(UIViewController *)self->_rootViewController setOverrideUserInterfaceStyle:[(BKRootViewController *)self _computedUserInterfaceStyle]];
    controllerCopy = v21;
  }
}

- (BOOL)shouldAutorotate
{
  rootViewController = [(BKRootViewController *)self rootViewController];
  shouldAutorotate = [rootViewController shouldAutorotate];

  return shouldAutorotate;
}

- (void)_userInterfaceStyleDidChange:(id)change
{
  changeCopy = change;
  if (+[NSThread isMainThread])
  {
    _computedUserInterfaceStyle = [(BKRootViewController *)self _computedUserInterfaceStyle];
    rootViewController = [(BKRootViewController *)self rootViewController];
    [rootViewController setOverrideUserInterfaceStyle:_computedUserInterfaceStyle];
  }

  else
  {
    [(BKRootViewController *)self performSelectorOnMainThread:a2 withObject:changeCopy waitUntilDone:0];
  }
}

- (id)analyticsSessionHost
{
  v3 = +[BKAppDelegate sceneManager];
  v4 = [v3 sceneControllerForViewController:self];

  objc_opt_class();
  v5 = BUDynamicCast();
  analyticsSessionHost = [v5 analyticsSessionHost];
  v7 = analyticsSessionHost;
  if (analyticsSessionHost)
  {
    v8 = analyticsSessionHost;
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
  rootViewController = [(BKRootViewController *)self rootViewController];
  v3 = BUProtocolCast();
  flowControllers = [v3 flowControllers];

  return flowControllers;
}

- (id)_defaultCollectionIDForBehavior:(id)behavior
{
  v3 = qword_100AF73C8;
  behaviorCopy = behavior;
  if (v3 != -1)
  {
    sub_100788228();
  }

  v5 = [qword_100AF73C0 objectForKeyedSubscript:behaviorCopy];

  return v5;
}

- (BOOL)_behaviorIsAllowed:(id)allowed
{
  v3 = [(BKRootViewController *)self _defaultCollectionIDForBehavior:allowed];
  v4 = v3 != 0;

  return v4;
}

- (void)performDropWithSession:(id)session behavior:(id)behavior
{
  sessionCopy = session;
  v39 = [(BKRootViewController *)self _defaultCollectionIDForBehavior:behavior];
  if (v39)
  {
    localDragSession = [sessionCopy localDragSession];

    if (localDragSession)
    {
      v8 = +[BKLibraryManager defaultManager];
      collectionController = [v8 collectionController];

      v9 = objc_opt_new();
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v37 = sessionCopy;
      items = [sessionCopy items];
      reverseObjectEnumerator = [items reverseObjectEnumerator];

      obj = reverseObjectEnumerator;
      v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v50 count:16];
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
            localObject = [v16 localObject];
            v18 = BUDynamicCast();

            objc_opt_class();
            localObject2 = [v16 localObject];
            v20 = BUDynamicCast();

            objc_opt_class();
            localObject3 = [v16 localObject];
            v22 = BUDynamicCast();

            assetID = [v22 assetID];
            v24 = [assetID length];

            if (v24)
            {
              v25 = +[BKLibraryManager defaultManager];
              assetID2 = [v22 assetID];
              v27 = [v25 libraryAssetOnMainQueueWithAssetID:assetID2];

              v18 = v27;
            }

            if (v18)
            {
              [v9 addObject:v18];
            }

            else if (v20)
            {
              storeID = [v20 storeID];
              v43[0] = _NSConcreteStackBlock;
              v43[1] = 3221225472;
              v43[2] = sub_10004F91C;
              v43[3] = &unk_100A034F8;
              v44 = v20;
              v45 = v39;
              [collectionController addStoreID:storeID toCollectionID:v45 forceToTop:1 completion:v43];
            }
          }

          v13 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v13);
      }

      if ([v9 count])
      {
        v29 = +[BKLibraryManager defaultManager];
        collectionProvider = [v29 collectionProvider];

        v31 = [collectionProvider collectionOnMainQueueWithCollectionID:v39 error:0];
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_10004F970;
        v41[3] = &unk_100A03520;
        v42 = v39;
        [collectionController addBooks:v9 toCollection:v31 forceToTop:1 completion:v41];
      }

      sessionCopy = v37;
    }

    else
    {
      v32 = sub_1001199C0();
      v33 = sub_10011AD6C(sessionCopy, v32);

      if (v33)
      {
        v34 = +[BKAppDelegate sceneManager];
        v35 = [v34 sceneControllerForViewController:self];

        newShowURLTransaction = [v35 newShowURLTransaction];
        sub_100119D68(sessionCopy, v39, newShowURLTransaction);
        if (sub_10011ABBC(sessionCopy))
        {
          sub_100119C44(sessionCopy);
        }
      }
    }
  }
}

- (BOOL)canHandleDropSession:(id)session behavior:(id)behavior
{
  sessionCopy = session;
  if ([(BKRootViewController *)self _behaviorIsAllowed:behavior])
  {
    localDragSession = [sessionCopy localDragSession];

    if (localDragSession)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      items = [sessionCopy items];
      v9 = [items countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v9)
      {
        v25 = sessionCopy;
        v10 = *v27;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(items);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            localObject = [v12 localObject];
            v14 = BUDynamicCast();

            objc_opt_class();
            localObject2 = [v12 localObject];
            v16 = BUDynamicCast();

            objc_opt_class();
            localObject3 = [v12 localObject];
            v18 = BUDynamicCast();

            assetID = [v18 assetID];
            v20 = [assetID length];

            if (v20)
            {
              v21 = +[BKLibraryManager defaultManager];
              assetID2 = [v18 assetID];
              v23 = [v21 libraryAssetOnMainQueueWithAssetID:assetID2];

              v14 = v23;
            }

            if (v14 | v16)
            {
              LOBYTE(v9) = 1;
              goto LABEL_16;
            }
          }

          v9 = [items countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }

LABEL_16:
        sessionCopy = v25;
      }
    }

    else
    {
      items = sub_100119840();
      LOBYTE(v9) = [sessionCopy hasItemsConformingToTypeIdentifiers:items];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end