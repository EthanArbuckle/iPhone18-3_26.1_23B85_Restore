@interface MTAWorldClockTableViewController
- (MTAWorldClockTableViewController)init;
- (id)addViewController;
- (id)noItemsText;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (int64_t)numberOfItems;
- (void)addCityWithoutUserInteraction:(id)interaction;
- (void)addClockViewController:(id)controller addCity:(id)city;
- (void)dealloc;
- (void)deleteRowAtIndexPath:(id)path;
- (void)finishAddViewControllerDismissal:(BOOL)dismissal;
- (void)handleTextSizeChange:(id)change;
- (void)reloadState;
- (void)removeCityAtIndexPath:(id)path;
- (void)removeCityWithoutUserInteraction:(id)interaction;
- (void)saveScrollPoint;
- (void)scrollToCityAtIndex:(int64_t)index animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setupForTest:(id)test options:(id)options;
- (void)showAddView;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
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
    tabBarItem = [(MTAWorldClockTableViewController *)v2 tabBarItem];
    [tabBarItem setImage:v3];

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"WORLD_CLOCK" value:&stru_1000AEF10 table:0];
    [(MTAWorldClockTableViewController *)v2 setTitle:v6];

    title = [(MTAWorldClockTableViewController *)v2 title];
    v8 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.worldclock" title:title];
    userActivity = v2->_userActivity;
    v2->_userActivity = v8;

    v10 = +[UIScreen mainScreen];
    _defaultTraitCollection = [v10 _defaultTraitCollection];
    preferredContentSizeCategory = [_defaultTraitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
  tableView = [(MTAWorldClockTableViewController *)self tableView];
  [tableView setLayoutMarginsFollowReadableWidth:1];

  tableView2 = [(MTAWorldClockTableViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"MTWorldClockCell"];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"NanoMobileTimerWorldClockPreferencesChangedNotification", 0);
  v4.receiver = self;
  v4.super_class = MTAWorldClockTableViewController;
  [(MTATableViewController *)&v4 dealloc];
}

- (void)handleTextSizeChange:(id)change
{
  v4 = +[UIScreen mainScreen];
  _defaultTraitCollection = [v4 _defaultTraitCollection];
  preferredContentSizeCategory = [_defaultTraitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  self->_shouldStackViewsInCell = IsAccessibilityCategory;
  [(MTAWorldClockTableViewController *)self itemsTableRowHeight];
  v9 = v8;
  tableView = [(MTAWorldClockTableViewController *)self tableView];
  [tableView setRowHeight:v9];

  tableView2 = [(MTAWorldClockTableViewController *)self tableView];
  [tableView2 reloadData];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = +[WorldClockManager sharedManager];
  cities = [v5 cities];
  if (cities)
  {
  }

  else if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    [v5 loadCities];
  }

  v21.receiver = self;
  v21.super_class = MTAWorldClockTableViewController;
  [(MTATableViewController *)&v21 viewWillAppear:appearCopy];
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 objectForKey:@"WorldClockTableScrollPoint"];
  v9 = v8;
  if (v8)
  {
    [v8 floatValue];
    if (v10 >= 0.0)
    {
      v11 = v10;
      tableView = [(MTAWorldClockTableViewController *)self tableView];
      [tableView contentSize];
      v14 = v13;

      if (v14 > v11)
      {
        tableView2 = [(MTAWorldClockTableViewController *)self tableView];
        [tableView2 setContentOffset:{0.0, v11}];
      }
    }

    [v7 removeObjectForKey:@"WorldClockTableScrollPoint"];
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 postNotificationName:@"com.apple.mobiletimer.user-preferences-dirty" object:0];
  }

  deferAddedCity = [(MTAWorldClockTableViewController *)self deferAddedCity];

  if (deferAddedCity)
  {
    deferAddedCity2 = [(MTAWorldClockTableViewController *)self deferAddedCity];
    [(MTAWorldClockTableViewController *)self addCityWithoutUserInteraction:deferAddedCity2];

    [(MTAWorldClockTableViewController *)self setDeferAddedCity:0];
  }

  deferRemovedCity = [(MTAWorldClockTableViewController *)self deferRemovedCity];

  if (deferRemovedCity)
  {
    deferRemovedCity2 = [(MTAWorldClockTableViewController *)self deferRemovedCity];
    [(MTAWorldClockTableViewController *)self removeCityWithoutUserInteraction:deferRemovedCity2];

    [(MTAWorldClockTableViewController *)self setDeferRemovedCity:0];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  traitCollection = [(MTAWorldClockTableViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  horizontalSizeClass2 = [collectionCopy horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2)
  {

    [(MTATableViewController *)self dismissAddViewController:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = MTAWorldClockTableViewController;
  [(MTATableViewController *)&v10 viewDidAppear:appear];
  v4 = +[WorldClockManager sharedManager];
  keywords = [(NSUserActivity *)self->_userActivity keywords];
  v6 = keywords;
  if (!keywords)
  {
    v6 = +[NSSet set];
  }

  cities = [v4 cities];
  v8 = [cities na_map:&stru_1000AE2B0];
  v9 = [v6 setByAddingObjectsFromArray:v8];
  [(NSUserActivity *)self->_userActivity setKeywords:v9];

  if (!keywords)
  {
  }

  [(NSUserActivity *)self->_userActivity becomeCurrent];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MTAWorldClockTableViewController;
  [(MTAWorldClockTableViewController *)&v5 viewWillDisappear:disappear];
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

- (void)setupForTest:(id)test options:(id)options
{
  v5 = [ALCityManager sharedManager:test];
  v6 = objc_opt_new();
  v7 = 1;
  do
  {
    v8 = v7;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    defaultCitiesShownInWorldClock = [v5 defaultCitiesShownInWorldClock];
    v10 = [defaultCitiesShownInWorldClock countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(defaultCitiesShownInWorldClock);
          }

          v14 = [[WorldClockCity alloc] initWithALCity:*(*(&v17 + 1) + 8 * i)];
          [v6 addObject:v14];
        }

        v11 = [defaultCitiesShownInWorldClock countByEnumeratingWithState:&v17 objects:v21 count:16];
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
    cities = pptTestCities;
  }

  else
  {
    v4 = +[WorldClockManager sharedManager];
    cities = [v4 cities];
  }

  v5 = [(NSArray *)cities count];

  return v5;
}

- (void)saveScrollPoint
{
  if ([(MTAWorldClockTableViewController *)self isViewLoaded])
  {
    tableView = [(MTAWorldClockTableViewController *)self tableView];
    [tableView contentOffset];
    *&v5 = v4;
    v7 = [NSNumber numberWithFloat:v5];

    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setObject:v7 forKey:@"WorldClockTableScrollPoint"];
  }
}

- (void)showAddView
{
  v3 = +[WorldClockManager sharedManager];
  canAddCity = [v3 canAddCity];

  if (canAddCity)
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

- (void)addCityWithoutUserInteraction:(id)interaction
{
  [(MTAWorldClockTableViewController *)self addClockViewController:0 addCity:interaction];

  [(MTAWorldClockTableViewController *)self finishAddViewControllerDismissal:0];
}

- (void)removeCityWithoutUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  v5 = +[WorldClockManager sharedManager];
  cities = [v5 cities];
  v7 = [cities indexOfObject:interactionCopy];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [NSIndexPath indexPathForRow:v7 inSection:0];
    [(MTAWorldClockTableViewController *)self removeCityAtIndexPath:v8];
  }
}

- (void)addClockViewController:(id)controller addCity:(id)city
{
  cityCopy = city;
  v6 = +[WorldClockManager sharedManager];
  cities = [v6 cities];
  v8 = [cities count];

  v9 = [v6 addCity:cityCopy];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [NSIndexPath indexPathForRow:v9 inSection:0];
    cities2 = [v6 cities];
    v12 = [cities2 count];

    if (v8 != v12)
    {
      [v6 saveCities];
      tableView = [(MTAWorldClockTableViewController *)self tableView];
      v15 = v10;
      v14 = [NSArray arrayWithObjects:&v15 count:1];
      [tableView insertRowsAtIndexPaths:v14 withRowAnimation:5];

      [MTAnalytics incrementEventCount:kMTCAWorldClockAdds];
    }

    [(MTAWorldClockTableViewController *)self scrollToCityAtIndex:v9 animated:0];
  }
}

- (void)scrollToCityAtIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  pptTestCities = self->_pptTestCities;
  if (pptTestCities)
  {
    cities = pptTestCities;
    if (index < 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = +[WorldClockManager sharedManager];
    cities = [v8 cities];

    if (index < 0)
    {
      goto LABEL_10;
    }
  }

  if ([(NSArray *)cities count]> index && cities != 0)
  {
    v10 = [NSIndexPath indexPathForRow:index inSection:0];
    tableView = [(MTAWorldClockTableViewController *)self tableView];
    [tableView scrollToRowAtIndexPath:v10 atScrollPosition:3 animated:animatedCopy];
  }

LABEL_10:
}

- (void)finishAddViewControllerDismissal:(BOOL)dismissal
{
  v5.receiver = self;
  v5.super_class = MTAWorldClockTableViewController;
  [(MTATableViewController *)&v5 finishAddViewControllerDismissal:dismissal];
  v3 = +[MTAStateStore shared];
  v4 = [MTAStateStoreEvent eventWithType:4];
  [v3 pushEvent:v4];
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002F4DC;
  v14[3] = &unk_1000ADA20;
  objc_copyWeak(&v16, &location);
  v8 = pathCopy;
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

- (void)deleteRowAtIndexPath:(id)path
{
  if (path)
  {
    [(MTAWorldClockTableViewController *)self removeCityAtIndexPath:?];
  }
}

- (void)removeCityAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = +[WorldClockManager sharedManager];
  [v5 removeCityAtIndex:{objc_msgSend(pathCopy, "row")}];
  tableView = [(MTAWorldClockTableViewController *)self tableView];
  v8 = pathCopy;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [tableView deleteRowsAtIndexPaths:v7 withRowAnimation:100];

  [(MTATableViewController *)self _reloadUI:0];
  [v5 saveCities];
  [MTAnalytics incrementEventCount:kMTCAWorldClockRemoves];
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  if (!self->_pptTestCities)
  {
    indexPathCopy = indexPath;
    pathCopy = path;
    v14 = +[WorldClockManager sharedManager];
    cities = [v14 cities];
    v10 = [cities count];

    v11 = [pathCopy row];
    v12 = [indexPathCopy row];

    if (v11 != v12 && v11 < v10 && v12 < v10)
    {
      [v14 moveCityFromIndex:v11 toIndex:v12];
      [v14 saveCities];
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  pptTestCities = self->_pptTestCities;
  if (pptTestCities)
  {
    cities = pptTestCities;
  }

  else
  {
    v10 = +[WorldClockManager sharedManager];
    cities = [v10 cities];
  }

  v11 = [viewCopy dequeueReusableCellWithIdentifier:@"MTWorldClockCell" forIndexPath:pathCopy];
  [v11 updateShouldStackViewInCell:self->_shouldStackViewsInCell];
  v12 = -[NSArray objectAtIndex:](cities, "objectAtIndex:", [pathCopy row]);
  [v11 setCity:v12];

  city = [v11 city];
  name = [city name];
  [v11 setAccessibilityIdentifier:name];

  return v11;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v8.receiver = self;
  v8.super_class = MTAWorldClockTableViewController;
  [(MTAWorldClockTableViewController *)&v8 setEditing:editing animated:animated];
  v5 = +[MTAStateStore shared];
  if (editingCopy)
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