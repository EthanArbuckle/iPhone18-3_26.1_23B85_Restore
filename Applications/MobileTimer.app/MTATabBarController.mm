@interface MTATabBarController
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (MTATabBarController)initWithAlarmManager:(id)a3 alarmDataSource:(id)a4 timerManager:(id)a5 timerDataSource:(id)a6;
- (id)alarmTableViewController;
- (id)navigationControllerForHorizontalSizeClass:(int64_t)a3 verticalSizeClass:(int64_t)a4 atIndex:(unint64_t)a5;
- (id)navigationControllerForTab:(unint64_t)a3;
- (id)rootViewControllerForTab:(unint64_t)a3;
- (id)topViewControllerForTab:(unint64_t)a3;
- (id)worldClockPadController;
- (id)worldClockTableViewController;
- (unint64_t)supportedInterfaceOrientations;
- (unint64_t)tabIndexForAppSection:(int64_t)a3;
- (void)_commandLeftArrowKeyPressed;
- (void)_commandRightArrowKeyPressed;
- (void)invalidateViewControllersWithTraitCollection:(id)a3;
- (void)performActionForIntent:(id)a3;
- (void)performActionForShortcutItem:(id)a3;
- (void)populateShortcutItems;
- (void)populateTabIndexes;
- (void)prepareStateForUrlLaunch;
- (void)restoreAddNewAlarm;
- (void)restoreAlarmEditWithEvent:(id)a3;
- (void)restoreAlarmTabEditMode;
- (void)restoreSleepEdit;
- (void)restoreState;
- (void)restoreWorldClockAdd;
- (void)restoreWorldClockEdit;
- (void)restoreWorldClockTabWithEvent:(id)a3;
- (void)showAddView;
- (void)showSleepView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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

- (MTATabBarController)initWithAlarmManager:(id)a3 alarmDataSource:(id)a4 timerManager:(id)a5 timerDataSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = MTATabBarController;
  v15 = [(MTATabBarController *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_alarmManager, a3);
    objc_storeStrong(&v16->_alarmDataSource, a4);
    objc_storeStrong(&v16->_timerManager, a5);
    objc_storeStrong(&v16->_timerDataSource, a6);
    [(MTATabBarController *)v16 setDelegate:v16];
    [(MTATabBarController *)v16 populateTabIndexes];
  }

  return v16;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MTATabBarController;
  [(MTATabBarController *)&v5 viewWillAppear:a3];
  v4 = [(MTATabBarController *)self traitCollection];
  [(MTATabBarController *)self invalidateViewControllersWithTraitCollection:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MTATabBarController;
  [(MTATabBarController *)&v6 viewDidAppear:a3];
  v4 = [(MTATabBarController *)self deferredEditingAction];

  if (v4)
  {
    v5 = [(MTATabBarController *)self deferredEditingAction];
    v5[2]();

    [(MTATabBarController *)self setDeferredEditingAction:0];
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MTATabBarController;
  v7 = a4;
  [(MTATabBarController *)&v11 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000C888;
  v9[3] = &unk_1000AD9A0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 animateAlongsideTransition:v9 completion:0];
}

- (void)invalidateViewControllersWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [v4 horizontalSizeClass];
  v7 = [v4 verticalSizeClass];
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

        v12 = -[MTATabBarController navigationControllerForHorizontalSizeClass:verticalSizeClass:atIndex:](self, "navigationControllerForHorizontalSizeClass:verticalSizeClass:atIndex:", v6, v7, [*(*(&v20 + 1) + 8 * i) integerValue]);
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
  v15 = [v14 delegate];

  if (MTIdiomIpad())
  {
    v16 = [(MTATabBarController *)self timerViewController];
    v17 = [v15 menuBuilder];
    v18 = [v15 recentTimerIdentifier];
    [v16 performSelector:"menuBarAppearedWithBuilder:targetMenuIdentifier:" withObject:v17 withObject:v18];
  }
}

- (void)showSleepView
{
  v3 = [(MTATabBarController *)self alarmViewController];
  v4 = v3;
  if (v3)
  {
    [v3 showSleepView:0];
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

- (id)navigationControllerForHorizontalSizeClass:(int64_t)a3 verticalSizeClass:(int64_t)a4 atIndex:(unint64_t)a5
{
  v7 = 0;
  if (a5 > 1)
  {
    if (a5 == 2)
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
      [(UINavigationController *)v7 setNavigationBarHidden:a3 == 1];
    }

    else if (a5 == 3)
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
      if (a3 == 1)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (a5)
    {
      if (a5 != 1)
      {
        goto LABEL_34;
      }

      if (a3 == 1)
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
        v13 = [(UINavigationController *)v7 navigationBar];
        [v13 setPrefersLargeTitles:1];

        v14 = [(UINavigationController *)v7 navigationItem];
        [v14 setLargeTitleDisplayMode:1];

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

      v39 = [*(&self->super.super.super.super.isa + *v15) viewControllers];
      v30 = [v39 firstObject];

      v40 = [*p_alarmNavControllerSmall viewControllers];
      v41 = [v40 firstObject];

      if ([v30 conformsToProtocol:&OBJC_PROTOCOL___MTAAlarmEditViewControllerDelegate] && objc_msgSend(v41, "conformsToProtocol:", &OBJC_PROTOCOL___MTAAlarmEditViewControllerDelegate))
      {
        [v41 handleContentSizeTransitionFrom:v30];
      }

      goto LABEL_33;
    }

    if (a3 == 1)
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
      v29 = [(UINavigationController *)v24 navigationBar];
      [v29 setPrefersLargeTitles:1];

      v30 = [(UINavigationController *)v7 navigationItem];
      [v30 setLargeTitleDisplayMode:1];
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

- (id)navigationControllerForTab:(unint64_t)a3
{
  tabIndexes = self->_tabIndexes;
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [(NSArray *)tabIndexes indexOfObject:v5];

  v7 = [(MTATabBarController *)self viewControllers];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(MTATabBarController *)self viewControllers];
    v10 = [v9 objectAtIndex:v6];
  }

  return v10;
}

- (id)topViewControllerForTab:(unint64_t)a3
{
  v3 = [(MTATabBarController *)self navigationControllerForTab:a3];
  v4 = [v3 topViewController];

  return v4;
}

- (id)rootViewControllerForTab:(unint64_t)a3
{
  v3 = [(MTATabBarController *)self navigationControllerForTab:a3];
  v4 = [v3 viewControllers];
  v5 = [v4 firstObject];

  return v5;
}

- (unint64_t)tabIndexForAppSection:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_10008B898[a3 - 1];
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
  v3 = [(MTATabBarController *)self stopwatchViewController];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
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

  v6 = [v5 defaultShortcutItem];
  [v15 na_safeAddObject:v6];

  MTUIIsPhoneIdiom();
  v7 = objc_opt_class();
  v8 = [(MTATabBarController *)self timerViewController];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
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

  v13 = [v10 defaultShortcutItem];
  [v15 na_safeAddObject:v13];

  v14 = +[UIApplication sharedApplication];
  [v14 setShortcutItems:v15];
}

- (void)performActionForShortcutItem:(id)a3
{
  v35 = a3;
  v4 = [(MTATabBarController *)self view];
  v5 = [v4 window];
  v6 = [v5 rootViewController];
  [v6 dismissViewControllerAnimated:0 completion:0];

  v7 = [v35 type];
  LODWORD(v5) = [v7 isEqualToString:@"com.apple.mobiletimer.add-alarm"];

  if (v5)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1830]];
    v8 = [(MTATabBarController *)self alarmViewController];
    v9 = [v8 conformsToProtocol:&OBJC_PROTOCOL___MTAAddItemController];

    if (!v9)
    {
      goto LABEL_47;
    }

    v10 = [(MTATabBarController *)self alarmViewController];
    [v10 showAddView];
    goto LABEL_46;
  }

  v11 = [v35 type];
  v12 = [v11 isEqualToString:@"com.apple.mobiletimer.start-stopwatch"];

  if (v12)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1848]];
    objc_opt_class();
    v13 = [(MTATabBarController *)self stopwatchViewController];
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v10 = v14;
      if (!v10)
      {
        sub_100072FF0();
      }
    }

    else
    {
      v10 = 0;
    }

    [v10 handleStartStopwatchShortcutAction];
    goto LABEL_46;
  }

  v15 = [v35 type];
  v16 = [v15 isEqualToString:@"com.apple.mobiletimer.stop-stopwatch"];

  if (v16)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1848]];
    objc_opt_class();
    v17 = [(MTATabBarController *)self stopwatchViewController];
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v10 = v18;
      if (!v10)
      {
        sub_100072FF0();
      }
    }

    else
    {
      v10 = 0;
    }

    [v10 handleStopStopwatchShortcutAction];
    goto LABEL_46;
  }

  v19 = [v35 type];
  v20 = [v19 isEqualToString:@"com.apple.mobiletimer.lap-stopwatch"];

  if (v20)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1848]];
    objc_opt_class();
    v21 = [(MTATabBarController *)self stopwatchViewController];
    if (v21)
    {
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v10 = v22;
      if (!v10)
      {
        sub_100072FF0();
      }
    }

    else
    {
      v10 = 0;
    }

    [v10 handleLapStopwatchShortcutAction];
    goto LABEL_46;
  }

  v23 = [v35 type];
  v24 = [v23 isEqualToString:@"com.apple.mobiletimer.reset-stopwatch"];

  if (v24)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1848]];
    objc_opt_class();
    v25 = [(MTATabBarController *)self stopwatchViewController];
    if (v25)
    {
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v10 = v26;
      if (!v10)
      {
        sub_100072FF0();
      }
    }

    else
    {
      v10 = 0;
    }

    [v10 handleResetStopwatchShortcutAction];
    goto LABEL_46;
  }

  v27 = [v35 type];
  v28 = [v27 isEqualToString:kStartTimerActionID];

  if (v28)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1860]];
    v29 = [(MTATabBarController *)self timerViewController];
    v30 = objc_opt_respondsToSelector();

    if ((v30 & 1) == 0)
    {
      goto LABEL_47;
    }

    v10 = [(MTATabBarController *)self timerViewController];
    [v10 handleStartTimerShortcutAction];
    goto LABEL_46;
  }

  v31 = [v35 type];
  v32 = [v31 isEqualToString:kStopTimerActionID];

  if (v32)
  {
    [(MTATabBarController *)self setSelectedIndex:[(NSArray *)self->_tabIndexes indexOfObject:&off_1000B1860]];
    v33 = [(MTATabBarController *)self timerViewController];
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      v10 = [(MTATabBarController *)self timerViewController];
      [v10 handleStopTimerShortcutAction];
LABEL_46:
    }
  }

LABEL_47:
}

- (void)performActionForIntent:(id)a3
{
  v38 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = v38;
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
    v12 = [(MTATabBarController *)self alarmViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [v6 time];

      if (!v14)
      {
        v15 = [v6 dateComponents];

        if (v15)
        {
          v16 = [v6 dateComponents];
          v17 = [v16 hour];

          v18 = [v6 dateComponents];
          v19 = [v18 minute];

          v20 = [MTMutableAlarm alarmWithHour:v17 minute:v19];
          v21 = [v6 label];
          [v20 setTitle:v21];

          v22 = [(MTATabBarController *)self alarmViewController];
          [v22 showAddViewForAlarm:v20];
        }

        else
        {
          v20 = [(MTATabBarController *)self alarmViewController];
          [v20 showAddView];
        }

        goto LABEL_25;
      }
    }

    else
    {
      v23 = [(MTATabBarController *)self alarmViewController];
      objc_opt_class();
      v24 = objc_opt_isKindOfClass();

      if ((v24 & 1) == 0)
      {
LABEL_26:

        goto LABEL_27;
      }

      v25 = [v6 time];

      if (!v25)
      {
        v20 = [(MTATabBarController *)self alarmViewController];
        [v20 showAddViewForAlarm:0];
        goto LABEL_25;
      }
    }

    v26 = [v6 time];
    v27 = [v26 identifier];
    [v27 doubleValue];
    v20 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

    v28 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v29 = +[MTMutableAlarm alarmWithHour:minute:](MTMutableAlarm, "alarmWithHour:minute:", [v28 component:32 fromDate:v20], objc_msgSend(v28, "component:fromDate:", 64, v20));
    v30 = [v6 label];
    [v29 setTitle:v30];

    v31 = [(MTATabBarController *)self alarmViewController];
    [v31 showAddViewForAlarm:v29];

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
      v7 = [v38 alarmID];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_14;
      }

      v7 = [v38 alarm];
    }

    v8 = v7;
    v9 = [v7 identifier];

LABEL_14:
    v10 = self;
    v11 = 1;
LABEL_15:
    [(MTATabBarController *)v10 setSelectedIndex:v11];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v32 = v38;
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

    v34 = [v6 alarmID];
    v20 = [v34 identifier];

    [(MTATabBarController *)self setSelectedIndex:1];
    if (!v20)
    {
      goto LABEL_25;
    }

    v35 = [(MTATabBarController *)self alarmViewController];
    objc_opt_class();
    v36 = objc_opt_isKindOfClass();

    v28 = [(MTATabBarController *)self alarmViewController];
    if ((v36 & 1) == 0)
    {
      objc_opt_class();
      v37 = objc_opt_isKindOfClass();

      if ((v37 & 1) == 0)
      {
        goto LABEL_25;
      }

      v28 = [(MTATabBarController *)self alarmViewController];
    }

    [v28 showAddViewForAlarmWithID:v20];
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = self;
    v11 = 3;
    goto LABEL_15;
  }

LABEL_27:
}

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v5 = a4;
  v6 = [a3 selectedViewController];
  if (v6 != v5)
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
      v6 = [v5 topViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 scrollToTop];
      }

      goto LABEL_2;
    }
  }

LABEL_7:

  return 1;
}

- (id)worldClockPadController
{
  v2 = [(UINavigationController *)self->_worldClockNavController viewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (id)worldClockTableViewController
{
  v2 = [(UINavigationController *)self->_worldClockNavControllerSmall viewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (id)alarmTableViewController
{
  v2 = [(UINavigationController *)self->_alarmNavControllerSmall viewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (void)restoreWorldClockAdd
{
  if (MTUIIsPadIdiom())
  {
    v3 = [(MTATabBarController *)self worldClockPadController];
    objc_initWeak(&location, v3);

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
    v5 = [(MTATabBarController *)self worldClockTableViewController];
    [v5 showAddView];
  }
}

- (void)restoreAddNewAlarm
{
  v3 = [(MTATabBarController *)self alarmViewController];
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

- (void)restoreAlarmEditWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(MTATabBarController *)self alarmViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = [v4 identifier];

    if (v7)
    {
      v8 = [(MTATabBarController *)self alarmTableViewController];
      v9 = [v4 identifier];
      [v8 showAddViewForAlarmWithID:v9];
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
  v2 = [(MTATabBarController *)self alarmTableViewController];
  [v2 showSleepView:0];
}

- (void)restoreWorldClockEdit
{
  if (MTUIIsPadIdiom())
  {
    v3 = [(MTATabBarController *)self worldClockPadController];
    objc_initWeak(&location, v3);

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
    v5 = [(MTATabBarController *)self worldClockTableViewController];
    [v5 setEditing:1 animated:0];
  }
}

- (void)restoreAlarmTabEditMode
{
  v3 = [(MTATabBarController *)self alarmViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(MTATabBarController *)self alarmsCollectionViewController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000E768;
    v11[3] = &unk_1000AD9F0;
    v11[4] = self;
    [v5 setAlarmsLoadedAction:v11];
  }

  else
  {
    v6 = [(MTATabBarController *)self alarmTableViewController];
    objc_initWeak(&location, v6);

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

- (void)restoreWorldClockTabWithEvent:(id)a3
{
  v7 = a3;
  if (MTUIIsPadIdiom())
  {
    v4 = [v7 indexPath];

    if (v4)
    {
      v5 = [(MTATabBarController *)self worldClockPadController];
      v6 = [v7 indexPath];
      [v5 restoreIndexPath:v6];
    }
  }
}

- (void)prepareStateForUrlLaunch
{
  if (MTUIIsPadIdiom())
  {
    v3 = [(MTATabBarController *)self worldClockPadController];
    [v3 prepareStateForUrlLaunch];
  }
}

@end