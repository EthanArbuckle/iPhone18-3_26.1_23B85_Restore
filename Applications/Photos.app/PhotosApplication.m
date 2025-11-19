@interface PhotosApplication
+ (id)_appIntentsActionManagerForAssets:(id)a3;
+ (id)_appIntentsErrorForError:(id)a3;
+ (void)_donateTipsAppPhotosSignals;
+ (void)_performActionType:(id)a3 assets:(id)a4 completionHandler:(id)a5;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (NSUndoManager)fallbackUndoManager;
- (PUTabbedLibraryViewController)keyTabbedLibraryViewController;
- (PXActionManager)assetActionManager;
- (PXCollectionActionReceiver)keyCollectionActionReceiver;
- (PXLibraryActionReceiver)libraryActionReceiver;
- (UIScene)applicationScene;
- (UIViewController)contentViewController;
- (UIViewController)keyRootViewController;
- (double)displayScale;
- (id)_currentlyOpenEditSessionControllerForAsset:(id)a3;
- (id)_newImportViewController;
- (id)detailTextForGuidedAccessRestrictionWithIdentifier:(id)a3;
- (id)importViewControllerInstanceHost;
- (id)keySpec;
- (id)photosWindowSceneDelegate;
- (id)provideNavigationDestination;
- (id)px_photoLibrary;
- (id)stateCaptureDictionary;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)textForGuidedAccessRestrictionWithIdentifier:(id)a3;
- (void)_beginUndoActionsInvalidator;
- (void)_dequeueNextImportDevice;
- (void)_displayAndRemovePhoneInvitationFailures;
- (void)_navigateToDestination:(id)a3 debugDescription:(id)a4 completionHandler:(id)a5;
- (void)_satisfyAppIntentsURLNavigationPerformerRequestsIfNecessary;
- (void)_showAppleMusicPromptsIfNecessaryWithCompletion:(id)a3;
- (void)_showCloudPhotoLibraryExitPromptIfNecessary;
- (void)_showUserNotificationsPromptIfNecessaryWithCompletion:(id)a3;
- (void)_showWelcomeViewControllersIfNecessaryWithCompletion:(id)a3;
- (void)_tearDownImportViewController;
- (void)_userDidTakeScreenshot:(id)a3;
- (void)addAssetsToAlbum:(id)a3;
- (void)addAssetsToLastUsedAlbum:(id)a3;
- (void)addAssetsToSharedCollection:(id)a3;
- (void)adjustDateTime:(id)a3;
- (void)adjustLocation:(id)a3;
- (void)applicationDidFinishLaunching:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)canPerformEditRequestWithAssets:(id)a3 adjustments:(id)a4 completionHandler:(id)a5;
- (void)copy:(id)a3;
- (void)copyAdjustments:(id)a3;
- (void)copyEditsFromAsset:(id)a3 completionHandler:(id)a4;
- (void)duplicateAssets:(id)a3;
- (void)favoriteAssets:(id)a3;
- (void)find:(id)a3;
- (void)handleOAuthRedirectURL:(id)a3;
- (void)hideAssets:(id)a3;
- (void)importController:(id)a3 addedImportSource:(id)a4;
- (void)importController:(id)a3 removedImportSource:(id)a4;
- (void)makeKeyPhoto:(id)a3;
- (void)mergeDuplicates:(id)a3;
- (void)mergeDuplicatesWithoutConfirmation:(id)a3;
- (void)navigateToURLDestination:(id)a3 completionHandler:(id)a4;
- (void)newMemoryMovie:(id)a3;
- (void)noteSceneWillEnterForeground:(id)a3;
- (void)pasteAdjustments:(id)a3;
- (void)pasteEditsToAssets:(id)a3 completionHandler:(id)a4;
- (void)performEditRequestWithAssets:(id)a3 adjustments:(id)a4 completionHandler:(id)a5;
- (void)performNebuladCrashRecoveryIfNeededForceEndLastTimelapseSession:(BOOL)a3;
- (void)performSearchWithDecoratedQuery:(id)a3 completionHandler:(id)a4;
- (void)performSearchWithQuery:(id)a3 completionHandler:(id)a4;
- (void)photosPreferencesChanged;
- (void)prepareForApplicationDidBecomeActive;
- (void)prepareForApplicationDidEnterBackground;
- (void)prepareForApplicationWillEnterForeground;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)print:(id)a3;
- (void)providePhotoLibrary:(id)a3;
- (void)redo:(id)a3;
- (void)revertAdjustments:(id)a3;
- (void)shareAssets:(id)a3;
- (void)toggleLibraryFilter:(id)a3;
- (void)trashAssets:(id)a3;
- (void)trashAssetsWithoutConfirmation:(id)a3;
- (void)undo:(id)a3;
- (void)updateShowHiddenAlbumCachedValue;
- (void)updateShowRecentlyViewedAndSharedAlbumCachedValue;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
- (void)validateCommand:(id)a3;
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
          v8 = [v7 bundleIdentifier];
          *buf = 138412546;
          v15 = v8;
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
  v3 = [(PhotosApplication *)self photosWindowSceneDelegate];
  v4 = [v3 activationOptions];

  v5 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B344;
  block[3] = &unk_10005A120;
  block[4] = self;
  block[5] = v4;
  dispatch_after(v5, &_dispatch_main_q, block);
  px_dispatch_on_main_queue_when_idle_after_delay();
  v6 = [(PUImportViewController *)self->_importViewController importSource];

  if (v6)
  {
    v7 = [(PhotosApplication *)self importViewControllerInstanceHost];
    importViewController = self->_importViewController;
    v9 = [(PUImportViewController *)importViewController importSource];
    [v7 setImportViewController:importViewController forImportSource:v9];
  }
}

- (id)photosWindowSceneDelegate
{
  v4 = [(PhotosApplication *)self applicationScene];
  v5 = [v4 delegate];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = +[NSAssertionHandler currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v5 px_descriptionForAssertionMessage];
      [v6 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:910 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"scene.delegate", v8, v9}];
    }
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PhotosApplication *)self connectedScenes];
      *buf = 134217984;
      v14 = [v11 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "photosWindowSceneDelegate is nil as no application scene with appropriate delegate was found out of %tu scene(s)", buf, 0xCu);
    }
  }

  return v5;
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
        v8 = [v7 session];
        v9 = [v8 role];
        v10 = [v9 isEqualToString:UIWindowSceneSessionRoleApplication];

        if (v10)
        {
          v11 = [v7 delegate];
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

- (id)detailTextForGuidedAccessRestrictionWithIdentifier:(id)a3
{
  v3 = [(NSDictionary *)self->_photosGuidedAccessIdentifiersToNames objectForKey:a3];
  v4 = [v3 detailText];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"LemonadeGuidedAccessInvalidDetailKeyName";
  }

  v6 = PXLemonadeLocalizedString();

  return v6;
}

- (id)textForGuidedAccessRestrictionWithIdentifier:(id)a3
{
  v3 = [(NSDictionary *)self->_photosGuidedAccessIdentifiersToNames objectForKey:a3];
  v4 = [v3 primaryText];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"LemonadeGuidedAccessInvalidKeyName";
  }

  v6 = PXLemonadeLocalizedString();

  return v6;
}

- (void)pasteEditsToAssets:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v7 count])
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1316 description:{@"Invalid parameter not satisfying: %@", @"assets.count"}];

    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1317 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ([v7 count] == 1 && (objc_msgSend(v7, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), -[PhotosApplication _currentlyOpenEditSessionControllerForAsset:](self, "_currentlyOpenEditSessionControllerForAsset:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
  {
    v11 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Paste adjustments in the current edit session", buf, 2u);
    }

    [v10 pasteEditsWithCompletionHandler:v8];
  }

  else
  {
    v12 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Paste adjustments on the provided assets", v15, 2u);
    }

    [objc_opt_class() _performActionType:PXAssetActionTypePasteAdjustments assets:v7 completionHandler:v8];
  }
}

- (void)copyEditsFromAsset:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
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
  v10 = [(PhotosApplication *)self _currentlyOpenEditSessionControllerForAsset:v7];
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
    v24 = v7;
    v16 = [NSArray arrayWithObjects:&v24 count:1];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100016BCC;
    v21[3] = &unk_10005A5A8;
    v22 = v9;
    [v14 _performActionType:v15 assets:v16 completionHandler:v21];
  }
}

- (id)_currentlyOpenEditSessionControllerForAsset:(id)a3
{
  v4 = a3;
  v5 = [(PhotosApplication *)self keyRootViewController];
  v6 = [v5 px_descendantViewControllerWithClass:objc_opt_class()];
  v7 = [v6 photo];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v8 = v7;

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v8 uuid];
  v10 = [v4 uuid];
  v11 = [v9 isEqualToString:v10];

  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v6;
LABEL_8:
  v13 = v12;

  return v12;
}

- (void)performEditRequestWithAssets:(id)a3 adjustments:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_23:
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1186 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v20 = +[NSAssertionHandler currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1185 description:{@"Invalid parameter not satisfying: %@", @"assets"}];

  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_24:
  v22 = +[NSAssertionHandler currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1187 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v12 = [(PhotosApplication *)self keyRootViewController];
  if (![PUPhotoEditPendingEditsRequest canPerformEditsWithRootViewController:v12])
  {
    v14 = [v10 firstObject];
    if (!v14)
    {
      v23 = +[NSAssertionHandler currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1206 description:{@"Invalid parameter not satisfying: %@", @"adjustment"}];
    }

    v15 = [v14 category];
    if (v15 == 8)
    {
      if (![v9 count])
      {
        v25 = +[NSAssertionHandler currentHandler];
        [v25 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1218 description:{@"Invalid parameter not satisfying: %@", @"assets.count"}];
      }

      v16 = [v14 clockwise];
      v17 = &PXAssetActionTypeEditRotateRight;
      v18 = &PXAssetActionTypeEditRotateLeft;
    }

    else
    {
      if (v15)
      {
        v19 = [NSError px_errorWithDomain:PXAppIntentsNSErrorDomain code:-1003 debugDescription:@"Unsupported category: %ld", v15];
        v11[2](v11, 0, v19);
LABEL_20:

        goto LABEL_21;
      }

      if (![v9 count])
      {
        v24 = +[NSAssertionHandler currentHandler];
        [v24 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1210 description:{@"Invalid parameter not satisfying: %@", @"assets.count"}];
      }

      v16 = [v14 enabled];
      v17 = &PXAssetActionTypeEditEnableAutoEnhance;
      v18 = &PXAssetActionTypeEditDisableAutoEnhance;
    }

    if (!v16)
    {
      v17 = v18;
    }

    v19 = *v17;
    [objc_opt_class() _performActionType:v19 assets:v9 completionHandler:v11];
    goto LABEL_20;
  }

  v13 = [[PUPhotoEditPendingEditsRequest alloc] initWithAdjustments:v10 rootViewController:v12];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001718C;
  v26[3] = &unk_10005A340;
  v26[4] = self;
  v27 = v11;
  [v13 submitWithCompletionHandler:v26];

LABEL_21:
}

- (void)canPerformEditRequestWithAssets:(id)a3 adjustments:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1173 description:{@"Invalid parameter not satisfying: %@", @"adjustments"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v15 = +[NSAssertionHandler currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"assets"}];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  v17 = +[NSAssertionHandler currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1174 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v18 = 0;
  v12 = [PUPhotoEditPendingEditsRequest canPerformEditsWithAssets:v9 adjustments:v10 error:&v18];
  v13 = v18;
  if ((v12 & 1) == 0)
  {
    v14 = [objc_opt_class() _appIntentsErrorForError:v13];

    v13 = v14;
  }

  v11[2](v11, v12, v13);
}

- (void)performSearchWithDecoratedQuery:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1162 description:{@"Invalid parameter not satisfying: %@", @"decoratedQuery"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = +[NSAssertionHandler currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1163 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v11 = [[PXProgrammaticNavigationDestination alloc] initWithDecoratedSearchQuery:v8];

  [(PhotosApplication *)self _navigateToDestination:v11 debugDescription:@"Search" completionHandler:v7];
}

- (void)performSearchWithQuery:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1153 description:{@"Invalid parameter not satisfying: %@", @"query"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = +[NSAssertionHandler currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1154 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v11 = [[PXProgrammaticNavigationDestination alloc] initWithSearchText:v8];

  [(PhotosApplication *)self _navigateToDestination:v11 debugDescription:@"Search" completionHandler:v7];
}

- (double)displayScale
{
  v2 = [(PhotosApplication *)self photosWindowSceneDelegate];
  [v2 screenScale];
  v4 = v3;

  return v4;
}

- (id)provideNavigationDestination
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = [(PhotosApplication *)self keyRootViewController];
  v4 = [v3 px_descendantViewControllerWithClass:objc_opt_class()];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 photo];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;

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

  v9 = [v3 px_descendantViewControllerWithClass:objc_opt_class()];
  v7 = v9;
  if (!v9)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v10 = [v9 browsingSession];
  v11 = [v10 viewModel];
  v12 = [v11 currentAssetReference];
  v13 = [v12 asset];

  v14 = v13;
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

- (void)noteSceneWillEnterForeground:(id)a3
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

- (void)_navigateToDestination:(id)a3 debugDescription:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1027 description:{@"Invalid parameter not satisfying: %@", @"destination"}];
  }

  if ([v10 length])
  {
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1028 description:{@"Invalid parameter not satisfying: %@", @"debugDescription.length"}];

    if (v11)
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
  v12 = v9;
  v26 = v12;
  v27 = self;
  v30 = a2;
  v13 = v10;
  v28 = v13;
  v14 = v11;
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

- (void)navigateToURLDestination:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1012 description:{@"Invalid parameter not satisfying: %@", @"urlDestination"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1013 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v9 = [[PXProgrammaticNavigationDestination alloc] initWithURL:v8];

  if ([v9 type])
  {
    [(PhotosApplication *)self _navigateToDestination:v9 debugDescription:@"URL" completionHandler:v7];
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

    v7[2](v7, 0, v10);
  }
}

- (void)providePhotoLibrary:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (!v5)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PhotosApplication.m" lineNumber:1002 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v7 = [PhotosApplication px_photoLibrary]_0();
  v5[2](v5, v7);
}

- (PXCollectionActionReceiver)keyCollectionActionReceiver
{
  v2 = [(PhotosApplication *)self photosWindowSceneDelegate];
  v3 = [v2 collectionActionReceiver];

  return v3;
}

- (PXLibraryActionReceiver)libraryActionReceiver
{
  v2 = [(PhotosApplication *)self photosWindowSceneDelegate];
  v3 = [v2 libraryActionReceiver];

  return v3;
}

- (id)importViewControllerInstanceHost
{
  v2 = [(PhotosApplication *)self photosWindowSceneDelegate];
  v3 = [v2 importViewControllerInstanceHost];

  return v3;
}

- (UIViewController)keyRootViewController
{
  v2 = [(PhotosApplication *)self photosWindowSceneDelegate];
  v3 = [v2 rootViewController];

  return v3;
}

- (PUTabbedLibraryViewController)keyTabbedLibraryViewController
{
  v2 = [(PhotosApplication *)self photosWindowSceneDelegate];
  v3 = [v2 tabbedLibraryViewController];

  return v3;
}

- (id)keySpec
{
  v2 = [(PhotosApplication *)self photosWindowSceneDelegate];
  v3 = [v2 spec];

  return v3;
}

- (void)performNebuladCrashRecoveryIfNeededForceEndLastTimelapseSession:(BOOL)a3
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
  v8 = a3;
  dispatch_async(v5, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)importController:(id)a3 removedImportSource:(id)a4
{
  v5 = a4;
  v6 = PLCameraConnectionKitGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "_importDeviceRemoved", buf, 2u);
  }

  v7 = [v5 uuid];
  v8 = [(PUImportViewController *)self->_importViewController importSource];
  v9 = [v8 uuid];

  if ([v7 isEqualToString:v9])
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
        v16 = [v15 uuid];
        if ([v16 isEqualToString:v7])
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

- (void)importController:(id)a3 addedImportSource:(id)a4
{
  v5 = a4;
  v6 = PLCameraConnectionKitGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "_importDeviceAdded", buf, 2u);
  }

  v7 = [v5 uuid];
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

        v13 = [*(*(&v19 + 1) + 8 * v12) uuid];
        v14 = [v13 isEqualToString:v7];

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

  [(NSMutableArray *)importDeviceQueue addObject:v5, v19];
  v18 = [(PUImportViewController *)self->_importViewController importSource];

  if (!v18)
  {
    [(PhotosApplication *)self _dequeueNextImportDevice];
  }

LABEL_16:
}

- (void)_showAppleMusicPromptsIfNecessaryWithCompletion:(id)a3
{
  v5 = a3;
  v3 = +[PXStorySettings sharedInstance];
  v4 = [v3 appleMusicPromptTrigger];

  if (v4)
  {
    v5[2]();
  }

  else
  {
    [PXAppleMusicPrompter showPromptsIfNeededWithCompletion:v5];
  }
}

- (void)_showWelcomeViewControllersIfNecessaryWithCompletion:(id)a3
{
  v6 = a3;
  if ([(PhotosApplication *)self launchedToTest])
  {
    v6[2]();
  }

  else
  {
    v4 = [(PhotosApplication *)self keyRootViewController];
    v5 = +[PUWelcomeViewControllersManager defaultManager];
    [v5 presentWelcomeViewControllersIfNecessaryFromViewController:v4 completion:v6];
  }
}

- (void)_showCloudPhotoLibraryExitPromptIfNecessary
{
  if ((PXCPLIsInTestReadonlyMode() & 1) == 0)
  {
    v3 = [(PhotosApplication *)self px_photoLibrary];
    v4 = [v3 cplStatus];
    v5 = [v4 exitDeleteTime];
    v6 = v5;
    if (!v5)
    {
LABEL_14:

      return;
    }

    [v5 timeIntervalSince1970];
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

      v24 = [(PhotosApplication *)self px_firstKeyWindow];
      [v24 pl_presentViewController:v19 animated:1];
    }

    goto LABEL_13;
  }
}

- (void)handleOAuthRedirectURL:(id)a3
{
  v3 = a3;
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
  v6 = [v4 sharedInstance];
  v7 = [v6 handleOAuthRedirectURL:v3];
  v8 = PLUIGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = [v3 scheme];
      v11 = [v3 path];
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handled OAuth Redirect url %@:%@", buf, 0x16u);
    }
  }

  else if (v9)
  {
    v12 = [v3 scheme];
    v13 = [v3 path];
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to handle OAuth Redirect url %@:%@", buf, 0x16u);
  }
}

- (void)_tearDownImportViewController
{
  v5 = [(PUImportViewController *)self->_importViewController importSource];
  [(PUImportViewController *)self->_importViewController setImportSource:0];
  importViewController = self->_importViewController;
  self->_importViewController = 0;

  v4 = [(PhotosApplication *)self importViewControllerInstanceHost];
  [v4 setImportViewController:0 forImportSource:v5];
}

- (void)_dequeueNextImportDevice
{
  v3 = [(NSMutableArray *)self->_importDeviceQueue firstObject];
  v4 = PLCameraConnectionKitGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "_dequeueNextImportDevice: %@", &v8, 0xCu);
  }

  if (v3)
  {
    [(NSMutableArray *)self->_importDeviceQueue removeObjectAtIndex:0];
    if (self->_importViewController)
    {
      [(PhotosApplication *)self _tearDownImportViewController];
    }

    v5 = [(PhotosApplication *)self _newImportViewController];
    importViewController = self->_importViewController;
    self->_importViewController = v5;

    [(PUImportViewController *)self->_importViewController setImportSource:v3];
    v7 = [(PhotosApplication *)self importViewControllerInstanceHost];
    [v7 setImportViewController:self->_importViewController forImportSource:v3];
  }

  else
  {
    [(PhotosApplication *)self _tearDownImportViewController];
  }
}

- (id)_newImportViewController
{
  v3 = [(PhotosApplication *)self keySpec];
  if (!v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_newImportViewController: PhotosAppSpec from keySpec is nil; it may be too early to access our connected scene. Instantiating a PhotosAppSpec from our current interface idiom as a fallback.", v11, 2u);
    }

    v5 = +[UIDevice currentDevice];
    v3 = +[PhotosAppSpec specForIdiom:](PhotosAppSpec, "specForIdiom:", [v5 userInterfaceIdiom]);
  }

  v6 = [PUImportViewController alloc];
  v7 = [v3 importViewControllerSpec];
  v8 = [(PhotosApplication *)self px_photoLibrary];
  v9 = [v6 initWithSpec:v7 photoLibrary:v8];

  return v9;
}

- (void)photosPreferencesChanged
{
  v7.receiver = self;
  v7.super_class = PhotosApplication;
  [(PhotosApplication *)&v7 photosPreferencesChanged];
  v3 = [(PhotosApplication *)self hiddenAlbumIsVisible];
  [(PhotosApplication *)self updateShowHiddenAlbumCachedValue];
  [(PhotosApplication *)self updateShowRecentlyViewedAndSharedAlbumCachedValue];
  if (![(PhotosApplication *)self hiddenAlbumIsVisible]&& v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Preferences 'HiddenAlbumVisible' changed to NO in Photos. Forcing navigation to root view controller in current navigation controller.", v6, 2u);
    }

    v5 = [(PhotosApplication *)self keyTabbedLibraryViewController];
    [v5 navigateToCollectionsTabRoot];
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
  v2 = [(PhotosApplication *)self px_photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];
  v4 = [PHAssetCollection fetchAssetCollectionsWithType:2 subtype:1000000201 options:v3];
  v5 = [v4 firstObject];

  v6 = v5;
  px_dispatch_on_main_queue();
}

- (void)_userDidTakeScreenshot:(id)a3
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

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 request];
  v10 = [v9 content];
  v11 = [v10 userInfo];
  v12 = [v11 objectForKeyedSubscript:kNotificationKeySuppresionContexts];

  if ([v12 count])
  {
    [NSSet setWithArray:v12];
  }

  else
  {
    +[NSSet set];
  }
  v13 = ;
  v14 = [(PhotosApplication *)self notificationSuppressionContexts];
  v15 = [v14 intersectsSet:v13];

  if (v15)
  {
    v16 = PLUIGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Suppressing notification: %@", &v17, 0xCu);
    }

    v8[2](v8, 0);
  }

  else
  {
    v8[2](v8, 27);
  }
}

- (void)_showUserNotificationsPromptIfNecessaryWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[UNUserNotificationCenter currentNotificationCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001A744;
  v6[3] = &unk_10005A5A8;
  v7 = v3;
  v5 = v3;
  [v4 requestAuthorizationWithOptions:7 completionHandler:v6];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = PhotosApplication;
  [(PhotosApplication *)&v5 pressesBegan:a3 withEvent:a4];
  [(PhotosApplication *)self invalidateActionManagerProvider];
}

- (void)prepareForApplicationDidEnterBackground
{
  v2.receiver = self;
  v2.super_class = PhotosApplication;
  [(PhotosApplication *)&v2 prepareForApplicationDidEnterBackground];
  +[_TtC9PhotosApp33PhotosAppShortcutsProviderWrapper updateAppShortcutParameters];
}

- (void)applicationDidFinishLaunching:(id)a3
{
  v29.receiver = self;
  v29.super_class = PhotosApplication;
  [(PhotosApplication *)&v29 applicationDidFinishLaunching:a3];
  v30 = PXGuidedAccessDeletionAllowedRestrictionIdentifier;
  v4 = [[_PXGuidedAccessStringTuple alloc] initWithPrimaryText:@"LemonadeGuidedAccessNoDeleteName" detailText:@"LemonadeGuidedAccessNoDeleteDetailName"];
  v31 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  photosGuidedAccessIdentifiersToNames = self->_photosGuidedAccessIdentifiersToNames;
  self->_photosGuidedAccessIdentifiersToNames = v5;

  v7 = +[PURootSettings sharedInstance];
  v8 = [v7 allowGuidedAccessRestrictions];

  if (v8)
  {
    v9 = [(NSDictionary *)self->_photosGuidedAccessIdentifiersToNames allKeys];
    guidedAccessRestrictionIdentifiers = self->_guidedAccessRestrictionIdentifiers;
    self->_guidedAccessRestrictionIdentifiers = v9;
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

  v22 = [(PhotosApplication *)self px_photoLibrary];
  [CPAnalytics setupSystemPropertyProvidersForLibrary:v22];

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
  v3 = [(PhotosApplication *)self contentViewController];
  WeakRetained = objc_loadWeakRetained(&self->_actionManagerProvider);

  if (WeakRetained)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = [v3 view];
    v7 = [v6 window];
    v8 = [v7 _responderForKeyEvents];

    if (v8)
    {
      while ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v9 = [v8 nextResponder];

        v8 = v9;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      v8 = v8;
    }

LABEL_10:
    objc_storeWeak(&self->_actionManagerProvider, v8);
  }

  v10 = objc_loadWeakRetained(&self->_actionManagerProvider);
  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_actionManagerProvider);
    if (v11 == self)
    {
      v13 = 0;
    }

    else
    {
      v12 = objc_loadWeakRetained(&self->_actionManagerProvider);
      v13 = [v12 assetActionManager];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSUndoManager)fallbackUndoManager
{
  v2 = [(PhotosApplication *)self contentViewController];
  v3 = [v2 undoManager];

  return v3;
}

- (UIViewController)contentViewController
{
  v3 = [(PhotosApplication *)self keyTabbedLibraryViewController];
  v4 = [v3 view];
  v5 = [v4 window];

  if (!v5)
  {
    v6 = [(PhotosApplication *)self keyRootViewController];

    v7 = [v6 view];
    v8 = [v7 window];
    if (v8)
    {
LABEL_8:
    }

    else
    {
      while (1)
      {
        v10 = [v6 presentedViewController];

        if (!v10)
        {
          break;
        }

        v9 = [v6 presentedViewController];

        v7 = [v9 view];
        v8 = [v7 window];
        v6 = v9;
        if (v8)
        {
          v6 = v9;
          goto LABEL_8;
        }
      }
    }

    v3 = v6;
  }

  return v3;
}

+ (void)_performActionType:(id)a3 assets:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 _appIntentsActionManagerForAssets:a4];
  v12 = 0;
  if ([v10 canPerformActionType:v8 error:&v12])
  {
    v11 = [v10 actionPerformerForActionType:v8];
    [v11 performActionWithCompletionHandler:v9];
  }

  else
  {
    v9[2](v9, 0, v12);
  }
}

+ (id)_appIntentsActionManagerForAssets:(id)a3
{
  v3 = a3;
  v4 = [PHManualFetchResult alloc];
  v5 = [v3 firstObject];
  v6 = [v5 photoLibrary];
  v7 = [v4 initWithObjects:v3 photoLibrary:v6 fetchType:PHFetchTypeAsset fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v8 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerWithAssets:v7];
  v9 = [[PXSectionedSelectionManager alloc] initWithDataSourceManager:v8];
  [v9 performChanges:&stru_10005A360];
  v10 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:v9];

  return v10;
}

+ (id)_appIntentsErrorForError:(id)a3
{
  v3 = a3;
  if ([v3 px_isDomain:PUPhotoEditPendingEditsRequestErrorDomain code:2])
  {
    v4 = [v3 userInfo];
    v5 = [v4 objectForKeyedSubscript:PUAssetMediaTypeErrorKey];

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
    v8 = [NSError px_errorWithDomain:v10 code:v12 underlyingError:v3 userInfo:v6 debugDescription:v11];

    goto LABEL_18;
  }

  if ([v3 px_isDomain:PEAdjustmentFilterErrorDomain code:1])
  {
    v7 = [v3 userInfo];
    v5 = [v7 objectForKeyedSubscript:PEAdjustmentFilterMediaTypeErrorKey];

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

  if (([v3 px_isDomain:PEAdjustmentApertureErrorDomain code:2] & 1) != 0 || (v8 = v3, objc_msgSend(v3, "px_isDomain:code:", PEAdjustmentDepthErrorDomain, 2)))
  {
    v9 = [v3 userInfo];
    v5 = [v9 objectForKeyedSubscript:PEAdjustmentApertureMediaTypeErrorKey];

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
  v7 = [v2 librarySpecificFetchOptions];

  v3 = [PHCollection fetchTopLevelUserCollectionsWithOptions:v7];
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

- (void)toggleLibraryFilter:(id)a3
{
  v4 = PXNumberPropertyFromCommand();
  v5 = PXMenuItemIndexFromNumber();

  v6 = [(PhotosApplication *)self libraryActionReceiver];
  [v6 performLibraryFilterMenuActionForItemAtIndex:v5];
}

- (void)adjustLocation:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeEditLocation];

  [v4 performActionWithCompletionHandler:0];
}

- (void)adjustDateTime:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeEditDateTime];

  [v4 performActionWithCompletionHandler:0];
}

- (void)revertAdjustments:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeRevertAdjustments];

  [v4 performActionWithCompletionHandler:0];
}

- (void)pasteAdjustments:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypePasteAdjustments];

  [v4 performActionWithCompletionHandler:0];
}

- (void)copyAdjustments:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeCopyAdjustments];

  [v4 performActionWithCompletionHandler:0];
}

- (void)mergeDuplicatesWithoutConfirmation:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeMergeDuplicatesWithoutConfirmation];

  [v4 performActionWithCompletionHandler:0];
}

- (void)mergeDuplicates:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeMergeDuplicates];

  [v4 performActionWithCompletionHandler:0];
}

- (void)trashAssetsWithoutConfirmation:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = PLUIActionsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trashing assets without confirmation", v7, 2u);
  }

  v5 = PXAssetActionTypeTrashNoConfirm;
  if (([v3 canPerformActionType:PXAssetActionTypeTrashNoConfirm] & 1) != 0 || (v5 = PXAssetActionTypeDelete, objc_msgSend(v3, "canPerformActionType:", PXAssetActionTypeDelete)))
  {
    v6 = [v3 actionPerformerForActionType:v5];
    [v6 performActionWithCompletionHandler:0];
  }
}

- (void)trashAssets:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = PXAssetActionTypeRemove;
  v6 = v3;
  if ([v3 canPerformActionType:PXAssetActionTypeRemove] & 1) != 0 || (v4 = PXAssetActionTypeTrash, (objc_msgSend(v6, "canPerformActionType:", PXAssetActionTypeTrash)) || (v4 = PXAssetActionTypeDelete, objc_msgSend(v6, "canPerformActionType:", PXAssetActionTypeDelete)))
  {
    v5 = [v6 actionPerformerForActionType:v4];
    [v5 performActionWithCompletionHandler:0];
  }
}

- (void)makeKeyPhoto:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = PXAssetActionTypeAlbumMakeKeyPhoto;
  v6 = v3;
  if ([v3 canPerformActionType:PXAssetActionTypeAlbumMakeKeyPhoto] & 1) != 0 || (v4 = PXAssetActionTypePersonMakeKeyPhoto, (objc_msgSend(v6, "canPerformActionType:", PXAssetActionTypePersonMakeKeyPhoto)) || (v4 = PXAssetActionTypeStoryMakeKeyPhoto, objc_msgSend(v6, "canPerformActionType:", PXAssetActionTypeStoryMakeKeyPhoto)))
  {
    v5 = [v6 actionPerformerForActionType:v4];
    [v5 performActionWithCompletionHandler:0];
  }
}

- (void)favoriteAssets:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeToggleFavorite];

  [v4 performActionWithCompletionHandler:0];
}

- (void)hideAssets:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeHide];

  [v4 performActionWithCompletionHandler:0];
}

- (void)duplicateAssets:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeDuplicate];

  [v4 performActionWithCompletionHandler:0];
}

- (void)addAssetsToSharedCollection:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeAddToSharedCollection];

  [v4 performActionWithCompletionHandler:0];
}

- (void)addAssetsToLastUsedAlbum:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeAddToLastUsedAlbum];

  [v4 performActionWithCompletionHandler:0];
}

- (void)addAssetsToAlbum:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeAddToAlbum];

  [v4 performActionWithCompletionHandler:0];
}

- (void)shareAssets:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeShare];

  [v4 performActionWithCompletionHandler:0];
}

- (void)print:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypePrint];

  [v4 performActionWithCompletionHandler:0];
}

- (void)newMemoryMovie:(id)a3
{
  v6 = [PXProgrammaticNavigationDestination memoryCreationDestinationWithPrompt:0];
  v4 = [[PXProgrammaticNavigationRequest alloc] initWithDestination:v6 options:0 completionHandler:0];
  v5 = [(PhotosApplication *)self keyRootViewController];
  PXProgrammaticNavigationRequestExecute();
}

- (void)copy:(id)a3
{
  v3 = [(PhotosApplication *)self assetActionManager];
  v4 = [v3 actionPerformerForActionType:PXAssetActionTypeCopy];

  [v4 performActionWithCompletionHandler:0];
}

- (void)redo:(id)a3
{
  v3 = [(PhotosApplication *)self fallbackUndoManager];
  [v3 redo];
}

- (void)undo:(id)a3
{
  v3 = [(PhotosApplication *)self fallbackUndoManager];
  [v3 undo];
}

- (void)find:(id)a3
{
  v6 = [[PXProgrammaticNavigationDestination alloc] initWithType:14 revealMode:1];
  v4 = [[PXProgrammaticNavigationRequest alloc] initWithDestination:v6 options:0 completionHandler:0];
  v5 = [(PhotosApplication *)self keyRootViewController];
  PXProgrammaticNavigationRequestExecute();
}

- (void)validateCommand:(id)a3
{
  v17 = a3;
  if ([v17 action] == "undo:")
  {
    v12 = [(PhotosApplication *)self fallbackUndoManager];
    v13 = [v12 undoMenuItemTitle];
LABEL_21:
    v16 = v13;
    [v17 setTitle:v13];

    goto LABEL_22;
  }

  if ([v17 action] == "redo:")
  {
    v12 = [(PhotosApplication *)self fallbackUndoManager];
    v13 = [v12 redoMenuItemTitle];
    goto LABEL_21;
  }

  if ([v17 action] == "hideAssets:")
  {
    v14 = [(PhotosApplication *)self assetActionManager];
    v12 = v14;
    v15 = &PXAssetActionTypeHide;
LABEL_20:
    v13 = [v14 localizedTitleForActionType:*v15 useCase:1];
    goto LABEL_21;
  }

  if ([v17 action] == "favoriteAssets:")
  {
    v14 = [(PhotosApplication *)self assetActionManager];
    v12 = v14;
    v15 = &PXAssetActionTypeToggleFavorite;
    goto LABEL_20;
  }

  if ([v17 action] == "addAssetsToLastUsedAlbum:")
  {
    v14 = [(PhotosApplication *)self assetActionManager];
    v12 = v14;
    v15 = &PXAssetActionTypeAddToLastUsedAlbum;
    goto LABEL_20;
  }

  if ([v17 action] == "navigateToSegment:" || objc_msgSend(v17, "action") == "navigateToPreviousTab:" || objc_msgSend(v17, "action") == "navigateToNextTab:" || objc_msgSend(v17, "action") == "toggleSortOrder:" || objc_msgSend(v17, "action") == "toggleFilter:")
  {
    [v17 setAttributes:{objc_msgSend(v17, "attributes") | 4}];
  }

  else if ([v17 action] == "toggleLibraryFilter:")
  {
    v4 = PXNumberPropertyFromCommand();
    v5 = PXMenuItemIndexFromNumber();

    v6 = [(PhotosApplication *)self libraryActionReceiver];
    v7 = [v6 libraryFilterMenuActionTitleForItemIndex:v5];

    if (v7)
    {
      [v17 setTitle:v7];
      v8 = [(PhotosApplication *)self libraryActionReceiver];
      v9 = [v8 libraryFilterMenuActionImageNameForItemIndex:v5];
      v10 = [UIImage systemImageNamed:v9];
      [v17 setImage:v10];

      v11 = [(PhotosApplication *)self libraryActionReceiver];
      [v11 libraryFilterMenuActionStateForItemIndex:v5];
      [v17 setState:UIMenuElementStateFromPXMenuActionState()];
    }

    else
    {
      [v17 setAttributes:{objc_msgSend(v17, "attributes") | 4}];
    }
  }

LABEL_22:
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  if ("newAlbum:" == a3 || "newSharedAlbum:" == a3 || "newSmartAlbum:" == a3 || "newFolder:" == a3)
  {
    v7 = [(PhotosApplication *)self keyCollectionActionReceiver];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PhotosApplication;
    v7 = [PhotosApplication targetForAction:"targetForAction:withSender:" withSender:?];
  }

  return v7;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(PhotosApplication *)self assetActionManager];
  v8 = v7;
  if ("undo:" == a3)
  {
    v10 = [(PhotosApplication *)self fallbackUndoManager];
    v11 = [v10 canUndo];
LABEL_24:
    v12 = v11;
LABEL_25:

    goto LABEL_51;
  }

  if ("redo:" == a3)
  {
    v10 = [(PhotosApplication *)self fallbackUndoManager];
    v11 = [v10 canRedo];
    goto LABEL_24;
  }

  if ("newMemoryMovie:" == a3)
  {
    v10 = [(PhotosApplication *)self keyRootViewController];
    v13 = [PXProgrammaticNavigationDestination memoryCreationDestinationWithPrompt:0];
    v12 = [v10 routingOptionsForDestination:v13] != 0;

    goto LABEL_25;
  }

  if ("copy:" == a3)
  {
    v14 = &PXAssetActionTypeCopy;
    goto LABEL_49;
  }

  if ("print:" == a3)
  {
    v14 = &PXAssetActionTypePrint;
    goto LABEL_49;
  }

  if ("makeKeyPhoto:" == a3)
  {
    if (([v7 canPerformActionType:PXAssetActionTypeAlbumMakeKeyPhoto] & 1) == 0 && (objc_msgSend(v8, "canPerformActionType:", PXAssetActionTypePersonMakeKeyPhoto) & 1) == 0)
    {
      v14 = &PXAssetActionTypeStoryMakeKeyPhoto;
      goto LABEL_49;
    }
  }

  else
  {
    if ("shareAssets:" == a3)
    {
      v14 = &PXAssetActionTypeShare;
      goto LABEL_49;
    }

    if ("addAssetsToAlbum:" == a3)
    {
      v14 = &PXAssetActionTypeAddToAlbum;
      goto LABEL_49;
    }

    if ("addAssetsToLastUsedAlbum:" == a3)
    {
      v14 = &PXAssetActionTypeAddToLastUsedAlbum;
      goto LABEL_49;
    }

    if ("addAssetsToSharedCollection:" == a3)
    {
      v14 = &PXAssetActionTypeAddToSharedCollection;
      goto LABEL_49;
    }

    if ("duplicateAssets:" == a3)
    {
      v14 = &PXAssetActionTypeDuplicate;
      goto LABEL_49;
    }

    if ("hideAssets:" == a3)
    {
      v14 = &PXAssetActionTypeHide;
      goto LABEL_49;
    }

    if ("favoriteAssets:" == a3)
    {
      v14 = &PXAssetActionTypeToggleFavorite;
      goto LABEL_49;
    }

    if ("trashAssets:" != a3)
    {
      if ("adjustDateTime:" == a3)
      {
        v14 = &PXAssetActionTypeEditDateTime;
      }

      else if ("adjustLocation:" == a3)
      {
        v14 = &PXAssetActionTypeEditLocation;
      }

      else if ("copyAdjustments:" == a3)
      {
        v14 = &PXAssetActionTypeCopyAdjustments;
      }

      else if ("pasteAdjustments:" == a3)
      {
        v14 = &PXAssetActionTypePasteAdjustments;
      }

      else if ("revertAdjustments:" == a3)
      {
        v14 = &PXAssetActionTypeRevertAdjustments;
      }

      else
      {
        if ("mergeDuplicates:" != a3)
        {
          v16.receiver = self;
          v16.super_class = PhotosApplication;
          v9 = [(PhotosApplication *)&v16 canPerformAction:a3 withSender:v6];
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

    if (([v7 canPerformActionType:PXAssetActionTypeRemove] & 1) == 0 && (objc_msgSend(v8, "canPerformActionType:", PXAssetActionTypeTrash) & 1) == 0)
    {
      v14 = &PXAssetActionTypeDelete;
      goto LABEL_49;
    }
  }

  v12 = 1;
LABEL_51:

  return v12;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [v3 system];
  v5 = +[UIMenuSystem mainSystem];

  if (v4 == v5)
  {
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_10001E638;
    v91[3] = &unk_10005A478;
    v92 = &stru_10005A3F0;
    [v3 replaceChildrenOfMenuForIdentifier:UIMenuNewItem fromChildrenBlock:v91];
    [v3 removeMenuForIdentifier:UIMenuTextStyle];
    v6 = PXLocalizedString();
    v7 = [UIImage _systemImageNamed:@"info.circle"];
    [UIKeyCommand commandWithTitle:v6 image:v7 action:"toggleInspector:" input:@"i" modifierFlags:0x100000 propertyList:0];
    v9 = v8 = v3;
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
      v25 = [v24 stringValue];
      v26 = v17[397];
      PULocalizedString();
      v28 = v27 = v17;
      v29 = [v26 stringWithFormat:@"%@ %@", v28, v25];

      v30 = [UIKeyCommand commandWithTitle:v29 image:0 action:"navigateToSegment:" input:v25 modifierFlags:0x100000 propertyList:v24];
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
      v51 = [v50 stringValue];
      v52 = v39;
      v53 = v40[397];
      v54 = PULocalizedString();
      v55 = [v53 stringWithFormat:@"%@ %@", v54, v51];

      v56 = [UIKeyCommand commandWithTitle:v55 image:0 action:"toggleFilter:" input:v51 modifierFlags:1572864 propertyList:v50];
      [v48 addObject:v56];

      v39 = v52;
    }

    v57 = PULocalizedString();
    v58 = [v48 px_popFirst];
    v95[0] = v58;
    v59 = [UIMenu menuWithTitle:&stru_10005C9B8 image:0 identifier:0 options:1 children:v48];
    v95[1] = v59;
    v60 = [NSArray arrayWithObjects:v95 count:2];
    v61 = [UIMenu menuWithTitle:v57 image:0 identifier:0 options:0 children:v60];

    v3 = v87;
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