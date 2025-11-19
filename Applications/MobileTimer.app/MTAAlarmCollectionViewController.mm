@interface MTAAlarmCollectionViewController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (MTAAlarmCollectionViewController)initWithAlarmManager:(id)a3 dataSource:(id)a4;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)cellHeight;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_addOrEditControllerDidDismissCommitChanges:(BOOL)a3;
- (void)_handleNumberOfItemsDidChange;
- (void)_layoutNoItemsLabel;
- (void)_reloadUI:(id)a3;
- (void)_removeAlarm:(id)a3;
- (void)_showAddViewForAlarmAtRow:(unint64_t)a3;
- (void)_updateAlarm:(id)a3 reload:(BOOL)a4 withCompletionBlock:(id)a5;
- (void)alarmEditController:(id)a3 didAddAlarm:(id)a4;
- (void)alarmEditController:(id)a3 didDeleteAlarm:(id)a4;
- (void)alarmEditController:(id)a3 didEditAlarm:(id)a4;
- (void)alarmEditControllerDidCancel:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dataSource:(id)a3 didUpdateAlarms:(id)a4;
- (void)dataSourceDidReload:(id)a3;
- (void)deleteCell:(id)a3;
- (void)dismissAddViewController:(id)a3;
- (void)handleContentSizeChange:(id)a3;
- (void)handleContentSizeTransitionFrom:(id)a3;
- (void)reloadState:(id)a3;
- (void)removeAlarmAtIndexPath:(id)a3;
- (void)setAlarmEnabled:(BOOL)a3 forCell:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)showAddAlarmViewPopUpWithAlarm:(id)a3;
- (void)showAddViewForAlarm:(id)a3;
- (void)showAddViewForAlarmWithID:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MTAAlarmCollectionViewController

- (MTAAlarmCollectionViewController)initWithAlarmManager:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v13 = [(MTAAlarmCollectionViewController *)v9 tabBarItem];
    [v13 setImage:v12];

    [(MTAAlarmCollectionViewController *)v9 setAlarmManager:v6];
    [(MTAAlarmCollectionViewController *)v9 setDataSource:v7];
    v14 = [(MTAAlarmCollectionViewController *)v9 dataSource];
    [v14 registerObserver:v9];

    v15 = [(MTAAlarmCollectionViewController *)v9 title];
    v16 = [NSUserActivity mtUserActivityWithActivityType:@"com.apple.clock.alarm" title:v15];
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

  v6 = [(MTAAlarmCollectionViewController *)self noItemsView];
  [v6 setVibrantOptions:0];

  v7 = [(MTAAlarmCollectionViewController *)self view];
  v8 = [(MTAAlarmCollectionViewController *)self noItemsView];
  [v7 addSubview:v8];

  [(MTAAlarmCollectionViewController *)self reloadState];
  v9 = +[UIColor mtui_backgroundColor];
  v10 = [(MTAAlarmCollectionViewController *)self collectionView];
  [v10 setBackgroundColor:v9];

  v11 = [(MTAAlarmCollectionViewController *)self collectionView];
  [v11 setAllowsSelectionDuringEditing:1];

  v12 = [(MTAAlarmCollectionViewController *)self editButtonItem];
  v13 = [(MTAAlarmCollectionViewController *)self navigationItem];
  [v13 setLeftBarButtonItem:v12];

  v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"addAlarm:"];
  v15 = [(MTAAlarmCollectionViewController *)self navigationItem];
  [v15 setRightBarButtonItem:v14];

  v16 = [(MTAAlarmCollectionViewController *)self collectionView];
  [v16 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"Cell"];

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"handleContentSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v18 = [NSMutableArray arrayWithObject:&off_1000B19F8];
  [(MTAAlarmCollectionViewController *)self setSections:v18];
}

- (void)reloadState:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reloading collection view", buf, 2u);
  }

  v6 = [(MTAlarmDataSource *)self->_dataSource reloadAlarms];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005C920;
  v9[3] = &unk_1000AE810;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  v8 = [v6 addCompletionBlock:v9];
}

- (void)_reloadUI:(id)a3
{
  v5 = a3;
  [(MTAAlarmCollectionViewController *)self _handleNumberOfItemsDidChange];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)dataSourceDidReload:(id)a3
{
  [(MTAAlarmCollectionViewController *)self _reloadUI:0];
  v4 = [(MTAAlarmCollectionViewController *)self collectionView];
  [v4 reloadData];

  alarmsLoadedAction = self->_alarmsLoadedAction;
  if (alarmsLoadedAction)
  {
    alarmsLoadedAction[2]();
    v6 = self->_alarmsLoadedAction;
    self->_alarmsLoadedAction = 0;
  }
}

- (void)dataSource:(id)a3 didUpdateAlarms:(id)a4
{
  v5 = a4;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MTAlarm *)self->_alarmToEdit alarmID];
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading UI for alarm: %{public}@", buf, 0x16u);
  }

  if ([(MTAlarm *)self->_alarmToEdit allowsSnooze])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005CB60;
    v8[3] = &unk_1000AE0C8;
    v8[4] = self;
    [v5 enumerateObjectsUsingBlock:v8];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MTAAlarmCollectionViewController;
  [(MTAAlarmCollectionViewController *)&v4 viewWillAppear:a3];
  [(MTAAlarmCollectionViewController *)self reloadState];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MTAAlarmCollectionViewController;
  [(MTAAlarmCollectionViewController *)&v7 viewDidAppear:a3];
  v4 = [(MTAAlarmCollectionViewController *)self userActivity];
  [v4 becomeCurrent];

  v5 = [(MTAAlarmCollectionViewController *)self deferredAddingAlarm];

  if (v5)
  {
    v6 = [(MTAAlarmCollectionViewController *)self deferredAddingAlarm];
    v6[2]();

    [(MTAAlarmCollectionViewController *)self setDeferredAddingAlarm:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = MTAAlarmCollectionViewController;
  v7 = a4;
  [(MTAAlarmCollectionViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005CDC4;
  v8[3] = &unk_1000AD9C8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v20.receiver = self;
  v20.super_class = MTAAlarmCollectionViewController;
  [MTAAlarmCollectionViewController setEditing:"setEditing:animated:" animated:?];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(MTAAlarmCollectionViewController *)self collectionView];
  v8 = [v7 visibleCells];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * i) setEditing:-[MTAAlarmCollectionViewController isEditing](self animated:{"isEditing"), v4}];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  v13 = +[MTAStateStore shared];
  if (v5)
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
  v3 = [(MTAAlarmCollectionViewController *)self noItemsView];
  v4 = [v3 _titleLabel];
  [v4 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
  v6 = v5;
  v8 = v7;

  v9 = [(MTAAlarmCollectionViewController *)self noItemsView];
  [v9 frame];
  v11 = v10;
  v13 = v12;

  v14 = [(MTAAlarmCollectionViewController *)self noItemsView];
  [v14 setFrame:{v11, v13, v6 + 60.0, v8 + 60.0}];

  v20 = [(MTAAlarmCollectionViewController *)self collectionView];
  [v20 center];
  v16 = v15;
  v18 = v17;
  v19 = [(MTAAlarmCollectionViewController *)self noItemsView];
  [v19 setCenter:{v16, v18}];
}

- (void)_handleNumberOfItemsDidChange
{
  v3 = [(MTAAlarmCollectionViewController *)self dataSource];
  v4 = [v3 numberOfAlarms];

  v5 = [(MTAAlarmCollectionViewController *)self editButtonItem];
  v6 = v5;
  if (v4)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  [v5 setEnabled:v4 != 0];

  v8 = [(MTAAlarmCollectionViewController *)self noItemsView];
  [v8 setAlpha:v7];

  if (!v4)
  {

    [(MTAAlarmCollectionViewController *)self setEditing:0];
  }
}

- (void)showAddViewForAlarm:(id)a3
{
  v4 = a3;
  v5 = [(MTAAlarmCollectionViewController *)self view];
  v6 = [v5 window];

  if (v6)
  {
    [(MTAAlarmCollectionViewController *)self showAddAlarmViewPopUpWithAlarm:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005D2EC;
    v7[3] = &unk_1000AE1A0;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [(MTAAlarmCollectionViewController *)self setDeferredAddingAlarm:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)showAddAlarmViewPopUpWithAlarm:(id)a3
{
  v22 = a3;
  [(MTAAlarmCollectionViewController *)self setEditing:0];
  objc_storeStrong(&self->_alarmToEdit, a3);
  if (v22)
  {
    v5 = [(MTAAlarmCollectionViewController *)self dataSource];
    v6 = [v5 rowForAlarm:v22] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 1;
  }

  v7 = [[MTAAlarmEditViewController alloc] initWithAlarm:v22 isNewAlarm:v6];
  [(MTAAlarmCollectionViewController *)self setAddEditAlarmController:v7];

  v8 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  [v8 setDelegate:self];

  v9 = [MTAAddSheetNavigationController alloc];
  v10 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  v11 = [(MTAAddSheetNavigationController *)v9 initWithRootViewController:v10];

  v12 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  [v12 preferredContentSize];
  [(MTAAddSheetNavigationController *)v11 setPreferredContentSize:?];

  [(MTAAddSheetNavigationController *)v11 setModalPresentationStyle:7];
  v13 = [(MTAAlarmCollectionViewController *)self navigationItem];
  v14 = [v13 rightBarButtonItem];
  v15 = [(MTAAddSheetNavigationController *)v11 popoverPresentationController];
  [v15 setBarButtonItem:v14];

  v16 = [(MTAAddSheetNavigationController *)v11 popoverPresentationController];
  [v16 setDelegate:self];

  [(MTAAlarmCollectionViewController *)self presentViewController:v11 animated:1 completion:0];
  v17 = +[MTAStateStore shared];
  v18 = [MTAStateStoreEvent eventWithType:1];
  [v17 pushEvent:v18];

  v19 = +[MTAStateStore shared];
  if (v6)
  {
    v20 = [MTAStateStoreEvent eventWithType:1];
    [v19 pushEvent:v20];
  }

  else
  {
    v20 = [v22 alarmIDString];
    v21 = [MTAStateStoreEvent eventWithType:2 identifier:v20];
    [v19 pushEvent:v21];
  }
}

- (void)showAddViewForAlarmWithID:(id)a3
{
  v4 = a3;
  v5 = [(MTAAlarmCollectionViewController *)self dataSource];
  v6 = [v5 rowForAlarmWithID:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(MTAAlarmCollectionViewController *)self _showAddViewForAlarmAtRow:v6];
  }
}

- (void)_showAddViewForAlarmAtRow:(unint64_t)a3
{
  v6 = [(MTAAlarmCollectionViewController *)self dataSource];
  obj = [v6 alarmAtRow:a3];

  objc_storeStrong(&self->_alarmToEdit, obj);
  v7 = [(NSMutableArray *)self->_sections indexOfObject:&off_1000B19F8];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_100074448(a2, self);
  }

  v8 = [(MTAAlarmCollectionViewController *)self collectionView];
  v9 = [NSIndexPath indexPathForRow:a3 inSection:v7];
  v10 = [v8 cellForItemAtIndexPath:v9];

  v11 = [[MTAAlarmEditViewController alloc] initWithAlarm:obj isNewAlarm:0];
  [(MTAAlarmCollectionViewController *)self setAddEditAlarmController:v11];

  v12 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  [v12 setDelegate:self];

  v13 = [MTAAddSheetNavigationController alloc];
  v14 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  v15 = [(MTAAddSheetNavigationController *)v13 initWithRootViewController:v14];

  v16 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  [v16 preferredContentSize];
  [(MTAAddSheetNavigationController *)v15 setPreferredContentSize:?];

  [(MTAAddSheetNavigationController *)v15 setModalPresentationStyle:7];
  v17 = [(MTAAddSheetNavigationController *)v15 popoverPresentationController];
  [v17 setSourceView:v10];

  [v10 editingPopoverSourceRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(MTAAddSheetNavigationController *)v15 popoverPresentationController];
  [v26 setSourceRect:{v19, v21, v23, v25}];

  v27 = [(MTAAddSheetNavigationController *)v15 popoverPresentationController];
  [v27 setPermittedArrowDirections:3];

  v28 = [(MTAAddSheetNavigationController *)v15 popoverPresentationController];
  [v28 setDelegate:self];

  [(MTAAlarmCollectionViewController *)self presentViewController:v15 animated:1 completion:0];
}

- (void)handleContentSizeChange:(id)a3
{
  self->_cellHeight = -1.0;
  v3 = [(MTAAlarmCollectionViewController *)self collectionViewLayout];
  [v3 invalidateLayout];
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

- (void)alarmEditControllerDidCancel:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005D9B8;
  v3[3] = &unk_1000AD9F0;
  v3[4] = self;
  [(MTAAlarmCollectionViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)alarmEditController:(id)a3 didAddAlarm:(id)a4
{
  v5 = a4;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 alarmID];
    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding alarm %{public}@", buf, 0xCu);
  }

  v8 = [(MTAAlarmCollectionViewController *)self dataSource];
  v9 = [v8 addAlarm:v5];
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

- (void)alarmEditController:(id)a3 didEditAlarm:(id)a4
{
  [(MTAAlarmCollectionViewController *)self _updateAlarm:a4 reload:1 withCompletionBlock:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005DC14;
  v5[3] = &unk_1000AD9F0;
  v5[4] = self;
  [(MTAAlarmCollectionViewController *)self dismissViewControllerAnimated:1 completion:v5];
}

- (void)_updateAlarm:(id)a3 reload:(BOOL)a4 withCompletionBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = MTLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 alarmID];
    *buf = 138543362;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating alarm %{public}@", buf, 0xCu);
  }

  v11 = [(MTAAlarmCollectionViewController *)self dataSource];
  v12 = [v11 updateAlarm:v7];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005DDD4;
  v15[3] = &unk_1000AE118;
  v15[4] = self;
  v16 = v8;
  v13 = v8;
  v14 = [v12 addSuccessBlock:v15];
}

- (void)alarmEditController:(id)a3 didDeleteAlarm:(id)a4
{
  [(MTAAlarmCollectionViewController *)self _removeAlarm:a4];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005DE68;
  v5[3] = &unk_1000AD9F0;
  v5[4] = self;
  [(MTAAlarmCollectionViewController *)self dismissViewControllerAnimated:1 completion:v5];
}

- (void)_removeAlarm:(id)a3
{
  v4 = a3;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 alarmID];
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing alarm %{public}@", buf, 0xCu);
  }

  v7 = [(MTAAlarmCollectionViewController *)self dataSource];
  v8 = [v7 removeAlarm:v4];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005DFC4;
  v10[3] = &unk_1000AE858;
  v10[4] = self;
  v9 = [v8 addSuccessBlock:v10];
}

- (void)handleContentSizeTransitionFrom:(id)a3
{
  v4 = [a3 currentAlarmEditController];
  [(MTAAlarmCollectionViewController *)self setAddEditAlarmController:v4];

  v5 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  [v5 setDelegate:self];
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(MTAAlarmCollectionViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(MTAAlarmCollectionViewController *)self dataSource:a3];
  v5 = [v4 numberOfAlarms];

  return v5;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:v6];
  v8 = [(MTAAlarmCollectionViewController *)self dataSource];
  v9 = [v6 row];

  v10 = [v8 alarmAtRow:v9];

  [v7 refreshUI:v10 animated:0];

  return v7;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a4;
  [v6 setEditing:{-[MTAAlarmCollectionViewController isEditing](self, "isEditing")}];
  [v6 setDelegate:self];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = [a4 row];

  [(MTAAlarmCollectionViewController *)self _showAddViewForAlarmAtRow:v5];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  [v7 bounds];
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
    if (!([v8 row] % v15))
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

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
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

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v3 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
  v4 = v3 == 0;

  return v4;
}

- (void)_addOrEditControllerDidDismissCommitChanges:(BOOL)a3
{
  if (a3)
  {
    v4 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];

    if (!v4)
    {
      NSLog(@"Attempting to dismiss add or edit controller when there isn't one.");
    }

    v5 = [(MTAAlarmCollectionViewController *)self addEditAlarmController];
    [v5 saveAlarmOnlyIfEdited:1];
  }

  [(MTAAlarmCollectionViewController *)self setAddEditAlarmController:0];
  v7 = +[MTAStateStore shared];
  v6 = [MTAStateStoreEvent eventWithType:6];
  [v7 pushEvent:v6];
}

- (void)deleteCell:(id)a3
{
  v4 = a3;
  v5 = [(MTAAlarmCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  [(MTAAlarmCollectionViewController *)self removeAlarmAtIndexPath:v6];
}

- (void)removeAlarmAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MTAAlarmCollectionViewController *)self dataSource];
  v6 = [v4 row];

  v7 = [v5 alarmAtRow:v6];

  [(MTAAlarmCollectionViewController *)self _removeAlarm:v7];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005E59C;
  v8[3] = &unk_1000AD9F0;
  v8[4] = self;
  [(MTAAlarmCollectionViewController *)self dismissViewControllerAnimated:1 completion:v8];
}

- (void)setAlarmEnabled:(BOOL)a3 forCell:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MTAAlarmCollectionViewController *)self collectionView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(MTAAlarmCollectionViewController *)self dataSource];
  v10 = [v9 alarmAtRow:{objc_msgSend(v8, "row")}];
  v11 = [v10 mutableCopy];

  [v11 setEnabled:v4];
  v12 = MTLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 alarmID];
    *buf = 138543618;
    v21 = v13;
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting alarm %{public}@ to enabled: %d", buf, 0x12u);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005E78C;
  v16[3] = &unk_1000AE1C8;
  v17 = v11;
  v18 = v6;
  v19 = v4;
  v14 = v6;
  v15 = v11;
  [(MTAAlarmCollectionViewController *)self _updateAlarm:v15 reload:1 withCompletionBlock:v16];
}

- (void)dismissAddViewController:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 isSuspended];

  [(MTAAlarmCollectionViewController *)self dismissViewControllerAnimated:v5 ^ 1 completion:&stru_1000AE900];
}

@end