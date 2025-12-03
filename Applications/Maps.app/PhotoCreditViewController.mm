@interface PhotoCreditViewController
- (NSDirectionalEdgeInsets)collectionViewListSectionContentInsetsForSection:(int64_t)section;
- (PhotoCreditViewController)initWithCompletionHandler:(id)handler;
- (PhotoCreditViewControllerDelegate)delegate;
- (double)heightForLayout:(unint64_t)layout;
- (id)collectionViewLayoutBoundarySupplementaryItems;
- (void)_presentAlertForError:(id)error;
- (void)cancelAction:(id)action;
- (void)closeAction:(id)action;
- (void)didTapOnPrivacyText;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)photoCreditNameHasBeenFlaggedWithErrorMessage:(id)message;
- (void)setupSubviews;
- (void)submitAction:(id)action;
- (void)updateAppearanceForPhotoCredit:(BOOL)credit photoCreditNameExists:(BOOL)exists;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PhotoCreditViewController

- (PhotoCreditViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)photoCreditNameHasBeenFlaggedWithErrorMessage:(id)message
{
  [(PhotoCreditViewController *)self _presentAlertForError:message];
  trailingButton = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [trailingButton setEnabled:0];
}

- (void)updateAppearanceForPhotoCredit:(BOOL)credit photoCreditNameExists:(BOOL)exists
{
  existsCopy = exists;
  v5 = !credit;
  trailingButton = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [trailingButton setEnabled:v5 | existsCopy];
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout > 5)
  {
    v4 = -1.0;
  }

  else
  {
    if (((1 << layout) & 0x27) != 0)
    {
      return 350.0;
    }

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController availableHeight];
    v4 = v6;
  }

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController2 containerStyle];

  if (containerStyle == 6)
  {
    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController3 availableHeight];
    v4 = v10;
  }

  return v4;
}

- (void)keyboardWillHide:(id)hide
{
  collectionView = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  collectionView2 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView2 setContentInset:{v6, v8, 0.0, v10}];

  collectionView3 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView3 setScrollIndicatorInsets:{v6, v8, 0.0, v10}];
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
  [collectionView2 contentInset];
  v21 = v20;
  v23 = v22;
  v25 = v24;

  collectionView3 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView3 setContentInset:{v21, v23, v18, v25}];
}

- (void)didTapOnPrivacyText
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.ratingsAndPhotos"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)_presentAlertForError:(id)error
{
  v7 = [UIAlertController alertControllerWithTitle:0 message:error preferredStyle:1];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"OK [Photo Credit alert acceptance button]" value:@"localized string not found" table:0];
  v6 = [UIAlertAction actionWithTitle:v5 style:0 handler:0];

  [v7 addAction:v6];
  [(PhotoCreditViewController *)self _maps_topMostPresentViewController:v7 animated:1 completion:0];
}

- (void)submitAction:(id)action
{
  actionCopy = action;
  objc_initWeak(&location, self);
  photoCreditDataSource = [(PhotoCreditViewController *)self photoCreditDataSource];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006AE214;
  v6[3] = &unk_10165EF68;
  objc_copyWeak(&v7, &location);
  [photoCreditDataSource updatePhotoCreditPreferencesWithCompletion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)closeAction:(id)action
{
  actionCopy = action;
  if (sub_10000FA08(self) == 5)
  {
    [(PhotoCreditViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    delegate = [(PhotoCreditViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(PhotoCreditViewController *)self delegate];
      [delegate2 photoCreditViewControllerWillDismiss:self];
    }

    [(ContaineeViewController *)self handleDismissAction:actionCopy];
  }
}

- (void)cancelAction:(id)action
{
  actionCopy = action;
  [GEOAPPortal captureUserAction:18 target:77 value:0];
  [(PhotoCreditViewController *)self closeAction:actionCopy];
}

- (id)collectionViewLayoutBoundarySupplementaryItems
{
  v3 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  photoCreditDataSource = [(PhotoCreditViewController *)self photoCreditDataSource];
  collectionView = [(PreferencesValuesContaineeViewController *)self collectionView];
  [photoCreditDataSource footerHeightForCollectionView:collectionView];
  v6 = [NSCollectionLayoutDimension absoluteDimension:?];
  v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v3 heightDimension:v6];

  v8 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v7 elementKind:UICollectionElementKindSectionFooter alignment:5];
  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];

  return v9;
}

- (NSDirectionalEdgeInsets)collectionViewListSectionContentInsetsForSection:(int64_t)section
{
  v3 = 0.0;
  v4 = 16.0;
  v5 = 10.0;
  v6 = 16.0;
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (void)setupSubviews
{
  v2.receiver = self;
  v2.super_class = PhotoCreditViewController;
  [(PreferencesValuesContaineeViewController *)&v2 setupSubviews];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIKeyboardWillHideNotification object:0];

  v7.receiver = self;
  v7.super_class = PhotoCreditViewController;
  [(ContaineeViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewDidLoad
{
  v61.receiver = self;
  v61.super_class = PhotoCreditViewController;
  [(PreferencesValuesContaineeViewController *)&v61 viewDidLoad];
  [(PhotoCreditViewController *)self setAccessibilityIdentifier:@"PhotoCreditConfiguration"];
  v3 = +[UIColor systemBackgroundColor];
  view = [(PhotoCreditViewController *)self view];
  [view setBackgroundColor:v3];

  headerView = [(ContaineeViewController *)self headerView];
  contentView = [(ContaineeViewController *)self contentView];
  v7 = [[_TtC4Maps19ModalCardHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ModalCardHeaderView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[Photo Credit] Photo Credit" value:@"localized string not found" table:0];
  [(ModalCardHeaderView *)v7 setTitle:v9];

  v10 = [MapsThemeButton buttonWithType:1];
  [v10 addTarget:self action:"cancelAction:" forControlEvents:64];
  v58 = v10;
  [(ModalCardHeaderView *)v7 setLeadingButton:v10];
  v11 = [MapsThemeButton buttonWithType:1];
  [v11 addTarget:self action:"submitAction:" forControlEvents:64];
  v57 = v11;
  [(ModalCardHeaderView *)v7 setTrailingButton:v11];
  [headerView addSubview:v7];
  objc_storeStrong(&self->_modalHeaderView, v7);
  trailingButton = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [trailingButton setEnabled:0];

  v13 = +[UIColor secondarySystemBackgroundColor];
  collectionView = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView setBackgroundColor:v13];

  collectionView2 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView3 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [collectionView3 setAccessibilityIdentifier:@"PhotoCreditCollectionView"];

  collectionView4 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [PhotoCreditDataSource registerCellsInCollectionView:collectionView4];

  collectionView5 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [contentView addSubview:collectionView5];

  topAnchor = [(ModalCardHeaderView *)v7 topAnchor];
  topAnchor2 = [headerView topAnchor];
  v54 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v63[0] = v54;
  leadingAnchor = [(ModalCardHeaderView *)v7 leadingAnchor];
  leadingAnchor2 = [headerView leadingAnchor];
  v51 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v63[1] = v51;
  trailingAnchor = [(ModalCardHeaderView *)v7 trailingAnchor];
  trailingAnchor2 = [headerView trailingAnchor];
  v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v63[2] = v48;
  v59 = v7;
  bottomAnchor = [(ModalCardHeaderView *)v7 bottomAnchor];
  bottomAnchor2 = [headerView bottomAnchor];
  v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v63[3] = v45;
  v60 = headerView;
  heightAnchor = [headerView heightAnchor];
  v43 = [heightAnchor constraintEqualToConstant:72.0];
  v63[4] = v43;
  collectionView6 = [(PreferencesValuesContaineeViewController *)self collectionView];
  topAnchor3 = [collectionView6 topAnchor];
  topAnchor4 = [contentView topAnchor];
  v39 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v63[5] = v39;
  collectionView7 = [(PreferencesValuesContaineeViewController *)self collectionView];
  leadingAnchor3 = [collectionView7 leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v63[6] = v35;
  collectionView8 = [(PreferencesValuesContaineeViewController *)self collectionView];
  trailingAnchor3 = [collectionView8 trailingAnchor];
  trailingAnchor4 = [contentView trailingAnchor];
  v21 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v63[7] = v21;
  collectionView9 = [(PreferencesValuesContaineeViewController *)self collectionView];
  bottomAnchor3 = [collectionView9 bottomAnchor];
  bottomAnchor4 = [contentView bottomAnchor];
  v25 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v63[8] = v25;
  v26 = [NSArray arrayWithObjects:v63 count:9];
  [NSLayoutConstraint activateConstraints:v26];

  if (sub_10000FA08(self) == 5)
  {
    widthAnchor = [contentView widthAnchor];
    v28 = [widthAnchor constraintEqualToConstant:400.0];
    v62[0] = v28;
    heightAnchor2 = [contentView heightAnchor];
    v30 = [heightAnchor2 constraintEqualToConstant:250.0];
    v62[1] = v30;
    v31 = [NSArray arrayWithObjects:v62 count:2];
    [NSLayoutConstraint activateConstraints:v31];
  }

  v32 = +[NSNotificationCenter defaultCenter];
  [v32 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v33 = +[NSNotificationCenter defaultCenter];
  [v33 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
}

- (void)loadView
{
  v3 = [[MacPhotoCreditView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(PhotoCreditViewController *)self setView:v3];
}

- (PhotoCreditViewController)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = PhotoCreditViewController;
  v5 = [(PhotoCreditViewController *)&v14 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = objc_alloc_init(PhotoCreditDataSource);
    [(PreferenceValuesDataSource *)v6 setDelegate:v5];
    [(PhotoCreditDataSource *)v6 setPhotoCreditChangesDelegate:v5];
    [(PhotoCreditDataSource *)v6 setPrivacyDelegate:v5];
    dataSource = v5->super._dataSource;
    v5->super._dataSource = &v6->super;
    v8 = v6;

    [(PhotoCreditDataSource *)v8 loadPreferences];
    cardPresentationController = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    [(PhotoCreditViewController *)v5 setModalPresentationStyle:2];
    cardPresentationController2 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    v11 = [handlerCopy copy];
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v11;
  }

  return v5;
}

@end