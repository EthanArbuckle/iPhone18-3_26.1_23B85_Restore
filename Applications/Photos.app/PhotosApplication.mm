@interface PhotosApplication
+ (id)_appIntentsActionManagerForAssets:(id)assets;
+ (id)_appIntentsErrorForError:(id)error;
+ (void)_donateTipsAppPhotosSignals;
+ (void)_performActionType:(id)type assets:(id)assets completionHandler:(id)handler;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (NSUndoManager)fallbackUndoManager;
- (PUTabbedLibraryViewController)keyTabbedLibraryViewController;
- (PXActionManager)assetActionManager;
- (PXCollectionActionReceiver)keyCollectionActionReceiver;
- (PXLibraryActionReceiver)libraryActionReceiver;
- (UIScene)applicationScene;
- (UIViewController)contentViewController;
- (UIViewController)keyRootViewController;
- (double)displayScale;
- (id)_currentlyOpenEditSessionControllerForAsset:(id)asset;
- (id)_newImportViewController;
- (id)detailTextForGuidedAccessRestrictionWithIdentifier:(id)identifier;
- (id)importViewControllerInstanceHost;
- (id)keySpec;
- (id)photosWindowSceneDelegate;
- (id)provideNavigationDestination;
- (id)px_photoLibrary;
- (id)stateCaptureDictionary;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)textForGuidedAccessRestrictionWithIdentifier:(id)identifier;
- (void)_beginUndoActionsInvalidator;
- (void)_dequeueNextImportDevice;
- (void)_displayAndRemovePhoneInvitationFailures;
- (void)_navigateToDestination:(id)destination debugDescription:(id)description completionHandler:(id)handler;
- (void)_satisfyAppIntentsURLNavigationPerformerRequestsIfNecessary;
- (void)_showAppleMusicPromptsIfNecessaryWithCompletion:(id)completion;
- (void)_showCloudPhotoLibraryExitPromptIfNecessary;
- (void)_showUserNotificationsPromptIfNecessaryWithCompletion:(id)completion;
- (void)_showWelcomeViewControllersIfNecessaryWithCompletion:(id)completion;
- (void)_tearDownImportViewController;
- (void)_userDidTakeScreenshot:(id)screenshot;
- (void)addAssetsToAlbum:(id)album;
- (void)addAssetsToLastUsedAlbum:(id)album;
- (void)addAssetsToSharedCollection:(id)collection;
- (void)adjustDateTime:(id)time;
- (void)adjustLocation:(id)location;
- (void)applicationDidFinishLaunching:(id)launching;
- (void)buildMenuWithBuilder:(id)builder;
- (void)canPerformEditRequestWithAssets:(id)assets adjustments:(id)adjustments completionHandler:(id)handler;
- (void)copy:(id)copy;
- (void)copyAdjustments:(id)adjustments;
- (void)copyEditsFromAsset:(id)asset completionHandler:(id)handler;
- (void)duplicateAssets:(id)assets;
- (void)favoriteAssets:(id)assets;
- (void)find:(id)find;
- (void)handleOAuthRedirectURL:(id)l;
- (void)hideAssets:(id)assets;
- (void)importController:(id)controller addedImportSource:(id)source;
- (void)importController:(id)controller removedImportSource:(id)source;
- (void)makeKeyPhoto:(id)photo;
- (void)mergeDuplicates:(id)duplicates;
- (void)mergeDuplicatesWithoutConfirmation:(id)confirmation;
- (void)navigateToURLDestination:(id)destination completionHandler:(id)handler;
- (void)newMemoryMovie:(id)movie;
- (void)noteSceneWillEnterForeground:(id)foreground;
- (void)pasteAdjustments:(id)adjustments;
- (void)pasteEditsToAssets:(id)assets completionHandler:(id)handler;
- (void)performEditRequestWithAssets:(id)assets adjustments:(id)adjustments completionHandler:(id)handler;
- (void)performNebuladCrashRecoveryIfNeededForceEndLastTimelapseSession:(BOOL)session;
- (void)performSearchWithDecoratedQuery:(id)query completionHandler:(id)handler;
- (void)performSearchWithQuery:(id)query completionHandler:(id)handler;
- (void)photosPreferencesChanged;
- (void)prepareForApplicationDidBecomeActive;
- (void)prepareForApplicationDidEnterBackground;
- (void)prepareForApplicationWillEnterForeground;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)print:(id)print;
- (void)providePhotoLibrary:(id)library;
- (void)redo:(id)redo;
- (void)revertAdjustments:(id)adjustments;
- (void)shareAssets:(id)assets;
- (void)toggleLibraryFilter:(id)filter;
- (void)trashAssets:(id)assets;
- (void)trashAssetsWithoutConfirmation:(id)confirmation;
- (void)undo:(id)undo;
- (void)updateShowHiddenAlbumCachedValue;
- (void)updateShowRecentlyViewedAndSharedAlbumCachedValue;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
- (void)validateCommand:(id)command;
@end

@implementation PhotosApplication

- (id)px_photoLibrary
{
  os_unfair_lock_lock(&unk_1000665E0);
  v0 = qword_1000665E8;
  if (!qword_1000665E8)
  {
    v1 = +[PLPhotoLibraryPathManager systemLibraryURL];
    if (PLMobileSlideShowPhotoLibraryTestingMode() == 2)
    {
      v2 = objc_alloc_init(PHPhotoLibraryManager);
      v3 = +[PHPhotoLibraryCreationOptions creationOptionsForUserLibrary];
      [v3 setInternalCreateOptions:211];
      v13 = 0;
      v4 = [v2 createPhotoLibraryWithURL:v1 options:v3 error:&v13];
      v5 = v13;
      if (v4)
      {
        v6 = PLBackendGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = +[NSBundle mainBundle];
          bundleIdentifier = [v7 bundleIdentifier];
          *buf = 138412546;
          v15 = bundleIdentifier;
          v16 = 2112;
          v17 = v1;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "created test photo library for %@ at %@", buf, 0x16u);
        }
      }

      else
      {
        [NSException raise:NSInternalInconsistencyException format:@"Unable to create test photo library: %@", v5];
      }
    }

    v9 = [[PHPhotoLibrary alloc] initWithPhotoLibraryURL:v1];
    v10 = qword_1000665E8;
    qword_1000665E8 = v9;

    v0 = qword_1000665E8;
  }

  v11 = v0;
  os_unfair_lock_unlock(&unk_1000665E0);

  return v11;
}

- (void)prepareForApplicationWillEnterForeground
{
  v11.receiver = self;
  v11.super_class = PhotosApplication;
  [(PhotosApplication *)&v11 prepareForApplicationWillEnterForeground];
  photosWindowSceneDelegate = [(PhotosApplication *)self photosWindowSceneDelegate];
  activationOptions = [photosWindowSceneDelegate activationOptions];

  v5 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B344;
  block[3] = &unk_10005A120;
  block[4] = self;
  block[5] = activationOptions;
  dispatch_after(v5, &_dispatch_main_q, block);
  px_dispatch_on_main_queue_when_idle_after_delay();
  importSource = [(PUImportViewController *)self->_importViewController importSource];

  if (importSource)
  {
    importViewControllerInstanceHost = [(PhotosApplication *)self importViewControllerInstanceHost];
    importViewController = self->_importViewController;
    importSource2 = [(PUImportViewController *)importViewController importSource];
    [importViewControllerInstanceHost setImportViewController:importViewController forImportSource:importSource2];
  }
}

- (id)photosWindowSceneDelegate
{
  applicationScene = [(PhotosApplication *)self applicationScene];
  delegate = [applicationScene delegate];
  if (delegate)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = +[NSAssertionHandler currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      px_descriptionForAssertionMessage = [delegate px_descriptionForAssertionMessage];
      [v6 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:910 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"scene.delegate", v8, px_descriptionForAssertionMessage}];
    }
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      connectedScenes = [(PhotosApplication *)self connectedScenes];
      *buf = 134217984;
      v14 = [connectedScenes count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "photosWindowSceneDelegate is nil as no application scene with appropriate delegate was found out of %tu scene(s)", buf, 0xCu);
    }
  }

  return delegate;
}

- (UIScene)applicationScene
{
  [(PhotosApplication *)self connectedScenes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        session = [v7 session];
        role = [session role];
        v10 = [role isEqualToString:UIWindowSceneSessionRoleApplication];

        if (v10)
        {
          delegate = [v7 delegate];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v13 = v7;

            goto LABEL_12;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (void)_displayAndRemovePhoneInvitationFailures
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000442C;
  v2[3] = &unk_10005A240;
  v2[4] = self;
  [PLPhotoSharingHelper handlePhoneInvitationFailuresWithCompletionBlock:v2];
}

- (void)prepareForApplicationDidBecomeActive
{
  v2.receiver = self;
  v2.super_class = PhotosApplication;
  [(PhotosApplication *)&v2 prepareForApplicationDidBecomeActive];
  if (qword_1000665F0 != -1)
  {
    dispatch_once(&qword_1000665F0, &stru_10005A188);
  }
}

- (id)detailTextForGuidedAccessRestrictionWithIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_photosGuidedAccessIdentifiersToNames objectForKey:identifier];
  detailText = [v3 detailText];

  if (detailText)
  {
    v5 = detailText;
  }

  else
  {
    v5 = @"LemonadeGuidedAccessInvalidDetailKeyName";
  }

  v6 = PXLemonadeLocalizedString();

  return v6;
}

- (id)textForGuidedAccessRestrictionWithIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_photosGuidedAccessIdentifiersToNames objectForKey:identifier];
  primaryText = [v3 primaryText];

  if (primaryText)
  {
    v5 = primaryText;
  }

  else
  {
    v5 = @"LemonadeGuidedAccessInvalidKeyName";
  }

  v6 = PXLemonadeLocalizedString();

  return v6;
}

- (void)pasteEditsToAssets:(id)assets completionHandler:(id)handler
{
  assetsCopy = assets;
  handlerCopy = handler;
  if (![assetsCopy count])
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1316 description:{@"Invalid parameter not satisfying: %@", @"assets.count"}];

    if (handlerCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1317 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ([assetsCopy count] == 1 && (objc_msgSend(assetsCopy, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), -[PhotosApplication _currentlyOpenEditSessionControllerForAsset:](self, "_currentlyOpenEditSessionControllerForAsset:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
  {
    v11 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Paste adjustments in the current edit session", buf, 2u);
    }

    [v10 pasteEditsWithCompletionHandler:handlerCopy];
  }

  else
  {
    v12 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Paste adjustments on the provided assets", v15, 2u);
    }

    [objc_opt_class() _performActionType:PXAssetActionTypePasteAdjustments assets:assetsCopy completionHandler:handlerCopy];
  }
}

- (void)copyEditsFromAsset:(id)asset completionHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (assetCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1280 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v20 = +[NSAssertionHandler currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1281 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v10 = [(PhotosApplication *)self _currentlyOpenEditSessionControllerForAsset:assetCopy];
  v11 = PLAppIntentsGetLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Copy adjustments in the current edit session", buf, 2u);
    }

    if ([v10 canCopyEdits])
    {
      [v10 copyEditsSkippingOptions:1];
      v13 = PLAppIntentsGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Copied adjustments from current session", buf, 2u);
      }

      v9[2](v9, 1, 0);
    }

    else
    {
      v17 = PLAppIntentsGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Could not copy edits from current edit session", buf, 2u);
      }

      v18 = [NSError px_errorWithDomain:PXAppIntentsNSErrorDomain code:-1004 debugDescription:@"Could not copy edits image likely had no adjustments"];;
      (v9)[2](v9, 0, v18);
    }
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Copy adjustments from the provided asset", buf, 2u);
    }

    v14 = objc_opt_class();
    v15 = PXAssetActionTypeCopyAdjustmentsSkippingOptions;
    v24 = assetCopy;
    v16 = [NSArray arrayWithObjects:&v24 count:1];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100016BCC;
    v21[3] = &unk_10005A5A8;
    v22 = v9;
    [v14 _performActionType:v15 assets:v16 completionHandler:v21];
  }
}

- (id)_currentlyOpenEditSessionControllerForAsset:(id)asset
{
  assetCopy = asset;
  keyRootViewController = [(PhotosApplication *)self keyRootViewController];
  v6 = [keyRootViewController px_descendantViewControllerWithClass:objc_opt_class()];
  photo = [v6 photo];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v8 = photo;

  if (!v8)
  {
    goto LABEL_7;
  }

  uuid = [v8 uuid];
  uuid2 = [assetCopy uuid];
  v11 = [uuid isEqualToString:uuid2];

  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v6;
LABEL_8:
  v13 = v12;

  return v12;
}

- (void)performEditRequestWithAssets:(id)assets adjustments:(id)adjustments completionHandler:(id)handler
{
  assetsCopy = assets;
  adjustmentsCopy = adjustments;
  handlerCopy = handler;
  if (assetsCopy)
  {
    if (adjustmentsCopy)
    {
      goto LABEL_3;
    }

LABEL_23:
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1186 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v20 = +[NSAssertionHandler currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1185 description:{@"Invalid parameter not satisfying: %@", @"assets"}];

  if (!adjustmentsCopy)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_24:
  v22 = +[NSAssertionHandler currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1187 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  keyRootViewController = [(PhotosApplication *)self keyRootViewController];
  if (![PUPhotoEditPendingEditsRequest canPerformEditsWithRootViewController:keyRootViewController])
  {
    firstObject = [adjustmentsCopy firstObject];
    if (!firstObject)
    {
      v23 = +[NSAssertionHandler currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1206 description:{@"Invalid parameter not satisfying: %@", @"adjustment"}];
    }

    category = [firstObject category];
    if (category == 8)
    {
      if (![assetsCopy count])
      {
        v25 = +[NSAssertionHandler currentHandler];
        [v25 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1218 description:{@"Invalid parameter not satisfying: %@", @"assets.count"}];
      }

      clockwise = [firstObject clockwise];
      v17 = &PXAssetActionTypeEditRotateRight;
      v18 = &PXAssetActionTypeEditRotateLeft;
    }

    else
    {
      if (category)
      {
        v19 = [NSError px_errorWithDomain:PXAppIntentsNSErrorDomain code:-1003 debugDescription:@"Unsupported category: %ld", category];
        handlerCopy[2](handlerCopy, 0, v19);
LABEL_20:

        goto LABEL_21;
      }

      if (![assetsCopy count])
      {
        v24 = +[NSAssertionHandler currentHandler];
        [v24 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1210 description:{@"Invalid parameter not satisfying: %@", @"assets.count"}];
      }

      clockwise = [firstObject enabled];
      v17 = &PXAssetActionTypeEditEnableAutoEnhance;
      v18 = &PXAssetActionTypeEditDisableAutoEnhance;
    }

    if (!clockwise)
    {
      v17 = v18;
    }

    v19 = *v17;
    [objc_opt_class() _performActionType:v19 assets:assetsCopy completionHandler:handlerCopy];
    goto LABEL_20;
  }

  v13 = [[PUPhotoEditPendingEditsRequest alloc] initWithAdjustments:adjustmentsCopy rootViewController:keyRootViewController];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001718C;
  v26[3] = &unk_10005A340;
  v26[4] = self;
  v27 = handlerCopy;
  [v13 submitWithCompletionHandler:v26];

LABEL_21:
}

- (void)canPerformEditRequestWithAssets:(id)assets adjustments:(id)adjustments completionHandler:(id)handler
{
  assetsCopy = assets;
  adjustmentsCopy = adjustments;
  handlerCopy = handler;
  if (assetsCopy)
  {
    if (adjustmentsCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1173 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v15 = +[NSAssertionHandler currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"assets"}];

  if (!adjustmentsCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  v17 = +[NSAssertionHandler currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1174 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v18 = 0;
  v12 = [PUPhotoEditPendingEditsRequest canPerformEditsWithAssets:assetsCopy adjustments:adjustmentsCopy error:&v18];
  v13 = v18;
  if ((v12 & 1) == 0)
  {
    v14 = [objc_opt_class() _appIntentsErrorForError:v13];

    v13 = v14;
  }

  handlerCopy[2](handlerCopy, v12, v13);
}

- (void)performSearchWithDecoratedQuery:(id)query completionHandler:(id)handler
{
  handlerCopy = handler;
  queryCopy = query;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (queryCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1162 description:{@"Invalid parameter not satisfying: %@", @"decoratedQuery"}];

    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  v10 = +[NSAssertionHandler currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1163 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v11 = [[PXProgrammaticNavigationDestination alloc] initWithDecoratedSearchQuery:queryCopy];

  [(PhotosApplication *)self _navigateToDestination:v11 debugDescription:@"Search" completionHandler:handlerCopy];
}

- (void)performSearchWithQuery:(id)query completionHandler:(id)handler
{
  handlerCopy = handler;
  queryCopy = query;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (queryCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1153 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  v10 = +[NSAssertionHandler currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1154 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v11 = [[PXProgrammaticNavigationDestination alloc] initWithSearchText:queryCopy];

  [(PhotosApplication *)self _navigateToDestination:v11 debugDescription:@"Search" completionHandler:handlerCopy];
}

- (double)displayScale
{
  photosWindowSceneDelegate = [(PhotosApplication *)self photosWindowSceneDelegate];
  [photosWindowSceneDelegate screenScale];
  v4 = v3;

  return v4;
}

- (id)provideNavigationDestination
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  keyRootViewController = [(PhotosApplication *)self keyRootViewController];
  v4 = [keyRootViewController px_descendantViewControllerWithClass:objc_opt_class()];
  v5 = v4;
  if (v4)
  {
    photo = [v4 photo];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = photo;

      if (v7)
      {
        v8 = [[PXProgrammaticNavigationDestination alloc] initWithType:7 revealMode:1 asset:v7 assetCollection:0];
        goto LABEL_16;
      }
    }

    else
    {

      v7 = 0;
    }

    goto LABEL_12;
  }

  v9 = [keyRootViewController px_descendantViewControllerWithClass:objc_opt_class()];
  v7 = v9;
  if (!v9)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  browsingSession = [v9 browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];
  asset = [currentAssetReference asset];

  v14 = asset;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v15 = 0;
    goto LABEL_14;
  }

  v15 = v14;

  if (!v15)
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v8 = [[PXProgrammaticNavigationDestination alloc] initWithType:7 revealMode:1 asset:v15 assetCollection:0];
LABEL_15:

LABEL_16:

  return v8;
}

- (void)_satisfyAppIntentsURLNavigationPerformerRequestsIfNecessary
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  self->_canSatisfyAppIntentsURLNavigationRequests = 1;
  v3 = [(NSMutableArray *)self->_appIntentsURLNavigationRequests count];
  v4 = PLAppIntentsGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [(NSMutableArray *)self->_appIntentsURLNavigationRequests count];
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Perform %lu deferred App Intents URL navigation request(s)", &v8, 0xCu);
    }

    v4 = [(NSMutableArray *)self->_appIntentsURLNavigationRequests copy];
    appIntentsURLNavigationRequests = self->_appIntentsURLNavigationRequests;
    self->_appIntentsURLNavigationRequests = 0;

    [v4 enumerateObjectsUsingBlock:&stru_10005A318];
  }

  else if (v5)
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignore deferred App Intents URL navigation for zero requests", &v8, 2u);
  }
}

- (void)noteSceneWillEnterForeground:(id)foreground
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (!self->_canSatisfyAppIntentsURLNavigationRequests)
  {
    v4 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v5 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017ACC;
    block[3] = &unk_10005C140;
    block[4] = self;
    dispatch_after(v5, &_dispatch_main_q, block);
  }
}

- (void)_navigateToDestination:(id)destination debugDescription:(id)description completionHandler:(id)handler
{
  destinationCopy = destination;
  descriptionCopy = description;
  handlerCopy = handler;
  if (!destinationCopy)
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1027 description:{@"Invalid parameter not satisfying: %@", @"destination"}];
  }

  if ([descriptionCopy length])
  {
    if (handlerCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1028 description:{@"Invalid parameter not satisfying: %@", @"debugDescription.length"}];

    if (handlerCopy)
    {
      goto LABEL_5;
    }
  }

  v24 = +[NSAssertionHandler currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1029 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_5:
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100017E1C;
  v25[3] = &unk_10005A2D8;
  v12 = destinationCopy;
  v26 = v12;
  selfCopy = self;
  v30 = a2;
  v13 = descriptionCopy;
  v28 = v13;
  v14 = handlerCopy;
  v29 = v14;
  v15 = objc_retainBlock(v25);
  v16 = v15;
  if (self->_canSatisfyAppIntentsURLNavigationRequests)
  {
    (v15[2])(v15);
  }

  else
  {
    v17 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Defer App Intents %@ navigation request", buf, 0xCu);
    }

    appIntentsURLNavigationRequests = self->_appIntentsURLNavigationRequests;
    if (!appIntentsURLNavigationRequests)
    {
      v19 = objc_alloc_init(NSMutableArray);
      v20 = self->_appIntentsURLNavigationRequests;
      self->_appIntentsURLNavigationRequests = v19;

      appIntentsURLNavigationRequests = self->_appIntentsURLNavigationRequests;
    }

    v21 = objc_retainBlock(v16);
    [(NSMutableArray *)appIntentsURLNavigationRequests addObject:v21];
  }
}

- (void)navigateToURLDestination:(id)destination completionHandler:(id)handler
{
  handlerCopy = handler;
  destinationCopy = destination;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (destinationCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1012 description:{@"Invalid parameter not satisfying: %@", @"urlDestination"}];

    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1013 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v9 = [[PXProgrammaticNavigationDestination alloc] initWithURL:destinationCopy];

  if ([v9 type])
  {
    [(PhotosApplication *)self _navigateToDestination:v9 debugDescription:@"URL" completionHandler:handlerCopy];
  }

  else
  {
    v10 = [NSError px_genericErrorWithDebugDescription:@"No matching destination for URL"];
    v11 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to perform App Intents URL navigation request: %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0, v10);
  }
}

- (void)providePhotoLibrary:(id)library
{
  libraryCopy = library;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (!libraryCopy)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1002 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v7 = [PhotosApplication px_photoLibrary]_0();
  libraryCopy[2](libraryCopy, v7);
}

- (PXCollectionActionReceiver)keyCollectionActionReceiver
{
  photosWindowSceneDelegate = [(PhotosApplication *)self photosWindowSceneDelegate];
  collectionActionReceiver = [photosWindowSceneDelegate collectionActionReceiver];

  return collectionActionReceiver;
}

- (PXLibraryActionReceiver)libraryActionReceiver
{
  photosWindowSceneDelegate = [(PhotosApplication *)self photosWindowSceneDelegate];
  libraryActionReceiver = [photosWindowSceneDelegate libraryActionReceiver];

  return libraryActionReceiver;
}

- (id)importViewControllerInstanceHost
{
  photosWindowSceneDelegate = [(PhotosApplication *)self photosWindowSceneDelegate];
  importViewControllerInstanceHost = [photosWindowSceneDelegate importViewControllerInstanceHost];

  return importViewControllerInstanceHost;
}

- (UIViewController)keyRootViewController
{
  photosWindowSceneDelegate = [(PhotosApplication *)self photosWindowSceneDelegate];
  rootViewController = [photosWindowSceneDelegate rootViewController];

  return rootViewController;
}

- (PUTabbedLibraryViewController)keyTabbedLibraryViewController
{
  photosWindowSceneDelegate = [(PhotosApplication *)self photosWindowSceneDelegate];
  tabbedLibraryViewController = [photosWindowSceneDelegate tabbedLibraryViewController];

  return tabbedLibraryViewController;
}

- (id)keySpec
{
  photosWindowSceneDelegate = [(PhotosApplication *)self photosWindowSceneDelegate];
  spec = [photosWindowSceneDelegate spec];

  return spec;
}

- (void)performNebuladCrashRecoveryIfNeededForceEndLastTimelapseSession:(BOOL)session
{
  if (qword_100066600 != -1)
  {
    dispatch_once(&qword_100066600, &stru_10005A288);
  }

  objc_initWeak(&location, self);
  v5 = qword_1000665F8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018808;
  block[3] = &unk_10005A2B0;
  objc_copyWeak(&v7, &location);
  sessionCopy = session;
  dispatch_async(v5, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)importController:(id)controller removedImportSource:(id)source
{
  sourceCopy = source;
  v6 = PLCameraConnectionKitGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "_importDeviceRemoved", buf, 2u);
  }

  uuid = [sourceCopy uuid];
  importSource = [(PUImportViewController *)self->_importViewController importSource];
  uuid2 = [importSource uuid];

  if ([uuid isEqualToString:uuid2])
  {
    [(PhotosApplication *)self _dequeueNextImportDevice];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = self->_importDeviceQueue;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        uuid3 = [v15 uuid];
        if ([uuid3 isEqualToString:uuid])
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v12)
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }
      }

      v17 = v15;

      if (!v17)
      {
        goto LABEL_17;
      }

      [(NSMutableArray *)self->_importDeviceQueue removeObject:v17];
      v10 = v17;
    }

LABEL_16:
  }

LABEL_17:
}

- (void)importController:(id)controller addedImportSource:(id)source
{
  sourceCopy = source;
  v6 = PLCameraConnectionKitGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "_importDeviceAdded", buf, 2u);
  }

  uuid = [sourceCopy uuid];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_importDeviceQueue;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        uuid2 = [*(*(&v19 + 1) + 8 * v12) uuid];
        v14 = [uuid2 isEqualToString:uuid];

        if (v14)
        {

          goto LABEL_16;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  importDeviceQueue = self->_importDeviceQueue;
  if (!importDeviceQueue)
  {
    v16 = objc_alloc_init(NSMutableArray);
    v17 = self->_importDeviceQueue;
    self->_importDeviceQueue = v16;

    importDeviceQueue = self->_importDeviceQueue;
  }

  [(NSMutableArray *)importDeviceQueue addObject:sourceCopy, v19];
  importSource = [(PUImportViewController *)self->_importViewController importSource];

  if (!importSource)
  {
    [(PhotosApplication *)self _dequeueNextImportDevice];
  }

LABEL_16:
}

- (void)_showAppleMusicPromptsIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = +[PXStorySettings sharedInstance];
  appleMusicPromptTrigger = [v3 appleMusicPromptTrigger];

  if (appleMusicPromptTrigger)
  {
    completionCopy[2]();
  }

  else
  {
    [PXAppleMusicPrompter showPromptsIfNeededWithCompletion:completionCopy];
  }
}

- (void)_showWelcomeViewControllersIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PhotosApplication *)self launchedToTest])
  {
    completionCopy[2]();
  }

  else
  {
    keyRootViewController = [(PhotosApplication *)self keyRootViewController];
    v5 = +[PUWelcomeViewControllersManager defaultManager];
    [v5 presentWelcomeViewControllersIfNecessaryFromViewController:keyRootViewController completion:completionCopy];
  }
}

- (void)_showCloudPhotoLibraryExitPromptIfNecessary
{
  if ((PXCPLIsInTestReadonlyMode() & 1) == 0)
  {
    px_photoLibrary = [(PhotosApplication *)self px_photoLibrary];
    cplStatus = [px_photoLibrary cplStatus];
    exitDeleteTime = [cplStatus exitDeleteTime];
    v6 = exitDeleteTime;
    if (!exitDeleteTime)
    {
LABEL_14:

      return;
    }

    [exitDeleteTime timeIntervalSince1970];
    v8 = [NSString stringWithFormat:@"CPLExitWarningPromptShownforExitDate:%f", v7];
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v9 dictionaryForKey:v8];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = objc_opt_new();
    }

    v12 = PXCPLNumberOfCalendarDaysUntilDate();
    v13 = v12;
    if (v12 < 8)
    {
      if (v12 < 2)
      {
        if (v12 != 1)
        {
LABEL_13:

          goto LABEL_14;
        }

        v14 = @"1";
      }

      else
      {
        v14 = @"7";
      }
    }

    else
    {
      v14 = @"30";
    }

    v15 = [v11 objectForKeyedSubscript:v14];

    if (!v15)
    {
      [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:v14];
      v16 = +[NSUserDefaults standardUserDefaults];
      [v16 setObject:v11 forKey:v8];

      v30 = PULocalizedString();
      v29 = PULocalizedString();
      v28 = PFLocalizedStringWithValidatedFormat();
      v27 = PFLocalizedStringWithValidatedFormat();
      v26 = PULocalizedString();
      v25 = PULocalizedString();
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [UIAlertController alertControllerWithTitle:v28 message:v27 preferredStyle:1, v13];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100019560;
      v34[3] = &unk_10005A268;
      v36 = v13;
      v20 = v18;
      v35 = v20;
      v21 = [UIAlertAction actionWithTitle:v25 style:0 handler:v34];
      [v19 addAction:v21];

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000195AC;
      v31[3] = &unk_10005A268;
      v32 = v20;
      v33 = v13;
      v22 = v20;
      v23 = [UIAlertAction actionWithTitle:v26 style:0 handler:v31];
      [v19 addAction:v23];

      px_firstKeyWindow = [(PhotosApplication *)self px_firstKeyWindow];
      [px_firstKeyWindow pl_presentViewController:v19 animated:1];
    }

    goto LABEL_13;
  }
}

- (void)handleOAuthRedirectURL:(id)l
{
  lCopy = l;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = qword_100066608;
  v17 = qword_100066608;
  if (!qword_100066608)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100019900;
    v19 = &unk_10005BED0;
    v20 = &v14;
    sub_100019900(buf);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  sharedInstance = [v4 sharedInstance];
  v7 = [sharedInstance handleOAuthRedirectURL:lCopy];
  v8 = PLUIGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      scheme = [lCopy scheme];
      path = [lCopy path];
      *buf = 138412546;
      *&buf[4] = scheme;
      *&buf[12] = 2112;
      *&buf[14] = path;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handled OAuth Redirect url %@:%@", buf, 0x16u);
    }
  }

  else if (v9)
  {
    scheme2 = [lCopy scheme];
    path2 = [lCopy path];
    *buf = 138412546;
    *&buf[4] = scheme2;
    *&buf[12] = 2112;
    *&buf[14] = path2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to handle OAuth Redirect url %@:%@", buf, 0x16u);
  }
}

- (void)_tearDownImportViewController
{
  importSource = [(PUImportViewController *)self->_importViewController importSource];
  [(PUImportViewController *)self->_importViewController setImportSource:0];
  importViewController = self->_importViewController;
  self->_importViewController = 0;

  importViewControllerInstanceHost = [(PhotosApplication *)self importViewControllerInstanceHost];
  [importViewControllerInstanceHost setImportViewController:0 forImportSource:importSource];
}

- (void)_dequeueNextImportDevice
{
  firstObject = [(NSMutableArray *)self->_importDeviceQueue firstObject];
  v4 = PLCameraConnectionKitGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = firstObject;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "_dequeueNextImportDevice: %@", &v8, 0xCu);
  }

  if (firstObject)
  {
    [(NSMutableArray *)self->_importDeviceQueue removeObjectAtIndex:0];
    if (self->_importViewController)
    {
      [(PhotosApplication *)self _tearDownImportViewController];
    }

    _newImportViewController = [(PhotosApplication *)self _newImportViewController];
    importViewController = self->_importViewController;
    self->_importViewController = _newImportViewController;

    [(PUImportViewController *)self->_importViewController setImportSource:firstObject];
    importViewControllerInstanceHost = [(PhotosApplication *)self importViewControllerInstanceHost];
    [importViewControllerInstanceHost setImportViewController:self->_importViewController forImportSource:firstObject];
  }

  else
  {
    [(PhotosApplication *)self _tearDownImportViewController];
  }
}

- (id)_newImportViewController
{
  keySpec = [(PhotosApplication *)self keySpec];
  if (!keySpec)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_newImportViewController: PhotosAppSpec from keySpec is nil; it may be too early to access our connected scene. Instantiating a PhotosAppSpec from our current interface idiom as a fallback.", v11, 2u);
    }

    v5 = +[UIDevice currentDevice];
    keySpec = +[PhotosAppSpec specForIdiom:](PhotosAppSpec, "specForIdiom:", [v5 userInterfaceIdiom]);
  }

  v6 = [PUImportViewController alloc];
  importViewControllerSpec = [keySpec importViewControllerSpec];
  px_photoLibrary = [(PhotosApplication *)self px_photoLibrary];
  v9 = [v6 initWithSpec:importViewControllerSpec photoLibrary:px_photoLibrary];

  return v9;
}

- (void)photosPreferencesChanged
{
  v7.receiver = self;
  v7.super_class = PhotosApplication;
  [(PhotosApplication *)&v7 photosPreferencesChanged];
  hiddenAlbumIsVisible = [(PhotosApplication *)self hiddenAlbumIsVisible];
  [(PhotosApplication *)self updateShowHiddenAlbumCachedValue];
  [(PhotosApplication *)self updateShowRecentlyViewedAndSharedAlbumCachedValue];
  if (![(PhotosApplication *)self hiddenAlbumIsVisible]&& hiddenAlbumIsVisible)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Preferences 'HiddenAlbumVisible' changed to NO in Photos. Forcing navigation to root view controller in current navigation controller.", v6, 2u);
    }

    keyTabbedLibraryViewController = [(PhotosApplication *)self keyTabbedLibraryViewController];
    [keyTabbedLibraryViewController navigateToCollectionsTabRoot];
  }
}

- (void)updateShowRecentlyViewedAndSharedAlbumCachedValue
{
  IsRecentlyViewedAndSharedAlbumVisible = PXPreferencesIsRecentlyViewedAndSharedAlbumVisible();

  [(PhotosApplication *)self setRecentlyViewedAndSharedAlbumVisible:IsRecentlyViewedAndSharedAlbumVisible];
}

- (void)updateShowHiddenAlbumCachedValue
{
  IsHiddenAlbumVisible = PXPreferencesIsHiddenAlbumVisible();

  [(PhotosApplication *)self setHiddenAlbumIsVisible:IsHiddenAlbumVisible];
}

- (void)_beginUndoActionsInvalidator
{
  px_photoLibrary = [(PhotosApplication *)self px_photoLibrary];
  librarySpecificFetchOptions = [px_photoLibrary librarySpecificFetchOptions];
  v4 = [PHAssetCollection fetchAssetCollectionsWithType:2 subtype:1000000201 options:librarySpecificFetchOptions];
  firstObject = [v4 firstObject];

  v6 = firstObject;
  px_dispatch_on_main_queue();
}

- (void)_userDidTakeScreenshot:(id)screenshot
{
  if (![(PhotosApplication *)self applicationState])
  {
    v3 = +[UIApplication pu_debugCurrentAsset];
    if (v3)
    {
      v8 = v3;
      v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v8;
      }

      else
      {
        v5 = 0;
      }

      [v4 setObject:v5 forKeyedSubscript:CPAnalyticsPayloadAssetsKey];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [v4 setObject:v7 forKeyedSubscript:CPAnalyticsPayloadClassNameKey];

      [CPAnalytics sendEvent:CPAnalyticsEventScreenshotTaken withPayload:v4];
      v3 = v8;
    }
  }
}

- (id)stateCaptureDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10001A450;
  v10 = sub_10001A460;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001A468;
  v5[3] = &unk_10005BED0;
  v5[4] = &v6;
  dispatch_sync(&_dispatch_main_q, v5);
  v2 = v7[5];
  v12 = @"currentAssetUUID";
  v13 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];
  v12 = [userInfo objectForKeyedSubscript:kNotificationKeySuppresionContexts];

  if ([v12 count])
  {
    [NSSet setWithArray:v12];
  }

  else
  {
    +[NSSet set];
  }
  v13 = ;
  notificationSuppressionContexts = [(PhotosApplication *)self notificationSuppressionContexts];
  v15 = [notificationSuppressionContexts intersectsSet:v13];

  if (v15)
  {
    v16 = PLUIGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = notificationCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Suppressing notification: %@", &v17, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, 27);
  }
}

- (void)_showUserNotificationsPromptIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[UNUserNotificationCenter currentNotificationCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001A744;
  v6[3] = &unk_10005A5A8;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 requestAuthorizationWithOptions:7 completionHandler:v6];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = PhotosApplication;
  [(PhotosApplication *)&v5 pressesBegan:began withEvent:event];
  [(PhotosApplication *)self invalidateActionManagerProvider];
}

- (void)prepareForApplicationDidEnterBackground
{
  v2.receiver = self;
  v2.super_class = PhotosApplication;
  [(PhotosApplication *)&v2 prepareForApplicationDidEnterBackground];
  +[_TtC9PhotosApp33PhotosAppShortcutsProviderWrapper updateAppShortcutParameters];
}

- (void)applicationDidFinishLaunching:(id)launching
{
  v29.receiver = self;
  v29.super_class = PhotosApplication;
  [(PhotosApplication *)&v29 applicationDidFinishLaunching:launching];
  v30 = PXGuidedAccessDeletionAllowedRestrictionIdentifier;
  v4 = [[_PXGuidedAccessStringTuple alloc] initWithPrimaryText:@"LemonadeGuidedAccessNoDeleteName" detailText:@"LemonadeGuidedAccessNoDeleteDetailName"];
  v31 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  photosGuidedAccessIdentifiersToNames = self->_photosGuidedAccessIdentifiersToNames;
  self->_photosGuidedAccessIdentifiersToNames = v5;

  v7 = +[PURootSettings sharedInstance];
  allowGuidedAccessRestrictions = [v7 allowGuidedAccessRestrictions];

  if (allowGuidedAccessRestrictions)
  {
    allKeys = [(NSDictionary *)self->_photosGuidedAccessIdentifiersToNames allKeys];
    guidedAccessRestrictionIdentifiers = self->_guidedAccessRestrictionIdentifiers;
    self->_guidedAccessRestrictionIdentifiers = allKeys;
  }

  PXAppIntentsAddDisplayScaleProviderDependency();
  PXAppIntentsAddNavigationDestinationProviderDependency();
  PXAppIntentsAddPendingEditsRequestProviderDependency();
  PXAppIntentsAddPhotoLibraryProviderDependency();
  PXAppIntentsAddURLNavigationPerformerDependency();
  PXAppIntentsSearchPerformerDependency();
  [(PhotosApplication *)self ppt_prepareApplicationForTesting];
  PXApplicationAudioSessionSetCategory();
  v11 = +[UIMainMenuSystem sharedSystem];
  v12 = +[PXMenuGenerator photosConfiguration];
  [v11 setBuildConfiguration:v12 buildHandler:0];

  v13 = +[PHImportController sharedInstance];
  [v13 enableDeviceImport];
  [v13 addImportControllerObserver:self];
  v14 = +[NSUbiquitousKeyValueStore defaultStore];
  v15 = +[PXPreloadScheduler sharedScheduler];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001BC08;
  v27[3] = &unk_10005C140;
  v16 = v14;
  v28 = v16;
  [v15 scheduleTaskWithQoS:1 block:v27];

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"_userDidTakeScreenshot:" name:UIApplicationUserDidTakeScreenshotNotification object:0];
  v18 = [[PFStateCaptureHandler alloc] initWithProvider:self];
  stateCaptureHandler = self->_stateCaptureHandler;
  self->_stateCaptureHandler = v18;

  v20 = +[UNUserNotificationCenter currentNotificationCenter];
  [v20 setDelegate:self];
  v21 = +[NSBundle mainBundle];
  [CPAnalytics setupWithConfigurationFilename:@"CPAnalyticsConfig-Photos" inBundle:v21];

  px_photoLibrary = [(PhotosApplication *)self px_photoLibrary];
  [CPAnalytics setupSystemPropertyProvidersForLibrary:px_photoLibrary];

  +[CPAnalytics startAppTracking];
  +[CPAnalytics startViewTracking];
  +[UIApplication pu_prepareCPAnalytics];
  v23 = +[PXPreloadScheduler sharedScheduler];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001BC18;
  v26[3] = &unk_10005C140;
  v26[4] = self;
  [v23 scheduleTaskWithQoS:1 block:v26];

  v24 = +[PXPreloadScheduler sharedScheduler];
  [v24 scheduleDeferredTaskWithQoS:2 block:&stru_10005A0D0];

  +[PXSensitivityContentManager prefetchSensitiveContentPolicy];
  if (PFProcessIsLaunchedToExecuteTests())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001BC70;
    block[3] = &unk_10005C140;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (PXActionManager)assetActionManager
{
  contentViewController = [(PhotosApplication *)self contentViewController];
  WeakRetained = objc_loadWeakRetained(&self->_actionManagerProvider);

  if (WeakRetained)
  {
    v5 = 1;
  }

  else
  {
    v5 = contentViewController == 0;
  }

  if (!v5)
  {
    view = [contentViewController view];
    window = [view window];
    _responderForKeyEvents = [window _responderForKeyEvents];

    if (_responderForKeyEvents)
    {
      while ((objc_opt_respondsToSelector() & 1) == 0)
      {
        nextResponder = [_responderForKeyEvents nextResponder];

        _responderForKeyEvents = nextResponder;
        if (!nextResponder)
        {
          goto LABEL_10;
        }
      }

      _responderForKeyEvents = _responderForKeyEvents;
    }

LABEL_10:
    objc_storeWeak(&self->_actionManagerProvider, _responderForKeyEvents);
  }

  v10 = objc_loadWeakRetained(&self->_actionManagerProvider);
  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_actionManagerProvider);
    if (v11 == self)
    {
      assetActionManager = 0;
    }

    else
    {
      v12 = objc_loadWeakRetained(&self->_actionManagerProvider);
      assetActionManager = [v12 assetActionManager];
    }
  }

  else
  {
    assetActionManager = 0;
  }

  return assetActionManager;
}

- (NSUndoManager)fallbackUndoManager
{
  contentViewController = [(PhotosApplication *)self contentViewController];
  undoManager = [contentViewController undoManager];

  return undoManager;
}

- (UIViewController)contentViewController
{
  keyTabbedLibraryViewController = [(PhotosApplication *)self keyTabbedLibraryViewController];
  view = [keyTabbedLibraryViewController view];
  window = [view window];

  if (!window)
  {
    keyRootViewController = [(PhotosApplication *)self keyRootViewController];

    view2 = [keyRootViewController view];
    window2 = [view2 window];
    if (window2)
    {
LABEL_8:
    }

    else
    {
      while (1)
      {
        presentedViewController = [keyRootViewController presentedViewController];

        if (!presentedViewController)
        {
          break;
        }

        presentedViewController2 = [keyRootViewController presentedViewController];

        view2 = [presentedViewController2 view];
        window2 = [view2 window];
        keyRootViewController = presentedViewController2;
        if (window2)
        {
          keyRootViewController = presentedViewController2;
          goto LABEL_8;
        }
      }
    }

    keyTabbedLibraryViewController = keyRootViewController;
  }

  return keyTabbedLibraryViewController;
}

+ (void)_performActionType:(id)type assets:(id)assets completionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  v10 = [self _appIntentsActionManagerForAssets:assets];
  v12 = 0;
  if ([v10 canPerformActionType:typeCopy error:&v12])
  {
    v11 = [v10 actionPerformerForActionType:typeCopy];
    [v11 performActionWithCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, v12);
  }
}

+ (id)_appIntentsActionManagerForAssets:(id)assets
{
  assetsCopy = assets;
  v4 = [PHManualFetchResult alloc];
  firstObject = [assetsCopy firstObject];
  photoLibrary = [firstObject photoLibrary];
  v7 = [v4 initWithObjects:assetsCopy photoLibrary:photoLibrary fetchType:PHFetchTypeAsset fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v8 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerWithAssets:v7];
  v9 = [[PXSectionedSelectionManager alloc] initWithDataSourceManager:v8];
  [v9 performChanges:&stru_10005A360];
  v10 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:v9];

  return v10;
}

+ (id)_appIntentsErrorForError:(id)error
{
  errorCopy = error;
  if ([errorCopy px_isDomain:PUPhotoEditPendingEditsRequestErrorDomain code:2])
  {
    userInfo = [errorCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:PUAssetMediaTypeErrorKey];

    if (v5)
    {
      v18 = PXAppIntentsAssetsMediaTypeNSErrorKey;
      v19 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    }

    else
    {
      v6 = 0;
    }

    v10 = PXAppIntentsNSErrorDomain;
    v11 = @"Cannot perform adjustments";
    v12 = -1000;
LABEL_17:
    v8 = [NSError px_errorWithDomain:v10 code:v12 underlyingError:errorCopy userInfo:v6 debugDescription:v11];

    goto LABEL_18;
  }

  if ([errorCopy px_isDomain:PEAdjustmentFilterErrorDomain code:1])
  {
    userInfo2 = [errorCopy userInfo];
    v5 = [userInfo2 objectForKeyedSubscript:PEAdjustmentFilterMediaTypeErrorKey];

    if (v5)
    {
      v16 = PXAppIntentsAssetsMediaTypeNSErrorKey;
      v17 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v6 = 0;
    }

    v10 = PXAppIntentsNSErrorDomain;
    v11 = @"Cannot filter stylable asset";
    v12 = -1001;
    goto LABEL_17;
  }

  if (([errorCopy px_isDomain:PEAdjustmentApertureErrorDomain code:2] & 1) != 0 || (v8 = errorCopy, objc_msgSend(errorCopy, "px_isDomain:code:", PEAdjustmentDepthErrorDomain, 2)))
  {
    userInfo3 = [errorCopy userInfo];
    v5 = [userInfo3 objectForKeyedSubscript:PEAdjustmentApertureMediaTypeErrorKey];

    if (v5)
    {
      v14 = PXAppIntentsAssetsMediaTypeNSErrorKey;
      v15 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    }

    else
    {
      v6 = 0;
    }

    v10 = PXAppIntentsNSErrorDomain;
    v11 = @"Missing depth data";
    v12 = -1002;
    goto LABEL_17;
  }

LABEL_18:

  return v8;
}

+ (void)_donateTipsAppPhotosSignals
{
  v2 = +[PHPhotoLibrary px_systemPhotoLibrary];
  librarySpecificFetchOptions = [v2 librarySpecificFetchOptions];

  v3 = [PHCollection fetchTopLevelUserCollectionsWithOptions:librarySpecificFetchOptions];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  [PXTipsAppDonation donateSignalForEvent:v5];
  if (PLIsCloudPhotoLibraryEnabledForCurrentUser())
  {
    v6 = 4;
  }

  else
  {
    v6 = 5;
  }

  [PXTipsAppDonation donateSignalForEvent:v6];
}

- (void)toggleLibraryFilter:(id)filter
{
  v4 = PXNumberPropertyFromCommand();
  v5 = PXMenuItemIndexFromNumber();

  libraryActionReceiver = [(PhotosApplication *)self libraryActionReceiver];
  [libraryActionReceiver performLibraryFilterMenuActionForItemAtIndex:v5];
}

- (void)adjustLocation:(id)location
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeEditLocation];

  [v4 performActionWithCompletionHandler:0];
}

- (void)adjustDateTime:(id)time
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeEditDateTime];

  [v4 performActionWithCompletionHandler:0];
}

- (void)revertAdjustments:(id)adjustments
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeRevertAdjustments];

  [v4 performActionWithCompletionHandler:0];
}

- (void)pasteAdjustments:(id)adjustments
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypePasteAdjustments];

  [v4 performActionWithCompletionHandler:0];
}

- (void)copyAdjustments:(id)adjustments
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeCopyAdjustments];

  [v4 performActionWithCompletionHandler:0];
}

- (void)mergeDuplicatesWithoutConfirmation:(id)confirmation
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeMergeDuplicatesWithoutConfirmation];

  [v4 performActionWithCompletionHandler:0];
}

- (void)mergeDuplicates:(id)duplicates
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeMergeDuplicates];

  [v4 performActionWithCompletionHandler:0];
}

- (void)trashAssetsWithoutConfirmation:(id)confirmation
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = PLUIActionsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trashing assets without confirmation", v7, 2u);
  }

  v5 = PXAssetActionTypeTrashNoConfirm;
  if (([assetActionManager canPerformActionType:PXAssetActionTypeTrashNoConfirm] & 1) != 0 || (v5 = PXAssetActionTypeDelete, objc_msgSend(assetActionManager, "canPerformActionType:", PXAssetActionTypeDelete)))
  {
    v6 = [assetActionManager actionPerformerForActionType:v5];
    [v6 performActionWithCompletionHandler:0];
  }
}

- (void)trashAssets:(id)assets
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = PXAssetActionTypeRemove;
  v6 = assetActionManager;
  if ([assetActionManager canPerformActionType:PXAssetActionTypeRemove] & 1) != 0 || (v4 = PXAssetActionTypeTrash, (objc_msgSend(v6, "canPerformActionType:", PXAssetActionTypeTrash)) || (v4 = PXAssetActionTypeDelete, objc_msgSend(v6, "canPerformActionType:", PXAssetActionTypeDelete)))
  {
    v5 = [v6 actionPerformerForActionType:v4];
    [v5 performActionWithCompletionHandler:0];
  }
}

- (void)makeKeyPhoto:(id)photo
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = PXAssetActionTypeAlbumMakeKeyPhoto;
  v6 = assetActionManager;
  if ([assetActionManager canPerformActionType:PXAssetActionTypeAlbumMakeKeyPhoto] & 1) != 0 || (v4 = PXAssetActionTypePersonMakeKeyPhoto, (objc_msgSend(v6, "canPerformActionType:", PXAssetActionTypePersonMakeKeyPhoto)) || (v4 = PXAssetActionTypeStoryMakeKeyPhoto, objc_msgSend(v6, "canPerformActionType:", PXAssetActionTypeStoryMakeKeyPhoto)))
  {
    v5 = [v6 actionPerformerForActionType:v4];
    [v5 performActionWithCompletionHandler:0];
  }
}

- (void)favoriteAssets:(id)assets
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeToggleFavorite];

  [v4 performActionWithCompletionHandler:0];
}

- (void)hideAssets:(id)assets
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeHide];

  [v4 performActionWithCompletionHandler:0];
}

- (void)duplicateAssets:(id)assets
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeDuplicate];

  [v4 performActionWithCompletionHandler:0];
}

- (void)addAssetsToSharedCollection:(id)collection
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeAddToSharedCollection];

  [v4 performActionWithCompletionHandler:0];
}

- (void)addAssetsToLastUsedAlbum:(id)album
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeAddToLastUsedAlbum];

  [v4 performActionWithCompletionHandler:0];
}

- (void)addAssetsToAlbum:(id)album
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeAddToAlbum];

  [v4 performActionWithCompletionHandler:0];
}

- (void)shareAssets:(id)assets
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeShare];

  [v4 performActionWithCompletionHandler:0];
}

- (void)print:(id)print
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypePrint];

  [v4 performActionWithCompletionHandler:0];
}

- (void)newMemoryMovie:(id)movie
{
  v6 = [PXProgrammaticNavigationDestination memoryCreationDestinationWithPrompt:0];
  v4 = [[PXProgrammaticNavigationRequest alloc] initWithDestination:v6 options:0 completionHandler:0];
  keyRootViewController = [(PhotosApplication *)self keyRootViewController];
  PXProgrammaticNavigationRequestExecute();
}

- (void)copy:(id)copy
{
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v4 = [assetActionManager actionPerformerForActionType:PXAssetActionTypeCopy];

  [v4 performActionWithCompletionHandler:0];
}

- (void)redo:(id)redo
{
  fallbackUndoManager = [(PhotosApplication *)self fallbackUndoManager];
  [fallbackUndoManager redo];
}

- (void)undo:(id)undo
{
  fallbackUndoManager = [(PhotosApplication *)self fallbackUndoManager];
  [fallbackUndoManager undo];
}

- (void)find:(id)find
{
  v6 = [[PXProgrammaticNavigationDestination alloc] initWithType:14 revealMode:1];
  v4 = [[PXProgrammaticNavigationRequest alloc] initWithDestination:v6 options:0 completionHandler:0];
  keyRootViewController = [(PhotosApplication *)self keyRootViewController];
  PXProgrammaticNavigationRequestExecute();
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == "undo:")
  {
    fallbackUndoManager = [(PhotosApplication *)self fallbackUndoManager];
    undoMenuItemTitle = [fallbackUndoManager undoMenuItemTitle];
LABEL_21:
    v16 = undoMenuItemTitle;
    [commandCopy setTitle:undoMenuItemTitle];

    goto LABEL_22;
  }

  if ([commandCopy action] == "redo:")
  {
    fallbackUndoManager = [(PhotosApplication *)self fallbackUndoManager];
    undoMenuItemTitle = [fallbackUndoManager redoMenuItemTitle];
    goto LABEL_21;
  }

  if ([commandCopy action] == "hideAssets:")
  {
    assetActionManager = [(PhotosApplication *)self assetActionManager];
    fallbackUndoManager = assetActionManager;
    v15 = &PXAssetActionTypeHide;
LABEL_20:
    undoMenuItemTitle = [assetActionManager localizedTitleForActionType:*v15 useCase:1];
    goto LABEL_21;
  }

  if ([commandCopy action] == "favoriteAssets:")
  {
    assetActionManager = [(PhotosApplication *)self assetActionManager];
    fallbackUndoManager = assetActionManager;
    v15 = &PXAssetActionTypeToggleFavorite;
    goto LABEL_20;
  }

  if ([commandCopy action] == "addAssetsToLastUsedAlbum:")
  {
    assetActionManager = [(PhotosApplication *)self assetActionManager];
    fallbackUndoManager = assetActionManager;
    v15 = &PXAssetActionTypeAddToLastUsedAlbum;
    goto LABEL_20;
  }

  if ([commandCopy action] == "navigateToSegment:" || objc_msgSend(commandCopy, "action") == "navigateToPreviousTab:" || objc_msgSend(commandCopy, "action") == "navigateToNextTab:" || objc_msgSend(commandCopy, "action") == "toggleSortOrder:" || objc_msgSend(commandCopy, "action") == "toggleFilter:")
  {
    [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") | 4}];
  }

  else if ([commandCopy action] == "toggleLibraryFilter:")
  {
    v4 = PXNumberPropertyFromCommand();
    v5 = PXMenuItemIndexFromNumber();

    libraryActionReceiver = [(PhotosApplication *)self libraryActionReceiver];
    v7 = [libraryActionReceiver libraryFilterMenuActionTitleForItemIndex:v5];

    if (v7)
    {
      [commandCopy setTitle:v7];
      libraryActionReceiver2 = [(PhotosApplication *)self libraryActionReceiver];
      v9 = [libraryActionReceiver2 libraryFilterMenuActionImageNameForItemIndex:v5];
      v10 = [UIImage systemImageNamed:v9];
      [commandCopy setImage:v10];

      libraryActionReceiver3 = [(PhotosApplication *)self libraryActionReceiver];
      [libraryActionReceiver3 libraryFilterMenuActionStateForItemIndex:v5];
      [commandCopy setState:UIMenuElementStateFromPXMenuActionState()];
    }

    else
    {
      [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") | 4}];
    }
  }

LABEL_22:
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  if ("newAlbum:" == action || "newSharedAlbum:" == action || "newSmartAlbum:" == action || "newFolder:" == action)
  {
    keyCollectionActionReceiver = [(PhotosApplication *)self keyCollectionActionReceiver];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PhotosApplication;
    keyCollectionActionReceiver = [PhotosApplication targetForAction:"targetForAction:withSender:" withSender:?];
  }

  return keyCollectionActionReceiver;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  assetActionManager = [(PhotosApplication *)self assetActionManager];
  v8 = assetActionManager;
  if ("undo:" == action)
  {
    fallbackUndoManager = [(PhotosApplication *)self fallbackUndoManager];
    canUndo = [fallbackUndoManager canUndo];
LABEL_24:
    v12 = canUndo;
LABEL_25:

    goto LABEL_51;
  }

  if ("redo:" == action)
  {
    fallbackUndoManager = [(PhotosApplication *)self fallbackUndoManager];
    canUndo = [fallbackUndoManager canRedo];
    goto LABEL_24;
  }

  if ("newMemoryMovie:" == action)
  {
    fallbackUndoManager = [(PhotosApplication *)self keyRootViewController];
    v13 = [PXProgrammaticNavigationDestination memoryCreationDestinationWithPrompt:0];
    v12 = [fallbackUndoManager routingOptionsForDestination:v13] != 0;

    goto LABEL_25;
  }

  if ("copy:" == action)
  {
    v14 = &PXAssetActionTypeCopy;
    goto LABEL_49;
  }

  if ("print:" == action)
  {
    v14 = &PXAssetActionTypePrint;
    goto LABEL_49;
  }

  if ("makeKeyPhoto:" == action)
  {
    if (([assetActionManager canPerformActionType:PXAssetActionTypeAlbumMakeKeyPhoto] & 1) == 0 && (objc_msgSend(v8, "canPerformActionType:", PXAssetActionTypePersonMakeKeyPhoto) & 1) == 0)
    {
      v14 = &PXAssetActionTypeStoryMakeKeyPhoto;
      goto LABEL_49;
    }
  }

  else
  {
    if ("shareAssets:" == action)
    {
      v14 = &PXAssetActionTypeShare;
      goto LABEL_49;
    }

    if ("addAssetsToAlbum:" == action)
    {
      v14 = &PXAssetActionTypeAddToAlbum;
      goto LABEL_49;
    }

    if ("addAssetsToLastUsedAlbum:" == action)
    {
      v14 = &PXAssetActionTypeAddToLastUsedAlbum;
      goto LABEL_49;
    }

    if ("addAssetsToSharedCollection:" == action)
    {
      v14 = &PXAssetActionTypeAddToSharedCollection;
      goto LABEL_49;
    }

    if ("duplicateAssets:" == action)
    {
      v14 = &PXAssetActionTypeDuplicate;
      goto LABEL_49;
    }

    if ("hideAssets:" == action)
    {
      v14 = &PXAssetActionTypeHide;
      goto LABEL_49;
    }

    if ("favoriteAssets:" == action)
    {
      v14 = &PXAssetActionTypeToggleFavorite;
      goto LABEL_49;
    }

    if ("trashAssets:" != action)
    {
      if ("adjustDateTime:" == action)
      {
        v14 = &PXAssetActionTypeEditDateTime;
      }

      else if ("adjustLocation:" == action)
      {
        v14 = &PXAssetActionTypeEditLocation;
      }

      else if ("copyAdjustments:" == action)
      {
        v14 = &PXAssetActionTypeCopyAdjustments;
      }

      else if ("pasteAdjustments:" == action)
      {
        v14 = &PXAssetActionTypePasteAdjustments;
      }

      else if ("revertAdjustments:" == action)
      {
        v14 = &PXAssetActionTypeRevertAdjustments;
      }

      else
      {
        if ("mergeDuplicates:" != action)
        {
          v16.receiver = self;
          v16.super_class = PhotosApplication;
          v9 = [(PhotosApplication *)&v16 canPerformAction:action withSender:senderCopy];
LABEL_50:
          v12 = v9;
          goto LABEL_51;
        }

        v14 = &PXAssetActionTypeMergeDuplicates;
      }

LABEL_49:
      v9 = [v8 canPerformActionType:*v14];
      goto LABEL_50;
    }

    if (([assetActionManager canPerformActionType:PXAssetActionTypeRemove] & 1) == 0 && (objc_msgSend(v8, "canPerformActionType:", PXAssetActionTypeTrash) & 1) == 0)
    {
      v14 = &PXAssetActionTypeDelete;
      goto LABEL_49;
    }
  }

  v12 = 1;
LABEL_51:

  return v12;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  system = [builderCopy system];
  v5 = +[UIMenuSystem mainSystem];

  if (system == v5)
  {
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_10001E638;
    v91[3] = &unk_10005A478;
    v92 = &stru_10005A3F0;
    [builderCopy replaceChildrenOfMenuForIdentifier:UIMenuNewItem fromChildrenBlock:v91];
    [builderCopy removeMenuForIdentifier:UIMenuTextStyle];
    v6 = PXLocalizedString();
    v7 = [UIImage _systemImageNamed:@"info.circle"];
    [UIKeyCommand commandWithTitle:v6 image:v7 action:"toggleInspector:" input:@"i" modifierFlags:0x100000 propertyList:0];
    v9 = v8 = builderCopy;
    v97[0] = v9;
    v10 = PXLocalizedString();
    v11 = [UIImage _systemImageNamed:@"square.and.arrow.up"];
    v12 = [UIKeyCommand commandWithTitle:v10 image:v11 action:"shareAssets:" input:@"s" modifierFlags:0x100000 propertyList:0];
    v97[1] = v12;
    v13 = [NSArray arrayWithObjects:v97 count:2];
    v14 = [UIMenu menuWithTitle:&stru_10005C9B8 image:0 identifier:0 options:1 children:v13];
    [v8 insertChildMenu:v14 atEndOfMenuForIdentifier:UIMenuFile];

    [v8 removeCommandForAction:"delete:" propertyList:0];
    v87 = v8;
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_10001E970;
    v88[3] = &unk_10005A4E0;
    v89 = &stru_10005A430;
    v90 = &stru_10005A3F0;
    [v8 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v88];
    v15 = [[NSMutableArray alloc] initWithCapacity:3];
    v16 = 0;
    v17 = &PXApplicationAudioSessionSetCategory_ptr;
    do
    {
      v18 = [NSNumber numberWithInteger:v16];
      v19 = PULocalizedString();
      v20 = [NSString stringWithFormat:@"%@ %@", v19, v18];

      v21 = [UICommand commandWithTitle:v20 image:0 action:"toggleLibraryFilter:" propertyList:v18];
      [v15 addObject:v21];

      ++v16;
    }

    while (v16 != 3);
    v22 = 1;
    v86 = v15;
    v85 = [UIMenu menuWithTitle:&stru_10005C9B8 image:0 identifier:0 options:1 children:v15];
    [v87 insertSiblingMenu:? beforeMenuForIdentifier:?];
    v23 = [[NSMutableArray alloc] initWithCapacity:9];
    do
    {
      v24 = [NSNumber numberWithInteger:v22];
      stringValue = [v24 stringValue];
      v26 = v17[397];
      PULocalizedString();
      v28 = v27 = v17;
      v29 = [v26 stringWithFormat:@"%@ %@", v28, stringValue];

      v30 = [UIKeyCommand commandWithTitle:v29 image:0 action:"navigateToSegment:" input:stringValue modifierFlags:0x100000 propertyList:v24];
      [v23 addObject:v30];

      v17 = v27;
      ++v22;
    }

    while (v22 != 10);
    v84 = v23;
    v83 = [UIMenu menuWithTitle:&stru_10005C9B8 image:0 identifier:0 options:1 children:v23];
    [v87 insertSiblingMenu:? beforeMenuForIdentifier:?];
    v31 = PULocalizedString();
    v32 = [UIKeyCommand commandWithTitle:v31 image:0 action:"navigateToPreviousTab:" input:@"[" modifierFlags:1179648 propertyList:0];
    v96[0] = v32;
    v33 = PULocalizedString();
    v34 = [UIKeyCommand commandWithTitle:v33 image:0 action:"navigateToNextTab:" input:@"]" modifierFlags:1179648 propertyList:0];
    v96[1] = v34;
    v35 = [NSArray arrayWithObjects:v96 count:2];
    v36 = [UIMenu menuWithTitle:&stru_10005C9B8 image:0 identifier:0 options:1 children:v35];

    v82 = v36;
    [v87 insertSiblingMenu:v36 beforeMenuForIdentifier:UIMenuSidebar];
    v37 = [[NSMutableArray alloc] initWithCapacity:9];
    v38 = 0;
    v39 = &PXApplicationAudioSessionSetCategory_ptr;
    v40 = v17;
    do
    {
      v41 = [NSNumber numberWithInteger:v38];
      v42 = v40[397];
      v43 = PULocalizedString();
      v44 = [v42 stringWithFormat:@"%@ %@", v43, v41];

      v45 = [UICommand commandWithTitle:v44 image:0 action:"toggleSortOrder:" propertyList:v41];
      [v37 addObject:v45];

      ++v38;
    }

    while (v38 != 9);
    v46 = PULocalizedString();
    v81 = v37;
    v47 = [UIMenu menuWithTitle:v46 image:0 identifier:0 options:0 children:v37];

    v80 = v47;
    [v87 insertSiblingMenu:v47 beforeMenuForIdentifier:UIMenuSidebar];
    v48 = [[NSMutableArray alloc] initWithCapacity:9];
    for (i = 0; i != 10; ++i)
    {
      v50 = [v39[393] numberWithInteger:i];
      stringValue2 = [v50 stringValue];
      v52 = v39;
      v53 = v40[397];
      v54 = PULocalizedString();
      v55 = [v53 stringWithFormat:@"%@ %@", v54, stringValue2];

      v56 = [UIKeyCommand commandWithTitle:v55 image:0 action:"toggleFilter:" input:stringValue2 modifierFlags:1572864 propertyList:v50];
      [v48 addObject:v56];

      v39 = v52;
    }

    v57 = PULocalizedString();
    px_popFirst = [v48 px_popFirst];
    v95[0] = px_popFirst;
    v59 = [UIMenu menuWithTitle:&stru_10005C9B8 image:0 identifier:0 options:1 children:v48];
    v95[1] = v59;
    v60 = [NSArray arrayWithObjects:v95 count:2];
    v61 = [UIMenu menuWithTitle:v57 image:0 identifier:0 options:0 children:v60];

    builderCopy = v87;
    v79 = v61;
    [v87 insertSiblingMenu:v61 beforeMenuForIdentifier:UIMenuSidebar];
    [v87 removeMenuForIdentifier:UIMenuTextSize];
    v78 = PXLocalizedString();
    v77 = [UIImage _systemImageNamed:@"plus.magnifyingglass"];
    v76 = [UIKeyCommand commandWithTitle:v78 image:v77 action:"zoomIn:" input:@"+" modifierFlags:0x100000 propertyList:&__kCFBooleanTrue];
    v94[0] = v76;
    v75 = [UIKeyCommand keyCommandWithInput:@"=" modifierFlags:0x100000 action:"zoomIn:"];
    v94[1] = v75;
    v74 = PXLocalizedString();
    v62 = [UIImage _systemImageNamed:@"minus.magnifyingglass"];
    v63 = [UIKeyCommand commandWithTitle:v74 image:v62 action:"zoomOut:" input:@"-" modifierFlags:0x100000 propertyList:&__kCFBooleanTrue];
    v94[2] = v63;
    v64 = [UIKeyCommand keyCommandWithInput:@"_" modifierFlags:0x100000 action:"zoomOut:"];
    v94[3] = v64;
    v65 = PULocalizedString();
    v66 = [UIImage _systemImageNamed:@"rectangle.arrowtriangle.2.outward"];
    v67 = [UIKeyCommand commandWithTitle:v65 image:v66 action:"toggleViewMode:" input:@"t" modifierFlags:0x80000 propertyList:0];
    v94[4] = v67;
    v68 = [NSArray arrayWithObjects:v94 count:5];
    v69 = [UIMenu menuWithTitle:&stru_10005C9B8 image:0 identifier:0 options:1 children:v68];

    v70 = v69;
    [v87 insertSiblingMenu:v69 beforeMenuForIdentifier:UIMenuSidebar];
    if ((PLHasInternalUI() & 1) != 0 && PLHasInternalDiagnostics())
    {
      v71 = [UIKeyCommand commandWithTitle:@"Internal Settings" image:0 action:"showInternalSettings:" input:@" modifierFlags:" propertyList:1572864, 0];
      v93 = v71;
      v72 = [NSArray arrayWithObjects:&v93 count:1];
      v73 = [UIMenu menuWithTitle:&stru_10005C9B8 image:0 identifier:0 options:1 children:v72];

      [v87 insertChildMenu:v73 atEndOfMenuForIdentifier:UIMenuPreferences];
    }

    [PXMenuGenerator insertImageMenuWithBuilder:v87 afterMenuForIdentifier:UIMenuView options:0];
  }
}

@end