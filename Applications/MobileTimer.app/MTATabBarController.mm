@interface MTATabBarController
- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController;
- (MTATabBarController)initWithAlarmManager:(id)manager alarmDataSource:(id)source timerManager:(id)timerManager timerDataSource:(id)dataSource;
- (id)alarmTableViewController;
- (id)navigationControllerForHorizontalSizeClass:(int64_t)class verticalSizeClass:(int64_t)sizeClass atIndex:(unint64_t)index;
- (id)navigationControllerForTab:(unint64_t)tab;
- (id)rootViewControllerForTab:(unint64_t)tab;
- (id)topViewControllerForTab:(unint64_t)tab;
- (id)worldClockPadController;
- (id)worldClockTableViewController;
- (unint64_t)supportedInterfaceOrientations;
- (unint64_t)tabIndexForAppSection:(int64_t)section;
- (void)_commandLeftArrowKeyPressed;
- (void)_commandRightArrowKeyPressed;
- (void)invalidateViewControllersWithTraitCollection:(id)collection;
- (void)performActionForIntent:(id)intent;
- (void)performActionForShortcutItem:(id)item;
- (void)populateShortcutItems;
- (void)populateTabIndexes;
- (void)prepareStateForUrlLaunch;
- (void)restoreAddNewAlarm;
- (void)restoreAlarmEditWithEvent:(id)event;
- (void)restoreAlarmTabEditMode;
- (void)restoreSleepEdit;
- (void)restoreState;
- (void)restoreWorldClockAdd;
- (void)restoreWorldClockEdit;
- (void)restoreWorldClockTabWithEvent:(id)event;
- (void)showAddView;
- (void)showSleepView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation MTATabBarController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MTATabBarController;
  [(MTATabBarController *)&v5 viewDidLoad];
  v3 = [UIKeyCommand keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0x100000 action:"_commandRightArrowKeyPressed"];
  [(MTATabBarController *)self addKeyCommand:v3];

  v4 = [UIKeyCommand keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0x100000 action:"_commandLeftArrowKeyPressed"];
  [(MTATabBarController *)self addKeyCommand:v4];
}

- (void)populateTabIndexes
{
  v5 = objc_opt_new();
  [v5 addObjectsFromArray:&off_1000B1A30];
  v3 = [v5 copy];
  tabIndexes = self->_tabIndexes;
  self->_tabIndexes = v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (MTUIIsPadIdiom())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)restoreState
{
  v3 = +[MTAStateStore shared];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003D08;
  v4[3] = &unk_1000ADAD8;
  v4[4] = self;
  [v3 restoreLastEventWithCompletion:v4];
}

- (MTATabBarController)initWithAlarmManager:(id)manager alarmDataSource:(id)source timerManager:(id)timerManager timerDataSource:(id)dataSource
{
  managerCopy = manager;
  sourceCopy = source;
  timerManagerCopy = timerManager;
  dataSourceCopy = dataSource;
  v18.receiver = self;
  v18.super_class = MTATabBarController;
  v15 = [(MTATabBarController *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_alarmManager, manager);
    objc_storeStrong(&v16->_alarmDataSource, source);
    objc_storeStrong(&v16->_timerManager, timerManager);
    objc_storeStrong(&v16->_timerDataSource, dataSource);
    [(MTATabBarController *)v16 setDelegate:v16];
    [(MTATabBarController *)v16 populateTabIndexes];
  }

  return v16;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MTATabBarController;
  [(MTATabBarController *)&v5 viewWillAppear:appear];
  traitCollection = [(MTATabBarController *)self traitCollection];
  [(MTATabBarController *)self invalidateViewControllersWithTraitCollection:traitCollection];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MTATabBarController;
  [(MTATabBarController *)&v6 viewDidAppear:appear];
  deferredEditingAction = [(MTATabBarController *)self deferredEditingAction];

  if (deferredEditingAction)
  {
    deferredEditingAction2 = [(MTATabBarController *)self deferredEditingAction];
    deferredEditingAction2[2]();

    [(MTATabBarController *)self setDeferredEditingAction:0];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = MTATabBarController;
  coordinatorCopy = coordinator;
  [(MTATabBarController *)&v11 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000C888;
  v9[3] = &unk_1000AD9A0;
  v9[4] = self;
  v10 = collectionCopy;
  v8 = collectionCopy;
  [coordinatorCopy animateAlongsideTransition:v9 completion:0];
}

- (void)invalidateViewControllersWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = objc_alloc_init(NSMutableArray);
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  verticalSizeClass = [collectionCopy verticalSizeClass];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_tabIndexes;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = -[MTATabBarController navigationControllerForHorizontalSizeClass:verticalSizeClass:atIndex:](self, "navigationControllerForHorizontalSizeClass:verticalSizeClass:atIndex:", horizontalSizeClass, verticalSizeClass, [*(*(&v20 + 1) + 8 * i) integerValue]);
        [v5 na_safeAddObject:v12];
        v13 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
        [(MTATabBarController *)self setOverrideTraitCollection:v13 forChildViewController:v12];
      }

      v9 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [(MTATabBarController *)self setViewControllers:v5 animated:0];
  v14 = +[UIApplication sharedApplication];
  delegate = [v14 delegate];

  if (MTIdiomIpad())
  {
    timerViewController = [(MTATabBarController *)self timerViewController];
    menuBuilder = [delegate menuBuilder];
    recentTimerIdentifier = [delegate recentTimerIdentifier];
    [timerViewController performSelector:"menuBarAppearedWithBuilder:targetMenuIdentifier:" withObject:menuBuilder withObject:recentTimerIdentifier];
  }
}

- (void)showSleepView
{
  alarmViewController = [(MTATabBarController *)self alarmViewController];
  v4 = alarmViewController;
  if (alarmViewController)
  {
    [alarmViewController showSleepView:0];
  }

  else
  {
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000CBB8;
    v5[3] = &unk_1000ADA88;
    objc_copyWeak(&v6, &location);
    [(MTATabBarController *)self setDeferredEditingAction:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)showAddView
{
  v2 = [(MTATabBarController *)self rootViewControllerForTab:3];
  if (v2)
  {
    v3 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v3 showAddView];
    }
  }

  _objc_release_x2();
}

- (id)navigationControllerForHorizontalSizeClass:(int64_t)class verticalSizeClass:(int64_t)sizeClass atIndex:(unint64_t)index
{
  v7 = 0;
  if (index > 1)
  {
    if (index == 2)
    {
      stopwatchNavController = self->_stopwatchNavController;
      if (!stopwatchNavController)
      {
        v32 = objc_alloc_init(MTAStopwatchViewController);
        v33 = [[UINavigationController alloc] initWithRootViewController:v32];
        v34 = self->_stopwatchNavController;
        self->_stopwatchNavController = v33;

        stopwatchNavController = self->_stopwatchNavController;
      }

      v7 = stopwatchNavController;
      [(UINavigationController *)v7 setNavigationBarHidden:class == 1];
    }

    else if (index == 3)
    {
      if (!self->_siriTipsController)
      {
        v16 = objc_alloc_init(_TtC11MobileTimer18SiriTipsController);
        siriTipsController = self->_siriTipsController;
        self->_siriTipsController = v16;
      }

      timerNavController = self->_timerNavController;
      if (!timerNavController)
      {
        v19 = MTIdiomIpad();
        v20 = off_1000ACBC0;
        if (!v19)
        {
          v20 = &off_1000ACBC8;
        }

        v21 = [objc_alloc(*v20) initWithTimerManager:self->_timerManager dataSource:self->_timerDataSource];
        [v21 setSiriTipsController:self->_siriTipsController];
        v22 = [[UINavigationController alloc] initWithRootViewController:v21];
        v23 = self->_timerNavController;
        self->_timerNavController = v22;

        timerNavController = self->_timerNavController;
      }

      v24 = timerNavController;
      v7 = v24;
      if (class == 1)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (index)
    {
      if (index != 1)
      {
        goto LABEL_34;
      }

      if (class == 1)
      {
        p_alarmNavControllerSmall = &self->_alarmNavControllerSmall;
        alarmNavControllerSmall = self->_alarmNavControllerSmall;
        if (!alarmNavControllerSmall)
        {
          v10 = [[MTAAlarmTableViewController alloc] initWithAlarmManager:self->_alarmManager dataSource:self->_alarmDataSource];
          v11 = [[UINavigationController alloc] initWithRootViewController:v10];
          v12 = *p_alarmNavControllerSmall;
          *p_alarmNavControllerSmall = v11;

          alarmNavControllerSmall = *p_alarmNavControllerSmall;
        }

        v7 = alarmNavControllerSmall;
        navigationBar = [(UINavigationController *)v7 navigationBar];
        [navigationBar setPrefersLargeTitles:1];

        navigationItem = [(UINavigationController *)v7 navigationItem];
        [navigationItem setLargeTitleDisplayMode:1];

        v15 = &OBJC_IVAR___MTATabBarController__alarmNavController;
      }

      else
      {
        p_alarmNavControllerSmall = &self->_alarmNavController;
        alarmNavController = self->_alarmNavController;
        if (!alarmNavController)
        {
          v36 = [[MTAAlarmCollectionViewController alloc] initWithAlarmManager:self->_alarmManager dataSource:self->_alarmDataSource];
          v37 = [[UINavigationController alloc] initWithRootViewController:v36];
          v38 = *p_alarmNavControllerSmall;
          *p_alarmNavControllerSmall = v37;

          alarmNavController = *p_alarmNavControllerSmall;
        }

        v7 = alarmNavController;
        v15 = &OBJC_IVAR___MTATabBarController__alarmNavControllerSmall;
      }

      viewControllers = [*(&self->super.super.super.super.isa + *v15) viewControllers];
      firstObject = [viewControllers firstObject];

      viewControllers2 = [*p_alarmNavControllerSmall viewControllers];
      firstObject2 = [viewControllers2 firstObject];

      if ([firstObject conformsToProtocol:&OBJC_PROTOCOL___MTAAlarmEditViewControllerDelegate] && objc_msgSend(firstObject2, "conformsToProtocol:", &OBJC_PROTOCOL___MTAAlarmEditViewControllerDelegate))
      {
        [firstObject2 handleContentSizeTransitionFrom:firstObject];
      }

      goto LABEL_33;
    }

    if (class == 1)
    {
      worldClockNavControllerSmall = self->_worldClockNavControllerSmall;
      if (!worldClockNavControllerSmall)
      {
        v26 = objc_alloc_init(MTAWorldClockTableViewController);
        v27 = [[UINavigationController alloc] initWithRootViewController:v26];
        v28 = self->_worldClockNavControllerSmall;
        self->_worldClockNavControllerSmall = v27;

        worldClockNavControllerSmall = self->_worldClockNavControllerSmall;
      }

      v24 = worldClockNavControllerSmall;
      v7 = v24;
LABEL_22:
      navigationBar2 = [(UINavigationController *)v24 navigationBar];
      [navigationBar2 setPrefersLargeTitles:1];

      firstObject = [(UINavigationController *)v7 navigationItem];
      [firstObject setLargeTitleDisplayMode:1];
LABEL_33:

      goto LABEL_34;
    }

    worldClockNavController = self->_worldClockNavController;
    if (!worldClockNavController)
    {
      v44 = objc_alloc_init(MTAWorldClockPadViewController);
      v45 = [[UINavigationController alloc] initWithRootViewController:v44];
      v46 = self->_worldClockNavController;
      self->_worldClockNavController = v45;

      worldClockNavController = self->_worldClockNavController;
    }

    v7 = worldClockNavController;
  }

LABEL_34:

  return v7;
}

- (id)navigationControllerForTab:(unint64_t)tab
{
  tabIndexes = self->_tabIndexes;
  v5 = [NSNumber numberWithUnsignedInteger:tab];
  v6 = [(NSArray *)tabIndexes indexOfObject:v5];

  viewControllers = [(MTATabBarController *)self viewControllers];
  v8 = [viewControllers count];

  if (v6 >= v8)
  {
    v10 = 0;
  }

  else
  {
    viewControllers2 = [(MTATabBarController *)self viewControllers];
    v10 = [viewControllers2 objectAtIndex:v6];
  }

  return v10;
}

- (id)topViewControllerForTab:(unint64_t)tab
{
  v3 = [(MTATabBarController *)self navigationControllerForTab:tab];
  topViewController = [v3 topViewController];

  return topViewController;
}

- (id)rootViewControllerForTab:(unint64_t)tab
{
  v3 = [(MTATabBarController *)self navigationControllerForTab:tab];
  viewControllers = [v3 viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (unint64_t)tabIndexForAppSection:(int64_t)section
{
  if ((section - 1) > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_10008B898[section - 1];
  }

  v12 = v3;
  tabIndexes = self->_tabIndexes;
  v9 = [NSNumber numberWithUnsignedInteger:v7, v4, v12, v5, v6];
  v10 = [(NSArray *)tabIndexes indexOfObject:v9];

  return v10;
}

- (void)_commandRightArrowKeyPressed
{
  if ([(MTATabBarController *)self selectedIndex]+ 1 <= 3)
  {

    [(MTATabBarController *)self setSelectedIndex:?];
  }
}

- (void)_commandLeftArrowKeyPressed
{
  if ([(MTATabBarController *)self selectedIndex]- 1 <= 2)
  {

    [(MTATabBarController *)self setSelectedIndex:?];
  }
}

- (void)populateShortcutItems
{
  v15 = objc_opt_new();
  objc_opt_class();
  stopwatchViewController = [(MTATabBarController *)self stopwatchViewController];
  if (stopwatchViewController)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = stopwatchViewController;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    if (!v5)
    {
      sub_100072FF0();
    }
  }

  else
  {
    v5 = 0;
  }

  defaultShortcutItem = [v5 defaultShortcutItem];
  [v15 na_safeAddObject:defaultShortcutItem];

  MTUIIsPhoneIdiom();
  v7 = objc_opt_class();
  timerViewController = [(MTATabBarController *)self timerViewController];
  if (timerViewController)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = timerViewController;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (!v10)
    {
      v11 = +[NSAssertionHandler currentHandler];
      v12 = [NSString stringWithUTF8String:"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"];
      [v11 handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];
    }
  }

  else
  {
    v10 = 0;
  }

  defaultShortcutItem2 = [v10 defaultShortcutItem];
  [v15 na_safeAddObject:defaultShortcutItem2];

  v14 = +[UIApplication sharedApplication];
  [v14 setShortcutItems:v15];
}

- (void)performActionForShortcutItem:(id)item
{
  itemCopy = item;
  view = [(MTATabBarController *)self view];
  window = [view window];
  rootViewController = [window rootViewController];
  [rootViewController dismissViewControllerAnimated:0 completion:0];

  type = [itemCopy type];
  LODWORD(window) = [type isEqualToString:@"com.apple.mobiletimer.add-alarm"];

  if (window)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1830]];
    alarmViewController = [(MTATabBarController *)self alarmViewController];
    v9 = [alarmViewController conformsToProtocol:&OBJC_PROTOCOL___MTAAddItemController];

    if (!v9)
    {
      goto LABEL_47;
    }

    alarmViewController2 = [(MTATabBarController *)self alarmViewController];
    [alarmViewController2 showAddView];
    goto LABEL_46;
  }

  type2 = [itemCopy type];
  v12 = [type2 isEqualToString:@"com.apple.mobiletimer.start-stopwatch"];

  if (v12)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1848]];
    objc_opt_class();
    stopwatchViewController = [(MTATabBarController *)self stopwatchViewController];
    if (stopwatchViewController)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = stopwatchViewController;
      }

      else
      {
        v14 = 0;
      }

      alarmViewController2 = v14;
      if (!alarmViewController2)
      {
        sub_100072FF0();
      }
    }

    else
    {
      alarmViewController2 = 0;
    }

    [alarmViewController2 handleStartStopwatchShortcutAction];
    goto LABEL_46;
  }

  type3 = [itemCopy type];
  v16 = [type3 isEqualToString:@"com.apple.mobiletimer.stop-stopwatch"];

  if (v16)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1848]];
    objc_opt_class();
    stopwatchViewController2 = [(MTATabBarController *)self stopwatchViewController];
    if (stopwatchViewController2)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = stopwatchViewController2;
      }

      else
      {
        v18 = 0;
      }

      alarmViewController2 = v18;
      if (!alarmViewController2)
      {
        sub_100072FF0();
      }
    }

    else
    {
      alarmViewController2 = 0;
    }

    [alarmViewController2 handleStopStopwatchShortcutAction];
    goto LABEL_46;
  }

  type4 = [itemCopy type];
  v20 = [type4 isEqualToString:@"com.apple.mobiletimer.lap-stopwatch"];

  if (v20)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1848]];
    objc_opt_class();
    stopwatchViewController3 = [(MTATabBarController *)self stopwatchViewController];
    if (stopwatchViewController3)
    {
      if (objc_opt_isKindOfClass())
      {
        v22 = stopwatchViewController3;
      }

      else
      {
        v22 = 0;
      }

      alarmViewController2 = v22;
      if (!alarmViewController2)
      {
        sub_100072FF0();
      }
    }

    else
    {
      alarmViewController2 = 0;
    }

    [alarmViewController2 handleLapStopwatchShortcutAction];
    goto LABEL_46;
  }

  type5 = [itemCopy type];
  v24 = [type5 isEqualToString:@"com.apple.mobiletimer.reset-stopwatch"];

  if (v24)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1848]];
    objc_opt_class();
    stopwatchViewController4 = [(MTATabBarController *)self stopwatchViewController];
    if (stopwatchViewController4)
    {
      if (objc_opt_isKindOfClass())
      {
        v26 = stopwatchViewController4;
      }

      else
      {
        v26 = 0;
      }

      alarmViewController2 = v26;
      if (!alarmViewController2)
      {
        sub_100072FF0();
      }
    }

    else
    {
      alarmViewController2 = 0;
    }

    [alarmViewController2 handleResetStopwatchShortcutAction];
    goto LABEL_46;
  }

  type6 = [itemCopy type];
  v28 = [type6 isEqualToString:kStartTimerActionID];

  if (v28)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1860]];
    timerViewController = [(MTATabBarController *)self timerViewController];
    v30 = objc_opt_respondsToSelector();

    if ((v30 & 1) == 0)
    {
      goto LABEL_47;
    }

    alarmViewController2 = [(MTATabBarController *)self timerViewController];
    [alarmViewController2 handleStartTimerShortcutAction];
    goto LABEL_46;
  }

  type7 = [itemCopy type];
  v32 = [type7 isEqualToString:kStopTimerActionID];

  if (v32)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1860]];
    timerViewController2 = [(MTATabBarController *)self timerViewController];
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      alarmViewController2 = [(MTATabBarController *)self timerViewController];
      [alarmViewController2 handleStopTimerShortcutAction];
LABEL_46:
    }
  }

LABEL_47:
}

- (void)performActionForIntent:(id)intent
{
  intentCopy = intent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = intentCopy;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      v6 = v5;
      if (!v6)
      {
        sub_100072FF0();
      }
    }

    else
    {
      v6 = 0;
    }

    [(MTATabBarController *)self setSelectedIndex:1];
    alarmViewController = [(MTATabBarController *)self alarmViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      time = [v6 time];

      if (!time)
      {
        dateComponents = [v6 dateComponents];

        if (dateComponents)
        {
          dateComponents2 = [v6 dateComponents];
          hour = [dateComponents2 hour];

          dateComponents3 = [v6 dateComponents];
          minute = [dateComponents3 minute];

          alarmViewController3 = [MTMutableAlarm alarmWithHour:hour minute:minute];
          label = [v6 label];
          [alarmViewController3 setTitle:label];

          alarmViewController2 = [(MTATabBarController *)self alarmViewController];
          [alarmViewController2 showAddViewForAlarm:alarmViewController3];
        }

        else
        {
          alarmViewController3 = [(MTATabBarController *)self alarmViewController];
          [alarmViewController3 showAddView];
        }

        goto LABEL_25;
      }
    }

    else
    {
      alarmViewController4 = [(MTATabBarController *)self alarmViewController];
      objc_opt_class();
      v24 = objc_opt_isKindOfClass();

      if ((v24 & 1) == 0)
      {
LABEL_26:

        goto LABEL_27;
      }

      time2 = [v6 time];

      if (!time2)
      {
        alarmViewController3 = [(MTATabBarController *)self alarmViewController];
        [alarmViewController3 showAddViewForAlarm:0];
        goto LABEL_25;
      }
    }

    time3 = [v6 time];
    identifier = [time3 identifier];
    [identifier doubleValue];
    alarmViewController3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    alarmViewController7 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v29 = +[MTMutableAlarm alarmWithHour:minute:](MTMutableAlarm, "alarmWithHour:minute:", [alarmViewController7 component:32 fromDate:alarmViewController3], objc_msgSend(alarmViewController7, "component:fromDate:", 64, alarmViewController3));
    label2 = [v6 label];
    [v29 setTitle:label2];

    alarmViewController5 = [(MTATabBarController *)self alarmViewController];
    [alarmViewController5 showAddViewForAlarm:v29];

LABEL_24:
LABEL_25:

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      alarmID = [intentCopy alarmID];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_14;
      }

      alarmID = [intentCopy alarm];
    }

    v8 = alarmID;
    identifier2 = [alarmID identifier];

LABEL_14:
    selfCopy2 = self;
    v11 = 1;
LABEL_15:
    [(MTATabBarController *)selfCopy2 setSelectedIndex:v11];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v32 = intentCopy;
    if (v32)
    {
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v6 = v33;
      if (!v6)
      {
        sub_100072FF0();
      }
    }

    else
    {
      v6 = 0;
    }

    alarmID2 = [v6 alarmID];
    alarmViewController3 = [alarmID2 identifier];

    [(MTATabBarController *)self setSelectedIndex:1];
    if (!alarmViewController3)
    {
      goto LABEL_25;
    }

    alarmViewController6 = [(MTATabBarController *)self alarmViewController];
    objc_opt_class();
    v36 = objc_opt_isKindOfClass();

    alarmViewController7 = [(MTATabBarController *)self alarmViewController];
    if ((v36 & 1) == 0)
    {
      objc_opt_class();
      v37 = objc_opt_isKindOfClass();

      if ((v37 & 1) == 0)
      {
        goto LABEL_25;
      }

      alarmViewController7 = [(MTATabBarController *)self alarmViewController];
    }

    [alarmViewController7 showAddViewForAlarmWithID:alarmViewController3];
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    v11 = 3;
    goto LABEL_15;
  }

LABEL_27:
}

- (BOOL)tabBarController:(id)controller shouldSelectViewController:(id)viewController
{
  viewControllerCopy = viewController;
  selectedViewController = [controller selectedViewController];
  if (selectedViewController != viewControllerCopy)
  {
LABEL_2:

    goto LABEL_7;
  }

  v7 = MTUIIsPhoneIdiom();

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selectedViewController = [viewControllerCopy topViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [selectedViewController scrollToTop];
      }

      goto LABEL_2;
    }
  }

LABEL_7:

  return 1;
}

- (id)worldClockPadController
{
  viewControllers = [(UINavigationController *)self->_worldClockNavController viewControllers];
  lastObject = [viewControllers lastObject];

  return lastObject;
}

- (id)worldClockTableViewController
{
  viewControllers = [(UINavigationController *)self->_worldClockNavControllerSmall viewControllers];
  lastObject = [viewControllers lastObject];

  return lastObject;
}

- (id)alarmTableViewController
{
  viewControllers = [(UINavigationController *)self->_alarmNavControllerSmall viewControllers];
  lastObject = [viewControllers lastObject];

  return lastObject;
}

- (void)restoreWorldClockAdd
{
  if (MTUIIsPadIdiom())
  {
    worldClockPadController = [(MTATabBarController *)self worldClockPadController];
    objc_initWeak(&location, worldClockPadController);

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000E280;
    v6[3] = &unk_1000ADA88;
    objc_copyWeak(&v7, &location);
    v4 = objc_loadWeakRetained(&location);
    [v4 setViewLoadedAction:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    worldClockTableViewController = [(MTATabBarController *)self worldClockTableViewController];
    [worldClockTableViewController showAddView];
  }
}

- (void)restoreAddNewAlarm
{
  alarmViewController = [(MTATabBarController *)self alarmViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(MTATabBarController *)self alarmsCollectionViewController];
  }

  else
  {
    [(MTATabBarController *)self alarmTableViewController];
  }
  v5 = ;
  [v5 showAddView];
}

- (void)restoreAlarmEditWithEvent:(id)event
{
  eventCopy = event;
  alarmViewController = [(MTATabBarController *)self alarmViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    identifier = [eventCopy identifier];

    if (identifier)
    {
      alarmTableViewController = [(MTATabBarController *)self alarmTableViewController];
      identifier2 = [eventCopy identifier];
      [alarmTableViewController showAddViewForAlarmWithID:identifier2];
    }

    else
    {
      v10 = MTLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10007307C(self, v10);
      }
    }
  }
}

- (void)restoreSleepEdit
{
  alarmTableViewController = [(MTATabBarController *)self alarmTableViewController];
  [alarmTableViewController showSleepView:0];
}

- (void)restoreWorldClockEdit
{
  if (MTUIIsPadIdiom())
  {
    worldClockPadController = [(MTATabBarController *)self worldClockPadController];
    objc_initWeak(&location, worldClockPadController);

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000E5A4;
    v6[3] = &unk_1000ADA88;
    objc_copyWeak(&v7, &location);
    v4 = objc_loadWeakRetained(&location);
    [v4 setViewLoadedAction:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    worldClockTableViewController = [(MTATabBarController *)self worldClockTableViewController];
    [worldClockTableViewController setEditing:1 animated:0];
  }
}

- (void)restoreAlarmTabEditMode
{
  alarmViewController = [(MTATabBarController *)self alarmViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    alarmsCollectionViewController = [(MTATabBarController *)self alarmsCollectionViewController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000E768;
    v11[3] = &unk_1000AD9F0;
    v11[4] = self;
    [alarmsCollectionViewController setAlarmsLoadedAction:v11];
  }

  else
  {
    alarmTableViewController = [(MTATabBarController *)self alarmTableViewController];
    objc_initWeak(&location, alarmTableViewController);

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000E7B0;
    v8[3] = &unk_1000ADA88;
    objc_copyWeak(&v9, &location);
    v7 = objc_loadWeakRetained(&location);
    [v7 setAlarmsLoadedAction:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)restoreWorldClockTabWithEvent:(id)event
{
  eventCopy = event;
  if (MTUIIsPadIdiom())
  {
    indexPath = [eventCopy indexPath];

    if (indexPath)
    {
      worldClockPadController = [(MTATabBarController *)self worldClockPadController];
      indexPath2 = [eventCopy indexPath];
      [worldClockPadController restoreIndexPath:indexPath2];
    }
  }
}

- (void)prepareStateForUrlLaunch
{
  if (MTUIIsPadIdiom())
  {
    worldClockPadController = [(MTATabBarController *)self worldClockPadController];
    [worldClockPadController prepareStateForUrlLaunch];
  }
}

@end