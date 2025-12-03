@interface TravelPreferencesViewController
- (NSDirectionalEdgeInsets)collectionViewListSectionContentInsetsForSection:(int64_t)section;
- (TravelPreferencesViewController)initWithCompletionHandler:(id)handler;
- (void)dataSourceDidRebuildSections:(id)sections;
- (void)didTapOnPrivacyText;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)reloadData;
- (void)setupSubviews;
- (void)valueChangedForGEOConfigKey:(id)key;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TravelPreferencesViewController

- (void)reloadData
{
  travelPreferencesDataSource = [(TravelPreferencesViewController *)self travelPreferencesDataSource];
  [travelPreferencesDataSource loadPreferences];

  travelPreferencesDataSource2 = [(TravelPreferencesViewController *)self travelPreferencesDataSource];
  [travelPreferencesDataSource2 sendBiomeDiscoverabilitySignalsWithContext:@"Siri-Instruction"];
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  if (key.var0 == 736 && key.var1 == &unk_101644C90)
  {
    [(TravelPreferencesViewController *)self reloadData];
  }
}

- (void)keyboardWillHide:(id)hide
{
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  collectionView = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  collectionView2 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView2 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  collectionView = [(PreferencesValuesContaineeViewController *)self collectionView];
  v15 = +[UIScreen mainScreen];
  coordinateSpace = [v15 coordinateSpace];
  [collectionView convertRect:coordinateSpace fromCoordinateSpace:{v7, v9, v11, v13}];
  v18 = v17;

  collectionView2 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView2 setContentInset:{0.0, 0.0, v18, 0.0}];
}

- (void)didTapOnPrivacyText
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.ratingsAndPhotos"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)dataSourceDidRebuildSections:(id)sections
{
  v3.receiver = self;
  v3.super_class = TravelPreferencesViewController;
  [(PreferencesValuesContaineeViewController *)&v3 dataSourceDidRebuildSections:sections];
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  tappedCopy = tapped;
  objc_initWeak(&location, self);
  if (MapsFeature_IsEnabled_SydneyARP())
  {
    travelPreferencesDataSource = [(TravelPreferencesViewController *)self travelPreferencesDataSource];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1009C4824;
    v7[3] = &unk_101636260;
    objc_copyWeak(&v9, &location);
    v8 = tappedCopy;
    [travelPreferencesDataSource updatePhotoCreditPreferencesWithCompletion:v7];

    objc_destroyWeak(&v9);
  }

  else
  {
    [(ContaineeViewController *)self handleDismissAction:tappedCopy];
  }

  objc_destroyWeak(&location);
}

- (NSDirectionalEdgeInsets)collectionViewListSectionContentInsetsForSection:(int64_t)section
{
  if ([(PreferenceValuesDataSource *)self->super._dataSource numberOfSections]- 2 == section)
  {
    v3 = 6.0;
  }

  else
  {
    v3 = 10.0;
  }

  v4 = 0.0;
  v5 = 16.0;
  v6 = 16.0;
  result.trailing = v6;
  result.bottom = v3;
  result.leading = v5;
  result.top = v4;
  return result;
}

- (void)setupSubviews
{
  v2.receiver = self;
  v2.super_class = TravelPreferencesViewController;
  [(PreferencesValuesContaineeViewController *)&v2 setupSubviews];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIKeyboardWillHideNotification object:0];

  GEOConfigRemoveDelegateListenerForKey();
  v7.receiver = self;
  v7.super_class = TravelPreferencesViewController;
  [(ContaineeViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewDidLoad
{
  v55.receiver = self;
  v55.super_class = TravelPreferencesViewController;
  [(PreferencesValuesContaineeViewController *)&v55 viewDidLoad];
  view = [(TravelPreferencesViewController *)self view];
  [view setAccessibilityIdentifier:@"TravelPreferencesView"];

  v4 = +[UIColor clearColor];
  view2 = [(TravelPreferencesViewController *)self view];
  [view2 setBackgroundColor:v4];

  headerView = [(ContaineeViewController *)self headerView];
  contentView = [(ContaineeViewController *)self contentView];
  v8 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ContainerHeaderView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)v8 setDelegate:self];
  [(ContainerHeaderView *)v8 setHeaderSize:2];
  [(ContainerHeaderView *)v8 setHairLineAlpha:0.0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"[User Profile] Preferences" value:@"localized string not found" table:0];
  [(ContainerHeaderView *)v8 setTitle:v10];

  v11 = +[UIColor clearColor];
  [(ContainerHeaderView *)v8 setBackgroundColor:v11];

  [headerView addSubview:v8];
  titleHeaderView = self->_titleHeaderView;
  self->_titleHeaderView = v8;
  v13 = v8;

  collectionView = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView setAccessibilityIdentifier:@"TravelPreferencesCollectionView"];

  v15 = +[UIColor clearColor];
  collectionView2 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView2 setBackgroundColor:v15];

  collectionView3 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView4 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [TravelPreferencesDataSource registerCellsInCollectionView:collectionView4];

  collectionView5 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [contentView addSubview:collectionView5];

  topAnchor = [(ContainerHeaderView *)v13 topAnchor];
  topAnchor2 = [headerView topAnchor];
  v50 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v56[0] = v50;
  leadingAnchor = [(ContainerHeaderView *)v13 leadingAnchor];
  leadingAnchor2 = [headerView leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v56[1] = v47;
  v53 = v13;
  trailingAnchor = [(ContainerHeaderView *)v13 trailingAnchor];
  v54 = headerView;
  trailingAnchor2 = [headerView trailingAnchor];
  v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v56[2] = v43;
  bottomAnchor = [(ContainerHeaderView *)v13 bottomAnchor];
  bottomAnchor2 = [headerView bottomAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v56[3] = v40;
  collectionView6 = [(PreferencesValuesContaineeViewController *)self collectionView];
  topAnchor3 = [collectionView6 topAnchor];
  v20 = contentView;
  topAnchor4 = [contentView topAnchor];
  v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v56[4] = v36;
  collectionView7 = [(PreferencesValuesContaineeViewController *)self collectionView];
  leadingAnchor3 = [collectionView7 leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v56[5] = v32;
  collectionView8 = [(PreferencesValuesContaineeViewController *)self collectionView];
  trailingAnchor3 = [collectionView8 trailingAnchor];
  v44 = contentView;
  trailingAnchor4 = [contentView trailingAnchor];
  v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v56[6] = v24;
  collectionView9 = [(PreferencesValuesContaineeViewController *)self collectionView];
  bottomAnchor3 = [collectionView9 bottomAnchor];
  bottomAnchor4 = [v20 bottomAnchor];
  v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v56[7] = v28;
  v29 = [NSArray arrayWithObjects:v56 count:8];
  [NSLayoutConstraint activateConstraints:v29];

  v30 = +[NSNotificationCenter defaultCenter];
  [v30 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v31 = +[NSNotificationCenter defaultCenter];
  [v31 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];

  _GEOConfigAddDelegateListenerForKey();
}

- (TravelPreferencesViewController)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = TravelPreferencesViewController;
  v5 = [(TravelPreferencesViewController *)&v14 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = objc_alloc_init(TravelPreferencesDataSource);
    [(PreferenceValuesDataSource *)v6 setDelegate:v5];
    [(TravelPreferencesDataSource *)v6 setPrivacyDelegate:v5];
    dataSource = v5->super._dataSource;
    v5->super._dataSource = &v6->super;
    v8 = v6;

    [(TravelPreferencesDataSource *)v8 loadPreferences];
    cardPresentationController = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    v11 = [handlerCopy copy];
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v11;
  }

  return v5;
}

@end