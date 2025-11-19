@interface BuddyMultilingualBaseViewController
+ (BOOL)hasItemsToModifyWithDefault:(id)a3 andAvailableData:(id)a4;
- (BFFFlowItemDelegate)delegate;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BuddyMultilingualBaseViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 actionString:(id)a6;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_presentableAdditionalDataSource;
- (id)backingStore;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_presentAdditionDataSource;
- (void)additionViewControllerCompleted;
- (void)continuePressed;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setProvider:(id)a3;
- (void)tableView:(id)a3 allowAdditionalDataSelection:(BOOL)a4;
- (void)tableView:(id)a3 appendItem:(id)a4 inSection:(unint64_t)a5;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyMultilingualBaseViewController

- (BuddyMultilingualBaseViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 actionString:(id)a6
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  obj = 0;
  objc_storeStrong(&obj, a6);
  v9 = v17;
  v17 = 0;
  v12.receiver = v9;
  v12.super_class = BuddyMultilingualBaseViewController;
  v17 = [(BuddyMultilingualBaseViewController *)&v12 initWithTitle:location[0] detailText:v15 symbolName:v14 adoptTableViewScrollView:1];
  objc_storeStrong(&v17, v17);
  if (v17)
  {
    objc_storeStrong(v17 + 11, obj);
  }

  v10 = v17;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v10;
}

- (void)viewDidLoad
{
  v34 = self;
  v33 = a2;
  v32.receiver = self;
  v32.super_class = BuddyMultilingualBaseViewController;
  [(BuddyMultilingualBaseViewController *)&v32 viewDidLoad];
  v2 = [(BuddyMultilingualBaseViewController *)v34 defaultData];
  v3 = v2 == 0;

  if (v3)
  {
    [(BuddyMultilingualBaseViewController *)v34 setDefaultData:&__NSArray0__struct];
  }

  v4 = [(BuddyMultilingualBaseViewController *)v34 availableData];
  v5 = v4 == 0;

  if (v5)
  {
    [(BuddyMultilingualBaseViewController *)v34 setAvailableData:&__NSArray0__struct];
  }

  v6 = [BuddyMultilingualDataSource alloc];
  v7 = [(BuddyMultilingualBaseViewController *)v34 defaultData];
  v36 = v7;
  v8 = [NSArray arrayWithObjects:&v36 count:1];
  v9 = [(BuddyMultilingualBaseViewController *)v34 additionLabel];
  v10 = [(BuddyMultilingualDataSource *)v6 initWithBackingStore:v8 actionText:v9];
  [(BuddyMultilingualBaseViewController *)v34 setDataSource:v10];

  v11 = [BuddyMultilingualDataSource alloc];
  v12 = [(BuddyMultilingualBaseViewController *)v34 availableData];
  v35 = v12;
  v13 = [NSArray arrayWithObjects:&v35 count:1];
  v14 = [(BuddyMultilingualDataSource *)v11 initWithBackingStore:v13 actionText:&stru_10032F900];
  [(BuddyMultilingualBaseViewController *)v34 setPresentingDataSource:v14];

  v15 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyMultilingualBaseViewController *)v34 setTableView:v15];

  v16 = v34;
  v17 = [(BuddyMultilingualBaseViewController *)v34 tableView];
  [v17 setDelegate:v16];

  v18 = v34;
  v19 = [(BuddyMultilingualBaseViewController *)v34 tableView];
  [v19 setDataSource:v18];

  v20 = [(BuddyMultilingualBaseViewController *)v34 tableView];
  [v20 setRowHeight:UITableViewAutomaticDimension];

  v21 = [(BuddyMultilingualBaseViewController *)v34 tableView];
  [v21 setEstimatedRowHeight:0.0];

  v22 = [(BuddyMultilingualBaseViewController *)v34 tableView];
  [v22 setAllowsSelectionDuringEditing:1];

  v23 = [(BuddyMultilingualBaseViewController *)v34 tableView];
  [v23 setEditing:1 animated:1];

  v24 = [(BuddyMultilingualBaseViewController *)v34 dataSource];
  v25 = [(BuddyMultilingualBaseViewController *)v34 tableView];
  v26 = [(BuddyMultilingualBaseViewController *)v34 _presentableAdditionalDataSource];
  -[BuddyMultilingualDataSource tableView:allowAdditionalDataSelection:](v24, "tableView:allowAdditionalDataSelection:", v25, [v26 count] != 0);

  v27 = [(BuddyMultilingualBaseViewController *)v34 backingStore];
  [(BuddyMultilingualBaseViewController *)v34 setStartingDataSet:v27];

  v31 = +[OBBoldTrayButton boldButton];
  v28 = +[NSBundle mainBundle];
  v29 = [(NSBundle *)v28 localizedStringForKey:@"MULTILINGUAL_CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [v31 setTitle:v29 forState:0];

  [v31 addTarget:v34 action:"continuePressed" forControlEvents:64];
  v30 = [(BuddyMultilingualBaseViewController *)v34 buttonTray];
  [v30 addButton:v31];

  objc_storeStrong(&v31, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = BuddyMultilingualBaseViewController;
  [(BuddyMultilingualBaseViewController *)&v5 viewWillAppear:a3];
  v3 = [(BuddyMultilingualBaseViewController *)v8 animationController];

  if (v3)
  {
    v4 = [(BuddyMultilingualBaseViewController *)v8 animationController];
    [(OBAnimationController *)v4 startAnimation];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7.receiver = self;
  v7.super_class = BuddyMultilingualBaseViewController;
  [(BuddyMultilingualBaseViewController *)&v7 viewDidAppear:a3];
  v3 = [(BuddyMultilingualBaseViewController *)v10 tableView];
  v4 = [(BuddyMultilingualBaseViewController *)v10 tableView];
  v5 = [v4 subviews];
  v6 = [v5 firstObject];
  [v3 bringSubviewToFront:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4.receiver = v6;
  v4.super_class = BuddyMultilingualBaseViewController;
  [(BuddyMultilingualBaseViewController *)&v4 traitCollectionDidChange:location[0]];
  v3 = [(BuddyMultilingualBaseViewController *)v6 dataSource];
  [(BuddyMultilingualDataSource *)v3 recalculateUnifiedRowHeight];

  objc_storeStrong(location, 0);
}

- (void)continuePressed
{
  v2 = [(BuddyMultilingualBaseViewController *)self paneForAnalytics];
  v3 = [(BuddyMultilingualBaseViewController *)self startingDataSet];
  v4 = [(BuddyMultilingualBaseViewController *)self backingStore];
  v5 = [(BuddyMultilingualBaseViewController *)self analyticsManager];
  [BYMultilingualAnalyticsEvent recordMultilingualPane:v2 startingData:v3 modifiedData:v4 analyticsManager:v5];
}

- (void)additionViewControllerCompleted
{
  v2 = [(BuddyMultilingualBaseViewController *)self provider];
  v3 = [(BuddyMultilingualProvider *)v2 createDataSourceForSelectedItems];
  [(BuddyMultilingualBaseViewController *)self setDefaultData:v3];

  v4 = [(BuddyMultilingualBaseViewController *)self dataSource];
  v5 = [(BuddyMultilingualBaseViewController *)self tableView];
  v6 = [(BuddyMultilingualBaseViewController *)self defaultData];
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];
  [(BuddyMultilingualDataSource *)v4 tableView:v5 setBackingStore:v7];
}

- (void)setProvider:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v8->_provider, location[0]);
  v3 = [(BuddyMultilingualBaseViewController *)v8 provider];
  v4 = [(BuddyMultilingualProvider *)v3 createDataSourceForPreselectedItems];
  [(BuddyMultilingualBaseViewController *)v8 setDefaultData:v4];

  v5 = [(BuddyMultilingualBaseViewController *)v8 provider];
  v6 = [(BuddyMultilingualProvider *)v5 createDataSourceItemsAvailableForAdding];
  [(BuddyMultilingualBaseViewController *)v8 setAvailableData:v6];

  objc_storeStrong(location, 0);
}

- (id)backingStore
{
  v2 = [(BuddyMultilingualBaseViewController *)self dataSource:a2];
  v3 = [(BuddyMultilingualDataSource *)v2 combinedStore];

  return v3;
}

+ (BOOL)hasItemsToModifyWithDefault:(id)a3 andAvailableData:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
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
  v26 = self;
  location[1] = a2;
  v2 = [(BuddyMultilingualBaseViewController *)self dataSelectorController];
  v3 = v2 == 0;

  if (v3)
  {
    objc_initWeak(location, v26);
    v4 = [BuddyMultilingualContentAdditionController alloc];
    v5 = [(BuddyMultilingualBaseViewController *)v26 _presentableAdditionalDataSource];
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_1000FFD68;
    v23 = &unk_10032CDC8;
    objc_copyWeak(&v24, location);
    v6 = [(BuddyMultilingualContentAdditionController *)v4 initWithChoseableDataStore:v5 selectionCallback:&v19];
    [(BuddyMultilingualBaseViewController *)v26 setDataSelectorController:v6];
    v18 = 0;

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = [(BuddyMultilingualBaseViewController *)v26 _presentableAdditionalDataSource];
    v8 = [(BuddyMultilingualBaseViewController *)v26 dataSelectorController];
    [(BuddyMultilingualContentAdditionController *)v8 setDataStore:v7];
  }

  v9 = [UIBarButtonItem alloc];
  v10 = +[NSBundle mainBundle];
  v11 = [(NSBundle *)v10 localizedStringForKey:@"MULTILINGUAL_CANCEL" value:&stru_10032F900 table:@"Localizable"];
  v12 = [v9 initWithTitle:v11 style:2 target:v26 action:"_presentingControllerDidCancel"];
  v13 = [(BuddyMultilingualBaseViewController *)v26 dataSelectorController];
  v14 = [(BuddyMultilingualContentAdditionController *)v13 navigationItem];
  [v14 setRightBarButtonItem:v12];

  v15 = [UINavigationController alloc];
  v16 = [(BuddyMultilingualBaseViewController *)v26 dataSelectorController];
  v17 = [v15 initWithRootViewController:v16];

  [(BuddyMultilingualBaseViewController *)v26 presentViewController:v17 animated:1 completion:0];
  objc_storeStrong(&v17, 0);
}

- (id)_presentableAdditionalDataSource
{
  v15 = self;
  location[1] = a2;
  location[0] = +[NSMutableArray array];
  memset(__b, 0, sizeof(__b));
  v2 = [(BuddyMultilingualBaseViewController *)v15 presentingDataSource];
  v3 = [(BuddyMultilingualDataSource *)v2 combinedStore];

  v4 = [v3 countByEnumeratingWithState:__b objects:v16 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(__b[1] + 8 * i);
        v7 = [(BuddyMultilingualBaseViewController *)v15 dataSource];
        v8 = [v13 identifier];
        v9 = ![(BuddyMultilingualDataSource *)v7 containsKey:v8];

        if (v9)
        {
          [location[0] addObject:v13];
        }
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v16 count:16];
    }

    while (v4);
  }

  v10 = location[0];
  objc_storeStrong(location, 0);
  return v10;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v3 = [(BuddyMultilingualBaseViewController *)v13 provider];
    v11 = [(BuddyMultilingualProvider *)v3 createDataSourceForSelectedItems];

    v9 = 0;
    v4 = 0;
    if (v11)
    {
      v10 = [(BuddyMultilingualBaseViewController *)v13 multilingualFlowManager];
      v9 = 1;
      v4 = [v10 didMakeSelection];
    }

    if (v9)
    {
    }

    if (v4)
    {
      [(BuddyMultilingualBaseViewController *)v13 setDefaultData:v11];
    }

    v5 = [(BuddyMultilingualBaseViewController *)v13 defaultData];
    v8 = [NSSet setWithArray:v5];

    v6 = objc_opt_class();
    v7 = [(BuddyMultilingualBaseViewController *)v13 availableData];
    LOBYTE(v6) = [v6 hasItemsToModifyWithDefault:v8 andAvailableData:v7];

    (*(location[0] + 2))(location[0], v6 & 1);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(location, 0);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = [(BuddyMultilingualBaseViewController *)v10 dataSource];
  v6 = [(BuddyMultilingualDataSource *)v5 tableView:location[0] cellForRowAtIndexPath:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v5 = [(BuddyMultilingualBaseViewController *)v10 dataSource];
  v6 = [(BuddyMultilingualDataSource *)v5 tableView:location[0] numberOfRowsInSection:v8];

  objc_storeStrong(location, 0);
  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMultilingualBaseViewController *)v7 dataSource];
  v4 = [(BuddyMultilingualDataSource *)v3 numberOfSectionsInTableView:location[0]];

  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = [(BuddyMultilingualBaseViewController *)v10 dataSource];
  v6 = [(BuddyMultilingualDataSource *)v5 tableView:location[0] canMoveRowAtIndexPath:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v7 = [(BuddyMultilingualBaseViewController *)v11 dataSource];
  [(BuddyMultilingualDataSource *)v7 tableView:location[0] moveRowAtIndexPath:v9 toIndexPath:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = [(BuddyMultilingualBaseViewController *)v10 dataSource];
  v6 = [(BuddyMultilingualDataSource *)v5 tableView:location[0] canEditRowAtIndexPath:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v8 = 0;
  objc_storeStrong(&v8, a5);
  if (v9 == 2)
  {
    [(BuddyMultilingualBaseViewController *)v11 tableView:location[0] didSelectRowAtIndexPath:v8];
  }

  else
  {
    v7 = [(BuddyMultilingualBaseViewController *)v11 dataSource];
    [(BuddyMultilingualDataSource *)v7 tableView:location[0] commitEditingStyle:v9 forRowAtIndexPath:v8];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)a3 appendItem:(id)a4 inSection:(unint64_t)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = a5;
  v7 = [(BuddyMultilingualBaseViewController *)v11 dataSource];
  [(BuddyMultilingualDataSource *)v7 tableView:location[0] appendItem:v9 inSection:v8];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)a3 allowAdditionalDataSelection:(BOOL)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5 = [(BuddyMultilingualBaseViewController *)v8 dataSource];
  [(BuddyMultilingualDataSource *)v5 tableView:location[0] allowAdditionalDataSelection:v6];

  objc_storeStrong(location, 0);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [location[0] deselectRowAtIndexPath:v7 animated:1];
  v5 = [(BuddyMultilingualBaseViewController *)v9 dataSource];
  v6 = [(BuddyMultilingualDataSource *)v5 rowActionableAtIndexPath:v7];

  if (v6)
  {
    [(BuddyMultilingualBaseViewController *)v9 presentAdditionViewController];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v5 = [(BuddyMultilingualBaseViewController *)v11 dataSource];
  [(BuddyMultilingualDataSource *)v5 unifiedRowHeight];
  v7 = v6;

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return UITableViewAutomaticDimension;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = [(BuddyMultilingualBaseViewController *)v10 dataSource];
  v6 = [(BuddyMultilingualDataSource *)v5 editingStyleForRowAtIndexPath:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v7 = [(BuddyMultilingualBaseViewController *)v16 dataSource];
  LOBYTE(a4) = [(BuddyMultilingualDataSource *)v7 itemReorderableAtIndexPath:v14];

  v12 = a4 & 1;
  v8 = [(BuddyMultilingualBaseViewController *)v16 dataSource];
  v9 = [(BuddyMultilingualDataSource *)v8 itemReorderableAtIndexPath:v13];

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