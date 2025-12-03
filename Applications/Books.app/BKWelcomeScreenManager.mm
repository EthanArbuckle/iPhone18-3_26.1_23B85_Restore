@interface BKWelcomeScreenManager
+ (id)sharedManager;
- (BKWelcomeScreenManager)initWithItems:(id)items isRTL:(BOOL)l;
- (BOOL)moreScreensComing;
- (CGSize)preferredContentSizeForNavigationController:(id)controller;
- (UINavigationController)navigationController;
- (id)navigationController:(id)controller interactionControllerForAnimationController:(id)animationController;
- (id)nextItemHavingWelcomeScreenToShow;
- (id)nextItemHavingWelcomeScreenToShowAfterItem:(id)item;
- (id)welcomeScreenViewControllerFromItem:(id)item;
- (void)_presentTheNextViewController;
- (void)_sequenceFinished;
- (void)_setupViewControllers;
- (void)animateTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
- (void)dealloc;
- (void)finishCurrentItem;
- (void)runWithCompletion:(id)completion;
@end

@implementation BKWelcomeScreenManager

+ (id)sharedManager
{
  WeakRetained = objc_loadWeakRetained(&qword_100AF7710);

  return WeakRetained;
}

- (BKWelcomeScreenManager)initWithItems:(id)items isRTL:(BOOL)l
{
  lCopy = l;
  itemsCopy = items;
  v18.receiver = self;
  v18.super_class = BKWelcomeScreenManager;
  v7 = [(BKWelcomeScreenManager *)&v18 init];
  if (v7)
  {
    v8 = [itemsCopy copy];
    items = v7->_items;
    v7->_items = v8;

    v10 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
    viewControllers = v7->_viewControllers;
    v7->_viewControllers = v10;

    currentItem = v7->_currentItem;
    v7->_currentItem = 0;

    v13 = [BKSlideTransition transitionWithDirection:!lCopy];
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
    presentationController = [(BKWelcomeNavigationController *)v5 presentationController];
    [presentationController setDelegate:self];

    [(BKWelcomeNavigationController *)v5 setNavigationBarHidden:1 animated:0];
    v7 = objc_alloc_init(UINavigationBarAppearance);
    [v7 configureWithTransparentBackground];
    navigationBar = [(BKWelcomeNavigationController *)v5 navigationBar];
    [navigationBar setStandardAppearance:v7];

    v9 = self->_navigationController;
    self->_navigationController = &v5->super;

    navigationController = self->_navigationController;
  }

  return navigationController;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = BSUIWelcomeScreenLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "runWithCompletion: Start", buf, 2u);
  }

  if (completionCopy)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100136C50;
    v10 = &unk_100A08130;
    selfCopy = self;
    v12 = completionCopy;
    selfCopy2 = self;
    [(BKWelcomeScreenManager *)selfCopy2 setCompletion:&v7];
    [(BKWelcomeScreenManager *)selfCopy2 _setupViewControllers:v7];
  }
}

- (id)nextItemHavingWelcomeScreenToShowAfterItem:(id)item
{
  itemCopy = item;
  items = [(BKWelcomeScreenManager *)self items];
  v6 = [items indexOfObjectIdenticalTo:itemCopy];

  items2 = [(BKWelcomeScreenManager *)self items];
  v8 = [items2 count];

  if (v8)
  {
    v9 = 0;
    while (1)
    {
      if (v6 == 0x7FFFFFFFFFFFFFFFLL || v9 > v6)
      {
        items3 = [(BKWelcomeScreenManager *)self items];
        v12 = [items3 objectAtIndexedSubscript:v9];
        welcomeScreenShouldShow = [v12 welcomeScreenShouldShow];

        if (welcomeScreenShouldShow)
        {
          break;
        }
      }

      ++v9;
      items4 = [(BKWelcomeScreenManager *)self items];
      v15 = [items4 count];

      if (v9 >= v15)
      {
        goto LABEL_10;
      }
    }

    items5 = [(BKWelcomeScreenManager *)self items];
    v16 = [items5 objectAtIndexedSubscript:v9];
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
  launchedToTest = [v3 launchedToTest];

  if (launchedToTest)
  {
    v5 = 0;
  }

  else
  {
    currentItem = [(BKWelcomeScreenManager *)self currentItem];
    v5 = [(BKWelcomeScreenManager *)self nextItemHavingWelcomeScreenToShowAfterItem:currentItem];
  }

  return v5;
}

- (BOOL)moreScreensComing
{
  nextItemHavingWelcomeScreenToShow = [(BKWelcomeScreenManager *)self nextItemHavingWelcomeScreenToShow];
  v3 = nextItemHavingWelcomeScreenToShow != 0;

  return v3;
}

- (void)_setupViewControllers
{
  nextItemHavingWelcomeScreenToShow = [(BKWelcomeScreenManager *)self nextItemHavingWelcomeScreenToShow];
  if (nextItemHavingWelcomeScreenToShow)
  {
    objc_storeStrong(&self->_currentItem, nextItemHavingWelcomeScreenToShow);
    v4 = [(BKWelcomeScreenManager *)self welcomeScreenViewControllerFromItem:nextItemHavingWelcomeScreenToShow];
    v5 = BSUIWelcomeScreenLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_setupViewControllers: showing: %{public}@", buf, 0xCu);
    }

    navigationController = [(BKWelcomeScreenManager *)self navigationController];
    [navigationController setNavigationBarHidden:objc_msgSend(nextItemHavingWelcomeScreenToShow animated:{"welcomeScreenShouldDisplayNavigationBar") ^ 1, 0}];

    navigationController2 = [(BKWelcomeScreenManager *)self navigationController];
    v10 = v4;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [navigationController2 setViewControllers:v8 animated:0];

    navigationController3 = [(BKWelcomeScreenManager *)self navigationController];
    [navigationController3 setNeedsUpdateOfSupportedInterfaceOrientations];

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
  nextItemHavingWelcomeScreenToShow = [(BKWelcomeScreenManager *)self nextItemHavingWelcomeScreenToShow];
  if (nextItemHavingWelcomeScreenToShow)
  {
    v4 = [(BKWelcomeScreenManager *)self welcomeScreenViewControllerFromItem:nextItemHavingWelcomeScreenToShow];
    navigationController = [(BKWelcomeScreenManager *)self navigationController];
    topViewController = [navigationController topViewController];
    lastViewController = self->_lastViewController;
    self->_lastViewController = topViewController;

    v8 = BSUIWelcomeScreenLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_presentTheNextViewController: showing: %{public}@", buf, 0xCu);
    }

    navigationController2 = [(BKWelcomeScreenManager *)self navigationController];
    [navigationController2 setNavigationBarHidden:objc_msgSend(nextItemHavingWelcomeScreenToShow animated:{"welcomeScreenShouldDisplayNavigationBar") ^ 1, 1}];

    navigationController3 = [(BKWelcomeScreenManager *)self navigationController];
    v13 = v4;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
    [navigationController3 setViewControllers:v11 animated:1];

    navigationController4 = [(BKWelcomeScreenManager *)self navigationController];
    [navigationController4 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  else
  {
    [(BKWelcomeScreenManager *)self finishCurrentItem];
    [(BKWelcomeScreenManager *)self _sequenceFinished];
  }
}

- (id)welcomeScreenViewControllerFromItem:(id)item
{
  itemCopy = item;
  viewControllers = [(BKWelcomeScreenManager *)self viewControllers];
  v6 = [viewControllers objectForKey:itemCopy];

  if (!v6)
  {
    objc_initWeak(&location, self);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100137368;
    v14 = &unk_100A05C58;
    objc_copyWeak(&v15, &location);
    v6 = [itemCopy welcomeScreenViewControllerWithCompletion:&v11];
    if (objc_opt_respondsToSelector())
    {
      v7 = [(BKWelcomeScreenManager *)self nextItemHavingWelcomeScreenToShowAfterItem:itemCopy, v11, v12, v13, v14];
      v8 = v7 == 0;

      [itemCopy welcomeScreenViewController:v6 configureWithLastScreen:v8];
    }

    [v6 setModalPresentationStyle:{2, v11, v12, v13, v14}];
    viewControllers2 = [(BKWelcomeScreenManager *)self viewControllers];
    [viewControllers2 setObject:v6 forKey:itemCopy];

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

  completion = [(BKWelcomeScreenManager *)self completion];

  if (completion)
  {
    completion2 = [(BKWelcomeScreenManager *)self completion];
    tabIdentifierToShow = [(BKWelcomeScreenManager *)self tabIdentifierToShow];
    (*(completion2 + 16))(completion2, tabIdentifierToShow);
  }

  else
  {
    completion2 = BSUIWelcomeScreenLog();
    if (os_log_type_enabled(completion2, OS_LOG_TYPE_ERROR))
    {
      sub_100790888(completion2);
    }
  }
}

- (void)finishCurrentItem
{
  if (objc_opt_respondsToSelector())
  {
    [(BSUIWelcomeScreenItem *)self->_currentItem welcomeScreenViewControllerDidDismiss];
  }

  nextItemHavingWelcomeScreenToShow = [(BKWelcomeScreenManager *)self nextItemHavingWelcomeScreenToShow];
  currentItem = self->_currentItem;
  self->_currentItem = nextItemHavingWelcomeScreenToShow;

  lastViewController = self->_lastViewController;
  self->_lastViewController = 0;
}

- (id)navigationController:(id)controller interactionControllerForAnimationController:(id)animationController
{
  v4 = [(BKWelcomeScreenManager *)self lastViewController:controller];
  if (objc_opt_respondsToSelector())
  {
    interactionController = [v4 interactionController];
  }

  else
  {
    interactionController = 0;
  }

  return interactionController;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v4 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (objc_opt_respondsToSelector())
  {
    [v4 animateTransition:transitionCopy];
  }

  else
  {
    defaultSlideAnimator = [(BKWelcomeScreenManager *)self defaultSlideAnimator];
    [defaultSlideAnimator animateTransition:transitionCopy];
  }
}

- (void)animationEnded:(BOOL)ended
{
  if (ended)
  {
    [(BKWelcomeScreenManager *)self finishCurrentItem];
  }
}

- (CGSize)preferredContentSizeForNavigationController:(id)controller
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(BKWelcomeScreenManager *)self items:controller];
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