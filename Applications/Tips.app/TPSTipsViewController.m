@interface TPSTipsViewController
- (BOOL)canSearch;
- (BOOL)eligibleToPlayVideo;
- (BOOL)isSearchViewControllerPresented;
- (BOOL)updateBarButtonsForTip;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (TPSTipsViewControllerDelegate)delegate;
- (id)_currentViewMethod;
- (id)activityViewControllerForTip:(id)a3;
- (id)cellForCurrentTip;
- (id)centerCell;
- (id)centerCellIndexPath;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)createSearchController;
- (id)searchBarNavButton;
- (void)_adjustScrollViewPagingDecelerationForSize:(CGSize)a3;
- (void)_delayedIncreaseCountViewForCurrentTip:(id)a3;
- (void)_logTimeSpentBeforeCurrentTip:(id)a3;
- (void)analyticsIncreaseCountViewForCurrentTipDelay:(id)a3;
- (void)applicationDidBecomeActive;
- (void)applicationDidEnterBackground;
- (void)applicationWillTerminate;
- (void)cancelAssetsPrefetch;
- (void)cellContentLoaded:(id)a3;
- (void)commonInit;
- (void)contentLayoutChanged:(id)a3 userInfo:(id)a4;
- (void)continueVideoForCurrentTip;
- (void)createViews;
- (void)dealloc;
- (void)ensureCurrentTipPositionWithViewSize:(CGSize)a3;
- (void)initCellAppearanceWithTrait:(id)a3 size:(CGSize)a4;
- (void)logAppIntent:(id)a3 actionDirection:(id)a4;
- (void)networkStateDidChange:(BOOL)a3;
- (void)pageControlLongPressedForHUD:(id)a3 withText:(id)a4;
- (void)pageControlPageChanged:(id)a3;
- (void)playVideoIfNeeded;
- (void)prefetchMediaPrefetchDelay;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)reconfigureAllCollectionViewItems;
- (void)registerTraitChanges;
- (void)removeErrorView;
- (void)resetSearchController;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchWithSearchQuery:(id)a3;
- (void)setAllowBookmarks:(BOOL)a3;
- (void)setAllowPaging:(BOOL)a3;
- (void)setCurrentTip:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setShouldDisplayNavigationTitle:(BOOL)a3;
- (void)setShouldHoldOffVideo:(BOOL)a3;
- (void)setTips:(id)a3;
- (void)setupSearch;
- (void)setupSearchViewModel;
- (void)shareCurrentTip:(id)a3;
- (void)showErrorView:(id)a3;
- (void)stopVideoForCurrentTip;
- (void)tipCollectionViewCell:(id)a3 linkTappedForURL:(id)a4;
- (void)tipCollectionViewCell:(id)a3 showSafariViewForURL:(id)a4;
- (void)tipCollectionViewCell:(id)a3 showTryItModeForURL:(id)a4;
- (void)tipCollectionViewCell:(id)a3 showUserGuideWithIdentifier:(id)a4 topicId:(id)a5;
- (void)tipCollectionViewCell:(id)a3 showVideoForURL:(id)a4;
- (void)tipCollectionViewCellContentLayoutChanged:(id)a3;
- (void)tipCollectionViewCellHandleTripleTapInternalGesture:(id)a3;
- (void)tipCollectionViewCellSharedTipTapped:(id)a3;
- (void)toggleSavedTip:(id)a3;
- (void)tryItViewControllerDidDismissWithTryItViewController:(id)a3;
- (void)updateBarMaterial;
- (void)updateContentBackgroundWithTraitCollection:(id)a3;
- (void)updateNavigationBarButtons;
- (void)updateNavigationTitle:(id)a3;
- (void)updatePageControlToTip:(id)a3;
- (void)updatePagingScrollState;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateSearchResultsPresentationIfNeeded;
- (void)updateTipForCell:(id)a3 startVideo:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TPSTipsViewController

- (void)dealloc
{
  [(TPSTipsViewController *)self cancelAssetsPrefetch];
  v3 = objc_opt_new();
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_delayedIncreaseCountViewForCurrentTip:" object:v3];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];

  v6.receiver = self;
  v6.super_class = TPSTipsViewController;
  [(TPSViewController *)&v6 dealloc];
}

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = TPSTipsViewController;
  [(TPSViewController *)&v3 commonInit];
  self->_allowPaging = 1;
  self->_allowBookmarks = 1;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = TPSTipsViewController;
  [(TPSViewController *)&v21 viewDidLoad];
  v3 = [[TPSKVOManager alloc] initWithObserver:self];
  KVOManager = self->_KVOManager;
  self->_KVOManager = v3;

  v5 = +[TPSSavedTipsManager sharedInstance];
  savedTipsManager = self->_savedTipsManager;
  self->_savedTipsManager = v5;

  v7 = objc_alloc_init(TPSDeferredAction);
  scrolledDeferredAction = self->_scrolledDeferredAction;
  self->_scrolledDeferredAction = v7;

  [(TPSDeferredAction *)self->_scrolledDeferredAction setDelegate:self];
  v9 = objc_alloc_init(TPSTipsAssetPrefetchingManager);
  assetPrefetchingManager = self->_assetPrefetchingManager;
  self->_assetPrefetchingManager = v9;

  v11 = +[TPSAppearance defaultLabelColor];
  navigationTitleTextColor = self->_navigationTitleTextColor;
  self->_navigationTitleTextColor = v11;

  v13 = [(TPSTipsViewController *)self navigationItem];
  [v13 setLargeTitleDisplayMode:2];

  self->_currentPagingIndex = 0x7FFFFFFFFFFFFFFFLL;
  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v16 = [(TPSTipsViewController *)self view];
  [v16 bounds];
  self->_viewSize.width = v17;
  self->_viewSize.height = v18;

  [(TPSTipsViewController *)self createViews];
  [(TPSTipsViewController *)self setupSearch];
  v19 = [(TPSTipsViewController *)self view];
  v20 = [v19 traitCollection];
  [(TPSTipsViewController *)self updateContentBackgroundWithTraitCollection:v20];

  [(TPSTipsViewController *)self registerTraitChanges];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateCurrentTipUpdated = objc_opt_respondsToSelector() & 1;
    self->_delegateShouldShowSearch = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setAllowBookmarks:(BOOL)a3
{
  if (self->_allowBookmarks != a3)
  {
    self->_allowBookmarks = a3;
    [(TPSTipsViewController *)self updateNavigationBarButtons];
  }
}

- (void)setTips:(id)a3
{
  v5 = a3;
  if (self->_tips != v5)
  {
    objc_storeStrong(&self->_tips, a3);
    v6 = [(NSArray *)self->_tips count];
    v7 = [(TPSTipsViewController *)self pageControl];
    [v7 setNumberOfPages:v6];

    v8 = [(TPSAppViewController *)self appController];
    v9 = [v8 assetSizes];
    v10 = [v9 tip];

    v11 = [(TPSTipsViewController *)self tipSizes];
    LOBYTE(v9) = [v11 isEqual:v10];

    if ((v9 & 1) == 0)
    {
      [(TPSTipsViewController *)self setTipSizes:v10];
      [(TPSTipCellAppearance *)self->_cellAppearance updateAppearanceWithSize:self->_viewSize.width, self->_viewSize.height];
    }

    tipsMap = self->_tipsMap;
    v37 = v10;
    if (tipsMap)
    {
      [(NSMutableDictionary *)tipsMap removeAllObjects];
    }

    else
    {
      v13 = [&__NSDictionary0__struct mutableCopy];
      v14 = self->_tipsMap;
      self->_tipsMap = v13;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = v5;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          v21 = self->_tipsMap;
          v22 = [v20 identifier];
          [(NSMutableDictionary *)v21 setObject:v20 forKeyedSubscript:v22];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v17);
    }

    [(UICollectionView *)self->_collectionView reloadData];
    v23 = [(TPSTipsViewController *)self currentTip];
    v24 = [v23 identifier];
    v25 = [(TPSTipsViewController *)self tipForTipID:v24];

    if (v25)
    {
      v26 = [(TPSTipsViewController *)self view];
      [v26 bounds];
      [(TPSTipsViewController *)self ensureCurrentTipPositionWithViewSize:v27, v28];
    }

    else
    {
      v29 = [(TPSTipsViewController *)self currentTip];
      v30 = [v29 identifier];
      if (v30)
      {
        v31 = v30;
        v32 = [(TPSTipsViewController *)self presentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [(TPSTipsViewController *)self dismissViewControllerAnimated:1 completion:0];
        }
      }

      else
      {
      }

      [(TPSTipsViewController *)self setCurrentTip:0];
    }

    [(TPSTipsViewController *)self updatePageControlToTip:0];
    [(TPSTipsViewController *)self updatePagingScrollState];
    [(TPSTipsViewController *)self cancelAssetsPrefetch];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v35 = objc_opt_respondsToSelector();

    if (v35)
    {
      v36 = objc_loadWeakRetained(&self->_delegate);
      [v36 tipsViewControllerContentUpdated:self];
    }
  }
}

- (void)setShouldHoldOffVideo:(BOOL)a3
{
  if (self->_shouldHoldOffVideo != a3)
  {
    self->_shouldHoldOffVideo = a3;
    if (!a3)
    {
      [(TPSTipsViewController *)self playVideoIfNeeded];
    }
  }
}

- (void)setShouldDisplayNavigationTitle:(BOOL)a3
{
  if (self->_shouldDisplayNavigationTitle != a3)
  {
    self->_shouldDisplayNavigationTitle = a3;
    if (a3 && (titleText = self->_titleText) != 0)
    {
      v6 = titleText;
    }

    else
    {
      v6 = &stru_1000A4A50;
    }

    v7 = v6;
    [(TPSTipsViewController *)self updateNavigationTitle:v6];
  }
}

- (void)setAllowPaging:(BOOL)a3
{
  if (self->_allowPaging != a3)
  {
    self->_allowPaging = a3;
    [(TPSTipsViewController *)self updatePagingScrollState];
  }
}

- (void)updatePagingScrollState
{
  v4 = [(TPSTipsViewController *)self allowPaging];
  if (v4)
  {
    v2 = [(TPSTipsViewController *)self pageControl];
    v5 = [v2 numberOfPages] < 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(TPSTipsViewController *)self pageControl];
  [v6 setHidden:v5];

  if (v4)
  {
  }

  v7 = [(TPSTipsViewController *)self allowPaging];
  v8 = [(TPSTipsViewController *)self collectionView];
  [v8 setScrollEnabled:v7];
}

- (BOOL)updateBarButtonsForTip
{
  v3 = [(TPSTipsViewController *)self currentTip];
  v4 = [v3 identifier];

  if (v4 && (-[TPSTipsViewController savedTipsManager](self, "savedTipsManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isSavedWithTipIdentifier:v4], v5, v6))
  {
    v7 = [@"bookmark" stringByAppendingString:@".fill"];
  }

  else
  {
    v7 = @"bookmark";
  }

  v8 = [UIImage _systemImageNamed:v7];
  v9 = [(TPSTipsViewController *)self saveBarButton];
  v10 = [v9 image];
  if ([v10 isEqual:v8])
  {
    v11 = [(TPSTipsViewController *)self saveBarButton];
    v12 = [v11 isEnabled];

    if ((v4 != 0) == v12)
    {
      v13 = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v14 = [(TPSTipsViewController *)self saveBarButton];

  if (!v14)
  {
    v15 = [[UIBarButtonItem alloc] initWithImage:v8 style:0 target:self action:"toggleSavedTip:"];
    [(TPSTipsViewController *)self setSaveBarButton:v15];
  }

  v16 = [(TPSTipsViewController *)self saveBarButton];
  [v16 setImage:v8];

  v17 = [(TPSTipsViewController *)self saveBarButton];
  [v17 setEnabled:v4 != 0];

  v13 = 1;
LABEL_12:
  v18 = [(TPSTipsViewController *)self shareBarButton];
  if (!v18 || (v19 = v18, -[TPSTipsViewController shareBarButton](self, "shareBarButton"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 isEnabled], v20, v19, (v4 != 0) != v21))
  {
    v22 = [(TPSTipsViewController *)self shareBarButton];

    if (!v22)
    {
      v23 = [UIImage _systemImageNamed:@"square.and.arrow.up"];
      v24 = [[UIBarButtonItem alloc] initWithImage:v23 style:0 target:self action:"shareCurrentTip:"];
      [(TPSTipsViewController *)self setShareBarButton:v24];
    }

    v25 = [(TPSTipsViewController *)self shareBarButton];
    [v25 setEnabled:v4 != 0];

    v13 = 1;
  }

  return v13;
}

- (void)toggleSavedTip:(id)a3
{
  v4 = [(TPSTipsViewController *)self savedTipsManager];
  v5 = [(TPSTipsViewController *)self currentTip];
  v6 = [v5 correlationID];
  v7 = [(TPSTipsViewController *)self currentTip];
  v8 = [v7 identifier];
  [v4 toggleSavedTipWithCorrelationId:v6 tipIdentifier:v8];

  [(TPSTipsViewController *)self updateBarButtonsForTip];
  v9 = [(TPSAppViewController *)self appController];
  [v9 updateSavedTipsContent];

  v19 = [(TPSTipsViewController *)self currentTip];
  v10 = [v19 identifier];
  v11 = [(TPSTipsViewController *)self savedTipsManager];
  v12 = [(TPSTipsViewController *)self currentTip];
  v13 = [v12 identifier];
  v14 = [v11 isSavedWithTipIdentifier:v13];
  v15 = [(TPSTipsViewController *)self currentTip];
  v16 = [v15 correlationID];
  v17 = [(TPSTipsViewController *)self collectionID];
  v18 = [TPSAnalyticsEventTipSaved eventWithTipID:v10 saved:v14 correlationID:v16 collectionID:v17];
  [v18 log];
}

- (BOOL)canSearch
{
  v2 = [(TPSTipsViewController *)self searchController];
  v3 = v2 != 0;

  return v3;
}

- (void)setupSearch
{
  [(TPSTipsViewController *)self setupSearchViewModel];
  [(TPSTipsViewController *)self setDefinesPresentationContext:1];

  [(TPSTipsViewController *)self resetSearchController];
}

- (void)resetSearchController
{
  if (self->_delegateShouldShowSearch && (-[TPSTipsViewController delegate](self, "delegate"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 tipsViewControllerShouldShowSearch:self], v3, v4))
  {
    v5 = [(TPSTipsViewController *)self searchController];

    if (!v5)
    {
      v6 = [(TPSTipsViewController *)self createSearchController];
      [(TPSTipsViewController *)self setSearchController:v6];
    }
  }

  else
  {
    [(TPSTipsViewController *)self dismissPresentedSearchResultsViewController:0];
    [(TPSTipsViewController *)self setSearchResultsNavigationController:0];
    v7 = [(TPSTipsViewController *)self searchController];
    [v7 setActive:0];

    [(TPSTipsViewController *)self setSearchController:0];
  }

  v8 = [(TPSTipsViewController *)self searchController];
  v9 = [(TPSTipsViewController *)self navigationItem];
  [v9 setSearchController:v8];

  [(TPSTipsViewController *)self updateNavigationBarButtons];
}

- (id)createSearchController
{
  v3 = [[UISearchController alloc] initWithSearchResultsController:0];
  [v3 setSearchResultsUpdater:self];
  [v3 setObscuresBackgroundDuringPresentation:0];
  [v3 setHidesNavigationBarDuringPresentation:0];
  [v3 setModalPresentationStyle:4];
  v4 = [v3 searchBar];
  [v4 setDelegate:self];
  [v4 setAutocorrectionType:1];
  [v4 setAutocapitalizationType:0];

  return v3;
}

- (void)updateSearchResultsPresentationIfNeeded
{
  v3 = [(TPSTipsViewController *)self searchResultViewModel];
  v4 = [v3 hasStartedSearch];

  if (v4)
  {

    [(TPSTipsViewController *)self presentSearchResultsViewController:1];
  }

  else
  {

    [(TPSTipsViewController *)self dismissPresentedSearchResultsViewController:1];
  }
}

- (BOOL)isSearchViewControllerPresented
{
  v3 = [(TPSTipsViewController *)self navigationController];
  v4 = [v3 presentedViewController];

  v5 = [(TPSTipsViewController *)self searchResultsNavigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 topViewController];

    v8 = [(TPSTipsViewController *)self searchResultsNavigationController];
    v9 = [v8 topViewController];

    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    v4 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (void)searchWithSearchQuery:(id)a3
{
  v4 = a3;
  v5 = [v4 searchTerm];
  v6 = [(TPSTipsViewController *)self searchController];
  v7 = [v6 searchBar];
  [v7 setText:v5];

  v8 = [(TPSTipsViewController *)self searchController];
  v9 = [v8 searchBar];
  [v9 becomeFirstResponder];

  v10 = [(TPSTipsViewController *)self searchResultViewModel];
  [v10 setSearchQuery:v4];
}

- (void)createViews
{
  if (!self->_collectionView)
  {
    v3 = objc_alloc_init(TPSCollectionViewFlowLayout);
    collectionViewLayout = self->_collectionViewLayout;
    self->_collectionViewLayout = v3;

    [(TPSCollectionViewFlowLayout *)self->_collectionViewLayout setScrollDirection:1];
    [(TPSCollectionViewFlowLayout *)self->_collectionViewLayout setMinimumLineSpacing:0.0];
    v5 = [[UICollectionView alloc] initWithFrame:self->_collectionViewLayout collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    collectionView = self->_collectionView;
    self->_collectionView = v5;

    [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
    [(UICollectionView *)self->_collectionView _setInterpageSpacing:40.0, 0.0];
    [(UICollectionView *)self->_collectionView setContentInsetAdjustmentBehavior:2];
    [(UICollectionView *)self->_collectionView setPagingEnabled:1];
    [(TPSTipsViewController *)self _adjustScrollViewPagingDecelerationForSize:self->_viewSize.width, self->_viewSize.height];
    v7 = [(TPSTipsViewController *)self view];
    [v7 addSubview:self->_collectionView];

    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:kTPSTipCellIdentifierKey];
    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:kTPSIntroTipCellIdentifierKey];
    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:kTPSOutroTipCellIdentifierKey];
    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setDataSource:self];
    v8 = [(UICollectionView *)self->_collectionView leadingAnchor];
    v9 = [(TPSTipsViewController *)self view];
    v10 = [v9 leadingAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [(UICollectionView *)self->_collectionView trailingAnchor];
    v13 = [(TPSTipsViewController *)self view];
    v14 = [v13 trailingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [(UICollectionView *)self->_collectionView topAnchor];
    v17 = [(TPSTipsViewController *)self view];
    v18 = [v17 topAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [(UICollectionView *)self->_collectionView bottomAnchor];
    v21 = [(TPSTipsViewController *)self view];
    v22 = [v21 bottomAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    [(TPSKVOManager *)self->_KVOManager addKVOObject:self->_collectionView forKeyPath:@"contentSize" options:3 context:"contentLayoutChanged:userInfo:"];
    [(TPSKVOManager *)self->_KVOManager addKVOObject:self->_collectionView forKeyPath:@"contentOffset" options:3 context:"contentLayoutChanged:userInfo:"];
  }

  if (!self->_pageControl)
  {
    v24 = objc_alloc_init(TPSPageControl);
    pageControl = self->_pageControl;
    self->_pageControl = v24;

    [(TPSPageControl *)self->_pageControl setHudDelegate:self];
    [(TPSPageControl *)self->_pageControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TPSPageControl *)self->_pageControl setBackgroundStyle:0];
    v26 = +[UIColor labelColor];
    [(TPSPageControl *)self->_pageControl setCurrentPageIndicatorTintColor:v26];

    v27 = +[UIColor systemGray2Color];
    [(TPSPageControl *)self->_pageControl setPageIndicatorTintColor:v27];

    [(TPSPageControl *)self->_pageControl addTarget:self action:"pageControlPageChanged:" forControlEvents:4096];
    v28 = [(TPSTipsViewController *)self view];
    [v28 addSubview:self->_pageControl];

    v29 = [(TPSPageControl *)self->_pageControl widthAnchor];
    v30 = [(TPSTipsViewController *)self view];
    v31 = [v30 widthAnchor];
    v32 = [v29 constraintEqualToAnchor:v31 constant:-20.0];

    LODWORD(v33) = 1144750080;
    [v32 setPriority:v33];
    [v32 setActive:1];
    [(TPSPageControl *)self->_pageControl sizeForNumberOfPages:8];
    v35 = v34;
    v36 = [(TPSPageControl *)self->_pageControl widthAnchor];
    v37 = [v36 constraintLessThanOrEqualToConstant:v35];
    [v37 setActive:1];

    v38 = [(TPSPageControl *)self->_pageControl centerXAnchor];
    v39 = [(TPSTipsViewController *)self view];
    v40 = [v39 centerXAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    [v41 setActive:1];

    v42 = [(TPSPageControl *)self->_pageControl bottomAnchor];
    v43 = [(TPSTipsViewController *)self view];
    v44 = [v43 bottomAnchor];
    v45 = [v42 constraintEqualToAnchor:v44 constant:0.0];
    pageControlBottomConstraint = self->_pageControlBottomConstraint;
    self->_pageControlBottomConstraint = v45;

    [(NSLayoutConstraint *)self->_pageControlBottomConstraint setActive:1];
  }

  [(TPSTipsViewController *)self updatePagingScrollState];
}

- (void)updateNavigationTitle:(id)a3
{
  v8 = a3;
  if ([(TPSTipsViewController *)self shouldDisplayNavigationTitle])
  {
    v4 = v8;
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = [(__CFString *)v8 length];
  v4 = v8;
  if (!v8 || v5)
  {
LABEL_6:

    v8 = &stru_1000A4A50;
  }

LABEL_7:
  v6 = [(TPSTipsViewController *)self title];
  v7 = [v6 isEqualToString:v8];

  if ((v7 & 1) == 0)
  {
    [(TPSTipsViewController *)self setTitle:v8];
  }
}

- (void)updateContentBackgroundWithTraitCollection:(id)a3
{
  if ([a3 userInterfaceStyle] == 1)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v6 = ;
  v4 = [(TPSTipsViewController *)self traitCollection];
  [(TPSTipCellAppearance *)self->_cellAppearance setTraitCollection:v4];

  [(UICollectionView *)self->_collectionView setBackgroundColor:v6];
  v5 = [(TPSTipsViewController *)self view];
  [v5 setBackgroundColor:v6];
}

- (id)cellForCurrentTip
{
  v3 = [(NSArray *)self->_tips indexOfObject:self->_currentTip];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_isSharedVariant)
    {
      v4 = [(TPSTipsViewController *)self centerCell];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = [NSIndexPath indexPathForRow:v3 inSection:0];
    v4 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v5];
  }

  return v4;
}

- (void)updateTipForCell:(id)a3 startVideo:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (([(UICollectionView *)self->_collectionView isHidden]& 1) != 0)
  {
LABEL_8:
    v6 = v7;
    goto LABEL_9;
  }

  v6 = v7;
  if (v7 || ([(TPSTipsViewController *)self cellForCurrentTip], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    [v6 updateImageView];
    [v7 updateContentLabel];
    if (v4 && [(TPSAppViewController *)self viewWillAppear]&& ![(TPSTipsViewController *)self shouldHoldOffVideo])
    {
      [v7 playVideo];
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (id)_currentViewMethod
{
  v2 = +[TPSAnalyticsEventAppLaunched lastRecordedLaunchType];
  v3 = v2;
  v4 = TPSAnalyticsViewMethodCollectionsList;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  return v5;
}

- (void)setCurrentTip:(id)a3
{
  v5 = a3;
  if (self->_currentTip != v5)
  {
    v6 = +[TPSLogger default];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A0CC(v5, v6);
    }

    objc_storeStrong(&self->_currentTip, a3);
    if (self->_currentTip)
    {
      [(TPSTipsViewController *)self updateTipForCell:0 startVideo:1];
      v7 = [(TPSTip *)self->_currentTip identifier];

      if (v7)
      {
        self->_canIncreaseViewCount = 1;
        v8 = [(TPSTipsViewController *)self _currentViewMethod];
        [(TPSTipsViewController *)self analyticsIncreaseCountViewForCurrentTipDelay:v8];
      }

      v9 = [(TPSTipsViewController *)self centerCell];
      v10 = [v9 tip];
      v11 = v10;
      if (v10 == self->_currentTip)
      {
        v12 = [v9 contentFinishedLoading];

        if (v12)
        {
          [(TPSTipsViewController *)self cellContentLoaded:v9];
        }
      }

      else
      {
      }

      [(TPSTipsViewController *)self _logTimeSpentBeforeCurrentTip:self->_currentTip];
    }

    [(TPSTipsViewController *)self updatePageControlToTip:v5];
    if (self->_delegateCurrentTipUpdated)
    {
      v13 = [(TPSTipsViewController *)self delegate];
      [v13 tipsViewControllerCurrentTipUpdated:self];
    }
  }
}

- (void)_adjustScrollViewPagingDecelerationForSize:(CGSize)a3
{
  width = a3.width;
  v5 = [UIScreen mainScreen:a3.width];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  if (v7 >= v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  if (v10 >= width)
  {
    v11 = width;
  }

  else
  {
    v11 = v10;
  }

  v12 = (1.0 - (v11 * 0.00000994318182 + 0.966818182)) * -1.22140276 + 1.0;
  [(UICollectionView *)self->_collectionView _setPagingSpringPull:v11 * -0.000000184659091 + 0.000359090909];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView _setPagingFriction:v12];
}

- (void)analyticsIncreaseCountViewForCurrentTipDelay:(id)a3
{
  v4 = [TPSViewSourceProxy proxyWithViewMethod:a3];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_delayedIncreaseCountViewForCurrentTip:" object:?];
  if (self->_canIncreaseViewCount)
  {
    [(TPSTipsViewController *)self performSelector:"_delayedIncreaseCountViewForCurrentTip:" withObject:v4 afterDelay:kTipsAnalyticsDelayedEventInterval];
  }
}

- (void)_delayedIncreaseCountViewForCurrentTip:(id)a3
{
  v4 = a3;
  if (self->_currentTip && self->_canIncreaseViewCount)
  {
    v25 = v4;
    v5 = [(TPSTipsViewController *)self currentSwipeEvent];

    [(TPSTip *)self->_currentTip identifier];
    if (v5)
      v6 = {;
      v7 = [(TPSTipsViewController *)self currentSwipeEvent];
      [v7 setContentID:v6];

      v8 = [(TPSTipsViewController *)self collectionID];
      v9 = [(TPSTipsViewController *)self currentSwipeEvent];
      [v9 setCollectionID:v8];

      v10 = [(TPSTip *)self->_currentTip correlationID];
      v11 = [(TPSTipsViewController *)self currentSwipeEvent];
      [v11 setCorrelationID:v10];

      v12 = [(TPSTip *)self->_currentTip clientConditionID];
      v13 = [(TPSTipsViewController *)self currentSwipeEvent];
      [v13 setClientConditionID:v12];

      v14 = [(TPSTipsViewController *)self currentSwipeEvent];
      [v14 log];

      [(TPSTipsViewController *)self setCurrentSwipeEvent:0];
    }

    else
      v24 = {;
      v15 = [(TPSTipsViewController *)self collectionID];
      v16 = [(TPSTip *)self->_currentTip correlationID];
      v17 = [(TPSTip *)self->_currentTip clientConditionID];
      v18 = [v25 viewMethod];
      v19 = [(TPSTipsViewController *)self traitCollection];
      v20 = [TPSAnalyticsEventContentViewed analyticsViewModeForTraitCollection:v19];
      v21 = [TPSAnalyticsEventContentViewed eventWithContentID:v24 collectionID:v15 correlationID:v16 clientConditionID:v17 viewMethod:v18 viewMode:v20];
      [v21 log];
    }

    v22 = [(TPSAppViewController *)self appController];
    v23 = [(TPSTip *)self->_currentTip identifier];
    [v22 tipViewed:v23 collectionIdentifier:self->_collectionID];

    +[TPSAnalyticsSessionController incrementTipsViewedCount];
    self->_canIncreaseViewCount = 0;
    v4 = v25;
  }
}

- (void)networkStateDidChange:(BOOL)a3
{
  v3 = a3;
  v14.receiver = self;
  v14.super_class = TPSTipsViewController;
  [(TPSViewController *)&v14 networkStateDidChange:?];
  if (v3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(UICollectionView *)self->_collectionView visibleCells];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9) loadContentIfNeeded];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)updatePageControlToTip:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = self->_currentTip;
  }

  v10 = v4;
  [(TPSTipsViewController *)self updateNavigationTitle:self->_titleText];
  if ([(NSArray *)self->_tips count])
  {
    v5 = v10 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (v6 = [(NSArray *)self->_tips indexOfObject:v10], v6 == 0x7FFFFFFFFFFFFFFFLL))
  {
    if (![(NSString *)self->_titleText length])
    {
      goto LABEL_12;
    }

    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
    if (v6 == self->_currentPagingIndex)
    {
      goto LABEL_12;
    }
  }

  self->_currentPagingIndex = v7;
  v8 = [(TPSTipsViewController *)self pageControl];
  [v8 setCurrentPage:v7];

  v9 = [(TPSTipsViewController *)self pageControl];
  [v9 setNeedsLayout];

  [(TPSTipsViewController *)self updateNavigationBarButtons];
LABEL_12:
}

- (void)contentLayoutChanged:(id)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:NSKeyValueChangeOldKey];
  v7 = [v5 objectForKeyedSubscript:NSKeyValueChangeNewKey];

  if (v6 != v7)
  {
    v8 = [(TPSTipsViewController *)self scrolledDeferredAction];
    [v8 scheduleNextRunLoop];
  }
}

- (BOOL)eligibleToPlayVideo
{
  if (([(UICollectionView *)self->_collectionView isHidden]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return ![(TPSTipsViewController *)self shouldHoldOffVideo];
  }
}

- (void)playVideoIfNeeded
{
  if ([(TPSTipsViewController *)self eligibleToPlayVideo])
  {
    v3 = [(TPSTipsViewController *)self cellForCurrentTip];
    if (([v3 videoHasFinished] & 1) == 0)
    {
      [v3 continuePlayVideo];
    }
  }
}

- (void)continueVideoForCurrentTip
{
  if ([(TPSTipsViewController *)self eligibleToPlayVideo])
  {
    v3 = [(TPSTipsViewController *)self cellForCurrentTip];
    [v3 continuePlayVideo];
  }
}

- (void)stopVideoForCurrentTip
{
  v2 = [(TPSTipsViewController *)self cellForCurrentTip];
  [v2 stopVideoPlayer];
}

- (void)reconfigureAllCollectionViewItems
{
  v3 = [(TPSTipsViewController *)self tips];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v5 = [(TPSTipsViewController *)self tips];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000DB10;
  v10[3] = &unk_1000A2F70;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  [v5 enumerateObjectsUsingBlock:v10];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000DBA4;
  v8[3] = &unk_1000A2F98;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [UIView performWithoutAnimation:v8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TPSTipsViewController;
  [(TPSTipsViewController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ([(TPSAppViewController *)self supportedInterfaceOrientations]!= 2)
  {
    self->_viewSize.width = width;
    self->_viewSize.height = height;
    [(TPSTipCellAppearance *)self->_cellAppearance updateAppearanceWithSize:width, height];
    v8 = [(TPSTipsViewController *)self cellForCurrentTip];
    [v8 updateHeroHeightConstraint];
    [v8 setContentFinishedLoading:0];
    [v8 setHasNotifiedDelegateContentLoaded:0];
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000DDE0;
    v11[3] = &unk_1000A2FC0;
    objc_copyWeak(v12, &location);
    v12[1] = *&width;
    v12[2] = *&height;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000DE50;
    v9[3] = &unk_1000A2FE8;
    objc_copyWeak(v10, &location);
    v9[4] = self;
    v10[1] = *&width;
    v10[2] = *&height;
    [v7 animateAlongsideTransition:v11 completion:v9];
    objc_destroyWeak(v10);
    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

- (void)ensureCurrentTipPositionWithViewSize:(CGSize)a3
{
  if (!self->_scrollingTipContent)
  {
    width = a3.width;
    if ([(NSArray *)self->_tips count:a3.width])
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      tips = self->_tips;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10000E110;
      v12[3] = &unk_1000A3010;
      v12[4] = self;
      v12[5] = &v13;
      [(NSArray *)tips enumerateObjectsUsingBlock:v12];
      if (v14[3] <= 0x7FFFFFFFFFFFFFFELL)
      {
        [(UICollectionView *)self->_collectionView _interpageSpacing];
        v7 = v6;
        v8 = v14[3];
        [(UICollectionView *)self->_collectionView contentOffset];
        if (v9 != (width + v7) * v8)
        {
          v10 = [NSIndexPath indexPathForRow:v14[3] inSection:0];
          [(UICollectionView *)self->_collectionView scrollToItemAtIndexPath:v10 atScrollPosition:16 animated:0];
          self->_scrollingTipContent = 0;
          self->_animatingTipsScroll = 0;
          v11 = [(TPSTipsViewController *)self delegate];
          -[TPSTipsViewController updateTipForCell:startVideo:](self, "updateTipForCell:startVideo:", 0, [v11 tipsViewControllerShouldStartVideo:self]);

          [(TPSTipsViewController *)self updatePageControlToTip:0];
        }
      }

      _Block_object_dispose(&v13, 8);
    }
  }
}

- (void)showErrorView:(id)a3
{
  v4.receiver = self;
  v4.super_class = TPSTipsViewController;
  [(TPSViewController *)&v4 showErrorView:a3];
  [(UICollectionView *)self->_collectionView setHidden:1];
  [(TPSTipsViewController *)self updateNavigationTitle:&stru_1000A4A50];
  [(TPSTipsViewController *)self updateNavigationBarButtons];
}

- (void)removeErrorView
{
  v3.receiver = self;
  v3.super_class = TPSTipsViewController;
  [(TPSViewController *)&v3 removeErrorView];
  [(TPSTipsViewController *)self updatePageControlToTip:0];
  [(UICollectionView *)self->_collectionView setHidden:0];
  [(TPSTipsViewController *)self updateNavigationBarButtons];
}

- (void)applicationDidBecomeActive
{
  self->_canIncreaseViewCount = [(TPSAppViewController *)self viewWillAppear];
  v3 = [(TPSTipsViewController *)self _currentViewMethod];
  [(TPSTipsViewController *)self analyticsIncreaseCountViewForCurrentTipDelay:v3];

  [(TPSTipsViewController *)self _logTimeSpentBeforeCurrentTip:self->_currentTip];
  [(TPSTipsViewController *)self updateTipForCell:0 startVideo:1];
  v4 = [(TPSTipsViewController *)self cellForCurrentTip];
  [v4 loadBodyContentIfNeeded];
}

- (void)applicationDidEnterBackground
{
  self->_canIncreaseViewCount = 0;
  v3 = objc_opt_new();
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_delayedIncreaseCountViewForCurrentTip:" object:v3];

  if (([(UICollectionView *)self->_collectionView isHidden]& 1) == 0)
  {
    v4 = [(TPSTipsViewController *)self cellForCurrentTip];
    [v4 scrubVideoToFirstFrame];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 cancelReplayButtonTimer];
    }
  }

  [(TPSTipsViewController *)self _logTimeSpentBeforeCurrentTip:0];
}

- (void)applicationWillTerminate
{
  v2 = [(TPSTipsViewController *)self tryItViewController];
  [v2 logEndSession];
}

- (void)pageControlPageChanged:(id)a3
{
  self->_canIncreaseViewCount = 1;
  v4 = [a3 currentPage];
  v5 = [(TPSTip *)self->_currentTip identifier];
  v6 = [(TPSTipsViewController *)self collectionID];
  v7 = [(TPSTip *)self->_currentTip correlationID];
  v8 = [(TPSTip *)self->_currentTip clientConditionID];
  v9 = TPSAnalyticsViewMethodSwipe;
  v10 = [(TPSTipsViewController *)self traitCollection];
  v11 = [TPSAnalyticsEventContentViewed analyticsViewModeForTraitCollection:v10];
  v12 = [TPSAnalyticsEventContentViewed eventWithContentID:v5 collectionID:v6 correlationID:v7 clientConditionID:v8 viewMethod:v9 viewMode:v11];
  [(TPSTipsViewController *)self setCurrentSwipeEvent:v12];

  v13 = [(TPSTipsViewController *)self tips];
  v14 = [v13 objectAtIndexedSubscript:v4];
  [(TPSTipsViewController *)self setCurrentTip:v14];

  v16 = [(TPSTipsViewController *)self collectionView];
  v15 = [NSIndexPath indexPathForRow:v4 inSection:0];
  [v16 scrollToItemAtIndexPath:v15 atScrollPosition:16 animated:0];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  self->_scrollingTipContent = 0;
  self->_animatingTipsScroll = 0;
  v4 = [(TPSTipsViewController *)self tips];
  v5 = [(TPSTipsViewController *)self currentTip];
  v6 = [v4 indexOfObject:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionView = self->_collectionView;
    v8 = [NSIndexPath indexPathForRow:v6 inSection:0];
    v9 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v8];

    v10 = [(TPSTipsViewController *)self currentTip];
    [v9 setTip:v10 withCellAppearance:self->_cellAppearance];

    if (![(TPSTipsViewController *)self shouldHoldOffVideo])
    {
      [v9 playVideo];
    }
  }

  v11 = [(TPSTipsViewController *)self currentTip];
  [(TPSTipsViewController *)self updatePageControlToTip:v11];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  self->_scrollingTipContent = 1;
  self->_animatingTipsScroll = 0;
  v11 = [(TPSTip *)self->_currentTip identifier];
  v4 = [(TPSTipsViewController *)self collectionID];
  v5 = [(TPSTip *)self->_currentTip correlationID];
  v6 = [(TPSTip *)self->_currentTip clientConditionID];
  v7 = TPSAnalyticsViewMethodSwipe;
  v8 = [(TPSTipsViewController *)self traitCollection];
  v9 = [TPSAnalyticsEventContentViewed analyticsViewModeForTraitCollection:v8];
  v10 = [TPSAnalyticsEventContentViewed eventWithContentID:v11 collectionID:v4 correlationID:v5 clientConditionID:v6 viewMethod:v7 viewMode:v9];
  [(TPSTipsViewController *)self setCurrentSwipeEvent:v10];
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(UICollectionView *)self->_collectionView visibleCells:a3];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 tip];
        v11 = [(TPSTipsViewController *)self currentTip];

        if (v10 != v11)
        {
          [(TPSTipsViewController *)self updateTipForCell:v9 startVideo:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [(TPSTipsViewController *)self centerCell];
  v13 = [v12 tip];
  [(TPSTipsViewController *)self updatePageControlToTip:v13];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v8 = [(TPSTipsViewController *)self centerCell];
  v4 = [(TPSTipsViewController *)self currentTip];
  v5 = [v8 tip];

  if (v4 != v5)
  {
    v6 = [v8 tip];
    [(TPSTipsViewController *)self setCurrentTip:v6];
  }

  v7 = [(TPSTipsViewController *)self currentTip];
  [(TPSTipsViewController *)self updatePageControlToTip:v7];

  self->_scrollingTipContent = 0;
}

- (void)updateBarMaterial
{
  v3 = [(TPSTipsViewController *)self collectionView];
  v4 = [v3 visibleCells];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v6)
  {
    LOBYTE(v7) = 0;
    v8 = *v38;
    y = CGRectZero.origin.y;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [v12 contentScrollView];
        [v13 adjustedContentInset];
        v15 = v14;
        [v13 contentOffset];
        v17 = v15 + v16;
        if (v15 + v16 < 0.0)
        {
          v17 = 0.0;
        }

        v18 = fmin(v17, 1.0);
        if (v18 > v10)
        {
          v10 = v18;
        }

        if (v7 || ([v12 tip], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isIntro"), v19, (v20 & 1) != 0))
        {
          v7 = 1;
        }

        else
        {
          [v13 contentSize];
          v22 = v21;
          v24 = v23;
          [v12 bottomPadding];
          [(TPSPageControl *)self->_pageControl convertRect:v13 fromView:CGRectZero.origin.x, y, v22, v24 + v25];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          [(TPSPageControl *)self->_pageControl bounds];
          v43.origin.x = 0.0;
          v43.origin.y = v27;
          v43.size.width = v29;
          v43.size.height = v31;
          v7 = CGRectIntersectsRect(v42, v43);
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v6);
    v6 = v7;
  }

  else
  {
    v10 = 0.0;
  }

  v32 = [(TPSTipsViewController *)self navigationItem];
  [v32 _manualScrollEdgeAppearanceProgress];
  v34 = v33;

  if (v34 != v10)
  {
    v35 = [(TPSTipsViewController *)self navigationItem];
    [v35 _setManualScrollEdgeAppearanceProgress:v10];

    v36 = [(TPSTipsViewController *)self navigationItem];
    [v36 _setManualScrollEdgeAppearanceEnabled:1];
  }

  [(TPSPageControl *)self->_pageControl setBackgroundStyle:v6, v37];
}

- (void)updateNavigationBarButtons
{
  if (![(TPSTipsViewController *)self isSharedVariant])
  {
    if ([(TPSTipsViewController *)self allowBookmarks])
    {
      if (![(TPSTipsViewController *)self updateBarButtonsForTip])
      {
        return;
      }

      v11 = +[NSMutableArray array];
      v3 = [(TPSTipsViewController *)self saveBarButton];

      if (v3)
      {
        v4 = [(TPSTipsViewController *)self saveBarButton];
        [v11 addObject:v4];
      }

      v5 = [(TPSTipsViewController *)self shareBarButton];

      if (v5)
      {
        v6 = [(TPSTipsViewController *)self shareBarButton];
        [v11 addObject:v6];
      }

      v7 = [(TPSTipsViewController *)self navigationItem];
      [v7 setRightBarButtonItems:v11];

      v8 = [(TPSTipsViewController *)self navigationItem];
      [v8 setHidesSearchBarWhenScrolling:0];
    }

    else
    {
      v9 = [(TPSTipsViewController *)self navigationItem];
      v10 = [v9 rightBarButtonItem];

      if (!v10)
      {
        return;
      }

      v11 = [(TPSTipsViewController *)self navigationItem];
      [v11 setRightBarButtonItem:0];
    }
  }
}

- (id)searchBarNavButton
{
  v3 = [(TPSTipsViewController *)self searchController];

  if (v3)
  {
    v4 = [(TPSTipsViewController *)self searchBarButton];

    if (!v4)
    {
      v5 = [UIBarButtonItem alloc];
      v6 = [(TPSTipsViewController *)self searchController];
      v7 = [v6 searchBar];
      v8 = [v5 initWithCustomView:v7];
      [(TPSTipsViewController *)self setSearchBarButton:v8];
    }

    v9 = [(TPSTipsViewController *)self searchBarButton];
  }

  else
  {
    [(TPSTipsViewController *)self setSearchBarButton:0];
    v9 = 0;
  }

  return v9;
}

- (id)centerCellIndexPath
{
  [(UICollectionView *)self->_collectionView center];
  v4 = v3;
  [(UICollectionView *)self->_collectionView contentOffset];
  v6 = v4 + v5;
  [(UICollectionView *)self->_collectionView center];
  v8 = v7;
  [(UICollectionView *)self->_collectionView contentOffset];
  v10 = v8 + v9;
  collectionView = self->_collectionView;

  return [(UICollectionView *)collectionView indexPathForItemAtPoint:v6, v10];
}

- (id)centerCell
{
  v3 = [(TPSTipsViewController *)self centerCellIndexPath];
  collectionView = self->_collectionView;
  if (v3)
  {
    v5 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v3];
  }

  else
  {
    v6 = [(UICollectionView *)collectionView visibleCells];
    v5 = [v6 lastObject];
  }

  return v5;
}

- (id)activityViewControllerForTip:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [&__NSArray0__struct mutableCopy];
    v6 = [[TPSTextActivityItemSource alloc] initWithTip:v4];
    [v5 addObject:v6];
    v7 = [v4 webURLPath];

    if (v7)
    {
      v8 = [TPSURLActivityItemSource alloc];
      v9 = [(TPSAppViewController *)self appController];
      v10 = [(TPSURLActivityItemSource *)v8 initWithTip:v4 appController:v9];

      v11 = [(TPSTipsViewController *)self traitCollection];
      -[TPSURLActivityItemSource setUserInterfaceStyle:](v10, "setUserInterfaceStyle:", [v11 userInterfaceStyle]);

      [v5 addObject:v10];
    }

    v12 = [[TPSActivityViewController alloc] initWithActivityItems:v5 applicationActivities:0];
    v15[0] = UIActivityTypePrint;
    v15[1] = UIActivityTypeAddToReadingList;
    v15[2] = UIActivityTypeAssignToContact;
    v15[3] = UIActivityTypePostToFlickr;
    v15[4] = UIActivityTypeSaveToCameraRoll;
    v15[5] = UIActivityTypePostToVimeo;
    v15[6] = UIActivityTypeOpenInIBooks;
    v13 = [NSArray arrayWithObjects:v15 count:7];
    [(TPSActivityViewController *)v12 setExcludedActivityTypes:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[NSArray objectAtIndexedSubscript:](self->_tips, "objectAtIndexedSubscript:", [v7 row]);
  v9 = [(TPSTipsViewController *)self currentTip];
  v10 = [v9 identifier];
  v11 = [v8 identifier];
  v12 = [v10 isEqualToString:v11];

  if ([v8 isIntro])
  {
    v13 = &kTPSIntroTipCellIdentifierKey;
  }

  else
  {
    v14 = [v8 isOutro];
    v13 = &kTPSTipCellIdentifierKey;
    if (v14)
    {
      v13 = &kTPSOutroTipCellIdentifierKey;
    }
  }

  v15 = [v6 dequeueReusableCellWithReuseIdentifier:*v13 forIndexPath:v7];
  v16 = [(TPSTipsViewController *)self view];
  v17 = [v16 backgroundColor];
  v18 = [v15 contentScrollView];
  [v18 setBackgroundColor:v17];

  [v15 setDelegate:self];
  v19 = [(TPSAppViewController *)self appController];
  [v15 setAppController:v19];

  v20 = [(TPSTipsViewController *)self view];
  [v20 safeAreaInsets];
  [v15 setContentSafeAreaInsets:?];

  [v15 setAdditionalBottomOffset:self->_toolbarHeight];
  [v15 setIsSharedVariant:self->_isSharedVariant];
  [v15 setTip:v8 withCellAppearance:self->_cellAppearance];
  if (v12 && ([(UICollectionView *)self->_collectionView isHidden]& 1) == 0 && !self->_animatingTipsScroll)
  {
    v21 = [(TPSAppViewController *)self appController];
    if ([v21 appInBackground])
    {
    }

    else
    {
      v22 = [(TPSAppViewController *)self viewWillAppear];

      if (v22)
      {
        [(TPSTipsViewController *)self updateTipForCell:v15 startVideo:[(TPSAppViewController *)self viewWillAppear]];
      }
    }
  }

  return v15;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [(UICollectionView *)self->_collectionView bounds:a3];
  v6 = v5;
  v8 = v7;
  result.height = v8;
  result.width = v6;
  return result;
}

- (void)initCellAppearanceWithTrait:(id)a3 size:(CGSize)a4
{
  if (!self->_cellAppearance)
  {
    height = a4.height;
    width = a4.width;
    v7 = a3;
    v8 = [[TPSTipCellAppearance alloc] initAppearanceWithTraits:v7 size:width, height];
    cellAppearance = self->_cellAppearance;
    self->_cellAppearance = v8;

    v10 = [(TPSTipsViewController *)self view];
    [v10 safeAreaInsets];
    [(TPSTipCellAppearance *)self->_cellAppearance setTopSafeAreaHeight:?];

    v11 = [v7 userInterfaceStyle];
    v12 = self->_cellAppearance;

    [(TPSTipCellAppearance *)v12 setUserInterfaceStyle:v11];
  }
}

- (void)viewWillLayoutSubviews
{
  v3 = [(UICollectionView *)self->_collectionView traitCollection];
  v4 = [(TPSTipsViewController *)self view];
  [v4 bounds];
  [(TPSTipsViewController *)self initCellAppearanceWithTrait:v3 size:v5, v6];

  v7.receiver = self;
  v7.super_class = TPSTipsViewController;
  [(TPSTipsViewController *)&v7 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = TPSTipsViewController;
  [(TPSTipsViewController *)&v34 viewDidLayoutSubviews];
  if ([(TPSAppViewController *)self viewWillAppear])
  {
    v3 = [(TPSTipsViewController *)self view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    p_viewSize = &self->_viewSize;
    width = self->_viewSize.width;
    height = self->_viewSize.height;
    if (width != v5 || height != v7)
    {
      p_viewSize->width = v5;
      self->_viewSize.height = v7;
      [(TPSTipCellAppearance *)self->_cellAppearance updateAppearanceWithSize:v5, v7];
      [(UICollectionView *)self->_collectionView reloadData];
      [(TPSTipsViewController *)self _adjustScrollViewPagingDecelerationForSize:p_viewSize->width, self->_viewSize.height];
      width = p_viewSize->width;
      height = self->_viewSize.height;
    }

    [(TPSTipsViewController *)self ensureCurrentTipPositionWithViewSize:width, height];
    v12 = [(TPSTipsViewController *)self view];
    [v12 safeAreaInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    if (v18 <= 0.0)
    {
      v21 = -16.0;
    }

    else
    {
      v21 = -v18;
    }

    v22 = [(TPSTipsViewController *)self pageControlBottomConstraint];
    [v22 setConstant:v21];

    v23 = [(TPSTipsViewController *)self pageControl];
    [v23 bounds];
    self->_toolbarHeight = CGRectGetHeight(v36);

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = [(UICollectionView *)self->_collectionView visibleCells];
    v25 = [v24 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v31;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v30 + 1) + 8 * i);
          [v29 setAdditionalBottomOffset:self->_toolbarHeight];
          [v29 setContentSafeAreaInsets:{v14, v16, v18, v20}];
        }

        v26 = [v24 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v26);
    }
  }
}

- (void)registerTraitChanges
{
  v6 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000FA28;
  v5[3] = &unk_1000A3038;
  v5[4] = self;
  v4 = [(TPSTipsViewController *)self registerForTraitChanges:v3 withHandler:v5];
}

- (void)_logTimeSpentBeforeCurrentTip:(id)a3
{
  v13 = a3;
  previousTipTimeSpentEvent = self->_previousTipTimeSpentEvent;
  if (previousTipTimeSpentEvent)
  {
    v5 = [(TPSAnalyticsEventTipTimeSpent *)previousTipTimeSpentEvent date];

    if (v5)
    {
      v6 = +[NSDate date];
      v7 = [(TPSAnalyticsEventTipTimeSpent *)self->_previousTipTimeSpentEvent date];
      [v6 timeIntervalSinceDate:v7];
      [(TPSAnalyticsEventTipTimeSpent *)self->_previousTipTimeSpentEvent setTimeSpent:?];

      [(TPSAnalyticsEventTipTimeSpent *)self->_previousTipTimeSpentEvent log];
    }
  }

  if (v13)
  {
    v8 = [v13 identifier];
    collectionID = self->_collectionID;
    v10 = [v13 correlationID];
    v11 = [TPSAnalyticsEventTipTimeSpent eventWithTipID:v8 collectionID:collectionID correlationID:v10];
    v12 = self->_previousTipTimeSpentEvent;
    self->_previousTipTimeSpentEvent = v11;
  }

  else
  {
    v8 = self->_previousTipTimeSpentEvent;
    self->_previousTipTimeSpentEvent = 0;
  }
}

- (void)logAppIntent:(id)a3 actionDirection:(id)a4
{
  currentTip = self->_currentTip;
  v6 = a4;
  v7 = a3;
  v9 = [(TPSTip *)currentTip identifier];
  v8 = [TPSAnalyticsEventLinkAction eventWithTipID:v9 actionName:v7 actionDirection:v6];

  [v8 log];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v7 = [v4 text];

  if ([v7 length])
  {
    v5 = [TPSAppSearchQuery queryWithSearchTerm:v7 origin:0];
    v6 = [(TPSTipsViewController *)self searchResultViewModel];
    [v6 setSearchQuery:v5];
  }

  else
  {
    [(TPSTipsViewController *)self dismissPresentedSearchResultsViewController:1];
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [a3 presentedViewController];
  v5 = [(TPSTipsViewController *)self searchResultsNavigationController];

  if (v4 == v5)
  {

    [(TPSTipsViewController *)self dismissSearch];
  }
}

- (void)tipCollectionViewCellContentLayoutChanged:(id)a3
{
  v3 = [(TPSTipsViewController *)self scrolledDeferredAction];
  [v3 scheduleNextRunLoop];
}

- (void)cellContentLoaded:(id)a3
{
  v4 = [a3 tip];
  v5 = [(TPSTipsViewController *)self currentTip];

  if (v4 == v5)
  {
    [(TPSTipsViewController *)self cancelAssetsPrefetch];

    [(TPSTipsViewController *)self performSelector:"prefetchMediaPrefetchDelay" withObject:0 afterDelay:0.75];
  }
}

- (void)cancelAssetsPrefetch
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"prefetchMediaPrefetchDelay" object:0];
  v3 = [(TPSTipsViewController *)self assetPrefetchingManager];
  [v3 cancel];
}

- (void)prefetchMediaPrefetchDelay
{
  v3 = [(TPSTipsViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle] == 2;

  v7 = [(TPSTipsViewController *)self assetPrefetchingManager];
  currentTip = self->_currentTip;
  v6 = [(TPSTipsViewController *)self tips];
  [v7 prefetchAssetsFromTip:currentTip tips:v6 assetUserInterfaceStyle:v4];
}

- (void)tipCollectionViewCell:(id)a3 showSafariViewForURL:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(TPSTipsViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(TPSTipsViewController *)self delegate];
      [v9 tipsViewController:self shouldDisplayURL:v6];
    }
  }
}

- (void)tipCollectionViewCell:(id)a3 showTryItModeForURL:(id)a4
{
  if (a4 && self->_currentTip)
  {
    v5 = a4;
    v6 = [TryItViewController alloc];
    v7 = [(TPSTipsViewController *)self currentTip];
    v8 = [v7 identifier];
    v9 = [(TPSTipsViewController *)self collectionID];
    v10 = [(TPSTipsViewController *)self currentTip];
    v11 = [v10 correlationID];
    v12 = [v6 initWithLessonURL:v5 tipID:v8 collectionID:v9 correlationID:v11];

    [(TPSTipsViewController *)self setTryItViewController:v12];
    if (+[TPSCommonDefines isPhoneUI])
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    v14 = [(TPSTipsViewController *)self tryItViewController];
    [v14 setModalPresentationStyle:v13];

    v15 = [(TPSTipsViewController *)self tryItViewController];
    [v15 setModalInPresentation:1];

    v16 = [(TPSTipsViewController *)self tryItViewController];
    [(TPSTipsViewController *)self presentViewController:v16 animated:1 completion:0];

    v17 = [(TPSTipsViewController *)self tryItViewController];
    [v17 setDelegate:self];

    [(TPSTipsViewController *)self stopVideoForCurrentTip];
  }
}

- (void)tipCollectionViewCell:(id)a3 showVideoForURL:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = objc_alloc_init(AVPlayerViewController);
    v7 = [AVPlayer playerWithURL:v5];

    [v6 setPlayer:v7];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100010360;
    v9[3] = &unk_1000A3060;
    v10 = v6;
    v8 = v6;
    [(TPSTipsViewController *)self presentViewController:v8 animated:1 completion:v9];
  }
}

- (void)tipCollectionViewCell:(id)a3 showUserGuideWithIdentifier:(id)a4 topicId:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(TPSTipsViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TPSTipsViewController *)self delegate];
    [v10 tipsViewController:self loadMainUserGuideWithIdentifier:v11 topicId:v7];
  }
}

- (void)tipCollectionViewCell:(id)a3 linkTappedForURL:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (self->_isSharedVariant)
  {
    [(TPSTipsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  if (v6)
  {
    currentTip = self->_currentTip;
    if (currentTip)
    {
      v8 = [(TPSTip *)currentTip identifier];
      collectionID = self->_collectionID;
      v10 = [(TPSTip *)self->_currentTip correlationID];
      v11 = [(TPSTip *)self->_currentTip clientConditionID];
      v12 = [TPSAnalyticsEventContentLinkTapped eventWithContentID:v8 collectionID:collectionID correlationID:v10 clientConditionID:v11 url:v6];
      [v12 log];
    }
  }
}

- (void)tipCollectionViewCellHandleTripleTapInternalGesture:(id)a3
{
  v5 = [(TPSAppViewController *)self appController];
  v4 = [(TPSTipsViewController *)self currentTip];
  [v5 overrideWidgetWithTip:v4];
}

- (void)tipCollectionViewCellSharedTipTapped:(id)a3
{
  v4 = [(TPSAppViewController *)self appController];
  v5 = [(TPSTip *)self->_currentTip correlationID];
  v13 = [v4 tipForCorrelationIdentifier:v5];

  v6 = v13;
  if (v13)
  {
    v7 = [(TPSAppViewController *)self appController];
    v8 = [v13 identifier];
    v9 = [v7 collectionIdentifierForTipIdentifier:v8];
    if (v9)
    {
      v10 = v9;
      v11 = [(TPSTipsViewController *)self delegate];
      v12 = objc_opt_respondsToSelector();

      v6 = v13;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }

      v7 = [(TPSTipsViewController *)self delegate];
      v8 = [v13 identifier];
      [v7 tipsViewController:self showSharedTipWithTipIdentifier:v8];
    }

    v6 = v13;
  }

LABEL_6:
}

- (void)pageControlLongPressedForHUD:(id)a3 withText:(id)a4
{
  v6 = a4;
  if ([v6 length])
  {
    v5 = [[UIAccessibilityHUDItem alloc] initWithTitle:v6 image:0 imageInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [(TPSTipsViewController *)self _showAccessibilityHUDItem:v5];
  }
}

- (void)tryItViewControllerDidDismissWithTryItViewController:(id)a3
{
  [(TPSTipsViewController *)self setTryItViewController:0];

  [(TPSTipsViewController *)self continueVideoForCurrentTip];
}

- (TPSTipsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setupSearchViewModel
{
  v2 = self;
  sub_10001EA20();
}

- (void)shareCurrentTip:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10003C0C8();

  sub_10001F870(v6, &qword_1000B2E90, &unk_100077E50);
}

@end