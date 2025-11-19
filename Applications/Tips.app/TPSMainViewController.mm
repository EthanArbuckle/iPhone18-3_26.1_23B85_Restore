@interface TPSMainViewController
- (BOOL)_isAppContentLoaded;
- (BOOL)canDisplayColumn:(int64_t)a3;
- (BOOL)handleContinueCoreSpotlightSearchActivity:(id)a3;
- (BOOL)handleCoreSpotlightItemActivity:(id)a3;
- (BOOL)handleSearchWithSearchQuery:(id)a3;
- (BOOL)handleUniversalLinkWithUserActivity:(id)a3;
- (BOOL)handleUserActivity:(id)a3;
- (BOOL)isCollectionsViewVisible;
- (BOOL)openURL:(id)a3;
- (BOOL)tipsViewControllerShouldShowSearch:(id)a3;
- (BOOL)tipsViewControllerShouldStartVideo:(id)a3;
- (TPSLastDisplayedContent)lastDisplayedContent;
- (TPSMainViewController)init;
- (id)childViewControllerForStatusBarStyle;
- (id)tipsByCollectionViewController:(id)a3 tipsForCollectionID:(id)a4;
- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4;
- (void)appController:(id)a3 loadingContent:(BOOL)a4;
- (void)appControllerContentUpdated:(id)a3;
- (void)appControllerTipViewed:(id)a3 tipIdentifier:(id)a4 collectionIdentifier:(id)a5;
- (void)appControllerUserUpdatedSavedTips:(id)a3;
- (void)appViewControllerViewWillAppear:(id)a3;
- (void)applicationDidBecomeActive;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)applicationWillTerminate;
- (void)displayCollectionID:(id)a3 tipID:(id)a4 preferredColumn:(int64_t)a5;
- (void)displaySupportFlowWithIdentifier:(id)a3;
- (void)displayUserGuideWithIdentifier:(id)a3 topicId:(id)a4 version:(id)a5 platformIndependent:(BOOL)a6 prefersLandingPage:(BOOL)a7 referrer:(id)a8;
- (void)handleSearchFocus;
- (void)handleSupportFlowDeeplink:(id)a3;
- (void)handleTipsURL:(id)a3;
- (void)helpViewControllerContentViewed:(id)a3 topicID:(id)a4 topicTitle:(id)a5 source:(id)a6 interfaceStyle:(int64_t)a7 fromTopicID:(id)a8 externalURLString:(id)a9;
- (void)helpViewControllerDoneButtonTapped:(id)a3;
- (void)helpViewControllerSearchUsed:(id)a3;
- (void)helpViewControllerTOCUsed:(id)a3;
- (void)logAnalyticsEventForAppForeground;
- (void)logAnalyticsEventForChecklistSession;
- (void)presentURL:(id)a3 isModalInPresentation:(BOOL)a4;
- (void)resyncTipList;
- (void)setupCollectionListView;
- (void)setupSplitView;
- (void)setupTipListView;
- (void)setupTipsByCollectionView;
- (void)showCollectionWithIdentifier:(id)a3 launchType:(id)a4;
- (void)showCollectionsView;
- (void)showModalTipWithVariantID:(id)a3;
- (void)showTOCView;
- (void)showTipWithID:(id)a3 launchType:(id)a4;
- (void)showTipsView;
- (void)splitViewController:(id)a3 didHideColumn:(int64_t)a4;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)splitViewController:(id)a3 willShowColumn:(int64_t)a4;
- (void)tipsViewController:(id)a3 didSelectSearchResult:(id)a4;
- (void)tipsViewControllerContentUpdated:(id)a3;
- (void)tipsViewControllerCurrentTipUpdated:(id)a3;
- (void)tipsViewControllerHandleSupportArticleURL:(id)a3;
- (void)updateAppShortcutSuggestions;
- (void)updateCollectionListModelDynamicSections;
- (void)updateShortcutItems;
- (void)updateShouldHoldOffVideo;
- (void)updateSupplementaryColumnForCollectionID:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
  v3 = [(TPSMainViewController *)self lastDisplayedContent];
  v4 = [v3 hasContent];

  if ((v4 & 1) == 0)
  {
    [(TPSMainViewController *)self showCollectionsView];
  }

  v5 = [(TPSMainViewController *)self appController];
  [v5 updateContent];
}

- (id)childViewControllerForStatusBarStyle
{
  if (+[TPSCommonDefines isPhoneUI])
  {
    v3 = [(TPSMainViewController *)self splitViewController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
  v4 = [(TPSMainViewController *)self appController];
  v5 = [(TPSAppViewController *)v3 initWithAppController:v4];
  [(TPSMainViewController *)self setTipsByCollectionViewController:v5];

  v6 = [(TPSMainViewController *)self tipsByCollectionViewController];
  [v6 setDelegate:self];

  v7 = [(TPSMainViewController *)self tipsByCollectionViewController];
  [v7 setContentDelegate:self];

  v8 = [(TPSMainViewController *)self tipsByCollectionViewController];
  [v8 setViewCycleDelegate:self];
}

- (void)setupSplitView
{
  [(TPSMainViewController *)self updateViewCollapsed:+[TPSCommonDefines isPhoneUI]];
  v23 = [[_TtC4Tips22TPSSplitViewController alloc] initWithStyle:2];
  [(TPSSplitViewController *)v23 setDelegate:self];
  [(TPSSplitViewController *)v23 setPreferredSupplementaryColumnWidth:400.0];
  [(TPSSplitViewController *)v23 setPreferredSplitBehavior:0];
  v3 = [(TPSMainViewController *)self collectionListViewController];
  [(TPSSplitViewController *)v23 setViewController:v3 forColumn:0];

  v4 = [(TPSMainViewController *)self tipsByCollectionViewController];
  [(TPSSplitViewController *)v23 setViewController:v4 forColumn:2];

  [(TPSMainViewController *)self setSplitViewController:v23];
  v5 = [(TPSSplitViewController *)v23 view];
  [(TPSMainViewController *)self addChildViewController:v23];
  v6 = [(TPSMainViewController *)self view];
  [v6 addSubview:v5];

  [v5 setHidden:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v5 leadingAnchor];
  v8 = [(TPSMainViewController *)self view];
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [v5 trailingAnchor];
  v12 = [(TPSMainViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [v5 topAnchor];
  v16 = [(TPSMainViewController *)self view];
  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [v5 bottomAnchor];
  v20 = [(TPSMainViewController *)self view];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  [(TPSSplitViewController *)v23 didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = TPSMainViewController;
  [(TPSMainViewController *)&v18 viewDidLayoutSubviews];
  v3 = [(TPSMainViewController *)self currentDisplayMode];
  if ((+[TPSCommonDefines isPhoneUI]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TPSMainViewController *)self splitViewController];
    v4 = [v5 isCollapsed];
  }

  v6 = [(TPSMainViewController *)self appController];
  v7 = [v6 viewNavigationCollapsed];

  if (v4 != v7)
  {
    [(TPSMainViewController *)self updateViewCollapsed:v4];
    [(TPSMainViewController *)self updateCollectionListModelDynamicSections];
  }

  v8 = [(TPSMainViewController *)self tipsByCollectionViewController];
  v9 = [v8 allowPaging];

  if (v3 > 6)
  {
    v10 = 1;
  }

  else
  {
    v10 = v4;
  }

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0x2Bu >> v3;
  }

  v12 = [(TPSMainViewController *)self tipsByCollectionViewController];
  v13 = v11 & 1;
  [v12 setAllowPaging:v13];

  if (v9 != v13)
  {
    v14 = [(TPSMainViewController *)self collectionListViewController];
    v15 = [v14 viewModel];

    v16 = [v15 checklistViewModel];
    [v16 setCurrentDisplayTips:0];
    v17 = [(TPSMainViewController *)self tipsByCollectionViewController];
    [v17 setPendingReload:1];
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

- (void)showCollectionWithIdentifier:(id)a3 launchType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[TPSLogger default];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = v6;
    v51 = 2112;
    v52 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updateLaunchInfoWithIdentifier %@, launch type %@", buf, 0x16u);
  }

  [(TPSMainViewController *)self dismissViewControllerAnimated:1 completion:0];
  v9 = [(TPSMainViewController *)self collectionListViewController];
  v10 = [v9 navigationController];
  [v10 dismissViewControllerAnimated:0 completion:0];

  v11 = [v6 stringByRemovingPercentEncoding];

  v42 = v11;
  v12 = [v11 componentsSeparatedByString:@"#"];
  v13 = [v12 firstObject];
  v14 = 0;
  if ([v12 count] == 2)
  {
    v14 = [v12 lastObject];
  }

  if ([v13 length])
  {
    v15 = [(TPSMainViewController *)self appController];
    [v15 removeNotificationForIdentifier:v13];
  }

  if ([v14 length])
  {
    v16 = [(TPSMainViewController *)self appController];
    [v16 removeNotificationForIdentifier:v14];
  }

  v17 = [(TPSMainViewController *)self appController];
  v18 = [v17 tipForIdentifier:v13 includingCorrelation:1];

  if (v18)
  {
    v19 = [v18 identifier];

    v13 = v19;
  }

  v20 = TPSAnalyticsLaunchTypeNotification;
  v21 = [v7 isEqualToString:TPSAnalyticsLaunchTypeNotification];
  if (([v7 isEqualToString:TPSAnalyticsLaunchTypeWidget] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", v20))
  {
    v21 = v18 == 0;
  }

  v22 = [v18 correlationID];
  v23 = [TPSAnalyticsEventAppLaunched eventWithContentID:v13 collectionID:v14 correlationID:v22 launchType:v7];

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
    v24 = [(TPSMainViewController *)self appController];
    [v24 updateContent];
  }

LABEL_17:
  v25 = [(TPSMainViewController *)self appController];
  v26 = [v25 contentHasLoaded];

  v27 = [(TPSMainViewController *)self appController];
  v28 = [v27 updatingContent];

  if (v28)
  {
    if (!v26)
    {
      goto LABEL_25;
    }

    if ([v14 length])
    {
      v29 = [(TPSMainViewController *)self appController];
      v30 = [v29 collectionForIdentifier:v14];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    if ([v13 length])
    {
      pendingShowTipIdentifier = [(TPSMainViewController *)self appController];
      v32 = [pendingShowTipIdentifier tipForIdentifier:v13];
      if (v32)
      {

LABEL_26:
        goto LABEL_27;
      }

      v40 = [(TPSMainViewController *)self appController];
      v41 = [v40 tipForCorrelationIdentifier:v13];

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

  else if ((v26 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  if ([v13 length] || objc_msgSend(v14, "length"))
  {
    if ([v13 length])
    {
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    v35 = [(TPSMainViewController *)self appController];
    v36 = v35;
    if (v14)
    {
      v37 = v14;
    }

    else
    {
      v37 = v13;
    }

    v38 = [v35 collectionForIdentifier:v37];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014F18;
    block[3] = &unk_1000A31A8;
    v44 = v38;
    v45 = self;
    v46 = v14;
    v47 = v13;
    v48 = v34;
    v39 = v38;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(TPSMainViewController *)self splitViewController];
  v9 = [v8 isCollapsed];

  if (!v9)
  {
    v20 = [(TPSMainViewController *)self splitViewController];
    v21 = [v20 isCollapsed];

    if (!v21)
    {
      goto LABEL_15;
    }

    v22 = [(TPSMainViewController *)self splitViewController];
    v23 = [v22 displayMode];

    if ([(TPSMainViewController *)self isCollectionsViewVisible])
    {
      v24 = 0;
      v25 = 0;
      goto LABEL_16;
    }

    if (v23 != 3)
    {
      v11 = [(TPSMainViewController *)self tipListViewController];
      v14 = [v11 viewModel];
      if (([v14 viewCollapsed] & 1) == 0)
      {
LABEL_6:

        goto LABEL_7;
      }

      v26 = [(TPSMainViewController *)self tipListViewController];
      v27 = [v26 view];
      v28 = [v27 window];

      if (!v28)
      {
        goto LABEL_15;
      }
    }

    v24 = 0;
    v25 = 1;
    goto LABEL_16;
  }

  v10 = [(TPSMainViewController *)self collectionListViewController];
  v11 = [v10 viewModel];

  v12 = [v11 selectedItemID];

  if (!v12)
  {
    v13 = [(TPSMainViewController *)self appController];
    v14 = [v13 featuredCollection];

    if (!v14)
    {
      v15 = [(TPSMainViewController *)self appController];
      v16 = [v15 collectionSections];
      v17 = [v16 firstObject];

      v18 = [v17 collections];
      v14 = [v18 firstObject];
    }

    v19 = [v14 identifier];
    [v11 setSelectedItemID:v19];

    goto LABEL_6;
  }

LABEL_7:

LABEL_15:
  v24 = 1;
  v25 = 2;
LABEL_16:
  v30.receiver = self;
  v30.super_class = TPSMainViewController;
  [(TPSMainViewController *)&v30 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ((v24 & 1) == 0)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100015270;
    v29[3] = &unk_1000A31D0;
    v29[4] = self;
    v29[5] = v25;
    [v7 animateAlongsideTransition:v29 completion:0];
  }
}

- (void)updateCollectionListModelDynamicSections
{
  v3 = [(TPSMainViewController *)self collectionListViewController];
  v4 = [v3 viewModel];

  v5 = [(TPSMainViewController *)self appController];
  v6 = [v5 featuredCollection];
  v7 = [v5 collectionSections];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  if ([v4 viewCollapsed])
  {
    v23 = v5;
    v24 = v4;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v7;
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
        v15 = [v14 collections];
        v16 = [v15 containsObject:v6];

        if (v16)
        {
          v17 = [v14 collections];
          v18 = [v17 count];

          if (v18 < 2)
          {
            goto LABEL_12;
          }

          v19 = [v14 copy];

          v29 = v6;
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

        v21 = v6;
        v5 = v23;
        v4 = v24;
        goto LABEL_17;
      }
    }
  }

  [v8 addObjectsFromArray:v7];
  v21 = 0;
LABEL_17:
  [v4 setFeaturedCollection:v21];
  if ([v8 count])
  {
    v22 = [v8 copy];
    [v4 setCollectionSections:v22];
  }

  else
  {
    [v4 setCollectionSections:&__NSArray0__struct];
  }
}

- (void)appController:(id)a3 loadingContent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 collections];
  if ([v7 count])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v6 featuredCollection];
    v8 = v9 == 0;
  }

  if (v4)
  {
    [(TPSViewController *)self removeErrorView];
    v10 = [(TPSMainViewController *)self tipListViewController];
    [v10 removeErrorView];

    if (v8)
    {
      [(TPSViewController *)self setLoading:1];
      v11 = [(TPSMainViewController *)self tipListViewController];
      [v11 setLoading:1];
    }

    goto LABEL_32;
  }

  [(TPSViewController *)self setLoading:0];
  v12 = [(TPSMainViewController *)self tipListViewController];
  [v12 setLoading:0];

  pendingShowTipIdentifier = self->_pendingShowTipIdentifier;
  if (pendingShowTipIdentifier)
  {
    v14 = [(NSString *)pendingShowTipIdentifier componentsSeparatedByString:@"#"];
    if ([v14 count] == 1)
    {
      v15 = [v14 lastObject];
      v16 = 0;
    }

    else if ([v14 count] == 2)
    {
      v15 = [v14 firstObject];
      v16 = [v14 lastObject];
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    v18 = 1;
    if ([v15 length])
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    [(TPSMainViewController *)self displayCollectionID:v16 tipID:v15 preferredColumn:v19];
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
        v45 = [(TPSMainViewController *)self appController];
        v46 = [v45 tipForVariantIdentifier:self->_pendingSharedTipVariantID];

        if (v46)
        {
          v47 = [v46 identifier];
          [(TPSMainViewController *)self showCollectionWithIdentifier:v47 launchType:TPSAnalyticsLaunchTypeSharedTipLocal];
        }

        else
        {
          [(TPSMainViewController *)self showModalTipWithVariantID:self->_pendingSharedTipVariantID];
        }
      }

      v18 = 0;
    }
  }

  v20 = [(TPSMainViewController *)self collectionListViewController];
  v21 = [v20 viewModel];

  v22 = [v21 currentCollectionID];
  v23 = v22;
  if (!v22 && !v18)
  {
    v24 = [(TPSMainViewController *)self appController];
    v25 = [v24 viewNavigationCollapsed];

    if (v25)
    {
      goto LABEL_28;
    }

LABEL_24:
    v26 = [(TPSMainViewController *)self tipListViewController];
    v27 = [v26 viewModel];
    v28 = [v27 collection];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v31 = [(TPSMainViewController *)self appController];
      v32 = [v31 collections];
      v30 = [v32 firstObject];
    }

    v33 = [v30 identifier];
    [v21 setCurrentCollectionID:v33];

    goto LABEL_28;
  }

  if (!v23)
  {
    goto LABEL_24;
  }

LABEL_28:
  if (v8)
  {
    v34 = [(TPSMainViewController *)self appController];
    v35 = [v34 lastFetchError];
    [(TPSViewController *)self showErrorView:v35];
  }

  else
  {
    v36 = [(TPSMainViewController *)self splitViewController];
    v37 = [v36 view];
    [v37 setHidden:0];

    v34 = self->_pendingShowTipIdentifier;
    self->_pendingShowTipIdentifier = 0;
  }

  v38 = self->_pendingOpenUniversalURL;
  self->_pendingOpenUniversalURL = 0;

  pendingAppSearchQuery = self->_pendingAppSearchQuery;
  self->_pendingAppSearchQuery = 0;

  pendingSharedTipVariantID = self->_pendingSharedTipVariantID;
  self->_pendingSharedTipVariantID = 0;

  v41 = +[UIApplication sharedApplication];
  v42 = [UIApp _launchTestName];
  [v41 finishedTest:v42];

LABEL_32:
}

- (void)appControllerContentUpdated:(id)a3
{
  v53 = a3;
  v4 = [(TPSMainViewController *)self collectionListViewController];
  v5 = [v4 viewModel];

  v6 = [(TPSMainViewController *)self splitViewController];
  v7 = [v6 isCollapsed];

  v8 = [v5 collections];
  v9 = [v8 count] == 0;

  v10 = [v53 collections];
  v11 = [v5 collections];

  if (v10 != v11)
  {
    v12 = [(TPSMainViewController *)self collectionListViewController];
    [v12 analyticsIncreaseCountViewForCollectionsViewDelay:TPSAnalyticsViewMethodSpringboardLaunch];
  }

  if ([v10 count])
  {
    v13 = v10;
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  [v5 setCollections:v13];
  v14 = [v53 checklistCollection];
  [v5 setChecklistCollection:v14];

  v15 = [v53 savedTipsCollection];
  [v5 setSavedTipsCollection:v15];

  v16 = [v53 userGuides];
  [v5 setUserGuides:v16];

  [(TPSMainViewController *)self updateCollectionListModelDynamicSections];
  v17 = [(TPSMainViewController *)self appController];
  if ([v17 updatingContent])
  {
    goto LABEL_7;
  }

  v18 = [(TPSMainViewController *)self appController];
  v19 = [v18 contentHasLoaded];

  if (v19)
  {
    if (self->_pendingAppLaunchEvent)
    {
      v20 = [(TPSMainViewController *)self appController];
      v21 = [(TPSAnalyticsEventAppLaunched *)self->_pendingAppLaunchEvent contentID];
      v22 = [v20 tipForIdentifier:v21 includingCorrelation:1];

      v23 = [v22 correlationID];
      [(TPSAnalyticsEventAppLaunched *)self->_pendingAppLaunchEvent setCorrelationID:v23];

      v24 = [(TPSAnalyticsEventAppLaunched *)self->_pendingAppLaunchEvent collectionID];
      LODWORD(v21) = [v24 isEqual:TPSAnalyticsContentStyleLandingPage];

      if (v21)
      {
        v25 = [(TPSMainViewController *)self appController];
        v26 = [v22 identifier];
        v27 = [v25 collectionIdentifierForTipIdentifier:v26];
        [(TPSAnalyticsEventAppLaunched *)self->_pendingAppLaunchEvent setCollectionID:v27];
      }

      [(TPSAnalyticsEventAppLaunched *)self->_pendingAppLaunchEvent log];
      pendingAppLaunchEvent = self->_pendingAppLaunchEvent;
      self->_pendingAppLaunchEvent = 0;
    }

    if (!self->_pendingShowTipIdentifier && !self->_pendingOpenUniversalURL && ![(TPSMainViewController *)self hasLoaded])
    {
      v17 = [(TPSMainViewController *)self tipsByCollectionViewController];
      if (([v17 pendingContentUpdate] & 1) == 0)
      {
        v29 = [(TPSMainViewController *)self tipsByCollectionViewController];
        v30 = [v29 currentTip];
        if (v30)
        {
        }

        else
        {
          v31 = [(TPSMainViewController *)self appController];
          v32 = [v31 tips];
          v33 = [v32 count];

          if (!v33)
          {
            goto LABEL_16;
          }

          v34 = [(TPSMainViewController *)self lastDisplayedContent];
          v17 = v34;
          if (v7)
          {
            [(TPSMainViewController *)self showCollectionsView];
          }

          else
          {
            if ([v34 hasContent])
            {
              v35 = v9 & (v7 ^ 1);
              v36 = [v53 featuredCollection];
              v37 = v36;
              if (v36)
              {
                v38 = v35;
              }

              else
              {
                v38 = 0;
              }

              if (v38 == 1)
              {
                v39 = [v36 identifier];
                v40 = [v53 tipsForCollectionIdentifier:v39];
                if (v40)
                {
                  [v17 setCollectionId:v39];
                  v41 = [v40 firstObject];
                  v42 = [v41 identifier];
                  [v17 setTipId:v42];
                }
              }

              v43 = [v17 collectionId];
              v44 = [v17 tipId];
              v45 = [v53 collectionForIdentifier:v43];

              if (!v45)
              {

                v44 = 0;
                v43 = 0;
              }

              v46 = [v53 tipForIdentifier:v44];

              if (!v46)
              {

                v44 = 0;
              }
            }

            else
            {
              v44 = 0;
              v43 = 0;
            }

            if (!(v44 | v43))
            {
              v47 = +[TPSCommonDefines sharedInstance];
              v43 = [v47 collectionIdentifierForCurrentUserType];
            }

            if (v44 | v43)
            {
              if ([v44 length])
              {
                v48 = 2;
              }

              else
              {
                v48 = 1;
              }

              v49 = [(TPSMainViewController *)self collectionListViewController];
              v50 = [v49 viewModel];
              v51 = [v50 viewCollapsed];

              if (v51)
              {
                v52 = 0;
              }

              else
              {
                v52 = v48;
              }

              [(TPSMainViewController *)self displayCollectionID:v43 tipID:v44 preferredColumn:v52];
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

- (void)appControllerUserUpdatedSavedTips:(id)a3
{
  v17 = a3;
  v4 = [(TPSMainViewController *)self collectionListViewController];
  v5 = [v4 viewModel];

  v6 = [v17 savedTipsCollection];
  [v5 setSavedTipsCollection:v6];

  v7 = [v5 currentCollectionID];
  v8 = +[TPSCommonDefines savedTipsCollectionIdentifier];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [v17 savedTipsCollection];
    v11 = [v10 tipIdentifiers];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [(TPSMainViewController *)self tipsByCollectionViewController];
      [v13 updateTipsForCurrentCollection];
LABEL_10:

      goto LABEL_11;
    }

    v14 = [(TPSMainViewController *)self appController];
    v15 = [v14 viewNavigationCollapsed];

    if (v15)
    {
      [(TPSMainViewController *)self showCollectionsView];
    }

    if (+[TPSCommonDefines isPadUI])
    {
      v16 = [v17 featuredCollection];
      v13 = [v16 identifier];

      if (!v13)
      {
        v13 = +[TPSCommonDefines softwareWelcomeCollectionIdentifier];
      }

      [(TPSMainViewController *)self displayCollectionID:v13 tipID:0];
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)appControllerTipViewed:(id)a3 tipIdentifier:(id)a4 collectionIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  [(TPSMainViewController *)self updateShortcutItems];
  v9 = [(TPSMainViewController *)self lastDisplayedContent];
  [v9 setTipId:v8];

  [v9 setCollectionId:v7];
  [TPSSecureArchivingUtilities archivedDataWithRootObject:v9 forKey:@"TPSAppLastDisplayedContent"];
}

- (void)updateSupplementaryColumnForCollectionID:(id)a3
{
  v13 = a3;
  v4 = [(TPSMainViewController *)self splitViewController];
  v5 = [v4 viewControllerForColumn:1];

  v6 = [(TPSMainViewController *)self collectionListViewController];
  v7 = [v6 viewModel];

  if ([TPSCommonDefines isChecklistCollectionWithIdentifier:v13])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    v8 = [v7 checklistViewModel];
    [v8 reset];
    v9 = [[TPSChecklistViewController alloc] initWithViewModel:v8];
    [(TPSAppViewController *)v9 setViewCycleDelegate:self];
    v10 = [(TPSMainViewController *)self splitViewController];
    [v10 setViewController:v9 forColumn:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    v8 = [(TPSMainViewController *)self splitViewController];
    v9 = [(TPSMainViewController *)self tipListViewController];
    [v8 setViewController:v9 forColumn:1];
  }

LABEL_7:
  v11 = [v7 currentCollectionID];
  v12 = [v11 isEqualToString:v13];

  if ((v12 & 1) == 0)
  {
    [v7 setCurrentCollectionID:v13];
  }
}

- (void)displayCollectionID:(id)a3 tipID:(id)a4 preferredColumn:(int64_t)a5
{
  v26 = a3;
  v8 = a4;
  [(TPSMainViewController *)self setPendingColumnSwitching:1];
  v9 = [v26 length];
  v10 = v9;
  if (a5 == 1 && v9)
  {
    a5 = 1;
  }

  else if (a5 == 2)
  {
    v11 = [v8 length];
    v12 = 1;
    if (!v10)
    {
      v12 = 2;
    }

    if (v11)
    {
      a5 = 2;
    }

    else
    {
      a5 = v12;
    }
  }

  v13 = [(TPSMainViewController *)self appController];
  v14 = [v13 tipForIdentifier:v8 includingCorrelation:1];

  if (v14)
  {
    v15 = [v14 identifier];

    v8 = v15;
  }

  v16 = [(TPSMainViewController *)self tipListViewController];
  v17 = [v16 viewModel];

  v18 = [(TPSMainViewController *)self appController];
  v19 = [v18 tipsForCollectionIdentifier:v26];
  [v17 setTips:v19];

  if (!v26)
  {
    v20 = [(TPSMainViewController *)self appController];
    v26 = [v20 collectionIdentifierForTipIdentifier:v8];
  }

  v21 = [(TPSMainViewController *)self appController];
  v22 = [v21 collectionForIdentifier:v26];

  v23 = [v17 collection];
  v24 = [v23 isEqual:v22];

  if (v22)
  {
    [v17 setCollection:v22];
  }

  v25 = [(TPSMainViewController *)self tipsByCollectionViewController];
  [v25 updateWithCollectionID:v26 tipID:v8];

  [(TPSMainViewController *)self updateSupplementaryColumnForCollectionID:v26];
  if (a5 == 2 && v22)
  {
    [(TPSMainViewController *)self showTipsView];
  }

  else if (a5 == 1)
  {
    [(TPSMainViewController *)self showTOCView];
  }

  [(TPSMainViewController *)self setPendingColumnSwitching:0];
  if (v10)
  {
    [v17 setUseStandardNavBarBehavior:{objc_msgSend(v22, "isChecklist")}];
    if ((v24 & 1) == 0)
    {
      [v17 setShouldUseDefaultNavBar:0];
    }
  }
}

- (void)displayUserGuideWithIdentifier:(id)a3 topicId:(id)a4 version:(id)a5 platformIndependent:(BOOL)a6 prefersLandingPage:(BOOL)a7 referrer:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = [(TPSMainViewController *)self collectionListViewController];
  [v18 dismissSearch];

  v19 = [(TPSMainViewController *)self tipsByCollectionViewController];
  [v19 dismissSearch];

  v20 = [(TPSMainViewController *)self appController];
  v21 = v20;
  if (v14)
  {
    [v20 userGuideWithIdentifier:v14];
  }

  else
  {
    [v20 mainUserGuide];
  }
  v22 = ;

  if (v22)
  {
    v23 = [v22 identifier];

    v24 = [v22 version];

    a6 = [v22 platformIndependent];
    v16 = v24;
    v14 = v23;
  }

  if (!v16)
  {
    v16 = HLPHelpViewControllerVersionLatest;
  }

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100016A5C;
  v51[3] = &unk_1000A31F8;
  v25 = v15;
  v52 = v25;
  v53 = a7;
  v26 = objc_retainBlock(v51);
  if ([v17 isEqualToString:TPSAnalyticsLaunchTypeDeviceExpertAttribution])
  {
    v27 = 7;
  }

  else if ([v17 isEqualToString:TPSAnalyticsViewMethodDeviceExpertInTips])
  {
    v27 = 8;
  }

  else
  {
    v27 = 6;
  }

  v41 = a6;
  v28 = [(TPSMainViewController *)self presentedViewController];
  objc_opt_class();
  v42 = v17;
  v40 = self;
  if (objc_opt_isKindOfClass())
  {
    v29 = [(TPSMainViewController *)self presentedViewController];
    [v29 viewControllers];
    v30 = v22;
    v31 = v14;
    v32 = v26;
    v33 = v16;
    v34 = v27;
    v36 = v35 = v25;
    v37 = [v36 firstObject];

    v25 = v35;
    v27 = v34;
    v16 = v33;
    v26 = v32;
    v14 = v31;
    v22 = v30;
  }

  else
  {
    v37 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = v37;
    [v38 setAccessType:v27];
    (v26[2])(v26, v38);
    v39 = [v22 text];
    [v38 loadBookWithTitle:v39 identifier:v14 topicID:v25 version:v16];
  }

  else
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100016AD4;
    v43[3] = &unk_1000A3220;
    v44 = v22;
    v45 = v14;
    v46 = v16;
    v47 = v40;
    v49 = v27;
    v48 = v26;
    v50 = v41;
    [(TPSMainViewController *)v40 dismissViewControllerAnimated:1 completion:v43];

    v39 = v44;
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
  v5 = [(TPSMainViewController *)self appController];
  v6 = [v5 tips];

  v7 = [v6 mutableCopy];
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
  [v6 enumerateObjectsUsingBlock:&v15];
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

- (void)handleTipsURL:(id)a3
{
  v19 = [NSURLComponents componentsWithString:a3];
  v4 = [v19 scheme];
  v5 = [v4 isEqualToString:@"tips"];

  if (v5)
  {
    v6 = [v19 path];
    if ([v6 isEqualToString:@"open"])
    {
      v7 = [v19 queryItems];
      v8 = [v7 count];

      if (v8 < 2)
      {
        goto LABEL_13;
      }

      v9 = [v19 queryItems];
      v6 = [v9 firstObject];

      v10 = [v19 queryItems];
      v11 = [v10 objectAtIndexedSubscript:1];

      v12 = [v11 name];
      v13 = [v11 value];
      v14 = [v6 name];
      v15 = [v14 isEqualToString:@"type"];

      if (v15)
      {
        v16 = [v6 value];
        if ([v16 isEqualToString:@"shortcut"] && objc_msgSend(v12, "isEqualToString:", @"id"))
        {
          v17 = v13;
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
  v3 = [(TPSMainViewController *)self appController];
  v2 = [v3 fullTipContentManager];
  [v2 tipsAppActive];
}

- (void)applicationWillTerminate
{
  v2 = [(TPSMainViewController *)self tipsByCollectionViewController];
  [v2 applicationWillTerminate];

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
  v5 = [(TPSMainViewController *)self accessType];
  if (v5 == 2)
  {
    [(TPSMainViewController *)self logAnalyticsEventForAppForeground];
  }

  else if (v5 == 1)
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
  v6 = [v5 appBundleIDMap];
  [v6 removeAllObjects];

  [TPSAnalyticsEventAppLaunched appSessionEndedWithType:TPSAnalyticsLaunchTypeBackground];
  [(TPSMainViewController *)self updateAppInBackground:1];
  [(TPSMainViewController *)self setPendingShowTipIdentifier:0];

  [(TPSMainViewController *)self setPendingOpenUniversalURL:0];
}

- (void)resyncTipList
{
  v3 = [(TPSMainViewController *)self appController];
  if ([v3 viewNavigationCollapsed])
  {
    v4 = [(TPSMainViewController *)self tipsByCollectionViewController];
    v5 = [v4 view];
    v6 = [v5 window];

    if (!v6)
    {
      goto LABEL_5;
    }

    v3 = [(TPSMainViewController *)self tipsByCollectionViewController];
    [v3 continueVideoForCurrentTip];
  }

LABEL_5:
  appController = self->_appController;

  [(TPSUIAppController *)appController updateContent];
}

- (BOOL)isCollectionsViewVisible
{
  v3 = [(TPSMainViewController *)self splitViewController];
  if ([v3 displayMode] == 4)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TPSMainViewController *)self splitViewController];
    if ([v5 displayMode] == 5)
    {
      v4 = 1;
    }

    else
    {
      v7 = [(TPSMainViewController *)self splitViewController];
      v8 = [v7 displayMode];

      if (v8 == 6)
      {
        return 1;
      }

      v3 = [(TPSMainViewController *)self collectionListViewController];
      v5 = [v3 viewModel];
      if ([v5 viewCollapsed])
      {
        v9 = [(TPSMainViewController *)self collectionListViewController];
        v10 = [v9 view];
        v11 = [v10 window];
        v4 = v11 != 0;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (BOOL)canDisplayColumn:(int64_t)a3
{
  v5 = [(TPSMainViewController *)self appController];
  v6 = [v5 viewNavigationCollapsed];

  return !v6 || [(TPSMainViewController *)self currentCollapsedDisplayColumn]!= a3;
}

- (void)showCollectionsView
{
  if ([(TPSMainViewController *)self canDisplayColumn:0])
  {
    v3 = [(TPSMainViewController *)self splitViewController];
    [v3 showColumn:0];
  }
}

- (void)showTOCView
{
  if ([(TPSMainViewController *)self canDisplayColumn:1])
  {
    v3 = [(TPSMainViewController *)self splitViewController];
    [v3 showColumn:1];
  }
}

- (void)showTipsView
{
  if ([(TPSMainViewController *)self canDisplayColumn:2])
  {
    v3 = [(TPSMainViewController *)self splitViewController];
    [v3 showColumn:2];
  }
}

- (void)showTipWithID:(id)a3 launchType:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 length])
  {
    [(TPSMainViewController *)self showCollectionWithIdentifier:v9 launchType:v6];
  }

  else
  {
    v7 = [TPSAnalyticsEventAppLaunched eventWithContentID:0 collectionID:0 correlationID:0 launchType:v6];
    [v7 log];

    v8 = [(TPSMainViewController *)self collectionListViewController];
    [v8 analyticsIncreaseCountViewForNilTipIDWithLaunchType:v6];
  }
}

- (BOOL)openURL:(id)a3
{
  v4 = a3;
  v5 = +[TPSLogger default];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "open URL: %@", buf, 0xCu);
  }

  v6 = [[NSURLComponents alloc] initWithURL:v4 resolvingAgainstBaseURL:0];
  v7 = [v6 scheme];
  v8 = [v7 isEqualToString:TPSCommonDefinesURLSchemeKey];

  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = [v6 host];
  v10 = [v9 isEqualToString:TPSCommonDefinesURLSchemeParameterPathTypeOpen];

  if (!v10)
  {
    v20 = [v6 host];
    v21 = [v20 isEqualToString:TPSTipURLSchemeParameterPathTypeSearch];

    if (v21)
    {
      v22 = [v6 queryItems];
      v23 = [v22 na_firstObjectPassingTest:&stru_1000A32B0];

      v24 = [v23 value];
      v25 = [TPSAppSearchQuery queryWithSearchTerm:v24 origin:2];
      v19 = [(TPSMainViewController *)self handleSearchWithSearchQuery:v25];

      goto LABEL_25;
    }

    v26 = [v6 host];
    v27 = [v26 isEqualToString:TPSCommonDefinesURLSchemeTypeUserGuide];

    if (v27)
    {
      v28 = [TPSUserGuide getUserGuideFromURL:v4];
      v29 = [v28 referrer];
      v30 = [v29 length];

      if (v30)
      {
        v31 = [v28 topicIdentifier];
        v32 = [v28 referrer];
        v33 = [TPSAnalyticsEventAppLaunched eventWithContentID:v31 collectionID:0 correlationID:0 launchType:v32];
        [v33 log];
      }

      v34 = [v28 identifier];
      v35 = [v28 topicIdentifier];
      v36 = [v28 version];
      v37 = [v28 referrer];
      [(TPSMainViewController *)self displayUserGuideWithIdentifier:v34 topicId:v35 version:v36 platformIndependent:1 prefersLandingPage:1 referrer:v37];
    }

    else
    {
      v38 = [v6 host];
      v39 = [v38 isEqualToString:TPSCommonDefinesURLSchemeTypeSupportFlow];

      if (v39)
      {
        [(TPSMainViewController *)self handleSupportFlowDeeplink:v4];
      }
    }

LABEL_24:
    v19 = 0;
    goto LABEL_25;
  }

  v11 = [v6 queryItems];
  v42 = 0;
  v43 = 0;
  v41 = 0;
  [TPSDocument getValuesFromOpenURLSchemeQueryItems:v11 tipIdentifier:&v43 collectionIdentifier:&v42 referrer:&v41];
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

- (BOOL)handleUserActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = [v5 isEqualToString:CSSearchableItemActionType];

  if (v6)
  {
    v7 = [(TPSMainViewController *)self handleCoreSpotlightItemActivity:v4];
  }

  else
  {
    v8 = [v4 activityType];
    v9 = [v8 isEqualToString:CSQueryContinuationActionType];

    if (v9)
    {
      v7 = [(TPSMainViewController *)self handleContinueCoreSpotlightSearchActivity:v4];
    }

    else
    {
      v10 = [v4 activityType];
      v11 = [v10 isEqualToString:NSUserActivityTypeBrowsingWeb];

      if (!v11)
      {
        v12 = 0;
        goto LABEL_8;
      }

      v7 = [(TPSMainViewController *)self handleUniversalLinkWithUserActivity:v4];
    }
  }

  v12 = v7;
LABEL_8:

  return v12;
}

- (BOOL)handleContinueCoreSpotlightSearchActivity:(id)a3
{
  v4 = a3;
  [(TPSMainViewController *)self dismissViewControllerAnimated:1 completion:0];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:CSSearchQueryString];

  v7 = +[TPSLogger search];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10006A164(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = [TPSAppSearchQuery queryWithSearchTerm:v6 origin:1];
  v15 = [(TPSMainViewController *)self handleSearchWithSearchQuery:v14];

  return v15;
}

- (BOOL)handleCoreSpotlightItemActivity:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:CSSearchableItemActivityIdentifier];

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
      v17 = [v15 productId];
      v18 = [v16 topicId];
      v19 = [v16 version];
      v20 = +[TPSLogger search];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v27 = v17;
        v28 = 2112;
        v29 = v18;
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Opening user guide with productId: %@, topicId: %@, version: %@", buf, 0x20u);
      }

      if (v17 && v18)
      {
        [(TPSMainViewController *)self displayUserGuideWithIdentifier:v17 topicId:v18 version:v19 platformIndependent:1 prefersLandingPage:1 referrer:0];
      }

      v21 = [TPSAnalyticsEventAppLaunched eventWithContentID:0 collectionID:0 correlationID:0 launchType:v14];
      [v21 log];

      v22 = [(TPSMainViewController *)self collectionListViewController];
      [v22 analyticsIncreaseCountViewForNilTipIDWithLaunchType:v14];
    }

    else
    {
      v23 = [(TPSMainViewController *)self appController];
      v24 = [v23 collectionForIdentifier:v5];

      if (!v24)
      {
        [(TPSMainViewController *)self dismissViewControllerAnimated:1 completion:0];
        [(TPSMainViewController *)self showTipWithID:v5 launchType:v14];
        goto LABEL_14;
      }

      v17 = [NSString stringWithFormat:@"%@%@", @"#", v5];
      [(TPSMainViewController *)self showCollectionWithIdentifier:v17 launchType:v14];
    }

LABEL_14:
  }

  return v6 != 0;
}

- (BOOL)handleSearchWithSearchQuery:(id)a3
{
  v5 = a3;
  v6 = [v5 searchTerm];
  v7 = [v6 length];
  if (v7)
  {
    pendingAppSearchQuery = self->_pendingAppSearchQuery;
    self->_pendingAppSearchQuery = 0;

    v9 = +[TPSLogger search];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10006A23C(v6, v9, v10, v11, v12, v13, v14, v15);
    }

    if ([(TPSMainViewController *)self _isAppContentLoaded])
    {
      v16 = [(TPSMainViewController *)self collectionListViewController];
      v17 = [v16 canSearch];

      if (v17)
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000185BC;
        v25[3] = &unk_1000A2F98;
        v25[4] = self;
        v26 = v5;
        [UIView performWithoutAnimation:v25];
        v18 = v26;
LABEL_12:

        goto LABEL_13;
      }

      v20 = [(TPSMainViewController *)self tipsByCollectionViewController];
      v21 = [v20 canSearch];

      if (v21)
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100018654;
        v23[3] = &unk_1000A2F98;
        v23[4] = self;
        v24 = v5;
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

      objc_storeStrong(&self->_pendingAppSearchQuery, a3);
    }
  }

LABEL_13:

  return v7 != 0;
}

- (void)handleSearchFocus
{
  v3 = [(TPSMainViewController *)self collectionListViewController];
  v4 = [v3 canSearch];

  if (v4)
  {
    v5 = [(TPSMainViewController *)self collectionListViewController];
  }

  else
  {
    v6 = [(TPSMainViewController *)self tipsByCollectionViewController];
    v7 = [v6 canSearch];

    if (!v7)
    {
      return;
    }

    v5 = [(TPSMainViewController *)self tipsByCollectionViewController];
  }

  v8 = v5;
  [v5 focusSearch];
}

- (BOOL)_isAppContentLoaded
{
  v3 = [(TPSMainViewController *)self appController];
  if ([v3 updatingContent])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TPSMainViewController *)self appController];
    v4 = [v5 contentHasLoaded];
  }

  return v4;
}

- (BOOL)handleUniversalLinkWithUserActivity:(id)a3
{
  v4 = a3;
  [(TPSMainViewController *)self dismissViewControllerAnimated:1 completion:0];
  v5 = [v4 webpageURL];
  if (!v5)
  {
    LOBYTE(v9) = 0;
    goto LABEL_41;
  }

  v6 = +[TPSLogger default];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "open URL: %@", buf, 0xCu);
  }

  v7 = [NSURLComponents componentsWithURL:v5 resolvingAgainstBaseURL:1];
  v8 = [v7 host];
  v9 = [v8 isEqualToString:@"tips.apple.com"];

  if (!v9)
  {
    goto LABEL_40;
  }

  v10 = TPSAnalyticsLaunchTypeUniversalLink;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = [v7 queryItems];
  v12 = [v11 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v12)
  {

    v47 = 0;
    goto LABEL_31;
  }

  v13 = v12;
  obj = v11;
  v41 = v9;
  v46 = self;
  v42 = v7;
  v43 = v5;
  v44 = v4;
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
      v20 = [v19 name];
      v21 = [v20 isEqualToString:v17];

      if (v21)
      {
        v22 = [v19 value];
        if ([v22 length])
        {
          v23 = [v19 value];

          [TPSAnalyticsEventContentViewed setAppReferrer:v22];
          v10 = v23;
        }

        goto LABEL_20;
      }

      v24 = [v19 name];
      v25 = [v24 isEqualToString:@"category"];

      if (!v25)
      {
        v27 = [v19 name];
        v28 = [v27 isEqualToString:@"share"];

        if (!v28)
        {
          goto LABEL_21;
        }

        v22 = [v19 value];
        if ([v22 length])
        {
          v47 = v14;
          v29 = [(TPSMainViewController *)v46 appController];
          v30 = [v29 tipForVariantIdentifier:v22];

          if (!v30)
          {
            if ([(TPSMainViewController *)v46 _isAppContentLoaded])
            {
              [(TPSMainViewController *)v46 showModalTipWithVariantID:v22];
            }

            else
            {
              [(TPSMainViewController *)v46 setPendingSharedTipVariantID:v22];
            }

            v5 = v43;
            v4 = v44;
            v7 = v42;
            v35 = obj;

            LOBYTE(v9) = 1;
            goto LABEL_39;
          }

          v31 = [(TPSMainViewController *)v46 appController];
          [v31 logSharedTipDisplayed:v30 isEligible:1];

          v32 = [v30 identifier];

          v33 = v45;
          v10 = v33;
          v15 = v32;
        }

        goto LABEL_20;
      }

      v26 = [v19 value];

      if ([v26 length])
      {
        [NSString stringWithFormat:@"%@%@", @"#", v26];
        v22 = v15;
        v15 = v14 = v26;
LABEL_20:

        goto LABEL_21;
      }

      v14 = v26;
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
    v5 = v43;
    v4 = v44;
    v7 = v42;
    self = v46;
    LOBYTE(v9) = v41;
    goto LABEL_34;
  }

  v5 = v43;
  v4 = v44;
  v7 = v42;
  self = v46;
  LOBYTE(v9) = v41;
LABEL_31:
  v36 = [v7 path];
  v37 = [v36 componentsSeparatedByString:@"/"];

  if ([v37 count] != 6)
  {

    goto LABEL_38;
  }

  v38 = [v37 lastObject];

  v39 = v38;
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
  [(TPSMainViewController *)self setPendingOpenUniversalURL:v5];
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
  v4 = [(TPSMainViewController *)self tipsByCollectionViewController];
  [v4 setShouldHoldOffVideo:v3];
}

- (void)logAnalyticsEventForAppForeground
{
  v3 = [(TPSMainViewController *)self tipsByCollectionViewController];
  v4 = [(TPSMainViewController *)self tipsByCollectionViewController];
  v5 = [v4 view];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [v3 currentTip];
    v17 = [v7 identifier];

    v8 = [v3 collectionID];
    v9 = [v3 currentTip];
    v10 = [v9 correlationID];
LABEL_5:

    [TPSAnalyticsEventAppLaunched eventWithContentID:v17 collectionID:v8 correlationID:v10 launchType:TPSAnalyticsLaunchTypeForeground];
    goto LABEL_6;
  }

  v11 = [(TPSMainViewController *)self tipListViewController];
  v12 = [v11 view];
  v13 = [v12 window];

  if (v13)
  {
    v9 = [(TPSMainViewController *)self tipListViewController];
    v14 = [v9 viewModel];
    v15 = [v14 collection];
    v8 = [v15 identifier];

    v10 = 0;
    v17 = 0;
    goto LABEL_5;
  }

  v8 = 0;
  v10 = 0;
  v17 = 0;
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

- (int64_t)splitViewController:(id)a3 topColumnForCollapsingToProposedTopColumn:(int64_t)a4
{
  v7 = a3;
  [(TPSMainViewController *)self updateViewCollapsed:1];
  [(TPSMainViewController *)self updateCollectionListModelDynamicSections];
  if ((+[TPSCommonDefines isPhoneUI]& 1) != 0)
  {
    a4 = 0;
LABEL_3:
    [(TPSMainViewController *)self setCurrentCollapsedDisplayColumn:a4];
    v4 = a4;
    goto LABEL_9;
  }

  v8 = [v7 displayMode];
  v9 = v8;
  if (v8 <= 6 && ((1 << v8) & 0x68) != 0)
  {
    v4 = [(TPSMainViewController *)self isCollectionsViewVisible]^ 1;
  }

  if (v9 > 6 || ((1 << v9) & 0x68) == 0)
  {
    goto LABEL_3;
  }

LABEL_9:

  return v4;
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  [(TPSMainViewController *)self setCurrentDisplayMode:a4];
  [(TPSMainViewController *)self updateShouldHoldOffVideo];
  v5 = [(TPSMainViewController *)self view];
  [v5 setNeedsLayout];
}

- (id)tipsByCollectionViewController:(id)a3 tipsForCollectionID:(id)a4
{
  if ([TPSCommonDefines isChecklistCollectionWithIdentifier:a4])
  {
    v5 = [(TPSMainViewController *)self collectionListViewController];
    v6 = [v5 viewModel];

    v7 = [v6 checklistViewModel];
    [v7 updateTips];
    v8 = [v7 currentDisplayTips];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tipsViewControllerCurrentTipUpdated:(id)a3
{
  v16 = a3;
  v4 = [(TPSMainViewController *)self tipsByCollectionViewController];

  v5 = v16;
  if (v4 == v16)
  {
    v6 = [v16 currentTip];
    v7 = [v16 collectionID];
    v8 = [TPSCommonDefines isChecklistCollectionWithIdentifier:v7];

    if (v8)
    {
      v9 = [(TPSMainViewController *)self collectionListViewController];
      v10 = [v9 viewModel];

      v11 = [v10 checklistViewModel];
      v12 = [v6 identifier];
      if (v12)
      {
        [v11 setSelectedTipIdentifier:v12];
      }

      else
      {
        v14 = [v11 firstTip];
        v15 = [v14 identifier];
        [v11 setSelectedTipIdentifier:v15];
      }
    }

    else
    {
      v13 = [(TPSMainViewController *)self tipListViewController];
      v10 = [v13 viewModel];

      [v10 setCurrentTip:v6];
    }

    v5 = v16;
  }
}

- (void)tipsViewControllerContentUpdated:(id)a3
{
  v21 = a3;
  v4 = [(TPSMainViewController *)self tipsByCollectionViewController];

  v5 = v21;
  if (v4 == v21)
  {
    v6 = [v21 collectionID];
    v7 = [(TPSMainViewController *)self tipListViewController];
    v8 = [v7 viewModel];

    v9 = [(TPSMainViewController *)self appController];
    v10 = [v9 collectionForIdentifier:v6];

    v11 = [v8 collection];
    v12 = [v10 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      [v8 setCollection:v10];
    }

    v13 = [v21 tips];
    if ([v13 count])
    {
      v14 = [v21 tips];
    }

    else
    {
      v14 = &__NSArray0__struct;
    }

    [v8 setTips:v14];
    v15 = [v8 currentTip];
    v16 = [v14 containsObject:v15];

    if ((v16 & 1) == 0)
    {
      v17 = [v14 firstObject];
      v18 = [(TPSMainViewController *)self appController];
      v19 = [v18 viewNavigationCollapsed];

      if ((v19 & 1) == 0)
      {
        v20 = [v17 identifier];
        [v8 setSelectedTipIdentifier:v20];
      }

      [v8 setCurrentTip:v17];
    }

    v5 = v21;
  }
}

- (void)splitViewController:(id)a3 didHideColumn:(int64_t)a4
{
  if (!a4)
  {
    v6 = [(TPSMainViewController *)self tipListViewController];
    v5 = [v6 viewModel];
    [v5 updateSidebarVisibility:0];
  }
}

- (void)splitViewController:(id)a3 willShowColumn:(int64_t)a4
{
  if (!a4)
  {
    v6 = [(TPSMainViewController *)self tipListViewController];
    v5 = [v6 viewModel];
    [v5 updateSidebarVisibility:1];
  }
}

- (BOOL)tipsViewControllerShouldShowSearch:(id)a3
{
  v4 = a3;
  if ((+[TPSCommonDefines isPhoneUI]& 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(TPSMainViewController *)self appController];
    if ([v6 viewNavigationCollapsed])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [v4 isSharedVariant] ^ 1;
    }
  }

  return v5;
}

- (BOOL)tipsViewControllerShouldStartVideo:(id)a3
{
  v4 = a3;
  v5 = [(TPSMainViewController *)self tipsByCollectionViewController];

  if (v5 == v4)
  {
    return ![(TPSMainViewController *)self userGuideDisplayed];
  }

  else
  {
    return 1;
  }
}

- (void)helpViewControllerDoneButtonTapped:(id)a3
{
  [(TPSMainViewController *)self dismissViewControllerAnimated:1 completion:0];
  [(TPSMainViewController *)self setUserGuideDisplayed:0];
  v4 = [(TPSMainViewController *)self tipsByCollectionViewController];
  [v4 continueVideoForCurrentTip];
}

- (void)helpViewControllerSearchUsed:(id)a3
{
  v3 = +[TPSAnalyticsEventHLPSearchUsed event];
  [v3 log];
}

- (void)helpViewControllerTOCUsed:(id)a3
{
  v3 = +[TPSAnalyticsEventHLPTocUsed event];
  [v3 log];
}

- (void)helpViewControllerContentViewed:(id)a3 topicID:(id)a4 topicTitle:(id)a5 source:(id)a6 interfaceStyle:(int64_t)a7 fromTopicID:(id)a8 externalURLString:(id)a9
{
  v9 = &TPSConstellationContentUtilitiesAttributeLight;
  if (a7 != 1)
  {
    v9 = &TPSConstellationContentUtilitiesAttributeDark;
  }

  v10 = [TPSAnalyticsEventHLPContentViewed eventWithTopicID:a4 topicTitle:a5 source:a6 interfaceStyle:*v9 fromTopicID:a8 externalURLString:a9];
  [v10 log];
}

- (void)appViewControllerViewWillAppear:(id)a3
{
  v7 = a3;
  v4 = [(TPSMainViewController *)self appController];
  v5 = [v4 viewNavigationCollapsed];

  if (v5)
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

- (void)handleSupportFlowDeeplink:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for SupportFlowURLComponents();
  v9 = self;
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

  [(TPSMainViewController *)v9 displaySupportFlowWithIdentifier:v12];

  (*(v5 + 8))(v8, v4);
}

- (void)displaySupportFlowWithIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_10002BEE4(v4, v6);
}

- (void)presentURL:(id)a3 isModalInPresentation:(BOOL)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  TPSMainViewController.presentURL(_:isModalInPresentation:)(v10, a4);

  (*(v7 + 8))(v10, v6);
}

- (void)tipsViewController:(id)a3 didSelectSearchResult:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_10002D2C0(v10);

  sub_10001F870(v10, &qword_1000B2E90, &unk_100077E50);
}

- (void)tipsViewControllerHandleSupportArticleURL:(id)a3
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
  if (a3)
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
    v17 = self;
    URL.appendingSupportArticleQueryParam()();
    v18 = *(v6 + 8);
    v18(v14, v5);
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v18(v9, v5);
    [(TPSMainViewController *)v17 presentURL:v21 isModalInPresentation:1];

    sub_10001F870(v16, &unk_1000B3380, &qword_100079940);
  }
}

- (void)showModalTipWithVariantID:(id)a3
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = a3;
  v9 = self;
  v10 = [(TPSMainViewController *)v9 appController];
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v7;
  v11[4] = v9;
  v14[4] = sub_100047A58;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100047858;
  v14[3] = &unk_1000A3F60;
  v12 = _Block_copy(v14);
  v13 = v9;

  [(TPSUIAppController *)v10 contentForVariant:v8 completionHandler:v12];

  _Block_release(v12);
}

@end