@interface HKBridgeHealthProfileController
+ (id)orderedRowIdentifiersBySectionIdentifierWithCardioFitnessMedicationsSectionHidden:(BOOL)a3 deviceSupportsWheelchair:(BOOL)a4;
+ (id)orderedSectionIdentifiersWithCardioFitnessMedicationsSectionHidden:(BOOL)a3 deviceSupportsWheelchair:(BOOL)a4;
- (HKBridgeHealthProfileController)initWithHealthStore:(id)a3 activeTinkerDevice:(id)a4;
- (NSLengthFormatter)lengthFormatter;
- (NSMassFormatter)massFormatter;
- (id)_birthdayDescription;
- (id)_checkmarkedCircleImageView;
- (id)_circleImageView;
- (id)_createBetaBlockerCheckMarkCell;
- (id)_createCalciumChannelBlockerCheckMarkCell;
- (id)_dateFromGregorianComponents:(id)a3;
- (id)_displayStringForBiologicalSex:(int64_t)a3;
- (id)_displayStringForWeight:(int64_t)a3;
- (id)_displayStringForWheelchairUse:(int64_t)a3;
- (id)_minDate;
- (id)_pickerDisplayStringForHeightForRow:(int64_t)a3 forComponent:(int64_t)a4;
- (id)_textDisplayStringForHeight:(id)a3;
- (id)getCellForIndexPath:(id)a3;
- (id)localizedPaneTitle;
- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)_profileRowIdentifierForSection:(int64_t)a3 forRow:(int64_t)a4;
- (int64_t)numberOfComponentsInPickerView:(id)a3;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_birthdateChanged:(id)a3;
- (void)_cancel;
- (void)_createCells;
- (void)_createPickers;
- (void)_heightPickerUpdated;
- (void)_loadDisplayNameForTinker;
- (void)_mainQueue_startActivityIndicator;
- (void)_mainQueue_stopActivityIndicator;
- (void)_makeCardioFitnessMedicationsAppear:(BOOL)a3;
- (void)_requestWheelchairDiagnosticsSubmissionIfNecessary;
- (void)_resetSelectedCell;
- (void)_setBiologicalSex:(int64_t)a3;
- (void)_setDefaultValuesOnBirthdayPickerIfRequired;
- (void)_setDefaultValuesOnHeightPickerIfRequired;
- (void)_setDefaultValuesOnWeightPickerIfRequired;
- (void)_setHeight:(id)a3;
- (void)_setHeightAndWeightProperties;
- (void)_setNavigationButtonsOnEditCompletion;
- (void)_setNavigationButtonsToEnableEditing;
- (void)_setWeight:(id)a3;
- (void)_setWheelchairUse:(int64_t)a3;
- (void)_setupCloudSyncObserverForTinkerProfile;
- (void)_toggleEdit;
- (void)_updateDisplayWithHeightValue:(id)a3;
- (void)_updateDisplayWithWeightValue:(id)a3;
- (void)_updateHeight;
- (void)_updatePickersForHeight:(id)a3;
- (void)_updateUserCharacteristics;
- (void)_updateWeight;
- (void)cloudSyncObserverStatusUpdated:(id)a3 status:(id)a4;
- (void)dealloc;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setCardioFitnessMedicationCheckmarks;
- (void)setupDataSource;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCheckMarksForCell:(id)a3 option:(unint64_t)a4;
- (void)viewDidLoad;
@end

@implementation HKBridgeHealthProfileController

- (HKBridgeHealthProfileController)initWithHealthStore:(id)a3 activeTinkerDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = HKBridgeHealthProfileController;
  v9 = [(HKBridgeHealthProfileController *)&v23 initWithStyle:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, a3);
    objc_storeStrong(&v10->_activeTinkerDevice, a4);
    if (v8)
    {
      v11 = [[NSUUID alloc] initWithUUIDString:@"E5E86144-6C47-4545-8F52-A5D468C1DA85"];
      v10->_deviceSupportsWheelchair = [v8 supportsCapability:v11];

      cardioFitnessMedicationsSectionHidden = 1;
      v10->_cardioFitnessMedicationsSectionHidden = 1;
    }

    else
    {
      v13 = +[NRPairedDeviceRegistry sharedInstance];
      v14 = [v13 getActivePairedDevice];
      v15 = [[NSUUID alloc] initWithUUIDString:@"E5E86144-6C47-4545-8F52-A5D468C1DA85"];
      v10->_deviceSupportsWheelchair = [v14 supportsCapability:v15];

      v10->_cardioFitnessMedicationsSectionHidden = 0;
      cardioFitnessMedicationsSectionHidden = v10->_cardioFitnessMedicationsSectionHidden;
    }

    v16 = [HKBridgeHealthProfileController orderedSectionIdentifiersWithCardioFitnessMedicationsSectionHidden:cardioFitnessMedicationsSectionHidden & 1 deviceSupportsWheelchair:v10->_deviceSupportsWheelchair];
    orderedSectionIdentifiers = v10->_orderedSectionIdentifiers;
    v10->_orderedSectionIdentifiers = v16;

    v18 = [HKBridgeHealthProfileController orderedRowIdentifiersBySectionIdentifierWithCardioFitnessMedicationsSectionHidden:v10->_cardioFitnessMedicationsSectionHidden deviceSupportsWheelchair:v10->_deviceSupportsWheelchair];
    orderedRowIdentifiersBySectionIdentifier = v10->_orderedRowIdentifiersBySectionIdentifier;
    v10->_orderedRowIdentifiersBySectionIdentifier = v18;

    v20 = [[HKBirthdateChangeManager alloc] initWithHealthStore:v7];
    birthdateChangeManager = v10->_birthdateChangeManager;
    v10->_birthdateChangeManager = v20;
  }

  return v10;
}

- (void)_setupCloudSyncObserverForTinkerProfile
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = [(HKBridgeHealthProfileController *)self navigationItem];
  [v3 setRightBarButtonItem:0];

  v4 = [[HKCloudSyncObserver alloc] initWithHealthStore:self->_healthStore delegate:self];
  cloudSyncObserver = self->_cloudSyncObserver;
  self->_cloudSyncObserver = v4;

  v6 = self->_cloudSyncObserver;

  [(HKCloudSyncObserver *)v6 startObservingSyncStatus];
}

- (void)_mainQueue_startActivityIndicator
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  tinkerSyncActivityIndicator = self->_tinkerSyncActivityIndicator;
  if (!tinkerSyncActivityIndicator)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    v5 = self->_tinkerSyncActivityIndicator;
    self->_tinkerSyncActivityIndicator = v4;

    [(UIActivityIndicatorView *)self->_tinkerSyncActivityIndicator setHidesWhenStopped:1];
    v6 = self->_tinkerSyncActivityIndicator;
    v7 = [(HKBridgeHealthProfileController *)self tableView];
    [v7 setBackgroundView:v6];

    tinkerSyncActivityIndicator = self->_tinkerSyncActivityIndicator;
  }

  [(UIActivityIndicatorView *)tinkerSyncActivityIndicator startAnimating];
  v8 = [(HKBridgeHealthProfileController *)self navigationItem];
  [v8 setRightBarButtonItem:0];
}

- (void)_mainQueue_stopActivityIndicator
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(HKBridgeHealthProfileController *)self setupDataSource];
  [(HKBridgeHealthProfileController *)self _updateUserCharacteristics];
  [(UIActivityIndicatorView *)self->_tinkerSyncActivityIndicator stopAnimating];
  editButton = self->_editButton;
  v4 = [(HKBridgeHealthProfileController *)self navigationItem];
  [v4 setRightBarButtonItem:editButton];
}

- (void)cloudSyncObserverStatusUpdated:(id)a3 status:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1F18;
  v6[3] = &unk_184C0;
  v7 = a4;
  v8 = self;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

+ (id)orderedSectionIdentifiersWithCardioFitnessMedicationsSectionHidden:(BOOL)a3 deviceSupportsWheelchair:(BOOL)a4
{
  v4 = a4;
  v6 = objc_alloc_init(NSMutableArray);
  [v6 addObject:&off_19410];
  if (v4)
  {
    [v6 addObject:&off_19428];
  }

  if (!a3)
  {
    [v6 addObject:&off_19440];
  }

  v7 = [v6 copy];

  return v7;
}

+ (id)orderedRowIdentifiersBySectionIdentifierWithCardioFitnessMedicationsSectionHidden:(BOOL)a3 deviceSupportsWheelchair:(BOOL)a4
{
  v4 = a4;
  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:&off_19540 forKey:&off_19410];
  if (v4)
  {
    [v6 setObject:&off_19558 forKey:&off_19428];
  }

  if (!a3)
  {
    [v6 setObject:&off_19570 forKey:&off_19440];
  }

  v7 = [v6 copy];

  return v7;
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HEALTH_DETAILS" value:&stru_188B0 table:@"Localizable"];

  return v3;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = HKBridgeHealthProfileController;
  [(HKBridgeHealthProfileController *)&v27 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HEALTH_DETAILS" value:&stru_188B0 table:@"Localizable"];
  [(HKBridgeHealthProfileController *)self setTitle:v4];

  v5 = [(HKBridgeHealthProfileController *)self tableView];
  [v5 setRowHeight:UITableViewAutomaticDimension];

  v6 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleBody];
  [v6 lineHeight];
  v8 = v7 * 3.0;
  v9 = [(HKBridgeHealthProfileController *)self tableView];
  [v9 setEstimatedRowHeight:v8];

  v10 = [(HKBridgeHealthProfileController *)self tableView];
  [v10 setAllowsSelectionDuringEditing:1];

  [(HKBridgeHealthProfileController *)self setEditing:0];
  v11 = [(HKBridgeHealthProfileController *)self tableView];
  [v11 setAllowsSelection:0];

  v12 = [UIBarButtonItem alloc];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"EDIT_BUTTON" value:&stru_188B0 table:@"Localizable"];
  v15 = [v12 initWithTitle:v14 style:0 target:self action:"_toggleEdit"];
  editButton = self->_editButton;
  self->_editButton = v15;

  v17 = self->_editButton;
  v18 = [(HKBridgeHealthProfileController *)self navigationItem];
  [v18 setRightBarButtonItem:v17];

  [(HKBridgeHealthProfileController *)self _createPickers];
  [(HKBridgeHealthProfileController *)self _createCells];
  [(HKBridgeHealthProfileController *)self _setHeightAndWeightProperties];
  [(HKBridgeHealthProfileController *)self setCardioFitnessMedicationCheckmarks];
  if ([(HKBridgeHealthProfileController *)self _isTinkerDevice])
  {
    self->_loadingDisplayNameForTinker = 1;
    [(HKBridgeHealthProfileController *)self _loadDisplayNameForTinker];
    [(HKBridgeHealthProfileController *)self _setupCloudSyncObserverForTinkerProfile];
  }

  objc_initWeak(&location, self);
  v19 = [BridgeHealthProfileDiffableDataSource alloc];
  v20 = [(HKBridgeHealthProfileController *)self tableView];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_24DC;
  v24[3] = &unk_184E8;
  objc_copyWeak(&v25, &location);
  v24[4] = self;
  v21 = [(BridgeHealthProfileDiffableDataSource *)v19 initWithTableView:v20 cellProvider:v24];
  [(HKBridgeHealthProfileController *)self setDataSource:v21];

  if ([(HKBridgeHealthProfileController *)self _isTinkerDevice])
  {
    v22 = [(HKBridgeHealthProfileController *)self dataSource];
    v23 = objc_opt_new();
    [v22 applySnapshot:v23 animatingDifferences:0];
  }

  else
  {
    [(HKBridgeHealthProfileController *)self setupDataSource];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)setupDataSource
{
  v3 = [(HKBridgeHealthProfileController *)self dataSource];
  [v3 setDefaultRowAnimation:0];

  v4 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  [(HKBridgeHealthProfileController *)self setCurrentSnapshot:v4];

  v5 = [(HKBridgeHealthProfileController *)self currentSnapshot];
  [v5 appendSectionsWithIdentifiers:self->_orderedSectionIdentifiers];

  v6 = [(HKBridgeHealthProfileController *)self currentSnapshot];
  v7 = [(NSDictionary *)self->_orderedRowIdentifiersBySectionIdentifier objectForKey:&off_19410];
  [v6 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:&off_19410];

  if (self->_deviceSupportsWheelchair)
  {
    v8 = [(HKBridgeHealthProfileController *)self currentSnapshot];
    v9 = [(NSDictionary *)self->_orderedRowIdentifiersBySectionIdentifier objectForKey:&off_19428];
    [v8 appendItemsWithIdentifiers:v9 intoSectionWithIdentifier:&off_19428];
  }

  if (!self->_cardioFitnessMedicationsSectionHidden)
  {
    v10 = [(HKBridgeHealthProfileController *)self currentSnapshot];
    [v10 appendItemsWithIdentifiers:&off_19588 intoSectionWithIdentifier:&off_19440];
  }

  v11 = [(HKBridgeHealthProfileController *)self dataSource];
  v12 = [(HKBridgeHealthProfileController *)self currentSnapshot];
  [v11 applySnapshot:v12 animatingDifferences:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKBridgeHealthProfileController;
  [(HKBridgeHealthProfileController *)&v10 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKBridgeHealthProfileController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_28C4;
      block[3] = &unk_18510;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (int64_t)_profileRowIdentifierForSection:(int64_t)a3 forRow:(int64_t)a4
{
  orderedRowIdentifiersBySectionIdentifier = self->_orderedRowIdentifiersBySectionIdentifier;
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [(NSDictionary *)orderedRowIdentifiersBySectionIdentifier objectForKey:v6];
  v8 = [v7 objectAtIndex:a4];

  v9 = [v8 integerValue];
  return v9;
}

- (id)getCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 row];

  v7 = [(HKBridgeHealthProfileController *)self _profileRowIdentifierForSection:v5 forRow:v6];
  if (v7 > 7 || (v8 = *(&self->super.super.super.super.isa + *off_18690[v7])) == 0)
  {
    v8 = HKErrorTableViewCell();
  }

  return v8;
}

- (void)_createPickers
{
  v3 = objc_alloc_init(_BHSHealthProfileDatePicker);
  birthdatePicker = self->_birthdatePicker;
  self->_birthdatePicker = v3;

  [(_BHSHealthProfileDatePicker *)self->_birthdatePicker setDatePickerMode:1];
  v5 = self->_birthdatePicker;
  v6 = +[NSTimeZone localTimeZone];
  [(_BHSHealthProfileDatePicker *)v5 setTimeZone:v6];

  v7 = self->_birthdatePicker;
  v8 = +[NSDate date];
  [(_BHSHealthProfileDatePicker *)v7 setMaximumDate:v8];

  v9 = self->_birthdatePicker;
  v10 = [(HKBridgeHealthProfileController *)self _minDate];
  [(_BHSHealthProfileDatePicker *)v9 setMinimumDate:v10];

  v11 = self->_birthdatePicker;
  v12 = [objc_opt_class() _textColor];
  [(_BHSHealthProfileDatePicker *)v11 _setTextColor:v12];

  [(_BHSHealthProfileDatePicker *)self->_birthdatePicker _setHighlightsToday:0];
  [(_BHSHealthProfileDatePicker *)self->_birthdatePicker addTarget:self action:"_birthdateChanged:" forControlEvents:4096];
  [(_BHSHealthProfileDatePicker *)self->_birthdatePicker _setUsesBlackChrome:1];
  v13 = self->_birthdatePicker;
  v14 = [objc_opt_class() _backgroundColor];
  [(_BHSHealthProfileDatePicker *)v13 setBackgroundColor:v14];

  v15 = objc_alloc_init(_BHSHealthProfilePickerView);
  biologicalSexPicker = self->_biologicalSexPicker;
  self->_biologicalSexPicker = v15;

  [(_BHSHealthProfilePickerView *)self->_biologicalSexPicker setDataSource:self];
  [(_BHSHealthProfilePickerView *)self->_biologicalSexPicker setDelegate:self];
  v17 = [objc_opt_class() _backgroundColor];
  [(_BHSHealthProfilePickerView *)self->_biologicalSexPicker setBackgroundColor:v17];

  v18 = objc_alloc_init(_BHSHealthProfilePickerView);
  heightPicker = self->_heightPicker;
  self->_heightPicker = v18;

  [(_BHSHealthProfilePickerView *)self->_heightPicker setDataSource:self];
  [(_BHSHealthProfilePickerView *)self->_heightPicker setDelegate:self];
  v20 = [objc_opt_class() _backgroundColor];
  [(_BHSHealthProfilePickerView *)self->_heightPicker setBackgroundColor:v20];

  v21 = objc_alloc_init(_BHSHealthProfilePickerView);
  weightPicker = self->_weightPicker;
  self->_weightPicker = v21;

  [(_BHSHealthProfilePickerView *)self->_weightPicker setDataSource:self];
  [(_BHSHealthProfilePickerView *)self->_weightPicker setDelegate:self];
  v23 = [objc_opt_class() _backgroundColor];
  [(_BHSHealthProfilePickerView *)self->_weightPicker setBackgroundColor:v23];

  v24 = objc_alloc_init(_BHSHealthProfilePickerView);
  wheelchairUsePicker = self->_wheelchairUsePicker;
  self->_wheelchairUsePicker = v24;

  [(_BHSHealthProfilePickerView *)self->_wheelchairUsePicker setDataSource:self];
  [(_BHSHealthProfilePickerView *)self->_wheelchairUsePicker setDelegate:self];
  v26 = [objc_opt_class() _backgroundColor];
  [(_BHSHealthProfilePickerView *)self->_wheelchairUsePicker setBackgroundColor:v26];
}

- (void)_createCells
{
  v3 = [[HKBridgeHealthProfileTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  birthdateCell = self->_birthdateCell;
  self->_birthdateCell = v3;

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BIRTHDATE" value:&stru_188B0 table:@"Localizable"];
  v7 = [(HKBridgeHealthProfileTableViewCell *)self->_birthdateCell textLabel];
  [v7 setText:v6];

  [(HKBridgeHealthProfileTableViewCell *)self->_birthdateCell setInputView:self->_birthdatePicker];
  v8 = [[HKBridgeHealthProfileTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  biologicalSexCell = self->_biologicalSexCell;
  self->_biologicalSexCell = v8;

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"BIOLOGICAL_SEX" value:&stru_188B0 table:@"Localizable"];
  v12 = [(HKBridgeHealthProfileTableViewCell *)self->_biologicalSexCell textLabel];
  [v12 setText:v11];

  [(HKBridgeHealthProfileTableViewCell *)self->_biologicalSexCell setInputView:self->_biologicalSexPicker];
  v13 = [[HKBridgeHealthProfileTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  heightCell = self->_heightCell;
  self->_heightCell = v13;

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"HEIGHT" value:&stru_188B0 table:@"Localizable"];
  v17 = [(HKBridgeHealthProfileTableViewCell *)self->_heightCell textLabel];
  [v17 setText:v16];

  [(HKBridgeHealthProfileTableViewCell *)self->_heightCell setInputView:self->_heightPicker];
  v18 = [[HKBridgeHealthProfileTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  weightCell = self->_weightCell;
  self->_weightCell = v18;

  v20 = [NSBundle bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"WEIGHT" value:&stru_188B0 table:@"Localizable"];
  v22 = [(HKBridgeHealthProfileTableViewCell *)self->_weightCell textLabel];
  [v22 setText:v21];

  [(HKBridgeHealthProfileTableViewCell *)self->_weightCell setInputView:self->_weightPicker];
  v23 = [[HKBridgeHealthProfileTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  wheelchairUseCell = self->_wheelchairUseCell;
  self->_wheelchairUseCell = v23;

  v25 = [NSBundle bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"WHEELCHAIR_USE" value:&stru_188B0 table:@"Localizable"];
  v27 = [(HKBridgeHealthProfileTableViewCell *)self->_wheelchairUseCell textLabel];
  [v27 setText:v26];

  [(HKBridgeHealthProfileTableViewCell *)self->_wheelchairUseCell setInputView:self->_wheelchairUsePicker];
  v28 = [[HKBridgeHealthProfileTableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  cardioFitnessMedicationsCell = self->_cardioFitnessMedicationsCell;
  self->_cardioFitnessMedicationsCell = v28;

  [(HKBridgeHealthProfileTableViewCell *)self->_cardioFitnessMedicationsCell setSelectionStyle:0];
  v30 = [NSBundle bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"CARDIO_FITNESS_RELATED_MEDICATIONS" value:&stru_188B0 table:@"Localizable"];
  v32 = [(HKBridgeHealthProfileTableViewCell *)self->_cardioFitnessMedicationsCell textLabel];
  [v32 setText:v31];

  v33 = [(HKBridgeHealthProfileController *)self displayNumberOfActiveCardioFitnessMedications:self->_activeCardioFitnessMedications];
  [(HKBridgeHealthProfileTableViewCell *)self->_cardioFitnessMedicationsCell _setBadgeText:v33];

  v34 = [(HKBridgeHealthProfileController *)self _createCalciumChannelBlockerCheckMarkCell];
  calciumChannelBlockerUseCell = self->_calciumChannelBlockerUseCell;
  self->_calciumChannelBlockerUseCell = v34;

  v36 = [(HKBridgeHealthProfileController *)self _createBetaBlockerCheckMarkCell];
  betaBlockerUseCell = self->_betaBlockerUseCell;
  self->_betaBlockerUseCell = v36;

  _objc_release_x1();
}

- (id)_createCalciumChannelBlockerCheckMarkCell
{
  v3 = [[HKBridgeHealthProfileTableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CALCIUM_CHANNEL_BLOCKER_USE" value:&stru_188B0 table:@"Localizable"];
  v6 = [(HKBridgeHealthProfileTableViewCell *)v3 textLabel];
  [v6 setText:v5];

  [(HKBridgeHealthProfileTableViewCell *)v3 setSelectionStyle:0];
  v7 = [(HKBridgeHealthProfileController *)self _circleImageView];
  [(HKBridgeHealthProfileTableViewCell *)v3 setEditingAccessoryView:v7];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CALCIUM_CHANNEL_BLOCKER_EXAMPLES" value:&stru_188B0 table:@"Localizable"];
  v10 = [(HKBridgeHealthProfileTableViewCell *)v3 detailTextLabel];
  [v10 setText:v9];

  return v3;
}

- (id)_createBetaBlockerCheckMarkCell
{
  v3 = [[HKBridgeHealthProfileTableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BETA_BLOCKER_USE" value:&stru_188B0 table:@"Localizable"];
  v6 = [(HKBridgeHealthProfileTableViewCell *)v3 textLabel];
  [v6 setText:v5];

  [(HKBridgeHealthProfileTableViewCell *)v3 setSelectionStyle:0];
  v7 = [(HKBridgeHealthProfileController *)self _circleImageView];
  [(HKBridgeHealthProfileTableViewCell *)v3 setEditingAccessoryView:v7];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"BETA_BLOCKER_EXAMPLES" value:&stru_188B0 table:@"Localizable"];
  v10 = [(HKBridgeHealthProfileTableViewCell *)v3 detailTextLabel];
  [v10 setText:v9];

  return v3;
}

- (void)setCardioFitnessMedicationCheckmarks
{
  healthStore = self->_healthStore;
  v14 = 0;
  v4 = [(HKHealthStore *)healthStore _cardioFitnessMedicationsUseWithError:&v14];
  v5 = v14;
  v6 = v5;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDatabase, OS_LOG_TYPE_ERROR))
    {
      sub_BCA4();
    }
  }

  self->_currentCardioFitnessMedicationsUse = 0;
  self->_activeCardioFitnessMedications = 0;
  if ([v4 takingCalciumChannelBlockers])
  {
    self->_currentCardioFitnessMedicationsUse |= 1uLL;
    v8 = [(HKBridgeHealthProfileController *)self _checkmarkedCircleImageView];
    [(HKBridgeHealthProfileTableViewCell *)self->_calciumChannelBlockerUseCell setEditingAccessoryView:v8];

    ++self->_activeCardioFitnessMedications;
  }

  else
  {
    v9 = [(HKBridgeHealthProfileController *)self _circleImageView];
    [(HKBridgeHealthProfileTableViewCell *)self->_calciumChannelBlockerUseCell setEditingAccessoryView:v9];
  }

  if ([v4 takingBetaBlockers])
  {
    self->_currentCardioFitnessMedicationsUse |= 2uLL;
    v10 = [(HKBridgeHealthProfileController *)self _checkmarkedCircleImageView];
    [(HKBridgeHealthProfileTableViewCell *)self->_betaBlockerUseCell setEditingAccessoryView:v10];

    activeCardioFitnessMedications = (self->_activeCardioFitnessMedications + 1);
    self->_activeCardioFitnessMedications = activeCardioFitnessMedications;
  }

  else
  {
    v12 = [(HKBridgeHealthProfileController *)self _circleImageView];
    [(HKBridgeHealthProfileTableViewCell *)self->_betaBlockerUseCell setEditingAccessoryView:v12];

    activeCardioFitnessMedications = self->_activeCardioFitnessMedications;
  }

  v13 = [(HKBridgeHealthProfileController *)self displayNumberOfActiveCardioFitnessMedications:activeCardioFitnessMedications];
  [(HKBridgeHealthProfileTableViewCell *)self->_cardioFitnessMedicationsCell _setBadgeText:v13];
}

- (void)_makeCardioFitnessMedicationsAppear:(BOOL)a3
{
  if (!self->_cardioFitnessMedicationsSectionHidden)
  {
    v4 = a3;
    v6 = [(HKBridgeHealthProfileController *)self currentSnapshot];
    v7 = v6;
    if (v4)
    {
      [v6 appendItemsWithIdentifiers:&off_195A0 intoSectionWithIdentifier:&off_19440];
    }

    else
    {
      [v6 deleteItemsWithIdentifiers:&off_195A0];
    }

    v9 = [(HKBridgeHealthProfileController *)self dataSource];
    v8 = [(HKBridgeHealthProfileController *)self currentSnapshot];
    [v9 applySnapshot:v8 animatingDifferences:1];
  }
}

- (void)_setHeightAndWeightProperties
{
  v3 = [(HKBridgeHealthProfileController *)self lengthFormatter];
  v4 = [v3 numberFormatter];
  v5 = [v4 locale];

  v6 = [v5 objectForKey:NSLocaleUsesMetricSystem];
  self->_isMetricLocale = [v6 BOOLValue];
  v7 = +[HKUnit poundUnit];
  v8 = [HKQuantity quantityWithUnit:v7 doubleValue:1000.0];
  maxWeightQuantity = self->_maxWeightQuantity;
  self->_maxWeightQuantity = v8;

  v10 = +[HKUnit poundUnit];
  v11 = [HKQuantity quantityWithUnit:v10 doubleValue:1.0];
  minWeightQuantity = self->_minWeightQuantity;
  self->_minWeightQuantity = v11;

  v19 = 0;
  v13 = [(HKBridgeHealthProfileController *)self massFormatter];
  v14 = [v13 unitStringFromKilograms:&v19 usedUnit:2.0];

  v15 = [HKUnit unitFromMassFormatterUnit:v19];
  localeWeightUnit = self->_localeWeightUnit;
  self->_localeWeightUnit = v15;

  [(HKQuantity *)self->_maxWeightQuantity doubleValueForUnit:self->_localeWeightUnit];
  self->_maxWeightInLocaleUnit = llround(v17);
  [(HKQuantity *)self->_minWeightQuantity doubleValueForUnit:self->_localeWeightUnit];
  self->_minWeightInLocaleUnit = llround(v18);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  [(_BHSHealthProfileDatePicker *)self->_birthdatePicker removeTarget:self action:0 forControlEvents:4096];
  v4.receiver = self;
  v4.super_class = HKBridgeHealthProfileController;
  [(HKBridgeHealthProfileController *)&v4 dealloc];
}

- (void)_loadDisplayNameForTinker
{
  v3 = [[HKProfileStore alloc] initWithHealthStore:self->_healthStore];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3CC8;
  v4[3] = &unk_18560;
  v4[4] = self;
  [v3 fetchDisplayName:v4];
}

- (void)_cancel
{
  v3 = [(HKBridgeHealthProfileController *)self view];
  [v3 endEditing:1];

  [(HKBridgeHealthProfileController *)self _updateUserCharacteristics];
  [(HKBridgeHealthProfileController *)self setCardioFitnessMedicationCheckmarks];
  [(HKBridgeHealthProfileController *)self _makeCardioFitnessMedicationsAppear:0];
  [(HKBridgeHealthProfileController *)self setEditing:0];
  v4 = [(HKBridgeHealthProfileController *)self tableView];
  [v4 setAllowsSelection:0];

  [(HKBridgeHealthProfileController *)self _setNavigationButtonsToEnableEditing];
}

- (void)_toggleEdit
{
  v3 = [(HKBridgeHealthProfileController *)self tableView];
  v4 = [(HKBridgeHealthProfileController *)self tableView];
  [v3 setAllowsSelection:{objc_msgSend(v4, "allowsSelection") ^ 1}];

  v5 = [(HKBridgeHealthProfileController *)self tableView];
  LODWORD(v4) = [v5 allowsSelection];

  if (v4)
  {
    [(HKBridgeHealthProfileController *)self setEditing:1];
    [(HKBridgeHealthProfileController *)self _makeCardioFitnessMedicationsAppear:1];
    [(HKBridgeHealthProfileController *)self _setNavigationButtonsOnEditCompletion];

    [(HKBridgeHealthProfileController *)self setCardioFitnessMedicationCheckmarks];
  }

  else
  {
    [(HKBridgeHealthProfileController *)self setEditing:0];
    v6 = [(HKBridgeHealthProfileController *)self view];
    [v6 endEditing:1];

    birthdateChangeManager = self->_birthdateChangeManager;
    dateOfBirth = self->_dateOfBirth;
    v20 = 0;
    v9 = [(HKBirthdateChangeManager *)birthdateChangeManager setBirthdate:dateOfBirth withError:&v20];
    v10 = v20;
    if (([v9 success] & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_ERROR))
      {
        sub_BD94();
      }
    }

    [(HKBridgeHealthProfileController *)self _setBiologicalSex:self->_biologicalSex];
    [(HKBridgeHealthProfileController *)self _setHeight:self->_height];
    [(HKBridgeHealthProfileController *)self _setWeight:self->_weight];
    [(HKBridgeHealthProfileController *)self _setWheelchairUse:self->_wheelchairUse];
    healthStore = self->_healthStore;
    currentCardioFitnessMedicationsUse = self->_currentCardioFitnessMedicationsUse;
    v19 = v10;
    [(HKHealthStore *)healthStore _setCardioFitnessMedicationsUse:currentCardioFitnessMedicationsUse error:&v19];
    v13 = v19;

    [(HKBridgeHealthProfileController *)self _makeCardioFitnessMedicationsAppear:0];
    [(HKBridgeHealthProfileController *)self _setNavigationButtonsToEnableEditing];
    if ([(HKBridgeHealthProfileController *)self _isTinkerDevice])
    {
      v14 = self->_healthStore;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_4178;
      v18[3] = &unk_18588;
      v18[4] = self;
      [(HKHealthStore *)v14 forceCloudSyncDataUploadForProfileWithCompletion:v18];
    }

    if ([v9 shouldShowWarning] && !-[HKBridgeHealthProfileController _isTinkerDevice](self, "_isTinkerDevice"))
    {
      v15 = +[HKHealthChecklistUtilities shared];
      v16 = [v15 isHealthChecklistAvailable];

      v17 = [v9 newAge];
      if (v16)
      {
        [HKBirthdateChangeManager showDisabledWarningWithHealthChecklistWithAge:v17 presentingViewController:self openHealthChecklistInContext:0];
      }

      else
      {
        [HKBirthdateChangeManager showDisabledWarningWithAge:v17 presentingViewController:self];
      }
    }
  }
}

- (void)_setNavigationButtonsOnEditCompletion
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_toggleEdit"];
  v4 = [(HKBridgeHealthProfileController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel"];
  v5 = [(HKBridgeHealthProfileController *)self navigationItem];
  [v5 setLeftBarButtonItem:v6];
}

- (void)_setNavigationButtonsToEnableEditing
{
  editButton = self->_editButton;
  v4 = [(HKBridgeHealthProfileController *)self navigationItem];
  [v4 setRightBarButtonItem:editButton];

  v5 = [(HKBridgeHealthProfileController *)self navigationItem];
  [v5 setLeftBarButtonItem:0];
}

- (void)_updateUserCharacteristics
{
  [(HKBridgeHealthProfileController *)self _updateWeight];
  [(HKBridgeHealthProfileController *)self _updateHeight];
  v3 = [(HKBridgeHealthProfileController *)self healthStore];
  v28 = 0;
  v4 = [v3 biologicalSexWithError:&v28];
  v5 = v28;

  if (v4)
  {
    v6 = [v4 biologicalSex];
  }

  else
  {
    if (v5)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        sub_BED4();
      }
    }

    v6 = 0;
  }

  self->_biologicalSex = v6;
  v7 = [(HKBridgeHealthProfileController *)self _displayStringForBiologicalSex:?];
  v8 = [(HKBridgeHealthProfileTableViewCell *)self->_biologicalSexCell detailTextLabel];
  [v8 setText:v7];

  [(_BHSHealthProfilePickerView *)self->_biologicalSexPicker selectRow:self->_biologicalSex inComponent:0 animated:0];
  v9 = [(HKBridgeHealthProfileController *)self healthStore];
  v27 = 0;
  v10 = [v9 dateOfBirthComponentsWithError:&v27];
  v11 = v27;
  dateOfBirth = self->_dateOfBirth;
  self->_dateOfBirth = v10;

  if (self->_dateOfBirth)
  {
    v13 = [(HKBridgeHealthProfileController *)self _birthdayDescription];
    v14 = [(HKBridgeHealthProfileTableViewCell *)self->_birthdateCell detailTextLabel];
    [v14 setText:v13];

    birthdatePicker = self->_birthdatePicker;
    v16 = [(HKBridgeHealthProfileController *)self _dateFromGregorianComponents:self->_dateOfBirth];
    [(_BHSHealthProfileDatePicker *)birthdatePicker setDate:v16];
  }

  else
  {
    if (v11)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        sub_BF3C();
      }
    }

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"BIRTHDATE_NOT_SET" value:&stru_188B0 table:@"Localizable"];
    v18 = [(HKBridgeHealthProfileTableViewCell *)self->_birthdateCell detailTextLabel];
    [v18 setText:v17];
  }

  v19 = [(HKBridgeHealthProfileController *)self healthStore];
  v26 = 0;
  v20 = [v19 wheelchairUseWithError:&v26];
  v21 = v26;

  if (v20)
  {
    v22 = [v20 wheelchairUse];
  }

  else
  {
    if (v21)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        sub_BFA4();
      }
    }

    v22 = 0;
  }

  self->_wheelchairUse = v22;
  v23 = [(HKBridgeHealthProfileController *)self _displayStringForWheelchairUse:?];
  v24 = [(HKBridgeHealthProfileTableViewCell *)self->_wheelchairUseCell detailTextLabel];
  [v24 setText:v23];

  [(_BHSHealthProfilePickerView *)self->_wheelchairUsePicker selectRow:self->_wheelchairUse inComponent:0 animated:0];
  [(HKBridgeHealthProfileController *)self setCardioFitnessMedicationCheckmarks];
  v25 = [(HKBridgeHealthProfileController *)self tableView];
  [v25 reloadData];
}

- (NSLengthFormatter)lengthFormatter
{
  lengthFormatter = self->_lengthFormatter;
  if (!lengthFormatter)
  {
    v4 = objc_alloc_init(NSLengthFormatter);
    v5 = self->_lengthFormatter;
    self->_lengthFormatter = v4;

    [(NSLengthFormatter *)self->_lengthFormatter setForPersonHeightUse:1];
    lengthFormatter = self->_lengthFormatter;
  }

  return lengthFormatter;
}

- (NSMassFormatter)massFormatter
{
  massFormatter = self->_massFormatter;
  if (!massFormatter)
  {
    v4 = objc_alloc_init(NSMassFormatter);
    v5 = self->_massFormatter;
    self->_massFormatter = v4;

    [(NSMassFormatter *)self->_massFormatter setForPersonMassUse:1];
    massFormatter = self->_massFormatter;
  }

  return massFormatter;
}

- (void)_setBiologicalSex:(int64_t)a3
{
  v5 = [(HKBridgeHealthProfileController *)self healthStore];
  v9 = 0;
  v6 = [v5 _setBiologicalSex:a3 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_C00C(v8, a2);
    }
  }
}

- (id)_displayStringForBiologicalSex:(int64_t)a3
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if ((a3 - 1) > 2)
  {
    v6 = @"BIOLOGICAL_SEX_NOT_SET";
  }

  else
  {
    v6 = off_186D0[a3 - 1];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_188B0 table:@"Localizable"];

  return v7;
}

- (void)_birthdateChanged:(id)a3
{
  v4 = +[NSCalendar hk_gregorianCalendar];
  v5 = [(_BHSHealthProfileDatePicker *)self->_birthdatePicker date];
  v6 = [v4 hk_dateOfBirthDateComponentsWithDate:v5];
  dateOfBirth = self->_dateOfBirth;
  self->_dateOfBirth = v6;

  v9 = [(HKBridgeHealthProfileController *)self _birthdayDescription];
  v8 = [(HKBridgeHealthProfileTableViewCell *)self->_birthdateCell detailTextLabel];
  [v8 setText:v9];
}

- (id)_birthdayDescription
{
  if (qword_1ED60 != -1)
  {
    sub_C0C0();
  }

  v3 = qword_1ED58;
  v4 = [(HKBridgeHealthProfileController *)self _dateFromGregorianComponents:self->_dateOfBirth];
  v5 = [v3 stringFromDate:v4];

  return v5;
}

- (id)_dateFromGregorianComponents:(id)a3
{
  v3 = a3;
  v4 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  v5 = [v4 dateFromComponents:v3];

  return v5;
}

- (void)_updateHeight
{
  v3 = [(HKBridgeHealthProfileController *)self healthStore];
  v9 = 0;
  v4 = [v3 _heightCharacteristicQuantityWithError:&v9];
  v5 = v9;

  if (v5)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_C0D4();
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_6:
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"HEIGHT_NOT_SET" value:&stru_188B0 table:@"Localizable"];
      v8 = [(HKBridgeHealthProfileTableViewCell *)self->_heightCell detailTextLabel];
      [v8 setText:v7];

      goto LABEL_7;
    }
  }

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_4:
  objc_storeStrong(&self->_height, v4);
  [(HKBridgeHealthProfileController *)self _updateDisplayWithHeightValue:v4];
LABEL_7:
}

- (void)_updateDisplayWithHeightValue:(id)a3
{
  v6 = a3;
  v4 = [(HKBridgeHealthProfileController *)self _textDisplayStringForHeight:v6];
  v5 = [(HKBridgeHealthProfileTableViewCell *)self->_heightCell detailTextLabel];
  [v5 setText:v4];

  [(HKBridgeHealthProfileController *)self _updatePickersForHeight:v6];
}

- (void)_updatePickersForHeight:(id)a3
{
  isMetricLocale = self->_isMetricLocale;
  v5 = a3;
  if (isMetricLocale)
  {
    v6 = [HKUnit meterUnitWithMetricPrefix:5];
    [v5 doubleValueForUnit:v6];
    v8 = v7;

    v9 = llround(v8) - 30;
    if (v9 <= 0x1E)
    {
      v9 = 30;
    }

    if (v9 >= 0x113)
    {
      v10 = 275;
    }

    else
    {
      v10 = v9;
    }

    heightPicker = self->_heightPicker;
    v12 = 0;
  }

  else
  {
    v13 = +[HKUnit inchUnit];
    [v5 doubleValueForUnit:v13];
    v15 = v14;

    v16 = llround(v15);
    v17 = [(HKBridgeHealthProfileController *)self _numFeetInInches:v16];
    v18 = v17 - 1;
    if ((v17 - 1) <= 1)
    {
      v18 = 1;
    }

    if (v18 >= 9)
    {
      v19 = 9;
    }

    else
    {
      v19 = v18;
    }

    if (v16 - 12 * v17 >= 0xB)
    {
      v20 = 11;
    }

    else
    {
      v20 = v16 - 12 * v17;
    }

    [(_BHSHealthProfilePickerView *)self->_heightPicker selectRow:v19 inComponent:0 animated:0];
    heightPicker = self->_heightPicker;
    v10 = v20;
    v12 = 1;
  }

  [(_BHSHealthProfilePickerView *)heightPicker selectRow:v10 inComponent:v12 animated:0];
}

- (id)_pickerDisplayStringForHeightForRow:(int64_t)a3 forComponent:(int64_t)a4
{
  v7 = [(HKBridgeHealthProfileController *)self lengthFormatter];
  [v7 setUnitStyle:2];

  if (self->_isMetricLocale)
  {
    v8 = [(HKBridgeHealthProfileController *)self lengthFormatter];
    v9 = v8;
    v10 = (a3 + 30);
    v11 = 9;
  }

  else
  {
    v8 = [(HKBridgeHealthProfileController *)self lengthFormatter];
    v9 = v8;
    if (a4)
    {
      v10 = a3;
      v11 = 1281;
    }

    else
    {
      v10 = (a3 + 1);
      v11 = 1282;
    }
  }

  v12 = [v8 stringFromValue:v11 unit:v10];

  return v12;
}

- (id)_textDisplayStringForHeight:(id)a3
{
  if (self->_isMetricLocale)
  {
    v4 = a3;
    v5 = [(HKBridgeHealthProfileController *)self lengthFormatter];
    v6 = [HKUnit meterUnitWithMetricPrefix:5];
    [v4 doubleValueForUnit:v6];
    v8 = v7;

    v9 = [v5 stringFromValue:9 unit:v8];
  }

  else
  {
    v10 = a3;
    v5 = +[HKPersonHeightFormatter sharedFormatter];
    v6 = [HKUnit meterUnitWithMetricPrefix:5];
    [v10 doubleValueForUnit:v6];
    v12 = v11;

    v13 = [NSNumber numberWithDouble:v12];
    v9 = [v5 localizedStringFromHeightInCentimeters:v13];
  }

  return v9;
}

- (void)_setHeight:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HKBridgeHealthProfileController *)self healthStore];
    [v5 _setHeightCharacteristicQuantity:v4 error:0];
  }
}

- (void)_updateWeight
{
  v3 = [(HKBridgeHealthProfileController *)self healthStore];
  v9 = 0;
  v4 = [v3 _bodyMassCharacteristicQuantityWithError:&v9];
  v5 = v9;

  if (v5)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      sub_C0D4();
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_6:
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"WEIGHT_NOT_SET" value:&stru_188B0 table:@"Localizable"];
      v8 = [(HKBridgeHealthProfileTableViewCell *)self->_weightCell detailTextLabel];
      [v8 setText:v7];

      goto LABEL_7;
    }
  }

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_4:
  objc_storeStrong(&self->_weight, v4);
  [(HKBridgeHealthProfileController *)self _updateDisplayWithWeightValue:v4];
LABEL_7:
}

- (void)_setWeight:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HKBridgeHealthProfileController *)self healthStore];
    [v5 _setBodyMassCharacteristicQuantity:v4 error:0];
  }
}

- (void)_updateDisplayWithWeightValue:(id)a3
{
  [a3 doubleValueForUnit:self->_localeWeightUnit];
  v5 = llround(v4);
  if (v5)
  {
    v6 = [(HKBridgeHealthProfileController *)self _displayStringForWeight:v5];
    v7 = [(HKBridgeHealthProfileTableViewCell *)self->_weightCell detailTextLabel];
    [v7 setText:v6];

    minWeightInLocaleUnit = self->_minWeightInLocaleUnit;
    if ((v5 - minWeightInLocaleUnit) > minWeightInLocaleUnit)
    {
      minWeightInLocaleUnit = v5 - minWeightInLocaleUnit;
    }

    if (minWeightInLocaleUnit >= self->_maxWeightInLocaleUnit)
    {
      maxWeightInLocaleUnit = self->_maxWeightInLocaleUnit;
    }

    else
    {
      maxWeightInLocaleUnit = minWeightInLocaleUnit;
    }

    weightPicker = self->_weightPicker;

    [(_BHSHealthProfilePickerView *)weightPicker selectRow:maxWeightInLocaleUnit inComponent:0 animated:0];
  }
}

- (id)_displayStringForWeight:(int64_t)a3
{
  v5 = [(HKBridgeHealthProfileController *)self massFormatter];
  v6 = [v5 stringFromValue:+[HKUnit massFormatterUnitFromUnit:](HKUnit unit:{"massFormatterUnitFromUnit:", self->_localeWeightUnit), a3}];

  return v6;
}

- (void)_resetSelectedCell
{
  v3 = [(HKBridgeHealthProfileController *)self view];
  [v3 endEditing:1];

  selectedCell = self->_selectedCell;
  self->_selectedCell = 0;
}

- (id)_minDate
{
  v2 = +[NSCalendar currentCalendar];
  v3 = +[NSDate date];
  v4 = [v2 components:4 fromDate:v3];

  [v4 setYear:{objc_msgSend(v4, "year") - 150}];
  [v4 setDay:1];
  [v4 setMonth:1];
  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  return v6;
}

- (id)_displayStringForWheelchairUse:(int64_t)a3
{
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_186E8[a3];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_188B0 table:@"Localizable"];
  }

  return v5;
}

- (void)_setWheelchairUse:(int64_t)a3
{
  if ([(HKBridgeHealthProfileController *)self wheelchairUseChanged])
  {
    [(HKBridgeHealthProfileController *)self _requestWheelchairDiagnosticsSubmissionIfNecessary];
    v6 = [(HKBridgeHealthProfileController *)self healthStore];
    v10 = 0;
    v7 = [v6 _setWheelchairUse:a3 error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        sub_C00C(v9, a2);
      }
    }

    [(HKBridgeHealthProfileController *)self setWheelchairUseChanged:0];
  }
}

- (void)_requestWheelchairDiagnosticsSubmissionIfNecessary
{
  if ([(HKBridgeHealthProfileController *)self wheelchairUse]== &dword_0 + 2)
  {
    v3 = +[MCProfileConnection sharedConnection];
    v4 = [v3 isDiagnosticSubmissionAllowed];

    if (v4)
    {
      v5 = +[MCProfileConnection sharedConnection];
      v6 = [v5 hasWheelchairDataSubmissionAllowedBeenSet];

      if ((v6 & 1) == 0)
      {
        v7 = [NSBundle bundleForClass:objc_opt_class()];
        v8 = [v7 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_TITLE" value:&stru_188B0 table:@"Localizable"];
        v9 = [NSBundle bundleForClass:objc_opt_class()];
        v10 = [v9 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_DESCRIPTION" value:&stru_188B0 table:@"Localizable"];
        v11 = [UIAlertController alertControllerWithTitle:v8 message:v10 preferredStyle:1];

        v12 = [NSBundle bundleForClass:objc_opt_class()];
        v13 = [v12 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_ALLOW" value:&stru_188B0 table:@"Localizable"];
        v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&stru_18608];
        [v11 addAction:v14];

        v15 = [NSBundle bundleForClass:objc_opt_class()];
        v16 = [v15 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_MORE_INFO" value:&stru_188B0 table:@"Localizable"];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_59D8;
        v21[3] = &unk_18630;
        v21[4] = self;
        v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:v21];
        [v11 addAction:v17];

        v18 = [NSBundle bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"FEEDBACK_WHEELCHAIR_DENY" value:&stru_188B0 table:@"Localizable"];
        v20 = [UIAlertAction actionWithTitle:v19 style:0 handler:&stru_18650];
        [v11 addAction:v20];

        [(HKBridgeHealthProfileController *)self presentViewController:v11 animated:1 completion:0];
      }
    }
  }
}

- (int64_t)numberOfComponentsInPickerView:(id)a3
{
  if (self->_heightPicker != a3)
  {
    return 1;
  }

  if (self->_isMetricLocale)
  {
    return 1;
  }

  return 2;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v6 = a3;
  if (self->_biologicalSexPicker == v6)
  {
    v7 = 4;
  }

  else if (self->_heightPicker == v6)
  {
    if (self->_isMetricLocale)
    {
      v7 = 246;
    }

    else if (a4)
    {
      v7 = 12;
    }

    else
    {
      v7 = 9;
    }
  }

  else if (self->_weightPicker == v6)
  {
    v7 = self->_maxWeightInLocaleUnit - self->_minWeightInLocaleUnit + 1;
  }

  else if (self->_wheelchairUsePicker == v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setDefaultValuesOnHeightPickerIfRequired
{
  if (!self->_height)
  {
    v4 = [HKUnit meterUnitWithMetricPrefix:5];
    v5 = [HKQuantity quantityWithUnit:v4 doubleValue:162.0];

    [(HKBridgeHealthProfileController *)self _updatePickersForHeight:v5];
  }
}

- (void)_setDefaultValuesOnWeightPickerIfRequired
{
  if (!self->_weight)
  {
    v4 = +[HKUnit poundUnit];
    v6 = [HKQuantity quantityWithUnit:v4 doubleValue:159.0];

    [v6 doubleValueForUnit:self->_localeWeightUnit];
    [(_BHSHealthProfilePickerView *)self->_weightPicker selectRow:llround(v5) - self->_minWeightInLocaleUnit inComponent:0 animated:0];
  }
}

- (void)_setDefaultValuesOnBirthdayPickerIfRequired
{
  if (!self->_dateOfBirth)
  {
    v4 = +[NSCalendar currentCalendar];
    v5 = +[NSDate date];
    v6 = [v4 dateByAddingUnit:4 value:-30 toDate:v5 options:0];

    [(_BHSHealthProfileDatePicker *)self->_birthdatePicker setDate:v6];
  }
}

- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (self->_biologicalSexPicker == v8)
  {
    v11 = [(HKBridgeHealthProfileController *)self _displayStringForBiologicalSex:a4];
  }

  else if (self->_heightPicker == v8)
  {
    v11 = [(HKBridgeHealthProfileController *)self _pickerDisplayStringForHeightForRow:a4 forComponent:a5];
  }

  else if (self->_weightPicker == v8)
  {
    v11 = [(HKBridgeHealthProfileController *)self _displayStringForWeight:self->_minWeightInLocaleUnit + a4];
  }

  else
  {
    if (self->_wheelchairUsePicker != v8)
    {
      v10 = &stru_188B0;
      goto LABEL_11;
    }

    v11 = [(HKBridgeHealthProfileController *)self _displayStringForWheelchairUse:a4];
  }

  v10 = v11;
LABEL_11:
  v12 = [NSAttributedString alloc];
  v17 = NSForegroundColorAttributeName;
  v13 = [objc_opt_class() _textColor];
  v18 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v15 = [v12 initWithString:v10 attributes:v14];

  return v15;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v7 = a3;
  if (self->_biologicalSexPicker == v7)
  {
    self->_biologicalSex = a4;
    v14 = v7;
    v8 = [(HKBridgeHealthProfileController *)self _displayStringForBiologicalSex:a4];
    v9 = 48;
    goto LABEL_10;
  }

  if (self->_heightPicker == v7)
  {
    v14 = v7;
    [(HKBridgeHealthProfileController *)self _heightPickerUpdated];
LABEL_11:
    v7 = v14;
    goto LABEL_12;
  }

  if (self->_weightPicker == v7)
  {
    v10 = self->_minWeightInLocaleUnit + a4;
    v14 = v7;
    v11 = [HKQuantity quantityWithUnit:self->_localeWeightUnit doubleValue:v10];
    weight = self->_weight;
    self->_weight = v11;

    v8 = [(HKBridgeHealthProfileController *)self _displayStringForWeight:v10];
    v9 = 112;
    goto LABEL_10;
  }

  if (self->_wheelchairUsePicker == v7 && self->_wheelchairUse != a4)
  {
    v14 = v7;
    [(HKBridgeHealthProfileController *)self setWheelchairUseChanged:1];
    [(HKBridgeHealthProfileController *)self setWheelchairUse:a4];
    v8 = [(HKBridgeHealthProfileController *)self _displayStringForWheelchairUse:a4];
    v9 = 96;
LABEL_10:
    v13 = [*(&self->super.super.super.super.isa + v9) detailTextLabel];
    [v13 setText:v8];

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_heightPickerUpdated
{
  isMetricLocale = self->_isMetricLocale;
  v4 = [(_BHSHealthProfilePickerView *)self->_heightPicker selectedRowInComponent:0];
  if (isMetricLocale)
  {
    v5 = v4 + 30;
    [HKUnit meterUnitWithMetricPrefix:5];
  }

  else
  {
    v5 = [(_BHSHealthProfilePickerView *)self->_heightPicker selectedRowInComponent:1]+ 12 * v4 + 12;
    +[HKUnit inchUnit];
  }
  v6 = ;
  v7 = [HKQuantity quantityWithUnit:v6 doubleValue:v5];

  height = self->_height;
  self->_height = v7;
  v9 = v7;

  v11 = [(HKBridgeHealthProfileController *)self _textDisplayStringForHeight:v9];
  v10 = [(HKBridgeHealthProfileTableViewCell *)self->_heightCell detailTextLabel];

  [v10 setText:v11];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [a3 cellForRowAtIndexPath:a4];
  obj = v5;
  if (v5 == self->_betaBlockerUseCell)
  {
    v10 = self;
    v11 = obj;
    v12 = 2;
LABEL_10:
    v7 = [(HKBridgeHealthProfileController *)v10 updateCheckMarksForCell:v11 option:v12];
    goto LABEL_14;
  }

  if (v5 == self->_calciumChannelBlockerUseCell)
  {
    v10 = self;
    v11 = obj;
    v12 = 1;
    goto LABEL_10;
  }

  selectedCell = self->_selectedCell;
  v7 = [(HKBridgeHealthProfileController *)self _resetSelectedCell];
  v8 = obj;
  if (obj == selectedCell)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&self->_selectedCell, obj);
  v9 = self->_selectedCell;
  if (v9 == self->_heightCell)
  {
    [(HKBridgeHealthProfileController *)self _setDefaultValuesOnHeightPickerIfRequired];
  }

  else if (v9 == self->_weightCell)
  {
    [(HKBridgeHealthProfileController *)self _setDefaultValuesOnWeightPickerIfRequired];
  }

  else if (v9 == self->_birthdateCell)
  {
    [(HKBridgeHealthProfileController *)self _setDefaultValuesOnBirthdayPickerIfRequired];
  }

  v7 = [(HKBridgeHealthProfileTableViewCell *)obj becomeFirstResponder];
LABEL_14:
  v8 = obj;
LABEL_15:

  _objc_release_x1(v7, v8);
}

- (void)updateCheckMarksForCell:(id)a3 option:(unint64_t)a4
{
  v6 = self->_currentCardioFitnessMedicationsUse & a4;
  v7 = a3;
  if (v6)
  {
    v8 = [(HKBridgeHealthProfileController *)self _circleImageView];
    [v7 setEditingAccessoryView:v8];

    v9 = self->_currentCardioFitnessMedicationsUse & ~a4;
    v10 = -1;
  }

  else
  {
    v11 = [(HKBridgeHealthProfileController *)self _checkmarkedCircleImageView];
    [v7 setEditingAccessoryView:v11];

    v9 = self->_currentCardioFitnessMedicationsUse | a4;
    v10 = 1;
  }

  self->_activeCardioFitnessMedications += v10;
  self->_currentCardioFitnessMedicationsUse = v9;
  v12 = [(HKBridgeHealthProfileController *)self displayNumberOfActiveCardioFitnessMedications:?];
  [(HKBridgeHealthProfileTableViewCell *)self->_cardioFitnessMedicationsCell _setBadgeText:v12];
}

- (id)_circleImageView
{
  v2 = objc_alloc_init(UIImageView);
  v3 = [UIImage systemImageNamed:@"circle"];
  [v2 setImage:v3];

  v4 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleBody];
  v5 = [UIImageSymbolConfiguration configurationWithFont:v4];
  [v2 setPreferredSymbolConfiguration:v5];

  [v2 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  return v2;
}

- (id)_checkmarkedCircleImageView
{
  v2 = objc_alloc_init(UIImageView);
  v3 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
  [v2 setImage:v3];

  v4 = [UIFont hk_preferredFontForTextStyle:UIFontTextStyleBody];
  v5 = [UIImageSymbolConfiguration configurationWithFont:v4];
  [v2 setPreferredSymbolConfiguration:v5];

  [v2 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  return v2;
}

@end