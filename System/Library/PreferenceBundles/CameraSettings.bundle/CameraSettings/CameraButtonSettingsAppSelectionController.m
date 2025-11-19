@interface CameraButtonSettingsAppSelectionController
- (NSSet)_eligibleAppsBundleIDs;
- (NSString)_associatedAppBundleID;
- (id)_createSpecifiers;
- (id)_eligibleAppsSpecifiers;
- (id)specifiers;
- (void)_setupAppConfigurationCoordinatorIfNecessary;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CameraButtonSettingsAppSelectionController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CameraButtonSettingsAppSelectionController;
  [(CameraSettingsBaseController *)&v5 viewDidLoad];
  v3 = [*(&self->super + 1) associatedAppBundleID];
  v4 = [CameraSettingsUtilities displayNameForBundleID:v3];

  [(CameraButtonSettingsAppSelectionController *)self setTitle:v4];
}

- (id)specifiers
{
  [(CameraButtonSettingsAppSelectionController *)self _setupAppConfigurationCoordinatorIfNecessary];
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(CameraButtonSettingsAppSelectionController *)self _createSpecifiers];
    [CameraSettingsBaseController allowMultilineTitlesForSpecifiers:v5];
    v6 = [v5 copy];
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
  v5 = [(CameraButtonSettingsAppSelectionController *)self _eligibleAppsSpecifiers];
  [v3 addObjectsFromArray:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_8C00;
  v9[3] = &unk_2CC50;
  v9[4] = self;
  v6 = [v5 indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
  }

  [v4 setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];

  return v3;
}

- (NSString)_associatedAppBundleID
{
  v2 = [(CameraButtonSettingsAppSelectionController *)self _captureButtonAppConfigurationCoordinator];
  v3 = [v2 associatedAppBundleID];

  return v3;
}

- (NSSet)_eligibleAppsBundleIDs
{
  v2 = [(CameraButtonSettingsAppSelectionController *)self _captureButtonAppConfigurationCoordinator];
  v3 = [v2 eligibleAppsBundleIDs];

  return v3;
}

- (id)_eligibleAppsSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(CameraButtonSettingsAppSelectionController *)self _eligibleAppsBundleIDs];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_8E48;
  v13 = &unk_2CC78;
  v14 = self;
  v5 = v3;
  v15 = v5;
  [v4 enumerateObjectsUsingBlock:&v10];

  [v5 sortUsingComparator:{&stru_2CCB8, v10, v11, v12, v13, v14}];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = CameraButtonSettingsAppSelectionController;
  [(CameraButtonSettingsAppSelectionController *)&v14 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(CameraButtonSettingsAppSelectionController *)self specifierAtIndexPath:v6];
  v8 = [(CameraButtonSettingsAppSelectionController *)self specifierForID:@"CAMAppListGroupSpecifier"];
  if (v8)
  {
    v9 = [(CameraButtonSettingsAppSelectionController *)self indexPathForSpecifier:v8];
    v10 = [v9 section];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([v6 section] == v10)
  {
    v11 = [v7 identifier];
    if (v11)
    {
      [v8 setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];
      if (v11 == @"CAMNoActionSpecifierID")
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      v13 = [(CameraButtonSettingsAppSelectionController *)self _captureButtonAppConfigurationCoordinator];
      [v13 setAssociatedAppBundleID:v12];
    }

    else
    {
      v13 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1B878(v7, v13);
      }
    }
  }
}

@end