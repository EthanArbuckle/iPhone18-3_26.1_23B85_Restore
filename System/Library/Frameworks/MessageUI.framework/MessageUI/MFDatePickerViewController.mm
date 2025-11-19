@interface MFDatePickerViewController
+ (OS_os_log)log;
+ (id)datePickerViewControllerWithType:(int64_t)a3 message:(id)a4;
- (BOOL)_isDate:(id)a3 time:(id)a4 andTimeZone:(id)a5 earlierThanDate:(id)a6;
- (BOOL)_presentInvalidDateAlertIfNecessaryFromSender:(id)a3 withContinueBlock:(id)a4 cancelBlock:(id)a5;
- (MFDatePickerViewController)initWithType:(int64_t)a3 shouldShowDeleteButton:(BOOL)a4 initialDate:(id)a5 shouldDismissCommit:(BOOL)a6;
- (MFDatePickerViewControllerDelegate)delegate;
- (id)_itemOfType:(unint64_t)a3;
- (id)_itemWithIdentifier:(id)a3;
- (id)_selectedDateForTimeWheelFromDate:(id)a3;
- (id)_selectedTimeForTimeWheelFromDate:(id)a3;
- (id)createCollectionViewLayout;
- (void)_cancel:(id)a3;
- (void)_datePicked:(id)a3;
- (void)_reloadDataSourceAnimated:(void *)a3 update:;
- (void)_reloadDataSourceAnimated:(void *)a3 update:(void *)a4 completion:;
- (void)calendarCollectionViewCell:(id)a3 didChangeDate:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)datePickerTimeHeaderCollectionViewCell:(id)a3 showTime:(BOOL)a4;
- (void)sendLaterHeaderCollectionViewCellDateTapped:(id)a3;
- (void)sendLaterHeaderCollectionViewCellTimeTapped:(id)a3;
- (void)setUpDataSourceForCollectionView:(id)a3;
- (void)setUpItemsProvider;
- (void)setUpNavigationBar;
- (void)timeCollectionViewCell:(id)a3 didChangeDate:(id)a4;
- (void)timeZonePickerViewController:(id)a3 didSelectCity:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MFDatePickerViewController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MFDatePickerViewController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_1 != -1)
  {
    dispatch_once(&log_onceToken_1, block);
  }

  v2 = log_log_1;

  return v2;
}

void __33__MFDatePickerViewController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_1;
  log_log_1 = v1;
}

+ (id)datePickerViewControllerWithType:(int64_t)a3 message:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 1)
  {
    v8 = [v5 readLater];
    v7 = [v8 date];
  }

  else if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 sendLaterDate];
  }

  v9 = [[MFDatePickerViewController alloc] initWithType:a3 shouldShowDeleteButton:1 initialDate:v7];
  [(MFDatePickerViewController *)v9 setMessage:v6];

  return v9;
}

- (MFDatePickerViewController)initWithType:(int64_t)a3 shouldShowDeleteButton:(BOOL)a4 initialDate:(id)a5 shouldDismissCommit:(BOOL)a6
{
  v10 = a5;
  v29.receiver = self;
  v29.super_class = MFDatePickerViewController;
  v11 = [(MFDatePickerViewController *)&v29 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    v11->_shouldShowDeleteButton = a4;
    v11->_shouldInvokeDelegate = a6;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create("com.apple.mail.datepicker.update", v14);
    updateQueue = v12->_updateQueue;
    v12->_updateQueue = v15;

    v17 = objc_alloc(MEMORY[0x1E699B7F0]);
    v18 = objc_alloc(MEMORY[0x1E695DF70]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = [v18 initWithObjects:{v19, v20, 0}];
    v22 = [v17 initWithObject:v21];
    items = v12->_items;
    v12->_items = v22;

    if (v10 && ![v10 ef_isEarlierThanNow])
    {
      v27 = v10;
      initialDate = v12->_initialDate;
      v12->_initialDate = v27;
      v25 = 1;
    }

    else
    {
      v24 = [MEMORY[0x1E695DF00] now];
      v25 = 0;
      initialDate = v12->_initialDate;
      v12->_initialDate = v24;
    }

    v12->_timeSwitchEnabled = v25;
  }

  return v12;
}

- (id)_selectedDateForTimeWheelFromDate:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF00] now];
  if ([v4 ef_isDateNextDayOrLater:v3])
  {
    v5 = [MEMORY[0x1E695DF00] distantPast];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (id)_selectedTimeForTimeWheelFromDate:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DF00];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [MEMORY[0x1E695DFE8] localTimeZone];
  v7 = [v4 ef_localCombinedDate:v5 time:v3 timeZone:v6];

  return v7;
}

- (void)setUpItemsProvider
{
  v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [(MFDatePickerViewController *)self initialDate];
  v4 = [MEMORY[0x1E695DFE8] localTimeZone];
  v5 = [MFTimezoneHelper cityForTimeZone:v4];

  v44 = v5;
  v6 = [MFDatePickerItemIdentifier alloc];
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [(MFDatePickerItemIdentifier *)v6 initWithIdentifier:v7 type:0];

  v42 = v8;
  v41 = [[MFDatePickerItem alloc] initWithIdentifier:v8 selectedDate:v3 selectedTime:v3 selectedCity:v5 datePickerComponentType:0];
  [v45 setObject:v41 forKeyedSubscript:v8];
  v9 = [MFDatePickerItemIdentifier alloc];
  v10 = [MEMORY[0x1E696AFB0] UUID];
  v11 = [(MFDatePickerItemIdentifier *)v9 initWithIdentifier:v10 type:1];

  v40 = v11;
  v39 = [[MFDatePickerItem alloc] initWithIdentifier:v11 selectedDate:v3 selectedTime:0 selectedCity:0 datePickerComponentType:0];
  [v45 setObject:v39 forKeyedSubscript:v11];
  v12 = [MFDatePickerItemIdentifier alloc];
  v13 = [MEMORY[0x1E696AFB0] UUID];
  v43 = [(MFDatePickerItemIdentifier *)v12 initWithIdentifier:v13 type:2];

  v14 = [MFDatePickerItem alloc];
  v15 = [(MFDatePickerViewController *)self _selectedDateForTimeWheelFromDate:v3];
  v16 = [(MFDatePickerViewController *)self _selectedTimeForTimeWheelFromDate:v3];
  v17 = [(MFDatePickerItem *)v14 initWithIdentifier:v43 selectedDate:v15 selectedTime:v16 selectedCity:v44 datePickerComponentType:0];

  v38 = v17;
  [v45 setObject:v17 forKeyedSubscript:v43];
  v18 = [MFDatePickerItemIdentifier alloc];
  v19 = [MEMORY[0x1E696AFB0] UUID];
  v20 = [(MFDatePickerItemIdentifier *)v18 initWithIdentifier:v19 type:5];

  v37 = v20;
  v36 = [[MFDatePickerItem alloc] initWithIdentifier:v20 selectedDate:0 selectedTime:0 selectedCity:v44 datePickerComponentType:0];
  [v45 setObject:v36 forKeyedSubscript:v20];
  v21 = [MFDatePickerItemIdentifier alloc];
  v22 = [MEMORY[0x1E696AFB0] UUID];
  v23 = [(MFDatePickerItemIdentifier *)v21 initWithIdentifier:v22 type:3];

  v24 = [[MFDatePickerItem alloc] initWithIdentifier:v23 selectedDate:v3 selectedTime:0 selectedCity:0 datePickerComponentType:0];
  [v45 setObject:v24 forKeyedSubscript:v23];
  v25 = [MFDatePickerItemIdentifier alloc];
  v26 = [MEMORY[0x1E696AFB0] UUID];
  v27 = [(MFDatePickerItemIdentifier *)v25 initWithIdentifier:v26 type:4];

  v28 = [[MFDatePickerItem alloc] initWithIdentifier:v27 selectedDate:0 selectedTime:v3 selectedCity:0 datePickerComponentType:0 timeSwitchEnabled:[(MFDatePickerViewController *)self timeSwitchEnabled]];
  [v45 setObject:v28 forKeyedSubscript:v27];
  v29 = [MFDatePickerItemIdentifier alloc];
  v30 = [MEMORY[0x1E696AFB0] UUID];
  v31 = [(MFDatePickerItemIdentifier *)v29 initWithIdentifier:v30 type:6];

  v32 = [[MFDatePickerItem alloc] initWithIdentifier:v31 selectedDate:0 selectedTime:0 selectedCity:0 datePickerComponentType:0];
  [v45 setObject:v32 forKeyedSubscript:v31];
  v33 = objc_alloc(MEMORY[0x1E699B7F0]);
  v34 = [v45 copy];
  v35 = [v33 initWithObject:v34];
  [(MFDatePickerViewController *)self setAllItems:v35];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = MFDatePickerViewController;
  [(MFDatePickerViewController *)&v10 viewDidLoad];
  [(MFDatePickerViewController *)self setUpItemsProvider];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v4 = [(MFDatePickerViewController *)self createCollectionViewLayout];
  v5 = [v3 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setDelegate:self];
  [v5 setShowsVerticalScrollIndicator:0];
  [(MFDatePickerViewController *)self setUpDataSourceForCollectionView:v5];
  [(MFDatePickerViewController *)self setCollectionView:v5];
  v6 = [(MFDatePickerViewController *)self view];
  [v6 addSubview:v5];

  v7 = [(MFDatePickerViewController *)self collectionView];
  v8 = [(MFDatePickerViewController *)self view];
  [v7 mf_pinToView:v8 usingLayoutMargins:0];

  [(MFDatePickerViewController *)self setUpNavigationBar];
  v9 = [(MFDatePickerViewController *)self navigationItem];
  [v9 setHidesBackButton:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = MFDatePickerViewController;
  [(MFDatePickerViewController *)&v17 viewDidDisappear:a3];
  v4 = [(MFDatePickerViewController *)self delegate];
  if (![(MFDatePickerViewController *)self shouldInvokeDelegate])
  {
    goto LABEL_10;
  }

  v5 = [(MFDatePickerViewController *)self initialDate];
  v6 = [(MFDatePickerViewController *)self type];
  if (!v6)
  {
    v7 = [(MFDatePickerViewController *)self _itemOfType:0];
    v13 = MEMORY[0x1E695DF00];
    v8 = [v7 selectedDate];
    v10 = [v7 selectedTime];
    v11 = [v7 selectedCity];
    v12 = [v11 timeZone];
    v14 = [v13 ef_localCombinedDate:v8 time:v10 timeZone:v12];

    v5 = v14;
    goto LABEL_6;
  }

  if (v6 == 1)
  {
    v7 = [(MFDatePickerViewController *)self _itemOfType:3];
    v8 = [(MFDatePickerViewController *)self _itemOfType:4];
    v9 = MEMORY[0x1E695DF00];
    v10 = [v7 selectedDate];
    v11 = [v8 selectedTime];
    [v9 ef_localCombinedDate:v10 time:v11 timeZone:0];
    v5 = v12 = v5;
LABEL_6:
  }

  v15 = [(MFDatePickerViewController *)self initialDate];
  v16 = [v5 isEqualToDate:v15];

  if ((v16 & 1) == 0)
  {
    [v4 datePickerViewController:self didSelectDate:v5];
  }

LABEL_10:
  if (objc_opt_respondsToSelector())
  {
    [v4 datePickerViewControllerDidDismiss:self];
  }
}

- (void)setUpNavigationBar
{
  v6 = [(MFDatePickerViewController *)self navigationItem];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancel_];
  [v6 setLeftBarButtonItem:v3];

  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__datePicked_];
  [v6 setRightBarButtonItem:v4];

  if ([(MFDatePickerViewController *)self type]<= 1)
  {
    v5 = _EFLocalizedString();
    [v6 setTitle:v5];
  }
}

- (id)createCollectionViewLayout
{
  v2 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  v3 = objc_alloc(MEMORY[0x1E69DC808]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MFDatePickerViewController_createCollectionViewLayout__block_invoke;
  v7[3] = &unk_1E806DD58;
  v4 = v2;
  v8 = v4;
  v5 = [v3 initWithSectionProvider:v7];

  return v5;
}

id __56__MFDatePickerViewController_createCollectionViewLayout__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E6995580] sectionWithListConfiguration:*(a1 + 32) layoutEnvironment:a3];
  if (!a2)
  {
    v5 = MEMORY[0x1E6995588];
    v6 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v7 = [MEMORY[0x1E6995558] estimatedDimension:44.0];
    v8 = [v5 sizeWithWidthDimension:v6 heightDimension:v7];

    v9 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v8 elementKind:*MEMORY[0x1E69DDC08] alignment:1];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v4 setBoundarySupplementaryItems:v10];
  }

  return v4;
}

- (void)setUpDataSourceForCollectionView:(id)a3
{
  v103[1] = *MEMORY[0x1E69E9840];
  v63 = a3;
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69DC870];
  v5 = objc_opt_class();
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke;
  v96[3] = &unk_1E806DD80;
  objc_copyWeak(&v97, &location);
  v61 = [v4 registrationWithSupplementaryClass:v5 elementKind:*MEMORY[0x1E69DDC08] configurationHandler:v96];
  v6 = MEMORY[0x1E69DC800];
  v7 = objc_opt_class();
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_2;
  v94[3] = &unk_1E806DDA8;
  objc_copyWeak(&v95, &location);
  v62 = [v6 registrationWithCellClass:v7 configurationHandler:v94];
  v8 = MEMORY[0x1E69DC800];
  v9 = objc_opt_class();
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_3;
  v92[3] = &unk_1E806DDD0;
  objc_copyWeak(&v93, &location);
  v60 = [v8 registrationWithCellClass:v9 configurationHandler:v92];
  v10 = MEMORY[0x1E69DC800];
  v11 = objc_opt_class();
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_4;
  v90[3] = &unk_1E806DDF8;
  objc_copyWeak(&v91, &location);
  v59 = [v10 registrationWithCellClass:v11 configurationHandler:v90];
  v58 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_15];
  v57 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_60];
  v12 = MEMORY[0x1E69DC800];
  v13 = objc_opt_class();
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_7;
  v88[3] = &unk_1E806DE60;
  objc_copyWeak(&v89, &location);
  v56 = [v12 registrationWithCellClass:v13 configurationHandler:v88];
  v14 = MEMORY[0x1E69DC800];
  v15 = objc_opt_class();
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_8;
  v87[3] = &unk_1E806DE88;
  v87[4] = self;
  v55 = [v14 registrationWithCellClass:v15 configurationHandler:v87];
  v16 = objc_alloc(MEMORY[0x1E69DC820]);
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_9;
  v78[3] = &unk_1E806DEB0;
  objc_copyWeak(&v86, &location);
  v50 = v59;
  v79 = v50;
  v48 = v62;
  v80 = v48;
  v49 = v60;
  v81 = v49;
  v51 = v58;
  v82 = v51;
  v53 = v56;
  v83 = v53;
  v54 = v55;
  v84 = v54;
  v52 = v57;
  v85 = v52;
  v17 = [v16 initWithCollectionView:v63 cellProvider:v78];
  v18 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v103[0] = &unk_1F3D16098;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:1];
  [v18 appendSectionsWithIdentifiers:v19];

  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_10;
  v76[3] = &unk_1E806DED8;
  v47 = v61;
  v77 = v47;
  [v17 setSupplementaryViewProvider:v76];
  v20 = [(MFDatePickerViewController *)self type];
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }

    v46 = [(MFDatePickerViewController *)self _itemOfType:3];
    v45 = [(MFDatePickerViewController *)self _itemOfType:1];
    v21 = [(MFDatePickerViewController *)self _itemOfType:4];
    v22 = [(MFDatePickerViewController *)self items];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_12;
    v69[3] = &unk_1E806DF28;
    v23 = v46;
    v70 = v23;
    v24 = v45;
    v71 = v24;
    v25 = v21;
    v72 = v25;
    [v22 performWhileLocked:v69];

    v26 = [v23 identifier];
    v101[0] = v26;
    v27 = [v24 identifier];
    v101[1] = v27;
    v28 = [v25 identifier];
    v101[2] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:3];
    [v18 appendItemsWithIdentifiers:v29 intoSectionWithIdentifier:&unk_1F3D16098];
  }

  else
  {
    v30 = [(MFDatePickerViewController *)self _itemOfType:0];
    v31 = [(MFDatePickerViewController *)self _itemOfType:1];
    v32 = [(MFDatePickerViewController *)self items];
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_11;
    v73[3] = &unk_1E806DF00;
    v23 = v30;
    v74 = v23;
    v24 = v31;
    v75 = v24;
    [v32 performWhileLocked:v73];

    v33 = [v23 identifier];
    v102[0] = v33;
    v34 = [v24 identifier];
    v102[1] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
    [v18 appendItemsWithIdentifiers:v35 intoSectionWithIdentifier:&unk_1F3D16098];

    v25 = v74;
  }

LABEL_6:
  if ([(MFDatePickerViewController *)self shouldShowDeleteButton])
  {
    v36 = [(MFDatePickerViewController *)self _itemOfType:6];
    v37 = [(MFDatePickerViewController *)self items];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_13;
    v67[3] = &unk_1E806DF50;
    v38 = v36;
    v68 = v38;
    [v37 performWhileLocked:v67];

    v100 = &unk_1F3D160B0;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
    [v18 appendSectionsWithIdentifiers:v39];

    v40 = [v38 identifier];
    v99 = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
    [v18 appendItemsWithIdentifiers:v41 intoSectionWithIdentifier:&unk_1F3D160B0];
  }

  [(MFDatePickerViewController *)self setDataSource:v17];
  [v63 setDataSource:v17];
  v42 = [(MFDatePickerViewController *)self updateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_14;
  block[3] = &unk_1E806C520;
  v65 = v17;
  v66 = v18;
  v43 = v18;
  v44 = v17;
  dispatch_sync(v42, block);

  objc_destroyWeak(&v86);
  objc_destroyWeak(&v89);

  objc_destroyWeak(&v91);
  objc_destroyWeak(&v93);

  objc_destroyWeak(&v95);
  objc_destroyWeak(&v97);
  objc_destroyWeak(&location);
}

void __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained type] <= 1)
  {
    v5 = _EFLocalizedString();
    v6 = [v7 label];
    [v6 setText:v5];
  }
}

void __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v9 setDelegate:WeakRetained];
  v8 = [v6 selectedDate];
  [v9 updateCalendarDate:v8];
}

void __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v15 setDelegate:WeakRetained];
  v8 = MEMORY[0x1E695DF00];
  v9 = [v6 selectedDate];
  v10 = [v6 selectedTime];
  v11 = [v6 selectedCity];
  v12 = [v11 timeZone];
  v13 = [v8 ef_localCombinedDate:v9 time:v10 timeZone:v12];
  [v15 setMinimumDate:v13];

  v14 = [v6 selectedTime];
  [v15 setDate:v14];
}

void __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = MEMORY[0x1E695DF00];
  v9 = [v6 selectedDate];
  v10 = [v6 selectedTime];
  v11 = [v6 selectedCity];
  v12 = [v11 timeZone];
  v13 = [v8 ef_localCombinedDate:v9 time:v10 timeZone:v12];

  v14 = [v6 selectedCity];
  v15 = [v14 timeZone];
  [v16 updateWithDate:v13 timeZone:v15 isInvalid:{objc_msgSend(v6, "isInvalid")}];

  if ([v6 datePickerComponentType] == 1)
  {
    [v16 updateActiveComponent:{objc_msgSend(v6, "datePickerComponentType")}];
  }

  [v16 setDelegate:WeakRetained];
}

void __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v5 = [a4 selectedCity];
  v6 = [v5 displayName];
  [v7 setCurrentCityName:v6];
}

void __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v5 = [a4 selectedDate];
  [v6 updateSecondaryTextWithDate:v5];
}

void __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v9 setDelegate:WeakRetained];
  v8 = [v6 selectedTime];
  [v9 updateSecondaryTextWithTime:v8 timeSwitchEnabled:{objc_msgSend(v6, "timeSwitchEnabled")}];
}

void __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_8(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 defaultContentConfiguration];
  if ([*(a1 + 32) type] <= 1)
  {
    v4 = _EFLocalizedString();
    [v3 setText:v4];
  }

  v5 = [MEMORY[0x1E69DC888] systemRedColor];
  v6 = [v3 textProperties];
  [v6 setColor:v5];

  v7 = [v3 textProperties];
  [v7 setAlignment:1];

  [v9 setContentConfiguration:v3];
  v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v9 setBackgroundColor:v8];
}

id __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v12 = [WeakRetained _itemWithIdentifier:v10];
  v13 = [v10 type];
  if (v13 < 7)
  {
    v4 = [v8 dequeueConfiguredReusableCellWithRegistration:*(a1 + qword_1BE9857F8[v13]) forIndexPath:v9 item:v12];
  }

  return v4;
}

id __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + 32) forIndexPath:?];

  return v2;
}

void __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_11(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:{objc_msgSend(&unk_1F3D16098, "integerValue")}];
  [v3 addObject:*(a1 + 32)];
  [v3 addObject:*(a1 + 40)];
}

void __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_12(void *a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:{objc_msgSend(&unk_1F3D16098, "integerValue")}];
  [v3 addObject:a1[4]];
  [v3 addObject:a1[5]];
  [v3 addObject:a1[6]];
}

void __63__MFDatePickerViewController_setUpDataSourceForCollectionView___block_invoke_13(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:{objc_msgSend(&unk_1F3D160B0, "integerValue")}];
  [v3 addObject:*(a1 + 32)];
}

- (void)_reloadDataSourceAnimated:(void *)a3 update:
{
  v5 = a3;
  if (a1)
  {
    [(MFDatePickerViewController *)a1 _reloadDataSourceAnimated:a2 update:v5 completion:0];
  }
}

- (void)_reloadDataSourceAnimated:(void *)a3 update:(void *)a4 completion:
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = [a1 updateQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__MFDatePickerViewController__reloadDataSourceAnimated_update_completion___block_invoke;
    v10[3] = &unk_1E806DF78;
    v10[4] = a1;
    v11 = v7;
    v13 = a2;
    v12 = v8;
    dispatch_async(v9, v10);
  }
}

void __74__MFDatePickerViewController__reloadDataSourceAnimated_update_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 snapshot];
  (*(*(a1 + 40) + 16))();
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__MFDatePickerViewController__reloadDataSourceAnimated_update_completion___block_invoke_2;
  v5[3] = &unk_1E806D728;
  v6 = *(a1 + 48);
  [v2 applySnapshot:v3 animatingDifferences:v4 completion:v5];
}

uint64_t __74__MFDatePickerViewController__reloadDataSourceAnimated_update_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__4;
  v28 = __Block_byref_object_dispose__4;
  v29 = 0;
  v8 = [(MFDatePickerViewController *)self items];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __70__MFDatePickerViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v21 = &unk_1E806DFA0;
  v23 = &v24;
  v9 = v7;
  v22 = v9;
  [v8 performWhileLocked:&v18];

  v10 = [v25[5] identifier];
  v11 = [v10 type];

  if (v11 == 5)
  {
    v12 = [MFTimeZonePickerViewController alloc];
    v13 = [v25[5] selectedCity];
    v14 = [(MFTimeZonePickerViewController *)v12 initWithCity:v13];

    [(MFTimeZonePickerViewController *)v14 setDelegate:self];
    v15 = [(MFDatePickerViewController *)self navigationController];
    [v15 pushViewController:v14 animated:1];

    [v6 deselectItemAtIndexPath:v9 animated:1];
  }

  else
  {
    v16 = [v25[5] identifier];
    v17 = [v16 type];

    if (v17 != 6)
    {
      [v6 deselectItemAtIndexPath:v9 animated:1];
      goto LABEL_7;
    }

    v14 = [(MFDatePickerViewController *)self delegate];
    [(MFDatePickerViewController *)self dismissViewControllerAnimated:1 completion:0];
    [(MFTimeZonePickerViewController *)v14 datePickerViewControllerDidDeleteDate:self];
  }

LABEL_7:
  _Block_object_dispose(&v24, 8);
}

void __70__MFDatePickerViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "section")}];
  v4 = [v3 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "item")}];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)_datePicked:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __42__MFDatePickerViewController__datePicked___block_invoke;
  v9 = &unk_1E806DB80;
  objc_copyWeak(&v10, &location);
  v5 = _Block_copy(&v6);
  if (![(MFDatePickerViewController *)self _presentInvalidDateAlertIfNecessaryFromSender:v4 withContinueBlock:v5 cancelBlock:0, v6, v7, v8, v9])
  {
    v5[2](v5);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __42__MFDatePickerViewController__datePicked___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setShouldInvokeDelegate:1];
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_cancel:(id)a3
{
  [(MFDatePickerViewController *)self setShouldInvokeDelegate:0];

  [(MFDatePickerViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)_itemOfType:(unint64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v4 = [(MFDatePickerViewController *)self allItems];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MFDatePickerViewController__itemOfType___block_invoke;
  v7[3] = &unk_1E806DFF0;
  v7[4] = &v8;
  v7[5] = a3;
  [v4 performWhileLocked:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __42__MFDatePickerViewController__itemOfType___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__MFDatePickerViewController__itemOfType___block_invoke_2;
  v4[3] = &unk_1E806DFC8;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v4[5] = v2;
  return [a2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __42__MFDatePickerViewController__itemOfType___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 type] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)_itemWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v5 = [(MFDatePickerViewController *)self allItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__MFDatePickerViewController__itemWithIdentifier___block_invoke;
  v9[3] = &unk_1E806E018;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 performWhileLocked:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__MFDatePickerViewController__itemWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)sendLaterHeaderCollectionViewCellDateTapped:(id)a3
{
  [a3 updateActiveComponent:0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__MFDatePickerViewController_sendLaterHeaderCollectionViewCellDateTapped___block_invoke;
  v4[3] = &unk_1E806E040;
  v4[4] = self;
  [(MFDatePickerViewController *)self _reloadDataSourceAnimated:v4 update:?];
}

void __74__MFDatePickerViewController_sendLaterHeaderCollectionViewCellDateTapped___block_invoke(uint64_t a1, void *a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _itemOfType:2];
  v5 = [*(a1 + 32) _itemOfType:{5, v4}];
  v6 = [*(a1 + 32) _itemOfType:1];
  v7 = [*(a1 + 32) items];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__MFDatePickerViewController_sendLaterHeaderCollectionViewCellDateTapped___block_invoke_2;
  v16[3] = &unk_1E806DF28;
  v8 = v4;
  v17 = v8;
  v9 = v5;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  [v7 performWhileLocked:v16];

  v11 = [v8 identifier];
  v21[0] = v11;
  v12 = [v9 identifier];
  v21[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v3 deleteItemsWithIdentifiers:v13];

  v14 = [v10 identifier];
  v20 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  [v3 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:&unk_1F3D16098];
}

void __74__MFDatePickerViewController_sendLaterHeaderCollectionViewCellDateTapped___block_invoke_2(void *a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:{objc_msgSend(&unk_1F3D16098, "integerValue")}];
  [v3 removeObject:a1[4]];
  [v3 removeObject:a1[5]];
  [v3 addObject:a1[6]];
}

- (void)sendLaterHeaderCollectionViewCellTimeTapped:(id)a3
{
  [a3 updateActiveComponent:1];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__MFDatePickerViewController_sendLaterHeaderCollectionViewCellTimeTapped___block_invoke;
  v4[3] = &unk_1E806E040;
  v4[4] = self;
  [(MFDatePickerViewController *)self _reloadDataSourceAnimated:v4 update:?];
}

void __74__MFDatePickerViewController_sendLaterHeaderCollectionViewCellTimeTapped___block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _itemOfType:2];
  v5 = [*(a1 + 32) _itemOfType:5];
  v6 = [*(a1 + 32) _itemOfType:1];
  v7 = [*(a1 + 32) items];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__MFDatePickerViewController_sendLaterHeaderCollectionViewCellTimeTapped___block_invoke_2;
  v16[3] = &unk_1E806DF28;
  v8 = v6;
  v17 = v8;
  v9 = v4;
  v18 = v9;
  v10 = v5;
  v19 = v10;
  [v7 performWhileLocked:v16];

  v11 = [v8 identifier];
  v21[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [v3 deleteItemsWithIdentifiers:v12];

  v13 = [v9 identifier];
  v20[0] = v13;
  v14 = [v10 identifier];
  v20[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v3 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:&unk_1F3D16098];
}

void __74__MFDatePickerViewController_sendLaterHeaderCollectionViewCellTimeTapped___block_invoke_2(void *a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:{objc_msgSend(&unk_1F3D16098, "integerValue")}];
  [v3 removeObject:a1[4]];
  [v3 addObject:a1[5]];
  [v3 addObject:a1[6]];
}

- (void)calendarCollectionViewCell:(id)a3 didChangeDate:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__MFDatePickerViewController_calendarCollectionViewCell_didChangeDate___block_invoke;
  v7[3] = &unk_1E806E068;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(MFDatePickerViewController *)self _reloadDataSourceAnimated:v7 update:?];
}

void __71__MFDatePickerViewController_calendarCollectionViewCell_didChangeDate___block_invoke(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _itemOfType:2];
  v5 = [*(a1 + 32) _selectedDateForTimeWheelFromDate:*(a1 + 40)];
  [v4 setSelectedDate:v5];

  v6 = [v3 itemIdentifiers];
  v7 = [v4 identifier];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = [v4 identifier];
    v31[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    [v3 reconfigureItemsWithIdentifiers:v10];
  }

  v11 = [MEMORY[0x1E695DF00] now];
  if ([v11 ef_isLaterThanDate:*(a1 + 40)])
  {
    [v4 setSelectedTime:v11];
  }

  v12 = [*(a1 + 32) type];
  if (v12 == 1)
  {
    v13 = [*(a1 + 32) _itemOfType:3];
    [v13 setSelectedDate:*(a1 + 40)];
    v22 = [*(a1 + 32) _itemOfType:4];
    v24 = [v4 selectedTime];
    [v22 setSelectedTime:v24];

    v25 = [v22 identifier];
    v29 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [v3 reconfigureItemsWithIdentifiers:v26];

    v23 = [v13 identifier];
    v28 = v23;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [v3 reconfigureItemsWithIdentifiers:v27];

    goto LABEL_9;
  }

  if (!v12)
  {
    v13 = [*(a1 + 32) _itemOfType:0];
    [v13 setSelectedDate:*(a1 + 40)];
    v14 = [v4 selectedTime];
    [v13 setSelectedTime:v14];

    v15 = *(a1 + 32);
    v16 = [v13 selectedDate];
    v17 = [v13 selectedTime];
    v18 = [v13 selectedCity];
    v19 = [v18 timeZone];
    v20 = [MEMORY[0x1E695DF00] now];
    v21 = [v15 _isDate:v16 time:v17 andTimeZone:v19 earlierThanDate:v20];

    [v13 setIsInvalid:v21];
    v22 = [v13 identifier];
    v30 = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [v3 reconfigureItemsWithIdentifiers:v23];
LABEL_9:
  }
}

- (void)timeCollectionViewCell:(id)a3 didChangeDate:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MFDatePickerViewController_timeCollectionViewCell_didChangeDate___block_invoke;
  v7[3] = &unk_1E806E068;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(MFDatePickerViewController *)self _reloadDataSourceAnimated:v7 update:?];
}

void __67__MFDatePickerViewController_timeCollectionViewCell_didChangeDate___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _itemOfType:2];
  [v4 setSelectedTime:*(a1 + 40)];
  v5 = [*(a1 + 32) type];
  if (!v5)
  {
    v6 = [*(a1 + 32) _itemOfType:0];
    [v6 setSelectedTime:*(a1 + 40)];
    v9 = *(a1 + 32);
    v10 = [v6 selectedDate];
    v11 = [v6 selectedTime];
    v12 = [v6 selectedCity];
    v13 = [v12 timeZone];
    v14 = [MEMORY[0x1E695DF00] now];
    v15 = [v9 _isDate:v10 time:v11 andTimeZone:v13 earlierThanDate:v14];

    [v6 setIsInvalid:v15];
    v7 = [v6 identifier];
    v17[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v3 reconfigureItemsWithIdentifiers:v8];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = [*(a1 + 32) _itemOfType:4];
    [v6 setSelectedTime:*(a1 + 40)];
    v7 = [v6 identifier];
    v16 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [v3 reconfigureItemsWithIdentifiers:v8];
LABEL_5:
  }
}

- (void)datePickerTimeHeaderCollectionViewCell:(id)a3 showTime:(BOOL)a4
{
  v4 = a4;
  v6 = [(MFDatePickerViewController *)self _itemOfType:4];
  [v6 setTimeSwitchEnabled:v4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__MFDatePickerViewController_datePickerTimeHeaderCollectionViewCell_showTime___block_invoke;
  v8[3] = &unk_1E806E090;
  v8[4] = self;
  v10 = v4;
  v7 = v6;
  v9 = v7;
  [(MFDatePickerViewController *)self _reloadDataSourceAnimated:v8 update:?];
}

void __78__MFDatePickerViewController_datePickerTimeHeaderCollectionViewCell_showTime___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _itemOfType:2];
  v5 = v4;
  if (*(a1 + 48) == 1)
  {
    v6 = [v4 identifier];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v3 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:&unk_1F3D16098];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] ef_tomorrowMorning];
    [*(a1 + 40) setSelectedTime:v8];

    v6 = [v5 identifier];
    v9 = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    [v3 deleteItemsWithIdentifiers:v7];
  }
}

- (void)timeZonePickerViewController:(id)a3 didSelectCity:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__MFDatePickerViewController_timeZonePickerViewController_didSelectCity___block_invoke;
  v7[3] = &unk_1E806E068;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(MFDatePickerViewController *)self _reloadDataSourceAnimated:v7 update:?];
}

void __73__MFDatePickerViewController_timeZonePickerViewController_didSelectCity___block_invoke(uint64_t a1, void *a2)
{
  v18[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _itemOfType:0];
  [v4 setSelectedCity:*(a1 + 40)];
  [v4 setDatePickerComponentType:1];
  v5 = [*(a1 + 32) _itemOfType:5];
  [v5 setSelectedCity:*(a1 + 40)];
  v6 = [*(a1 + 32) _itemOfType:2];
  [v6 setSelectedCity:*(a1 + 40)];
  if (![*(a1 + 32) type])
  {
    v7 = *(a1 + 32);
    v8 = [v4 selectedDate];
    v9 = [v4 selectedTime];
    v10 = [v4 selectedCity];
    v11 = [v10 timeZone];
    v12 = [MEMORY[0x1E695DF00] now];
    v13 = [v7 _isDate:v8 time:v9 andTimeZone:v11 earlierThanDate:v12];

    [v4 setIsInvalid:v13];
  }

  v14 = [v5 identifier];
  v15 = [v4 identifier];
  v18[1] = v15;
  v16 = [v6 identifier];
  v18[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  [v3 reconfigureItemsWithIdentifiers:v17];
}

- (BOOL)_isDate:(id)a3 time:(id)a4 andTimeZone:(id)a5 earlierThanDate:(id)a6
{
  v9 = a6;
  v10 = [MEMORY[0x1E695DF00] ef_localCombinedDate:a3 time:a4 timeZone:a5];
  LOBYTE(a4) = [v10 ef_isEarlierThanDate:v9];

  return a4;
}

- (BOOL)_presentInvalidDateAlertIfNecessaryFromSender:(id)a3 withContinueBlock:(id)a4 cancelBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MFDatePickerViewController *)self type])
  {
    v11 = 0;
  }

  else
  {
    v12 = [(MFDatePickerViewController *)self _itemOfType:0];
    v11 = [v12 isInvalid];
    if (v11)
    {
      v30 = _EFLocalizedString();
      v29 = _EFLocalizedString();
      v13 = MEMORY[0x1E69DC650];
      v14 = MEMORY[0x1E696AEC0];
      v15 = [v12 selectedCity];
      v16 = [v15 displayName];
      v17 = [v14 localizedStringWithFormat:v29, v16];
      v18 = [v13 alertControllerWithTitle:v30 message:v17 preferredStyle:0];

      v19 = _EFLocalizedString();
      v20 = MEMORY[0x1E69DC648];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __106__MFDatePickerViewController__presentInvalidDateAlertIfNecessaryFromSender_withContinueBlock_cancelBlock___block_invoke;
      v33[3] = &unk_1E806E0B8;
      v33[4] = self;
      v34 = v9;
      v27 = v19;
      v28 = [v20 actionWithTitle:v19 style:0 handler:v33];
      v21 = _EFLocalizedString();
      v22 = MEMORY[0x1E69DC648];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __106__MFDatePickerViewController__presentInvalidDateAlertIfNecessaryFromSender_withContinueBlock_cancelBlock___block_invoke_97;
      v31[3] = &unk_1E806E0B8;
      v31[4] = self;
      v32 = v10;
      v23 = [v22 actionWithTitle:v21 style:1 handler:v31];
      [v18 addAction:v28];
      [v18 addAction:v23];
      v24 = +[MFDatePickerViewController log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [MFDatePickerViewController _presentInvalidDateAlertIfNecessaryFromSender:v24 withContinueBlock:? cancelBlock:?];
      }

      if (MFSolariumFeatureEnabled() && [v8 conformsToProtocol:&unk_1F3D1AE88])
      {
        v25 = [v18 popoverPresentationController];
        [v25 setSourceItem:v8];
      }

      [(MFDatePickerViewController *)self presentViewController:v18 animated:1 completion:0];
    }
  }

  return v11;
}

uint64_t __106__MFDatePickerViewController__presentInvalidDateAlertIfNecessaryFromSender_withContinueBlock_cancelBlock___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = +[MFDatePickerViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "%@ Selected time is invalid, will send anyway", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __106__MFDatePickerViewController__presentInvalidDateAlertIfNecessaryFromSender_withContinueBlock_cancelBlock___block_invoke_97(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = +[MFDatePickerViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "%@ Selected time is invalid, will cancel alert", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (MFDatePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_presentInvalidDateAlertIfNecessaryFromSender:(uint64_t)a1 withContinueBlock:(NSObject *)a2 cancelBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "%@ Selected time is invalid, will present alert", &v2, 0xCu);
}

@end