@interface PhotosWindowSceneDelegate
+ (void)_showContactsPromptIfNecessary;
- (BOOL)_canProceedWithPhotoLibraryInGoodState;
- (BOOL)_isUserActivityExpired:(id)a3;
- (BOOL)finishExtendingStateRestorationForWidgetNavigation;
- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4;
- (PXImportViewControllerInstanceHost)importViewControllerInstanceHost;
- (PXLibraryFilterState)libraryFilterState;
- (PXProgrammaticNavigationDestination)px_navigationDestination;
- (PhotosWindowSceneDelegate)init;
- (UIViewController)rootViewController;
- (UIWindowScene)sceneExtendingStateRestoration;
- (double)screenScale;
- (id)actionMenuElementsForObjects:(id)a3 allowedActionTypes:(id)a4;
- (id)actionPerformerHostViewControllerForPresentingToast:(id)a3;
- (id)libraryFilterMenuActionImageNameForItemIndex:(int64_t)a3;
- (id)libraryFilterMenuActionTitleForItemIndex:(int64_t)a3;
- (id)nextExistingParticipantOnRouteToDestination:(id)a3;
- (id)presentationEnvironmentForActionPerformer:(id)a3;
- (id)shortcutURLForShortcutItem:(id)a3;
- (id)undoManagerForActionPerformer:(id)a3;
- (id)userActivityURLForUserActivity:(id)a3;
- (int64_t)libraryFilterMenuActionStateForItemIndex:(int64_t)a3;
- (unint64_t)tabBarController:(id)a3 tab:(id)a4 operationForAcceptingItemsFromDropSession:(id)a5;
- (void)_ensureLemonadeRootViewControllerExists;
- (void)_ensureSplitViewControllerExistsIfNeeded;
- (void)_ensureTabbedLibraryViewControllerExists;
- (void)_executePendingRequestsIfNeeded;
- (void)_handleFetchedMomentShare:(id)a3 forURL:(id)a4 error:(id)a5;
- (void)_handleFetchedSharedCollection:(id)a3 forURL:(id)a4 error:(id)a5;
- (void)_openItemProviderCollections:(id)a3;
- (void)_openMomentShareWithURL:(id)a3;
- (void)_openSharedCollectionWithURL:(id)a3;
- (void)_openSpotlightSearchActivity:(id)a3;
- (void)_openUniversalLinkActivity:(id)a3;
- (void)_retryProgrammaticNavigationToDestination:(id)a3;
- (void)beginExtendingStateRestorationForWidgetNavigation;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)openCloudKitShareWithURL:(id)a3;
- (void)openRoutingURL:(id)a3;
- (void)openUserActivity:(id)a3;
- (void)performActionWithType:(id)a3 objects:(id)a4 parameters:(id)a5;
- (void)performLibraryFilterMenuActionForItemAtIndex:(int64_t)a3;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)setupAppUI;
- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5;
- (void)tabBarController:(id)a3 displayOrderDidChangeForGroup:(id)a4;
- (void)tabBarController:(id)a3 tab:(id)a4 acceptItemsFromDropSession:(id)a5;
- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
- (void)windowScene:(id)a3 userDidAcceptCloudKitShareWithMetadata:(id)a4;
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

    v6 = [v5 userInfo];
    v7 = [v6 objectForKeyedSubscript:NSDebugDescriptionErrorKey];
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
    v14 = [(PhotosWindowSceneDelegate *)self mainWindow];
    [v14 setRootViewController:v13];

    v15 = [(PhotosWindowSceneDelegate *)self mainWindow];
    v16 = [v15 rootViewController];
    [v16 presentViewController:v11 animated:1 completion:0];
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
  v4 = [v3 enableTabs];

  if (v4)
  {
    [(PhotosWindowSceneDelegate *)self _ensureTabbedLibraryViewControllerExists];
  }

  else
  {
    [(PhotosWindowSceneDelegate *)self _ensureLemonadeRootViewControllerExists];
  }

  [(PhotosWindowSceneDelegate *)self _ensureSplitViewControllerExistsIfNeeded];
  v5 = [(PhotosWindowSceneDelegate *)self splitViewController];

  v6 = v4 ^ 1;
  if (v5)
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v7 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    collectionActionReceiver = self->_collectionActionReceiver;
    self->_collectionActionReceiver = v7;
  }

  v9 = [(PhotosWindowSceneDelegate *)self splitViewController];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    if (v4)
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

    v20 = [(PhotosWindowSceneDelegate *)self mainWindow];
    [v20 setRootViewController:v12];

    v21 = [(PhotosWindowSceneDelegate *)self mainWindow];
    [v21 becomeFirstResponder];

    v22 = v16;
  }

  else
  {
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "AddLibraryViewControllerToWindow", "", buf, 2u);
    }

    v17 = [(PhotosWindowSceneDelegate *)self mainWindow];
    [v17 setRootViewController:v12];

    v18 = [(PhotosWindowSceneDelegate *)self mainWindow];
    [v18 becomeFirstResponder];

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
  v24 = [(PhotosWindowSceneDelegate *)self mainWindow];
  [v23 setupOnInternalDevicesWithWindow:v24];
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

  v7 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];

  if (!v7)
  {
    v8 = [PhotosApplication px_photoLibrary]_0();
    v9 = [PUTabbedLibraryViewController alloc];
    v10 = [(PhotosWindowSceneDelegate *)self libraryFilterState];
    v11 = [v9 initWithPhotoLibrary:v8 libraryFilterState:v10 actionDelegate:self];
    [(PhotosWindowSceneDelegate *)self setTabbedLibraryViewController:v11];

    v12 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    [v12 setDelegate:self];

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

    v15 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    [v15 setSelectedContentMode:v13];

    v16 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    v17 = [v16 selectedNavigationController];

    if (v17)
    {
      v18 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
      [v18 navigateToInitialLocationInNavigationController:v17];
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
  v9 = [v8 wantsSplitViewController];

  v10 = [(PhotosWindowSceneDelegate *)self splitViewController];

  if (!v10 && v9)
  {
    v35 = v4 - 1;
    v36 = v4;
    v11 = [PhotosApplication px_photoLibrary]_0();
    v12 = [PUSidebarViewController alloc];
    v13 = [(PhotosWindowSceneDelegate *)self libraryFilterState];
    v14 = [v12 initWithNavigationRoot:self photoLibrary:v11 libraryFilterState:v13];

    v15 = [v14 navigationItem];
    [v15 setLargeTitleDisplayMode:2];

    [v14 setActionProviderDelegate:self];
    objc_storeStrong(&self->_collectionActionReceiver, v14);
    v16 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    v17 = +[PXLemonadeSettings sharedInstance];
    v18 = [v17 enableTabs];

    if (v18)
    {
      [v16 setSidebarViewController:v14];
      [v14 setTabBarController:v16];
      v19 = v16;
    }

    else
    {
      v19 = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
    }

    v22 = v19;
    v23 = [[PXSplitViewController alloc] initWithSidebarViewController:v14 contentViewController:v19];
    [v23 registerChangeObserver:v14];
    [v23 px_enableExtendedTraitCollection];
    [v23 setPreferredPrimaryColumnWidth:275.0];
    objc_storeStrong(&self->_splitViewController, v23);
    v24 = [(PhotosWindowSceneDelegate *)self splitViewController];
    v25 = [v24 traitCollection];
    v26 = [v25 horizontalSizeClass];

    if (v26 != 1)
    {
      v27 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
      v28 = [v27 selectedContentMode];

      if (v28 == 13)
      {
        v29 = [PXProgrammaticNavigationDestination alloc];
        v30 = [v11 px_virtualCollections];
        v31 = [v30 allAlbumsCollection];
        v32 = [v29 initWithObject:v31 revealMode:0];

        [v14 navigateToFallbackForDestination:v32];
      }
    }

    v7 = v35;
    v4 = v36;
    goto LABEL_15;
  }

  v20 = [(PhotosWindowSceneDelegate *)self splitViewController];
  v21 = (v20 == 0) | v9;

  if ((v21 & 1) == 0)
  {
    v11 = objc_alloc_init(UIViewController);
    v22 = [(PhotosWindowSceneDelegate *)self splitViewController];
    [v22 setViewController:v11 forColumn:2];
    [v22 setViewController:v11 forColumn:3];
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
  v8 = [(PhotosWindowSceneDelegate *)self pendingURLToOpen];
  if (v8)
  {
    [(PhotosWindowSceneDelegate *)self setPendingURLToOpen:0];
    [(PhotosWindowSceneDelegate *)self openRoutingURL:v8];
  }

  v3 = [(PhotosWindowSceneDelegate *)self pendingUserActivity];
  if (v3)
  {
    [(PhotosWindowSceneDelegate *)self setPendingUserActivity:0];
    [(PhotosWindowSceneDelegate *)self openUserActivity:v3];
  }

  v4 = [(PhotosWindowSceneDelegate *)self pendingProgrammaticNavigationRequestToOpen];
  if (v4)
  {
    [(PhotosWindowSceneDelegate *)self setPendingProgrammaticNavigationRequestToOpen:0];
    v5 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    if (v5)
    {
      PXProgrammaticNavigationRequestExecute();
    }

    else
    {
      v6 = [(PhotosWindowSceneDelegate *)self rootViewController];
      PXProgrammaticNavigationRequestExecute();
    }
  }

  v7 = [(PhotosWindowSceneDelegate *)self pendingCloudKitShareURLToOpen];
  if (v7)
  {
    [(PhotosWindowSceneDelegate *)self setPendingCloudKitShareURLToOpen:0];
    [(PhotosWindowSceneDelegate *)self openCloudKitShareWithURL:v7];
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

- (void)performLibraryFilterMenuActionForItemAtIndex:(int64_t)a3
{
  if (a3 <= 2)
  {
    v5 = PXLibraryFilterViewModeFromItemTag();
    v6 = [(PhotosWindowSceneDelegate *)self libraryFilterState];
    [v6 setViewMode:v5];
  }
}

- (int64_t)libraryFilterMenuActionStateForItemIndex:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  v3 = a3;
  v4 = [(PhotosWindowSceneDelegate *)self libraryFilterState];
  LOBYTE(v3) = [v4 isLibraryFilterActive:v3];

  return v3 & 1;
}

- (id)libraryFilterMenuActionImageNameForItemIndex:(int64_t)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = PXLibraryFilterMenuImageNameForItemTag();
  }

  return v4;
}

- (id)libraryFilterMenuActionTitleForItemIndex:(int64_t)a3
{
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(PhotosWindowSceneDelegate *)self libraryFilterState];
    v5 = [v4 menuItemTitleForLibraryFilter:a3];
  }

  return v5;
}

- (PXImportViewControllerInstanceHost)importViewControllerInstanceHost
{
  v3 = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___PXImportViewControllerInstanceHost];

  if (v4)
  {
    v5 = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
  }

  else
  {
    v6 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    v7 = [v6 conformsToProtocol:&OBJC_PROTOCOL___PXImportViewControllerInstanceHost];

    if (v7)
    {
      v5 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (PXProgrammaticNavigationDestination)px_navigationDestination
{
  v2 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
  v3 = [v2 px_navigationDestination];

  return v3;
}

- (id)nextExistingParticipantOnRouteToDestination:(id)a3
{
  v4 = +[PXLemonadeSettings sharedInstance];
  v5 = [v4 enableTabs];

  v6 = [(PhotosWindowSceneDelegate *)self splitViewController];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v8 = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
      }

      v12 = v10;

      goto LABEL_9;
    }
  }

  else if (!v6)
  {
    v11 = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
    goto LABEL_8;
  }

  v11 = v6;
LABEL_8:
  v12 = v11;
LABEL_9:

  return v12;
}

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(PhotosWindowSceneDelegate *)self nextExistingParticipantOnRouteToDestination:v12];
  v10 = v9;
  if (v9)
  {
    [v9 navigateToDestination:v12 options:a4 completionHandler:v8];
  }

  else
  {
    v11 = [[PXProgrammaticNavigationRequest alloc] initWithDestination:v12 options:a4 completionHandler:v8];
    [(PhotosWindowSceneDelegate *)self setPendingProgrammaticNavigationRequestToOpen:v11];
  }
}

- (id)actionPerformerHostViewControllerForPresentingToast:(id)a3
{
  v4 = [(PhotosWindowSceneDelegate *)self rootViewController];
  v5 = [v4 px_topmostPresentedViewController];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(PhotosWindowSceneDelegate *)self rootViewController];
  }

  v8 = v7;

  return v8;
}

- (id)presentationEnvironmentForActionPerformer:(id)a3
{
  v3 = [(PhotosWindowSceneDelegate *)self rootViewController];
  v4 = [PXViewControllerPresenter defaultPresenterWithViewController:v3];

  return v4;
}

- (id)undoManagerForActionPerformer:(id)a3
{
  v3 = [(PhotosWindowSceneDelegate *)self rootViewController];
  v4 = [v3 undoManager];

  return v4;
}

- (void)performActionWithType:(id)a3 objects:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [PXActionManagerFactory actionManagerForObjects:a4];
  [v10 setPerformerDelegate:self];
  v11 = [v10 actionTypeForGenericType:v8];
  if (v11 && ([v10 actionPerformerForActionType:v11 parameters:v9], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
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
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "unable to get an action performer for type '%@' and parameters %@", &v14, 0x16u);
    }
  }
}

- (id)actionMenuElementsForObjects:(id)a3 allowedActionTypes:(id)a4
{
  v6 = a4;
  v7 = [PXActionManagerFactory actionManagerForObjects:a3];
  [v7 setAllowedActionTypes:v6];

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

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v8 = a4;
  v5 = +[PUTabbedLibrarySettings sharedInstance];
  if (v5)
  {
    v6 = v5;
    v7 = [v8 isEqualToString:@"sidebarEnabled"];

    if (v7)
    {
      [(PhotosWindowSceneDelegate *)self setupAppUI];
    }
  }
}

- (void)tabBarController:(id)a3 tab:(id)a4 acceptItemsFromDropSession:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
  [v9 acceptItemsFromDropSession:v7 tab:v8];
}

- (unint64_t)tabBarController:(id)a3 tab:(id)a4 operationForAcceptingItemsFromDropSession:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
  v10 = [v9 operationForAcceptingItemsFromDropSession:v7 tab:v8];

  return v10;
}

- (void)tabBarController:(id)a3 displayOrderDidChangeForGroup:(id)a4
{
  v5 = a4;
  v6 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
  [v6 displayOrderDidChangeForGroup:v5];
}

- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5
{
  v16 = a4;
  v7 = a5;
  v8 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
  [v8 pu_didSelectTab:v16 previousTab:v7];

  LOBYTE(v8) = [v16 isEqual:v7];
  if ((v8 & 1) == 0)
  {
    v9 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    v10 = [v9 selectedContentMode];

    [PXPLLibraryContentModeSelection setPersistedLibraryContentModeSelection:v10];
    v11 = +[NSMutableDictionary dictionary];
    v12 = [NSNumber numberWithInt:v10];
    [v11 setObject:v12 forKeyedSubscript:PLLibraryContentModeChangedNotificationKey];

    v13 = [v16 viewController];
    v14 = [v13 px_navigationDestination];
    [v11 setObject:v14 forKeyedSubscript:PLLibraryDestinationChangedNotificationKey];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:PLLibraryContentModeChangedNotification object:0 userInfo:v11];
  }
}

- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 pu_shouldSelectTab:v6];
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

  v7 = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];

  if (!v7)
  {
    v8 = [PhotosApplication px_photoLibrary]_0();
    v9 = PXLemonadeViewControllerFactory();
    v10 = [v9 viewControllerWithPhotoLibrary:v8 destination:0];
    [(PhotosWindowSceneDelegate *)self setLemonadeRootViewController:v10];

    v11 = [(PhotosWindowSceneDelegate *)self lemonadeRootViewController];
    [v11 setActionProviderDelegate:self];
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

- (id)shortcutURLForShortcutItem:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  if ([v4 isEqualToString:@"com.apple.photos.shortcuts.recentphoto"])
  {
    v5 = @"photos://lastasset";
LABEL_3:
    v6 = [NSURL URLWithString:v5];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"com.apple.photos.shortcuts.bulletin"])
  {
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:kNotificationKeyDefaultURL];
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

  if ([v4 isEqualToString:@"com.apple.photos.shortcuts.search"])
  {
    v5 = @"photos://contentmode?id=search";
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"com.apple.photos.shortcuts.oneyearago"])
  {
    v5 = @"photos://oneyearago";
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"com.apple.photos.shortcuts.favorites"])
  {
    v5 = @"photos://album?name=favorites";
    goto LABEL_3;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (id)userActivityURLForUserActivity:(id)a3
{
  v5 = a3;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"localIdentifier"];
  v8 = [v5 activityType];
  v9 = [v8 isEqualToString:CSSearchableItemActionType];

  if (v9)
  {
    v10 = [v6 objectForKeyedSubscript:CSSearchableItemActivityIdentifier];
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

  v14 = [v6 objectForKeyedSubscript:@"contentMode"];
  v10 = v14;
  if (v14)
  {
    v15 = [v14 intValue];
    if (v15 == 12)
    {
      v16 = @"search";
      goto LABEL_22;
    }

    if (v15 == 10)
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

  v17 = [v5 activityType];
  v18 = [v17 isEqualToString:@"com.apple.mobileslideshow.album"];

  if (v18)
  {
    v19 = [v6 objectForKeyedSubscript:@"collectionSubtype"];
    v20 = [v6 objectForKeyedSubscript:@"uuid"];
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

  v25 = [v5 activityType];
  v26 = [v25 isEqualToString:@"com.apple.mobileslideshow.people"];

  if (v26)
  {
    v27 = [v6 objectForKeyedSubscript:@"identifier"];

    if (v27)
    {
      v28 = [v6 objectForKeyedSubscript:@"identifier"];
      v29 = [NSString stringWithFormat:@"?identifier=%@", v28];

      v22 = [@"photos://people" stringByAppendingString:v29];
    }

    else
    {
      v22 = @"photos://people";
    }

    goto LABEL_25;
  }

  v30 = [v5 activityType];
  v31 = [v30 isEqualToString:@"com.apple.mobileslideshow.places"];

  if (v31)
  {
    v22 = @"photos://places";
    goto LABEL_25;
  }

  v33 = [v5 activityType];
  v34 = [v33 isEqualToString:@"com.apple.mobileslideshow.memory"];

  if (v34)
  {
    v19 = [v6 objectForKeyedSubscript:@"identifier"];
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
    v35 = [v5 activityType];
    v36 = [v35 isEqualToString:@"com.apple.mobileslideshow.oneUp"];

    if (!v36)
    {
      goto LABEL_49;
    }

    v19 = [v6 objectForKeyedSubscript:@"collectionType"];
    v37 = [v6 objectForKeyedSubscript:@"collectionSubtype"];
    v38 = [v19 intValue];
    v39 = [v37 intValue];
    if (v38 == 1 && (v39 == 101 || v39 == 2))
    {
      v40 = [v6 objectForKeyedSubscript:@"selectedUUIDs"];
      v41 = [v40 objectAtIndexedSubscript:0];
      v42 = [v6 objectForKeyedSubscript:@"albumUUID"];
      [NSString stringWithFormat:@"photos://asset?uuid=%@&albumuuid=%@", v41, v42];
    }

    else
    {
      v40 = [PHAssetCollection px_builtInAlbumNameForSubtype:v39];
      v41 = [v6 objectForKeyedSubscript:@"selectedUUIDs"];
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

- (void)_handleFetchedMomentShare:(id)a3 forURL:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [v8 uuid];
    v12 = PLSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Did fetch moment share: %{public}@", buf, 0xCu);
    }

    v13 = PLSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Will open iCloud Link with UUID: %{public}@", buf, 0xCu);
    }

    v14 = [[PXProgrammaticNavigationDestination alloc] initWithObject:v8 revealMode:1];
    v15 = [PXProgrammaticNavigationRequest alloc];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100012C1C;
    v25[3] = &unk_100059F78;
    v26 = v11;
    v27 = v9;
    v16 = v11;
    v17 = [v15 initWithDestination:v14 options:0 completionHandler:v25];
    v18 = [(PhotosWindowSceneDelegate *)self rootViewController];
    PXProgrammaticNavigationRequestExecute();
  }

  else
  {
    v19 = PLSharingGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to fetch moment share with error: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v20 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    v21 = v20;
    if (!v20)
    {
      v21 = [(PhotosWindowSceneDelegate *)self rootViewController];
    }

    v22 = [PXViewControllerPresenter defaultPresenterWithViewController:v21];
    if (!v20)
    {
    }

    objc_copyWeak(&v24, buf);
    v23 = v9;
    PXMomentSharePresentRetryAlertForFetchFailure();

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }
}

- (void)_openItemProviderCollections:(id)a3
{
  v4 = a3;
  v5 = [NSURL URLWithString:@"photos://album?name=camera-roll"];
  [(PhotosWindowSceneDelegate *)self openRoutingURL:v5];

  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v4;
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
  v18 = self;
  v15 = [v14 importItemProviders:v6 completionHandler:v16];
}

- (void)_openMomentShareWithURL:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = PLSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will fetch moment share for URL: %@", buf, 0xCu);
  }

  objc_copyWeak(&v7, &location);
  v6 = v4;
  PXFetchMomentShareForURL();

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_handleFetchedSharedCollection:(id)a3 forURL:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [v8 uuid];
    v12 = PLSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will navigate to shared collection with UUID: %{public}@", buf, 0xCu);
    }

    v13 = [[PXProgrammaticNavigationDestination alloc] initWithObject:v8 revealMode:1];
    v14 = [PXProgrammaticNavigationRequest alloc];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100013578;
    v21 = &unk_100059F78;
    v22 = v11;
    v23 = v9;
    v15 = v11;
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
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch shared collection for navigating to, with error: %@", buf, 0xCu);
    }
  }
}

- (void)_openSharedCollectionWithURL:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = PLSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will fetch shared collection from URL: %@", buf, 0xCu);
  }

  v6 = [PhotosApplication px_photoLibrary]_0();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013834;
  v8[3] = &unk_100059F50;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [PXSharedCollectionsUtilities fetchSharedCollectionWithShareURL:v7 inPhotoLibrary:v6 acceptIfPending:1 completionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)openCloudKitShareWithURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = PLSharingGetLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v10 = "Asked to open a *nil* cloud-kit share URL";
    v11 = v9;
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

  if (([PXSharedCollectionsUtilities isSharedCollectionURL:v5]& 1) != 0)
  {
    v8 = 0;
    v7 = 1;
    goto LABEL_11;
  }

  if ((PXIsCMMURL() & 1) == 0)
  {
    v9 = PLSharingGetLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 138412290;
    v21 = v5;
    v10 = "Asked to open an unknown type of cloud-kit share URL: %@";
    v11 = v9;
    v12 = 12;
    goto LABEL_6;
  }

  v7 = 0;
  v8 = 1;
LABEL_11:
  v9 = [(PhotosWindowSceneDelegate *)self rootViewController];
  if (v9)
  {
    if (v6)
    {
      v13 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Will open Shared Library invitation with URL: %@", buf, 0xCu);
      }

      v14 = [PXSharedLibrarySourceLibraryInfoPhotoKit alloc];
      v15 = [PhotosApplication px_photoLibrary]_0();
      v16 = [v14 initWithPhotoLibrary:v15];

      v17 = [PXViewControllerPresenter defaultPresenterWithViewController:v9];
      v19 = v5;
      PXSharedLibraryHandleSharedLibraryURL();
    }

    else if (v7)
    {
      [(PhotosWindowSceneDelegate *)self _openSharedCollectionWithURL:v5];
    }

    else
    {
      if (!v8)
      {
        v18 = +[NSAssertionHandler currentHandler];
        [v18 handleFailureInMethod:a2 object:self file:@"PhotosWindowSceneDelegate.m" lineNumber:583 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      [(PhotosWindowSceneDelegate *)self _openMomentShareWithURL:v5];
    }
  }

  else
  {
    [(PhotosWindowSceneDelegate *)self setPendingCloudKitShareURLToOpen:v5];
  }

LABEL_23:
}

- (BOOL)finishExtendingStateRestorationForWidgetNavigation
{
  v3 = [(PhotosWindowSceneDelegate *)self sceneExtendingStateRestoration];

  if (v3)
  {
    [(PhotosWindowSceneDelegate *)self setCanExtendStateRestorationForWidgetNavigation:0];
    v4 = [(PhotosWindowSceneDelegate *)self sceneExtendingStateRestoration];
    [v4 completeStateRestoration];

    [(PhotosWindowSceneDelegate *)self setSceneExtendingStateRestoration:0];
  }

  return v3 != 0;
}

- (void)beginExtendingStateRestorationForWidgetNavigation
{
  if ([(PhotosWindowSceneDelegate *)self canExtendStateRestorationForWidgetNavigation])
  {
    v3 = [(PhotosWindowSceneDelegate *)self sceneExtendingStateRestoration];

    if (!v3)
    {
      v4 = [(PhotosWindowSceneDelegate *)self mainWindow];
      v5 = [v4 windowScene];
      [(PhotosWindowSceneDelegate *)self setSceneExtendingStateRestoration:v5];

      v6 = [(PhotosWindowSceneDelegate *)self sceneExtendingStateRestoration];
      [v6 extendStateRestoration];

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

- (void)openRoutingURL:(id)a3
{
  v4 = a3;
  v5 = [(PhotosWindowSceneDelegate *)self rootViewController];
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 absoluteString];
    *buf = 138412290;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Open Routing URL: %@", buf, 0xCu);
  }

  v8 = [v4 scheme];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 bundleIdentifier];
  v11 = [v8 caseInsensitiveCompare:v10] == 0;

  if (v11)
  {
    v20 = +[UIApplication sharedApplication];
    [v20 handleOAuthRedirectURL:v4];
  }

  else if (v5)
  {
    v12 = [[PXProgrammaticNavigationDestination alloc] initWithURL:v4];
    v13 = [v5 px_forwardingNavigationParticipantForDestination:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v5;
    }

    v16 = v15;

    if ([v16 routingOptionsForDestination:v12])
    {
      PXLemonadeAppearanceConfigureIfNeeded();
      v21 = [v12 source];
      v22 = [v21 isEqualToString:PXNavigationURLSourceWidget];

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
      v24 = v4;
      v25 = v12;
      [v16 navigateToDestination:v25 options:0 completionHandler:v23];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }

    else if (([v8 isEqualToString:@"photos-redirect"] & 1) != 0 || !objc_msgSend(v8, "isEqualToString:", @"photos"))
    {
      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_retryProgrammaticNavigationToDestination:" object:v12];
      [(PhotosWindowSceneDelegate *)self performSelector:"_retryProgrammaticNavigationToDestination:" withObject:v12 afterDelay:0.3];
    }

    else
    {
      v17 = [v4 resourceSpecifier];
      if ([v17 containsString:@"show-welcome-cpl"])
      {
        v18 = [[PXCloudPhotoWelcomeViewController alloc] initWithDefaultTitle];
        v19 = [[PXCloudPhotoWelcomeNavigationController alloc] initWithWelcomeController:v18];
        [v5 presentViewController:v19 animated:1 completion:0];
      }

      else if ([v17 containsString:@"edit"])
      {
        PUPhotoEditHandleURLAction();
      }
    }
  }

  else
  {
    [(PhotosWindowSceneDelegate *)self setPendingURLToOpen:v4];
  }
}

- (void)_retryProgrammaticNavigationToDestination:(id)a3
{
  v4 = a3;
  v5 = [(PhotosWindowSceneDelegate *)self rootViewController];
  if ([v5 routingOptionsForDestination:v4])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000146DC;
    v6[3] = &unk_10005C168;
    v7 = v4;
    [v5 navigateToDestination:v7 options:0 completionHandler:v6];
  }
}

- (void)_openSpotlightSearchActivity:(id)a3
{
  v4 = a3;
  [(PhotosWindowSceneDelegate *)self setDidRecieveSpotlightSearchActivity:1];
  v5 = +[PXSearchParsecAnalyticsSession sharedSession];
  [v5 reportPhotosAppLaunchedOrEnteredForegroundWithSpotlightSearchActivity];

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:CSSearchQueryString];

  v8 = PLPhotosSearchGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Spotlight Search: Continuing Spotlight search query: %@", buf, 0xCu);
  }

  if (v7 && [v7 length])
  {
    v9 = [(PhotosWindowSceneDelegate *)self rootViewController];
    v10 = [(PhotosWindowSceneDelegate *)self tabbedLibraryViewController];
    v11 = [[PXProgrammaticNavigationDestination alloc] initWithSearchText:v7];
    if (([v9 routingOptionsForDestination:v11]& 1) != 0)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100014AF4;
      v15[3] = &unk_10005C168;
      v16 = v11;
      [v9 navigateToDestination:v16 options:0 completionHandler:v15];
    }

    else if (v10)
    {
      v12 = [v10 viewControllers];
      v13 = [v12 count];

      if (!v13)
      {
        [v10 updateDisplayedTabsAnimated:0];
      }
    }

    else
    {
      v14 = PLPhotosSearchGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Spotlight Search: Setting pending user activity to open: %@", buf, 0xCu);
      }

      [(PhotosWindowSceneDelegate *)self setPendingUserActivity:v4];
    }
  }

  else
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Spotlight Search: Got unexpected empty string for Spotlight user activity: %@", buf, 0xCu);
    }
  }
}

- (void)_openUniversalLinkActivity:(id)a3
{
  v5 = a3;
  v6 = [(PhotosWindowSceneDelegate *)self rootViewController];
  v7 = PLUIGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PhotosWindowSceneDelegate: Handling NSUserActivityTypeBrowsingWeb: %@", buf, 0xCu);
    }

    v9 = [v5 webpageURL];
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
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PhotosWindowSceneDelegate: Found shared album invitation URL: %@", buf, 0xCu);
        }

        v14 = v6;
        if (([v14 conformsToProtocol:&OBJC_PROTOCOL___PXProgrammaticNavigationParticipant]& 1) == 0)
        {
          v18 = +[NSAssertionHandler currentHandler];
          v19 = [v14 px_descriptionForAssertionMessage];
          [v18 handleFailureInMethod:a2 object:self file:@"PhotosWindowSceneDelegate.m" lineNumber:371 description:{@"%@ should be nil or conform to protocol %@, but %@ doesn't", @"rootViewController", @"PXProgrammaticNavigationParticipant", v19}];

          v15 = &unk_100049000;
        }

        v16 = [[PhotosURLRedirectRequest alloc] initWithDestinationURL:v9 rootController:v14];
        v17 = PLUIGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15[53];
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PhotosWindowSceneDelegate: Handling shared album invitation URL: %@", buf, 0xCu);
        }

        [(PhotosURLRedirectRequest *)v16 performRequest];
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "PhotosWindowSceneDelegate: Ignoring unknown URL: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PhotosWindowSceneDelegate: Deferring handling of NSUserActivityTypeBrowsingWeb: %@", buf, 0xCu);
    }

    [(PhotosWindowSceneDelegate *)self setPendingUserActivity:v5];
  }
}

- (BOOL)_isUserActivityExpired:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"timestamp"];

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

- (void)openUserActivity:(id)a3
{
  v4 = a3;
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PhotosWindowSceneDelegate: received user activity: %@", &v13, 0xCu);
  }

  [(PhotosWindowSceneDelegate *)self setPendingUserActivity:0];
  v6 = [v4 activityType];
  if ([v6 isEqualToString:CSQueryContinuationActionType])
  {
    [(PhotosWindowSceneDelegate *)self _openSpotlightSearchActivity:v4];
  }

  else if ([v6 isEqualToString:NSUserActivityTypeBrowsingWeb])
  {
    [(PhotosWindowSceneDelegate *)self _openUniversalLinkActivity:v4];
  }

  else
  {
    v7 = [(PhotosWindowSceneDelegate *)self userActivityURLForUserActivity:v4];
    if (v7)
    {
      v8 = [(PhotosWindowSceneDelegate *)self _isUserActivityExpired:v4];
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
          v12 = [v7 absoluteString];
          v13 = 138412290;
          v14 = v12;
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
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to open user activity (can't convert to URL): %@", &v13, 0xCu);
      }
    }
  }
}

- (void)windowScene:(id)a3 didUpdateCoordinateSpace:(id)a4 interfaceOrientation:(int64_t)a5 traitCollection:(id)a6
{
  v6 = a3;
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:PXLemonadeWindowSceneDidUpdateNotification object:v6];
}

- (void)windowScene:(id)a3 userDidAcceptCloudKitShareWithMetadata:(id)a4
{
  v5 = a4;
  v6 = PLUserStatusGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Noting some activation options: cloud kit share metadata", &v9, 2u);
  }

  [(PhotosWindowSceneDelegate *)self setActivationOptions:2];
  if (v5)
  {
    v7 = [v5 share];
    v8 = [v7 URL];
    [(PhotosWindowSceneDelegate *)self openCloudKitShareWithURL:v8];
  }

  else
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to open : Cloud Kit Share Metadata %@", &v9, 0xCu);
    }
  }
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v5 = a4;
  v6 = PLUserStatusGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Noting some activation options: user activity", v7, 2u);
  }

  [(PhotosWindowSceneDelegate *)self setActivationOptions:2];
  [(PhotosWindowSceneDelegate *)self openUserActivity:v5];
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PLUserStatusGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Noting some activation options: shortcut item", &v12, 2u);
  }

  [(PhotosWindowSceneDelegate *)self setActivationOptions:2];
  v10 = [(PhotosWindowSceneDelegate *)self shortcutURLForShortcutItem:v7];
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
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to open shortcut (can't convert to URL): %@", &v12, 0xCu);
    }
  }

  v8[2](v8, v10 != 0);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v5 = a4;
  v6 = PLUserStatusGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Noting some activation options: URL contexts", &v10, 2u);
  }

  [(PhotosWindowSceneDelegate *)self setActivationOptions:2];
  v7 = [v5 anyObject];
  v8 = [v7 URL];

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
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to open URL contexts (can't convert to URL): %@", &v10, 0xCu);
    }
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = +[NSDate date];
  [(PhotosWindowSceneDelegate *)self setLastDidEnterBackgroundDate:v4];

  v5 = +[PXSearchParsecAnalyticsSession sharedSession];
  [v5 reportPhotosAppEnteredBackground];
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
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
    [v9 noteSceneWillEnterForeground:v4];
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

  v11 = [(PhotosWindowSceneDelegate *)self lastDidEnterBackgroundDate];
  v12 = +[PXKitSettings sharedInstance];
  [v12 viewResetTimeoutDuration];
  v14 = v13;

  if (v11)
  {
    v15 = +[NSDate date];
    [v15 timeIntervalSinceDate:v11];
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

- (void)sceneDidBecomeActive:(id)a3
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

- (void)sceneDidDisconnect:(id)a3
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

  v9 = [(PhotosWindowSceneDelegate *)self mainWindow];
  [v9 setHidden:1];

  [(PhotosWindowSceneDelegate *)self setMainWindow:0];
  v10 = v7;
  v11 = v10;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v5, "SceneDidDisconnect", "", v12, 2u);
  }
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
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
  v15 = [v9 userActivities];
  v16 = [v15 anyObject];

  v17 = [v9 URLContexts];
  v18 = [v17 anyObject];
  v19 = [v18 URL];
  v20 = v19;
  if (v19)
  {
    v52 = v19;
  }

  else
  {
    v21 = [v9 shortcutItem];
    v52 = [(PhotosWindowSceneDelegate *)self shortcutURLForShortcutItem:v21];
  }

  v22 = [v9 _itemProviderCollections];
  v23 = [v9 cloudKitShareMetadata];
  v24 = [v10 stateRestorationActivity];

  if (v16)
  {
    v25 = self;
    v26 = v16;
LABEL_9:
    [(PhotosWindowSceneDelegate *)v25 openUserActivity:v26];
    goto LABEL_18;
  }

  if ([v22 count])
  {
    [(PhotosWindowSceneDelegate *)self _openItemProviderCollections:v22];
  }

  else if (v52)
  {
    v47 = [v52 query];
    v27 = [v47 queryKeysAndValues];
    v28 = [v27 objectForKeyedSubscript:@"source"];
    v45 = [v28 isEqualToString:PXNavigationURLSourceWidget];

    if (v45)
    {
      [(PhotosWindowSceneDelegate *)self setCanExtendStateRestorationForWidgetNavigation:1];
    }

    [(PhotosWindowSceneDelegate *)self openRoutingURL:v52];
  }

  else if (v23)
  {
    v29 = [v23 share];
    v30 = [v29 URL];
    [(PhotosWindowSceneDelegate *)self openCloudKitShareWithURL:v30];
  }

  else if (v24)
  {
    v25 = self;
    v26 = v24;
    goto LABEL_9;
  }

LABEL_18:
  v31 = +[UIDevice currentDevice];
  v32 = +[PhotosAppSpec specForIdiom:](PhotosAppSpec, "specForIdiom:", [v31 userInterfaceIdiom]);
  [(PhotosWindowSceneDelegate *)self setSpec:v32];

  v33 = [UIWindow alloc];
  v34 = v8;
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
    v44 = [v34 px_descriptionForAssertionMessage];
    v48 = v42;
    v43 = v42;
    v39 = v46;
    [v46 handleFailureInMethod:a2 object:self file:@"PhotosWindowSceneDelegate.m" lineNumber:190 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"scene", v43, v44}];

    goto LABEL_28;
  }

LABEL_20:
  v35 = [v33 initWithWindowScene:v34];
  [(PhotosWindowSceneDelegate *)self setMainWindow:v35];

  v36 = [(PhotosWindowSceneDelegate *)self mainWindow];
  [v36 makeKeyAndVisible];

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
  v2 = [(PhotosWindowSceneDelegate *)self mainWindow];
  v3 = [v2 screen];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(PhotosWindowSceneDelegate *)self mainWindow];
  v3 = [v2 rootViewController];

  return v3;
}

@end