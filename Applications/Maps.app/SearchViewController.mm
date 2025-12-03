@interface SearchViewController
- (BOOL)shouldInjectVenueSearchResult:(id)result;
- (BOOL)shouldQuickActionMenuPresenter:(id)presenter showDirectionsToPlace:(id)place;
- (BOOL)shouldShowSearchOverlay;
- (BOOL)supportsFullTextSearch;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)textFieldShouldReturn:(id)return;
- (BOOL)useSingleColumnLayout;
- (Class)viewClass;
- (MapsDragDestinationHandler)mapsDragDestinationHandler;
- (MenuContaineeViewController)menuController;
- (NavActionCoordination)navContaineeDelegate;
- (ParkedCarActionDelegate)homeParkedCarActionDelegate;
- (PersonalizedItemManager)personalizedItemManager;
- (PersonalizedItemSource)suggestionsItemSource;
- (SearchViewController)init;
- (SearchViewController)initWithHomeActionDelegate:(id)delegate searchDataSourceDelegate:(id)sourceDelegate;
- (SearchViewController)initWithSearchAlongRoute:(BOOL)route;
- (ShareDelegate)homeShareDelegate;
- (UIEdgeInsets)_calculateAccessoryTouchInsets;
- (UIEdgeInsets)_calculateSearchBarInsets;
- (UIScrollView)pptTestScrollView;
- (VKVenueFeatureMarker)venueWithFocus;
- (VisitedPlacesCommonActionsHandlingDelegate)visitedPlacesCommonActionsHandlingDelegate;
- (double)_contentAlphaForCurrentLayout;
- (double)_searchBarAccessoryWidth;
- (double)heightForContaineeLayoutMedium;
- (double)heightForLayout:(unint64_t)layout;
- (double)topSpaceForScrollPocket;
- (id)_homeViewController;
- (id)browseModeHeaderView;
- (id)browseOfflineMapsString;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)createConstraintsForSearchBarAccessoryView:(id)view;
- (id)currentSearchSession;
- (id)defaultSearchQueryToRetain;
- (id)keyCommands;
- (id)lastViewportChangeDate;
- (id)localSearchViewController;
- (id)mapServiceTraitsForQuickActionPresenter:(id)presenter;
- (id)newTraits;
- (id)offlinePlaceholderKey;
- (id)offlinePlaceholderQueue;
- (id)recentAutocompleteSessionData;
- (id)searchDataSource;
- (id)searchHomeDataSource;
- (id)searchResultsViewController;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)textDroppableView:(id)view proposalForDrop:(id)drop;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (int)listForDataSource:(id)source;
- (int64_t)currentDataSourceType;
- (int64_t)floatingControlsOptions;
- (void)_addRecentPlaceForSearchResult:(id)result;
- (void)_addVenueObserver;
- (void)_configureForceTouchIfNeeded;
- (void)_configureSearchBarIfNeeded;
- (void)_continueUpdateSearchFieldWithUpdatingSearchText:(BOOL)text;
- (void)_enableTextFieldNotification:(BOOL)notification;
- (void)_hideSearchHereControl;
- (void)_initOfflinePlaceHolderWithCompletion:(id)completion;
- (void)_initPlaceholderWithSubmitTicketIfNeeded:(BOOL)needed;
- (void)_internalViewDidAppear;
- (void)_internalViewDidDisappear;
- (void)_internalViewWillAppear;
- (void)_internalViewWillDisappear;
- (void)_invalidateSearchSession:(id)session;
- (void)_offlineSettingChangeHandler;
- (void)_popToHomeWithCompletion:(id)completion;
- (void)_preventAutoPresentingKeyboard_rdar_126940251;
- (void)_restoreRetainedQueryIfNeeded;
- (void)_setPlaceHolder;
- (void)_setupOfflinePlaceholder;
- (void)_setupOnlinePlaceholder;
- (void)_shouldHideOfflineHeaderView:(BOOL)view;
- (void)_startMonitoringCoreRoutine;
- (void)_textFieldDidChange:(id)change;
- (void)_textFieldDidChange:(id)change tappedQuerySuggestionCompletion:(id)completion;
- (void)_updateDefaultLayoutWithContainerStyle:(unint64_t)style;
- (void)_updateHeaderHairlineAlphaWithContentAlpha:(double)alpha animated:(BOOL)animated;
- (void)_updateSearchFieldText;
- (void)_updateSearchFieldWithItem:(id)item updatingSearchText:(BOOL)text;
- (void)_updateUserProfileEntryPointButton;
- (void)_updateUserProfileEntryPointImage;
- (void)addCloseSearchResultsButtonBesidesSearchBar;
- (void)addRefreshFooter:(BOOL)footer animated:(BOOL)animated;
- (void)addSupportedChildActionToTraits:(id)traits;
- (void)applyAlphaToContent:(double)content;
- (void)cleanSearch;
- (void)closeSearchResultsButtonAction:(id)action;
- (void)dataSource:(id)source itemTapped:(id)tapped childItemParent:(id)parent;
- (void)dataSourceUpdated:(id)updated;
- (void)didBecomeCurrent;
- (void)didChangeFocusedVenue:(id)venue focusedBuilding:(id)building displayedFloorOrdinal:(signed __int16)ordinal;
- (void)didChangeLayout:(unint64_t)layout;
- (void)didResignCurrent;
- (void)didSelectBrowseCategoryAtIndex:(unint64_t)index;
- (void)didSelectCompactGuideModelAtIndex:(unint64_t)index;
- (void)didSelectGuideModelAtIndex:(unint64_t)index sectionIndex:(int64_t)sectionIndex;
- (void)didSelectRecentAtIndex:(unint64_t)index;
- (void)didStartDownloadFromAutocomplete;
- (void)didTapOnCuratedGuide:(id)guide;
- (void)didTapOnCuratedGuides:(id)guides;
- (void)didTapOnHomePinnedLibraryItem:(id)item;
- (void)didTapOnUserGeneratedGuide:(id)guide;
- (void)didTapToUnpinLibraryItem:(id)item;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)didUpdateSearchResults;
- (void)displaySearchResultsWithViewController:(id)controller searchBar:(id)bar;
- (void)editCollection:(id)collection;
- (void)endEditing;
- (void)endSearch;
- (void)endSearchForTesting;
- (void)fetchMapItemWithIdentifier:(id)identifier completion:(id)completion;
- (void)fetchSearchCompletion:(id)completion completion:(id)a4;
- (void)handleDismissAction:(id)action;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)homeContentDidUpdate;
- (void)homeDidTapMarkMyLocation;
- (void)homeDidTapOnContainment:(id)containment forResults:(id)results;
- (void)homeDidTapPinnedPlaces;
- (void)homeDidTapPlaces;
- (void)homeDidTapRecentlyAdded;
- (void)homeDidTapReportAProblem;
- (void)homeDidTapSavedRoutes;
- (void)homeDidTapSeeAllUserGuides;
- (void)homeDidTapShareMyLocation;
- (void)homeDidTapTermsAndConditions;
- (void)homeDidTapVisitedPlaces;
- (void)homeSectionHeaderButtonTapped:(int64_t)tapped;
- (void)invalidateSearchSession;
- (void)localSearchViewControllerSizeDidChange:(id)change;
- (void)localSearchViewShouldBeVisibleDidChange:(id)change;
- (void)logOfflineBrowseMode:(BOOL)mode;
- (void)macMenuPresentationControllerDidDismiss:(id)dismiss;
- (void)mapView:(id)view didChangeMapType:(unint64_t)type;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button;
- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)mapViewDidChangeVisibleRegion:(id)region;
- (void)popoverDismissed:(id)dismissed;
- (void)pptSearchBarShouldProvideTextChangeNotification;
- (void)pptSelectACSuggestionMatchingAddress:(id)address;
- (void)pptSelectFirstCuratedCollection;
- (void)pptSelectFirstGuidePublisher;
- (void)pptSelectSeeAllCuratedCollections;
- (void)pptSetSearchDataSource;
- (void)preferredContentSizeChanged:(id)changed;
- (void)presentUserProfile;
- (void)quickActionMenuPresenter:(id)presenter selectedCall:(id)call;
- (void)quickActionMenuPresenter:(id)presenter selectedDirectionsTo:(id)to;
- (void)quickActionMenuPresenter:(id)presenter selectedRemoveDroppedPinOf:(id)of;
- (void)quickActionMenuPresenter:(id)presenter selectedShareLocationOf:(id)of;
- (void)quickActionMenuPresenter:(id)presenter selectedShowPlaceCard:(id)card;
- (void)quickActionMenuPresenter:(id)presenter selectedViewWebsiteFor:(id)for;
- (void)refreshCurrentSearch;
- (void)reloadContentTableView;
- (void)resetMapServiceTicket;
- (void)resetOfflineTextSearchSupport;
- (void)restoreSearchItem:(id)item;
- (void)retainSearchQuery;
- (void)retainSearchQueryForSelectedAutocompleteItem:(id)item forTimeInterval:(double)interval;
- (void)retainSearchQueryForSelectedSearchResult:(id)result;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)searchBar:(id)bar didPasteMapsLink:(id)link;
- (void)searchBarBecomeFirstResponder;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchDataSource:(id)source replaceQueryWithItem:(id)item;
- (void)seeAllTappedForCollections;
- (void)seeAllTappedForRecents;
- (void)seeAllTappedForUserGuides;
- (void)selectNearbyCategoryAtIndex:(unint64_t)index;
- (void)sendACRequestWithTappedQuerySuggestionCompletion:(id)completion retainQueryMetadata:(id)metadata;
- (void)sendSearchRequest;
- (void)setCurrentDataSource:(id)source;
- (void)setNeedsUpdateContentState;
- (void)setPersonalizedItemManager:(id)manager;
- (void)shareCollection:(id)collection collection:(id)a4;
- (void)showCitySelector;
- (void)showCollection:(id)collection;
- (void)showDropDownIfNeeded:(BOOL)needed;
- (void)showGuidesHomeFromExploreGuides:(id)guides;
- (void)showRegionSelectorForMapItem:(id)item;
- (void)showSearchResults:(id)results;
- (void)showSearchingHereIfNeeded:(BOOL)needed;
- (void)showTitleBarSeparatorWhenScrolling:(BOOL)scrolling;
- (void)textDroppableView:(id)view dropSessionDidEnd:(id)end;
- (void)textDroppableView:(id)view willPerformDrop:(id)drop;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)triggerAutocompleteByReplacingQueryWithCompletion:(id)completion;
- (void)updateCloseSearchResultEntryPointButton;
- (void)updateConstraintsForHideableFooterForWasVisible:(BOOL)visible isVisible:(BOOL)isVisible;
- (void)updateContentState;
- (void)updateDataSource;
- (void)updateIsTouristHereValue;
- (void)updateRefreshFooterAnimated:(BOOL)animated;
- (void)updateRowHeightForCurrentDataSource;
- (void)updateSearchBarContentInsets;
- (void)updateSearchFieldWithItem:(id)item;
- (void)updateTheme;
- (void)viewControllerDidSelectBrowseVenue:(id)venue;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willBecomeCurrentByGesture;
- (void)willChangeContainerStyle:(unint64_t)style;
- (void)willChangeLayout:(unint64_t)layout;
- (void)willResignCurrent:(BOOL)current;
@end

@implementation SearchViewController

- (SearchViewController)init
{
  v4.receiver = self;
  v4.super_class = SearchViewController;
  v2 = [(SearchViewController *)&v4 init];
  if (v2)
  {
    v2->_isSearchAndDiscoveryEnabled = MapsFeature_IsEnabled_SearchAndDiscovery();
    [(SearchViewController *)v2 initializeCachedTelephonyValue];
  }

  return v2;
}

- (id)searchResultsViewController
{
  if ((_UISolariumEnabled() & 1) != 0 || sub_10000FA08(self) != 5)
  {
    childViewControllers = [(SearchViewController *)self childViewControllers];
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_100E30278;
    v11 = sub_100E30288;
    v12 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003FFE4;
    v6[3] = &unk_101655CC0;
    v6[4] = &v7;
    [childViewControllers enumerateObjectsUsingBlock:v6];
    v3 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)heightForContaineeLayoutMedium
{
  result = self->_cachedMediumHeight;
  if (result == 0.0)
  {
    [(ContaineeViewController *)self headerHeight];
    v5 = v4;
    sub_100068BB8();
    v7 = v6;
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    containerStyle = [cardPresentationController containerStyle];

    if (containerStyle == 6)
    {
      if (self->_currentDataSource)
      {
        if (+[UIFont accessibilityTextEnabled])
        {
          v10 = UITableViewAutomaticDimension;
        }

        else
        {
          v12 = +[UIFont system15];
          +[TwoLinesTableViewCell estimatedCellHeight];
          [v12 _mapkit_scaledValueForValue:?];
          v10 = v13;
        }

        v7 = v10 * 3.0 + -1.0;
      }

      else
      {
        [(HomeViewController *)self->_homeViewController mediumContentHeight];
        v7 = v11;
      }
    }

    else if (v7 + v5 > v7)
    {
      v7 = v7 - v5;
    }

    result = v7 + v5;
    self->_cachedMediumHeight = v7 + v5;
  }

  return result;
}

- (void)viewDidLoad
{
  v138.receiver = self;
  v138.super_class = SearchViewController;
  [(ContaineeViewController *)&v138 viewDidLoad];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.Maps.search.mapsSuggestions", v3);
  mapsSuggestionsLoadingSearchQueue = self->_mapsSuggestionsLoadingSearchQueue;
  self->_mapsSuggestionsLoadingSearchQueue = v4;

  self->_isConfigured = 0;
  isSearchingAlongTheRoute = [(SearchViewController *)self isSearchingAlongTheRoute];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  v8 = cardPresentationController;
  if (isSearchingAlongTheRoute)
  {
    [cardPresentationController setBlurInCardView:0];

    cardPresentationController3 = [UIColor colorNamed:@"NavigationMaterialColor"];
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 setCardColor:cardPresentationController3];
  }

  else
  {
    [cardPresentationController setAllowResizeInFloatingStyle:1];

    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController3 setFirstCard:1];
  }

  v11 = objc_alloc_init(RetainedQueryController);
  retainedQueryController = self->_retainedQueryController;
  self->_retainedQueryController = v11;

  v13 = [[PassthruSearchBar alloc] initWithStyle:[(SearchViewController *)self isSearchingAlongTheRoute]];
  searchBar = self->_searchBar;
  self->_searchBar = v13;

  [(PassthruSearchBar *)self->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PassthruSearchBar *)self->_searchBar setDelegate:self];
  [(PassthruSearchBar *)self->_searchBar setTextFieldDelegate:self];
  headerView = [(ContaineeViewController *)self headerView];
  heightAnchor = [headerView heightAnchor];
  v17 = [heightAnchor constraintEqualToConstant:0.0];
  collapsedHeaderHeightConstraint = self->_collapsedHeaderHeightConstraint;
  self->_collapsedHeaderHeightConstraint = v17;

  v136 = sub_10000FA08(self);
  headerView2 = [(ContaineeViewController *)self headerView];
  [headerView2 addSubview:self->_searchBar];

  searchTextField = [(PassthruSearchBar *)self->_searchBar searchTextField];
  searchField = self->_searchField;
  self->_searchField = searchTextField;

  self->_isOfflineBrowseRecordedAlready = 0;
  v22 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v22 isUsingOfflineMaps];

  if (isUsingOfflineMaps)
  {
    [(SearchViewController *)self _setupOfflinePlaceholder];
    [(SearchViewController *)self _initOfflinePlaceHolderWithCompletion:0];
  }

  self->_isOfflineServiceRunning = 0;
  if (sub_10000FA08(self) == 5)
  {
    [(UITextField *)self->_searchField setFocusGroupIdentifier:@"DropDownFocusGroupName"];
  }

  [(UITextField *)self->_searchField setTextDropDelegate:self];
  theme = [(SearchViewController *)self theme];
  searchBarPlaceHolderColor = [theme searchBarPlaceHolderColor];
  _placeholderLabel = [(UITextField *)self->_searchField _placeholderLabel];
  [_placeholderLabel setTextColor:searchBarPlaceHolderColor];

  self->_searchFieldWantsFocus = 1;
  if (sub_10000FA08(self) == 5)
  {
    [(UITextField *)self->_searchField setControlSize:2];
    [(SearchViewController *)self updateSearchBarContentInsets];
  }

  if (sub_10000FA08(self) != 5 && ![(SearchViewController *)self isSearchingAlongTheRoute])
  {
    [(SearchViewController *)self updateSearchBarContentInsets];
    v27 = [UIButton buttonWithType:0];
    userProfileButton = self->_userProfileButton;
    self->_userProfileButton = v27;

    [(UIButton *)self->_userProfileButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_userProfileButton setAccessibilityIdentifier:@"userProfileButton"];
    imageView = [(UIButton *)self->_userProfileButton imageView];
    v30 = +[UIColor systemGrayColor];
    [imageView setTintColor:v30];

    imageView2 = [(UIButton *)self->_userProfileButton imageView];
    v32 = [UIImageSymbolConfiguration configurationWithPointSize:UIFontWeightRegular weight:44.0];
    [imageView2 setPreferredSymbolConfiguration:v32];

    [(UIButton *)self->_userProfileButton addTarget:self action:"presentUserProfile" forControlEvents:64];
    [(SearchViewController *)self _calculateAccessoryTouchInsets];
    [(UIButton *)self->_userProfileButton _setTouchInsets:?];
    headerView3 = [(ContaineeViewController *)self headerView];
    [headerView3 addSubview:self->_userProfileButton];

    [(SearchViewController *)self _updateUserProfileEntryPointImage];
    v34 = objc_alloc_init(NSMutableArray);
    widthAnchor = [(UIButton *)self->_userProfileButton widthAnchor];
    v36 = [widthAnchor constraintEqualToConstant:44.0];
    v148[0] = v36;
    heightAnchor2 = [(UIButton *)self->_userProfileButton heightAnchor];
    widthAnchor2 = [(UIButton *)self->_userProfileButton widthAnchor];
    v39 = [heightAnchor2 constraintEqualToAnchor:widthAnchor2];
    v148[1] = v39;
    v40 = [NSArray arrayWithObjects:v148 count:2];
    [v34 addObjectsFromArray:v40];

    v41 = [(SearchViewController *)self createConstraintsForSearchBarAccessoryView:self->_userProfileButton];
    [v34 addObjectsFromArray:v41];

    v42 = [v34 copy];
    [NSLayoutConstraint activateConstraints:v42];
  }

  if ([(SearchViewController *)self isShowingOmnipresentSearchBar])
  {
    [(SearchViewController *)self addCloseSearchResultsButtonBesidesSearchBar];
  }

  v43 = objc_alloc_init(UILayoutGuide);
  searchFieldLayoutGuide = self->_searchFieldLayoutGuide;
  self->_searchFieldLayoutGuide = v43;

  view = [(SearchViewController *)self view];
  [view addLayoutGuide:self->_searchFieldLayoutGuide];

  v46 = objc_opt_new();
  if (v136 == 5)
  {
    top = -4.0;
    bottom = 7.0;
    right = 0.0;
LABEL_23:
    left = 0.0;
    goto LABEL_25;
  }

  if ([(SearchViewController *)self isSearchingAlongTheRoute])
  {
    traitCollection = [(SearchViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    bottom = 5.0;
    right = 0.0;
    v52 = _UISolariumEnabled();
    v53 = 54.0;
    if (preferredContentSizeCategory > UIContentSizeCategoryExtraLarge)
    {
      v53 = 72.0;
    }

    if (v52)
    {
      top = v53;
    }

    else
    {
      top = 0.0;
    }

    goto LABEL_23;
  }

  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
LABEL_25:
  superview = [(PassthruSearchBar *)self->_searchBar superview];

  if (!superview)
  {
    v129 = sub_10006D178();
    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v141 = "[SearchViewController viewDidLoad]";
      v142 = 2080;
      v143 = "SearchViewController.m";
      v144 = 1024;
      v145 = 757;
      v146 = 2080;
      v147 = "_searchBar.superview != nil";
      _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v130 = sub_10006D178();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        v131 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v141 = v131;
        _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v56 = self->_searchBar;
  headerView4 = [(ContaineeViewController *)self headerView];
  LODWORD(v58) = 1148846080;
  v59 = [(PassthruSearchBar *)v56 _maps_constraintsEqualToEdgesOfView:headerView4 insets:top priority:left, bottom, right, v58];
  searchBarEdgeConstraints = self->_searchBarEdgeConstraints;
  self->_searchBarEdgeConstraints = v59;

  allConstraints = [(MapsEdgeConstraints *)self->_searchBarEdgeConstraints allConstraints];
  [v46 addObjectsFromArray:allConstraints];

  if ([(SearchViewController *)self _showsContentInDropDownMenu])
  {
    superview2 = [(PassthruSearchBar *)self->_searchBar superview];

    if (!superview2)
    {
      v132 = sub_10006D178();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v141 = "[SearchViewController viewDidLoad]";
        v142 = 2080;
        v143 = "SearchViewController.m";
        v144 = 1024;
        v145 = 762;
        v146 = 2080;
        v147 = "_searchBar.superview != nil";
        _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v133 = sub_10006D178();
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          v134 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v141 = v134;
          _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    widthAnchor3 = [(UILayoutGuide *)self->_searchFieldLayoutGuide widthAnchor];
    v64 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:282.0];
    [v46 addObject:v64];

    widthAnchor4 = [(UILayoutGuide *)self->_searchFieldLayoutGuide widthAnchor];
    widthAnchor5 = [(UITextField *)self->_searchField widthAnchor];
    leadingAnchor3 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];

    LODWORD(v68) = 1148829696;
    [leadingAnchor3 setPriority:v68];
    [v46 addObject:leadingAnchor3];
    leadingAnchor = [(UILayoutGuide *)self->_searchFieldLayoutGuide leadingAnchor];
    leadingAnchor2 = [(UITextField *)self->_searchField leadingAnchor];
    v71 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v46 addObject:v71];

    topAnchor = [(UILayoutGuide *)self->_searchFieldLayoutGuide topAnchor];
    bottomAnchor = [(UITextField *)self->_searchField bottomAnchor];
    v74 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  }

  else
  {
    widthAnchor6 = [(UILayoutGuide *)self->_searchFieldLayoutGuide widthAnchor];
    v76 = [widthAnchor6 constraintEqualToConstant:282.0];
    [v46 addObject:v76];

    leadingAnchor3 = [(UILayoutGuide *)self->_searchFieldLayoutGuide leadingAnchor];
    topAnchor = [(ContaineeViewController *)self headerView];
    bottomAnchor = [topAnchor leadingAnchor];
    v74 = [leadingAnchor3 constraintEqualToAnchor:bottomAnchor constant:left];
  }

  v77 = v74;
  [v46 addObject:{v74, v46}];

  [(SearchViewController *)self _initPlaceholderWithSubmitTicketIfNeeded:0];
  if (v136 != 5)
  {
    headerView5 = [(ContaineeViewController *)self headerView];
    v79 = [headerView5 _maps_addHairlineAtBottomWithMargin:0.0];
    bottomHeaderHairline = self->_bottomHeaderHairline;
    self->_bottomHeaderHairline = v79;
  }

  bottomAnchor2 = [(UIView *)self->_hideableFooterView bottomAnchor];
  view2 = [(SearchViewController *)self view];
  bottomAnchor3 = [view2 bottomAnchor];
  v84 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  bottomHideableFooterConstraint = self->_bottomHideableFooterConstraint;
  self->_bottomHideableFooterConstraint = v84;

  if ([(SearchViewController *)self _showsContentInDropDownMenu])
  {
    v86 = objc_alloc_init(UIView);
    dropDownView = self->_dropDownView;
    self->_dropDownView = v86;
  }

  v88 = [UICollectionView alloc];
  v89 = objc_alloc_init(UICollectionViewFlowLayout);
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v93 = [v88 initWithFrame:v89 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
  collectionView = self->_collectionView;
  self->_collectionView = v93;

  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v95 = +[UIColor clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v95];

  [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:1];
  [(UICollectionView *)self->_collectionView setAccessibilityIdentifier:@"SearchHomeView"];
  [(UICollectionView *)self->_collectionView setPreservesSuperviewLayoutMargins:1];
  if (sub_10000FA08(self) == 5)
  {
    [(UICollectionView *)self->_collectionView setContentInset:0.0, 0.0, 10.0, 0.0];
    [(UICollectionView *)self->_collectionView setFocusGroupIdentifier:@"DropDownFocusGroupName"];
  }

  if (_UISolariumEnabled())
  {
    v96 = 2;
  }

  else
  {
    v96 = 0;
  }

  height = [[MapsThemeTableView alloc] initWithFrame:v96 style:CGRectZero.origin.x, y, width, height];
  contentTableView = self->_contentTableView;
  self->_contentTableView = &height->super;

  [(UITableView *)self->_contentTableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_contentTableView setEstimatedSectionHeaderHeight:0.0];
  v99 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UITableView *)self->_contentTableView setTableFooterView:v99];

  [(UITableView *)self->_contentTableView _setHeaderAndFooterViewsFloat:0];
  v100 = +[UIColor clearColor];
  [(UITableView *)self->_contentTableView setBackgroundColor:v100];

  layer = [(UITableView *)self->_contentTableView layer];
  [layer setAllowsGroupOpacity:0];

  if (sub_10000FA08(self) == 5)
  {
    [(UITableView *)self->_contentTableView setFocusGroupIdentifier:@"DropDownFocusGroupName"];
  }

  [(UITableView *)self->_contentTableView setSectionHeaderTopPadding:0.0];
  if (_UISolariumEnabled())
  {
    v102 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
    [(UITableView *)self->_contentTableView setTableHeaderView:v102];

    [(UITableView *)self->_contentTableView setSectionHeaderHeight:20.0];
    [(UITableView *)self->_contentTableView setSectionFooterHeight:0.0];
  }

  [(UITableView *)self->_contentTableView setPreservesSuperviewLayoutMargins:1];
  +[_TtC4Maps23MapsDesignConstantsShim contentHorizontalPadding];
  [(UITableView *)self->_contentTableView layoutMargins];
  [(UITableView *)self->_contentTableView setLayoutMargins:?];
  [(UITableView *)self->_contentTableView setAccessibilityIdentifier:@"SearchAutocompleteView"];
  v103 = objc_alloc_init(UIView);
  hideableFooterView = self->_hideableFooterView;
  self->_hideableFooterView = v103;

  [(UIView *)self->_hideableFooterView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v136 != 5)
  {
    v105 = [(UIView *)self->_hideableFooterView _maps_addHairlineAtTopWithMargin:0.0];
  }

  view3 = [(SearchViewController *)self view];
  v107 = self->_hideableFooterView;
  headerView6 = [(ContaineeViewController *)self headerView];
  [view3 insertSubview:v107 belowSubview:headerView6];

  bottomAnchor4 = [(UIView *)self->_hideableFooterView bottomAnchor];
  view4 = [(SearchViewController *)self view];
  bottomAnchor5 = [view4 bottomAnchor];
  v112 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v113 = self->_bottomHideableFooterConstraint;
  self->_bottomHideableFooterConstraint = v112;

  trailingAnchor = [(UIView *)self->_hideableFooterView trailingAnchor];
  view5 = [(SearchViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v116 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v117 = self->_bottomHideableFooterConstraint;
  v139[0] = v116;
  v139[1] = v117;
  leadingAnchor4 = [(UIView *)self->_hideableFooterView leadingAnchor];
  view6 = [(SearchViewController *)self view];
  leadingAnchor5 = [view6 leadingAnchor];
  v121 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v139[2] = v121;
  v122 = [NSArray arrayWithObjects:v139 count:3];
  [v135 addObjectsFromArray:v122];

  [NSLayoutConstraint activateConstraints:v135];
  searchTextField2 = [(PassthruSearchBar *)self->_searchBar searchTextField];
  [searchTextField2 addTarget:self action:"didSelectSearchBar:" forControlEvents:1];

  v124 = +[NSNotificationCenter defaultCenter];
  [v124 addObserver:self selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v125 = +[NSNotificationCenter defaultCenter];
  [v125 addObserver:self selector:"popoverPresented:" name:@"MacPopoverPresentationControllerDidPresentPopover" object:0];

  v126 = +[NSNotificationCenter defaultCenter];
  [v126 addObserver:self selector:"popoverDismissed:" name:@"MacPopoverPresentationControllerDidDismissPopover" object:0];

  v127 = +[NSNotificationCenter defaultCenter];
  [v127 addObserver:self selector:"_offlineSettingChangeHandler" name:@"UsingOfflineMapsStateChangedNotification" object:0];

  v128 = +[NSNotificationCenter defaultCenter];
  [v128 addObserver:self selector:"_preventAutoPresentingKeyboard_rdar_126940251" name:@"SearchViewPreventAutoPresentingKeyboard_rdar_126940251" object:0];

  [(SearchViewController *)self _startMonitoringCoreRoutine];
  +[KeyboardAvoidingView startObservingKeyboard];
  [(SearchViewController *)self _contentAlphaForCurrentLayout];
  [(SearchViewController *)self _updateHeaderHairlineAlphaWithContentAlpha:0 animated:?];
}

- (void)viewLayoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = SearchViewController;
  [(SearchViewController *)&v4 viewLayoutMarginsDidChange];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController bottomSafeOffset];
  [(LocalSearchViewController *)self->_localSearchViewController setBottomInset:?];
}

- (void)_updateUserProfileEntryPointImage
{
  v5 = +[UserInformationManager sharedInstance];
  userProfileButton = self->_userProfileButton;
  userIcon = [v5 userIcon];
  [(UIButton *)userProfileButton setImage:userIcon forState:0];
}

- (void)_setPlaceHolder
{
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) != 0)
  {
    v3 = sub_100067540();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "UIApplication shouldMakeUIForDefaultPNG true. The search bar placeholder string will not changed in this case.", buf, 2u);
    }
  }

  else
  {
    [(SearchViewController *)self _setupOnlinePlaceholder];
    _placeholderLabel = [(UITextField *)self->_searchField _placeholderLabel];
    [_placeholderLabel setAllowsDefaultTighteningForTruncation:1];
  }
}

- (void)_setupOnlinePlaceholder
{
  v3 = +[NSLocale preferredLanguages];
  firstObject = [v3 firstObject];
  v10 = [NSString stringWithFormat:@"%@-%@", @"__internal__searchBarPlaceholderV2", firstObject];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:v10];

  searchField = self->_searchField;
  if (v6)
  {
    [(UITextField *)searchField setPlaceholder:v6];
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Search for a place or address" value:@"localized string not found" table:0];
    [(UITextField *)searchField setPlaceholder:v9];
  }
}

- (void)_startMonitoringCoreRoutine
{
  v3 = +[CoreRoutineLocationOfInterestManager sharedManager];
  v2 = [NSSet setWithArray:&off_1016ED160];
  [v3 monitorLOIsOfTypes:v2];
}

- (double)_contentAlphaForCurrentLayout
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController contentAlpha];
  v4 = v3;

  return v4;
}

- (void)_internalViewWillAppear
{
  [(SearchViewController *)self updateDataSource];
  [(SearchViewController *)self _restoreRetainedQueryIfNeeded];
  [(SearchViewController *)self _configureSearchBarIfNeeded];
  [(SearchViewController *)self _configureForceTouchIfNeeded];
  [(SearchViewController *)self _addVenueObserver];
  if (!self->_currentDataSource)
  {
    [(HomeViewController *)self->_homeViewController scrollContentToOriginalPosition];
  }

  v4 = +[UserInformationManager sharedInstance];
  observers = [v4 observers];
  [observers registerObserver:self queue:&_dispatch_main_q];
}

- (void)updateDataSource
{
  if (![(SearchViewController *)self isViewLoaded])
  {
    return;
  }

  text = [(UITextField *)self->_searchField text];
  _maps_stringByTrimmingLeadingWhitespace = [text _maps_stringByTrimmingLeadingWhitespace];
  if ([_maps_stringByTrimmingLeadingWhitespace length])
  {
    v5 = 1;
  }

  else if (sub_10000FA08(self) == 5)
  {
    v5 = 0;
  }

  else
  {
    searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
    v5 = searchResultsViewController != 0;
  }

  if (([(UITextField *)self->_searchField isFirstResponder]& 1) != 0 || ([(PassthruSearchBar *)self->_searchBar showsCancelButton]& 1) != 0)
  {
    isSearchingAlongTheRoute = 1;
  }

  else
  {
    isSearchingAlongTheRoute = [(SearchViewController *)self isSearchingAlongTheRoute];
  }

  if (sub_10000FA08(self) == 5)
  {
    if ([(SearchViewController *)self _showsContentInDropDownMenu])
    {
      if (v5)
      {
        menuController = [(SearchViewController *)self menuController];
        macMenuPresentationController = [menuController macMenuPresentationController];
        isPresented = [macMenuPresentationController isPresented];
      }

      else
      {
        isPresented = 0;
      }

      menuController2 = [(SearchViewController *)self menuController];
      macMenuPresentationController2 = [menuController2 macMenuPresentationController];
      isSearchingAlongTheRoute = [macMenuPresentationController2 isPresented];

      if ((isPresented & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_18:
      searchDataSource = [(SearchViewController *)self searchDataSource];
      goto LABEL_23;
    }

    isSearchingAlongTheRoute = 0;
  }

  if (v5)
  {
    goto LABEL_18;
  }

LABEL_21:
  if (!isSearchingAlongTheRoute)
  {
    v15 = +[MapsOfflineUIHelper sharedHelper];
    if ([v15 isUsingOfflineMaps])
    {
      supportsFullTextSearch = self->_supportsFullTextSearch;

      if (!supportsFullTextSearch)
      {
        [(SearchViewController *)self _shouldHideOfflineHeaderView:1];
        [(UITextField *)self->_searchField resignFirstResponder];
      }
    }

    else
    {
    }

    v14 = 0;
    goto LABEL_29;
  }

  searchDataSource = [(SearchViewController *)self searchHomeDataSource];
LABEL_23:
  v14 = searchDataSource;
LABEL_29:
  v19 = v14;
  [(SearchViewController *)self setCurrentDataSource:v14];
  v17 = +[MapsOfflineUIHelper sharedHelper];
  if ([v17 isUsingOfflineMaps])
  {
    v18 = self->_supportsFullTextSearch;

    if (!v18)
    {
      [(UITextField *)self->_searchField resignFirstResponder];
    }
  }

  else
  {
  }
}

- (void)_updateUserProfileEntryPointButton
{
  if (sub_10000FA08(self) != 5 && ![(SearchViewController *)self isSearchingAlongTheRoute])
  {
    searchResultsViewController = [(SearchViewController *)self searchResultsViewController];

    if (!searchResultsViewController)
    {

      [(SearchViewController *)self updateSearchBarContentInsets];
    }
  }
}

- (void)updateIsTouristHereValue
{
  mapsSuggestionsLoadingSearchQueue = self->_mapsSuggestionsLoadingSearchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000543DC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(mapsSuggestionsLoadingSearchQueue, block);
}

- (id)_homeViewController
{
  if ([(SearchViewController *)self isViewLoaded])
  {
    homeViewController = self->_homeViewController;
    if (!homeViewController)
    {
      v4 = [HomeViewController alloc];
      WeakRetained = objc_loadWeakRetained(&self->_deferredHomeActionDelegate);
      v6 = WeakRetained;
      if (WeakRetained)
      {
        selfCopy = WeakRetained;
      }

      else
      {
        selfCopy = self;
      }

      v8 = [(HomeViewController *)v4 initWithDelegate:selfCopy];
      v9 = self->_homeViewController;
      self->_homeViewController = v8;

      objc_storeWeak(&self->_deferredHomeActionDelegate, 0);
      homeViewController = self->_homeViewController;
    }

    v10 = homeViewController;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newTraits
{
  delegate = [(ControlContaineeViewController *)self delegate];
  newTraits = [delegate newTraits];

  return newTraits;
}

- (void)_restoreRetainedQueryIfNeeded
{
  currentSearchSession = [(SearchViewController *)self currentSearchSession];

  if (!currentSearchSession)
  {
    objc_initWeak(&location, self);
    retainedQueryController = self->_retainedQueryController;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000675D8;
    v5[3] = &unk_101630610;
    objc_copyWeak(&v6, &location);
    [(RetainedQueryController *)retainedQueryController restoreIfNeededWithBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (id)currentSearchSession
{
  delegate = [(ControlContaineeViewController *)self delegate];
  currentSearchSession = [delegate currentSearchSession];

  return currentSearchSession;
}

- (void)cleanSearch
{
  searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
  if (searchResultsViewController)
  {
    [searchResultsViewController willMoveToParentViewController:0];
    view = [searchResultsViewController view];
    [view removeFromSuperview];

    [searchResultsViewController removeFromParentViewController];
    closeSearchResultsButton = [(SearchViewController *)self closeSearchResultsButton];
    [closeSearchResultsButton setHidden:1];
  }

  [(SearchDataSource *)self->_searchDataSource reset];
  v5 = objc_alloc_init(SearchFieldItem);
  [(SearchViewController *)self updateSearchFieldWithItem:v5];

  userTypedSearchString = self->_userTypedSearchString;
  self->_userTypedSearchString = 0;

  [(SearchViewController *)self _hideSearchHereControl];
}

- (void)_updateSearchFieldText
{
  currentSearchSession = [(SearchViewController *)self currentSearchSession];
  suggestion = [currentSearchSession suggestion];
  searchBarDisplayToken = [suggestion searchBarDisplayToken];

  if (searchBarDisplayToken)
  {
    searchString = searchBarDisplayToken;
  }

  else
  {
    searchString = [(SearchFieldItem *)self->_searchItem searchString];
  }

  v6 = searchString;
  searchField = [(PassthruSearchBar *)self->_searchBar searchField];
  text = [searchField text];
  if (![text isEqualToString:v6])
  {

    goto LABEL_8;
  }

  isFirstResponder = [searchField isFirstResponder];

  if ((isFirstResponder & 1) == 0)
  {
LABEL_8:
    [CATransaction setFrameStallSkipRequest:1];
    [searchField setText:v6];
  }
}

- (void)setNeedsUpdateContentState
{
  if (!self->_needsUpdateContentState)
  {
    self->_needsUpdateContentState = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10099B498;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_hideSearchHereControl
{
  delegate = [(ControlContaineeViewController *)self delegate];
  containerViewController = [delegate containerViewController];
  chromeViewController = [containerViewController chromeViewController];

  [chromeViewController setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
  redoSearchOverlay = [chromeViewController redoSearchOverlay];
  [redoSearchOverlay shouldHideFloatingControl:1 animated:0];
}

- (void)_configureSearchBarIfNeeded
{
  if (!self->_isConfigured)
  {
    self->_isConfigured = 1;
    [(SearchViewController *)self _initPlaceholderWithSubmitTicketIfNeeded:1];
  }
}

- (void)_configureForceTouchIfNeeded
{
  if (!self->_quickActionMenuPresenter)
  {
    v3 = [[SearchResultQuickActionMenuPresenter alloc] initWithTableView:self->_contentTableView];
    quickActionMenuPresenter = self->_quickActionMenuPresenter;
    self->_quickActionMenuPresenter = v3;

    v5 = self->_quickActionMenuPresenter;

    [(QuickActionMenuPresenter *)v5 setDelegate:self];
  }
}

- (void)_addVenueObserver
{
  delegate = [(ControlContaineeViewController *)self delegate];
  venuesManager = [delegate venuesManager];
  [venuesManager addChangeObserver:self];

  browseVenueBusinessController = [(LocalSearchViewController *)self->_localSearchViewController browseVenueBusinessController];
  delegate2 = [(ControlContaineeViewController *)self delegate];
  venuesManager2 = [delegate2 venuesManager];
  venueWithFocus = [venuesManager2 venueWithFocus];
  [browseVenueBusinessController handleVenueWithFocusDidChange:venueWithFocus];
}

- (VisitedPlacesCommonActionsHandlingDelegate)visitedPlacesCommonActionsHandlingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_visitedPlacesCommonActionsHandlingDelegate);

  return WeakRetained;
}

- (PersonalizedItemManager)personalizedItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->_personalizedItemManager);

  return WeakRetained;
}

- (NavActionCoordination)navContaineeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navContaineeDelegate);

  return WeakRetained;
}

- (BOOL)shouldShowSearchOverlay
{
  searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
  if ([searchResultsViewController isPresentingAddStopResultsFromWaypointEditor] && (GEOConfigGetBOOL() & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else if (self->_didTriggerAutoRedoSearch)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    delegate = [(ControlContaineeViewController *)self delegate];
    currentSearchSession = [delegate currentSearchSession];
    searchInfo = [currentSearchSession searchInfo];

    if (searchInfo && ([searchInfo searchRedoButtonThreshold], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      localSearchViewController = [(SearchViewController *)self localSearchViewController];
      refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
      shouldShowManualRedoButton = [refreshSearchHereBusinessController shouldShowManualRedoButton];

      v4 = shouldShowManualRedoButton & [searchInfo shouldAllowManualRedoButton];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)supportsFullTextSearch
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v3 isUsingOfflineMaps];

  return isUsingOfflineMaps && self->_supportsFullTextSearch;
}

- (void)didStartDownloadFromAutocomplete
{
  if (self->_downloadedSearchResult)
  {
    [(SearchViewController *)self endSearch];
    delegate = [(ControlContaineeViewController *)self delegate];
    [delegate viewController:self selectSearchResult:self->_downloadedSearchResult addToHistory:1 source:2 saveSelectionState:1 replaceCurrentCard:1];

    downloadedSearchResult = self->_downloadedSearchResult;
    self->_downloadedSearchResult = 0;
  }

  else
  {
    v5 = sub_100067540();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
    }
  }
}

- (void)pptSelectACSuggestionMatchingAddress:(id)address
{
  addressCopy = address;
  currentDataSource = [(SearchViewController *)self currentDataSource];
  objectsForAnalytics = [currentDataSource objectsForAnalytics];
  firstObject = [objectsForAnalytics firstObject];
  items = [firstObject items];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = items;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          autocompleteObject = [v12 autocompleteObject];
          if (objc_opt_respondsToSelector())
          {
            mapItem = [autocompleteObject mapItem];
            if (mapItem)
            {
              v15 = mapItem;
              mapItem2 = [autocompleteObject mapItem];
              _shortAddress = [mapItem2 _shortAddress];
              v22 = [_shortAddress isEqualToString:addressCopy];

              if (v22)
              {
                v18 = sub_100067540();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v28 = addressCopy;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "PPT: Found map item matching address: %@", buf, 0xCu);
                }

                [(SearchViewController *)self dataSource:self->_searchDataSource itemTapped:autocompleteObject];
                goto LABEL_18;
              }
            }
          }
        }

        else
        {
          autocompleteObject = 0;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

- (void)pptSelectFirstCuratedCollection
{
  searchHomeDataSource = [(SearchViewController *)self searchHomeDataSource];
  [searchHomeDataSource _ppt_selectFirstCuratedGuide];
}

- (void)pptSelectFirstGuidePublisher
{
  searchHomeDataSource = [(SearchViewController *)self searchHomeDataSource];
  [searchHomeDataSource _ppt_selectFirstGuidePublisher];
}

- (void)pptSelectSeeAllCuratedCollections
{
  searchHomeDataSource = [(SearchViewController *)self searchHomeDataSource];
  [searchHomeDataSource _ppt_selectSeeAllCuratedCollections];
}

- (void)pptSetSearchDataSource
{
  searchDataSource = [(SearchViewController *)self searchDataSource];
  [(SearchViewController *)self setCurrentDataSource:searchDataSource];
}

- (void)pptSearchBarShouldProvideTextChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_textFieldDidChange:" name:@"PPTShouldSendTextChangeNotification" object:self->_searchField];
}

- (UIScrollView)pptTestScrollView
{
  searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
  if ([(SearchViewController *)self isShowingOmnipresentSearchBar]&& searchResultsViewController)
  {
    v4 = searchResultsViewController;
    if (objc_opt_respondsToSelector())
    {
      pptTestScrollView = [v4 pptTestScrollView];

      goto LABEL_14;
    }
  }

  if (self->_currentDataSource)
  {
    pptTestScrollView = [(SearchViewController *)self currentDataSource];
    presentationStyle = [pptTestScrollView presentationStyle];

    if (presentationStyle == 1)
    {
      v7 = 240;
    }

    else
    {
      if (presentationStyle)
      {
        goto LABEL_14;
      }

      v7 = 232;
    }

    scrollView = *(&self->super.super.super.super.super.super.isa + v7);
  }

  else
  {
    scrollView = [(HomeViewController *)self->_homeViewController scrollView];
  }

  pptTestScrollView = scrollView;
LABEL_14:

  return pptTestScrollView;
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  if ([(SearchViewController *)self isSearchingAlongTheRoute:tapped])
  {
    navContaineeDelegate = [(SearchViewController *)self navContaineeDelegate];
    [navContaineeDelegate dismissAddStop];

    v6 = +[MKMapService sharedService];
    [v6 captureUserAction:4 onTarget:-[SearchViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  browseModeHeaderView = [(SearchViewController *)self browseModeHeaderView];
  isHidden = [browseModeHeaderView isHidden];

  if ((isHidden & 1) == 0)
  {
    [(SearchViewController *)self endSearch];

    [(SearchViewController *)self _shouldHideOfflineHeaderView:1];
  }
}

- (void)macMenuPresentationControllerDidDismiss:(id)dismiss
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10098EB30;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  [UIView animateWithDuration:v7 animations:0.25];
  homeActionCoordinator = [(SearchViewController *)self homeActionCoordinator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    homeActionCoordinator2 = [(SearchViewController *)self homeActionCoordinator];
    [homeActionCoordinator2 makeMapViewFirstResponder];
  }

  [(SearchViewController *)self updateDataSource];
}

- (int)currentMapViewTargetForAnalytics
{
  searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
  isShowingOmnipresentSearchBar = [(SearchViewController *)self isShowingOmnipresentSearchBar];
  currentMapViewTargetForAnalytics = 502;
  if (isShowingOmnipresentSearchBar && searchResultsViewController && sub_100010C34(searchResultsViewController, &OBJC_PROTOCOL___GEOLogContextDelegate))
  {
    v6 = searchResultsViewController;
    if (objc_opt_respondsToSelector())
    {
      currentMapViewTargetForAnalytics = [v6 currentMapViewTargetForAnalytics];
    }
  }

  return currentMapViewTargetForAnalytics;
}

- (BOOL)shouldQuickActionMenuPresenter:(id)presenter showDirectionsToPlace:(id)place
{
  placeCopy = place;
  delegate = [(ControlContaineeViewController *)self delegate];
  venuesManager = [delegate venuesManager];
  mapItem = [placeCopy mapItem];

  LOBYTE(placeCopy) = [venuesManager isUserAtSameVenueAsMapItem:mapItem];
  return placeCopy ^ 1;
}

- (void)quickActionMenuPresenter:(id)presenter selectedRemoveDroppedPinOf:(id)of
{
  searchResult = [presenter searchResult];
  if (searchResult)
  {
    v7 = searchResult;
    delegate = [(ControlContaineeViewController *)self delegate];
    [delegate viewController:0 removeDroppedPin:v7];

    searchResult = v7;
  }
}

- (id)mapServiceTraitsForQuickActionPresenter:(id)presenter
{
  delegate = [(ControlContaineeViewController *)self delegate];
  newTraits = [delegate newTraits];

  return newTraits;
}

- (void)quickActionMenuPresenter:(id)presenter selectedShowPlaceCard:(id)card
{
  v5 = [(SearchResultQuickActionMenuPresenter *)self->_quickActionMenuPresenter indexPath:presenter];
  if (v5)
  {
    v10 = v5;
    currentDataSource = [(SearchViewController *)self currentDataSource];
    indexPath = [(SearchResultQuickActionMenuPresenter *)self->_quickActionMenuPresenter indexPath];
    v8 = [currentDataSource objectAtIndexPath:indexPath];

    currentDataSource2 = [(SearchViewController *)self currentDataSource];
    [(SearchViewController *)self dataSource:currentDataSource2 itemTapped:v8];

    v5 = v10;
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedShareLocationOf:(id)of
{
  searchResult = [presenter searchResult];
  v6 = searchResult;
  if (searchResult)
  {
    contactForSharingToMessages = [searchResult contactForSharingToMessages];
    v8 = [ShareItem shareItemWithSearchResult:v6 contact:contactForSharingToMessages includePrintActivity:0];

    self->_maintainSearchStateWhenDisappearing = 1;
    delegate = [(ControlContaineeViewController *)self delegate];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10098EF4C;
    v10[3] = &unk_101661B18;
    v10[4] = self;
    [delegate viewController:0 doShareSheetForShareItem:v8 completion:v10];

    [(SearchViewController *)self _addRecentPlaceForSearchResult:v6];
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedViewWebsiteFor:(id)for
{
  searchResult = [presenter searchResult];
  if (searchResult)
  {
    v7 = searchResult;
    delegate = [(ControlContaineeViewController *)self delegate];
    [delegate viewController:0 openWebsiteForSearchResult:v7];

    [(SearchViewController *)self _addRecentPlaceForSearchResult:v7];
    searchResult = v7;
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedCall:(id)call
{
  searchResult = [presenter searchResult];
  if (searchResult)
  {
    v7 = searchResult;
    delegate = [(ControlContaineeViewController *)self delegate];
    [delegate viewController:0 doAudioCallToSearchResult:v7];

    [(SearchViewController *)self _addRecentPlaceForSearchResult:v7];
    searchResult = v7;
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedDirectionsTo:(id)to
{
  searchResult = [presenter searchResult];
  if (searchResult)
  {
    v6 = objc_alloc_init(SearchFieldItem);
    v7 = +[SearchResult currentLocationSearchResult];
    [(SearchFieldItem *)v6 setSearchResult:v7];

    v8 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v8 setSearchResult:searchResult];
    v9 = [DirectionItem alloc];
    v16[0] = v6;
    v16[1] = v8;
    v10 = [NSArray arrayWithObjects:v16 count:2];
    v11 = [(DirectionItem *)v9 initWithItems:v10 transportType:0];

    v14 = @"DirectionsSessionInitiatorKey";
    v15 = &off_1016E7DF0;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    delegate = [(ControlContaineeViewController *)self delegate];
    [delegate viewController:0 doDirectionItem:v11 withUserInfo:v12];

    [(SearchViewController *)self _addRecentPlaceForSearchResult:searchResult];
  }
}

- (void)_addRecentPlaceForSearchResult:(id)result
{
  resultCopy = result;
  v4 = resultCopy;
  if (resultCopy)
  {
    v8 = resultCopy;
    isHomeOrWork = [resultCopy isHomeOrWork];
    v4 = v8;
    if ((isHomeOrWork & 1) == 0)
    {
      mapItem = [v8 mapItem];
      searchToSupersedeIfRecordedInHistory = [v8 searchToSupersedeIfRecordedInHistory];
      [HistoryEntryRecentsItem saveMapItem:mapItem superseedUUID:searchToSupersedeIfRecordedInHistory];

      v4 = v8;
    }
  }
}

- (int)currentUITargetForAnalytics
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 11;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 8;
    }

    v3 = 13;
  }

  if ([(SearchViewController *)self isSearchingAlongTheRoute])
  {
    return 59;
  }

  else
  {
    return v3;
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  v9.receiver = self;
  v9.super_class = SearchViewController;
  [(ContaineeViewController *)&v9 scrollViewWillEndDragging:dragging withVelocity:offset targetContentOffset:velocity.x];
  if (y <= 0.0)
  {
    v7 = 7;
  }

  else
  {
    v7 = 8;
  }

  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:v7 onTarget:-[SearchViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v3.receiver = self;
  v3.super_class = SearchViewController;
  [(ContaineeViewController *)&v3 scrollViewWillBeginDragging:dragging];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4.receiver = self;
  v4.super_class = SearchViewController;
  [(ContaineeViewController *)&v4 scrollViewDidScroll:scroll];
  [(SearchViewController *)self _contentAlphaForCurrentLayout];
  [(SearchViewController *)self _updateHeaderHairlineAlphaWithContentAlpha:1 animated:?];
}

- (void)_updateHeaderHairlineAlphaWithContentAlpha:(double)alpha animated:(BOOL)animated
{
  animatedCopy = animated;
  alphaCopy2 = 0.0;
  if (sub_10000FA08(self) == 5)
  {
    goto LABEL_16;
  }

  currentDataSource = self->_currentDataSource;
  if (currentDataSource)
  {
    searchHomeDataSource = self->_searchHomeDataSource;
    if (currentDataSource == searchHomeDataSource && [(SearchHomeDataSource *)searchHomeDataSource shouldHideHairLine])
    {
      goto LABEL_16;
    }

    currentDataSource = [(SearchViewController *)self currentDataSource];
    presentationStyle = [currentDataSource presentationStyle];

    if (presentationStyle == 1)
    {
      v12 = 240;
LABEL_13:
      if ([*(&self->super.super.super.super.super.super.isa + v12) _maps_shouldShowTopHairline])
      {
        alphaCopy2 = alpha;
      }

      else
      {
        alphaCopy2 = 0.0;
      }

      goto LABEL_16;
    }

    if (!presentationStyle)
    {
      v12 = 232;
      goto LABEL_13;
    }
  }

  else
  {
    shouldShowTopHairline = [(HomeViewController *)self->_homeViewController shouldShowTopHairline];
    if (shouldShowTopHairline)
    {
      alphaCopy2 = alpha;
    }

    else
    {
      alphaCopy2 = 0.0;
    }

    scrollView = [(HomeViewController *)self->_homeViewController scrollView];
    [scrollView setClipsToBounds:shouldShowTopHairline];
  }

LABEL_16:
  if (_UISolariumEnabled())
  {
    v15 = 0.0;
  }

  else
  {
    v15 = alphaCopy2;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10098F608;
  v17[3] = &unk_101638450;
  v17[4] = self;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10098F61C;
  v16[3] = &unk_101638478;
  v16[4] = self;
  [UIScrollView _maps_updateTopHairlineAlpha:animatedCopy animated:v17 getter:v16 setter:v15];
}

- (void)refreshCurrentSearch
{
  if (!self->_isSearchAndDiscoveryEnabled)
  {
    goto LABEL_8;
  }

  searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
  if (!searchResultsViewController || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_8:
    delegate = [(ControlContaineeViewController *)self delegate];
    delegate2 = [(ControlContaineeViewController *)self delegate];
    currentSearchSession = [delegate2 currentSearchSession];
    searchFieldItem = [currentSearchSession searchFieldItem];
    v9 = @"SearchSessionIsAutoRedoSearch";
    v10 = &__kCFBooleanTrue;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [delegate viewController:self doSearchItem:searchFieldItem withUserInfo:v7];

    return;
  }

  [searchResultsViewController refreshCurrentSearch];
}

- (void)selectNearbyCategoryAtIndex:(unint64_t)index
{
  searchHomeDataSource = [(SearchViewController *)self searchHomeDataSource];
  [searchHomeDataSource _ppt_selectCategoryAtIndex:index];
}

- (void)textDroppableView:(id)view dropSessionDidEnd:(id)end
{
  endCopy = end;
  mapsDragDestinationHandler = [(SearchViewController *)self mapsDragDestinationHandler];
  [mapsDragDestinationHandler endDrop:endCopy];
}

- (void)textDroppableView:(id)view willPerformDrop:(id)drop
{
  dropCopy = drop;
  viewCopy = view;
  [viewCopy bounds];
  v10 = v8 + v9 * 0.5;
  v13 = v11 + v12 * 0.5;
  mapsDragDestinationHandler = [(SearchViewController *)self mapsDragDestinationHandler];
  dropSession = [dropCopy dropSession];

  [mapsDragDestinationHandler performDrop:dropSession finishingAtLocation:viewCopy inView:{v10, v13}];
}

- (id)textDroppableView:(id)view proposalForDrop:(id)drop
{
  dropCopy = drop;
  [0 setDropPerformer:1];
  dropSession = [dropCopy dropSession];
  localDragSession = [dropSession localDragSession];

  v8 = [UITextDropProposal alloc];
  if (localDragSession)
  {
    v9 = [v8 initWithDropOperation:0];
  }

  else
  {
    v9 = [v8 initWithDropOperation:2];
    mapsDragDestinationHandler = [(SearchViewController *)self mapsDragDestinationHandler];
    dropSession2 = [dropCopy dropSession];
    [mapsDragDestinationHandler beginDrop:dropSession2];
  }

  return v9;
}

- (void)_textFieldDidChange:(id)change tappedQuerySuggestionCompletion:(id)completion
{
  completionCopy = completion;
  text = [(UITextField *)self->_searchField text];
  _maps_stringByTrimmingLeadingWhitespace = [text _maps_stringByTrimmingLeadingWhitespace];

  if ([_maps_stringByTrimmingLeadingWhitespace length] == 1 && !self->_noTypingSent && self->_currentDataSource == &self->_searchHomeDataSource->super)
  {
    self->_noTypingSent = 1;
    [(SearchHomeDataSource *)self->_searchHomeDataSource sendNoTypingACAnalytics];
  }

  self->_hasEdited = 1;
  if ([_maps_stringByTrimmingLeadingWhitespace length])
  {
    v7 = _maps_stringByTrimmingLeadingWhitespace;
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&self->_userTypedSearchString, v7);
  v8 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v9 = [_maps_stringByTrimmingLeadingWhitespace stringByTrimmingCharactersInSet:v8];
  v10 = [v9 length];

  if (!v10)
  {
    [(SearchViewController *)self clearRetainedSearchQuery];
  }

  [(SearchViewController *)self sendACRequestWithTappedQuerySuggestionCompletion:completionCopy retainQueryMetadata:0];
}

- (void)_textFieldDidChange:(id)change
{
  changeCopy = change;
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    text = [(UITextField *)self->_searchField text];
    v14 = 138412290;
    v15 = text;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Processing autocomplete query: %@", &v14, 0xCu);
  }

  [(SearchViewController *)self _textFieldDidChange:changeCopy tappedQuerySuggestionCompletion:0];
  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v7 currentInputMode];

  identifier = [currentInputMode identifier];
  v10 = UIKeyboardInputModeGetBaseLanguage();
  v11 = [v10 isEqualToString:@"ja"];

  if (v11)
  {
    markedTextRange = [(UITextField *)self->_searchField markedTextRange];

    if (!markedTextRange)
    {
      v13 = +[MKMapService sharedService];
      [v13 captureUserAction:458 onTarget:127 eventValue:0];
    }
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Keyboard search button pressed", v11, 2u);
  }

  text = [returnCopy text];

  _maps_stringByTrimmingLeadingWhitespace = [text _maps_stringByTrimmingLeadingWhitespace];
  v8 = [_maps_stringByTrimmingLeadingWhitespace length];

  if (v8)
  {
    if (sub_10000FA08(self) == 5)
    {
      delegate = [(ControlContaineeViewController *)self delegate];
      [delegate clearSearchPins];
    }

    [(SearchViewController *)self sendSearchRequest];
    [(UITextField *)self->_searchField resignFirstResponder];
  }

  return v8 != 0;
}

- (BOOL)textFieldShouldClear:(id)clear
{
  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Clearing text field", v9, 2u);
  }

  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:2002 onTarget:-[SearchViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  [(SearchViewController *)self clearRetainedSearchQuery];
  searchDataProvider = [(SearchDataSource *)self->_searchDataSource searchDataProvider];
  [searchDataProvider clearMKLocalSearchCompleterQueryState];

  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate clearSearch];

  [(SearchDataSource *)self->_searchDataSource clearAutocompleteResults];
  if (sub_10000FA08(self) != 5)
  {
    [(SearchViewController *)self searchBarBecomeFirstResponder];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  [(SearchViewController *)self setNeedsUpdateContentState];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"SearchTextFieldDidEndEditingNotification" object:self];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Search bar selected", buf, 2u);
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  if ([cardPresentationController containeeLayout] == 1)
  {
  }

  else
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    containeeLayout = [cardPresentationController2 containeeLayout];

    if (containeeLayout != 2)
    {
      goto LABEL_7;
    }
  }

  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController3 wantsLayout:3];

LABEL_7:
  if (!self->_searchItem)
  {
    v10 = objc_alloc_init(SearchFieldItem);
    searchItem = self->_searchItem;
    self->_searchItem = v10;
  }

  self->_hasEdited = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1009901D0;
  v21[3] = &unk_101661B18;
  v21[4] = self;
  v12 = objc_retainBlock(v21);
  if (sub_10000FA08(self) == 5)
  {
    (v12[2])(v12);
  }

  else
  {
    cardPresentationController4 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController4 applyWithAnimations:v12 completion:&stru_101630738];
  }

  [(SearchViewController *)self updateDataSource];
  if (sub_10000FA08(self) == 5)
  {
    text = [editingCopy text];
    v15 = [text length];

    if (v15)
    {
      currentDataSource = [(SearchViewController *)self currentDataSource];
      v17 = [currentDataSource conformsToProtocol:&OBJC_PROTOCOL___SearchDataProviding];

      if (v17)
      {
        currentDataSource2 = [(SearchViewController *)self currentDataSource];
        hasResults = [currentDataSource2 hasResults];

        if ((hasResults & 1) == 0)
        {
          [(SearchViewController *)self _textFieldDidChange:0];
        }
      }
    }
  }

  v20 = +[NSNotificationCenter defaultCenter];
  [v20 postNotificationName:@"SearchTextFieldDidBeginEditingNotification" object:self];
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  self->_noTypingSent = 0;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:2001 onTarget:-[SearchViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  delegate = [(ControlContaineeViewController *)self delegate];
  newTraits = [delegate newTraits];
  v7 = +[BrowseManager sharedManager];
  [v7 setTraits:newTraits];

  return 1;
}

- (void)searchBar:(id)bar didPasteMapsLink:(id)link
{
  linkCopy = link;
  _maps_platformController = [(SearchViewController *)self _maps_platformController];
  entryPointsCoordinator = [_maps_platformController entryPointsCoordinator];
  _maps_uiScene = [(SearchViewController *)self _maps_uiScene];
  session = [_maps_uiScene session];
  view = [(SearchViewController *)self view];
  window = [view window];
  [window bounds];
  [entryPointsCoordinator openURL:linkCopy session:session sceneOptions:0 mkOptions:0 windowSize:{v11, v12}];
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:2003 onTarget:-[SearchViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  [(SearchViewController *)self endSearch];
}

- (ParkedCarActionDelegate)homeParkedCarActionDelegate
{
  delegate = [(ControlContaineeViewController *)self delegate];
  appCoordinator = [delegate appCoordinator];

  return appCoordinator;
}

- (ShareDelegate)homeShareDelegate
{
  delegate = [(ControlContaineeViewController *)self delegate];
  appCoordinator = [delegate appCoordinator];

  return appCoordinator;
}

- (void)homeDidTapTermsAndConditions
{
  v3 = GEOConfigGetString();
  v5 = [NSURL URLWithString:v3];

  homeActionCoordinator = [(SearchViewController *)self homeActionCoordinator];
  [homeActionCoordinator viewController:self openURL:v5];
}

- (void)homeDidTapReportAProblem
{
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate viewControllerShowReports:self];
}

- (void)homeDidTapMarkMyLocation
{
  v3 = +[NSBundle mainBundle];
  v7 = [v3 localizedStringForKey:@"Mark My Location [App Delegate]" value:@"localized string not found" table:0];

  v4 = [[UIApplicationShortcutItem alloc] initWithType:@"com.apple.Maps.action.mark-my-location-from-app-delegate" localizedTitle:v7 localizedSubtitle:0 icon:0 userInfo:0];
  _maps_mapsSceneDelegate = [(SearchViewController *)self _maps_mapsSceneDelegate];
  entryPointsCoordinator = [_maps_mapsSceneDelegate entryPointsCoordinator];
  [entryPointsCoordinator openShortcutItem:v4];
}

- (void)homeDidTapShareMyLocation
{
  v3 = +[NSBundle mainBundle];
  v7 = [v3 localizedStringForKey:@"Share My Location [App Delegate]" value:@"localized string not found" table:0];

  v4 = [[UIApplicationShortcutItem alloc] initWithType:@"com.apple.Maps.action.share-location-from-app-delegate" localizedTitle:v7 localizedSubtitle:0 icon:0 userInfo:0];
  _maps_mapsSceneDelegate = [(SearchViewController *)self _maps_mapsSceneDelegate];
  entryPointsCoordinator = [_maps_mapsSceneDelegate entryPointsCoordinator];
  [entryPointsCoordinator openShortcutItem:v4];
}

- (void)homeDidTapOnContainment:(id)containment forResults:(id)results
{
  resultsCopy = results;
  containmentCopy = containment;
  v11 = [[SearchResult alloc] initWithMapItem:containmentCopy];

  v8 = [resultsCopy arrayByAddingObject:v11];

  delegate = [(ControlContaineeViewController *)self delegate];
  searchPinsManager = [delegate searchPinsManager];
  [searchPinsManager setSearchPins:v8 selectedPin:v11 animated:1];
}

- (void)homeContentDidUpdate
{
  [(SearchViewController *)self _contentAlphaForCurrentLayout];
  [(SearchViewController *)self _updateHeaderHairlineAlphaWithContentAlpha:0 animated:?];
  [(SearchViewController *)self _invalidateMediumHeightCache];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];

  if (containerStyle == 6)
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 updateHeightForCurrentLayout];
  }
}

- (void)homeSectionHeaderButtonTapped:(int64_t)tapped
{
  switch(tapped)
  {
    case 5:
      delegate = [(ControlContaineeViewController *)self delegate];
      [delegate viewControllerShowMyRecents:self includeRecentSearches:0];
      break;
    case 3:
      delegate = [(ControlContaineeViewController *)self delegate];
      [delegate viewControllerShowCollections:self];
      break;
    case 2:
      v4 = _UISolariumEnabled();
      delegate2 = [(ControlContaineeViewController *)self delegate];
      delegate = delegate2;
      if (v4)
      {
        [delegate2 viewControllerShowLibraryRootView:self];
      }

      else
      {
        [delegate2 viewControllerShowMyShortcuts:self];
      }

      break;
    default:
      return;
  }
}

- (void)homeDidTapRecentlyAdded
{
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate toggleTopLevelRecentlyAdded];
}

- (void)homeDidTapVisitedPlaces
{
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate toggleTopLevelVisitedPlaces];
}

- (void)homeDidTapSavedRoutes
{
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate toggleTopLevelSavedRoutes];
}

- (void)homeDidTapSeeAllUserGuides
{
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate toggleTopLevelGuides];
}

- (void)homeDidTapPlaces
{
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate toggleTopLevelPlaces];
}

- (void)homeDidTapPinnedPlaces
{
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate toggleTopLevelPinned];
}

- (void)showGuidesHomeFromExploreGuides:(id)guides
{
  guidesCopy = guides;
  delegate = [(ControlContaineeViewController *)self delegate];
  guideLocation = [guidesCopy guideLocation];

  [delegate viewController:self showGuidesHome:guideLocation];
}

- (void)showCitySelector
{
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate viewControllerShowCitySelectorFromGuideLocation:0];
}

- (void)shareCollection:(id)collection collection:(id)a4
{
  v6 = a4;
  collectionCopy = collection;
  v11 = [[PersonalCollectionShareItemSource alloc] initWithCollectionHandlerInfo:v6];

  v8 = [MUPresentationOptions optionsWithSender:collectionCopy];

  delegate = [(ControlContaineeViewController *)self delegate];
  appCoordinator = [delegate appCoordinator];
  [appCoordinator shareItem:v11 presentationOptions:v8 completion:0];
}

- (void)seeAllTappedForUserGuides
{
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate viewControllerShowCollections:0];
}

- (void)seeAllTappedForRecents
{
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate viewControllerShowMyRecents:self includeRecentSearches:1];

  if (sub_10000FA08(self) == 5)
  {
    [(SearchViewController *)self showDropDownIfNeeded:0];
    view = [(SearchViewController *)self view];
    [view endEditing:1];
  }
}

- (void)seeAllTappedForCollections
{
  if (sub_10000FA08(self) == 5)
  {
    [(SearchViewController *)self showDropDownIfNeeded:0];
    view = [(SearchViewController *)self view];
    [view endEditing:1];
  }

  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate viewControllerShowAllCollections];
}

- (id)recentAutocompleteSessionData
{
  searchDataProvider = [(SearchDataSource *)self->_searchDataSource searchDataProvider];
  _recentAutocompleteSessionData = [searchDataProvider _recentAutocompleteSessionData];

  return _recentAutocompleteSessionData;
}

- (void)didSelectRecentAtIndex:(unint64_t)index
{
  searchHomeDataSource = [(SearchViewController *)self searchHomeDataSource];
  [searchHomeDataSource didSelectRecentAtIndex:index];
}

- (void)didSelectCompactGuideModelAtIndex:(unint64_t)index
{
  searchHomeDataSource = [(SearchViewController *)self searchHomeDataSource];
  [searchHomeDataSource didSelectCompactGuideModelAtIndex:index];
}

- (BOOL)useSingleColumnLayout
{
  searchHomeDataSource = [(SearchViewController *)self searchHomeDataSource];
  useSingleColumnLayout = [searchHomeDataSource useSingleColumnLayout];

  return useSingleColumnLayout;
}

- (void)didSelectBrowseCategoryAtIndex:(unint64_t)index
{
  searchHomeDataSource = [(SearchViewController *)self searchHomeDataSource];
  [searchHomeDataSource didSelectBrowseCategoryAtIndex:index];
}

- (void)didSelectGuideModelAtIndex:(unint64_t)index sectionIndex:(int64_t)sectionIndex
{
  searchHomeDataSource = [(SearchViewController *)self searchHomeDataSource];
  [searchHomeDataSource didSelectGuideModelAtIndex:index sectionIndex:sectionIndex];
}

- (void)didTapOnCuratedGuides:(id)guides
{
  guidesCopy = guides;
  view = [(SearchViewController *)self view];
  [view endEditing:1];

  if (sub_10000FA08(self) == 5)
  {
    [(SearchViewController *)self showDropDownIfNeeded:0];
  }

  self->_maintainSearchStateWhenDisappearing = 1;
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate viewController:self showCuratedCollectionsList:guidesCopy usingTitle:0 usingCollectionIds:0 completion:0];
}

- (void)didTapOnCuratedGuide:(id)guide
{
  guideCopy = guide;
  view = [(SearchViewController *)self view];
  [view endEditing:1];

  self->_maintainSearchStateWhenDisappearing = 1;
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate viewController:self showCuratedCollection:guideCopy];
}

- (void)didTapOnUserGeneratedGuide:(id)guide
{
  guideCopy = guide;
  view = [(SearchViewController *)self view];
  [view endEditing:1];

  self->_maintainSearchStateWhenDisappearing = 1;
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate viewController:self showCollection:guideCopy];
}

- (void)fetchMapItemWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  [(SearchViewController *)self resetMapServiceTicket];
  v8 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:identifierCopy];
  objc_initWeak(&location, self);
  v9 = +[MKMapService sharedService];
  v21 = v8;
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  delegate = [(ControlContaineeViewController *)self delegate];
  newTraits = [delegate newTraits];
  v13 = [v9 ticketForIdentifiers:v10 traits:newTraits];
  mapServiceTicket = self->_mapServiceTicket;
  self->_mapServiceTicket = v13;

  v15 = self->_mapServiceTicket;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1009913E8;
  v17[3] = &unk_10165E308;
  objc_copyWeak(&v19, &location);
  v16 = completionCopy;
  v18 = v16;
  [(MKMapServiceTicket *)v15 submitWithHandler:v17 networkActivity:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)fetchSearchCompletion:(id)completion completion:(id)a4
{
  completionCopy = completion;
  v7 = a4;
  [(SearchViewController *)self resetMapServiceTicket];
  objc_initWeak(&location, self);
  delegate = [(ControlContaineeViewController *)self delegate];
  newTraits = [delegate newTraits];

  if (self->_currentDataSource == &self->_searchDataSource->super)
  {
    [newTraits setSource:7];
  }

  v10 = +[MKMapService sharedService];
  queryLine = [completionCopy queryLine];
  geoCompletionItem = [completionCopy geoCompletionItem];
  v13 = [v10 ticketForSearchQuery:queryLine completionItem:geoCompletionItem traits:newTraits searchSessionData:0];
  mapServiceTicket = self->_mapServiceTicket;
  self->_mapServiceTicket = v13;

  v15 = self->_mapServiceTicket;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10099166C;
  v17[3] = &unk_101630718;
  objc_copyWeak(&v19, &location);
  v16 = v7;
  v18 = v16;
  [(MKMapServiceTicket *)v15 submitWithRefinedHandler:v17 networkActivity:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)showRegionSelectorForMapItem:(id)item
{
  itemCopy = item;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100991958;
  v16[3] = &unk_10165D2D8;
  v16[4] = self;
  v5 = objc_retainBlock(v16);
  v6 = itemCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100991A30;
    v14[3] = &unk_1016306F0;
    v14[4] = self;
    v15 = v5;
    [(SearchViewController *)self fetchSearchCompletion:v8 completion:v14];
  }

  else
  {
    v9 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    mapItem = [v11 mapItem];

    if (mapItem)
    {
      mapItem2 = [v11 mapItem];
      (v5[2])(v5, mapItem2);
    }

    else
    {
      mapItem2 = sub_100067540();
      if (os_log_type_enabled(mapItem2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, mapItem2, OS_LOG_TYPE_DEBUG, "Offline: This type of poi item is not handled :%@.", buf, 0xCu);
      }
    }
  }
}

- (void)searchDataSource:(id)source replaceQueryWithItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SearchViewController *)self triggerAutocompleteByReplacingQueryWithCompletion:itemCopy];
  }
}

- (void)didTapToUnpinLibraryItem:(id)item
{
  itemCopy = item;
  delegate = [(ControlContaineeViewController *)self delegate];
  v5 = [ShortcutEditSession editSessionWithShortcut:itemCopy];

  [delegate viewController:self removeShortcut:v5];
}

- (void)didTapOnHomePinnedLibraryItem:(id)item
{
  itemCopy = item;
  delegate = [(ControlContaineeViewController *)self delegate];
  v5 = [ShortcutEditSession editSessionWithShortcut:itemCopy];

  [delegate viewController:self editShortcut:v5];
}

- (void)dataSource:(id)source itemTapped:(id)tapped childItemParent:(id)parent
{
  sourceCopy = source;
  tappedCopy = tapped;
  parentCopy = parent;
  v8 = sub_1000410AC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v247 = sourceCopy;
    v248 = 2112;
    v249 = tappedCopy;
    v250 = 2112;
    v251 = parentCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "dataSource: %@ itemTapped: %@ childItemParent: %@", buf, 0x20u);
  }

  [(SearchViewController *)self resetMapServiceTicket];
  if (parentCopy)
  {
    v9 = parentCopy;
  }

  else
  {
    v9 = tappedCopy;
  }

  [(SearchViewController *)self retainSearchQueryForSelectedAutocompleteItem:v9 forTimeInterval:0.0];
  if (sub_10000FA08(self) == 5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      historyEntry = [(DirectionItem *)tappedCopy historyEntry];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(HomeViewController *)self->_homeViewController scrollContentToOriginalPosition];
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [(DirectionItem *)tappedCopy entryTapBehavior]!= 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      childItemPlace = tappedCopy;
      goto LABEL_48;
    }

    tappedCopy = tappedCopy;
    childItemType = [(DirectionItem *)tappedCopy childItemType];
    if (childItemType == 3)
    {
      childItemPlace = parentCopy;

LABEL_47:
LABEL_48:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v208 = parentCopy;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v208;
        }

        else
        {
          v22 = 0;
        }

        v207 = v22;

        if (!v207)
        {
          goto LABEL_95;
        }

        v223 = childItemPlace;
        v216 = objc_alloc_init(GEOPDResultRefinementQuery);
        [v216 setResultRefinementOriginType:3];
        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        obj = [(DirectionItem *)v207 resultRefinements];
        v217 = [obj countByEnumeratingWithState:&v228 objects:v245 count:16];
        if (v217)
        {
          v215 = *v229;
          do
          {
            for (i = 0; i != v217; i = i + 1)
            {
              if (*v229 != v215)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v228 + 1) + 8 * i);
              if ([v24 isEqual:v223])
              {
                v214 = [GEOResultRefinementToggle alloc];
                toggle = [(DirectionItem *)v223 toggle];
                displayName = [toggle displayName];
                toggle2 = [(DirectionItem *)v223 toggle];
                isSelected = [toggle2 isSelected];
                toggle3 = [(DirectionItem *)v223 toggle];
                metadata = [toggle3 metadata];
                toggle4 = [(DirectionItem *)v223 toggle];
                toggleType = [toggle4 toggleType];
                toggle5 = [(DirectionItem *)v223 toggle];
                evChargingConnectorType = [toggle5 evChargingConnectorType];
                toggle6 = [(DirectionItem *)v223 toggle];
                selectionFromView = [toggle6 selectionFromView];
                toggle7 = [(DirectionItem *)v223 toggle];
                refinementKey = [toggle7 refinementKey];
                toggle8 = [(DirectionItem *)v223 toggle];
                LOBYTE(v206) = [toggle8 showAsSelected];
                LOBYTE(v205) = selectionFromView;
                convertToGEOPDResultRefinement2 = [v214 initWithDisplayName:displayName isSelected:isSelected ^ 1 metadata:metadata toggleType:toggleType evChargingConnectorType:evChargingConnectorType selectionSequenceNumber:&off_1016E7DD8 selectionFromView:v205 refinementKey:refinementKey showAsSelected:v206];

                v35 = [[GEOResultRefinement alloc] initWithToggle:convertToGEOPDResultRefinement2];
                convertToGEOPDResultRefinement = [v35 convertToGEOPDResultRefinement];
                [v216 addRefinement:convertToGEOPDResultRefinement];
              }

              else
              {
                convertToGEOPDResultRefinement2 = [v24 convertToGEOPDResultRefinement];
                [v216 addRefinement:convertToGEOPDResultRefinement2];
              }
            }

            v217 = [obj countByEnumeratingWithState:&v228 objects:v245 count:16];
          }

          while (v217);
        }

        v37 = v207;
        childItemPlace = v208;
      }

      else
      {
        v216 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_initWeak(buf, self);
        v226[0] = _NSConcreteStackBlock;
        v226[1] = 3221225472;
        v226[2] = sub_100993DE8;
        v226[3] = &unk_101630688;
        objc_copyWeak(&v227, buf);
        [(SearchViewController *)self fetchMapItemWithIdentifier:childItemPlace completion:v226];
        objc_destroyWeak(&v227);
        objc_destroyWeak(buf);
LABEL_94:

LABEL_95:
        tappedCopy = childItemPlace;
        goto LABEL_96;
      }

      [(SearchViewController *)self showDropDownIfNeeded:0];
      view = [(SearchViewController *)self view];
      [view endEditing:1];

      v39 = +[NSMutableDictionary dictionary];
      v40 = [NSNumber numberWithBool:[(SearchViewController *)self isSearchingAlongTheRoute]];
      [v39 setObject:v40 forKeyedSubscript:@"SearchSessionIsSearchAlongRoute"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = childItemPlace;
        [v39 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SearchSessionSuppressHistoryEntry"];
        currentDataSource = [(SearchViewController *)self currentDataSource];
        objc_opt_class();
        v43 = [NSNumber numberWithBool:objc_opt_isKindOfClass() & 1];
        [v39 setObject:v43 forKeyedSubscript:@"MSGEntryForceShowPlacecardOnTap"];

        if ([(DirectionItem *)v41 isShortcut])
        {
          shortcutIdentifier = [(DirectionItem *)v41 shortcutIdentifier];
          [v39 setObject:shortcutIdentifier forKeyedSubscript:@"ShortcutIdentifier"];
        }

        delegate = [(ControlContaineeViewController *)self delegate];
        [delegate viewController:self openMapsSuggestionEntry:v41 withUserInfo:v39];

        goto LABEL_93;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        delegate2 = [(ControlContaineeViewController *)self delegate];
        [delegate2 viewControllerShowVisitHistoryHome:0];

LABEL_93:
        goto LABEL_94;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = childItemPlace;
        [v39 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SearchSessionSuppressHistoryEntry"];
        currentDataSource2 = [(SearchViewController *)self currentDataSource];
        objc_opt_class();
        v49 = [NSNumber numberWithBool:objc_opt_isKindOfClass() & 1];
        [v39 setObject:v49 forKeyedSubscript:@"MSGEntryForceShowPlacecardOnTap"];

        identifier = [(DirectionItem *)v47 identifier];
        [v39 setObject:identifier forKeyedSubscript:@"ShortcutIdentifier"];

        delegate3 = [(ControlContaineeViewController *)self delegate];
        [delegate3 viewController:self openFavoriteItem:v47 withUserInfo:v39];

        goto LABEL_93;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(DirectionItem *)childItemPlace isEqualToString:@"FavoritesEntry"])
      {
        delegate4 = [(ControlContaineeViewController *)self delegate];
        [delegate4 viewControllerShowCollections:self];

        goto LABEL_93;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(DirectionItem *)childItemPlace isEqualToString:@"newShortcutEntry"])
      {
        delegate5 = [(ControlContaineeViewController *)self delegate];
        v54 = +[ShortcutEditSession addSession];
        [delegate5 viewController:self showAddShortcut:v54];

        goto LABEL_93;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = childItemPlace;
        sharedTrips = [(DirectionItem *)v55 sharedTrips];
        v57 = [sharedTrips count] == 1;

        delegate6 = [(ControlContaineeViewController *)self delegate];
        v59 = delegate6;
        if (v57)
        {
          sharedTrips2 = [(DirectionItem *)v55 sharedTrips];
          firstObject = [sharedTrips2 firstObject];
          [v59 presentSharedTrip:firstObject];
        }

        else
        {
          [delegate6 presentSharedTrips];
        }

        goto LABEL_93;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v39 setObject:&off_1016E7DF0 forKeyedSubscript:@"DirectionsSessionInitiatorKey"];
        selfCopy2 = self;
        if (self->_currentDataSource == &self->_searchDataSource->super)
        {
          [v39 setObject:&off_1016E7E08 forKeyedSubscript:@"SearchSessionTraitsSource"];
          selfCopy2 = self;
        }

        delegate7 = [(ControlContaineeViewController *)selfCopy2 delegate];
        [delegate7 viewController:self doDirectionItem:childItemPlace withUserInfo:v39];

        goto LABEL_93;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v64 = childItemPlace;
        directionIntent = [(DirectionItem *)v64 directionIntent];

        if (directionIntent)
        {
          delegate8 = [(ControlContaineeViewController *)self delegate];
          [delegate8 viewController:self doDirectionIntentWithLocalSearchCompletion:v64];

          goto LABEL_93;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        delegate9 = [(ControlContaineeViewController *)self delegate];
        [delegate9 viewControllerShowLibraryRootView:self];

        goto LABEL_93;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v68 = childItemPlace;
        v69 = &OBJC_PROTOCOL___MSPHistoryEntryRoute;
        objc_opt_class();
        v70 = v68;
        if (objc_opt_isKindOfClass())
        {
          v71 = v70;
        }

        else
        {
          v71 = 0;
        }

        v72 = v71;

        if (v72 && (-[DirectionItem historyEntry](v72, "historyEntry"), v73 = objc_claimAutoreleasedReturnValue(), v74 = [v73 conformsToProtocol:v69], v73, v74))
        {
          v75 = v70;
        }

        else
        {
          v75 = 0;
        }

        if (v75)
        {
          v78 = v70;
          v79 = &OBJC_PROTOCOL___MSPHistoryEntryRoute;
          objc_opt_class();
          v80 = v78;
          if (objc_opt_isKindOfClass())
          {
            v81 = v80;
          }

          else
          {
            v81 = 0;
          }

          v82 = v81;

          if (v82 && (-[DirectionItem historyEntry](v82, "historyEntry"), v83 = objc_claimAutoreleasedReturnValue(), v84 = [v83 conformsToProtocol:v79], v83, v84))
          {
            v85 = v80;
          }

          else
          {
            v85 = 0;
          }

          historyEntry2 = [(DirectionItem *)v85 historyEntry];
          endWaypoint = [historyEntry2 endWaypoint];
          objc_opt_class();
          v89 = objc_opt_isKindOfClass();

          if (v89)
          {
            endWaypoint2 = [historyEntry2 endWaypoint];
            delegate10 = [(ControlContaineeViewController *)self delegate];
            route = [endWaypoint2 route];
            v243 = @"DirectionsRouteUUIDKey";
            identifier2 = [historyEntry2 identifier];
            v244 = identifier2;
            v94 = [NSDictionary dictionaryWithObjects:&v244 forKeys:&v243 count:1];
            [(DirectionItem *)delegate10 viewController:self enterRouteCreationWithRoute:route withUserInfo:v94];
          }

          else
          {
            endWaypoint2 = [SearchFieldItem searchFieldItemsForRouteHistoryEntry:historyEntry2];
            if (([historyEntry2 navigationWasInterrupted] & 1) != 0 || objc_msgSend(endWaypoint2, "count") >= 3)
            {
              transportType = [historyEntry2 transportType];
            }

            else
            {
              transportType = 0;
            }

            delegate10 = [[DirectionItem alloc] initWithItems:endWaypoint2 transportType:transportType];
            v241[0] = @"DirectionsSessionInitiatorKey";
            v241[1] = @"DirectionsRouteUUIDKey";
            v242[0] = &off_1016E7DF0;
            identifier3 = [historyEntry2 identifier];
            v242[1] = identifier3;
            route = [NSDictionary dictionaryWithObjects:v242 forKeys:v241 count:2];

            identifier2 = [(ControlContaineeViewController *)self delegate];
            [identifier2 viewController:self doDirectionItem:delegate10 withUserInfo:route];
          }

          goto LABEL_93;
        }

        v99 = v70;
        v100 = &OBJC_PROTOCOL___MSPHistoryEntryTransitLineItem;
        objc_opt_class();
        v101 = v99;
        if (objc_opt_isKindOfClass())
        {
          v102 = v101;
        }

        else
        {
          v102 = 0;
        }

        v103 = v102;

        if (v103 && (-[DirectionItem historyEntry](v103, "historyEntry"), v104 = objc_claimAutoreleasedReturnValue(), v105 = [v104 conformsToProtocol:v100], v104, v105))
        {
          v106 = v101;
        }

        else
        {
          v106 = 0;
        }

        if (v106)
        {
          v109 = v101;
          v110 = &OBJC_PROTOCOL___MSPHistoryEntryTransitLineItem;
          objc_opt_class();
          v111 = v109;
          if (objc_opt_isKindOfClass())
          {
            v112 = v111;
          }

          else
          {
            v112 = 0;
          }

          v113 = v112;

          if (v113 && (-[DirectionItem historyEntry](v113, "historyEntry"), v114 = objc_claimAutoreleasedReturnValue(), v115 = [v114 conformsToProtocol:v110], v114, v115))
          {
            v116 = v111;
          }

          else
          {
            v116 = 0;
          }

          delegate11 = [(ControlContaineeViewController *)self delegate];
          historyEntry3 = [(DirectionItem *)v116 historyEntry];
          lineItem = [historyEntry3 lineItem];
          [delegate11 viewController:self selectTransitLineItem:lineItem zoomToMapRegion:1];

          goto LABEL_93;
        }

        v120 = v101;
        v121 = &OBJC_PROTOCOL___CuratedCollectionHistoryEntry;
        objc_opt_class();
        v122 = v120;
        if (objc_opt_isKindOfClass())
        {
          v123 = v122;
        }

        else
        {
          v123 = 0;
        }

        v124 = v123;

        if (v124 && (-[DirectionItem historyEntry](v124, "historyEntry"), v125 = objc_claimAutoreleasedReturnValue(), v126 = [v125 conformsToProtocol:v121], v125, v126))
        {
          v127 = v122;
        }

        else
        {
          v127 = 0;
        }

        if (v127)
        {
          v130 = v122;
          v131 = &OBJC_PROTOCOL___CuratedCollectionHistoryEntry;
          objc_opt_class();
          v132 = v130;
          if (objc_opt_isKindOfClass())
          {
            v133 = v132;
          }

          else
          {
            v133 = 0;
          }

          v134 = v133;

          if (v134 && ([v134 historyEntry], v135 = objc_claimAutoreleasedReturnValue(), v136 = objc_msgSend(v135, "conformsToProtocol:", v131), v135, v136))
          {
            v137 = v132;
          }

          else
          {
            v137 = 0;
          }

          historyEntry4 = [v137 historyEntry];
          placeCollection = [historyEntry4 placeCollection];

          delegate12 = [(ControlContaineeViewController *)self delegate];
          [delegate12 viewController:self showCuratedCollection:placeCollection];

          goto LABEL_93;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_initWeak(buf, self);
          _maps_mapsSceneDelegate = [(SearchViewController *)self _maps_mapsSceneDelegate];
          rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
          v224[0] = _NSConcreteStackBlock;
          v224[1] = 3221225472;
          v224[2] = sub_100993EB4;
          v224[3] = &unk_101661B98;
          objc_copyWeak(&v225, buf);
          [rapPresenter presentAddToMapsFromSearchEntryPoint:11 result:childItemPlace completion:v224];

          objc_destroyWeak(&v225);
          objc_destroyWeak(buf);
          goto LABEL_93;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [(DirectionItem *)childItemPlace type]== 3)
        {
          delegate13 = [(ControlContaineeViewController *)self delegate];
          [delegate13 viewController:self selectDroppedPin:childItemPlace];

          goto LABEL_93;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          clientResolved = [(DirectionItem *)childItemPlace clientResolved];
          v96 = clientResolved == 0;

          if (!v96)
          {
            clientResolved2 = [(DirectionItem *)childItemPlace clientResolved];
            delegate14 = [(ControlContaineeViewController *)self delegate];
            [delegate14 viewController:self selectClientResolvedItem:clientResolved2 fromSearchInfo:0 withUserInfo:0];

            goto LABEL_93;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          delegate15 = [(ControlContaineeViewController *)self delegate];
          [delegate15 viewController:self showCollection:childItemPlace];

          goto LABEL_93;
        }

        if ([(DirectionItem *)childItemPlace conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
        {
          v128 = [[IncompleteTransitLineItem alloc] initWithTransitLine:childItemPlace];
          delegate16 = [(ControlContaineeViewController *)self delegate];
          [delegate16 viewController:self selectTransitLineItem:v128 zoomToMapRegion:1];

          goto LABEL_93;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          delegate17 = [(ControlContaineeViewController *)self delegate];
          [delegate17 viewController:self showCuratedCollection:childItemPlace];

          goto LABEL_93;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          delegate18 = [(ControlContaineeViewController *)self delegate];
          [delegate18 viewControllerShowPublisher:childItemPlace];

          goto LABEL_93;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_maintainSearchStateWhenDisappearing = 1;
          delegate19 = [(ControlContaineeViewController *)self delegate];
          [delegate19 viewController:self showGuidesHome:childItemPlace];

          goto LABEL_93;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v145 = childItemPlace;
          if (-[DirectionItem type](v145, "type") != 11 || (-[DirectionItem relatedSection](v145, "relatedSection"), v146 = objc_claimAutoreleasedReturnValue(), [v146 relatedCollectionSection], v147 = objc_claimAutoreleasedReturnValue(), v148 = v147 == 0, v147, v146, v148))
          {
            if (!self->_isSearchAndDiscoveryEnabled || ([(DirectionItem *)v145 placeCollection], v158 = objc_claimAutoreleasedReturnValue(), v159 = v158 == 0, v158, v159))
            {
              if ([(SearchViewController *)self shouldInjectVenueSearchResult:v145])
              {
                delegate20 = [(ControlContaineeViewController *)self delegate];
                [delegate20 viewController:self selectSearchResult:v145 addToHistory:1 source:2 saveSelectionState:1 replaceCurrentCard:0];

                delegate21 = [(ControlContaineeViewController *)self delegate];
                searchPinsManager = [delegate21 searchPinsManager];
                v240 = v145;
                v196 = [NSArray arrayWithObjects:&v240 count:1];
                [searchPinsManager setSearchPins:v196 selectedPin:v145 animated:1];
              }

              else
              {
                mapItem = [(DirectionItem *)v145 mapItem];
                _hasHikeInfo = [mapItem _hasHikeInfo];

                delegate22 = [(ControlContaineeViewController *)self delegate];
                v200 = delegate22;
                if (_hasHikeInfo)
                {
                  appCoordinator = [delegate22 appCoordinator];
                  mapItem2 = [(DirectionItem *)v145 mapItem];
                  [appCoordinator enterRouteCreationWithMapItem:mapItem2 completion:0];
                }

                else
                {
                  v203 = [SearchFieldItem searchFieldItemWithObject:v145];
                  recentAutocompleteSessionData = [(SearchViewController *)self recentAutocompleteSessionData];
                  [v200 viewController:self doSearchItem:v203 withUserInfo:v39 refinementsQuery:v216 autocompleteSessionData:recentAutocompleteSessionData];

                  [(SearchDataSource *)self->_searchDataSource clearAutocompleteResults];
                }
              }
            }

            else
            {
              delegate23 = [(ControlContaineeViewController *)self delegate];
              placeCollection2 = [(DirectionItem *)v145 placeCollection];
              [delegate23 viewController:self showCuratedCollection:placeCollection2];
            }
          }

          else
          {
            delegate24 = [(ControlContaineeViewController *)self delegate];
            relatedSection = [(DirectionItem *)v145 relatedSection];
            relatedPlaceCollections = [relatedSection relatedPlaceCollections];
            v152 = +[NSBundle mainBundle];
            v153 = [v152 localizedStringForKey:@"Related Guides" value:@"localized string not found" table:0];
            [delegate24 viewController:self showCuratedCollectionsList:relatedPlaceCollections usingTitle:v153 usingCollectionIds:0 completion:0];
          }

          goto LABEL_222;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v154 = [[SearchResult alloc] initWithMapItem:childItemPlace];
          delegate25 = [(ControlContaineeViewController *)self delegate];
          searchPinsManager2 = [delegate25 searchPinsManager];
          v239 = v154;
          v157 = [NSArray arrayWithObjects:&v239 count:1];
          [searchPinsManager2 setSearchPins:v157 selectedPin:v154 animated:1];

          goto LABEL_93;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v162 = childItemPlace;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v163 = v162;
          }

          else
          {
            v163 = 0;
          }

          v164 = v163;

          if (v164)
          {
            v165 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:v164];
            buildRoute = [v165 buildRoute];
            delegate26 = [(ControlContaineeViewController *)self delegate];
            [delegate26 viewController:self enterRouteCreationWithRoute:buildRoute withUserInfo:0];
          }

          goto LABEL_93;
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (-[DirectionItem category](childItemPlace, "category"), v168 = objc_claimAutoreleasedReturnValue(), [v168 venueIdentifier], v169 = objc_claimAutoreleasedReturnValue(), v170 = v169 == 0, v169, v168, v170))
      {
        v145 = [SearchFieldItem searchFieldItemWithObject:childItemPlace];
      }

      else
      {
        category = [(DirectionItem *)childItemPlace category];
        v172 = [VenueCategoryItem alloc];
        venueIdentifier = [category venueIdentifier];
        v174 = -[VenueCategoryItem initWithSearchCategory:venueIdentifier:displayMode:isAutoCompleteCategory:shouldFrameMapViewport:](v172, "initWithSearchCategory:venueIdentifier:displayMode:isAutoCompleteCategory:shouldFrameMapViewport:", category, venueIdentifier, [category displayMode], 1, 0);

        v145 = [SearchFieldItem searchFieldItemWithObject:v174];
      }

      if (v145)
      {
        [(DirectionItem *)v145 setUserTypedStringForRAP:self->_userTypedSearchString];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v39 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SearchSessionSuppressHistoryEntry"];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v39 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SearchSessionSuppressHistoryEntry"];
            v175 = childItemPlace;
            v176 = +[Recents sharedRecents];
            [v176 recordCoreRecentContact:v175];
          }
        }

        currentDataSource = self->_currentDataSource;
        if (currentDataSource == self->_searchDataSource)
        {
          v178 = &off_1016E7E08;
        }

        else
        {
          if (currentDataSource && currentDataSource != self->_searchHomeDataSource)
          {
LABEL_205:
            if (sub_10000FA08(self) == 5)
            {
              v179 = childItemPlace;
              v180 = &OBJC_PROTOCOL___MSPHistoryEntrySearch;
              objc_opt_class();
              v181 = v179;
              v182 = (objc_opt_isKindOfClass() & 1) != 0 ? v181 : 0;
              v183 = v182;

              if (v183 && (-[DirectionItem historyEntry](v183, "historyEntry"), v184 = objc_claimAutoreleasedReturnValue(), v185 = [v184 conformsToProtocol:v180], v184, v185))
              {
                v186 = v181;
              }

              else
              {
                v186 = 0;
              }

              if (v186)
              {
                v187 = 1;
              }

              else
              {
                objc_opt_class();
                v187 = objc_opt_isKindOfClass();
              }

              if (v186, objc_opt_class(), (objc_opt_isKindOfClass()) && ((v188 = [(DirectionItem *)v181 _type]) == 0 || v188 == 3) || (v187)
              {
                delegate27 = [(ControlContaineeViewController *)self delegate];
                [delegate27 clearSearchPins];

                searchString = [(DirectionItem *)v145 searchString];
                [(UITextField *)self->_searchField setText:searchString];
              }
            }

            delegate28 = [(ControlContaineeViewController *)self delegate];
            recentAutocompleteSessionData2 = [(SearchViewController *)self recentAutocompleteSessionData];
            [delegate28 viewController:self doSearchItem:v145 withUserInfo:v39 refinementsQuery:v216 autocompleteSessionData:recentAutocompleteSessionData2];

            [(SearchDataSource *)self->_searchDataSource clearAutocompleteResults];
            goto LABEL_222;
          }

          v178 = &off_1016E7E20;
        }

        [v39 setObject:v178 forKeyedSubscript:@"SearchSessionTraitsSource"];
        goto LABEL_205;
      }

LABEL_222:

      goto LABEL_93;
    }

    if (childItemType != 2)
    {
      childItemPlace = tappedCopy;
      if (childItemType == 1)
      {
        childItemPlace = [(DirectionItem *)tappedCopy childItemPlace];
      }

      goto LABEL_47;
    }

    objc_initWeak(&location, self);
    childItemAction = [(DirectionItem *)tappedCopy childItemAction];
    childActionType = [childItemAction childActionType];

    if (childActionType > 4)
    {
      if (childActionType <= 6)
      {
        if (childActionType == 5)
        {
          [(SearchViewController *)self fetchSearchCompletion:parentCopy completion:&stru_1016306C8];
          goto LABEL_37;
        }

        v232[0] = _NSConcreteStackBlock;
        v232[1] = 3221225472;
        v232[2] = sub_100993D50;
        v232[3] = &unk_101630688;
        v16 = &v233;
        objc_copyWeak(&v233, &location);
        [(SearchViewController *)self fetchSearchCompletion:parentCopy completion:v232];
        goto LABEL_30;
      }

      if (childActionType != 7)
      {
        childItemPlace = tappedCopy;
        if (childActionType == 8)
        {
          [(SearchViewController *)self showRegionSelectorForMapItem:parentCopy];
          goto LABEL_37;
        }

        goto LABEL_46;
      }

      [(SearchViewController *)self fetchSearchCompletion:parentCopy completion:0];
      childItemAction2 = [(DirectionItem *)tappedCopy childItemAction];
      childItemPlace = [(SearchFieldItem *)childItemAction2 guideLocation];
      childActionSearch = tappedCopy;
    }

    else
    {
      if (childActionType > 2)
      {
        if (childActionType != 3)
        {
          v234[0] = _NSConcreteStackBlock;
          v234[1] = 3221225472;
          v234[2] = sub_100993C84;
          v234[3] = &unk_101630688;
          v16 = &v235;
          objc_copyWeak(&v235, &location);
          [(SearchViewController *)self fetchSearchCompletion:parentCopy completion:v234];
          goto LABEL_30;
        }

        childItemAction2 = [(DirectionItem *)tappedCopy childItemAction];
        childActionSearch = [(SearchFieldItem *)childItemAction2 childActionSearch];
        childItemPlace = [childActionSearch relatedSearchSuggestion];
        v20 = tappedCopy;
      }

      else
      {
        if (childActionType != 1)
        {
          childItemPlace = tappedCopy;
          if (childActionType == 2)
          {
            v236[0] = _NSConcreteStackBlock;
            v236[1] = 3221225472;
            v236[2] = sub_100993BFC;
            v236[3] = &unk_101630688;
            v16 = &v237;
            objc_copyWeak(&v237, &location);
            [(SearchViewController *)self fetchSearchCompletion:parentCopy completion:v236];
LABEL_30:
            objc_destroyWeak(v16);
LABEL_37:
            objc_destroyWeak(&location);

            goto LABEL_96;
          }

          goto LABEL_46;
        }

        childItemAction2 = objc_alloc_init(SearchFieldItem);
        v18 = +[SearchResult currentLocationSearchResult];
        [(SearchFieldItem *)childItemAction2 setSearchResult:v18];

        childActionSearch = [SearchFieldItem searchFieldItemWithObject:parentCopy];
        v20 = [[NSMutableArray alloc] initWithCapacity:2];
        [(DirectionItem *)v20 addObject:childItemAction2];
        if (childActionSearch)
        {
          [(DirectionItem *)v20 addObject:childActionSearch];
        }

        else
        {
          v21 = sub_100067540();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v247 = parentCopy;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Cannot select Directions child item with childItemParent: %@", buf, 0xCu);
          }
        }

        childItemPlace = [[DirectionItem alloc] initWithItems:v20 ignoreMapType:0 transportType:0];
      }
    }

LABEL_46:
    objc_destroyWeak(&location);
    goto LABEL_47;
  }

  [(SearchViewController *)self triggerAutocompleteByReplacingQueryWithCompletion:tappedCopy];
LABEL_96:
}

- (void)dataSourceUpdated:(id)updated
{
  updatedCopy = updated;
  currentDataSource = [(SearchViewController *)self currentDataSource];

  v6 = sub_1000410AC();
  v7 = v6;
  if (currentDataSource == updatedCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      contentTableView = self->_contentTableView;
      v11 = 138412546;
      v12 = updatedCopy;
      v13 = 2112;
      v14 = contentTableView;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SVC dataSource %@ reloading %@", &v11, 0x16u);
    }

    [(SearchViewController *)self reloadContentTableView];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = self->_contentTableView;
      dataSource = [(UITableView *)v8 dataSource];
      v11 = 138412802;
      v12 = updatedCopy;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = dataSource;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "SVC dataSource %@ not current delegate of %@. Current DataSource: %@", &v11, 0x20u);
    }
  }
}

- (int)listForDataSource:(id)source
{
  currentDataSource = self->_currentDataSource;
  if (currentDataSource == self->_searchHomeDataSource)
  {
    return 1;
  }

  else
  {
    return 4 * (currentDataSource == self->_searchDataSource);
  }
}

- (void)didChangeFocusedVenue:(id)venue focusedBuilding:(id)building displayedFloorOrdinal:(signed __int16)ordinal
{
  venueCopy = venue;
  searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
  if (![(SearchViewController *)self isShowingOmnipresentSearchBar]|| !searchResultsViewController)
  {
    browseVenueBusinessController = [(LocalSearchViewController *)self->_localSearchViewController browseVenueBusinessController];
    [browseVenueBusinessController handleVenueWithFocusDidChange:venueCopy];
  }
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button
{
  buttonCopy = button;
  viewCopy = view;
  if (buttonCopy)
  {
    v9 = sub_1007991E4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      delegate = [(ControlContaineeViewController *)self delegate];
      currentSearchSession = [delegate currentSearchSession];
      v14 = 138412546;
      v15 = viewCopy;
      v16 = 2112;
      v17 = currentSearchSession;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[SearchVC] didChangeUserTrackingMode:%@, searchSession:%@", &v14, 0x16u);
    }

    self->_tappedTrackingButton = 1;
    localSearchViewController = [(SearchViewController *)self localSearchViewController];
    refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
    [refreshSearchHereBusinessController didStartRespondingToGesture:viewCopy];
  }
}

- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  viewCopy = view;
  v11 = sub_1007991E4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    delegate = [(ControlContaineeViewController *)self delegate];
    currentSearchSession = [delegate currentSearchSession];
    v17 = 138412546;
    v18 = viewCopy;
    v19 = 2112;
    v20 = currentSearchSession;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[SearchVC] didStopRespondingToGesture:%@, searchSession:%@", &v17, 0x16u);
  }

  if (!gesture)
  {
    localSearchViewController = [(SearchViewController *)self localSearchViewController];
    refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
    v16 = [refreshSearchHereBusinessController didStopRespondingToGesture:viewCopy];

    [(SearchViewController *)self showSearchingHereIfNeeded:v16];
  }
}

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  viewCopy = view;
  v8 = sub_1007991E4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    delegate = [(ControlContaineeViewController *)self delegate];
    currentSearchSession = [delegate currentSearchSession];
    v13 = 138412546;
    v14 = viewCopy;
    v15 = 2112;
    v16 = currentSearchSession;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[SearchVC] willStartRespondingToGesture:%@, searchSession:%@", &v13, 0x16u);
  }

  if (!gesture)
  {
    localSearchViewController = [(SearchViewController *)self localSearchViewController];
    refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
    [refreshSearchHereBusinessController didStartRespondingToGesture:viewCopy];
  }
}

- (void)mapView:(id)view didChangeMapType:(unint64_t)type
{
  browseVenueBusinessController = [(LocalSearchViewController *)self->_localSearchViewController browseVenueBusinessController];
  [browseVenueBusinessController handleMapTypeDidChange:type];
}

- (void)didUpdateSearchResults
{
  if (self->_didTriggerAutoRedoSearch)
  {
    self->_didTriggerAutoRedoSearch = 0;
  }
}

- (void)showSearchingHereIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  delegate = [(ControlContaineeViewController *)self delegate];
  currentSearchSession = [delegate currentSearchSession];

  searchInfo = [currentSearchSession searchInfo];
  if (searchInfo)
  {
    v8 = searchInfo;
    isLoading = [currentSearchSession isLoading];

    if (!isLoading)
    {
      searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
      view = [searchResultsViewController view];
      superview = [view superview];

      if (!superview)
      {
        [(SearchViewController *)self _invalidateSearchSession:currentSearchSession];
        chromeViewController = sub_1007991E4();
        if (os_log_type_enabled(chromeViewController, OS_LOG_TYPE_INFO))
        {
          v29 = 134218242;
          currentDataSourceType = [(SearchViewController *)self currentDataSourceType];
          v31 = 2112;
          v32 = currentSearchSession;
          _os_log_impl(&_mh_execute_header, chromeViewController, OS_LOG_TYPE_INFO, "[SearchVC] Not showing search here overlay. Autocomplete is active: %ld, Search session : %@", &v29, 0x16u);
        }

        goto LABEL_6;
      }

      delegate2 = [(ControlContaineeViewController *)self delegate];
      containerViewController = [delegate2 containerViewController];
      chromeViewController = [containerViewController chromeViewController];

      if (neededCopy)
      {
        v17 = sub_1007991E4();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          delegate3 = [(ControlContaineeViewController *)self delegate];
          currentSearchSession2 = [delegate3 currentSearchSession];
          v29 = 138412290;
          currentDataSourceType = currentSearchSession2;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[SearchVC] Trigerred auto-redo search: %@", &v29, 0xCu);
        }

        [chromeViewController setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
        redoSearchOverlay = [chromeViewController redoSearchOverlay];
        [redoSearchOverlay updateSearchOverlayWithState:0];

        redoSearchOverlay2 = [chromeViewController redoSearchOverlay];
        [redoSearchOverlay2 shouldHideFloatingControl:0 animated:1];

        self->_didTriggerAutoRedoSearch = 1;
        [(SearchViewController *)self refreshCurrentSearch];
        goto LABEL_6;
      }

      localSearchViewController = [(SearchViewController *)self localSearchViewController];
      refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
      shouldShowManualRedoButton = [refreshSearchHereBusinessController shouldShowManualRedoButton];

      if (!self->_isSearchAndDiscoveryEnabled || !shouldShowManualRedoButton)
      {
LABEL_6:

        goto LABEL_7;
      }

      v25 = sub_1007991E4();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        delegate4 = [(ControlContaineeViewController *)self delegate];
        currentSearchSession3 = [delegate4 currentSearchSession];
        v29 = 138412290;
        currentDataSourceType = currentSearchSession3;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[SearchVC] Showing search here button as we did not trigger Auto-Redo: %@", &v29, 0xCu);
      }

      [chromeViewController setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
      redoSearchOverlay3 = [chromeViewController redoSearchOverlay];
      [redoSearchOverlay3 updateSearchOverlayWithState:1];

      searchInfo2 = +[MKMapService sharedService];
      [searchInfo2 captureUserAction:460 onTarget:503 eventValue:0];
LABEL_5:

      goto LABEL_6;
    }
  }

  searchResultsViewController = sub_1007991E4();
  if (os_log_type_enabled(searchResultsViewController, OS_LOG_TYPE_INFO))
  {
    [currentSearchSession isLoading];
    chromeViewController = NSStringFromBOOL();
    searchInfo2 = [currentSearchSession searchInfo];
    v29 = 138412546;
    currentDataSourceType = chromeViewController;
    v31 = 2112;
    v32 = searchInfo2;
    _os_log_impl(&_mh_execute_header, searchResultsViewController, OS_LOG_TYPE_INFO, "[SearchVC] Not showing search here overlay. Search session loading:(%@) or doesn't have searchInfo: %@", &v29, 0x16u);
    goto LABEL_5;
  }

LABEL_7:
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  if (self->_tappedTrackingButton)
  {
    self->_tappedTrackingButton = 0;
    viewCopy = view;
    localSearchViewController = [(SearchViewController *)self localSearchViewController];
    refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
    v9 = [refreshSearchHereBusinessController didStopRespondingToGesture:viewCopy];

    [(SearchViewController *)self showSearchingHereIfNeeded:v9];
  }
}

- (void)mapViewDidChangeVisibleRegion:(id)region
{
  regionCopy = region;
  v4 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v4 isUsingOfflineMaps];

  if (isUsingOfflineMaps)
  {
    v6 = [[CLLocation alloc] initWithLatitude:self->_mapViewRegion.center.latitude longitude:self->_mapViewRegion.center.longitude];
    v7 = [CLLocation alloc];
    [regionCopy region];
    v9 = v8;
    [regionCopy region];
    v10 = [v7 initWithLatitude:v9 longitude:?];
    [v6 distanceFromLocation:v10];
    v12 = v11;
    Integer = GEOConfigGetInteger();
    GEOConfigGetDouble();
    v15 = v14;
    if (v12 > Integer || ([regionCopy _zoomLevel], vabdd_f64(v16, self->_zoomLevel) > v15))
    {
      [regionCopy region];
      self->_mapViewRegion.center.latitude = v17;
      self->_mapViewRegion.center.longitude = v18;
      self->_mapViewRegion.span.latitudeDelta = v19;
      self->_mapViewRegion.span.longitudeDelta = v20;
      [regionCopy _zoomLevel];
      self->_zoomLevel = v21;
      [(SearchViewController *)self _initOfflinePlaceHolderWithCompletion:0];
    }
  }
}

- (id)localSearchViewController
{
  localSearchViewController = self->_localSearchViewController;
  if (!localSearchViewController)
  {
    v4 = [[LocalSearchViewController alloc] initAsButton:0];
    v5 = self->_localSearchViewController;
    self->_localSearchViewController = v4;

    view = [(LocalSearchViewController *)self->_localSearchViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    [(LocalSearchViewController *)self->_localSearchViewController setBottomInset:?];

    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    -[LocalSearchViewController setEnable:](self->_localSearchViewController, "setEnable:", [cardPresentationController2 containerStyle] != 6);

    [(LocalSearchViewController *)self->_localSearchViewController setDelegate:self];
    localSearchViewController = self->_localSearchViewController;
  }

  return localSearchViewController;
}

- (BOOL)shouldInjectVenueSearchResult:(id)result
{
  resultCopy = result;
  if (sub_10000FA08(self) == 5)
  {
    mapItem = [resultCopy mapItem];
    if ([mapItem _venueFeatureType])
    {
      delegate = [(ControlContaineeViewController *)self delegate];
      currentSearchSession = [delegate currentSearchSession];
      currentResultsSearchInfo = [currentSearchSession currentResultsSearchInfo];
      v9 = [currentResultsSearchInfo shouldInjectSearchResults] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)viewControllerDidSelectBrowseVenue:(id)venue
{
  delegate = [(ControlContaineeViewController *)self delegate];
  venuesManager = [delegate venuesManager];
  [venuesManager presentPlaceCardForVenueWithFocusAndAddToHistory:1 source:7 centeringOnVenue:0];
}

- (VKVenueFeatureMarker)venueWithFocus
{
  delegate = [(ControlContaineeViewController *)self delegate];
  venuesManager = [delegate venuesManager];
  venueWithFocus = [venuesManager venueWithFocus];

  return venueWithFocus;
}

- (void)updateConstraintsForHideableFooterForWasVisible:(BOOL)visible isVisible:(BOOL)isVisible
{
  if (isVisible && !visible)
  {
    [(UIView *)self->_hideableFooterView layoutIfNeeded];
  }

  view = [(SearchViewController *)self view];
  [view frame];
  Height = CGRectGetHeight(v15);

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100994FD0;
  v12[3] = &unk_101630638;
  visibleCopy = visible;
  isVisibleCopy = isVisible;
  v12[4] = self;
  *&v12[5] = Height;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1009950E4;
  v9[3] = &unk_101630660;
  visibleCopy2 = visible;
  isVisibleCopy2 = isVisible;
  v9[4] = self;
  [UIView animateWithDuration:v12 animations:v9 completion:0.25];
}

- (void)localSearchViewControllerSizeDidChange:(id)change
{
  view = [change view];
  superview = [view superview];

  if (superview)
  {
    [(NSLayoutConstraint *)self->_bottomHideableFooterConstraint constant];
    if (v5 == 0.0)
    {
      [(SearchViewController *)self updateConstraintsForHideableFooterForWasVisible:1 isVisible:1];
    }

    else
    {
      [(UIView *)self->_hideableFooterView layoutIfNeeded];
      [(UIView *)self->_hideableFooterView frame];
      [(NSLayoutConstraint *)self->_bottomHideableFooterConstraint setConstant:v6];
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController updateHeightForCurrentLayout];
    }
  }
}

- (void)localSearchViewShouldBeVisibleDidChange:(id)change
{
  changeCopy = change;
  view = [changeCopy view];
  superview = [view superview];
  if (superview)
  {
    [(NSLayoutConstraint *)self->_bottomHideableFooterConstraint constant];
    v7 = v6 == 0.0;
  }

  else
  {
    v7 = 0;
  }

  shouldBeVisible = [changeCopy shouldBeVisible];
  if (v7 != shouldBeVisible)
  {
    superview2 = [view superview];

    if (superview2)
    {
      [(SearchViewController *)self updateConstraintsForHideableFooterForWasVisible:v7 isVisible:shouldBeVisible];
    }

    else
    {
      [(SearchViewController *)self updateRefreshFooterAnimated:1];
    }
  }
}

- (void)addRefreshFooter:(BOOL)footer animated:(BOOL)animated
{
  if (footer)
  {
    animatedCopy = animated;
    localSearchViewController = [(SearchViewController *)self localSearchViewController];
    view = [localSearchViewController view];

    superview = [view superview];

    if (!superview)
    {
      [(SearchViewController *)self addChildViewController:self->_localSearchViewController];
      [(UIView *)self->_hideableFooterView insertSubview:view atIndex:0];
      [(LocalSearchViewController *)self->_localSearchViewController didMoveToParentViewController:self];
      leadingAnchor = [view leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_hideableFooterView leadingAnchor];
      v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v34[0] = v26;
      trailingAnchor = [view trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_hideableFooterView trailingAnchor];
      v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v34[1] = v23;
      bottomAnchor = [view bottomAnchor];
      [(UIView *)self->_hideableFooterView bottomAnchor];
      v12 = v29 = animatedCopy;
      v13 = [bottomAnchor constraintEqualToAnchor:v12];
      v34[2] = v13;
      topAnchor = [view topAnchor];
      topAnchor2 = [(UIView *)self->_hideableFooterView topAnchor];
      v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v34[3] = v16;
      v17 = [NSArray arrayWithObjects:v34 count:4];
      [NSLayoutConstraint activateConstraints:v17];

      animatedCopy = v29;
    }

    [(UIView *)self->_hideableFooterView layoutIfNeeded];
    [(UIView *)self->_hideableFooterView frame];
    v19 = v18;
    if (!self->_showRefreshFooter || ![(LocalSearchViewController *)self->_localSearchViewController shouldBeVisible])
    {
      [(NSLayoutConstraint *)self->_bottomHideableFooterConstraint setConstant:v19];
    }

    [(NSLayoutConstraint *)self->_bottomHideableFooterConstraint constant];
    v21 = v20;

    if (animatedCopy && v21 != 0.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = [(LocalSearchViewController *)self->_localSearchViewController view:footer];
    superview2 = [v10 superview];

    if (superview2)
    {
LABEL_12:
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100995694;
      v32[3] = &unk_101661AE0;
      footerCopy = footer;
      v32[4] = self;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100995738;
      v30[3] = &unk_1016574C0;
      footerCopy2 = footer;
      v30[4] = self;
      [UIView animateWithDuration:v32 animations:v30 completion:0.25];
      return;
    }
  }

  self->_showRefreshFooter = footer;
}

- (void)updateRefreshFooterAnimated:(BOOL)animated
{
  animatedCopy = animated;
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];

  v7 = (containerStyle < 6) & (0x3Au >> containerStyle);
  if ([(LocalSearchViewController *)self->_localSearchViewController showInCardFooterWhenCardHasExpandedLayout])
  {
    v8 = 0;
  }

  else
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    v8 = [cardPresentationController2 containeeLayout] != 1;
  }

  if (self->_refreshFooterEnabled != v7 && !v8)
  {
    self->_refreshFooterEnabled = v7;

    [(SearchViewController *)self addRefreshFooter:v7 animated:animatedCopy];
  }
}

- (void)applyAlphaToContent:(double)content
{
  v12.receiver = self;
  v12.super_class = SearchViewController;
  [(ContaineeViewController *)&v12 applyAlphaToContent:?];
  [(SearchViewController *)self _updateHeaderHairlineAlphaWithContentAlpha:0 animated:content];
  delegate = [(ControlContaineeViewController *)self delegate];
  currentSearchSession = [delegate currentSearchSession];

  if (currentSearchSession)
  {
    searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
    v8 = searchResultsViewController;
    if (searchResultsViewController)
    {
      parentViewController = [searchResultsViewController parentViewController];
      if (parentViewController)
      {
        v10 = parentViewController;
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          [v8 applyAlphaToContent:content];
        }
      }
    }
  }
}

- (void)_updateDefaultLayoutWithContainerStyle:(unint64_t)style
{
  if (style == 6)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setDefaultContaineeLayout:v4];

  if ([(PassthruSearchBar *)self->_searchBar isFirstResponder])
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 wantsLayout:3];
  }
}

- (void)willChangeContainerStyle:(unint64_t)style
{
  v6.receiver = self;
  v6.super_class = SearchViewController;
  [(ContaineeViewController *)&v6 willChangeContainerStyle:?];
  view = [(SearchViewController *)self view];

  if (view)
  {
    [(SearchViewController *)self _invalidateMediumHeightCache];
    [(LocalSearchViewController *)self->_localSearchViewController setEnable:style != 6];
    [(SearchViewController *)self _updateDefaultLayoutWithContainerStyle:style];
  }
}

- (void)didChangeLayout:(unint64_t)layout
{
  v7.receiver = self;
  v7.super_class = SearchViewController;
  [(ContaineeViewController *)&v7 didChangeLayout:?];
  if ([(SearchViewController *)self isShowingOmnipresentSearchBar])
  {
    searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
    v6 = searchResultsViewController;
    if (searchResultsViewController)
    {
      [searchResultsViewController didChangeLayout:layout];
    }
  }

  [(SearchViewController *)self updateRefreshFooter];
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout - 3 < 2)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController availableHeight];
LABEL_8:
    v15 = v14;

    return v15;
  }

  if (layout != 2)
  {
    result = -1.0;
    if (layout == 1)
    {
      if (![(LocalSearchViewController *)self->_localSearchViewController shouldBeVisible])
      {
        goto LABEL_20;
      }

      [(UIView *)self->_hideableFooterView frame];
      Height = CGRectGetHeight(v24);
      v6 = self->_hideableFooterView;
      window = [(UIView *)v6 window];
      screen = [window screen];
      if (screen)
      {
        window2 = [(UIView *)v6 window];
        screen2 = [window2 screen];
        [screen2 nativeScale];
        v12 = v11;
      }

      else
      {
        window2 = +[UIScreen mainScreen];
        [window2 nativeScale];
        v12 = v17;
      }

      v18 = v12 <= 0.0 ? 1.0 : 1.0 / v12;
      v19 = Height - v18;
      if (v19 == 0.0)
      {
LABEL_20:
        cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
        [cardPresentationController2 bottomSafeOffset];
        v19 = v21;
      }

      [(ContaineeViewController *)self headerHeight];
      return v22 + v19;
    }

    return result;
  }

  if ([(SearchViewController *)self isShowingOmnipresentSearchBar])
  {
    searchResultsViewController = [(SearchViewController *)self searchResultsViewController];

    if (searchResultsViewController)
    {
      cardPresentationController = +[UIScreen mainScreen];
      [cardPresentationController bounds];
      UIRoundToScreenScale();
      goto LABEL_8;
    }
  }

  [(SearchViewController *)self heightForContaineeLayoutMedium];
  return result;
}

- (void)willChangeLayout:(unint64_t)layout
{
  v12.receiver = self;
  v12.super_class = SearchViewController;
  [(ContaineeViewController *)&v12 willChangeLayout:?];
  if (([(UITextField *)self->_searchField isFirstResponder]& 1) == 0)
  {
    [(PassthruSearchBar *)self->_searchBar setShowsCancelButton:0 animated:1];
  }

  if (layout - 1 <= 1)
  {
    if ([(SearchViewController *)self isShowingOmnipresentSearchBar]&& ([(SearchViewController *)self searchResultsViewController], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = sub_100067540();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Not dismissing search results while changing the layout as we are presenting results.", v11, 2u);
      }
    }

    else
    {
      currentDataSource = [(SearchViewController *)self currentDataSource];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        presentedViewController = [(SearchViewController *)self presentedViewController];

        if (!presentedViewController)
        {
          [(SearchViewController *)self clearRetainedSearchQuery];
        }

        searchDataProvider = [(SearchDataSource *)self->_searchDataSource searchDataProvider];
        [searchDataProvider clearMKLocalSearchCompleterQueryState];
      }

      else
      {
        [(HomeViewController *)self->_homeViewController scrollContentToOriginalPosition];
      }

      [(PassthruSearchBar *)self->_searchBar resignFirstResponder];
      [(SearchViewController *)self cleanSearch];
    }
  }
}

- (int64_t)floatingControlsOptions
{
  v7.receiver = self;
  v7.super_class = SearchViewController;
  floatingControlsOptions = [(ControlContaineeViewController *)&v7 floatingControlsOptions];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];

  if (containerStyle == 6)
  {
    return floatingControlsOptions | 4;
  }

  else
  {
    return floatingControlsOptions;
  }
}

- (void)restoreSearchItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    self->_hasEdited = 1;
    userTypedSearchString = self->_userTypedSearchString;
    self->_userTypedSearchString = 0;

    [(UITextField *)self->_searchField setTextSelectionBehavior:0];
    [(SearchDataSource *)self->_searchDataSource reset];
    [(SearchViewController *)self updateSearchFieldWithItem:itemCopy];
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController wantsLayout:3];

    if (!self->_shouldPreventPresentingKeyboardOnRestore)
    {
      [(UITextField *)self->_searchField becomeFirstResponder];
    }

    retainedSearchMetadata = [itemCopy retainedSearchMetadata];
    [(SearchViewController *)self sendACRequestWithTappedQuerySuggestionCompletion:0 retainQueryMetadata:retainedSearchMetadata];
  }

  else
  {
    v8 = sub_100067540();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[SearchVC] Nothing to restore for searchItem.", v9, 2u);
    }
  }
}

- (void)retainSearchQueryForSelectedSearchResult:(id)result
{
  retainedQueryController = self->_retainedQueryController;
  resultCopy = result;
  defaultSearchQueryToRetain = [(SearchViewController *)self defaultSearchQueryToRetain];
  searchDataProvider = [(SearchDataSource *)self->_searchDataSource searchDataProvider];
  [searchDataProvider retainSearchTime];
  [(RetainedQueryController *)retainedQueryController retainSearchQueryForSelectedSearchResult:resultCopy query:defaultSearchQueryToRetain forTimeInterval:?];
}

- (void)retainSearchQueryForSelectedAutocompleteItem:(id)item forTimeInterval:(double)interval
{
  itemCopy = item;
  retainedQueryController = self->_retainedQueryController;
  defaultSearchQueryToRetain = [(SearchViewController *)self defaultSearchQueryToRetain];
  if (interval == 0.0)
  {
    searchDataProvider = [(SearchDataSource *)self->_searchDataSource searchDataProvider];
    [searchDataProvider retainSearchTime];
    [(RetainedQueryController *)retainedQueryController retainSearchQueryForSelectedAutocompleteItem:itemCopy query:defaultSearchQueryToRetain forTimeInterval:?];
  }

  else
  {
    [(RetainedQueryController *)retainedQueryController retainSearchQueryForSelectedAutocompleteItem:itemCopy query:defaultSearchQueryToRetain forTimeInterval:1.0];
  }
}

- (void)retainSearchQuery
{
  defaultSearchQueryToRetain = [(SearchViewController *)self defaultSearchQueryToRetain];
  if (defaultSearchQueryToRetain)
  {
    retainedQueryController = self->_retainedQueryController;
    v6 = defaultSearchQueryToRetain;
    searchDataProvider = [(SearchDataSource *)self->_searchDataSource searchDataProvider];
    [searchDataProvider retainSearchTime];
    [(RetainedQueryController *)retainedQueryController retainSearchQuery:v6 metadata:0 forTimeInterval:?];

    defaultSearchQueryToRetain = v6;
  }
}

- (id)defaultSearchQueryToRetain
{
  userTypedSearchString = [(NSString *)self->_userTypedSearchString length];
  if (userTypedSearchString)
  {
    userTypedSearchString = self->_userTypedSearchString;
  }

  return userTypedSearchString;
}

- (void)resetMapServiceTicket
{
  [(MKMapServiceTicket *)self->_mapServiceTicket cancel];
  mapServiceTicket = self->_mapServiceTicket;
  self->_mapServiceTicket = 0;
}

- (void)addSupportedChildActionToTraits:(id)traits
{
  traitsCopy = traits;
  [traitsCopy addSupportedChildAction:1];
  v4 = +[MKSystemController sharedInstance];
  supports3DImagery = [v4 supports3DImagery];

  if (supports3DImagery)
  {
    [traitsCopy addSupportedChildAction:2];
  }

  [traitsCopy addSupportedChildAction:3];
  v6 = +[GEOResourceManifestManager modernManager];
  isMuninEnabled = [v6 isMuninEnabled];

  if (isMuninEnabled)
  {
    [traitsCopy addSupportedChildAction:4];
  }

  if (+[TUCallCapabilities supportsTelephonyCalls])
  {
    [traitsCopy addSupportedChildAction:5];
  }

  [traitsCopy addSupportedChildAction:6];
  if (MapsFeature_IsEnabled_Maps269() && sub_10000FA08(self) != 5)
  {
    [traitsCopy addSupportedChildAction:7];
  }

  if (GEOSupportsOfflineMaps())
  {
    [traitsCopy addSupportedChildAction:8];
  }
}

- (void)sendACRequestWithTappedQuerySuggestionCompletion:(id)completion retainQueryMetadata:(id)metadata
{
  completionCopy = completion;
  metadataCopy = metadata;
  [(SearchViewController *)self updateDataSource];
  [(SearchViewController *)self setNeedsUpdateContentState];
  if (self->_currentDataSource == &self->_searchDataSource->super)
  {
    delegate = [(ControlContaineeViewController *)self delegate];
    newTraits = [delegate newTraits];

    [newTraits setNavigating:{-[SearchViewController isSearchingAlongTheRoute](self, "isSearchingAlongTheRoute")}];
    [newTraits setSupportDirectionIntentAutocomplete:{-[SearchViewController isSearchingAlongTheRoute](self, "isSearchingAlongTheRoute") ^ 1}];
    [newTraits setSupportUnresolvedDirectionIntent:{-[SearchViewController isSearchingAlongTheRoute](self, "isSearchingAlongTheRoute") ^ 1}];
    [newTraits setSupportAutocompletePublisherResults:{-[SearchViewController isSearchingAlongTheRoute](self, "isSearchingAlongTheRoute") ^ 1}];
    [newTraits setSupportAutocompleteGuideResults:{-[SearchViewController isSearchingAlongTheRoute](self, "isSearchingAlongTheRoute") ^ 1}];
    [newTraits addSupportedAutocompleteListType:2];
    [newTraits setSupportClientRankingFeatureMetadata:1];
    [newTraits setSupportClientRankingCompositeFeatures:1];
    [newTraits setSupportChildItems:{-[SearchViewController isSearchingAlongTheRoute](self, "isSearchingAlongTheRoute") ^ 1}];
    [newTraits useOnlineToOfflineFailoverRequestModeIfAllowed];
    if (![(SearchViewController *)self isSearchingAlongTheRoute])
    {
      [(SearchViewController *)self addSupportedChildActionToTraits:newTraits];
    }

    v10 = +[NSDate date];
    lastViewportChangeDate = [(SearchViewController *)self lastViewportChangeDate];
    [v10 timeIntervalSinceDate:lastViewportChangeDate];
    LODWORD(v13) = vcvtad_u64_f64(v12);
    [newTraits setTimeSinceMapViewportChanged:v13];

    v14 = sub_10079927C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21[0] = 67109120;
      v21[1] = [newTraits timeSinceMapViewportChanged];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending AC Request with timeSinceMapViewportChanged: %d", v21, 8u);
    }

    [newTraits setAutocompleteRequestSupportsSectionHeader:1];
    [newTraits addSupportedAutocompleteResultCellType:0];
    [newTraits addSupportedAutocompleteResultCellType:3];
    if (![(SearchViewController *)self isSearchingAlongTheRoute])
    {
      [newTraits addSupportedAutocompleteResultCellType:1];
      [newTraits addSupportedAutocompleteResultCellType:2];
    }

    if (MapsFeature_IsEnabled_VisitedPlaces())
    {
      v15 = 37;
    }

    else
    {
      v15 = 35;
    }

    [newTraits setPlaceSummaryRevision:v15];
    [(SearchViewController *)self isTouristHereValue];
    [newTraits setIsTourist:?];
    [newTraits addKnownRefinementType:1];
    [newTraits addSupportedPlaceSummaryFormatType:1];
    [newTraits addSupportedPlaceSummaryFormatType:2];
    [newTraits addSupportedPlaceSummaryFormatType:3];
    [newTraits setSupportStructuredRapAffordance:{-[SearchViewController isSearchingAlongTheRoute](self, "isSearchingAlongTheRoute") ^ 1}];
    [(SearchDataSource *)self->_searchDataSource setRetainedSearchMetadata:metadataCopy];
    if ([(SearchViewController *)self isSearchingAlongTheRoute])
    {
      v16 = 14;
    }

    else
    {
      v16 = 11;
    }

    searchDataSource = self->_searchDataSource;
    text = [(UITextField *)self->_searchField text];
    _maps_stringByTrimmingLeadingWhitespace = [text _maps_stringByTrimmingLeadingWhitespace];
    [(SearchDataSource *)searchDataSource setInputText:_maps_stringByTrimmingLeadingWhitespace tappedQuerySuggestionCompletion:completionCopy isRetainQuery:metadataCopy != 0 traits:newTraits source:v16];

    if (MapsFeature_IsEnabled_NaturalSearchMaps())
    {
      v20 = sub_100067540();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21[0]) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Will not show SearchHome tip again.", v21, 2u);
      }

      [(SearchHomeDataSource *)self->_searchHomeDataSource setShouldRemoveSearchHomeTip:1];
    }
  }
}

- (id)lastViewportChangeDate
{
  delegate = [(ControlContaineeViewController *)self delegate];
  containerViewController = [delegate containerViewController];
  chromeViewController = [containerViewController chromeViewController];
  lastMapViewportChangedDate = [chromeViewController lastMapViewportChangedDate];

  return lastMapViewportChangedDate;
}

- (void)sendSearchRequest
{
  text = [(UITextField *)self->_searchField text];
  _maps_stringByTrimmingLeadingWhitespace = [text _maps_stringByTrimmingLeadingWhitespace];
  [(SearchFieldItem *)self->_searchItem setSearchString:_maps_stringByTrimmingLeadingWhitespace];

  [(SearchFieldItem *)self->_searchItem setUserTypedStringForRAP:self->_userTypedSearchString];
  restoredRetainedSearchQueryMetadata = [(RetainedQueryController *)self->_retainedQueryController restoredRetainedSearchQueryMetadata];
  [(SearchFieldItem *)self->_searchItem setRetainedSearchMetadata:restoredRetainedSearchQueryMetadata];

  [(RetainedQueryController *)self->_retainedQueryController setRestoredRetainedSearchQueryMetadata:0];
  v6 = +[MKMapService sharedService];
  currentUITargetForAnalytics = [(SearchViewController *)self currentUITargetForAnalytics];
  searchString = [(SearchFieldItem *)self->_searchItem searchString];
  [v6 captureUserAction:2014 onTarget:currentUITargetForAnalytics queryString:searchString];

  [(SearchViewController *)self retainSearchQuery];
  [(SearchViewController *)self setNeedsUpdateContentState];
  v15 = @"SearchSessionIsAutoRedoSearch";
  v16 = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

  if (!self->_hasEdited)
  {
    [v10 setObject:&off_1016E7DC0 forKeyedSubscript:@"SearchSessionTraitsSource"];
  }

  v11 = [NSNumber numberWithBool:[(SearchViewController *)self isSearchingAlongTheRoute]];
  [v10 setObject:v11 forKeyedSubscript:@"SearchSessionIsSearchAlongRoute"];

  delegate = [(ControlContaineeViewController *)self delegate];
  searchItem = self->_searchItem;
  v14 = [v10 copy];
  [delegate viewController:self doSearchItem:searchItem withUserInfo:v14];

  [(SearchViewController *)self endEditing];
  [(SearchDataSource *)self->_searchDataSource clearAutocompleteResults];
  [(SearchDataSource *)self->_searchDataSource reset];
  if (sub_10000FA08(self) == 5 && _UISolariumEnabled())
  {
    [(SearchViewController *)self _continueUpdateSearchFieldWithUpdatingSearchText:0];
  }
}

- (void)_popToHomeWithCompletion:(id)completion
{
  completionCopy = completion;
  menuController = [(SearchViewController *)self menuController];
  macMenuPresentationController = [menuController macMenuPresentationController];
  isPresented = [macMenuPresentationController isPresented];

  if (isPresented)
  {
    [(SearchViewController *)self endEditing];
    v8 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100996C50;
    block[3] = &unk_101661760;
    v10 = completionCopy;
    dispatch_after(v8, &_dispatch_main_q, block);
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)editCollection:(id)collection
{
  collectionCopy = collection;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100996D64;
  v6[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v5 = collectionCopy;
  v7 = v5;
  [(SearchViewController *)self _popToHomeWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)showCollection:(id)collection
{
  collectionCopy = collection;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100996EA8;
  v6[3] = &unk_101661340;
  objc_copyWeak(&v8, &location);
  v5 = collectionCopy;
  v7 = v5;
  [(SearchViewController *)self _popToHomeWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)triggerAutocompleteByReplacingQueryWithCompletion:(id)completion
{
  completionCopy = completion;
  queryAcceleratorCompletionString = [completionCopy queryAcceleratorCompletionString];
  if ([queryAcceleratorCompletionString length])
  {
    [completionCopy queryAcceleratorCompletionString];
  }

  else
  {
    [completionCopy title];
  }
  v5 = ;
  [(UITextField *)self->_searchField setText:v5];

  [(SearchViewController *)self _textFieldDidChange:0 tappedQuerySuggestionCompletion:completionCopy];
  [(SearchViewController *)self searchBarBecomeFirstResponder];
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  currentSearchSession = [(SearchViewController *)self currentSearchSession];
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    v19 = currentSearchSession;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Search bar begins editing and invalidate the current active search session if there is any: %@", &v18, 0xCu);
  }

  if (sub_10000FA08(self) == 5 && !_UISolariumEnabled())
  {
    [(SearchViewController *)self _invalidateSearchSession:currentSearchSession];
  }

  else
  {
    if (self->_isSearchAndDiscoveryEnabled)
    {
      searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
      v7 = searchResultsViewController;
      if (searchResultsViewController)
      {
        [searchResultsViewController willMoveToParentViewController:0];
        view = [v7 view];
        [view removeFromSuperview];

        [v7 removeFromParentViewController];
        closeSearchResultsButton = [(SearchViewController *)self closeSearchResultsButton];
        [closeSearchResultsButton setHidden:1];

        v10 = +[MKMapService sharedService];
        searchString = [(SearchFieldItem *)self->_searchItem searchString];
        [v10 captureUserAction:2001 onTarget:101 queryString:searchString];

        [(SearchViewController *)self _invalidateSearchSession:currentSearchSession];
        searchFieldItem = [currentSearchSession searchFieldItem];
        [(SearchViewController *)self restoreSearchItem:searchFieldItem];

        [(SearchViewController *)self clearRetainedSearchQuery];
        delegate = [(ControlContaineeViewController *)self delegate];
        [delegate clearSearchPins];
      }
    }

    if (sub_10000FA08(self) == 5)
    {
      v14 = 0;
    }

    else
    {
      v14 = [(SearchViewController *)self isSearchingAlongTheRoute]^ 1;
    }

    isSearchingAlongTheRoute = [(SearchViewController *)self isSearchingAlongTheRoute];
    [(PassthruSearchBar *)self->_searchBar setShowsCancelButton:v14 animated:1];
    [(UIButton *)self->_userProfileButton setHidden:isSearchingAlongTheRoute ^ 1];
    [(SearchViewController *)self _updateUserProfileEntryPointButton];
  }

  [(SearchViewController *)self showDropDownIfNeeded:1];
  v16 = +[MapsOfflineUIHelper sharedHelper];
  if ([v16 isUsingOfflineMaps] && !self->_supportsFullTextSearch)
  {
    isSearchingAlongTheRoute2 = [(SearchViewController *)self isSearchingAlongTheRoute];

    if ((isSearchingAlongTheRoute2 & 1) == 0)
    {
      [(SearchViewController *)self _shouldHideOfflineHeaderView:self->_supportsFullTextSearch];
    }
  }

  else
  {
  }
}

- (void)searchBarBecomeFirstResponder
{
  self->_needsToBecomeFirstResponder = 0;
  if (self->_searchBar)
  {
    [(PassthruSearchBar *)self->_searchBar becomeFirstResponder];
  }

  else
  {
    self->_needsToBecomeFirstResponder = 1;
  }
}

- (void)_preventAutoPresentingKeyboard_rdar_126940251
{
  if ([(SearchViewController *)self isViewLoaded])
  {
    [(SearchViewController *)self endEditing];
    view = [(SearchViewController *)self view];
    [view endEditing:1];

    self->_shouldPreventPresentingKeyboardOnRestore = 1;
    v4 = dispatch_time(0, 2000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100997378;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

- (void)_invalidateSearchSession:(id)session
{
  sessionCopy = session;
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 134218242;
    selfCopy2 = self;
    v13 = 2080;
    v14 = "[SearchViewController _invalidateSearchSession:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%p] %s", &v11, 0x16u);
  }

  searchResultsViewController = sub_100067540();
  v7 = os_log_type_enabled(searchResultsViewController, OS_LOG_TYPE_INFO);
  if (sessionCopy)
  {
    if (v7)
    {
      v11 = 138412290;
      selfCopy2 = sessionCopy;
      _os_log_impl(&_mh_execute_header, searchResultsViewController, OS_LOG_TYPE_INFO, "Invalidating search session: %@", &v11, 0xCu);
    }

    searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
    if ((-[SearchViewController isLoading](sessionCopy, "isLoading") & 1) != 0 || (-[NSObject view](searchResultsViewController, "view"), v8 = objc_claimAutoreleasedReturnValue(), [v8 superview], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
    {
      v10 = sub_100067540();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        selfCopy2 = sessionCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "If we are showing the SearchAC or a search request is in process, then invalidate the current search and cancel the request: %@", &v11, 0xCu);
      }

      [(SearchViewController *)sessionCopy invalidate];
      [(SearchViewController *)sessionCopy cancelSearch];
      [(SearchViewController *)self _hideSearchHereControl];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [searchResultsViewController searchDidCancel:0];
      }
    }
  }

  else if (v7)
  {
    v11 = 134217984;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, searchResultsViewController, OS_LOG_TYPE_INFO, "[%p] No search session to invalidate.", &v11, 0xCu);
  }
}

- (void)endSearch
{
  [(SearchViewController *)self _hideSearchHereControl];
  self->_searchFieldWantsFocus = 0;
  [(PassthruSearchBar *)self->_searchBar setShowsCancelButton:0 animated:1];
  [(SearchViewController *)self clearRetainedSearchQuery];
  searchDataProvider = [(SearchDataSource *)self->_searchDataSource searchDataProvider];
  [searchDataProvider clearMKLocalSearchCompleterQueryState];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100997710;
  v6[3] = &unk_101661B18;
  v6[4] = self;
  v4 = objc_retainBlock(v6);
  if (sub_10000FA08(self) == 5)
  {
    (v4[2])(v4);
  }

  else
  {
    [(UIButton *)self->_userProfileButton setHidden:[(PassthruSearchBar *)self->_searchBar isHidden]];
    [(SearchViewController *)self _updateUserProfileEntryPointButton];
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController applyWithAnimations:v4 completion:&stru_1016305E8];
  }
}

- (void)endEditing
{
  if ([(UITextField *)self->_searchField isFirstResponder])
  {
    [(PassthruSearchBar *)self->_searchBar resignFirstResponder];
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    containerStyle = [cardPresentationController containerStyle];

    if (containerStyle == 1)
    {
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController2 wantsLayout:2];
    }
  }

  [(SearchViewController *)self showDropDownIfNeeded:0];
}

- (void)invalidateSearchSession
{
  currentSearchSession = [(SearchViewController *)self currentSearchSession];
  [(SearchViewController *)self _invalidateSearchSession:currentSearchSession];
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  currentDataSource = [(SearchViewController *)self currentDataSource];
  v12 = [currentDataSource conformsToProtocol:&OBJC_PROTOCOL___MapsUICollectionViewDiffableDataSourceCellProviding];

  if (v12)
  {
    currentDataSource2 = [(SearchViewController *)self currentDataSource];
    v14 = [currentDataSource2 collectionView:viewCopy viewForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  currentDataSource = [(SearchViewController *)self currentDataSource];
  v12 = [currentDataSource conformsToProtocol:&OBJC_PROTOCOL___MapsUICollectionViewDiffableDataSourceCellProviding];

  if (v12)
  {
    currentDataSource2 = [(SearchViewController *)self currentDataSource];
    v14 = [currentDataSource2 collectionView:viewCopy cellForItemAtIndexPath:pathCopy itemIdentifier:identifierCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)updateRowHeightForCurrentDataSource
{
  currentDataSource = self->_currentDataSource;
  if (currentDataSource)
  {
    [currentDataSource rowHeight];
    v5 = v4;
  }

  else
  {
    v5 = UITableViewAutomaticDimension;
  }

  [(UITableView *)self->_contentTableView rowHeight];
  if (v6 != v5)
  {
    contentTableView = self->_contentTableView;

    [(UITableView *)contentTableView setRowHeight:v5];
  }
}

- (void)reloadContentTableView
{
  currentDataSource = [(SearchViewController *)self currentDataSource];
  presentationStyle = [currentDataSource presentationStyle];

  if (!presentationStyle)
  {
    [(SearchViewController *)self updateRowHeightForCurrentDataSource];
    [(SearchViewController *)self _invalidateMediumHeightCache];
    currentDataSource2 = [(SearchViewController *)self currentDataSource];

    if (currentDataSource2)
    {
      [(UITableView *)self->_contentTableView reloadData];
    }
  }

  [(SearchViewController *)self _contentAlphaForCurrentLayout];

  [(SearchViewController *)self _updateHeaderHairlineAlphaWithContentAlpha:0 animated:?];
}

- (void)showSearchResults:(id)results
{
  resultsCopy = results;
  currentSearchSession = [(SearchViewController *)self currentSearchSession];
  if ([currentSearchSession isInvalidated])
  {
    v6 = sub_100067540();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = currentSearchSession;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[SearchVC] The current search session : %@ was invalidated. Not showing any search results.", &v11, 0xCu);
    }
  }

  else if ([(SearchViewController *)self isShowingOmnipresentSearchBar])
  {
    [(UIButton *)self->_userProfileButton setHidden:1];
    [(SearchViewController *)self displaySearchResultsWithViewController:resultsCopy searchBar:self->_searchBar];
    _resultsTableView = [resultsCopy _resultsTableView];
    [(ContaineeViewController *)self setContentScrollView:_resultsTableView forEdge:1];

    [(SearchViewController *)self updateCloseSearchResultEntryPointButton];
    [(SearchViewController *)self endEditing];
    currentSearchSession2 = [(SearchViewController *)self currentSearchSession];
    localSearchViewController = [(SearchViewController *)self localSearchViewController];
    refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
    [refreshSearchHereBusinessController setSearchSession:currentSearchSession2];
  }
}

- (void)showTitleBarSeparatorWhenScrolling:(BOOL)scrolling
{
  v3 = -1.0;
  if (scrolling)
  {
    v3 = 0.0;
  }

  [(NSLayoutConstraint *)self->_homeViewControllerBottomConstraint setConstant:v3];
}

- (void)_continueUpdateSearchFieldWithUpdatingSearchText:(BOOL)text
{
  textCopy = text;
  [(SearchViewController *)self loadViewIfNeeded];
  if (textCopy)
  {
    [(SearchViewController *)self _updateSearchFieldText];
  }

  [(SearchViewController *)self setNeedsUpdateContentState];
  [(SearchViewController *)self updateDataSource];
  [(SearchDataSource *)self->_searchDataSource clearAutocompleteResults];
  searchDataSource = self->_searchDataSource;

  [(SearchDataSource *)searchDataSource reset];
}

- (void)_updateSearchFieldWithItem:(id)item updatingSearchText:(BOOL)text
{
  textCopy = text;
  itemCopy = item;
  if (self->_searchItem != itemCopy)
  {
    v8 = itemCopy;
    objc_storeStrong(&self->_searchItem, item);
    [(SearchViewController *)self _continueUpdateSearchFieldWithUpdatingSearchText:textCopy];
    itemCopy = v8;
  }
}

- (void)updateSearchFieldWithItem:(id)item
{
  itemCopy = item;
  if (sub_10000FA08(self) == 5 && ([itemCopy isSpotlightSearch] & 1) == 0)
  {
    v5 = +[UIApplication sharedApplication];
    isRunningTest = [v5 isRunningTest];
  }

  else
  {
    isRunningTest = 1;
  }

  [(SearchViewController *)self _updateSearchFieldWithItem:itemCopy updatingSearchText:isRunningTest];
}

- (void)showDropDownIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if ([(SearchViewController *)self _showsContentInDropDownMenu])
  {
    if (neededCopy)
    {
      menuController = [(SearchViewController *)self menuController];
      macMenuPresentationController = [menuController macMenuPresentationController];
      isPresented = [macMenuPresentationController isPresented];

      if ((isPresented & 1) == 0)
      {
        delegate = [(ControlContaineeViewController *)self delegate];
        menuController2 = [(SearchViewController *)self menuController];
        [delegate viewController:self presentMenuController:menuController2 animated:1 fromChrome:1 completion:0];

        [(SearchViewController *)self showTitleBarSeparatorWhenScrolling:0];
      }
    }

    else
    {
      self->_userSelectedSearchBar = 0;
      delegate2 = [(ControlContaineeViewController *)self delegate];
      menuController3 = [(SearchViewController *)self menuController];
      [delegate2 viewController:menuController3 dismissMenuControllerAnimated:1];
    }
  }
}

- (MenuContaineeViewController)menuController
{
  menuController = self->_menuController;
  if (!menuController)
  {
    v4 = [[MenuContaineeViewController alloc] initWithContentView:self->_dropDownView];
    v5 = self->_menuController;
    self->_menuController = v4;

    [(MenuContaineeViewController *)self->_menuController setTrackedScrollview:self->_collectionView];
    searchFieldLayoutGuide = self->_searchFieldLayoutGuide;
    macMenuPresentationController = [(ContaineeViewController *)self->_menuController macMenuPresentationController];
    [macMenuPresentationController setAnchorLayoutGuide:searchFieldLayoutGuide];

    v8 = self->_searchFieldLayoutGuide;
    macMenuPresentationController2 = [(ContaineeViewController *)self->_menuController macMenuPresentationController];
    [macMenuPresentationController2 setWidthLayoutGuide:v8];

    searchBar = self->_searchBar;
    v10 = [NSArray arrayWithObjects:&searchBar count:1];
    macMenuPresentationController3 = [(ContaineeViewController *)self->_menuController macMenuPresentationController];
    [macMenuPresentationController3 setPassThroughViews:v10];

    macMenuPresentationController4 = [(ContaineeViewController *)self->_menuController macMenuPresentationController];
    [macMenuPresentationController4 addObserver:self];

    menuController = self->_menuController;
  }

  return menuController;
}

- (int64_t)currentDataSourceType
{
  currentDataSource = [(SearchViewController *)self currentDataSource];
  searchDataSource = [(SearchViewController *)self searchDataSource];

  if (currentDataSource == searchDataSource)
  {
    return 2;
  }

  currentDataSource2 = [(SearchViewController *)self currentDataSource];
  searchHomeDataSource = [(SearchViewController *)self searchHomeDataSource];
  v7 = currentDataSource2 == searchHomeDataSource;

  return v7;
}

- (void)setCurrentDataSource:(id)source
{
  sourceCopy = source;
  v6 = sourceCopy;
  if (self->_currentDataSource != sourceCopy || !sourceCopy && ![(HomeViewController *)self->_homeViewController isActive])
  {
    v7 = sub_1000410AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v86 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "SVC setCurrentDataSource %@", buf, 0xCu);
    }

    currentDataSource = self->_currentDataSource;
    if (currentDataSource)
    {
      [currentDataSource setActive:0];
    }

    else if (sub_10000FA08(self) != 5)
    {
      [(HomeViewController *)self->_homeViewController setActive:0];
      [(UIButton *)self->_userProfileButton setHidden:1];
      [(SearchViewController *)self _updateUserProfileEntryPointButton];
    }

    if (self->_currentDataSource == &self->_searchHomeDataSource->super)
    {
      [(UICollectionView *)self->_collectionView _maps_scrollContentToOriginalPosition];
      if (![(SearchViewController *)self _showsContentInDropDownMenu])
      {
        [(ContaineeViewController *)self setContentScrollView:self->_collectionView forEdge:1];
      }
    }

    if (!v6)
    {
      self->_userSelectedSearchBar = 0;
      [(SearchViewController *)self updateIsTouristHereValue];
      v19 = self->_currentDataSource;
      self->_currentDataSource = 0;

      [(UITableView *)self->_contentTableView removeFromSuperview];
      [(UICollectionView *)self->_collectionView removeFromSuperview];
      parentViewController = [(HomeViewController *)self->_homeViewController parentViewController];

      if (!parentViewController)
      {
        _homeViewController = [(SearchViewController *)self _homeViewController];
        [(SearchViewController *)self addChildViewController:_homeViewController];

        contentView = [(ContaineeViewController *)self contentView];
        view = [(HomeViewController *)self->_homeViewController view];
        [contentView insertSubview:view atIndex:0];

        [(HomeViewController *)self->_homeViewController didMoveToParentViewController:self];
        view2 = [(HomeViewController *)self->_homeViewController view];
        [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

        view3 = [(HomeViewController *)self->_homeViewController view];
        bottomAnchor = [view3 bottomAnchor];
        contentView2 = [(ContaineeViewController *)self contentView];
        bottomAnchor2 = [contentView2 bottomAnchor];
        v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        homeViewControllerBottomConstraint = self->_homeViewControllerBottomConstraint;
        self->_homeViewControllerBottomConstraint = v29;

        view4 = [(HomeViewController *)self->_homeViewController view];
        topAnchor = [view4 topAnchor];
        contentView3 = [(ContaineeViewController *)self contentView];
        topAnchor2 = [contentView3 topAnchor];
        v73 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v83[0] = v73;
        view5 = [(HomeViewController *)self->_homeViewController view];
        leadingAnchor = [view5 leadingAnchor];
        contentView4 = [(ContaineeViewController *)self contentView];
        leadingAnchor2 = [contentView4 leadingAnchor];
        v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v83[1] = v31;
        view6 = [(HomeViewController *)self->_homeViewController view];
        trailingAnchor = [view6 trailingAnchor];
        contentView5 = [(ContaineeViewController *)self contentView];
        trailingAnchor2 = [contentView5 trailingAnchor];
        v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v37 = self->_homeViewControllerBottomConstraint;
        v83[2] = v36;
        v83[3] = v37;
        v38 = [NSArray arrayWithObjects:v83 count:4];
        [NSLayoutConstraint activateConstraints:v38];

        v6 = 0;
      }

      [(HomeViewController *)self->_homeViewController setActive:1];
      [(UIButton *)self->_userProfileButton setHidden:[(PassthruSearchBar *)self->_searchBar isHidden]];
      closeSearchResultsButton = [(SearchViewController *)self closeSearchResultsButton];
      searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
      [closeSearchResultsButton setHidden:searchResultsViewController == 0];

      [(SearchViewController *)self _updateUserProfileEntryPointButton];
      if (sub_10000FA08(self) == 5)
      {
        view7 = [(HomeViewController *)self->_homeViewController view];
        [view7 setAlpha:1.0];
      }

      scrollView = [(HomeViewController *)self->_homeViewController scrollView];
      [(ContaineeViewController *)self setContentScrollView:scrollView forEdge:1];
      goto LABEL_42;
    }

    [(SearchViewController *)self updateIsTouristHereValue];
    objc_storeStrong(&self->_currentDataSource, source);
    if ([(SearchViewController *)self _showsContentInDropDownMenu]&& (dropDownView = self->_dropDownView) != 0)
    {
      contentView6 = dropDownView;
    }

    else
    {
      contentView6 = [(ContaineeViewController *)self contentView];
    }

    scrollView = contentView6;
    presentationStyle = [(DataSource *)v6 presentationStyle];
    if (presentationStyle == 1)
    {
      p_collectionView = &self->_collectionView;
      [(UICollectionView *)self->_collectionView setDelegate:v6];
      if ([(DataSource *)v6 conformsToProtocol:&OBJC_PROTOCOL___DataSourceCollectionView])
      {
        collectionViewDiffableDataSource = [(DataSource *)v6 collectionViewDiffableDataSource];
        [*p_collectionView setDataSource:collectionViewDiffableDataSource];

        collectionViewLayout = [(DataSource *)v6 collectionViewLayout];
        [*p_collectionView setCollectionViewLayout:collectionViewLayout];
      }

      [(UITableView *)self->_contentTableView removeFromSuperview];
      v16 = *p_collectionView;
      v44 = *p_collectionView;
      menuController = [(SearchViewController *)self menuController];
      [menuController setTrackedScrollview:v44];

      if ([(SearchViewController *)self _showsContentInDropDownMenu])
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (presentationStyle)
      {
        v16 = 0;
        goto LABEL_38;
      }

      p_collectionView = &self->_contentTableView;
      [(UITableView *)self->_contentTableView setDelegate:v6];
      if ([(DataSource *)v6 conformsToProtocol:&OBJC_PROTOCOL___UITableViewDataSource])
      {
        [*p_collectionView setDataSource:v6];
      }

      v14 = +[MapsDragAndDropManager sharedManager];
      deviceSupportsDragAndDrop = [v14 deviceSupportsDragAndDrop];

      if (deviceSupportsDragAndDrop)
      {
        [*p_collectionView setDragDelegate:v6];
      }

      [(UICollectionView *)self->_collectionView removeFromSuperview];
      v16 = *p_collectionView;
      if (sub_10000FA08(self) == 5)
      {
        [*p_collectionView setSeparatorStyle:0];
      }

      v17 = *p_collectionView;
      menuController2 = [(SearchViewController *)self menuController];
      [menuController2 setTrackedScrollview:v17];
    }

    [(ContaineeViewController *)self setContentScrollView:*p_collectionView forEdge:1];
LABEL_38:
    v46 = sub_10000FA08(self);
    homeViewController = self->_homeViewController;
    v82 = v6;
    if (v46 == 5)
    {
      view8 = [(HomeViewController *)homeViewController view];
      [view8 setAlpha:0.300000012];
    }

    else
    {
      [(HomeViewController *)homeViewController scrollContentToOriginalPosition];
      [(HomeViewController *)self->_homeViewController willMoveToParentViewController:0];
      view9 = [(HomeViewController *)self->_homeViewController view];
      [view9 removeFromSuperview];

      [(HomeViewController *)self->_homeViewController removeFromParentViewController];
    }

    [scrollView insertSubview:v16 atIndex:0];
    topAnchor3 = [v16 topAnchor];
    topAnchor4 = [scrollView topAnchor];
    v76 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v84[0] = v76;
    leadingAnchor3 = [v16 leadingAnchor];
    leadingAnchor4 = [scrollView leadingAnchor];
    v50 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v84[1] = v50;
    trailingAnchor3 = [v16 trailingAnchor];
    trailingAnchor4 = [scrollView trailingAnchor];
    v53 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v54 = v16;
    v74 = v16;
    v55 = v53;
    v84[2] = v53;
    bottomAnchor3 = [v54 bottomAnchor];
    bottomAnchor4 = [scrollView bottomAnchor];
    v58 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v84[3] = v58;
    v59 = [NSArray arrayWithObjects:v84 count:4];
    [NSLayoutConstraint activateConstraints:v59];

    [self->_currentDataSource setActive:1];
    [(SearchViewController *)self reloadContentTableView];

    v6 = v82;
LABEL_42:
  }

  v60 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v60 isUsingOfflineMaps];

  if (isUsingOfflineMaps)
  {
    if ([(HomeViewController *)self->_homeViewController isActive])
    {
      [(UIButton *)self->_userProfileButton setHidden:0];
      [(PassthruSearchBar *)self->_searchBar setHidden:0];
      closeSearchResultsButton2 = [(SearchViewController *)self closeSearchResultsButton];
      [closeSearchResultsButton2 setHidden:1];

      browseModeHeaderView = [(SearchViewController *)self browseModeHeaderView];
      [browseModeHeaderView setHidden:1];
    }

    else
    {
      v64 = 1;
      [(PassthruSearchBar *)self->_searchBar setHidden:!self->_supportsFullTextSearch];
      supportsFullTextSearch = self->_supportsFullTextSearch;
      browseModeHeaderView2 = [(SearchViewController *)self browseModeHeaderView];
      [browseModeHeaderView2 setHidden:supportsFullTextSearch];

      if (![(SearchViewController *)self isSearchingAlongTheRoute])
      {
        v64 = self->_supportsFullTextSearch;
      }

      browseModeHeaderView = [(SearchViewController *)self browseModeHeaderView];
      [browseModeHeaderView setButtonHidden:v64];
    }
  }
}

- (void)updateContentState
{
  if ([(SearchViewController *)self isViewLoaded])
  {
    [(SearchViewController *)self updateDataSource];

    [(SearchViewController *)self resetMapServiceTicket];
  }
}

- (PersonalizedItemSource)suggestionsItemSource
{
  _homeViewController = [(SearchViewController *)self _homeViewController];
  suggestionsItemSource = [_homeViewController suggestionsItemSource];

  return suggestionsItemSource;
}

- (void)setPersonalizedItemManager:(id)manager
{
  managerCopy = manager;
  objc_storeWeak(&self->_personalizedItemManager, managerCopy);
  searchDataSource = self->_searchDataSource;
  if (searchDataSource)
  {
    [(SearchDataSource *)searchDataSource setMapPersonalizedItems:managerCopy];
  }
}

- (void)popoverDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  if (__PAIR64__(self->_didPresentPopover, self->_userSelectedSearchBar) == 0x100000001)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100998E44;
    v5[3] = &unk_101661738;
    v5[4] = self;
    [UIView animateWithDuration:&stru_1016305C8 animations:v5 completion:0.0];
    self->_userSelectedSearchBar = 0;
    self->_didPresentPopover = 0;
  }
}

- (void)preferredContentSizeChanged:(id)changed
{
  [(PassthruSearchBar *)self->_searchBar invalidateIntrinsicContentSize];
  view = [(SearchViewController *)self view];
  [view setNeedsLayout];

  [(SearchViewController *)self reloadContentTableView];
}

- (id)searchDataSource
{
  if ([(SearchViewController *)self isViewLoaded])
  {
    searchDataSource = self->_searchDataSource;
    if (!searchDataSource)
    {
      v4 = [[SearchDataSource alloc] initWithTableView:self->_contentTableView];
      WeakRetained = objc_loadWeakRetained(&self->_deferredSearchDataSourceDelegate);
      v6 = WeakRetained;
      if (WeakRetained)
      {
        selfCopy = WeakRetained;
      }

      else
      {
        selfCopy = self;
      }

      [(DataSource *)v4 setDelegate:selfCopy];

      personalizedItemManager = [(SearchViewController *)self personalizedItemManager];
      [(SearchDataSource *)v4 setMapPersonalizedItems:personalizedItemManager];

      delegate = [(ControlContaineeViewController *)self delegate];
      userLocationSearchResult = [delegate userLocationSearchResult];
      [(SearchDataSource *)v4 setUserLocationSearchResult:userLocationSearchResult];

      [(SearchDataSource *)v4 setSearchAlongRoute:[(SearchViewController *)self isSearchingAlongTheRoute]];
      [(SearchDataSource *)v4 setCanShowQueryAccelerator:1];
      v11 = self->_searchDataSource;
      self->_searchDataSource = v4;

      objc_storeWeak(&self->_deferredSearchDataSourceDelegate, 0);
      searchDataSource = self->_searchDataSource;
    }

    v12 = searchDataSource;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)searchHomeDataSource
{
  if ([(SearchViewController *)self isViewLoaded])
  {
    searchHomeDataSource = self->_searchHomeDataSource;
    if (!searchHomeDataSource)
    {
      v4 = [[SearchHomeDataSource alloc] initWithCollectionView:self->_collectionView parentViewController:self updateLocation:0 isSearchAlongRoute:[(SearchViewController *)self isSearchingAlongTheRoute] supportsFullTextSearch:self->_supportsFullTextSearch];
      [(DataSource *)v4 setDelegate:self];
      [(SearchHomeDataSource *)v4 setSearchHomeDataSourceDelegate:self];
      v5 = self->_searchHomeDataSource;
      self->_searchHomeDataSource = v4;

      searchHomeDataSource = self->_searchHomeDataSource;
    }

    v6 = searchHomeDataSource;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)didResignCurrent
{
  [(SearchViewController *)self _internalViewDidDisappear];
  if ([(SearchViewController *)self isShowingOmnipresentSearchBar])
  {
    searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
    v4 = searchResultsViewController;
    if (searchResultsViewController)
    {
      [searchResultsViewController didResignCurrent];
    }
  }

  v5.receiver = self;
  v5.super_class = SearchViewController;
  [(ContaineeViewController *)&v5 didResignCurrent];
}

- (void)willResignCurrent:(BOOL)current
{
  currentCopy = current;
  [(SearchViewController *)self _internalViewWillDisappear];
  v7.receiver = self;
  v7.super_class = SearchViewController;
  [(ContaineeViewController *)&v7 willResignCurrent:currentCopy];
  if (!self->_maintainSearchStateWhenDisappearing)
  {
    currentDataSource = self->_currentDataSource;
    if (!currentDataSource)
    {
      currentDataSource = self->_homeViewController;
    }

    [currentDataSource setActive:0];
  }

  self->_maintainSearchStateWhenDisappearing = 0;
  [(SearchViewController *)self _hideSearchHereControl];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"SearchWillResignCurrentNotification" object:self];
}

- (void)didBecomeCurrent
{
  v5.receiver = self;
  v5.super_class = SearchViewController;
  [(ContaineeViewController *)&v5 didBecomeCurrent];
  [(SearchViewController *)self _internalViewDidAppear];
  if ([(SearchViewController *)self isShowingOmnipresentSearchBar])
  {
    searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
    v4 = searchResultsViewController;
    if (searchResultsViewController)
    {
      [searchResultsViewController didBecomeCurrent];
    }
  }
}

- (void)willBecomeCurrentByGesture
{
  v5.receiver = self;
  v5.super_class = SearchViewController;
  [(ContaineeViewController *)&v5 willBecomeCurrentByGesture];
  [(SearchViewController *)self _restoreRetainedQueryIfNeeded];
  if ([(SearchViewController *)self isShowingOmnipresentSearchBar])
  {
    searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
    v4 = searchResultsViewController;
    if (searchResultsViewController)
    {
      [searchResultsViewController willBecomeCurrentByGesture];
    }
  }
}

- (void)willBecomeCurrent:(BOOL)current
{
  currentCopy = current;
  v10.receiver = self;
  v10.super_class = SearchViewController;
  [(ContaineeViewController *)&v10 willBecomeCurrent:?];
  [(SearchViewController *)self _internalViewWillAppear];
  delegate = [(ControlContaineeViewController *)self delegate];
  [delegate updateHistoricalLocations];

  currentDataSource = self->_currentDataSource;
  if (!currentDataSource)
  {
    currentDataSource = self->_homeViewController;
  }

  [currentDataSource setActive:1];
  if ([(SearchViewController *)self isShowingOmnipresentSearchBar])
  {
    searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
    v8 = searchResultsViewController;
    if (searchResultsViewController)
    {
      [searchResultsViewController willBecomeCurrent:currentCopy];
    }
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"SearchWillBecomeCurrentNotification" object:self];
}

- (double)topSpaceForScrollPocket
{
  searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
  v4 = searchResultsViewController;
  if (searchResultsViewController)
  {
    [searchResultsViewController topSpaceForScrollPocket];
LABEL_6:
    v10 = v5;
    goto LABEL_7;
  }

  if (sub_10000FA08(self) != 5)
  {
    v12.receiver = self;
    v12.super_class = SearchViewController;
    [(ContaineeViewController *)&v12 topSpaceForScrollPocket];
    goto LABEL_6;
  }

  headerView = [(ContaineeViewController *)self headerView];
  [headerView frame];
  MaxY = CGRectGetMaxY(v13);
  view = [(SearchViewController *)self view];
  [view safeAreaInsets];
  v10 = MaxY - v9;

LABEL_7:
  return v10;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  nextFocusedItem = [contextCopy nextFocusedItem];
  if (!nextFocusedItem)
  {
    goto LABEL_5;
  }

  dropDownView = self->_dropDownView;
  if (!dropDownView)
  {
    goto LABEL_5;
  }

  nextFocusedItem2 = [contextCopy nextFocusedItem];
  if ([UIFocusSystem environment:dropDownView containsEnvironment:nextFocusedItem2])
  {

LABEL_5:
    goto LABEL_6;
  }

  nextFocusedItem3 = [contextCopy nextFocusedItem];
  v13 = [UIFocusSystem environment:self containsEnvironment:nextFocusedItem3];

  if ((v13 & 1) == 0)
  {
    [(SearchViewController *)self showDropDownIfNeeded:0];
  }

LABEL_6:
  if (sub_10000FA08(self) != 5 && self->_homeViewController)
  {
    v8 = [UIFocusSystem focusSystemForEnvironment:?];
    focusedItem = [v8 focusedItem];

    if (!focusedItem)
    {
LABEL_18:

      goto LABEL_19;
    }

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    if ([cardPresentationController containerStyle] == 6)
    {
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      if ([cardPresentationController2 containeeLayout] == 1)
      {
      }

      else
      {
        cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
        containeeLayout = [cardPresentationController3 containeeLayout];

        if (containeeLayout != 2)
        {
LABEL_17:
          self->_searchFieldWantsFocus = 1;
          goto LABEL_18;
        }
      }

      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController wantsLayout:3];
    }

    goto LABEL_17;
  }

LABEL_19:
}

- (void)handleDismissAction:(id)action
{
  if ([(HomeViewController *)self->_homeViewController isActive])
  {
    presentedViewController = [(SearchViewController *)self presentedViewController];
    v5 = presentedViewController;
    if (presentedViewController)
    {
      v7 = presentedViewController;
      v6 = [presentedViewController conformsToProtocol:&OBJC_PROTOCOL___ContaineeProtocol];
      v5 = v7;
      if ((v6 & 1) == 0)
      {
        [v7 dismissViewControllerAnimated:1 completion:0];
        v5 = v7;
      }
    }
  }

  else
  {

    [(SearchViewController *)self endSearch];
  }
}

- (id)offlinePlaceholderKey
{
  v2 = +[NSLocale preferredLanguages];
  firstObject = [v2 firstObject];
  v4 = [NSString stringWithFormat:@"%@-%@", @"__internal__searchBarOfflinePlaceholder", firstObject];

  return v4;
}

- (id)browseOfflineMapsString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Browse Offline Maps" value:@"localized string not found" table:0];

  return v3;
}

- (MapsDragDestinationHandler)mapsDragDestinationHandler
{
  mapsDragDestinationHandler = self->_mapsDragDestinationHandler;
  if (!mapsDragDestinationHandler)
  {
    v4 = objc_alloc_init(MapsDragDestinationHandler);
    v5 = self->_mapsDragDestinationHandler;
    self->_mapsDragDestinationHandler = v4;

    delegate = [(ControlContaineeViewController *)self delegate];
    [(MapsDragDestinationHandler *)self->_mapsDragDestinationHandler setDelegate:delegate];

    mapsDragDestinationHandler = self->_mapsDragDestinationHandler;
  }

  return mapsDragDestinationHandler;
}

- (void)presentUserProfile
{
  +[UserProfileAnalyticsManager captureEnterAccountTapAction];
  homeActionCoordinator = [(SearchViewController *)self homeActionCoordinator];
  [homeActionCoordinator viewControllerPresentUserProfile:self];
}

- (UIEdgeInsets)_calculateAccessoryTouchInsets
{
  view = [(SearchViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  v4 = -16.0;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v5 = -16.0;
  }

  else
  {
    v5 = -8.0;
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v6 = -8.0;
  }

  else
  {
    v6 = -16.0;
  }

  v7 = -16.0;
  result.right = v6;
  result.bottom = v4;
  result.left = v5;
  result.top = v7;
  return result;
}

- (double)_searchBarAccessoryWidth
{
  v3 = 0.0;
  if (sub_10000FA08(self) != 5 && ![(SearchViewController *)self isSearchingAlongTheRoute])
  {
    closeSearchResultsButton = [(SearchViewController *)self closeSearchResultsButton];
    isHidden = [closeSearchResultsButton isHidden];

    if (isHidden)
    {
      if ([(UIButton *)self->_userProfileButton isHidden])
      {
        return 0.0;
      }

      else
      {
        return 44.0;
      }
    }

    else
    {
      return 44.0;
    }
  }

  return v3;
}

- (UIEdgeInsets)_calculateSearchBarInsets
{
  if (sub_10000FA08(self) == 5)
  {
    view = [(SearchViewController *)self view];
    [view safeAreaInsets];
    v4 = 3.0;
    v6 = v5 + 3.0;

    v7 = 15.0;
    v8 = 15.0;
  }

  else
  {
    [(SearchViewController *)self _searchBarAccessoryWidth];
    v6 = 16.0;
    if (v9 <= 0.0)
    {
      v10 = 16.0;
    }

    else
    {
      v10 = v9 + 24.0;
    }

    view2 = [(SearchViewController *)self view];
    effectiveUserInterfaceLayoutDirection = [view2 effectiveUserInterfaceLayoutDirection];

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v7 = v10;
    }

    else
    {
      v7 = 16.0;
    }

    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v8 = 16.0;
    }

    else
    {
      v8 = v10;
    }

    v4 = 16.0;
  }

  v13 = v6;
  v14 = v4;
  result.right = v8;
  result.bottom = v14;
  result.left = v7;
  result.top = v13;
  return result;
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SearchViewController;
  [(SearchViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(SearchViewController *)self updateSearchBarContentInsets];
}

- (void)updateSearchBarContentInsets
{
  [(SearchViewController *)self _calculateSearchBarInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  searchBar = [(SearchViewController *)self searchBar];
  [searchBar contentInset];
  if (v6 == v15 && v4 == v12 && v10 == v14)
  {
    v18 = v13;

    if (v8 == v18)
    {
      return;
    }
  }

  else
  {
  }

  searchBar2 = [(SearchViewController *)self searchBar];
  [searchBar2 setContentInset:{v4, v6, v8, v10}];
}

- (id)createConstraintsForSearchBarAccessoryView:(id)view
{
  viewCopy = view;
  centerYAnchor = [viewCopy centerYAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  centerYAnchor2 = [headerView centerYAnchor];
  v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v15[0] = v8;
  trailingAnchor = [viewCopy trailingAnchor];

  headerView2 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView2 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v15[1] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:2];

  return v13;
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = SearchViewController;
  [(ContaineeViewController *)&v7 viewDidLayoutSubviews];
  currentDataSource = [(SearchViewController *)self currentDataSource];
  searchDataSource = self->_searchDataSource;
  if (currentDataSource == searchDataSource)
  {
    shouldReloadOnHeightChange = [(SearchDataSource *)searchDataSource shouldReloadOnHeightChange];

    if (shouldReloadOnHeightChange)
    {
      [(SearchViewController *)self reloadContentTableView];
    }
  }

  else
  {
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  -[SearchViewController _updateDefaultLayoutWithContainerStyle:](self, "_updateDefaultLayoutWithContainerStyle:", [cardPresentationController containerStyle]);
}

- (Class)viewClass
{
  if (sub_10000FA08(self) == 5)
  {
    viewClass = objc_opt_class();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SearchViewController;
    viewClass = [(ContaineeViewController *)&v5 viewClass];
  }

  return viewClass;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [(SearchViewController *)self _internalViewDidDisappear];
  }

  v7.receiver = self;
  v7.super_class = SearchViewController;
  [(SearchViewController *)&v7 viewDidDisappear:disappearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_1000410AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SVC viewWillDisappear", buf, 2u);
  }

  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [(SearchViewController *)self _internalViewWillDisappear];
  }

  v8.receiver = self;
  v8.super_class = SearchViewController;
  [(ContaineeViewController *)&v8 viewWillDisappear:disappearCopy];
  [(SearchViewController *)self _hideSearchHereControl];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_1000410AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SVC viewWillAppear", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = SearchViewController;
  [(ContaineeViewController *)&v8 viewWillAppear:appearCopy];
  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [(SearchViewController *)self _internalViewWillAppear];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SearchViewController;
  [(SearchViewController *)&v6 viewDidAppear:appear];
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [(SearchViewController *)self _internalViewDidAppear];
  }
}

- (void)_internalViewDidDisappear
{
  delegate = [(ControlContaineeViewController *)self delegate];
  venuesManager = [delegate venuesManager];
  [venuesManager removeChangeObserver:self];

  objc_initWeak(&location, self);
  v5 = dispatch_time(0, 250000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10099A220;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  dispatch_after(v5, &_dispatch_main_q, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_internalViewWillDisappear
{
  [(SearchViewController *)self _enableTextFieldNotification:0];
  [(SearchViewController *)self showDropDownIfNeeded:0];

  [(SearchViewController *)self showDropDownIfNeeded:0];
}

- (void)_internalViewDidAppear
{
  [(SearchViewController *)self _enableTextFieldNotification:1];
  if (self->_needsToBecomeFirstResponder)
  {

    [(SearchViewController *)self searchBarBecomeFirstResponder];
  }
}

- (void)_enableTextFieldNotification:(BOOL)notification
{
  notificationCopy = notification;
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = v5;
  if (notificationCopy)
  {
    [v5 addObserver:self selector:"_textFieldDidChange:" name:UITextFieldTextDidChangeNotification object:self->_searchField];
  }

  else
  {
    [v5 removeObserver:self name:UITextFieldTextDidChangeNotification object:self->_searchField];
  }
}

- (void)_initPlaceholderWithSubmitTicketIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    if (neededCopy)
    {
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v6 = dispatch_queue_create("com.apple.Maps.search.placeholder", v5);
      placeholderQueue = self->_placeholderQueue;
      self->_placeholderQueue = v6;

      objc_initWeak(&location, self);
      v8 = self->_placeholderQueue;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10099A510;
      v9[3] = &unk_101661B98;
      objc_copyWeak(&v10, &location);
      dispatch_async(v8, v9);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    else
    {

      [(SearchViewController *)self _setPlaceHolder];
    }
  }
}

- (void)_initOfflinePlaceHolderWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!self->_isOfflineServiceRunning)
  {
    self->_isOfflineServiceRunning = 1;
    objc_initWeak(&location, self);
    offlinePlaceholderQueue = [(SearchViewController *)self offlinePlaceholderQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10099A894;
    block[3] = &unk_101660648;
    objc_copyWeak(&v8, &location);
    v7 = completionCopy;
    dispatch_async(offlinePlaceholderQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)logOfflineBrowseMode:(BOOL)mode
{
  if (!mode && (!self->_isOfflineBrowseRecordedAlready || self->_supportsFullTextSearch))
  {
    v4 = +[MKMapService sharedService];
    [v4 captureUserAction:45 onTarget:1708 eventValue:0];
  }
}

- (void)resetOfflineTextSearchSupport
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10099AD2C;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  [(SearchViewController *)self _initOfflinePlaceHolderWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_setupOfflinePlaceholder
{
  v3 = +[NSLocale preferredLanguages];
  firstObject = [v3 firstObject];
  v9 = [NSString stringWithFormat:@"%@-%@", @"__internal__searchBarOfflinePlaceholder", firstObject];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:v9];

  if (v6)
  {
    [(UITextField *)self->_searchField setPlaceholder:v6];
  }

  else
  {
    browseOfflineMapsString = [(SearchViewController *)self browseOfflineMapsString];
    [(UITextField *)self->_searchField setPlaceholder:browseOfflineMapsString];
  }

  _placeholderLabel = [(UITextField *)self->_searchField _placeholderLabel];
  [_placeholderLabel setAllowsDefaultTighteningForTruncation:1];
}

- (void)_offlineSettingChangeHandler
{
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = +[MapsOfflineUIHelper sharedHelper];
    isUsingOfflineMaps = [v4 isUsingOfflineMaps];
    v6 = @"NO";
    if (isUsingOfflineMaps)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Offline setting has changed. New value is : %@", &v12, 0xCu);
  }

  v8 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps2 = [v8 isUsingOfflineMaps];

  if (isUsingOfflineMaps2)
  {
    [(SearchViewController *)self _setupOfflinePlaceholder];
    [(SearchViewController *)self _initOfflinePlaceHolderWithCompletion:0];
  }

  else
  {
    [(SearchViewController *)self _setupOnlinePlaceholder];
    v10 = sub_100067540();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Setting the placeholder string for online mode", &v12, 2u);
    }
  }

  searchHomeDataSource = self->_searchHomeDataSource;
  self->_searchHomeDataSource = 0;
}

- (void)_shouldHideOfflineHeaderView:(BOOL)view
{
  viewCopy = view;
  browseModeHeaderView = [(SearchViewController *)self browseModeHeaderView];
  [browseModeHeaderView setHidden:viewCopy];

  [(PassthruSearchBar *)self->_searchBar setHidden:viewCopy ^ 1];
  [(UIButton *)self->_userProfileButton setHidden:viewCopy ^ 1];

  [(SearchViewController *)self _updateUserProfileEntryPointButton];
}

- (id)offlinePlaceholderQueue
{
  offlinePlaceholderQueue = self->_offlinePlaceholderQueue;
  if (!offlinePlaceholderQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.Maps.search.offline.placeholder", v4);
    v6 = self->_offlinePlaceholderQueue;
    self->_offlinePlaceholderQueue = v5;

    offlinePlaceholderQueue = self->_offlinePlaceholderQueue;
  }

  return offlinePlaceholderQueue;
}

- (id)browseModeHeaderView
{
  offlineBrowseHeaderView = self->_offlineBrowseHeaderView;
  if (!offlineBrowseHeaderView)
  {
    v4 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_offlineBrowseHeaderView;
    self->_offlineBrowseHeaderView = v4;

    [(ContainerHeaderView *)self->_offlineBrowseHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ContainerHeaderView *)self->_offlineBrowseHeaderView setDelegate:self];
    [(ContainerHeaderView *)self->_offlineBrowseHeaderView setHeaderSize:2];
    [(ContainerHeaderView *)self->_offlineBrowseHeaderView setHairLineAlpha:0.0];
    v6 = +[UIColor clearColor];
    [(ContainerHeaderView *)self->_offlineBrowseHeaderView setBackgroundColor:v6];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Browse" value:@"localized string not found" table:@"Offline"];
    [(ContainerHeaderView *)self->_offlineBrowseHeaderView setTitle:v8];

    headerView = [(ContaineeViewController *)self headerView];
    browseModeHeaderView = [(SearchViewController *)self browseModeHeaderView];
    [headerView addSubview:browseModeHeaderView];

    browseModeHeaderView2 = [(SearchViewController *)self browseModeHeaderView];
    headerView2 = [(ContaineeViewController *)self headerView];
    v13 = [browseModeHeaderView2 _maps_constraintsForCenteringInView:headerView2 edgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [NSLayoutConstraint activateConstraints:v13];

    offlineBrowseHeaderView = self->_offlineBrowseHeaderView;
  }

  return offlineBrowseHeaderView;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  homeViewController = self->_homeViewController;
  senderCopy = sender;
  if ([(HomeViewController *)homeViewController isActive])
  {
    v8 = [(HomeViewController *)self->_homeViewController targetForAction:action withSender:senderCopy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SearchViewController;
    v8 = [(SearchViewController *)&v11 targetForAction:action withSender:senderCopy];
  }

  v9 = v8;

  return v9;
}

- (id)keyCommands
{
  if ([(HomeViewController *)self->_homeViewController isActive]&& ([(SearchViewController *)self presentedViewController], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    keyCommands = [(HomeViewController *)self->_homeViewController keyCommands];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SearchViewController;
    keyCommands = [(ContaineeViewController *)&v9 keyCommands];
    if (self->_currentDataSource == &self->_searchHomeDataSource->super)
    {
      presentedViewController = [(SearchViewController *)self presentedViewController];

      if (!presentedViewController)
      {
        keyCommands2 = [(SearchHomeDataSource *)self->_searchHomeDataSource keyCommands];
        v7 = [keyCommands arrayByAddingObjectsFromArray:keyCommands2];

        keyCommands = v7;
      }
    }
  }

  return keyCommands;
}

- (void)updateTheme
{
  v7.receiver = self;
  v7.super_class = SearchViewController;
  [(MapsThemeViewController *)&v7 updateTheme];
  theme = [(SearchViewController *)self theme];
  searchBarPlaceHolderColor = [theme searchBarPlaceHolderColor];
  _placeholderLabel = [(UITextField *)self->_searchField _placeholderLabel];
  [_placeholderLabel setTextColor:searchBarPlaceHolderColor];

  theme2 = [(SearchViewController *)self theme];
  -[UITextField setKeyboardAppearance:](self->_searchField, "setKeyboardAppearance:", [theme2 textFieldKeyboardAppearance]);

  [(UITableView *)self->_contentTableView reloadData];
}

- (SearchViewController)initWithHomeActionDelegate:(id)delegate searchDataSourceDelegate:(id)sourceDelegate
{
  delegateCopy = delegate;
  sourceDelegateCopy = sourceDelegate;
  v8 = [(SearchViewController *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_deferredHomeActionDelegate, delegateCopy);
    objc_storeWeak(&v9->_deferredSearchDataSourceDelegate, sourceDelegateCopy);
  }

  return v9;
}

- (SearchViewController)initWithSearchAlongRoute:(BOOL)route
{
  routeCopy = route;
  v4 = [(SearchViewController *)self init];
  v5 = v4;
  if (v4)
  {
    [(SearchViewController *)v4 setSearchingAlongTheRoute:routeCopy];
    v6 = [[SearchHomeAnalyticsManager alloc] initWithSearchAlongRoute:routeCopy];
    [(SearchViewController *)v5 setAnalyticsManager:v6];

    v5->_isOfflineBrowseRecordedAlready = 0;
    v7 = +[MapsOfflineUIHelper sharedHelper];
    isUsingOfflineMaps = [v7 isUsingOfflineMaps];

    if (isUsingOfflineMaps)
    {
      [(SearchViewController *)v5 _initOfflinePlaceHolderWithCompletion:0];
    }
  }

  return v5;
}

- (void)endSearchForTesting
{
  [(SearchViewController *)self endSearch];
  searchBar = [(SearchViewController *)self searchBar];
  [searchBar setText:&stru_1016631F0];
}

- (void)closeSearchResultsButtonAction:(id)action
{
  searchResultsViewController = [(SearchViewController *)self searchResultsViewController];
  if (searchResultsViewController)
  {
    +[SearchResultsAnalyticsManager logCloseSearchResults];
    [searchResultsViewController willMoveToParentViewController:0];
    view = [searchResultsViewController view];
    [view removeFromSuperview];

    [searchResultsViewController removeFromParentViewController];
    closeSearchResultsButton = [(SearchViewController *)self closeSearchResultsButton];
    [closeSearchResultsButton setHidden:1];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100E303EC;
    v11[3] = &unk_101661B18;
    v11[4] = self;
    v7 = objc_retainBlock(v11);
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController applyWithAnimations:v7 completion:&stru_101655C98];
  }

  else
  {
    v9 = sub_100067540();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Tried to close search results when they were not present.", v10, 2u);
    }
  }
}

- (void)updateCloseSearchResultEntryPointButton
{
  if (sub_10000FA08(self) != 5 && ![(SearchViewController *)self isSearchingAlongTheRoute])
  {

    [(SearchViewController *)self updateSearchBarContentInsets];
  }
}

- (void)addCloseSearchResultsButtonBesidesSearchBar
{
  if (![(SearchViewController *)self isSearchingAlongTheRoute])
  {
    v3 = +[UIButton _maps_cardButtonCloseButton];
    [(SearchViewController *)self setCloseSearchResultsButton:v3];

    closeSearchResultsButton = [(SearchViewController *)self closeSearchResultsButton];
    [closeSearchResultsButton setTranslatesAutoresizingMaskIntoConstraints:0];

    closeSearchResultsButton2 = [(SearchViewController *)self closeSearchResultsButton];
    [closeSearchResultsButton2 setAccessibilityIdentifier:@"closeSearchResultsButton"];

    closeSearchResultsButton3 = [(SearchViewController *)self closeSearchResultsButton];
    [closeSearchResultsButton3 addTarget:self action:"closeSearchResultsButtonAction:" forControlEvents:64];

    headerView = [(ContaineeViewController *)self headerView];
    closeSearchResultsButton4 = [(SearchViewController *)self closeSearchResultsButton];
    [headerView addSubview:closeSearchResultsButton4];

    closeSearchResultsButton5 = [(SearchViewController *)self closeSearchResultsButton];
    v10 = [(SearchViewController *)self createConstraintsForSearchBarAccessoryView:closeSearchResultsButton5];

    [NSLayoutConstraint activateConstraints:v10];
  }
}

- (void)displaySearchResultsWithViewController:(id)controller searchBar:(id)bar
{
  controllerCopy = controller;
  barCopy = bar;
  v8 = +[MapsOfflineUIHelper sharedHelper];
  if ([v8 isUsingOfflineMaps] && !-[SearchViewController supportsFullTextSearch](self, "supportsFullTextSearch"))
  {
    IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
  }

  else
  {
    IsEnabled_SearchAndDiscovery = 0;
  }

  closeSearchResultsButton = [(SearchViewController *)self closeSearchResultsButton];
  [closeSearchResultsButton setHidden:IsEnabled_SearchAndDiscovery];

  searchResultsViewController = [(SearchViewController *)self searchResultsViewController];

  if (!searchResultsViewController)
  {
    v12 = sub_100067540();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      [(ContaineeViewController *)self headerHeight];
      v14 = v13;
      v56.receiver = self;
      v56.super_class = SearchViewController;
      [(ContaineeViewController *)&v56 topSpaceForScrollPocket];
      v16 = v15;
      [barCopy frame];
      *buf = 134218496;
      v59 = v14;
      v60 = 2048;
      v61 = v16;
      v62 = 2048;
      v63 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Displaying search results: headerHeight: %f, topSpaceForPocker: %f, searchBarHeight: %f", buf, 0x20u);
    }

    [(ContaineeViewController *)self headerHeight];
    v19 = v18;
    v55.receiver = self;
    v55.super_class = SearchViewController;
    [(ContaineeViewController *)&v55 topSpaceForScrollPocket];
    if (v19 <= v20)
    {
      v54.receiver = self;
      v54.super_class = SearchViewController;
      [(ContaineeViewController *)&v54 topSpaceForScrollPocket];
    }

    else
    {
      [(ContaineeViewController *)self headerHeight];
    }

    v22 = v21;
    [barCopy frame];
    if (v23 > v22)
    {
      [barCopy frame];
      v22 = v24;
    }

    [controllerCopy setTopSpaceForRefinements:v22];
    view = [controllerCopy view];
    [view removeFromSuperview];

    [(SearchViewController *)self addChildViewController:controllerCopy];
    contentView = [(ContaineeViewController *)self contentView];
    view2 = [controllerCopy view];
    [contentView addSubview:view2];

    view3 = [controllerCopy view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    view4 = [controllerCopy view];
    leadingAnchor = [view4 leadingAnchor];
    contentView2 = [(ContaineeViewController *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v57[0] = v48;
    view5 = [controllerCopy view];
    trailingAnchor = [view5 trailingAnchor];
    contentView3 = [(ContaineeViewController *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v57[1] = v43;
    view6 = [controllerCopy view];
    topAnchor = [view6 topAnchor];
    contentView4 = [(ContaineeViewController *)self contentView];
    topAnchor2 = [contentView4 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v57[2] = v30;
    view7 = [controllerCopy view];
    [view7 bottomAnchor];
    v32 = v53 = controllerCopy;
    contentView5 = [(ContaineeViewController *)self contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    v35 = [v32 constraintEqualToAnchor:bottomAnchor];
    v57[3] = v35;
    v36 = [NSArray arrayWithObjects:v57 count:4];
    [NSLayoutConstraint activateConstraints:v36];

    controllerCopy = v53;
    [v53 didMoveToParentViewController:self];
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  if ([cardPresentationController containeeLayout] != 3)
  {
    goto LABEL_17;
  }

  v38 = sub_10000FA08(self);

  if (v38 != 5)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController wantsLayout:2 animated:1];
LABEL_17:
  }

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 updateHeightForCurrentLayout];

  [barCopy setShowsCancelButton:0 animated:1];
}

@end