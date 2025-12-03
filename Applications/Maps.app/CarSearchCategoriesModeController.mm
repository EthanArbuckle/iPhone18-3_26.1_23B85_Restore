@interface CarSearchCategoriesModeController
+ (id)_traitsForNavigation:(BOOL)navigation;
+ (void)prepareNearby;
+ (void)prepareNearbySAR;
- (BOOL)_isMapsOffline;
- (CarSearchCategoriesModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (NSArray)preferredCarFocusEnvironments;
- (_TtC4Maps37CarSearchCategoriesCardViewController)categoriesCard;
- (id)desiredCards;
- (id)mapView;
- (int)currentUsageTarget;
- (void)_offlineSettingDidChange;
- (void)_ppt_selectKeyboardMode;
- (void)_updateCategories:(id)categories;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)checkFullTextSearchSupport;
- (void)configureCard:(id)card forKey:(id)key;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)searchCategoriesCard:(id)card didSelectCategory:(id)category;
- (void)searchCategoriesCardDidSelectKeyboardSearch:(id)search usingInteractionModel:(unint64_t)model;
- (void)searchCategoriesCardDidSelectSiriSearch:(id)search usingInteractionModel:(unint64_t)model;
- (void)updateCardViewTitle;
@end

@implementation CarSearchCategoriesModeController

- (CarSearchCategoriesModeController)init
{
  v17.receiver = self;
  v17.super_class = CarSearchCategoriesModeController;
  v2 = [(CarSearchCategoriesModeController *)&v17 init];
  if (v2)
  {
    v3 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.Maps.search.offline.placeholder", v4);
    offlinePlaceholderQueue = v2->_offlinePlaceholderQueue;
    v2->_offlinePlaceholderQueue = v5;

    v7 = +[CarDisplayController sharedInstance];
    v2->_isNavigating = [v7 isCarAppSceneHostingNavigation];

    v2->_supportsFullTextSearch = 1;
    isNavigating = [(CarSearchCategoriesModeController *)v2 isNavigating];
    v9 = @"Stark";
    if (isNavigating)
    {
      v9 = @"Stark-SAR";
    }

    v10 = v9;
    v11 = [[BrowseManager alloc] initWithCacheKey:v10];

    browseManager = v2->_browseManager;
    v2->_browseManager = v11;

    imageManager = [(BrowseManager *)v2->_browseManager imageManager];
    [imageManager setDesiredImageSize:{29.0, 29.0}];

    [(BrowseManager *)v2->_browseManager readCategoriesFromDiskIfNeeded];
    browseManager = [(CarSearchCategoriesModeController *)v2 browseManager];
    cachedCategories = [browseManager cachedCategories];
    [(CarSearchCategoriesModeController *)v2 _updateCategories:cachedCategories];
  }

  return v2;
}

- (_TtC4Maps37CarSearchCategoriesCardViewController)categoriesCard
{
  categoriesCard = self->_categoriesCard;
  if (!categoriesCard)
  {
    v4 = [_TtC4Maps37CarSearchCategoriesCardViewController alloc];
    categories = [(CarSearchCategoriesModeController *)self categories];
    v6 = [(CarSearchCategoriesCardViewController *)v4 initWithCategories:categories delegate:self];
    v7 = self->_categoriesCard;
    self->_categoriesCard = v6;

    categoriesCard = self->_categoriesCard;
  }

  return categoriesCard;
}

- (id)desiredCards
{
  v4 = @"primary";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (NSArray)preferredCarFocusEnvironments
{
  categoriesCard = [(CarSearchCategoriesModeController *)self categoriesCard];
  if (categoriesCard)
  {
    categoriesCard2 = [(CarSearchCategoriesModeController *)self categoriesCard];
    v5 = [CarFocusOrderEnvironment environmentWithFocusEnvironment:categoriesCard2];
    v8 = v5;
    v6 = [NSArray arrayWithObjects:&v8 count:1];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)_ppt_selectKeyboardMode
{
  v2 = +[CarChromeModeCoordinator sharedInstance];
  [v2 displayKeyboardSearchWithInteractionModel:1];
}

- (int)currentUsageTarget
{
  if ([(CarSearchCategoriesModeController *)self isNavigating])
  {
    return 1010;
  }

  else
  {
    return 1009;
  }
}

- (NSArray)carFocusOrderSequences
{
  chromeViewController = [(CarSearchCategoriesModeController *)self chromeViewController];
  itemRepresentingStatusBanner = [chromeViewController itemRepresentingStatusBanner];
  chromeViewController2 = [(CarSearchCategoriesModeController *)self chromeViewController];
  itemRepresentingOverlays = [chromeViewController2 itemRepresentingOverlays];
  v11[1] = itemRepresentingOverlays;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [CarFocusOrderSequence sequenceWithItems:v7 options:5];
  v12 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:1];

  return v9;
}

- (void)searchCategoriesCard:(id)card didSelectCategory:(id)category
{
  categoryCopy = category;
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = categoryCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "searchCategoriesCard:didSelectCategory: %@", &v13, 0xCu);
  }

  categories = [(CarSearchCategoriesModeController *)self categories];
  v8 = sub_100021DB0(categories, &stru_10164E0D0);

  chromeViewController = [(CarSearchCategoriesModeController *)self chromeViewController];
  category = [categoryCopy category];
  [chromeViewController captureUserActionSelectedSearchCategory:category categoriesDisplayed:v8];

  LODWORD(chromeViewController) = [(CarSearchCategoriesModeController *)self isNavigating];
  v11 = +[CarChromeModeCoordinator sharedInstance];
  v12 = v11;
  if (chromeViewController)
  {
    [v11 displaySearchAlongTheRouteForCategory:categoryCopy];
  }

  else
  {
    [v11 displaySearchResultsWithCategory:categoryCopy];
  }
}

- (void)searchCategoriesCardDidSelectKeyboardSearch:(id)search usingInteractionModel:(unint64_t)model
{
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    modelCopy = model;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "searchCategoriesCardDidSelectKeyboardSearch, showing keyboard usingIneractionModel: %ld", &v7, 0xCu);
  }

  v6 = +[CarChromeModeCoordinator sharedInstance];
  [v6 displayKeyboardSearchWithInteractionModel:model];
}

- (void)searchCategoriesCardDidSelectSiriSearch:(id)search usingInteractionModel:(unint64_t)model
{
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    modelCopy = model;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "searchCategoriesCardDidSelectSiriSearch, showing siri usingIneractionModel: %ld", &v7, 0xCu);
  }

  v6 = +[CarChromeModeCoordinator sharedInstance];
  [v6 displaySearchWithInteractionModel:model];
}

- (void)_updateCategories:(id)categories
{
  categoriesCopy = categories;
  categories = [(CarSearchCategoriesModeController *)self categories];
  v5 = [categoriesCopy isEqualToArray:categories];

  if ((v5 & 1) == 0)
  {
    [(CarSearchCategoriesModeController *)self setCategories:categoriesCopy];
    categoriesCard = [(CarSearchCategoriesModeController *)self categoriesCard];
    [categoriesCard setCategories:categoriesCopy];
  }
}

- (void)updateCardViewTitle
{
  chromeViewController = [(CarSearchCategoriesModeController *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"cards" animated:0];
}

- (void)checkFullTextSearchSupport
{
  objc_initWeak(&location, self);
  offlinePlaceholderQueue = self->_offlinePlaceholderQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C21278;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(offlinePlaceholderQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_offlineSettingDidChange
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v3 isUsingOfflineMaps];

  if (isUsingOfflineMaps)
  {

    [(CarSearchCategoriesModeController *)self checkFullTextSearchSupport];
  }

  else
  {
    if ([(CarSearchCategoriesModeController *)self _isMapsOffline])
    {
      supportsFullTextSearch = [(CarSearchCategoriesModeController *)self supportsFullTextSearch];
    }

    else
    {
      supportsFullTextSearch = 1;
    }

    categoriesCard = [(CarSearchCategoriesModeController *)self categoriesCard];
    [categoriesCard setShowSearchBar:supportsFullTextSearch];

    [(CarSearchCategoriesModeController *)self updateCardViewTitle];
  }
}

- (BOOL)_isMapsOffline
{
  v2 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v2 isUsingOfflineMaps];

  return isUsingOfflineMaps;
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  if (![key isEqualToString:@"primary"])
  {
    goto LABEL_32;
  }

  categoriesCard = [(CarSearchCategoriesModeController *)self categoriesCard];
  [cardCopy setContent:categoriesCard];

  v7 = +[MapsOfflineUIHelper sharedHelper];
  if (([v7 isUsingOfflineMaps] & 1) == 0)
  {

    goto LABEL_6;
  }

  categoriesCard2 = [(CarSearchCategoriesModeController *)self categoriesCard];
  showSearchBar = [categoriesCard2 showSearchBar];

  if (showSearchBar)
  {
LABEL_6:
    v10 = @"CarPlay_Search_Title";
    goto LABEL_7;
  }

  v10 = @"CarPlay_Search_Title_Browse_Mode";
LABEL_7:
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:v10 value:@"localized string not found" table:0];
  [cardCopy setTitle:v12];

  v13 = objc_alloc_init(CarCardLayout);
  [(CarCardLayout *)v13 setEdgePosition:0];
  [(CarCardLayout *)v13 setCornerPosition:4];
  [(CarCardLayout *)v13 setPrimaryAxis:1];
  [(CarCardLayout *)v13 setPinnedEdges:0];
  [(CarCardLayout *)v13 setPrimaryAxisFillMode:3];
  LODWORD(v14) = 1148846080;
  [(CarCardLayout *)v13 setPrimaryAxisFillModePriority:v14];
  [(CarCardLayout *)v13 setSecondaryAxisFillMode:2];
  LODWORD(v15) = 1148846080;
  [(CarCardLayout *)v13 setSecondaryAxisFillModePriority:v15];
  [(CarCardLayout *)v13 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
  [(CarCardLayout *)v13 setFlipForRightHandDrive:1];
  v16 = v13;
  primaryAxis = [(CarCardLayout *)v16 primaryAxis];
  cornerPosition = [(CarCardLayout *)v16 cornerPosition];
  if (primaryAxis == 1)
  {
    if (cornerPosition == 4 || [(CarCardLayout *)v16 cornerPosition]== 1 || [(CarCardLayout *)v16 edgePosition]== 2)
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    if ([(CarCardLayout *)v16 cornerPosition]== 8 || [(CarCardLayout *)v16 cornerPosition]== 2 || [(CarCardLayout *)v16 edgePosition]== 8)
    {
      v19 |= 2uLL;
    }

    if ([(CarCardLayout *)v16 edgePosition]== 1)
    {
      v19 |= 4uLL;
    }

    v20 = v19 | ([(CarCardLayout *)v16 edgePosition]== 4);
  }

  else
  {
    v20 = cornerPosition == 4 || [(CarCardLayout *)v16 cornerPosition]== 8 || [(CarCardLayout *)v16 edgePosition]== 4;
    if ([(CarCardLayout *)v16 cornerPosition]== 1 || [(CarCardLayout *)v16 cornerPosition]== 2 || [(CarCardLayout *)v16 edgePosition]== 1)
    {
      v20 |= 4uLL;
    }

    if ([(CarCardLayout *)v16 edgePosition]== 2)
    {
      v20 |= 8uLL;
    }

    if ([(CarCardLayout *)v16 edgePosition]== 8)
    {
      v20 |= 2uLL;
    }
  }

  [(CarCardLayout *)v16 setEdgesAffectingMapInsets:v20];
  [(CarCardLayout *)v16 setHorizontallyCenterMapInsets:0];
  [cardCopy setLayout:v16];

  [cardCopy setAccessoryType:1];
LABEL_32:
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C218AC;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C21980;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (id)mapView
{
  chromeViewController = [(CarSearchCategoriesModeController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

+ (void)prepareNearbySAR
{
  v4 = [[BrowseManager alloc] initWithCacheKey:@"Stark-SAR"];
  imageManager = [(BrowseManager *)v4 imageManager];
  [imageManager setDesiredImageSize:{29.0, 29.0}];

  v3 = [objc_opt_class() _traitsForNavigation:1];
  [(BrowseManager *)v4 preCacheWithTraits:v3];
}

+ (void)prepareNearby
{
  v4 = [[BrowseManager alloc] initWithCacheKey:@"Stark"];
  imageManager = [(BrowseManager *)v4 imageManager];
  [imageManager setDesiredImageSize:{29.0, 29.0}];

  v3 = [objc_opt_class() _traitsForNavigation:0];
  [(BrowseManager *)v4 preCacheWithTraits:v3];
}

+ (id)_traitsForNavigation:(BOOL)navigation
{
  navigationCopy = navigation;
  v4 = +[CarDisplayController sharedInstance];
  chromeViewController = [v4 chromeViewController];
  currentTraits = [chromeViewController currentTraits];

  [currentTraits setNavigating:navigationCopy];
  if ([currentTraits navigating])
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 BOOLForKey:@"EnableCarSARCategoryWorkaround"];

    if (v8)
    {
      [currentTraits setMapRegion:0];
      [currentTraits setHasCarHeadunitInteractionModel:0];
      [currentTraits setCarHeadunitModel:0];
      [currentTraits setHasCarHeadunitPixelWidth:0];
      [currentTraits setHasCarHeadunitPixelHeight:0];
      [currentTraits setCarHeadunitManufacturer:0];
      [currentTraits setHasCarHeadunitConnectionType:0];
    }
  }

  return currentTraits;
}

@end