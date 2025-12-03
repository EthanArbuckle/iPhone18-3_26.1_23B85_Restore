@interface TPSMainViewController
- (BOOL)_isAppContentLoaded;
- (BOOL)canDisplayColumn:(int64_t)column;
- (BOOL)handleContinueCoreSpotlightSearchActivity:(id)activity;
- (BOOL)handleCoreSpotlightItemActivity:(id)activity;
- (BOOL)handleSearchWithSearchQuery:(id)query;
- (BOOL)handleUniversalLinkWithUserActivity:(id)activity;
- (BOOL)handleUserActivity:(id)activity;
- (BOOL)isCollectionsViewVisible;
- (BOOL)openURL:(id)l;
- (BOOL)tipsViewControllerShouldShowSearch:(id)search;
- (BOOL)tipsViewControllerShouldStartVideo:(id)video;
- (TPSLastDisplayedContent)lastDisplayedContent;
- (TPSMainViewController)init;
- (id)childViewControllerForStatusBarStyle;
- (id)tipsByCollectionViewController:(id)controller tipsForCollectionID:(id)d;
- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column;
- (void)appController:(id)controller loadingContent:(BOOL)content;
- (void)appControllerContentUpdated:(id)updated;
- (void)appControllerTipViewed:(id)viewed tipIdentifier:(id)identifier collectionIdentifier:(id)collectionIdentifier;
- (void)appControllerUserUpdatedSavedTips:(id)tips;
- (void)appViewControllerViewWillAppear:(id)appear;
- (void)applicationDidBecomeActive;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)applicationWillTerminate;
- (void)displayCollectionID:(id)d tipID:(id)iD preferredColumn:(int64_t)column;
- (void)displaySupportFlowWithIdentifier:(id)identifier;
- (void)displayUserGuideWithIdentifier:(id)identifier topicId:(id)id version:(id)version platformIndependent:(BOOL)independent prefersLandingPage:(BOOL)page referrer:(id)referrer;
- (void)handleSearchFocus;
- (void)handleSupportFlowDeeplink:(id)deeplink;
- (void)handleTipsURL:(id)l;
- (void)helpViewControllerContentViewed:(id)viewed topicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(int64_t)style fromTopicID:(id)iD externalURLString:(id)string;
- (void)helpViewControllerDoneButtonTapped:(id)tapped;
- (void)helpViewControllerSearchUsed:(id)used;
- (void)helpViewControllerTOCUsed:(id)used;
- (void)logAnalyticsEventForAppForeground;
- (void)logAnalyticsEventForChecklistSession;
- (void)presentURL:(id)l isModalInPresentation:(BOOL)presentation;
- (void)resyncTipList;
- (void)setupCollectionListView;
- (void)setupSplitView;
- (void)setupTipListView;
- (void)setupTipsByCollectionView;
- (void)showCollectionWithIdentifier:(id)identifier launchType:(id)type;
- (void)showCollectionsView;
- (void)showModalTipWithVariantID:(id)d;
- (void)showTOCView;
- (void)showTipWithID:(id)d launchType:(id)type;
- (void)showTipsView;
- (void)splitViewController:(id)controller didHideColumn:(int64_t)column;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)splitViewController:(id)controller willShowColumn:(int64_t)column;
- (void)tipsViewController:(id)controller didSelectSearchResult:(id)result;
- (void)tipsViewControllerContentUpdated:(id)updated;
- (void)tipsViewControllerCurrentTipUpdated:(id)updated;
- (void)tipsViewControllerHandleSupportArticleURL:(id)l;
- (void)updateAppShortcutSuggestions;
- (void)updateCollectionListModelDynamicSections;
- (void)updateShortcutItems;
- (void)updateShouldHoldOffVideo;
- (void)updateSupplementaryColumnForCollectionID:(id)d;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TPSMainViewController

- (TPSMainViewController)init
{
  v13.receiver = self;
  v13.super_class = TPSMainViewController;
  v2 = [(TPSViewController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentCollapsedDisplayColumn = 0;
    v4 = +[TPSURLSessionHandler sharedInstance];
    v5 = +[TPSURLSessionManager defaultManager];
    [v5 setDelegate:v4];

    v6 = +[TPSURLSessionManager defaultManager];
    [v6 setDefaultSessionDelegate:v4];

    if (+[TPSCommonDefines isInternalDevice])
    {
      v7 = +[TPSURLSessionACAuthContext defaultContext];
      v8 = [[TPSURLSessionACAuthHandler alloc] initWithAuthenticationContext:v7];
      v9 = +[TPSURLSessionManager defaultManager];
      [v9 setAuthenticationHandler:v8];
    }

    v10 = +[TPSUIAppController sharedInstance];
    appController = v3->_appController;
    v3->_appController = v10;

    [(TPSUIAppController *)v3->_appController addDelegate:v3];
  }

  return v3;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = TPSMainViewController;
  [(TPSViewController *)&v6 viewDidLoad];
  [(TPSMainViewController *)self setupCollectionListView];
  [(TPSMainViewController *)self setupTipListView];
  [(TPSMainViewController *)self setupTipsByCollectionView];
  [(TPSMainViewController *)self setupSplitView];
  lastDisplayedContent = [(TPSMainViewController *)self lastDisplayedContent];
  hasContent = [lastDisplayedContent hasContent];

  if ((hasContent & 1) == 0)
  {
    [(TPSMainViewController *)self showCollectionsView];
  }

  appController = [(TPSMainViewController *)self appController];
  [appController updateContent];
}

- (id)childViewControllerForStatusBarStyle
{
  if (+[TPSCommonDefines isPhoneUI])
  {
    splitViewController = [(TPSMainViewController *)self splitViewController];
  }

  else
  {
    splitViewController = 0;
  }

  return splitViewController;
}

- (void)setupCollectionListView
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(CollectionListViewModel);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100013FF0;
  v16[3] = &unk_1000A30E0;
  objc_copyWeak(&v17, &location);
  v16[4] = self;
  [(CollectionListViewModel *)v3 setActionHandler:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000140A8;
  v14[3] = &unk_1000A3108;
  objc_copyWeak(&v15, &location);
  [(CollectionListViewModel *)v3 setChecklistHandler:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100014160;
  v12[3] = &unk_1000A3130;
  objc_copyWeak(&v13, &location);
  [(CollectionListViewModel *)v3 setUserGuideHandler:v12];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100014214;
  v10 = &unk_1000A3158;
  objc_copyWeak(&v11, &location);
  [(CollectionListViewModel *)v3 setSupportFlowHandler:&v7];
  v4 = [CollectionListViewController alloc];
  v5 = [(CollectionListViewController *)v4 initWithViewModel:v3, v7, v8, v9, v10];
  [(TPSAppViewController *)v5 setViewCycleDelegate:self];
  v6 = +[CollectionListViewController defaultNavigationTitle];
  [(CollectionListViewController *)v5 setTitle:v6];

  [(TPSMainViewController *)self setCollectionListViewController:v5];
  [(TPSMainViewController *)self setupSearchResultSelectedHandler];
  [(TPSMainViewController *)self setupSearchResultSupportArticleURLHandler];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

- (void)setupTipListView
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(objc_loadClassref());
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001438C;
  v5[3] = &unk_1000A3180;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v3 setTipActionHandler:v5];
  v4 = [[TipListViewController alloc] initWithViewModel:v3];
  [(TPSAppViewController *)v4 setViewCycleDelegate:self];
  [(TPSMainViewController *)self setTipListViewController:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)setupTipsByCollectionView
{
  v3 = [TPSTipsByCollectionViewController alloc];
  appController = [(TPSMainViewController *)self appController];
  v5 = [(TPSAppViewController *)v3 initWithAppController:appController];
  [(TPSMainViewController *)self setTipsByCollectionViewController:v5];

  tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
  [tipsByCollectionViewController setDelegate:self];

  tipsByCollectionViewController2 = [(TPSMainViewController *)self tipsByCollectionViewController];
  [tipsByCollectionViewController2 setContentDelegate:self];

  tipsByCollectionViewController3 = [(TPSMainViewController *)self tipsByCollectionViewController];
  [tipsByCollectionViewController3 setViewCycleDelegate:self];
}

- (void)setupSplitView
{
  [(TPSMainViewController *)self updateViewCollapsed:+[TPSCommonDefines isPhoneUI]];
  v23 = [[_TtC4Tips22TPSSplitViewController alloc] initWithStyle:2];
  [(TPSSplitViewController *)v23 setDelegate:self];
  [(TPSSplitViewController *)v23 setPreferredSupplementaryColumnWidth:400.0];
  [(TPSSplitViewController *)v23 setPreferredSplitBehavior:0];
  collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
  [(TPSSplitViewController *)v23 setViewController:collectionListViewController forColumn:0];

  tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
  [(TPSSplitViewController *)v23 setViewController:tipsByCollectionViewController forColumn:2];

  [(TPSMainViewController *)self setSplitViewController:v23];
  view = [(TPSSplitViewController *)v23 view];
  [(TPSMainViewController *)self addChildViewController:v23];
  view2 = [(TPSMainViewController *)self view];
  [view2 addSubview:view];

  [view setHidden:1];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [view leadingAnchor];
  view3 = [(TPSMainViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v10 setActive:1];

  trailingAnchor = [view trailingAnchor];
  view4 = [(TPSMainViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v14 setActive:1];

  topAnchor = [view topAnchor];
  view5 = [(TPSMainViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v18 setActive:1];

  bottomAnchor = [view bottomAnchor];
  view6 = [(TPSMainViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v22 setActive:1];

  [(TPSSplitViewController *)v23 didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = TPSMainViewController;
  [(TPSMainViewController *)&v18 viewDidLayoutSubviews];
  currentDisplayMode = [(TPSMainViewController *)self currentDisplayMode];
  if ((+[TPSCommonDefines isPhoneUI]& 1) != 0)
  {
    isCollapsed = 1;
  }

  else
  {
    splitViewController = [(TPSMainViewController *)self splitViewController];
    isCollapsed = [splitViewController isCollapsed];
  }

  appController = [(TPSMainViewController *)self appController];
  viewNavigationCollapsed = [appController viewNavigationCollapsed];

  if (isCollapsed != viewNavigationCollapsed)
  {
    [(TPSMainViewController *)self updateViewCollapsed:isCollapsed];
    [(TPSMainViewController *)self updateCollectionListModelDynamicSections];
  }

  tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
  allowPaging = [tipsByCollectionViewController allowPaging];

  if (currentDisplayMode > 6)
  {
    v10 = 1;
  }

  else
  {
    v10 = isCollapsed;
  }

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0x2Bu >> currentDisplayMode;
  }

  tipsByCollectionViewController2 = [(TPSMainViewController *)self tipsByCollectionViewController];
  v13 = v11 & 1;
  [tipsByCollectionViewController2 setAllowPaging:v13];

  if (allowPaging != v13)
  {
    collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
    viewModel = [collectionListViewController viewModel];

    checklistViewModel = [viewModel checklistViewModel];
    [checklistViewModel setCurrentDisplayTips:0];
    tipsByCollectionViewController3 = [(TPSMainViewController *)self tipsByCollectionViewController];
    [tipsByCollectionViewController3 setPendingReload:1];
  }
}

- (TPSLastDisplayedContent)lastDisplayedContent
{
  lastDisplayedContent = self->_lastDisplayedContent;
  if (!lastDisplayedContent)
  {
    v4 = [TPSSecureArchivingUtilities unarchivedObjectOfClass:objc_opt_class() forKey:@"TPSAppLastDisplayedContent"];
    v5 = self->_lastDisplayedContent;
    self->_lastDisplayedContent = v4;

    lastDisplayedContent = self->_lastDisplayedContent;
    if (!lastDisplayedContent)
    {
      v6 = objc_alloc_init(TPSLastDisplayedContent);
      v7 = self->_lastDisplayedContent;
      self->_lastDisplayedContent = v6;

      lastDisplayedContent = self->_lastDisplayedContent;
    }
  }

  return lastDisplayedContent;
}

- (void)showCollectionWithIdentifier:(id)identifier launchType:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  v8 = +[TPSLogger default];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = identifierCopy;
    v51 = 2112;
    v52 = typeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updateLaunchInfoWithIdentifier %@, launch type %@", buf, 0x16u);
  }

  [(TPSMainViewController *)self dismissViewControllerAnimated:1 completion:0];
  collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
  navigationController = [collectionListViewController navigationController];
  [navigationController dismissViewControllerAnimated:0 completion:0];

  stringByRemovingPercentEncoding = [identifierCopy stringByRemovingPercentEncoding];

  v42 = stringByRemovingPercentEncoding;
  v12 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"#"];
  firstObject = [v12 firstObject];
  lastObject = 0;
  if ([v12 count] == 2)
  {
    lastObject = [v12 lastObject];
  }

  if ([firstObject length])
  {
    appController = [(TPSMainViewController *)self appController];
    [appController removeNotificationForIdentifier:firstObject];
  }

  if ([lastObject length])
  {
    appController2 = [(TPSMainViewController *)self appController];
    [appController2 removeNotificationForIdentifier:lastObject];
  }

  appController3 = [(TPSMainViewController *)self appController];
  v18 = [appController3 tipForIdentifier:firstObject includingCorrelation:1];

  if (v18)
  {
    identifier = [v18 identifier];

    firstObject = identifier;
  }

  v20 = TPSAnalyticsLaunchTypeNotification;
  v21 = [typeCopy isEqualToString:TPSAnalyticsLaunchTypeNotification];
  if (([typeCopy isEqualToString:TPSAnalyticsLaunchTypeWidget] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", v20))
  {
    v21 = v18 == 0;
  }

  correlationID = [v18 correlationID];
  v23 = [TPSAnalyticsEventAppLaunched eventWithContentID:firstObject collectionID:lastObject correlationID:correlationID launchType:typeCopy];

  if (v18)
  {
    [v23 log];
    if (!v21)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  [(TPSMainViewController *)self setPendingAppLaunchEvent:v23];
  if (v21)
  {
LABEL_16:
    appController4 = [(TPSMainViewController *)self appController];
    [appController4 updateContent];
  }

LABEL_17:
  appController5 = [(TPSMainViewController *)self appController];
  contentHasLoaded = [appController5 contentHasLoaded];

  appController6 = [(TPSMainViewController *)self appController];
  updatingContent = [appController6 updatingContent];

  if (updatingContent)
  {
    if (!contentHasLoaded)
    {
      goto LABEL_25;
    }

    if ([lastObject length])
    {
      appController7 = [(TPSMainViewController *)self appController];
      v30 = [appController7 collectionForIdentifier:lastObject];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    if ([firstObject length])
    {
      pendingShowTipIdentifier = [(TPSMainViewController *)self appController];
      v32 = [pendingShowTipIdentifier tipForIdentifier:firstObject];
      if (v32)
      {

LABEL_26:
        goto LABEL_27;
      }

      appController8 = [(TPSMainViewController *)self appController];
      v41 = [appController8 tipForCorrelationIdentifier:firstObject];

      if (v41)
      {
        goto LABEL_27;
      }

LABEL_25:
      v33 = v42;
      pendingShowTipIdentifier = self->_pendingShowTipIdentifier;
      self->_pendingShowTipIdentifier = v33;
      goto LABEL_26;
    }
  }

  else if ((contentHasLoaded & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  if ([firstObject length] || objc_msgSend(lastObject, "length"))
  {
    if ([firstObject length])
    {
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    appController9 = [(TPSMainViewController *)self appController];
    v36 = appController9;
    if (lastObject)
    {
      v37 = lastObject;
    }

    else
    {
      v37 = firstObject;
    }

    v38 = [appController9 collectionForIdentifier:v37];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014F18;
    block[3] = &unk_1000A31A8;
    v44 = v38;
    selfCopy = self;
    v46 = lastObject;
    v47 = firstObject;
    v48 = v34;
    v39 = v38;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  splitViewController = [(TPSMainViewController *)self splitViewController];
  isCollapsed = [splitViewController isCollapsed];

  if (!isCollapsed)
  {
    splitViewController2 = [(TPSMainViewController *)self splitViewController];
    isCollapsed2 = [splitViewController2 isCollapsed];

    if (!isCollapsed2)
    {
      goto LABEL_15;
    }

    splitViewController3 = [(TPSMainViewController *)self splitViewController];
    displayMode = [splitViewController3 displayMode];

    if ([(TPSMainViewController *)self isCollectionsViewVisible])
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_16;
    }

    if (displayMode != 3)
    {
      tipListViewController = [(TPSMainViewController *)self tipListViewController];
      viewModel = [tipListViewController viewModel];
      if (([viewModel viewCollapsed] & 1) == 0)
      {
LABEL_6:

        goto LABEL_7;
      }

      tipListViewController2 = [(TPSMainViewController *)self tipListViewController];
      view = [tipListViewController2 view];
      window = [view window];

      if (!window)
      {
        goto LABEL_15;
      }
    }

    v24 = 0;
    v25 = 1;
    goto LABEL_16;
  }

  collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
  tipListViewController = [collectionListViewController viewModel];

  selectedItemID = [tipListViewController selectedItemID];

  if (!selectedItemID)
  {
    appController = [(TPSMainViewController *)self appController];
    viewModel = [appController featuredCollection];

    if (!viewModel)
    {
      appController2 = [(TPSMainViewController *)self appController];
      collectionSections = [appController2 collectionSections];
      firstObject = [collectionSections firstObject];

      collections = [firstObject collections];
      viewModel = [collections firstObject];
    }

    identifier = [viewModel identifier];
    [tipListViewController setSelectedItemID:identifier];

    goto LABEL_6;
  }

LABEL_7:

LABEL_15:
  v24 = 1;
  v25 = 2;
LABEL_16:
  v30.receiver = self;
  v30.super_class = TPSMainViewController;
  [(TPSMainViewController *)&v30 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if ((v24 & 1) == 0)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100015270;
    v29[3] = &unk_1000A31D0;
    v29[4] = self;
    v29[5] = v25;
    [coordinatorCopy animateAlongsideTransition:v29 completion:0];
  }
}

- (void)updateCollectionListModelDynamicSections
{
  collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
  viewModel = [collectionListViewController viewModel];

  appController = [(TPSMainViewController *)self appController];
  featuredCollection = [appController featuredCollection];
  collectionSections = [appController collectionSections];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [collectionSections count]);
  if ([viewModel viewCollapsed])
  {
    v23 = appController;
    v24 = viewModel;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = collectionSections;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = v10;
    v12 = *v26;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        collections = [v14 collections];
        v16 = [collections containsObject:featuredCollection];

        if (v16)
        {
          collections2 = [v14 collections];
          v18 = [collections2 count];

          if (v18 < 2)
          {
            goto LABEL_12;
          }

          v19 = [v14 copy];

          v29 = featuredCollection;
          v20 = [NSArray arrayWithObjects:&v29 count:1];
          [v19 removeCollections:v20];

          v14 = v19;
        }

        if (!v14)
        {
          continue;
        }

        [v8 addObject:v14];
LABEL_12:
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (!v11)
      {
LABEL_15:

        v21 = featuredCollection;
        appController = v23;
        viewModel = v24;
        goto LABEL_17;
      }
    }
  }

  [v8 addObjectsFromArray:collectionSections];
  v21 = 0;
LABEL_17:
  [viewModel setFeaturedCollection:v21];
  if ([v8 count])
  {
    v22 = [v8 copy];
    [viewModel setCollectionSections:v22];
  }

  else
  {
    [viewModel setCollectionSections:&__NSArray0__struct];
  }
}

- (void)appController:(id)controller loadingContent:(BOOL)content
{
  contentCopy = content;
  controllerCopy = controller;
  collections = [controllerCopy collections];
  if ([collections count])
  {
    v8 = 0;
  }

  else
  {
    featuredCollection = [controllerCopy featuredCollection];
    v8 = featuredCollection == 0;
  }

  if (contentCopy)
  {
    [(TPSViewController *)self removeErrorView];
    tipListViewController = [(TPSMainViewController *)self tipListViewController];
    [tipListViewController removeErrorView];

    if (v8)
    {
      [(TPSViewController *)self setLoading:1];
      tipListViewController2 = [(TPSMainViewController *)self tipListViewController];
      [tipListViewController2 setLoading:1];
    }

    goto LABEL_32;
  }

  [(TPSViewController *)self setLoading:0];
  tipListViewController3 = [(TPSMainViewController *)self tipListViewController];
  [tipListViewController3 setLoading:0];

  pendingShowTipIdentifier = self->_pendingShowTipIdentifier;
  if (pendingShowTipIdentifier)
  {
    v14 = [(NSString *)pendingShowTipIdentifier componentsSeparatedByString:@"#"];
    if ([v14 count] == 1)
    {
      lastObject = [v14 lastObject];
      lastObject2 = 0;
    }

    else if ([v14 count] == 2)
    {
      lastObject = [v14 firstObject];
      lastObject2 = [v14 lastObject];
    }

    else
    {
      lastObject2 = 0;
      lastObject = 0;
    }

    v18 = 1;
    if ([lastObject length])
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    [(TPSMainViewController *)self displayCollectionID:lastObject2 tipID:lastObject preferredColumn:v19];
  }

  else
  {
    pendingOpenUniversalURL = self->_pendingOpenUniversalURL;
    if (self->_pendingAppSearchQuery)
    {
      v18 = pendingOpenUniversalURL != 0;
      [(TPSMainViewController *)self handleSearchWithSearchQuery:?];
    }

    else if (pendingOpenUniversalURL)
    {
      objc_initWeak(&location, self);
      v43 = +[UIApplication sharedApplication];
      v44 = self->_pendingOpenUniversalURL;
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100015A7C;
      v48[3] = &unk_1000A2F20;
      objc_copyWeak(&v49, &location);
      [v43 openURL:v44 options:&__NSDictionary0__struct completionHandler:v48];

      objc_destroyWeak(&v49);
      objc_destroyWeak(&location);
      v18 = 1;
    }

    else
    {
      if (self->_pendingSharedTipVariantID)
      {
        appController = [(TPSMainViewController *)self appController];
        v46 = [appController tipForVariantIdentifier:self->_pendingSharedTipVariantID];

        if (v46)
        {
          identifier = [v46 identifier];
          [(TPSMainViewController *)self showCollectionWithIdentifier:identifier launchType:TPSAnalyticsLaunchTypeSharedTipLocal];
        }

        else
        {
          [(TPSMainViewController *)self showModalTipWithVariantID:self->_pendingSharedTipVariantID];
        }
      }

      v18 = 0;
    }
  }

  collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
  viewModel = [collectionListViewController viewModel];

  currentCollectionID = [viewModel currentCollectionID];
  v23 = currentCollectionID;
  if (!currentCollectionID && !v18)
  {
    appController2 = [(TPSMainViewController *)self appController];
    viewNavigationCollapsed = [appController2 viewNavigationCollapsed];

    if (viewNavigationCollapsed)
    {
      goto LABEL_28;
    }

LABEL_24:
    tipListViewController4 = [(TPSMainViewController *)self tipListViewController];
    viewModel2 = [tipListViewController4 viewModel];
    collection = [viewModel2 collection];
    v29 = collection;
    if (collection)
    {
      firstObject = collection;
    }

    else
    {
      appController3 = [(TPSMainViewController *)self appController];
      collections2 = [appController3 collections];
      firstObject = [collections2 firstObject];
    }

    identifier2 = [firstObject identifier];
    [viewModel setCurrentCollectionID:identifier2];

    goto LABEL_28;
  }

  if (!v23)
  {
    goto LABEL_24;
  }

LABEL_28:
  if (v8)
  {
    appController4 = [(TPSMainViewController *)self appController];
    lastFetchError = [appController4 lastFetchError];
    [(TPSViewController *)self showErrorView:lastFetchError];
  }

  else
  {
    splitViewController = [(TPSMainViewController *)self splitViewController];
    view = [splitViewController view];
    [view setHidden:0];

    appController4 = self->_pendingShowTipIdentifier;
    self->_pendingShowTipIdentifier = 0;
  }

  v38 = self->_pendingOpenUniversalURL;
  self->_pendingOpenUniversalURL = 0;

  pendingAppSearchQuery = self->_pendingAppSearchQuery;
  self->_pendingAppSearchQuery = 0;

  pendingSharedTipVariantID = self->_pendingSharedTipVariantID;
  self->_pendingSharedTipVariantID = 0;

  v41 = +[UIApplication sharedApplication];
  _launchTestName = [UIApp _launchTestName];
  [v41 finishedTest:_launchTestName];

LABEL_32:
}

- (void)appControllerContentUpdated:(id)updated
{
  updatedCopy = updated;
  collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
  viewModel = [collectionListViewController viewModel];

  splitViewController = [(TPSMainViewController *)self splitViewController];
  isCollapsed = [splitViewController isCollapsed];

  collections = [viewModel collections];
  v9 = [collections count] == 0;

  collections2 = [updatedCopy collections];
  collections3 = [viewModel collections];

  if (collections2 != collections3)
  {
    collectionListViewController2 = [(TPSMainViewController *)self collectionListViewController];
    [collectionListViewController2 analyticsIncreaseCountViewForCollectionsViewDelay:TPSAnalyticsViewMethodSpringboardLaunch];
  }

  if ([collections2 count])
  {
    v13 = collections2;
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  [viewModel setCollections:v13];
  checklistCollection = [updatedCopy checklistCollection];
  [viewModel setChecklistCollection:checklistCollection];

  savedTipsCollection = [updatedCopy savedTipsCollection];
  [viewModel setSavedTipsCollection:savedTipsCollection];

  userGuides = [updatedCopy userGuides];
  [viewModel setUserGuides:userGuides];

  [(TPSMainViewController *)self updateCollectionListModelDynamicSections];
  appController = [(TPSMainViewController *)self appController];
  if ([appController updatingContent])
  {
    goto LABEL_7;
  }

  appController2 = [(TPSMainViewController *)self appController];
  contentHasLoaded = [appController2 contentHasLoaded];

  if (contentHasLoaded)
  {
    if (self->_pendingAppLaunchEvent)
    {
      appController3 = [(TPSMainViewController *)self appController];
      contentID = [(TPSAnalyticsEventAppLaunched *)self->_pendingAppLaunchEvent contentID];
      v22 = [appController3 tipForIdentifier:contentID includingCorrelation:1];

      correlationID = [v22 correlationID];
      [(TPSAnalyticsEventAppLaunched *)self->_pendingAppLaunchEvent setCorrelationID:correlationID];

      collectionID = [(TPSAnalyticsEventAppLaunched *)self->_pendingAppLaunchEvent collectionID];
      LODWORD(contentID) = [collectionID isEqual:TPSAnalyticsContentStyleLandingPage];

      if (contentID)
      {
        appController4 = [(TPSMainViewController *)self appController];
        identifier = [v22 identifier];
        v27 = [appController4 collectionIdentifierForTipIdentifier:identifier];
        [(TPSAnalyticsEventAppLaunched *)self->_pendingAppLaunchEvent setCollectionID:v27];
      }

      [(TPSAnalyticsEventAppLaunched *)self->_pendingAppLaunchEvent log];
      pendingAppLaunchEvent = self->_pendingAppLaunchEvent;
      self->_pendingAppLaunchEvent = 0;
    }

    if (!self->_pendingShowTipIdentifier && !self->_pendingOpenUniversalURL && ![(TPSMainViewController *)self hasLoaded])
    {
      appController = [(TPSMainViewController *)self tipsByCollectionViewController];
      if (([appController pendingContentUpdate] & 1) == 0)
      {
        tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
        currentTip = [tipsByCollectionViewController currentTip];
        if (currentTip)
        {
        }

        else
        {
          appController5 = [(TPSMainViewController *)self appController];
          tips = [appController5 tips];
          v33 = [tips count];

          if (!v33)
          {
            goto LABEL_16;
          }

          lastDisplayedContent = [(TPSMainViewController *)self lastDisplayedContent];
          appController = lastDisplayedContent;
          if (isCollapsed)
          {
            [(TPSMainViewController *)self showCollectionsView];
          }

          else
          {
            if ([lastDisplayedContent hasContent])
            {
              v35 = v9 & (isCollapsed ^ 1);
              featuredCollection = [updatedCopy featuredCollection];
              v37 = featuredCollection;
              if (featuredCollection)
              {
                v38 = v35;
              }

              else
              {
                v38 = 0;
              }

              if (v38 == 1)
              {
                identifier2 = [featuredCollection identifier];
                v40 = [updatedCopy tipsForCollectionIdentifier:identifier2];
                if (v40)
                {
                  [appController setCollectionId:identifier2];
                  firstObject = [v40 firstObject];
                  identifier3 = [firstObject identifier];
                  [appController setTipId:identifier3];
                }
              }

              collectionId = [appController collectionId];
              tipId = [appController tipId];
              v45 = [updatedCopy collectionForIdentifier:collectionId];

              if (!v45)
              {

                tipId = 0;
                collectionId = 0;
              }

              v46 = [updatedCopy tipForIdentifier:tipId];

              if (!v46)
              {

                tipId = 0;
              }
            }

            else
            {
              tipId = 0;
              collectionId = 0;
            }

            if (!(tipId | collectionId))
            {
              v47 = +[TPSCommonDefines sharedInstance];
              collectionId = [v47 collectionIdentifierForCurrentUserType];
            }

            if (tipId | collectionId)
            {
              if ([tipId length])
              {
                v48 = 2;
              }

              else
              {
                v48 = 1;
              }

              collectionListViewController3 = [(TPSMainViewController *)self collectionListViewController];
              viewModel2 = [collectionListViewController3 viewModel];
              viewCollapsed = [viewModel2 viewCollapsed];

              if (viewCollapsed)
              {
                v52 = 0;
              }

              else
              {
                v52 = v48;
              }

              [(TPSMainViewController *)self displayCollectionID:collectionId tipID:tipId preferredColumn:v52];
            }
          }

          [(TPSMainViewController *)self setHasLoaded:1];
        }
      }

LABEL_7:
    }
  }

LABEL_16:
  [(TPSMainViewController *)self updateShortcutItems];
  [(TPSMainViewController *)self updateAppShortcutSuggestions];
}

- (void)appControllerUserUpdatedSavedTips:(id)tips
{
  tipsCopy = tips;
  collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
  viewModel = [collectionListViewController viewModel];

  savedTipsCollection = [tipsCopy savedTipsCollection];
  [viewModel setSavedTipsCollection:savedTipsCollection];

  currentCollectionID = [viewModel currentCollectionID];
  v8 = +[TPSCommonDefines savedTipsCollectionIdentifier];
  v9 = [currentCollectionID isEqual:v8];

  if (v9)
  {
    savedTipsCollection2 = [tipsCopy savedTipsCollection];
    tipIdentifiers = [savedTipsCollection2 tipIdentifiers];
    v12 = [tipIdentifiers count];

    if (v12)
    {
      tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
      [tipsByCollectionViewController updateTipsForCurrentCollection];
LABEL_10:

      goto LABEL_11;
    }

    appController = [(TPSMainViewController *)self appController];
    viewNavigationCollapsed = [appController viewNavigationCollapsed];

    if (viewNavigationCollapsed)
    {
      [(TPSMainViewController *)self showCollectionsView];
    }

    if (+[TPSCommonDefines isPadUI])
    {
      featuredCollection = [tipsCopy featuredCollection];
      tipsByCollectionViewController = [featuredCollection identifier];

      if (!tipsByCollectionViewController)
      {
        tipsByCollectionViewController = +[TPSCommonDefines softwareWelcomeCollectionIdentifier];
      }

      [(TPSMainViewController *)self displayCollectionID:tipsByCollectionViewController tipID:0];
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)appControllerTipViewed:(id)viewed tipIdentifier:(id)identifier collectionIdentifier:(id)collectionIdentifier
{
  collectionIdentifierCopy = collectionIdentifier;
  identifierCopy = identifier;
  [(TPSMainViewController *)self updateShortcutItems];
  lastDisplayedContent = [(TPSMainViewController *)self lastDisplayedContent];
  [lastDisplayedContent setTipId:identifierCopy];

  [lastDisplayedContent setCollectionId:collectionIdentifierCopy];
  [TPSSecureArchivingUtilities archivedDataWithRootObject:lastDisplayedContent forKey:@"TPSAppLastDisplayedContent"];
}

- (void)updateSupplementaryColumnForCollectionID:(id)d
{
  dCopy = d;
  splitViewController = [(TPSMainViewController *)self splitViewController];
  v5 = [splitViewController viewControllerForColumn:1];

  collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
  viewModel = [collectionListViewController viewModel];

  if ([TPSCommonDefines isChecklistCollectionWithIdentifier:dCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    checklistViewModel = [viewModel checklistViewModel];
    [checklistViewModel reset];
    tipListViewController = [[TPSChecklistViewController alloc] initWithViewModel:checklistViewModel];
    [(TPSAppViewController *)tipListViewController setViewCycleDelegate:self];
    splitViewController2 = [(TPSMainViewController *)self splitViewController];
    [splitViewController2 setViewController:tipListViewController forColumn:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    checklistViewModel = [(TPSMainViewController *)self splitViewController];
    tipListViewController = [(TPSMainViewController *)self tipListViewController];
    [checklistViewModel setViewController:tipListViewController forColumn:1];
  }

LABEL_7:
  currentCollectionID = [viewModel currentCollectionID];
  v12 = [currentCollectionID isEqualToString:dCopy];

  if ((v12 & 1) == 0)
  {
    [viewModel setCurrentCollectionID:dCopy];
  }
}

- (void)displayCollectionID:(id)d tipID:(id)iD preferredColumn:(int64_t)column
{
  dCopy = d;
  iDCopy = iD;
  [(TPSMainViewController *)self setPendingColumnSwitching:1];
  v9 = [dCopy length];
  v10 = v9;
  if (column == 1 && v9)
  {
    column = 1;
  }

  else if (column == 2)
  {
    v11 = [iDCopy length];
    v12 = 1;
    if (!v10)
    {
      v12 = 2;
    }

    if (v11)
    {
      column = 2;
    }

    else
    {
      column = v12;
    }
  }

  appController = [(TPSMainViewController *)self appController];
  v14 = [appController tipForIdentifier:iDCopy includingCorrelation:1];

  if (v14)
  {
    identifier = [v14 identifier];

    iDCopy = identifier;
  }

  tipListViewController = [(TPSMainViewController *)self tipListViewController];
  viewModel = [tipListViewController viewModel];

  appController2 = [(TPSMainViewController *)self appController];
  v19 = [appController2 tipsForCollectionIdentifier:dCopy];
  [viewModel setTips:v19];

  if (!dCopy)
  {
    appController3 = [(TPSMainViewController *)self appController];
    dCopy = [appController3 collectionIdentifierForTipIdentifier:iDCopy];
  }

  appController4 = [(TPSMainViewController *)self appController];
  v22 = [appController4 collectionForIdentifier:dCopy];

  collection = [viewModel collection];
  v24 = [collection isEqual:v22];

  if (v22)
  {
    [viewModel setCollection:v22];
  }

  tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
  [tipsByCollectionViewController updateWithCollectionID:dCopy tipID:iDCopy];

  [(TPSMainViewController *)self updateSupplementaryColumnForCollectionID:dCopy];
  if (column == 2 && v22)
  {
    [(TPSMainViewController *)self showTipsView];
  }

  else if (column == 1)
  {
    [(TPSMainViewController *)self showTOCView];
  }

  [(TPSMainViewController *)self setPendingColumnSwitching:0];
  if (v10)
  {
    [viewModel setUseStandardNavBarBehavior:{objc_msgSend(v22, "isChecklist")}];
    if ((v24 & 1) == 0)
    {
      [viewModel setShouldUseDefaultNavBar:0];
    }
  }
}

- (void)displayUserGuideWithIdentifier:(id)identifier topicId:(id)id version:(id)version platformIndependent:(BOOL)independent prefersLandingPage:(BOOL)page referrer:(id)referrer
{
  identifierCopy = identifier;
  idCopy = id;
  versionCopy = version;
  referrerCopy = referrer;
  collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
  [collectionListViewController dismissSearch];

  tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
  [tipsByCollectionViewController dismissSearch];

  appController = [(TPSMainViewController *)self appController];
  v21 = appController;
  if (identifierCopy)
  {
    [appController userGuideWithIdentifier:identifierCopy];
  }

  else
  {
    [appController mainUserGuide];
  }
  v22 = ;

  if (v22)
  {
    identifier = [v22 identifier];

    version = [v22 version];

    independent = [v22 platformIndependent];
    versionCopy = version;
    identifierCopy = identifier;
  }

  if (!versionCopy)
  {
    versionCopy = HLPHelpViewControllerVersionLatest;
  }

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100016A5C;
  v51[3] = &unk_1000A31F8;
  v25 = idCopy;
  v52 = v25;
  pageCopy = page;
  v26 = objc_retainBlock(v51);
  if ([referrerCopy isEqualToString:TPSAnalyticsLaunchTypeDeviceExpertAttribution])
  {
    v27 = 7;
  }

  else if ([referrerCopy isEqualToString:TPSAnalyticsViewMethodDeviceExpertInTips])
  {
    v27 = 8;
  }

  else
  {
    v27 = 6;
  }

  independentCopy = independent;
  presentedViewController = [(TPSMainViewController *)self presentedViewController];
  objc_opt_class();
  v42 = referrerCopy;
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    presentedViewController2 = [(TPSMainViewController *)self presentedViewController];
    [presentedViewController2 viewControllers];
    v30 = v22;
    v31 = identifierCopy;
    v32 = v26;
    v33 = versionCopy;
    v34 = v27;
    v36 = v35 = v25;
    firstObject = [v36 firstObject];

    v25 = v35;
    v27 = v34;
    versionCopy = v33;
    v26 = v32;
    identifierCopy = v31;
    v22 = v30;
  }

  else
  {
    firstObject = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = firstObject;
    [v38 setAccessType:v27];
    (v26[2])(v26, v38);
    text = [v22 text];
    [v38 loadBookWithTitle:text identifier:identifierCopy topicID:v25 version:versionCopy];
  }

  else
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100016AD4;
    v43[3] = &unk_1000A3220;
    v44 = v22;
    v45 = identifierCopy;
    v46 = versionCopy;
    v47 = selfCopy;
    v49 = v27;
    v48 = v26;
    v50 = independentCopy;
    [(TPSMainViewController *)selfCopy dismissViewControllerAnimated:1 completion:v43];

    text = v44;
  }
}

- (void)updateShortcutItems
{
  +[NSMutableArray array];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100016DF4;
  v3 = v22[3] = &unk_1000A3248;
  v23 = v3;
  v4 = objc_retainBlock(v22);
  appController = [(TPSMainViewController *)self appController];
  tips = [appController tips];

  v7 = [tips mutableCopy];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10001704C;
  v18 = &unk_1000A3270;
  v8 = v4;
  v21 = v8;
  v9 = v7;
  v19 = v9;
  v10 = v3;
  v20 = v10;
  [tips enumerateObjectsUsingBlock:&v15];
  if ([v10 count] <= 2)
  {
    do
    {
      if (![v9 count])
      {
        break;
      }

      v11 = arc4random_uniform([v9 count]);
      v12 = [v9 objectAtIndexedSubscript:v11];
      [v9 removeObjectAtIndex:v11];
      (v8[2])(v8, v12);
    }

    while ([v10 count] < 3);
  }

  if ([v10 count])
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = +[UIApplication sharedApplication];
  [v14 setShortcutItems:v13];
}

- (void)handleTipsURL:(id)l
{
  v19 = [NSURLComponents componentsWithString:l];
  scheme = [v19 scheme];
  v5 = [scheme isEqualToString:@"tips"];

  if (v5)
  {
    path = [v19 path];
    if ([path isEqualToString:@"open"])
    {
      queryItems = [v19 queryItems];
      v8 = [queryItems count];

      if (v8 < 2)
      {
        goto LABEL_13;
      }

      queryItems2 = [v19 queryItems];
      path = [queryItems2 firstObject];

      queryItems3 = [v19 queryItems];
      v11 = [queryItems3 objectAtIndexedSubscript:1];

      name = [v11 name];
      value = [v11 value];
      name2 = [path name];
      v15 = [name2 isEqualToString:@"type"];

      if (v15)
      {
        value2 = [path value];
        if ([value2 isEqualToString:@"shortcut"] && objc_msgSend(name, "isEqualToString:", @"id"))
        {
          v17 = value;
          if (([v17 containsString:@"#"] & 1) == 0)
          {
            v18 = [NSString stringWithFormat:@"%@%@", v17, @"#"];

            v17 = v18;
          }

          [(TPSMainViewController *)self showCollectionWithIdentifier:v17 launchType:TPSAnalyticsLaunchTypeQuickAction];
        }
      }
    }
  }

LABEL_13:
}

- (void)applicationDidBecomeActive
{
  appController = [(TPSMainViewController *)self appController];
  fullTipContentManager = [appController fullTipContentManager];
  [fullTipContentManager tipsAppActive];
}

- (void)applicationWillTerminate
{
  tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
  [tipsByCollectionViewController applicationWillTerminate];

  [TPSAnalyticsEventAppLaunched appSessionEndedWithType:TPSAnalyticsLaunchTypeTerminated];
  +[TPSAnalyticsSessionController endSession];
  v3 = +[TPSAnalyticsChecklistSessionController sharedInstance];
  [v3 stopSession];
}

- (void)applicationWillEnterForeground
{
  v3 = +[TPSJSONCacheController sharedInstance];
  [v3 reloadDataCache];

  v4 = +[TPSAssetCacheController sharedInstance];
  [v4 reloadDataCache];

  [(TPSMainViewController *)self updateAppInBackground:0];
  [(TPSUIAppController *)self->_appController reloadAppGroupDefaults];
  accessType = [(TPSMainViewController *)self accessType];
  if (accessType == 2)
  {
    [(TPSMainViewController *)self logAnalyticsEventForAppForeground];
  }

  else if (accessType == 1)
  {
    +[TPSAnalyticsSessionController trackSession];
    v6 = [TPSAnalyticsEventAppLaunched eventWithContentID:0 collectionID:0 correlationID:0 launchType:TPSAnalyticsLaunchTypeSpringboard];
    [v6 log];
  }

  +[TPSAnalyticsSessionController trackSession];
  v7 = +[TPSAnalyticsChecklistSessionController sharedInstance];
  [v7 continueSession];

  [(TPSMainViewController *)self resyncTipList];
}

- (void)applicationDidEnterBackground
{
  v3 = +[TPSJSONCacheController sharedInstance];
  [v3 syncCacheImmediately];

  v4 = +[TPSAssetCacheController sharedInstance];
  [v4 syncCacheImmediately];

  v5 = +[TPSCommonDefines sharedInstance];
  appBundleIDMap = [v5 appBundleIDMap];
  [appBundleIDMap removeAllObjects];

  [TPSAnalyticsEventAppLaunched appSessionEndedWithType:TPSAnalyticsLaunchTypeBackground];
  [(TPSMainViewController *)self updateAppInBackground:1];
  [(TPSMainViewController *)self setPendingShowTipIdentifier:0];

  [(TPSMainViewController *)self setPendingOpenUniversalURL:0];
}

- (void)resyncTipList
{
  appController = [(TPSMainViewController *)self appController];
  if ([appController viewNavigationCollapsed])
  {
    tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
    view = [tipsByCollectionViewController view];
    window = [view window];

    if (!window)
    {
      goto LABEL_5;
    }

    appController = [(TPSMainViewController *)self tipsByCollectionViewController];
    [appController continueVideoForCurrentTip];
  }

LABEL_5:
  appController = self->_appController;

  [(TPSUIAppController *)appController updateContent];
}

- (BOOL)isCollectionsViewVisible
{
  splitViewController = [(TPSMainViewController *)self splitViewController];
  if ([splitViewController displayMode] == 4)
  {
    v4 = 1;
  }

  else
  {
    splitViewController2 = [(TPSMainViewController *)self splitViewController];
    if ([splitViewController2 displayMode] == 5)
    {
      v4 = 1;
    }

    else
    {
      splitViewController3 = [(TPSMainViewController *)self splitViewController];
      displayMode = [splitViewController3 displayMode];

      if (displayMode == 6)
      {
        return 1;
      }

      splitViewController = [(TPSMainViewController *)self collectionListViewController];
      splitViewController2 = [splitViewController viewModel];
      if ([splitViewController2 viewCollapsed])
      {
        collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
        view = [collectionListViewController view];
        window = [view window];
        v4 = window != 0;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (BOOL)canDisplayColumn:(int64_t)column
{
  appController = [(TPSMainViewController *)self appController];
  viewNavigationCollapsed = [appController viewNavigationCollapsed];

  return !viewNavigationCollapsed || [(TPSMainViewController *)self currentCollapsedDisplayColumn]!= column;
}

- (void)showCollectionsView
{
  if ([(TPSMainViewController *)self canDisplayColumn:0])
  {
    splitViewController = [(TPSMainViewController *)self splitViewController];
    [splitViewController showColumn:0];
  }
}

- (void)showTOCView
{
  if ([(TPSMainViewController *)self canDisplayColumn:1])
  {
    splitViewController = [(TPSMainViewController *)self splitViewController];
    [splitViewController showColumn:1];
  }
}

- (void)showTipsView
{
  if ([(TPSMainViewController *)self canDisplayColumn:2])
  {
    splitViewController = [(TPSMainViewController *)self splitViewController];
    [splitViewController showColumn:2];
  }
}

- (void)showTipWithID:(id)d launchType:(id)type
{
  dCopy = d;
  typeCopy = type;
  if ([dCopy length])
  {
    [(TPSMainViewController *)self showCollectionWithIdentifier:dCopy launchType:typeCopy];
  }

  else
  {
    v7 = [TPSAnalyticsEventAppLaunched eventWithContentID:0 collectionID:0 correlationID:0 launchType:typeCopy];
    [v7 log];

    collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
    [collectionListViewController analyticsIncreaseCountViewForNilTipIDWithLaunchType:typeCopy];
  }
}

- (BOOL)openURL:(id)l
{
  lCopy = l;
  v5 = +[TPSLogger default];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "open URL: %@", buf, 0xCu);
  }

  v6 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
  scheme = [v6 scheme];
  v8 = [scheme isEqualToString:TPSCommonDefinesURLSchemeKey];

  if (!v8)
  {
    goto LABEL_24;
  }

  host = [v6 host];
  v10 = [host isEqualToString:TPSCommonDefinesURLSchemeParameterPathTypeOpen];

  if (!v10)
  {
    host2 = [v6 host];
    v21 = [host2 isEqualToString:TPSTipURLSchemeParameterPathTypeSearch];

    if (v21)
    {
      queryItems = [v6 queryItems];
      v23 = [queryItems na_firstObjectPassingTest:&stru_1000A32B0];

      value = [v23 value];
      v25 = [TPSAppSearchQuery queryWithSearchTerm:value origin:2];
      v19 = [(TPSMainViewController *)self handleSearchWithSearchQuery:v25];

      goto LABEL_25;
    }

    host3 = [v6 host];
    v27 = [host3 isEqualToString:TPSCommonDefinesURLSchemeTypeUserGuide];

    if (v27)
    {
      v28 = [TPSUserGuide getUserGuideFromURL:lCopy];
      referrer = [v28 referrer];
      v30 = [referrer length];

      if (v30)
      {
        topicIdentifier = [v28 topicIdentifier];
        referrer2 = [v28 referrer];
        v33 = [TPSAnalyticsEventAppLaunched eventWithContentID:topicIdentifier collectionID:0 correlationID:0 launchType:referrer2];
        [v33 log];
      }

      identifier = [v28 identifier];
      topicIdentifier2 = [v28 topicIdentifier];
      version = [v28 version];
      referrer3 = [v28 referrer];
      [(TPSMainViewController *)self displayUserGuideWithIdentifier:identifier topicId:topicIdentifier2 version:version platformIndependent:1 prefersLandingPage:1 referrer:referrer3];
    }

    else
    {
      host4 = [v6 host];
      v39 = [host4 isEqualToString:TPSCommonDefinesURLSchemeTypeSupportFlow];

      if (v39)
      {
        [(TPSMainViewController *)self handleSupportFlowDeeplink:lCopy];
      }
    }

LABEL_24:
    v19 = 0;
    goto LABEL_25;
  }

  queryItems2 = [v6 queryItems];
  v42 = 0;
  v43 = 0;
  v41 = 0;
  [TPSDocument getValuesFromOpenURLSchemeQueryItems:queryItems2 tipIdentifier:&v43 collectionIdentifier:&v42 referrer:&v41];
  v12 = v43;
  v13 = v42;
  v14 = v41;

  if (v12 && [v13 isEqualToString:v12])
  {

    v12 = &stru_1000A4A50;
  }

  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = &stru_1000A4A50;
  }

  v16 = v15;
  v17 = v16;
  if (v13)
  {
    v18 = [(__CFString *)v16 stringByAppendingFormat:@"%@%@", @"#", v13];

    v17 = v18;
  }

  [(TPSMainViewController *)self showTipWithID:v17 launchType:v14];
  if ([v14 isEqualToString:TPSAnalyticsLaunchTypeNotification])
  {
    [(TipListViewController *)self->_tipListViewController setPreferredViewMethod:v14];
  }

  v19 = 1;
LABEL_25:

  return v19;
}

- (BOOL)handleUserActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v6 = [activityType isEqualToString:CSSearchableItemActionType];

  if (v6)
  {
    v7 = [(TPSMainViewController *)self handleCoreSpotlightItemActivity:activityCopy];
  }

  else
  {
    activityType2 = [activityCopy activityType];
    v9 = [activityType2 isEqualToString:CSQueryContinuationActionType];

    if (v9)
    {
      v7 = [(TPSMainViewController *)self handleContinueCoreSpotlightSearchActivity:activityCopy];
    }

    else
    {
      activityType3 = [activityCopy activityType];
      v11 = [activityType3 isEqualToString:NSUserActivityTypeBrowsingWeb];

      if (!v11)
      {
        v12 = 0;
        goto LABEL_8;
      }

      v7 = [(TPSMainViewController *)self handleUniversalLinkWithUserActivity:activityCopy];
    }
  }

  v12 = v7;
LABEL_8:

  return v12;
}

- (BOOL)handleContinueCoreSpotlightSearchActivity:(id)activity
{
  activityCopy = activity;
  [(TPSMainViewController *)self dismissViewControllerAnimated:1 completion:0];
  userInfo = [activityCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:CSSearchQueryString];

  v7 = +[TPSLogger search];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10006A164(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = [TPSAppSearchQuery queryWithSearchTerm:v6 origin:1];
  v15 = [(TPSMainViewController *)self handleSearchWithSearchQuery:v14];

  return v15;
}

- (BOOL)handleCoreSpotlightItemActivity:(id)activity
{
  userInfo = [activity userInfo];
  v5 = [userInfo objectForKeyedSubscript:CSSearchableItemActivityIdentifier];

  v6 = [v5 length];
  if (v6)
  {
    v7 = +[TPSLogger search];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A1D0(v5, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = TPSAnalyticsLaunchTypeSearchResult;
    v15 = [[TPSUserGuideTopic alloc] initWithSearchableItemUniqueIdentifier:v5];
    v16 = v15;
    if (v15)
    {
      productId = [v15 productId];
      topicId = [v16 topicId];
      version = [v16 version];
      v20 = +[TPSLogger search];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v27 = productId;
        v28 = 2112;
        v29 = topicId;
        v30 = 2112;
        v31 = version;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Opening user guide with productId: %@, topicId: %@, version: %@", buf, 0x20u);
      }

      if (productId && topicId)
      {
        [(TPSMainViewController *)self displayUserGuideWithIdentifier:productId topicId:topicId version:version platformIndependent:1 prefersLandingPage:1 referrer:0];
      }

      v21 = [TPSAnalyticsEventAppLaunched eventWithContentID:0 collectionID:0 correlationID:0 launchType:v14];
      [v21 log];

      collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
      [collectionListViewController analyticsIncreaseCountViewForNilTipIDWithLaunchType:v14];
    }

    else
    {
      appController = [(TPSMainViewController *)self appController];
      v24 = [appController collectionForIdentifier:v5];

      if (!v24)
      {
        [(TPSMainViewController *)self dismissViewControllerAnimated:1 completion:0];
        [(TPSMainViewController *)self showTipWithID:v5 launchType:v14];
        goto LABEL_14;
      }

      productId = [NSString stringWithFormat:@"%@%@", @"#", v5];
      [(TPSMainViewController *)self showCollectionWithIdentifier:productId launchType:v14];
    }

LABEL_14:
  }

  return v6 != 0;
}

- (BOOL)handleSearchWithSearchQuery:(id)query
{
  queryCopy = query;
  searchTerm = [queryCopy searchTerm];
  v7 = [searchTerm length];
  if (v7)
  {
    pendingAppSearchQuery = self->_pendingAppSearchQuery;
    self->_pendingAppSearchQuery = 0;

    v9 = +[TPSLogger search];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A23C(searchTerm, v9, v10, v11, v12, v13, v14, v15);
    }

    if ([(TPSMainViewController *)self _isAppContentLoaded])
    {
      collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
      canSearch = [collectionListViewController canSearch];

      if (canSearch)
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000185BC;
        v25[3] = &unk_1000A2F98;
        v25[4] = self;
        v26 = queryCopy;
        [UIView performWithoutAnimation:v25];
        v18 = v26;
LABEL_12:

        goto LABEL_13;
      }

      tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
      canSearch2 = [tipsByCollectionViewController canSearch];

      if (canSearch2)
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100018654;
        v23[3] = &unk_1000A2F98;
        v23[4] = self;
        v24 = queryCopy;
        [UIView performWithoutAnimation:v23];
        v18 = v24;
        goto LABEL_12;
      }
    }

    else
    {
      v19 = +[TPSLogger search];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Content not yet fetched, save it for later", buf, 2u);
      }

      objc_storeStrong(&self->_pendingAppSearchQuery, query);
    }
  }

LABEL_13:

  return v7 != 0;
}

- (void)handleSearchFocus
{
  collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
  canSearch = [collectionListViewController canSearch];

  if (canSearch)
  {
    collectionListViewController2 = [(TPSMainViewController *)self collectionListViewController];
  }

  else
  {
    tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
    canSearch2 = [tipsByCollectionViewController canSearch];

    if (!canSearch2)
    {
      return;
    }

    collectionListViewController2 = [(TPSMainViewController *)self tipsByCollectionViewController];
  }

  v8 = collectionListViewController2;
  [collectionListViewController2 focusSearch];
}

- (BOOL)_isAppContentLoaded
{
  appController = [(TPSMainViewController *)self appController];
  if ([appController updatingContent])
  {
    contentHasLoaded = 0;
  }

  else
  {
    appController2 = [(TPSMainViewController *)self appController];
    contentHasLoaded = [appController2 contentHasLoaded];
  }

  return contentHasLoaded;
}

- (BOOL)handleUniversalLinkWithUserActivity:(id)activity
{
  activityCopy = activity;
  [(TPSMainViewController *)self dismissViewControllerAnimated:1 completion:0];
  webpageURL = [activityCopy webpageURL];
  if (!webpageURL)
  {
    LOBYTE(v9) = 0;
    goto LABEL_41;
  }

  v6 = +[TPSLogger default];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = webpageURL;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "open URL: %@", buf, 0xCu);
  }

  v7 = [NSURLComponents componentsWithURL:webpageURL resolvingAgainstBaseURL:1];
  host = [v7 host];
  v9 = [host isEqualToString:@"tips.apple.com"];

  if (!v9)
  {
    goto LABEL_40;
  }

  v10 = TPSAnalyticsLaunchTypeUniversalLink;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  queryItems = [v7 queryItems];
  v12 = [queryItems countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v12)
  {

    v47 = 0;
    goto LABEL_31;
  }

  v13 = v12;
  obj = queryItems;
  v41 = v9;
  selfCopy = self;
  v42 = v7;
  v43 = webpageURL;
  v44 = activityCopy;
  v14 = 0;
  v15 = 0;
  v16 = *v50;
  v17 = TPSDocumentURLSchemeParameterReferrerKey;
  v45 = TPSAnalyticsLaunchTypeSharedTipLocal;
  while (2)
  {
    v18 = 0;
    do
    {
      if (*v50 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v49 + 1) + 8 * v18);
      name = [v19 name];
      v21 = [name isEqualToString:v17];

      if (v21)
      {
        value = [v19 value];
        if ([value length])
        {
          value2 = [v19 value];

          [TPSAnalyticsEventContentViewed setAppReferrer:value];
          v10 = value2;
        }

        goto LABEL_20;
      }

      name2 = [v19 name];
      v25 = [name2 isEqualToString:@"category"];

      if (!v25)
      {
        name3 = [v19 name];
        v28 = [name3 isEqualToString:@"share"];

        if (!v28)
        {
          goto LABEL_21;
        }

        value = [v19 value];
        if ([value length])
        {
          v47 = v14;
          appController = [(TPSMainViewController *)selfCopy appController];
          v30 = [appController tipForVariantIdentifier:value];

          if (!v30)
          {
            if ([(TPSMainViewController *)selfCopy _isAppContentLoaded])
            {
              [(TPSMainViewController *)selfCopy showModalTipWithVariantID:value];
            }

            else
            {
              [(TPSMainViewController *)selfCopy setPendingSharedTipVariantID:value];
            }

            webpageURL = v43;
            activityCopy = v44;
            v7 = v42;
            v35 = obj;

            LOBYTE(v9) = 1;
            goto LABEL_39;
          }

          appController2 = [(TPSMainViewController *)selfCopy appController];
          [appController2 logSharedTipDisplayed:v30 isEligible:1];

          identifier = [v30 identifier];

          v33 = v45;
          v10 = v33;
          v15 = identifier;
        }

        goto LABEL_20;
      }

      value3 = [v19 value];

      if ([value3 length])
      {
        [NSString stringWithFormat:@"%@%@", @"#", value3];
        value = v15;
        v15 = v14 = value3;
LABEL_20:

        goto LABEL_21;
      }

      v14 = value3;
LABEL_21:
      v18 = v18 + 1;
    }

    while (v13 != v18);
    v34 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    v13 = v34;
    if (v34)
    {
      continue;
    }

    break;
  }

  v47 = v14;

  if (v15)
  {
    v35 = v15;
    webpageURL = v43;
    activityCopy = v44;
    v7 = v42;
    self = selfCopy;
    LOBYTE(v9) = v41;
    goto LABEL_34;
  }

  webpageURL = v43;
  activityCopy = v44;
  v7 = v42;
  self = selfCopy;
  LOBYTE(v9) = v41;
LABEL_31:
  path = [v7 path];
  v37 = [path componentsSeparatedByString:@"/"];

  if ([v37 count] != 6)
  {

    goto LABEL_38;
  }

  lastObject = [v37 lastObject];

  v39 = lastObject;
  if (!v39)
  {
LABEL_38:
    v35 = [TPSAnalyticsEventAppLaunched eventWithContentID:0 collectionID:v47 correlationID:0 launchType:v10];
    [v35 log];
    v15 = 0;
    goto LABEL_39;
  }

  v35 = v39;
LABEL_34:
  [(TPSMainViewController *)self setPendingOpenUniversalURL:webpageURL];
  [(TPSMainViewController *)self setPendingShowTipIdentifier:v35];
  [(TPSMainViewController *)self showCollectionWithIdentifier:v35 launchType:v10];
  v15 = v35;
LABEL_39:

LABEL_40:
LABEL_41:

  return v9;
}

- (void)updateShouldHoldOffVideo
{
  v3 = (+[TPSCommonDefines isPhoneUI]& 1) == 0 && self->_currentDisplayMode == 3;
  tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
  [tipsByCollectionViewController setShouldHoldOffVideo:v3];
}

- (void)logAnalyticsEventForAppForeground
{
  tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
  tipsByCollectionViewController2 = [(TPSMainViewController *)self tipsByCollectionViewController];
  view = [tipsByCollectionViewController2 view];
  window = [view window];

  if (window)
  {
    currentTip = [tipsByCollectionViewController currentTip];
    identifier = [currentTip identifier];

    collectionID = [tipsByCollectionViewController collectionID];
    currentTip2 = [tipsByCollectionViewController currentTip];
    correlationID = [currentTip2 correlationID];
LABEL_5:

    [TPSAnalyticsEventAppLaunched eventWithContentID:identifier collectionID:collectionID correlationID:correlationID launchType:TPSAnalyticsLaunchTypeForeground];
    goto LABEL_6;
  }

  tipListViewController = [(TPSMainViewController *)self tipListViewController];
  view2 = [tipListViewController view];
  window2 = [view2 window];

  if (window2)
  {
    currentTip2 = [(TPSMainViewController *)self tipListViewController];
    viewModel = [currentTip2 viewModel];
    collection = [viewModel collection];
    collectionID = [collection identifier];

    correlationID = 0;
    identifier = 0;
    goto LABEL_5;
  }

  collectionID = 0;
  correlationID = 0;
  identifier = 0;
  [TPSAnalyticsEventAppLaunched eventWithContentID:0 collectionID:0 correlationID:0 launchType:TPSAnalyticsLaunchTypeForeground];
  v16 = LABEL_6:;
  [v16 log];
}

- (void)logAnalyticsEventForChecklistSession
{
  v2 = +[TPSAnalyticsChecklistSessionController sharedInstance];
  if ([v2 hasActiveSession])
  {
    [v2 stopSession];
  }
}

- (int64_t)splitViewController:(id)controller topColumnForCollapsingToProposedTopColumn:(int64_t)column
{
  controllerCopy = controller;
  [(TPSMainViewController *)self updateViewCollapsed:1];
  [(TPSMainViewController *)self updateCollectionListModelDynamicSections];
  if ((+[TPSCommonDefines isPhoneUI]& 1) != 0)
  {
    column = 0;
LABEL_3:
    [(TPSMainViewController *)self setCurrentCollapsedDisplayColumn:column];
    columnCopy = column;
    goto LABEL_9;
  }

  displayMode = [controllerCopy displayMode];
  v9 = displayMode;
  if (displayMode <= 6 && ((1 << displayMode) & 0x68) != 0)
  {
    columnCopy = [(TPSMainViewController *)self isCollectionsViewVisible]^ 1;
  }

  if (v9 > 6 || ((1 << v9) & 0x68) == 0)
  {
    goto LABEL_3;
  }

LABEL_9:

  return columnCopy;
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  [(TPSMainViewController *)self setCurrentDisplayMode:mode];
  [(TPSMainViewController *)self updateShouldHoldOffVideo];
  view = [(TPSMainViewController *)self view];
  [view setNeedsLayout];
}

- (id)tipsByCollectionViewController:(id)controller tipsForCollectionID:(id)d
{
  if ([TPSCommonDefines isChecklistCollectionWithIdentifier:d])
  {
    collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
    viewModel = [collectionListViewController viewModel];

    checklistViewModel = [viewModel checklistViewModel];
    [checklistViewModel updateTips];
    currentDisplayTips = [checklistViewModel currentDisplayTips];
  }

  else
  {
    currentDisplayTips = 0;
  }

  return currentDisplayTips;
}

- (void)tipsViewControllerCurrentTipUpdated:(id)updated
{
  updatedCopy = updated;
  tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];

  v5 = updatedCopy;
  if (tipsByCollectionViewController == updatedCopy)
  {
    currentTip = [updatedCopy currentTip];
    collectionID = [updatedCopy collectionID];
    v8 = [TPSCommonDefines isChecklistCollectionWithIdentifier:collectionID];

    if (v8)
    {
      collectionListViewController = [(TPSMainViewController *)self collectionListViewController];
      viewModel = [collectionListViewController viewModel];

      checklistViewModel = [viewModel checklistViewModel];
      identifier = [currentTip identifier];
      if (identifier)
      {
        [checklistViewModel setSelectedTipIdentifier:identifier];
      }

      else
      {
        firstTip = [checklistViewModel firstTip];
        identifier2 = [firstTip identifier];
        [checklistViewModel setSelectedTipIdentifier:identifier2];
      }
    }

    else
    {
      tipListViewController = [(TPSMainViewController *)self tipListViewController];
      viewModel = [tipListViewController viewModel];

      [viewModel setCurrentTip:currentTip];
    }

    v5 = updatedCopy;
  }
}

- (void)tipsViewControllerContentUpdated:(id)updated
{
  updatedCopy = updated;
  tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];

  v5 = updatedCopy;
  if (tipsByCollectionViewController == updatedCopy)
  {
    collectionID = [updatedCopy collectionID];
    tipListViewController = [(TPSMainViewController *)self tipListViewController];
    viewModel = [tipListViewController viewModel];

    appController = [(TPSMainViewController *)self appController];
    v10 = [appController collectionForIdentifier:collectionID];

    collection = [viewModel collection];
    v12 = [v10 isEqual:collection];

    if ((v12 & 1) == 0)
    {
      [viewModel setCollection:v10];
    }

    tips = [updatedCopy tips];
    if ([tips count])
    {
      tips2 = [updatedCopy tips];
    }

    else
    {
      tips2 = &__NSArray0__struct;
    }

    [viewModel setTips:tips2];
    currentTip = [viewModel currentTip];
    v16 = [tips2 containsObject:currentTip];

    if ((v16 & 1) == 0)
    {
      firstObject = [tips2 firstObject];
      appController2 = [(TPSMainViewController *)self appController];
      viewNavigationCollapsed = [appController2 viewNavigationCollapsed];

      if ((viewNavigationCollapsed & 1) == 0)
      {
        identifier = [firstObject identifier];
        [viewModel setSelectedTipIdentifier:identifier];
      }

      [viewModel setCurrentTip:firstObject];
    }

    v5 = updatedCopy;
  }
}

- (void)splitViewController:(id)controller didHideColumn:(int64_t)column
{
  if (!column)
  {
    tipListViewController = [(TPSMainViewController *)self tipListViewController];
    viewModel = [tipListViewController viewModel];
    [viewModel updateSidebarVisibility:0];
  }
}

- (void)splitViewController:(id)controller willShowColumn:(int64_t)column
{
  if (!column)
  {
    tipListViewController = [(TPSMainViewController *)self tipListViewController];
    viewModel = [tipListViewController viewModel];
    [viewModel updateSidebarVisibility:1];
  }
}

- (BOOL)tipsViewControllerShouldShowSearch:(id)search
{
  searchCopy = search;
  if ((+[TPSCommonDefines isPhoneUI]& 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    appController = [(TPSMainViewController *)self appController];
    if ([appController viewNavigationCollapsed])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [searchCopy isSharedVariant] ^ 1;
    }
  }

  return v5;
}

- (BOOL)tipsViewControllerShouldStartVideo:(id)video
{
  videoCopy = video;
  tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];

  if (tipsByCollectionViewController == videoCopy)
  {
    return ![(TPSMainViewController *)self userGuideDisplayed];
  }

  else
  {
    return 1;
  }
}

- (void)helpViewControllerDoneButtonTapped:(id)tapped
{
  [(TPSMainViewController *)self dismissViewControllerAnimated:1 completion:0];
  [(TPSMainViewController *)self setUserGuideDisplayed:0];
  tipsByCollectionViewController = [(TPSMainViewController *)self tipsByCollectionViewController];
  [tipsByCollectionViewController continueVideoForCurrentTip];
}

- (void)helpViewControllerSearchUsed:(id)used
{
  v3 = +[TPSAnalyticsEventHLPSearchUsed event];
  [v3 log];
}

- (void)helpViewControllerTOCUsed:(id)used
{
  v3 = +[TPSAnalyticsEventHLPTocUsed event];
  [v3 log];
}

- (void)helpViewControllerContentViewed:(id)viewed topicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(int64_t)style fromTopicID:(id)iD externalURLString:(id)string
{
  v9 = &TPSConstellationContentUtilitiesAttributeLight;
  if (style != 1)
  {
    v9 = &TPSConstellationContentUtilitiesAttributeDark;
  }

  v10 = [TPSAnalyticsEventHLPContentViewed eventWithTopicID:d topicTitle:title source:source interfaceStyle:*v9 fromTopicID:iD externalURLString:string];
  [v10 log];
}

- (void)appViewControllerViewWillAppear:(id)appear
{
  appearCopy = appear;
  appController = [(TPSMainViewController *)self appController];
  viewNavigationCollapsed = [appController viewNavigationCollapsed];

  if (viewNavigationCollapsed)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 0;
LABEL_7:
      [(TPSMainViewController *)self setCurrentCollapsedDisplayColumn:v6];
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v6 = 1;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = 2;
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)updateAppShortcutSuggestions
{
  v2 = type metadata accessor for TipsLog();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TipsLog.default.getter();
  log(_:_:)();
  (*(v3 + 8))(v6, v2);
  sub_10002D7FC();
  static AppShortcutsProvider.updateAppShortcutParameters()();
}

- (void)handleSupportFlowDeeplink:(id)deeplink
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for SupportFlowURLComponents();
  selfCopy = self;
  static SupportFlowURLComponents.components(from:)();
  v11 = v10;

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [(TPSMainViewController *)selfCopy displaySupportFlowWithIdentifier:v12];

  (*(v5 + 8))(v8, v4);
}

- (void)displaySupportFlowWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_10002BEE4(v4, v6);
}

- (void)presentURL:(id)l isModalInPresentation:(BOOL)presentation
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  TPSMainViewController.presentURL(_:isModalInPresentation:)(v10, presentation);

  (*(v7 + 8))(v10, v6);
}

- (void)tipsViewController:(id)controller didSelectSearchResult:(id)result
{
  if (result)
  {
    controllerCopy = controller;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  sub_10002D2C0(v10);

  sub_10001F870(v10, &qword_1000B2E90, &unk_100077E50);
}

- (void)tipsViewControllerHandleSupportArticleURL:(id)l
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v6 + 56))(v16, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(&v22 - v15, 1, 1, v5);
  }

  sub_10001F808(v16, v14, &unk_1000B3380, &qword_100079940);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    __break(1u);
  }

  else
  {
    selfCopy = self;
    URL.appendingSupportArticleQueryParam()();
    v18 = *(v6 + 8);
    v18(v14, v5);
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v18(v9, v5);
    [(TPSMainViewController *)selfCopy presentURL:v21 isModalInPresentation:1];

    sub_10001F870(v16, &unk_1000B3380, &qword_100079940);
  }
}

- (void)showModalTipWithVariantID:(id)d
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  dCopy = d;
  selfCopy = self;
  appController = [(TPSMainViewController *)selfCopy appController];
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v7;
  v11[4] = selfCopy;
  v14[4] = sub_100047A58;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100047858;
  v14[3] = &unk_1000A3F60;
  v12 = _Block_copy(v14);
  v13 = selfCopy;

  [(TPSUIAppController *)appController contentForVariant:dCopy completionHandler:v12];

  _Block_release(v12);
}

@end