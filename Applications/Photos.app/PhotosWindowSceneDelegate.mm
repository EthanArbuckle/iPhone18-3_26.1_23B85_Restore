@interface PhotosWindowSceneDelegate
+ (void)_showContactsPromptIfNecessary;
- (BOOL)_canProceedWithPhotoLibraryInGoodState;
- (BOOL)_isUserActivityExpired:(id)expired;
- (BOOL)finishExtendingStateRestorationForWidgetNavigation;
- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab;
- (PXImportViewControllerInstanceHost)importViewControllerInstanceHost;
- (PXLibraryFilterState)libraryFilterState;
- (PXProgrammaticNavigationDestination)px_navigationDestination;
- (PhotosWindowSceneDelegate)init;
- (UIViewController)rootViewController;
- (UIWindowScene)sceneExtendingStateRestoration;
- (double)screenScale;
- (id)actionMenuElementsForObjects:(id)objects allowedActionTypes:(id)types;
- (id)actionPerformerHostViewControllerForPresentingToast:(id)toast;
- (id)libraryFilterMenuActionImageNameForItemIndex:(int64_t)index;
- (id)libraryFilterMenuActionTitleForItemIndex:(int64_t)index;
- (id)nextExistingParticipantOnRouteToDestination:(id)destination;
- (id)presentationEnvironmentForActionPerformer:(id)performer;
- (id)shortcutURLForShortcutItem:(id)item;
- (id)undoManagerForActionPerformer:(id)performer;
- (id)userActivityURLForUserActivity:(id)activity;
- (int64_t)libraryFilterMenuActionStateForItemIndex:(int64_t)index;
- (unint64_t)tabBarController:(id)controller tab:(id)tab operationForAcceptingItemsFromDropSession:(id)session;
- (void)_ensureLemonadeRootViewControllerExists;
- (void)_ensureSplitViewControllerExistsIfNeeded;
- (void)_ensureTabbedLibraryViewControllerExists;
- (void)_executePendingRequestsIfNeeded;
- (void)_handleFetchedMomentShare:(id)share forURL:(id)l error:(id)error;
- (void)_handleFetchedSharedCollection:(id)collection forURL:(id)l error:(id)error;
- (void)_openItemProviderCollections:(id)collections;
- (void)_openMomentShareWithURL:(id)l;
- (void)_openSharedCollectionWithURL:(id)l;
- (void)_openSpotlightSearchActivity:(id)activity;
- (void)_openUniversalLinkActivity:(id)activity;
- (void)_retryProgrammaticNavigationToDestination:(id)destination;
- (void)beginExtendingStateRestorationForWidgetNavigation;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)openCloudKitShareWithURL:(id)l;
- (void)openRoutingURL:(id)l;
- (void)openUserActivity:(id)activity;
- (void)performActionWithType:(id)type objects:(id)objects parameters:(id)parameters;
- (void)performLibraryFilterMenuActionForItemAtIndex:(int64_t)index;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)setupAppUI;
- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab;
- (void)tabBarController:(id)controller displayOrderDidChangeForGroup:(id)group;
- (void)tabBarController:(id)controller tab:(id)tab acceptItemsFromDropSession:(id)session;
- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)windowScene:(id)scene userDidAcceptCloudKitShareWithMetadata:(id)metadata;
@end

@implementation PhotosWindowSceneDelegate

- (PhotosWindowSceneDelegate)init
{
  v6.receiver = self;
  v6.super_class = PhotosWindowSceneDelegate;
  v2 = [(PhotosWindowSceneDelegate *)&v6 init];
  if (v2)
  {
    v3 = +[PUTabbedLibrarySettings sharedInstance];
    [v3 addDeferredKeyObserver:v2];

    v4 = +[PXApplicationState sharedState];
  }

  return v2;
}

- (BOOL)_canProceedWithPhotoLibraryInGoodState
{
  v3 = [PhotosApplication px_photoLibrary]_0();
  v19 = 0;
  v4 = [v3 shouldMobileSlideShowLaunchWithError:&v19];
  v5 = v19;
  if ((v4 & 1) == 0)
  {
    if (!+[PLModelMigrator shouldPromptUserForLibrarySchemaMismatch])
    {
      v18 = PLUIGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Photos library open failed with error %@", buf, 0xCu);
      }

      exit(0);
    }

    userInfo = [v5 userInfo];
    v7 = [userInfo objectForKeyedSubscript:NSDebugDescriptionErrorKey];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v5 debugDescription];
    }

    v10 = v9;

    v11 = [UIAlertController alertControllerWithTitle:@"Photos library open failed" message:v10 preferredStyle:0];
    v12 = dispatch_time(0, 10000000000);
    dispatch_after(v12, &_dispatch_main_q, &stru_10005A010);
    v13 = objc_opt_new();
    mainWindow = [(PhotosWindowSceneDelegate *)self mainWindow];
    [mainWindow setRootViewController:v13];

    mainWindow2 = [(PhotosWindowSceneDelegate *)self mainWindow];
    rootViewController = [mainWindow2 rootViewController];
    [rootViewController presentViewController:v11 animated:1 completion:0];
  }

  return v4;
}

- (void)setupAppUI
{
  if (PFProcessIsLaunchedToExecuteTests())
  {
    PXPhotosApplicationStartedLaunchingForTesting();
  }

  v3 = +[PXLemonadeSettings sharedInstance];
  enableTabs = [v3 enableTabs];

  if (enableTabs)
  {
    [(PhotosWindowSceneDelegate *)self _ensureTabbedLibraryViewControllerExists];
  }

  else
  {
    [(PhotosWindowSceneDelegate *)self _ensureLemonadeRootViewControllerExists];
  }

  [(PhotosWindowSceneDelegate *)self _ensureSplitViewControllerExistsIfNeeded];
  splitViewController = [(PhotosWindowSceneDelegate *)self splitViewController];

  v6 = enableTabs ^ 1;
  if (splitViewController)
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    collectionActionReceiver = self->_collectionActionReceiver;
    self->_collectionActionReceiver = tabbedLibraryViewController;
  }

  splitViewController2 = [(PhotosWindowSceneDelegate *)self splitViewController];
  v10 = splitViewController2;
  if (splitViewController2)
  {
    v11 = splitViewController2;
  }

  else
  {
    if (enableTabs)
    {
      [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    }

    else
    {
      [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
    }
    v11 = ;
  }

  v12 = v11;

  v13 = PLWindowSceneDelegateGetLog();
  v14 = os_signpost_id_generate(v13);
  v15 = v13;
  v16 = v15;
  if (v14 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    mainWindow = [(PhotosWindowSceneDelegate *)self mainWindow];
    [mainWindow setRootViewController:v12];

    mainWindow2 = [(PhotosWindowSceneDelegate *)self mainWindow];
    [mainWindow2 becomeFirstResponder];

    v22 = v16;
  }

  else
  {
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "AddLibraryViewControllerToWindow", "", buf, 2u);
    }

    mainWindow3 = [(PhotosWindowSceneDelegate *)self mainWindow];
    [mainWindow3 setRootViewController:v12];

    mainWindow4 = [(PhotosWindowSceneDelegate *)self mainWindow];
    [mainWindow4 becomeFirstResponder];

    v19 = v16;
    if (os_signpost_enabled(v19))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v14, "AddLibraryViewControllerToWindow", "", v25, 2u);
    }
  }

  [(PhotosWindowSceneDelegate *)self _executePendingRequestsIfNeeded];
  +[PhotosWindowSceneDelegate _showContactsPromptIfNecessary];
  v23 = +[PXDiagnosticsController sharedController];
  mainWindow5 = [(PhotosWindowSceneDelegate *)self mainWindow];
  [v23 setupOnInternalDevicesWithWindow:mainWindow5];
}

- (void)_ensureTabbedLibraryViewControllerExists
{
  v3 = PLWindowSceneDelegateGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v21[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CreateMainTabbedLibraryViewController", "", v21, 2u);
  }

  tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];

  if (!tabbedLibraryViewController)
  {
    v8 = [PhotosApplication px_photoLibrary]_0();
    v9 = [PUTabbedLibraryViewController alloc];
    libraryFilterState = [(PhotosWindowSceneDelegate *)self libraryFilterState];
    v11 = [v9 initWithPhotoLibrary:v8 libraryFilterState:libraryFilterState actionDelegate:self];
    [(PhotosWindowSceneDelegate *)self setTabbedLibraryViewController:v11];

    tabbedLibraryViewController2 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    [tabbedLibraryViewController2 setDelegate:self];

    if (+[PXPLLibraryContentModeSelection hasPersistedLibraryContentModeSelection])
    {
      LODWORD(v13) = +[PXPLLibraryContentModeSelection getPersistedLibraryContentModeSelection];
    }

    else
    {
      LODWORD(v13) = -1;
    }

    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21[0] = 67109120;
      v21[1] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[ForegroundState] lastSelectedTabMode=%i", v21, 8u);
    }

    if (v13 == -1)
    {
      v13 = 10;
    }

    else
    {
      v13 = v13;
    }

    tabbedLibraryViewController3 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    [tabbedLibraryViewController3 setSelectedContentMode:v13];

    tabbedLibraryViewController4 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    selectedNavigationController = [tabbedLibraryViewController4 selectedNavigationController];

    if (selectedNavigationController)
    {
      tabbedLibraryViewController5 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
      [tabbedLibraryViewController5 navigateToInitialLocationInNavigationController:selectedNavigationController];
    }
  }

  v19 = v6;
  v20 = v19;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(v21[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v4, "CreateMainTabbedLibraryViewController", "", v21, 2u);
  }
}

- (PXLibraryFilterState)libraryFilterState
{
  libraryFilterState = self->_libraryFilterState;
  if (!libraryFilterState)
  {
    v4 = [PhotosApplication px_photoLibrary]_0();
    v5 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v4];
    v6 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v5];
    v7 = self->_libraryFilterState;
    self->_libraryFilterState = v6;

    libraryFilterState = self->_libraryFilterState;
  }

  return libraryFilterState;
}

- (void)_ensureSplitViewControllerExistsIfNeeded
{
  v3 = PLWindowSceneDelegateGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  v7 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CreateSidebarViewController", "", buf, 2u);
  }

  v8 = +[PUTabbedLibrarySettings sharedInstance];
  wantsSplitViewController = [v8 wantsSplitViewController];

  splitViewController = [(PhotosWindowSceneDelegate *)self splitViewController];

  if (!splitViewController && wantsSplitViewController)
  {
    v35 = v4 - 1;
    v36 = v4;
    v11 = [PhotosApplication px_photoLibrary]_0();
    v12 = [PUSidebarViewController alloc];
    libraryFilterState = [(PhotosWindowSceneDelegate *)self libraryFilterState];
    v14 = [v12 initWithNavigationRoot:self photoLibrary:v11 libraryFilterState:libraryFilterState];

    navigationItem = [v14 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    [v14 setActionProviderDelegate:self];
    objc_storeStrong(&self->_collectionActionReceiver, v14);
    tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    v17 = +[PXLemonadeSettings sharedInstance];
    enableTabs = [v17 enableTabs];

    if (enableTabs)
    {
      [tabbedLibraryViewController setSidebarViewController:v14];
      [v14 setTabBarController:tabbedLibraryViewController];
      lemonadeRootViewController = tabbedLibraryViewController;
    }

    else
    {
      lemonadeRootViewController = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
    }

    splitViewController4 = lemonadeRootViewController;
    v23 = [[PXSplitViewController alloc] initWithSidebarViewController:v14 contentViewController:lemonadeRootViewController];
    [v23 registerChangeObserver:v14];
    [v23 px_enableExtendedTraitCollection];
    [v23 setPreferredPrimaryColumnWidth:275.0];
    objc_storeStrong(&self->_splitViewController, v23);
    splitViewController2 = [(PhotosWindowSceneDelegate *)self splitViewController];
    traitCollection = [splitViewController2 traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass != 1)
    {
      tabbedLibraryViewController2 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
      selectedContentMode = [tabbedLibraryViewController2 selectedContentMode];

      if (selectedContentMode == 13)
      {
        v29 = [PXProgrammaticNavigationDestination alloc];
        px_virtualCollections = [v11 px_virtualCollections];
        allAlbumsCollection = [px_virtualCollections allAlbumsCollection];
        v32 = [v29 initWithObject:allAlbumsCollection revealMode:0];

        [v14 navigateToFallbackForDestination:v32];
      }
    }

    v7 = v35;
    v4 = v36;
    goto LABEL_15;
  }

  splitViewController3 = [(PhotosWindowSceneDelegate *)self splitViewController];
  v21 = (splitViewController3 == 0) | wantsSplitViewController;

  if ((v21 & 1) == 0)
  {
    v11 = objc_alloc_init(UIViewController);
    splitViewController4 = [(PhotosWindowSceneDelegate *)self splitViewController];
    [splitViewController4 setViewController:v11 forColumn:2];
    [splitViewController4 setViewController:v11 forColumn:3];
    [(PhotosWindowSceneDelegate *)self setSplitViewController:0];
LABEL_15:
  }

  v33 = v6;
  v34 = v33;
  if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *v37 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_END, v4, "CreateSidebarViewController", "", v37, 2u);
  }
}

- (void)_executePendingRequestsIfNeeded
{
  pendingURLToOpen = [(PhotosWindowSceneDelegate *)self pendingURLToOpen];
  if (pendingURLToOpen)
  {
    [(PhotosWindowSceneDelegate *)self setPendingURLToOpen:0];
    [(PhotosWindowSceneDelegate *)self openRoutingURL:pendingURLToOpen];
  }

  pendingUserActivity = [(PhotosWindowSceneDelegate *)self pendingUserActivity];
  if (pendingUserActivity)
  {
    [(PhotosWindowSceneDelegate *)self setPendingUserActivity:0];
    [(PhotosWindowSceneDelegate *)self openUserActivity:pendingUserActivity];
  }

  pendingProgrammaticNavigationRequestToOpen = [(PhotosWindowSceneDelegate *)self pendingProgrammaticNavigationRequestToOpen];
  if (pendingProgrammaticNavigationRequestToOpen)
  {
    [(PhotosWindowSceneDelegate *)self setPendingProgrammaticNavigationRequestToOpen:0];
    tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    if (tabbedLibraryViewController)
    {
      PXProgrammaticNavigationRequestExecute();
    }

    else
    {
      rootViewController = [(PhotosWindowSceneDelegate *)self rootViewController];
      PXProgrammaticNavigationRequestExecute();
    }
  }

  pendingCloudKitShareURLToOpen = [(PhotosWindowSceneDelegate *)self pendingCloudKitShareURLToOpen];
  if (pendingCloudKitShareURLToOpen)
  {
    [(PhotosWindowSceneDelegate *)self setPendingCloudKitShareURLToOpen:0];
    [(PhotosWindowSceneDelegate *)self openCloudKitShareWithURL:pendingCloudKitShareURLToOpen];
  }
}

+ (void)_showContactsPromptIfNecessary
{
  v2 = PLWindowSceneDelegateGetLog();
  v3 = os_signpost_id_generate(v2);
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "ShowContactsPromptIfNecessary", "", buf, 2u);
  }

  if (PLIsChinaSKU())
  {
    v6 = +[PXPeopleUtilities sharedContactStore];
    [v6 requestAccessForEntityType:0 completionHandler:&stru_10005A030];
  }

  v7 = v5;
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v3, "ShowContactsPromptIfNecessary", "", v9, 2u);
  }
}

- (UIWindowScene)sceneExtendingStateRestoration
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneExtendingStateRestoration);

  return WeakRetained;
}

- (void)performLibraryFilterMenuActionForItemAtIndex:(int64_t)index
{
  if (index <= 2)
  {
    v5 = PXLibraryFilterViewModeFromItemTag();
    libraryFilterState = [(PhotosWindowSceneDelegate *)self libraryFilterState];
    [libraryFilterState setViewMode:v5];
  }
}

- (int64_t)libraryFilterMenuActionStateForItemIndex:(int64_t)index
{
  if (index > 2)
  {
    return 0;
  }

  indexCopy = index;
  libraryFilterState = [(PhotosWindowSceneDelegate *)self libraryFilterState];
  LOBYTE(indexCopy) = [libraryFilterState isLibraryFilterActive:indexCopy];

  return indexCopy & 1;
}

- (id)libraryFilterMenuActionImageNameForItemIndex:(int64_t)index
{
  if (index > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = PXLibraryFilterMenuImageNameForItemTag();
  }

  return v4;
}

- (id)libraryFilterMenuActionTitleForItemIndex:(int64_t)index
{
  if (index > 2)
  {
    v5 = 0;
  }

  else
  {
    libraryFilterState = [(PhotosWindowSceneDelegate *)self libraryFilterState];
    v5 = [libraryFilterState menuItemTitleForLibraryFilter:index];
  }

  return v5;
}

- (PXImportViewControllerInstanceHost)importViewControllerInstanceHost
{
  lemonadeRootViewController = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
  v4 = [lemonadeRootViewController conformsToProtocol:&OBJC_PROTOCOL___PXImportViewControllerInstanceHost];

  if (v4)
  {
    lemonadeRootViewController2 = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
  }

  else
  {
    tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    v7 = [tabbedLibraryViewController conformsToProtocol:&OBJC_PROTOCOL___PXImportViewControllerInstanceHost];

    if (v7)
    {
      lemonadeRootViewController2 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    }

    else
    {
      lemonadeRootViewController2 = 0;
    }
  }

  return lemonadeRootViewController2;
}

- (PXProgrammaticNavigationDestination)px_navigationDestination
{
  tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
  px_navigationDestination = [tabbedLibraryViewController px_navigationDestination];

  return px_navigationDestination;
}

- (id)nextExistingParticipantOnRouteToDestination:(id)destination
{
  v4 = +[PXLemonadeSettings sharedInstance];
  enableTabs = [v4 enableTabs];

  splitViewController = [(PhotosWindowSceneDelegate *)self splitViewController];
  v7 = splitViewController;
  if (enableTabs)
  {
    if (!splitViewController)
    {
      lemonadeRootViewController = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
      v9 = lemonadeRootViewController;
      if (lemonadeRootViewController)
      {
        tabbedLibraryViewController = lemonadeRootViewController;
      }

      else
      {
        tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
      }

      v12 = tabbedLibraryViewController;

      goto LABEL_9;
    }
  }

  else if (!splitViewController)
  {
    lemonadeRootViewController2 = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
    goto LABEL_8;
  }

  lemonadeRootViewController2 = splitViewController;
LABEL_8:
  v12 = lemonadeRootViewController2;
LABEL_9:

  return v12;
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  destinationCopy = destination;
  handlerCopy = handler;
  v9 = [(PhotosWindowSceneDelegate *)self nextExistingParticipantOnRouteToDestination:destinationCopy];
  v10 = v9;
  if (v9)
  {
    [v9 navigateToDestination:destinationCopy options:options completionHandler:handlerCopy];
  }

  else
  {
    v11 = [[PXProgrammaticNavigationRequest alloc] initWithDestination:destinationCopy options:options completionHandler:handlerCopy];
    [(PhotosWindowSceneDelegate *)self setPendingProgrammaticNavigationRequestToOpen:v11];
  }
}

- (id)actionPerformerHostViewControllerForPresentingToast:(id)toast
{
  rootViewController = [(PhotosWindowSceneDelegate *)self rootViewController];
  px_topmostPresentedViewController = [rootViewController px_topmostPresentedViewController];
  v6 = px_topmostPresentedViewController;
  if (px_topmostPresentedViewController)
  {
    rootViewController2 = px_topmostPresentedViewController;
  }

  else
  {
    rootViewController2 = [(PhotosWindowSceneDelegate *)self rootViewController];
  }

  v8 = rootViewController2;

  return v8;
}

- (id)presentationEnvironmentForActionPerformer:(id)performer
{
  rootViewController = [(PhotosWindowSceneDelegate *)self rootViewController];
  v4 = [PXViewControllerPresenter defaultPresenterWithViewController:rootViewController];

  return v4;
}

- (id)undoManagerForActionPerformer:(id)performer
{
  rootViewController = [(PhotosWindowSceneDelegate *)self rootViewController];
  undoManager = [rootViewController undoManager];

  return undoManager;
}

- (void)performActionWithType:(id)type objects:(id)objects parameters:(id)parameters
{
  typeCopy = type;
  parametersCopy = parameters;
  v10 = [PXActionManagerFactory actionManagerForObjects:objects];
  [v10 setPerformerDelegate:self];
  v11 = [v10 actionTypeForGenericType:typeCopy];
  if (v11 && ([v10 actionPerformerForActionType:v11 parameters:parametersCopy], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    [v12 performActionWithCompletionHandler:0];
  }

  else
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = typeCopy;
      v16 = 2112;
      v17 = parametersCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "unable to get an action performer for type '%@' and parameters %@", &v14, 0x16u);
    }
  }
}

- (id)actionMenuElementsForObjects:(id)objects allowedActionTypes:(id)types
{
  typesCopy = types;
  v7 = [PXActionManagerFactory actionManagerForObjects:objects];
  [v7 setAllowedActionTypes:typesCopy];

  [v7 setPerformerDelegate:self];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100011A6C;
  v11[3] = &unk_10005B8A8;
  v12 = v7;
  v8 = v7;
  v9 = [v8 contextMenuElementsWithHandler:v11];

  return v9;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  v5 = +[PUTabbedLibrarySettings sharedInstance];
  if (v5)
  {
    v6 = v5;
    v7 = [keyCopy isEqualToString:@"sidebarEnabled"];

    if (v7)
    {
      [(PhotosWindowSceneDelegate *)self setupAppUI];
    }
  }
}

- (void)tabBarController:(id)controller tab:(id)tab acceptItemsFromDropSession:(id)session
{
  sessionCopy = session;
  tabCopy = tab;
  tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
  [tabbedLibraryViewController acceptItemsFromDropSession:sessionCopy tab:tabCopy];
}

- (unint64_t)tabBarController:(id)controller tab:(id)tab operationForAcceptingItemsFromDropSession:(id)session
{
  sessionCopy = session;
  tabCopy = tab;
  tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
  v10 = [tabbedLibraryViewController operationForAcceptingItemsFromDropSession:sessionCopy tab:tabCopy];

  return v10;
}

- (void)tabBarController:(id)controller displayOrderDidChangeForGroup:(id)group
{
  groupCopy = group;
  tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
  [tabbedLibraryViewController displayOrderDidChangeForGroup:groupCopy];
}

- (void)tabBarController:(id)controller didSelectTab:(id)tab previousTab:(id)previousTab
{
  tabCopy = tab;
  previousTabCopy = previousTab;
  tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
  [tabbedLibraryViewController pu_didSelectTab:tabCopy previousTab:previousTabCopy];

  LOBYTE(tabbedLibraryViewController) = [tabCopy isEqual:previousTabCopy];
  if ((tabbedLibraryViewController & 1) == 0)
  {
    tabbedLibraryViewController2 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    selectedContentMode = [tabbedLibraryViewController2 selectedContentMode];

    [PXPLLibraryContentModeSelection setPersistedLibraryContentModeSelection:selectedContentMode];
    v11 = +[NSMutableDictionary dictionary];
    v12 = [NSNumber numberWithInt:selectedContentMode];
    [v11 setObject:v12 forKeyedSubscript:PLLibraryContentModeChangedNotificationKey];

    viewController = [tabCopy viewController];
    px_navigationDestination = [viewController px_navigationDestination];
    [v11 setObject:px_navigationDestination forKeyedSubscript:PLLibraryDestinationChangedNotificationKey];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:PLLibraryContentModeChangedNotification object:0 userInfo:v11];
  }
}

- (BOOL)tabBarController:(id)controller shouldSelectTab:(id)tab
{
  controllerCopy = controller;
  tabCopy = tab;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [controllerCopy pu_shouldSelectTab:tabCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_ensureLemonadeRootViewControllerExists
{
  v3 = PLWindowSceneDelegateGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CreateLemonadeRootViewController", "", v16, 2u);
  }

  lemonadeRootViewController = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];

  if (!lemonadeRootViewController)
  {
    v8 = [PhotosApplication px_photoLibrary]_0();
    v9 = PXLemonadeViewControllerFactory();
    v10 = [v9 viewControllerWithPhotoLibrary:v8 destination:0];
    [(PhotosWindowSceneDelegate *)self setLemonadeRootViewController:v10];

    lemonadeRootViewController2 = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
    [lemonadeRootViewController2 setActionProviderDelegate:self];
  }

  v12 = v6;
  v13 = v12;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v4, "CreateLemonadeRootViewController", "", v16, 2u);
  }

  if ((PXSolariumEnabled() & 1) == 0 && PLHasInternalUI())
  {
    v14 = CPAnalyticsEventTabIdentifierChanged;
    v17 = CPAnalyticsPayloadTabIdentifierDescriptionKey;
    v18 = @"Lemonade";
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [CPAnalytics sendEvent:v14 withPayload:v15];
  }
}

- (id)shortcutURLForShortcutItem:(id)item
{
  itemCopy = item;
  type = [itemCopy type];
  if ([type isEqualToString:@"com.apple.photos.shortcuts.recentphoto"])
  {
    v5 = @"photos://lastasset";
LABEL_3:
    v6 = [NSURL URLWithString:v5];
    goto LABEL_13;
  }

  if ([type isEqualToString:@"com.apple.photos.shortcuts.bulletin"])
  {
    userInfo = [itemCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:kNotificationKeyDefaultURL];
    if (v8)
    {
      v6 = [NSURL URLWithString:v8];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_13;
  }

  if ([type isEqualToString:@"com.apple.photos.shortcuts.search"])
  {
    v5 = @"photos://contentmode?id=search";
    goto LABEL_3;
  }

  if ([type isEqualToString:@"com.apple.photos.shortcuts.oneyearago"])
  {
    v5 = @"photos://oneyearago";
    goto LABEL_3;
  }

  if ([type isEqualToString:@"com.apple.photos.shortcuts.favorites"])
  {
    v5 = @"photos://album?name=favorites";
    goto LABEL_3;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (id)userActivityURLForUserActivity:(id)activity
{
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"localIdentifier"];
  activityType = [activityCopy activityType];
  v9 = [activityType isEqualToString:CSSearchableItemActionType];

  if (v9)
  {
    v10 = [userInfo objectForKeyedSubscript:CSSearchableItemActivityIdentifier];
    v11 = PLPhotosSearchGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 138412290;
        v48 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Photos Spotlight Search: will navigate to 1up for assetID: %@", buf, 0xCu);
      }

      [NSString stringWithFormat:@"photos://contentmode?id=photos&assetuuid=%@&oneUp=1", v10];
      goto LABEL_24;
    }

    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Photos Spotlight Search: unexpectedly received CSSearchableItemActionType without an assetUUID, navigating to photolibrary tab", buf, 2u);
    }

    v13 = @"photos://contentmode?id=photos";
    goto LABEL_23;
  }

  if (v7)
  {
    v10 = [PHObject uuidFromLocalIdentifier:v7];
    if (v10)
    {
      [NSString stringWithFormat:@"photos://asset?uuid=%@", v10];
      v22 = LABEL_24:;
      goto LABEL_25;
    }

    goto LABEL_49;
  }

  v14 = [userInfo objectForKeyedSubscript:@"contentMode"];
  v10 = v14;
  if (v14)
  {
    intValue = [v14 intValue];
    if (intValue == 12)
    {
      v16 = @"search";
      goto LABEL_22;
    }

    if (intValue == 10)
    {
      v16 = @"photos";
LABEL_22:
      v45 = v16;
      v13 = @"photos://contentmode?id=%@";
LABEL_23:
      [NSString stringWithFormat:v13, v45];
      goto LABEL_24;
    }

LABEL_49:
    v22 = 0;
    goto LABEL_25;
  }

  activityType2 = [activityCopy activityType];
  v18 = [activityType2 isEqualToString:@"com.apple.mobileslideshow.album"];

  if (v18)
  {
    v19 = [userInfo objectForKeyedSubscript:@"collectionSubtype"];
    v20 = [userInfo objectForKeyedSubscript:@"uuid"];
    v21 = v20;
    if (v20 && v19)
    {
      v44 = +[NSAssertionHandler currentHandler];
      [v44 handleFailureInMethod:a2 object:self file:@"PhotosWindowSceneDelegate.m" lineNumber:726 description:@"Conflicting parameters; prioritizing uuid"];
    }

    else if (!v20)
    {
      if (v19)
      {
        v32 = +[PHAssetCollection px_builtInAlbumNameForSubtype:](PHAssetCollection, "px_builtInAlbumNameForSubtype:", [v19 intValue]);
        if (v32)
        {
          v22 = [NSString stringWithFormat:@"photos://album?name=%@", v32];
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_52;
    }

    v22 = [NSString stringWithFormat:@"photos://album?uuid=%@", v21];
LABEL_52:

    goto LABEL_53;
  }

  activityType3 = [activityCopy activityType];
  v26 = [activityType3 isEqualToString:@"com.apple.mobileslideshow.people"];

  if (v26)
  {
    v27 = [userInfo objectForKeyedSubscript:@"identifier"];

    if (v27)
    {
      v28 = [userInfo objectForKeyedSubscript:@"identifier"];
      v29 = [NSString stringWithFormat:@"?identifier=%@", v28];

      v22 = [@"photos://people" stringByAppendingString:v29];
    }

    else
    {
      v22 = @"photos://people";
    }

    goto LABEL_25;
  }

  activityType4 = [activityCopy activityType];
  v31 = [activityType4 isEqualToString:@"com.apple.mobileslideshow.places"];

  if (v31)
  {
    v22 = @"photos://places";
    goto LABEL_25;
  }

  activityType5 = [activityCopy activityType];
  v34 = [activityType5 isEqualToString:@"com.apple.mobileslideshow.memory"];

  if (v34)
  {
    v19 = [userInfo objectForKeyedSubscript:@"identifier"];
    if ([v19 length])
    {
      v22 = [NSString stringWithFormat:@"photos://memory?identifier=%@", v19];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    activityType6 = [activityCopy activityType];
    v36 = [activityType6 isEqualToString:@"com.apple.mobileslideshow.oneUp"];

    if (!v36)
    {
      goto LABEL_49;
    }

    v19 = [userInfo objectForKeyedSubscript:@"collectionType"];
    v37 = [userInfo objectForKeyedSubscript:@"collectionSubtype"];
    intValue2 = [v19 intValue];
    intValue3 = [v37 intValue];
    if (intValue2 == 1 && (intValue3 == 101 || intValue3 == 2))
    {
      v40 = [userInfo objectForKeyedSubscript:@"selectedUUIDs"];
      v41 = [v40 objectAtIndexedSubscript:0];
      v42 = [userInfo objectForKeyedSubscript:@"albumUUID"];
      [NSString stringWithFormat:@"photos://asset?uuid=%@&albumuuid=%@", v41, v42];
    }

    else
    {
      v40 = [PHAssetCollection px_builtInAlbumNameForSubtype:intValue3];
      v41 = [userInfo objectForKeyedSubscript:@"selectedUUIDs"];
      v43 = [v41 objectAtIndexedSubscript:0];
      v42 = v43;
      if (v40)
      {
        [NSString stringWithFormat:@"photos://asset?uuid=%@&albumname=%@", v43, v40];
      }

      else
      {
        [NSString stringWithFormat:@"photos://asset?uuid=%@", v43, v46];
      }
    }
    v22 = ;
  }

LABEL_53:

LABEL_25:
  if (v22)
  {
    v23 = [NSURL URLWithString:v22];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_handleFetchedMomentShare:(id)share forURL:(id)l error:(id)error
{
  shareCopy = share;
  lCopy = l;
  errorCopy = error;
  if (shareCopy)
  {
    uuid = [shareCopy uuid];
    v12 = PLSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = uuid;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Did fetch moment share: %{public}@", buf, 0xCu);
    }

    v13 = PLSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = uuid;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Will open iCloud Link with UUID: %{public}@", buf, 0xCu);
    }

    v14 = [[PXProgrammaticNavigationDestination alloc] initWithObject:shareCopy revealMode:1];
    v15 = [PXProgrammaticNavigationRequest alloc];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100012C1C;
    v25[3] = &unk_100059F78;
    v26 = uuid;
    v27 = lCopy;
    v16 = uuid;
    v17 = [v15 initWithDestination:v14 options:0 completionHandler:v25];
    rootViewController = [(PhotosWindowSceneDelegate *)self rootViewController];
    PXProgrammaticNavigationRequestExecute();
  }

  else
  {
    v19 = PLSharingGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = errorCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to fetch moment share with error: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    rootViewController2 = tabbedLibraryViewController;
    if (!tabbedLibraryViewController)
    {
      rootViewController2 = [(PhotosWindowSceneDelegate *)self rootViewController];
    }

    v22 = [PXViewControllerPresenter defaultPresenterWithViewController:rootViewController2];
    if (!tabbedLibraryViewController)
    {
    }

    objc_copyWeak(&v24, buf);
    v23 = lCopy;
    PXMomentSharePresentRetryAlertForFetchFailure();

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }
}

- (void)_openItemProviderCollections:(id)collections
{
  collectionsCopy = collections;
  v5 = [NSURL URLWithString:@"photos://album?name=camera-roll"];
  [(PhotosWindowSceneDelegate *)self openRoutingURL:v5];

  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = collectionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addObjectsFromArray:*(*(&v19 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }

  v12 = PLUIGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v6 count];
    *buf = 134218242;
    v24 = v13;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "About to import %lu item providers (%@).", buf, 0x16u);
  }

  v14 = +[PXImportManager defaultManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100012FC0;
  v16[3] = &unk_100059FC8;
  v17 = @"photos://album?name=camera-roll";
  selfCopy = self;
  v15 = [v14 importItemProviders:v6 completionHandler:v16];
}

- (void)_openMomentShareWithURL:(id)l
{
  lCopy = l;
  objc_initWeak(&location, self);
  v5 = PLSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will fetch moment share for URL: %@", buf, 0xCu);
  }

  objc_copyWeak(&v7, &location);
  v6 = lCopy;
  PXFetchMomentShareForURL();

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_handleFetchedSharedCollection:(id)collection forURL:(id)l error:(id)error
{
  collectionCopy = collection;
  lCopy = l;
  errorCopy = error;
  if (collectionCopy)
  {
    uuid = [collectionCopy uuid];
    v12 = PLSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = uuid;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will navigate to shared collection with UUID: %{public}@", buf, 0xCu);
    }

    v13 = [[PXProgrammaticNavigationDestination alloc] initWithObject:collectionCopy revealMode:1];
    v14 = [PXProgrammaticNavigationRequest alloc];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100013578;
    v21 = &unk_100059F78;
    v22 = uuid;
    v23 = lCopy;
    v15 = uuid;
    v16 = [v14 initWithDestination:v13 options:0 completionHandler:&v18];
    v17 = [(PhotosWindowSceneDelegate *)self rootViewController:v18];
    PXProgrammaticNavigationRequestExecute();
  }

  else
  {
    v13 = PLSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = errorCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch shared collection for navigating to, with error: %@", buf, 0xCu);
    }
  }
}

- (void)_openSharedCollectionWithURL:(id)l
{
  lCopy = l;
  objc_initWeak(&location, self);
  v5 = PLSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = lCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will fetch shared collection from URL: %@", buf, 0xCu);
  }

  v6 = [PhotosApplication px_photoLibrary]_0();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013834;
  v8[3] = &unk_100059F50;
  objc_copyWeak(&v10, &location);
  v7 = lCopy;
  v9 = v7;
  [PXSharedCollectionsUtilities fetchSharedCollectionWithShareURL:v7 inPhotoLibrary:v6 acceptIfPending:1 completionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)openCloudKitShareWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    rootViewController = PLSharingGetLog();
    if (!os_log_type_enabled(rootViewController, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v10 = "Asked to open a *nil* cloud-kit share URL";
    v11 = rootViewController;
    v12 = 2;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_23;
  }

  v6 = PXIsSharedLibraryURL();
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  if (([PXSharedCollectionsUtilities isSharedCollectionURL:lCopy]& 1) != 0)
  {
    v8 = 0;
    v7 = 1;
    goto LABEL_11;
  }

  if ((PXIsCMMURL() & 1) == 0)
  {
    rootViewController = PLSharingGetLog();
    if (!os_log_type_enabled(rootViewController, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 138412290;
    v21 = lCopy;
    v10 = "Asked to open an unknown type of cloud-kit share URL: %@";
    v11 = rootViewController;
    v12 = 12;
    goto LABEL_6;
  }

  v7 = 0;
  v8 = 1;
LABEL_11:
  rootViewController = [(PhotosWindowSceneDelegate *)self rootViewController];
  if (rootViewController)
  {
    if (v6)
    {
      v13 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = lCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Will open Shared Library invitation with URL: %@", buf, 0xCu);
      }

      v14 = [PXSharedLibrarySourceLibraryInfoPhotoKit alloc];
      v15 = [PhotosApplication px_photoLibrary]_0();
      v16 = [v14 initWithPhotoLibrary:v15];

      v17 = [PXViewControllerPresenter defaultPresenterWithViewController:rootViewController];
      v19 = lCopy;
      PXSharedLibraryHandleSharedLibraryURL();
    }

    else if (v7)
    {
      [(PhotosWindowSceneDelegate *)self _openSharedCollectionWithURL:lCopy];
    }

    else
    {
      if (!v8)
      {
        v18 = +[NSAssertionHandler currentHandler];
        [v18 handleFailureInMethod:a2 object:self file:@"PhotosWindowSceneDelegate.m" lineNumber:583 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      [(PhotosWindowSceneDelegate *)self _openMomentShareWithURL:lCopy];
    }
  }

  else
  {
    [(PhotosWindowSceneDelegate *)self setPendingCloudKitShareURLToOpen:lCopy];
  }

LABEL_23:
}

- (BOOL)finishExtendingStateRestorationForWidgetNavigation
{
  sceneExtendingStateRestoration = [(PhotosWindowSceneDelegate *)self sceneExtendingStateRestoration];

  if (sceneExtendingStateRestoration)
  {
    [(PhotosWindowSceneDelegate *)self setCanExtendStateRestorationForWidgetNavigation:0];
    sceneExtendingStateRestoration2 = [(PhotosWindowSceneDelegate *)self sceneExtendingStateRestoration];
    [sceneExtendingStateRestoration2 completeStateRestoration];

    [(PhotosWindowSceneDelegate *)self setSceneExtendingStateRestoration:0];
  }

  return sceneExtendingStateRestoration != 0;
}

- (void)beginExtendingStateRestorationForWidgetNavigation
{
  if ([(PhotosWindowSceneDelegate *)self canExtendStateRestorationForWidgetNavigation])
  {
    sceneExtendingStateRestoration = [(PhotosWindowSceneDelegate *)self sceneExtendingStateRestoration];

    if (!sceneExtendingStateRestoration)
    {
      mainWindow = [(PhotosWindowSceneDelegate *)self mainWindow];
      windowScene = [mainWindow windowScene];
      [(PhotosWindowSceneDelegate *)self setSceneExtendingStateRestoration:windowScene];

      sceneExtendingStateRestoration2 = [(PhotosWindowSceneDelegate *)self sceneExtendingStateRestoration];
      [sceneExtendingStateRestoration2 extendStateRestoration];

      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "extended state restoration for widget navigation", buf, 2u);
      }

      objc_initWeak(buf, self);
      v8 = dispatch_time(0, 6000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100013F14;
      block[3] = &unk_100059F28;
      objc_copyWeak(&v10, buf);
      dispatch_after(v8, &_dispatch_main_q, block);
      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }
  }
}

- (void)openRoutingURL:(id)l
{
  lCopy = l;
  rootViewController = [(PhotosWindowSceneDelegate *)self rootViewController];
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    absoluteString = [lCopy absoluteString];
    *buf = 138412290;
    v28 = absoluteString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Open Routing URL: %@", buf, 0xCu);
  }

  scheme = [lCopy scheme];
  v9 = +[NSBundle mainBundle];
  bundleIdentifier = [v9 bundleIdentifier];
  v11 = [scheme caseInsensitiveCompare:bundleIdentifier] == 0;

  if (v11)
  {
    v20 = +[UIApplication sharedApplication];
    [v20 handleOAuthRedirectURL:lCopy];
  }

  else if (rootViewController)
  {
    v12 = [[PXProgrammaticNavigationDestination alloc] initWithURL:lCopy];
    v13 = [rootViewController px_forwardingNavigationParticipantForDestination:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = rootViewController;
    }

    v16 = v15;

    if ([v16 routingOptionsForDestination:v12])
    {
      PXLemonadeAppearanceConfigureIfNeeded();
      source = [v12 source];
      v22 = [source isEqualToString:PXNavigationURLSourceWidget];

      if (v22)
      {
        [(PhotosWindowSceneDelegate *)self beginExtendingStateRestorationForWidgetNavigation];
      }

      objc_initWeak(buf, self);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100014360;
      v23[3] = &unk_100059F00;
      objc_copyWeak(&v26, buf);
      v24 = lCopy;
      v25 = v12;
      [v16 navigateToDestination:v25 options:0 completionHandler:v23];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }

    else if (([scheme isEqualToString:@"photos-redirect"] & 1) != 0 || !objc_msgSend(scheme, "isEqualToString:", @"photos"))
    {
      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_retryProgrammaticNavigationToDestination:" object:v12];
      [(PhotosWindowSceneDelegate *)self performSelector:"_retryProgrammaticNavigationToDestination:" withObject:v12 afterDelay:0.3];
    }

    else
    {
      resourceSpecifier = [lCopy resourceSpecifier];
      if ([resourceSpecifier containsString:@"show-welcome-cpl"])
      {
        initWithDefaultTitle = [[PXCloudPhotoWelcomeViewController alloc] initWithDefaultTitle];
        v19 = [[PXCloudPhotoWelcomeNavigationController alloc] initWithWelcomeController:initWithDefaultTitle];
        [rootViewController presentViewController:v19 animated:1 completion:0];
      }

      else if ([resourceSpecifier containsString:@"edit"])
      {
        PUPhotoEditHandleURLAction();
      }
    }
  }

  else
  {
    [(PhotosWindowSceneDelegate *)self setPendingURLToOpen:lCopy];
  }
}

- (void)_retryProgrammaticNavigationToDestination:(id)destination
{
  destinationCopy = destination;
  rootViewController = [(PhotosWindowSceneDelegate *)self rootViewController];
  if ([rootViewController routingOptionsForDestination:destinationCopy])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000146DC;
    v6[3] = &unk_10005C168;
    v7 = destinationCopy;
    [rootViewController navigateToDestination:v7 options:0 completionHandler:v6];
  }
}

- (void)_openSpotlightSearchActivity:(id)activity
{
  activityCopy = activity;
  [(PhotosWindowSceneDelegate *)self setDidRecieveSpotlightSearchActivity:1];
  v5 = +[PXSearchParsecAnalyticsSession sharedSession];
  [v5 reportPhotosAppLaunchedOrEnteredForegroundWithSpotlightSearchActivity];

  userInfo = [activityCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:CSSearchQueryString];

  v8 = PLPhotosSearchGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Spotlight Search: Continuing Spotlight search query: %@", buf, 0xCu);
  }

  if (v7 && [v7 length])
  {
    rootViewController = [(PhotosWindowSceneDelegate *)self rootViewController];
    tabbedLibraryViewController = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    v11 = [[PXProgrammaticNavigationDestination alloc] initWithSearchText:v7];
    if (([rootViewController routingOptionsForDestination:v11]& 1) != 0)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100014AF4;
      v15[3] = &unk_10005C168;
      v16 = v11;
      [rootViewController navigateToDestination:v16 options:0 completionHandler:v15];
    }

    else if (tabbedLibraryViewController)
    {
      viewControllers = [tabbedLibraryViewController viewControllers];
      v13 = [viewControllers count];

      if (!v13)
      {
        [tabbedLibraryViewController updateDisplayedTabsAnimated:0];
      }
    }

    else
    {
      v14 = PLPhotosSearchGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = activityCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Spotlight Search: Setting pending user activity to open: %@", buf, 0xCu);
      }

      [(PhotosWindowSceneDelegate *)self setPendingUserActivity:activityCopy];
    }
  }

  else
  {
    rootViewController = PXAssertGetLog();
    if (os_log_type_enabled(rootViewController, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = activityCopy;
      _os_log_error_impl(&_mh_execute_header, rootViewController, OS_LOG_TYPE_ERROR, "Spotlight Search: Got unexpected empty string for Spotlight user activity: %@", buf, 0xCu);
    }
  }
}

- (void)_openUniversalLinkActivity:(id)activity
{
  activityCopy = activity;
  rootViewController = [(PhotosWindowSceneDelegate *)self rootViewController];
  v7 = PLUIGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (rootViewController)
  {
    if (v8)
    {
      *buf = 138412290;
      v21 = activityCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PhotosWindowSceneDelegate: Handling NSUserActivityTypeBrowsingWeb: %@", buf, 0xCu);
    }

    webpageURL = [activityCopy webpageURL];
    if (PXIsRetailExperienceManagerURL())
    {
      v10 = PLAppIntentsGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Will present PXRetailExperienceManager, deferring to workaround rdar://117412505", buf, 2u);
      }

      v11 = dispatch_time(0, 1000000000);
      dispatch_after(v11, &_dispatch_main_q, &stru_100059ED8);
    }

    else
    {
      v12 = PXSharedAlbumURLHandlingInvitationTokenForURL();

      v13 = PLUIGetLog();
      v14 = v13;
      if (v12)
      {
        v15 = &unk_100049000;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = webpageURL;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PhotosWindowSceneDelegate: Found shared album invitation URL: %@", buf, 0xCu);
        }

        v14 = rootViewController;
        if (([v14 conformsToProtocol:&OBJC_PROTOCOL___PXProgrammaticNavigationParticipant]& 1) == 0)
        {
          v18 = +[NSAssertionHandler currentHandler];
          px_descriptionForAssertionMessage = [v14 px_descriptionForAssertionMessage];
          [v18 handleFailureInMethod:a2 object:self file:@"PhotosWindowSceneDelegate.m" lineNumber:371 description:{@"%@ should be nil or conform to protocol %@, but %@ doesn't", @"rootViewController", @"PXProgrammaticNavigationParticipant", px_descriptionForAssertionMessage}];

          v15 = &unk_100049000;
        }

        v16 = [[PhotosURLRedirectRequest alloc] initWithDestinationURL:webpageURL rootController:v14];
        v17 = PLUIGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15[53];
          v21 = webpageURL;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PhotosWindowSceneDelegate: Handling shared album invitation URL: %@", buf, 0xCu);
        }

        [(PhotosURLRedirectRequest *)v16 performRequest];
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = webpageURL;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "PhotosWindowSceneDelegate: Ignoring unknown URL: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v21 = activityCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PhotosWindowSceneDelegate: Deferring handling of NSUserActivityTypeBrowsingWeb: %@", buf, 0xCu);
    }

    [(PhotosWindowSceneDelegate *)self setPendingUserActivity:activityCopy];
  }
}

- (BOOL)_isUserActivityExpired:(id)expired
{
  userInfo = [expired userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"timestamp"];

  v8 = 0;
  if (v4)
  {
    v5 = +[NSDate date];
    [v5 timeIntervalSinceDate:v4];
    v7 = v6;

    if (v7 > 480.0)
    {
      v8 = 1;
    }
  }

  return v8;
}

- (void)openUserActivity:(id)activity
{
  activityCopy = activity;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = activityCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PhotosWindowSceneDelegate: received user activity: %@", &v13, 0xCu);
  }

  [(PhotosWindowSceneDelegate *)self setPendingUserActivity:0];
  activityType = [activityCopy activityType];
  if ([activityType isEqualToString:CSQueryContinuationActionType])
  {
    [(PhotosWindowSceneDelegate *)self _openSpotlightSearchActivity:activityCopy];
  }

  else if ([activityType isEqualToString:NSUserActivityTypeBrowsingWeb])
  {
    [(PhotosWindowSceneDelegate *)self _openUniversalLinkActivity:activityCopy];
  }

  else
  {
    v7 = [(PhotosWindowSceneDelegate *)self userActivityURLForUserActivity:activityCopy];
    if (v7)
    {
      v8 = [(PhotosWindowSceneDelegate *)self _isUserActivityExpired:activityCopy];
      v9 = PLUIGetLog();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          LOWORD(v13) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "User activity expired, skipping navigation", &v13, 2u);
        }
      }

      else
      {
        if (v10)
        {
          absoluteString = [v7 absoluteString];
          v13 = 138412290;
          v14 = absoluteString;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PhotosWindowSceneDelegate: will navigate to URL: %@", &v13, 0xCu);
        }

        [(PhotosWindowSceneDelegate *)self openRoutingURL:v7];
      }
    }

    else
    {
      v11 = PLUIGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = activityCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to open user activity (can't convert to URL): %@", &v13, 0xCu);
      }
    }
  }
}

- (void)windowScene:(id)scene didUpdateCoordinateSpace:(id)space interfaceOrientation:(int64_t)orientation traitCollection:(id)collection
{
  sceneCopy = scene;
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:PXLemonadeWindowSceneDidUpdateNotification object:sceneCopy];
}

- (void)windowScene:(id)scene userDidAcceptCloudKitShareWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = PLUserStatusGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Noting some activation options: cloud kit share metadata", &v9, 2u);
  }

  [(PhotosWindowSceneDelegate *)self setActivationOptions:2];
  if (metadataCopy)
  {
    share = [metadataCopy share];
    v8 = [share URL];
    [(PhotosWindowSceneDelegate *)self openCloudKitShareWithURL:v8];
  }

  else
  {
    share = PLUIGetLog();
    if (os_log_type_enabled(share, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = 0;
      _os_log_impl(&_mh_execute_header, share, OS_LOG_TYPE_DEFAULT, "Unable to open : Cloud Kit Share Metadata %@", &v9, 0xCu);
    }
  }
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  activityCopy = activity;
  v6 = PLUserStatusGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Noting some activation options: user activity", v7, 2u);
  }

  [(PhotosWindowSceneDelegate *)self setActivationOptions:2];
  [(PhotosWindowSceneDelegate *)self openUserActivity:activityCopy];
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v9 = PLUserStatusGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Noting some activation options: shortcut item", &v12, 2u);
  }

  [(PhotosWindowSceneDelegate *)self setActivationOptions:2];
  v10 = [(PhotosWindowSceneDelegate *)self shortcutURLForShortcutItem:itemCopy];
  if (v10)
  {
    [(PhotosWindowSceneDelegate *)self openRoutingURL:v10];
  }

  else
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = itemCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to open shortcut (can't convert to URL): %@", &v12, 0xCu);
    }
  }

  handlerCopy[2](handlerCopy, v10 != 0);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  contextsCopy = contexts;
  v6 = PLUserStatusGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Noting some activation options: URL contexts", &v10, 2u);
  }

  [(PhotosWindowSceneDelegate *)self setActivationOptions:2];
  anyObject = [contextsCopy anyObject];
  v8 = [anyObject URL];

  if (v8)
  {
    [(PhotosWindowSceneDelegate *)self openRoutingURL:v8];
  }

  else
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = contextsCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to open URL contexts (can't convert to URL): %@", &v10, 0xCu);
    }
  }
}

- (void)sceneDidEnterBackground:(id)background
{
  v4 = +[NSDate date];
  [(PhotosWindowSceneDelegate *)self setLastDidEnterBackgroundDate:v4];

  v5 = +[PXSearchParsecAnalyticsSession sharedSession];
  [v5 reportPhotosAppEnteredBackground];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = PLWindowSceneDelegateGetLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SceneWillEnterForeground", "", buf, 2u);
  }

  if ([(PhotosWindowSceneDelegate *)self _canProceedWithPhotoLibraryInGoodState])
  {
    [(PhotosWindowSceneDelegate *)self setupAppUI];
    v9 = +[UIApplication sharedApplication];
    [v9 noteSceneWillEnterForeground:foregroundCopy];
  }

  if ([(PhotosWindowSceneDelegate *)self canExtendStateRestorationForWidgetNavigation])
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PhotosWindowSceneDelegate: finished state restoration", v22, 2u);
    }

    [(PhotosWindowSceneDelegate *)self setCanExtendStateRestorationForWidgetNavigation:0];
  }

  lastDidEnterBackgroundDate = [(PhotosWindowSceneDelegate *)self lastDidEnterBackgroundDate];
  v12 = +[PXKitSettings sharedInstance];
  [v12 viewResetTimeoutDuration];
  v14 = v13;

  if (lastDidEnterBackgroundDate)
  {
    v15 = +[NSDate date];
    [v15 timeIntervalSinceDate:lastDidEnterBackgroundDate];
    v17 = v16;

    if (v17 > v14)
    {
      v18 = +[NSNotificationCenter defaultCenter];
      [v18 postNotificationName:PXPhotosResetViewNotificationName object:self];
    }
  }

  v19 = v8;
  v20 = v19;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v6, "SceneWillEnterForeground", "", v21, 2u);
  }
}

- (void)sceneDidBecomeActive:(id)active
{
  v4 = PLUserStatusGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting activation options", v6, 2u);
  }

  [(PhotosWindowSceneDelegate *)self setActivationOptions:0];
  [(PhotosWindowSceneDelegate *)self setCanExtendStateRestorationForWidgetNavigation:0];
  if ([(PhotosWindowSceneDelegate *)self didRecieveSpotlightSearchActivity])
  {
    [(PhotosWindowSceneDelegate *)self setDidRecieveSpotlightSearchActivity:0];
  }

  else
  {
    v5 = +[PXSearchParsecAnalyticsSession sharedSession];
    [v5 reportPhotosAppLaunchedOrEnteredForegroundWithPreviousSearchText:0 previousSearchTokens:0];
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v4 = PLWindowSceneDelegateGetLog();
  v5 = os_signpost_id_generate(v4);
  v6 = v4;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SceneDidDisconnect", "", buf, 2u);
  }

  v8 = +[PXSearchParsecAnalyticsSession sharedSession];
  [v8 reportPhotosAppQuit];

  mainWindow = [(PhotosWindowSceneDelegate *)self mainWindow];
  [mainWindow setHidden:1];

  [(PhotosWindowSceneDelegate *)self setMainWindow:0];
  v10 = v7;
  v11 = v10;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v5, "SceneDidDisconnect", "", v12, 2u);
  }
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  sessionCopy = session;
  v11 = PLWindowSceneDelegateGetLog();
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  v51 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SceneWillConnectToSession", "", buf, 2u);
  }

  spid = v12;

  [(PhotosWindowSceneDelegate *)self setActivationOptions:PXCloudQuotaUpsellSheetManagerActivationOptionsForSceneConnectionOptions()];
  userActivities = [optionsCopy userActivities];
  anyObject = [userActivities anyObject];

  uRLContexts = [optionsCopy URLContexts];
  anyObject2 = [uRLContexts anyObject];
  v19 = [anyObject2 URL];
  v20 = v19;
  if (v19)
  {
    v52 = v19;
  }

  else
  {
    shortcutItem = [optionsCopy shortcutItem];
    v52 = [(PhotosWindowSceneDelegate *)self shortcutURLForShortcutItem:shortcutItem];
  }

  _itemProviderCollections = [optionsCopy _itemProviderCollections];
  cloudKitShareMetadata = [optionsCopy cloudKitShareMetadata];
  stateRestorationActivity = [sessionCopy stateRestorationActivity];

  if (anyObject)
  {
    selfCopy2 = self;
    v26 = anyObject;
LABEL_9:
    [(PhotosWindowSceneDelegate *)selfCopy2 openUserActivity:v26];
    goto LABEL_18;
  }

  if ([_itemProviderCollections count])
  {
    [(PhotosWindowSceneDelegate *)self _openItemProviderCollections:_itemProviderCollections];
  }

  else if (v52)
  {
    query = [v52 query];
    queryKeysAndValues = [query queryKeysAndValues];
    v28 = [queryKeysAndValues objectForKeyedSubscript:@"source"];
    v45 = [v28 isEqualToString:PXNavigationURLSourceWidget];

    if (v45)
    {
      [(PhotosWindowSceneDelegate *)self setCanExtendStateRestorationForWidgetNavigation:1];
    }

    [(PhotosWindowSceneDelegate *)self openRoutingURL:v52];
  }

  else if (cloudKitShareMetadata)
  {
    share = [cloudKitShareMetadata share];
    v30 = [share URL];
    [(PhotosWindowSceneDelegate *)self openCloudKitShareWithURL:v30];
  }

  else if (stateRestorationActivity)
  {
    selfCopy2 = self;
    v26 = stateRestorationActivity;
    goto LABEL_9;
  }

LABEL_18:
  v31 = +[UIDevice currentDevice];
  v32 = +[PhotosAppSpec specForIdiom:](PhotosAppSpec, "specForIdiom:", [v31 userInterfaceIdiom]);
  [(PhotosWindowSceneDelegate *)self setSpec:v32];

  v33 = [UIWindow alloc];
  v34 = sceneCopy;
  if (!v34)
  {
    v39 = +[NSAssertionHandler currentHandler];
    v40 = objc_opt_class();
    v48 = NSStringFromClass(v40);
    [v39 handleFailureInMethod:a2 object:self file:@"PhotosWindowSceneDelegate.m" lineNumber:190 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"scene", v48}];
LABEL_28:

    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v46 = +[NSAssertionHandler currentHandler];
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    px_descriptionForAssertionMessage = [v34 px_descriptionForAssertionMessage];
    v48 = v42;
    v43 = v42;
    v39 = v46;
    [v46 handleFailureInMethod:a2 object:self file:@"PhotosWindowSceneDelegate.m" lineNumber:190 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"scene", v43, px_descriptionForAssertionMessage}];

    goto LABEL_28;
  }

LABEL_20:
  v35 = [v33 initWithWindowScene:v34];
  [(PhotosWindowSceneDelegate *)self setMainWindow:v35];

  mainWindow = [(PhotosWindowSceneDelegate *)self mainWindow];
  [mainWindow makeKeyAndVisible];

  v37 = v14;
  v38 = v37;
  if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *v53 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, spid, "SceneWillConnectToSession", "", v53, 2u);
  }
}

- (double)screenScale
{
  mainWindow = [(PhotosWindowSceneDelegate *)self mainWindow];
  screen = [mainWindow screen];
  v4 = screen;
  if (screen)
  {
    v5 = screen;
  }

  else
  {
    v5 = +[UIScreen px_mainScreen];
  }

  v6 = v5;

  [v6 scale];
  if (v7 == 0.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (UIViewController)rootViewController
{
  mainWindow = [(PhotosWindowSceneDelegate *)self mainWindow];
  rootViewController = [mainWindow rootViewController];

  return rootViewController;
}

@end