@interface MTAAlarmCollectionViewController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (MTAAlarmCollectionViewController)initWithAlarmManager:(id)manager dataSource:(id)source;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)cellHeight;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_addOrEditControllerDidDismissCommitChanges:(BOOL)changes;
- (void)_handleNumberOfItemsDidChange;
- (void)_layoutNoItemsLabel;
- (void)_reloadUI:(id)i;
- (void)_removeAlarm:(id)alarm;
- (void)_showAddViewForAlarmAtRow:(unint64_t)row;
- (void)_updateAlarm:(id)alarm reload:(BOOL)reload withCompletionBlock:(id)block;
- (void)alarmEditController:(id)controller didAddAlarm:(id)alarm;
- (void)alarmEditController:(id)controller didDeleteAlarm:(id)alarm;
- (void)alarmEditController:(id)controller didEditAlarm:(id)alarm;
- (void)alarmEditControllerDidCancel:(id)cancel;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dataSource:(id)source didUpdateAlarms:(id)alarms;
- (void)dataSourceDidReload:(id)reload;
- (void)deleteCell:(id)cell;
- (void)dismissAddViewController:(id)controller;
- (void)handleContentSizeChange:(id)change;
- (void)handleContentSizeTransitionFrom:(id)from;
- (void)reloadState:(id)state;
- (void)removeAlarmAtIndexPath:(id)path;
- (void)setAlarmEnabled:(BOOL)enabled forCell:(id)cell;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)showAddAlarmViewPopUpWithAlarm:(id)alarm;
- (void)showAddViewForAlarm:(id)alarm;
- (void)showAddViewForAlarmWithID:(id)d;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MTAAlarmCollectionViewController

- (MTAAlarmCollectionViewController)initWithAlarmManager:(id)manager dataSource:(id)source
{
  managerCopy = manager;
  sourceCopy = source;
  v8 = objc_alloc_init(UICollectionViewFlowLayout);
  v19.receiver = self;
  v19.super_class = MTAAlarmCollectionViewController;
  v9 = [(MTAAlarmCollectionViewController *)&v19 initWithCollectionViewLayout:v8];

  if (v9)
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"ALARMS_LIST" value:&stru_1000AEF10 table:0];
    [(MTAAlarmCollectionViewController *)v9 setTitle:v11];

    v12 = [UIImage systemImageNamed:@"alarm.fill"];
    tabBarItem = [(MTAAlarmCollectionViewController *)v9 tabBarItem];
    [tabBarItem setImage:v12];

    [(MTAAlarmCollectionViewController *)v9 setAlarmManager:managerCopy];
    [(MTAAlarmCollectionViewController *)v9 setDataSource:sourceCopy];
    dataSource = [(MTAAlarmCollectionViewController *)v9 dataSource];
    [dataSource registerObserver:v9];

    title = [(MTAAlarmCollectionViewController *)v9 title];
    v16 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.alarm" title:title];
    userActivity = v9->_userActivity;
    v9->_userActivity = v16;

    v9->_cellHeight = -1.0;
  }

  return v9;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = MTAAlarmCollectionViewController;
  [(MTAAlarmCollectionViewController *)&v19 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"NO_ALARMS" value:&stru_1000AEF10 table:0];

  v5 = [[_UIContentUnavailableView alloc] initWithFrame:v4 title:1 style:0 includeBackdrop:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(MTAAlarmCollectionViewController *)self setNoItemsView:v5];

  noItemsView = [(MTAAlarmCollectionViewController *)self noItemsView];
  [noItemsView setVibrantOptions:0];

  view = [(MTAAlarmCollectionViewController *)self view];
  noItemsView2 = [(MTAAlarmCollectionViewController *)self noItemsView];
  [view addSubview:noItemsView2];

  [(MTAAlarmCollectionViewController *)self reloadState];
  v9 = +[UIColor mtui_backgroundColor];
  collectionView = [(MTAAlarmCollectionViewController *)self collectionView];
  [collectionView setBackgroundColor:v9];

  collectionView2 = [(MTAAlarmCollectionViewController *)self collectionView];
  [collectionView2 setAllowsSelectionDuringEditing:1];

  editButtonItem = [(MTAAlarmCollectionViewController *)self editButtonItem];
  navigationItem = [(MTAAlarmCollectionViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:editButtonItem];

  v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"addAlarm:"];
  navigationItem2 = [(MTAAlarmCollectionViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v14];

  collectionView3 = [(MTAAlarmCollectionViewController *)self collectionView];
  [collectionView3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Cell"];

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"handleContentSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v18 = [NSMutableArray arrayWithObject:&off_1000B19F8];
  [(MTAAlarmCollectionViewController *)self setSections:v18];
}

- (void)reloadState:(id)state
{
  stateCopy = state;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reloading collection view", buf, 2u);
  }

  reloadAlarms = [(MTAlarmDataSource *)self->_dataSource reloadAlarms];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005C920;
  v9[3] = &unk_1000AE810;
  v9[4] = self;
  v10 = stateCopy;
  v7 = stateCopy;
  v8 = [reloadAlarms addCompletionBlock:v9];
}

- (void)_reloadUI:(id)i
{
  iCopy = i;
  [(MTAAlarmCollectionViewController *)self _handleNumberOfItemsDidChange];
  v4 = iCopy;
  if (iCopy)
  {
    (*(iCopy + 2))(iCopy);
    v4 = iCopy;
  }
}

- (void)dataSourceDidReload:(id)reload
{
  [(MTAAlarmCollectionViewController *)self _reloadUI:0];
  collectionView = [(MTAAlarmCollectionViewController *)self collectionView];
  [collectionView reloadData];

  alarmsLoadedAction = self->_alarmsLoadedAction;
  if (alarmsLoadedAction)
  {
    alarmsLoadedAction[2]();
    v6 = self->_alarmsLoadedAction;
    self->_alarmsLoadedAction = 0;
  }
}

- (void)dataSource:(id)source didUpdateAlarms:(id)alarms
{
  alarmsCopy = alarms;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [(MTAlarm *)self->_alarmToEdit alarmID];
    *buf = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = alarmID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading UI for alarm: %{public}@", buf, 0x16u);
  }

  if ([(MTAlarm *)self->_alarmToEdit allowsSnooze])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005CB60;
    v8[3] = &unk_1000AE0C8;
    v8[4] = self;
    [alarmsCopy enumerateObjectsUsingBlock:v8];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MTAAlarmCollectionViewController;
  [(MTAAlarmCollectionViewController *)&v4 viewWillAppear:appear];
  [(MTAAlarmCollectionViewController *)self reloadState];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = MTAAlarmCollectionViewController;
  [(MTAAlarmCollectionViewController *)&v7 viewDidAppear:appear];
  userActivity = [(MTAAlarmCollectionViewController *)self userActivity];
  [userActivity becomeCurrent];

  deferredAddingAlarm = [(MTAAlarmCollectionViewController *)self deferredAddingAlarm];

  if (deferredAddingAlarm)
  {
    deferredAddingAlarm2 = [(MTAAlarmCollectionViewController *)self deferredAddingAlarm];
    deferredAddingAlarm2[2]();

    [(MTAAlarmCollectionViewController *)self setDeferredAddingAlarm:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = MTAAlarmCollectionViewController;
  coordinatorCopy = coordinator;
  [(MTAAlarmCollectionViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005CDC4;
  v8[3] = &unk_1000AD9C8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v20.receiver = self;
  v20.super_class = MTAAlarmCollectionViewController;
  [MTAAlarmCollectionViewController setEditing:"setEditing:animated:" animated:?];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  collectionView = [(MTAAlarmCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v9 = [visibleCells countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v16 + 1) + 8 * i) setEditing:-[MTAAlarmCollectionViewController isEditing](self animated:{"isEditing"), animatedCopy}];
      }

      v10 = [visibleCells countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  v13 = +[MTAStateStore shared];
  if (editingCopy)
  {
    v14 = 7;
  }

  else
  {
    v14 = 6;
  }

  v15 = [MTAStateStoreEvent eventWithType:v14];
  [v13 pushEvent:v15];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = MTAAlarmCollectionViewController;
  [(MTAAlarmCollectionViewController *)&v3 viewDidLayoutSubviews];
  [(MTAAlarmCollectionViewController *)self _layoutNoItemsLabel];
}

- (void)_layoutNoItemsLabel
{
  noItemsView = [(MTAAlarmCollectionViewController *)self noItemsView];
  _titleLabel = [noItemsView _titleLabel];
  [_titleLabel sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
  v6 = v5;
  v8 = v7;

  noItemsView2 = [(MTAAlarmCollectionViewController *)self noItemsView];
  [noItemsView2 frame];
  v11 = v10;
  v13 = v12;

  noItemsView3 = [(MTAAlarmCollectionViewController *)self noItemsView];
  [noItemsView3 setFrame:{v11, v13, v6 + 60.0, v8 + 60.0}];

  collectionView = [(MTAAlarmCollectionViewController *)self collectionView];
  [collectionView center];
  v16 = v15;
  v18 = v17;
  noItemsView4 = [(MTAAlarmCollectionViewController *)self noItemsView];
  [noItemsView4 setCenter:{v16, v18}];
}

- (void)_handleNumberOfItemsDidChange
{
  dataSource = [(MTAAlarmCollectionViewController *)self dataSource];
  numberOfAlarms = [dataSource numberOfAlarms];

  editButtonItem = [(MTAAlarmCollectionViewController *)self editButtonItem];
  v6 = editButtonItem;
  if (numberOfAlarms)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  [editButtonItem setEnabled:numberOfAlarms != 0];

  noItemsView = [(MTAAlarmCollectionViewController *)self noItemsView];
  [noItemsView setAlpha:v7];

  if (!numberOfAlarms)
  {

    [(MTAAlarmCollectionViewController *)self setEditing:0];
  }
}

- (void)showAddViewForAlarm:(id)alarm
{
  alarmCopy = alarm;
  view = [(MTAAlarmCollectionViewController *)self view];
  window = [view window];

  if (window)
  {
    [(MTAAlarmCollectionViewController *)self showAddAlarmViewPopUpWithAlarm:alarmCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005D2EC;
    v7[3] = &unk_1000AE1A0;
    objc_copyWeak(&v9, &location);
    v8 = alarmCopy;
    [(MTAAlarmCollectionViewController *)self setDeferredAddingAlarm:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)showAddAlarmViewPopUpWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  [(MTAAlarmCollectionViewController *)self setEditing:0];
  objc_storeStrong(&self->_alarmToEdit, alarm);
  if (alarmCopy)
  {
    dataSource = [(MTAAlarmCollectionViewController *)self dataSource];
    v6 = [dataSource rowForAlarm:alarmCopy] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  v7 = [[MTAAlarmEditViewController alloc] initWithAlarm:alarmCopy isNewAlarm:v6];
  [(MTAAlarmCollectionViewController *)self setAddEditAlarmController:v7];

  addEditAlarmController = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  [addEditAlarmController setDelegate:self];

  v9 = [MTAAddSheetNavigationController alloc];
  addEditAlarmController2 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  v11 = [(MTAAddSheetNavigationController *)v9 initWithRootViewController:addEditAlarmController2];

  addEditAlarmController3 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  [addEditAlarmController3 preferredContentSize];
  [(MTAAddSheetNavigationController *)v11 setPreferredContentSize:?];

  [(MTAAddSheetNavigationController *)v11 setModalPresentationStyle:7];
  navigationItem = [(MTAAlarmCollectionViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  popoverPresentationController = [(MTAAddSheetNavigationController *)v11 popoverPresentationController];
  [popoverPresentationController setBarButtonItem:rightBarButtonItem];

  popoverPresentationController2 = [(MTAAddSheetNavigationController *)v11 popoverPresentationController];
  [popoverPresentationController2 setDelegate:self];

  [(MTAAlarmCollectionViewController *)self presentViewController:v11 animated:1 completion:0];
  v17 = +[MTAStateStore shared];
  v18 = [MTAStateStoreEvent eventWithType:1];
  [v17 pushEvent:v18];

  v19 = +[MTAStateStore shared];
  if (v6)
  {
    alarmIDString = [MTAStateStoreEvent eventWithType:1];
    [v19 pushEvent:alarmIDString];
  }

  else
  {
    alarmIDString = [alarmCopy alarmIDString];
    v21 = [MTAStateStoreEvent eventWithType:2 identifier:alarmIDString];
    [v19 pushEvent:v21];
  }
}

- (void)showAddViewForAlarmWithID:(id)d
{
  dCopy = d;
  dataSource = [(MTAAlarmCollectionViewController *)self dataSource];
  v6 = [dataSource rowForAlarmWithID:dCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(MTAAlarmCollectionViewController *)self _showAddViewForAlarmAtRow:v6];
  }
}

- (void)_showAddViewForAlarmAtRow:(unint64_t)row
{
  dataSource = [(MTAAlarmCollectionViewController *)self dataSource];
  obj = [dataSource alarmAtRow:row];

  objc_storeStrong(&self->_alarmToEdit, obj);
  v7 = [(NSMutableArray *)self->_sections indexOfObject:&off_1000B19F8];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_100074448(a2, self);
  }

  collectionView = [(MTAAlarmCollectionViewController *)self collectionView];
  v9 = [NSIndexPath indexPathForRow:row inSection:v7];
  v10 = [collectionView cellForItemAtIndexPath:v9];

  v11 = [[MTAAlarmEditViewController alloc] initWithAlarm:obj isNewAlarm:0];
  [(MTAAlarmCollectionViewController *)self setAddEditAlarmController:v11];

  addEditAlarmController = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  [addEditAlarmController setDelegate:self];

  v13 = [MTAAddSheetNavigationController alloc];
  addEditAlarmController2 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  v15 = [(MTAAddSheetNavigationController *)v13 initWithRootViewController:addEditAlarmController2];

  addEditAlarmController3 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  [addEditAlarmController3 preferredContentSize];
  [(MTAAddSheetNavigationController *)v15 setPreferredContentSize:?];

  [(MTAAddSheetNavigationController *)v15 setModalPresentationStyle:7];
  popoverPresentationController = [(MTAAddSheetNavigationController *)v15 popoverPresentationController];
  [popoverPresentationController setSourceView:v10];

  [v10 editingPopoverSourceRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  popoverPresentationController2 = [(MTAAddSheetNavigationController *)v15 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v19, v21, v23, v25}];

  popoverPresentationController3 = [(MTAAddSheetNavigationController *)v15 popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:3];

  popoverPresentationController4 = [(MTAAddSheetNavigationController *)v15 popoverPresentationController];
  [popoverPresentationController4 setDelegate:self];

  [(MTAAlarmCollectionViewController *)self presentViewController:v15 animated:1 completion:0];
}

- (void)handleContentSizeChange:(id)change
{
  self->_cellHeight = -1.0;
  collectionViewLayout = [(MTAAlarmCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (double)cellHeight
{
  result = self->_cellHeight;
  if (result < 0.0)
  {
    +[MTAAlarmCollectionViewCell cellHeight];
    self->_cellHeight = result;
  }

  return result;
}

- (void)alarmEditControllerDidCancel:(id)cancel
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005D9B8;
  v3[3] = &unk_1000AD9F0;
  v3[4] = self;
  [(MTAAlarmCollectionViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)alarmEditController:(id)controller didAddAlarm:(id)alarm
{
  alarmCopy = alarm;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [alarmCopy alarmID];
    *buf = 138543362;
    v14 = alarmID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding alarm %{public}@", buf, 0xCu);
  }

  dataSource = [(MTAAlarmCollectionViewController *)self dataSource];
  v9 = [dataSource addAlarm:alarmCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005DB6C;
  v12[3] = &unk_1000AE858;
  v12[4] = self;
  v10 = [v9 addSuccessBlock:v12];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005DB78;
  v11[3] = &unk_1000AD9F0;
  v11[4] = self;
  [(MTAAlarmCollectionViewController *)self dismissViewControllerAnimated:1 completion:v11];
}

- (void)alarmEditController:(id)controller didEditAlarm:(id)alarm
{
  [(MTAAlarmCollectionViewController *)self _updateAlarm:alarm reload:1 withCompletionBlock:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005DC14;
  v5[3] = &unk_1000AD9F0;
  v5[4] = self;
  [(MTAAlarmCollectionViewController *)self dismissViewControllerAnimated:1 completion:v5];
}

- (void)_updateAlarm:(id)alarm reload:(BOOL)reload withCompletionBlock:(id)block
{
  alarmCopy = alarm;
  blockCopy = block;
  v9 = MTLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [alarmCopy alarmID];
    *buf = 138543362;
    v18 = alarmID;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating alarm %{public}@", buf, 0xCu);
  }

  dataSource = [(MTAAlarmCollectionViewController *)self dataSource];
  v12 = [dataSource updateAlarm:alarmCopy];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005DDD4;
  v15[3] = &unk_1000AE118;
  v15[4] = self;
  v16 = blockCopy;
  v13 = blockCopy;
  v14 = [v12 addSuccessBlock:v15];
}

- (void)alarmEditController:(id)controller didDeleteAlarm:(id)alarm
{
  [(MTAAlarmCollectionViewController *)self _removeAlarm:alarm];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005DE68;
  v5[3] = &unk_1000AD9F0;
  v5[4] = self;
  [(MTAAlarmCollectionViewController *)self dismissViewControllerAnimated:1 completion:v5];
}

- (void)_removeAlarm:(id)alarm
{
  alarmCopy = alarm;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [alarmCopy alarmID];
    *buf = 138543362;
    v12 = alarmID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing alarm %{public}@", buf, 0xCu);
  }

  dataSource = [(MTAAlarmCollectionViewController *)self dataSource];
  v8 = [dataSource removeAlarm:alarmCopy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005DFC4;
  v10[3] = &unk_1000AE858;
  v10[4] = self;
  v9 = [v8 addSuccessBlock:v10];
}

- (void)handleContentSizeTransitionFrom:(id)from
{
  currentAlarmEditController = [from currentAlarmEditController];
  [(MTAAlarmCollectionViewController *)self setAddEditAlarmController:currentAlarmEditController];

  addEditAlarmController = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  [addEditAlarmController setDelegate:self];
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  sections = [(MTAAlarmCollectionViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(MTAAlarmCollectionViewController *)self dataSource:view];
  numberOfAlarms = [v4 numberOfAlarms];

  return numberOfAlarms;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:pathCopy];
  dataSource = [(MTAAlarmCollectionViewController *)self dataSource];
  v9 = [pathCopy row];

  v10 = [dataSource alarmAtRow:v9];

  [v7 refreshUI:v10 animated:0];

  return v7;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setEditing:{-[MTAAlarmCollectionViewController isEditing](self, "isEditing")}];
  [cellCopy setDelegate:self];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = [path row];

  [(MTAAlarmCollectionViewController *)self _showAddViewForAlarmAtRow:v5];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy bounds];
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (v9 != CGSizeZero.width || v10 != height)
  {
    v14 = v9 / 250.0;
    v15 = vcvtms_u32_f32(v14);
    v16 = v9 + -30.0 + (v15 - 1) * -15.0;
    UIFloorToViewScale();
    width = v17;
    v18 = v16 - v17 * v15;
    if (!([pathCopy row] % v15))
    {
      width = width + v18;
    }

    [(MTAAlarmCollectionViewController *)self cellHeight];
    height = v19;
  }

  v20 = width;
  v21 = height;
  result.height = v21;
  result.width = v20;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v5 = 0.0;
  v6 = 15.0;
  v7 = 0.0;
  v8 = 15.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  addEditAlarmController = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  v4 = addEditAlarmController == 0;

  return v4;
}

- (void)_addOrEditControllerDidDismissCommitChanges:(BOOL)changes
{
  if (changes)
  {
    addEditAlarmController = [(MTAAlarmCollectionViewController *)self addEditAlarmController];

    if (!addEditAlarmController)
    {
      NSLog(@"Attempting to dismiss add or edit controller when there isn't one.");
    }

    addEditAlarmController2 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
    [addEditAlarmController2 saveAlarmOnlyIfEdited:1];
  }

  [(MTAAlarmCollectionViewController *)self setAddEditAlarmController:0];
  v7 = +[MTAStateStore shared];
  v6 = [MTAStateStoreEvent eventWithType:6];
  [v7 pushEvent:v6];
}

- (void)deleteCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(MTAAlarmCollectionViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

  [(MTAAlarmCollectionViewController *)self removeAlarmAtIndexPath:v6];
}

- (void)removeAlarmAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MTAAlarmCollectionViewController *)self dataSource];
  v6 = [pathCopy row];

  v7 = [dataSource alarmAtRow:v6];

  [(MTAAlarmCollectionViewController *)self _removeAlarm:v7];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005E59C;
  v8[3] = &unk_1000AD9F0;
  v8[4] = self;
  [(MTAAlarmCollectionViewController *)self dismissViewControllerAnimated:1 completion:v8];
}

- (void)setAlarmEnabled:(BOOL)enabled forCell:(id)cell
{
  enabledCopy = enabled;
  cellCopy = cell;
  collectionView = [(MTAAlarmCollectionViewController *)self collectionView];
  v8 = [collectionView indexPathForCell:cellCopy];

  dataSource = [(MTAAlarmCollectionViewController *)self dataSource];
  v10 = [dataSource alarmAtRow:{objc_msgSend(v8, "row")}];
  v11 = [v10 mutableCopy];

  [v11 setEnabled:enabledCopy];
  v12 = MTLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [v11 alarmID];
    *buf = 138543618;
    v21 = alarmID;
    v22 = 1024;
    v23 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting alarm %{public}@ to enabled: %d", buf, 0x12u);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005E78C;
  v16[3] = &unk_1000AE1C8;
  v17 = v11;
  v18 = cellCopy;
  v19 = enabledCopy;
  v14 = cellCopy;
  v15 = v11;
  [(MTAAlarmCollectionViewController *)self _updateAlarm:v15 reload:1 withCompletionBlock:v16];
}

- (void)dismissAddViewController:(id)controller
{
  v4 = +[UIApplication sharedApplication];
  isSuspended = [v4 isSuspended];

  [(MTAAlarmCollectionViewController *)self dismissViewControllerAnimated:isSuspended ^ 1 completion:&stru_1000AE900];
}

@end