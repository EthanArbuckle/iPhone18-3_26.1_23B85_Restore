@interface CarSearchCategoriesModeController
+ (id)_traitsForNavigation:(BOOL)a3;
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
- (void)_updateCategories:(id)a3;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)checkFullTextSearchSupport;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)searchCategoriesCard:(id)a3 didSelectCategory:(id)a4;
- (void)searchCategoriesCardDidSelectKeyboardSearch:(id)a3 usingInteractionModel:(unint64_t)a4;
- (void)searchCategoriesCardDidSelectSiriSearch:(id)a3 usingInteractionModel:(unint64_t)a4;
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
    v8 = [(CarSearchCategoriesModeController *)v2 isNavigating];
    v9 = @"Stark";
    if (v8)
    {
      v9 = @"Stark-SAR";
    }

    v10 = v9;
    v11 = [[BrowseManager alloc] initWithCacheKey:v10];

    browseManager = v2->_browseManager;
    v2->_browseManager = v11;

    v13 = [(BrowseManager *)v2->_browseManager imageManager];
    [v13 setDesiredImageSize:{29.0, 29.0}];

    [(BrowseManager *)v2->_browseManager readCategoriesFromDiskIfNeeded];
    v14 = [(CarSearchCategoriesModeController *)v2 browseManager];
    v15 = [v14 cachedCategories];
    [(CarSearchCategoriesModeController *)v2 _updateCategories:v15];
  }

  return v2;
}

- (_TtC4Maps37CarSearchCategoriesCardViewController)categoriesCard
{
  categoriesCard = self->_categoriesCard;
  if (!categoriesCard)
  {
    v4 = [_TtC4Maps37CarSearchCategoriesCardViewController alloc];
    v5 = [(CarSearchCategoriesModeController *)self categories];
    v6 = [(CarSearchCategoriesCardViewController *)v4 initWithCategories:v5 delegate:self];
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
  v3 = [(CarSearchCategoriesModeController *)self categoriesCard];
  if (v3)
  {
    v4 = [(CarSearchCategoriesModeController *)self categoriesCard];
    v5 = [CarFocusOrderEnvironment environmentWithFocusEnvironment:v4];
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
  v3 = [(CarSearchCategoriesModeController *)self chromeViewController];
  v4 = [v3 itemRepresentingStatusBanner];
  v5 = [(CarSearchCategoriesModeController *)self chromeViewController];
  v6 = [v5 itemRepresentingOverlays];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [CarFocusOrderSequence sequenceWithItems:v7 options:5];
  v12 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:1];

  return v9;
}

- (void)searchCategoriesCard:(id)a3 didSelectCategory:(id)a4
{
  v5 = a4;
  v6 = sub_100006E1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "searchCategoriesCard:didSelectCategory: %@", &v13, 0xCu);
  }

  v7 = [(CarSearchCategoriesModeController *)self categories];
  v8 = sub_100021DB0(v7, &stru_10164E0D0);

  v9 = [(CarSearchCategoriesModeController *)self chromeViewController];
  v10 = [v5 category];
  [v9 captureUserActionSelectedSearchCategory:v10 categoriesDisplayed:v8];

  LODWORD(v9) = [(CarSearchCategoriesModeController *)self isNavigating];
  v11 = +[CarChromeModeCoordinator sharedInstance];
  v12 = v11;
  if (v9)
  {
    [v11 displaySearchAlongTheRouteForCategory:v5];
  }

  else
  {
    [v11 displaySearchResultsWithCategory:v5];
  }
}

- (void)searchCategoriesCardDidSelectKeyboardSearch:(id)a3 usingInteractionModel:(unint64_t)a4
{
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "searchCategoriesCardDidSelectKeyboardSearch, showing keyboard usingIneractionModel: %ld", &v7, 0xCu);
  }

  v6 = +[CarChromeModeCoordinator sharedInstance];
  [v6 displayKeyboardSearchWithInteractionModel:a4];
}

- (void)searchCategoriesCardDidSelectSiriSearch:(id)a3 usingInteractionModel:(unint64_t)a4
{
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "searchCategoriesCardDidSelectSiriSearch, showing siri usingIneractionModel: %ld", &v7, 0xCu);
  }

  v6 = +[CarChromeModeCoordinator sharedInstance];
  [v6 displaySearchWithInteractionModel:a4];
}

- (void)_updateCategories:(id)a3
{
  v7 = a3;
  v4 = [(CarSearchCategoriesModeController *)self categories];
  v5 = [v7 isEqualToArray:v4];

  if ((v5 & 1) == 0)
  {
    [(CarSearchCategoriesModeController *)self setCategories:v7];
    v6 = [(CarSearchCategoriesModeController *)self categoriesCard];
    [v6 setCategories:v7];
  }
}

- (void)updateCardViewTitle
{
  v2 = [(CarSearchCategoriesModeController *)self chromeViewController];
  [v2 setNeedsUpdateComponent:@"cards" animated:0];
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
  v4 = [v3 isUsingOfflineMaps];

  if (v4)
  {

    [(CarSearchCategoriesModeController *)self checkFullTextSearchSupport];
  }

  else
  {
    if ([(CarSearchCategoriesModeController *)self _isMapsOffline])
    {
      v5 = [(CarSearchCategoriesModeController *)self supportsFullTextSearch];
    }

    else
    {
      v5 = 1;
    }

    v6 = [(CarSearchCategoriesModeController *)self categoriesCard];
    [v6 setShowSearchBar:v5];

    [(CarSearchCategoriesModeController *)self updateCardViewTitle];
  }
}

- (BOOL)_isMapsOffline
{
  v2 = +[MapsOfflineUIHelper sharedHelper];
  v3 = [v2 isUsingOfflineMaps];

  return v3;
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v21 = a3;
  if (![a4 isEqualToString:@"primary"])
  {
    goto LABEL_32;
  }

  v6 = [(CarSearchCategoriesModeController *)self categoriesCard];
  [v21 setContent:v6];

  v7 = +[MapsOfflineUIHelper sharedHelper];
  if (([v7 isUsingOfflineMaps] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = [(CarSearchCategoriesModeController *)self categoriesCard];
  v9 = [v8 showSearchBar];

  if (v9)
  {
LABEL_6:
    v10 = @"CarPlay_Search_Title";
    goto LABEL_7;
  }

  v10 = @"CarPlay_Search_Title_Browse_Mode";
LABEL_7:
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:v10 value:@"localized string not found" table:0];
  [v21 setTitle:v12];

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
  v17 = [(CarCardLayout *)v16 primaryAxis];
  v18 = [(CarCardLayout *)v16 cornerPosition];
  if (v17 == 1)
  {
    if (v18 == 4 || [(CarCardLayout *)v16 cornerPosition]== 1 || [(CarCardLayout *)v16 edgePosition]== 2)
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
    v20 = v18 == 4 || [(CarCardLayout *)v16 cornerPosition]== 8 || [(CarCardLayout *)v16 edgePosition]== 4;
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
  [v21 setLayout:v16];

  [v21 setAccessoryType:1];
LABEL_32:
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C218AC;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C21980;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [a4 addPreparation:v4];
}

- (id)mapView
{
  v2 = [(CarSearchCategoriesModeController *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

+ (void)prepareNearbySAR
{
  v4 = [[BrowseManager alloc] initWithCacheKey:@"Stark-SAR"];
  v2 = [(BrowseManager *)v4 imageManager];
  [v2 setDesiredImageSize:{29.0, 29.0}];

  v3 = [objc_opt_class() _traitsForNavigation:1];
  [(BrowseManager *)v4 preCacheWithTraits:v3];
}

+ (void)prepareNearby
{
  v4 = [[BrowseManager alloc] initWithCacheKey:@"Stark"];
  v2 = [(BrowseManager *)v4 imageManager];
  [v2 setDesiredImageSize:{29.0, 29.0}];

  v3 = [objc_opt_class() _traitsForNavigation:0];
  [(BrowseManager *)v4 preCacheWithTraits:v3];
}

+ (id)_traitsForNavigation:(BOOL)a3
{
  v3 = a3;
  v4 = +[CarDisplayController sharedInstance];
  v5 = [v4 chromeViewController];
  v6 = [v5 currentTraits];

  [v6 setNavigating:v3];
  if ([v6 navigating])
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 BOOLForKey:@"EnableCarSARCategoryWorkaround"];

    if (v8)
    {
      [v6 setMapRegion:0];
      [v6 setHasCarHeadunitInteractionModel:0];
      [v6 setCarHeadunitModel:0];
      [v6 setHasCarHeadunitPixelWidth:0];
      [v6 setHasCarHeadunitPixelHeight:0];
      [v6 setCarHeadunitManufacturer:0];
      [v6 setHasCarHeadunitConnectionType:0];
    }
  }

  return v6;
}

@end