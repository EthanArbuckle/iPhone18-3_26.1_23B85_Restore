@interface COSGizmoOrientationController
+ (id)wristChoice;
- (COSGizmoOrientationController)init;
- (NPSDomainAccessor)domainAccessor;
- (id)specifiers;
- (void)dealloc;
- (void)handleDidUnpair;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation COSGizmoOrientationController

- (COSGizmoOrientationController)init
{
  v8.receiver = self;
  v8.super_class = COSGizmoOrientationController;
  v2 = [(COSGizmoOrientationController *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_100047E44, @"NanoOrientationSettingChangedNotification", 0, 1024);
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"handleDidUnpair" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

  v5.receiver = self;
  v5.super_class = COSGizmoOrientationController;
  [(COSGizmoOrientationController *)&v5 dealloc];
}

- (NPSDomainAccessor)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano"];
    v5 = self->_domainAccessor;
    self->_domainAccessor = v4;

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

- (void)handleDidUnpair
{
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = 0;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(COSGizmoOrientationController *)self loadSpecifiersFromPlistName:@"GizmoOrientation" target:self];
    v6 = [(COSGizmoOrientationController *)self domainAccessor];
    v7 = [v6 synchronize];
    v8 = [v6 BOOLForKey:@"wornOnRightArm"];
    v9 = [v5 specifierForID:@"WRIST_CHOICE_ID"];
    if (v8)
    {
      v10 = @"RIGHT_HAND_ID";
    }

    else
    {
      v10 = @"LEFT_HAND_ID";
    }

    v11 = [v5 specifierForID:v10];
    v12 = PSRadioGroupCheckedSpecifierKey;
    [v9 setProperty:v11 forKey:PSRadioGroupCheckedSpecifierKey];
    v13 = [v6 BOOLForKey:@"invertUI"];
    v14 = [v5 specifierForID:@"ORIENTATION_CHOICE_ID"];
    if (v13)
    {
      v15 = @"LISA_ON_LEFT_ID";
    }

    else
    {
      v15 = @"LISA_ON_RIGHT_ID";
    }

    v16 = [v5 specifierForID:v15];
    [v14 setProperty:v16 forKey:v12];
    if (+[HKHeartRhythmAvailability isElectrocardiogramSupportedOnAnyWatch])
    {
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"WRIST_CINNAMON_FOOTER" value:&stru_10026E598 table:@"WatchOrientation-cinnamon"];
      [v14 setProperty:v18 forKey:PSFooterTextGroupKey];
    }

    v19 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v5;

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(COSGizmoOrientationController *)self indexForIndexPath:v6];
  v9 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [(COSGizmoOrientationController *)self domainAccessor];
  v11 = [v9 identifier];
  v12 = [v11 isEqualToString:@"LEFT_HAND_ID"];

  if (v12)
  {
    v13 = @"wornOnRightArm";
    [v10 setBool:0 forKey:@"wornOnRightArm"];
    v14 = 1;
LABEL_5:
    [PBBridgeCAReporter recordUserInitiatedDeviceWristChange:v14];
    goto LABEL_6;
  }

  v15 = [v9 identifier];
  v16 = [v15 isEqualToString:@"RIGHT_HAND_ID"];

  if (v16)
  {
    v13 = @"wornOnRightArm";
    [v10 setBool:1 forKey:@"wornOnRightArm"];
    v14 = 2;
    goto LABEL_5;
  }

  v23 = [v9 identifier];
  v24 = [v23 isEqualToString:@"LISA_ON_LEFT_ID"];

  if (v24)
  {
    v13 = @"invertUI";
    [v10 setBool:1 forKey:@"invertUI"];
    v25 = 2;
  }

  else
  {
    v26 = [v9 identifier];
    v27 = [v26 isEqualToString:@"LISA_ON_RIGHT_ID"];

    if (!v27)
    {
      goto LABEL_7;
    }

    v13 = @"invertUI";
    [v10 setBool:0 forKey:@"invertUI"];
    v25 = 1;
  }

  [PBBridgeCAReporter recordUserInitiatedDeviceOrientationChange:v25];
LABEL_6:
  v17 = [v10 synchronize];
  syncManager = self->_syncManager;
  v29 = v13;
  v19 = [NSArray arrayWithObjects:&v29 count:1];
  v20 = [NSSet setWithArray:v19];
  [(NPSManager *)syncManager synchronizeNanoDomain:@"com.apple.nano" keys:v20];

LABEL_7:
  [(COSGizmoOrientationController *)self reloadSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->BPSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  v22 = [(COSGizmoOrientationController *)self specifier];
  [WeakRetained reloadSpecifier:v22];

  v28.receiver = self;
  v28.super_class = COSGizmoOrientationController;
  [(COSGizmoOrientationController *)&v28 tableView:v7 didSelectRowAtIndexPath:v6];
}

+ (id)wristChoice
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano"];
  v3 = [v2 synchronize];
  v4 = [v2 BOOLForKey:@"wornOnRightArm"];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = @"RIGHT_HAND";
  }

  else
  {
    v7 = @"LEFT_HAND";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_10026E598 table:@"GizmoOrientation"];

  return v8;
}

@end