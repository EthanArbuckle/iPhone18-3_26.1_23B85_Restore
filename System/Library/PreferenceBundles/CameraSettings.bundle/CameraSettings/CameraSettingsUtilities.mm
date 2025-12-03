@interface CameraSettingsUtilities
+ (id)appConfigurationCoordinatorForController:(id)controller;
+ (id)displayNameForBundleID:(id)d;
@end

@implementation CameraSettingsUtilities

+ (id)displayNameForBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v12 = 0;
    v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:dCopy allowPlaceholder:1 error:&v12];
    v5 = v12;
    if (v4)
    {
      localizedName = [v4 localizedName];
      v7 = dCopy;
    }

    else
    {
      v7 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1B8F0(dCopy, v5, v7);
      }

      localizedName = dCopy;
    }

    v10 = localizedName;
    v9 = v10;
  }

  else
  {
    [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_15304;
    v21 = sub_15314;
    v22 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1531C;
    v13[3] = &unk_2CA98;
    v8 = v16 = &v17;
    v14 = v8;
    v15 = @"CAMERA_BUTTON_APP_LIST_NO_ACTION";
    [&off_32218 enumerateObjectsUsingBlock:v13];
    v9 = v18[5];

    _Block_object_dispose(&v17, 8);
    v10 = 0;
  }

  return v9;
}

+ (id)appConfigurationCoordinatorForController:(id)controller
{
  parentController = [controller parentController];
  if (parentController)
  {
    v4 = parentController;
    while (1)
    {
      captureButtonAppConfigurationCoordinator = [v4 captureButtonAppConfigurationCoordinator];
      if (captureButtonAppConfigurationCoordinator)
      {
        break;
      }

      parentController2 = [v4 parentController];

      v4 = parentController2;
      if (!parentController2)
      {
        goto LABEL_5;
      }
    }

    v8 = captureButtonAppConfigurationCoordinator;
  }

  else
  {
LABEL_5:
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Could not get app configuration coordinator from parent controller. Creating new one.", v10, 2u);
    }

    v8 = objc_alloc_init(CameraCaptureButtonAppConfigurationCoordinator);
  }

  return v8;
}

@end