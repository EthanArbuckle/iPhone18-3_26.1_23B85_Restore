@interface MSSSharedLibraryBaseController
+ (void)initialize;
- (MSSSharedLibraryBaseController)init;
- (MSSSharedLibraryBaseController)initWithSettingsBaseController:(id)a3;
- (NSArray)invitationSpecifiers;
- (NSArray)settingsSpecifiers;
- (SettingsBaseController)settingsBaseController;
- (id)_sharedLibraryButtonSubtitle;
- (id)_sharedLibraryButtonTitle;
- (void)_popToSettingsBaseControllerIfNeeded;
- (void)_updateSharedLibrarySpecifiers;
- (void)didTapLearnMoreLink:(id)a3;
- (void)didTapSharedLibraryButton:(id)a3;
- (void)didTapSharedLibraryInvitation:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setCanEnableSharedLibrary:(BOOL)a3;
- (void)setCloudPhotosEnabled:(BOOL)a3;
- (void)setCloudPhotosStatus:(id)a3;
@end

@implementation MSSSharedLibraryBaseController

- (SettingsBaseController)settingsBaseController
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsBaseController);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (off_33360 == a5)
  {
    [(MSSSharedLibraryBaseController *)self _updateSharedLibrarySpecifiers:a3];

    [(MSSSharedLibraryBaseController *)self _popToSettingsBaseControllerIfNeeded];
  }
}

- (void)didTapLearnMoreLink:(id)a3
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

- (void)didTapSharedLibraryButton:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsBaseController);
  v5 = [WeakRetained navigationController];
  v6 = [PXViewControllerPresenter defaultPresenterWithViewController:v5];

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

- (void)didTapSharedLibraryInvitation:(id)a3
{
  v8 = [(MSSSharedLibraryBaseController *)self statusProvider];
  WeakRetained = objc_loadWeakRetained(&self->_settingsBaseController);
  v5 = [WeakRetained navigationController];
  v6 = [PXViewControllerPresenter defaultPresenterWithViewController:v5];

  v7 = [v8 invitation];
  PXSharedLibraryViewInvitation();
}

- (void)setCloudPhotosStatus:(id)a3
{
  v8 = a3;
  v5 = self->_cloudPhotosStatus;
  settingsSpecifiers = v5;
  if (v5 != v8)
  {
    v7 = [(PXCPLUIStatus *)v5 isEqual:?];

    if (v7)
    {
      goto LABEL_5;
    }

    objc_storeStrong(&self->_cloudPhotosStatus, a3);
    settingsSpecifiers = self->_settingsSpecifiers;
    self->_settingsSpecifiers = 0;
  }

LABEL_5:
}

- (void)setCloudPhotosEnabled:(BOOL)a3
{
  if (self->_cloudPhotosEnabled != a3)
  {
    self->_cloudPhotosEnabled = a3;
    settingsSpecifiers = self->_settingsSpecifiers;
    self->_settingsSpecifiers = 0;
    _objc_release_x1();
  }
}

- (void)setCanEnableSharedLibrary:(BOOL)a3
{
  if (self->_canEnableSharedLibrary != a3)
  {
    self->_canEnableSharedLibrary = a3;
    settingsSpecifiers = self->_settingsSpecifiers;
    self->_settingsSpecifiers = 0;
    _objc_release_x1();
  }
}

- (NSArray)settingsSpecifiers
{
  v3 = [(MSSSharedLibraryBaseController *)self canEnableSharedLibrary];
  settingsSpecifiers = self->_settingsSpecifiers;
  if (settingsSpecifiers)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v35 = PXLocalizedSharedLibraryString();
    v6 = [PSSpecifier groupSpecifierWithID:@"SharedLibrarySettingsGroup" name:?];
    v7 = [(MSSSharedLibraryBaseController *)self _sharedLibraryButtonTitle];
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"_sharedLibraryButtonSubtitle" detail:0 cell:2 edit:0];

    [v8 setIdentifier:@"SharedLibrarySettingsButton"];
    v9 = [UIImage px_imageNamed:@"SharedLibrary-28-Rounded"];
    [v8 setObject:v9 forKeyedSubscript:PSIconImageKey];

    [v8 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    v10 = [(MSSSharedLibraryBaseController *)self cloudPhotosStatus];
    if ([(MSSSharedLibraryBaseController *)self cloudPhotosEnabled])
    {
      v12 = [v10 hasCompletedInitialSync];
    }

    else
    {
      v12 = 0;
    }

    v34 = v6;
    if (-[MSSSharedLibraryBaseController cloudPhotosEnabled](self, "cloudPhotosEnabled") && ([v10 hasCompletedInitialSync] & 1) == 0)
    {
      v13 = [v10 isPaused];
      v33 = 1;
    }

    else
    {
      v33 = 0;
      v13 = 0;
    }

    v14 = [v10 inResetSync];
    v15 = [v10 isRestoringLibrary];
    v16 = [(MSSSharedLibraryBaseController *)self cloudPhotosInExitMode];
    v17 = [(MSSSharedLibraryBaseController *)self statusProvider];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_12E14;
    v36[3] = &unk_2D100;
    v18 = v8;
    v37 = v18;
    v38 = v12;
    v39 = v14;
    v40 = v15;
    v41 = v16;
    v19 = objc_retainBlock(v36);
    if (PXSharedLibraryShouldDisplaySettings() && (!(v14 & 1 | ((v12 & 1) == 0) | (v15 | v16) & 1) || PXSharedLibraryLocalModeFeatureEnabled()))
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

    if ([v17 hasPreview])
    {
      [v18 setDetailControllerClass:objc_opt_class()];
      CanSetupSharedLibraryOrPreview = PXSharedLibraryCanSetupSharedLibraryOrPreview();
      (v19[2])(v19, CanSetupSharedLibraryOrPreview);
      goto LABEL_21;
    }

    [v18 setControllerLoadAction:"didTapSharedLibraryButton:"];
    v22 = PXSharedLibraryCanSetupSharedLibraryOrPreview();
    (v19[2])(v19, v22);
    if (v15 || ([(MSSSharedLibraryBaseController *)self cloudPhotosEnabled]& v13) == 1 || [(MSSSharedLibraryBaseController *)self cloudPhotosEnabled]&& ((v33 | v14) & 1) != 0 || ([(MSSSharedLibraryBaseController *)self cloudPhotosEnabled]& v16) == 1)
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
        v29 = [v17 exiting];

        if (!v29)
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
    v4 = [(MSSSharedLibraryBaseController *)self statusProvider];
    if (PXSharedLibraryShouldDisplayInvitation())
    {
      v5 = [PSSpecifier groupSpecifierWithID:@"SharedLibrarySettingsGroup"];
      v6 = [PSSpecifier preferenceSpecifierNamed:&stru_2D398 target:self set:0 get:0 detail:0 cell:2 edit:0];
      [v6 setControllerLoadAction:"didTapSharedLibraryInvitation:"];
      [v6 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
      v7 = [v4 invitation];
      v8 = [v7 owner];
      [v6 setUserInfo:v8];

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

- (MSSSharedLibraryBaseController)initWithSettingsBaseController:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MSSSharedLibraryBaseController;
  v5 = [(MSSSharedLibraryBaseController *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_settingsBaseController, v4);
    v8 = [v4 systemPhotoLibrary];
    v9 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v8];
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
  v3 = [(MSSSharedLibraryBaseController *)self statusProvider];
  v4 = [v3 exiting];
  if (v4)
  {

LABEL_6:
    v6 = &stru_2D398;
    goto LABEL_7;
  }

  if (![(MSSSharedLibraryBaseController *)self cloudPhotosEnabled])
  {
    goto LABEL_6;
  }

  if ([v3 hasSharedLibrary])
  {
    v5 = [v3 sharedLibrary];
    v6 = PXSharedLibrarySettingsSubtitle();
  }

  else
  {
    [v3 hasPreview];
    v6 = PXLocalizedSharedLibraryString();
  }

LABEL_7:

  return v6;
}

- (id)_sharedLibraryButtonTitle
{
  v2 = [(MSSSharedLibraryBaseController *)self statusProvider];
  v3 = [v2 exiting];

  if (v3)
  {
    [v3 isOwned];
  }

  v4 = PXLocalizedSharedLibraryString();

  return v4;
}

- (void)_popToSettingsBaseControllerIfNeeded
{
  v3 = [(MSSSharedLibraryBaseController *)self statusProvider];
  v4 = [v3 exiting];

  if (v4)
  {
    v5 = [(MSSSharedLibraryBaseController *)self settingsBaseController];
    v6 = [v5 navigationController];
    v7 = [v6 viewControllers];
    v8 = [v7 containsObject:v5];

    if (v8)
    {
      v9 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v22 = objc_opt_class();
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%{public}@: _popToSettingsBaseControllerIfNeeded: Use settingsBaseController", buf, 0xCu);
      }

      v10 = v5;
    }

    else
    {
      v11 = [v6 viewControllers];
      v12 = [v5 parentViewController];
      v13 = [v11 containsObject:v12];

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

      v10 = [v5 parentViewController];
    }

    v16 = v10;
LABEL_16:
    v17 = [v6 topViewController];

    if (v17 == v16)
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

  v5 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v22 = objc_opt_class();
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%{public}@: No need to pop to settingsControllerInNavigation, library not exiting", buf, 0xCu);
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