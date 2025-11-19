@interface BKWelcomeScreenManager
+ (id)sharedManager;
- (BKWelcomeScreenManager)initWithItems:(id)a3 isRTL:(BOOL)a4;
- (BOOL)moreScreensComing;
- (CGSize)preferredContentSizeForNavigationController:(id)a3;
- (UINavigationController)navigationController;
- (id)navigationController:(id)a3 interactionControllerForAnimationController:(id)a4;
- (id)nextItemHavingWelcomeScreenToShow;
- (id)nextItemHavingWelcomeScreenToShowAfterItem:(id)a3;
- (id)welcomeScreenViewControllerFromItem:(id)a3;
- (void)_presentTheNextViewController;
- (void)_sequenceFinished;
- (void)_setupViewControllers;
- (void)animateTransition:(id)a3;
- (void)animationEnded:(BOOL)a3;
- (void)dealloc;
- (void)finishCurrentItem;
- (void)runWithCompletion:(id)a3;
@end

@implementation BKWelcomeScreenManager

+ (id)sharedManager
{
  WeakRetained = objc_loadWeakRetained(&qword_100AF7710);

  return WeakRetained;
}

- (BKWelcomeScreenManager)initWithItems:(id)a3 isRTL:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v18.receiver = self;
  v18.super_class = BKWelcomeScreenManager;
  v7 = [(BKWelcomeScreenManager *)&v18 init];
  if (v7)
  {
    v8 = [v6 copy];
    items = v7->_items;
    v7->_items = v8;

    v10 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
    viewControllers = v7->_viewControllers;
    v7->_viewControllers = v10;

    currentItem = v7->_currentItem;
    v7->_currentItem = 0;

    v13 = [BKSlideTransition transitionWithDirection:!v4];
    defaultSlideAnimator = v7->_defaultSlideAnimator;
    v7->_defaultSlideAnimator = v13;

    tabIdentifierToShow = v7->_tabIdentifierToShow;
    v7->_tabIdentifierToShow = 0;

    lastViewController = v7->_lastViewController;
    v7->_lastViewController = 0;

    objc_storeWeak(&qword_100AF7710, v7);
  }

  return v7;
}

- (void)dealloc
{
  completion = self->_completion;
  self->_completion = 0;

  v4.receiver = self;
  v4.super_class = BKWelcomeScreenManager;
  [(BKWelcomeScreenManager *)&v4 dealloc];
}

- (UINavigationController)navigationController
{
  navigationController = self->_navigationController;
  if (!navigationController)
  {
    v4 = objc_alloc_init(BKUpgradeViewController);
    v5 = [[BKWelcomeNavigationController alloc] initWithRootViewController:v4];
    [(BKWelcomeNavigationController *)v5 setDelegate:self];
    [(BKWelcomeNavigationController *)v5 setBkDelegate:self];
    [(BKWelcomeNavigationController *)v5 setModalPresentationStyle:2];
    [(BKWelcomeNavigationController *)v5 setModalTransitionStyle:2];
    v6 = [(BKWelcomeNavigationController *)v5 presentationController];
    [v6 setDelegate:self];

    [(BKWelcomeNavigationController *)v5 setNavigationBarHidden:1 animated:0];
    v7 = objc_alloc_init(UINavigationBarAppearance);
    [v7 configureWithTransparentBackground];
    v8 = [(BKWelcomeNavigationController *)v5 navigationBar];
    [v8 setStandardAppearance:v7];

    v9 = self->_navigationController;
    self->_navigationController = &v5->super;

    navigationController = self->_navigationController;
  }

  return navigationController;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v5 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "runWithCompletion: Start", buf, 2u);
  }

  if (v4)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100136C50;
    v10 = &unk_100A08130;
    v11 = self;
    v12 = v4;
    v6 = self;
    [(BKWelcomeScreenManager *)v6 setCompletion:&v7];
    [(BKWelcomeScreenManager *)v6 _setupViewControllers:v7];
  }
}

- (id)nextItemHavingWelcomeScreenToShowAfterItem:(id)a3
{
  v4 = a3;
  v5 = [(BKWelcomeScreenManager *)self items];
  v6 = [v5 indexOfObjectIdenticalTo:v4];

  v7 = [(BKWelcomeScreenManager *)self items];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    while (1)
    {
      if (v6 == 0x7FFFFFFFFFFFFFFFLL || v9 > v6)
      {
        v11 = [(BKWelcomeScreenManager *)self items];
        v12 = [v11 objectAtIndexedSubscript:v9];
        v13 = [v12 welcomeScreenShouldShow];

        if (v13)
        {
          break;
        }
      }

      ++v9;
      v14 = [(BKWelcomeScreenManager *)self items];
      v15 = [v14 count];

      if (v9 >= v15)
      {
        goto LABEL_10;
      }
    }

    v17 = [(BKWelcomeScreenManager *)self items];
    v16 = [v17 objectAtIndexedSubscript:v9];
  }

  else
  {
LABEL_10:
    v16 = 0;
  }

  return v16;
}

- (id)nextItemHavingWelcomeScreenToShow
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 launchedToTest];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(BKWelcomeScreenManager *)self currentItem];
    v5 = [(BKWelcomeScreenManager *)self nextItemHavingWelcomeScreenToShowAfterItem:v6];
  }

  return v5;
}

- (BOOL)moreScreensComing
{
  v2 = [(BKWelcomeScreenManager *)self nextItemHavingWelcomeScreenToShow];
  v3 = v2 != 0;

  return v3;
}

- (void)_setupViewControllers
{
  v3 = [(BKWelcomeScreenManager *)self nextItemHavingWelcomeScreenToShow];
  if (v3)
  {
    objc_storeStrong(&self->_currentItem, v3);
    v4 = [(BKWelcomeScreenManager *)self welcomeScreenViewControllerFromItem:v3];
    v5 = BSUIWelcomeScreenLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_setupViewControllers: showing: %{public}@", buf, 0xCu);
    }

    v6 = [(BKWelcomeScreenManager *)self navigationController];
    [v6 setNavigationBarHidden:objc_msgSend(v3 animated:{"welcomeScreenShouldDisplayNavigationBar") ^ 1, 0}];

    v7 = [(BKWelcomeScreenManager *)self navigationController];
    v10 = v4;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [v7 setViewControllers:v8 animated:0];

    v9 = [(BKWelcomeScreenManager *)self navigationController];
    [v9 setNeedsUpdateOfSupportedInterfaceOrientations];

    self->_didShowWelcome = 1;
  }

  else
  {
    self->_didShowWelcome = 0;
    [(BKWelcomeScreenManager *)self _sequenceFinished];
  }
}

- (void)_presentTheNextViewController
{
  v3 = [(BKWelcomeScreenManager *)self nextItemHavingWelcomeScreenToShow];
  if (v3)
  {
    v4 = [(BKWelcomeScreenManager *)self welcomeScreenViewControllerFromItem:v3];
    v5 = [(BKWelcomeScreenManager *)self navigationController];
    v6 = [v5 topViewController];
    lastViewController = self->_lastViewController;
    self->_lastViewController = v6;

    v8 = BSUIWelcomeScreenLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_presentTheNextViewController: showing: %{public}@", buf, 0xCu);
    }

    v9 = [(BKWelcomeScreenManager *)self navigationController];
    [v9 setNavigationBarHidden:objc_msgSend(v3 animated:{"welcomeScreenShouldDisplayNavigationBar") ^ 1, 1}];

    v10 = [(BKWelcomeScreenManager *)self navigationController];
    v13 = v4;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
    [v10 setViewControllers:v11 animated:1];

    v12 = [(BKWelcomeScreenManager *)self navigationController];
    [v12 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  else
  {
    [(BKWelcomeScreenManager *)self finishCurrentItem];
    [(BKWelcomeScreenManager *)self _sequenceFinished];
  }
}

- (id)welcomeScreenViewControllerFromItem:(id)a3
{
  v4 = a3;
  v5 = [(BKWelcomeScreenManager *)self viewControllers];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    objc_initWeak(&location, self);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100137368;
    v14 = &unk_100A05C58;
    objc_copyWeak(&v15, &location);
    v6 = [v4 welcomeScreenViewControllerWithCompletion:&v11];
    if (objc_opt_respondsToSelector())
    {
      v7 = [(BKWelcomeScreenManager *)self nextItemHavingWelcomeScreenToShowAfterItem:v4, v11, v12, v13, v14];
      v8 = v7 == 0;

      [v4 welcomeScreenViewController:v6 configureWithLastScreen:v8];
    }

    [v6 setModalPresentationStyle:{2, v11, v12, v13, v14}];
    v9 = [(BKWelcomeScreenManager *)self viewControllers];
    [v9 setObject:v6 forKey:v4];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)_sequenceFinished
{
  v3 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_sequenceFinished", v7, 2u);
  }

  v4 = [(BKWelcomeScreenManager *)self completion];

  if (v4)
  {
    v5 = [(BKWelcomeScreenManager *)self completion];
    v6 = [(BKWelcomeScreenManager *)self tabIdentifierToShow];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v5 = BSUIWelcomeScreenLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100790888(v5);
    }
  }
}

- (void)finishCurrentItem
{
  if (objc_opt_respondsToSelector())
  {
    [(BSUIWelcomeScreenItem *)self->_currentItem welcomeScreenViewControllerDidDismiss];
  }

  v3 = [(BKWelcomeScreenManager *)self nextItemHavingWelcomeScreenToShow];
  currentItem = self->_currentItem;
  self->_currentItem = v3;

  lastViewController = self->_lastViewController;
  self->_lastViewController = 0;
}

- (id)navigationController:(id)a3 interactionControllerForAnimationController:(id)a4
{
  v4 = [(BKWelcomeScreenManager *)self lastViewController:a3];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 interactionController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)animateTransition:(id)a3
{
  v6 = a3;
  v4 = [v6 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (objc_opt_respondsToSelector())
  {
    [v4 animateTransition:v6];
  }

  else
  {
    v5 = [(BKWelcomeScreenManager *)self defaultSlideAnimator];
    [v5 animateTransition:v6];
  }
}

- (void)animationEnded:(BOOL)a3
{
  if (a3)
  {
    [(BKWelcomeScreenManager *)self finishCurrentItem];
  }
}

- (CGSize)preferredContentSizeForNavigationController:(id)a3
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(BKWelcomeScreenManager *)self items:a3];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 welcomeScreenShouldShow])
        {
          v12 = [(BKWelcomeScreenManager *)self welcomeScreenViewControllerFromItem:v11];
          [v12 preferredContentSize];
          if (width < v13)
          {
            width = v13;
          }

          if (height < v14)
          {
            height = v14;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = width;
  v16 = height;
  result.height = v16;
  result.width = v15;
  return result;
}

@end