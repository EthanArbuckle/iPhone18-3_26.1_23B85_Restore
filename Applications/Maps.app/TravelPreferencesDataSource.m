@interface TravelPreferencesDataSource
+ (void)registerCellsInCollectionView:(id)a3;
- (SupplementaryElementsDataSourceDelegate)privacyDelegate;
- (TravelPreferencesDataSource)init;
- (double)heightOfViewAtSection:(int64_t)a3 collectionView:(id)a4;
- (id)_cyclingSectionTitle;
- (id)_directionsSectionTitle;
- (id)_distancesSectionTitle;
- (id)_drivingSectionTitle;
- (id)_ebikeSectionTitle;
- (id)_notificationsRowTitle;
- (id)_photoCreditNameValidationErrorMessage;
- (id)_photoCreditSectionTitle;
- (id)_settingsRowTitle;
- (id)_transitSectionTitle;
- (id)_walkingSectionTitle;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (void)dealloc;
- (void)fetchPhotoCreditPreferences;
- (void)loadPreferences;
- (void)prepareContent;
- (void)privacyTextTapped;
- (void)sendBiomeDiscoverabilitySignalsWithContext:(id)a3;
- (void)updatePhotoCreditPreferencesWithCompletion:(id)a3;
@end

@implementation TravelPreferencesDataSource

+ (void)registerCellsInCollectionView:(id)a3
{
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___TravelPreferencesDataSource;
  v3 = a3;
  objc_msgSendSuper2(&v15, "registerCellsInCollectionView:", v3);
  v4 = objc_opt_class();
  v5 = _UICollectionViewListLayoutElementKindSectionHeader;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 registerClass:v4 forSupplementaryViewOfKind:v5 withReuseIdentifier:{v7, v15.receiver, v15.super_class}];

  v8 = objc_opt_class();
  v9 = _UICollectionViewListLayoutElementKindSectionFooter;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v3 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v11];

  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v3 registerClass:v12 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v14];
}

- (SupplementaryElementsDataSourceDelegate)privacyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_privacyDelegate);

  return WeakRetained;
}

- (void)sendBiomeDiscoverabilitySignalsWithContext:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100751190;
  block[3] = &unk_101661B18;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (id)_notificationsRowTitle
{
  v3 = [(TravelPreferencesDataSource *)self notificationSettings];
  v4 = @"[User Profile] Notification Settings";
  if (v3)
  {
    v5 = v3;
    v6 = [(TravelPreferencesDataSource *)self notificationSettings];
    v7 = [v6 authorizationStatus];

    if (!v7)
    {
      v4 = @"[User Profile] Enable Notifications";
    }
  }

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:v4 value:@"localized string not found" table:0];

  return v9;
}

- (id)_settingsRowTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[User Profile] Maps Settings" value:@"localized string not found" table:0];

  return v3;
}

- (id)_photoCreditSectionTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[User Profile] Photo Credit" value:@"localized string not found" table:0];

  return v3;
}

- (id)_distancesSectionTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[User Profile] Distances" value:@"localized string not found" table:0];

  return v3;
}

- (id)_transitSectionTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[User Profile] Transit" value:@"localized string not found" table:0];

  return v3;
}

- (id)_cyclingSectionTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[User Profile] Cycling" value:@"localized string not found" table:0];

  return v3;
}

- (id)_ebikeSectionTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[User Profile] My Bike" value:@"localized string not found" table:0];

  return v3;
}

- (id)_walkingSectionTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[User Profile] Walking" value:@"localized string not found" table:0];

  return v3;
}

- (id)_drivingSectionTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[User Profile] Driving" value:@"localized string not found" table:0];

  return v3;
}

- (id)_directionsSectionTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[User Profile] Directions" value:@"localized string not found" table:0];

  return v3;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = TravelPreferencesDataSource;
  v4 = [(PreferenceValuesDataSource *)&v8 collectionView:a3 cellForItemAtIndexPath:a4];
  v5 = +[UIBackgroundConfiguration listCellConfiguration];
  v6 = [v5 backgroundColor];
  [v4 setBackgroundColor:v6];

  return v4;
}

- (double)heightOfViewAtSection:(int64_t)a3 collectionView:(id)a4
{
  [a4 frame];
  v7 = v6;
  v8 = [[UserProfilePreferencesHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = [(TravelPreferencesDataSource *)self _directionsSectionTitle];
  v10 = [(TravelPreferencesDataSource *)self _drivingSectionTitle];
  v11 = [(TravelPreferencesDataSource *)self _walkingSectionTitle];
  v12 = [NSMutableArray arrayWithObjects:v9, v10, v11, 0];

  if (sub_10072B0F0())
  {
    v13 = [(TravelPreferencesDataSource *)self _ebikeSectionTitle];
    [v12 addObject:v13];
  }

  height = UILayoutFittingExpandedSize.height;
  if (sub_10072B16C())
  {
    v15 = [(TravelPreferencesDataSource *)self _cyclingSectionTitle];
    [v12 addObject:v15];
  }

  v16 = [(TravelPreferencesDataSource *)self _transitSectionTitle];
  [v12 addObject:v16];

  v17 = [(TravelPreferencesDataSource *)self _distancesSectionTitle];
  [v12 addObject:v17];

  v18 = [(TravelPreferencesDataSource *)self _settingsRowTitle];
  [v12 addObject:v18];

  v19 = [v12 objectAtIndexedSubscript:a3];
  v20 = [(UserProfilePreferencesHeaderView *)v8 textLabel];
  [v20 setText:v19];

  LODWORD(v21) = 1148846080;
  LODWORD(v22) = 1132068864;
  [(UserProfilePreferencesHeaderView *)v8 systemLayoutSizeFittingSize:v7 withHorizontalFittingPriority:height verticalFittingPriority:v21, v22];
  v24 = v23;

  return v24;
}

- (void)privacyTextTapped
{
  v2 = [(TravelPreferencesDataSource *)self privacyDelegate];
  [v2 didTapOnPrivacyText];
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _UICollectionViewListLayoutElementKindSectionHeader;
  if ([v9 isEqualToString:_UICollectionViewListLayoutElementKindSectionHeader])
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100751F04;
    v44[3] = &unk_1016282F0;
    v12 = &v45;
    v45 = v8;
    v13 = &v46;
    v14 = v9;
    v46 = v14;
    v15 = v10;
    v47 = v15;
    v16 = objc_retainBlock(v44);
    v17 = [(PreferenceValuesDataSource *)self sectionAtIndexPath:v15];
    if ([v14 isEqualToString:v11])
    {
      v18 = [v17 title];
      v19 = (v16[2])(v16, v18, 0);
    }

    else
    {
      v19 = (v16[2])(v16, 0, 0);
    }
  }

  else
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100752000;
    v41[3] = &unk_1016285B8;
    v20 = v8;
    v42 = v20;
    v13 = v43;
    v21 = v10;
    v43[0] = v21;
    v43[1] = self;
    v22 = objc_retainBlock(v41);
    if (MapsFeature_IsEnabled_SydneyARP() && self->_lagunaBeachSupported && (v23 = [v20 numberOfSections] - 2, objc_msgSend(v21, "section") == v23))
    {
      v40 = objc_alloc_init(NSMutableParagraphStyle);
      [v40 setLineBreakMode:0];
      v48[0] = NSParagraphStyleAttributeName;
      v48[1] = NSForegroundColorAttributeName;
      v49[0] = v40;
      v24 = +[UIColor secondaryLabelColor];
      v49[1] = v24;
      v39 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];

      v25 = [NSString alloc];
      v26 = +[NSBundle mainBundle];
      v27 = [v26 localizedStringForKey:@"[Travel Preferences] See how your data is managed…" value:@"localized string not found" table:0];
      v28 = [v25 initWithString:v27];

      v29 = +[NSBundle mainBundle];
      v30 = [v29 localizedStringForKey:@"[Travel Preferences] Get public credit by a nickname you choose for all your photos on Maps. Changes may take a few days to apply. [Link]" value:@"localized string not found" table:0];
      v38 = v28;
      v31 = [NSString stringWithFormat:v30, v28];

      v32 = [[NSMutableAttributedString alloc] initWithString:v31 attributes:v39];
      v33 = [v31 rangeOfString:v28];
      v35 = v34;
      v36 = +[UIColor systemBlueColor];
      [v32 addAttribute:NSForegroundColorAttributeName value:v36 range:{v33, v35}];
    }

    else
    {
      v32 = 0;
    }

    v19 = (v22[2])(v22, v32, 0);

    v12 = &v42;
  }

  return v19;
}

- (void)prepareContent
{
  v45.receiver = self;
  v45.super_class = TravelPreferencesDataSource;
  [(PreferenceValuesDataSource *)&v45 prepareContent];
  objc_initWeak(&location, self);
  v3 = objc_opt_new();
  [v3 addObject:&off_1016E6AB8];
  [v3 addObject:&off_1016E6AD0];
  [v3 addObject:&off_1016E6AE8];
  [v3 addObject:&off_1016E6B00];
  v4 = [(TravelPreferencesDataSource *)self _directionsSectionTitle];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1007527C4;
  v42[3] = &unk_1016612C8;
  v5 = v3;
  v43 = v5;
  [(PreferenceValuesDataSource *)self addSectionWithTitle:v4 content:v42];

  v6 = [(TravelPreferencesDataSource *)self _drivingSectionTitle];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100752868;
  v40[3] = &unk_10165E0A8;
  objc_copyWeak(&v41, &location);
  [(PreferenceValuesDataSource *)self addSectionWithTitle:v6 content:v40];

  v7 = [(TravelPreferencesDataSource *)self _walkingSectionTitle];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100752A38;
  v38[3] = &unk_10165E0A8;
  objc_copyWeak(&v39, &location);
  [(PreferenceValuesDataSource *)self addSectionWithTitle:v7 content:v38];

  if (!self->_countryObserver)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = +[NSOperationQueue mainQueue];
    v10 = GEOCountryConfigurationCountryCodeDidChangeNotification;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100752CD8;
    v36[3] = &unk_10165FBE8;
    objc_copyWeak(&v37, &location);
    v11 = [v8 addObserverForName:v10 object:0 queue:v9 usingBlock:v36];
    countryObserver = self->_countryObserver;
    self->_countryObserver = v11;

    objc_destroyWeak(&v37);
  }

  if (sub_10072B0F0())
  {
    v13 = [(TravelPreferencesDataSource *)self _ebikeSectionTitle];
    [(PreferenceValuesDataSource *)self addSectionWithTitle:v13 content:&stru_1016281C0];
  }

  if (sub_10072B16C())
  {
    v14 = [(TravelPreferencesDataSource *)self _cyclingSectionTitle];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100752D18;
    v34[3] = &unk_10165E0A8;
    objc_copyWeak(&v35, &location);
    [(PreferenceValuesDataSource *)self addSectionWithTitle:v14 content:v34];

    objc_destroyWeak(&v35);
  }

  v15 = objc_loadWeakRetained(&location);
  v16 = [v15 transitDataSource];

  v17 = [v16 numberOfSections];
  if (v17 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = [v16 numberOfRowsInSection:v18];
      v20 = [(TravelPreferencesDataSource *)self _transitSectionTitle];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100752EE8;
      v31[3] = &unk_101628268;
      v33[1] = v19;
      v32 = v16;
      v33[2] = v18;
      objc_copyWeak(v33, &location);
      [(PreferenceValuesDataSource *)self addSectionWithTitle:v20 content:v31];

      objc_destroyWeak(v33);
      ++v18;
    }

    while (v17 != v18);
  }

  if (MapsFeature_IsEnabled_SydneyARP() && self->_lagunaBeachSupported)
  {
    v21 = [(TravelPreferencesDataSource *)self _photoCreditSectionTitle];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10075306C;
    v29[3] = &unk_10165E0A8;
    objc_copyWeak(&v30, &location);
    [(PreferenceValuesDataSource *)self addSectionWithTitle:v21 content:v29];

    objc_destroyWeak(&v30);
  }

  v22 = objc_alloc_init(MapsDebugTableSection);
  v23 = [(TravelPreferencesDataSource *)self _settingsRowTitle];
  v24 = [(MapsDebugTableSection *)v22 addButtonRowWithTitle:v23 action:&stru_1016282C8];

  v25 = [(TravelPreferencesDataSource *)self _notificationsRowTitle];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10075330C;
  v27[3] = &unk_101661B98;
  objc_copyWeak(&v28, &location);
  v26 = [(MapsDebugTableSection *)v22 addButtonRowWithTitle:v25 action:v27];

  [(PreferenceValuesDataSource *)self addSection:v22];
  objc_destroyWeak(&v28);

  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);

  objc_destroyWeak(&location);
}

- (void)loadPreferences
{
  v3 = objc_alloc_init(GEOCyclingUserPreferences);
  cyclingPreferences = self->_cyclingPreferences;
  self->_cyclingPreferences = v3;

  v5 = [TransitPreferences alloc];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [(WatchSyncedPreferences *)v5 initWithDefaults:v6];

  v8 = [[TransitPreferencesViewControllerDataSource alloc] initWithPreferences:v7 displayHints:0];
  transitDataSource = self->_transitDataSource;
  self->_transitDataSource = v8;

  v10 = +[UNUserNotificationCenter currentNotificationCenter];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100754A14;
  v11[3] = &unk_101629CA8;
  v11[4] = self;
  [v10 getNotificationSettingsWithCompletionHandler:v11];
}

- (id)_photoCreditNameValidationErrorMessage
{
  if (![(NSString *)self->_photoCreditName length])
  {
    v6 = +[NSBundle mainBundle];
    v11 = [v6 localizedStringForKey:@"[Photo Credit] Photo Credit no nickname included error" value:@"localized string not found" table:0];
    goto LABEL_6;
  }

  Integer = GEOConfigGetInteger();
  v4 = GEOConfigGetInteger();
  if ([(NSString *)self->_photoCreditName length]< Integer || [(NSString *)self->_photoCreditName length]> v4)
  {
    v5 = [NSNumber numberWithInteger:Integer];
    v6 = [NSNumberFormatter localizedStringFromNumber:v5 numberStyle:0];

    v7 = [NSNumber numberWithInteger:v4];
    v8 = [NSNumberFormatter localizedStringFromNumber:v7 numberStyle:0];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[Photo Credit] Photo Credit name too short or long" value:@"localized string not found" table:0];

    v11 = [NSString stringWithFormat:v10, v6, v8];

LABEL_6:
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (void)updatePhotoCreditPreferencesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_didChangeAttributionPreferences)
  {
    v6 = [(TravelPreferencesDataSource *)self _photoCreditNameValidationErrorMessage];
    v7 = v6;
    if (!self->_photoCredit || v6 == 0)
    {
      v9 = +[UGCPhotoAttributionPreferencesManager sharedManager];
      photoCredit = self->_photoCredit;
      photoCreditName = self->_photoCreditName;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100754DF0;
      v12[3] = &unk_101628510;
      v13 = v5;
      [v9 updatePhotoAttributionPreferencesAttributePhotos:photoCredit attributionName:photoCreditName completion:v12];
    }

    else
    {
      v5[2](v5, v6);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)fetchPhotoCreditPreferences
{
  objc_initWeak(&location, self);
  v2 = +[UGCPhotoAttributionPreferencesManager sharedManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10075506C;
  v3[3] = &unk_10163B510;
  objc_copyWeak(&v4, &location);
  [v2 photoAttributionPreferencesWithCompletion:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  if (self->_countryObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_countryObserver];
  }

  v4.receiver = self;
  v4.super_class = TravelPreferencesDataSource;
  [(TravelPreferencesDataSource *)&v4 dealloc];
}

- (TravelPreferencesDataSource)init
{
  v5.receiver = self;
  v5.super_class = TravelPreferencesDataSource;
  v2 = [(TravelPreferencesDataSource *)&v5 init];
  if (v2)
  {
    if (MapsFeature_IsEnabled_SydneyARP())
    {
      [(TravelPreferencesDataSource *)v2 fetchPhotoCreditPreferences];
    }

    IsEnabled_LagunaBeach = MapsFeature_IsEnabled_LagunaBeach();
    if (IsEnabled_LagunaBeach)
    {
      LOBYTE(IsEnabled_LagunaBeach) = GEODoesUserHaveValidAccountForMakingContributions();
    }

    v2->_lagunaBeachSupported = IsEnabled_LagunaBeach;
  }

  return v2;
}

@end