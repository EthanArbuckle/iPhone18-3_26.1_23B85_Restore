@interface MSSSharedLibraryBaseController
+ (void)initialize;
- (MSSSharedLibraryBaseController)init;
- (MSSSharedLibraryBaseController)initWithSettingsBaseController:(id)controller;
- (NSArray)invitationSpecifiers;
- (NSArray)settingsSpecifiers;
- (SettingsBaseController)settingsBaseController;
- (id)_sharedLibraryButtonSubtitle;
- (id)_sharedLibraryButtonTitle;
- (void)_popToSettingsBaseControllerIfNeeded;
- (void)_updateSharedLibrarySpecifiers;
- (void)didTapLearnMoreLink:(id)link;
- (void)didTapSharedLibraryButton:(id)button;
- (void)didTapSharedLibraryInvitation:(id)invitation;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setCanEnableSharedLibrary:(BOOL)library;
- (void)setCloudPhotosEnabled:(BOOL)enabled;
- (void)setCloudPhotosStatus:(id)status;
@end

@implementation MSSSharedLibraryBaseController

- (SettingsBaseController)settingsBaseController
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsBaseController);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (off_33360 == context)
  {
    [(MSSSharedLibraryBaseController *)self _updateSharedLibrarySpecifiers:observable];

    [(MSSSharedLibraryBaseController *)self _popToSettingsBaseControllerIfNeeded];
  }
}

- (void)didTapLearnMoreLink:(id)link
{
  if (self->_learnMoreURL)
  {
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    learnMoreURL = self->_learnMoreURL;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_12378;
    v6[3] = &unk_2D178;
    v6[4] = self;
    [v4 openURL:learnMoreURL configuration:0 completionHandler:v6];
  }
}

- (void)didTapSharedLibraryButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsBaseController);
  navigationController = [WeakRetained navigationController];
  v6 = [PXViewControllerPresenter defaultPresenterWithViewController:navigationController];

  v7 = [APApplication applicationWithBundleIdentifier:PLMobileSlideshowBundleId];
  v8 = +[APGuard sharedGuard];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_12564;
  v10[3] = &unk_2D150;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 authenticateForSubject:v7 completion:v10];
}

- (void)didTapSharedLibraryInvitation:(id)invitation
{
  statusProvider = [(MSSSharedLibraryBaseController *)self statusProvider];
  WeakRetained = objc_loadWeakRetained(&self->_settingsBaseController);
  navigationController = [WeakRetained navigationController];
  v6 = [PXViewControllerPresenter defaultPresenterWithViewController:navigationController];

  invitation = [statusProvider invitation];
  PXSharedLibraryViewInvitation();
}

- (void)setCloudPhotosStatus:(id)status
{
  statusCopy = status;
  v5 = self->_cloudPhotosStatus;
  settingsSpecifiers = v5;
  if (v5 != statusCopy)
  {
    v7 = [(PXCPLUIStatus *)v5 isEqual:?];

    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_cloudPhotosStatus, status);
    settingsSpecifiers = self->_settingsSpecifiers;
    self->_settingsSpecifiers = 0;
  }

LABEL_5:
}

- (void)setCloudPhotosEnabled:(BOOL)enabled
{
  if (self->_cloudPhotosEnabled != enabled)
  {
    self->_cloudPhotosEnabled = enabled;
    settingsSpecifiers = self->_settingsSpecifiers;
    self->_settingsSpecifiers = 0;
    _objc_release_x1();
  }
}

- (void)setCanEnableSharedLibrary:(BOOL)library
{
  if (self->_canEnableSharedLibrary != library)
  {
    self->_canEnableSharedLibrary = library;
    settingsSpecifiers = self->_settingsSpecifiers;
    self->_settingsSpecifiers = 0;
    _objc_release_x1();
  }
}

- (NSArray)settingsSpecifiers
{
  canEnableSharedLibrary = [(MSSSharedLibraryBaseController *)self canEnableSharedLibrary];
  settingsSpecifiers = self->_settingsSpecifiers;
  if (settingsSpecifiers)
  {
    v5 = 1;
  }

  else
  {
    v5 = canEnableSharedLibrary == 0;
  }

  if (!v5)
  {
    v35 = PXLocalizedSharedLibraryString();
    v6 = [PSSpecifier groupSpecifierWithID:@"SharedLibrarySettingsGroup" name:?];
    _sharedLibraryButtonTitle = [(MSSSharedLibraryBaseController *)self _sharedLibraryButtonTitle];
    v8 = [PSSpecifier preferenceSpecifierNamed:_sharedLibraryButtonTitle target:self set:0 get:"_sharedLibraryButtonSubtitle" detail:0 cell:2 edit:0];

    [v8 setIdentifier:@"SharedLibrarySettingsButton"];
    v9 = [UIImage px_imageNamed:@"SharedLibrary-28-Rounded"];
    [v8 setObject:v9 forKeyedSubscript:PSIconImageKey];

    [v8 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    cloudPhotosStatus = [(MSSSharedLibraryBaseController *)self cloudPhotosStatus];
    if ([(MSSSharedLibraryBaseController *)self cloudPhotosEnabled])
    {
      hasCompletedInitialSync = [cloudPhotosStatus hasCompletedInitialSync];
    }

    else
    {
      hasCompletedInitialSync = 0;
    }

    v34 = v6;
    if (-[MSSSharedLibraryBaseController cloudPhotosEnabled](self, "cloudPhotosEnabled") && ([cloudPhotosStatus hasCompletedInitialSync] & 1) == 0)
    {
      isPaused = [cloudPhotosStatus isPaused];
      v33 = 1;
    }

    else
    {
      v33 = 0;
      isPaused = 0;
    }

    inResetSync = [cloudPhotosStatus inResetSync];
    isRestoringLibrary = [cloudPhotosStatus isRestoringLibrary];
    cloudPhotosInExitMode = [(MSSSharedLibraryBaseController *)self cloudPhotosInExitMode];
    statusProvider = [(MSSSharedLibraryBaseController *)self statusProvider];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_12E14;
    v36[3] = &unk_2D100;
    v18 = v8;
    v37 = v18;
    v38 = hasCompletedInitialSync;
    v39 = inResetSync;
    v40 = isRestoringLibrary;
    v41 = cloudPhotosInExitMode;
    v19 = objc_retainBlock(v36);
    if (PXSharedLibraryShouldDisplaySettings() && (!(inResetSync & 1 | ((hasCompletedInitialSync & 1) == 0) | (isRestoringLibrary | cloudPhotosInExitMode) & 1) || PXSharedLibraryLocalModeFeatureEnabled()))
    {
      [v18 setDetailControllerClass:objc_opt_class()];
      (v19[2])(v19, 1);
LABEL_21:
      v21 = v34;
LABEL_30:
      v42[0] = v21;
      v42[1] = v18;
      v25 = [NSArray arrayWithObjects:v42 count:2];
      v26 = self->_settingsSpecifiers;
      self->_settingsSpecifiers = v25;

      goto LABEL_31;
    }

    if ([statusProvider hasPreview])
    {
      [v18 setDetailControllerClass:objc_opt_class()];
      CanSetupSharedLibraryOrPreview = PXSharedLibraryCanSetupSharedLibraryOrPreview();
      (v19[2])(v19, CanSetupSharedLibraryOrPreview);
      goto LABEL_21;
    }

    [v18 setControllerLoadAction:"didTapSharedLibraryButton:"];
    v22 = PXSharedLibraryCanSetupSharedLibraryOrPreview();
    (v19[2])(v19, v22);
    if (isRestoringLibrary || ([(MSSSharedLibraryBaseController *)self cloudPhotosEnabled]& isPaused) == 1 || [(MSSSharedLibraryBaseController *)self cloudPhotosEnabled]&& ((v33 | inResetSync) & 1) != 0 || ([(MSSSharedLibraryBaseController *)self cloudPhotosEnabled]& cloudPhotosInExitMode) == 1)
    {
      v23 = PXLocalizedSharedLibraryString();
      v24 = PSFooterTextGroupKey;
      v21 = v34;
    }

    else
    {
      v21 = v34;
      if ([(MSSSharedLibraryBaseController *)self cloudPhotosEnabled])
      {
        exiting = [statusProvider exiting];

        if (!exiting)
        {
          if (!self->_learnMoreTitle || !self->_learnMoreURL)
          {
            goto LABEL_30;
          }

          v30 = PXSharedLibrarySettingsDescription();
          v23 = [NSString stringWithFormat:@"%@ %@", v30, self->_learnMoreTitle];

          learnMoreTitle = self->_learnMoreTitle;
          v32 = NSStringFromSelector("didTapLearnMoreLink:");
          SettingsBaseConfigureSpecifierFooterWithHyperlink(v34, v23, learnMoreTitle, v32, self);

          goto LABEL_29;
        }
      }

      v23 = PXSharedLibrarySettingsDescription();
      v24 = PSFooterTextGroupKey;
    }

    [v21 setObject:v23 forKeyedSubscript:v24];
LABEL_29:

    goto LABEL_30;
  }

  if (!settingsSpecifiers)
  {
    self->_settingsSpecifiers = &__NSArray0__struct;
  }

LABEL_31:
  v27 = self->_settingsSpecifiers;

  return v27;
}

- (NSArray)invitationSpecifiers
{
  invitationSpecifiers = self->_invitationSpecifiers;
  if (!invitationSpecifiers)
  {
    statusProvider = [(MSSSharedLibraryBaseController *)self statusProvider];
    if (PXSharedLibraryShouldDisplayInvitation())
    {
      v5 = [PSSpecifier groupSpecifierWithID:@"SharedLibrarySettingsGroup"];
      v6 = [PSSpecifier preferenceSpecifierNamed:&stru_2D398 target:self set:0 get:0 detail:0 cell:2 edit:0];
      [v6 setControllerLoadAction:"didTapSharedLibraryInvitation:"];
      [v6 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
      invitation = [statusProvider invitation];
      owner = [invitation owner];
      [v6 setUserInfo:owner];

      v13[0] = v5;
      v13[1] = v6;
      v9 = [NSArray arrayWithObjects:v13 count:2];
      v10 = self->_invitationSpecifiers;
      self->_invitationSpecifiers = v9;
    }

    else
    {
      v11 = self->_invitationSpecifiers;
      self->_invitationSpecifiers = &__NSArray0__struct;
    }

    invitationSpecifiers = self->_invitationSpecifiers;
  }

  return invitationSpecifiers;
}

- (MSSSharedLibraryBaseController)initWithSettingsBaseController:(id)controller
{
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = MSSSharedLibraryBaseController;
  v5 = [(MSSSharedLibraryBaseController *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_settingsBaseController, controllerCopy);
    systemPhotoLibrary = [controllerCopy systemPhotoLibrary];
    v9 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:systemPhotoLibrary];
    statusProvider = v6->_statusProvider;
    v6->_statusProvider = v9;

    [(PXSharedLibraryStatusProvider *)v6->_statusProvider registerChangeObserver:v6 context:off_33360];
    v11 = PXSharedLibraryLearnMoreString();
    v12 = [v11 length];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_131E8;
    v15[3] = &unk_2D0D8;
    v16 = v6;
    v17 = v11;
    v13 = v11;
    [v13 enumerateAttribute:NSLinkAttributeName inRange:0 options:v12 usingBlock:{0, v15}];
  }

  return v6;
}

- (MSSSharedLibraryBaseController)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"MSSSharedLibraryBaseController.m" lineNumber:146 description:{@"%s is not available as initializer", "-[MSSSharedLibraryBaseController init]"}];

  abort();
}

- (id)_sharedLibraryButtonSubtitle
{
  statusProvider = [(MSSSharedLibraryBaseController *)self statusProvider];
  exiting = [statusProvider exiting];
  if (exiting)
  {

LABEL_6:
    v6 = &stru_2D398;
    goto LABEL_7;
  }

  if (![(MSSSharedLibraryBaseController *)self cloudPhotosEnabled])
  {
    goto LABEL_6;
  }

  if ([statusProvider hasSharedLibrary])
  {
    sharedLibrary = [statusProvider sharedLibrary];
    v6 = PXSharedLibrarySettingsSubtitle();
  }

  else
  {
    [statusProvider hasPreview];
    v6 = PXLocalizedSharedLibraryString();
  }

LABEL_7:

  return v6;
}

- (id)_sharedLibraryButtonTitle
{
  statusProvider = [(MSSSharedLibraryBaseController *)self statusProvider];
  exiting = [statusProvider exiting];

  if (exiting)
  {
    [exiting isOwned];
  }

  v4 = PXLocalizedSharedLibraryString();

  return v4;
}

- (void)_popToSettingsBaseControllerIfNeeded
{
  statusProvider = [(MSSSharedLibraryBaseController *)self statusProvider];
  exiting = [statusProvider exiting];

  if (exiting)
  {
    settingsBaseController = [(MSSSharedLibraryBaseController *)self settingsBaseController];
    navigationController = [settingsBaseController navigationController];
    viewControllers = [navigationController viewControllers];
    v8 = [viewControllers containsObject:settingsBaseController];

    if (v8)
    {
      v9 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v22 = objc_opt_class();
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%{public}@: _popToSettingsBaseControllerIfNeeded: Use settingsBaseController", buf, 0xCu);
      }

      parentViewController2 = settingsBaseController;
    }

    else
    {
      viewControllers2 = [navigationController viewControllers];
      parentViewController = [settingsBaseController parentViewController];
      v13 = [viewControllers2 containsObject:parentViewController];

      v14 = PLSharedLibraryGetLog();
      v15 = v14;
      if (!v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v22 = objc_opt_class();
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@: Need to pop to base controller but didn't find it or its parent in the nav stack", buf, 0xCu);
        }

        v16 = 0;
        goto LABEL_16;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v22 = objc_opt_class();
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%{public}@: _popToSettingsBaseControllerIfNeeded: Use settingsBaseController's parent", buf, 0xCu);
      }

      parentViewController2 = [settingsBaseController parentViewController];
    }

    v16 = parentViewController2;
LABEL_16:
    topViewController = [navigationController topViewController];

    if (topViewController == v16)
    {
      v18 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        *buf = 138543362;
        v22 = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Requested to pop to settingsControllerInNavigation, but base controller is already on top of the nav stack.", buf, 0xCu);
      }
    }

    else
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1383C;
      v20[3] = &unk_2D1A0;
      v20[4] = self;
      [PXSystemNavigation navigateToDestination:7 completion:v20];
    }

    goto LABEL_22;
  }

  settingsBaseController = PLSharedLibraryGetLog();
  if (os_log_type_enabled(settingsBaseController, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v22 = objc_opt_class();
    _os_log_impl(&dword_0, settingsBaseController, OS_LOG_TYPE_DEBUG, "%{public}@: No need to pop to settingsControllerInNavigation, library not exiting", buf, 0xCu);
  }

LABEL_22:
}

- (void)_updateSharedLibrarySpecifiers
{
  invitationSpecifiers = self->_invitationSpecifiers;
  self->_invitationSpecifiers = 0;

  settingsSpecifiers = self->_settingsSpecifiers;
  self->_settingsSpecifiers = 0;

  WeakRetained = objc_loadWeakRetained(&self->_settingsBaseController);
  [WeakRetained reloadSpecifiers];
}

+ (void)initialize
{
  if (qword_336E0 != -1)
  {
    dispatch_once(&qword_336E0, &stru_2D0B0);
  }
}

@end