@interface CameraButtonSettingsAppSelectionController
- (NSSet)_eligibleAppsBundleIDs;
- (NSString)_associatedAppBundleID;
- (id)_createSpecifiers;
- (id)_eligibleAppsSpecifiers;
- (id)specifiers;
- (void)_setupAppConfigurationCoordinatorIfNecessary;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CameraButtonSettingsAppSelectionController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CameraButtonSettingsAppSelectionController;
  [(CameraSettingsBaseController *)&v5 viewDidLoad];
  associatedAppBundleID = [*(&self->super + 1) associatedAppBundleID];
  v4 = [CameraSettingsUtilities displayNameForBundleID:associatedAppBundleID];

  [(CameraButtonSettingsAppSelectionController *)self setTitle:v4];
}

- (id)specifiers
{
  [(CameraButtonSettingsAppSelectionController *)self _setupAppConfigurationCoordinatorIfNecessary];
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    _createSpecifiers = [(CameraButtonSettingsAppSelectionController *)self _createSpecifiers];
    [CameraSettingsBaseController allowMultilineTitlesForSpecifiers:_createSpecifiers];
    v6 = [_createSpecifiers copy];
    v7 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v6;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

- (id)_createSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"appListGroup"];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  [v4 setObject:@"CAMAppListGroupSpecifier" forKeyedSubscript:PSIDKey];
  [v3 addObject:v4];
  _eligibleAppsSpecifiers = [(CameraButtonSettingsAppSelectionController *)self _eligibleAppsSpecifiers];
  [v3 addObjectsFromArray:_eligibleAppsSpecifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_8C00;
  v9[3] = &unk_2CC50;
  v9[4] = self;
  v6 = [_eligibleAppsSpecifiers indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [_eligibleAppsSpecifiers objectAtIndexedSubscript:v6];
  }

  [v4 setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];

  return v3;
}

- (NSString)_associatedAppBundleID
{
  _captureButtonAppConfigurationCoordinator = [(CameraButtonSettingsAppSelectionController *)self _captureButtonAppConfigurationCoordinator];
  associatedAppBundleID = [_captureButtonAppConfigurationCoordinator associatedAppBundleID];

  return associatedAppBundleID;
}

- (NSSet)_eligibleAppsBundleIDs
{
  _captureButtonAppConfigurationCoordinator = [(CameraButtonSettingsAppSelectionController *)self _captureButtonAppConfigurationCoordinator];
  eligibleAppsBundleIDs = [_captureButtonAppConfigurationCoordinator eligibleAppsBundleIDs];

  return eligibleAppsBundleIDs;
}

- (id)_eligibleAppsSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  _eligibleAppsBundleIDs = [(CameraButtonSettingsAppSelectionController *)self _eligibleAppsBundleIDs];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_8E48;
  v13 = &unk_2CC78;
  selfCopy = self;
  v5 = v3;
  v15 = v5;
  [_eligibleAppsBundleIDs enumerateObjectsUsingBlock:&v10];

  [v5 sortUsingComparator:{&stru_2CCB8, v10, v11, v12, v13, selfCopy}];
  v6 = [(CameraButtonSettingsAppSelectionController *)self _listItemSpecifierForBundleID:0 appAuthorized:1];
  [v5 addObject:v6];

  v7 = v15;
  v8 = v5;

  return v5;
}

- (void)_setupAppConfigurationCoordinatorIfNecessary
{
  if (!*(&self->super + 1))
  {
    v3 = [CameraSettingsUtilities appConfigurationCoordinatorForController:self];
    v4 = *(&self->super + 1);
    *(&self->super + 1) = v3;

    v5 = *(&self->super + 1);

    [v5 addObserver:self];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = CameraButtonSettingsAppSelectionController;
  [(CameraButtonSettingsAppSelectionController *)&v14 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(CameraButtonSettingsAppSelectionController *)self specifierAtIndexPath:pathCopy];
  v8 = [(CameraButtonSettingsAppSelectionController *)self specifierForID:@"CAMAppListGroupSpecifier"];
  if (v8)
  {
    v9 = [(CameraButtonSettingsAppSelectionController *)self indexPathForSpecifier:v8];
    section = [v9 section];
  }

  else
  {
    section = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([pathCopy section] == section)
  {
    identifier = [v7 identifier];
    if (identifier)
    {
      [v8 setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];
      if (identifier == @"CAMNoActionSpecifierID")
      {
        v12 = 0;
      }

      else
      {
        v12 = identifier;
      }

      _captureButtonAppConfigurationCoordinator = [(CameraButtonSettingsAppSelectionController *)self _captureButtonAppConfigurationCoordinator];
      [_captureButtonAppConfigurationCoordinator setAssociatedAppBundleID:v12];
    }

    else
    {
      _captureButtonAppConfigurationCoordinator = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(_captureButtonAppConfigurationCoordinator, OS_LOG_TYPE_ERROR))
      {
        sub_1B878(v7, _captureButtonAppConfigurationCoordinator);
      }
    }
  }
}

@end