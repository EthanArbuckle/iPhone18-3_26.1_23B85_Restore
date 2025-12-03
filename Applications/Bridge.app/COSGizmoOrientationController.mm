@interface COSGizmoOrientationController
+ (id)wristChoice;
- (COSGizmoOrientationController)init;
- (NPSDomainAccessor)domainAccessor;
- (id)specifiers;
- (void)dealloc;
- (void)handleDidUnpair;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
    domainAccessor = [(COSGizmoOrientationController *)self domainAccessor];
    synchronize = [domainAccessor synchronize];
    v8 = [domainAccessor BOOLForKey:@"wornOnRightArm"];
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
    v13 = [domainAccessor BOOLForKey:@"invertUI"];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(COSGizmoOrientationController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  domainAccessor = [(COSGizmoOrientationController *)self domainAccessor];
  identifier = [v9 identifier];
  v12 = [identifier isEqualToString:@"LEFT_HAND_ID"];

  if (v12)
  {
    v13 = @"wornOnRightArm";
    [domainAccessor setBool:0 forKey:@"wornOnRightArm"];
    v14 = 1;
LABEL_5:
    [PBBridgeCAReporter recordUserInitiatedDeviceWristChange:v14];
    goto LABEL_6;
  }

  identifier2 = [v9 identifier];
  v16 = [identifier2 isEqualToString:@"RIGHT_HAND_ID"];

  if (v16)
  {
    v13 = @"wornOnRightArm";
    [domainAccessor setBool:1 forKey:@"wornOnRightArm"];
    v14 = 2;
    goto LABEL_5;
  }

  identifier3 = [v9 identifier];
  v24 = [identifier3 isEqualToString:@"LISA_ON_LEFT_ID"];

  if (v24)
  {
    v13 = @"invertUI";
    [domainAccessor setBool:1 forKey:@"invertUI"];
    v25 = 2;
  }

  else
  {
    identifier4 = [v9 identifier];
    v27 = [identifier4 isEqualToString:@"LISA_ON_RIGHT_ID"];

    if (!v27)
    {
      goto LABEL_7;
    }

    v13 = @"invertUI";
    [domainAccessor setBool:0 forKey:@"invertUI"];
    v25 = 1;
  }

  [PBBridgeCAReporter recordUserInitiatedDeviceOrientationChange:v25];
LABEL_6:
  synchronize = [domainAccessor synchronize];
  syncManager = self->_syncManager;
  v29 = v13;
  v19 = [NSArray arrayWithObjects:&v29 count:1];
  v20 = [NSSet setWithArray:v19];
  [(NPSManager *)syncManager synchronizeNanoDomain:@"com.apple.nano" keys:v20];

LABEL_7:
  [(COSGizmoOrientationController *)self reloadSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->BPSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  specifier = [(COSGizmoOrientationController *)self specifier];
  [WeakRetained reloadSpecifier:specifier];

  v28.receiver = self;
  v28.super_class = COSGizmoOrientationController;
  [(COSGizmoOrientationController *)&v28 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

+ (id)wristChoice
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano"];
  synchronize = [v2 synchronize];
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