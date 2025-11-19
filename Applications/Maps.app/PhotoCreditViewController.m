@interface PhotoCreditViewController
- (NSDirectionalEdgeInsets)collectionViewListSectionContentInsetsForSection:(int64_t)a3;
- (PhotoCreditViewController)initWithCompletionHandler:(id)a3;
- (PhotoCreditViewControllerDelegate)delegate;
- (double)heightForLayout:(unint64_t)a3;
- (id)collectionViewLayoutBoundarySupplementaryItems;
- (void)_presentAlertForError:(id)a3;
- (void)cancelAction:(id)a3;
- (void)closeAction:(id)a3;
- (void)didTapOnPrivacyText;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadView;
- (void)photoCreditNameHasBeenFlaggedWithErrorMessage:(id)a3;
- (void)setupSubviews;
- (void)submitAction:(id)a3;
- (void)updateAppearanceForPhotoCredit:(BOOL)a3 photoCreditNameExists:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PhotoCreditViewController

- (PhotoCreditViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)photoCreditNameHasBeenFlaggedWithErrorMessage:(id)a3
{
  [(PhotoCreditViewController *)self _presentAlertForError:a3];
  v4 = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [v4 setEnabled:0];
}

- (void)updateAppearanceForPhotoCredit:(BOOL)a3 photoCreditNameExists:(BOOL)a4
{
  v4 = a4;
  v5 = !a3;
  v6 = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [v6 setEnabled:v5 | v4];
}

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 > 5)
  {
    v4 = -1.0;
  }

  else
  {
    if (((1 << a3) & 0x27) != 0)
    {
      return 350.0;
    }

    v5 = [(ContaineeViewController *)self cardPresentationController];
    [v5 availableHeight];
    v4 = v6;
  }

  v7 = [(ContaineeViewController *)self cardPresentationController];
  v8 = [v7 containerStyle];

  if (v8 == 6)
  {
    v9 = [(ContaineeViewController *)self cardPresentationController];
    [v9 availableHeight];
    v4 = v10;
  }

  return v4;
}

- (void)keyboardWillHide:(id)a3
{
  v4 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [v4 contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [v11 setContentInset:{v6, v8, 0.0, v10}];

  v12 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [v12 setScrollIndicatorInsets:{v6, v8, 0.0, v10}];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(PreferencesValuesContaineeViewController *)self collectionView];
  v15 = +[UIScreen mainScreen];
  v16 = [v15 coordinateSpace];
  [v14 convertRect:v16 fromCoordinateSpace:{v7, v9, v11, v13}];
  v18 = v17;

  v19 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [v19 contentInset];
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [v26 setContentInset:{v21, v23, v18, v25}];
}

- (void)didTapOnPrivacyText
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.ratingsAndPhotos"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)_presentAlertForError:(id)a3
{
  v7 = [UIAlertController alertControllerWithTitle:0 message:a3 preferredStyle:1];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"OK [Photo Credit alert acceptance button]" value:@"localized string not found" table:0];
  v6 = [UIAlertAction actionWithTitle:v5 style:0 handler:0];

  [v7 addAction:v6];
  [(PhotoCreditViewController *)self _maps_topMostPresentViewController:v7 animated:1 completion:0];
}

- (void)submitAction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(PhotoCreditViewController *)self photoCreditDataSource];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006AE214;
  v6[3] = &unk_10165EF68;
  objc_copyWeak(&v7, &location);
  [v5 updatePhotoCreditPreferencesWithCompletion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)closeAction:(id)a3
{
  v7 = a3;
  if (sub_10000FA08(self) == 5)
  {
    [(PhotoCreditViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v4 = [(PhotoCreditViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(PhotoCreditViewController *)self delegate];
      [v6 photoCreditViewControllerWillDismiss:self];
    }

    [(ContaineeViewController *)self handleDismissAction:v7];
  }
}

- (void)cancelAction:(id)a3
{
  v4 = a3;
  [GEOAPPortal captureUserAction:18 target:77 value:0];
  [(PhotoCreditViewController *)self closeAction:v4];
}

- (id)collectionViewLayoutBoundarySupplementaryItems
{
  v3 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v4 = [(PhotoCreditViewController *)self photoCreditDataSource];
  v5 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [v4 footerHeightForCollectionView:v5];
  v6 = [NSCollectionLayoutDimension absoluteDimension:?];
  v7 = [NSCollectionLayoutSize sizeWithWidthDimension:v3 heightDimension:v6];

  v8 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v7 elementKind:UICollectionElementKindSectionFooter alignment:5];
  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];

  return v9;
}

- (NSDirectionalEdgeInsets)collectionViewListSectionContentInsetsForSection:(int64_t)a3
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIKeyboardWillHideNotification object:0];

  v7.receiver = self;
  v7.super_class = PhotoCreditViewController;
  [(ContaineeViewController *)&v7 viewWillDisappear:v3];
}

- (void)viewDidLoad
{
  v61.receiver = self;
  v61.super_class = PhotoCreditViewController;
  [(PreferencesValuesContaineeViewController *)&v61 viewDidLoad];
  [(PhotoCreditViewController *)self setAccessibilityIdentifier:@"PhotoCreditConfiguration"];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(PhotoCreditViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(ContaineeViewController *)self headerView];
  v6 = [(ContaineeViewController *)self contentView];
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
  [v5 addSubview:v7];
  objc_storeStrong(&self->_modalHeaderView, v7);
  v12 = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [v12 setEnabled:0];

  v13 = +[UIColor secondarySystemBackgroundColor];
  v14 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [v14 setBackgroundColor:v13];

  v15 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [v16 setAccessibilityIdentifier:@"PhotoCreditCollectionView"];

  v17 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [PhotoCreditDataSource registerCellsInCollectionView:v17];

  v18 = [(PreferencesValuesContaineeViewController *)self collectionView];
  [v6 addSubview:v18];

  v56 = [(ModalCardHeaderView *)v7 topAnchor];
  v55 = [v5 topAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v63[0] = v54;
  v53 = [(ModalCardHeaderView *)v7 leadingAnchor];
  v52 = [v5 leadingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v63[1] = v51;
  v50 = [(ModalCardHeaderView *)v7 trailingAnchor];
  v49 = [v5 trailingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v63[2] = v48;
  v59 = v7;
  v47 = [(ModalCardHeaderView *)v7 bottomAnchor];
  v46 = [v5 bottomAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v63[3] = v45;
  v60 = v5;
  v44 = [v5 heightAnchor];
  v43 = [v44 constraintEqualToConstant:72.0];
  v63[4] = v43;
  v42 = [(PreferencesValuesContaineeViewController *)self collectionView];
  v41 = [v42 topAnchor];
  v40 = [v6 topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v63[5] = v39;
  v38 = [(PreferencesValuesContaineeViewController *)self collectionView];
  v37 = [v38 leadingAnchor];
  v36 = [v6 leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v63[6] = v35;
  v34 = [(PreferencesValuesContaineeViewController *)self collectionView];
  v19 = [v34 trailingAnchor];
  v20 = [v6 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v63[7] = v21;
  v22 = [(PreferencesValuesContaineeViewController *)self collectionView];
  v23 = [v22 bottomAnchor];
  v24 = [v6 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v63[8] = v25;
  v26 = [NSArray arrayWithObjects:v63 count:9];
  [NSLayoutConstraint activateConstraints:v26];

  if (sub_10000FA08(self) == 5)
  {
    v27 = [v6 widthAnchor];
    v28 = [v27 constraintEqualToConstant:400.0];
    v62[0] = v28;
    v29 = [v6 heightAnchor];
    v30 = [v29 constraintEqualToConstant:250.0];
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

- (PhotoCreditViewController)initWithCompletionHandler:(id)a3
{
  v4 = a3;
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
    v9 = [(ContaineeViewController *)v5 cardPresentationController];
    [v9 setPresentedModally:1];

    [(PhotoCreditViewController *)v5 setModalPresentationStyle:2];
    v10 = [(ContaineeViewController *)v5 cardPresentationController];
    [v10 setTakesAvailableHeight:1];

    v11 = [v4 copy];
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v11;
  }

  return v5;
}

@end