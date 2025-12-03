@interface TPSTipsViewController
- (BOOL)canSearch;
- (BOOL)eligibleToPlayVideo;
- (BOOL)isSearchViewControllerPresented;
- (BOOL)updateBarButtonsForTip;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (TPSTipsViewControllerDelegate)delegate;
- (id)_currentViewMethod;
- (id)activityViewControllerForTip:(id)tip;
- (id)cellForCurrentTip;
- (id)centerCell;
- (id)centerCellIndexPath;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)createSearchController;
- (id)searchBarNavButton;
- (void)_adjustScrollViewPagingDecelerationForSize:(CGSize)size;
- (void)_delayedIncreaseCountViewForCurrentTip:(id)tip;
- (void)_logTimeSpentBeforeCurrentTip:(id)tip;
- (void)analyticsIncreaseCountViewForCurrentTipDelay:(id)delay;
- (void)applicationDidBecomeActive;
- (void)applicationDidEnterBackground;
- (void)applicationWillTerminate;
- (void)cancelAssetsPrefetch;
- (void)cellContentLoaded:(id)loaded;
- (void)commonInit;
- (void)contentLayoutChanged:(id)changed userInfo:(id)info;
- (void)continueVideoForCurrentTip;
- (void)createViews;
- (void)dealloc;
- (void)ensureCurrentTipPositionWithViewSize:(CGSize)size;
- (void)initCellAppearanceWithTrait:(id)trait size:(CGSize)size;
- (void)logAppIntent:(id)intent actionDirection:(id)direction;
- (void)networkStateDidChange:(BOOL)change;
- (void)pageControlLongPressedForHUD:(id)d withText:(id)text;
- (void)pageControlPageChanged:(id)changed;
- (void)playVideoIfNeeded;
- (void)prefetchMediaPrefetchDelay;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)reconfigureAllCollectionViewItems;
- (void)registerTraitChanges;
- (void)removeErrorView;
- (void)resetSearchController;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchWithSearchQuery:(id)query;
- (void)setAllowBookmarks:(BOOL)bookmarks;
- (void)setAllowPaging:(BOOL)paging;
- (void)setCurrentTip:(id)tip;
- (void)setDelegate:(id)delegate;
- (void)setShouldDisplayNavigationTitle:(BOOL)title;
- (void)setShouldHoldOffVideo:(BOOL)video;
- (void)setTips:(id)tips;
- (void)setupSearch;
- (void)setupSearchViewModel;
- (void)shareCurrentTip:(id)tip;
- (void)showErrorView:(id)view;
- (void)stopVideoForCurrentTip;
- (void)tipCollectionViewCell:(id)cell linkTappedForURL:(id)l;
- (void)tipCollectionViewCell:(id)cell showSafariViewForURL:(id)l;
- (void)tipCollectionViewCell:(id)cell showTryItModeForURL:(id)l;
- (void)tipCollectionViewCell:(id)cell showUserGuideWithIdentifier:(id)identifier topicId:(id)id;
- (void)tipCollectionViewCell:(id)cell showVideoForURL:(id)l;
- (void)tipCollectionViewCellContentLayoutChanged:(id)changed;
- (void)tipCollectionViewCellHandleTripleTapInternalGesture:(id)gesture;
- (void)tipCollectionViewCellSharedTipTapped:(id)tapped;
- (void)toggleSavedTip:(id)tip;
- (void)tryItViewControllerDidDismissWithTryItViewController:(id)controller;
- (void)updateBarMaterial;
- (void)updateContentBackgroundWithTraitCollection:(id)collection;
- (void)updateNavigationBarButtons;
- (void)updateNavigationTitle:(id)title;
- (void)updatePageControlToTip:(id)tip;
- (void)updatePagingScrollState;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateSearchResultsPresentationIfNeeded;
- (void)updateTipForCell:(id)cell startVideo:(BOOL)video;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

  navigationItem = [(TPSTipsViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  self->_currentPagingIndex = 0x7FFFFFFFFFFFFFFFLL;
  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"applicationDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"applicationDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  view = [(TPSTipsViewController *)self view];
  [view bounds];
  self->_viewSize.width = v17;
  self->_viewSize.height = v18;

  [(TPSTipsViewController *)self createViews];
  [(TPSTipsViewController *)self setupSearch];
  view2 = [(TPSTipsViewController *)self view];
  traitCollection = [view2 traitCollection];
  [(TPSTipsViewController *)self updateContentBackgroundWithTraitCollection:traitCollection];

  [(TPSTipsViewController *)self registerTraitChanges];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateCurrentTipUpdated = objc_opt_respondsToSelector() & 1;
    self->_delegateShouldShowSearch = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setAllowBookmarks:(BOOL)bookmarks
{
  if (self->_allowBookmarks != bookmarks)
  {
    self->_allowBookmarks = bookmarks;
    [(TPSTipsViewController *)self updateNavigationBarButtons];
  }
}

- (void)setTips:(id)tips
{
  tipsCopy = tips;
  if (self->_tips != tipsCopy)
  {
    objc_storeStrong(&self->_tips, tips);
    v6 = [(NSArray *)self->_tips count];
    pageControl = [(TPSTipsViewController *)self pageControl];
    [pageControl setNumberOfPages:v6];

    appController = [(TPSAppViewController *)self appController];
    assetSizes = [appController assetSizes];
    v10 = [assetSizes tip];

    tipSizes = [(TPSTipsViewController *)self tipSizes];
    LOBYTE(assetSizes) = [tipSizes isEqual:v10];

    if ((assetSizes & 1) == 0)
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
    v15 = tipsCopy;
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
          identifier = [v20 identifier];
          [(NSMutableDictionary *)v21 setObject:v20 forKeyedSubscript:identifier];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v17);
    }

    [(UICollectionView *)self->_collectionView reloadData];
    currentTip = [(TPSTipsViewController *)self currentTip];
    identifier2 = [currentTip identifier];
    v25 = [(TPSTipsViewController *)self tipForTipID:identifier2];

    if (v25)
    {
      view = [(TPSTipsViewController *)self view];
      [view bounds];
      [(TPSTipsViewController *)self ensureCurrentTipPositionWithViewSize:v27, v28];
    }

    else
    {
      currentTip2 = [(TPSTipsViewController *)self currentTip];
      identifier3 = [currentTip2 identifier];
      if (identifier3)
      {
        v31 = identifier3;
        presentedViewController = [(TPSTipsViewController *)self presentedViewController];
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

- (void)setShouldHoldOffVideo:(BOOL)video
{
  if (self->_shouldHoldOffVideo != video)
  {
    self->_shouldHoldOffVideo = video;
    if (!video)
    {
      [(TPSTipsViewController *)self playVideoIfNeeded];
    }
  }
}

- (void)setShouldDisplayNavigationTitle:(BOOL)title
{
  if (self->_shouldDisplayNavigationTitle != title)
  {
    self->_shouldDisplayNavigationTitle = title;
    if (title && (titleText = self->_titleText) != 0)
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

- (void)setAllowPaging:(BOOL)paging
{
  if (self->_allowPaging != paging)
  {
    self->_allowPaging = paging;
    [(TPSTipsViewController *)self updatePagingScrollState];
  }
}

- (void)updatePagingScrollState
{
  allowPaging = [(TPSTipsViewController *)self allowPaging];
  if (allowPaging)
  {
    pageControl = [(TPSTipsViewController *)self pageControl];
    v5 = [pageControl numberOfPages] < 2;
  }

  else
  {
    v5 = 1;
  }

  pageControl2 = [(TPSTipsViewController *)self pageControl];
  [pageControl2 setHidden:v5];

  if (allowPaging)
  {
  }

  allowPaging2 = [(TPSTipsViewController *)self allowPaging];
  collectionView = [(TPSTipsViewController *)self collectionView];
  [collectionView setScrollEnabled:allowPaging2];
}

- (BOOL)updateBarButtonsForTip
{
  currentTip = [(TPSTipsViewController *)self currentTip];
  identifier = [currentTip identifier];

  if (identifier && (-[TPSTipsViewController savedTipsManager](self, "savedTipsManager"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isSavedWithTipIdentifier:identifier], v5, v6))
  {
    v7 = [@"bookmark" stringByAppendingString:@".fill"];
  }

  else
  {
    v7 = @"bookmark";
  }

  v8 = [UIImage _systemImageNamed:v7];
  saveBarButton = [(TPSTipsViewController *)self saveBarButton];
  image = [saveBarButton image];
  if ([image isEqual:v8])
  {
    saveBarButton2 = [(TPSTipsViewController *)self saveBarButton];
    isEnabled = [saveBarButton2 isEnabled];

    if ((identifier != 0) == isEnabled)
    {
      v13 = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  saveBarButton3 = [(TPSTipsViewController *)self saveBarButton];

  if (!saveBarButton3)
  {
    v15 = [[UIBarButtonItem alloc] initWithImage:v8 style:0 target:self action:"toggleSavedTip:"];
    [(TPSTipsViewController *)self setSaveBarButton:v15];
  }

  saveBarButton4 = [(TPSTipsViewController *)self saveBarButton];
  [saveBarButton4 setImage:v8];

  saveBarButton5 = [(TPSTipsViewController *)self saveBarButton];
  [saveBarButton5 setEnabled:identifier != 0];

  v13 = 1;
LABEL_12:
  shareBarButton = [(TPSTipsViewController *)self shareBarButton];
  if (!shareBarButton || (v19 = shareBarButton, -[TPSTipsViewController shareBarButton](self, "shareBarButton"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 isEnabled], v20, v19, (identifier != 0) != v21))
  {
    shareBarButton2 = [(TPSTipsViewController *)self shareBarButton];

    if (!shareBarButton2)
    {
      v23 = [UIImage _systemImageNamed:@"square.and.arrow.up"];
      v24 = [[UIBarButtonItem alloc] initWithImage:v23 style:0 target:self action:"shareCurrentTip:"];
      [(TPSTipsViewController *)self setShareBarButton:v24];
    }

    shareBarButton3 = [(TPSTipsViewController *)self shareBarButton];
    [shareBarButton3 setEnabled:identifier != 0];

    v13 = 1;
  }

  return v13;
}

- (void)toggleSavedTip:(id)tip
{
  savedTipsManager = [(TPSTipsViewController *)self savedTipsManager];
  currentTip = [(TPSTipsViewController *)self currentTip];
  correlationID = [currentTip correlationID];
  currentTip2 = [(TPSTipsViewController *)self currentTip];
  identifier = [currentTip2 identifier];
  [savedTipsManager toggleSavedTipWithCorrelationId:correlationID tipIdentifier:identifier];

  [(TPSTipsViewController *)self updateBarButtonsForTip];
  appController = [(TPSAppViewController *)self appController];
  [appController updateSavedTipsContent];

  currentTip3 = [(TPSTipsViewController *)self currentTip];
  identifier2 = [currentTip3 identifier];
  savedTipsManager2 = [(TPSTipsViewController *)self savedTipsManager];
  currentTip4 = [(TPSTipsViewController *)self currentTip];
  identifier3 = [currentTip4 identifier];
  v14 = [savedTipsManager2 isSavedWithTipIdentifier:identifier3];
  currentTip5 = [(TPSTipsViewController *)self currentTip];
  correlationID2 = [currentTip5 correlationID];
  collectionID = [(TPSTipsViewController *)self collectionID];
  v18 = [TPSAnalyticsEventTipSaved eventWithTipID:identifier2 saved:v14 correlationID:correlationID2 collectionID:collectionID];
  [v18 log];
}

- (BOOL)canSearch
{
  searchController = [(TPSTipsViewController *)self searchController];
  v3 = searchController != 0;

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
    searchController = [(TPSTipsViewController *)self searchController];

    if (!searchController)
    {
      createSearchController = [(TPSTipsViewController *)self createSearchController];
      [(TPSTipsViewController *)self setSearchController:createSearchController];
    }
  }

  else
  {
    [(TPSTipsViewController *)self dismissPresentedSearchResultsViewController:0];
    [(TPSTipsViewController *)self setSearchResultsNavigationController:0];
    searchController2 = [(TPSTipsViewController *)self searchController];
    [searchController2 setActive:0];

    [(TPSTipsViewController *)self setSearchController:0];
  }

  searchController3 = [(TPSTipsViewController *)self searchController];
  navigationItem = [(TPSTipsViewController *)self navigationItem];
  [navigationItem setSearchController:searchController3];

  [(TPSTipsViewController *)self updateNavigationBarButtons];
}

- (id)createSearchController
{
  v3 = [[UISearchController alloc] initWithSearchResultsController:0];
  [v3 setSearchResultsUpdater:self];
  [v3 setObscuresBackgroundDuringPresentation:0];
  [v3 setHidesNavigationBarDuringPresentation:0];
  [v3 setModalPresentationStyle:4];
  searchBar = [v3 searchBar];
  [searchBar setDelegate:self];
  [searchBar setAutocorrectionType:1];
  [searchBar setAutocapitalizationType:0];

  return v3;
}

- (void)updateSearchResultsPresentationIfNeeded
{
  searchResultViewModel = [(TPSTipsViewController *)self searchResultViewModel];
  hasStartedSearch = [searchResultViewModel hasStartedSearch];

  if (hasStartedSearch)
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
  navigationController = [(TPSTipsViewController *)self navigationController];
  presentedViewController = [navigationController presentedViewController];

  searchResultsNavigationController = [(TPSTipsViewController *)self searchResultsNavigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    topViewController = [presentedViewController topViewController];

    searchResultsNavigationController2 = [(TPSTipsViewController *)self searchResultsNavigationController];
    topViewController2 = [searchResultsNavigationController2 topViewController];

    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    presentedViewController = topViewController;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (void)searchWithSearchQuery:(id)query
{
  queryCopy = query;
  searchTerm = [queryCopy searchTerm];
  searchController = [(TPSTipsViewController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar setText:searchTerm];

  searchController2 = [(TPSTipsViewController *)self searchController];
  searchBar2 = [searchController2 searchBar];
  [searchBar2 becomeFirstResponder];

  searchResultViewModel = [(TPSTipsViewController *)self searchResultViewModel];
  [searchResultViewModel setSearchQuery:queryCopy];
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
    view = [(TPSTipsViewController *)self view];
    [view addSubview:self->_collectionView];

    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:kTPSTipCellIdentifierKey];
    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:kTPSIntroTipCellIdentifierKey];
    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:kTPSOutroTipCellIdentifierKey];
    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setDataSource:self];
    leadingAnchor = [(UICollectionView *)self->_collectionView leadingAnchor];
    view2 = [(TPSTipsViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v11 setActive:1];

    trailingAnchor = [(UICollectionView *)self->_collectionView trailingAnchor];
    view3 = [(TPSTipsViewController *)self view];
    trailingAnchor2 = [view3 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v15 setActive:1];

    topAnchor = [(UICollectionView *)self->_collectionView topAnchor];
    view4 = [(TPSTipsViewController *)self view];
    topAnchor2 = [view4 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v19 setActive:1];

    bottomAnchor = [(UICollectionView *)self->_collectionView bottomAnchor];
    view5 = [(TPSTipsViewController *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
    view6 = [(TPSTipsViewController *)self view];
    [view6 addSubview:self->_pageControl];

    widthAnchor = [(TPSPageControl *)self->_pageControl widthAnchor];
    view7 = [(TPSTipsViewController *)self view];
    widthAnchor2 = [view7 widthAnchor];
    v32 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-20.0];

    LODWORD(v33) = 1144750080;
    [v32 setPriority:v33];
    [v32 setActive:1];
    [(TPSPageControl *)self->_pageControl sizeForNumberOfPages:8];
    v35 = v34;
    widthAnchor3 = [(TPSPageControl *)self->_pageControl widthAnchor];
    v37 = [widthAnchor3 constraintLessThanOrEqualToConstant:v35];
    [v37 setActive:1];

    centerXAnchor = [(TPSPageControl *)self->_pageControl centerXAnchor];
    view8 = [(TPSTipsViewController *)self view];
    centerXAnchor2 = [view8 centerXAnchor];
    v41 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v41 setActive:1];

    bottomAnchor3 = [(TPSPageControl *)self->_pageControl bottomAnchor];
    view9 = [(TPSTipsViewController *)self view];
    bottomAnchor4 = [view9 bottomAnchor];
    v45 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
    pageControlBottomConstraint = self->_pageControlBottomConstraint;
    self->_pageControlBottomConstraint = v45;

    [(NSLayoutConstraint *)self->_pageControlBottomConstraint setActive:1];
  }

  [(TPSTipsViewController *)self updatePagingScrollState];
}

- (void)updateNavigationTitle:(id)title
{
  titleCopy = title;
  if ([(TPSTipsViewController *)self shouldDisplayNavigationTitle])
  {
    v4 = titleCopy;
    if (titleCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = [(__CFString *)titleCopy length];
  v4 = titleCopy;
  if (!titleCopy || v5)
  {
LABEL_6:

    titleCopy = &stru_1000A4A50;
  }

LABEL_7:
  title = [(TPSTipsViewController *)self title];
  v7 = [title isEqualToString:titleCopy];

  if ((v7 & 1) == 0)
  {
    [(TPSTipsViewController *)self setTitle:titleCopy];
  }
}

- (void)updateContentBackgroundWithTraitCollection:(id)collection
{
  if ([collection userInterfaceStyle] == 1)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v6 = ;
  traitCollection = [(TPSTipsViewController *)self traitCollection];
  [(TPSTipCellAppearance *)self->_cellAppearance setTraitCollection:traitCollection];

  [(UICollectionView *)self->_collectionView setBackgroundColor:v6];
  view = [(TPSTipsViewController *)self view];
  [view setBackgroundColor:v6];
}

- (id)cellForCurrentTip
{
  v3 = [(NSArray *)self->_tips indexOfObject:self->_currentTip];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_isSharedVariant)
    {
      centerCell = [(TPSTipsViewController *)self centerCell];
    }

    else
    {
      centerCell = 0;
    }
  }

  else
  {
    v5 = [NSIndexPath indexPathForRow:v3 inSection:0];
    centerCell = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v5];
  }

  return centerCell;
}

- (void)updateTipForCell:(id)cell startVideo:(BOOL)video
{
  videoCopy = video;
  cellCopy = cell;
  if (([(UICollectionView *)self->_collectionView isHidden]& 1) != 0)
  {
LABEL_8:
    v6 = cellCopy;
    goto LABEL_9;
  }

  v6 = cellCopy;
  if (cellCopy || ([(TPSTipsViewController *)self cellForCurrentTip], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    cellCopy = v6;
    [v6 updateImageView];
    [cellCopy updateContentLabel];
    if (videoCopy && [(TPSAppViewController *)self viewWillAppear]&& ![(TPSTipsViewController *)self shouldHoldOffVideo])
    {
      [cellCopy playVideo];
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

- (void)setCurrentTip:(id)tip
{
  tipCopy = tip;
  if (self->_currentTip != tipCopy)
  {
    v6 = +[TPSLogger default];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A0CC(tipCopy, v6);
    }

    objc_storeStrong(&self->_currentTip, tip);
    if (self->_currentTip)
    {
      [(TPSTipsViewController *)self updateTipForCell:0 startVideo:1];
      identifier = [(TPSTip *)self->_currentTip identifier];

      if (identifier)
      {
        self->_canIncreaseViewCount = 1;
        _currentViewMethod = [(TPSTipsViewController *)self _currentViewMethod];
        [(TPSTipsViewController *)self analyticsIncreaseCountViewForCurrentTipDelay:_currentViewMethod];
      }

      centerCell = [(TPSTipsViewController *)self centerCell];
      v10 = [centerCell tip];
      v11 = v10;
      if (v10 == self->_currentTip)
      {
        contentFinishedLoading = [centerCell contentFinishedLoading];

        if (contentFinishedLoading)
        {
          [(TPSTipsViewController *)self cellContentLoaded:centerCell];
        }
      }

      else
      {
      }

      [(TPSTipsViewController *)self _logTimeSpentBeforeCurrentTip:self->_currentTip];
    }

    [(TPSTipsViewController *)self updatePageControlToTip:tipCopy];
    if (self->_delegateCurrentTipUpdated)
    {
      delegate = [(TPSTipsViewController *)self delegate];
      [delegate tipsViewControllerCurrentTipUpdated:self];
    }
  }
}

- (void)_adjustScrollViewPagingDecelerationForSize:(CGSize)size
{
  width = size.width;
  v5 = [UIScreen mainScreen:size.width];
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

- (void)analyticsIncreaseCountViewForCurrentTipDelay:(id)delay
{
  v4 = [TPSViewSourceProxy proxyWithViewMethod:delay];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_delayedIncreaseCountViewForCurrentTip:" object:?];
  if (self->_canIncreaseViewCount)
  {
    [(TPSTipsViewController *)self performSelector:"_delayedIncreaseCountViewForCurrentTip:" withObject:v4 afterDelay:kTipsAnalyticsDelayedEventInterval];
  }
}

- (void)_delayedIncreaseCountViewForCurrentTip:(id)tip
{
  tipCopy = tip;
  if (self->_currentTip && self->_canIncreaseViewCount)
  {
    v25 = tipCopy;
    currentSwipeEvent = [(TPSTipsViewController *)self currentSwipeEvent];

    [(TPSTip *)self->_currentTip identifier];
    if (currentSwipeEvent)
      v6 = {;
      currentSwipeEvent2 = [(TPSTipsViewController *)self currentSwipeEvent];
      [currentSwipeEvent2 setContentID:v6];

      collectionID = [(TPSTipsViewController *)self collectionID];
      currentSwipeEvent3 = [(TPSTipsViewController *)self currentSwipeEvent];
      [currentSwipeEvent3 setCollectionID:collectionID];

      correlationID = [(TPSTip *)self->_currentTip correlationID];
      currentSwipeEvent4 = [(TPSTipsViewController *)self currentSwipeEvent];
      [currentSwipeEvent4 setCorrelationID:correlationID];

      clientConditionID = [(TPSTip *)self->_currentTip clientConditionID];
      currentSwipeEvent5 = [(TPSTipsViewController *)self currentSwipeEvent];
      [currentSwipeEvent5 setClientConditionID:clientConditionID];

      currentSwipeEvent6 = [(TPSTipsViewController *)self currentSwipeEvent];
      [currentSwipeEvent6 log];

      [(TPSTipsViewController *)self setCurrentSwipeEvent:0];
    }

    else
      v24 = {;
      collectionID2 = [(TPSTipsViewController *)self collectionID];
      correlationID2 = [(TPSTip *)self->_currentTip correlationID];
      clientConditionID2 = [(TPSTip *)self->_currentTip clientConditionID];
      viewMethod = [v25 viewMethod];
      traitCollection = [(TPSTipsViewController *)self traitCollection];
      v20 = [TPSAnalyticsEventContentViewed analyticsViewModeForTraitCollection:traitCollection];
      v21 = [TPSAnalyticsEventContentViewed eventWithContentID:v24 collectionID:collectionID2 correlationID:correlationID2 clientConditionID:clientConditionID2 viewMethod:viewMethod viewMode:v20];
      [v21 log];
    }

    appController = [(TPSAppViewController *)self appController];
    identifier = [(TPSTip *)self->_currentTip identifier];
    [appController tipViewed:identifier collectionIdentifier:self->_collectionID];

    +[TPSAnalyticsSessionController incrementTipsViewedCount];
    self->_canIncreaseViewCount = 0;
    tipCopy = v25;
  }
}

- (void)networkStateDidChange:(BOOL)change
{
  changeCopy = change;
  v14.receiver = self;
  v14.super_class = TPSTipsViewController;
  [(TPSViewController *)&v14 networkStateDidChange:?];
  if (changeCopy)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    visibleCells = [(UICollectionView *)self->_collectionView visibleCells];
    v6 = [visibleCells countByEnumeratingWithState:&v10 objects:v15 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          [*(*(&v10 + 1) + 8 * v9) loadContentIfNeeded];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [visibleCells countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)updatePageControlToTip:(id)tip
{
  tipCopy = tip;
  if (!tipCopy)
  {
    tipCopy = self->_currentTip;
  }

  v10 = tipCopy;
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
  pageControl = [(TPSTipsViewController *)self pageControl];
  [pageControl setCurrentPage:v7];

  pageControl2 = [(TPSTipsViewController *)self pageControl];
  [pageControl2 setNeedsLayout];

  [(TPSTipsViewController *)self updateNavigationBarButtons];
LABEL_12:
}

- (void)contentLayoutChanged:(id)changed userInfo:(id)info
{
  infoCopy = info;
  v6 = [infoCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
  v7 = [infoCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];

  if (v6 != v7)
  {
    scrolledDeferredAction = [(TPSTipsViewController *)self scrolledDeferredAction];
    [scrolledDeferredAction scheduleNextRunLoop];
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
    cellForCurrentTip = [(TPSTipsViewController *)self cellForCurrentTip];
    if (([cellForCurrentTip videoHasFinished] & 1) == 0)
    {
      [cellForCurrentTip continuePlayVideo];
    }
  }
}

- (void)continueVideoForCurrentTip
{
  if ([(TPSTipsViewController *)self eligibleToPlayVideo])
  {
    cellForCurrentTip = [(TPSTipsViewController *)self cellForCurrentTip];
    [cellForCurrentTip continuePlayVideo];
  }
}

- (void)stopVideoForCurrentTip
{
  cellForCurrentTip = [(TPSTipsViewController *)self cellForCurrentTip];
  [cellForCurrentTip stopVideoPlayer];
}

- (void)reconfigureAllCollectionViewItems
{
  tips = [(TPSTipsViewController *)self tips];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [tips count]);

  tips2 = [(TPSTipsViewController *)self tips];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000DB10;
  v10[3] = &unk_1000A2F70;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  [tips2 enumerateObjectsUsingBlock:v10];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000DBA4;
  v8[3] = &unk_1000A2F98;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [UIView performWithoutAnimation:v8];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = TPSTipsViewController;
  [(TPSTipsViewController *)&v14 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if ([(TPSAppViewController *)self supportedInterfaceOrientations]!= 2)
  {
    self->_viewSize.width = width;
    self->_viewSize.height = height;
    [(TPSTipCellAppearance *)self->_cellAppearance updateAppearanceWithSize:width, height];
    cellForCurrentTip = [(TPSTipsViewController *)self cellForCurrentTip];
    [cellForCurrentTip updateHeroHeightConstraint];
    [cellForCurrentTip setContentFinishedLoading:0];
    [cellForCurrentTip setHasNotifiedDelegateContentLoaded:0];
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
    [coordinatorCopy animateAlongsideTransition:v11 completion:v9];
    objc_destroyWeak(v10);
    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

- (void)ensureCurrentTipPositionWithViewSize:(CGSize)size
{
  if (!self->_scrollingTipContent)
  {
    width = size.width;
    if ([(NSArray *)self->_tips count:size.width])
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
          delegate = [(TPSTipsViewController *)self delegate];
          -[TPSTipsViewController updateTipForCell:startVideo:](self, "updateTipForCell:startVideo:", 0, [delegate tipsViewControllerShouldStartVideo:self]);

          [(TPSTipsViewController *)self updatePageControlToTip:0];
        }
      }

      _Block_object_dispose(&v13, 8);
    }
  }
}

- (void)showErrorView:(id)view
{
  v4.receiver = self;
  v4.super_class = TPSTipsViewController;
  [(TPSViewController *)&v4 showErrorView:view];
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
  _currentViewMethod = [(TPSTipsViewController *)self _currentViewMethod];
  [(TPSTipsViewController *)self analyticsIncreaseCountViewForCurrentTipDelay:_currentViewMethod];

  [(TPSTipsViewController *)self _logTimeSpentBeforeCurrentTip:self->_currentTip];
  [(TPSTipsViewController *)self updateTipForCell:0 startVideo:1];
  cellForCurrentTip = [(TPSTipsViewController *)self cellForCurrentTip];
  [cellForCurrentTip loadBodyContentIfNeeded];
}

- (void)applicationDidEnterBackground
{
  self->_canIncreaseViewCount = 0;
  v3 = objc_opt_new();
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_delayedIncreaseCountViewForCurrentTip:" object:v3];

  if (([(UICollectionView *)self->_collectionView isHidden]& 1) == 0)
  {
    cellForCurrentTip = [(TPSTipsViewController *)self cellForCurrentTip];
    [cellForCurrentTip scrubVideoToFirstFrame];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [cellForCurrentTip cancelReplayButtonTimer];
    }
  }

  [(TPSTipsViewController *)self _logTimeSpentBeforeCurrentTip:0];
}

- (void)applicationWillTerminate
{
  tryItViewController = [(TPSTipsViewController *)self tryItViewController];
  [tryItViewController logEndSession];
}

- (void)pageControlPageChanged:(id)changed
{
  self->_canIncreaseViewCount = 1;
  currentPage = [changed currentPage];
  identifier = [(TPSTip *)self->_currentTip identifier];
  collectionID = [(TPSTipsViewController *)self collectionID];
  correlationID = [(TPSTip *)self->_currentTip correlationID];
  clientConditionID = [(TPSTip *)self->_currentTip clientConditionID];
  v9 = TPSAnalyticsViewMethodSwipe;
  traitCollection = [(TPSTipsViewController *)self traitCollection];
  v11 = [TPSAnalyticsEventContentViewed analyticsViewModeForTraitCollection:traitCollection];
  v12 = [TPSAnalyticsEventContentViewed eventWithContentID:identifier collectionID:collectionID correlationID:correlationID clientConditionID:clientConditionID viewMethod:v9 viewMode:v11];
  [(TPSTipsViewController *)self setCurrentSwipeEvent:v12];

  tips = [(TPSTipsViewController *)self tips];
  v14 = [tips objectAtIndexedSubscript:currentPage];
  [(TPSTipsViewController *)self setCurrentTip:v14];

  collectionView = [(TPSTipsViewController *)self collectionView];
  v15 = [NSIndexPath indexPathForRow:currentPage inSection:0];
  [collectionView scrollToItemAtIndexPath:v15 atScrollPosition:16 animated:0];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  self->_scrollingTipContent = 0;
  self->_animatingTipsScroll = 0;
  tips = [(TPSTipsViewController *)self tips];
  currentTip = [(TPSTipsViewController *)self currentTip];
  v6 = [tips indexOfObject:currentTip];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionView = self->_collectionView;
    v8 = [NSIndexPath indexPathForRow:v6 inSection:0];
    v9 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v8];

    currentTip2 = [(TPSTipsViewController *)self currentTip];
    [v9 setTip:currentTip2 withCellAppearance:self->_cellAppearance];

    if (![(TPSTipsViewController *)self shouldHoldOffVideo])
    {
      [v9 playVideo];
    }
  }

  currentTip3 = [(TPSTipsViewController *)self currentTip];
  [(TPSTipsViewController *)self updatePageControlToTip:currentTip3];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  self->_scrollingTipContent = 1;
  self->_animatingTipsScroll = 0;
  identifier = [(TPSTip *)self->_currentTip identifier];
  collectionID = [(TPSTipsViewController *)self collectionID];
  correlationID = [(TPSTip *)self->_currentTip correlationID];
  clientConditionID = [(TPSTip *)self->_currentTip clientConditionID];
  v7 = TPSAnalyticsViewMethodSwipe;
  traitCollection = [(TPSTipsViewController *)self traitCollection];
  v9 = [TPSAnalyticsEventContentViewed analyticsViewModeForTraitCollection:traitCollection];
  v10 = [TPSAnalyticsEventContentViewed eventWithContentID:identifier collectionID:collectionID correlationID:correlationID clientConditionID:clientConditionID viewMethod:v7 viewMode:v9];
  [(TPSTipsViewController *)self setCurrentSwipeEvent:v10];
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(UICollectionView *)self->_collectionView visibleCells:decelerating];
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
        currentTip = [(TPSTipsViewController *)self currentTip];

        if (v10 != currentTip)
        {
          [(TPSTipsViewController *)self updateTipForCell:v9 startVideo:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  centerCell = [(TPSTipsViewController *)self centerCell];
  v13 = [centerCell tip];
  [(TPSTipsViewController *)self updatePageControlToTip:v13];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  centerCell = [(TPSTipsViewController *)self centerCell];
  currentTip = [(TPSTipsViewController *)self currentTip];
  v5 = [centerCell tip];

  if (currentTip != v5)
  {
    v6 = [centerCell tip];
    [(TPSTipsViewController *)self setCurrentTip:v6];
  }

  currentTip2 = [(TPSTipsViewController *)self currentTip];
  [(TPSTipsViewController *)self updatePageControlToTip:currentTip2];

  self->_scrollingTipContent = 0;
}

- (void)updateBarMaterial
{
  collectionView = [(TPSTipsViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = visibleCells;
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
        contentScrollView = [v12 contentScrollView];
        [contentScrollView adjustedContentInset];
        v15 = v14;
        [contentScrollView contentOffset];
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
          [contentScrollView contentSize];
          v22 = v21;
          v24 = v23;
          [v12 bottomPadding];
          [(TPSPageControl *)self->_pageControl convertRect:contentScrollView fromView:CGRectZero.origin.x, y, v22, v24 + v25];
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

  navigationItem = [(TPSTipsViewController *)self navigationItem];
  [navigationItem _manualScrollEdgeAppearanceProgress];
  v34 = v33;

  if (v34 != v10)
  {
    navigationItem2 = [(TPSTipsViewController *)self navigationItem];
    [navigationItem2 _setManualScrollEdgeAppearanceProgress:v10];

    navigationItem3 = [(TPSTipsViewController *)self navigationItem];
    [navigationItem3 _setManualScrollEdgeAppearanceEnabled:1];
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

      navigationItem4 = +[NSMutableArray array];
      saveBarButton = [(TPSTipsViewController *)self saveBarButton];

      if (saveBarButton)
      {
        saveBarButton2 = [(TPSTipsViewController *)self saveBarButton];
        [navigationItem4 addObject:saveBarButton2];
      }

      shareBarButton = [(TPSTipsViewController *)self shareBarButton];

      if (shareBarButton)
      {
        shareBarButton2 = [(TPSTipsViewController *)self shareBarButton];
        [navigationItem4 addObject:shareBarButton2];
      }

      navigationItem = [(TPSTipsViewController *)self navigationItem];
      [navigationItem setRightBarButtonItems:navigationItem4];

      navigationItem2 = [(TPSTipsViewController *)self navigationItem];
      [navigationItem2 setHidesSearchBarWhenScrolling:0];
    }

    else
    {
      navigationItem3 = [(TPSTipsViewController *)self navigationItem];
      rightBarButtonItem = [navigationItem3 rightBarButtonItem];

      if (!rightBarButtonItem)
      {
        return;
      }

      navigationItem4 = [(TPSTipsViewController *)self navigationItem];
      [navigationItem4 setRightBarButtonItem:0];
    }
  }
}

- (id)searchBarNavButton
{
  searchController = [(TPSTipsViewController *)self searchController];

  if (searchController)
  {
    searchBarButton = [(TPSTipsViewController *)self searchBarButton];

    if (!searchBarButton)
    {
      v5 = [UIBarButtonItem alloc];
      searchController2 = [(TPSTipsViewController *)self searchController];
      searchBar = [searchController2 searchBar];
      v8 = [v5 initWithCustomView:searchBar];
      [(TPSTipsViewController *)self setSearchBarButton:v8];
    }

    searchBarButton2 = [(TPSTipsViewController *)self searchBarButton];
  }

  else
  {
    [(TPSTipsViewController *)self setSearchBarButton:0];
    searchBarButton2 = 0;
  }

  return searchBarButton2;
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
  centerCellIndexPath = [(TPSTipsViewController *)self centerCellIndexPath];
  collectionView = self->_collectionView;
  if (centerCellIndexPath)
  {
    lastObject = [(UICollectionView *)collectionView cellForItemAtIndexPath:centerCellIndexPath];
  }

  else
  {
    visibleCells = [(UICollectionView *)collectionView visibleCells];
    lastObject = [visibleCells lastObject];
  }

  return lastObject;
}

- (id)activityViewControllerForTip:(id)tip
{
  tipCopy = tip;
  if (tipCopy)
  {
    v5 = [&__NSArray0__struct mutableCopy];
    v6 = [[TPSTextActivityItemSource alloc] initWithTip:tipCopy];
    [v5 addObject:v6];
    webURLPath = [tipCopy webURLPath];

    if (webURLPath)
    {
      v8 = [TPSURLActivityItemSource alloc];
      appController = [(TPSAppViewController *)self appController];
      v10 = [(TPSURLActivityItemSource *)v8 initWithTip:tipCopy appController:appController];

      traitCollection = [(TPSTipsViewController *)self traitCollection];
      -[TPSURLActivityItemSource setUserInterfaceStyle:](v10, "setUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSArray objectAtIndexedSubscript:](self->_tips, "objectAtIndexedSubscript:", [pathCopy row]);
  currentTip = [(TPSTipsViewController *)self currentTip];
  identifier = [currentTip identifier];
  identifier2 = [v8 identifier];
  v12 = [identifier isEqualToString:identifier2];

  if ([v8 isIntro])
  {
    v13 = &kTPSIntroTipCellIdentifierKey;
  }

  else
  {
    isOutro = [v8 isOutro];
    v13 = &kTPSTipCellIdentifierKey;
    if (isOutro)
    {
      v13 = &kTPSOutroTipCellIdentifierKey;
    }
  }

  v15 = [viewCopy dequeueReusableCellWithReuseIdentifier:*v13 forIndexPath:pathCopy];
  view = [(TPSTipsViewController *)self view];
  backgroundColor = [view backgroundColor];
  contentScrollView = [v15 contentScrollView];
  [contentScrollView setBackgroundColor:backgroundColor];

  [v15 setDelegate:self];
  appController = [(TPSAppViewController *)self appController];
  [v15 setAppController:appController];

  view2 = [(TPSTipsViewController *)self view];
  [view2 safeAreaInsets];
  [v15 setContentSafeAreaInsets:?];

  [v15 setAdditionalBottomOffset:self->_toolbarHeight];
  [v15 setIsSharedVariant:self->_isSharedVariant];
  [v15 setTip:v8 withCellAppearance:self->_cellAppearance];
  if (v12 && ([(UICollectionView *)self->_collectionView isHidden]& 1) == 0 && !self->_animatingTipsScroll)
  {
    appController2 = [(TPSAppViewController *)self appController];
    if ([appController2 appInBackground])
    {
    }

    else
    {
      viewWillAppear = [(TPSAppViewController *)self viewWillAppear];

      if (viewWillAppear)
      {
        [(TPSTipsViewController *)self updateTipForCell:v15 startVideo:[(TPSAppViewController *)self viewWillAppear]];
      }
    }
  }

  return v15;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [(UICollectionView *)self->_collectionView bounds:view];
  v6 = v5;
  v8 = v7;
  result.height = v8;
  result.width = v6;
  return result;
}

- (void)initCellAppearanceWithTrait:(id)trait size:(CGSize)size
{
  if (!self->_cellAppearance)
  {
    height = size.height;
    width = size.width;
    traitCopy = trait;
    height = [[TPSTipCellAppearance alloc] initAppearanceWithTraits:traitCopy size:width, height];
    cellAppearance = self->_cellAppearance;
    self->_cellAppearance = height;

    view = [(TPSTipsViewController *)self view];
    [view safeAreaInsets];
    [(TPSTipCellAppearance *)self->_cellAppearance setTopSafeAreaHeight:?];

    userInterfaceStyle = [traitCopy userInterfaceStyle];
    v12 = self->_cellAppearance;

    [(TPSTipCellAppearance *)v12 setUserInterfaceStyle:userInterfaceStyle];
  }
}

- (void)viewWillLayoutSubviews
{
  traitCollection = [(UICollectionView *)self->_collectionView traitCollection];
  view = [(TPSTipsViewController *)self view];
  [view bounds];
  [(TPSTipsViewController *)self initCellAppearanceWithTrait:traitCollection size:v5, v6];

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
    view = [(TPSTipsViewController *)self view];
    [view bounds];
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
    view2 = [(TPSTipsViewController *)self view];
    [view2 safeAreaInsets];
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

    pageControlBottomConstraint = [(TPSTipsViewController *)self pageControlBottomConstraint];
    [pageControlBottomConstraint setConstant:v21];

    pageControl = [(TPSTipsViewController *)self pageControl];
    [pageControl bounds];
    self->_toolbarHeight = CGRectGetHeight(v36);

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    visibleCells = [(UICollectionView *)self->_collectionView visibleCells];
    v25 = [visibleCells countByEnumeratingWithState:&v30 objects:v35 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          v29 = *(*(&v30 + 1) + 8 * i);
          [v29 setAdditionalBottomOffset:self->_toolbarHeight];
          [v29 setContentSafeAreaInsets:{v14, v16, v18, v20}];
        }

        v26 = [visibleCells countByEnumeratingWithState:&v30 objects:v35 count:16];
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

- (void)_logTimeSpentBeforeCurrentTip:(id)tip
{
  tipCopy = tip;
  previousTipTimeSpentEvent = self->_previousTipTimeSpentEvent;
  if (previousTipTimeSpentEvent)
  {
    date = [(TPSAnalyticsEventTipTimeSpent *)previousTipTimeSpentEvent date];

    if (date)
    {
      v6 = +[NSDate date];
      date2 = [(TPSAnalyticsEventTipTimeSpent *)self->_previousTipTimeSpentEvent date];
      [v6 timeIntervalSinceDate:date2];
      [(TPSAnalyticsEventTipTimeSpent *)self->_previousTipTimeSpentEvent setTimeSpent:?];

      [(TPSAnalyticsEventTipTimeSpent *)self->_previousTipTimeSpentEvent log];
    }
  }

  if (tipCopy)
  {
    identifier = [tipCopy identifier];
    collectionID = self->_collectionID;
    correlationID = [tipCopy correlationID];
    v11 = [TPSAnalyticsEventTipTimeSpent eventWithTipID:identifier collectionID:collectionID correlationID:correlationID];
    v12 = self->_previousTipTimeSpentEvent;
    self->_previousTipTimeSpentEvent = v11;
  }

  else
  {
    identifier = self->_previousTipTimeSpentEvent;
    self->_previousTipTimeSpentEvent = 0;
  }
}

- (void)logAppIntent:(id)intent actionDirection:(id)direction
{
  currentTip = self->_currentTip;
  directionCopy = direction;
  intentCopy = intent;
  identifier = [(TPSTip *)currentTip identifier];
  v8 = [TPSAnalyticsEventLinkAction eventWithTipID:identifier actionName:intentCopy actionDirection:directionCopy];

  [v8 log];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  if ([text length])
  {
    v5 = [TPSAppSearchQuery queryWithSearchTerm:text origin:0];
    searchResultViewModel = [(TPSTipsViewController *)self searchResultViewModel];
    [searchResultViewModel setSearchQuery:v5];
  }

  else
  {
    [(TPSTipsViewController *)self dismissPresentedSearchResultsViewController:1];
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  presentedViewController = [dismiss presentedViewController];
  searchResultsNavigationController = [(TPSTipsViewController *)self searchResultsNavigationController];

  if (presentedViewController == searchResultsNavigationController)
  {

    [(TPSTipsViewController *)self dismissSearch];
  }
}

- (void)tipCollectionViewCellContentLayoutChanged:(id)changed
{
  scrolledDeferredAction = [(TPSTipsViewController *)self scrolledDeferredAction];
  [scrolledDeferredAction scheduleNextRunLoop];
}

- (void)cellContentLoaded:(id)loaded
{
  v4 = [loaded tip];
  currentTip = [(TPSTipsViewController *)self currentTip];

  if (v4 == currentTip)
  {
    [(TPSTipsViewController *)self cancelAssetsPrefetch];

    [(TPSTipsViewController *)self performSelector:"prefetchMediaPrefetchDelay" withObject:0 afterDelay:0.75];
  }
}

- (void)cancelAssetsPrefetch
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"prefetchMediaPrefetchDelay" object:0];
  assetPrefetchingManager = [(TPSTipsViewController *)self assetPrefetchingManager];
  [assetPrefetchingManager cancel];
}

- (void)prefetchMediaPrefetchDelay
{
  traitCollection = [(TPSTipsViewController *)self traitCollection];
  v4 = [traitCollection userInterfaceStyle] == 2;

  assetPrefetchingManager = [(TPSTipsViewController *)self assetPrefetchingManager];
  currentTip = self->_currentTip;
  tips = [(TPSTipsViewController *)self tips];
  [assetPrefetchingManager prefetchAssetsFromTip:currentTip tips:tips assetUserInterfaceStyle:v4];
}

- (void)tipCollectionViewCell:(id)cell showSafariViewForURL:(id)l
{
  cellCopy = cell;
  lCopy = l;
  if (lCopy)
  {
    delegate = [(TPSTipsViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(TPSTipsViewController *)self delegate];
      [delegate2 tipsViewController:self shouldDisplayURL:lCopy];
    }
  }
}

- (void)tipCollectionViewCell:(id)cell showTryItModeForURL:(id)l
{
  if (l && self->_currentTip)
  {
    lCopy = l;
    v6 = [TryItViewController alloc];
    currentTip = [(TPSTipsViewController *)self currentTip];
    identifier = [currentTip identifier];
    collectionID = [(TPSTipsViewController *)self collectionID];
    currentTip2 = [(TPSTipsViewController *)self currentTip];
    correlationID = [currentTip2 correlationID];
    v12 = [v6 initWithLessonURL:lCopy tipID:identifier collectionID:collectionID correlationID:correlationID];

    [(TPSTipsViewController *)self setTryItViewController:v12];
    if (+[TPSCommonDefines isPhoneUI])
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    tryItViewController = [(TPSTipsViewController *)self tryItViewController];
    [tryItViewController setModalPresentationStyle:v13];

    tryItViewController2 = [(TPSTipsViewController *)self tryItViewController];
    [tryItViewController2 setModalInPresentation:1];

    tryItViewController3 = [(TPSTipsViewController *)self tryItViewController];
    [(TPSTipsViewController *)self presentViewController:tryItViewController3 animated:1 completion:0];

    tryItViewController4 = [(TPSTipsViewController *)self tryItViewController];
    [tryItViewController4 setDelegate:self];

    [(TPSTipsViewController *)self stopVideoForCurrentTip];
  }
}

- (void)tipCollectionViewCell:(id)cell showVideoForURL:(id)l
{
  if (l)
  {
    lCopy = l;
    v6 = objc_alloc_init(AVPlayerViewController);
    v7 = [AVPlayer playerWithURL:lCopy];

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

- (void)tipCollectionViewCell:(id)cell showUserGuideWithIdentifier:(id)identifier topicId:(id)id
{
  identifierCopy = identifier;
  idCopy = id;
  delegate = [(TPSTipsViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(TPSTipsViewController *)self delegate];
    [delegate2 tipsViewController:self loadMainUserGuideWithIdentifier:identifierCopy topicId:idCopy];
  }
}

- (void)tipCollectionViewCell:(id)cell linkTappedForURL:(id)l
{
  cellCopy = cell;
  lCopy = l;
  if (self->_isSharedVariant)
  {
    [(TPSTipsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  if (lCopy)
  {
    currentTip = self->_currentTip;
    if (currentTip)
    {
      identifier = [(TPSTip *)currentTip identifier];
      collectionID = self->_collectionID;
      correlationID = [(TPSTip *)self->_currentTip correlationID];
      clientConditionID = [(TPSTip *)self->_currentTip clientConditionID];
      v12 = [TPSAnalyticsEventContentLinkTapped eventWithContentID:identifier collectionID:collectionID correlationID:correlationID clientConditionID:clientConditionID url:lCopy];
      [v12 log];
    }
  }
}

- (void)tipCollectionViewCellHandleTripleTapInternalGesture:(id)gesture
{
  appController = [(TPSAppViewController *)self appController];
  currentTip = [(TPSTipsViewController *)self currentTip];
  [appController overrideWidgetWithTip:currentTip];
}

- (void)tipCollectionViewCellSharedTipTapped:(id)tapped
{
  appController = [(TPSAppViewController *)self appController];
  correlationID = [(TPSTip *)self->_currentTip correlationID];
  v13 = [appController tipForCorrelationIdentifier:correlationID];

  v6 = v13;
  if (v13)
  {
    appController2 = [(TPSAppViewController *)self appController];
    identifier = [v13 identifier];
    v9 = [appController2 collectionIdentifierForTipIdentifier:identifier];
    if (v9)
    {
      v10 = v9;
      delegate = [(TPSTipsViewController *)self delegate];
      v12 = objc_opt_respondsToSelector();

      v6 = v13;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }

      appController2 = [(TPSTipsViewController *)self delegate];
      identifier = [v13 identifier];
      [appController2 tipsViewController:self showSharedTipWithTipIdentifier:identifier];
    }

    v6 = v13;
  }

LABEL_6:
}

- (void)pageControlLongPressedForHUD:(id)d withText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    v5 = [[UIAccessibilityHUDItem alloc] initWithTitle:textCopy image:0 imageInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [(TPSTipsViewController *)self _showAccessibilityHUDItem:v5];
  }
}

- (void)tryItViewControllerDidDismissWithTryItViewController:(id)controller
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
  selfCopy = self;
  sub_10001EA20();
}

- (void)shareCurrentTip:(id)tip
{
  if (tip)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10003C0C8();

  sub_10001F870(v6, &qword_1000B2E90, &unk_100077E50);
}

@end