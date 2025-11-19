@interface MTAWorldClockTableViewController
- (MTAWorldClockTableViewController)init;
- (id)addViewController;
- (id)noItemsText;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (int64_t)numberOfItems;
- (void)addCityWithoutUserInteraction:(id)a3;
- (void)addClockViewController:(id)a3 addCity:(id)a4;
- (void)dealloc;
- (void)deleteRowAtIndexPath:(id)a3;
- (void)finishAddViewControllerDismissal:(BOOL)a3;
- (void)handleTextSizeChange:(id)a3;
- (void)reloadState;
- (void)removeCityAtIndexPath:(id)a3;
- (void)removeCityWithoutUserInteraction:(id)a3;
- (void)saveScrollPoint;
- (void)scrollToCityAtIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setupForTest:(id)a3 options:(id)a4;
- (void)showAddView;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MTAWorldClockTableViewController

- (MTAWorldClockTableViewController)init
{
  v18.receiver = self;
  v18.super_class = MTAWorldClockTableViewController;
  v2 = [(MTATableViewController *)&v18 initWithTableViewStyle:0];
  if (v2)
  {
    v3 = [UIImage systemImageNamed:@"globe"];
    v4 = [(MTAWorldClockTableViewController *)v2 tabBarItem];
    [v4 setImage:v3];

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"WORLD_CLOCK" value:&stru_1000AEF10 table:0];
    [(MTAWorldClockTableViewController *)v2 setTitle:v6];

    v7 = [(MTAWorldClockTableViewController *)v2 title];
    v8 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.worldclock" title:v7];
    userActivity = v2->_userActivity;
    v2->_userActivity = v8;

    v10 = +[UIScreen mainScreen];
    v11 = [v10 _defaultTraitCollection];
    v12 = [v11 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

    v2->_shouldStackViewsInCell = IsAccessibilityCategory;
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"handleTextSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10002E370, @"NanoMobileTimerWorldClockPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v16 = v2;
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MTAWorldClockTableViewController;
  [(MTATableViewController *)&v5 viewDidLoad];
  v3 = [(MTAWorldClockTableViewController *)self tableView];
  [v3 setLayoutMarginsFollowReadableWidth:1];

  v4 = [(MTAWorldClockTableViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"MTWorldClockCell"];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"NanoMobileTimerWorldClockPreferencesChangedNotification", 0);
  v4.receiver = self;
  v4.super_class = MTAWorldClockTableViewController;
  [(MTATableViewController *)&v4 dealloc];
}

- (void)handleTextSizeChange:(id)a3
{
  v4 = +[UIScreen mainScreen];
  v5 = [v4 _defaultTraitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  self->_shouldStackViewsInCell = IsAccessibilityCategory;
  [(MTAWorldClockTableViewController *)self itemsTableRowHeight];
  v9 = v8;
  v10 = [(MTAWorldClockTableViewController *)self tableView];
  [v10 setRowHeight:v9];

  v11 = [(MTAWorldClockTableViewController *)self tableView];
  [v11 reloadData];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = +[WorldClockManager sharedManager];
  v6 = [v5 cities];
  if (v6)
  {
  }

  else if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    [v5 loadCities];
  }

  v21.receiver = self;
  v21.super_class = MTAWorldClockTableViewController;
  [(MTATableViewController *)&v21 viewWillAppear:v3];
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 objectForKey:@"WorldClockTableScrollPoint"];
  v9 = v8;
  if (v8)
  {
    [v8 floatValue];
    if (v10 >= 0.0)
    {
      v11 = v10;
      v12 = [(MTAWorldClockTableViewController *)self tableView];
      [v12 contentSize];
      v14 = v13;

      if (v14 > v11)
      {
        v15 = [(MTAWorldClockTableViewController *)self tableView];
        [v15 setContentOffset:{0.0, v11}];
      }
    }

    [v7 removeObjectForKey:@"WorldClockTableScrollPoint"];
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 postNotificationName:@"com.apple.mobiletimer.user-preferences-dirty" object:0];
  }

  v17 = [(MTAWorldClockTableViewController *)self deferAddedCity];

  if (v17)
  {
    v18 = [(MTAWorldClockTableViewController *)self deferAddedCity];
    [(MTAWorldClockTableViewController *)self addCityWithoutUserInteraction:v18];

    [(MTAWorldClockTableViewController *)self setDeferAddedCity:0];
  }

  v19 = [(MTAWorldClockTableViewController *)self deferRemovedCity];

  if (v19)
  {
    v20 = [(MTAWorldClockTableViewController *)self deferRemovedCity];
    [(MTAWorldClockTableViewController *)self removeCityWithoutUserInteraction:v20];

    [(MTAWorldClockTableViewController *)self setDeferRemovedCity:0];
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v5 = a3;
  v6 = [(MTAWorldClockTableViewController *)self traitCollection];
  v7 = [v6 horizontalSizeClass];
  v8 = [v5 horizontalSizeClass];

  if (v7 != v8)
  {

    [(MTATableViewController *)self dismissAddViewController:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = MTAWorldClockTableViewController;
  [(MTATableViewController *)&v10 viewDidAppear:a3];
  v4 = +[WorldClockManager sharedManager];
  v5 = [(NSUserActivity *)self->_userActivity keywords];
  v6 = v5;
  if (!v5)
  {
    v6 = +[NSSet set];
  }

  v7 = [v4 cities];
  v8 = [v7 na_map:&stru_1000AE2B0];
  v9 = [v6 setByAddingObjectsFromArray:v8];
  [(NSUserActivity *)self->_userActivity setKeywords:v9];

  if (!v5)
  {
  }

  [(NSUserActivity *)self->_userActivity becomeCurrent];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MTAWorldClockTableViewController;
  [(MTAWorldClockTableViewController *)&v5 viewWillDisappear:a3];
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000738E8(self, v4);
  }

  [(NSUserActivity *)self->_userActivity resignCurrent];
}

- (void)reloadState
{
  v3 = +[WorldClockManager sharedManager];
  [v3 loadCities];

  v4.receiver = self;
  v4.super_class = MTAWorldClockTableViewController;
  [(MTATableViewController *)&v4 reloadState];
}

- (void)setupForTest:(id)a3 options:(id)a4
{
  v5 = [ALCityManager sharedManager:a3];
  v6 = objc_opt_new();
  v7 = 1;
  do
  {
    v8 = v7;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v5 defaultCitiesShownInWorldClock];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[WorldClockCity alloc] initWithALCity:*(*(&v17 + 1) + 8 * i)];
          [v6 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v7 = 0;
  }

  while ((v8 & 1) != 0);
  v15 = [v6 copy];
  pptTestCities = self->_pptTestCities;
  self->_pptTestCities = v15;

  [(MTAWorldClockTableViewController *)self reloadState];
}

- (id)noItemsText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"NO_WORLD_CLOCKS" value:&stru_1000AEF10 table:0];

  return v3;
}

- (int64_t)numberOfItems
{
  pptTestCities = self->_pptTestCities;
  if (pptTestCities)
  {
    v3 = pptTestCities;
  }

  else
  {
    v4 = +[WorldClockManager sharedManager];
    v3 = [v4 cities];
  }

  v5 = [(NSArray *)v3 count];

  return v5;
}

- (void)saveScrollPoint
{
  if ([(MTAWorldClockTableViewController *)self isViewLoaded])
  {
    v3 = [(MTAWorldClockTableViewController *)self tableView];
    [v3 contentOffset];
    *&v5 = v4;
    v7 = [NSNumber numberWithFloat:v5];

    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setObject:v7 forKey:@"WorldClockTableScrollPoint"];
  }
}

- (void)showAddView
{
  v3 = +[WorldClockManager sharedManager];
  v4 = [v3 canAddCity];

  if (v4)
  {
    v13.receiver = self;
    v13.super_class = MTAWorldClockTableViewController;
    [(MTATableViewController *)&v13 showAddViewWithCompletion:&stru_1000AE2D0];
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v12 = [v5 localizedStringForKey:@"TOO_MANY_WORLD_CLOCKS_TITLE" value:&stru_1000AEF10 table:0];

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"TOO_MANY_WORLD_CLOCKS_BODY" value:&stru_1000AEF10 table:0];

    v8 = [UIAlertController alertControllerWithTitle:v12 message:v7 preferredStyle:1];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"OK" value:&stru_1000AEF10 table:0];
    v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
    [v8 addAction:v11];

    [(MTAWorldClockTableViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (id)addViewController
{
  v3 = objc_alloc_init(MTAAddClockViewController);
  [(MTAAddClockViewController *)v3 setDelegate:self];
  v4 = [[MTAAddSheetNavigationController alloc] initWithRootViewController:v3];

  return v4;
}

- (void)addCityWithoutUserInteraction:(id)a3
{
  [(MTAWorldClockTableViewController *)self addClockViewController:0 addCity:a3];

  [(MTAWorldClockTableViewController *)self finishAddViewControllerDismissal:0];
}

- (void)removeCityWithoutUserInteraction:(id)a3
{
  v4 = a3;
  v5 = +[WorldClockManager sharedManager];
  v6 = [v5 cities];
  v7 = [v6 indexOfObject:v4];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [NSIndexPath indexPathForRow:v7 inSection:0];
    [(MTAWorldClockTableViewController *)self removeCityAtIndexPath:v8];
  }
}

- (void)addClockViewController:(id)a3 addCity:(id)a4
{
  v5 = a4;
  v6 = +[WorldClockManager sharedManager];
  v7 = [v6 cities];
  v8 = [v7 count];

  v9 = [v6 addCity:v5];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [NSIndexPath indexPathForRow:v9 inSection:0];
    v11 = [v6 cities];
    v12 = [v11 count];

    if (v8 != v12)
    {
      [v6 saveCities];
      v13 = [(MTAWorldClockTableViewController *)self tableView];
      v15 = v10;
      v14 = [NSArray arrayWithObjects:&v15 count:1];
      [v13 insertRowsAtIndexPaths:v14 withRowAnimation:5];

      [MTAnalytics incrementEventCount:kMTCAWorldClockAdds];
    }

    [(MTAWorldClockTableViewController *)self scrollToCityAtIndex:v9 animated:0];
  }
}

- (void)scrollToCityAtIndex:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  pptTestCities = self->_pptTestCities;
  if (pptTestCities)
  {
    v12 = pptTestCities;
    if (a3 < 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = +[WorldClockManager sharedManager];
    v12 = [v8 cities];

    if (a3 < 0)
    {
      goto LABEL_10;
    }
  }

  if ([(NSArray *)v12 count]> a3 && v12 != 0)
  {
    v10 = [NSIndexPath indexPathForRow:a3 inSection:0];
    v11 = [(MTAWorldClockTableViewController *)self tableView];
    [v11 scrollToRowAtIndexPath:v10 atScrollPosition:3 animated:v4];
  }

LABEL_10:
}

- (void)finishAddViewControllerDismissal:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MTAWorldClockTableViewController;
  [(MTATableViewController *)&v5 finishAddViewControllerDismissal:a3];
  v3 = +[MTAStateStore shared];
  v4 = [MTAStateStoreEvent eventWithType:4];
  [v3 pushEvent:v4];
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002F4DC;
  v14[3] = &unk_1000ADA20;
  objc_copyWeak(&v16, &location);
  v8 = v7;
  v15 = v8;
  v9 = [UIContextualAction contextualActionWithStyle:1 title:0 handler:v14];
  v10 = [UIImage systemImageNamed:@"trash"];
  [v9 setImage:v10];

  v18 = v9;
  v11 = [NSArray arrayWithObjects:&v18 count:1];
  v12 = [UISwipeActionsConfiguration configurationWithActions:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v12;
}

- (void)deleteRowAtIndexPath:(id)a3
{
  if (a3)
  {
    [(MTAWorldClockTableViewController *)self removeCityAtIndexPath:?];
  }
}

- (void)removeCityAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = +[WorldClockManager sharedManager];
  [v5 removeCityAtIndex:{objc_msgSend(v4, "row")}];
  v6 = [(MTAWorldClockTableViewController *)self tableView];
  v8 = v4;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v6 deleteRowsAtIndexPaths:v7 withRowAnimation:100];

  [(MTATableViewController *)self _reloadUI:0];
  [v5 saveCities];
  [MTAnalytics incrementEventCount:kMTCAWorldClockRemoves];
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  if (!self->_pptTestCities)
  {
    v7 = a5;
    v8 = a4;
    v14 = +[WorldClockManager sharedManager];
    v9 = [v14 cities];
    v10 = [v9 count];

    v11 = [v8 row];
    v12 = [v7 row];

    if (v11 != v12 && v11 < v10 && v12 < v10)
    {
      [v14 moveCityFromIndex:v11 toIndex:v12];
      [v14 saveCities];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  pptTestCities = self->_pptTestCities;
  if (pptTestCities)
  {
    v9 = pptTestCities;
  }

  else
  {
    v10 = +[WorldClockManager sharedManager];
    v9 = [v10 cities];
  }

  v11 = [v6 dequeueReusableCellWithIdentifier:@"MTWorldClockCell" forIndexPath:v7];
  [v11 updateShouldStackViewInCell:self->_shouldStackViewsInCell];
  v12 = -[NSArray objectAtIndex:](v9, "objectAtIndex:", [v7 row]);
  [v11 setCity:v12];

  v13 = [v11 city];
  v14 = [v13 name];
  [v11 setAccessibilityIdentifier:v14];

  return v11;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTAWorldClockTableViewController;
  [(MTAWorldClockTableViewController *)&v8 setEditing:a3 animated:a4];
  v5 = +[MTAStateStore shared];
  if (v4)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  v7 = [MTAStateStoreEvent eventWithType:v6];
  [v5 pushEvent:v7];
}

@end