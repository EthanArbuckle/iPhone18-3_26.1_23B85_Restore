@interface BuddyMultilingualBaseViewController
+ (BOOL)hasItemsToModifyWithDefault:(id)default andAvailableData:(id)data;
- (BFFFlowItemDelegate)delegate;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BuddyMultilingualBaseViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name actionString:(id)string;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_presentableAdditionalDataSource;
- (id)backingStore;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_presentAdditionDataSource;
- (void)additionViewControllerCompleted;
- (void)continuePressed;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setProvider:(id)provider;
- (void)tableView:(id)view allowAdditionalDataSelection:(BOOL)selection;
- (void)tableView:(id)view appendItem:(id)item inSection:(unint64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyMultilingualBaseViewController

- (BuddyMultilingualBaseViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name actionString:(id)string
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v15 = 0;
  objc_storeStrong(&v15, text);
  v14 = 0;
  objc_storeStrong(&v14, name);
  obj = 0;
  objc_storeStrong(&obj, string);
  v9 = selfCopy;
  selfCopy = 0;
  v12.receiver = v9;
  v12.super_class = BuddyMultilingualBaseViewController;
  selfCopy = [(BuddyMultilingualBaseViewController *)&v12 initWithTitle:location[0] detailText:v15 symbolName:v14 adoptTableViewScrollView:1];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 11, obj);
  }

  v10 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v33 = a2;
  v32.receiver = self;
  v32.super_class = BuddyMultilingualBaseViewController;
  [(BuddyMultilingualBaseViewController *)&v32 viewDidLoad];
  defaultData = [(BuddyMultilingualBaseViewController *)selfCopy defaultData];
  v3 = defaultData == 0;

  if (v3)
  {
    [(BuddyMultilingualBaseViewController *)selfCopy setDefaultData:&__NSArray0__struct];
  }

  availableData = [(BuddyMultilingualBaseViewController *)selfCopy availableData];
  v5 = availableData == 0;

  if (v5)
  {
    [(BuddyMultilingualBaseViewController *)selfCopy setAvailableData:&__NSArray0__struct];
  }

  v6 = [BuddyMultilingualDataSource alloc];
  defaultData2 = [(BuddyMultilingualBaseViewController *)selfCopy defaultData];
  v36 = defaultData2;
  v8 = [NSArray arrayWithObjects:&v36 count:1];
  additionLabel = [(BuddyMultilingualBaseViewController *)selfCopy additionLabel];
  v10 = [(BuddyMultilingualDataSource *)v6 initWithBackingStore:v8 actionText:additionLabel];
  [(BuddyMultilingualBaseViewController *)selfCopy setDataSource:v10];

  v11 = [BuddyMultilingualDataSource alloc];
  availableData2 = [(BuddyMultilingualBaseViewController *)selfCopy availableData];
  v35 = availableData2;
  v13 = [NSArray arrayWithObjects:&v35 count:1];
  v14 = [(BuddyMultilingualDataSource *)v11 initWithBackingStore:v13 actionText:&stru_10032F900];
  [(BuddyMultilingualBaseViewController *)selfCopy setPresentingDataSource:v14];

  v15 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyMultilingualBaseViewController *)selfCopy setTableView:v15];

  v16 = selfCopy;
  tableView = [(BuddyMultilingualBaseViewController *)selfCopy tableView];
  [tableView setDelegate:v16];

  v18 = selfCopy;
  tableView2 = [(BuddyMultilingualBaseViewController *)selfCopy tableView];
  [tableView2 setDataSource:v18];

  tableView3 = [(BuddyMultilingualBaseViewController *)selfCopy tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(BuddyMultilingualBaseViewController *)selfCopy tableView];
  [tableView4 setEstimatedRowHeight:0.0];

  tableView5 = [(BuddyMultilingualBaseViewController *)selfCopy tableView];
  [tableView5 setAllowsSelectionDuringEditing:1];

  tableView6 = [(BuddyMultilingualBaseViewController *)selfCopy tableView];
  [tableView6 setEditing:1 animated:1];

  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  tableView7 = [(BuddyMultilingualBaseViewController *)selfCopy tableView];
  _presentableAdditionalDataSource = [(BuddyMultilingualBaseViewController *)selfCopy _presentableAdditionalDataSource];
  -[BuddyMultilingualDataSource tableView:allowAdditionalDataSelection:](dataSource, "tableView:allowAdditionalDataSelection:", tableView7, [_presentableAdditionalDataSource count] != 0);

  backingStore = [(BuddyMultilingualBaseViewController *)selfCopy backingStore];
  [(BuddyMultilingualBaseViewController *)selfCopy setStartingDataSet:backingStore];

  v31 = +[OBBoldTrayButton boldButton];
  v28 = +[NSBundle mainBundle];
  v29 = [(NSBundle *)v28 localizedStringForKey:@"MULTILINGUAL_CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [v31 setTitle:v29 forState:0];

  [v31 addTarget:selfCopy action:"continuePressed" forControlEvents:64];
  buttonTray = [(BuddyMultilingualBaseViewController *)selfCopy buttonTray];
  [buttonTray addButton:v31];

  objc_storeStrong(&v31, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = BuddyMultilingualBaseViewController;
  [(BuddyMultilingualBaseViewController *)&v5 viewWillAppear:appear];
  animationController = [(BuddyMultilingualBaseViewController *)selfCopy animationController];

  if (animationController)
  {
    animationController2 = [(BuddyMultilingualBaseViewController *)selfCopy animationController];
    [(OBAnimationController *)animationController2 startAnimation];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v9 = a2;
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = BuddyMultilingualBaseViewController;
  [(BuddyMultilingualBaseViewController *)&v7 viewDidAppear:appear];
  tableView = [(BuddyMultilingualBaseViewController *)selfCopy tableView];
  tableView2 = [(BuddyMultilingualBaseViewController *)selfCopy tableView];
  subviews = [tableView2 subviews];
  firstObject = [subviews firstObject];
  [tableView bringSubviewToFront:firstObject];
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v4.receiver = selfCopy;
  v4.super_class = BuddyMultilingualBaseViewController;
  [(BuddyMultilingualBaseViewController *)&v4 traitCollectionDidChange:location[0]];
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  [(BuddyMultilingualDataSource *)dataSource recalculateUnifiedRowHeight];

  objc_storeStrong(location, 0);
}

- (void)continuePressed
{
  paneForAnalytics = [(BuddyMultilingualBaseViewController *)self paneForAnalytics];
  startingDataSet = [(BuddyMultilingualBaseViewController *)self startingDataSet];
  backingStore = [(BuddyMultilingualBaseViewController *)self backingStore];
  analyticsManager = [(BuddyMultilingualBaseViewController *)self analyticsManager];
  [BYMultilingualAnalyticsEvent recordMultilingualPane:paneForAnalytics startingData:startingDataSet modifiedData:backingStore analyticsManager:analyticsManager];
}

- (void)additionViewControllerCompleted
{
  provider = [(BuddyMultilingualBaseViewController *)self provider];
  createDataSourceForSelectedItems = [(BuddyMultilingualProvider *)provider createDataSourceForSelectedItems];
  [(BuddyMultilingualBaseViewController *)self setDefaultData:createDataSourceForSelectedItems];

  dataSource = [(BuddyMultilingualBaseViewController *)self dataSource];
  tableView = [(BuddyMultilingualBaseViewController *)self tableView];
  defaultData = [(BuddyMultilingualBaseViewController *)self defaultData];
  v9 = defaultData;
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  [(BuddyMultilingualDataSource *)dataSource tableView:tableView setBackingStore:v7];
}

- (void)setProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  objc_storeStrong(&selfCopy->_provider, location[0]);
  provider = [(BuddyMultilingualBaseViewController *)selfCopy provider];
  createDataSourceForPreselectedItems = [(BuddyMultilingualProvider *)provider createDataSourceForPreselectedItems];
  [(BuddyMultilingualBaseViewController *)selfCopy setDefaultData:createDataSourceForPreselectedItems];

  provider2 = [(BuddyMultilingualBaseViewController *)selfCopy provider];
  createDataSourceItemsAvailableForAdding = [(BuddyMultilingualProvider *)provider2 createDataSourceItemsAvailableForAdding];
  [(BuddyMultilingualBaseViewController *)selfCopy setAvailableData:createDataSourceItemsAvailableForAdding];

  objc_storeStrong(location, 0);
}

- (id)backingStore
{
  v2 = [(BuddyMultilingualBaseViewController *)self dataSource:a2];
  combinedStore = [(BuddyMultilingualDataSource *)v2 combinedStore];

  return combinedStore;
}

+ (BOOL)hasItemsToModifyWithDefault:(id)default andAvailableData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, default);
  v15 = 0;
  objc_storeStrong(&v15, data);
  if ([location[0] count] <= 1)
  {
    v5 = v15;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_1000FF9E8;
    v11 = &unk_10032CDA0;
    v12 = location[0];
    v13 = [v5 indexOfObjectPassingTest:&v7];
    v17 = v13 != 0x7FFFFFFFFFFFFFFFLL;
    v14 = 1;
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v17 = 1;
    v14 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v17;
}

- (void)_presentAdditionDataSource
{
  selfCopy = self;
  location[1] = a2;
  dataSelectorController = [(BuddyMultilingualBaseViewController *)self dataSelectorController];
  v3 = dataSelectorController == 0;

  if (v3)
  {
    objc_initWeak(location, selfCopy);
    v4 = [BuddyMultilingualContentAdditionController alloc];
    _presentableAdditionalDataSource = [(BuddyMultilingualBaseViewController *)selfCopy _presentableAdditionalDataSource];
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_1000FFD68;
    v23 = &unk_10032CDC8;
    objc_copyWeak(&v24, location);
    v6 = [(BuddyMultilingualContentAdditionController *)v4 initWithChoseableDataStore:_presentableAdditionalDataSource selectionCallback:&v19];
    [(BuddyMultilingualBaseViewController *)selfCopy setDataSelectorController:v6];
    v18 = 0;

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  else
  {
    _presentableAdditionalDataSource2 = [(BuddyMultilingualBaseViewController *)selfCopy _presentableAdditionalDataSource];
    dataSelectorController2 = [(BuddyMultilingualBaseViewController *)selfCopy dataSelectorController];
    [(BuddyMultilingualContentAdditionController *)dataSelectorController2 setDataStore:_presentableAdditionalDataSource2];
  }

  v9 = [UIBarButtonItem alloc];
  v10 = +[NSBundle mainBundle];
  v11 = [(NSBundle *)v10 localizedStringForKey:@"MULTILINGUAL_CANCEL" value:&stru_10032F900 table:@"Localizable"];
  v12 = [v9 initWithTitle:v11 style:2 target:selfCopy action:"_presentingControllerDidCancel"];
  dataSelectorController3 = [(BuddyMultilingualBaseViewController *)selfCopy dataSelectorController];
  navigationItem = [(BuddyMultilingualContentAdditionController *)dataSelectorController3 navigationItem];
  [navigationItem setRightBarButtonItem:v12];

  v15 = [UINavigationController alloc];
  dataSelectorController4 = [(BuddyMultilingualBaseViewController *)selfCopy dataSelectorController];
  v17 = [v15 initWithRootViewController:dataSelectorController4];

  [(BuddyMultilingualBaseViewController *)selfCopy presentViewController:v17 animated:1 completion:0];
  objc_storeStrong(&v17, 0);
}

- (id)_presentableAdditionalDataSource
{
  selfCopy = self;
  location[1] = a2;
  location[0] = +[NSMutableArray array];
  memset(__b, 0, sizeof(__b));
  presentingDataSource = [(BuddyMultilingualBaseViewController *)selfCopy presentingDataSource];
  combinedStore = [(BuddyMultilingualDataSource *)presentingDataSource combinedStore];

  v4 = [combinedStore countByEnumeratingWithState:__b objects:v16 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(combinedStore);
        }

        v13 = *(__b[1] + 8 * i);
        dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
        identifier = [v13 identifier];
        v9 = ![(BuddyMultilingualDataSource *)dataSource containsKey:identifier];

        if (v9)
        {
          [location[0] addObject:v13];
        }
      }

      v4 = [combinedStore countByEnumeratingWithState:__b objects:v16 count:16];
    }

    while (v4);
  }

  v10 = location[0];
  objc_storeStrong(location, 0);
  return v10;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if (location[0])
  {
    provider = [(BuddyMultilingualBaseViewController *)selfCopy provider];
    createDataSourceForSelectedItems = [(BuddyMultilingualProvider *)provider createDataSourceForSelectedItems];

    v9 = 0;
    didMakeSelection = 0;
    if (createDataSourceForSelectedItems)
    {
      multilingualFlowManager = [(BuddyMultilingualBaseViewController *)selfCopy multilingualFlowManager];
      v9 = 1;
      didMakeSelection = [multilingualFlowManager didMakeSelection];
    }

    if (v9)
    {
    }

    if (didMakeSelection)
    {
      [(BuddyMultilingualBaseViewController *)selfCopy setDefaultData:createDataSourceForSelectedItems];
    }

    defaultData = [(BuddyMultilingualBaseViewController *)selfCopy defaultData];
    v8 = [NSSet setWithArray:defaultData];

    v6 = objc_opt_class();
    availableData = [(BuddyMultilingualBaseViewController *)selfCopy availableData];
    LOBYTE(v6) = [v6 hasItemsToModifyWithDefault:v8 andAvailableData:availableData];

    (*(location[0] + 2))(location[0], v6 & 1);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&createDataSourceForSelectedItems, 0);
  }

  objc_storeStrong(location, 0);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, path);
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  v6 = [(BuddyMultilingualDataSource *)dataSource tableView:location[0] cellForRowAtIndexPath:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  v6 = [(BuddyMultilingualDataSource *)dataSource tableView:location[0] numberOfRowsInSection:sectionCopy];

  objc_storeStrong(location, 0);
  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  v4 = [(BuddyMultilingualDataSource *)dataSource numberOfSectionsInTableView:location[0]];

  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, path);
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  v6 = [(BuddyMultilingualDataSource *)dataSource tableView:location[0] canMoveRowAtIndexPath:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v9 = 0;
  objc_storeStrong(&v9, path);
  v8 = 0;
  objc_storeStrong(&v8, indexPath);
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  [(BuddyMultilingualDataSource *)dataSource tableView:location[0] moveRowAtIndexPath:v9 toIndexPath:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, path);
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  v6 = [(BuddyMultilingualDataSource *)dataSource tableView:location[0] canEditRowAtIndexPath:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  styleCopy = style;
  v8 = 0;
  objc_storeStrong(&v8, path);
  if (styleCopy == 2)
  {
    [(BuddyMultilingualBaseViewController *)selfCopy tableView:location[0] didSelectRowAtIndexPath:v8];
  }

  else
  {
    dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
    [(BuddyMultilingualDataSource *)dataSource tableView:location[0] commitEditingStyle:styleCopy forRowAtIndexPath:v8];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)view appendItem:(id)item inSection:(unint64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v9 = 0;
  objc_storeStrong(&v9, item);
  sectionCopy = section;
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  [(BuddyMultilingualDataSource *)dataSource tableView:location[0] appendItem:v9 inSection:sectionCopy];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)view allowAdditionalDataSelection:(BOOL)selection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  selectionCopy = selection;
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  [(BuddyMultilingualDataSource *)dataSource tableView:location[0] allowAdditionalDataSelection:selectionCopy];

  objc_storeStrong(location, 0);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v7 = 0;
  objc_storeStrong(&v7, path);
  [location[0] deselectRowAtIndexPath:v7 animated:1];
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  v6 = [(BuddyMultilingualDataSource *)dataSource rowActionableAtIndexPath:v7];

  if (v6)
  {
    [(BuddyMultilingualBaseViewController *)selfCopy presentAdditionViewController];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v9 = 0;
  objc_storeStrong(&v9, path);
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  [(BuddyMultilingualDataSource *)dataSource unifiedRowHeight];
  v7 = v6;

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return UITableViewAutomaticDimension;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, path);
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  v6 = [(BuddyMultilingualDataSource *)dataSource editingStyleForRowAtIndexPath:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v14 = 0;
  objc_storeStrong(&v14, path);
  v13 = 0;
  objc_storeStrong(&v13, indexPath);
  dataSource = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  LOBYTE(path) = [(BuddyMultilingualDataSource *)dataSource itemReorderableAtIndexPath:v14];

  v12 = path & 1;
  dataSource2 = [(BuddyMultilingualBaseViewController *)selfCopy dataSource];
  v9 = [(BuddyMultilingualDataSource *)dataSource2 itemReorderableAtIndexPath:v13];

  if (v12 & 1) != 0 && (v9)
  {
    v17 = v13;
  }

  else
  {
    v17 = v14;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  v10 = v17;

  return v10;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end